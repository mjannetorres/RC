object f_PayrollTemp: Tf_PayrollTemp
  Left = 0
  Top = 0
  Caption = 'Payroll'
  ClientHeight = 465
  ClientWidth = 1184
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Panel3: TPanel
    Left = 0
    Top = 38
    Width = 1184
    Height = 43
    Align = alTop
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
    TabOrder = 0
    StyleElements = [seFont, seBorder]
    DesignSize = (
      1184
      43)
    object Label1: TLabel
      Left = 13
      Top = 10
      Width = 118
      Height = 17
      Caption = 'PAYROLL REG NO.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI Black'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 1004
      Top = 11
      Width = 54
      Height = 17
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = 'Pay Date'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitLeft = 1064
    end
    object cxDBLabel1: TcxDBLabel
      Left = 137
      Top = 6
      AutoSize = True
      DataBinding.DataField = 'ID'
      DataBinding.DataSource = ds_payreg
      ParentColor = False
      ParentFont = False
      Properties.Alignment.Horz = taLeftJustify
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -15
      Style.Font.Name = 'Segoe UI Black'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Transparent = True
    end
    object date_end: TcxDBDateEdit
      Left = 1064
      Top = 10
      Anchors = [akTop, akRight]
      DataBinding.DataField = 'PAYDATE'
      DataBinding.DataSource = ds_payreg
      ParentFont = False
      Properties.DisplayFormat = 'mm/dd/yyyy'
      Properties.EditFormat = 'mm/dd/yyyy'
      Properties.ImmediatePost = True
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
      Width = 94
    end
  end
  object grid_jodetail: TcxGrid
    Left = 0
    Top = 81
    Width = 1184
    Height = 347
    Align = alClient
    BevelInner = bvNone
    BevelOuter = bvNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnExit = grid_jodetailExit
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'VisualStudio2013Light'
    object cxGridDBTableView1: TcxGridDBTableView
      PopupMenu = PopupMenu1
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = ds_PayrollDetail
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '###,###,##0'
          Kind = skCount
          FieldName = 'REFID'
        end
        item
          Format = '###,###,##0.00'
          Kind = skSum
          FieldName = 'NETAMOUNT'
        end
        item
          Format = '###,###,##0.00'
          Kind = skSum
          FieldName = 'PAIDAMNT'
        end
        item
          Format = '###,###,##0.00'
          Kind = skSum
          FieldName = 'AMOUNT'
        end
        item
          Format = '###,###,##0.00'
          Kind = skSum
          FieldName = 'BALANCE'
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Inserting = False
      OptionsView.NoDataToDisplayInfoText = 'No Data To Display'
      OptionsView.CellAutoHeight = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      Styles.Header = Header_style
    end
    object grid_jodetailDBBandedTableView1: TcxGridDBBandedTableView
      PopupMenu = PopupMenu1
      OnDblClick = ViewParticularExecute
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = ds_PayrollDetail
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '###,###,##0'
          Kind = skCount
          FieldName = 'IDNO'
          Column = grid_jodetailDBBandedTableView1IDNO
        end
        item
          Format = '###,###,##0.00'
          Kind = skSum
          FieldName = 'BASICPAY'
          Column = grid_jodetailDBBandedTableView1BASICPAY
        end
        item
          Format = '###,###,##0.00'
          Kind = skSum
          FieldName = 'ALLOWANCES'
          Column = grid_jodetailDBBandedTableView1ALLOWANCES
        end
        item
          Format = '###,###,##0.00'
          Kind = skSum
          FieldName = 'BACKWAGE'
          Column = grid_jodetailDBBandedTableView1BACKWAGE
        end
        item
          Format = '###,###,##0.00'
          Kind = skSum
          FieldName = 'LATE'
          Column = grid_jodetailDBBandedTableView1LATE
        end
        item
          Format = '###,###,##0.00'
          Kind = skSum
          FieldName = 'SSS'
          Column = grid_jodetailDBBandedTableView1SSS
        end
        item
          Format = '###,###,##0.00'
          Kind = skSum
          FieldName = 'PAGIBIG'
          Column = grid_jodetailDBBandedTableView1PAGIBIG
        end
        item
          Format = '###,###,##0.00'
          Kind = skSum
          FieldName = 'PHIC'
          Column = grid_jodetailDBBandedTableView1PHILHEALTH
        end
        item
          Format = '###,###,##0.00'
          Kind = skSum
          FieldName = 'OTHERS'
          Column = grid_jodetailDBBandedTableView1OTHERS
        end
        item
          Format = '###,###,##0.00'
          Kind = skSum
          FieldName = 'NETPAY'
          Column = grid_jodetailDBBandedTableView1NETPAY
        end
        item
          Format = '###,###,##0.00'
          Kind = skSum
          FieldName = 'ABSENCES'
          Column = grid_jodetailDBBandedTableView1ABSENCES
        end
        item
          Kind = skSum
          FieldName = 'HRSLATE'
          Column = grid_jodetailDBBandedTableView1HRSLATE
        end
        item
          Kind = skSum
          FieldName = 'DAYSABSENT'
          Column = grid_jodetailDBBandedTableView1DAYSABSENT
        end
        item
          Format = '###,###,##0.00'
          Kind = skSum
          FieldName = 'CA'
          Column = grid_jodetailDBBandedTableView1CA
        end
        item
          Format = '###,###,##0.00'
          Kind = skSum
          FieldName = 'PAIDAMNT'
          Column = grid_jodetailDBBandedTableView1PAIDAMNT
        end
        item
          Format = '###,###,##0.00'
          Kind = skSum
          FieldName = 'BALAMNT'
          Column = grid_jodetailDBBandedTableView1BALAMNT
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Inserting = False
      OptionsView.NoDataToDisplayInfoText = 'No Data To Display'
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      Styles.Header = Header_style
      Styles.BandHeader = band_style
      Bands = <
        item
          Caption = 'EMPLOYEE DETAIL'
          Width = 513
        end
        item
          Caption = 'ADDITIONS'
          Width = 101
        end
        item
          Caption = 'DEDUCTIONS'
          Width = 408
        end
        item
          Width = 57
        end
        item
          Caption = 'PAYMENT'
          Width = 107
        end>
      object grid_jodetailDBBandedTableView1IDNO: TcxGridDBBandedColumn
        Caption = 'ID NO.'
        DataBinding.FieldName = 'IDNO'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 25
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object grid_jodetailDBBandedTableView1EMPID: TcxGridDBBandedColumn
        Caption = 'EMPLOYEE'
        DataBinding.FieldName = 'EMPID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'EMPNAME'
          end>
        Properties.ListSource = ds_emp
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 111
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object grid_jodetailDBBandedTableView1ROLE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ROLE'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 67
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object grid_jodetailDBBandedTableView1SCHED: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SCHED'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 44
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object grid_jodetailDBBandedTableView1FREQ: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODE'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.ImmediatePost = True
        Properties.Items = <
          item
            Description = 'DAILY'
            ImageIndex = 0
            Value = 'D'
          end
          item
            Description = 'FIXED'
            Value = 'F'
          end
          item
            Description = 'PER PIECE'
            Value = 'P'
          end>
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 59
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object grid_jodetailDBBandedTableView1NOPIECES: TcxGridDBBandedColumn
        Caption = 'PIECES'
        DataBinding.FieldName = 'NOPIECES'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 53
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object grid_jodetailDBBandedTableView1NODAYS: TcxGridDBBandedColumn
        Caption = 'NO. DAYS'
        DataBinding.FieldName = 'NODAYS'
        HeaderAlignmentHorz = taCenter
        Options.Filtering = False
        Options.Sorting = False
        Width = 58
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object grid_jodetailDBBandedTableView1RATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'RATE'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 58
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object grid_jodetailDBBandedTableView1BASICPAY: TcxGridDBBandedColumn
        Caption = 'BASIC PAY'
        DataBinding.FieldName = 'BASICPAY'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 66
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object grid_jodetailDBBandedTableView1ALLOWANCES: TcxGridDBBandedColumn
        Caption = 'ALLOW.'
        DataBinding.FieldName = 'ALLOWANCES'
        HeaderAlignmentHorz = taCenter
        Options.Filtering = False
        Options.Sorting = False
        Width = 65
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object grid_jodetailDBBandedTableView1BACKWAGE: TcxGridDBBandedColumn
        Caption = 'B.W.'
        DataBinding.FieldName = 'BACKWAGE'
        HeaderAlignmentHorz = taCenter
        Options.Filtering = False
        Options.Sorting = False
        Width = 75
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object grid_jodetailDBBandedTableView1HRSLATE: TcxGridDBBandedColumn
        Caption = 'MIN. LATE'
        DataBinding.FieldName = 'HRSLATE'
        HeaderAlignmentHorz = taCenter
        Options.Filtering = False
        Options.Sorting = False
        Width = 56
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object grid_jodetailDBBandedTableView1LATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LATE'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 43
        Position.BandIndex = 2
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object grid_jodetailDBBandedTableView1DAYSABSENT: TcxGridDBBandedColumn
        Caption = 'DAYS'
        DataBinding.FieldName = 'DAYSABSENT'
        HeaderAlignmentHorz = taCenter
        Options.Filtering = False
        Options.Sorting = False
        Width = 42
        Position.BandIndex = 2
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object grid_jodetailDBBandedTableView1ABSENCES: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ABSENCES'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 60
        Position.BandIndex = 2
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object grid_jodetailDBBandedTableView1CA: TcxGridDBBandedColumn
        Caption = 'CASH ADV.'
        DataBinding.FieldName = 'CA'
        HeaderAlignmentHorz = taCenter
        Options.Filtering = False
        Options.Sorting = False
        Width = 76
        Position.BandIndex = 2
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object grid_jodetailDBBandedTableView1SSS: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SSS'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 36
        Position.BandIndex = 2
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object grid_jodetailDBBandedTableView1PAGIBIG: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PAGIBIG'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 29
        Position.BandIndex = 2
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object grid_jodetailDBBandedTableView1PHILHEALTH: TcxGridDBBandedColumn
        Caption = 'PHILHEALTH'
        DataBinding.FieldName = 'PHIC'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 35
        Position.BandIndex = 2
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object grid_jodetailDBBandedTableView1OTHERS: TcxGridDBBandedColumn
        DataBinding.FieldName = 'OTHERS'
        HeaderAlignmentHorz = taCenter
        Options.Filtering = False
        Options.Sorting = False
        Width = 30
        Position.BandIndex = 2
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object grid_jodetailDBBandedTableView1NETPAY: TcxGridDBBandedColumn
        Caption = 'NET PAY'
        DataBinding.FieldName = 'NETPAY'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 50
        Position.BandIndex = 3
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object grid_jodetailDBBandedTableView1PAIDAMNT: TcxGridDBBandedColumn
        Caption = 'PAID'
        DataBinding.FieldName = 'PAIDAMNT'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 45
        Position.BandIndex = 4
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object grid_jodetailDBBandedTableView1BALAMNT: TcxGridDBBandedColumn
        Caption = 'BALANCE'
        DataBinding.FieldName = 'BALAMNT'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 57
        Position.BandIndex = 4
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = grid_jodetailDBBandedTableView1
    end
  end
  object scToolBar2: TscToolBar
    Left = 0
    Top = 0
    Width = 1184
    Height = 38
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    AutoSize = True
    ButtonHeight = 38
    ButtonWidth = 134
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
    TabOrder = 2
    Transparent = True
    StyleElements = []
    object btnEmp: TToolButton
      Left = 5
      Top = 0
      Action = AddEmployee
      AutoSize = True
    end
    object ToolButton8: TToolButton
      Left = 137
      Top = 0
      Width = 8
      Caption = 'ToolButton8'
      ImageIndex = 6
      Style = tbsSeparator
    end
    object btnComp: TToolButton
      Left = 145
      Top = 0
      Action = Compute
      AutoSize = True
    end
    object ToolButton9: TToolButton
      Left = 239
      Top = 0
      Width = 8
      Caption = 'ToolButton9'
      ImageIndex = 6
      Style = tbsSeparator
    end
    object btnPost: TToolButton
      Left = 247
      Top = 0
      Action = Post
      AutoSize = True
    end
    object ToolButton10: TToolButton
      Left = 313
      Top = 0
      Width = 8
      Caption = 'ToolButton10'
      ImageIndex = 6
      Style = tbsSeparator
    end
    object btnPrint: TToolButton
      Left = 321
      Top = 0
      Action = Print
      AutoSize = True
      DropdownMenu = PopupMenu2
      Style = tbsDropDown
    end
    object ToolButton11: TToolButton
      Left = 409
      Top = 0
      Width = 8
      Caption = 'ToolButton11'
      ImageIndex = 6
      Style = tbsSeparator
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 428
    Width = 1184
    Height = 37
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 3
    DesignSize = (
      1184
      37)
    object lblPosted: TLabel
      Left = 13
      Top = 5
      Width = 74
      Height = 25
      Caption = 'POSTED'
      Color = clGray
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -19
      Font.Name = 'Segoe UI Black'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      StyleElements = []
    end
    object btnSave: TButton
      Left = 1003
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Save'
      Default = True
      Images = sCharImageList1
      ModalResult = 1
      TabOrder = 0
    end
    object Button2: TButton
      Left = 1083
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = 'Cancel'
      Images = sCharImageList1
      ModalResult = 2
      TabOrder = 1
    end
  end
  object ActionList1: TActionList
    Images = sCharImageList1
    Left = 288
    Top = 192
    object AddEmployee: TAction
      Caption = 'Add Employees'
      ImageIndex = 0
      OnExecute = AddEmployeeExecute
    end
    object Compute: TAction
      Caption = 'Compute'
      ImageIndex = 1
      OnExecute = ComputeExecute
    end
    object Post: TAction
      Caption = 'Post'
      ImageIndex = 2
      OnExecute = PostExecute
    end
    object Print: TAction
      Caption = 'Print'
      ImageIndex = 3
      OnExecute = PrintExecute
    end
    object Save: TAction
      Caption = 'Save'
    end
    object Cancel: TAction
      Caption = 'Cancel'
      OnExecute = CancelExecute
    end
    object Payslip: TAction
      Caption = 'Pay Slip'
      OnExecute = PayslipExecute
    end
    object PayrollSum: TAction
      Caption = 'Payroll Summary'
      OnExecute = PayrollSumExecute
    end
    object ViewParticular: TAction
      Caption = 'View Particular'
      OnExecute = ViewParticularExecute
    end
    object Delete: TAction
      Caption = 'Delete'
      OnExecute = DeleteExecute
    end
    object ViewCA: TAction
      Caption = 'View Cash Advances'
      OnExecute = ViewCAExecute
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 224
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
    object band_style: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clTeal
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
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
    Left = 328
    Top = 192
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 368
    Top = 192
    object Delete1: TMenuItem
      Action = Delete
    end
    object ViewParticular1: TMenuItem
      Action = ViewParticular
    end
    object ViewCA1: TMenuItem
      Action = ViewCA
    end
  end
  object ds_PayrollDetail: TDataSource
    DataSet = dm_PM.tb_PayDetail
    Left = 256
    Top = 192
  end
  object sCharImageList1: TsCharImageList
    EmbeddedFonts = <
      item
        FontName = 'FontAwesome'
        FontData = {}
      end>
    Items = <
      item
        Char = 62004
      end
      item
        Char = 61784
      end
      item
        Char = 61510
      end
      item
        Char = 61487
      end
      item
        Char = 62004
        Color = clSilver
      end
      item
        Char = 61784
        Color = clSilver
      end
      item
        Char = 61510
        Color = clSilver
      end
      item
        Char = 61487
        Color = clSilver
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
  object ds_payreg: TDataSource
    DataSet = dm_PM.qry_Payroll
    Left = 464
    Top = 192
  end
  object ds_emp: TDataSource
    DataSet = dm_PM.brw_Emp1
    Left = 504
    Top = 192
  end
  object PopupMenu2: TPopupMenu
    Left = 544
    Top = 192
    object P1: TMenuItem
      Action = PayrollSum
    end
    object P2: TMenuItem
      Action = Payslip
    end
  end
end
