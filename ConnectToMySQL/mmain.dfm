object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 471
  ClientWidth = 671
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 331
    Width = 11
    Height = 13
    Caption = 'ID'
  end
  object Label2: TLabel
    Left = 259
    Top = 331
    Width = 27
    Height = 13
    Caption = 'Name'
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 8
    Width = 617
    Height = 273
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 496
    Top = 295
    Width = 145
    Height = 25
    Caption = 'Get data'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 41
    Top = 323
    Width = 121
    Height = 21
    TabOrder = 2
    Text = '100'
  end
  object Edit2: TEdit
    Left = 296
    Top = 323
    Width = 121
    Height = 21
    TabOrder = 3
    Text = 'DBGrid'
  end
  object Button2: TButton
    Left = 496
    Top = 335
    Width = 145
    Height = 25
    Caption = 'Append'
    TabOrder = 4
    OnClick = Button2Click
  end
  object Edit3: TEdit
    Left = 24
    Top = 382
    Width = 393
    Height = 21
    TabOrder = 5
  end
  object Button3: TButton
    Left = 496
    Top = 380
    Width = 145
    Height = 25
    Caption = 'Get selected field'
    TabOrder = 6
    OnClick = Button3Click
  end
  object Edit4: TEdit
    Left = 24
    Top = 430
    Width = 393
    Height = 21
    TabOrder = 7
  end
  object Button4: TButton
    Left = 496
    Top = 428
    Width = 145
    Height = 25
    Caption = 'Get random field(id=3)'
    TabOrder = 8
    OnClick = Button4Click
  end
  object SQLConnection1: TSQLConnection
    ConnectionName = 'MySQLConnection'
    DriverName = 'MySQL'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=MySQL'
      'HostName=localhost'
      'Database=testconnect'
      'User_Name=root'
      'Password=555'
      'ServerCharSet='
      'BlobSize=-1'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'Compressed=False'
      'Encrypted=False'
      'ConnectTimeout=60')
    Left = 48
    Top = 16
  end
  object SQLQuery1: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 144
    Top = 16
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = SQLQuery1
    Left = 232
    Top = 16
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 328
    Top = 16
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 432
    Top = 16
  end
  object SQLQuery2: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 144
    Top = 72
  end
  object DataSetProvider2: TDataSetProvider
    DataSet = SQLQuery2
    Left = 232
    Top = 72
  end
  object ClientDataSet2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider2'
    Left = 328
    Top = 72
  end
  object DataSource2: TDataSource
    DataSet = ClientDataSet2
    Left = 432
    Top = 72
  end
end
