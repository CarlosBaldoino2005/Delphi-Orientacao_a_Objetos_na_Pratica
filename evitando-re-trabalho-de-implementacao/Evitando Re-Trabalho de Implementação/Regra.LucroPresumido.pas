unit Regra.LucroPresumido;

interface

uses
  Regra.Interfaces,
  System.SysUtils;

type
  TRegraLucroPresumido = class(TInterfacedObject, iRegras)
    private
      FDisplay : TProc<String>;
      FOperacoes : iRegrasOperacoes;
    public
      class function New : iRegras;
      function Name : String;
      function Display ( aValue : TProc<String> ) : iRegras;  overload;
      function Display : TProc<String>; overload;
      function PercentImposto : Currency;
      function Operacoes : iRegrasOperacoes;
  end;

implementation

uses
  Regra.Controller, Regra.Tipo, Regra.Operacoes;

{ TRegraLucroPresumido }

function TRegraLucroPresumido.Display: TProc<String>;
begin
  Result := FDisplay;
end;

function TRegraLucroPresumido.Display(aValue: TProc<String>): iRegras;
begin
  Result := Self;
  FDisplay := aValue;
end;

function TRegraLucroPresumido.Name: String;
begin
  Result := 'Lucro Resumido';
end;

class function TRegraLucroPresumido.New: iRegras;
begin
  Result := Self.Create;
end;

function TRegraLucroPresumido.Operacoes: iRegrasOperacoes;
begin
  if not Assigned(FOperacoes) then
    FOperacoes := TRegraOperacoes.New(Self);

  Result := FOperacoes;
end;

function TRegraLucroPresumido.PercentImposto: Currency;
begin
  Result := 0.3;
end;

initialization
  TRegraController.New.Registry(Integer(trPresumido), 'Lucro Presumido');

end.
