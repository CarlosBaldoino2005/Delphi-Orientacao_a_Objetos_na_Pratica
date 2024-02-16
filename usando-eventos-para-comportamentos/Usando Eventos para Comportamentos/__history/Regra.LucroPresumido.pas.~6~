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
      function CalcularImposto ( aValue : Currency ) : Currency;
  end;

implementation

{ TRegraLucroPresumido }

function TRegraLucroPresumido.CalcularImposto(aValue: Currency): Currency;
begin
  Result := (aValue * 0.3) + aValue;
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
