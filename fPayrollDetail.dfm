object f_PayrollDetail: Tf_PayrollDetail
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Particulars'
  ClientHeight = 319
  ClientWidth = 1086
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 14
  object Panel1: TPanel
    Left = 0
    Top = 282
    Width = 1086
    Height = 37
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 825
    DesignSize = (
      1086
      37)
    object Button1: TButton
      Left = 998
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'OK'
      Default = True
      ModalResult = 2
      TabOrder = 0
      ExplicitLeft = 737
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1086
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Color = clTeal
    ParentBackground = False
    TabOrder = 1
    ExplicitWidth = 825
    object cxLabel1: TcxLabel
      Left = 8
      Top = 8
      Caption = 'Employee Name'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -15
      Style.Font.Name = 'Segoe UI Semibold'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Transparent = True
    end
  end
  object grid_jodetail: TcxGrid
    Left = 0
    Top = 41
    Width = 1086
    Height = 241
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
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'VisualStudio2013Light'
    ExplicitWidth = 825
    object cxGridDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = ds_detail
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '###,###,##0'
          Kind = skCount
          FieldName = 'JONO'
          Column = cxGridDBTableView1JONO
        end
        item
          Format = '###,###,##0.00'
          Kind = skSum
          FieldName = 'COST'
          Column = cxGridDBTableView1COST
        end
        item
          Format = '###,###,##0.00'
          Kind = skSum
          FieldName = 'TOTAL'
          Column = cxGridDBTableView1TOTAL
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Appending = True
      OptionsSelection.CellSelect = False
      OptionsView.FocusRect = False
      OptionsView.NoDataToDisplayInfoText = 'No Data To Display'
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      Styles.Selection = select_style
      Styles.Header = Header_style
      object cxGridDBTableView1JONO: TcxGridDBColumn
        DataBinding.FieldName = 'JONO'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 38
      end
      object cxGridDBTableView1CLIENT: TcxGridDBColumn
        DataBinding.FieldName = 'CLIENT'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 165
      end
      object cxGridDBTableView1DESCRIPTION: TcxGridDBColumn
        DataBinding.FieldName = 'DESCRIPTION'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 203
      end
      object cxGridDBTableView1ROLE: TcxGridDBColumn
        DataBinding.FieldName = 'ROLE'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 186
      end
      object cxGridDBTableView1REMARKS: TcxGridDBColumn
        DataBinding.FieldName = 'REMARKS'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 136
      end
      object cxGridDBTableView1CONTRACTOUT: TcxGridDBColumn
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
        Width = 57
      end
      object cxGridDBTableView1QTY: TcxGridDBColumn
        DataBinding.FieldName = 'QTY'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 62
      end
      object cxGridDBTableView1COST: TcxGridDBColumn
        DataBinding.FieldName = 'COST'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 78
      end
      object cxGridDBTableView1TOTAL: TcxGridDBColumn
        DataBinding.FieldName = 'TOTAL'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 86
      end
      object cxGridDBTableView1CALC_DATE: TcxGridDBColumn
        Caption = 'CREATED'
        DataBinding.FieldName = 'CALC_DATE'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 73
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBTableView1
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 195
    Top = 96
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
    object select_style: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clTeal
      TextColor = clWhite
    end
  end
  object ds_detail: TDataSource
    DataSet = dm_PM.brw_WorkLogs
    Left = 248
    Top = 96
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
    Left = 293
    Top = 96
    Bitmap = {
      494C010100000800080001000100FFFFFFFF0400FFFFFFFFFFFFFFFF424D7600
      0000000000007600000028000000040000000100000001000400000000000400
      0000000000000000000000000000000000000000000000008000008000000080
      8000800000008000800080800000C0C0C000808080000000FF0000FF000000FF
      FF00FF000000FF00FF00FFFF0000FFFFFF0000000000}
  end
end
