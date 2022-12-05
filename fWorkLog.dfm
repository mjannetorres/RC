object f_WorkLog: Tf_WorkLog
  Left = 0
  Top = 0
  Caption = 'f_WorkLog'
  ClientHeight = 480
  ClientWidth = 1142
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 101
    Width = 1142
    Height = 3
    Cursor = crVSplit
    Align = alTop
    Color = clWhite
    ParentColor = False
    StyleElements = []
    ExplicitLeft = 7
    ExplicitTop = 111
    ExplicitWidth = 827
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 1142
    Height = 71
    Align = alTop
    BevelOuter = bvNone
    Color = clTeal
    Padding.Left = 10
    Padding.Top = 5
    Padding.Right = 10
    Padding.Bottom = 5
    ParentBackground = False
    TabOrder = 0
    StyleElements = [seFont, seBorder]
    ExplicitWidth = 977
    DesignSize = (
      1142
      71)
    object Label1: TLabel
      AlignWithMargins = True
      Left = 13
      Top = 24
      Width = 146
      Height = 25
      Caption = 'WORKER'#39'S LOG'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Segoe UI Black'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Layout = tlCenter
      StyleElements = []
    end
    object Label2: TLabel
      Left = 999
      Top = 43
      Width = 32
      Height = 17
      Anchors = [akTop, akRight]
      Caption = 'Filter'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      StyleElements = []
      ExplicitLeft = 684
    end
    object Label3: TLabel
      Left = 740
      Top = 44
      Width = 40
      Height = 17
      Anchors = [akTop, akRight]
      Caption = 'Period'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      StyleElements = []
      ExplicitLeft = 445
    end
    object cmb_filter: TComboBox
      Left = 1038
      Top = 41
      Width = 89
      Height = 23
      Style = csDropDownList
      Anchors = [akTop, akRight]
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      Items.Strings = (
        'ALL'
        'JO NO.'
        'CLIENT'
        'WORKER'
        'ROLE')
      ExplicitLeft = 873
    end
    object date_1: TDateTimePicker
      Left = 797
      Top = 41
      Width = 93
      Height = 21
      Anchors = [akTop, akRight]
      Date = 44189.551065162040000000
      Time = 44189.551065162040000000
      TabOrder = 1
      ExplicitLeft = 632
    end
    object date_2: TDateTimePicker
      Left = 896
      Top = 41
      Width = 93
      Height = 21
      Anchors = [akTop, akRight]
      Date = 44189.551065162040000000
      Time = 44189.551065162040000000
      TabOrder = 2
      ExplicitLeft = 731
    end
    object txt_search: TButtonedEdit
      Left = 740
      Top = 13
      Width = 387
      Height = 25
      Anchors = [akTop, akRight]
      CharCase = ecUpperCase
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      Images = sCharImageList1
      LeftButton.HotImageIndex = 0
      LeftButton.ImageIndex = 0
      LeftButton.PressedImageIndex = 0
      ParentFont = False
      RightButton.DisabledImageIndex = 0
      RightButton.HotImageIndex = 4
      RightButton.ImageIndex = 4
      RightButton.PressedImageIndex = 4
      RightButton.Visible = True
      TabOrder = 3
      TextHint = 'Search ...'
      StyleElements = [seFont, seBorder]
      OnKeyPress = txt_searchKeyPress
      OnRightButtonClick = txt_searchRightButtonClick
      ExplicitLeft = 575
    end
  end
  object scToolBar2: TscToolBar
    Left = 0
    Top = 71
    Width = 1142
    Height = 30
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    AutoSize = True
    ButtonHeight = 30
    ButtonWidth = 74
    Caption = 'scToolBar1'
    Color = clWhite
    Customizable = True
    DrawingStyle = dsGradient
    EdgeInner = esNone
    EdgeOuter = esNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clTeal
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    GradientEndColor = clWhite
    GradientStartColor = clWhite
    HotTrackColor = clWhite
    Images = sCharImageList1
    Indent = 5
    List = True
    ParentColor = False
    ParentFont = False
    ShowCaptions = True
    TabOrder = 1
    Transparent = True
    StyleElements = []
    object ToolButton1: TToolButton
      Left = 5
      Top = 0
      Action = New
      AutoSize = True
      ImageIndex = 0
    end
    object ToolButton2: TToolButton
      Left = 72
      Top = 0
      Action = Edit
      AutoSize = True
      ImageIndex = 1
    end
    object ToolButton3: TToolButton
      Left = 135
      Top = 0
      Action = Delete
      AutoSize = True
      ImageIndex = 2
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 104
    Width = 1142
    Height = 376
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'VisualStudio2013Light'
    ExplicitWidth = 977
    object cxGrid1DBTableView1: TcxGridDBTableView
      OnDblClick = cxGrid1DBTableView1DblClick
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = ds_Logs
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '###,###,##0'
          Kind = skCount
          FieldName = 'ID'
          Column = cxGrid1DBTableView1JONO
        end
        item
          Format = '###,###,##0.00'
          Kind = skSum
          FieldName = 'COST'
          Column = cxGrid1DBTableView1COST
        end
        item
          Format = '###,###,##0.00'
          Kind = skSum
          FieldName = 'TOTAL'
          Column = cxGrid1DBTableView1TOTAL
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsSelection.CellSelect = False
      OptionsView.NoDataToDisplayInfoText = 'No Data To Display'
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      Styles.Selection = select_style
      Styles.Header = header_style
      object cxGrid1DBTableView1JONO: TcxGridDBColumn
        Caption = 'JO NO.'
        DataBinding.FieldName = 'JONO'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 54
      end
      object cxGrid1DBTableView1CLIENT: TcxGridDBColumn
        DataBinding.FieldName = 'CLIENT'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 123
      end
      object cxGrid1DBTableView1WORKER: TcxGridDBColumn
        DataBinding.FieldName = 'WORKER'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 167
      end
      object cxGrid1DBTableView1ROLE: TcxGridDBColumn
        DataBinding.FieldName = 'ROLE'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 188
      end
      object cxGrid1DBTableView1DESCRIPTION: TcxGridDBColumn
        DataBinding.FieldName = 'DESCRIPTION'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 182
      end
      object cxGrid1DBTableView1REMARKS: TcxGridDBColumn
        DataBinding.FieldName = 'REMARKS'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 106
      end
      object cxGrid1DBTableView1QTY: TcxGridDBColumn
        DataBinding.FieldName = 'QTY'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 45
      end
      object cxGrid1DBTableView1COST: TcxGridDBColumn
        DataBinding.FieldName = 'COST'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 64
      end
      object cxGrid1DBTableView1TOTAL: TcxGridDBColumn
        DataBinding.FieldName = 'TOTAL'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 63
      end
      object cxGrid1DBTableView1CONTRACTOUT: TcxGridDBColumn
        Caption = 'C. OUT'
        DataBinding.FieldName = 'CONTRACTOUT'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Images = sCharImageList1
        Properties.ImmediatePost = True
        Properties.Items = <
          item
            ImageIndex = 5
            Value = True
          end
          item
            ImageIndex = 6
            Value = False
          end>
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 52
      end
      object cxGrid1DBTableView1CREATEDDATETIME: TcxGridDBColumn
        Caption = 'CREATED'
        DataBinding.FieldName = 'CALC_DATE'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 96
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object ActionList1: TActionList
    Left = 365
    Top = 191
    object New: TAction
      Caption = 'New'
      OnExecute = NewExecute
    end
    object Edit: TAction
      Caption = 'Edit'
      OnExecute = EditExecute
    end
    object Delete: TAction
      Caption = 'Delete'
      OnExecute = DeleteExecute
    end
    object Print: TAction
      Caption = 'Print'
      OnExecute = PrintExecute
    end
  end
  object sCharImageList1: TsCharImageList
    EmbeddedFonts = <
      item
        FontName = 'FontAwesome'
        FontData = {}
      end>
    Items = <
      item
        ScalingFactor = 0.740000000000000000
        OffsetY = 4
        Char = 61525
      end
      item
        ScalingFactor = 0.740000000000000000
        OffsetY = 4
        Char = 61504
      end
      item
        ScalingFactor = 0.740000000000000000
        OffsetY = 4
        Char = 61527
      end
      item
        ScalingFactor = 0.740000000000000000
        OffsetY = 4
        Char = 61639
      end
      item
        ScalingFactor = 0.730000000000000000
        OffsetY = 2
        Char = 61442
      end
      item
        Char = 61452
        Color = -14121702
      end
      item
        Char = 61453
        Color = -16777036
      end>
    Left = 413
    Top = 192
    Bitmap = {
      494C010100000800080001000100FFFFFFFF0400FFFFFFFFFFFFFFFF424D7600
      0000000000007600000028000000040000000100000001000400000000000400
      0000000000000000000000000000000000000000000000008000008000000080
      8000800000008000800080800000C0C0C000808080000000FF0000FF000000FF
      FF00FF000000FF00FF00FFFF0000FFFFFF0000000000}
  end
  object ds_Logs: TDataSource
    DataSet = dm_PM.brw_WorkLogs
    Left = 469
    Top = 192
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 501
    Top = 192
    PixelsPerInch = 96
    object header_style: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      TextColor = 6570553
    end
    object select_style: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clTeal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clWhite
    end
  end
end
