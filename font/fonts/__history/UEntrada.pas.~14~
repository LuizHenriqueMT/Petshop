unit UEntrada;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls;

type
  TfrmEntrada = class(TForm)
    PaintBox1: TPaintBox;
    procedure FormActivate(Sender: TObject);
    procedure PaintBox1Paint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEntrada: TfrmEntrada;

implementation

{$R *.dfm}

uses UDataBase, UPrincipal;

procedure TfrmEntrada.FormActivate(Sender: TObject);
begin
      {Modulo.Conexao.Connected:= true;
      modulo.tbCliente.Active:= true;
      modulo.Usuario.Active:= true;
      modulo.Pet.Active:= true;}
end;




procedure TfrmEntrada.PaintBox1Paint(Sender: TObject);
const
      clStart: TColor = $00F7D56F;
      clEnd: TColor = $00FFBB09;
var
      ACanvas, BCanvas: TCanvas;
      ARect: TRect;
      i : Integer;
      rc, gc, bc, h: Integer;
begin
      ACanvas := paintbox1.Canvas;
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
        end;
end;

end.
