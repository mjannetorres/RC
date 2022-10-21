object f_RequestTemp: Tf_RequestTemp
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Material Consumption'
  ClientHeight = 471
  ClientWidth = 857
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Panel2: TPanel
    Left = 0
    Top = 430
    Width = 857
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      857
      41)
    object btnSave: TButton
      Left = 686
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
      Left = 767
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
      Left = 19
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
    Width = 857
    Height = 145
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
      857
      145)
    object Label1: TLabel
      Left = 692
      Top = 8
      Width = 51
      Height = 17
      Anchors = [akTop, akRight]
      Caption = 'Req No.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI Black'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 715
      Top = 60
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
      ExplicitLeft = 705
    end
    object Label6: TLabel
      Left = 9
      Top = 35
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
    object Label3: TLabel
      Left = 9
      Top = 9
      Width = 41
      Height = 17
      Caption = 'Source'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 702
      Top = 35
      Width = 40
      Height = 17
      Anchors = [akTop, akRight]
      Caption = 'JO No.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitLeft = 692
    end
    object date_date: TcxDBDateEdit
      Left = 748
      Top = 56
      Anchors = [akTop, akRight]
      DataBinding.DataField = 'REQDATETIME'
      DataBinding.DataSource = ds_Req
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
      TabOrder = 1
      OnExit = UIExecute
      Width = 94
    end
    object date_posted: TcxDBDateEdit
      Left = 748
      Top = 82
      Anchors = [akTop, akRight]
      DataBinding.DataField = 'POSTEDDATETIME'
      DataBinding.DataSource = ds_Req
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
      TabOrder = 2
      OnExit = UIExecute
      Width = 94
    end
    object cxDBLabel1: TcxDBLabel
      Left = 755
      Top = 4
      Anchors = [akTop, akRight]
      AutoSize = True
      DataBinding.DataField = 'ID'
      DataBinding.DataSource = ds_Req
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
      AnchorX = 842
    end
    object txt_notes: TcxDBMemo
      Left = 59
      Top = 36
      DataBinding.DataField = 'NOTES'
      DataBinding.DataSource = ds_Req
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
      OnExit = UIExecute
      Height = 95
      Width = 245
    end
    object chk_posted: TcxDBCheckBox
      Left = 671
      Top = 79
      Anchors = [akTop, akRight]
      AutoSize = False
      Caption = 'Posted'
      DataBinding.DataField = 'POSTED'
      DataBinding.DataSource = ds_Req
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
      TabOrder = 4
      OnClick = chk_postedClick
      OnExit = UIExecute
      Height = 25
      Width = 71
    end
    object cmb_jo: TcxDBLookupComboBox
      Left = 748
      Top = 29
      Anchors = [akTop, akRight]
      DataBinding.DataField = 'JONO'
      DataBinding.DataSource = ds_Req
      ParentFont = False
      Properties.ButtonGlyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        00030000000F0000001D000000260000002A0000002C0000002E0000002F0000
        0031000000320000003100000029000000170000000500000000000000000000
        000D02253E92044879ED045189FF045087FF044E85FF044C84FF044B83FF044B
        82FF044A81FF044980FF043F6FF3021F37A70000001700000000000000000000
        0016055287F41C8DBCFF20B9E4FF1BB2E0FF18ADDCFF15A8D8FF11A4D5FF11A2
        D4FF0FA2D4FF0FA4D6FF11A7D8FF044477F90000002A00000000000000000000
        0018065C93FF2DC3ECFF6D9BA8FF8C8D8CFF8A8A8AFF888888FF858585FF8484
        84FF828282FF628D9BFF13ACDCFF044A81FF0000003000000000000000000000
        0016066097FF38CAEFFF939392FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF828282FF15B1E0FF054B82FF0000002F00000000000000000000
        001307659CFF49D1F3FF969596FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF848585FF17B7E5FF054D85FF0000002D00000000000000000000
        0011086AA0FF5AD8F6FF999999FFFFFFFFFFD0A57EFFCC9F76FFC8996FFFC595
        6AFFFFFFFFFF868686FF1BBEE9FF055087FF0000002A00000000000000000000
        000E0970A6FF73E0F9FF9C9C9CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF8A8A8AFF20C4EEFF05538AFF0000002800000000000000000000
        000B0A76ACFF8EE8FCFFA0A09FFFFFFFFFFFD5AB86FFD1A67FFFCEA179FFCC9F
        76FFFDFDFDFF8B8B8BFF28C9F2FF05568DFF0000002500000000000000000000
        00080B7CB2FFA7EEFDFFA2A2A2FFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9FFE9E9
        E9FFE7E7E7FF8B8A8AFF2FCDF1FF065990FF0000002100000000000000000000
        00060C84B7FFBCF3FEFFA4A4A4FFFFFFFFFFF7F7F7FFDADADAFFC8C8C8FFCECE
        CEFFDBDBDBFF8B8C8CFF38CDEEFF085D93FF0000001E00000000000000000000
        00030E8BBEFFCFF7FFFFA7A5A7FFD4D4D4FFAEAEAEFFAAAAAAFFB6B6B6FFC4C4
        C4FFD2D2D2FF8B8B8BFF3FCCEBFF0B6296FF0000001A00000000000000000000
        00021092C4FFDFFAFFFFC1864BFFBE8146FFBC7D40FFB9793BFFB67636FFB472
        33FFB27030FFB06D2EFF46D3F1FF08679DFF0000001500000000000000000000
        00010F87B2E17EC8E3FFE9C190FFE6BA87FFE2B47EFFDFAE75FFDCA86DFFD9A2
        67FFD69E60FFBA7A3DFF2CA8D3FF07608FE60000000E00000000000000000000
        000008475C71108AB5E11199CAFF1596C6FFDCCBAAFFEFCB9EFFECC595FFD9BA
        8FFF117FB3FF0C7AAFFF0A6896E504324A7E0000000600000000000000000000
        00000000000000000000000000010000000272685873FCE5C2FFEFD7B3F77763
        4C8A000000060000000700000007000000040000000100000000}
      Properties.CharCase = ecUpperCase
      Properties.DropDownWidth = 200
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'JONO'
      Properties.ListColumns = <
        item
          FieldName = 'JONO'
        end
        item
          FieldName = 'LOGDATE'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = ds_JO
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
      TabOrder = 5
      OnExit = UIExecute
      Width = 94
    end
    object rad_source: TcxDBImageComboBox
      Left = 59
      Top = 9
      DataBinding.DataField = 'SOURCE'
      DataBinding.DataSource = ds_Req
      ParentFont = False
      Properties.ImmediatePost = True
      Properties.Items = <
        item
          Description = 'LAYOUT/DESIGN'
          ImageIndex = 0
          Value = 'D'
        end
        item
          Description = 'PRINTING'
          Value = 'P'
        end
        item
          Description = 'FIRST CUTTING'
          Value = 'F'
        end
        item
          Description = 'HEAT PRESS'
          Value = 'H'
        end
        item
          Description = 'FINAL CUTTING'
          Value = 'L'
        end
        item
          Description = 'SEWING'
          Value = 'S'
        end
        item
          Description = 'OTHERS'
          Value = 'O'
        end>
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
      TabOrder = 6
      OnExit = rad_sourceExit
      Width = 245
    end
  end
  object grid_jodetail: TcxGrid
    Left = 0
    Top = 145
    Width = 857
    Height = 285
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
    OnExit = grid_jodetailExit
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'VisualStudio2013Light'
    ExplicitTop = 147
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
          FieldName = 'TOTALCOST'
          Column = cxGridDBTableView1TOTALCOST
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Appending = True
      OptionsView.NoDataToDisplayInfoText = 'No Data To Display'
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      object cxGridDBTableView1ITEMID: TcxGridDBColumn
        Caption = 'ITEM DESCRIPTION'
        DataBinding.FieldName = 'ITEMID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.CharCase = ecUpperCase
        Properties.DropDownWidth = 360
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            Caption = 'CODE'
            HeaderAlignment = taCenter
            Width = 80
            FieldName = 'CODE'
          end
          item
            HeaderAlignment = taCenter
            Width = 200
            FieldName = 'DESCRIPTION'
          end
          item
            Caption = 'ONHAND'
            HeaderAlignment = taCenter
            Width = 80
            FieldName = 'ONHAND'
          end>
        Properties.ListFieldIndex = 1
        Properties.ListSource = ds_items
        Properties.OnCloseUp = cxGridDBTableView1ITEMIDPropertiesCloseUp
        HeaderAlignmentHorz = taCenter
        Options.Filtering = False
        Options.Sorting = False
        Styles.Header = Header_style
        Width = 197
      end
      object cxGridDBTableView1OLDQTY: TcxGridDBColumn
        Caption = 'ONHAND'
        DataBinding.FieldName = 'OLDQTY'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Styles.Header = Header_style
        Width = 81
      end
      object cxGridDBTableView1QTY: TcxGridDBColumn
        DataBinding.FieldName = 'QTY'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ValidateOnEnter = True
        Properties.OnValidate = cxGridDBTableView1QTYPropertiesValidate
        HeaderAlignmentHorz = taCenter
        Options.Filtering = False
        Options.Sorting = False
        Styles.Header = Header_style
        Width = 66
      end
      object cxGridDBTableView1UNIT: TcxGridDBColumn
        DataBinding.FieldName = 'UNIT'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Styles.Header = Header_style
        Width = 78
      end
      object cxGridDBTableView1COST: TcxGridDBColumn
        DataBinding.FieldName = 'COST'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Styles.Header = Header_style
        Width = 102
      end
      object cxGridDBTableView1TOTALCOST: TcxGridDBColumn
        Caption = 'TOTAL COST'
        DataBinding.FieldName = 'TOTALCOST'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Styles.Header = Header_style
        Width = 102
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBTableView1
    end
  end
  object ds_Req: TDataSource
    DataSet = dm_PM.qry_InvRequest
    Left = 224
    Top = 192
  end
  object ActionList1: TActionList
    Left = 416
    Top = 192
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
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 184
    Top = 192
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
    Top = 192
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object ds_details: TDataSource
    DataSet = dm_PM.tb_InvReqDetail
    Left = 312
    Top = 192
  end
  object ds_items: TDataSource
    DataSet = dm_PM.brw_items
    Left = 264
    Top = 192
  end
  object ds_JO: TDataSource
    DataSet = dm_PM.brw_MRJO
    Left = 368
    Top = 192
  end
  object PopupMenu1: TPopupMenu
    Left = 544
    Top = 192
    object Delete1: TMenuItem
      Action = Delete
    end
  end
end
