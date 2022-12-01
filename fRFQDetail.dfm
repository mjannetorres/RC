object f_RFQTemp: Tf_RFQTemp
  Left = 0
  Top = 0
  Caption = 'Quotation'
  ClientHeight = 498
  ClientWidth = 944
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 441
    Width = 944
    Height = 57
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitTop = 344
    ExplicitWidth = 855
    DesignSize = (
      944
      57)
    object btnSave: TButton
      Left = 776
      Top = 21
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = '&Save'
      Default = True
      ModalResult = 1
      TabOrder = 0
      ExplicitLeft = 687
    end
    object btnCancel: TButton
      Left = 854
      Top = 21
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = '&Cancel'
      ModalResult = 2
      TabOrder = 1
      ExplicitLeft = 765
    end
    object btnPrint: TButton
      Left = 13
      Top = 24
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
    Width = 944
    Height = 161
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
    ExplicitLeft = 8
    ExplicitTop = -6
    DesignSize = (
      944
      161)
    object Label3: TLabel
      Left = 13
      Top = 13
      Width = 34
      Height = 17
      Caption = 'Client'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 800
      Top = 16
      Width = 29
      Height = 17
      Anchors = [akTop, akRight]
      Caption = 'NO. '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI Black'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitLeft = 711
    end
    object Label5: TLabel
      Left = 801
      Top = 43
      Width = 28
      Height = 17
      Anchors = [akTop, akRight]
      Caption = 'Date'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitLeft = 712
    end
    object Label6: TLabel
      Left = 13
      Top = 98
      Width = 49
      Height = 17
      Caption = 'Address'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 13
      Top = 42
      Width = 72
      Height = 17
      Caption = 'Contact No.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 13
      Top = 71
      Width = 32
      Height = 17
      Caption = 'Email'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 389
      Top = 13
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
    object cxDBDateEdit1: TcxDBDateEdit
      Left = 835
      Top = 40
      Anchors = [akTop, akRight]
      DataBinding.DataField = 'CREATEDDATETIME'
      DataBinding.DataSource = ds_RFQ
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
      TabOrder = 5
      Width = 94
    end
    object cxDBLabel1: TcxDBLabel
      Left = 916
      Top = 10
      Anchors = [akTop, akRight]
      AutoSize = True
      DataBinding.DataField = 'ID'
      DataBinding.DataSource = ds_RFQ
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
      AnchorX = 929
    end
    object cxDBMemo1: TcxDBMemo
      Left = 91
      Top = 97
      DataBinding.DataField = 'ADDRESS'
      DataBinding.DataSource = ds_RFQ
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
      TabOrder = 3
      OnExit = cxDBTextEdit1Exit
      Height = 46
      Width = 269
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 91
      Top = 12
      DataBinding.DataField = 'CLIENT'
      DataBinding.DataSource = ds_RFQ
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
      OnExit = cxDBTextEdit1Exit
      Width = 269
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 91
      Top = 40
      DataBinding.DataField = 'CONTACTNO'
      DataBinding.DataSource = ds_RFQ
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
      OnExit = cxDBTextEdit1Exit
      Width = 269
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 91
      Top = 69
      DataBinding.DataField = 'EMAIL'
      DataBinding.DataSource = ds_RFQ
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
      TabOrder = 2
      OnExit = cxDBTextEdit1Exit
      Width = 269
    end
    object cxDBMemo2: TcxDBMemo
      Left = 445
      Top = 12
      DataBinding.DataField = 'REMARKS'
      DataBinding.DataSource = ds_RFQ
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
      TabOrder = 4
      OnExit = cxDBTextEdit1Exit
      Height = 68
      Width = 280
    end
  end
  object scGPPageControl1: TscGPPageControl
    Left = 0
    Top = 161
    Width = 944
    Height = 280
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe Print'
    Font.Style = [fsBold]
    ParentFont = False
    FluentUIOpaque = False
    TabOrder = 2
    StyleElements = []
    Color = 6570553
    DrawTextMode = scdtmGDI
    TabsBGFillColor = clWhite
    TabsBGFillColorAlpha = 255
    TransparentBackground = False
    FrameWidth = 0
    FrameScaleWidth = False
    FrameColor = clWhite
    FrameColorAlpha = 0
    BorderStyle = scgpbsLine
    MouseWheelSupport = True
    ShowFocusRect = True
    ShowInActiveTab = True
    ShowCloseButtons = False
    TabsLeftOffset = 0
    TabsRightOffset = 15
    TabsTopOffset = 0
    TabGlowEffect.Enabled = False
    TabGlowEffect.Color = clHighlight
    TabGlowEffect.AlphaValue = 255
    TabGlowEffect.GlowSize = 7
    TabGlowEffect.Offset = 0
    TabGlowEffect.Intensive = True
    TabGlowEffect.StyleColors = True
    TabGlowEffect.HotColor = clNone
    TabGlowEffect.PressedColor = clNone
    TabGlowEffect.FocusedColor = clNone
    TabGlowEffect.PressedGlowSize = 7
    TabGlowEffect.PressedAlphaValue = 255
    TabGlowEffect.States = [scsFocused]
    TabOptions.NormalColor = 6570553
    TabOptions.ActiveColor = clTeal
    TabOptions.MouseInColor = 6570553
    TabOptions.FocusedColor = clTeal
    TabOptions.NormalColorAlpha = 255
    TabOptions.ActiveColorAlpha = 230
    TabOptions.MouseInColorAlpha = 255
    TabOptions.FocusedColorAlpha = 255
    TabOptions.FrameNormalColor = clTeal
    TabOptions.FrameActiveColor = clTeal
    TabOptions.FrameMouseInColor = clTeal
    TabOptions.FrameFocusedColor = clTeal
    TabOptions.FrameWidth = 1
    TabOptions.FrameNormalColorAlpha = 50
    TabOptions.FrameActiveColorAlpha = 80
    TabOptions.FrameMouseInColorAlpha = 60
    TabOptions.FrameFocusedColorAlpha = 80
    TabOptions.FontNormalColor = clWhite
    TabOptions.FontActiveColor = clWhite
    TabOptions.FontMouseInColor = clWhite
    TabOptions.FontFocusedColor = clWhite
    TabOptions.TabStyle = gptsShape
    TabOptions.ShapeFillGradientAngle = 90
    TabOptions.GradientColorOffset = 30
    TabOptions.ShapeCornerRadius = 5
    TabOptions.StyleColors = True
    TabSpacing = 10
    TabMargin = 10
    ScrollButtonWidth = 20
    TabHeight = 30
    Tabs = <
      item
        Page = scGPPageControlPage1
        Visible = True
        Enabled = True
        ImageIndex = -1
        Caption = 'Quotation Details'
        CustomOptions.NormalColor = clBtnShadow
        CustomOptions.ActiveColor = clBtnFace
        CustomOptions.MouseInColor = clBtnShadow
        CustomOptions.FocusedColor = clBtnFace
        CustomOptions.NormalColorAlpha = 70
        CustomOptions.ActiveColorAlpha = 230
        CustomOptions.MouseInColorAlpha = 40
        CustomOptions.FocusedColorAlpha = 255
        CustomOptions.FrameNormalColor = clBtnText
        CustomOptions.FrameActiveColor = clBtnText
        CustomOptions.FrameMouseInColor = clBtnText
        CustomOptions.FrameFocusedColor = clBtnText
        CustomOptions.FrameWidth = 2
        CustomOptions.FrameNormalColorAlpha = 50
        CustomOptions.FrameActiveColorAlpha = 80
        CustomOptions.FrameMouseInColorAlpha = 60
        CustomOptions.FrameFocusedColorAlpha = 80
        CustomOptions.FontNormalColor = clBtnText
        CustomOptions.FontActiveColor = clBtnText
        CustomOptions.FontMouseInColor = clBtnText
        CustomOptions.FontFocusedColor = clBtnText
        CustomOptions.TabStyle = gptsShape
        CustomOptions.ShapeFillGradientAngle = 90
        CustomOptions.GradientColorOffset = 30
        CustomOptions.ShapeCornerRadius = 5
        CustomOptions.StyleColors = True
        CustomGlowEffect.Enabled = False
        CustomGlowEffect.Color = clHighlight
        CustomGlowEffect.AlphaValue = 255
        CustomGlowEffect.GlowSize = 7
        CustomGlowEffect.Offset = 0
        CustomGlowEffect.Intensive = True
        CustomGlowEffect.StyleColors = True
        CustomGlowEffect.HotColor = clNone
        CustomGlowEffect.PressedColor = clNone
        CustomGlowEffect.FocusedColor = clNone
        CustomGlowEffect.PressedGlowSize = 7
        CustomGlowEffect.PressedAlphaValue = 255
        CustomGlowEffect.States = [scsFocused]
        CustomFrameColor = clNone
        CustomFrameColorAlpha = 255
        ShowCloseButton = True
        UseCustomOptions = False
      end>
    TabIndex = 0
    ActivePage = scGPPageControlPage1
    StorePaintBuffer = False
    FreeOnClose = False
    ExplicitTop = 137
    ExplicitWidth = 837
    ExplicitHeight = 248
    object scGPPageControlPage1: TscGPPageControlPage
      Left = 0
      Top = 30
      Width = 944
      Height = 250
      HorzScrollBar.Tracking = True
      VertScrollBar.Tracking = True
      BorderStyle = bsNone
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 0
      WallpaperIndex = -1
      CustomBackgroundImageIndex = -1
      FluentUIOpaque = False
      StorePaintBuffer = False
      BGStyle = scgppsForm
      object grid_jodetail: TcxGrid
        Left = 0
        Top = 0
        Width = 944
        Height = 250
        Align = alClient
        BevelInner = bvNone
        BevelOuter = bvNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'VisualStudio2013Light'
        ExplicitTop = -6
        object cxGridDBTableView1: TcxGridDBTableView
          PopupMenu = PopupMenu1
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = ds_RFQDetail
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '###,###,##0'
              Kind = skCount
              FieldName = 'ITEMID'
              Column = cxGridDBTableView1SHIRTID
            end
            item
              Format = '###,###,##0'
              Kind = skSum
              FieldName = 'QTY'
              Column = cxGridDBTableView1QTY
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
          OptionsView.NoDataToDisplayInfoText = 'No Data To Display'
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          object cxGridDBTableView1SHIRTID: TcxGridDBColumn
            Caption = 'DESCRIPTION'
            DataBinding.FieldName = 'ITEMID'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.CharCase = ecUpperCase
            Properties.DropDownSizeable = True
            Properties.DropDownWidth = 500
            Properties.ImmediatePost = True
            Properties.KeyFieldNames = 'ID'
            Properties.ListColumns = <
              item
                Width = 300
                FieldName = 'DESCRIPTION'
              end
              item
                FieldName = 'CODE'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = ds_garment
            Properties.OnCloseUp = cxGridDBTableView1SHIRTIDPropertiesCloseUp
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Options.Sorting = False
            Styles.Header = Header_style
            Width = 269
          end
          object cxGridDBTableView1FABRICID: TcxGridDBColumn
            Caption = 'FABRIC'
            DataBinding.FieldName = 'FABRICID'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.CharCase = ecUpperCase
            Properties.ImmediatePost = True
            Properties.KeyFieldNames = 'ID'
            Properties.ListColumns = <
              item
                FieldName = 'DESCRIPTION'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = ds_farbric
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Styles.Header = Header_style
            Width = 146
          end
          object cxGridDBTableView1UNIT: TcxGridDBColumn
            DataBinding.FieldName = 'UNIT'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Styles.Header = Header_style
            Width = 95
          end
          object cxGridDBTableView1QTY: TcxGridDBColumn
            DataBinding.FieldName = 'QTY'
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Options.Sorting = False
            Styles.Header = Header_style
            Width = 100
          end
          object cxGridDBTableView1COST: TcxGridDBColumn
            DataBinding.FieldName = 'COST'
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Options.Sorting = False
            Styles.Header = Header_style
            Width = 98
          end
          object cxGridDBTableView1TOTAL: TcxGridDBColumn
            DataBinding.FieldName = 'TOTAL'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Styles.Header = Header_style
            Width = 98
          end
          object cxGridDBTableView1REMARKS: TcxGridDBColumn
            DataBinding.FieldName = 'REMARKS'
            PropertiesClassName = 'TcxTextEditProperties'
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Options.Sorting = False
            Styles.Header = Header_style
            Width = 136
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
    end
  end
  object ds_RFQ: TDataSource
    DataSet = dm_PM.qry_RFQ
    Left = 200
    Top = 208
  end
  object ds_RFQDetail: TDataSource
    DataSet = dm_PM.tb_RFQDetail
    Left = 248
    Top = 208
  end
  object ds_garment: TDataSource
    DataSet = dm_PM.brw_Garments
    Left = 296
    Top = 208
  end
  object ds_farbric: TDataSource
    DataSet = dm_PM.brw_Fabrics
    Left = 328
    Top = 208
  end
  object ActionList1: TActionList
    Left = 440
    Top = 208
    object Delete: TAction
      Caption = 'Delete'
      OnExecute = DeleteExecute
    end
    object AddClient: TAction
      Caption = 'AddClient'
    end
    object Print: TAction
      Caption = 'Print'
      OnExecute = PrintExecute
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 520
    Top = 208
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
  object PopupMenu1: TPopupMenu
    Left = 480
    Top = 208
    object Delete1: TMenuItem
      Action = Delete
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
    Left = 568
    Top = 208
    Datasets = <>
    Variables = <>
    Style = <>
  end
end
