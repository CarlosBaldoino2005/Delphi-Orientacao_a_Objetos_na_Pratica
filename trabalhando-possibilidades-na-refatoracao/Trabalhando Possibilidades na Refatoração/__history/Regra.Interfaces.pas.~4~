unit Regra.Interfaces;

interface

uses
  System.SysUtils;

type

  iRegras = interface
    ['{274E7FF1-6E24-49C9-911A-F4D6A5FF4F64}']
    function Name : String;
    function CalcularImposto ( aValue : Currency ) : Currency; overload;
    function CalcularImposto ( aValue : String ) : Currency; overload;
    function Display ( aValue : TProc<String> ) : iRegras;
  end;

implementation

end.
