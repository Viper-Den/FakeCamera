program FakeCamera;

uses
  Vcl.Forms,
  uMainForm in 'uMainForm.pas' {frmMainForm},
  uLogic in 'uLogic.pas',
  uUI.FakesCamera in 'uUI.FakesCamera.pas',
  Unit1 in 'UI\Unit1.pas' {frmViewNumber: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMainForm, frmMainForm);
  Application.Run;
end.
