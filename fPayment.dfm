object f_Payment: Tf_Payment
  Left = 0
  Top = 0
  Caption = 'Payment'
  ClientHeight = 424
  ClientWidth = 942
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 101
    Width = 942
    Height = 3
    Cursor = crVSplit
    Align = alTop
    Color = clWhite
    ParentColor = False
    StyleElements = []
    ExplicitLeft = -95
    ExplicitWidth = 968
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 942
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
    DesignSize = (
      942
      71)
    object Label1: TLabel
      AlignWithMargins = True
      Left = 13
      Top = 24
      Width = 94
      Height = 25
      Caption = 'PAYMENT'
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
      Left = 799
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
      Left = 540
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
      Left = 838
      Top = 41
      Width = 89
      Height = 21
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
        'NO.'
        'VENDOR'
        'CHECK NO.'
        'OR NO.')
    end
    object date_1: TDateTimePicker
      Left = 597
      Top = 41
      Width = 93
      Height = 21
      Anchors = [akTop, akRight]
      Date = 44189.551065162040000000
      Time = 44189.551065162040000000
      TabOrder = 1
    end
    object date_2: TDateTimePicker
      Left = 696
      Top = 41
      Width = 93
      Height = 21
      Anchors = [akTop, akRight]
      Date = 44189.551065162040000000
      Time = 44189.551065162040000000
      TabOrder = 2
    end
    object txt_search: TButtonedEdit
      Left = 540
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
    end
  end
  object scToolBar2: TscToolBar
    Left = 0
    Top = 71
    Width = 942
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
    object btnPrint: TToolButton
      Left = 213
      Top = 0
      Action = Print
      AutoSize = True
      ImageIndex = 3
    end
  end
  object s: TcxGrid
    Left = 0
    Top = 104
    Width = 942
    Height = 320
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'VisualStudio2013Light'
    object sDBTableView1: TcxGridDBTableView
      OnDblClick = EditExecute
      Navigator.Buttons.CustomButtons = <>
      OnCellClick = sDBTableView1CellClick
      DataController.DataSource = ds_Payment
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '###,###,##0'
          Kind = skCount
          FieldName = 'ID'
          Column = sDBTableView1ID
        end
        item
          Format = '###,###,##0.00'
          Kind = skSum
          FieldName = 'NETAMNT'
          Column = sDBTableView1NETAMNT
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsSelection.CellSelect = False
      OptionsView.NoDataToDisplayInfoText = 'No Data To Display'
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      Styles.Selection = select_style
      Styles.Header = header_style
      object sDBTableView1ID: TcxGridDBColumn
        Caption = 'NO.'
        DataBinding.FieldName = 'ID'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 56
      end
      object sDBTableView1ORNO: TcxGridDBColumn
        Caption = 'OR NO.'
        DataBinding.FieldName = 'ORNO'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 66
      end
      object sDBTableView1VENDOR: TcxGridDBColumn
        DataBinding.FieldName = 'VENDOR'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 166
      end
      object sDBTableView1PAYMENTMODE: TcxGridDBColumn
        Caption = 'MODE'
        DataBinding.FieldName = 'PAYMENTMODE'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
      end
      object sDBTableView1BANK: TcxGridDBColumn
        DataBinding.FieldName = 'BANK'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 196
      end
      object sDBTableView1CHECKNO: TcxGridDBColumn
        Caption = 'CHECK NO.'
        DataBinding.FieldName = 'CHECKNO'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 66
      end
      object sDBTableView1CHECKDATE: TcxGridDBColumn
        Caption = 'CHECK DATE'
        DataBinding.FieldName = 'CHECKDATE'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 89
      end
      object sDBTableView1NETAMNT: TcxGridDBColumn
        Caption = 'NET AMNT'
        DataBinding.FieldName = 'NETAMNT'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 97
      end
      object sDBTableView1PAYDATE: TcxGridDBColumn
        Caption = 'DATE'
        DataBinding.FieldName = 'PAYDATE'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 79
      end
      object sDBTableView1POSTEDDATETIME: TcxGridDBColumn
        Caption = 'POSTED DATE'
        DataBinding.FieldName = 'POSTEDDATETIME'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 79
      end
      object sDBTableView1POSTED: TcxGridDBColumn
        DataBinding.FieldName = 'POSTED'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 46
      end
    end
    object sLevel1: TcxGridLevel
      GridView = sDBTableView1
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
  object ds_Payment: TDataSource
    DataSet = dm_PM.brw_Payment
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
      AssignedValues = [svColor, svTextColor]
      Color = clTeal
      TextColor = clWhite
    end
  end
end
