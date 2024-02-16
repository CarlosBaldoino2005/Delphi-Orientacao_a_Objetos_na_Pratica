unit Regra.LucroPresumido;

interface

uses
  Regra.Interfaces,
  System.SysUtils;

type
  TRegraLucroPresumido = class(TInterfacedObject, iRegras)
    private
      FDisplay : TProc<String>;
    public
      class function New : iRegras;
      function Name : String;
      function CalcularImposto ( aValue : Currency ) : Currency; overload;
      function CalcularImposto ( aValue : String ) : Currency; overload;
      function Display ( aValue : TProc<String> ) : iRegras;
  end;

implementation

uses
  Regra.Controller, Regra.Tipo;

{ TRegraLucroPresumido }

function TRegraLucroPresumido.CalcularImposto(aValue: Currency): Currency;
begin
  Result := (aValue * 0.3) + aValue;

  if Assigned(FDisplay) then
    FDisplay(CurrToStr(Result));
end;

function TRegraLucroPresumido.CalcularImposto(aValue: String): Currency;
begin
  Result := 0;
  if TryStrToCurr(aValue, Result) then
    Result := CalcularImposto(StrToCurr(aValue));
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

initialization
  TRegraController.New.Registry(Integer(trPresumido), 'Lucro Presumido');

end.
