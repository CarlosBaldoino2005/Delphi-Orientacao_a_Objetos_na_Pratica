unit Regra.LucroReal;

interface

uses
  Regra.Interfaces, System.SysUtils;

type
  TRegraLucroReal = class(TInterfacedObject, iRegras)
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

{ TRegraLucroReal }

function TRegraLucroReal.CalcularImposto(aValue: Currency): Currency;
begin
  Result := (aValue * 0.4) + aValue;

  if Assigned(FDisplay) then
    FDisplay(CurrToStr(Result));
end;

function TRegraLucroReal.CalcularImposto(aValue: String): Currency;
begin
  Result := 0;
  if TryStrToCurr(aValue, Result) then
    Result := CalcularImposto(StrToCurr(aValue));
end;

function TRegraLucroReal.Display(aValue: TProc<String>): iRegras;
begin
  Result := Self;
  FDisplay := aValue;
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
