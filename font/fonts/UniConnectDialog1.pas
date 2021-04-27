unit UniConnectDialog1;

interface

uses
  System.SysUtils, System.Classes, DBAccess, UniDacVcl;

type
  TUniConnectDialog1 = class(TUniConnectDialog)
  private
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
  published
    { Published declarations }
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Samples', [TUniConnectDialog1]);
end;

end.
