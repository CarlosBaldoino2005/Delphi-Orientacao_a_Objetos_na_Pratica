unit Regra;

interface

type
  TRegra = class
    private
    public
      function Name : String; virtual; abstract;
      function CalcularImposto ( aValue : Currency ) : Currency; virtual; abstract;
  end;

implementation

end.
