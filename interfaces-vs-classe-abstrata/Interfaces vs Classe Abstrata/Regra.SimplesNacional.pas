unit Regra.SimplesNacional;

interface

uses
  Regra.Interfaces;

type
  TRegraSimplesNacional = class(TInterfacedObject, iRegras)
    private
    public
      class function New : iRegras;
      function Name : String;
      function CalcularImposto ( aValue : Currency ) : Currency;
  end;

implementation

{ TRegraSimplesNacional }

function TRegraSimplesNacional.CalcularImposto(aValue: Currency): Currency;
begin
  Result := (aValue  * 0.2 ) + aValue;
end;

function TRegraSimplesNacional.Name: String;
begin
  Result := 'Simples Nacional';
end;

class function TRegraSimplesNacional.New: iRegras;
begin
  Result := Self.Create;
end;

end.
