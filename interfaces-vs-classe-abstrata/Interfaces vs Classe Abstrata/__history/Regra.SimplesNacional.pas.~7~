unit Regra.SimplesNacional;

interface

uses
  Regra;

type
  TRegraSimplesNacional = class(TRegra)
    private
    public
      function Name : String; override;
      function CalcularImposto ( aValue : Currency ) : Currency; override;
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

end.
