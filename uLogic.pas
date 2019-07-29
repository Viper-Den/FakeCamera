unit uLogic;

interface

uses
  System.Generics.Collections;

type

  TNumberData = packed record
    Number: string;
    ImagePath: string;
  end;



  TLogic = class
  public
    function GetNumbers: TList<TNumberData>;
    procedure NewInspection;
  end;

implementation

{ TLogic }

function TLogic.GetNumbers: TList<TNumberData>;
begin
  crea
end;

procedure TLogic.NewInspection;
begin

end;

end.

