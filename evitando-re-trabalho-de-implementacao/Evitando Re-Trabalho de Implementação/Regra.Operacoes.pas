unit Regra.Operacoes;

interface

uses
  System.SysUtils,
  Regra.Interfaces;

type
  TRegraOperacoes = class(TInterfacedObject, iRegrasOperacoes)
    private
      [weak]
      FParent : iRegras;
    public
      constructor Create(aParent : iRegras) ;
      destructor Destroy; override;
      class function New(aParent : iRegras) : iRegrasOperacoes;
      function CalcularImposto ( aValue : Currency ) : Currency; overload;
      function CalcularImposto ( aValue : String ) : Currency; overload;
      function CalcularImpostoST ( aValue : Currency ) : Currency; overload;
      function CalcularImpostoST ( aValue : String ) : Currency; overload;

  end;

implementation

{ TRegraOperacoes }

function TRegraOperacoes.CalcularImposto(aValue: Currency): Currency;
begin
  Result := (aValue * FParent.PercentImposto) + aValue;

  if Assigned(FParent.Display) then
    FParent.Display()(CurrToStr(Result));
end;

function TRegraOperacoes.CalcularImposto(aValue: String): Currency;
begin
  Result := 0;
  if TryStrToCurr(aValue, Result) then
    Result := CalcularImposto(StrToCurr(aValue));
end;

function TRegraOperacoes.CalcularImpostoST(aValue: String): Currency;
begin
  Result := 0;
  if TryStrToCurr(aValue, Result) then
    Result := CalcularImpostoST(StrToCurr(aValue));
end;

function TRegraOperacoes.CalcularImpostoST(aValue: Currency): Currency;
begin
  Result := ((aValue * FParent.PercentImposto) - (aValue * 0.75)) + aValue;

  if Assigned(FParent.Display) then
    FParent.Display()(CurrToStr(Result));
end;

constructor TRegraOperacoes.Create(aParent : iRegras) ;
begin
  FParent := aParent;
end;

destructor TRegraOperacoes.Destroy;
begin

  inherited;
end;

class function TRegraOperacoes.New(aParent : iRegras) : iRegrasOperacoes;
begin
  Result := Self.Create(aParent);
end;

end.
