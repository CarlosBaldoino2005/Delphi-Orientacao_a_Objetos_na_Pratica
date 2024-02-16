unit Regra.LucroReal;

interface

uses
  Regra.Interfaces, System.SysUtils;

type
  TRegraLucroReal = class(TInterfacedObject, iRegras)
    private
       FDisplay : TProc<String>;
       FOperacoes : iRegrasOperacoes;
    public
      class function New : iRegras;
      function Name : String;
      function Display ( aValue : TProc<String> ) : iRegras; overload;
      function Display : TProc<String>; overload;
      function PercentImposto : Currency;
      function Operacoes : iRegrasOperacoes;
  end;

implementation

uses
  Regra.Controller, Regra.Tipo, Regra.Operacoes;

{ TRegraLucroReal }


function TRegraLucroReal.Display: TProc<String>;
begin
  Result := FDisplay;
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

function TRegraLucroReal.Operacoes: iRegrasOperacoes;
begin
  if not Assigned(FOperacoes) then
    FOperacoes := TRegraOperacoes.New(Self);

  Result := FOperacoes;
end;

function TRegraLucroReal.PercentImposto: Currency;
begin
  Result := 0.4;
end;

initialization
  TRegraController.New.Registry(Integer(trReal), 'Lucro Real');

end.
