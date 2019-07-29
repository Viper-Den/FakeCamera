unit uUI.FakesCamera;

interface

uses
  Vcl.Controls, Vcl.StdCtrls,
  uLogic;


type
  TUIFakesCamera = class
  public
    constructor Create(aPlate, a—ontainer, a—ontainer2 : TImage;
                       albPlate, alb—ontainer, alb—ontainer2 : TLabel); virtual;
    destructor Destroy; override;
  end;


implementation

{ TUIFakesCamera }

constructor TUIFakesCamera.Create(aPlate, a—ontainer, a—ontainer2 : TImage;
                       albPlate, alb—ontainer, alb—ontainer2 : TLabel);
begin
  inherited Create;

end;

destructor TUIFakesCamera.Destroy;
begin

  inherited;
end;

end.
