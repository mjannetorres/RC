object f_PayrollDetail: Tf_PayrollDetail
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Payroll Detail'
  ClientHeight = 319
  ClientWidth = 825
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
    Width = 825
    Height = 37
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 694
    DesignSize = (
      825
      37)
    object Button1: TButton
      Left = 737
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'OK'
      Default = True
      ModalResult = 2
      TabOrder = 0
      ExplicitLeft = 606
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 825
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Color = clTeal
    ParentBackground = False
    TabOrder = 1
    ExplicitWidth = 694
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
    Width = 825
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
    ExplicitWidth = 694
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
        Width = 46
      end
      object cxGridDBTableView1CLIENT: TcxGridDBColumn
        DataBinding.FieldName = 'CLIENT'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 142
      end
      object cxGridDBTableView1DESCRIPTION: TcxGridDBColumn
        DataBinding.FieldName = 'DESCRIPTION'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 179
      end
      object cxGridDBTableView1ROLE: TcxGridDBColumn
        DataBinding.FieldName = 'ROLE'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 93
      end
      object cxGridDBTableView1QTY: TcxGridDBColumn
        DataBinding.FieldName = 'QTY'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 60
      end
      object cxGridDBTableView1COST: TcxGridDBColumn
        DataBinding.FieldName = 'COST'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 99
      end
      object cxGridDBTableView1TOTAL: TcxGridDBColumn
        DataBinding.FieldName = 'TOTAL'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 102
      end
      object cxGridDBTableView1CALC_DATE: TcxGridDBColumn
        Caption = 'CREATED'
        DataBinding.FieldName = 'CALC_DATE'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 102
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
end
