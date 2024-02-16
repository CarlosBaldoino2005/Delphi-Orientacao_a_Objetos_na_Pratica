unit Unit1;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls,
  Regra.SimplesNacional,
  Regra.LucroPresumido,
  Regra.LucroReal,
  Regra.Interfaces, Regra.Controller;

type
  TForm1 = class(TForm)
    Button1: TButton;
    ComboBox1: TComboBox;
    Memo1: TMemo;
    Edit1: TEdit;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure ComboBox1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
    FRegra : iRegras;
    procedure ExibirResultado ( aValue : String);
  public
    { Public declarations }
    procedure RecebeRegra ( aValue : iRegras ); overload;
  end;

var
  Form1: TForm1;

implementation

uses
  Regra.Tipo;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  RecebeRegra(FRegra);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  FRegra.Operacoes.CalcularImposto(Edit1.Text);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  FRegra.Operacoes.CalcularImpostoST(Edit1.Text);
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  FRegra.Operacoes.CalcularISS(Edit1.Text);
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
  FRegra :=
    TEnumRegras(ComboBox1.ItemIndex)
      .this
      .Parametros
        .Display(ExibirResultado)
      .&End;
end;

procedure TForm1.ExibirResultado(aValue: String);
begin
  Memo1.Lines.Add(aValue);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  ReportMemoryLeaksOnShutdown := True;
  TRegraController.New.ListaRegras(ComboBox1.Items);
end;

procedure TForm1.RecebeRegra( aValue : iRegras );
begin
  Memo1.Lines.Add(aValue.Parametros.Name);
end;

end.
