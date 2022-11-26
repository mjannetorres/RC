object f_ViewBalance: Tf_ViewBalance
  Left = 0
  Top = 0
  Caption = 'View Balance History'
  ClientHeight = 299
  ClientWidth = 894
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 262
    Width = 894
    Height = 37
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 553
    DesignSize = (
      894
      37)
    object Button1: TButton
      Left = 806
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'OK'
      Default = True
      ModalResult = 2
      TabOrder = 0
      ExplicitLeft = 465
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 894
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Color = clTeal
    ParentBackground = False
    TabOrder = 1
    ExplicitWidth = 553
    object cxLabel1: TcxLabel
      Left = 0
      Top = 0
      Align = alLeft
      Caption = 'Employee Name'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -15
      Style.Font.Name = 'Segoe UI Semibold'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      ExplicitLeft = 4
      ExplicitTop = 7
      ExplicitHeight = 24
      AnchorY = 21
    end
    object lblBalance: TcxLabel
      Left = 778
      Top = 0
      Align = alRight
      Caption = 'Employee Name'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -15
      Style.Font.Name = 'Segoe UI Semibold'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      ExplicitLeft = 116
      AnchorY = 21
    end
  end
  object grid_jodetail: TcxGrid
    Left = 0
    Top = 41
    Width = 894
    Height = 221
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
    ExplicitWidth = 553
    ExplicitHeight = 251
    object cxGridDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = ds_detail
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '###,###,##0.00'
          Kind = skSum
          FieldName = 'CASHADVACTUAL'
          Column = cxGridDBTableView1CASHADVACTUAL
        end
        item
          Format = '###,##0'
          Kind = skCount
          FieldName = 'REFDATE'
          Column = cxGridDBTableView1REFDATE
        end
        item
          Format = '###,###,##0.00'
          Kind = skSum
          FieldName = 'CALC_CASHADV'
          Column = cxGridDBTableView1CASHADVANCES
        end
        item
          Format = '###,###,##0.00'
          Kind = skSum
          FieldName = 'CASHADVCREDIT'
        end
        item
          Format = '###,###,##0.00'
          Kind = skSum
          FieldName = 'CASHADVBALANCE'
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
      object cxGridDBTableView1REFDATE: TcxGridDBColumn
        Caption = 'DATE'
        DataBinding.FieldName = 'REFDATE'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 143
      end
      object cxGridDBTableView1REMARKS: TcxGridDBColumn
        DataBinding.FieldName = 'REMARKS'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 175
      end
      object cxGridDBTableView1PAYDATEFROM: TcxGridDBColumn
        Caption = 'FROM'
        DataBinding.FieldName = 'PAYDATEFROM'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 104
      end
      object cxGridDBTableView1PAYDATETO: TcxGridDBColumn
        Caption = 'TO'
        DataBinding.FieldName = 'PAYDATETO'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 106
      end
      object cxGridDBTableView1CASHADVBALANCE: TcxGridDBColumn
        Caption = 'FORWARDED'
        DataBinding.FieldName = 'CASHADVBALANCE'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 80
      end
      object cxGridDBTableView1CASHADVACTUAL: TcxGridDBColumn
        Caption = 'ACTUAL'
        DataBinding.FieldName = 'CASHADVACTUAL'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 104
      end
      object cxGridDBTableView1CASHADVANCES: TcxGridDBColumn
        Caption = 'DEDUCTED'
        DataBinding.FieldName = 'CALC_CASHADV'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 102
      end
      object cxGridDBTableView1CASHADVCREDIT: TcxGridDBColumn
        Caption = 'BALANCE'
        DataBinding.FieldName = 'CASHADVCREDIT'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Styles.OnGetContentStyle = cxGridDBTableView1CASHADVCREDITStylesGetContentStyle
        Width = 78
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
    DataSet = dm_PM.brw_ForwardedBal
    Left = 248
    Top = 96
  end
end
