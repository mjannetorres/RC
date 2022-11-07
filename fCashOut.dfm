object f_CashOut: Tf_CashOut
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Cash Out Detail'
  ClientHeight = 420
  ClientWidth = 442
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
    Top = 383
    Width = 442
    Height = 37
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 3
    ExplicitTop = 302
    DesignSize = (
      442
      37)
    object btnSave: TButton
      Left = 257
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
      Left = 344
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
    Width = 442
    Height = 49
    Align = alTop
    BevelOuter = bvNone
    Color = clTeal
    Padding.Left = 10
    ParentBackground = False
    TabOrder = 4
    object Label3: TLabel
      Left = 10
      Top = 0
      Width = 79
      Height = 49
      Align = alLeft
      Caption = 'Enter Details'
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
    Width = 442
    Height = 47
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    Padding.Left = 10
    Padding.Top = 10
    Padding.Right = 10
    Padding.Bottom = 10
    ParentBackground = False
    TabOrder = 0
    StyleElements = []
    object Label5: TLabel
      Left = 15
      Top = 16
      Width = 118
      Height = 17
      Caption = 'Expense Category :'
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
    object cmb_exptype: TcxDBLookupComboBox
      Left = 155
      Top = 12
      DataBinding.DataField = 'CATEGORYID'
      DataBinding.DataSource = ds_cash
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = ds_expense
      Properties.OnCloseUp = cmb_exptypePropertiesCloseUp
      Style.BorderColor = 1184274
      Style.BorderStyle = ebsThick
      Style.Color = 6570553
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.LookAndFeel.Kind = lfUltraFlat
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = ''
      Style.ButtonStyle = btsFlat
      Style.ButtonTransparency = ebtNone
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.Kind = lfUltraFlat
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = ''
      StyleFocused.LookAndFeel.Kind = lfUltraFlat
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = ''
      StyleHot.LookAndFeel.Kind = lfUltraFlat
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = ''
      TabOrder = 0
      OnExit = txt_amntExit
      Width = 270
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 96
    Width = 442
    Height = 35
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 2
    StyleElements = []
    object Label1: TLabel
      Left = 15
      Top = 6
      Width = 44
      Height = 17
      Caption = 'Payee :'
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
    object cmb_emp: TcxDBLookupComboBox
      Left = 155
      Top = 2
      DataBinding.DataField = 'EMPID'
      DataBinding.DataSource = ds_cash
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'EMPNAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = ds_emp
      Properties.OnCloseUp = cmb_empPropertiesCloseUp
      Style.BorderColor = 1184274
      Style.BorderStyle = ebsThick
      Style.Color = 6570553
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.LookAndFeel.Kind = lfUltraFlat
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = ''
      Style.ButtonStyle = btsFlat
      Style.ButtonTransparency = ebtNone
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.Kind = lfUltraFlat
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = ''
      StyleFocused.LookAndFeel.Kind = lfUltraFlat
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = ''
      StyleHot.LookAndFeel.Kind = lfUltraFlat
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = ''
      TabOrder = 1
      OnExit = txt_amntExit
      Width = 270
    end
    object txt_payee: TcxDBMemo
      Left = 155
      Top = 2
      DataBinding.DataField = 'PAYEE'
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
      TabOrder = 0
      OnExit = txt_amntExit
      Height = 29
      Width = 270
    end
  end
  object pan_payroll: TPanel
    Left = 0
    Top = 131
    Width = 442
    Height = 110
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    StyleElements = []
    object Label6: TLabel
      Left = 15
      Top = 11
      Width = 95
      Height = 17
      Caption = 'Payroll Period :'
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
    object Label7: TLabel
      Left = 287
      Top = 10
      Width = 5
      Height = 17
      Caption = '-'
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
    object Label8: TLabel
      Left = 15
      Top = 49
      Width = 42
      Height = 17
      Caption = 'Gross :'
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
    object Label9: TLabel
      Left = 15
      Top = 84
      Width = 109
      Height = 17
      Caption = '(Cash Advances) :'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Layout = tlCenter
      StyleElements = []
    end
    object date_payfrom: TcxDBDateEdit
      Left = 155
      Top = 6
      DataBinding.DataField = 'PAYDATEFROM'
      DataBinding.DataSource = ds_cash
      ParentFont = False
      Properties.ImmediatePost = True
      Properties.ShowTime = False
      Properties.ShowToday = False
      Properties.OnCloseUp = date_payfromPropertiesCloseUp
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
      Width = 126
    end
    object date_payto: TcxDBDateEdit
      Left = 299
      Top = 6
      DataBinding.DataField = 'PAYDATETO'
      DataBinding.DataSource = ds_cash
      ParentFont = False
      Properties.ImmediatePost = True
      Properties.ShowTime = False
      Properties.ShowToday = False
      Properties.OnCloseUp = date_paytoPropertiesCloseUp
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
      Width = 126
    end
    object txt_gross: TcxDBTextEdit
      Left = 155
      Top = 41
      DataBinding.DataField = 'GROSS'
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
      TabOrder = 2
      OnExit = txt_amntExit
      Width = 270
    end
    object txt_ca: TcxDBTextEdit
      Left = 155
      Top = 76
      DataBinding.DataField = 'CASHADVANCES'
      DataBinding.DataSource = ds_cash
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = True
      Style.BorderColor = 1184274
      Style.BorderStyle = ebsThick
      Style.Color = clWhite
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clRed
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = False
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 3
      OnExit = txt_amntExit
      Width = 270
    end
  end
  object pan_amnt: TPanel
    Left = 0
    Top = 241
    Width = 442
    Height = 142
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 5
    StyleElements = []
    ExplicitLeft = 80
    ExplicitTop = 312
    ExplicitWidth = 185
    ExplicitHeight = 41
    object Label4: TLabel
      Left = 15
      Top = 9
      Width = 97
      Height = 17
      Caption = 'Amount Given :'
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
      Left = 15
      Top = 48
      Width = 131
      Height = 17
      Caption = 'Particulars/Remarks :'
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
    object txt_remarks: TcxDBMemo
      Left = 155
      Top = 39
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
      TabOrder = 0
      OnExit = txt_amntExit
      Height = 61
      Width = 270
    end
    object txt_amnt: TcxDBTextEdit
      Left = 155
      Top = 4
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
      TabOrder = 1
      OnExit = txt_amntExit
      Width = 270
    end
  end
  object ds_cash: TDataSource
    DataSet = dm_PM.qry_CashOutDetail
    Left = 328
    Top = 17
  end
  object ds_expense: TDataSource
    DataSet = dm_PM.brw_ExpenseType
    Left = 280
    Top = 16
  end
  object ds_emp: TDataSource
    DataSet = dm_PM.brw_Emp
    Left = 232
    Top = 16
  end
  object ds_payroll: TDataSource
    DataSet = dm_PM.brw_Payroll
    Left = 192
    Top = 16
  end
end
