object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 212
  ClientWidth = 653
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 48
    Top = 48
    Width = 93
    Height = 13
    Caption = 'Enter First Number '
  end
  object Label2: TLabel
    Left = 48
    Top = 88
    Width = 104
    Height = 13
    Caption = 'Enter Second Number'
  end
  object Edit1: TEdit
    Left = 160
    Top = 45
    Width = 121
    Height = 21
    NumbersOnly = True
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 160
    Top = 85
    Width = 121
    Height = 21
    NumbersOnly = True
    TabOrder = 2
  end
  object Button1: TButton
    Left = 120
    Top = 128
    Width = 75
    Height = 25
    Caption = 'Submit'
    TabOrder = 3
    OnClick = Button1Click
  end
  object DBGrid1: TDBGrid
    Left = 328
    Top = 33
    Width = 200
    Height = 120
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=Sample;Data Source=JEANNANCY\SQLEXPRESS'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 136
    Top = 168
  end
  object ADOQuery1: TADOQuery
    Tag = 1
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'select * from samp;')
    Left = 224
    Top = 168
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 56
    Top = 168
  end
end
