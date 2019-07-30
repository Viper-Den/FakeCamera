object frmContainerNumber: TfrmContainerNumber
  Left = 100
  Top = 0
  Caption = 'Main Form'
  ClientHeight = 317
  ClientWidth = 362
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
  object btnGetNumbers: TButton
    Left = 24
    Top = 24
    Width = 300
    Height = 121
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
    Left = 24
    Top = 174
    Width = 300
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
