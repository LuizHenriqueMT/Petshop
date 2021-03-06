program SysPetShop;

{$R *.dres}

uses
  Vcl.Forms,
  UCadastro in 'fonts\UCadastro.pas' {frmClientes},
  UDataBase in 'fonts\UDataBase.pas' {Modulo: TDataModule},
  UEntrada in 'fonts\UEntrada.pas' {frmEntrada},
  ULogin in 'fonts\ULogin.pas' {frmLogin},
  UPrincipal in 'fonts\UPrincipal.pas' {frmPrincipal},
  UProdutos in 'fonts\UProdutos.pas' {frmProdutos},
  Vcl.Themes,
  Vcl.Styles,
  UniConnectDialog1 in 'fonts\UniConnectDialog1.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(TModulo, Modulo);
  Application.Run;
end.
