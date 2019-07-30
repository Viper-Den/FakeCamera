unit uMainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uLogic, Vcl.StdCtrls, Vcl.ExtCtrls, Jpeg,
  System.Generics.Collections;

type
  TfrmContainerNumber = class(TForm)
    btnGetNumbers: TButton;
    btnNewInspection: TButton;
    imgNumber1: TImage;
    imgContainer: TImage;
    imgContainer2: TImage;
    lblnumber: TLabel;
    lblContainer: TLabel;
    lblContainer2: TLabel;
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
var
  list: TList<TNumberData>;
  nd: TNumberData;
begin
  list := FLogic.GetNumbers;
  try
    for nd in list do
    begin
      if not FileExists(nd.ImagePath) then
        Exit;
      case nd.IdCamera of
        1:
        begin
          imgNumber1.Picture.LoadFromFile(nd.ImagePath);
          lblnumber.Caption := nd.Number;
        end;
        2:
        begin
          imgContainer.Picture.LoadFromFile(nd.ImagePath);
          lblContainer.Caption := nd.Number;
        end;
        3:
        begin
          imgContainer2.Picture.LoadFromFile(nd.ImagePath);
          lblContainer2.Caption := nd.Number;
        end;
      end;
    end;
  finally
    FreeAndNil(list);
  end;
end;

procedure TfrmContainerNumber.btnNewInspectionClick(Sender: TObject);
begin
  FLogic.NewInspection;

  imgNumber1.Picture := nil;
  lblnumber.Caption := '';
  imgContainer.Picture := nil;
  lblContainer.Caption := '';
  imgContainer2.Picture := nil;
  lblContainer2.Caption := '';
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
