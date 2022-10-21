object f_ClientsTemp: Tf_ClientsTemp
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'f_ClientsTemp'
  ClientHeight = 294
  ClientWidth = 380
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 380
    Height = 65
    Align = alTop
    BevelOuter = bvNone
    Color = clTeal
    Padding.Left = 10
    Padding.Top = 10
    Padding.Right = 10
    Padding.Bottom = 10
    ParentBackground = False
    TabOrder = 0
    StyleElements = []
    ExplicitWidth = 370
    object Label1: TLabel
      Left = 10
      Top = 10
      Width = 243
      Height = 45
      Align = alLeft
      Caption = 'CLIENT / CUSTOMER INFO'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Segoe UI Black'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
      ExplicitHeight = 25
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 257
    Width = 380
    Height = 37
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitTop = 247
    ExplicitWidth = 370
    DesignSize = (
      380
      37)
    object btnSave: TButton
      Left = 211
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = '&Save'
      Default = True
      ModalResult = 1
      TabOrder = 0
      ExplicitLeft = 201
    end
    object btnCancel: TButton
      Left = 290
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 1
      ExplicitLeft = 280
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 65
    Width = 380
    Height = 192
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    Padding.Left = 10
    Padding.Top = 10
    Padding.Right = 10
    Padding.Bottom = 10
    ParentBackground = False
    TabOrder = 2
    StyleElements = [seFont, seBorder]
    ExplicitWidth = 370
    ExplicitHeight = 182
    object Label2: TLabel
      Left = 13
      Top = 17
      Width = 32
      Height = 15
      Caption = 'Name'
      Font.Charset = ANSI_CHARSET
      Font.Color = 1184274
      Font.Height = -12
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      StyleElements = []
    end
    object Label3: TLabel
      Left = 13
      Top = 43
      Width = 60
      Height = 15
      Caption = 'Contact No'
      Font.Charset = ANSI_CHARSET
      Font.Color = 1184274
      Font.Height = -12
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      StyleElements = []
    end
    object Label4: TLabel
      Left = 13
      Top = 71
      Width = 29
      Height = 15
      Caption = 'Email'
      Font.Charset = ANSI_CHARSET
      Font.Color = 1184274
      Font.Height = -12
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      StyleElements = []
    end
    object Label5: TLabel
      Left = 13
      Top = 97
      Width = 42
      Height = 15
      Caption = 'Address'
      Font.Charset = ANSI_CHARSET
      Font.Color = 1184274
      Font.Height = -12
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      StyleElements = []
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 75
      Top = 41
      DataBinding.DataField = 'CONTACTNO'
      DataBinding.DataSource = ds_client
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Style.BorderColor = 1184274
      Style.BorderStyle = ebsThick
      Style.Color = 6570553
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = False
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 1
      OnExit = cxDBTextEdit1Exit
      Width = 281
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 75
      Top = 68
      DataBinding.DataField = 'EMAIL'
      DataBinding.DataSource = ds_client
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Style.BorderColor = 1184274
      Style.BorderStyle = ebsThick
      Style.Color = 6570553
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = False
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 2
      OnExit = cxDBTextEdit1Exit
      Width = 281
    end
    object cxDBMemo1: TcxDBMemo
      Left = 76
      Top = 95
      DataBinding.DataField = 'ADDRESS'
      DataBinding.DataSource = ds_client
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Style.BorderColor = 1184274
      Style.BorderStyle = ebsThick
      Style.Color = 6570553
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = False
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 3
      OnExit = cxDBTextEdit1Exit
      Height = 68
      Width = 280
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 74
      Top = 14
      DataBinding.DataField = 'NAME'
      DataBinding.DataSource = ds_client
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Style.BorderColor = 1184274
      Style.BorderStyle = ebsThick
      Style.Color = 6570553
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = False
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      OnExit = cxDBTextEdit1Exit
      Width = 281
    end
  end
  object ds_client: TDataSource
    DataSet = dm_PM.qry_Client
    Left = 296
    Top = 16
  end
end
