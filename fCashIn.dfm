object f_CashIn: Tf_CashIn
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Cash In Detail'
  ClientHeight = 255
  ClientWidth = 430
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
  TextHeight = 14
  object Panel1: TPanel
    Left = 0
    Top = 218
    Width = 430
    Height = 37
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object btnSave: TButton
      Left = 258
      Top = 6
      Width = 75
      Height = 25
      Caption = 'OK'
      Default = True
      ModalResult = 1
      TabOrder = 0
    end
    object Button2: TButton
      Left = 345
      Top = 6
      Width = 75
      Height = 25
      Cancel = True
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 430
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
      Width = 134
      Height = 49
      Align = alLeft
      Caption = 'Enter Receiver Details'
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
    object cxDBCheckBox1: TcxDBCheckBox
      Left = 316
      Top = 14
      Caption = 'Replenishment'
      DataBinding.DataField = 'REPLENISHMENT'
      DataBinding.DataSource = ds_cash
      Properties.DisplayChecked = 'True'
      Properties.DisplayUnchecked = 'False'
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      TabOrder = 0
      Transparent = True
    end
  end
  object pan_name: TPanel
    Left = 0
    Top = 49
    Width = 430
    Height = 169
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
    object Label1: TLabel
      Left = 10
      Top = 52
      Width = 98
      Height = 17
      Caption = 'Received From :'
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
    object Label2: TLabel
      Left = 10
      Top = 108
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
    object Label4: TLabel
      Left = 10
      Top = 12
      Width = 116
      Height = 17
      Caption = 'Amount Received :'
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
    object txt_received: TcxDBMemo
      Left = 150
      Top = 49
      DataBinding.DataField = 'RECEIVEDFROM'
      DataBinding.DataSource = ds_cash
      ParentFont = False
      Properties.CharCase = ecUpperCase
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
      TabOrder = 1
      OnExit = txt_amntExit
      Height = 51
      Width = 270
    end
    object txt_remarks: TcxDBMemo
      Left = 150
      Top = 105
      DataBinding.DataField = 'REMARKS'
      DataBinding.DataSource = ds_cash
      ParentFont = False
      Properties.CharCase = ecUpperCase
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
      TabOrder = 2
      OnExit = txt_amntExit
      Height = 61
      Width = 270
    end
    object txt_amnt: TcxDBTextEdit
      Left = 150
      Top = 14
      DataBinding.DataField = 'AMOUNT'
      DataBinding.DataSource = ds_cash
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.CharCase = ecUpperCase
      Style.BorderColor = 1184274
      Style.BorderStyle = ebsThick
      Style.Color = 6570553
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI Semibold'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = False
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      OnExit = txt_amntExit
      Width = 270
    end
  end
  object ds_cash: TDataSource
    DataSet = dm_PM.qry_CashInDetail
    Left = 128
    Top = 145
  end
end
