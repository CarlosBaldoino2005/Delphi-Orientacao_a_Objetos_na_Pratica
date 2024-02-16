unit Regra.SimplesNacional;

interface

uses
  Regra.Interfaces, System.SysUtils;

type
  TRegraSimplesNacional = class(TInterfacedObject, iRegras)
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

{ TRegraSimplesNacional }

function TRegraSimplesNacional.CalcularImposto(aValue: Currency): Currency;
begin
  Result := (aValue  * 0.2 ) + aValue;

  if Assigned(FDisplay) then
    FDisplay(CurrToStr(Result));
end;

function TRegraSimplesNacional.CalcularImposto(aValue: String): Currency;
begin
  Result := 0;
  if TryStrToCurr(aValue, Result) then
    Result := CalcularImposto(StrToCurr(aValue));
end;

function TRegraSimplesNacional.Display(aValue: TProc<String>): iRegras;
begin
  Result := Self;
  FDisplay := aValue;
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
