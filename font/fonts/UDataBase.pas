unit UDataBase;

interface

uses
  System.SysUtils, System.Classes, FireDAC.UI.Intf, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.MySQLDef, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  FireDAC.Phys.MySQL, FireDAC.Comp.UI, jpeg, frxClass, frxDBSet, frxBarcode,
  Datasnap.Provider, Datasnap.DBClient, frxExportBaseDialog, frxExportPDF,
  FireDAC.Moni.Base, FireDAC.Moni.RemoteClient;

type
  TModulo = class(TDataModule)
    FDWaitCursor: TFDGUIxWaitCursor;
    Conexao: TFDConnection;
    FMDriver: TFDPhysMySQLDriverLink;
    tbCliente: TFDTable;
    DSCliente: TDataSource;
    DSUsuario: TDataSource;
    Pet: TFDTable;
    DSPet: TDataSource;
    QueryCliente: TFDQuery;
    PetPet_Codigo: TIntegerField;
    PetPet_Nome: TStringField;
    PetPet_Apelido: TStringField;
    PetPet_Especie: TStringField;
    PetPet_Raca: TStringField;
    PetPet_Admissao: TDateField;
    PetPet_Cor: TStringField;
    PetPet_Sexo: TStringField;
    PetPet_Porte: TStringField;
    PetPet_Pelagem: TStringField;
    PetPet_Detalhes: TMemoField;
    PetPet_Alergia: TStringField;
    PetPet_Deficiencia: TStringField;
    PetPet_Pedigree: TStringField;
    PetPet_Foto: TStringField;
    PetPet_Peso: TSingleField;
    QueryPet: TFDQuery;
    QueryCodigo: TFDQuery;
    QueryGrid: TFDQuery;
    dsGrid: TDataSource;
    QueryGridPet_Nome: TStringField;
    QueryGridPet_Apelido: TStringField;
    QueryGridPet_Especie: TStringField;
    QueryGridPet_Raca: TStringField;
    QueryGridPet_Admissao: TDateField;
    QueryGridPet_Cor: TStringField;
    QueryGridPet_Sexo: TStringField;
    QueryGridPet_Porte: TStringField;
    QueryGridPet_Peso: TSingleField;
    QueryGridPet_Vacina: TStringField;
    QueryGridPet_Pelagem: TStringField;
    QueryGridPet_Detalhes: TMemoField;
    QueryGridPet_Alergia: TStringField;
    QueryGridPet_Deficiencia: TStringField;
    QueryGridPet_Pedigree: TStringField;
    QueryGridPet_Foto: TStringField;
    QueryGridClie_Codigo: TIntegerField;
    QueryGridClie_Nome: TStringField;
    QueryUser: TFDQuery;
    Usuario: TFDTable;
    UsuarioUser_Cod: TIntegerField;
    UsuarioUser_Name: TStringField;
    UsuarioUser_Pass: TStringField;
    QueryPetMAXPet_Codigo1: TLargeintField;
    QueryGridPet_Codigo: TIntegerField;
    PetClie_Nome: TStringField;
    frxReport1: TfrxReport;
    frxRelatorioCliente: TfrxDBDataset;
    QueryRelatorio: TFDQuery;
    frxRelatorioPet: TfrxDBDataset;
    QueryClienteClie_Codigo: TIntegerField;
    QueryClienteClie_Nome: TStringField;
    QueryClienteClie_Admissao: TDateField;
    QueryClienteClie_Nascm: TDateField;
    QueryClienteClie_Sexo: TStringField;
    QueryClienteClie_Endereco: TStringField;
    QueryClienteClie_NumEnd: TStringField;
    QueryClienteClie_Bairro: TStringField;
    QueryClienteClie_Cidade: TStringField;
    QueryClienteClie_UF: TStringField;
    QueryClienteClie_Pais: TStringField;
    QueryClienteClie_Email: TStringField;
    tbClienteClie_Codigo: TIntegerField;
    tbClienteClie_Nome: TStringField;
    tbClienteClie_Admissao: TDateField;
    tbClienteClie_Nascm: TDateField;
    tbClienteClie_Sexo: TStringField;
    tbClienteClie_Endereco: TStringField;
    tbClienteClie_NumEnd: TStringField;
    tbClienteClie_Bairro: TStringField;
    tbClienteClie_Cidade: TStringField;
    tbClienteClie_UF: TStringField;
    tbClienteClie_Pais: TStringField;
    tbClienteClie_Email: TStringField;
    tbClienteClie_CPF: TStringField;
    QueryGridClie_CPF: TStringField;
    tbClienteClie_Celular: TStringField;
    QueryClienteClie_Celular: TStringField;
    QueryGridClie_Admissao: TDateField;
    QueryGridClie_Celular: TStringField;
    QueryGridClie_Nascm: TDateField;
    QueryGridClie_Sexo: TStringField;
    QueryGridClie_Endereco: TStringField;
    QueryGridClie_NumEnd: TStringField;
    QueryGridClie_Bairro: TStringField;
    QueryGridClie_Cidade: TStringField;
    QueryGridClie_UF: TStringField;
    QueryGridClie_Pais: TStringField;
    QueryGridClie_Email: TStringField;
    PetClie_CPF: TStringField;
    QueryRelatorioPet_Codigo: TIntegerField;
    QueryRelatorioPet_Nome: TStringField;
    QueryRelatorioPet_Apelido: TStringField;
    QueryRelatorioPet_Especie: TStringField;
    QueryRelatorioPet_Raca: TStringField;
    QueryRelatorioPet_Admissao: TDateField;
    QueryRelatorioPet_Cor: TStringField;
    QueryRelatorioPet_Sexo: TStringField;
    QueryRelatorioPet_Porte: TStringField;
    QueryRelatorioPet_Peso: TSingleField;
    QueryRelatorioPet_Vacina: TStringField;
    QueryRelatorioPet_Pelagem: TStringField;
    QueryRelatorioPet_Detalhes: TMemoField;
    QueryRelatorioPet_Alergia: TStringField;
    QueryRelatorioPet_Deficiencia: TStringField;
    QueryRelatorioPet_Pedigree: TStringField;
    QueryRelatorioPet_Foto: TStringField;
    QueryRelatorioClie_Codigo: TIntegerField;
    QueryRelatorioClie_Nome: TStringField;
    QueryRelatorioClie_Admissao: TDateField;
    QueryRelatorioClie_Celular: TStringField;
    QueryRelatorioClie_CPF: TStringField;
    QueryRelatorioClie_Nascm: TDateField;
    QueryRelatorioClie_Sexo: TStringField;
    QueryRelatorioClie_Endereco: TStringField;
    QueryRelatorioClie_NumEnd: TStringField;
    QueryRelatorioClie_Bairro: TStringField;
    QueryRelatorioClie_Cidade: TStringField;
    QueryRelatorioClie_UF: TStringField;
    QueryRelatorioClie_Pais: TStringField;
    QueryRelatorioClie_Email: TStringField;
    QueryClienteClie_CPF: TStringField;
    frxRelatorioAmbos: TfrxDBDataset;
    QueryPetFields: TFDQuery;
    QueryPetFieldsPet_Codigo: TIntegerField;
    QueryPetFieldsPet_Nome: TStringField;
    QueryPetFieldsPet_Apelido: TStringField;
    QueryPetFieldsPet_Especie: TStringField;
    QueryPetFieldsPet_Raca: TStringField;
    QueryPetFieldsPet_Admissao: TDateField;
    QueryPetFieldsPet_Cor: TStringField;
    QueryPetFieldsPet_Sexo: TStringField;
    QueryPetFieldsPet_Porte: TStringField;
    QueryPetFieldsPet_Peso: TSingleField;
    QueryPetFieldsPet_Pelagem: TStringField;
    QueryPetFieldsPet_Detalhes: TMemoField;
    QueryPetFieldsPet_Alergia: TStringField;
    QueryPetFieldsPet_Deficiencia: TStringField;
    QueryPetFieldsPet_Pedigree: TStringField;
    QueryPetFieldsPet_Foto: TStringField;
    QueryPetFieldsClie_Codigo: TIntegerField;
    QueryRelatorioClie_Foto: TBlobField;
    PetClie_Codigo: TIntegerField;
    QueryPetFieldsPet_Vacina: TStringField;
    PetPet_Vacina: TStringField;
    frxPDFExport: TfrxPDFExport;
    procedure DataModuleCreate(Sender: TObject);
    procedure QueryCodigoBeforeInsert(DataSet: TDataSet);
    procedure QueryPetBeforeInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Modulo: TModulo;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UCadastro;

{$R *.dfm}

procedure TModulo.DataModuleCreate(Sender: TObject);
begin

      Conexao.Params.Database:= 'petshop';
      Conexao.Params.UserName:= 'root';
      conexao.Params.Password:= '';
      conexao.Connected:= true;
      FMDriver.VendorLib:= GetCurrentDir + 'lib\libmySQL.dll';
end;

procedure TModulo.QueryCodigoBeforeInsert(DataSet: TDataSet);
begin
      modulo.tbCliente.Last;
end;

procedure TModulo.QueryPetBeforeInsert(DataSet: TDataSet);
begin
       modulo.pet.Last;
end;

end.
