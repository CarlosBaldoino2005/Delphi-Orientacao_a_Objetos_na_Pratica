unit Regra.Interfaces;

interface

uses
  System.SysUtils,
  System.Classes;

type
  iRegrasOperacoes = interface;


  iRegrasController = interface
    ['{5B552B29-2809-464B-8DBA-87400B9D3B33}']
    function Registry ( aKey : Integer; aValue : String ) : iRegrasController;
    function ListaRegras (aValue : TStrings ) : iRegrasController;
  end;

  iRegras = interface
    ['{274E7FF1-6E24-49C9-911A-F4D6A5FF4F64}']
    function Name : String;
    function Display ( aValue : TProc<String> ) : iRegras; overload;
    function Display : TProc<String>; overload;
    function PercentImposto : Currency;
    function Operacoes : iRegrasOperacoes;
  end;

  iRegrasOperacoes = interface
    ['{44ADAEDE-0412-4475-A427-44F021935C94}']
    function CalcularImposto ( aValue : Currency ) : Currency; overload;
    function CalcularImposto ( aValue : String ) : Currency; overload;
    function CalcularImpostoST ( aValue : Currency ) : Currency; overload;
    function CalcularImpostoST ( aValue : String ) : Currency; overload;
  end;

implementation

end.
