object f_RRTemp: Tf_RRTemp
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Receiving Report'
  ClientHeight = 481
  ClientWidth = 861
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
  object Panel2: TPanel
    Left = 0
    Top = 440
    Width = 861
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      861
      41)
    object btnSave: TButton
      Left = 690
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = '&Save'
      Default = True
      ModalResult = 1
      TabOrder = 0
    end
    object btnCancel: TButton
      Left = 771
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = '&Cancel'
      ModalResult = 2
      TabOrder = 1
    end
    object btnPrint: TButton
      Left = 15
      Top = 8
      Width = 75
      Height = 25
      Action = Print
      Anchors = [akTop, akRight]
      Default = True
      TabOrder = 2
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 861
    Height = 185
    Align = alTop
    Anchors = [akTop, akRight]
    BevelOuter = bvNone
    Color = clTeal
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    Padding.Left = 10
    Padding.Top = 5
    Padding.Right = 10
    Padding.Bottom = 5
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
    StyleElements = [seFont, seBorder]
    DesignSize = (
      861
      185)
    object Label1: TLabel
      Left = 702
      Top = 9
      Width = 45
      Height = 17
      Anchors = [akTop, akRight]
      Caption = 'RR No.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI Black'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 719
      Top = 34
      Width = 28
      Height = 17
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = 'Date'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitLeft = 715
    end
    object Label6: TLabel
      Left = 15
      Top = 59
      Width = 36
      Height = 17
      Caption = 'Notes'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 15
      Top = 34
      Width = 43
      Height = 17
      Anchors = [akTop, akRight]
      Caption = 'Vendor'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 15
      Top = 10
      Width = 41
      Height = 17
      Anchors = [akTop, akRight]
      Caption = 'Source'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 175
      Top = 10
      Width = 48
      Height = 17
      Anchors = [akTop, akRight]
      Caption = 'Ref No. '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 359
      Top = 10
      Width = 43
      Height = 17
      Caption = 'Invoice'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 359
      Top = 37
      Width = 88
      Height = 17
      Caption = 'Gross Amount'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 359
      Top = 64
      Width = 53
      Height = 17
      Caption = 'Discount'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 359
      Top = 91
      Width = 76
      Height = 17
      Caption = 'Net Amount'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object date_date: TcxDBDateEdit
      Left = 752
      Top = 32
      Anchors = [akTop, akRight]
      DataBinding.DataField = 'IRDATE'
      DataBinding.DataSource = ds_RR
      ParentFont = False
      Properties.DisplayFormat = 'mm/dd/yyyy'
      Properties.EditFormat = 'mm/dd/yyyy'
      Properties.ImmediatePost = True
      Properties.SaveTime = False
      Properties.ShowTime = False
      Style.BorderColor = 1184274
      Style.BorderStyle = ebsThick
      Style.Color = 6570553
      Style.Edges = [bLeft, bTop, bRight, bBottom]
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.LookAndFeel.Kind = lfUltraFlat
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = ''
      Style.Shadow = False
      Style.TransparentBorder = False
      Style.ButtonStyle = btsOffice11
      Style.ButtonTransparency = ebtAlways
      Style.PopupBorderStyle = epbsDefault
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
      TabOrder = 8
      OnExit = UIExecute
      Width = 94
    end
    object date_posted: TcxDBDateEdit
      Left = 752
      Top = 58
      Anchors = [akTop, akRight]
      DataBinding.DataField = 'POSTEDDATETIME'
      DataBinding.DataSource = ds_RR
      ParentFont = False
      Properties.DisplayFormat = 'mm/dd/yyyy'
      Properties.EditFormat = 'mm/dd/yyyy'
      Properties.ReadOnly = True
      Properties.SaveTime = False
      Properties.ShowTime = False
      Style.BorderColor = 1184274
      Style.BorderStyle = ebsThick
      Style.Color = 6570553
      Style.Edges = [bLeft, bTop, bRight, bBottom]
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.LookAndFeel.Kind = lfUltraFlat
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = ''
      Style.TransparentBorder = False
      Style.ButtonStyle = btsOffice11
      Style.ButtonTransparency = ebtAlways
      Style.PopupBorderStyle = epbsDefault
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
      TabOrder = 10
      OnExit = UIExecute
      Width = 94
    end
    object cxDBLabel1: TcxDBLabel
      Left = 759
      Top = 4
      Anchors = [akTop, akRight]
      AutoSize = True
      DataBinding.DataField = 'ID'
      DataBinding.DataSource = ds_RR
      ParentColor = False
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -15
      Style.Font.Name = 'Segoe UI Black'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Transparent = True
      AnchorX = 846
    end
    object txt_notes: TcxDBMemo
      Left = 71
      Top = 61
      DataBinding.DataField = 'NOTES'
      DataBinding.DataSource = ds_RR
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
      OnExit = UIExecute
      Height = 95
      Width = 263
    end
    object chk_posted: TcxDBCheckBox
      Left = 680
      Top = 56
      Anchors = [akTop, akRight]
      AutoSize = False
      Caption = 'Posted'
      DataBinding.DataField = 'POSTED'
      DataBinding.DataSource = ds_RR
      ParentBackground = False
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
      TabOrder = 9
      OnClick = chk_postedClick
      OnExit = UIExecute
      Height = 25
      Width = 71
    end
    object cmb_vendor: TcxDBLookupComboBox
      Left = 71
      Top = 34
      DataBinding.DataField = 'VENDORID'
      DataBinding.DataSource = ds_RR
      ParentFont = False
      Properties.Alignment.Horz = taLeftJustify
      Properties.CharCase = ecUpperCase
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'VENDORNAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = ds_vendor
      Style.BorderColor = 1184274
      Style.BorderStyle = ebsThick
      Style.Color = 6570553
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = False
      Style.ButtonStyle = btsUltraFlat
      Style.ButtonTransparency = ebtAlways
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 2
      OnExit = UIExecute
      Width = 263
    end
    object rad_source: TcxDBRadioGroup
      Left = 71
      Top = 7
      Alignment = alCenterCenter
      Caption = 'SOURCE'
      DataBinding.DataField = 'SOURCE'
      DataBinding.DataSource = ds_RR
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      Properties.Columns = 2
      Properties.DefaultValue = 'O'
      Properties.ImmediatePost = True
      Properties.Items = <
        item
          Caption = 'CPR'
          Value = 'CPR'
        end
        item
          Caption = 'PO'
          Value = 'PO'
        end>
      Properties.WordWrap = True
      Properties.OnChange = rad_sourcePropertiesChange
      Style.BorderColor = 1184274
      Style.BorderStyle = ebsThick
      Style.Color = 6570553
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = False
      Style.Shadow = False
      Style.TextColor = clWhite
      Style.TransparentBorder = True
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      OnExit = rad_sourceExit
      Height = 21
      Width = 100
    end
    object cmb_refno: TcxDBLookupComboBox
      Left = 229
      Top = 7
      DataBinding.DataField = 'REFID'
      DataBinding.DataSource = ds_RR
      ParentFont = False
      Properties.Alignment.Horz = taLeftJustify
      Properties.CharCase = ecUpperCase
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'ID'
        end
        item
          Caption = 'POSTED DATE'
          FieldName = 'POSTEDDATETIME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = ds_MR
      Properties.OnCloseUp = cmb_refnoPropertiesCloseUp
      Style.BorderColor = 1184274
      Style.BorderStyle = ebsThick
      Style.Color = 6570553
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = False
      Style.ButtonStyle = btsUltraFlat
      Style.ButtonTransparency = ebtAlways
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 1
      OnExit = UIExecute
      Width = 105
    end
    object txt_invoice: TcxDBTextEdit
      Left = 453
      Top = 7
      DataBinding.DataField = 'INVOICE'
      DataBinding.DataSource = ds_RR
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
      TabOrder = 4
      OnExit = UIExecute
      Width = 104
    end
    object txt_Gross: TcxDBTextEdit
      Left = 453
      Top = 34
      DataBinding.DataField = 'GROSS'
      DataBinding.DataSource = ds_RR
      ParentFont = False
      ParentShowHint = False
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = True
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
      OnExit = UIExecute
      Width = 104
    end
    object txt_discount: TcxDBTextEdit
      Left = 453
      Top = 61
      DataBinding.DataField = 'DISCOUNT'
      DataBinding.DataSource = ds_RR
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
      OnExit = UIExecute
      Width = 104
    end
    object txt_netamount: TcxDBTextEdit
      Left = 453
      Top = 88
      DataBinding.DataField = 'NETAMNT'
      DataBinding.DataSource = ds_RR
      ParentFont = False
      ParentShowHint = False
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = True
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
      TabOrder = 7
      OnExit = UIExecute
      Width = 104
    end
  end
  object grid_jodetail: TcxGrid
    Left = 0
    Top = 185
    Width = 861
    Height = 255
    Align = alClient
    BevelInner = bvNone
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnExit = UIExecute
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'VisualStudio2013Light'
    object cxGridDBTableView1: TcxGridDBTableView
      PopupMenu = PopupMenu1
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = ds_details
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '###,###,##0'
          Kind = skCount
          FieldName = 'ITEMID'
          Column = cxGridDBTableView1ITEMID
        end
        item
          Format = '###,###,##0.00'
          Kind = skSum
          FieldName = 'AMOUNT'
          Column = cxGridDBTableView1AMOUNT
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Inserting = False
      OptionsView.NoDataToDisplayInfoText = 'No Data To Display'
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      Styles.Header = Header_style
      object cxGridDBTableView1ITEMID: TcxGridDBColumn
        Caption = 'ITEM DESCRIPTION'
        DataBinding.FieldName = 'DESCRIPTION'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 195
      end
      object cxGridDBTableView1UNIT: TcxGridDBColumn
        DataBinding.FieldName = 'UNIT'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 103
      end
      object cxGridDBTableView1ONHANDQTY: TcxGridDBColumn
        Caption = 'ONHAND'
        DataBinding.FieldName = 'ONHANDQTY'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 98
      end
      object cxGridDBTableView1REQQTY: TcxGridDBColumn
        Caption = 'CPR/PO QTY.'
        DataBinding.FieldName = 'REQQTY'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 72
      end
      object cxGridDBTableView1RCVDQTY: TcxGridDBColumn
        Caption = 'RCVD'
        DataBinding.FieldName = 'RCVDQTY'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
      end
      object cxGridDBTableView1QTY: TcxGridDBColumn
        DataBinding.FieldName = 'QTY'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ValidateOnEnter = True
        Properties.OnValidate = cxGridDBTableView1QTYPropertiesValidate
        HeaderAlignmentHorz = taCenter
        Options.Filtering = False
        Options.Sorting = False
        Width = 56
      end
      object cxGridDBTableView1COST: TcxGridDBColumn
        DataBinding.FieldName = 'COST'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 75
      end
      object cxGridDBTableView1AMOUNT: TcxGridDBColumn
        DataBinding.FieldName = 'AMOUNT'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 91
      end
      object cxGridDBTableView1OVERRIDE: TcxGridDBColumn
        DataBinding.FieldName = 'OVERRIDE'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 71
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBTableView1
    end
  end
  object ds_RR: TDataSource
    DataSet = dm_PM.qry_RR
    Left = 224
    Top = 223
  end
  object ActionList1: TActionList
    Left = 416
    Top = 223
    object UI: TAction
      Caption = 'UI'
      OnExecute = UIExecute
    end
    object Print: TAction
      Caption = 'Print'
      OnExecute = PrintExecute
    end
    object Delete: TAction
      Caption = 'Delete'
      OnExecute = DeleteExecute
    end
    object Override: TAction
      Caption = 'Override'
      OnExecute = OverrideExecute
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 184
    Top = 223
    PixelsPerInch = 96
    object Header_style: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clTeal
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      TextColor = 6570553
    end
  end
  object frxReport1: TfrxReport
    Version = '6.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44196.578938483800000000
    ReportOptions.LastChange = 44196.578938483800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 496
    Top = 223
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object ds_details: TDataSource
    DataSet = dm_PM.tb_RRDetail
    Left = 312
    Top = 223
  end
  object ds_items: TDataSource
    DataSet = dm_PM.brw_items
    Left = 264
    Top = 223
  end
  object PopupMenu1: TPopupMenu
    Left = 544
    Top = 223
    object Delete1: TMenuItem
      Action = Delete
    end
    object Override1: TMenuItem
      Action = Override
    end
  end
  object ds_vendor: TDataSource
    DataSet = dm_PM.brw_Vendor
    Left = 344
    Top = 223
  end
  object ds_MR: TDataSource
    DataSet = dm_PM.brw_MR
    Left = 384
    Top = 223
  end
  object ds_PO: TDataSource
    DataSet = dm_PM.brw_PO
    Left = 384
    Top = 271
  end
end
