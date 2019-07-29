unit uMainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uLogik, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmMainForm = class(TForm)
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    FLogik: TLogik;
  end;

var
  frmMainForm: TfrmMainForm;

implementation

{$R *.dfm}

procedure TfrmMainForm.FormCreate(Sender: TObject);
begin
  FLogik := TLogik.Create;
end;

procedure TfrmMainForm.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FLogik);
end;

procedure TfrmMainForm.Panel1Click(Sender: TObject);
begin
createtempfile

end;

end.
