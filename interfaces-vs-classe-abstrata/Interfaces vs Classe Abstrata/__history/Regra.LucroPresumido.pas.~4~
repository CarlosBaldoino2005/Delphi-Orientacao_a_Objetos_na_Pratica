unit Regra.LucroPresumido;

interface

uses
  Regra;

type
  TRegraLucroPresumido = class(TRegra)
    private
    public
      function Name : String; override;
      function CalcularImposto ( aValue : Currency ) : Currency; override;
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

end.
