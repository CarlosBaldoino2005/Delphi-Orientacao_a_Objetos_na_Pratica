unit Regra.LucroReal;

interface

uses
  Regra;

type
  TRegraLucroReal = class(TRegra)
    private
    public
      function Name : String; override;
      function CalcularImposto ( aValue : Currency ) : Currency; override;
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

end.
