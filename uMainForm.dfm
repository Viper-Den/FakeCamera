object frmContainerNumber: TfrmContainerNumber
  Left = 100
  Top = 0
  Caption = 'Main Form'
  ClientHeight = 648
  ClientWidth = 691
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object imgNumber1: TImage
    Left = 24
    Top = 24
    Width = 281
    Height = 249
    Center = True
    Stretch = True
  end
  object imgContainer: TImage
    Left = 384
    Top = 24
    Width = 281
    Height = 249
    Center = True
    Stretch = True
  end
  object imgContainer2: TImage
    Left = 24
    Top = 336
    Width = 281
    Height = 249
    Center = True
    Stretch = True
  end
  object lblnumber: TLabel
    Left = 24
    Top = 288
    Width = 8
    Height = 30
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 30
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblContainer: TLabel
    Left = 384
    Top = 288
    Width = 8
    Height = 30
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 30
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblContainer2: TLabel
    Left = 24
    Top = 600
    Width = 8
    Height = 30
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 30
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object btnGetNumbers: TButton
    Left = 384
    Top = 336
    Width = 281
    Height = 113
    Caption = 'Get Numbers'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 30
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = btnGetNumbersClick
  end
  object btnNewInspection: TButton
    Left = 384
    Top = 473
    Width = 281
    Height = 112
    Caption = 'New Inspection'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 30
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = btnNewInspectionClick
  end
end
