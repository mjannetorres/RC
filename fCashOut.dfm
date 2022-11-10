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
    TabOrder = 4
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
    TabOrder = 5
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
    TabOrder = 1
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
    TabOrder = 2
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
    object txt_ca: TcxDBButtonEdit
      Left = 155
      Top = 79
      DataBinding.DataField = 'CASHADVANCES'
      DataBinding.DataSource = ds_cash
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.Buttons = <
        item
          Action = ViewCA
          Default = True
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000040000000A000000100000001300000015000000140000
            00110000000C0000000500000001000000000000000000000000000000000000
            00030000000C070404263F271F836E4235CA7A4839DE915644FF774436DE693C
            30CE3A2019870704032B00000010000000040000000000000000000000030000
            0011442C2486976253F5BE998EFFD9C5BEFFE0CFCAFFEFE6E3FFDDCAC4FFD3BC
            B5FFB48B7FFF895140F540231B92000000180000000500000001010204145536
            2D9CC5A398FFF2E9E7FFF5EFEDFFBCAEA8FF71574CFF593A2DFF755B4EFFBEAE
            A7FFEBE2DEFFE5D8D3FFB79085FF4E2A21A90101021A000000032F23246BB58D
            80FFF9F5F4FFF7F3F2FFC1B3ADFF826555FFB19A85FFC2AC97FFB09783FF7F62
            51FFC0B0A9FFECE3DFFFECE2DFFFA37467FF28191A750000000A5E4F60E1BCB1
            ACFFF6F3F3FFF8F4F3FF7A5E50FFBEA995FF857162FF3F2A22FF746053FFB8A3
            8FFF806658FFEEE5E2FFECE2DFFFB1A29CFF503F50E40000000D182C4D885C63
            72FFB2B0B0FFF1EEEDFF725242FFDDD1B9FF806D5EFF493229FF493228FFCFC0
            A9FF745545FFEBE3E1FFABA6A3FF505566FF142A55AA0000000A05080F21395F
            9DFA697F9AFF626160FF55443CFFB2A894FFE4E0C1FF584135FF847466FFA498
            87FF58483FFF5F5C5CFF4E6586FF2F5191FF050B173C00000004000000031221
            3B685A7FB7FFA6C5E3FF7990ABFF444D59FF3E4248FF2B2A25FF3C4148FF3E48
            56FF627D9EFF789DC9FF3C609FFD0B172E630000000600000000000000000000
            00030F1B3159315593ED6F91C1FF9BB9DCFFB0CDE9FFCBE8FCFFA7C7E6FF87AA
            D3FF5A7EB3FF284B8BF10A152958000000060000000100000000000000000000
            0000000000020204071112223E6F1C3765B0213F76D0274C91FC1E3C74D01933
            62B40F1F3D750204081700000003000000000000000000000000000000000000
            0000000000000000000000000002000000030000000400000005000000050000
            0004000000020000000100000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          Kind = bkGlyph
        end>
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = True
      Style.BorderColor = 1184274
      Style.BorderStyle = ebsThick
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = False
      Style.TextColor = clRed
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 3
      OnExit = txt_amntExit
      Width = 270
    end
    object txt_gross: TcxDBButtonEdit
      Left = 155
      Top = 44
      DataBinding.DataField = 'GROSS'
      DataBinding.DataSource = ds_cash
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.Buttons = <
        item
          Action = ViewParticulars
          Default = True
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000040000000A000000100000001300000015000000140000
            00110000000C0000000500000001000000000000000000000000000000000000
            00030000000C070404263F271F836E4235CA7A4839DE915644FF774436DE693C
            30CE3A2019870704032B00000010000000040000000000000000000000030000
            0011442C2486976253F5BE998EFFD9C5BEFFE0CFCAFFEFE6E3FFDDCAC4FFD3BC
            B5FFB48B7FFF895140F540231B92000000180000000500000001010204145536
            2D9CC5A398FFF2E9E7FFF5EFEDFFBCAEA8FF71574CFF593A2DFF755B4EFFBEAE
            A7FFEBE2DEFFE5D8D3FFB79085FF4E2A21A90101021A000000032F23246BB58D
            80FFF9F5F4FFF7F3F2FFC1B3ADFF826555FFB19A85FFC2AC97FFB09783FF7F62
            51FFC0B0A9FFECE3DFFFECE2DFFFA37467FF28191A750000000A5E4F60E1BCB1
            ACFFF6F3F3FFF8F4F3FF7A5E50FFBEA995FF857162FF3F2A22FF746053FFB8A3
            8FFF806658FFEEE5E2FFECE2DFFFB1A29CFF503F50E40000000D182C4D885C63
            72FFB2B0B0FFF1EEEDFF725242FFDDD1B9FF806D5EFF493229FF493228FFCFC0
            A9FF745545FFEBE3E1FFABA6A3FF505566FF142A55AA0000000A05080F21395F
            9DFA697F9AFF626160FF55443CFFB2A894FFE4E0C1FF584135FF847466FFA498
            87FF58483FFF5F5C5CFF4E6586FF2F5191FF050B173C00000004000000031221
            3B685A7FB7FFA6C5E3FF7990ABFF444D59FF3E4248FF2B2A25FF3C4148FF3E48
            56FF627D9EFF789DC9FF3C609FFD0B172E630000000600000000000000000000
            00030F1B3159315593ED6F91C1FF9BB9DCFFB0CDE9FFCBE8FCFFA7C7E6FF87AA
            D3FF5A7EB3FF284B8BF10A152958000000060000000100000000000000000000
            0000000000020204071112223E6F1C3765B0213F76D0274C91FC1E3C74D01933
            62B40F1F3D750204081700000003000000000000000000000000000000000000
            0000000000000000000000000002000000030000000400000005000000050000
            0004000000020000000100000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          Kind = bkGlyph
        end>
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = True
      Style.BorderColor = 1184274
      Style.BorderStyle = ebsThick
      Style.Color = 6570553
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = False
      Style.TextColor = clWhite
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 2
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
    TabOrder = 3
    StyleElements = []
    object Label4: TLabel
      Left = 15
      Top = 9
      Width = 56
      Height = 17
      Caption = 'Net Pay :'
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
      TabOrder = 1
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
      TabOrder = 0
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
  object ActionList1: TActionList
    Left = 368
    Top = 16
    object ViewCA: TAction
      Caption = 'View Cash Advances'
      OnExecute = ViewCAExecute
    end
    object ViewParticulars: TAction
      Caption = 'View Particulars'
      OnExecute = ViewParticularsExecute
    end
  end
end
