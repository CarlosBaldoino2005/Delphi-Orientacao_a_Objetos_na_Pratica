unit Regra.SimplesNacional;

interface

uses
  Regra.Interfaces, System.SysUtils, Regra.Operacoes;

type
  TRegraSimplesNacional = class(TInterfacedObject, iRegras)
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
  Regra.Controller, Regra.Tipo;

{ TRegraSimplesNacional }

function TRegraSimplesNacional.Display: TProc<String>;
begin
  Result := FDisplay;
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

function TRegraSimplesNacional.Operacoes: iRegrasOperacoes;
begin
  if not Assigned(FOperacoes) then
    FOperacoes := TRegraOperacoes.New(Self);

  Result := FOperacoes;
end;

function TRegraSimplesNacional.PercentImposto: Currency;
begin
  Result := 0.2;
end;

initialization
  TRegraController.New.Registry(Integer(trSimples), 'Simples Nacional');

end.
