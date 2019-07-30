unit uMainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uLogic, Vcl.StdCtrls, Vcl.ExtCtrls, Jpeg;

type
  TfrmContainerNumber = class(TForm)
    btnGetNumbers: TButton;
    btnNewInspection: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnGetNumbersClick(Sender: TObject);
    procedure btnNewInspectionClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    FLogic: TLogic;
  end;

var
  frmContainerNumber: TfrmContainerNumber;

implementation

{$R *.dfm}

procedure TfrmContainerNumber.btnGetNumbersClick(Sender: TObject);
begin
  FLogic.GetNumbers;
end;

procedure TfrmContainerNumber.btnNewInspectionClick(Sender: TObject);
begin
  FLogic.NewInspection;
end;

procedure TfrmContainerNumber.FormCreate(Sender: TObject);
begin
  FLogic := TLogic.Create;
end;

procedure TfrmContainerNumber.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FLogic);
end;

end.
