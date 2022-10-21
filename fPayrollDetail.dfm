object f_PayrollDetail: Tf_PayrollDetail
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Payroll Detail'
  ClientHeight = 319
  ClientWidth = 694
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
    Width = 694
    Height = 37
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 543
    DesignSize = (
      694
      37)
    object Button1: TButton
      Left = 606
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'OK'
      Default = True
      ModalResult = 2
      TabOrder = 0
      ExplicitLeft = 455
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 694
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Color = clTeal
    ParentBackground = False
    TabOrder = 1
    ExplicitWidth = 543
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
    Width = 694
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
    ExplicitWidth = 543
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
          FieldName = 'PRICE'
          Column = cxGridDBTableView1PRICE
        end
        item
          Format = '###,###,##0.00'
          Kind = skSum
          FieldName = 'AMNT'
          Column = cxGridDBTableView1AMNT
        end
        item
          Format = '###,###,##0'
          Kind = skSum
          FieldName = 'QTY'
          Column = cxGridDBTableView1QTY
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
        Caption = 'JO NO.'
        DataBinding.FieldName = 'JONO'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 42
      end
      object cxGridDBTableView1GARMENT: TcxGridDBColumn
        DataBinding.FieldName = 'GARMENT'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 250
      end
      object cxGridDBTableView1QTY: TcxGridDBColumn
        DataBinding.FieldName = 'QTY'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 59
      end
      object cxGridDBTableView1PRICE: TcxGridDBColumn
        DataBinding.FieldName = 'PRICE'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 54
      end
      object cxGridDBTableView1AMNT: TcxGridDBColumn
        DataBinding.FieldName = 'AMNT'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 63
      end
      object cxGridDBTableView1WORK: TcxGridDBColumn
        Caption = 'WORK DONE'
        DataBinding.FieldName = 'WORK'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 109
      end
      object cxGridDBTableView1LOGDATE: TcxGridDBColumn
        Caption = 'LOG DATE'
        DataBinding.FieldName = 'LOGDATE'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 115
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
    DataSet = dm_PM.tb_PayParticular
    Left = 248
    Top = 96
  end
end
