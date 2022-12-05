object f_EmpAccountsTemp: Tf_EmpAccountsTemp
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Account Details'
  ClientHeight = 309
  ClientWidth = 476
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 476
    Height = 272
    Align = alClient
    BevelOuter = bvNone
    Color = clTeal
    ParentBackground = False
    TabOrder = 0
    object Label3: TLabel
      Left = 12
      Top = 27
      Width = 124
      Height = 21
      Caption = 'Current Account '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 12
      Top = 65
      Width = 73
      Height = 21
      Caption = 'Effectivity'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 12
      Top = 105
      Width = 62
      Height = 21
      Caption = 'Remarks'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object txt_balance: TcxDBCurrencyEdit
      Left = 152
      Top = 29
      DataBinding.DataField = 'BALANCE'
      DataBinding.DataSource = ds_account
      ParentFont = False
      Properties.DisplayFormat = #8369',0.00;('#8369',0.00)'
      Properties.EditFormat = '###,###,##0.00'
      Properties.Nullstring = '0.00'
      Style.BorderColor = 1184274
      Style.BorderStyle = ebsThick
      Style.Color = 6570553
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = False
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      OnExit = txt_balanceExit
      Width = 161
    end
    object txt_date: TcxDBDateEdit
      Left = 152
      Top = 64
      DataBinding.DataField = 'EFFECTIVITYDATE'
      DataBinding.DataSource = ds_account
      ParentFont = False
      Style.BorderColor = 1184274
      Style.BorderStyle = ebsThick
      Style.Color = 6570553
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = False
      Style.ButtonStyle = btsUltraFlat
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 1
      OnExit = txt_balanceExit
      Width = 161
    end
    object txt_remarks: TcxDBMemo
      Left = 152
      Top = 102
      DataBinding.DataField = 'REMARKS'
      DataBinding.DataSource = ds_account
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Style.BorderColor = 1184274
      Style.BorderStyle = ebsThick
      Style.Color = 6570553
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -16
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = False
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 2
      OnExit = txt_balanceExit
      Height = 142
      Width = 313
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 272
    Width = 476
    Height = 37
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    StyleElements = []
    DesignSize = (
      476
      37)
    object btnSave: TButton
      Left = 300
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Save'
      Default = True
      ModalResult = 1
      TabOrder = 0
    end
    object Button2: TButton
      Left = 381
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 1
    end
  end
  object ds_account: TDataSource
    DataSet = dm_PM.qry_EmpAccnts
    Left = 344
    Top = 32
  end
end
