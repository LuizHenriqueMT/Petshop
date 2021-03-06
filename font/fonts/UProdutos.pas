unit UProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls;

type
  TfrmProdutos = class(TForm)
    PaintBox3: TPaintBox;
    DBEdit1: TDBEdit;
    lbProdCodigo: TLabel;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    DBComboBox1: TDBComboBox;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBComboBox2: TDBComboBox;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    PaintBox1: TPaintBox;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    procedure PaintBox3Paint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProdutos: TfrmProdutos;

implementation

{$R *.dfm}

procedure TfrmProdutos.PaintBox3Paint(Sender: TObject);
const
      clStart: TColor = $009BE06D;
      clEnd: TColor = $0066C029;
var
      CCanvas: TCanvas;
      ARect: TRect;
      i : Integer;
      rc, gc, bc, h: Integer;
begin
      CCanvas := paintbox3.Canvas;
      ARect := PaintBox3.ClientRect;

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

          CCanvas.Brush.Style := bsSolid;
          CCanvas.Brush.Color := RGB(rc, gc, bc);
          CCanvas.FillRect(Rect(ARect.Left, ARect.Top + i, ARect.Right, ARect.Top + i + 1));
        end;

end;
end.
