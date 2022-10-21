object f_AddEmp: Tf_AddEmp
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Add Employees'
  ClientHeight = 364
  ClientWidth = 757
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
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 757
    Height = 49
    Align = alTop
    BevelOuter = bvNone
    Color = clTeal
    ParentBackground = False
    TabOrder = 0
    StyleElements = []
    object Label3: TLabel
      Left = 13
      Top = 14
      Width = 112
      Height = 17
      Caption = 'Search Employee :'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      StyleElements = []
    end
    object txt_search: TButtonedEdit
      Left = 131
      Top = 10
      Width = 309
      Height = 25
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
      RightButton.HotImageIndex = 0
      RightButton.ImageIndex = 0
      RightButton.PressedImageIndex = 0
      RightButton.Visible = True
      TabOrder = 0
      TextHint = 'Search ...'
      StyleElements = []
      OnKeyPress = txt_searchKeyPress
      OnRightButtonClick = txt_searchRightButtonClick
    end
    object rad_weekly: TcxRadioButton
      Left = 464
      Top = 15
      Width = 57
      Height = 17
      Caption = 'Weekly'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object rad_twice: TcxRadioButton
      Left = 544
      Top = 15
      Width = 97
      Height = 17
      Caption = 'Twice a Week'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object rad_monthly: TcxRadioButton
      Left = 647
      Top = 15
      Width = 97
      Height = 17
      Caption = 'Monthly'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
  end
  object scGPPageControl1: TscGPPageControl
    Left = 0
    Top = 49
    Width = 757
    Height = 278
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe Print'
    Font.Style = [fsBold]
    ParentFont = False
    FluentUIOpaque = False
    TabOrder = 1
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
        Page = scGPPageControlPage3
        Visible = True
        Enabled = True
        ImageIndex = -1
        Caption = 'Select Employee'
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
    ActivePage = scGPPageControlPage3
    StorePaintBuffer = False
    FreeOnClose = False
    object scGPPageControlPage3: TscGPPageControlPage
      Left = 0
      Top = 30
      Width = 757
      Height = 248
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
        Width = 757
        Height = 248
        Align = alClient
        BevelInner = bvNone
        BevelOuter = bvNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'VisualStudio2013Light'
        object cxGridDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = ds_emp
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '###,###,##0'
              Kind = skCount
              FieldName = 'EMPNAME'
              Column = cxGridDBTableView1EMPNAME
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Appending = True
          OptionsView.FocusRect = False
          OptionsView.NoDataToDisplayInfoText = 'No Data To Display'
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          Styles.Selection = select_style
          Styles.Header = Header_style
          object cxGridDBTableView1IDNO: TcxGridDBColumn
            Caption = 'ID NO.'
            DataBinding.FieldName = 'IDNO'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Width = 40
          end
          object cxGridDBTableView1EMPNAME: TcxGridDBColumn
            Caption = 'EMPLOYEE'
            DataBinding.FieldName = 'EMPNAME'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Width = 268
          end
          object cxGridDBTableView1ROLE: TcxGridDBColumn
            DataBinding.FieldName = 'ROLE'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Width = 140
          end
          object cxGridDBTableView1FREQUENCY: TcxGridDBColumn
            Caption = 'SCHED'
            DataBinding.FieldName = 'FREQUENCY'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Width = 109
          end
          object cxGridDBTableView1MODEOFCOMP: TcxGridDBColumn
            Caption = 'MODE'
            DataBinding.FieldName = 'MODEOFCOMP'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.ImmediatePost = True
            Properties.Items = <
              item
                Description = 'PER PIECE'
                ImageIndex = 0
                Value = 'P'
              end
              item
                Description = 'DAILY'
                Value = 'D'
              end
              item
                Description = 'FIXED'
                Value = 'F'
              end>
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Width = 115
          end
          object cxGridDBTableView1SELECT: TcxGridDBColumn
            DataBinding.FieldName = 'SELECT'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.DisplayChecked = 'True'
            Properties.DisplayUnchecked = 'True'
            Properties.NullStyle = nssUnchecked
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Filtering = False
            Options.Sorting = False
            Width = 83
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 327
    Width = 757
    Height = 37
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    DesignSize = (
      757
      37)
    object Button1: TButton
      Left = 589
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'OK'
      Default = True
      ModalResult = 1
      TabOrder = 0
    end
    object Button2: TButton
      Left = 676
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 1
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 456
    Top = 112
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
  object ds_emp: TDataSource
    DataSet = dm_PM.tb_Emp
    Left = 400
    Top = 112
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
        OffsetY = 1
        Char = 61442
      end>
    Left = 360
    Top = 112
    Bitmap = {
      494C010100000800080001000100FFFFFFFF0400FFFFFFFFFFFFFFFF424D7600
      0000000000007600000028000000040000000100000001000400000000000400
      0000000000000000000000000000000000000000000000008000008000000080
      8000800000008000800080800000C0C0C000808080000000FF0000FF000000FF
      FF00FF000000FF00FF00FFFF0000FFFFFF0000000000}
  end
  object ActionList1: TActionList
    Left = 312
    Top = 111
  end
end
