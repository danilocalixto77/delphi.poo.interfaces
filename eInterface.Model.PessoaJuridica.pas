unit eInterface.Model.PessoaJuridica;

interface

uses
  eInterface.Model.Interfaces;

type
  TModelPessoaJuridica = Class(TInterfacedObject, iPessoa)
  private
    FNome : String;
    FSobreNome : String;
    FDisplay : TEvDisplay;
    function Nome (Value : String) : iPessoa; overload;
    function Nome : String; overload;
    function Sobrenome (Value : String) : iPessoa;
    function NomeCompleto : iPessoa;
  public
    constructor Create;
    destructor Destroy; override;
    class function New : iPessoa;
    function Display (Value : TEvDisplay) : iPessoa;
  End;

implementation

{ TModelPessoa }

constructor TModelPessoaJuridica.Create;
begin

end;

destructor TModelPessoaJuridica.Destroy;
begin
  inherited;
end;

function TModelPessoaJuridica.Display(Value: TEvDisplay): iPessoa;
begin
  Result := Self;
  FDisplay := Value;
end;

class function TModelPessoaJuridica.New: iPessoa;
begin
  Result := Self.Create;
end;

function TModelPessoaJuridica.Nome(Value: String): iPessoa;
begin
  FNome := Value;
  Result := Self;
end;

function TModelPessoaJuridica.Nome: String;
begin
  Result := FNome;
end;

function TModelPessoaJuridica.NomeCompleto: iPessoa;
begin
  Result := Self;
  FDisplay(FNome +' '+FSobreNome + ' LTDA - ME ');
end;

function TModelPessoaJuridica.Sobrenome(Value: String): iPessoa;
begin
  FSobreNome := Value;
  Result := Self;
end;

end.
