object f_ItemsTemp: Tf_ItemsTemp
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'f_ItemsTemp'
  ClientHeight = 358
  ClientWidth = 510
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Panel1: TPanel
    Left = 0
    Top = 321
    Width = 510
    Height = 37
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitTop = 317
    ExplicitWidth = 504
    DesignSize = (
      510
      37)
    object btnSave: TButton
      Left = 325
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Save'
      Default = True
      ModalResult = 1
      TabOrder = 0
      ExplicitLeft = 319
    end
    object Button2: TButton
      Left = 412
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 1
      ExplicitLeft = 406
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 510
    Height = 321
    Align = alClient
    BevelOuter = bvNone
    Color = clTeal
    Padding.Left = 10
    Padding.Right = 10
    ParentBackground = False
    TabOrder = 1
    StyleElements = []
    ExplicitWidth = 504
    ExplicitHeight = 317
    object Label1: TLabel
      Left = 12
      Top = 16
      Width = 31
      Height = 17
      Caption = 'Code'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 12
      Top = 43
      Width = 68
      Height = 17
      Caption = 'Description'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 233
      Top = 16
      Width = 60
      Height = 17
      Caption = 'Item Type'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 12
      Top = 70
      Width = 84
      Height = 17
      Caption = 'Purchase Unit'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 12
      Top = 97
      Width = 89
      Height = 17
      Caption = 'Inventory Unit'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 12
      Top = 126
      Width = 73
      Height = 17
      Alignment = taRightJustify
      Caption = 'Packing Qty'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 12
      Top = 152
      Width = 97
      Height = 17
      Alignment = taRightJustify
      Caption = 'Min. Stock Level'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object txt_code: TcxDBTextEdit
      Left = 116
      Top = 16
      DataBinding.DataField = 'CODE'
      DataBinding.DataSource = ds_items
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
      OnExit = txt_codeExit
      OnKeyPress = txt_codeKeyPress
      Width = 104
    end
    object txt_desc: TcxDBTextEdit
      Left = 116
      Top = 43
      DataBinding.DataField = 'DESCRIPTION'
      DataBinding.DataSource = ds_items
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
      TabOrder = 2
      OnExit = txt_codeExit
      Width = 374
    end
    object cxGroupBox1: TcxGroupBox
      Left = 13
      Top = 182
      Alignment = alTopCenter
      Caption = 'PURCHASE COST / SELLING PRICE'
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      Style.BorderColor = clWhite
      Style.BorderStyle = ebsThick
      Style.Color = 6570553
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -13
      Style.Font.Name = 'Segoe UI Semibold'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.Kind = lfUltraFlat
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = ''
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
      TabOrder = 7
      Transparent = True
      Height = 129
      Width = 477
      object Label16: TLabel
        Left = 62
        Top = 58
        Width = 27
        Height = 17
        Alignment = taRightJustify
        Caption = 'Cost'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 262
        Top = 83
        Width = 72
        Height = 17
        Alignment = taRightJustify
        Caption = 'Selling Price'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object txt_purcost: TcxDBTextEdit
        Left = 95
        Top = 58
        DataBinding.DataField = 'COST'
        DataBinding.DataSource = ds_items
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
        StyleDisabled.Color = 6570553
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 1
        OnExit = txt_codeExit
        Width = 104
      end
      object txt_sellingprice: TcxDBTextEdit
        Left = 340
        Top = 82
        DataBinding.DataField = 'SELLINGPRICE'
        DataBinding.DataSource = ds_items
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
        StyleDisabled.Color = 6570553
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 5
        OnExit = txt_codeExit
        Width = 104
      end
      object txt_markup: TcxDBTextEdit
        Left = 340
        Top = 58
        DataBinding.DataField = 'MARKUPPERCENT'
        DataBinding.DataSource = ds_items
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
        StyleDisabled.Color = 6570553
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 4
        OnExit = txt_codeExit
        Width = 104
      end
      object chk_sales: TcxDBCheckBox
        Left = 376
        Top = 17
        AutoSize = False
        Caption = 'Sales'
        DataBinding.DataField = 'SALES'
        DataBinding.DataSource = ds_items
        ParentFont = False
        Properties.Alignment = taRightJustify
        Properties.DisplayChecked = 'TRUE'
        Properties.DisplayUnchecked = 'FALSE'
        Properties.DisplayGrayed = 'FALSE'
        Properties.ImmediatePost = True
        Properties.NullStyle = nssUnchecked
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Segoe UI Semibold'
        Style.Font.Style = [fsBold]
        Style.TextColor = clWhite
        Style.TransparentBorder = True
        Style.IsFontAssigned = True
        TabOrder = 2
        Transparent = True
        OnClick = chk_purchaseClick
        Height = 25
        Width = 71
      end
      object chk_purchase: TcxDBCheckBox
        Left = 111
        Top = 17
        AutoSize = False
        Caption = 'Purchase'
        DataBinding.DataField = 'PURCHASE'
        DataBinding.DataSource = ds_items
        ParentFont = False
        Properties.Alignment = taRightJustify
        Properties.DisplayChecked = 'TRUE'
        Properties.DisplayUnchecked = 'FALSE'
        Properties.DisplayGrayed = 'FALSE'
        Properties.ImmediatePost = True
        Properties.NullStyle = nssUnchecked
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Segoe UI Semibold'
        Style.Font.Style = [fsBold]
        Style.TextColor = clWhite
        Style.TransparentBorder = True
        Style.IsFontAssigned = True
        TabOrder = 0
        Transparent = True
        OnClick = chk_purchaseClick
        Height = 25
        Width = 88
      end
      object chk_markuppercent: TcxDBCheckBox
        Left = 248
        Top = 58
        AutoSize = False
        Caption = 'Markup %'
        DataBinding.DataField = 'MARKUP'
        DataBinding.DataSource = ds_items
        ParentFont = False
        Properties.Alignment = taRightJustify
        Properties.DisplayChecked = 'TRUE'
        Properties.DisplayUnchecked = 'FALSE'
        Properties.DisplayGrayed = 'FALSE'
        Properties.ImmediatePost = True
        Properties.NullStyle = nssUnchecked
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Segoe UI Semibold'
        Style.Font.Style = [fsBold]
        Style.TextColor = clWhite
        Style.TransparentBorder = True
        Style.IsFontAssigned = True
        TabOrder = 3
        Transparent = True
        OnClick = chk_purchaseClick
        Height = 25
        Width = 90
      end
      object txt_price: TcxDBTextEdit
        Left = 340
        Top = 82
        DataBinding.DataField = 'PRICE'
        DataBinding.DataSource = ds_items
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
        StyleDisabled.Color = 6570553
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 6
        OnExit = txt_codeExit
        Width = 104
      end
    end
    object cmb_pur: TcxDBLookupComboBox
      Left = 117
      Top = 70
      DataBinding.DataField = 'PURCHASEUNIT'
      DataBinding.DataSource = ds_items
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'DESCRIPTION'
      Properties.ListColumns = <
        item
          FieldName = 'DESCRIPTION'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = ds_purchase
      Style.BorderColor = 1184274
      Style.BorderStyle = ebsThick
      Style.Color = 6570553
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'DevExpressDarkStyle'
      Style.ButtonStyle = btsUltraFlat
      Style.ButtonTransparency = ebtAlways
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'DevExpressDarkStyle'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'DevExpressDarkStyle'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'DevExpressDarkStyle'
      TabOrder = 3
      OnExit = txt_codeExit
      Width = 103
    end
    object cmb_inv: TcxDBLookupComboBox
      Left = 117
      Top = 97
      DataBinding.DataField = 'INVUNIT'
      DataBinding.DataSource = ds_items
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'DESCRIPTION'
      Properties.ListColumns = <
        item
          FieldName = 'DESCRIPTION'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = ds_invunit
      Style.BorderColor = 1184274
      Style.BorderStyle = ebsThick
      Style.Color = 6570553
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'DevExpressDarkStyle'
      Style.ButtonStyle = btsUltraFlat
      Style.ButtonTransparency = ebtAlways
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'DevExpressDarkStyle'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'DevExpressDarkStyle'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'DevExpressDarkStyle'
      TabOrder = 4
      OnExit = txt_codeExit
      Width = 103
    end
    object txt_qty: TcxDBTextEdit
      Left = 117
      Top = 124
      DataBinding.DataField = 'UNITQTY'
      DataBinding.DataSource = ds_items
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
      TabOrder = 5
      OnExit = txt_codeExit
      Width = 104
    end
    object cmb_item: TcxDBComboBox
      Left = 309
      Top = 16
      DataBinding.DataField = 'ITEMTYPE'
      DataBinding.DataSource = ds_items
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Properties.ImmediatePost = True
      Properties.Items.Strings = (
        'FABRIC'
        'MATERIAL'
        'ITEM'
        'OTHERS')
      Style.BorderColor = 1184274
      Style.BorderStyle = ebsThick
      Style.Color = 6570553
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'DevExpressDarkStyle'
      Style.IsFontAssigned = True
      StyleDisabled.Color = 6570553
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'DevExpressDarkStyle'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'DevExpressDarkStyle'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'DevExpressDarkStyle'
      TabOrder = 1
      OnExit = txt_codeExit
      Width = 181
    end
    object txt_minqty: TcxDBTextEdit
      Left = 117
      Top = 150
      DataBinding.DataField = 'MINQTY'
      DataBinding.DataSource = ds_items
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
      TabOrder = 6
      OnExit = txt_codeExit
      Width = 104
    end
  end
  object ds_items: TDataSource
    DataSet = dm_PM.qry_Items
    Left = 376
    Top = 80
  end
  object ds_purchase: TDataSource
    DataSet = dm_PM.brw_Unit
    Left = 245
    Top = 296
  end
  object ds_invunit: TDataSource
    DataSet = dm_PM.brw_Unit
    Left = 285
    Top = 296
  end
end
