unit UCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Buttons, System.ImageList, Vcl.ImgList,
  Vcl.ExtDlgs, Vcl.Imaging.pngimage, Data.DB, jpeg, Vcl.CheckLst, Vcl.Grids,
  Vcl.DBGrids, PngSpeedButton;

type
  TfrmClientes = class(TForm)
    pgClientes: TPageControl;
    Cliente: TTabSheet;
    edtCodigo: TDBEdit;
    lbCodigo: TLabel;
    lbNome: TLabel;
    edtNomeC: TDBEdit;
    lbNascimento: TLabel;
    edtNascC: TDBEdit;
    lbAdmissao: TLabel;
    edtAdmissaoC: TDBEdit;
    edtEndereco: TDBEdit;
    lbEndereco: TLabel;
    lbNumEnd: TLabel;
    edtNumEnd: TDBEdit;
    lbBairro: TLabel;
    edtBairro: TDBEdit;
    lbCPF: TLabel;
    edtCPF: TDBEdit;
    lbTelefone: TLabel;
    edtTelefone: TDBEdit;
    lbCidade: TLabel;
    edtCidade: TDBEdit;
    edtUF: TDBComboBox;
    lbUF: TLabel;
    lbPais: TLabel;
    edtPais: TDBComboBox;
    btnAdcFoto: TBitBtn;
    Pet: TTabSheet;
    paintbox1: TPaintBox;
    Panel2: TPanel;
    lbSexo: TLabel;
    lbEmail: TLabel;
    edtEmail: TDBEdit;
    DBNavigator1: TDBNavigator;
    lbCodigoP: TLabel;
    lbNomeP: TLabel;
    edtCodigoPet: TDBEdit;
    edtNomePet: TDBEdit;
    edtEspeciePet: TDBEdit;
    lbEspeciePet: TLabel;
    lbRacaPet: TLabel;
    edtRacaPet: TDBEdit;
    lbPelagemPet: TLabel;
    cbPelagemPet: TDBComboBox;
    lbCorPet: TLabel;
    edtCorPet: TDBEdit;
    edtApelidoPet: TDBEdit;
    lbApelidoP: TLabel;
    edtPesoPet: TDBEdit;
    lbPesoPet: TLabel;
    Panel1: TPanel;
    lbPortePet: TLabel;
    cbPortePet: TDBComboBox;
    lbVacinaPet: TLabel;
    cbVacinaPet: TDBComboBox;
    edtAdmissaoP: TDBEdit;
    lbAdmissaoP: TLabel;
    memoPet: TDBMemo;
    DBNavigator2: TDBNavigator;
    cbSexoCliente: TDBComboBox;
    cbSexoPet: TDBComboBox;
    lbSexoPet: TLabel;
    imgClienteBD: TImage;
    btnAdicionarFotoP: TBitBtn;
    imgPetBD: TImage;
    btnAdicionarDetalhe: TBitBtn;
    edtDetalhes: TEdit;
    TabSheet1: TTabSheet;
    PaintBox3: TPaintBox;
    edtPesquisa: TEdit;
    btnPesquisa: TBitBtn;
    Panel3: TPanel;
    gdPesquisa: TDBGrid;
    rgPesquisa: TRadioGroup;
    btnAbrirDados: TBitBtn;
    Image1: TImage;
    Label1: TLabel;
    edtCodigoPD: TDBEdit;
    edtNomePD: TDBEdit;
    Label2: TLabel;
    edtCPFPD: TDBEdit;
    Label3: TLabel;
    btnRelatorio: TBitBtn;
    PaintBox2: TPaintBox;
    rgRelatorio: TRadioGroup;
    lbGetRow: TLabel;
    Memoteste: TMemo;
    btnAdicionar: TPngSpeedButton;
    btnAtualizar: TPngSpeedButton;
    btnSalvar: TPngSpeedButton;
    btnExcluir: TPngSpeedButton;
    btnCancelar: TPngSpeedButton;
    btnFechar: TPngSpeedButton;
    btnPesquisar: TPngSpeedButton;
    PngSpeedButton1: TPngSpeedButton;
    PngSpeedButton2: TPngSpeedButton;
    PngSpeedButton3: TPngSpeedButton;
    PngSpeedButton4: TPngSpeedButton;
    PngSpeedButton5: TPngSpeedButton;
    PngSpeedButton6: TPngSpeedButton;
    PngSpeedButton7: TPngSpeedButton;
    btnAdicionarP: TPngSpeedButton;
    btnAtualizarP: TPngSpeedButton;
    btnSalvarP: TPngSpeedButton;
    btnExcluirP: TPngSpeedButton;
    btnCancelarP: TPngSpeedButton;
    btnFecharP: TPngSpeedButton;
    btnPesquisarP: TPngSpeedButton;
    Panel4: TPanel;
    chbAlergia: TDBCheckBox;
    chbDeficiencia: TDBCheckBox;
    chbPedigree: TDBCheckBox;
    procedure Panel1Enter(Sender: TObject);
    procedure paintbox1Paint(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure pgClientesChange(Sender: TObject);
    procedure pgClientesChanging(Sender: TObject; var AllowChange: Boolean);
    procedure cbSexoClienteChange(Sender: TObject);
    procedure chbAlergiasClick(Sender: TObject);
    procedure btnAdicionarDetalheClick(Sender: TObject);
    procedure fdfClick(Sender: TObject);
    procedure chbPedigfdfdreeClick(Sender: TObject);
    procedure btnPesquisaClick(Sender: TObject);
    procedure btnAbrirDadosClick(Sender: TObject);
    procedure btnAdicionarPClick(Sender: TObject);
    procedure btnRelatorioClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure rgRelatorioClick(Sender: TObject);
    procedure edtPesquisaClick(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnAtualizarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure btnRelaorioKeyPress(Sender: TObject; var Key: Char);
    procedure btnAbriDadosKeyPress(Sender: TObject; var Key: Char);
    procedure gdPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure btnRelatorioKeyPress(Sender: TObject; var Key: Char);
    procedure btnAbrirDadosKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure ButtonsOFF;
    procedure ButtonON;
    procedure AtivarALL (AtivarTab:TTabSheet; Hab:Boolean);
  public
    { Public declarations }
  end;

var
  frmClientes: TfrmClientes;
  pageControl: TPageControl;

implementation

{$R *.dfm}

uses UDataBase, UPrincipal;

procedure TfrmClientes.FormActivate(Sender: TObject); //M?todos de Inicializa??o Cadastros
var  I: integer;
begin
      Modulo.Conexao.Connected:= true;
      modulo.tbCliente.Active:= true;
      modulo.Pet.Active:= true;

      frmclientes.chbAlergia.Checked:= false;
      frmclientes.chbDeficiencia.Checked:= false;
      frmclientes.chbPedigree.Checked:= false;
      edtDetalhes.Enabled:= false;
      edtDetalhes.Text:= '';

      with modulo do
        begin
          tbClienteClie_Celular.EditMask:= '\(99)\ 99999-9999;0;_';
          tbClienteClie_CPF.EditMask:= '000.000.000-00;0;_';
          PetClie_CPF.EditMask:= '000.000.000-00;0;_';
          tbClienteClie_Nascm.EditMask:= '!00/00/0000;1;_';
        end;

      if pgClientes.ActivePageIndex = 0 then
        begin
          modulo.tbCliente.Last;
        end
      else
      if pgClientes.ActivePageIndex = 1 then
        begin
          modulo.Pet.Last;
        end;

end;


procedure TfrmClientes.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      if key = Vk_escape then
        rgPesquisa.ItemIndex:= -1;
end;

procedure TfrmClientes.FormKeyPress(Sender: TObject; var Key: Char);
begin
      frmClientes.OnKeyPress(sender, key);
end;

procedure TfrmClientes.gdPesquisaKeyPress(Sender: TObject; var Key: Char);
begin
      frmClientes.OnKeyPress(Sender, key);
end;

procedure TfrmClientes.AtivarALL(AtivarTab: TTabSheet; Hab: Boolean); //Ativar Manipula??op edits
var   Ativador: integer;
begin
      if pgClientes.ActivePageIndex = 0 then //Page Cadastro Cliente
        begin
          for ativador:= 0 to AtivarTab.ControlCount -1 do
            if ((AtivarTab.Controls[ativador] is TDBEdit) or
              (AtivarTab.Controls[ativador] is TDBComboBox)) then
              begin
                AtivarTab.Controls[ativador].Enabled:= Hab;
              end
            else if edtCodigo.Enabled = true then
              edtCodigo.Enabled:= false;
              edtAdmissaoC.Enabled:= false;
        end
      else
      if pgClientes.ActivePageIndex = 1 then //Page Cadastro Pet
        begin
          for ativador:= 0 to AtivarTab.ControlCount -1 do
            if ((AtivarTab.Controls[ativador] is TDBEdit) or
              (AtivarTab.Controls[ativador] is TDBComboBox) or
              (AtivarTab.Controls[ativador] is TGroupBox) or
              (AtivarTab.Controls[ativador] is TDBCheckBox)or
              (AtivarTab.Controls[ativador] is TEdit)or
              (AtivarTab.Controls[ativador] is TBitBtn)) then
              begin
                AtivarTab.Controls[ativador].Enabled:= Hab;
              end
            else if edtCodigoPet.Enabled = true then
              edtCodigoPet.Enabled:= false;
              edtAdmissaoP.Enabled:= false;
        end;
end;

procedure TfrmClientes.BitBtn1Click(Sender: TObject);
begin
      modulo.QueryGrid.Open();
      btnAbrirDados.Enabled:= true;
end;

procedure TfrmClientes.btnAbrirDadosClick(Sender: TObject);
begin
      with modulo do
        begin
          querygrid.Close;
          querygrid.SQL.Clear;
          querygrid.SQL.Add('Select *, Cliente.Clie_Nome, Cliente.Clie_CPF FROM pet INNER Join Cliente ON Pet.Clie_Codigo = Cliente.Clie_Codigo');
          querygrid.Open();
          modulo.frxReport1.LoadFromFile(getcurrentdir + '\report\RelatorioAmbos.fr3');
          modulo.frxReport1.ShowReport();
        end;
end;

procedure TfrmClientes.btnAbrirDadosKeyPress(Sender: TObject; var Key: Char);
begin
      frmClientes.OnKeyPress(sender, key);
end;

procedure TfrmClientes.btnAbriDadosKeyPress(Sender: TObject; var Key: Char);
begin
      frmClientes.OnKeyPress(Sender, key);
end;

procedure TfrmClientes.btnAdicionarClick(Sender: TObject);
var   Ativador, CodInc: integer;
begin
      if pgClientes.ActivePageIndex = 0 then //Page Cadastro Cliente
        begin
          CodInc:= 0;
          Modulo.tbCliente.Insert;
          AtivarALL(Cliente,true);
          modulo.QueryCodigo.Close;
          modulo.QueryCodigo.SQL.Clear;

          modulo.Querycodigo.SQL.Add('Select MAX(Clie_Codigo + 1) from Cliente'); //Pesquisa para ver ultimo dado registrado AI
          modulo.Querycodigo.Open();
          codInc:= modulo.QueryCodigo.Fields[0].Value;
          modulo.tbClienteClie_Codigo.Value:= (codInc); //Incrementa Codigo Cliente

          ButtonsOFF;
          edtAdmissaoC.Text:= formatdatetime('dd/mm/yyyy',now);
          edtNomeC.SetFocus;
        end
      else
      if pgClientes.ActivePageIndex = 1 then //Page Cadastro Pet
        begin
          codInc:= 0;
          modulo.Pet.Insert;
          AtivarALL(Pet,true);
          with modulo.Querypet do
            begin
              Close;
              SQL.Clear;
              SQL.Add('Select MAX(Pet_Codigo + 1) from Pet'); //Pesquisa para ver ultimo dado registrado AI
              Open;
              codInc:= modulo.Querypet.Fields[0].Value;
              modulo.PetPet_Codigo.Value:= (codInc); //Incrementa Codigo Pet

              ButtonsOFF;
              edtAdmissaoP.Text:= formatdatetime('dd/mm/yyyy',now);
              edtNomePD.SetFocus;
            end;
        end;
end;

procedure TfrmClientes.btnAdicionarDetalheClick(Sender: TObject); //Adicionar MEMO
var   cont: Integer;
      ResultadoText: String;
begin
      MemoPet.Lines.Add(edtDetalhes.text);
      ResultadoText:= memoPet.Lines.Text;
end;

procedure TfrmClientes.btnAtualizarClick(Sender: TObject);
begin
      if pgClientes.ActivePageIndex = 0 then  //Page Cadastro Cliente
        begin
          Modulo.tbCliente.Edit;
          ButtonsOFF;
          AtivarAll(Cliente,true);
        end
      else
      if pgClientes.ActivePageIndex = 1 then  //Page Cadastro Pet
        begin
          Modulo.pet.Edit;
          ButtonsOFF;
          AtivarAll(pet,true);
        end;
end;

procedure TfrmClientes.btnCancelarClick(Sender: TObject);
begin
      if pgClientes.ActivePageIndex = 0 then //Page Cadastro Cliente
        begin
          if modulo.tbCliente.State in [dsInsert,dsEdit] then //Troca de tela Cliente/Pet em edi??o
            begin
              case Application.MessageBox('Deseja salvar o cliente?', 'Salvar', MB_YESNO + MB_ICONEXCLAMATION) of
                IDYES:
                  begin
                    Modulo.tbCliente.post;
                    Showmessage ('O cliente foi salvo com sucesso!');
                    AtivarALL(Cliente,false);
                    ButtonsOFF;
                    exit
                  end;
                IDNO:
                  begin
                    modulo.tbCliente.Cancel;
                    AtivarAll(Cliente,false);
                    ButtonsOFF;
                    exit
                  end;
              end;
            end;
        end
      else
      if pgClientes.ActivePageIndex = 1 then //Page Cadastro Pet
        begin
          if modulo.pet.State in [dsInsert,dsEdit] then //Troca de tela Cliente/Pet em edi??o
            begin
              case Application.MessageBox('Deseja salvar o pet?', 'Salvar', MB_YESNO + MB_ICONEXCLAMATION) of
                IDYES:
                  begin
                    Modulo.pet.post;
                    Showmessage ('O pet foi salvo com sucesso!');
                    AtivarALL(pet,false);
                    ButtonsOFF;
                    exit
                  end;
                IDNO:
                  begin
                    modulo.pet.Cancel;
                    AtivarAll(pet,false);
                    ButtonsOFF;
                    exit
                  end;
              end;
            end;
        end;
end;

procedure TfrmClientes.btnExcluirClick(Sender: TObject);
begin
      if pgClientes.ActivePageIndex = 0 then //Page Cadastro Cliente
        begin
          case Application.MessageBox('deseja deletar o cliente?', 'exluir', MB_YESNO + MB_ICONQUESTION) of
            IDYES:
              begin
                Modulo.tbCliente.Delete;
                messageDlg('O cliente foi exclu?do com sucesso!',mtconfirmation,[mbok],0);
              end;
            IDNO:
              begin
                exit
              end;
          end;
        end
      else
      if pgClientes.ActivePageIndex = 1 then //Page Cadastro Pet
        begin
          case Application.MessageBox('deseja deletar o cliente?', 'exluir', MB_YESNO + MB_ICONQUESTION) of
            IDYES:
              begin
                Modulo.Pet.Delete;
                messageDlg ('O cliente foi exclu?do com sucesso!',mtconfirmation,[mbok],0);
              end;
            IDNO:
              begin
                exit
              end;
          end;
        end;
end;

procedure TfrmClientes.btnFecharClick(Sender: TObject);
begin
      if pgClientes.ActivePageIndex = 0 then
        begin
          if Modulo.tbCliente.State in [dsInsert, dsEdit] then
            begin
              case Application.MessageBox ('deseja fechar o cadastro de cliente?', 'fechar', MB_YESNO + MB_ICONQUESTION) of
                IDYES:
                  begin
                    frmClientes.free;
                  end;
                IDNO:
                  begin
                    exit
                  end;
              end;
            end
          else
            frmClientes.Free;
        end
      else

      if pgClientes.ActivePageIndex = 1 then
        begin
          if Modulo.pet.State in [dsInsert, dsEdit] then
            begin
              case Application.MessageBox ('deseja fechar o cadastro de cliente?', 'fechar', MB_YESNO + MB_ICONQUESTION) of
                IDYES:
                  begin
                    frmClientes.free;
                  end;
                IDNO:
                  begin
                    exit
                  end;
              end;
            end
          else
            frmClientes.Free;
        end;
end;

procedure TfrmClientes.btnPesquisaClick(Sender: TObject);
var   I: integer;
begin
          rgRelatorio.ItemIndex:= -1;
          btnRelatorio.Enabled:= false;

          with modulo.QueryGrid do
            begin
              close;
              sql.clear;
              sql.add('Select *, Cliente.Clie_Codigo, Cliente.Clie_CPF from Pet INNER JOIN CLIENTE ON Pet.Clie_Codigo = Cliente.Clie_Codigo');

              case rgPesquisa.ItemIndex of
                0:
                  begin
                    SQL.Add('Where Pet.Pet_Codigo = :pPet_Codigo');
                    ParamByName('pPet_Codigo').Value:= edtPesquisa.Text;
                  end;
                1:
                  begin
                    SQL.Add('Where Pet.Pet_Nome like :pPet_Nome');
                    ParamByName('pPet_Nome').Value:= '%' + edtPesquisa.Text + '%';
                  end;
                2:
                  begin
                    SQL.Add('where pet.Clie_Codigo = :pClie_Codigo');
                    ParamByName('pClie_Codigo').Value:= edtPesquisa.Text;
                  end;
                3:
                  begin
                    SQL.Add('where Cliente.Clie_CPF = :pClie_CPF');
                    ParamByName('pClie_CPF').Value:= edtPesquisa.Text;
                  end;
              end;
              open;

              if recordcount = 0 then
                begin
                  btnRelatorio.Enabled:= false;
                  btnAbrirDados.Enabled:= false;
                  Application.MessageBox ('N?o foi encontrado nenhum dado!', 'Aviso', MB_OK + MB_ICONWARNING);
                end
              else
              if recordcount <> 0 then
                begin
                  btnAbrirDados.Enabled:= true;
                end;

            end;

          if (rgPesquisa.ItemIndex < 0) or (rgPesquisa.ItemIndex > 3) then
            begin
              modulo.QueryGrid.Open();
            end;

          if (edtPesquisa.Text = '') then
            begin

            end;


end;

procedure TfrmClientes.btnPesquisaKeyPress(Sender: TObject; var Key: Char);
begin
      frmClientes.OnKeyPress(Sender, key);
end;

procedure TfrmClientes.btnPesquisarClick(Sender: TObject);
begin
      if (pgClientes.ActivePageIndex = 0) or (pgClientes.ActivePageIndex = 1) then
        begin
          pgClientes.ActivePageIndex:= 2;
        end;
end;

procedure TfrmClientes.btnRelatorioClick(Sender: TObject); //Abrir relat?rio
var   i, contador, tamanho, nome: integer;
      RelAmbos, RelClie, RelPet, NomeRel: string;
begin
      memoteste.Lines.Clear;
      lbGetRow.Caption:= '';

      with gdPEsquisa.DataSource do                  //Contar sele??o
        if gdPesquisa.SelectedRows.Count > 0 then
          begin
            for i:= 0 to gdPEsquisa.SelectedRows.Count -1 do
              begin
                DataSet.GotoBookmark(gdPesquisa.SelectedRows.Items[i]);
                if rgRelatorio.ItemIndex = 0 then
                  begin
                    RelAmbos := '';
                    RelAmbos := DataSet.FieldByName('Pet_Codigo').Value;
                    MemoTeste.lines.add(Relambos);
                  end
                else
                if rgRelatorio.ItemIndex = 1 then
                  begin
                    RelClie := '';
                    RelClie := DataSet.FieldByName('Clie_Codigo').Value;
                    MemoTeste.lines.add(RelClie);
                  end
                else
                if rgRelatorio.ItemIndex = 2 then
                  begin
                    RelPet := '';
                    RelPet := DataSet.FieldByName('Pet_Codigo').Value;
                    MemoTeste.lines.add(RelPet);
                  end;
              end;

            for contador:= 0 to memoteste.Lines.Count -1 do
              begin
                lbgetRow.Caption:= lbgetRow.caption + ' ' + memoteste.Lines.Strings[contador] + ', ';
              end;

            Tamanho:= length(lbGetRow.Caption);
            lbGetRow.Caption:= copy(lbGetRow.Caption,1,tamanho-2);

            if rgRelatorio.ItemIndex = 0 then
              begin
                modulo.queryGrid.Close;
                modulo.querygrid.sql.Clear;
                modulo.querygrid.SQL.Add('Select *, Cliente.Clie_Nome, Cliente.Clie_CPF FROM pet INNER Join Cliente ON Pet.Clie_Codigo = Cliente.Clie_Codigo ');
                Modulo.QueryGrid.SQL.Add('Where Pet_Codigo IN ('+lbGetRow.Caption+')');
                modulo.frxReport1.LoadFromFile(getcurrentdir + '\report\RelatorioAmbos.fr3');
                //modulo.frxReport1.ShowReport();
              end
            else
            if rgRelatorio.ItemIndex = 1 then
              begin
                modulo.QueryCliente.close;
                modulo.QueryCliente.SQL.Clear;
                modulo.QueryCliente.SQL.Add('Select * from Cliente');
                modulo.QueryCliente.SQL.Add('Where Clie_Codigo IN ('+lbGetRow.caption+')');
                modulo.frxReport1.LoadFromFile(getcurrentdir + '\report\RelatorioCliente.fr3');
                //modulo.frxReport1.ShowReport();
              end
            else
            if rgRelatorio.ItemIndex = 2 then
              begin
                modulo.QueryPetFields.close;
                modulo.QueryPetFields.SQL.Clear;
                modulo.QueryPetFields.SQL.Add('Select * from Pet');
                modulo.QueryPetFields.SQL.Add('Where Pet_Codigo IN ('+lbGetRow.caption+')');
                modulo.frxReport1.LoadFromFile(getcurrentdir + '\report\RelatorioPet.fr3');
                //modulo.frxReport1.ShowReport();
              end;

          end;

        if memoteste.Lines.Text = '' then
          begin
            showmessage ('Por favor, selecione algum dado!');
          end;

        nomerel:= (formatdatetime('dd.mm.yyyy HH.MM.SS',now));
        with modulo do
          begin
            frxPDFExport.FileName := GetCurrentDir + '\report\Gerados\'+NomeRel+ '.pdf';
            frxPDFExport.DefaultPath := GetCurrentDir + '\report\';
            frxPDFExport.ShowDialog := False;
            frxPDFExport.ShowProgress := False;
            frxPDFExport.OverwritePrompt := False;
            frxReport1.PrepareReport();
            frxReport1.Export(frxPDFExport);
          end;
end;

procedure TfrmClientes.btnRelatorioKeyPress(Sender: TObject; var Key: Char);
begin
      frmClientes.OnKeyPress(sender, key);
end;

procedure TfrmClientes.btnRelaorioKeyPress(Sender: TObject; var Key: Char);
begin
      frmClientes.OnKeyPress(Sender, key);
end;

procedure TfrmClientes.btnSalvarClick(Sender: TObject);
begin
      if pgClientes.ActivePageIndex = 0 then
        begin
          Modulo.tbCliente.Post;
          ativarall(Cliente, false);
          ButtonsOFF;
          btnSalvar.Enabled:= false;

          if (modulo.tbclienteClie_Sexo.Value = null) then
            begin
              showmessage ('Peencha');
            end;
        end
      else
      if pgClientes.ActivePageIndex = 1 then
        begin
          Modulo.pet.Post;
          AtivarAll(Pet, false);
          ButtonsOFF;
          btnSalvarP.Enabled:= false;
        end;
end;

procedure TfrmClientes.ButtonsOFF;  //BotaoOFF
var  Verif: boolean;
      Dirfoto: String;
begin
      while Verif = true do
      verif:= true;
      DirFoto:= (getCurrentDir + '\img\');

      if pgClientes.ActivePageIndex = 0 then //Page Cadastro Cliente
        begin
          btnAdicionar.Enabled:= Modulo.tbCliente.State in [dsBrowse];
          btnExcluir.Enabled:= Modulo.tbCliente.State in [dsBrowse];
          btnAtualizar.Enabled:= Modulo.tbCliente.State in [dsBrowse];
          btnSalvar.Enabled:= Modulo.tbCliente.State in [dsInsert, dsEdit];
          btnCancelar.Enabled:= Modulo.tbCliente.State in [dsInsert, dsEdit];
          btnAdcFoto.Enabled:= modulo.tbCliente.State in [dsEdit, dsInsert];

          if (btnAdicionar.Enabled = (Modulo.tbCliente.State in [dsBrowse])) then //Ativar Botao Salvar e Cancelar
            begin
              if ((btnSalvar.Enabled) and (btnCancelar.Enabled) = true) then
                begin
                  btnSalvar.Enabled:= Modulo.tbCliente.State in [dsInsert, dsEdit];                  //btnSalvar.PngImage.LoadFromFile(DirFoto + 'Salvar.png');
                  btnCancelar.Enabled:= Modulo.tbCliente.State in [dsInsert, dsEdit];
                end
              else
              if ((btnSalvar.Enabled) and (btnCancelar.Enabled) = false) then
                begin
                  ButtonON;
                end;
            end;
        end
      else
      if pgClientes.ActivePageIndex = 1 then //Page Cadastro Pet
        begin
          btnAdicionarP.Enabled:= modulo.Pet.State in [dsBrowse];
          btnExcluirP.Enabled:= Modulo.pet.State in [dsBrowse];
          btnAtualizarP.Enabled:= Modulo.pet.State in [dsBrowse];
          btnSalvarP.Enabled:= Modulo.pet.State in [dsInsert, dsEdit];
          btnCancelarP.Enabled:= Modulo.pet.State in [dsInsert, dsEdit];

          chbAlergia.Checked:= false;
          chbAlergia.Enabled:= modulo.Pet.State in [dsedit,dsInsert];
          chbDeficiencia.Checked:= false;
          chbDeficiencia.Enabled:= modulo.Pet.State in [dsedit,dsInsert];
          chbPedigree.Checked:= false;
          chbPedigree.Enabled:= modulo.Pet.State in [dsedit,dsInsert];

          if (btnAdicionarP.Enabled = (Modulo.pet.State in [dsBrowse])) then //Ativar Botao Salvar e Cancelar
            begin
              if ((btnSalvarP.Enabled) and (btnCancelarP.Enabled) = true) then
                begin
                  btnSalvarP.Enabled:= Modulo.pet.State in [dsInsert, dsEdit];
                  btnCancelarP.Enabled:= Modulo.pet.State in [dsInsert, dsEdit];
                end
              else
              if ((btnSalvarP.Enabled) and (btnCancelarP.Enabled) = false) then
                begin
                  ButtonON;
                end;
            end;
        end;

      verif:= false;
end;

procedure TfrmClientes.cbSexoClienteChange(Sender: TObject); //Selecionar Sexo do Cliente
begin
      if pgClientes.ActivePageIndex = 0 then
        begin
          if cbSexoCliente.ItemIndex = 0 then
            begin
              modulo.tbClienteClie_Sexo.AsString:= cbSexoCliente.Items.Strings[0];
            end
          else
          if cbSexoCLiente.ItemIndex = 1 then
            modulo.tbClienteClie_sexo.AsString:= cbSexoCliente.Items.Strings[1];
        end
      else
      if pgClientes.ActivePageIndex = 1 then
        begin
          if cbSexoPet.ItemIndex = 0 then
            begin
              modulo.petpet_sexo.AsString:= cbSexoPet.Items.Strings[0];
            end
          else
          if cbSexoPet.ItemIndex = 1 then
            modulo.petpet_sexo.AsString:= cbSexoPet.Items.Strings[1];
        end;
end;

procedure TfrmClientes.chbAlergiasClick(Sender: TObject);
var   contClick: integer;
begin
      if modulo.Pet.State in [dsInsert,dsEdit] then
        begin
          if chbAlergia.Checked = true then
            begin
              if chbAlergia.ValueChecked = 'S' then
                begin
                  edtDetalhes.Enabled:= true;
                  btnAdicionarDetalhe.Enabled:= true;
                  edtDetalhes.Text:= 'A- ';
                end
            end
          else
          if chbAlergia.Checked = false then
            begin
              if chbalergia.ValueChecked = 'S' then
                begin
                  edtDetalhes.Enabled:= false;
                  btnAdicionarDetalhe.Enabled:= false;
                  exit;
                end;
            end;
        end;
end;

procedure TfrmClientes.fdfClick(Sender: TObject);
begin
      if modulo.Pet.State in [dsedit, dsInsert] then
        begin
          if chbDeficiencia.Checked = true then
            begin
              if chbDeficiencia.ValueChecked = 'S' then
                begin
                  edtDetalhes.Enabled:= true;
                  btnAdicionarDetalhe.Enabled:= true;
                  edtDetalhes.Text:= 'D- ';
                end
            end
          else
          if chbDeficiencia.Checked = false then
            begin
              if chbDeficiencia.ValueChecked = 'S' then
                begin
                  edtDetalhes.Enabled:= false;
                  btnAdicionarDetalhe.Enabled:= false;
                  memoPet.Lines.Clear;
                  exit;
                end;
            end;
        end;
end;

procedure TfrmClientes.chbPedigfdfdreeClick(Sender: TObject);
begin
      if modulo.Pet.State in [dsedit, dsInsert] then
        begin
          if chbPedigree.Checked = true then
            begin
              if chbPedigree.ValueChecked = 'S' then
                begin
                  edtDetalhes.Enabled:= true;
                  btnAdicionarDetalhe.Enabled:= true;
                  edtDetalhes.Text:= '';
                end
            end
          else
          if chbPedigree.Checked = false then
            begin
              if chbPedigree.ValueChecked = 'S' then
                begin
                  edtDetalhes.Enabled:= false;
                  btnAdicionarDetalhe.Enabled:= false;
                  memoPet.Lines.Clear;
                  exit;
                end;
            end;
      end;
end;

procedure TfrmClientes.edtPesquisaClick(Sender: TObject);
begin
      btnPesquisa.Enabled:= true;
end;

procedure TfrmClientes.edtPesquisaKeyPress(Sender: TObject; var Key: Char);
begin
      if (key = #27) then
        begin
          rgPesquisa.ItemIndex:= -1;
        end;
end;

procedure TfrmClientes.ButtonON; //ButtonsON
begin
      if pgClientes.ActivePageIndex = 0 then
        begin
          btnAdicionar.Enabled:= (modulo.tbCliente.State in [dsBrowse]);
          btnExcluir.Enabled:= Modulo.tbCliente.State in [dsBrowse];
          btnAtualizar.Enabled:= Modulo.tbCliente.State in [dsBrowse];
          btnSalvar.Enabled:= Modulo.tbCliente.State in [dsInsert, dsEdit];
          btnCancelar.Enabled:= Modulo.tbCliente.State in [dsInsert, dsEdit];

          btnAtualizar.Enabled:= true;
          btnAdicionar.Enabled:= true;
          btnSalvar.Enabled:= false;
          btnCancelar.Enabled:= false;
          btnFechar.Enabled:= true;
        end
      else
      if pgClientes.ActivePageIndex = 1 then
        begin
          btnAdicionarP.Enabled:= (modulo.pet.State in [dsBrowse]);
          btnExcluirP.Enabled:= Modulo.pet.State in [dsBrowse];
          btnAtualizarP.Enabled:= Modulo.pet.State in [dsBrowse];
          btnSalvarP.Enabled:= Modulo.pet.State in [dsInsert, dsEdit];
          btnCancelarP.Enabled:= Modulo.pet.State in [dsInsert, dsEdit];

          btnAtualizarP.Enabled:= true;
          btnAdicionarP.Enabled:= true;
          btnSalvarP.Enabled:= false;
          btnCancelarP.Enabled:= false;
          btnFecharP.Enabled:= true;
        end;
end;

procedure TfrmClientes.paintbox1Paint(Sender: TObject); //Trocar cor fundo Cliente
const
      clStart: TColor = $00FBDE7D;
      clEnd: TColor = $00FBDE7D;
var
      ACanvas, BCanvas, CCanvas: TCanvas;
      ARect: TRect;
      i : Integer;
      rc, gc, bc, h: Integer;
begin

      ACanvas := paintbox1.Canvas;
      BCanvas := paintbox2.Canvas;
      CCanvas := paintbox3.Canvas;
      ARect := PaintBox1.ClientRect;

      h := ARect.Bottom - ARect.Top;

      //Desenha fade
      for i := 0 to (ARect.Bottom - ARect.Top) do
        begin
          rc := GetRValue(clStart);
          gc := GetGValue(clStart);
          bc := GetBValue(clStart);
          rc := rc + (((GetRValue(clEnd) - rc) * (ARect.Top + i)) div h);
          gc := gc + (((GetGValue(clEnd) - gc) * (ARect.Top + i)) div h);
          bc := bc + (((GetBValue(clEnd) - bc) * (ARect.Top + i)) div h);
          ACanvas.Brush.Style := bsSolid;
          ACanvas.Brush.Color := RGB(rc, gc, bc);
          ACanvas.FillRect(Rect(ARect.Left, ARect.Top + i, ARect.Right, ARect.Top + i + 1));

          BCanvas.Brush.Style := bsSolid;
          BCanvas.Brush.Color := RGB(rc, gc, bc);
          BCanvas.FillRect(Rect(ARect.Left, ARect.Top + i, ARect.Right, ARect.Top + i + 1));

          CCanvas.Brush.Style := bsSolid;
          CCanvas.Brush.Color := RGB(rc, gc, bc);
          CCanvas.FillRect(Rect(ARect.Left, ARect.Top + i, ARect.Right, ARect.Top + i + 1));
        end;
end;

procedure TfrmClientes.Panel1Enter(Sender: TObject); //Trocar Fundo Painel
var
      altura,coluna: word;
begin
       altura:= (ClientHeight + 255) div 255;
      for coluna:= 0 to 255 do
        with Canvas do
          begin
            brush.Color:= RGB (coluna,5,5);
            FillRect(Rect(0, coluna*altura, ClientWidth,(coluna+1)*altura));
          end;
end;

procedure TfrmClientes.pgClientesChange(Sender: TObject); //Troca de TTabSheep
var
      TrocaTab: TTABSHEET;
begin
      if (pgClientes.ActivePageIndex = 0) then
        begin
          modulo.tbCliente.Last;
          frmClientes.Height:= 405;
          modulo.tbCliente.Active := true; //ativa BD do Cliente para utilizar botao
        end
      else
      if (pgClientes.ActivePageIndex = 1) then
        begin
          modulo.Pet.Last;
          frmClientes.Height:= 472;
          modulo.Pet.Active := true; //ativa o BD do pet Para utilizar botao
        end
      else
      if (pgClientes.ActivePageIndex = 2) then
        begin
          frmClientes.Height:= 422;
        end;
end;

procedure TfrmClientes.pgClientesChanging(Sender: TObject;
  var AllowChange: Boolean);
begin
      btnCancelarClick(sender);
end;

procedure TfrmClientes.rgRelatorioClick(Sender: TObject);
begin
      if (rgRelatorio.ItemIndex >= 0) then
        begin
          btnAbrirDados.Enabled:= false;
          btnRelatorio.Enabled:= true;
          btnPesquisa.Enabled:= false;
        end;
end;

procedure TfrmClientes.btnAdicionarPClick(Sender: TObject);
var   Ativador, CodInc: integer;
begin
      if pgClientes.ActivePageIndex = 0 then //Page Cadastro Cliente
        begin
          CodInc:= 0;
          Modulo.tbCliente.Insert;
          AtivarALL(Cliente,true);
          modulo.QueryCodigo.Close;
          modulo.QueryCodigo.SQL.Clear;

          modulo.Querycodigo.SQL.Add('Select MAX(Clie_Codigo + 1) from Cliente'); //Pesquisa para ver ultimo dado registrado AI
          modulo.Querycodigo.Open();
          codInc:= modulo.QueryCodigo.Fields[0].Value;
          modulo.tbClienteClie_Codigo.Value:= (codInc); //Incrementa Codigo Cliente

          ButtonsOFF;
          edtAdmissaoC.Text:= formatdatetime('dd/mm/yyyy',now);
          edtNomeC.SetFocus;
        end
      else
      if pgClientes.ActivePageIndex = 1 then //Page Cadastro Pet
        begin
          codInc:= 0;
          modulo.Pet.Insert;
          AtivarALL(Pet,true);
          with modulo.Querypet do
            begin
              Close;
              SQL.Clear;
              SQL.Add('Select MAX(Pet_Codigo + 1) from Pet'); //Pesquisa para ver ultimo dado registrado AI
              Open;
              codInc:= modulo.Querypet.Fields[0].Value;
              modulo.PetPet_Codigo.Value:= (CodInc); //Incrementa Codigo Pet

              ButtonsOFF;
              edtAdmissaoP.Text:= formatdatetime('dd/mm/yyyy',now);
              edtNomePD.SetFocus;
            end;
        end;
end;

end.
