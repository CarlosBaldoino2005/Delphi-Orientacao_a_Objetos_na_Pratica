unit Regra.LucroPresumido;

interface

uses
  Regra.Interfaces;

type
  TRegraLucroPresumido = class(TInterfacedObject, iRegras)
    private
    public
      class function New : iRegras;
      function Name : String;
      function CalcularImposto ( aValue : Currency ) : Currency; overload;
      function CalcularImposto ( aValue : String ) : Currency; overload;
  end;

implementation

uses
  System.SysUtils;

{ TRegraLucroPresumido }

function TRegraLucroPresumido.CalcularImposto(aValue: Currency): Currency;
begin
  Result := (aValue * 0.3) + aValue;
end;

function TRegraLucroPresumido.CalcularImposto(aValue: String): Currency;
begin
  Result := 0;
  if TryStrToCurr(aValue, Result) then
    Result := CalcularImposto(StrToCurr(aValue));
end;

function TRegraLucroPresumido.Name: String;
begin
  Result := 'Lucro Resumido';
end;

class function TRegraLucroPresumido.New: iRegras;
begin
  Result := Self.Create;
end;

end.
