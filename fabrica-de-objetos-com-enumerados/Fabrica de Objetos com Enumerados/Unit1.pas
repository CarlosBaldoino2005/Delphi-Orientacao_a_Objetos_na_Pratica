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
  Regra;

type


  TForm1 = class(TForm)
    Button1: TButton;
    ComboBox1: TComboBox;
    Memo1: TMemo;
    Edit1: TEdit;
    Button2: TButton;
    procedure ComboBox1Change(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
    FRegra : TRegra;
  public
    { Public declarations }
    procedure RecebeRegra ( aValue : TRegra ); overload;
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
  Memo1.Lines.Add(
    CurrToStr(FRegra.CalcularImposto(StrToCurr(Edit1.Text)))
  );
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
  if Assigned(FRegra) then
    FRegra.Free;

  FRegra := TEnumRegras(ComboBox1.ItemIndex).this;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  ReportMemoryLeaksOnShutdown := True;
  ComboBox1.Items.Clear;
  ComboBox1.Items.Add('Simples Nacional');
  ComboBox1.Items.Add('Lucro Presumido');
  ComboBox1.Items.Add('Lucro Real');
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  if Assigned(FRegra) then
    FRegra.Free;
end;

procedure TForm1.RecebeRegra(aValue: TRegra);
begin
  Memo1.Lines.Add(aValue.Name);
end;

end.
