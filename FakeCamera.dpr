program FakeCamera;

{$R *.dres}

uses
  Vcl.Forms,
  uMainForm in 'uMainForm.pas' {frmContainerNumber},
  uLogic in 'uLogic.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmContainerNumber, frmContainerNumber);
  Application.Run;
end.
