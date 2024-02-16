unit Regra.Tipo;

interface

uses
  Regra.Interfaces,
  Regra.LucroPresumido,
  Regra.LucroReal,
  Regra.SimplesNacional;

type
  TEnumRegras = (trSimples, trPresumido, trReal);

  TEnumRegrasHelper = record Helper for TEnumRegras
    function this : iRegras;
  end;

implementation

{ TEnumRegrasHelper }

function TEnumRegrasHelper.this: iRegras;
begin
  case Self of
    trSimples:    Result := TRegraSimplesNacional.Create;
    trPresumido:  Result := TRegraLucroPresumido.Create;
    trReal:       Result := TRegraLucroReal.Create;
  end;
end;

end.
