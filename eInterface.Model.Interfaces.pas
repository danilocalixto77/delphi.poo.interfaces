unit eInterface.Model.Interfaces;

interface

type

  TEvDisplay = procedure (Value : String) of Object;

  iPessoa = Interface
    ['{729B5C49-3AA4-4805-804A-BDB0B28D2EB0}']
    {Variável Nome fazendo set}
    function Nome (Value : String) : iPessoa; overload;
    {Variável Nome fazendo get}
    function Nome : String; overload;
    function Sobrenome (Value : String) : iPessoa;
    function NomeCompleto : iPessoa;
    function Display (Value : TEvDisplay) : iPessoa;
  End;

  iPessoaFactory = Interface
    ['{CE920916-D10A-4337-ABB1-BA6F26A029B2}']
    function PessoaFisica : iPessoa;
    function PessoaJuridica : iPessoa;

  End;

implementation

end.
