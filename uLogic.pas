unit uLogic;

interface

uses
  Winapi.Windows, System.SysUtils, Vcl.Dialogs, System.Generics.Collections,
  System.Classes;

const
  TYPE_RES = 'RCDATA';
  FILE_EXTENSION = '.jpg';
  TEMP_DIR_NAME = '/FakeCamera/';
  IMAGE_1 = 'Image_1';
  IMAGE_2 = 'Image_2';
  IMAGE_3 = 'Image_3';


type
  /// <summary> Данные распознаного изображения </summary>
  TNumberData = packed record
    /// <summary> Идентификатор камеры </summary>
    IdCamera: Integer;
    /// <summary> Распознанного номер  </summary>
    Number: string;
    /// <summary> Путь к изображения </summary>
    ImagePath: string;
  end;


  /// <summary> Логика приложения </summary>
  TLogic = class
  protected
    /// <summary> Путь к временной папке </summary>
    FTempDir: string;
    /// <summary> Сохранить изображение в файл </summary>
    /// <param name="aDir">Путь к папке куда будет сохранено изображение</param>
    /// <param name="aFileName"> имя </param>
    function SaveFile(aResName, aFileName: string): string;
    /// <summary> Получить путь к временной папке </summary>
    /// <returns> Путь к временной папке </returns>
    function GetSysTempPath: string;
    /// <summary> Очистить временную папку </summary>
    procedure FreeTempDir;
  public
    destructor Destroy; override;
    /// <summary> Получить номера </summary>
    /// <returns> Список распознанных номеров </returns>
    function GetNumbers: TList<TNumberData>;
    /// <summary> Начать новую инспекцию </summary>
    procedure NewInspection;
  end;

implementation

{ TLogic }

destructor TLogic.Destroy;
begin
  FreeTempDir;
  inherited;
end;

procedure TLogic.FreeTempDir;
begin
  if DirectoryExists(FTempDir) then
    RemoveDir(FTempDir);
end;

function TLogic.GetNumbers: TList<TNumberData>;
var
  nd: TNumberData;
begin
  Result := TList<TNumberData>.Create;
  try
    FTempDir := GetSysTempPath + TEMP_DIR_NAME;


    nd.IdCamera := 1;  //
    nd.Number := '1A_1';
    nd.ImagePath := FTempDir + IMAGE_1 + FILE_EXTENSION;
    SaveFile(IMAGE_1, nd.ImagePath);
    Result.Add(nd);

    nd.IdCamera := 2;
    nd.Number := '2B_2';
    nd.ImagePath := FTempDir + IMAGE_2 + FILE_EXTENSION;
    SaveFile(IMAGE_2, nd.ImagePath);
    Result.Add(nd);

    nd.IdCamera := 3;
    nd.Number := '3C_3';
    nd.ImagePath := FTempDir + IMAGE_3 + FILE_EXTENSION;
    SaveFile(IMAGE_3, nd.ImagePath);
    Result.Add(nd);
  except
    on E: Exception do
      showMessage('Error: ' + E.Message);
  end;
end;

procedure TLogic.NewInspection;
begin
  FreeTempDir;
end;

function TLogic.SaveFile(aResName, aFileName: string): string;
var
  res: TResourceStream;
begin
  Result := '';
  res := TResourceStream.Create(Hinstance, aResName, Pchar(TYPE_RES));
  try
    res.SaveToFile(Result);
  finally
    FreeAndNil(res);
  end;
end;

function TLogic.GetSysTempPath: string;
const
  BufferSize = 256;
var
  Buffer: PChar;
begin
  Buffer := AllocMem(BufferSize);
  try
    if GetTempPath(BufferSize, Buffer) <> 0 then
      Result := Buffer;
  finally
    FreeMem(Buffer, BufferSize);
  end;
end;

end.

