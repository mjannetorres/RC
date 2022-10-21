object f_ExpTypeTemp: Tf_ExpTypeTemp
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Expense Type'
  ClientHeight = 144
  ClientWidth = 357
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
    Top = 107
    Width = 357
    Height = 37
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitLeft = -10
    ExplicitTop = 97
    ExplicitWidth = 367
    DesignSize = (
      357
      37)
    object btnSave: TButton
      Left = 182
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'OK'
      Default = True
      ModalResult = 1
      TabOrder = 0
      ExplicitLeft = 192
    end
    object Button2: TButton
      Left = 269
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 1
      ExplicitLeft = 279
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 357
    Height = 107
    Align = alClient
    BevelOuter = bvNone
    Color = clTeal
    Padding.Left = 10
    Padding.Right = 10
    ParentBackground = False
    TabOrder = 1
    StyleElements = []
    ExplicitLeft = -10
    ExplicitWidth = 367
    ExplicitHeight = 97
    object Label1: TLabel
      Left = 10
      Top = 21
      Width = 36
      Height = 17
      Caption = 'Name'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object txt_desc: TcxDBTextEdit
      Left = 85
      Top = 21
      DataBinding.DataField = 'NAME'
      DataBinding.DataSource = ds_expense
      ParentFont = False
      ParentShowHint = False
      Properties.CharCase = ecUpperCase
      ShowHint = False
      Style.BorderColor = 1184274
      Style.BorderStyle = ebsThick
      Style.Color = 6570553
      Style.Font.Charset = ANSI_CHARSET
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
      OnExit = txt_descExit
      Width = 247
    end
  end
  object ds_expense: TDataSource
    DataSet = dm_PM.qry_ExpenseType
    Left = 44
    Top = 64
  end
end
