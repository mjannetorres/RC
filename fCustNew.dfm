object f_CustNew: Tf_CustNew
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'New Customer'
  ClientHeight = 219
  ClientWidth = 376
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 182
    Width = 376
    Height = 37
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitTop = 120
    DesignSize = (
      376
      37)
    object Button1: TButton
      Left = 199
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'OK'
      Default = True
      ModalResult = 1
      TabOrder = 0
    end
    object Button2: TButton
      Left = 286
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
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 376
    Height = 49
    Align = alTop
    BevelOuter = bvNone
    Color = clTeal
    Padding.Left = 10
    ParentBackground = False
    TabOrder = 1
    object Label3: TLabel
      Left = 10
      Top = 0
      Width = 181
      Height = 49
      Align = alLeft
      Caption = 'Enter Customer Information :'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Layout = tlCenter
      StyleElements = []
      ExplicitHeight = 17
    end
  end
  object pan_name: TPanel
    Left = 0
    Top = 49
    Width = 376
    Height = 133
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    Padding.Left = 10
    Padding.Top = 10
    Padding.Right = 10
    Padding.Bottom = 10
    ParentBackground = False
    TabOrder = 2
    StyleElements = []
    ExplicitTop = 55
    DesignSize = (
      376
      133)
    object Label1: TLabel
      Left = 10
      Top = 10
      Width = 66
      Height = 34
      Caption = 'Name / Company :'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = 6570553
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Layout = tlCenter
      WordWrap = True
      StyleElements = []
    end
    object Label2: TLabel
      Left = 10
      Top = 65
      Width = 60
      Height = 17
      Caption = 'Remarks :'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = 6570553
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Layout = tlCenter
      StyleElements = []
    end
    object cxDBMemo2: TcxDBMemo
      Left = 91
      Top = 6
      Anchors = [akTop, akRight]
      DataBinding.DataField = 'CUSTOMER'
      DataBinding.DataSource = ds_cash
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Style.BorderColor = 1184274
      Style.BorderStyle = ebsThick
      Style.Color = 6570553
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -13
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = False
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      Height = 51
      Width = 270
    end
    object cxDBMemo1: TcxDBMemo
      Left = 91
      Top = 63
      Anchors = [akTop, akRight]
      DataBinding.DataField = 'NOTES'
      DataBinding.DataSource = ds_cash
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Style.BorderColor = 1184274
      Style.BorderStyle = ebsThick
      Style.Color = 6570553
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -13
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = False
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 1
      Height = 61
      Width = 270
    end
  end
  object ds_cash: TDataSource
    DataSet = dm_PM.qry_CashReg
    Left = 168
    Top = 73
  end
end
