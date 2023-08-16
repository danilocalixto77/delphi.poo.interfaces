unit eInterface.Model.PessoaFisica;

interface

uses
  eInterface.Model.Interfaces;

type
  TModelPessoaFisica = Class(TInterfacedObject, iPessoa)
  private
    FNome : String;
    FSobreNome : String;
    FDisplay : TEvDisplay;
    function Nome (Value : String) : iPessoa; overload;
    function Nome : String; overload;
    function Sobrenome (Value : String) : iPessoa;
    function NomeCompleto : iPessoa;
    function Display (Value : TEvDisplay) : iPessoa;
  public
    constructor Create;
    destructor Destroy; override;
    class function New : iPessoa;
  End;

implementation

{ TModelPessoa }

constructor TModelPessoaFisica.Create;
begin

end;

destructor TModelPessoaFisica.Destroy;
begin
  inherited;
end;

function TModelPessoaFisica.Display(Value: TEvDisplay): iPessoa;
begin
  Result := Self;
  FDIsplay := Value;
end;

class function TModelPessoaFisica.New: iPessoa;
begin
  Result := Self.Create;
end;

function TModelPessoaFisica.Nome(Value: String): iPessoa;
begin
  FNome := Value;
  Result := Self;
end;

function TModelPessoaFisica.Nome: String;
begin
  Result := FNome;
end;

function TModelPessoaFisica.NomeCompleto: iPessoa;
begin
  Result := Self;
  FDisplay(FNome +' '+FSobreNome);
end;

function TModelPessoaFisica.Sobrenome(Value: String): iPessoa;
begin
  FSobreNome := Value;
  Result := Self;
end;

end.
