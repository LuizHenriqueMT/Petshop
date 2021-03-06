unit ULogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Buttons, data.db;

type
  TfrmLogin = class(TForm)
    pnlPrincipal: TPanel;
    Shape1: TShape;
    Label3: TLabel;
    btnEntrarUser: TBitBtn;
    edtUsuario: TEdit;
    edtSenha: TEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure SetMainForm(NovoMainForm: TForm);
    procedure btnEntrarUserClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edtUsuarioKeyPress(Sender: TObject; var Key: Char);
    procedure btnEntrarUserKeyPress(Sender: TObject; var Key: Char);
    procedure edtSenhaKeyPress(Sender: TObject; var Key: Char);
    procedure edtUsuarioExit(Sender: TObject);
    procedure edtSenhaExit(Sender: TObject);
    procedure edtUsuarioEnter(Sender: TObject);
    procedure edtSenhaEnter(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.dfm}


uses UPrincipal, UDataBase;

procedure TfrmLogin.BitBtn1Click(Sender: TObject);
begin
      //Seta o frmPrincipal como MAIN
      SetMainForm(frmPrincipal);
      application.CreateForm(TFrmPrincipal, frmPrincipal);
      frmPrincipal.ShowModal;
      frmLogin.free;
end;

procedure TfrmLogin.btnEntrarUserClick(Sender: TObject); //Tela de Login
begin
      modulo.Usuario.Open; //Ativa a tabela
      if modulo.Usuario.Locate('User_Name', edtUsuario.Text, [loCaseInsensitive ]) and
         modulo.Usuario.Locate('User_Pass', edtSenha.Text, [loCaseInsensitive ]) then
        begin
          modulo.Usuario.Close;

          SetMainForm(frmPrincipal);                            //FormPrincipal
          application.CreateForm(TFrmPrincipal, frmPrincipal);
          frmPrincipal.ShowModal;
          frmLogin.free;
        end
      else
      if (edtUsuario.Text = '') and (edtSenha.Text = '') then
        begin
          messageDlg('Preencha o usuario e a senha!',mtInformation,[mbOk],0);
          edtUsuario.SetFocus;
        end
      else
        begin
          messagedlg('Usuario ou senha inv?lida!',mtWarning,[mbOk],0);
          edtUsuario.Text:= 'Nome';
          edtUsuario.Font.Color:= clGrayText;

          edtSenha.Font.Size:= 12;
          edtSenha.Text:= 'Senha';
          edtSenha.Font.Color:= clGrayText;
          edtSenha.PasswordChar:= #0;
        end;
end;

procedure TfrmLogin.btnEntrarUserKeyPress(Sender: TObject; var Key: Char);
begin
      frmLogin.OnKeyPress(Sender,key);
end;

procedure TfrmLogin.edtSenhaEnter(Sender: TObject);
begin
      if ((edtSenha.Text = 'Senha') and (edtSenha.Font.Color = clGrayText)) then
        begin
          edtSenha.Font.Size:= 10;
          edtSenha.PasswordChar:= '*';
          edtSenha.Text:= '';
          edtSenha.Font.Color:= clBlack;
        end;
end;

procedure TfrmLogin.edtSenhaExit(Sender: TObject);
begin
      if ((edtSenha.Text = '') and (edtSenha.Font.Color = clBlack)) then
        begin
          edtSenha.Font.Size:= 12;
          edtSenha.Text:= 'Senha';
          edtSenha.Font.Color:= clGrayText;
          edtSenha.PasswordChar:= #0;
        end;
end;

procedure TfrmLogin.edtSenhaKeyPress(Sender: TObject; var Key: Char);
begin
      frmLogin.OnKeyPress(Sender,key);
end;

procedure TfrmLogin.edtUsuarioEnter(Sender: TObject);
begin
      if ((edtUsuario.Text = 'Nome') and (edtusuario.Font.Color = clGrayText)) then
        begin
          edtUsuario.Text:= '';
          edtUsuario.Font.Color:= clBlack;
        end;
end;

procedure TfrmLogin.edtUsuarioExit(Sender: TObject);
begin
      if ((edtUsuario.Text = '') and (edtUsuario.Font.Color = clBlack)) then
        begin
          edtUsuario.Text:= 'Nome';
          edtUsuario.Font.Color:= clGrayText;
        end;
end;

procedure TfrmLogin.edtUsuarioKeyPress(Sender: TObject; var Key: Char);
begin
      frmLogin.OnKeyPress(Sender,key);
end;

procedure TfrmLogin.FormActivate(Sender: TObject);
var
      Enter: string;
begin
      //Inicializa??o login
      edtUsuario.SetFocus;

end;

procedure TfrmLogin.FormKeyPress(Sender: TObject; var Key: Char);
begin
      if Key = #13 then
        begin
          btnEntrarUser.OnClick(Sender);
        end;
end;

procedure TfrmLogin.SetMainForm(NovoMainForm: TForm);
var   TmMain: ^TCustomForm;
begin
      TmMain:= @application.MainForm;
      TmMain^:= NovoMainForm;
end;

end.
