unit Regra.LucroReal;

interface

uses
  Regra.Interfaces;

type
  TRegraLucroReal = class(TInterfacedObject, iRegras)
    private
    public
      class function New : iRegras;
      function Name : String;
      function CalcularImposto ( aValue : Currency ) : Currency;
  end;

implementation

{ TRegraLucroReal }

function TRegraLucroReal.CalcularImposto(aValue: Currency): Currency;
begin
  Result := (aValue * 0.4) + aValue;
end;

function TRegraLucroReal.Name: String;
begin
  Result := 'Lucro Real';
end;

class function TRegraLucroReal.New: iRegras;
begin
  Result := Self.Create;
end;

end.
