object f_PettyCashTemp: Tf_PettyCashTemp
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Petty Cash'
  ClientHeight = 491
  ClientWidth = 871
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
  TextHeight = 14
  object Panel2: TPanel
    Left = 0
    Top = 450
    Width = 871
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      871
      41)
    object btnSave: TButton
      Left = 700
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
      Left = 781
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
      Left = 17
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
    Width = 871
    Height = 153
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
      871
      153)
    object Label1: TLabel
      Left = 712
      Top = 9
      Width = 49
      Height = 17
      Anchors = [akTop, akRight]
      Caption = 'Ref No.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI Black'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitLeft = 722
    end
    object Label4: TLabel
      Left = 729
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
    end
    object Label6: TLabel
      Left = 375
      Top = 11
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
      Left = 17
      Top = 12
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
    object date_date: TcxDBDateEdit
      Left = 762
      Top = 34
      Anchors = [akTop, akRight]
      DataBinding.DataField = 'PAYDATE'
      DataBinding.DataSource = ds_Petty
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
      TabOrder = 2
      OnExit = UIExecute
      Width = 94
    end
    object date_posted: TcxDBDateEdit
      Left = 762
      Top = 60
      Anchors = [akTop, akRight]
      DataBinding.DataField = 'POSTEDDATETIME'
      DataBinding.DataSource = ds_Petty
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
      TabOrder = 4
      OnExit = UIExecute
      Width = 94
    end
    object cxDBLabel1: TcxDBLabel
      Left = 769
      Top = 4
      Anchors = [akTop, akRight]
      AutoSize = True
      DataBinding.DataField = 'ID'
      DataBinding.DataSource = ds_Petty
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
      AnchorX = 856
    end
    object txt_notes: TcxDBMemo
      Left = 415
      Top = 11
      DataBinding.DataField = 'NOTES'
      DataBinding.DataSource = ds_Petty
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
      TabOrder = 1
      OnExit = UIExecute
      Height = 95
      Width = 250
    end
    object chk_posted: TcxDBCheckBox
      Left = 690
      Top = 60
      Anchors = [akTop, akRight]
      AutoSize = False
      Caption = 'Posted'
      DataBinding.DataField = 'POSTED'
      DataBinding.DataSource = ds_Petty
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
      TabOrder = 3
      OnClick = chk_postedClick
      OnExit = UIExecute
      Height = 25
      Width = 71
    end
    object btnLoad: TscGPCharImage
      Left = 333
      Top = 12
      Width = 30
      Height = 21
      Cursor = crHandPoint
      FluentUIOpaque = False
      TabOrder = 0
      OnClick = LoadExecute
      CustomImageIndex = -1
      DragForm = False
      DragTopForm = True
      StyleKind = scpsTransparent
      ShowCaption = False
      BorderStyle = scpbsNone
      WallpaperIndex = -1
      LightBorderColor = clBtnHighlight
      ShadowBorderColor = clBtnShadow
      CaptionGlowEffect.Enabled = False
      CaptionGlowEffect.Color = clBtnShadow
      CaptionGlowEffect.AlphaValue = 255
      CaptionGlowEffect.GlowSize = 7
      CaptionGlowEffect.Offset = 0
      CaptionGlowEffect.Intensive = True
      CaptionGlowEffect.StyleColors = True
      Color = clBtnFace
      Caption = 'btnLoad'
      StorePaintBuffer = False
      DrawTextMode = scdtmGDI
      ImageColor = clBtnText
      ImageColorAlpha = 255
      ImageSize = 20
      ImageIndex = 25
      Frame = scgpcfRoundedRect
      FrameRadius = 5
      FrameFillColor = 6570553
      FrameFillColorAlpha = 0
      FrameColor = 1184274
      FrameWidth = 1
      RotationAngle = 0
      AnimationAcceleration = False
      RotateAnimation = False
    end
    object rad_source: TcxDBRadioGroup
      Left = 64
      Top = 12
      Alignment = alCenterCenter
      Caption = 'SOURCE'
      DataBinding.DataField = 'SOURCE'
      DataBinding.DataSource = ds_Petty
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      Properties.Columns = 2
      Properties.DefaultValue = 'O'
      Properties.ImmediatePost = True
      Properties.Items = <
        item
          Caption = 'LAYOUT/DESIGN'
          Value = 'D'
        end
        item
          Caption = 'PRINTING'
          Value = 'P'
        end
        item
          Caption = 'FIRST CUTTING'
          Value = 'F'
        end
        item
          Caption = 'HEAT PRESS'
          Value = 'H'
        end
        item
          Caption = 'FINAL CUTTING'
          Value = 'L'
        end
        item
          Caption = 'SEWING'
          Value = 'S'
        end
        item
          Caption = 'OTHERS'
          Value = 'O'
        end>
      Properties.WordWrap = True
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
      TabOrder = 6
      Height = 94
      Width = 263
    end
  end
  object grid_jodetail: TcxGrid
    Left = 0
    Top = 153
    Width = 871
    Height = 297
    Align = alClient
    BevelInner = bvNone
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
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
          FieldName = 'REFID'
          Column = cxGridDBTableView1REFID
        end
        item
          Format = '###,###,##0.00'
          Kind = skSum
          FieldName = 'AMOUNT'
          Column = cxGridDBTableView1AMOUNT
        end
        item
          Format = '###,###,##0.00'
          Kind = skSum
          FieldName = 'NETAMNT'
          Column = cxGridDBTableView1NETAMNT
        end
        item
          Format = '###,###,##0.00'
          Kind = skSum
          FieldName = 'BALANCE'
          Column = cxGridDBTableView1BALANCE
        end
        item
          Format = '###,###,##0.00'
          Kind = skSum
          FieldName = 'PAIDAMNT'
          Column = cxGridDBTableView1PAIDAMNT
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Inserting = False
      OptionsView.NoDataToDisplayInfoText = 'No Data To Display'
      OptionsView.CellAutoHeight = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      Styles.Header = Header_style
      object cxGridDBTableView1REFID: TcxGridDBColumn
        Caption = 'CPR NO.'
        DataBinding.FieldName = 'REFID'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
      end
      object cxGridDBTableView1REFDATE: TcxGridDBColumn
        Caption = 'REQ DATE.'
        DataBinding.FieldName = 'REFDATE'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 82
      end
      object cxGridDBTableView1AMOUNT: TcxGridDBColumn
        DataBinding.FieldName = 'AMOUNT'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 85
      end
      object cxGridDBTableView1PAIDAMNT: TcxGridDBColumn
        Caption = 'PAID AMNT.'
        DataBinding.FieldName = 'PAIDAMNT'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 80
      end
      object cxGridDBTableView1NETAMNT: TcxGridDBColumn
        Caption = 'NET AMNT.'
        DataBinding.FieldName = 'NETAMNT'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ValidateOnEnter = True
        Properties.OnValidate = cxGridDBTableView1NETAMNTPropertiesValidate
        HeaderAlignmentHorz = taCenter
        Options.Filtering = False
        Options.Sorting = False
        Width = 91
      end
      object cxGridDBTableView1BALANCE: TcxGridDBColumn
        DataBinding.FieldName = 'BALANCE'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 92
      end
      object cxGridDBTableView1FP: TcxGridDBColumn
        DataBinding.FieldName = 'FP'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 44
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBTableView1
    end
  end
  object ds_Petty: TDataSource
    DataSet = dm_PM.qry_PettyCash
    Left = 224
    Top = 192
  end
  object ActionList1: TActionList
    Left = 456
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
    object Load: TAction
      Caption = 'Load'
      OnExecute = LoadExecute
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
      Font.Height = -13
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
    DataSet = dm_PM.tb_PettyDetail
    Left = 264
    Top = 192
  end
  object PopupMenu1: TPopupMenu
    Left = 536
    Top = 192
    object Delete1: TMenuItem
      Action = Delete
    end
  end
  object ds_vendor: TDataSource
    DataSet = dm_PM.brw_Vendor
    Left = 312
    Top = 192
  end
end
