object f_Items: Tf_Items
  Left = 0
  Top = 0
  Caption = 'Items List'
  ClientHeight = 464
  ClientWidth = 991
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 14
  object Splitter1: TSplitter
    Left = 0
    Top = 101
    Width = 991
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
  object scToolBar2: TscToolBar
    Left = 0
    Top = 71
    Width = 991
    Height = 30
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    AutoSize = True
    ButtonHeight = 30
    ButtonWidth = 171
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
    TabOrder = 0
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
    object ToolButton4: TToolButton
      Left = 213
      Top = 0
      Action = Inventory
      AutoSize = True
      ImageIndex = 0
    end
    object ToolButton5: TToolButton
      Left = 307
      Top = 0
      Action = BarCode
      ImageIndex = 5
    end
    object ToolButton6: TToolButton
      Left = 478
      Top = 0
      Action = Print
      AutoSize = True
      ImageIndex = 3
    end
    object ToolButton7: TToolButton
      Left = 545
      Top = 0
      Action = PeriodicInventory
      AutoSize = True
      ImageIndex = 3
    end
    object ToolButton8: TToolButton
      Left = 720
      Top = 0
      Action = InventoryCost
      AutoSize = True
      ImageIndex = 6
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 104
    Width = 991
    Height = 360
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'VisualStudio2013Light'
    ExplicitWidth = 776
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = ds_items
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '###,###,##0'
          Kind = skCount
          FieldName = 'CODE'
          Column = cxGrid1DBTableView1CODE
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsSelection.CellSelect = False
      OptionsView.NoDataToDisplayInfoText = 'No Data To Display'
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      Styles.Selection = select_style
      Styles.Header = header_style
      object cxGrid1DBTableView1CODE: TcxGridDBColumn
        DataBinding.FieldName = 'CODE'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 49
      end
      object cxGrid1DBTableView1DESCRIPTION: TcxGridDBColumn
        DataBinding.FieldName = 'DESCRIPTION'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 166
      end
      object cxGrid1DBTableView1ITEMTYPE: TcxGridDBColumn
        DataBinding.FieldName = 'ITEMTYPE'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 96
      end
      object cxGrid1DBTableView1FIRSTCOST: TcxGridDBColumn
        DataBinding.FieldName = 'FIRSTCOST'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 78
      end
      object cxGrid1DBTableView1MIDCOST: TcxGridDBColumn
        DataBinding.FieldName = 'MIDCOST'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 48
      end
      object cxGrid1DBTableView1LASTCOST: TcxGridDBColumn
        DataBinding.FieldName = 'LASTCOST'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 46
      end
      object cxGrid1DBTableView1HIGHESTCOST: TcxGridDBColumn
        DataBinding.FieldName = 'HIGHESTCOST'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 46
      end
      object cxGrid1DBTableView1PURCHASEUNIT: TcxGridDBColumn
        DataBinding.FieldName = 'PURCHASEUNIT'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 89
      end
      object cxGrid1DBTableView1INVUNIT: TcxGridDBColumn
        DataBinding.FieldName = 'INVUNIT'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 88
      end
      object cxGrid1DBTableView1UNITQTY: TcxGridDBColumn
        DataBinding.FieldName = 'UNITQTY'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 47
      end
      object cxGrid1DBTableView1SELLINGPRICE: TcxGridDBColumn
        DataBinding.FieldName = 'SELLINGPRICE'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 46
      end
      object cxGrid1DBTableView1ONHAND: TcxGridDBColumn
        DataBinding.FieldName = 'ONHAND'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 46
      end
    end
    object cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
      OnDblClick = EditExecute
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = ds_items
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '###,###,##0'
          Kind = skCount
          FieldName = 'CODE'
          Column = cxGrid1DBBandedTableView1CODE
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsSelection.CellSelect = False
      OptionsView.NoDataToDisplayInfoText = 'No Data To Display'
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      Styles.Selection = select_style
      Styles.Header = header_style
      Styles.BandHeader = header_style
      Bands = <
        item
          Caption = 'ITEM DETAILS'
          Width = 563
        end
        item
          Width = 212
        end>
      object cxGrid1DBBandedTableView1CODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CODE'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 82
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1DESCRIPTION: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DESCRIPTION'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 260
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1ITEMTYPE: TcxGridDBBandedColumn
        Caption = 'ITEM TYPE'
        DataBinding.FieldName = 'ITEMTYPE'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 96
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1INVUNIT: TcxGridDBBandedColumn
        Caption = 'UNIT'
        DataBinding.FieldName = 'INVUNIT'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 101
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1COST: TcxGridDBBandedColumn
        DataBinding.FieldName = 'COST'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 63
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1SELLINGPRICE: TcxGridDBBandedColumn
        Caption = 'SELLING PRICE'
        DataBinding.FieldName = 'PRICE'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 92
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1ONHAND: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ONHAND'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Styles.OnGetContentStyle = cxGrid1DBBandedTableView1ONHANDStylesGetContentStyle
        Width = 83
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1MINQTY: TcxGridDBBandedColumn
        Caption = 'MIN. ST LEVEL'
        DataBinding.FieldName = 'MINQTY'
        Visible = False
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 84
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1TOTAL: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TOTAL'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 56
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBBandedTableView1
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 991
    Height = 71
    Align = alTop
    BevelOuter = bvNone
    Color = clTeal
    Padding.Left = 10
    Padding.Top = 5
    Padding.Right = 10
    Padding.Bottom = 5
    ParentBackground = False
    TabOrder = 2
    StyleElements = [seFont, seBorder]
    ExplicitWidth = 776
    DesignSize = (
      991
      71)
    object Label2: TLabel
      Left = 830
      Top = 29
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
      ExplicitLeft = 726
    end
    object Label1: TLabel
      AlignWithMargins = True
      Left = 14
      Top = 24
      Width = 59
      Height = 25
      Caption = 'ITEMS'
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
    object cmb_filter: TComboBox
      Left = 868
      Top = 23
      Width = 106
      Height = 25
      Style = csDropDownList
      Anchors = [akTop, akRight]
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      Items.Strings = (
        'CODE'
        'DESCRIPTION'
        'ITEM TYPE')
      ExplicitLeft = 653
    end
    object txt_search: TButtonedEdit
      Left = 437
      Top = 23
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
      TabOrder = 1
      TextHint = 'Search ...'
      StyleElements = [seFont, seBorder]
      OnKeyPress = txt_searchKeyPress
      OnRightButtonClick = txt_searchRightButtonClick
      ExplicitLeft = 222
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
    object Inventory: TAction
      Caption = 'Inventory'
      OnExecute = InventoryExecute
    end
    object BarCode: TAction
      Caption = 'Generate Bar Code'
      OnExecute = BarCodeExecute
    end
    object Print: TAction
      Caption = 'Print'
      OnExecute = PrintExecute
    end
    object PeriodicInventory: TAction
      Caption = 'Print Periodic Inventory'
      OnExecute = PeriodicInventoryExecute
    end
    object InventoryCost: TAction
      Caption = 'Inventory Stock Cost'
      OnExecute = InventoryCostExecute
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
        Char = 61482
      end
      item
        ScalingFactor = 0.740000000000000000
        OffsetY = 4
        Char = 61788
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
  object ds_items: TDataSource
    DataSet = dm_PM.brw_items
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
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      TextColor = 6570553
    end
    object select_style: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clTeal
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
  end
  object frxBarCodeObject1: TfrxBarCodeObject
    Left = 536
    Top = 192
  end
end
