unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.Buttons, Vcl.Menus;

type
  TfrmPrincipal = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    MainMenu1: TMainMenu;
    Arquivos1: TMenuItem;
    CadastroClientes1: TMenuItem;
    Cadastropet1: TMenuItem;
    btnCadastrarPet: TImage;
    btnEntrada: TImage;
    btnCompra: TImage;
    procedure Image1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure btnCadastrarPetClick(Sender: TObject);
    procedure btnEntradaClick(Sender: TObject);
    procedure btnCompraClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses UCadastro, ULogin, UProdutos;


procedure TfrmPrincipal.btnEntradaClick(Sender: TObject);
begin
      frmPrincipal:= nil;
      frmPrincipal.Free;

      application.CreateForm(TfrmClientes, frmClientes);
      frmClientes.pgClientes.ActivePageIndex:= 2; //Abre o tabshet do Cliente

      frmclientes.Visible:= true;
      frmclientes.pgClientes.ActivePage.SetFocus;
      frmClientes.Height:= 426;
end;

procedure TfrmPrincipal.FormActivate(Sender: TObject);
begin
      frmLogin.hide;
end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      Application.Terminate;
end;

procedure TfrmPrincipal.Image1Click(Sender: TObject);
begin

      frmPrincipal:= nil;
      frmPrincipal.Free;

      application.CreateForm(TfrmClientes, frmClientes);
      frmClientes.pgClientes.ActivePageIndex:= 0; //Abre o tabshet do Cliente

      frmclientes.Visible:= true;
      frmclientes.pgClientes.ActivePage.SetFocus;
      frmClientes.Height:= 400;
end;

procedure TfrmPrincipal.btnCompraClick(Sender: TObject);
begin
      frmPrincipal:= nil;
      FrmPrincipal.Free;
      application.Createform(TfrmProdutos, frmProdutos);
      frmProdutos.ShowModal;
end;

procedure TfrmPrincipal.btnCadastrarPetClick(Sender: TObject);
begin
      frmPrincipal:= nil;
      frmPrincipal.Free;

      application.CreateForm(TFrmClientes, frmClientes);
      frmClientes.pgClientes.ActivePageIndex:= 1; //Abre o tabshet do pet

      frmclientes.Visible:= true;
      frmclientes.pgClientes.ActivePage.SetFocus;

      frmClientes.Height:= 478;

end;

end.


