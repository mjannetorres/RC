object f_menu: Tf_menu
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 
    'RC Digital Prints and Garments Project Management System Build 1' +
    '.0'
  ClientHeight = 727
  ClientWidth = 1104
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  Padding.Left = 10
  Padding.Top = 10
  Padding.Right = 10
  OldCreateOrder = False
  Position = poDesktopCenter
  StyleElements = [seFont, seClient]
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Splitter1: TSplitter
    Left = 10
    Top = 177
    Width = 1084
    Height = 1
    Cursor = crVSplit
    Align = alTop
    Beveled = True
    Color = clGray
    ParentColor = False
    StyleElements = []
    ExplicitTop = 168
    ExplicitWidth = 1018
  end
  object StatusBar1: TStatusBar
    Left = 10
    Top = 708
    Width = 1084
    Height = 19
    Panels = <
      item
        Text = 'User Logged In :'
        Width = 500
      end
      item
        Alignment = taRightJustify
        Text = 'Date and Time'
        Width = 500
      end>
  end
  object scGPToolPager1: TscGPToolPager
    Left = 10
    Top = 44
    Width = 1084
    Height = 133
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    FluentUIOpaque = False
    TabOrder = 1
    TabStop = True
    Color = clBtnFace
    DrawTextMode = scdtmGDI
    TabsBGFillColor = 10114859
    TabsBGFillColorAlpha = 0
    TransparentBackground = True
    FrameWidth = 0
    FrameScaleWidth = True
    FrameColor = clWhite
    FrameColorAlpha = 70
    BorderStyle = scgpbsNone
    MouseWheelSupport = True
    ShowFocusRect = True
    ShowInActiveTab = False
    ShowCloseButtons = False
    TabsLeftOffset = 10
    TabsRightOffset = 80
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
    TabOptions.NormalColor = clBtnShadow
    TabOptions.ActiveColor = clWhite
    TabOptions.MouseInColor = clWindowText
    TabOptions.FocusedColor = clWhite
    TabOptions.NormalColorAlpha = 50
    TabOptions.ActiveColorAlpha = 0
    TabOptions.MouseInColorAlpha = 20
    TabOptions.FocusedColorAlpha = 0
    TabOptions.FrameNormalColor = clHighlight
    TabOptions.FrameActiveColor = clHighlight
    TabOptions.FrameMouseInColor = clHighlight
    TabOptions.FrameFocusedColor = clHighlight
    TabOptions.FrameWidth = 4
    TabOptions.FrameNormalColorAlpha = 70
    TabOptions.FrameActiveColorAlpha = 200
    TabOptions.FrameMouseInColorAlpha = 0
    TabOptions.FrameFocusedColorAlpha = 255
    TabOptions.FontNormalColor = clWindowText
    TabOptions.FontActiveColor = clWindowText
    TabOptions.FontMouseInColor = clWindowText
    TabOptions.FontFocusedColor = clWindowText
    TabOptions.TabStyle = gptsBottomLine
    TabOptions.ShapeFillGradientAngle = 90
    TabOptions.GradientColorOffset = 30
    TabOptions.ShapeCornerRadius = 0
    TabOptions.StyleColors = True
    TabSpacing = 10
    TabMargin = 1
    ScrollButtonWidth = 20
    TabHeight = 35
    Tabs = <
      item
        Page = scGPToolPagerPage7
        Visible = True
        Enabled = True
        ImageIndex = -1
        Caption = '      System       '
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
      end
      item
        Page = scGPToolPagerPage1
        Visible = True
        Enabled = True
        ImageIndex = -1
        Caption = 'Project Management'
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
      end
      item
        Page = scGPToolPagerPage2
        Visible = True
        Enabled = True
        ImageIndex = -1
        Caption = '      Sales       '
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
      end
      item
        Page = scGPToolPagerPage3
        Visible = True
        Enabled = True
        ImageIndex = -1
        Caption = '       Inventory      '
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
      end
      item
        Page = scGPToolPagerPage4
        Visible = True
        Enabled = True
        ImageIndex = -1
        Caption = '    Purchasing    '
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
      end
      item
        Page = scGPToolPagerPage5
        Visible = True
        Enabled = True
        ImageIndex = -1
        Caption = '     Disbursement    '
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
      end
      item
        Page = scGPToolPagerPage6
        Visible = False
        Enabled = True
        ImageIndex = -1
        Caption = '     Payroll     '
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
    TabIndex = 2
    ActivePage = scGPToolPagerPage2
    FreeOnClose = False
    StorePaintBuffer = True
    object scGPToolPagerPage4: TscGPToolPagerPage
      Left = 0
      Top = 35
      Width = 1084
      Height = 98
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      Padding.Left = 10
      Padding.Right = 10
      Padding.Bottom = 5
      ParentFont = False
      FluentUIOpaque = False
      TabOrder = 4
      Visible = False
      CanScroll = True
      FillGradientAngle = 90
      FillGradientBeginAlpha = 255
      FillGradientEndAlpha = 255
      FillGradientBeginColorOffset = 25
      FillGradientEndColorOffset = 25
      FillColor = clNone
      FillColorAlpha = 255
      FillColor2 = clNone
      Color = clBtnFace
      BGStyleKind = scgspbFormBackground
      ScrollButtonWidth = 17
      CustomImageIndex = -1
      WallpaperIndex = -1
      HotScroll = False
      AutoSize = False
      ScrollType = scstHorizontal
      ScrollOffset = 0
      ScrollTimerInterval = 50
      ScrollButtonArrowWidth = 2
      HorzScrollDirection = scgspsdLeftToRight
      VertScrollDirection = scgspsdTopToBottom
      TouchScroll = False
      StorePaintBuffer = False
      object scGPToolGroupPanel9: TscGPToolGroupPanel
        Left = 10
        Top = 0
        Width = 343
        Height = 93
        Align = alLeft
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FluentUIOpaque = False
        TabOrder = 0
        Caption = 'Purchasing Tool'
        CaptionHeight = 17
        CaptionFontColor = clGray
        CaptionFontDisabledColor = clNone
        DrawTextMode = scdtmGDI
        DialogButtonColor = clWindowText
        ShowDialogButton = False
        StorePaintBuffer = True
        SeparatorColor = clWindowText
        SeparatorColorAlpha = 50
        object btnPO: TscGPButton
          Left = 107
          Top = 3
          Width = 110
          Height = 70
          Align = alLeft
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          FluentUIOpaque = False
          TabOrder = 0
          OnClick = POExecute
          Action = PO
          Animation = True
          Badge.Color = clRed
          Badge.ColorAlpha = 255
          Badge.Font.Charset = DEFAULT_CHARSET
          Badge.Font.Color = clWhite
          Badge.Font.Height = -12
          Badge.Font.Name = 'Tahoma'
          Badge.Font.Style = [fsBold]
          Badge.Visible = False
          CanFocused = False
          CustomDropDown = False
          DrawTextMode = scdtmGDI
          Margin = -1
          Spacing = 1
          Layout = blGlyphTop
          Images = scGPVirtualImageList1
          ImageIndex = 16
          ImageMargin = 0
          TransparentBackground = True
          Options.NormalColor = clNone
          Options.HotColor = clWindowText
          Options.PressedColor = clWindowText
          Options.FocusedColor = clNone
          Options.DisabledColor = clNone
          Options.NormalColor2 = clNone
          Options.HotColor2 = clNone
          Options.PressedColor2 = clNone
          Options.FocusedColor2 = clNone
          Options.DisabledColor2 = clNone
          Options.NormalColorAlpha = 255
          Options.HotColorAlpha = 30
          Options.PressedColorAlpha = 50
          Options.FocusedColorAlpha = 255
          Options.DisabledColorAlpha = 255
          Options.NormalColor2Alpha = 255
          Options.HotColor2Alpha = 255
          Options.PressedColor2Alpha = 255
          Options.FocusedColor2Alpha = 255
          Options.DisabledColor2Alpha = 255
          Options.FrameNormalColor = clNone
          Options.FrameHotColor = clNone
          Options.FramePressedColor = clNone
          Options.FrameFocusedColor = clNone
          Options.FrameDisabledColor = clNone
          Options.FrameWidth = 1
          Options.FrameNormalColorAlpha = 255
          Options.FrameHotColorAlpha = 255
          Options.FramePressedColorAlpha = 255
          Options.FrameFocusedColorAlpha = 255
          Options.FrameDisabledColorAlpha = 255
          Options.FontNormalColor = clWindowText
          Options.FontHotColor = clWindowText
          Options.FontPressedColor = clWindowText
          Options.FontFocusedColor = clWindowText
          Options.FontDisabledColor = clGray
          Options.ShapeFillGradientAngle = 90
          Options.ShapeFillGradientPressedAngle = -90
          Options.ShapeFillGradientColorOffset = 25
          Options.ShapeCornerRadius = 10
          Options.ShapeStyle = scgpRect
          Options.ArrowSize = 9
          Options.ArrowAreaSize = 0
          Options.ArrowType = scgpatDefault
          Options.ArrowThickness = 2
          Options.ArrowThicknessScaled = False
          Options.ArrowNormalColor = clWindowText
          Options.ArrowHotColor = clWindowText
          Options.ArrowPressedColor = clWindowText
          Options.ArrowFocusedColor = clWindowText
          Options.ArrowDisabledColor = clWindowText
          Options.ArrowNormalColorAlpha = 200
          Options.ArrowHotColorAlpha = 255
          Options.ArrowPressedColorAlpha = 255
          Options.ArrowFocusedColorAlpha = 200
          Options.ArrowDisabledColorAlpha = 125
          Options.StyleColors = True
          Options.PressedHotColors = False
          HotImageIndex = 16
          FluentLightEffect = False
          FocusedImageIndex = 16
          PressedImageIndex = 16
          UseGalleryMenuImage = False
          UseGalleryMenuCaption = False
          ScaleMarginAndSpacing = False
          WidthWithCaption = 0
          WidthWithoutCaption = 0
          SplitButton = False
          RepeatClick = False
          RepeatClickInterval = 100
          GlowEffect.Enabled = False
          GlowEffect.Color = clHighlight
          GlowEffect.AlphaValue = 255
          GlowEffect.GlowSize = 7
          GlowEffect.Offset = 0
          GlowEffect.Intensive = True
          GlowEffect.StyleColors = True
          GlowEffect.HotColor = clNone
          GlowEffect.PressedColor = clNone
          GlowEffect.FocusedColor = clNone
          GlowEffect.PressedGlowSize = 7
          GlowEffect.PressedAlphaValue = 255
          GlowEffect.States = [scsHot, scsPressed, scsFocused]
          ImageGlow = True
          ShowGalleryMenuFromTop = False
          ShowGalleryMenuFromRight = False
          ShowMenuArrow = True
          ShowFocusRect = True
          Down = False
          GroupIndex = 0
          AllowAllUp = False
        end
        object btnIR: TscGPButton
          Left = 217
          Top = 3
          Width = 110
          Height = 70
          Align = alLeft
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          FluentUIOpaque = False
          TabOrder = 1
          OnClick = IRExecute
          Action = IR
          Animation = True
          Badge.Color = clRed
          Badge.ColorAlpha = 255
          Badge.Font.Charset = DEFAULT_CHARSET
          Badge.Font.Color = clWhite
          Badge.Font.Height = -12
          Badge.Font.Name = 'Tahoma'
          Badge.Font.Style = [fsBold]
          Badge.Visible = False
          CanFocused = False
          CustomDropDown = False
          DrawTextMode = scdtmGDI
          Margin = -1
          Spacing = 1
          Layout = blGlyphTop
          Images = scGPVirtualImageList1
          ImageIndex = 12
          ImageMargin = 0
          TransparentBackground = True
          Options.NormalColor = clNone
          Options.HotColor = clWindowText
          Options.PressedColor = clWindowText
          Options.FocusedColor = clNone
          Options.DisabledColor = clNone
          Options.NormalColor2 = clNone
          Options.HotColor2 = clNone
          Options.PressedColor2 = clNone
          Options.FocusedColor2 = clNone
          Options.DisabledColor2 = clNone
          Options.NormalColorAlpha = 255
          Options.HotColorAlpha = 30
          Options.PressedColorAlpha = 50
          Options.FocusedColorAlpha = 255
          Options.DisabledColorAlpha = 255
          Options.NormalColor2Alpha = 255
          Options.HotColor2Alpha = 255
          Options.PressedColor2Alpha = 255
          Options.FocusedColor2Alpha = 255
          Options.DisabledColor2Alpha = 255
          Options.FrameNormalColor = clNone
          Options.FrameHotColor = clNone
          Options.FramePressedColor = clNone
          Options.FrameFocusedColor = clNone
          Options.FrameDisabledColor = clNone
          Options.FrameWidth = 1
          Options.FrameNormalColorAlpha = 255
          Options.FrameHotColorAlpha = 255
          Options.FramePressedColorAlpha = 255
          Options.FrameFocusedColorAlpha = 255
          Options.FrameDisabledColorAlpha = 255
          Options.FontNormalColor = clWindowText
          Options.FontHotColor = clWindowText
          Options.FontPressedColor = clWindowText
          Options.FontFocusedColor = clWindowText
          Options.FontDisabledColor = clGray
          Options.ShapeFillGradientAngle = 90
          Options.ShapeFillGradientPressedAngle = -90
          Options.ShapeFillGradientColorOffset = 25
          Options.ShapeCornerRadius = 10
          Options.ShapeStyle = scgpRect
          Options.ArrowSize = 9
          Options.ArrowAreaSize = 0
          Options.ArrowType = scgpatDefault
          Options.ArrowThickness = 2
          Options.ArrowThicknessScaled = False
          Options.ArrowNormalColor = clWindowText
          Options.ArrowHotColor = clWindowText
          Options.ArrowPressedColor = clWindowText
          Options.ArrowFocusedColor = clWindowText
          Options.ArrowDisabledColor = clWindowText
          Options.ArrowNormalColorAlpha = 200
          Options.ArrowHotColorAlpha = 255
          Options.ArrowPressedColorAlpha = 255
          Options.ArrowFocusedColorAlpha = 200
          Options.ArrowDisabledColorAlpha = 125
          Options.StyleColors = True
          Options.PressedHotColors = False
          HotImageIndex = 12
          FluentLightEffect = False
          FocusedImageIndex = 12
          PressedImageIndex = 12
          UseGalleryMenuImage = False
          UseGalleryMenuCaption = False
          ScaleMarginAndSpacing = False
          WidthWithCaption = 0
          WidthWithoutCaption = 0
          SplitButton = False
          RepeatClick = False
          RepeatClickInterval = 100
          GlowEffect.Enabled = False
          GlowEffect.Color = clHighlight
          GlowEffect.AlphaValue = 255
          GlowEffect.GlowSize = 7
          GlowEffect.Offset = 0
          GlowEffect.Intensive = True
          GlowEffect.StyleColors = True
          GlowEffect.HotColor = clNone
          GlowEffect.PressedColor = clNone
          GlowEffect.FocusedColor = clNone
          GlowEffect.PressedGlowSize = 7
          GlowEffect.PressedAlphaValue = 255
          GlowEffect.States = [scsHot, scsPressed, scsFocused]
          ImageGlow = True
          ShowGalleryMenuFromTop = False
          ShowGalleryMenuFromRight = False
          ShowMenuArrow = True
          ShowFocusRect = True
          Down = False
          GroupIndex = 0
          AllowAllUp = False
        end
        object btnCPR: TscGPButton
          Left = 3
          Top = 3
          Width = 104
          Height = 70
          Align = alLeft
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          FluentUIOpaque = False
          TabOrder = 2
          OnClick = MaterialRequestExecute
          Action = MaterialRequest
          Animation = True
          Badge.Color = clRed
          Badge.ColorAlpha = 255
          Badge.Font.Charset = DEFAULT_CHARSET
          Badge.Font.Color = clWhite
          Badge.Font.Height = -12
          Badge.Font.Name = 'Tahoma'
          Badge.Font.Style = [fsBold]
          Badge.Visible = False
          CanFocused = False
          CustomDropDown = False
          DrawTextMode = scdtmGDI
          Margin = -1
          Spacing = 1
          Layout = blGlyphTop
          Images = scGPVirtualImageList1
          ImageIndex = 10
          ImageMargin = 0
          TransparentBackground = True
          Options.NormalColor = clNone
          Options.HotColor = clWindowText
          Options.PressedColor = clWindowText
          Options.FocusedColor = clNone
          Options.DisabledColor = clNone
          Options.NormalColor2 = clNone
          Options.HotColor2 = clNone
          Options.PressedColor2 = clNone
          Options.FocusedColor2 = clNone
          Options.DisabledColor2 = clNone
          Options.NormalColorAlpha = 255
          Options.HotColorAlpha = 30
          Options.PressedColorAlpha = 50
          Options.FocusedColorAlpha = 255
          Options.DisabledColorAlpha = 255
          Options.NormalColor2Alpha = 255
          Options.HotColor2Alpha = 255
          Options.PressedColor2Alpha = 255
          Options.FocusedColor2Alpha = 255
          Options.DisabledColor2Alpha = 255
          Options.FrameNormalColor = clNone
          Options.FrameHotColor = clNone
          Options.FramePressedColor = clNone
          Options.FrameFocusedColor = clNone
          Options.FrameDisabledColor = clNone
          Options.FrameWidth = 1
          Options.FrameNormalColorAlpha = 255
          Options.FrameHotColorAlpha = 255
          Options.FramePressedColorAlpha = 255
          Options.FrameFocusedColorAlpha = 255
          Options.FrameDisabledColorAlpha = 255
          Options.FontNormalColor = clWindowText
          Options.FontHotColor = clWindowText
          Options.FontPressedColor = clWindowText
          Options.FontFocusedColor = clWindowText
          Options.FontDisabledColor = clGray
          Options.ShapeFillGradientAngle = 90
          Options.ShapeFillGradientPressedAngle = -90
          Options.ShapeFillGradientColorOffset = 25
          Options.ShapeCornerRadius = 10
          Options.ShapeStyle = scgpRect
          Options.ArrowSize = 9
          Options.ArrowAreaSize = 0
          Options.ArrowType = scgpatDefault
          Options.ArrowThickness = 2
          Options.ArrowThicknessScaled = False
          Options.ArrowNormalColor = clWindowText
          Options.ArrowHotColor = clWindowText
          Options.ArrowPressedColor = clWindowText
          Options.ArrowFocusedColor = clWindowText
          Options.ArrowDisabledColor = clWindowText
          Options.ArrowNormalColorAlpha = 200
          Options.ArrowHotColorAlpha = 255
          Options.ArrowPressedColorAlpha = 255
          Options.ArrowFocusedColorAlpha = 200
          Options.ArrowDisabledColorAlpha = 125
          Options.StyleColors = True
          Options.PressedHotColors = False
          HotImageIndex = 10
          FluentLightEffect = False
          FocusedImageIndex = 10
          PressedImageIndex = 10
          UseGalleryMenuImage = False
          UseGalleryMenuCaption = False
          ScaleMarginAndSpacing = False
          WidthWithCaption = 0
          WidthWithoutCaption = 0
          SplitButton = False
          RepeatClick = False
          RepeatClickInterval = 100
          GlowEffect.Enabled = False
          GlowEffect.Color = clHighlight
          GlowEffect.AlphaValue = 255
          GlowEffect.GlowSize = 7
          GlowEffect.Offset = 0
          GlowEffect.Intensive = True
          GlowEffect.StyleColors = True
          GlowEffect.HotColor = clNone
          GlowEffect.PressedColor = clNone
          GlowEffect.FocusedColor = clNone
          GlowEffect.PressedGlowSize = 7
          GlowEffect.PressedAlphaValue = 255
          GlowEffect.States = [scsHot, scsPressed, scsFocused]
          ImageGlow = True
          ShowGalleryMenuFromTop = False
          ShowGalleryMenuFromRight = False
          ShowMenuArrow = True
          ShowFocusRect = True
          Down = False
          GroupIndex = 0
          AllowAllUp = False
        end
      end
      object scGPToolGroupPanel15: TscGPToolGroupPanel
        Left = 353
        Top = 0
        Width = 112
        Height = 93
        Align = alLeft
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FluentUIOpaque = False
        TabOrder = 1
        CaptionHeight = 17
        CaptionFontColor = clGray
        CaptionFontDisabledColor = clNone
        DrawTextMode = scdtmGDI
        DialogButtonColor = clWindowText
        ShowDialogButton = False
        StorePaintBuffer = True
        SeparatorColor = clWindowText
        SeparatorColorAlpha = 50
        object scGPButton3: TscGPButton
          Left = 3
          Top = 3
          Width = 106
          Height = 70
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          FluentUIOpaque = False
          TabOrder = 0
          Animation = True
          Badge.Color = clRed
          Badge.ColorAlpha = 255
          Badge.Font.Charset = DEFAULT_CHARSET
          Badge.Font.Color = clWhite
          Badge.Font.Height = -12
          Badge.Font.Name = 'Tahoma'
          Badge.Font.Style = [fsBold]
          Badge.Visible = False
          Caption = 'Reports'
          CanFocused = False
          CustomDropDown = False
          DrawTextMode = scdtmGDI
          Margin = -1
          Spacing = 1
          Layout = blGlyphTop
          Images = scGPVirtualImageList1
          ImageIndex = 23
          ImageMargin = 0
          TransparentBackground = True
          Options.NormalColor = clNone
          Options.HotColor = clWindowText
          Options.PressedColor = clWindowText
          Options.FocusedColor = clNone
          Options.DisabledColor = clNone
          Options.NormalColor2 = clNone
          Options.HotColor2 = clNone
          Options.PressedColor2 = clNone
          Options.FocusedColor2 = clNone
          Options.DisabledColor2 = clNone
          Options.NormalColorAlpha = 255
          Options.HotColorAlpha = 30
          Options.PressedColorAlpha = 50
          Options.FocusedColorAlpha = 255
          Options.DisabledColorAlpha = 255
          Options.NormalColor2Alpha = 255
          Options.HotColor2Alpha = 255
          Options.PressedColor2Alpha = 255
          Options.FocusedColor2Alpha = 255
          Options.DisabledColor2Alpha = 255
          Options.FrameNormalColor = clNone
          Options.FrameHotColor = clNone
          Options.FramePressedColor = clNone
          Options.FrameFocusedColor = clNone
          Options.FrameDisabledColor = clNone
          Options.FrameWidth = 1
          Options.FrameNormalColorAlpha = 255
          Options.FrameHotColorAlpha = 255
          Options.FramePressedColorAlpha = 255
          Options.FrameFocusedColorAlpha = 255
          Options.FrameDisabledColorAlpha = 255
          Options.FontNormalColor = clWindowText
          Options.FontHotColor = clWindowText
          Options.FontPressedColor = clWindowText
          Options.FontFocusedColor = clWindowText
          Options.FontDisabledColor = clGray
          Options.ShapeFillGradientAngle = 90
          Options.ShapeFillGradientPressedAngle = -90
          Options.ShapeFillGradientColorOffset = 25
          Options.ShapeCornerRadius = 10
          Options.ShapeStyle = scgpRect
          Options.ArrowSize = 9
          Options.ArrowAreaSize = 0
          Options.ArrowType = scgpatDefault
          Options.ArrowThickness = 2
          Options.ArrowThicknessScaled = False
          Options.ArrowNormalColor = clWindowText
          Options.ArrowHotColor = clWindowText
          Options.ArrowPressedColor = clWindowText
          Options.ArrowFocusedColor = clWindowText
          Options.ArrowDisabledColor = clWindowText
          Options.ArrowNormalColorAlpha = 200
          Options.ArrowHotColorAlpha = 255
          Options.ArrowPressedColorAlpha = 255
          Options.ArrowFocusedColorAlpha = 200
          Options.ArrowDisabledColorAlpha = 125
          Options.StyleColors = True
          Options.PressedHotColors = False
          HotImageIndex = 23
          FluentLightEffect = False
          FocusedImageIndex = 23
          PressedImageIndex = 23
          UseGalleryMenuImage = False
          UseGalleryMenuCaption = False
          ScaleMarginAndSpacing = False
          WidthWithCaption = 0
          WidthWithoutCaption = 0
          SplitButton = False
          RepeatClick = False
          RepeatClickInterval = 100
          GlowEffect.Enabled = False
          GlowEffect.Color = clHighlight
          GlowEffect.AlphaValue = 255
          GlowEffect.GlowSize = 7
          GlowEffect.Offset = 0
          GlowEffect.Intensive = True
          GlowEffect.StyleColors = True
          GlowEffect.HotColor = clNone
          GlowEffect.PressedColor = clNone
          GlowEffect.FocusedColor = clNone
          GlowEffect.PressedGlowSize = 7
          GlowEffect.PressedAlphaValue = 255
          GlowEffect.States = [scsHot, scsPressed, scsFocused]
          ImageGlow = True
          DropDownMenu = PopupMenu6
          ShowGalleryMenuFromTop = False
          ShowGalleryMenuFromRight = False
          ShowMenuArrow = True
          ShowFocusRect = True
          Down = False
          GroupIndex = 0
          AllowAllUp = False
        end
      end
    end
    object scGPToolPagerPage6: TscGPToolPagerPage
      Left = 0
      Top = 35
      Width = 1084
      Height = 98
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      FluentUIOpaque = False
      TabOrder = 6
      Visible = False
      CanScroll = True
      FillGradientAngle = 90
      FillGradientBeginAlpha = 255
      FillGradientEndAlpha = 255
      FillGradientBeginColorOffset = 25
      FillGradientEndColorOffset = 25
      FillColor = clNone
      FillColorAlpha = 255
      FillColor2 = clNone
      Color = clBtnFace
      BGStyleKind = scgspbFormBackground
      ScrollButtonWidth = 17
      CustomImageIndex = -1
      WallpaperIndex = -1
      HotScroll = False
      AutoSize = False
      ScrollType = scstHorizontal
      ScrollOffset = 0
      ScrollTimerInterval = 50
      ScrollButtonArrowWidth = 2
      HorzScrollDirection = scgspsdLeftToRight
      VertScrollDirection = scgspsdTopToBottom
      TouchScroll = False
      StorePaintBuffer = False
      object scGPToolPagerPage8: TscGPToolPagerPage
        Left = 0
        Top = 5
        Width = 1018
        Height = 89
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        Padding.Left = 10
        Padding.Right = 10
        Padding.Bottom = 5
        ParentFont = False
        FluentUIOpaque = False
        TabOrder = 0
        CanScroll = True
        FillGradientAngle = 90
        FillGradientBeginAlpha = 255
        FillGradientEndAlpha = 255
        FillGradientBeginColorOffset = 25
        FillGradientEndColorOffset = 25
        FillColor = clNone
        FillColorAlpha = 255
        FillColor2 = clNone
        Color = clBtnFace
        BGStyleKind = scgspbTransparent
        ScrollButtonWidth = 17
        CustomImageIndex = -1
        WallpaperIndex = -1
        HotScroll = False
        AutoSize = False
        ScrollType = scstHorizontal
        ScrollOffset = 0
        ScrollTimerInterval = 50
        ScrollButtonArrowWidth = 2
        HorzScrollDirection = scgspsdLeftToRight
        VertScrollDirection = scgspsdTopToBottom
        TouchScroll = False
        StorePaintBuffer = False
        object scGPToolGroupPanel5: TscGPToolGroupPanel
          Left = 10
          Top = 0
          Width = 135
          Height = 84
          Align = alLeft
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          FluentUIOpaque = False
          TabOrder = 0
          Caption = 'Employee'
          CaptionHeight = 17
          CaptionFontColor = clGray
          CaptionFontDisabledColor = clNone
          DrawTextMode = scdtmGDI
          DialogButtonColor = clWindowText
          ShowDialogButton = False
          StorePaintBuffer = True
          SeparatorColor = clWindowText
          SeparatorColorAlpha = 50
          object btnEmpReg: TscGPButton
            Left = 3
            Top = 3
            Width = 129
            Height = 61
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            FluentUIOpaque = False
            TabOrder = 0
            OnClick = EmployeeRegistrationExecute
            Action = EmployeeRegistration
            Animation = True
            Badge.Color = clRed
            Badge.ColorAlpha = 255
            Badge.Font.Charset = DEFAULT_CHARSET
            Badge.Font.Color = clWhite
            Badge.Font.Height = -12
            Badge.Font.Name = 'Tahoma'
            Badge.Font.Style = [fsBold]
            Badge.Visible = False
            CanFocused = False
            CustomDropDown = False
            DrawTextMode = scdtmGDI
            Margin = -1
            Spacing = 1
            Layout = blGlyphTop
            Images = scGPVirtualImageList1
            ImageIndex = 2
            ImageMargin = 0
            TransparentBackground = True
            Options.NormalColor = clNone
            Options.HotColor = clWindowText
            Options.PressedColor = clWindowText
            Options.FocusedColor = clNone
            Options.DisabledColor = clNone
            Options.NormalColor2 = clNone
            Options.HotColor2 = clNone
            Options.PressedColor2 = clNone
            Options.FocusedColor2 = clNone
            Options.DisabledColor2 = clNone
            Options.NormalColorAlpha = 255
            Options.HotColorAlpha = 30
            Options.PressedColorAlpha = 50
            Options.FocusedColorAlpha = 255
            Options.DisabledColorAlpha = 255
            Options.NormalColor2Alpha = 255
            Options.HotColor2Alpha = 255
            Options.PressedColor2Alpha = 255
            Options.FocusedColor2Alpha = 255
            Options.DisabledColor2Alpha = 255
            Options.FrameNormalColor = clNone
            Options.FrameHotColor = clNone
            Options.FramePressedColor = clNone
            Options.FrameFocusedColor = clNone
            Options.FrameDisabledColor = clNone
            Options.FrameWidth = 1
            Options.FrameNormalColorAlpha = 255
            Options.FrameHotColorAlpha = 255
            Options.FramePressedColorAlpha = 255
            Options.FrameFocusedColorAlpha = 255
            Options.FrameDisabledColorAlpha = 255
            Options.FontNormalColor = clWindowText
            Options.FontHotColor = clWindowText
            Options.FontPressedColor = clWindowText
            Options.FontFocusedColor = clWindowText
            Options.FontDisabledColor = clGray
            Options.ShapeFillGradientAngle = 90
            Options.ShapeFillGradientPressedAngle = -90
            Options.ShapeFillGradientColorOffset = 25
            Options.ShapeCornerRadius = 10
            Options.ShapeStyle = scgpRect
            Options.ArrowSize = 9
            Options.ArrowAreaSize = 0
            Options.ArrowType = scgpatDefault
            Options.ArrowThickness = 2
            Options.ArrowThicknessScaled = False
            Options.ArrowNormalColor = clWindowText
            Options.ArrowHotColor = clWindowText
            Options.ArrowPressedColor = clWindowText
            Options.ArrowFocusedColor = clWindowText
            Options.ArrowDisabledColor = clWindowText
            Options.ArrowNormalColorAlpha = 200
            Options.ArrowHotColorAlpha = 255
            Options.ArrowPressedColorAlpha = 255
            Options.ArrowFocusedColorAlpha = 200
            Options.ArrowDisabledColorAlpha = 125
            Options.StyleColors = True
            Options.PressedHotColors = False
            HotImageIndex = 2
            FluentLightEffect = False
            FocusedImageIndex = 2
            PressedImageIndex = 2
            UseGalleryMenuImage = False
            UseGalleryMenuCaption = False
            ScaleMarginAndSpacing = False
            WidthWithCaption = 0
            WidthWithoutCaption = 0
            SplitButton = False
            RepeatClick = False
            RepeatClickInterval = 100
            GlowEffect.Enabled = False
            GlowEffect.Color = clHighlight
            GlowEffect.AlphaValue = 255
            GlowEffect.GlowSize = 7
            GlowEffect.Offset = 0
            GlowEffect.Intensive = True
            GlowEffect.StyleColors = True
            GlowEffect.HotColor = clNone
            GlowEffect.PressedColor = clNone
            GlowEffect.FocusedColor = clNone
            GlowEffect.PressedGlowSize = 7
            GlowEffect.PressedAlphaValue = 255
            GlowEffect.States = [scsHot, scsPressed, scsFocused]
            ImageGlow = True
            ShowGalleryMenuFromTop = False
            ShowGalleryMenuFromRight = False
            ShowMenuArrow = True
            ShowFocusRect = True
            Down = False
            GroupIndex = 0
            AllowAllUp = False
          end
        end
        object scGPToolGroupPanel6: TscGPToolGroupPanel
          Left = 145
          Top = 0
          Width = 128
          Height = 84
          Align = alLeft
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          FluentUIOpaque = False
          TabOrder = 1
          Caption = 'Payroll'
          CaptionHeight = 17
          CaptionFontColor = clGray
          CaptionFontDisabledColor = clNone
          DrawTextMode = scdtmGDI
          DialogButtonColor = clWindowText
          ShowDialogButton = False
          StorePaintBuffer = True
          SeparatorColor = clWindowText
          SeparatorColorAlpha = 50
          object btnPayroll: TscGPButton
            Left = 3
            Top = 3
            Width = 122
            Height = 61
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            FluentUIOpaque = False
            TabOrder = 0
            OnClick = PayrollExecute
            Action = Payroll
            Animation = True
            Badge.Color = clRed
            Badge.ColorAlpha = 255
            Badge.Font.Charset = DEFAULT_CHARSET
            Badge.Font.Color = clWhite
            Badge.Font.Height = -12
            Badge.Font.Name = 'Tahoma'
            Badge.Font.Style = [fsBold]
            Badge.Visible = False
            CanFocused = False
            CustomDropDown = False
            DrawTextMode = scdtmGDI
            Margin = -1
            Spacing = 1
            Layout = blGlyphTop
            Images = scGPVirtualImageList1
            ImageIndex = 8
            ImageMargin = 0
            TransparentBackground = True
            Options.NormalColor = clNone
            Options.HotColor = clWindowText
            Options.PressedColor = clWindowText
            Options.FocusedColor = clNone
            Options.DisabledColor = clNone
            Options.NormalColor2 = clNone
            Options.HotColor2 = clNone
            Options.PressedColor2 = clNone
            Options.FocusedColor2 = clNone
            Options.DisabledColor2 = clNone
            Options.NormalColorAlpha = 255
            Options.HotColorAlpha = 30
            Options.PressedColorAlpha = 50
            Options.FocusedColorAlpha = 255
            Options.DisabledColorAlpha = 255
            Options.NormalColor2Alpha = 255
            Options.HotColor2Alpha = 255
            Options.PressedColor2Alpha = 255
            Options.FocusedColor2Alpha = 255
            Options.DisabledColor2Alpha = 255
            Options.FrameNormalColor = clNone
            Options.FrameHotColor = clNone
            Options.FramePressedColor = clNone
            Options.FrameFocusedColor = clNone
            Options.FrameDisabledColor = clNone
            Options.FrameWidth = 1
            Options.FrameNormalColorAlpha = 255
            Options.FrameHotColorAlpha = 255
            Options.FramePressedColorAlpha = 255
            Options.FrameFocusedColorAlpha = 255
            Options.FrameDisabledColorAlpha = 255
            Options.FontNormalColor = clWindowText
            Options.FontHotColor = clWindowText
            Options.FontPressedColor = clWindowText
            Options.FontFocusedColor = clWindowText
            Options.FontDisabledColor = clGray
            Options.ShapeFillGradientAngle = 90
            Options.ShapeFillGradientPressedAngle = -90
            Options.ShapeFillGradientColorOffset = 25
            Options.ShapeCornerRadius = 10
            Options.ShapeStyle = scgpRect
            Options.ArrowSize = 9
            Options.ArrowAreaSize = 0
            Options.ArrowType = scgpatDefault
            Options.ArrowThickness = 2
            Options.ArrowThicknessScaled = False
            Options.ArrowNormalColor = clWindowText
            Options.ArrowHotColor = clWindowText
            Options.ArrowPressedColor = clWindowText
            Options.ArrowFocusedColor = clWindowText
            Options.ArrowDisabledColor = clWindowText
            Options.ArrowNormalColorAlpha = 200
            Options.ArrowHotColorAlpha = 255
            Options.ArrowPressedColorAlpha = 255
            Options.ArrowFocusedColorAlpha = 200
            Options.ArrowDisabledColorAlpha = 125
            Options.StyleColors = True
            Options.PressedHotColors = False
            HotImageIndex = 8
            FluentLightEffect = False
            FocusedImageIndex = 8
            PressedImageIndex = 8
            UseGalleryMenuImage = False
            UseGalleryMenuCaption = False
            ScaleMarginAndSpacing = False
            WidthWithCaption = 0
            WidthWithoutCaption = 0
            SplitButton = False
            RepeatClick = False
            RepeatClickInterval = 100
            GlowEffect.Enabled = False
            GlowEffect.Color = clHighlight
            GlowEffect.AlphaValue = 255
            GlowEffect.GlowSize = 7
            GlowEffect.Offset = 0
            GlowEffect.Intensive = True
            GlowEffect.StyleColors = True
            GlowEffect.HotColor = clNone
            GlowEffect.PressedColor = clNone
            GlowEffect.FocusedColor = clNone
            GlowEffect.PressedGlowSize = 7
            GlowEffect.PressedAlphaValue = 255
            GlowEffect.States = [scsHot, scsPressed, scsFocused]
            ImageGlow = True
            ShowGalleryMenuFromTop = False
            ShowGalleryMenuFromRight = False
            ShowMenuArrow = True
            ShowFocusRect = True
            Down = False
            GroupIndex = 0
            AllowAllUp = False
          end
        end
        object scGPToolGroupPanel14: TscGPToolGroupPanel
          Left = 273
          Top = 0
          Width = 112
          Height = 84
          Align = alLeft
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          FluentUIOpaque = False
          TabOrder = 2
          CaptionHeight = 17
          CaptionFontColor = clGray
          CaptionFontDisabledColor = clNone
          DrawTextMode = scdtmGDI
          DialogButtonColor = clWindowText
          ShowDialogButton = False
          StorePaintBuffer = True
          SeparatorColor = clWindowText
          SeparatorColorAlpha = 50
          object scGPButton2: TscGPButton
            Left = 3
            Top = 3
            Width = 106
            Height = 61
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            FluentUIOpaque = False
            TabOrder = 0
            Animation = True
            Badge.Color = clRed
            Badge.ColorAlpha = 255
            Badge.Font.Charset = DEFAULT_CHARSET
            Badge.Font.Color = clWhite
            Badge.Font.Height = -12
            Badge.Font.Name = 'Tahoma'
            Badge.Font.Style = [fsBold]
            Badge.Visible = False
            Caption = 'Reports'
            CanFocused = False
            CustomDropDown = False
            DrawTextMode = scdtmGDI
            Margin = -1
            Spacing = 1
            Layout = blGlyphTop
            Images = scGPVirtualImageList1
            ImageIndex = 23
            ImageMargin = 0
            TransparentBackground = True
            Options.NormalColor = clNone
            Options.HotColor = clWindowText
            Options.PressedColor = clWindowText
            Options.FocusedColor = clNone
            Options.DisabledColor = clNone
            Options.NormalColor2 = clNone
            Options.HotColor2 = clNone
            Options.PressedColor2 = clNone
            Options.FocusedColor2 = clNone
            Options.DisabledColor2 = clNone
            Options.NormalColorAlpha = 255
            Options.HotColorAlpha = 30
            Options.PressedColorAlpha = 50
            Options.FocusedColorAlpha = 255
            Options.DisabledColorAlpha = 255
            Options.NormalColor2Alpha = 255
            Options.HotColor2Alpha = 255
            Options.PressedColor2Alpha = 255
            Options.FocusedColor2Alpha = 255
            Options.DisabledColor2Alpha = 255
            Options.FrameNormalColor = clNone
            Options.FrameHotColor = clNone
            Options.FramePressedColor = clNone
            Options.FrameFocusedColor = clNone
            Options.FrameDisabledColor = clNone
            Options.FrameWidth = 1
            Options.FrameNormalColorAlpha = 255
            Options.FrameHotColorAlpha = 255
            Options.FramePressedColorAlpha = 255
            Options.FrameFocusedColorAlpha = 255
            Options.FrameDisabledColorAlpha = 255
            Options.FontNormalColor = clWindowText
            Options.FontHotColor = clWindowText
            Options.FontPressedColor = clWindowText
            Options.FontFocusedColor = clWindowText
            Options.FontDisabledColor = clGray
            Options.ShapeFillGradientAngle = 90
            Options.ShapeFillGradientPressedAngle = -90
            Options.ShapeFillGradientColorOffset = 25
            Options.ShapeCornerRadius = 10
            Options.ShapeStyle = scgpRect
            Options.ArrowSize = 9
            Options.ArrowAreaSize = 0
            Options.ArrowType = scgpatDefault
            Options.ArrowThickness = 2
            Options.ArrowThicknessScaled = False
            Options.ArrowNormalColor = clWindowText
            Options.ArrowHotColor = clWindowText
            Options.ArrowPressedColor = clWindowText
            Options.ArrowFocusedColor = clWindowText
            Options.ArrowDisabledColor = clWindowText
            Options.ArrowNormalColorAlpha = 200
            Options.ArrowHotColorAlpha = 255
            Options.ArrowPressedColorAlpha = 255
            Options.ArrowFocusedColorAlpha = 200
            Options.ArrowDisabledColorAlpha = 125
            Options.StyleColors = True
            Options.PressedHotColors = False
            HotImageIndex = 23
            FluentLightEffect = False
            FocusedImageIndex = 23
            PressedImageIndex = 23
            UseGalleryMenuImage = False
            UseGalleryMenuCaption = False
            ScaleMarginAndSpacing = False
            WidthWithCaption = 0
            WidthWithoutCaption = 0
            SplitButton = False
            RepeatClick = False
            RepeatClickInterval = 100
            GlowEffect.Enabled = False
            GlowEffect.Color = clHighlight
            GlowEffect.AlphaValue = 255
            GlowEffect.GlowSize = 7
            GlowEffect.Offset = 0
            GlowEffect.Intensive = True
            GlowEffect.StyleColors = True
            GlowEffect.HotColor = clNone
            GlowEffect.PressedColor = clNone
            GlowEffect.FocusedColor = clNone
            GlowEffect.PressedGlowSize = 7
            GlowEffect.PressedAlphaValue = 255
            GlowEffect.States = [scsHot, scsPressed, scsFocused]
            ImageGlow = True
            ShowGalleryMenuFromTop = False
            ShowGalleryMenuFromRight = False
            ShowMenuArrow = True
            ShowFocusRect = True
            Down = False
            GroupIndex = 0
            AllowAllUp = False
          end
        end
      end
    end
    object scGPToolPagerPage5: TscGPToolPagerPage
      Left = 0
      Top = 35
      Width = 1084
      Height = 98
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      FluentUIOpaque = False
      TabOrder = 5
      Visible = False
      CanScroll = True
      FillGradientAngle = 90
      FillGradientBeginAlpha = 255
      FillGradientEndAlpha = 255
      FillGradientBeginColorOffset = 25
      FillGradientEndColorOffset = 25
      FillColor = clNone
      FillColorAlpha = 255
      FillColor2 = clNone
      Color = clBtnFace
      BGStyleKind = scgspbFormBackground
      ScrollButtonWidth = 17
      CustomImageIndex = -1
      WallpaperIndex = -1
      HotScroll = False
      AutoSize = False
      ScrollType = scstHorizontal
      ScrollOffset = 0
      ScrollTimerInterval = 50
      ScrollButtonArrowWidth = 2
      HorzScrollDirection = scgspsdLeftToRight
      VertScrollDirection = scgspsdTopToBottom
      TouchScroll = False
      StorePaintBuffer = False
      object scGPToolGroupPanel2: TscGPToolGroupPanel
        Left = 0
        Top = 0
        Width = 337
        Height = 98
        Align = alLeft
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FluentUIOpaque = False
        TabOrder = 0
        Caption = 'Disbursement Tool'
        CaptionHeight = 17
        CaptionFontColor = clGray
        CaptionFontDisabledColor = clNone
        DrawTextMode = scdtmGDI
        DialogButtonColor = clWindowText
        ShowDialogButton = False
        StorePaintBuffer = True
        SeparatorColor = clWindowText
        SeparatorColorAlpha = 50
        object btnExpense: TscGPButton
          Left = 223
          Top = 3
          Width = 110
          Height = 75
          Align = alLeft
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          FluentUIOpaque = False
          TabOrder = 0
          OnClick = ExpenseExecute
          Action = Expense
          Animation = True
          Badge.Color = clRed
          Badge.ColorAlpha = 255
          Badge.Font.Charset = DEFAULT_CHARSET
          Badge.Font.Color = clWhite
          Badge.Font.Height = -12
          Badge.Font.Name = 'Tahoma'
          Badge.Font.Style = [fsBold]
          Badge.Visible = False
          CanFocused = False
          CustomDropDown = False
          DrawTextMode = scdtmGDI
          Margin = -1
          Spacing = 1
          Layout = blGlyphTop
          Images = scGPVirtualImageList1
          ImageIndex = 3
          ImageMargin = 0
          TransparentBackground = True
          Options.NormalColor = clNone
          Options.HotColor = clWindowText
          Options.PressedColor = clWindowText
          Options.FocusedColor = clNone
          Options.DisabledColor = clNone
          Options.NormalColor2 = clNone
          Options.HotColor2 = clNone
          Options.PressedColor2 = clNone
          Options.FocusedColor2 = clNone
          Options.DisabledColor2 = clNone
          Options.NormalColorAlpha = 255
          Options.HotColorAlpha = 30
          Options.PressedColorAlpha = 50
          Options.FocusedColorAlpha = 255
          Options.DisabledColorAlpha = 255
          Options.NormalColor2Alpha = 255
          Options.HotColor2Alpha = 255
          Options.PressedColor2Alpha = 255
          Options.FocusedColor2Alpha = 255
          Options.DisabledColor2Alpha = 255
          Options.FrameNormalColor = clNone
          Options.FrameHotColor = clNone
          Options.FramePressedColor = clNone
          Options.FrameFocusedColor = clNone
          Options.FrameDisabledColor = clNone
          Options.FrameWidth = 1
          Options.FrameNormalColorAlpha = 255
          Options.FrameHotColorAlpha = 255
          Options.FramePressedColorAlpha = 255
          Options.FrameFocusedColorAlpha = 255
          Options.FrameDisabledColorAlpha = 255
          Options.FontNormalColor = clWindowText
          Options.FontHotColor = clWindowText
          Options.FontPressedColor = clWindowText
          Options.FontFocusedColor = clWindowText
          Options.FontDisabledColor = clGray
          Options.ShapeFillGradientAngle = 90
          Options.ShapeFillGradientPressedAngle = -90
          Options.ShapeFillGradientColorOffset = 25
          Options.ShapeCornerRadius = 10
          Options.ShapeStyle = scgpRect
          Options.ArrowSize = 9
          Options.ArrowAreaSize = 0
          Options.ArrowType = scgpatDefault
          Options.ArrowThickness = 2
          Options.ArrowThicknessScaled = False
          Options.ArrowNormalColor = clWindowText
          Options.ArrowHotColor = clWindowText
          Options.ArrowPressedColor = clWindowText
          Options.ArrowFocusedColor = clWindowText
          Options.ArrowDisabledColor = clWindowText
          Options.ArrowNormalColorAlpha = 200
          Options.ArrowHotColorAlpha = 255
          Options.ArrowPressedColorAlpha = 255
          Options.ArrowFocusedColorAlpha = 200
          Options.ArrowDisabledColorAlpha = 125
          Options.StyleColors = True
          Options.PressedHotColors = False
          HotImageIndex = 3
          FluentLightEffect = False
          FocusedImageIndex = 3
          PressedImageIndex = 3
          UseGalleryMenuImage = False
          UseGalleryMenuCaption = False
          ScaleMarginAndSpacing = False
          WidthWithCaption = 0
          WidthWithoutCaption = 0
          SplitButton = False
          RepeatClick = False
          RepeatClickInterval = 100
          GlowEffect.Enabled = False
          GlowEffect.Color = clHighlight
          GlowEffect.AlphaValue = 255
          GlowEffect.GlowSize = 7
          GlowEffect.Offset = 0
          GlowEffect.Intensive = True
          GlowEffect.StyleColors = True
          GlowEffect.HotColor = clNone
          GlowEffect.PressedColor = clNone
          GlowEffect.FocusedColor = clNone
          GlowEffect.PressedGlowSize = 7
          GlowEffect.PressedAlphaValue = 255
          GlowEffect.States = [scsHot, scsPressed, scsFocused]
          ImageGlow = True
          ShowGalleryMenuFromTop = False
          ShowGalleryMenuFromRight = False
          ShowMenuArrow = True
          ShowFocusRect = True
          Down = False
          GroupIndex = 0
          AllowAllUp = False
        end
        object btnPettyCash: TscGPButton
          Left = 113
          Top = 3
          Width = 110
          Height = 75
          Align = alLeft
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          FluentUIOpaque = False
          TabOrder = 1
          OnClick = PettyCashExecute
          Action = PettyCash
          Animation = True
          Badge.Color = clRed
          Badge.ColorAlpha = 255
          Badge.Font.Charset = DEFAULT_CHARSET
          Badge.Font.Color = clWhite
          Badge.Font.Height = -12
          Badge.Font.Name = 'Tahoma'
          Badge.Font.Style = [fsBold]
          Badge.Visible = False
          CanFocused = False
          CustomDropDown = False
          DrawTextMode = scdtmGDI
          Margin = -1
          Spacing = 1
          Layout = blGlyphTop
          Images = scGPVirtualImageList1
          ImageIndex = 9
          ImageMargin = 0
          TransparentBackground = True
          Options.NormalColor = clNone
          Options.HotColor = clWindowText
          Options.PressedColor = clWindowText
          Options.FocusedColor = clNone
          Options.DisabledColor = clNone
          Options.NormalColor2 = clNone
          Options.HotColor2 = clNone
          Options.PressedColor2 = clNone
          Options.FocusedColor2 = clNone
          Options.DisabledColor2 = clNone
          Options.NormalColorAlpha = 255
          Options.HotColorAlpha = 30
          Options.PressedColorAlpha = 50
          Options.FocusedColorAlpha = 255
          Options.DisabledColorAlpha = 255
          Options.NormalColor2Alpha = 255
          Options.HotColor2Alpha = 255
          Options.PressedColor2Alpha = 255
          Options.FocusedColor2Alpha = 255
          Options.DisabledColor2Alpha = 255
          Options.FrameNormalColor = clNone
          Options.FrameHotColor = clNone
          Options.FramePressedColor = clNone
          Options.FrameFocusedColor = clNone
          Options.FrameDisabledColor = clNone
          Options.FrameWidth = 1
          Options.FrameNormalColorAlpha = 255
          Options.FrameHotColorAlpha = 255
          Options.FramePressedColorAlpha = 255
          Options.FrameFocusedColorAlpha = 255
          Options.FrameDisabledColorAlpha = 255
          Options.FontNormalColor = clWindowText
          Options.FontHotColor = clWindowText
          Options.FontPressedColor = clWindowText
          Options.FontFocusedColor = clWindowText
          Options.FontDisabledColor = clGray
          Options.ShapeFillGradientAngle = 90
          Options.ShapeFillGradientPressedAngle = -90
          Options.ShapeFillGradientColorOffset = 25
          Options.ShapeCornerRadius = 10
          Options.ShapeStyle = scgpRect
          Options.ArrowSize = 9
          Options.ArrowAreaSize = 0
          Options.ArrowType = scgpatDefault
          Options.ArrowThickness = 2
          Options.ArrowThicknessScaled = False
          Options.ArrowNormalColor = clWindowText
          Options.ArrowHotColor = clWindowText
          Options.ArrowPressedColor = clWindowText
          Options.ArrowFocusedColor = clWindowText
          Options.ArrowDisabledColor = clWindowText
          Options.ArrowNormalColorAlpha = 200
          Options.ArrowHotColorAlpha = 255
          Options.ArrowPressedColorAlpha = 255
          Options.ArrowFocusedColorAlpha = 200
          Options.ArrowDisabledColorAlpha = 125
          Options.StyleColors = True
          Options.PressedHotColors = False
          HotImageIndex = 9
          FluentLightEffect = False
          FocusedImageIndex = 9
          PressedImageIndex = 9
          UseGalleryMenuImage = False
          UseGalleryMenuCaption = False
          ScaleMarginAndSpacing = False
          WidthWithCaption = 0
          WidthWithoutCaption = 0
          SplitButton = False
          RepeatClick = False
          RepeatClickInterval = 100
          GlowEffect.Enabled = False
          GlowEffect.Color = clHighlight
          GlowEffect.AlphaValue = 255
          GlowEffect.GlowSize = 7
          GlowEffect.Offset = 0
          GlowEffect.Intensive = True
          GlowEffect.StyleColors = True
          GlowEffect.HotColor = clNone
          GlowEffect.PressedColor = clNone
          GlowEffect.FocusedColor = clNone
          GlowEffect.PressedGlowSize = 7
          GlowEffect.PressedAlphaValue = 255
          GlowEffect.States = [scsHot, scsPressed, scsFocused]
          ImageGlow = True
          ShowGalleryMenuFromTop = False
          ShowGalleryMenuFromRight = False
          ShowMenuArrow = True
          ShowFocusRect = True
          Down = False
          GroupIndex = 0
          AllowAllUp = False
        end
        object btnPayment: TscGPButton
          Left = 3
          Top = 3
          Width = 110
          Height = 75
          Align = alLeft
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          FluentUIOpaque = False
          TabOrder = 2
          OnClick = PaymentExecute
          Action = Payment
          Animation = True
          Badge.Color = clRed
          Badge.ColorAlpha = 255
          Badge.Font.Charset = DEFAULT_CHARSET
          Badge.Font.Color = clWhite
          Badge.Font.Height = -12
          Badge.Font.Name = 'Tahoma'
          Badge.Font.Style = [fsBold]
          Badge.Visible = False
          CanFocused = False
          CustomDropDown = False
          DrawTextMode = scdtmGDI
          Margin = -1
          Spacing = 1
          Layout = blGlyphTop
          Images = scGPVirtualImageList1
          ImageIndex = 7
          ImageMargin = 0
          TransparentBackground = True
          Options.NormalColor = clNone
          Options.HotColor = clWindowText
          Options.PressedColor = clWindowText
          Options.FocusedColor = clNone
          Options.DisabledColor = clNone
          Options.NormalColor2 = clNone
          Options.HotColor2 = clNone
          Options.PressedColor2 = clNone
          Options.FocusedColor2 = clNone
          Options.DisabledColor2 = clNone
          Options.NormalColorAlpha = 255
          Options.HotColorAlpha = 30
          Options.PressedColorAlpha = 50
          Options.FocusedColorAlpha = 255
          Options.DisabledColorAlpha = 255
          Options.NormalColor2Alpha = 255
          Options.HotColor2Alpha = 255
          Options.PressedColor2Alpha = 255
          Options.FocusedColor2Alpha = 255
          Options.DisabledColor2Alpha = 255
          Options.FrameNormalColor = clNone
          Options.FrameHotColor = clNone
          Options.FramePressedColor = clNone
          Options.FrameFocusedColor = clNone
          Options.FrameDisabledColor = clNone
          Options.FrameWidth = 1
          Options.FrameNormalColorAlpha = 255
          Options.FrameHotColorAlpha = 255
          Options.FramePressedColorAlpha = 255
          Options.FrameFocusedColorAlpha = 255
          Options.FrameDisabledColorAlpha = 255
          Options.FontNormalColor = clWindowText
          Options.FontHotColor = clWindowText
          Options.FontPressedColor = clWindowText
          Options.FontFocusedColor = clWindowText
          Options.FontDisabledColor = clGray
          Options.ShapeFillGradientAngle = 90
          Options.ShapeFillGradientPressedAngle = -90
          Options.ShapeFillGradientColorOffset = 25
          Options.ShapeCornerRadius = 10
          Options.ShapeStyle = scgpRect
          Options.ArrowSize = 9
          Options.ArrowAreaSize = 0
          Options.ArrowType = scgpatDefault
          Options.ArrowThickness = 2
          Options.ArrowThicknessScaled = False
          Options.ArrowNormalColor = clWindowText
          Options.ArrowHotColor = clWindowText
          Options.ArrowPressedColor = clWindowText
          Options.ArrowFocusedColor = clWindowText
          Options.ArrowDisabledColor = clWindowText
          Options.ArrowNormalColorAlpha = 200
          Options.ArrowHotColorAlpha = 255
          Options.ArrowPressedColorAlpha = 255
          Options.ArrowFocusedColorAlpha = 200
          Options.ArrowDisabledColorAlpha = 125
          Options.StyleColors = True
          Options.PressedHotColors = False
          HotImageIndex = 7
          FluentLightEffect = False
          FocusedImageIndex = 7
          PressedImageIndex = 7
          UseGalleryMenuImage = False
          UseGalleryMenuCaption = False
          ScaleMarginAndSpacing = False
          WidthWithCaption = 0
          WidthWithoutCaption = 0
          SplitButton = False
          RepeatClick = False
          RepeatClickInterval = 100
          GlowEffect.Enabled = False
          GlowEffect.Color = clHighlight
          GlowEffect.AlphaValue = 255
          GlowEffect.GlowSize = 7
          GlowEffect.Offset = 0
          GlowEffect.Intensive = True
          GlowEffect.StyleColors = True
          GlowEffect.HotColor = clNone
          GlowEffect.PressedColor = clNone
          GlowEffect.FocusedColor = clNone
          GlowEffect.PressedGlowSize = 7
          GlowEffect.PressedAlphaValue = 255
          GlowEffect.States = [scsHot, scsPressed, scsFocused]
          ImageGlow = True
          ShowGalleryMenuFromTop = False
          ShowGalleryMenuFromRight = False
          ShowMenuArrow = True
          ShowFocusRect = True
          Down = False
          GroupIndex = 0
          AllowAllUp = False
        end
      end
      object scGPToolGroupPanel11: TscGPToolGroupPanel
        Left = 337
        Top = 0
        Width = 232
        Height = 98
        Align = alLeft
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FluentUIOpaque = False
        TabOrder = 1
        Caption = 'Maintenance'
        CaptionHeight = 17
        CaptionFontColor = clGray
        CaptionFontDisabledColor = clNone
        DrawTextMode = scdtmGDI
        DialogButtonColor = clWindowText
        ShowDialogButton = False
        StorePaintBuffer = True
        SeparatorColor = clWindowText
        SeparatorColorAlpha = 50
        object btnExpenseType: TscGPButton
          Left = 113
          Top = 3
          Width = 110
          Height = 75
          Align = alLeft
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          FluentUIOpaque = False
          TabOrder = 0
          OnClick = ExpenseTypeExecute
          Action = ExpenseType
          Animation = True
          Badge.Color = clRed
          Badge.ColorAlpha = 255
          Badge.Font.Charset = DEFAULT_CHARSET
          Badge.Font.Color = clWhite
          Badge.Font.Height = -12
          Badge.Font.Name = 'Tahoma'
          Badge.Font.Style = [fsBold]
          Badge.Visible = False
          CanFocused = False
          CustomDropDown = False
          DrawTextMode = scdtmGDI
          Margin = -1
          Spacing = 1
          Layout = blGlyphTop
          Images = scGPVirtualImageList1
          ImageIndex = 22
          ImageMargin = 0
          TransparentBackground = True
          Options.NormalColor = clNone
          Options.HotColor = clWindowText
          Options.PressedColor = clWindowText
          Options.FocusedColor = clNone
          Options.DisabledColor = clNone
          Options.NormalColor2 = clNone
          Options.HotColor2 = clNone
          Options.PressedColor2 = clNone
          Options.FocusedColor2 = clNone
          Options.DisabledColor2 = clNone
          Options.NormalColorAlpha = 255
          Options.HotColorAlpha = 30
          Options.PressedColorAlpha = 50
          Options.FocusedColorAlpha = 255
          Options.DisabledColorAlpha = 255
          Options.NormalColor2Alpha = 255
          Options.HotColor2Alpha = 255
          Options.PressedColor2Alpha = 255
          Options.FocusedColor2Alpha = 255
          Options.DisabledColor2Alpha = 255
          Options.FrameNormalColor = clNone
          Options.FrameHotColor = clNone
          Options.FramePressedColor = clNone
          Options.FrameFocusedColor = clNone
          Options.FrameDisabledColor = clNone
          Options.FrameWidth = 1
          Options.FrameNormalColorAlpha = 255
          Options.FrameHotColorAlpha = 255
          Options.FramePressedColorAlpha = 255
          Options.FrameFocusedColorAlpha = 255
          Options.FrameDisabledColorAlpha = 255
          Options.FontNormalColor = clWindowText
          Options.FontHotColor = clWindowText
          Options.FontPressedColor = clWindowText
          Options.FontFocusedColor = clWindowText
          Options.FontDisabledColor = clGray
          Options.ShapeFillGradientAngle = 90
          Options.ShapeFillGradientPressedAngle = -90
          Options.ShapeFillGradientColorOffset = 25
          Options.ShapeCornerRadius = 10
          Options.ShapeStyle = scgpRect
          Options.ArrowSize = 9
          Options.ArrowAreaSize = 0
          Options.ArrowType = scgpatDefault
          Options.ArrowThickness = 2
          Options.ArrowThicknessScaled = False
          Options.ArrowNormalColor = clWindowText
          Options.ArrowHotColor = clWindowText
          Options.ArrowPressedColor = clWindowText
          Options.ArrowFocusedColor = clWindowText
          Options.ArrowDisabledColor = clWindowText
          Options.ArrowNormalColorAlpha = 200
          Options.ArrowHotColorAlpha = 255
          Options.ArrowPressedColorAlpha = 255
          Options.ArrowFocusedColorAlpha = 200
          Options.ArrowDisabledColorAlpha = 125
          Options.StyleColors = True
          Options.PressedHotColors = False
          HotImageIndex = 22
          FluentLightEffect = False
          FocusedImageIndex = 22
          PressedImageIndex = 22
          UseGalleryMenuImage = False
          UseGalleryMenuCaption = False
          ScaleMarginAndSpacing = False
          WidthWithCaption = 0
          WidthWithoutCaption = 0
          SplitButton = False
          RepeatClick = False
          RepeatClickInterval = 100
          GlowEffect.Enabled = False
          GlowEffect.Color = clHighlight
          GlowEffect.AlphaValue = 255
          GlowEffect.GlowSize = 7
          GlowEffect.Offset = 0
          GlowEffect.Intensive = True
          GlowEffect.StyleColors = True
          GlowEffect.HotColor = clNone
          GlowEffect.PressedColor = clNone
          GlowEffect.FocusedColor = clNone
          GlowEffect.PressedGlowSize = 7
          GlowEffect.PressedAlphaValue = 255
          GlowEffect.States = [scsHot, scsPressed, scsFocused]
          ImageGlow = True
          ShowGalleryMenuFromTop = False
          ShowGalleryMenuFromRight = False
          ShowMenuArrow = True
          ShowFocusRect = True
          Down = False
          GroupIndex = 0
          AllowAllUp = False
        end
        object btnBank: TscGPButton
          Left = 3
          Top = 3
          Width = 110
          Height = 75
          Align = alLeft
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          FluentUIOpaque = False
          TabOrder = 1
          OnClick = BankExecute
          Action = Bank
          Animation = True
          Badge.Color = clRed
          Badge.ColorAlpha = 255
          Badge.Font.Charset = DEFAULT_CHARSET
          Badge.Font.Color = clWhite
          Badge.Font.Height = -12
          Badge.Font.Name = 'Tahoma'
          Badge.Font.Style = [fsBold]
          Badge.Visible = False
          CanFocused = False
          CustomDropDown = False
          DrawTextMode = scdtmGDI
          Margin = -1
          Spacing = 1
          Layout = blGlyphTop
          Images = scGPVirtualImageList1
          ImageIndex = 20
          ImageMargin = 0
          TransparentBackground = True
          Options.NormalColor = clNone
          Options.HotColor = clWindowText
          Options.PressedColor = clWindowText
          Options.FocusedColor = clNone
          Options.DisabledColor = clNone
          Options.NormalColor2 = clNone
          Options.HotColor2 = clNone
          Options.PressedColor2 = clNone
          Options.FocusedColor2 = clNone
          Options.DisabledColor2 = clNone
          Options.NormalColorAlpha = 255
          Options.HotColorAlpha = 30
          Options.PressedColorAlpha = 50
          Options.FocusedColorAlpha = 255
          Options.DisabledColorAlpha = 255
          Options.NormalColor2Alpha = 255
          Options.HotColor2Alpha = 255
          Options.PressedColor2Alpha = 255
          Options.FocusedColor2Alpha = 255
          Options.DisabledColor2Alpha = 255
          Options.FrameNormalColor = clNone
          Options.FrameHotColor = clNone
          Options.FramePressedColor = clNone
          Options.FrameFocusedColor = clNone
          Options.FrameDisabledColor = clNone
          Options.FrameWidth = 1
          Options.FrameNormalColorAlpha = 255
          Options.FrameHotColorAlpha = 255
          Options.FramePressedColorAlpha = 255
          Options.FrameFocusedColorAlpha = 255
          Options.FrameDisabledColorAlpha = 255
          Options.FontNormalColor = clWindowText
          Options.FontHotColor = clWindowText
          Options.FontPressedColor = clWindowText
          Options.FontFocusedColor = clWindowText
          Options.FontDisabledColor = clGray
          Options.ShapeFillGradientAngle = 90
          Options.ShapeFillGradientPressedAngle = -90
          Options.ShapeFillGradientColorOffset = 25
          Options.ShapeCornerRadius = 10
          Options.ShapeStyle = scgpRect
          Options.ArrowSize = 9
          Options.ArrowAreaSize = 0
          Options.ArrowType = scgpatDefault
          Options.ArrowThickness = 2
          Options.ArrowThicknessScaled = False
          Options.ArrowNormalColor = clWindowText
          Options.ArrowHotColor = clWindowText
          Options.ArrowPressedColor = clWindowText
          Options.ArrowFocusedColor = clWindowText
          Options.ArrowDisabledColor = clWindowText
          Options.ArrowNormalColorAlpha = 200
          Options.ArrowHotColorAlpha = 255
          Options.ArrowPressedColorAlpha = 255
          Options.ArrowFocusedColorAlpha = 200
          Options.ArrowDisabledColorAlpha = 125
          Options.StyleColors = True
          Options.PressedHotColors = False
          HotImageIndex = 20
          FluentLightEffect = False
          FocusedImageIndex = 20
          PressedImageIndex = 20
          UseGalleryMenuImage = False
          UseGalleryMenuCaption = False
          ScaleMarginAndSpacing = False
          WidthWithCaption = 0
          WidthWithoutCaption = 0
          SplitButton = False
          RepeatClick = False
          RepeatClickInterval = 100
          GlowEffect.Enabled = False
          GlowEffect.Color = clHighlight
          GlowEffect.AlphaValue = 255
          GlowEffect.GlowSize = 7
          GlowEffect.Offset = 0
          GlowEffect.Intensive = True
          GlowEffect.StyleColors = True
          GlowEffect.HotColor = clNone
          GlowEffect.PressedColor = clNone
          GlowEffect.FocusedColor = clNone
          GlowEffect.PressedGlowSize = 7
          GlowEffect.PressedAlphaValue = 255
          GlowEffect.States = [scsHot, scsPressed, scsFocused]
          ImageGlow = True
          ShowGalleryMenuFromTop = False
          ShowGalleryMenuFromRight = False
          ShowMenuArrow = True
          ShowFocusRect = True
          Down = False
          GroupIndex = 0
          AllowAllUp = False
        end
      end
    end
    object scGPToolPagerPage3: TscGPToolPagerPage
      Left = 0
      Top = 35
      Width = 1084
      Height = 98
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      Padding.Left = 10
      Padding.Right = 10
      Padding.Bottom = 5
      ParentFont = False
      FluentUIOpaque = False
      TabOrder = 3
      Visible = False
      CanScroll = True
      FillGradientAngle = 90
      FillGradientBeginAlpha = 255
      FillGradientEndAlpha = 255
      FillGradientBeginColorOffset = 25
      FillGradientEndColorOffset = 25
      FillColor = clWhite
      FillColorAlpha = 0
      FillColor2 = clNone
      Color = clBtnFace
      BGStyleKind = scgspbTransparent
      ScrollButtonWidth = 17
      CustomImageIndex = -1
      WallpaperIndex = -1
      HotScroll = False
      AutoSize = False
      ScrollType = scstHorizontal
      ScrollOffset = 0
      ScrollTimerInterval = 50
      ScrollButtonArrowWidth = 2
      HorzScrollDirection = scgspsdLeftToRight
      VertScrollDirection = scgspsdTopToBottom
      TouchScroll = False
      StorePaintBuffer = True
      object scGPToolGroupPanel7: TscGPToolGroupPanel
        Left = 10
        Top = 0
        Width = 343
        Height = 93
        Align = alLeft
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FluentUIOpaque = False
        TabOrder = 0
        Caption = 'Inventory Tools'
        CaptionHeight = 17
        CaptionFontColor = clGray
        CaptionFontDisabledColor = clNone
        DrawTextMode = scdtmGDI
        DialogButtonColor = clWindowText
        ShowDialogButton = False
        StorePaintBuffer = True
        SeparatorColor = clWindowText
        SeparatorColorAlpha = 50
        object btnItems: TscGPButton
          Left = 223
          Top = 3
          Width = 110
          Height = 70
          Align = alLeft
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          FluentUIOpaque = False
          TabOrder = 0
          OnClick = ItemsExecute
          Action = Items
          Animation = True
          Badge.Color = clRed
          Badge.ColorAlpha = 255
          Badge.Font.Charset = DEFAULT_CHARSET
          Badge.Font.Color = clWhite
          Badge.Font.Height = -12
          Badge.Font.Name = 'Tahoma'
          Badge.Font.Style = [fsBold]
          Badge.Visible = False
          CanFocused = False
          CustomDropDown = False
          DrawTextMode = scdtmGDI
          Margin = -1
          Spacing = 1
          Layout = blGlyphTop
          Images = scGPVirtualImageList1
          ImageIndex = 6
          ImageMargin = 0
          TransparentBackground = True
          Options.NormalColor = clNone
          Options.HotColor = clWindowText
          Options.PressedColor = clWindowText
          Options.FocusedColor = clNone
          Options.DisabledColor = clNone
          Options.NormalColor2 = clNone
          Options.HotColor2 = clNone
          Options.PressedColor2 = clNone
          Options.FocusedColor2 = clNone
          Options.DisabledColor2 = clNone
          Options.NormalColorAlpha = 255
          Options.HotColorAlpha = 30
          Options.PressedColorAlpha = 50
          Options.FocusedColorAlpha = 255
          Options.DisabledColorAlpha = 255
          Options.NormalColor2Alpha = 255
          Options.HotColor2Alpha = 255
          Options.PressedColor2Alpha = 255
          Options.FocusedColor2Alpha = 255
          Options.DisabledColor2Alpha = 255
          Options.FrameNormalColor = clNone
          Options.FrameHotColor = clNone
          Options.FramePressedColor = clNone
          Options.FrameFocusedColor = clNone
          Options.FrameDisabledColor = clNone
          Options.FrameWidth = 1
          Options.FrameNormalColorAlpha = 255
          Options.FrameHotColorAlpha = 255
          Options.FramePressedColorAlpha = 255
          Options.FrameFocusedColorAlpha = 255
          Options.FrameDisabledColorAlpha = 255
          Options.FontNormalColor = clWindowText
          Options.FontHotColor = clWindowText
          Options.FontPressedColor = clWindowText
          Options.FontFocusedColor = clWindowText
          Options.FontDisabledColor = clGray
          Options.ShapeFillGradientAngle = 90
          Options.ShapeFillGradientPressedAngle = -90
          Options.ShapeFillGradientColorOffset = 25
          Options.ShapeCornerRadius = 10
          Options.ShapeStyle = scgpRect
          Options.ArrowSize = 9
          Options.ArrowAreaSize = 0
          Options.ArrowType = scgpatDefault
          Options.ArrowThickness = 2
          Options.ArrowThicknessScaled = False
          Options.ArrowNormalColor = clWindowText
          Options.ArrowHotColor = clWindowText
          Options.ArrowPressedColor = clWindowText
          Options.ArrowFocusedColor = clWindowText
          Options.ArrowDisabledColor = clWindowText
          Options.ArrowNormalColorAlpha = 200
          Options.ArrowHotColorAlpha = 255
          Options.ArrowPressedColorAlpha = 255
          Options.ArrowFocusedColorAlpha = 200
          Options.ArrowDisabledColorAlpha = 125
          Options.StyleColors = True
          Options.PressedHotColors = False
          HotImageIndex = 6
          FluentLightEffect = False
          FocusedImageIndex = 6
          PressedImageIndex = 6
          UseGalleryMenuImage = False
          UseGalleryMenuCaption = False
          ScaleMarginAndSpacing = False
          WidthWithCaption = 0
          WidthWithoutCaption = 0
          SplitButton = False
          RepeatClick = False
          RepeatClickInterval = 100
          GlowEffect.Enabled = False
          GlowEffect.Color = clHighlight
          GlowEffect.AlphaValue = 255
          GlowEffect.GlowSize = 7
          GlowEffect.Offset = 0
          GlowEffect.Intensive = True
          GlowEffect.StyleColors = True
          GlowEffect.HotColor = clNone
          GlowEffect.PressedColor = clNone
          GlowEffect.FocusedColor = clNone
          GlowEffect.PressedGlowSize = 7
          GlowEffect.PressedAlphaValue = 255
          GlowEffect.States = [scsHot, scsPressed, scsFocused]
          ImageGlow = True
          ShowGalleryMenuFromTop = False
          ShowGalleryMenuFromRight = False
          ShowMenuArrow = True
          ShowFocusRect = True
          Down = False
          GroupIndex = 0
          AllowAllUp = False
        end
        object btnFabrics: TscGPButton
          Left = 3
          Top = 3
          Width = 110
          Height = 70
          Align = alLeft
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          FluentUIOpaque = False
          TabOrder = 1
          OnClick = FabricsExecute
          Action = Fabrics
          Animation = True
          Badge.Color = clRed
          Badge.ColorAlpha = 255
          Badge.Font.Charset = DEFAULT_CHARSET
          Badge.Font.Color = clWhite
          Badge.Font.Height = -12
          Badge.Font.Name = 'Tahoma'
          Badge.Font.Style = [fsBold]
          Badge.Visible = False
          CanFocused = False
          CustomDropDown = False
          DrawTextMode = scdtmGDI
          Margin = 4
          Spacing = 1
          Layout = blGlyphTop
          Images = scGPVirtualImageList1
          ImageIndex = 4
          ImageMargin = 0
          TransparentBackground = True
          Options.NormalColor = clNone
          Options.HotColor = clWindowText
          Options.PressedColor = clWindowText
          Options.FocusedColor = clNone
          Options.DisabledColor = clNone
          Options.NormalColor2 = clNone
          Options.HotColor2 = clNone
          Options.PressedColor2 = clNone
          Options.FocusedColor2 = clNone
          Options.DisabledColor2 = clNone
          Options.NormalColorAlpha = 255
          Options.HotColorAlpha = 30
          Options.PressedColorAlpha = 50
          Options.FocusedColorAlpha = 255
          Options.DisabledColorAlpha = 255
          Options.NormalColor2Alpha = 255
          Options.HotColor2Alpha = 255
          Options.PressedColor2Alpha = 255
          Options.FocusedColor2Alpha = 255
          Options.DisabledColor2Alpha = 255
          Options.FrameNormalColor = clNone
          Options.FrameHotColor = clNone
          Options.FramePressedColor = clNone
          Options.FrameFocusedColor = clNone
          Options.FrameDisabledColor = clNone
          Options.FrameWidth = 1
          Options.FrameNormalColorAlpha = 255
          Options.FrameHotColorAlpha = 255
          Options.FramePressedColorAlpha = 255
          Options.FrameFocusedColorAlpha = 255
          Options.FrameDisabledColorAlpha = 255
          Options.FontNormalColor = clWindowText
          Options.FontHotColor = clWindowText
          Options.FontPressedColor = clWindowText
          Options.FontFocusedColor = clWindowText
          Options.FontDisabledColor = clGray
          Options.ShapeFillGradientAngle = 90
          Options.ShapeFillGradientPressedAngle = -90
          Options.ShapeFillGradientColorOffset = 25
          Options.ShapeCornerRadius = 10
          Options.ShapeStyle = scgpRect
          Options.ArrowSize = 9
          Options.ArrowAreaSize = 0
          Options.ArrowType = scgpatDefault
          Options.ArrowThickness = 2
          Options.ArrowThicknessScaled = False
          Options.ArrowNormalColor = clWindowText
          Options.ArrowHotColor = clWindowText
          Options.ArrowPressedColor = clWindowText
          Options.ArrowFocusedColor = clWindowText
          Options.ArrowDisabledColor = clWindowText
          Options.ArrowNormalColorAlpha = 200
          Options.ArrowHotColorAlpha = 255
          Options.ArrowPressedColorAlpha = 255
          Options.ArrowFocusedColorAlpha = 200
          Options.ArrowDisabledColorAlpha = 125
          Options.StyleColors = True
          Options.PressedHotColors = False
          HotImageIndex = 4
          FluentLightEffect = False
          FocusedImageIndex = 4
          PressedImageIndex = 4
          UseGalleryMenuImage = False
          UseGalleryMenuCaption = False
          ScaleMarginAndSpacing = False
          WidthWithCaption = 0
          WidthWithoutCaption = 0
          SplitButton = False
          RepeatClick = False
          RepeatClickInterval = 100
          GlowEffect.Enabled = False
          GlowEffect.Color = clHighlight
          GlowEffect.AlphaValue = 255
          GlowEffect.GlowSize = 7
          GlowEffect.Offset = 0
          GlowEffect.Intensive = True
          GlowEffect.StyleColors = True
          GlowEffect.HotColor = clNone
          GlowEffect.PressedColor = clNone
          GlowEffect.FocusedColor = clNone
          GlowEffect.PressedGlowSize = 7
          GlowEffect.PressedAlphaValue = 255
          GlowEffect.States = [scsHot, scsPressed, scsFocused]
          ImageGlow = True
          ShowGalleryMenuFromTop = False
          ShowGalleryMenuFromRight = False
          ShowMenuArrow = True
          ShowFocusRect = True
          Down = False
          GroupIndex = 0
          AllowAllUp = False
        end
        object btnUnit: TscGPButton
          Left = 113
          Top = 3
          Width = 110
          Height = 70
          Align = alLeft
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          FluentUIOpaque = False
          TabOrder = 2
          OnClick = Veb
          Action = ItemUnit
          Animation = True
          Badge.Color = clRed
          Badge.ColorAlpha = 255
          Badge.Font.Charset = DEFAULT_CHARSET
          Badge.Font.Color = clWhite
          Badge.Font.Height = -12
          Badge.Font.Name = 'Tahoma'
          Badge.Font.Style = [fsBold]
          Badge.Visible = False
          CanFocused = False
          CustomDropDown = False
          DrawTextMode = scdtmGDI
          Margin = -1
          Spacing = 1
          Layout = blGlyphTop
          Images = scGPVirtualImageList1
          ImageIndex = 13
          ImageMargin = 0
          TransparentBackground = True
          Options.NormalColor = clNone
          Options.HotColor = clWindowText
          Options.PressedColor = clWindowText
          Options.FocusedColor = clNone
          Options.DisabledColor = clNone
          Options.NormalColor2 = clNone
          Options.HotColor2 = clNone
          Options.PressedColor2 = clNone
          Options.FocusedColor2 = clNone
          Options.DisabledColor2 = clNone
          Options.NormalColorAlpha = 255
          Options.HotColorAlpha = 30
          Options.PressedColorAlpha = 50
          Options.FocusedColorAlpha = 255
          Options.DisabledColorAlpha = 255
          Options.NormalColor2Alpha = 255
          Options.HotColor2Alpha = 255
          Options.PressedColor2Alpha = 255
          Options.FocusedColor2Alpha = 255
          Options.DisabledColor2Alpha = 255
          Options.FrameNormalColor = clNone
          Options.FrameHotColor = clNone
          Options.FramePressedColor = clNone
          Options.FrameFocusedColor = clNone
          Options.FrameDisabledColor = clNone
          Options.FrameWidth = 1
          Options.FrameNormalColorAlpha = 255
          Options.FrameHotColorAlpha = 255
          Options.FramePressedColorAlpha = 255
          Options.FrameFocusedColorAlpha = 255
          Options.FrameDisabledColorAlpha = 255
          Options.FontNormalColor = clWindowText
          Options.FontHotColor = clWindowText
          Options.FontPressedColor = clWindowText
          Options.FontFocusedColor = clWindowText
          Options.FontDisabledColor = clGray
          Options.ShapeFillGradientAngle = 90
          Options.ShapeFillGradientPressedAngle = -90
          Options.ShapeFillGradientColorOffset = 25
          Options.ShapeCornerRadius = 10
          Options.ShapeStyle = scgpRect
          Options.ArrowSize = 9
          Options.ArrowAreaSize = 0
          Options.ArrowType = scgpatDefault
          Options.ArrowThickness = 2
          Options.ArrowThicknessScaled = False
          Options.ArrowNormalColor = clWindowText
          Options.ArrowHotColor = clWindowText
          Options.ArrowPressedColor = clWindowText
          Options.ArrowFocusedColor = clWindowText
          Options.ArrowDisabledColor = clWindowText
          Options.ArrowNormalColorAlpha = 200
          Options.ArrowHotColorAlpha = 255
          Options.ArrowPressedColorAlpha = 255
          Options.ArrowFocusedColorAlpha = 200
          Options.ArrowDisabledColorAlpha = 125
          Options.StyleColors = True
          Options.PressedHotColors = False
          HotImageIndex = 13
          FluentLightEffect = False
          FocusedImageIndex = 13
          PressedImageIndex = 13
          UseGalleryMenuImage = False
          UseGalleryMenuCaption = False
          ScaleMarginAndSpacing = False
          WidthWithCaption = 0
          WidthWithoutCaption = 0
          SplitButton = False
          RepeatClick = False
          RepeatClickInterval = 100
          GlowEffect.Enabled = False
          GlowEffect.Color = clHighlight
          GlowEffect.AlphaValue = 255
          GlowEffect.GlowSize = 7
          GlowEffect.Offset = 0
          GlowEffect.Intensive = True
          GlowEffect.StyleColors = True
          GlowEffect.HotColor = clNone
          GlowEffect.PressedColor = clNone
          GlowEffect.FocusedColor = clNone
          GlowEffect.PressedGlowSize = 7
          GlowEffect.PressedAlphaValue = 255
          GlowEffect.States = [scsHot, scsPressed, scsFocused]
          ImageGlow = True
          ShowGalleryMenuFromTop = False
          ShowGalleryMenuFromRight = False
          ShowMenuArrow = True
          ShowFocusRect = True
          Down = False
          GroupIndex = 0
          AllowAllUp = False
        end
      end
      object scGPToolGroupPanel10: TscGPToolGroupPanel
        Left = 353
        Top = 0
        Width = 128
        Height = 93
        Align = alLeft
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FluentUIOpaque = False
        TabOrder = 1
        Caption = 'Maintenance'
        CaptionHeight = 17
        CaptionFontColor = clGray
        CaptionFontDisabledColor = clNone
        DrawTextMode = scdtmGDI
        DialogButtonColor = clWindowText
        ShowDialogButton = False
        StorePaintBuffer = True
        SeparatorColor = clWindowText
        SeparatorColorAlpha = 50
        object btnVendor: TscGPButton
          Left = 3
          Top = 3
          Width = 110
          Height = 70
          Align = alLeft
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          FluentUIOpaque = False
          TabOrder = 0
          OnClick = VendorExecute
          Action = Vendor
          Animation = True
          Badge.Color = clRed
          Badge.ColorAlpha = 255
          Badge.Font.Charset = DEFAULT_CHARSET
          Badge.Font.Color = clWhite
          Badge.Font.Height = -12
          Badge.Font.Name = 'Tahoma'
          Badge.Font.Style = [fsBold]
          Badge.Visible = False
          CanFocused = False
          CustomDropDown = False
          DrawTextMode = scdtmGDI
          Margin = -1
          Spacing = 1
          Layout = blGlyphTop
          Images = scGPVirtualImageList1
          ImageIndex = 21
          ImageMargin = 0
          TransparentBackground = True
          Options.NormalColor = clNone
          Options.HotColor = clWindowText
          Options.PressedColor = clWindowText
          Options.FocusedColor = clNone
          Options.DisabledColor = clNone
          Options.NormalColor2 = clNone
          Options.HotColor2 = clNone
          Options.PressedColor2 = clNone
          Options.FocusedColor2 = clNone
          Options.DisabledColor2 = clNone
          Options.NormalColorAlpha = 255
          Options.HotColorAlpha = 30
          Options.PressedColorAlpha = 50
          Options.FocusedColorAlpha = 255
          Options.DisabledColorAlpha = 255
          Options.NormalColor2Alpha = 255
          Options.HotColor2Alpha = 255
          Options.PressedColor2Alpha = 255
          Options.FocusedColor2Alpha = 255
          Options.DisabledColor2Alpha = 255
          Options.FrameNormalColor = clNone
          Options.FrameHotColor = clNone
          Options.FramePressedColor = clNone
          Options.FrameFocusedColor = clNone
          Options.FrameDisabledColor = clNone
          Options.FrameWidth = 1
          Options.FrameNormalColorAlpha = 255
          Options.FrameHotColorAlpha = 255
          Options.FramePressedColorAlpha = 255
          Options.FrameFocusedColorAlpha = 255
          Options.FrameDisabledColorAlpha = 255
          Options.FontNormalColor = clWindowText
          Options.FontHotColor = clWindowText
          Options.FontPressedColor = clWindowText
          Options.FontFocusedColor = clWindowText
          Options.FontDisabledColor = clGray
          Options.ShapeFillGradientAngle = 90
          Options.ShapeFillGradientPressedAngle = -90
          Options.ShapeFillGradientColorOffset = 25
          Options.ShapeCornerRadius = 10
          Options.ShapeStyle = scgpRect
          Options.ArrowSize = 9
          Options.ArrowAreaSize = 0
          Options.ArrowType = scgpatDefault
          Options.ArrowThickness = 2
          Options.ArrowThicknessScaled = False
          Options.ArrowNormalColor = clWindowText
          Options.ArrowHotColor = clWindowText
          Options.ArrowPressedColor = clWindowText
          Options.ArrowFocusedColor = clWindowText
          Options.ArrowDisabledColor = clWindowText
          Options.ArrowNormalColorAlpha = 200
          Options.ArrowHotColorAlpha = 255
          Options.ArrowPressedColorAlpha = 255
          Options.ArrowFocusedColorAlpha = 200
          Options.ArrowDisabledColorAlpha = 125
          Options.StyleColors = True
          Options.PressedHotColors = False
          HotImageIndex = 21
          FluentLightEffect = False
          FocusedImageIndex = 21
          PressedImageIndex = 21
          UseGalleryMenuImage = False
          UseGalleryMenuCaption = False
          ScaleMarginAndSpacing = False
          WidthWithCaption = 0
          WidthWithoutCaption = 0
          SplitButton = False
          RepeatClick = False
          RepeatClickInterval = 100
          GlowEffect.Enabled = False
          GlowEffect.Color = clHighlight
          GlowEffect.AlphaValue = 255
          GlowEffect.GlowSize = 7
          GlowEffect.Offset = 0
          GlowEffect.Intensive = True
          GlowEffect.StyleColors = True
          GlowEffect.HotColor = clNone
          GlowEffect.PressedColor = clNone
          GlowEffect.FocusedColor = clNone
          GlowEffect.PressedGlowSize = 7
          GlowEffect.PressedAlphaValue = 255
          GlowEffect.States = [scsHot, scsPressed, scsFocused]
          ImageGlow = True
          ShowGalleryMenuFromTop = False
          ShowGalleryMenuFromRight = False
          ShowMenuArrow = True
          ShowFocusRect = True
          Down = False
          GroupIndex = 0
          AllowAllUp = False
        end
      end
    end
    object scGPToolPagerPage7: TscGPToolPagerPage
      Left = 0
      Top = 35
      Width = 1084
      Height = 98
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      Padding.Left = 10
      Padding.Right = 10
      Padding.Bottom = 5
      ParentFont = False
      FluentUIOpaque = False
      TabOrder = 0
      Visible = False
      CanScroll = True
      FillGradientAngle = 90
      FillGradientBeginAlpha = 255
      FillGradientEndAlpha = 255
      FillGradientBeginColorOffset = 25
      FillGradientEndColorOffset = 25
      FillColor = clNone
      FillColorAlpha = 255
      FillColor2 = clNone
      Color = clBtnFace
      BGStyleKind = scgspbTransparent
      ScrollButtonWidth = 17
      CustomImageIndex = -1
      WallpaperIndex = -1
      HotScroll = False
      AutoSize = False
      ScrollType = scstHorizontal
      ScrollOffset = 0
      ScrollTimerInterval = 50
      ScrollButtonArrowWidth = 2
      HorzScrollDirection = scgspsdLeftToRight
      VertScrollDirection = scgspsdTopToBottom
      TouchScroll = False
      StorePaintBuffer = False
      object scGPToolGroupPanel1: TscGPToolGroupPanel
        Left = 10
        Top = 0
        Width = 247
        Height = 93
        Align = alLeft
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FluentUIOpaque = False
        TabOrder = 0
        Caption = 'Users'
        CaptionHeight = 17
        CaptionFontColor = clGray
        CaptionFontDisabledColor = clNone
        DrawTextMode = scdtmGDI
        DialogButtonColor = clWindowText
        ShowDialogButton = False
        StorePaintBuffer = True
        SeparatorColor = clWindowText
        SeparatorColorAlpha = 50
        object btnUsers: TscGPButton
          Left = 113
          Top = 3
          Width = 131
          Height = 70
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          FluentUIOpaque = False
          TabOrder = 0
          OnClick = UserRegistrationExecute
          Action = UserRegistration
          Animation = True
          Badge.Color = clRed
          Badge.ColorAlpha = 255
          Badge.Font.Charset = DEFAULT_CHARSET
          Badge.Font.Color = clWhite
          Badge.Font.Height = -12
          Badge.Font.Name = 'Tahoma'
          Badge.Font.Style = [fsBold]
          Badge.Visible = False
          CanFocused = False
          CustomDropDown = False
          DrawTextMode = scdtmGDI
          Margin = -1
          Spacing = 1
          Layout = blGlyphTop
          Images = scGPVirtualImageList1
          ImageIndex = 14
          ImageMargin = 0
          TransparentBackground = True
          Options.NormalColor = clNone
          Options.HotColor = clWindowText
          Options.PressedColor = clWindowText
          Options.FocusedColor = clNone
          Options.DisabledColor = clNone
          Options.NormalColor2 = clNone
          Options.HotColor2 = clNone
          Options.PressedColor2 = clNone
          Options.FocusedColor2 = clNone
          Options.DisabledColor2 = clNone
          Options.NormalColorAlpha = 255
          Options.HotColorAlpha = 30
          Options.PressedColorAlpha = 50
          Options.FocusedColorAlpha = 255
          Options.DisabledColorAlpha = 255
          Options.NormalColor2Alpha = 255
          Options.HotColor2Alpha = 255
          Options.PressedColor2Alpha = 255
          Options.FocusedColor2Alpha = 255
          Options.DisabledColor2Alpha = 255
          Options.FrameNormalColor = clNone
          Options.FrameHotColor = clNone
          Options.FramePressedColor = clNone
          Options.FrameFocusedColor = clNone
          Options.FrameDisabledColor = clNone
          Options.FrameWidth = 1
          Options.FrameNormalColorAlpha = 255
          Options.FrameHotColorAlpha = 255
          Options.FramePressedColorAlpha = 255
          Options.FrameFocusedColorAlpha = 255
          Options.FrameDisabledColorAlpha = 255
          Options.FontNormalColor = clWindowText
          Options.FontHotColor = clWindowText
          Options.FontPressedColor = clWindowText
          Options.FontFocusedColor = clWindowText
          Options.FontDisabledColor = clGray
          Options.ShapeFillGradientAngle = 90
          Options.ShapeFillGradientPressedAngle = -90
          Options.ShapeFillGradientColorOffset = 25
          Options.ShapeCornerRadius = 10
          Options.ShapeStyle = scgpRect
          Options.ArrowSize = 9
          Options.ArrowAreaSize = 0
          Options.ArrowType = scgpatDefault
          Options.ArrowThickness = 2
          Options.ArrowThicknessScaled = False
          Options.ArrowNormalColor = clWindowText
          Options.ArrowHotColor = clWindowText
          Options.ArrowPressedColor = clWindowText
          Options.ArrowFocusedColor = clWindowText
          Options.ArrowDisabledColor = clWindowText
          Options.ArrowNormalColorAlpha = 200
          Options.ArrowHotColorAlpha = 255
          Options.ArrowPressedColorAlpha = 255
          Options.ArrowFocusedColorAlpha = 200
          Options.ArrowDisabledColorAlpha = 125
          Options.StyleColors = True
          Options.PressedHotColors = False
          HotImageIndex = 14
          FluentLightEffect = False
          FocusedImageIndex = 14
          PressedImageIndex = 14
          UseGalleryMenuImage = False
          UseGalleryMenuCaption = False
          ScaleMarginAndSpacing = False
          WidthWithCaption = 0
          WidthWithoutCaption = 0
          SplitButton = False
          RepeatClick = False
          RepeatClickInterval = 100
          GlowEffect.Enabled = False
          GlowEffect.Color = clHighlight
          GlowEffect.AlphaValue = 255
          GlowEffect.GlowSize = 7
          GlowEffect.Offset = 0
          GlowEffect.Intensive = True
          GlowEffect.StyleColors = True
          GlowEffect.HotColor = clNone
          GlowEffect.PressedColor = clNone
          GlowEffect.FocusedColor = clNone
          GlowEffect.PressedGlowSize = 7
          GlowEffect.PressedAlphaValue = 255
          GlowEffect.States = [scsHot, scsPressed, scsFocused]
          ImageGlow = True
          ShowGalleryMenuFromTop = False
          ShowGalleryMenuFromRight = False
          ShowMenuArrow = True
          ShowFocusRect = True
          Down = False
          GroupIndex = 0
          AllowAllUp = False
        end
        object scGPButton5: TscGPButton
          Left = 3
          Top = 3
          Width = 110
          Height = 70
          Align = alLeft
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          FluentUIOpaque = False
          TabOrder = 1
          OnClick = LogOutExecute
          Action = LogOut
          Animation = True
          Badge.Color = clRed
          Badge.ColorAlpha = 255
          Badge.Font.Charset = DEFAULT_CHARSET
          Badge.Font.Color = clWhite
          Badge.Font.Height = -12
          Badge.Font.Name = 'Tahoma'
          Badge.Font.Style = [fsBold]
          Badge.Visible = False
          CanFocused = False
          CustomDropDown = False
          DrawTextMode = scdtmGDI
          Margin = -1
          Spacing = 1
          Layout = blGlyphTop
          Images = scGPVirtualImageList1
          ImageIndex = 26
          ImageMargin = 0
          TransparentBackground = True
          Options.NormalColor = clNone
          Options.HotColor = clWindowText
          Options.PressedColor = clWindowText
          Options.FocusedColor = clNone
          Options.DisabledColor = clNone
          Options.NormalColor2 = clNone
          Options.HotColor2 = clNone
          Options.PressedColor2 = clNone
          Options.FocusedColor2 = clNone
          Options.DisabledColor2 = clNone
          Options.NormalColorAlpha = 255
          Options.HotColorAlpha = 30
          Options.PressedColorAlpha = 50
          Options.FocusedColorAlpha = 255
          Options.DisabledColorAlpha = 255
          Options.NormalColor2Alpha = 255
          Options.HotColor2Alpha = 255
          Options.PressedColor2Alpha = 255
          Options.FocusedColor2Alpha = 255
          Options.DisabledColor2Alpha = 255
          Options.FrameNormalColor = clNone
          Options.FrameHotColor = clNone
          Options.FramePressedColor = clNone
          Options.FrameFocusedColor = clNone
          Options.FrameDisabledColor = clNone
          Options.FrameWidth = 1
          Options.FrameNormalColorAlpha = 255
          Options.FrameHotColorAlpha = 255
          Options.FramePressedColorAlpha = 255
          Options.FrameFocusedColorAlpha = 255
          Options.FrameDisabledColorAlpha = 255
          Options.FontNormalColor = clWindowText
          Options.FontHotColor = clWindowText
          Options.FontPressedColor = clWindowText
          Options.FontFocusedColor = clWindowText
          Options.FontDisabledColor = clGray
          Options.ShapeFillGradientAngle = 90
          Options.ShapeFillGradientPressedAngle = -90
          Options.ShapeFillGradientColorOffset = 25
          Options.ShapeCornerRadius = 10
          Options.ShapeStyle = scgpRect
          Options.ArrowSize = 9
          Options.ArrowAreaSize = 0
          Options.ArrowType = scgpatDefault
          Options.ArrowThickness = 2
          Options.ArrowThicknessScaled = False
          Options.ArrowNormalColor = clWindowText
          Options.ArrowHotColor = clWindowText
          Options.ArrowPressedColor = clWindowText
          Options.ArrowFocusedColor = clWindowText
          Options.ArrowDisabledColor = clWindowText
          Options.ArrowNormalColorAlpha = 200
          Options.ArrowHotColorAlpha = 255
          Options.ArrowPressedColorAlpha = 255
          Options.ArrowFocusedColorAlpha = 200
          Options.ArrowDisabledColorAlpha = 125
          Options.StyleColors = True
          Options.PressedHotColors = False
          HotImageIndex = 26
          FluentLightEffect = False
          FocusedImageIndex = 26
          PressedImageIndex = 26
          UseGalleryMenuImage = False
          UseGalleryMenuCaption = False
          ScaleMarginAndSpacing = False
          WidthWithCaption = 0
          WidthWithoutCaption = 0
          SplitButton = False
          RepeatClick = False
          RepeatClickInterval = 100
          GlowEffect.Enabled = False
          GlowEffect.Color = clHighlight
          GlowEffect.AlphaValue = 255
          GlowEffect.GlowSize = 7
          GlowEffect.Offset = 0
          GlowEffect.Intensive = True
          GlowEffect.StyleColors = True
          GlowEffect.HotColor = clNone
          GlowEffect.PressedColor = clNone
          GlowEffect.FocusedColor = clNone
          GlowEffect.PressedGlowSize = 7
          GlowEffect.PressedAlphaValue = 255
          GlowEffect.States = [scsHot, scsPressed, scsFocused]
          ImageGlow = True
          ShowGalleryMenuFromTop = False
          ShowGalleryMenuFromRight = False
          ShowMenuArrow = True
          ShowFocusRect = True
          Down = False
          GroupIndex = 0
          AllowAllUp = False
        end
      end
      object scGPToolGroupPanel16: TscGPToolGroupPanel
        Left = 257
        Top = 0
        Width = 368
        Height = 93
        Align = alLeft
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FluentUIOpaque = False
        TabOrder = 1
        Caption = 'Settings'
        CaptionHeight = 17
        CaptionFontColor = clGray
        CaptionFontDisabledColor = clNone
        DrawTextMode = scdtmGDI
        DialogButtonColor = clWindowText
        ShowDialogButton = False
        StorePaintBuffer = True
        SeparatorColor = clWindowText
        SeparatorColorAlpha = 50
        object btnCompany: TscGPButton
          Left = 3
          Top = 3
          Width = 110
          Height = 70
          Align = alLeft
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          FluentUIOpaque = False
          TabOrder = 0
          OnClick = CompanySetupExecute
          Action = CompanySetup
          Animation = True
          Badge.Color = clRed
          Badge.ColorAlpha = 255
          Badge.Font.Charset = DEFAULT_CHARSET
          Badge.Font.Color = clWhite
          Badge.Font.Height = -12
          Badge.Font.Name = 'Tahoma'
          Badge.Font.Style = [fsBold]
          Badge.Visible = False
          CanFocused = False
          CustomDropDown = False
          DrawTextMode = scdtmGDI
          Margin = -1
          Spacing = 1
          Layout = blGlyphTop
          Images = scGPVirtualImageList1
          ImageIndex = 17
          ImageMargin = 0
          TransparentBackground = True
          Options.NormalColor = clNone
          Options.HotColor = clWindowText
          Options.PressedColor = clWindowText
          Options.FocusedColor = clNone
          Options.DisabledColor = clNone
          Options.NormalColor2 = clNone
          Options.HotColor2 = clNone
          Options.PressedColor2 = clNone
          Options.FocusedColor2 = clNone
          Options.DisabledColor2 = clNone
          Options.NormalColorAlpha = 255
          Options.HotColorAlpha = 30
          Options.PressedColorAlpha = 50
          Options.FocusedColorAlpha = 255
          Options.DisabledColorAlpha = 255
          Options.NormalColor2Alpha = 255
          Options.HotColor2Alpha = 255
          Options.PressedColor2Alpha = 255
          Options.FocusedColor2Alpha = 255
          Options.DisabledColor2Alpha = 255
          Options.FrameNormalColor = clNone
          Options.FrameHotColor = clNone
          Options.FramePressedColor = clNone
          Options.FrameFocusedColor = clNone
          Options.FrameDisabledColor = clNone
          Options.FrameWidth = 1
          Options.FrameNormalColorAlpha = 255
          Options.FrameHotColorAlpha = 255
          Options.FramePressedColorAlpha = 255
          Options.FrameFocusedColorAlpha = 255
          Options.FrameDisabledColorAlpha = 255
          Options.FontNormalColor = clWindowText
          Options.FontHotColor = clWindowText
          Options.FontPressedColor = clWindowText
          Options.FontFocusedColor = clWindowText
          Options.FontDisabledColor = clGray
          Options.ShapeFillGradientAngle = 90
          Options.ShapeFillGradientPressedAngle = -90
          Options.ShapeFillGradientColorOffset = 25
          Options.ShapeCornerRadius = 10
          Options.ShapeStyle = scgpRect
          Options.ArrowSize = 9
          Options.ArrowAreaSize = 0
          Options.ArrowType = scgpatDefault
          Options.ArrowThickness = 2
          Options.ArrowThicknessScaled = False
          Options.ArrowNormalColor = clWindowText
          Options.ArrowHotColor = clWindowText
          Options.ArrowPressedColor = clWindowText
          Options.ArrowFocusedColor = clWindowText
          Options.ArrowDisabledColor = clWindowText
          Options.ArrowNormalColorAlpha = 200
          Options.ArrowHotColorAlpha = 255
          Options.ArrowPressedColorAlpha = 255
          Options.ArrowFocusedColorAlpha = 200
          Options.ArrowDisabledColorAlpha = 125
          Options.StyleColors = True
          Options.PressedHotColors = False
          HotImageIndex = 17
          FluentLightEffect = False
          FocusedImageIndex = 17
          PressedImageIndex = 17
          UseGalleryMenuImage = False
          UseGalleryMenuCaption = False
          ScaleMarginAndSpacing = False
          WidthWithCaption = 0
          WidthWithoutCaption = 0
          SplitButton = False
          RepeatClick = False
          RepeatClickInterval = 100
          GlowEffect.Enabled = False
          GlowEffect.Color = clHighlight
          GlowEffect.AlphaValue = 255
          GlowEffect.GlowSize = 7
          GlowEffect.Offset = 0
          GlowEffect.Intensive = True
          GlowEffect.StyleColors = True
          GlowEffect.HotColor = clNone
          GlowEffect.PressedColor = clNone
          GlowEffect.FocusedColor = clNone
          GlowEffect.PressedGlowSize = 7
          GlowEffect.PressedAlphaValue = 255
          GlowEffect.States = [scsHot, scsPressed, scsFocused]
          ImageGlow = True
          ShowGalleryMenuFromTop = False
          ShowGalleryMenuFromRight = False
          ShowMenuArrow = True
          ShowFocusRect = True
          Down = False
          GroupIndex = 0
          AllowAllUp = False
        end
        object scGPButton7: TscGPButton
          Left = 113
          Top = 3
          Width = 110
          Height = 70
          Align = alLeft
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          FluentUIOpaque = False
          TabOrder = 1
          OnClick = UserRolesExecute
          Action = UserRoles
          Animation = True
          Badge.Color = clRed
          Badge.ColorAlpha = 255
          Badge.Font.Charset = DEFAULT_CHARSET
          Badge.Font.Color = clWhite
          Badge.Font.Height = -12
          Badge.Font.Name = 'Tahoma'
          Badge.Font.Style = [fsBold]
          Badge.Visible = False
          CanFocused = False
          CustomDropDown = False
          DrawTextMode = scdtmGDI
          Margin = -1
          Spacing = 1
          Layout = blGlyphTop
          Images = scGPVirtualImageList1
          ImageIndex = 18
          ImageMargin = 0
          TransparentBackground = True
          Options.NormalColor = clNone
          Options.HotColor = clWindowText
          Options.PressedColor = clWindowText
          Options.FocusedColor = clNone
          Options.DisabledColor = clNone
          Options.NormalColor2 = clNone
          Options.HotColor2 = clNone
          Options.PressedColor2 = clNone
          Options.FocusedColor2 = clNone
          Options.DisabledColor2 = clNone
          Options.NormalColorAlpha = 255
          Options.HotColorAlpha = 30
          Options.PressedColorAlpha = 50
          Options.FocusedColorAlpha = 255
          Options.DisabledColorAlpha = 255
          Options.NormalColor2Alpha = 255
          Options.HotColor2Alpha = 255
          Options.PressedColor2Alpha = 255
          Options.FocusedColor2Alpha = 255
          Options.DisabledColor2Alpha = 255
          Options.FrameNormalColor = clNone
          Options.FrameHotColor = clNone
          Options.FramePressedColor = clNone
          Options.FrameFocusedColor = clNone
          Options.FrameDisabledColor = clNone
          Options.FrameWidth = 1
          Options.FrameNormalColorAlpha = 255
          Options.FrameHotColorAlpha = 255
          Options.FramePressedColorAlpha = 255
          Options.FrameFocusedColorAlpha = 255
          Options.FrameDisabledColorAlpha = 255
          Options.FontNormalColor = clWindowText
          Options.FontHotColor = clWindowText
          Options.FontPressedColor = clWindowText
          Options.FontFocusedColor = clWindowText
          Options.FontDisabledColor = clGray
          Options.ShapeFillGradientAngle = 90
          Options.ShapeFillGradientPressedAngle = -90
          Options.ShapeFillGradientColorOffset = 25
          Options.ShapeCornerRadius = 10
          Options.ShapeStyle = scgpRect
          Options.ArrowSize = 9
          Options.ArrowAreaSize = 0
          Options.ArrowType = scgpatDefault
          Options.ArrowThickness = 2
          Options.ArrowThicknessScaled = False
          Options.ArrowNormalColor = clWindowText
          Options.ArrowHotColor = clWindowText
          Options.ArrowPressedColor = clWindowText
          Options.ArrowFocusedColor = clWindowText
          Options.ArrowDisabledColor = clWindowText
          Options.ArrowNormalColorAlpha = 200
          Options.ArrowHotColorAlpha = 255
          Options.ArrowPressedColorAlpha = 255
          Options.ArrowFocusedColorAlpha = 200
          Options.ArrowDisabledColorAlpha = 125
          Options.StyleColors = True
          Options.PressedHotColors = False
          HotImageIndex = 18
          FluentLightEffect = False
          FocusedImageIndex = 18
          PressedImageIndex = 18
          UseGalleryMenuImage = False
          UseGalleryMenuCaption = False
          ScaleMarginAndSpacing = False
          WidthWithCaption = 0
          WidthWithoutCaption = 0
          SplitButton = False
          RepeatClick = False
          RepeatClickInterval = 100
          GlowEffect.Enabled = False
          GlowEffect.Color = clHighlight
          GlowEffect.AlphaValue = 255
          GlowEffect.GlowSize = 7
          GlowEffect.Offset = 0
          GlowEffect.Intensive = True
          GlowEffect.StyleColors = True
          GlowEffect.HotColor = clNone
          GlowEffect.PressedColor = clNone
          GlowEffect.FocusedColor = clNone
          GlowEffect.PressedGlowSize = 7
          GlowEffect.PressedAlphaValue = 255
          GlowEffect.States = [scsHot, scsPressed, scsFocused]
          ImageGlow = True
          ShowGalleryMenuFromTop = False
          ShowGalleryMenuFromRight = False
          ShowMenuArrow = True
          ShowFocusRect = True
          Down = False
          GroupIndex = 0
          AllowAllUp = False
        end
        object btnEmpReg1: TscGPButton
          Left = 223
          Top = 3
          Width = 142
          Height = 70
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          FluentUIOpaque = False
          TabOrder = 2
          OnClick = EmployeeRegistrationExecute
          Action = EmployeeRegistration
          Animation = True
          Badge.Color = clRed
          Badge.ColorAlpha = 255
          Badge.Font.Charset = DEFAULT_CHARSET
          Badge.Font.Color = clWhite
          Badge.Font.Height = -12
          Badge.Font.Name = 'Tahoma'
          Badge.Font.Style = [fsBold]
          Badge.Visible = False
          CanFocused = False
          CustomDropDown = False
          DrawTextMode = scdtmGDI
          Margin = -1
          Spacing = 1
          Layout = blGlyphTop
          Images = scGPVirtualImageList1
          ImageIndex = 2
          ImageMargin = 0
          TransparentBackground = True
          Options.NormalColor = clNone
          Options.HotColor = clWindowText
          Options.PressedColor = clWindowText
          Options.FocusedColor = clNone
          Options.DisabledColor = clNone
          Options.NormalColor2 = clNone
          Options.HotColor2 = clNone
          Options.PressedColor2 = clNone
          Options.FocusedColor2 = clNone
          Options.DisabledColor2 = clNone
          Options.NormalColorAlpha = 255
          Options.HotColorAlpha = 30
          Options.PressedColorAlpha = 50
          Options.FocusedColorAlpha = 255
          Options.DisabledColorAlpha = 255
          Options.NormalColor2Alpha = 255
          Options.HotColor2Alpha = 255
          Options.PressedColor2Alpha = 255
          Options.FocusedColor2Alpha = 255
          Options.DisabledColor2Alpha = 255
          Options.FrameNormalColor = clNone
          Options.FrameHotColor = clNone
          Options.FramePressedColor = clNone
          Options.FrameFocusedColor = clNone
          Options.FrameDisabledColor = clNone
          Options.FrameWidth = 1
          Options.FrameNormalColorAlpha = 255
          Options.FrameHotColorAlpha = 255
          Options.FramePressedColorAlpha = 255
          Options.FrameFocusedColorAlpha = 255
          Options.FrameDisabledColorAlpha = 255
          Options.FontNormalColor = clWindowText
          Options.FontHotColor = clWindowText
          Options.FontPressedColor = clWindowText
          Options.FontFocusedColor = clWindowText
          Options.FontDisabledColor = clGray
          Options.ShapeFillGradientAngle = 90
          Options.ShapeFillGradientPressedAngle = -90
          Options.ShapeFillGradientColorOffset = 25
          Options.ShapeCornerRadius = 10
          Options.ShapeStyle = scgpRect
          Options.ArrowSize = 9
          Options.ArrowAreaSize = 0
          Options.ArrowType = scgpatDefault
          Options.ArrowThickness = 2
          Options.ArrowThicknessScaled = False
          Options.ArrowNormalColor = clWindowText
          Options.ArrowHotColor = clWindowText
          Options.ArrowPressedColor = clWindowText
          Options.ArrowFocusedColor = clWindowText
          Options.ArrowDisabledColor = clWindowText
          Options.ArrowNormalColorAlpha = 200
          Options.ArrowHotColorAlpha = 255
          Options.ArrowPressedColorAlpha = 255
          Options.ArrowFocusedColorAlpha = 200
          Options.ArrowDisabledColorAlpha = 125
          Options.StyleColors = True
          Options.PressedHotColors = False
          HotImageIndex = 2
          FluentLightEffect = False
          FocusedImageIndex = 2
          PressedImageIndex = 2
          UseGalleryMenuImage = False
          UseGalleryMenuCaption = False
          ScaleMarginAndSpacing = False
          WidthWithCaption = 0
          WidthWithoutCaption = 0
          SplitButton = False
          RepeatClick = False
          RepeatClickInterval = 100
          GlowEffect.Enabled = False
          GlowEffect.Color = clHighlight
          GlowEffect.AlphaValue = 255
          GlowEffect.GlowSize = 7
          GlowEffect.Offset = 0
          GlowEffect.Intensive = True
          GlowEffect.StyleColors = True
          GlowEffect.HotColor = clNone
          GlowEffect.PressedColor = clNone
          GlowEffect.FocusedColor = clNone
          GlowEffect.PressedGlowSize = 7
          GlowEffect.PressedAlphaValue = 255
          GlowEffect.States = [scsHot, scsPressed, scsFocused]
          ImageGlow = True
          ShowGalleryMenuFromTop = False
          ShowGalleryMenuFromRight = False
          ShowMenuArrow = True
          ShowFocusRect = True
          Down = False
          GroupIndex = 0
          AllowAllUp = False
        end
      end
    end
    object scGPToolPagerPage1: TscGPToolPagerPage
      Left = 0
      Top = 35
      Width = 1084
      Height = 98
      HelpType = htKeyword
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      Padding.Left = 10
      Padding.Right = 10
      Padding.Bottom = 5
      ParentFont = False
      FluentUIOpaque = False
      TabOrder = 1
      Visible = False
      CanScroll = True
      FillGradientAngle = 90
      FillGradientBeginAlpha = 255
      FillGradientEndAlpha = 255
      FillGradientBeginColorOffset = 25
      FillGradientEndColorOffset = 25
      FillColor = clWhite
      FillColorAlpha = 0
      FillColor2 = clNone
      Color = clWhite
      BGStyleKind = scgspbTransparent
      ScrollButtonWidth = 17
      CustomImageIndex = -1
      WallpaperIndex = -1
      HotScroll = False
      AutoSize = False
      ScrollType = scstHorizontal
      ScrollOffset = 0
      ScrollTimerInterval = 50
      ScrollButtonArrowWidth = 1
      HorzScrollDirection = scgspsdLeftToRight
      VertScrollDirection = scgspsdTopToBottom
      TouchScroll = False
      StorePaintBuffer = True
      object scGPToolGroupPanel3: TscGPToolGroupPanel
        Left = 10
        Top = 0
        Width = 455
        Height = 93
        Align = alLeft
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FluentUIOpaque = False
        TabOrder = 0
        Caption = 'Project Management Tool'
        CaptionHeight = 17
        CaptionFontColor = clGray
        CaptionFontDisabledColor = clNone
        DrawTextMode = scdtmGDI
        DialogButtonColor = clWindowText
        ShowDialogButton = False
        StorePaintBuffer = True
        SeparatorColor = clWindowText
        SeparatorColorAlpha = 50
        object btnPMBoard: TscGPButton
          Left = 113
          Top = 3
          Width = 110
          Height = 70
          Align = alLeft
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          FluentUIOpaque = False
          TabOrder = 0
          OnClick = PMBoardExecute
          Action = PMBoard
          Animation = True
          Badge.Color = clRed
          Badge.ColorAlpha = 255
          Badge.Font.Charset = DEFAULT_CHARSET
          Badge.Font.Color = clWhite
          Badge.Font.Height = -12
          Badge.Font.Name = 'Tahoma'
          Badge.Font.Style = [fsBold]
          Badge.Visible = False
          CanFocused = False
          CustomDropDown = False
          DrawTextMode = scdtmGDI
          Margin = -1
          Spacing = 1
          Layout = blGlyphTop
          Images = scGPVirtualImageList1
          ImageIndex = 11
          ImageMargin = 0
          TransparentBackground = True
          Options.NormalColor = clNone
          Options.HotColor = clWindowText
          Options.PressedColor = clWindowText
          Options.FocusedColor = clNone
          Options.DisabledColor = clNone
          Options.NormalColor2 = clNone
          Options.HotColor2 = clNone
          Options.PressedColor2 = clNone
          Options.FocusedColor2 = clNone
          Options.DisabledColor2 = clNone
          Options.NormalColorAlpha = 255
          Options.HotColorAlpha = 30
          Options.PressedColorAlpha = 50
          Options.FocusedColorAlpha = 255
          Options.DisabledColorAlpha = 255
          Options.NormalColor2Alpha = 255
          Options.HotColor2Alpha = 255
          Options.PressedColor2Alpha = 255
          Options.FocusedColor2Alpha = 255
          Options.DisabledColor2Alpha = 255
          Options.FrameNormalColor = clNone
          Options.FrameHotColor = clNone
          Options.FramePressedColor = clNone
          Options.FrameFocusedColor = clNone
          Options.FrameDisabledColor = clNone
          Options.FrameWidth = 1
          Options.FrameNormalColorAlpha = 255
          Options.FrameHotColorAlpha = 255
          Options.FramePressedColorAlpha = 255
          Options.FrameFocusedColorAlpha = 255
          Options.FrameDisabledColorAlpha = 255
          Options.FontNormalColor = clWindowText
          Options.FontHotColor = clWindowText
          Options.FontPressedColor = clWindowText
          Options.FontFocusedColor = clWindowText
          Options.FontDisabledColor = clGray
          Options.ShapeFillGradientAngle = 90
          Options.ShapeFillGradientPressedAngle = -90
          Options.ShapeFillGradientColorOffset = 25
          Options.ShapeCornerRadius = 10
          Options.ShapeStyle = scgpRect
          Options.ArrowSize = 9
          Options.ArrowAreaSize = 0
          Options.ArrowType = scgpatDefault
          Options.ArrowThickness = 2
          Options.ArrowThicknessScaled = False
          Options.ArrowNormalColor = clWindowText
          Options.ArrowHotColor = clWindowText
          Options.ArrowPressedColor = clWindowText
          Options.ArrowFocusedColor = clWindowText
          Options.ArrowDisabledColor = clWindowText
          Options.ArrowNormalColorAlpha = 200
          Options.ArrowHotColorAlpha = 255
          Options.ArrowPressedColorAlpha = 255
          Options.ArrowFocusedColorAlpha = 200
          Options.ArrowDisabledColorAlpha = 125
          Options.StyleColors = True
          Options.PressedHotColors = False
          HotImageIndex = 11
          FluentLightEffect = False
          FocusedImageIndex = 11
          PressedImageIndex = 11
          UseGalleryMenuImage = False
          UseGalleryMenuCaption = False
          ScaleMarginAndSpacing = False
          WidthWithCaption = 0
          WidthWithoutCaption = 0
          SplitButton = False
          RepeatClick = False
          RepeatClickInterval = 100
          GlowEffect.Enabled = False
          GlowEffect.Color = clHighlight
          GlowEffect.AlphaValue = 255
          GlowEffect.GlowSize = 7
          GlowEffect.Offset = 0
          GlowEffect.Intensive = True
          GlowEffect.StyleColors = True
          GlowEffect.HotColor = clNone
          GlowEffect.PressedColor = clNone
          GlowEffect.FocusedColor = clNone
          GlowEffect.PressedGlowSize = 7
          GlowEffect.PressedAlphaValue = 255
          GlowEffect.States = [scsHot, scsPressed, scsFocused]
          ImageGlow = True
          ShowGalleryMenuFromTop = False
          ShowGalleryMenuFromRight = False
          ShowMenuArrow = True
          ShowFocusRect = True
          Down = False
          GroupIndex = 0
          AllowAllUp = False
        end
        object btnMatRequest: TscGPButton
          Left = 333
          Top = 3
          Width = 110
          Height = 70
          Align = alLeft
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          FluentUIOpaque = False
          TabOrder = 1
          OnClick = FabRequestExecute
          Action = FabRequest
          Animation = True
          Badge.Color = clRed
          Badge.ColorAlpha = 255
          Badge.Font.Charset = DEFAULT_CHARSET
          Badge.Font.Color = clWhite
          Badge.Font.Height = -12
          Badge.Font.Name = 'Tahoma'
          Badge.Font.Style = [fsBold]
          Badge.Visible = False
          CanFocused = False
          CustomDropDown = False
          DrawTextMode = scdtmGDI
          Margin = -1
          Spacing = 1
          Layout = blGlyphTop
          Images = scGPVirtualImageList1
          ImageIndex = 25
          ImageMargin = 0
          TransparentBackground = True
          Options.NormalColor = clNone
          Options.HotColor = clWindowText
          Options.PressedColor = clWindowText
          Options.FocusedColor = clNone
          Options.DisabledColor = clNone
          Options.NormalColor2 = clNone
          Options.HotColor2 = clNone
          Options.PressedColor2 = clNone
          Options.FocusedColor2 = clNone
          Options.DisabledColor2 = clNone
          Options.NormalColorAlpha = 255
          Options.HotColorAlpha = 30
          Options.PressedColorAlpha = 50
          Options.FocusedColorAlpha = 255
          Options.DisabledColorAlpha = 255
          Options.NormalColor2Alpha = 255
          Options.HotColor2Alpha = 255
          Options.PressedColor2Alpha = 255
          Options.FocusedColor2Alpha = 255
          Options.DisabledColor2Alpha = 255
          Options.FrameNormalColor = clNone
          Options.FrameHotColor = clNone
          Options.FramePressedColor = clNone
          Options.FrameFocusedColor = clNone
          Options.FrameDisabledColor = clNone
          Options.FrameWidth = 1
          Options.FrameNormalColorAlpha = 255
          Options.FrameHotColorAlpha = 255
          Options.FramePressedColorAlpha = 255
          Options.FrameFocusedColorAlpha = 255
          Options.FrameDisabledColorAlpha = 255
          Options.FontNormalColor = clWindowText
          Options.FontHotColor = clWindowText
          Options.FontPressedColor = clWindowText
          Options.FontFocusedColor = clWindowText
          Options.FontDisabledColor = clGray
          Options.ShapeFillGradientAngle = 90
          Options.ShapeFillGradientPressedAngle = -90
          Options.ShapeFillGradientColorOffset = 25
          Options.ShapeCornerRadius = 10
          Options.ShapeStyle = scgpRect
          Options.ArrowSize = 9
          Options.ArrowAreaSize = 0
          Options.ArrowType = scgpatDefault
          Options.ArrowThickness = 2
          Options.ArrowThicknessScaled = False
          Options.ArrowNormalColor = clWindowText
          Options.ArrowHotColor = clWindowText
          Options.ArrowPressedColor = clWindowText
          Options.ArrowFocusedColor = clWindowText
          Options.ArrowDisabledColor = clWindowText
          Options.ArrowNormalColorAlpha = 200
          Options.ArrowHotColorAlpha = 255
          Options.ArrowPressedColorAlpha = 255
          Options.ArrowFocusedColorAlpha = 200
          Options.ArrowDisabledColorAlpha = 125
          Options.StyleColors = True
          Options.PressedHotColors = False
          HotImageIndex = 25
          FluentLightEffect = False
          FocusedImageIndex = 25
          PressedImageIndex = 25
          UseGalleryMenuImage = False
          UseGalleryMenuCaption = False
          ScaleMarginAndSpacing = False
          WidthWithCaption = 0
          WidthWithoutCaption = 0
          SplitButton = False
          RepeatClick = False
          RepeatClickInterval = 100
          GlowEffect.Enabled = False
          GlowEffect.Color = clHighlight
          GlowEffect.AlphaValue = 255
          GlowEffect.GlowSize = 7
          GlowEffect.Offset = 0
          GlowEffect.Intensive = True
          GlowEffect.StyleColors = True
          GlowEffect.HotColor = clNone
          GlowEffect.PressedColor = clNone
          GlowEffect.FocusedColor = clNone
          GlowEffect.PressedGlowSize = 7
          GlowEffect.PressedAlphaValue = 255
          GlowEffect.States = [scsHot, scsPressed, scsFocused]
          ImageGlow = True
          ShowGalleryMenuFromTop = False
          ShowGalleryMenuFromRight = False
          ShowMenuArrow = True
          ShowFocusRect = True
          Down = False
          GroupIndex = 0
          AllowAllUp = False
        end
        object btnWorkLog: TscGPButton
          Left = 223
          Top = 3
          Width = 110
          Height = 70
          Align = alLeft
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          FluentUIOpaque = False
          TabOrder = 2
          OnClick = WorkLogExecute
          Action = WorkLog
          Animation = True
          Badge.Color = clRed
          Badge.ColorAlpha = 255
          Badge.Font.Charset = DEFAULT_CHARSET
          Badge.Font.Color = clWhite
          Badge.Font.Height = -12
          Badge.Font.Name = 'Tahoma'
          Badge.Font.Style = [fsBold]
          Badge.Visible = False
          CanFocused = False
          CustomDropDown = False
          DrawTextMode = scdtmGDI
          Margin = -1
          Spacing = 1
          Layout = blGlyphTop
          Images = scGPVirtualImageList1
          ImageIndex = 27
          ImageMargin = 0
          TransparentBackground = True
          Options.NormalColor = clNone
          Options.HotColor = clWindowText
          Options.PressedColor = clWindowText
          Options.FocusedColor = clNone
          Options.DisabledColor = clNone
          Options.NormalColor2 = clNone
          Options.HotColor2 = clNone
          Options.PressedColor2 = clNone
          Options.FocusedColor2 = clNone
          Options.DisabledColor2 = clNone
          Options.NormalColorAlpha = 255
          Options.HotColorAlpha = 30
          Options.PressedColorAlpha = 50
          Options.FocusedColorAlpha = 255
          Options.DisabledColorAlpha = 255
          Options.NormalColor2Alpha = 255
          Options.HotColor2Alpha = 255
          Options.PressedColor2Alpha = 255
          Options.FocusedColor2Alpha = 255
          Options.DisabledColor2Alpha = 255
          Options.FrameNormalColor = clNone
          Options.FrameHotColor = clNone
          Options.FramePressedColor = clNone
          Options.FrameFocusedColor = clNone
          Options.FrameDisabledColor = clNone
          Options.FrameWidth = 1
          Options.FrameNormalColorAlpha = 255
          Options.FrameHotColorAlpha = 255
          Options.FramePressedColorAlpha = 255
          Options.FrameFocusedColorAlpha = 255
          Options.FrameDisabledColorAlpha = 255
          Options.FontNormalColor = clWindowText
          Options.FontHotColor = clWindowText
          Options.FontPressedColor = clWindowText
          Options.FontFocusedColor = clWindowText
          Options.FontDisabledColor = clGray
          Options.ShapeFillGradientAngle = 90
          Options.ShapeFillGradientPressedAngle = -90
          Options.ShapeFillGradientColorOffset = 25
          Options.ShapeCornerRadius = 10
          Options.ShapeStyle = scgpRect
          Options.ArrowSize = 9
          Options.ArrowAreaSize = 0
          Options.ArrowType = scgpatDefault
          Options.ArrowThickness = 2
          Options.ArrowThicknessScaled = False
          Options.ArrowNormalColor = clWindowText
          Options.ArrowHotColor = clWindowText
          Options.ArrowPressedColor = clWindowText
          Options.ArrowFocusedColor = clWindowText
          Options.ArrowDisabledColor = clWindowText
          Options.ArrowNormalColorAlpha = 200
          Options.ArrowHotColorAlpha = 255
          Options.ArrowPressedColorAlpha = 255
          Options.ArrowFocusedColorAlpha = 200
          Options.ArrowDisabledColorAlpha = 125
          Options.StyleColors = True
          Options.PressedHotColors = False
          HotImageIndex = 27
          FluentLightEffect = False
          FocusedImageIndex = 27
          PressedImageIndex = 27
          UseGalleryMenuImage = False
          UseGalleryMenuCaption = False
          ScaleMarginAndSpacing = False
          WidthWithCaption = 0
          WidthWithoutCaption = 0
          SplitButton = False
          RepeatClick = False
          RepeatClickInterval = 100
          GlowEffect.Enabled = False
          GlowEffect.Color = clHighlight
          GlowEffect.AlphaValue = 255
          GlowEffect.GlowSize = 7
          GlowEffect.Offset = 0
          GlowEffect.Intensive = True
          GlowEffect.StyleColors = True
          GlowEffect.HotColor = clNone
          GlowEffect.PressedColor = clNone
          GlowEffect.FocusedColor = clNone
          GlowEffect.PressedGlowSize = 7
          GlowEffect.PressedAlphaValue = 255
          GlowEffect.States = [scsHot, scsPressed, scsFocused]
          ImageGlow = True
          ShowGalleryMenuFromTop = False
          ShowGalleryMenuFromRight = False
          ShowMenuArrow = True
          ShowFocusRect = True
          Down = False
          GroupIndex = 0
          AllowAllUp = False
        end
        object scGPButton6: TscGPButton
          Left = 3
          Top = 3
          Width = 110
          Height = 70
          Align = alLeft
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          FluentUIOpaque = False
          TabOrder = 3
          OnClick = LayoutBoardExecute
          Action = LayoutBoard
          Animation = True
          Badge.Color = clRed
          Badge.ColorAlpha = 255
          Badge.Font.Charset = DEFAULT_CHARSET
          Badge.Font.Color = clWhite
          Badge.Font.Height = -12
          Badge.Font.Name = 'Tahoma'
          Badge.Font.Style = [fsBold]
          Badge.Visible = False
          CanFocused = False
          CustomDropDown = False
          DrawTextMode = scdtmGDI
          Margin = -1
          Spacing = 1
          Layout = blGlyphTop
          Images = scGPVirtualImageList1
          ImageIndex = 28
          ImageMargin = 0
          TransparentBackground = True
          Options.NormalColor = clNone
          Options.HotColor = clWindowText
          Options.PressedColor = clWindowText
          Options.FocusedColor = clNone
          Options.DisabledColor = clNone
          Options.NormalColor2 = clNone
          Options.HotColor2 = clNone
          Options.PressedColor2 = clNone
          Options.FocusedColor2 = clNone
          Options.DisabledColor2 = clNone
          Options.NormalColorAlpha = 255
          Options.HotColorAlpha = 30
          Options.PressedColorAlpha = 50
          Options.FocusedColorAlpha = 255
          Options.DisabledColorAlpha = 255
          Options.NormalColor2Alpha = 255
          Options.HotColor2Alpha = 255
          Options.PressedColor2Alpha = 255
          Options.FocusedColor2Alpha = 255
          Options.DisabledColor2Alpha = 255
          Options.FrameNormalColor = clNone
          Options.FrameHotColor = clNone
          Options.FramePressedColor = clNone
          Options.FrameFocusedColor = clNone
          Options.FrameDisabledColor = clNone
          Options.FrameWidth = 1
          Options.FrameNormalColorAlpha = 255
          Options.FrameHotColorAlpha = 255
          Options.FramePressedColorAlpha = 255
          Options.FrameFocusedColorAlpha = 255
          Options.FrameDisabledColorAlpha = 255
          Options.FontNormalColor = clWindowText
          Options.FontHotColor = clWindowText
          Options.FontPressedColor = clWindowText
          Options.FontFocusedColor = clWindowText
          Options.FontDisabledColor = clGray
          Options.ShapeFillGradientAngle = 90
          Options.ShapeFillGradientPressedAngle = -90
          Options.ShapeFillGradientColorOffset = 25
          Options.ShapeCornerRadius = 10
          Options.ShapeStyle = scgpRect
          Options.ArrowSize = 9
          Options.ArrowAreaSize = 0
          Options.ArrowType = scgpatDefault
          Options.ArrowThickness = 2
          Options.ArrowThicknessScaled = False
          Options.ArrowNormalColor = clWindowText
          Options.ArrowHotColor = clWindowText
          Options.ArrowPressedColor = clWindowText
          Options.ArrowFocusedColor = clWindowText
          Options.ArrowDisabledColor = clWindowText
          Options.ArrowNormalColorAlpha = 200
          Options.ArrowHotColorAlpha = 255
          Options.ArrowPressedColorAlpha = 255
          Options.ArrowFocusedColorAlpha = 200
          Options.ArrowDisabledColorAlpha = 125
          Options.StyleColors = True
          Options.PressedHotColors = False
          HotImageIndex = 28
          FluentLightEffect = False
          FocusedImageIndex = 28
          PressedImageIndex = 28
          UseGalleryMenuImage = False
          UseGalleryMenuCaption = False
          ScaleMarginAndSpacing = False
          WidthWithCaption = 0
          WidthWithoutCaption = 0
          SplitButton = False
          RepeatClick = False
          RepeatClickInterval = 100
          GlowEffect.Enabled = False
          GlowEffect.Color = clHighlight
          GlowEffect.AlphaValue = 255
          GlowEffect.GlowSize = 7
          GlowEffect.Offset = 0
          GlowEffect.Intensive = True
          GlowEffect.StyleColors = True
          GlowEffect.HotColor = clNone
          GlowEffect.PressedColor = clNone
          GlowEffect.FocusedColor = clNone
          GlowEffect.PressedGlowSize = 7
          GlowEffect.PressedAlphaValue = 255
          GlowEffect.States = [scsHot, scsPressed, scsFocused]
          ImageGlow = True
          ShowGalleryMenuFromTop = False
          ShowGalleryMenuFromRight = False
          ShowMenuArrow = True
          ShowFocusRect = True
          Down = False
          GroupIndex = 0
          AllowAllUp = False
        end
      end
      object scGPToolGroupPanel12: TscGPToolGroupPanel
        Left = 697
        Top = 0
        Width = 112
        Height = 93
        Align = alLeft
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FluentUIOpaque = False
        TabOrder = 1
        CaptionHeight = 17
        CaptionFontColor = clGray
        CaptionFontDisabledColor = clNone
        DrawTextMode = scdtmGDI
        DialogButtonColor = clWindowText
        ShowDialogButton = False
        StorePaintBuffer = True
        SeparatorColor = clWindowText
        SeparatorColorAlpha = 50
        object btnPMReports: TscGPButton
          Left = 3
          Top = 3
          Width = 106
          Height = 70
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          FluentUIOpaque = False
          TabOrder = 0
          Animation = True
          Badge.Color = clRed
          Badge.ColorAlpha = 255
          Badge.Font.Charset = DEFAULT_CHARSET
          Badge.Font.Color = clWhite
          Badge.Font.Height = -12
          Badge.Font.Name = 'Tahoma'
          Badge.Font.Style = [fsBold]
          Badge.Visible = False
          Caption = 'Reports'
          CanFocused = False
          CustomDropDown = False
          DrawTextMode = scdtmGDI
          Margin = -1
          Spacing = 1
          Layout = blGlyphTop
          Images = scGPVirtualImageList1
          ImageIndex = 23
          ImageMargin = 0
          TransparentBackground = True
          Options.NormalColor = clNone
          Options.HotColor = clWindowText
          Options.PressedColor = clWindowText
          Options.FocusedColor = clNone
          Options.DisabledColor = clNone
          Options.NormalColor2 = clNone
          Options.HotColor2 = clNone
          Options.PressedColor2 = clNone
          Options.FocusedColor2 = clNone
          Options.DisabledColor2 = clNone
          Options.NormalColorAlpha = 255
          Options.HotColorAlpha = 30
          Options.PressedColorAlpha = 50
          Options.FocusedColorAlpha = 255
          Options.DisabledColorAlpha = 255
          Options.NormalColor2Alpha = 255
          Options.HotColor2Alpha = 255
          Options.PressedColor2Alpha = 255
          Options.FocusedColor2Alpha = 255
          Options.DisabledColor2Alpha = 255
          Options.FrameNormalColor = clNone
          Options.FrameHotColor = clNone
          Options.FramePressedColor = clNone
          Options.FrameFocusedColor = clNone
          Options.FrameDisabledColor = clNone
          Options.FrameWidth = 1
          Options.FrameNormalColorAlpha = 255
          Options.FrameHotColorAlpha = 255
          Options.FramePressedColorAlpha = 255
          Options.FrameFocusedColorAlpha = 255
          Options.FrameDisabledColorAlpha = 255
          Options.FontNormalColor = clWindowText
          Options.FontHotColor = clWindowText
          Options.FontPressedColor = clWindowText
          Options.FontFocusedColor = clWindowText
          Options.FontDisabledColor = clGray
          Options.ShapeFillGradientAngle = 90
          Options.ShapeFillGradientPressedAngle = -90
          Options.ShapeFillGradientColorOffset = 25
          Options.ShapeCornerRadius = 10
          Options.ShapeStyle = scgpRect
          Options.ArrowSize = 9
          Options.ArrowAreaSize = 0
          Options.ArrowType = scgpatDefault
          Options.ArrowThickness = 2
          Options.ArrowThicknessScaled = False
          Options.ArrowNormalColor = clWindowText
          Options.ArrowHotColor = clWindowText
          Options.ArrowPressedColor = clWindowText
          Options.ArrowFocusedColor = clWindowText
          Options.ArrowDisabledColor = clWindowText
          Options.ArrowNormalColorAlpha = 200
          Options.ArrowHotColorAlpha = 255
          Options.ArrowPressedColorAlpha = 255
          Options.ArrowFocusedColorAlpha = 200
          Options.ArrowDisabledColorAlpha = 125
          Options.StyleColors = True
          Options.PressedHotColors = False
          HotImageIndex = 23
          FluentLightEffect = False
          FocusedImageIndex = 23
          PressedImageIndex = 23
          UseGalleryMenuImage = False
          UseGalleryMenuCaption = False
          ScaleMarginAndSpacing = False
          WidthWithCaption = 0
          WidthWithoutCaption = 0
          SplitButton = False
          RepeatClick = False
          RepeatClickInterval = 100
          GlowEffect.Enabled = False
          GlowEffect.Color = clHighlight
          GlowEffect.AlphaValue = 255
          GlowEffect.GlowSize = 7
          GlowEffect.Offset = 0
          GlowEffect.Intensive = True
          GlowEffect.StyleColors = True
          GlowEffect.HotColor = clNone
          GlowEffect.PressedColor = clNone
          GlowEffect.FocusedColor = clNone
          GlowEffect.PressedGlowSize = 7
          GlowEffect.PressedAlphaValue = 255
          GlowEffect.States = [scsHot, scsPressed, scsFocused]
          ImageGlow = True
          DropDownMenu = PopupMenu3
          ShowGalleryMenuFromTop = False
          ShowGalleryMenuFromRight = False
          ShowMenuArrow = True
          ShowFocusRect = True
          Down = False
          GroupIndex = 0
          AllowAllUp = False
        end
      end
      object scGPToolGroupPanel4: TscGPToolGroupPanel
        Left = 465
        Top = 0
        Width = 232
        Height = 93
        Align = alLeft
        FluentUIOpaque = False
        TabOrder = 2
        Caption = 'Settings'
        CaptionHeight = 17
        CaptionFontColor = clNone
        CaptionFontDisabledColor = clNone
        DrawTextMode = scdtmGDI
        DialogButtonColor = clNone
        ShowDialogButton = False
        StorePaintBuffer = True
        SeparatorColor = clNone
        SeparatorColorAlpha = 255
        object btnClients: TscGPButton
          Left = 3
          Top = 3
          Width = 110
          Height = 70
          Align = alLeft
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          FluentUIOpaque = False
          TabOrder = 0
          OnClick = ClientsExecute
          Action = Clients
          Animation = True
          Badge.Color = clRed
          Badge.ColorAlpha = 255
          Badge.Font.Charset = DEFAULT_CHARSET
          Badge.Font.Color = clWhite
          Badge.Font.Height = -12
          Badge.Font.Name = 'Tahoma'
          Badge.Font.Style = [fsBold]
          Badge.Visible = False
          CanFocused = False
          CustomDropDown = False
          DrawTextMode = scdtmGDI
          Margin = -1
          Spacing = 1
          Layout = blGlyphTop
          Images = scGPVirtualImageList1
          ImageIndex = 24
          ImageMargin = 0
          TransparentBackground = True
          Options.NormalColor = clNone
          Options.HotColor = clWindowText
          Options.PressedColor = clWindowText
          Options.FocusedColor = clNone
          Options.DisabledColor = clNone
          Options.NormalColor2 = clNone
          Options.HotColor2 = clNone
          Options.PressedColor2 = clNone
          Options.FocusedColor2 = clNone
          Options.DisabledColor2 = clNone
          Options.NormalColorAlpha = 255
          Options.HotColorAlpha = 30
          Options.PressedColorAlpha = 50
          Options.FocusedColorAlpha = 255
          Options.DisabledColorAlpha = 255
          Options.NormalColor2Alpha = 255
          Options.HotColor2Alpha = 255
          Options.PressedColor2Alpha = 255
          Options.FocusedColor2Alpha = 255
          Options.DisabledColor2Alpha = 255
          Options.FrameNormalColor = clNone
          Options.FrameHotColor = clNone
          Options.FramePressedColor = clNone
          Options.FrameFocusedColor = clNone
          Options.FrameDisabledColor = clNone
          Options.FrameWidth = 1
          Options.FrameNormalColorAlpha = 255
          Options.FrameHotColorAlpha = 255
          Options.FramePressedColorAlpha = 255
          Options.FrameFocusedColorAlpha = 255
          Options.FrameDisabledColorAlpha = 255
          Options.FontNormalColor = clWindowText
          Options.FontHotColor = clWindowText
          Options.FontPressedColor = clWindowText
          Options.FontFocusedColor = clWindowText
          Options.FontDisabledColor = clGray
          Options.ShapeFillGradientAngle = 90
          Options.ShapeFillGradientPressedAngle = -90
          Options.ShapeFillGradientColorOffset = 25
          Options.ShapeCornerRadius = 10
          Options.ShapeStyle = scgpRect
          Options.ArrowSize = 9
          Options.ArrowAreaSize = 0
          Options.ArrowType = scgpatDefault
          Options.ArrowThickness = 2
          Options.ArrowThicknessScaled = False
          Options.ArrowNormalColor = clWindowText
          Options.ArrowHotColor = clWindowText
          Options.ArrowPressedColor = clWindowText
          Options.ArrowFocusedColor = clWindowText
          Options.ArrowDisabledColor = clWindowText
          Options.ArrowNormalColorAlpha = 200
          Options.ArrowHotColorAlpha = 255
          Options.ArrowPressedColorAlpha = 255
          Options.ArrowFocusedColorAlpha = 200
          Options.ArrowDisabledColorAlpha = 125
          Options.StyleColors = True
          Options.PressedHotColors = False
          HotImageIndex = 24
          FluentLightEffect = False
          FocusedImageIndex = 24
          PressedImageIndex = 24
          UseGalleryMenuImage = False
          UseGalleryMenuCaption = False
          ScaleMarginAndSpacing = False
          WidthWithCaption = 0
          WidthWithoutCaption = 0
          SplitButton = False
          RepeatClick = False
          RepeatClickInterval = 100
          GlowEffect.Enabled = False
          GlowEffect.Color = clHighlight
          GlowEffect.AlphaValue = 255
          GlowEffect.GlowSize = 7
          GlowEffect.Offset = 0
          GlowEffect.Intensive = True
          GlowEffect.StyleColors = True
          GlowEffect.HotColor = clNone
          GlowEffect.PressedColor = clNone
          GlowEffect.FocusedColor = clNone
          GlowEffect.PressedGlowSize = 7
          GlowEffect.PressedAlphaValue = 255
          GlowEffect.States = [scsHot, scsPressed, scsFocused]
          ImageGlow = True
          ShowGalleryMenuFromTop = False
          ShowGalleryMenuFromRight = False
          ShowMenuArrow = True
          ShowFocusRect = True
          Down = False
          GroupIndex = 0
          AllowAllUp = False
        end
        object btnGarments: TscGPButton
          Left = 113
          Top = 3
          Width = 110
          Height = 70
          Align = alLeft
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          FluentUIOpaque = False
          TabOrder = 1
          OnClick = GarmentsExecute
          Action = Garments
          Animation = True
          Badge.Color = clRed
          Badge.ColorAlpha = 255
          Badge.Font.Charset = DEFAULT_CHARSET
          Badge.Font.Color = clWhite
          Badge.Font.Height = -12
          Badge.Font.Name = 'Tahoma'
          Badge.Font.Style = [fsBold]
          Badge.Visible = False
          CanFocused = False
          CustomDropDown = False
          DrawTextMode = scdtmGDI
          Margin = -1
          Spacing = 1
          Layout = blGlyphTop
          Images = scGPVirtualImageList1
          ImageIndex = 5
          ImageMargin = 0
          TransparentBackground = True
          Options.NormalColor = clNone
          Options.HotColor = clWindowText
          Options.PressedColor = clWindowText
          Options.FocusedColor = clNone
          Options.DisabledColor = clNone
          Options.NormalColor2 = clNone
          Options.HotColor2 = clNone
          Options.PressedColor2 = clNone
          Options.FocusedColor2 = clNone
          Options.DisabledColor2 = clNone
          Options.NormalColorAlpha = 255
          Options.HotColorAlpha = 30
          Options.PressedColorAlpha = 50
          Options.FocusedColorAlpha = 255
          Options.DisabledColorAlpha = 255
          Options.NormalColor2Alpha = 255
          Options.HotColor2Alpha = 255
          Options.PressedColor2Alpha = 255
          Options.FocusedColor2Alpha = 255
          Options.DisabledColor2Alpha = 255
          Options.FrameNormalColor = clNone
          Options.FrameHotColor = clNone
          Options.FramePressedColor = clNone
          Options.FrameFocusedColor = clNone
          Options.FrameDisabledColor = clNone
          Options.FrameWidth = 1
          Options.FrameNormalColorAlpha = 255
          Options.FrameHotColorAlpha = 255
          Options.FramePressedColorAlpha = 255
          Options.FrameFocusedColorAlpha = 255
          Options.FrameDisabledColorAlpha = 255
          Options.FontNormalColor = clWindowText
          Options.FontHotColor = clWindowText
          Options.FontPressedColor = clWindowText
          Options.FontFocusedColor = clWindowText
          Options.FontDisabledColor = clGray
          Options.ShapeFillGradientAngle = 90
          Options.ShapeFillGradientPressedAngle = -90
          Options.ShapeFillGradientColorOffset = 25
          Options.ShapeCornerRadius = 10
          Options.ShapeStyle = scgpRect
          Options.ArrowSize = 9
          Options.ArrowAreaSize = 0
          Options.ArrowType = scgpatDefault
          Options.ArrowThickness = 2
          Options.ArrowThicknessScaled = False
          Options.ArrowNormalColor = clWindowText
          Options.ArrowHotColor = clWindowText
          Options.ArrowPressedColor = clWindowText
          Options.ArrowFocusedColor = clWindowText
          Options.ArrowDisabledColor = clWindowText
          Options.ArrowNormalColorAlpha = 200
          Options.ArrowHotColorAlpha = 255
          Options.ArrowPressedColorAlpha = 255
          Options.ArrowFocusedColorAlpha = 200
          Options.ArrowDisabledColorAlpha = 125
          Options.StyleColors = True
          Options.PressedHotColors = False
          HotImageIndex = 5
          FluentLightEffect = False
          FocusedImageIndex = 5
          PressedImageIndex = 5
          UseGalleryMenuImage = False
          UseGalleryMenuCaption = False
          ScaleMarginAndSpacing = False
          WidthWithCaption = 0
          WidthWithoutCaption = 0
          SplitButton = False
          RepeatClick = False
          RepeatClickInterval = 100
          GlowEffect.Enabled = False
          GlowEffect.Color = clHighlight
          GlowEffect.AlphaValue = 255
          GlowEffect.GlowSize = 7
          GlowEffect.Offset = 0
          GlowEffect.Intensive = True
          GlowEffect.StyleColors = True
          GlowEffect.HotColor = clNone
          GlowEffect.PressedColor = clNone
          GlowEffect.FocusedColor = clNone
          GlowEffect.PressedGlowSize = 7
          GlowEffect.PressedAlphaValue = 255
          GlowEffect.States = [scsHot, scsPressed, scsFocused]
          ImageGlow = True
          ShowGalleryMenuFromTop = False
          ShowGalleryMenuFromRight = False
          ShowMenuArrow = True
          ShowFocusRect = True
          Down = False
          GroupIndex = 0
          AllowAllUp = False
        end
      end
      object scGPToolGroupPanel17: TscGPToolGroupPanel
        Left = 809
        Top = 0
        Width = 112
        Height = 93
        Align = alLeft
        FluentUIOpaque = False
        TabOrder = 3
        Visible = False
        CaptionHeight = 17
        CaptionFontColor = clNone
        CaptionFontDisabledColor = clNone
        DrawTextMode = scdtmGDI
        DialogButtonColor = clNone
        ShowDialogButton = False
        StorePaintBuffer = True
        SeparatorColor = clNone
        SeparatorColorAlpha = 255
        object scGPButton4: TscGPButton
          Left = 3
          Top = 3
          Width = 110
          Height = 70
          Align = alLeft
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          FluentUIOpaque = False
          TabOrder = 0
          OnClick = NotifExecute
          Action = Notif
          Animation = True
          Badge.Color = clRed
          Badge.ColorAlpha = 255
          Badge.Font.Charset = DEFAULT_CHARSET
          Badge.Font.Color = clWhite
          Badge.Font.Height = -12
          Badge.Font.Name = 'Tahoma'
          Badge.Font.Style = [fsBold]
          Badge.Visible = False
          CanFocused = False
          CustomDropDown = False
          DrawTextMode = scdtmGDI
          Margin = -1
          Spacing = 1
          Layout = blGlyphTop
          Images = scGPVirtualImageList1
          ImageIndex = 13
          ImageMargin = 0
          TransparentBackground = True
          Options.NormalColor = clNone
          Options.HotColor = clWindowText
          Options.PressedColor = clWindowText
          Options.FocusedColor = clNone
          Options.DisabledColor = clNone
          Options.NormalColor2 = clNone
          Options.HotColor2 = clNone
          Options.PressedColor2 = clNone
          Options.FocusedColor2 = clNone
          Options.DisabledColor2 = clNone
          Options.NormalColorAlpha = 255
          Options.HotColorAlpha = 30
          Options.PressedColorAlpha = 50
          Options.FocusedColorAlpha = 255
          Options.DisabledColorAlpha = 255
          Options.NormalColor2Alpha = 255
          Options.HotColor2Alpha = 255
          Options.PressedColor2Alpha = 255
          Options.FocusedColor2Alpha = 255
          Options.DisabledColor2Alpha = 255
          Options.FrameNormalColor = clNone
          Options.FrameHotColor = clNone
          Options.FramePressedColor = clNone
          Options.FrameFocusedColor = clNone
          Options.FrameDisabledColor = clNone
          Options.FrameWidth = 1
          Options.FrameNormalColorAlpha = 255
          Options.FrameHotColorAlpha = 255
          Options.FramePressedColorAlpha = 255
          Options.FrameFocusedColorAlpha = 255
          Options.FrameDisabledColorAlpha = 255
          Options.FontNormalColor = clWindowText
          Options.FontHotColor = clWindowText
          Options.FontPressedColor = clWindowText
          Options.FontFocusedColor = clWindowText
          Options.FontDisabledColor = clGray
          Options.ShapeFillGradientAngle = 90
          Options.ShapeFillGradientPressedAngle = -90
          Options.ShapeFillGradientColorOffset = 25
          Options.ShapeCornerRadius = 10
          Options.ShapeStyle = scgpRect
          Options.ArrowSize = 9
          Options.ArrowAreaSize = 0
          Options.ArrowType = scgpatDefault
          Options.ArrowThickness = 2
          Options.ArrowThicknessScaled = False
          Options.ArrowNormalColor = clWindowText
          Options.ArrowHotColor = clWindowText
          Options.ArrowPressedColor = clWindowText
          Options.ArrowFocusedColor = clWindowText
          Options.ArrowDisabledColor = clWindowText
          Options.ArrowNormalColorAlpha = 200
          Options.ArrowHotColorAlpha = 255
          Options.ArrowPressedColorAlpha = 255
          Options.ArrowFocusedColorAlpha = 200
          Options.ArrowDisabledColorAlpha = 125
          Options.StyleColors = True
          Options.PressedHotColors = False
          HotImageIndex = 13
          FluentLightEffect = False
          FocusedImageIndex = 13
          PressedImageIndex = 13
          UseGalleryMenuImage = False
          UseGalleryMenuCaption = False
          ScaleMarginAndSpacing = False
          WidthWithCaption = 0
          WidthWithoutCaption = 0
          SplitButton = False
          RepeatClick = False
          RepeatClickInterval = 100
          GlowEffect.Enabled = False
          GlowEffect.Color = clHighlight
          GlowEffect.AlphaValue = 255
          GlowEffect.GlowSize = 7
          GlowEffect.Offset = 0
          GlowEffect.Intensive = True
          GlowEffect.StyleColors = True
          GlowEffect.HotColor = clNone
          GlowEffect.PressedColor = clNone
          GlowEffect.FocusedColor = clNone
          GlowEffect.PressedGlowSize = 7
          GlowEffect.PressedAlphaValue = 255
          GlowEffect.States = [scsHot, scsPressed, scsFocused]
          ImageGlow = True
          ShowGalleryMenuFromTop = False
          ShowGalleryMenuFromRight = False
          ShowMenuArrow = True
          ShowFocusRect = True
          Down = False
          GroupIndex = 0
          AllowAllUp = False
        end
      end
    end
    object scGPToolPagerPage2: TscGPToolPagerPage
      Left = 0
      Top = 35
      Width = 1084
      Height = 98
      HelpType = htKeyword
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      Padding.Left = 10
      Padding.Right = 10
      Padding.Bottom = 5
      ParentFont = False
      FluentUIOpaque = False
      TabOrder = 2
      CanScroll = True
      FillGradientAngle = 90
      FillGradientBeginAlpha = 255
      FillGradientEndAlpha = 255
      FillGradientBeginColorOffset = 25
      FillGradientEndColorOffset = 25
      FillColor = clWhite
      FillColorAlpha = 0
      FillColor2 = clNone
      Color = 15987699
      BGStyleKind = scgspbTransparent
      ScrollButtonWidth = 17
      CustomImageIndex = -1
      WallpaperIndex = -1
      HotScroll = False
      AutoSize = False
      ScrollType = scstHorizontal
      ScrollOffset = 0
      ScrollTimerInterval = 50
      ScrollButtonArrowWidth = 1
      HorzScrollDirection = scgspsdLeftToRight
      VertScrollDirection = scgspsdTopToBottom
      TouchScroll = False
      StorePaintBuffer = True
      object scGPToolGroupPanel8: TscGPToolGroupPanel
        Left = 10
        Top = 0
        Width = 239
        Height = 93
        Align = alLeft
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FluentUIOpaque = False
        TabOrder = 0
        Caption = 'Cash Sales Tool'
        CaptionHeight = 17
        CaptionFontColor = clGray
        CaptionFontDisabledColor = clNone
        DrawTextMode = scdtmGDI
        DialogButtonColor = clWindowText
        ShowDialogButton = False
        StorePaintBuffer = True
        SeparatorColor = clWindowText
        SeparatorColorAlpha = 50
        object btnCashReg: TscGPButton
          Left = 113
          Top = 3
          Width = 110
          Height = 70
          Align = alLeft
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          FluentUIOpaque = False
          TabOrder = 0
          OnClick = RFQExecute
          Action = RFQ
          Animation = True
          Badge.Color = clRed
          Badge.ColorAlpha = 255
          Badge.Font.Charset = DEFAULT_CHARSET
          Badge.Font.Color = clWhite
          Badge.Font.Height = -12
          Badge.Font.Name = 'Tahoma'
          Badge.Font.Style = [fsBold]
          Badge.Visible = False
          CanFocused = False
          CustomDropDown = False
          DrawTextMode = scdtmGDI
          Margin = -1
          Spacing = 1
          Layout = blGlyphTop
          Images = scGPVirtualImageList1
          ImageIndex = 29
          ImageMargin = 0
          TransparentBackground = True
          Options.NormalColor = clNone
          Options.HotColor = clWindowText
          Options.PressedColor = clWindowText
          Options.FocusedColor = clNone
          Options.DisabledColor = clNone
          Options.NormalColor2 = clNone
          Options.HotColor2 = clNone
          Options.PressedColor2 = clNone
          Options.FocusedColor2 = clNone
          Options.DisabledColor2 = clNone
          Options.NormalColorAlpha = 255
          Options.HotColorAlpha = 30
          Options.PressedColorAlpha = 50
          Options.FocusedColorAlpha = 255
          Options.DisabledColorAlpha = 255
          Options.NormalColor2Alpha = 255
          Options.HotColor2Alpha = 255
          Options.PressedColor2Alpha = 255
          Options.FocusedColor2Alpha = 255
          Options.DisabledColor2Alpha = 255
          Options.FrameNormalColor = clNone
          Options.FrameHotColor = clNone
          Options.FramePressedColor = clNone
          Options.FrameFocusedColor = clNone
          Options.FrameDisabledColor = clNone
          Options.FrameWidth = 1
          Options.FrameNormalColorAlpha = 255
          Options.FrameHotColorAlpha = 255
          Options.FramePressedColorAlpha = 255
          Options.FrameFocusedColorAlpha = 255
          Options.FrameDisabledColorAlpha = 255
          Options.FontNormalColor = clWindowText
          Options.FontHotColor = clWindowText
          Options.FontPressedColor = clWindowText
          Options.FontFocusedColor = clWindowText
          Options.FontDisabledColor = clGray
          Options.ShapeFillGradientAngle = 90
          Options.ShapeFillGradientPressedAngle = -90
          Options.ShapeFillGradientColorOffset = 25
          Options.ShapeCornerRadius = 10
          Options.ShapeStyle = scgpRect
          Options.ArrowSize = 9
          Options.ArrowAreaSize = 0
          Options.ArrowType = scgpatDefault
          Options.ArrowThickness = 2
          Options.ArrowThicknessScaled = False
          Options.ArrowNormalColor = clWindowText
          Options.ArrowHotColor = clWindowText
          Options.ArrowPressedColor = clWindowText
          Options.ArrowFocusedColor = clWindowText
          Options.ArrowDisabledColor = clWindowText
          Options.ArrowNormalColorAlpha = 200
          Options.ArrowHotColorAlpha = 255
          Options.ArrowPressedColorAlpha = 255
          Options.ArrowFocusedColorAlpha = 200
          Options.ArrowDisabledColorAlpha = 125
          Options.StyleColors = True
          Options.PressedHotColors = False
          HotImageIndex = 29
          FluentLightEffect = False
          FocusedImageIndex = 29
          PressedImageIndex = 29
          UseGalleryMenuImage = False
          UseGalleryMenuCaption = False
          ScaleMarginAndSpacing = False
          WidthWithCaption = 0
          WidthWithoutCaption = 0
          SplitButton = False
          RepeatClick = False
          RepeatClickInterval = 100
          GlowEffect.Enabled = False
          GlowEffect.Color = clHighlight
          GlowEffect.AlphaValue = 255
          GlowEffect.GlowSize = 7
          GlowEffect.Offset = 0
          GlowEffect.Intensive = True
          GlowEffect.StyleColors = True
          GlowEffect.HotColor = clNone
          GlowEffect.PressedColor = clNone
          GlowEffect.FocusedColor = clNone
          GlowEffect.PressedGlowSize = 7
          GlowEffect.PressedAlphaValue = 255
          GlowEffect.States = [scsHot, scsPressed, scsFocused]
          ImageGlow = True
          ShowGalleryMenuFromTop = False
          ShowGalleryMenuFromRight = False
          ShowMenuArrow = True
          ShowFocusRect = True
          Down = False
          GroupIndex = 0
          AllowAllUp = False
        end
        object scGPButton8: TscGPButton
          Left = 3
          Top = 3
          Width = 110
          Height = 70
          Align = alLeft
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          FluentUIOpaque = False
          TabOrder = 1
          OnClick = CashRegisterExecute
          Action = CashRegister
          Animation = True
          Badge.Color = clRed
          Badge.ColorAlpha = 255
          Badge.Font.Charset = DEFAULT_CHARSET
          Badge.Font.Color = clWhite
          Badge.Font.Height = -12
          Badge.Font.Name = 'Tahoma'
          Badge.Font.Style = [fsBold]
          Badge.Visible = False
          CanFocused = False
          CustomDropDown = False
          DrawTextMode = scdtmGDI
          Margin = -1
          Spacing = 1
          Layout = blGlyphTop
          Images = scGPVirtualImageList1
          ImageIndex = 0
          ImageMargin = 0
          TransparentBackground = True
          Options.NormalColor = clNone
          Options.HotColor = clWindowText
          Options.PressedColor = clWindowText
          Options.FocusedColor = clNone
          Options.DisabledColor = clNone
          Options.NormalColor2 = clNone
          Options.HotColor2 = clNone
          Options.PressedColor2 = clNone
          Options.FocusedColor2 = clNone
          Options.DisabledColor2 = clNone
          Options.NormalColorAlpha = 255
          Options.HotColorAlpha = 30
          Options.PressedColorAlpha = 50
          Options.FocusedColorAlpha = 255
          Options.DisabledColorAlpha = 255
          Options.NormalColor2Alpha = 255
          Options.HotColor2Alpha = 255
          Options.PressedColor2Alpha = 255
          Options.FocusedColor2Alpha = 255
          Options.DisabledColor2Alpha = 255
          Options.FrameNormalColor = clNone
          Options.FrameHotColor = clNone
          Options.FramePressedColor = clNone
          Options.FrameFocusedColor = clNone
          Options.FrameDisabledColor = clNone
          Options.FrameWidth = 1
          Options.FrameNormalColorAlpha = 255
          Options.FrameHotColorAlpha = 255
          Options.FramePressedColorAlpha = 255
          Options.FrameFocusedColorAlpha = 255
          Options.FrameDisabledColorAlpha = 255
          Options.FontNormalColor = clWindowText
          Options.FontHotColor = clWindowText
          Options.FontPressedColor = clWindowText
          Options.FontFocusedColor = clWindowText
          Options.FontDisabledColor = clGray
          Options.ShapeFillGradientAngle = 90
          Options.ShapeFillGradientPressedAngle = -90
          Options.ShapeFillGradientColorOffset = 25
          Options.ShapeCornerRadius = 10
          Options.ShapeStyle = scgpRect
          Options.ArrowSize = 9
          Options.ArrowAreaSize = 0
          Options.ArrowType = scgpatDefault
          Options.ArrowThickness = 2
          Options.ArrowThicknessScaled = False
          Options.ArrowNormalColor = clWindowText
          Options.ArrowHotColor = clWindowText
          Options.ArrowPressedColor = clWindowText
          Options.ArrowFocusedColor = clWindowText
          Options.ArrowDisabledColor = clWindowText
          Options.ArrowNormalColorAlpha = 200
          Options.ArrowHotColorAlpha = 255
          Options.ArrowPressedColorAlpha = 255
          Options.ArrowFocusedColorAlpha = 200
          Options.ArrowDisabledColorAlpha = 125
          Options.StyleColors = True
          Options.PressedHotColors = False
          HotImageIndex = 0
          FluentLightEffect = False
          FocusedImageIndex = 0
          PressedImageIndex = 0
          UseGalleryMenuImage = False
          UseGalleryMenuCaption = False
          ScaleMarginAndSpacing = False
          WidthWithCaption = 0
          WidthWithoutCaption = 0
          SplitButton = False
          RepeatClick = False
          RepeatClickInterval = 100
          GlowEffect.Enabled = False
          GlowEffect.Color = clHighlight
          GlowEffect.AlphaValue = 255
          GlowEffect.GlowSize = 7
          GlowEffect.Offset = 0
          GlowEffect.Intensive = True
          GlowEffect.StyleColors = True
          GlowEffect.HotColor = clNone
          GlowEffect.PressedColor = clNone
          GlowEffect.FocusedColor = clNone
          GlowEffect.PressedGlowSize = 7
          GlowEffect.PressedAlphaValue = 255
          GlowEffect.States = [scsHot, scsPressed, scsFocused]
          ImageGlow = True
          ShowGalleryMenuFromTop = False
          ShowGalleryMenuFromRight = False
          ShowMenuArrow = True
          ShowFocusRect = True
          Down = False
          GroupIndex = 0
          AllowAllUp = False
          ExplicitLeft = -3
        end
      end
      object scGPToolGroupPanel13: TscGPToolGroupPanel
        Left = 249
        Top = 0
        Width = 112
        Height = 93
        Align = alLeft
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FluentUIOpaque = False
        TabOrder = 1
        CaptionHeight = 17
        CaptionFontColor = clGray
        CaptionFontDisabledColor = clNone
        DrawTextMode = scdtmGDI
        DialogButtonColor = clWindowText
        ShowDialogButton = False
        StorePaintBuffer = True
        SeparatorColor = clWindowText
        SeparatorColorAlpha = 50
        object scGPButton1: TscGPButton
          Left = 3
          Top = 3
          Width = 106
          Height = 70
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          FluentUIOpaque = False
          TabOrder = 0
          Animation = True
          Badge.Color = clRed
          Badge.ColorAlpha = 255
          Badge.Font.Charset = DEFAULT_CHARSET
          Badge.Font.Color = clWhite
          Badge.Font.Height = -12
          Badge.Font.Name = 'Tahoma'
          Badge.Font.Style = [fsBold]
          Badge.Visible = False
          Caption = 'Reports'
          CanFocused = False
          CustomDropDown = False
          DrawTextMode = scdtmGDI
          Margin = -1
          Spacing = 1
          Layout = blGlyphTop
          Images = scGPVirtualImageList1
          ImageIndex = 23
          ImageMargin = 0
          TransparentBackground = True
          Options.NormalColor = clNone
          Options.HotColor = clWindowText
          Options.PressedColor = clWindowText
          Options.FocusedColor = clNone
          Options.DisabledColor = clNone
          Options.NormalColor2 = clNone
          Options.HotColor2 = clNone
          Options.PressedColor2 = clNone
          Options.FocusedColor2 = clNone
          Options.DisabledColor2 = clNone
          Options.NormalColorAlpha = 255
          Options.HotColorAlpha = 30
          Options.PressedColorAlpha = 50
          Options.FocusedColorAlpha = 255
          Options.DisabledColorAlpha = 255
          Options.NormalColor2Alpha = 255
          Options.HotColor2Alpha = 255
          Options.PressedColor2Alpha = 255
          Options.FocusedColor2Alpha = 255
          Options.DisabledColor2Alpha = 255
          Options.FrameNormalColor = clNone
          Options.FrameHotColor = clNone
          Options.FramePressedColor = clNone
          Options.FrameFocusedColor = clNone
          Options.FrameDisabledColor = clNone
          Options.FrameWidth = 1
          Options.FrameNormalColorAlpha = 255
          Options.FrameHotColorAlpha = 255
          Options.FramePressedColorAlpha = 255
          Options.FrameFocusedColorAlpha = 255
          Options.FrameDisabledColorAlpha = 255
          Options.FontNormalColor = clWindowText
          Options.FontHotColor = clWindowText
          Options.FontPressedColor = clWindowText
          Options.FontFocusedColor = clWindowText
          Options.FontDisabledColor = clGray
          Options.ShapeFillGradientAngle = 90
          Options.ShapeFillGradientPressedAngle = -90
          Options.ShapeFillGradientColorOffset = 25
          Options.ShapeCornerRadius = 10
          Options.ShapeStyle = scgpRect
          Options.ArrowSize = 9
          Options.ArrowAreaSize = 0
          Options.ArrowType = scgpatDefault
          Options.ArrowThickness = 2
          Options.ArrowThicknessScaled = False
          Options.ArrowNormalColor = clWindowText
          Options.ArrowHotColor = clWindowText
          Options.ArrowPressedColor = clWindowText
          Options.ArrowFocusedColor = clWindowText
          Options.ArrowDisabledColor = clWindowText
          Options.ArrowNormalColorAlpha = 200
          Options.ArrowHotColorAlpha = 255
          Options.ArrowPressedColorAlpha = 255
          Options.ArrowFocusedColorAlpha = 200
          Options.ArrowDisabledColorAlpha = 125
          Options.StyleColors = True
          Options.PressedHotColors = False
          HotImageIndex = 23
          FluentLightEffect = False
          FocusedImageIndex = 23
          PressedImageIndex = 23
          UseGalleryMenuImage = False
          UseGalleryMenuCaption = False
          ScaleMarginAndSpacing = False
          WidthWithCaption = 0
          WidthWithoutCaption = 0
          SplitButton = False
          RepeatClick = False
          RepeatClickInterval = 100
          GlowEffect.Enabled = False
          GlowEffect.Color = clHighlight
          GlowEffect.AlphaValue = 255
          GlowEffect.GlowSize = 7
          GlowEffect.Offset = 0
          GlowEffect.Intensive = True
          GlowEffect.StyleColors = True
          GlowEffect.HotColor = clNone
          GlowEffect.PressedColor = clNone
          GlowEffect.FocusedColor = clNone
          GlowEffect.PressedGlowSize = 7
          GlowEffect.PressedAlphaValue = 255
          GlowEffect.States = [scsHot, scsPressed, scsFocused]
          ImageGlow = True
          DropDownMenu = PopupMenu4
          ShowGalleryMenuFromTop = False
          ShowGalleryMenuFromRight = False
          ShowMenuArrow = True
          ShowFocusRect = True
          Down = False
          GroupIndex = 0
          AllowAllUp = False
        end
      end
    end
  end
  object scGPPanel4: TscGPPanel
    Left = 10
    Top = 10
    Width = 1084
    Height = 34
    Align = alTop
    FluentUIOpaque = False
    TabOrder = 2
    BlurBackground = False
    BlurBackgroundAmount = 5
    BackgroundStyle = gppbsColor
    ContentMarginLeft = 0
    ContentMarginRight = 0
    ContentMarginTop = 0
    ContentMarginBottom = 0
    CustomImageIndex = -1
    DragForm = True
    DragTopForm = True
    DrawTextMode = scdtmGDI
    FillGradientAngle = 90
    FillGradientBeginAlpha = 255
    FillGradientEndAlpha = 255
    FillGradientBeginColorOffset = 25
    FillGradientEndColorOffset = 25
    FrameWidth = 0
    FillColor = 10114859
    FillColorAlpha = 0
    FillColor2 = clNone
    FrameColor = clBtnShadow
    FrameColorAlpha = 255
    FrameRadius = 0
    ShowCaption = False
    CaptionGlowEffect.Enabled = False
    CaptionGlowEffect.Color = clBtnShadow
    CaptionGlowEffect.AlphaValue = 255
    CaptionGlowEffect.GlowSize = 7
    CaptionGlowEffect.Offset = 0
    CaptionGlowEffect.Intensive = True
    CaptionGlowEffect.StyleColors = True
    Color = clBtnFace
    Caption = 'scGPPanel2'
    TransparentBackground = True
    StorePaintBuffer = True
    Sizeable = False
    WallpaperIndex = -1
    object CloseButton: TscGPGlyphButton
      AlignWithMargins = True
      Left = 1039
      Top = 0
      Width = 45
      Height = 30
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 4
      Align = alRight
      FluentUIOpaque = False
      TabOrder = 0
      OnClick = CloseButtonClick
      Animation = True
      Badge.Color = clRed
      Badge.ColorAlpha = 255
      Badge.Font.Charset = DEFAULT_CHARSET
      Badge.Font.Color = clWhite
      Badge.Font.Height = -12
      Badge.Font.Name = 'Tahoma'
      Badge.Font.Style = [fsBold]
      Badge.Visible = False
      Caption = 'CloseButton'
      CanFocused = False
      CustomDropDown = False
      DrawTextMode = scdtmGDI
      FluentLightEffect = False
      Layout = blGlyphLeft
      TransparentBackground = True
      ColorValue = clRed
      Options.NormalColor = clNone
      Options.HotColor = 4210943
      Options.PressedColor = 4210943
      Options.FocusedColor = clBtnFace
      Options.DisabledColor = clBtnText
      Options.NormalColor2 = clNone
      Options.HotColor2 = clNone
      Options.PressedColor2 = clNone
      Options.FocusedColor2 = clNone
      Options.DisabledColor2 = clNone
      Options.NormalColorAlpha = 0
      Options.HotColorAlpha = 220
      Options.PressedColorAlpha = 180
      Options.FocusedColorAlpha = 255
      Options.DisabledColorAlpha = 5
      Options.NormalColor2Alpha = 255
      Options.HotColor2Alpha = 255
      Options.PressedColor2Alpha = 255
      Options.FocusedColor2Alpha = 255
      Options.DisabledColor2Alpha = 255
      Options.FrameNormalColor = clNone
      Options.FrameHotColor = clNone
      Options.FramePressedColor = clNone
      Options.FrameFocusedColor = clNone
      Options.FrameDisabledColor = clNone
      Options.FrameWidth = 2
      Options.FrameNormalColorAlpha = 70
      Options.FrameHotColorAlpha = 100
      Options.FramePressedColorAlpha = 150
      Options.FrameFocusedColorAlpha = 255
      Options.FrameDisabledColorAlpha = 30
      Options.FontNormalColor = clBtnText
      Options.FontHotColor = clBtnText
      Options.FontPressedColor = clBtnText
      Options.FontFocusedColor = clBtnText
      Options.FontDisabledColor = clBtnShadow
      Options.ShapeFillGradientAngle = 90
      Options.ShapeFillGradientPressedAngle = -90
      Options.ShapeFillGradientColorOffset = 25
      Options.ShapeCornerRadius = 10
      Options.ShapeStyle = scgpRect
      Options.ArrowSize = 9
      Options.ArrowAreaSize = 0
      Options.ArrowType = scgpatDefault
      Options.ArrowThickness = 2
      Options.ArrowThicknessScaled = False
      Options.ArrowNormalColor = clBtnText
      Options.ArrowHotColor = clBtnText
      Options.ArrowPressedColor = clBtnText
      Options.ArrowFocusedColor = clBtnText
      Options.ArrowDisabledColor = clBtnText
      Options.ArrowNormalColorAlpha = 200
      Options.ArrowHotColorAlpha = 255
      Options.ArrowPressedColorAlpha = 255
      Options.ArrowFocusedColorAlpha = 200
      Options.ArrowDisabledColorAlpha = 125
      Options.StyleColors = True
      Options.PressedHotColors = False
      GlyphOptions.NormalColor = clWindowText
      GlyphOptions.HotColor = clWhite
      GlyphOptions.PressedColor = clWhite
      GlyphOptions.FocusedColor = clWhite
      GlyphOptions.DisabledColor = clWhite
      GlyphOptions.NormalColorAlpha = 255
      GlyphOptions.HotColorAlpha = 255
      GlyphOptions.PressedColorAlpha = 255
      GlyphOptions.FocusedColorAlpha = 255
      GlyphOptions.DisabledColorAlpha = 100
      GlyphOptions.Kind = scgpbgkClose
      GlyphOptions.Thickness = 1
      GlyphOptions.ThicknessScaled = False
      GlyphOptions.Size = 11
      GlyphOptions.StyleColors = True
      TextMargin = -1
      WidthWithCaption = 0
      WidthWithoutCaption = 0
      SplitButton = False
      RepeatClick = False
      RepeatClickInterval = 100
      ShowGalleryMenuFromTop = False
      ShowGalleryMenuFromRight = False
      ShowMenuArrow = True
      ShowFocusRect = True
      Down = False
      GroupIndex = 0
      AllowAllUp = False
    end
    object MinButton: TscGPGlyphButton
      AlignWithMargins = True
      Left = 949
      Top = 0
      Width = 45
      Height = 30
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 4
      Align = alRight
      FluentUIOpaque = False
      TabOrder = 1
      OnClick = MinButtonClick
      Animation = True
      Badge.Color = clRed
      Badge.ColorAlpha = 255
      Badge.Font.Charset = DEFAULT_CHARSET
      Badge.Font.Color = clWhite
      Badge.Font.Height = -12
      Badge.Font.Name = 'Tahoma'
      Badge.Font.Style = [fsBold]
      Badge.Visible = False
      Caption = 'scGPGlyphButton1'
      CanFocused = False
      CustomDropDown = False
      DrawTextMode = scdtmGDI
      FluentLightEffect = False
      Layout = blGlyphLeft
      TransparentBackground = True
      ColorValue = clRed
      Options.NormalColor = clWhite
      Options.HotColor = clWindowText
      Options.PressedColor = clWindowText
      Options.FocusedColor = clWhite
      Options.DisabledColor = clWhite
      Options.NormalColor2 = clNone
      Options.HotColor2 = clNone
      Options.PressedColor2 = clNone
      Options.FocusedColor2 = clNone
      Options.DisabledColor2 = clNone
      Options.NormalColorAlpha = 0
      Options.HotColorAlpha = 30
      Options.PressedColorAlpha = 50
      Options.FocusedColorAlpha = 255
      Options.DisabledColorAlpha = 5
      Options.NormalColor2Alpha = 255
      Options.HotColor2Alpha = 255
      Options.PressedColor2Alpha = 255
      Options.FocusedColor2Alpha = 255
      Options.DisabledColor2Alpha = 255
      Options.FrameNormalColor = clNone
      Options.FrameHotColor = clNone
      Options.FramePressedColor = clNone
      Options.FrameFocusedColor = clNone
      Options.FrameDisabledColor = clNone
      Options.FrameWidth = 2
      Options.FrameNormalColorAlpha = 70
      Options.FrameHotColorAlpha = 100
      Options.FramePressedColorAlpha = 150
      Options.FrameFocusedColorAlpha = 255
      Options.FrameDisabledColorAlpha = 30
      Options.FontNormalColor = clBtnText
      Options.FontHotColor = clBtnText
      Options.FontPressedColor = clBtnText
      Options.FontFocusedColor = clBtnText
      Options.FontDisabledColor = clBtnShadow
      Options.ShapeFillGradientAngle = 90
      Options.ShapeFillGradientPressedAngle = -90
      Options.ShapeFillGradientColorOffset = 25
      Options.ShapeCornerRadius = 10
      Options.ShapeStyle = scgpRect
      Options.ArrowSize = 9
      Options.ArrowAreaSize = 0
      Options.ArrowType = scgpatDefault
      Options.ArrowThickness = 2
      Options.ArrowThicknessScaled = False
      Options.ArrowNormalColor = clBtnText
      Options.ArrowHotColor = clBtnText
      Options.ArrowPressedColor = clBtnText
      Options.ArrowFocusedColor = clBtnText
      Options.ArrowDisabledColor = clBtnText
      Options.ArrowNormalColorAlpha = 200
      Options.ArrowHotColorAlpha = 255
      Options.ArrowPressedColorAlpha = 255
      Options.ArrowFocusedColorAlpha = 200
      Options.ArrowDisabledColorAlpha = 125
      Options.StyleColors = True
      Options.PressedHotColors = False
      GlyphOptions.NormalColor = clWindowText
      GlyphOptions.HotColor = clWindowText
      GlyphOptions.PressedColor = clWindowText
      GlyphOptions.FocusedColor = clWindowText
      GlyphOptions.DisabledColor = clWindowText
      GlyphOptions.NormalColorAlpha = 200
      GlyphOptions.HotColorAlpha = 255
      GlyphOptions.PressedColorAlpha = 255
      GlyphOptions.FocusedColorAlpha = 255
      GlyphOptions.DisabledColorAlpha = 100
      GlyphOptions.Kind = scgpbgkMinimize
      GlyphOptions.Thickness = 1
      GlyphOptions.ThicknessScaled = False
      GlyphOptions.Size = 14
      GlyphOptions.StyleColors = True
      TextMargin = -1
      WidthWithCaption = 0
      WidthWithoutCaption = 0
      SplitButton = False
      RepeatClick = False
      RepeatClickInterval = 100
      ShowGalleryMenuFromTop = False
      ShowGalleryMenuFromRight = False
      ShowMenuArrow = True
      ShowFocusRect = True
      Down = False
      GroupIndex = 0
      AllowAllUp = False
    end
    object scGPGlyphButton2: TscGPGlyphButton
      AlignWithMargins = True
      Left = 65
      Top = 0
      Width = 30
      Height = 30
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 4
      FluentUIOpaque = False
      TabOrder = 2
      Animation = True
      Badge.Color = clRed
      Badge.ColorAlpha = 255
      Badge.Font.Charset = DEFAULT_CHARSET
      Badge.Font.Color = clWhite
      Badge.Font.Height = -12
      Badge.Font.Name = 'Tahoma'
      Badge.Font.Style = [fsBold]
      Badge.Visible = False
      Caption = 'scGPGlyphButton1'
      CanFocused = False
      CustomDropDown = False
      DrawTextMode = scdtmGDI
      FluentLightEffect = False
      Layout = blGlyphLeft
      TransparentBackground = True
      ColorValue = clRed
      Options.NormalColor = clWhite
      Options.HotColor = clWhite
      Options.PressedColor = clBlack
      Options.FocusedColor = clWhite
      Options.DisabledColor = clWhite
      Options.NormalColor2 = clNone
      Options.HotColor2 = clNone
      Options.PressedColor2 = clNone
      Options.FocusedColor2 = clNone
      Options.DisabledColor2 = clNone
      Options.NormalColorAlpha = 0
      Options.HotColorAlpha = 30
      Options.PressedColorAlpha = 50
      Options.FocusedColorAlpha = 255
      Options.DisabledColorAlpha = 5
      Options.NormalColor2Alpha = 255
      Options.HotColor2Alpha = 255
      Options.PressedColor2Alpha = 255
      Options.FocusedColor2Alpha = 255
      Options.DisabledColor2Alpha = 255
      Options.FrameNormalColor = clNone
      Options.FrameHotColor = clNone
      Options.FramePressedColor = clNone
      Options.FrameFocusedColor = clNone
      Options.FrameDisabledColor = clNone
      Options.FrameWidth = 2
      Options.FrameNormalColorAlpha = 70
      Options.FrameHotColorAlpha = 100
      Options.FramePressedColorAlpha = 150
      Options.FrameFocusedColorAlpha = 255
      Options.FrameDisabledColorAlpha = 30
      Options.FontNormalColor = clBtnText
      Options.FontHotColor = clBtnText
      Options.FontPressedColor = clBtnText
      Options.FontFocusedColor = clBtnText
      Options.FontDisabledColor = clBtnShadow
      Options.ShapeFillGradientAngle = 90
      Options.ShapeFillGradientPressedAngle = -90
      Options.ShapeFillGradientColorOffset = 25
      Options.ShapeCornerRadius = 10
      Options.ShapeStyle = scgpRect
      Options.ArrowSize = 9
      Options.ArrowAreaSize = 0
      Options.ArrowType = scgpatDefault
      Options.ArrowThickness = 2
      Options.ArrowThicknessScaled = False
      Options.ArrowNormalColor = clBtnText
      Options.ArrowHotColor = clBtnText
      Options.ArrowPressedColor = clBtnText
      Options.ArrowFocusedColor = clBtnText
      Options.ArrowDisabledColor = clBtnText
      Options.ArrowNormalColorAlpha = 200
      Options.ArrowHotColorAlpha = 255
      Options.ArrowPressedColorAlpha = 255
      Options.ArrowFocusedColorAlpha = 200
      Options.ArrowDisabledColorAlpha = 125
      Options.StyleColors = True
      Options.PressedHotColors = False
      GlyphOptions.NormalColor = clWhite
      GlyphOptions.HotColor = clWhite
      GlyphOptions.PressedColor = clWhite
      GlyphOptions.FocusedColor = clWhite
      GlyphOptions.DisabledColor = clWhite
      GlyphOptions.NormalColorAlpha = 200
      GlyphOptions.HotColorAlpha = 255
      GlyphOptions.PressedColorAlpha = 255
      GlyphOptions.FocusedColorAlpha = 255
      GlyphOptions.DisabledColorAlpha = 100
      GlyphOptions.Kind = scgpbgkFileSave
      GlyphOptions.Thickness = 1
      GlyphOptions.ThicknessScaled = False
      GlyphOptions.Size = 0
      GlyphOptions.StyleColors = True
      TextMargin = -1
      WidthWithCaption = 0
      WidthWithoutCaption = 0
      SplitButton = False
      RepeatClick = False
      RepeatClickInterval = 100
      ShowGalleryMenuFromTop = False
      ShowGalleryMenuFromRight = False
      ShowMenuArrow = True
      ShowFocusRect = True
      Down = False
      GroupIndex = 0
      AllowAllUp = False
    end
    object MaxButton: TscGPGlyphButton
      AlignWithMargins = True
      Left = 994
      Top = 0
      Width = 45
      Height = 30
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 4
      Align = alRight
      FluentUIOpaque = False
      TabOrder = 3
      OnClick = MaxButtonClick
      Animation = True
      Badge.Color = clRed
      Badge.ColorAlpha = 255
      Badge.Font.Charset = DEFAULT_CHARSET
      Badge.Font.Color = clWhite
      Badge.Font.Height = -12
      Badge.Font.Name = 'Tahoma'
      Badge.Font.Style = [fsBold]
      Badge.Visible = False
      Caption = 'scGPGlyphButton1'
      CanFocused = False
      CustomDropDown = False
      DrawTextMode = scdtmGDI
      FluentLightEffect = False
      Layout = blGlyphLeft
      TransparentBackground = True
      ColorValue = clRed
      Options.NormalColor = clWhite
      Options.HotColor = clWindowText
      Options.PressedColor = clWindowText
      Options.FocusedColor = clWhite
      Options.DisabledColor = clWhite
      Options.NormalColor2 = clNone
      Options.HotColor2 = clNone
      Options.PressedColor2 = clNone
      Options.FocusedColor2 = clNone
      Options.DisabledColor2 = clNone
      Options.NormalColorAlpha = 0
      Options.HotColorAlpha = 30
      Options.PressedColorAlpha = 50
      Options.FocusedColorAlpha = 255
      Options.DisabledColorAlpha = 5
      Options.NormalColor2Alpha = 255
      Options.HotColor2Alpha = 255
      Options.PressedColor2Alpha = 255
      Options.FocusedColor2Alpha = 255
      Options.DisabledColor2Alpha = 255
      Options.FrameNormalColor = clNone
      Options.FrameHotColor = clNone
      Options.FramePressedColor = clNone
      Options.FrameFocusedColor = clNone
      Options.FrameDisabledColor = clNone
      Options.FrameWidth = 2
      Options.FrameNormalColorAlpha = 70
      Options.FrameHotColorAlpha = 100
      Options.FramePressedColorAlpha = 150
      Options.FrameFocusedColorAlpha = 255
      Options.FrameDisabledColorAlpha = 30
      Options.FontNormalColor = clBtnText
      Options.FontHotColor = clBtnText
      Options.FontPressedColor = clBtnText
      Options.FontFocusedColor = clBtnText
      Options.FontDisabledColor = clBtnShadow
      Options.ShapeFillGradientAngle = 90
      Options.ShapeFillGradientPressedAngle = -90
      Options.ShapeFillGradientColorOffset = 25
      Options.ShapeCornerRadius = 10
      Options.ShapeStyle = scgpRect
      Options.ArrowSize = 9
      Options.ArrowAreaSize = 0
      Options.ArrowType = scgpatDefault
      Options.ArrowThickness = 2
      Options.ArrowThicknessScaled = False
      Options.ArrowNormalColor = clBtnText
      Options.ArrowHotColor = clBtnText
      Options.ArrowPressedColor = clBtnText
      Options.ArrowFocusedColor = clBtnText
      Options.ArrowDisabledColor = clBtnText
      Options.ArrowNormalColorAlpha = 200
      Options.ArrowHotColorAlpha = 255
      Options.ArrowPressedColorAlpha = 255
      Options.ArrowFocusedColorAlpha = 200
      Options.ArrowDisabledColorAlpha = 125
      Options.StyleColors = True
      Options.PressedHotColors = False
      GlyphOptions.NormalColor = clWindowText
      GlyphOptions.HotColor = clWindowText
      GlyphOptions.PressedColor = clWindowText
      GlyphOptions.FocusedColor = clWindowText
      GlyphOptions.DisabledColor = clWindowText
      GlyphOptions.NormalColorAlpha = 200
      GlyphOptions.HotColorAlpha = 255
      GlyphOptions.PressedColorAlpha = 255
      GlyphOptions.FocusedColorAlpha = 255
      GlyphOptions.DisabledColorAlpha = 100
      GlyphOptions.Kind = scgpbgkMaximize
      GlyphOptions.Thickness = 1
      GlyphOptions.ThicknessScaled = False
      GlyphOptions.Size = 13
      GlyphOptions.StyleColors = True
      TextMargin = -1
      WidthWithCaption = 0
      WidthWithoutCaption = 0
      SplitButton = False
      RepeatClick = False
      RepeatClickInterval = 100
      ShowGalleryMenuFromTop = False
      ShowGalleryMenuFromRight = False
      ShowMenuArrow = True
      ShowFocusRect = True
      Down = False
      GroupIndex = 0
      AllowAllUp = False
    end
    object scLabel1: TscGPLabel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 943
      Height = 28
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      FluentUIOpaque = False
      TabOrder = 4
      DragForm = True
      DragTopForm = True
      DrawTextMode = scdtmGDI
      ContentMarginLeft = 2
      ContentMarginRight = 2
      ContentMarginTop = 3
      ContentMarginBottom = 3
      DisabledFontColor = clNone
      FrameWidth = 0
      FillColor = clBtnText
      FillColorAlpha = 0
      FillColor2 = clNone
      FillColor2Alpha = 0
      FillGradientAngle = 0
      FrameColor = clBtnText
      FrameColorAlpha = 40
      FrameRadius = 5
      GlowEffect.Enabled = False
      GlowEffect.Color = clBtnShadow
      GlowEffect.AlphaValue = 255
      GlowEffect.GlowSize = 7
      GlowEffect.Offset = 0
      GlowEffect.Intensive = True
      GlowEffect.StyleColors = True
      AutoSize = False
      Alignment = taCenter
      ShowEllipsis = True
      Caption = 'RC Digital Prints and Garments v1.2  Build 1201020221100'
    end
  end
  object sWebBrowser1: TsWebBrowser
    Left = 10
    Top = 178
    Width = 1084
    Height = 530
    Align = alClient
    TabOrder = 3
    ExplicitLeft = 13
    ControlData = {
      4C00000009700000C73600000000000000000000000000000000000000000000
      000000004C000000000000000000000001000000E0D057007335CF11AE690800
      2B2E126208000000000000004C0000000114020000000000C000000000000046
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000100000000000000000000000000000000000000}
  end
  object scStyledForm1: TscStyledForm
    FluentUIBackground = scfuibNone
    FluentUIAcrylicColor = clBlack
    FluentUIAcrylicColorAlpha = 50
    FluentUIBorder = True
    FluentUIInactiveAcrylicColorOpaque = False
    DWMClientShadow = True
    DWMClientShadowHitTest = True
    DropDownForm = False
    DropDownAnimation = False
    DropDownBorderColor = clBtnShadow
    StylesMenuSorted = False
    ShowStylesMenu = False
    StylesMenuCaption = 'Styles'
    ClientWidth = 0
    ClientHeight = 0
    ShowHints = True
    Buttons = <>
    ButtonFont.Charset = DEFAULT_CHARSET
    ButtonFont.Color = clWindowText
    ButtonFont.Height = -12
    ButtonFont.Name = 'Tahoma'
    ButtonFont.Style = []
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clWindowText
    CaptionFont.Height = -12
    CaptionFont.Name = 'Tahoma'
    CaptionFont.Style = [fsBold]
    CaptionAlignment = taLeftJustify
    InActiveClientColor = clWindow
    InActiveClientColorAlpha = 100
    InActiveClientBlurAmount = 5
    Tabs = <>
    TabFont.Charset = DEFAULT_CHARSET
    TabFont.Color = clWindowText
    TabFont.Height = -12
    TabFont.Name = 'Tahoma'
    TabFont.Style = []
    ShowButtons = True
    ShowTabs = True
    TabIndex = 0
    TabsPosition = sctpLeft
    ShowInactiveTab = True
    CaptionWallpaperIndex = -1
    CaptionWallpaperInActiveIndex = -1
    CaptionWallpaperLeftMargin = 1
    CaptionWallpaperTopMargin = 1
    CaptionWallpaperRightMargin = 1
    CaptionWallpaperBottomMargin = 1
    Left = 584
    Top = 224
  end
  object PopupMenu1: TPopupMenu
    Left = 688
    Top = 224
    object Open1: TMenuItem
      Caption = '&Open...'
    end
    object New1: TMenuItem
      Caption = '&New'
    end
    object Save1: TMenuItem
      Caption = '&Save'
    end
    object SaveAs1: TMenuItem
      Caption = 'Save &As...'
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Print1: TMenuItem
      Caption = '&Print...'
    end
    object PrintSetup1: TMenuItem
      Caption = 'P&rint Setup...'
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Exit1: TMenuItem
      Caption = 'E&xit'
    end
  end
  object scStyleManager1: TscStyleManager
    ArrowsType = scsatModern
    MenuHookEnabled = True
    MenuAlphaBlendValue = 255
    MenuWallpaperIndex = -1
    MenuBackgroundIndex = -1
    MenuBackgroundOverContentIndex = -1
    MenuHeadersSupport = True
    MenuSelectionStyle = scmssStyled
    ScaleStyles = True
    ScaleThemes = False
    ScaleResources = True
    ScaleFormBorder = True
    RTLMode = False
    Left = 784
    Top = 224
  end
  object scGPImageCollection1: TscGPImageCollection
    Images = <
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D4948445200000060000000600806000000E29877
          3800000006624B474400FF00FF00FFA0BDA79300000FD44944415478DAED9D79
          501369FAC79F9C847084FB0C3728B702720822281E335BAE557B8CF5FBD56F66
          B67614AFFA2D82E38C1CCE165B8380C7724DD50871C6758EADAD5D6B776AC75D
          47BC05414191010545E49043204038420E4292DEEE4C05D2A603C40512B0BFFE
          81799FEEB7DF7E3FE9F77DDEF779DF0E05481954144317E04DD76B03387AEAEC
          BBE8E91B0D536CA4E2C447C9DF129B80F2FE9F8E2401424942FF6B6398F2E145
          0144404128D7BEDA73F2BAB6ED3575F4D4173C071BAB644FAEE392DE4C67CF00
          F005A3674F7CB467EFABB6DD5FA4D9203493EF112544DB597194966C33264231
          EC434E4110181389A686C646A9542AAD8AA290FCE2CB3D858269FBEB668C0188
          0A5D9DFCCB6D1B96F486FE71E50ED436B6680340BFEE1F9C4FAF442B3D726368
          18D3DCD47449CB3597262412B8DD502F134AC477CFFD362F519DBE6200BC7FEE
          C8161A42FFE1E7B11BE8C656F96A61102E56DF91CB95B0FD9BE4FC1B58DACA01
          F0E547790E1C9B0FB7AD8B622C6981F4D49507B532FEC8E8E9AF934F64619F57
          0C80F7BEFCB86C950B776F7440D09296475FDD6B7E0CAD7DBDBC6F769FDC877D
          5E5100FC5CDDF6C6F8072E6979F4D5BDA7CDD0DADB4D0230944800061609C0C0
          220118582400034B4F00082539BD288942A124A1636ADCBC8AB9B9E9C6B88820
          7F4300A8AA6B7A3A3121A9D04C9F7416C4FBF83904AC1800BBB30B6C1853B4EF
          5008B156565688399BCDD09C57999C944058A0171802407D73079898E047BB03
          F44E707067C10A018050F66795DC3233338B5E17BEC604FD0B0C06157D08660E
          6F79DE0A5C078E4100F4F0C760B5AF1F2EBDB6AF0A802D5A340022A914266532
          A0D3686089D607A6719108E40A0598309960C662A9D204E3E3AABF6CF4330B4D
          7F2D00FB328BB6A2CDCEA5848DB17467075BB0B7B3440FC41F7AF77E3D589999
          1804C0A86812D64786E1D22F3797C30432BC68006A9E34A115D703361696F0B3
          E8F5AAB44B357741201C073F572EA847E0DF5E2B57FDC5CAE1CB757B5D0085B9
          D6D6D6476263A218BE1E0EE851DA8791001611C0FEACE2F36E5CD7DF44848580
          BBAB1D6181DE34004BDA041D38567CD1CBD363C7DAD020E03A130795DE34000B
          A5790228A9F4F1F6DA10161A00CE8ED68419191B80F2E62B20540C424CA071CF
          86DE6D6E42DA7B7BCABE4A3E7900FB4C08E0E027258DAB57F9858404AD02277B
          2BE28C8C0CC09DB62A68196C82ED91514B5A1E7D75A9E6DEE4887034E7AB3DA7
          72B0CFC4008E9574060505780405F88283AD256146C606802FE4C3F97BE7616B
          7814D85B59BD66EE8B2BFEE8285CADAB55224A45D8D7C9A71BB134E22628AB64
          68ED9A60DBC0D5DE606B63419899B101C0548EF6032DFCA7A84712082E76765A
          AEB3A184A0FF5E0E0E4155F3239952A93877EEB7F907D4361D6E68B1242A328C
          E5EFE701D61C73C24C8D118052A9848AE71570BFF33E50516F85636A06C85C93
          2D08020AD493A1A1C7EB23F53994B9565D281118938854C753A8941322F3B6AC
          0BBB2E28D466ADB3B3B3B3A92F27ADE471EBA329AB7CB8C0B16413E66B8C00D4
          12CBC4D03DD20312F4EF5C124E88A0B6EE1124AE4BD4AB1CB71EDC82A88810B0
          30379BF538895406826111B43674212EF4713A5ABF4A4DBB1680DF6597584E4E
          2AC61236C6818FA70B589A13AF30306600FA686050007FB9F02FF8D95B5BF53A
          EFD2E5ABF0BFEFEC0047FBD9D77E8D4F48A0ADA3176E5756A3630699E5B99347
          859A762D007B3E2EE152698AEEA44D1BC1DBC309CCD82CC28C4900F303302196
          42C78B7EB87EB302A854845B7AFC70AFA65D0BC0BE8C9240B4556CDABE35093C
          DDECC194C524CC9804303F005813D4D1CD872B576F805201815F9C4C7BA269D7
          7E02B2FE18434368556F6FDF42F5E0DAA1C36CE265362480F901989C9C8217BD
          43F043F93525DADFC7F2F2526B34ED5A00F6A6176CA3D1E917B76FDDCCF472B7
          07069D4E983109607E0064723974760D42F9B5EB32A502D951969B7A55D34ED0
          0415FE9AC9627E9D949860EAE3E188BA5A54C28C4900F303804DD6B5BFE0637D
          80442A95BD77363FF5EF9A762D00C9E9851F989BB13F43BD20B69FB7136E3023
          972BA0AF7F1046C785D0DED1052E8ED6B0736BFCE2D53681BEBF5A092F0746C0
          DBCB1DAC2C2DC0D9C91EE874FD7C784D0985981BDA08D6B6B67A9D37323C8CBA
          A1A1606131BB1B8A8D335A3BFAE1564595582216FD7F59DEE13F69DAB59BA08C
          C2542B8EE5F1B8D868B69F97F374FAC0E0304AFD368C0927A6D37CBCB8F0F3B7
          372F7295E375F1871BA85BD733FD9963618E7E7B13E7FC261A5218803B55F7C4
          A3C2B1CCB3B9878B356DDA4F4046D1EFED6DAD33D6C744B2B0260813F6CDFFE6
          2FFFC4553E2663008089833E09EFFDCFCEFFEA49584C614D50F5DD5AE9D0B020
          97979FF6A9A68DA80F38E5E8E470283A329CE1E5E6A04AEBEEE987BF7F7F452B
          63630180E9573BB7811BD76949CB325F75740F424D6DDD547FFF40112FFFF0C7
          9A36ED2628B3B0CC9DEB9A1C111E4AF170B557A53D6F7B01FF2ABFAD95B13101
          D8B13D017C7D3C96B42CF315E686D63D6C40BABA7B79BCBCB4FD9A36ED27E058
          F1054F37F75F478461D1B09F3A26ACA33AF7E7EF0051E2A631C0C2DC14025779
          2DE9CD343FEB00213ABCD714954A850FDEFD0598CF312F6328F5BC1440DD8F8F
          E04557CF85D2E329BB346D5A000E66955CF3F2F6485A1B1A08AE4E331D1B3661
          555D536FE87B21545C741844468418BA183A85796DF50DCDA8E7D879ED4C4E0A
          CEDFD506F049C9033F5F9F88D0E0007076E0E06CED9D3DF0F4593B8C8D09D121
          B61464533283DC1093C10453160B381C0BF0479F406F4FB7FF3ED345541F7F14
          1A1F3F85D6D6B6079FE7A4446ADAB4001CF8A4E45990BFBF5F70A01F38D859CE
          FF2AA4748A3F340E8F9A9EC1939696679F7F9AB25AD3A60DE058715F6848B053
          90BF0FD8E9888691D24F430221343D7D0E0D8F9AFB4A73525C346DDA9D7056D1
          F8BAF0308B003F4FB0B1369FFF5548E9946074029EA0CE435D7DC37869CE215C
          BBAE05607F66D1544C74247D950F3AD4E7B0E77F15523A353A268296B66EA8A9
          B92F2FCD4DC54D2FE300A4A515988A5814717CDC7AF0F3E682A58571EEB75D6E
          1AC3A262ED3D5071E72EC84CC64CCF67674BD5361C803D99458E5404E9DF9C18
          0FDE1ECE606EC6D2FF6AA4B4342192425B671FDCBC5D09D429B963E9E98FF86A
          1B0EC0EEF4025F1A85D2BA75CB26F0727304B62953FFAB91D292588C45C506E0
          EAF59B00349A2F2F27A54D6DC301D89B59180E0852F7F6F66DE08945C34C746F
          3A77B63653C5038884CDD7F78D88086D2C261DBC1C74BBB74F7A043A6D5E8E96
          C062100788B0EB61D72512564EACBC44924EC9A163607CCE4AB4ABBB0B161DAD
          8436A1971F0C45ACD779AE148B8AF56051B12B80B630E1A5F91F4E8F687100F6
          A71726028D72F5AD6D5BE8583C98A9E3664900FA0190C9E4D0D93308E557AECB
          E54AC596B37987A727D6700092338A769A30E97FDDB23991E5EDE108741DD130
          12807E00E40A25B4BFC09AA0DB52B9627257D9F1C3170901ECCB2C7A97C56295
          6D4AD8C0F6F374C2567291001600805289C0F3CE7EB871AB522C9148F79ECD4F
          FB332180E4F48283161616A712E263D97E5EB3CFAD9300663417004C5854ACB2
          B25A3C3E317184979776469D8EEF84330AD26D6C6C7E1F1B1365EAEB39FB9BB0
          4800339A0F80E79D035075B746322A18FB43597EEA0975FA2B008A8E3BD8DB1D
          591F13C15447C374890430A3F90068EFE2C3BDDA8793FC41FE695E6EDA3175FA
          AB4FC067AE2E2E07A3D6ADA57A70ED67CD908176D0BA96AC28D04E674AA124B4
          512914D4BBD21DBB95A21E832E31E934A0EAE897A6E40A50A06D2D9168E8390C
          1DF162AC7D96C9153097E862115065C480954C1390B3670F0675760FC2FDBA1F
          153D2FFB3E3F9B9796A24EC777C219C5DFBABB73FF6F5D7808B8B9E8B74C83D4
          ECEA7E390C75F58D2888DE6F78C70FBDAF4EC70138905572C9CBCBFDEDB56B82
          80EB64BCCB3C96A37AFB04F0B0A1093ABBBAFE7DE6D3941DEA741C80839F7C56
          EDEBEDB57E4DA83F383B58EB7F15523AF5923F020D8D4FE0795B7BF5999C4371
          EAF457013CF65FED171412B80A1CED39FA5F85944E0D0C8E4163530B3C6D697D
          7C2627653A80FD6A13D4151C1CE0161CE00BF6B6B38723DF342FE8D14B2A7409
          881D00771B04425C94B39E3F383C0E8F9FB4C1E3A6E62E14C0F4FA19FC5C5056
          B1203C2CD43A609537D8CE110D2301CC683E00864784D0DCD201F50D0D82D29C
          D4690F070F20B3481A151961B25AB5396F76B78A0430A3F900108C89E059EB0B
          A8B9FF505A967B683AD2359DE33BEFFC8D66EDDB3BB521369AE2E7E3061C8BD9
          C391248019CD07C0D8B8189EB5774355750D32F2DC9571E1C22E050EC081F4CF
          AD1594494162C206F0F17056AD7A23012C1C00A14802CF3B5EC2ED8A2A909980
          F5F9ECB4511C80DD59A73D684A5AE7964D09AACD796CB6C9AC199200F4032012
          4F427B573F5CBF711B1D3A533D78270E75E100EC3D5A1002544AE3F66D9BC193
          EBA073731E09E0F500609BF55E740FC2E5ABD7D16AA68694E61E7A8C03B03FA3
          300E28948AB7549BF3ECC184499F35C3376D2E4832052053105F9B4943C0748E
          57864FCA7E0A4B5E2EBFA6545028F1678F1FAAC601D8975EF0169541FFE7F62D
          9B5533A10C86716E7658AEC2BE201D5D7C28BF7603E5ADDC79363755F56AAD69
          00C99905BB5826ACF349891B55B1006CC937A9859342A984B6CE01B871F3B644
          2A9DFA0D2F3FF502963ED307A417EE3133671727C4C7B15761D13003FFF4C78A
          1382C0336CB35E65B5582212A794E5A57E8925CF344119858739569C4F559BF3
          3C8D73ABCF7217169644C701E2D1F1D163BCDCC38558DACC139059986D6F6B7B
          747DF43AD58A08520BAFB6170370F7DE03E9D0D0703E2F3FED0F58DA4C1F9051
          F8471727C794E8C870D59A20520BAFCE6E3ED4D4D6CBFBFAF9C5681F70044B9B
          7902320A4BDDB8AEFBD6AE09060B724DE8A2482892C28F0D8FA1BBA7B74CBD59
          4FB3092A73E372F786040518BA9C2B5A8F9A9EA0007A78BCDC34FC6B2B49004B
          23128081450230B0480006D68A0130353505C3C33FCD9CDADADA008361D43FA0
          37AD15016058208087F58D2A0898B0CA8F085B033636C6BF9466D903409408DC
          ACA804A9143FF7CF3231814D09F1B32EA937062D7B00E34221F6F223425B7C6C
          0C58581AF7E6F2650F402295C0CD5B77086DD8EE4E16CBB847F1CB1E00A6DA07
          0F6168681897666F670791EB16E6457E8BA9150100EB7C9B9A9F423FFFA7EDB6
          8E0E0E101CE8BF2C3CA11501402DEC8D84AA9B5846C1A35901B8BBBAEE0D0E36
          EEDF6059EE7AF4B819BA7B7B09006414E5D9D8703E8C898A34FEE77819EB5ECD
          03996064F4342F2F15FF93E6FB328B932814E4F2C6F80D74B6A9717B12CB5562
          89042A2AABE54A44BE8D97FBE14D2C0DBF3CFD584905DB948DFD7C21D3944DBE
          29652185557EDDC306995824AA3A73FCD0F4AB26F12FEBC82EB03191D3BE5328
          21CEDA8AA3303763339165D4C119A328A8A3302112CB46C7C6B0317A252818BF
          3A937F7064DA4E74D29EF4C2CD342A6C417D0C72A7DE0208ADE461049457D5CD
          CE2B3652861409C0C0FA0FF53A74E88357174D0000000049454E44AE426082}
        ContentLeftMargin = 0
        ContentRightMargin = 0
        ContentTopMargin = 0
        ContentBottomMargin = 0
        Options.LeftMargin = 0
        Options.TopMargin = 0
        Options.RightMargin = 0
        Options.BottomMargin = 0
        Options.Stretch = True
        Options.StretchBorder = False
        Options.DrawOnlyBorder = False
        Options.DrawOnlyClient = False
        DrawStyle = idsTile
        VirtualWidth = 0
        VirtualHeight = 0
        TileOffsetX = 0
        TileOffsetY = 0
        Proportional = False
        Scaled = True
        PixelOffsetModeHighQuality = True
        InterpolationModeHighQuality = True
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D4948445200000060000000600806000000E29877
          3800000006624B474400FF00FF00FFA0BDA793000011E84944415478DAED5D09
          781455B6FE6F557767E9EC614BC02C0C4B80202028A06C0A024F507158551250
          C461F9D884C199711833F8F08D23302C02222390842790804F4450416571C161
          13C1852C6481104220FB4227DD55F7DDEA22CD920E7455577783E4FFBE4E5775
          DD7BEEADF3579D73EE1A82467814C4D315B8D7D1488087D1488087D1488087D1
          488087D1488087D1488087D1488087D1488087D148804A947F11D657A434161C
          2E9B2C74778B2117ABD4C86924C00194ED0D1B02428B0307151C29DCD7D4CF20
          E89299E2465C9724875D1F1B38B0E0B052D9770D0134635380D90BED392A4611
          906050EACF6A6F942FA20A84545088C5222139FA1A2E9DB41D5FAE49B909E0CA
          FB849513D03301830ABA3032D6B072A7D8497A4EA0A6CE218F979429917F4712
          40690A6F3E67EAC68BF4510A3280FDD48D7DC2148AB9C03E3F30B2F60944D8A7
          8FF03D41C818414D7D4ABF0C1FCC9EF022B3C19C6E30198A580DF5F6D2114A26
          053C9EBF5E89EC3B8A00734E626FA6B0387638867D423516CF14872D22E53619
          A2C77FAF4640E917CD5B1370671A4E41FFC6CCD41B4A647A9C009ABDC15B84EE
          0591D0D9AC32EDDC522690C6512CE32CA51B48DB99350EE7DBDDC6ABDC507599
          1DFAD9974B47070D2AD8A6A42E1E23809E4BF11105D334A68CB9506E5EB4AA45
          3E331B8B39086B48F40B264772947FD9621EA5E46D3B978E07045DE8457AC0AC
          A4061E21C09CBB6920A8F80E2B3CC613E5DB81645666EAA2E277DF2EA1E494CB
          FA84BDCAEAFE3776EA2DFF88DD3AAA9B6C1C7C2E5F69C16E25806626351374E4
          5D76F48C3BCB55A08E6DBCD93C8DB47DF1D2ED525EFAA689BFC1A48B61515761
          F0C00BB9AA4B74D7AD99B393FA13423F604586BBAB4C95B848091DAF8F9CF085
          3B0A730B01424ED26BCCD6FF9D1DF2EE284F035808C5023E3AFE1FAE2EC8A504
          48F1BC70D6F40EB391539C97E60990D57CE49919842488B7BC4F96B0A4FFA845
          ECF02946DC67410763E713DC3A8FAD0457559D66ACF012F441CCE4E0F7EE559A
          D690FC42C9F85B85AB45FD473F4E28DD63CB41E933C15F6FFFC821E9AEA8B2F5
          C9CF356D6687A3DDAE2F578060071FE13DB2A19674719F51C3C161A7EDFE41C7
          861EDC9EE2986817C09293B4827DCDB8F9F78F3F3E86AD29DFA0B4A45A5BFD10
          8288C810CC9C310C31312D5D714B52216B759171764D29450257D2F7A7779936
          9F64A77B82B9CB93C8FEFD1687C42AAD47F68089DED1FB3736D868B9EA70FFFB
          E6DFF3CE1761CA947518F24433748CF5D7543722A5D8B3AB1025C51CFEBD6E9A
          A6B26F5016217FE223E3DED254A6A309F3BB3FE9EBEDEBB58BE518C0B27D1E6C
          AC7C9A7CFAE90D76510E35F125EC443B478E6422212115EB3FE806FF009DE6CA
          F9667F11562CCDC68E8FE683E739CDE55F85C01EAEC1FAA8F8AFB412E8300125
          FD46C5B3C213AFCB3832F8E0B60FEBCE69C6FAA6829E3FD1509C5F5C5C89975E
          5A8336ED7DD1B69D5153AD8822C5E1EFCA101C1C8CC58B27682ADB0ECEF3065D
          5712FEDC652D84394CC0E50123077122D95B774E097938F440EAA1BA734B4EF2
          87B76BE19E3A958BE4E483484FCB874F8B70707AE7DF047345052C1565E8DBB7
          03E2E2FAA14993002DF4723BA4EAA2E2C7682148910F28E93B6A062518C25A8A
          3B420F6C5F67534276D210667A3E73444666660166CDDA809EFF5C05DF16CEF7
          C1E5EDD98D0B3B3EC0D62DB3B4D087120C73A4EFE876703A0A927A3505C1F413
          3B6CED48FA3A021E7C6309BC9B34BB7D053902DEC717A220809ACDE0BDBD21B2
          6FB1B6D67A3D7FDF5E14EC4E45CAD6D94E6B542132792A7476B417B5C1FB73B6
          162CEA99CB7CC362876B7D9580A867C681D7EB6F9B9EF332A0D5E3C350919B83
          CA73D908EBF3284A4FFF82F2CC34EBF5B28CD3A83A7D0ADBB6CD715EA58E28CC
          100C2A5C61376E92A2A2D92C2A5AEE943C6732CBADDDC02C251D6CAE3041E73E
          DC843933FFCB6959F61010E883D8D8FBC0719CF43480BF6F3468751EC44BFBA5
          CB17D85BD0DA99B7C02902849CC469146495923CAE202073F306F654AA1AEE75
          083D7A4423E1F5B1CC1C722081B140CD25505381AC4042FEC0DE82F7D4CA768A
          00734E529AD26144571090BF23091B3777715A963DFC70A40C6FFE3D1D2B574E
          42EBD6F57D1633BFA759BBA0835AF9AA09B83A80FE9DD27C771B01A77FA9C082
          F9A7B17CF90B68D3A685DD3422C73D6488187F448D7CD50458729256B3AFA94A
          F3D923E0CAC5025C3C2835A0A9F444A1D92303600C6F65CB5374EC302AB2D2E5
          0AEB0D8818FE7B109DDC86900838B365030C7AAA8DC66F524F6D8D88989870BC
          F5D678D90FD8C74A1692CE5457820A5CEDEDBC08155347EC1190BF6F0FB81387
          D0BB7F5F1CFDF67B54B7ED8CFB863E69CB93F6AF45E8D6360ACDC3C390B27113
          3AFFED2D16C236B55E9308C8DAB60911C34628ADCA2D519AF60BCC67333163FA
          50F4ECD9067AFD2DC7922EF191592D6E376E600FAA08A83D9BD48313A1EA956B
          8880F6E6324C7BF5156C58B11AC7AA508F8057664D416CF7AE98307C145ACFFA
          CB0D04E47CB4157D5627AAA94E83C8DDB91DE507772371BD63634922E80386A8
          093F282D471501426ED27C4AA1AA57F0B74A00019DCB474D58AAB41C55045872
          9259139CAA0ABCED1170E1C01728DEBB13916DDB20EF4C16FCFA0EB236BEEA70
          7AD99B0822147E410138F9FD61745FB40C5E21B2F5BB530860D8C5FCC070A5E5
          A82420499A77D9424D5E7B040857AA517E26D396C6AF35B3B9BEBEB6F32B8505
          301516CA1566CE3728A6A3EDDA1D44C07946402B4713D7413101D22C65412F2A
          9A017C3D5C11864A04F45EFA2ED2572F0147653FE8DF3E16E1C3E5E1E8D2B45F
          71F193545B9EA6439F464827396CBDF0F9C728FFE984F558243CDABC3C137A3F
          7F350450DE640E2431932A94D45F3101B567373DC889A2E279F075B04740C9AF
          A79097B2C95A1929980C1F3116A15D1EB0E539F77F5B507652F66F94BD011D5F
          79CDDA41773D013D162E46FADB094858F616CEFC9A86941D9FA1FD9CD7AC6924
          1FD3BC201BA3273E8F8F37A722DBB789CDC764AC5A8CA71E7B041DBA76C6A2F9
          0B103175AE350456410073C4A4BB212AEEB84B09B06427B23639D9A225019282
          EE2B3E8FE7A7BC88D48DFF8B74DEBF9E139EF0DC48B48BED807993A6A3DDBCD7
          EB39618980ACE56F22F1936DF8E9D8092C5DFEEE0D0434E4E42502A64C1C871E
          7D7A63F2A8F1087B61BA6A029836C7E822E3531DCFA082002137F9654AE95AAD
          0970360ABA2308005E627EE07DD7129093F80A055972A711F0D03F56E0D0ECC9
          F0F2F686208A68DAA51BDA4D9D6B4D5378E86BA4BDBF0A7A8301E6DA5AB4899B
          8CB0FE03E5FAAC5B89C2A3DF83E379D4984CE8F9F66A7887365145000BD4E6F0
          D1F1CB5C4B406EF2EBEC0D48D09280C2C38790F6DE72E898822C928226FEC1DA
          EF5F87F4B5CB70E987A3D6AE008BD98C5E4BD742EF1F700301521424D4D4805A
          E4D920BC8F8FB5F7B20EE6EA6A69C294F55867BC36264D1959C2952BB2321809
          D2808F04550410BCCE47C62FBCEB087006F71E01D79B20C2810BE905628C9282
          798845876CFDE44A08608442A8BE36598B676D0069B2954D494CA99272652571
          4C493EF508A86782EEEF8A76D3E659D3D437412F31133448AECFCD2688D54B32
          6F77AC09B2E4264D66B1A2750082F8C730021EBC7651AC8190B74D7AAC141150
          F0ED01646F7A1FC68000545794238239C3F0C706DBF2A4AD7C1B95D919D0EB0D
          28BD7C09BDFEF51E0C0181371070CF38614B6EF218F6C86E958EB9909E8C841B
          C76384BCEDEC4FC3530F7FD351903BC2D0EB1B62C4A725B8668FD9AED1DA6288
          1776DD32BF2B09B8271A6237774548F69F18A3D9AB510DB1ECA4D517A82120E4
          6C3A9E1A3B129F7FB413794161F508183EA81FA2DBB6C13F172C44CCAB0BEB11
          20754564AC590A22CA63C37E319DD172983C4FECE6AE886643462038F67EEBF1
          853D3B517E4A6E653BDD15E1EB1D409A8DA9742901122C3949D2623455218C3D
          02CA33D391CF94287931294E091B361241319D6C79F23FFB18E53FCBFD35E0F5
          683B658E2D5AB9833AE3F298FDBF4F69396A0990ECCC136AF2BA2A0C7D64D546
          149D386A9DBC25C197991163AB08B9BE555528F9F9475B9EA00EB1B67644557E
          1EAAF3CECACAE075087DA03B8BC07835047CC20878D2D1C475506E82680227A6
          EB5752E8A78167F1B44ED954735711D0E38D2538FED739E8DABB272A4ACB50CA
          02B1F6B3651F208D3794ECDD89A8766D712EF30C8C7D06A2D560B9EB3E63D512
          186B2B11141A8A93FF398CFBFFFA267CC394FB00B70CC85CF9312E5A67314B2B
          1D7BD97E348483F8C54A8F8F6709F070142452A19B21FA85132E2380EE1BA0B3
          04B4F88E6579B09E106F66FA8CB1F73201857C6456984B07E52D47C70DA3847C
          D2A0A0E0C7AC53F7B420A0A6A418978F1FB67611184242D1FCA1876DD3506E45
          C0A985AF62CCC4F1B8987F013F64E4DC404043B32E24023A853741CBC8086CDF
          B415EDE72D504380EBA7A5D41E1B379D80BCD3A0A0C087993F08749A809AE2CB
          38B9702EFAF50D407030C1E97433CE9507A3E31F17DDD03D7133010FAF5C8FF3
          7B77DBFA82FCA25BDB46BD4C970A51F89F6F6D799A3ED81B3ECDE511556930A8
          E2EA70A8D417D472D05070ACC5AD8400B74CCC321F7B7628FBFAB441412103A5
          A9C30E13D0F1D917E1151888E036ED616071F7C513C7208D875DFAF118BAB4C8
          C4C449D716DBCD98928EE0879F86377B1BF4467F8476E884F2B339A82E2C4069
          6E16F2BEFECA6361280B9B7FD547C5777450AC7A02A4E8C7723CED003BEC534F
          887724F3018ED54126603DDE7C72328B3E0484F818A1E3781456C91B5CED3A73
          1461FD4B30FC996B6FC71BF33331C0AF177E17DC025E2C540CF236A2B2D6842A
          730D4EF97048FC22C573ED0082977591F1EB1C93EA040112E88FCFB7B25844E9
          4EEBFA1F28F16A590D6327A31405095732205EC9813E645083A2EBDE8075E3E6
          C1BFB6FE4ACEADBF7E8B80470A307CC4B549178BFE740623D81B16D3A4FE12D4
          6FF466ACDD95E42902F2F82AEFDF914E636AD596A3A21D00623EF15C174E105B
          5A404FEB43873D4509ACF1AF297F3D84EA4CF8B65E00C2F9D8CDFF5B2280B9A4
          597C64FC0A67CA717E8952C60A2F8B3EE8A4344D9D0A55903E9CA1E1A547BF15
          0228A5193A4B5967253B6ED983262BE5CD591B07138EFBDC91B47504BC377A0E
          0284FA339A951270402CC7BFF7A6E081D7FF478B5BB1415A7B76E5F8D7B77803
          E813BAA8099F2A126A079A6D5560C94992F64A1B79F3EF8597CA3175CA7B3099
          1CDBC98BE7087C8C1C8CC66B717F71911966B3E2368EA60809F14362E274798A
          3AA529BAE80963B590AB1901F2426D9DD4AF7BC3634AA545D4473261AE95BB89
          2D1601A565D592FBB63A949B515363464D6D7DB28CBEDE7657C04B37505C5A89
          80005F680DA9BC264DE4BE2EFF001F74E912291DE6F1065D37B72FD47604CC14
          F563A6485A69A1FD5E0477062CECB979541F19FF8D560235DF2D45C84D7E9539
          2897EF34E50910903FF251710E2FC9754CA60B60CE4E5C460871FBD27517638D
          2E2A7E5AEDD167A7B1F0F32FEC3C53C75B9E275D53CF3B23D4451B362570424E
          F46616286BB29F82C741B0958FC87A0E877E0EB278E9A479F2BCFC337D47D77D
          CB0CE744BB0857B72C4BC6DDBE6B96A4FC4AEF78A9B54B8F8E0EB4109DB436CE
          EBEAB525FA0736CF734EBC0BC17C01B1E4262F6185B8671F01EDB18A8FCC9A79
          7D3FBFE5D8B8B114E4CF4C73E93AB37E2AE99954E44C01EED9B65276CCD22E5A
          774B7464610EF7CF5A3B5C7B70DBC6ADB5D9493D591B4B5A5710E5AE3255228F
          859ACF6A196ADE0AEEDDBA586EAC497B4BDC997E41B2F73C9D4E5A4D70CAAC28
          2BD20330E7243ECA8A5EC50A57BDC782C6C864EE6A863E3ACEA14DA7B484E7B6
          AF675192A80B9ACA5E77298A70D15E93B7451E8BE9DFE66A4BD73ADBABA9169E
          FF070E562202278A84CC76D776F6D20E274CF14B597899E8CC608A16705D3B40
          DE4F7928258486EC4FFD9CC80B206F89DAACC487380E712CABD4D3D854E32A49
          0DA8AD22C725AB1D4077055C464051BF51CB9970EB540DA6F965A1071DDF534C
          6A499B73A3BBB0E6A6F44F7CA4E14F697A83D245D079EC7382B556F70954FC4A
          1F957B52CDBC1D57C3650414F71B95C5BEA2AF9E66871CDCE6D0A67E0D819E7E
          DFDFECC3B7E32817C96A1D4A44F88150F97FB9505249395432A68B4422E6EA7D
          7CD394CE52F6145C49C01AF6250F2751BA26E4EBEDAEDB53F82E86EB7CC0E8D1
          7C71813882633E20A839D94152535DB7A9DB5D0C8F4741F73A1A09F0301A09F0
          301A09F0301A09F0301A09F0301A09F0301A09F0301A09F0301A09F030FE1FA5
          8A7DE8F6C6BB840000000049454E44AE426082}
        ContentLeftMargin = 0
        ContentRightMargin = 0
        ContentTopMargin = 0
        ContentBottomMargin = 0
        Options.LeftMargin = 0
        Options.TopMargin = 0
        Options.RightMargin = 0
        Options.BottomMargin = 0
        Options.Stretch = True
        Options.StretchBorder = False
        Options.DrawOnlyBorder = False
        Options.DrawOnlyClient = False
        DrawStyle = idsTile
        VirtualWidth = 0
        VirtualHeight = 0
        TileOffsetX = 0
        TileOffsetY = 0
        Proportional = False
        Scaled = True
        PixelOffsetModeHighQuality = True
        InterpolationModeHighQuality = True
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D4948445200000060000000600806000000E29877
          3800000006624B474400FF00FF00FFA0BDA79300001B664944415478DAED5D09
          5C4DDBF7FFDEDBA01252C644930C151195A98747659E42E6977916991EEF993D
          3CE1E199E721C343C83C4F792984A83CD2684C5432A5E9FEF73AC975BBF7DCDB
          D5E9F5FCFEADCF677F9CEEDE679F7DD6779FB5D75A7BAD4D84622A521215F500
          FEBF533100454CC5001431150350C4540C4011533100454CC5001431150350C4
          54A80054A95ED7449C9565AF2181A1442C4ACCD04C0F7EF6F0E1ABA27E693E32
          31B131D4D0CE6E24CA1657C81221494B843BD1D1E1F185F9CC4201C0CCCCDA49
          22122D6297CDF33C230B22D15151B6685A6CECBD7F0AF3C5D421138BDA561A12
          F10276D98515CD3C0C0AC816635A7C54F8DF85F16CC10160CC1FCE98BF8A5EC4
          B04C49D4B5328141295DBC4A7E8FD0C8C778FB3E8D1EFA210BE8FD3826FC48A1
          7054ADF1DAB8494438C02EF5F5F54AC0AE46559437D047EABB34DC7DF404AF52
          DE51B32C8944E41D1F1BB652E8E70B0A00637E67C6FC831A62B17840FBC668DB
          AC0E34C4D2477C4ACFC4FE7321387CE91624127CCA16899A3D8E0EBB59D84CE6
          2373731B3B0910C88A5EC71FECE0E1E6005D6DAD2FF5D9D9129C0E0AC7B62381
          92CCAC2C4820E9151F13B14FC831080680B171033D2D9DB4876C945526F46D8D
          66F5AC78DBFA5DB885DD2783E9F2665C4CB823FB5792FF27F5D030370F6B9A0D
          0D27914862949D8D243144D763636B0700FBB3D419B3A9B9CD55F64FD39E2E0D
          E1E1EAC0DB2E282C1A4B769CA64993A0A39D69F5E0C183B742F14D30004C2DAC
          FB4222F2B5AF658A5F06B753DA966696F7B27D789C900488454DE3A2C202F3F3
          8CCF5FD81276595D41750C7B9BC971D1E17EF91AAF696D7B88C52195CB1B60C5
          A45E325FAA22F2D97E9A0382B16C485C4CD866A1F8261800D52C6CB68A24F0F4
          EEEB8AA6F52C55B63F74F1167C4F04B35925991D1F1B314725C3CC6DA7B30F65
          3E8DD9B696257E70B283A1416924A7A4E2EA8DBB088D7894DB741EFBAA66AA1C
          AF99CD149108BFD3CCA72F4015DD088FC1A26DA788637B19C8BD85E29B600098
          99DB9C6172C465C9F81E30AF524E65FBE07B3158BCE3145D6E640C1BA6B46F33
          5B0F8948B25747475B3273FC40918BB3BCB8B87CED36662CD92CF99896C6E601
          7E8A8F09DFA17CBCD62B24108D1BDFA7359CEB5B41153D7D9982713E7BE8F22A
          1BAFB3507C1312007FF6E29D7E1BDD15B5CC2AA96C7FE5F643ACD87D9E0D40B2
          323626C28BAF9D8949635D0DAD549ADEC64B678EE5663E1F05858463DCACE5EC
          43912496D0CEB45426ABCD2C6C1631993E75548F9668E5584BE578A39F2462F2
          8A03C4B0B3B131E1AE42F14D38003EBF50FF768DD1A5653D95EDD71FBC8C33D7
          2220928846C6C686ADE36B676A61E3CE96E8034D1AD6C18A395E2AFB9DFCDB6A
          5C0ABCCDDE4CD22F2E3A6217EF78CD6C3C99FAB9B5A5432D8CE9D95265BFC702
          EE61EB91AB2A278CBA2418004CA573CC6692C5A88C3E564EE90D1D6D4DDEB6AF
          DFBCC7D8C5BB254C2DCDCCCECC347BFCF8C1335E4659D82C67C07ACD183F109D
          5C9AAA1CC7E9CBD7F1EBE20DF4621BD84C1DCED7CEB8468D725A195A4FB43435
          B4574EEE25AA60589AB7CFF48C2C782DD98397496F214676F39898FB5784E29B
          A0760053EB8EB27F3A38D89861623F176869CA83F0EEE327CCDF741C91F109F4
          F83F9946314E699F16367BD817D06BCD828970B0ABAD720C77EF4761F0A485A4
          D7FAB375A08B8AF12E66FF4CA6356BE6B00E28ADA72BD726332B9B89CA7308BC
          1B45E33DC7C6EB2224CF0405C0DCDCB6623624A4E09B9A5632444F66D8D8D734
          85B696063E7E4AE716DEBD676E203199896691E856465A09E767CF423E28EBB3
          9A85ED3A9144327CD1F41168D554B5B61270FD2EBCE7ACA417DBC1BE809F94B5
          353333D39188F42FB245A39111B3DA3D5C1DD1A88E054AEA6A23233313771E3C
          C65F676F22E629E7BE7A9E95A1E9F0E449E8D3FF2C0044E480D3CCCADE4F2F95
          FB9B9E8E363EA4A57FFDD0A390680D888DBD93A2AA3FA6018D601AD0DA6E6D9B
          63DA98FE2A9FBF74FD1EEC3DC216770926C4C6862F57D5BE66CD9AA5D23E696E
          6383EA96FB9B6E096DA4A567908A9CFBD34D267ABA33D1132734BF0ACB1B2A66
          8CEBC118D78F5D3760C58895976C010B64C6DA16C698D3F9ED882D9695D86219
          ABADA5A5BD77ED1C51D5CA1578DB3E4F78859E236748D23E65646A8A45965151
          618FF3FB9C6A16D6AD44D9A2C1EC59CD18532AB29F92D8586F419CBD9B2DE6A4
          7F661706A3BE8BFD005373EBDFD850A79B9954C2CAB9E351B9A2BC9D91F02A19
          E3990AFA28962484682993D5938A7ADCF9A1C20080D4098D7CB4A319F5265F3D
          B668A1592D2EF1381BAC6B493D1D49EFCE2E2267660F942B6B80A49437B8121C
          CAC4CE39C9DB771FE87D2EEBEBC1353C3C3C3D5F7D03655811E7A31DF9995285
          66961000D8B242A2861C40E4A3D155E3DE0C56EEB17292952DAC44F335B4B1B1
          D166FC5DC2D69651500C703613791BC4D91F98EC8F4D53F24C3356067E1E2F59
          755AC83F51BFA40E9D60C59795BB05655E410020B9BE94155A19B919A4A55D02
          25F54BB14E73BA7DF72E15323E2E91087A7AA5BEFCF99ED5A7A77FCAFD93C020
          83EC675678352333B33AB524A2ECBEECB2312B864CDF4C964014CCD8EF1B1F1F
          1EA164BC3AAC902F692C2BDAB9E3D5D797EAFF1F3FBC630BAF54D493D350BF54
          992F7FD3FB6448C74B0D696DF066E5E5BF0D80354893012C7474F5244ECEAE22
          EBBA0E30AA5059A6D18523DB99F56A84BAB5F570EA620A56F98AE0D4B2ABB401
          D33212139EE1EEAD40DC0C3C2FC9484FA7F1D017D1869567F91F8E4AA2959B1C
          4FF5D95A2E69D0B8A5A86E8326285FC984CD09290B6E5E398681DDD2D0A58D21
          22633E6290F70BB8BA0F96E928E9550222426F2038E03403EC3DFD449A51277C
          E3D7F02D005461E5062B95ADACEBA1B3C760E8E89654D8302CE46F34B18D87D7
          E08A9834EF09123FD9A37A2D5B856D5353927068F77A3C8E8DA43F69BB92D458
          5A23B43F33B02A2B8A1F244BC49527AC90A547EB803E2BB49D58B74A354B74ED
          3B1C0665153B0B6323FF814EC675AC5E60824DBB12712AA802EC9C14BB293EA5
          7DC4D1FD5BF0CFBD10FA33911587CF60142A00D49E36319AD8D66F84CEBD86CA
          CCA0BC94F882CDEE6B87316F8A3126CC8A874BD741D02BA9CFDB3E33231D7BB7
          AE40ECA3FBF4E7A5CF2F465F4329A84F0404CD7A92312E26A696E83B74122776
          F8E8535A1A8EFFB5012BE757C3DC3F5EA07ABD36303631E37F02FB828FEEDF8A
          D09BC412D0CE9E13D45457D505C08395BDE52B56C160AF99D0D454BE7EBD61B3
          FABCBF2F9A3A94C6C5C064F4F01C0B0D4D4DA5F7243C8BC7963FE7212B2B6773
          4B4B4B0BD5CCAD6068580EDA257298773FEC0EF44B6A434343CCC9E937A91F61
          53D79EAB4B4F4F47725222E2621E31799DA308894462F41D36116696CA5D1912
          D6D7DECDCBD1B2495904DD7E8B1FDC7AC2B07C45A5F764656562EBAAF978F194
          0B9E20CB5BA91BBCA00004B1E2E431D00B56B5ED54367E1CFD88CDC3602C9B55
          1DBD4686C3AA5E07F642FC86D4D3F868ECDBB6925B9C2B199BA057FFE168D4EC
          47E8EAC94A9E9D1B97C3B39719DAB95AE3C29548FCB9210C83464F956993C644
          C4F5BF2F61CF8E7578F6248EF5A18F1E3F8D6160D6E07D7E6A7212EE04FAE1D0
          E6BA98BE301AEFC4F5606EA5DAFF141319815D1B69A30EA1ACA876057F2300C6
          C453A61588BD7E5DA654F4E4D2BD904034B67E8EA17D4D30CB2706AF33EBC2B2
          A6B5C2B6346BB7B299FFE1FD3BB8B4ED8A11E3A7F37E6141572F232DF926962E
          E8885FE79D42BA462D38B754ECA2CFCACCC4C6D58B71F2C83EB656E961E0985F
          61545EF17E455CD40368A78560F10C4BECF47B860B37CAA1AE63FEF65E562D9C
          829464CE6764CE4A6C6100407AF37192FD5D7A0FCBD70DC1170F63646F6D346F
          6284DD879EE34CB001EC1C5BC83764B2740BFB8C9F3D8E419B8E3D3072FC2F4A
          FB4D4D49C18299DE1833BC19D66CBC0AEFE90B51AE827251B1798D0F8EF8ED42
          C5CA553164FC6C8513E81E531A9AD5798141BD4C10149282A59BDEA2894BF77C
          BDEBF103DB70FB3AE7A5A61BF2B52FAD2E004359D9D0B4657BB46CEB9EAF1B4E
          1DD884CD4BAD6052590737EEA460D1BA3768E6DA53AE5DF89D604E0332B3A881
          656B77AB5C2752DFB0BE664D409FAE46D87734095E3FFF0EA372E595DE939D9D
          8DC963FAE1D1830874EC3918760DE5F716AE5D3888B1FDF5E0EC5416AF5EA7A3
          E748D6B6D770E48702CE1DC1E53387E992DCEB7F160600135859D6C2AD1B9AB5
          EA2053F1242E1A152A19B3455247FAC26C113DB87335020E3B42CCACB1E4D40C
          B80FBA878E7D46CA75BC73DDEF888B7E805FE7AF8043E3E62A07F2E07E18EE04
          6CC6D63FAA60D4B467B0B0EB075B3B7B95F785DE0AC6CCC9C351A59A05278AF2
          D2897D1BB163450D54AE98F31ECDBBDD40FB9E4365342732C468C1AD6A2EBB8F
          1C1C7006678FEEA54BEAF8B77F1580F3C70FC2D6DE917DDE265F7E4B7EF512FF
          841CC5BEF552BDBF85FB0DB4711F82123A52A0C898F963EE786641EB63FB810B
          4CB351ED46BA74F6040C352F62CAA88A58B9390171294DE1D2AE8BCAFBC8BD3C
          C8C395AD37AF40EBD8D7562EAD15877DD720C0DF09B9D26980D77D98D4746306
          9BD4C07C9D988010B6B8BB76F1F86F0310FD300206A250CC9B6AF1E5B78113FE
          41C5EAAD64DA3D897B846DAB1770339FBE80FCD05F3B56A14B8BE7E8EC5616A7
          2FA5C0F7A821FA0EF1CED7BD3EF3A6E2EAA5D3E8376C32CCAA4B351C626C54E8
          71EC5963F3E5B7DF56C4E2C9DBDAA8615DF7CB6F49ACDD8DC04B70EBFC1F0720
          F4FA65B83824A1AFBBF197DF7E5F1D8BD8A45AA861235561C9923CC044557E16
          DF5C5AB1682A96FDAA8FDA56BA887D9C8621535E63D2CC3FF275EFE6B54B70E4
          802F6744D6B16FFCE5F7A87FC2514EFB1E664F32FFF29BDFF117F0BF5412F51B
          B7FEF25B767616DE24BD46D972B2EAF47F0E80BFCFECC7E461A5E1646FF0E5B7
          C3A712E0774E17F64DA4DBAAF76E5D83FFDE8DE8D4BD1F068F9475E15FBF7615
          A66616AC5F2988E42C9BE63518C1C76BA384B61864AF356C138EF97F6C64E24B
          BA78BF4A7CC916DCFBCC8E905D537CB7ACC2FE5D9BD0CEFD27D83B49EBEE045D
          449B266FD0BB8B54DC8446BCC5ECE589F8A18DEA38ACFF1C00B4A02D9B65863A
          B5A5DEC6339713B16ED77B38B7917EBECA00F0DDB20E76F51D50A77E83AF189B
          80ED6B67E3EC1E69F45D07CF5874EB3715C655AA7EF9ED7E582802AF5CC4E051
          E3F305C0B5737EE8D7590B9DDCA4EA6C64CC070C9B7C1F9DFA8CFAFE0088675A
          4D68F0792C9C66C97D05272FBE82CF9A383836EF848AC6D276CA00789BFA067A
          254BCACCEC7BB7431017BE0BAB7E937E1513E73D8751B5EEB077948A14750178
          95F00C81E7FD316E8809BAB6A980DB61A9983C371236F62D6056436A3C92A118
          197117760E4DFEDB0010D1C21678EE30EA59EB222C32034D5DDD51BAB4814C1B
          650028A233C70FC1C2281063064A67EAA6DD89B81B571FEDBAF4FA660088DEBF
          4D45C0193FD4B614E3EEFD0F68F4636794AF682CD3E6BBD182728966CCC3F0DB
          B0A9E7C4F4696DB97A65009C3D7914356ADB70EB402EEDDCB4049E9DDEC0A5B9
          54850C084AC5EA5DBAF01C35AD40001065646620E25610AAD7B643C952F2C15A
          DF1D00AA4819003B37AD415D7B07D8D94B837157FBFC829FDC25E8DEDEF0CB6F
          C7CFA560C5B67478FFB2B8C000A8A2FFF70024263CC7E6358BD0CDAD04C60EAA
          80BDFE4958B52D059E2326A3AAA954852C06A09000207AF7EE2DB6AFF741C687
          97106B1B62E0C8A92855BA8C4C9B62000A110022DA080909BE86FA0E6C6DD192
          5F5BFE1701A037F9E3BF02802A2A4200C89C5F90DFFED40180C20336356ED116
          ADDAF590A9280600B872D69F2BC8097B5995DFFED401801CE8574D4CABC373F4
          74998A620058BF1B7C728309C871743EBFFDA9030099A314B956B5CFD089B0B0
          927A0D0B02C0ADA04B387170C7BF0E40EB0EBDD0E807F5338D1401101FFD103B
          D6FDCEAE242F901379F729BFFDA9BB29EFC9CA56BD92A5241E03C78928CE86A8
          20009C3CB41321D72EA2937B5FC6ACC932758502C06606C0EE4D9C27943CA2EA
          525E009E3F89E54269DEBFE5C25C47B0B25E9DFEBE25306B2D3D88423DACED1C
          6059D31671519170746EFD4D009C3BB60F41574EA145EBF698304D5679280C00
          562F9B8B336CC2D8376A8176DD06A8DD2F0170F5EC3198D7AC8DE887618808BD
          CE6D7732DA8E9C98533592CEBF0D00BA8792D4E62127EA8CA31E3F8D434D1BC5
          1119C9AF1351D648F19EED8DBFCFE2B4FF1E1895AB808DBB4EC8EC070B0D0031
          6A44FF8E4878F1142DDCBA326DAEA3DAE38D8D7A00DFF58BBFE6330580CD6585
          E252D4CE212848702E394A28D093EC03BB2EBD863131D448AE116DF5F9EDDC80
          9E0315BB746F049EC7E9C339C98C9EC327A06B4F695691D0001C3BB4071B57FD
          CE5D9326471A9D223AE4CB16E9EE7D5142473ED0FB61C41D2E76891EC18A0F35
          674565A64F6100904B84FC44BE48834C06C02106400F1E00BE52DFB2C41A1A1A
          B410B767F295449C5000D05EF099E37E58BF72111970344BC58AD4E95C3AE8BB
          9101D00F3A0A00A0C0DC83BB480A630D2BA30BCA3C21002017E482D61D3C9856
          E1A63600A7FD773331748E2E29349D56450D936AE668E8E48CA78FE3D1BE6B6F
          D46FE8A4F6A022EEDD61DACE16985A98338BF92AE26329AC9F1311B4488EACE7
          E88C0EDD07AA0D00290CA438204704AB3C12E1DF0080A2B4D6F3C50BA902E0F0
          9E0D08BB4D118F20F4282F80BEEFFAB9F503868C877B6F4F85F7DE090946BD06
          8AC139E1BF8FCD78198394C2DE296687824EAFD4B4B1E7421515913200AE9E3F
          8A4BA749EA709E81FC45112821210020AE1F20A3868C9BBCA40A803D9B96218A
          69138C280735E4F3CFB49AD3011E9D4835251555114D1A35104BD66C55584722
          67F5329AA4A084C05FBEEA9BB6B7C2AB59D4C080113F2BBC571900678EEEC1F5
          80B374498929BE05659E1000B460E562AD3A0DD0BDBFBC485405C0E69573395D
          1AF231956495F90C18EA05F75E8A458532008E1DDCCDC584329A851C2D259768
          2BED0545780F9F384FE1BDCA00F0DFBB8959EFDCE93A14AA79B2A0CC1302803A
          ACDC35B5AC85FEC3A7C855AA0260D5A2294849E2825A49ABFAFA700DE2FA96AE
          1E3FC173D80485F72A0360F7B6B5F86B276713919C59FD551545FC7ED22F5546
          347E86E250166500ECDDB21C8FFEE1926148F65D2F28F3840080364D9F56A864
          8261DE73E52A5501E0337334659B507E18C5FF7D6DC450DA8F7FEBB65D3076D2
          6C85F72A0360FDCA856C1DF88B2E29A6646F9EEA374CE32A3D7DC106404190AE
          3200281780C2E8919390185550E6090100312EAD5469032EDC2F2F290380E247
          174C1F46C13EE443A99CA79A73FE39356D81E9731527BC2B0360C9FC9F117091
          3B8F881C3E67F3541307CDA7CC5B2313CF9A4BCA0058F3FBCF487ACDE5E49545
          01F4FF5C122A4FF81DB3604B4EA319958794014089181417CA281C39E9AE5F13
          1DE273DFDAB63E16AE50CC646500CC9A328269499C76454145B7F254538E5BC3
          31D3162BCC175306C092596391F6F13D6952B40B54E0EC79A100A0E4B46A53E7
          AF95CBC1520600C5E2AC5BCA452953607D5EDF30F9025E924DB07AEB21850F55
          0680F788DE888AE4DCC366904F9EA34FC36DF0B899A8AC20078C0F0049763616
          4C1B4A861DE5AEF1A7FAA84142014033ACFED8E93E2863602453A10C80F89887
          D8B196CE77E5CCF96E79AAC929945EC6C050B4C3EF82C2872A0360689FB67899
          F09C2E29C1EF5D9E6AF27DF4E93364222C6AD8C8DDCB070085D82C9BC39DAE43
          599CAA7397F24142014032B6F510AFD9A854A59A4C8532001E84DFC2FEEDDCE6
          D126E458C17929594343C3C0EFF44D85192DCA00F0E8D084898A0F94A5A7282D
          928CBDB15DFB0CE7E295F2121F00AF135F60AD0FB7194569AFCD84609C500090
          96E14169A0E656B23960CA00B8733D00C70E700C240F9922AB88CE8AB3DC73E4
          AAC2F4563E00323333E0EEC6F98FE8133056D02FD906B3DDBAF4854393567295
          7C00E486D233A2137F3B0BC138A100203D7B54B7BE23606DE7988719FC005CBB
          7412E74FECA74B32207C14F44B873F39AEF73D864A0AF61AF800487EFD0A9E3D
          B9907232B1EB28E8976C833F7F70E90C2A79890F80C8883BF82BC7134A0F1D24
          04E38402800C80196DBAF643C3C63FCA54280380984F202067C37F8B827EE950
          8CB64BD6EC82554D7959CD0700E5088F1BC225D75D468EA59E97C836D8EDD0B4
          35DC3AF791ABE40320F4E6DF38BA8F3BB3953CC093210009050017B2D2DCB52B
          9C5BCB6E72280380C40F8921E49C5AEEAFA05F723BF69BB56835EC1DE45DDD7C
          00848586E0176FEE8C8783C8F155E525B20D4EF3657CF2011074E534CE1DE38C
          3B5A08160AC138A10020C7D40EC7662E70ED249BCCA00C005A8069216644C9B8
          5715F44B169897F7F40568DE4AFE38643E00AE059CC7A2D913E9722372BCB579
          896C839B96356CD15B416A131F00174FFAE1EF8BC7E9925227374000120A002E
          8758D146B73200480525559411C9174547CDCC6065EED0D153D0A19BBCA8E003
          80F67C69EF9711E9B8D314F44B8EBF68B201C816C84B7C009CF0DB8E5BC124D5
          D4CB055646420140BA5C9065AD3AE83D48D671A60C0032C2C8186344A9EB090A
          FAA59B567BF41F8E3E9EF2E9AD7C00F8EDD9821D9BB8C592E4F41205FD92E3EF
          8D8161398CF979B15C251F0094CBF6F974143A42E592108C130A00724C451A57
          35C7A0B133642A9401406E0872472047575774C418773848BBCE1E183E4E7E22
          F301B06DFD1F38B48F8214384D45B1A1007C2AA1A3AB3D79EE6AB90A3E0076AE
          5F8CB828EE3FFEA0B4C97B42304E2800C8319554D6A802464F5D2453A10C8085
          D386D11E2D215086A75FCAE63BE3DCB20D26FDBA48AE920F80953EB370FE14B7
          A6F32DEE44E400AC386DE106991428223E00362C9B89972FE82822EECC24410E
          94120A00EA275D47574F73D21CD9B0483E00E8C023724583CEFD072C78FAA5F4
          F7907A0D1A61CE62F9E3A5F900F86DC6785C0FBC44977C8B3B113900AD27CC5C
          8E92FAB299307C00AC98EF8DB7A99C03942A949D4BA716E384A2448844E5A62F
          DC08B1587A08211F00B409439B31C839E8882FECC19495584BABDA58B66E8F5C
          251F003F7B7972670A2167FBF13E4FDFE400741E31713ECAE5C903E30360D1F4
          E16465531C10FFA9536A929000D08BD6EAD87310B4BFF288666565E3FA957368
          9CE7389994E4D7387F9CFBEF5868CFB60D4F9FF4A26F2B54AC8C8DBBE577FFF8
          00183DB02B9EC4D387C56D3FF21DA8470EC02E14A095F7F89A60A6C6D66FE40C
          EDAFF20EE800290A2060442733990AC5342101B808C556A72AA2D5D253497D1A
          136D25FE3A26FFBF9CF00130C0BD25DEA424D3EE1ACD840C9E7E29AE6724D427
          DA86543F4E86878404808C9BEE6AF6491B1BDB588954D28616BBCA074E5D97CB
          845104000561B9BB35A4194BD1B2064AFA255B80CC65E567E3C8139D49132414
          D3BE87A38B49DDB3DDB6EF1CCA1AC9EE5E2902E0FDBBB7E8D3993BE58AB61D55
          FF6736454CDF03009C68736DDF0DA54AC96AAB17CE9CC08FAEB22E8A0F1FDE73
          C7932167DBD131BF0F292AFA1E00D8869CD308D525FADFF17A7CC37DFF2A7D0F
          00D0DE2B6505AA23AB696D21AFD98BA21EBC2AFA1E00F89FA662008A988A0128
          622A06A088A9188022A662008A988A0128622A06A088A9188022A6FF0386BA1D
          1533531C2C0000000049454E44AE426082}
        ContentLeftMargin = 0
        ContentRightMargin = 0
        ContentTopMargin = 0
        ContentBottomMargin = 0
        Options.LeftMargin = 0
        Options.TopMargin = 0
        Options.RightMargin = 0
        Options.BottomMargin = 0
        Options.Stretch = True
        Options.StretchBorder = False
        Options.DrawOnlyBorder = False
        Options.DrawOnlyClient = False
        DrawStyle = idsTile
        VirtualWidth = 0
        VirtualHeight = 0
        TileOffsetX = 0
        TileOffsetY = 0
        Proportional = False
        Scaled = True
        PixelOffsetModeHighQuality = True
        InterpolationModeHighQuality = True
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D4948445200000060000000600806000000E29877
          3800000006624B474400FF00FF00FFA0BDA793000016914944415478DAED5D09
          781455B63E55D57B7AC9DED9C9BE07C80E0821406254960405C51947C7C10111
          4767DE03250B33993101449FEFF9946D74441DE7A9E0C82622088832209210D6
          908D84907DEB74A7F7B5EADD6ABE009D8D4ED24BC0F9A13E4255AAEFA9F3DF7B
          CF724FDDC6E0DF702A30670BF07387C309787569B2083350E1388947A0FF06A2
          830718C6058A7243E2989044720AA37A318A6A2148FC22915C56555C0CA4B315
          652FD89D80FCC5699140927370C0E660183597A4C00BC38064E0B896C1203002
          C3719CC03002C7592449194D143A4C26D2602231A3D1C4C50053631876CE04E4
          5726D2F4C9E6FDE7DB9CAD345BC22E04BCB228D18F09F832C0F1E51445C5B218
          8446E0C261B9B059048BC5043693409DFEEE4D9324091A9D01D43A3D48955AAD
          C1A06761409C3092D41B9BF6977DE36CE5D9023625A06871520C49E2EBD0C7FE
          92C5C4759E42172EDF858B21026CF2F97A8311247295091D8006CD198389FADD
          A6FDE5E79DA2391BC12604987B3CC6780B3072299FCBD179B90AB83C0ECB6E42
          A3390A3A7B1546A942836124595ACB09FDCBEEDDBB4D0ED39A0D312E029071C4
          F5E7535E469F52EAC262513E9E221E97CD7498F02A8D0E9ABBA43A13499D3319
          B40B361DBC2C7558E336C298092858942E06DCF4399ACBA7F97B8AD8AE7C9E53
          1EC06822A1A9A357A7D1EB9B299CCAD8F0E5B976A70832468C8980C2DCD419E8
          CEFDA8B7732789DD7804619B397EAC20290A1ADB257AAD5E5FCF6068D28A7757
          2A9D2AD028306A020AF2521E060AF67889F8B8B78790395122399A84EBAD129D
          D6683C0D26AA98A4C82EA5B1EFFA3B87AEE99C2DDB481895FE0A73D3160350BB
          7C3C84B887C80577B6F003411BE7C636894E67301114500CF4747A1C794B28B6
          3838516308AB09285C949A81E6D8A37E1E4286BB903F513AFEB040411D20BB80
          0CB51EE42A8D56AB373171A0761B29D83C915C57AB1499BF30391A45AB655E22
          01D7DB5DE0DC097F8CA083B9DE3E9541A6D4E234110C5CFF72F19E4B5DCE96EB
          AE04146766720C22D539A10B272C50ECC676B6C0E3854E6F84D61E991E45D82A
          CC645A5272A0E2B833E5B92B0105B929EF3219C4F288006F0E8E4FF899C74A50
          D02D53525D52A58902F8ED86BD651F3A4B9211359A9F9B9C8EFCFCD3617E9E38
          976DBFC8D65990ABB5D0DC21356294E98592FD15EF3943866109A0A35CC3F994
          F36E425E8C9FA7ABE3C25B0743AED2425397D44492B0C01909BE610928C84DFE
          058EE33BA382C42C029F701EA74D21E9534187442ED71B20EA8DAFCB3A1CD9F6
          700460457929951E226194D89D7F7F6B1F688B00E6485AADD51D2DDD5B3EDF91
          6D0F49C0BABCE40709C00F460789190471DFEBDF0CBDD104B5CD5D286633CDD9
          B8AFE2A4A3DA1D928082BCD45D6E7C6E9EBFD7FD3BF70F8536491F295568CE96
          EE393BDD516D0E2260CD83935DD83C9624D8C783EDC2BDE7DDFE51C16030414D
          53278513645CC99E8A2A47B4398880C2BC94C790EBF98FD8601FF6CFB16802D9
          029D4AAD7BBB747FF9AB8E686F3001B9C95B847CEE7381DEEEF79FE36F057AE5
          2A6897C8EB4BF796853BA2BD410414E5A55EF3F11086B90B5D9CAD8B5141A9D1
          43476F1F88781C7043B233C6E83CD0EBCEC818534050FE8E58DCB12060C58A64
          A66727AE09F5F72078F750E42B55A851AFED83A98921D0DA2A81EE6E39780A05
          E0E9EA02B815D5170371B5B15D4719A9274A0F94EFB3B7EC16D2D1353C1849D6
          A0F91FF07B20F8A217613A257290A934B0605112C44F0E349F6F6CE8864307CF
          835AA587002F57E0B046E7CC35B4F668547A7DF1C6BDE59BEDFD0C1604D0FE3F
          03F003B121BE13BEFB6BB47A68EB95039BC380C71E4F071F5F578BEB746EE1BB
          A395507EB601FC3C4420E273ADFEECB61E1929936B3E2AD957F61B7B3F87E508
          C84D59C264E01F4707F9582FAD83412BB64BAA301BCBA949C190F56002B0588C
          617FBFAAB215F6ED29076F3701785869D73A7B15D023577E53BAA7EC617B3F8F
          05012800FB358B416C890CF4764E89C308A057B8E89C4DAF5205AE6E2E307F61
          22F807B85B756F6D753BFC73D74F80024BAB46428F4C095D32E58F257BCECEB0
          F7735912B028F5292613DF1115249E300418518FEFA5158F0CAD0B9F0DB332A2
          21614A108C766DE2624523B20B1720D4CF0BD8238C181ABD72351A057D975FDB
          5336D9DECF378080E4F90C06B13B7A9273A720BAB72B345A73AA58810E577717
          C8981D0D31F10163F26AFAF1D5BE0AB856D301C1BE1E2386981234023A9D3102
          F217A53C4010D8F1D860C71B61BDC1042AAD16D45A8379A184C96440DCE40088
          4F08047F7F37AB8A79EFDA86CE08EFFCCF61F010F0C04D30FC20A76D80A44FB1
          B7646FF9627B3FF700239C1E8B81E94A5C889F2D9E1728F4873491C8705266E3
          49F76CF4D73CAD1891C2E93212033AD43A03188D267075E54170A8374445FB42
          689878D4D38C35283B5B0FDF1FAB82F000AF6147417B8F8C92C855DB36EC3BB7
          DA1E4ABF131632AC7D24D587C9A4DA2383C430968A665A912AB50E7446F42F72
          13E9E4D69DA0BD150C2995CB658140802256644C3D3CF920F671458708F87C8E
          BD9F17F47A23BCFDE621F0F510828037747B8D1D12AD52A5DBB4617FF99FED2D
          CFC04E8015E4A5A8427C3CB8D66642512C44D7DD8054A50635527E40A0078484
          798397B7083C9172B93C96793A6132274E35CBD707CEC3F5BA4E14A4B90D79BD
          BAA943633252CF96EE2BFBDCDEB20C4EC62D4EBBE8EB2E986C4D2E488B7A139D
          7FA1A79159B363200145A23C97899FC2AEABED30BBA5C8D918A4008A04A86C6C
          A328928ADD78E05CB5BD65198280D40FDDF9BCA77D3D45234EC00A8D0E5ABA64
          E6F07F5E769C795AB957401BE3375F3F0061FEDEC019E092D21176437B8FBE96
          19C273C43B0783945C9097FC9F5C16AB24CCDF6BD809999EEB6F7448202B2701
          5252439DA2C4F1E2CDD7BF026F9100442E968F29E9432EA8545159B2A72CDE11
          720C2620372907C788AF62427C19430D01DA93A96FEF81D4B430983D37C639DA
          B301B6BC7B04D824015E6E7C8BF32D5D52439F42F3B7D2FDE5AB1C21C7201DD3
          AF91123A4C1A11E88D0D153176F6CA016311B07CE51CBBB8898EC27B3B8E01A9
          25C1C75D6871BEEA066D80C9DF200FE83347C831A406D7E7A5D6883D8491030D
          31EDCBD73577C19265D3202C5CEC2CDDD9041FECFC0E743203F8798A6E9D3318
          CD6BC20004E5E7A8376D86AB8AD82AE2717E1B2876B318027DC8DD9469B4F0BB
          DFE7D82432752676EE3C011AA9CE9CA0EB874CA1A153D1CD257BCB821C25C790
          5A2CCC4D7D0227E0A39849BE163E654B8F0C22637C21FB21BBE7A8EC8EA10840
          5E9DB14FA5FEB8746FF97247C931F4087834D9174C586B4480A51DA869EA8045
          8FA642748C9F337567130C268082AB8D9D3A34CD3EB5715FF9178E9263D87904
          C50355625741B4A7EB4D2F818E78AF5E6F8315ABB2C0D35BE05CEDD9000309A0
          5DEB86B62E9205268FE2BD17648E9263780272534AB96CD69A507F4F73844527
          D0AA1B3B60CDAB0B80CDB9F70BE6061240AFB2F5F429CB90FF9FE648398625E0
          2F4F4D7B5CA7307E86C2758CAE0FA5DF2CA96BE98275EB73E17EA8961E48C0B5
          962E13C5A43EA6221F7EAEB8B8D861BBB30C2260D7D2A5843442FA8611C35E6E
          AF92E17EEEAEE02AE08246A787FAD61E28FC93DD53E40EC19D04D0EE672D723F
          7D22854616875163346079AB371DBEE608390611B06D7DD64626CEF88FA4F810
          D6C5B266E86EEB33670DEF6702E8057EA55E078B97A5C2959A26638F54D1A123
          88B8978A0FC9ED2D870501FF5D9CE9CA3130BB52A78431DD457C6869EA85A387
          AE40549018B47AC37D4B4073572F84448921253D04391B14FC70F6AA56AB33AC
          5D557AF45D7BCB6141C09675F31E62B2187BB31E4830FBFF1449C1273B4F838F
          9BC05CEA773F1240A722E8E837EFF16470F7B8E9F1D535B643634BD7C195AF7D
          BBC0DE725810B0357FDE333C1E676B465ACCAD05D35327EAA0A3590AEE42DE7D
          49000F79747D3A1D2C7B6ADAAD6B4DE8396B1BDB2FACF8CBE1447BCB3190803C
          169BF9E9DCE9F1B772B41DC8061CDA7F0182C4EE70BD5D72DF1140E7B742A3BD
          D1F4733BAD5E7FA3131A9ABBBE5BF9DAE1B9F696C382806DEBB21281C0CAB366
          26E0FDAE261D807DFAD169E03299E6C2286B08A06B36F79DEA82B2EA9BF14C5A
          8C2B2C9AE13DAE9292E150DDA4847DA73BA1BD570761BE3C5836C717BC5CEFBE
          2A4713A0946840A1D642DED214F3DA743F2E5737195A3AA51FACDEF0EDF3F655
          FF0002CC2E68A4AC2F2921D4C5C3ED76B47BE6D435A8A96C37BB6B7723803662
          451FD4C2E94ACBBD936626B8C36BCF46DA54F85357A4F0A70F6BCD5517FDE073
          09D8FAFB7808F41AB9B48926A0A345063C1E1B963D3DCDE2DA7767AE6890D3F1
          ECEAD2638E5F13DE56F4E06E3F6FD7DC84A8A05BE1AEA447097B76959B7FBE1B
          01B4528A3EA819F25AE9F2289811E706B6004DF4D23F5780446E18746D7AAC1B
          6C782E6AC4FB6902DA9AA490983C099291F7D38F3E850A7E3C5F87027FCAE7C5
          8DC72436D3F430188280AC4C1CB02399D3E399CC3B4A53BEF8F42CC8A4EABB12
          F0D7AF9AE0D3E343EF0AF3E45C3F58B1C03699DEB65E2DFCB2E4C290D7043C06
          EC2F4919F1FE7E0296FE220D44AEB78BB42E5E6DD47748FABE5C55F2ED9336D2
          F1881844001ACCD8F6A207CB02C46E53E222036FA5422F54DC80F233D7EF4AC0
          67DFB5C18E034D435E5BB530081E9F639B4CAA4A6B828585E5E6913010015E1C
          F87BFED411EFA70990CB3416DE8F5CA181D3153526A485A417361CBB644B450F
          8721ADE2F6C2EC146448CFA44F0D27DC44FC3B85836796CC19F1035BBAB5F0DC
          9B974067B04CA7709838BCBF7632F87BDAAEF86ADD7B35F053D5E07DFA9EC909
          805FA36324FC78AE06345A1DA04E66FE3FBD47E98F15751A855AF3F7174A8FAE
          B483AE87C4B06EC9B682ECF504032F9C9114C5E67159561340E3C4855E787357
          BDB997D2A00DE3DA27C22063B275E5E4D6829EFF8B3FAC812B8DB7B788CB4EF6
          84B5CBC280498CEC71DD49003D882E56DF3074F5C81A4D0C43D2EAE2130EDB73
          6E5829E9A9684751F6C7C81D7D7C6A5C308B4930AC2680865C6D84CA4685F9E7
          F86081795EB6076897B7A6997EB311B9A17E3C9824B6AEB0BB9F8088605FB854
          7D43DFDBA7EA258DE4032F6C3ADA60174187C188DDC44C4261F67A0AA8F5021E
          8F94ABD42C6B0998E8A00968ED94501A8DDE88C2930AA3CE90B7FA8D130EDDA8
          83865591D18E57B3824C04FE1AEA6F4FDF3704A0D15CDBD0568F53D84BCF6FFC
          F66B67C9617568FACEFAAC04C204977EF568E63D5D0FD48F936555A6FAC6CE2D
          AB377EFBB233E5B05A935BD76585020EF54F2E9A35E24B71F70A8E9FBAAC6FEA
          E8796B75E9D17C67CA6135015B8A33F9989EA1589C930E42C18479850C3654AB
          90AD1AFD8854AA75A48EC27A0C0C46AFB36447D1B67E54926F2FCA56CC9D91C0
          F7F7F17096CC83B0AAA20F124242C1856DFF973B6C09954E0B97AF378CAEEBFC
          F58F39E7A6C60427C54539AC70ECAEA00978246D3AB80B85E3FF3007A2572E87
          AFCFFE383A02B61664FDEFA400AFE733A7C54F98BA949F15015BF2E72D61B398
          FF58B668166BA29486FEAC0840F1808824B0DE87E724E25E1EA2D1DC6A37D892
          003AB1D7D2D3052D5DDD660529B51AF3793E876BFEFC006F6F08F4F4B6C93E56
          632280C6F6F5D9474302C4B367A6C64C085FD45604744A7BA1BCB606B43A3DA4
          04C743AC6F3878F06F166D499432A86CAF83738D95C065B120393A0AC4AEE3CB
          6B8D99806D05F3966138FEF72716CE64B098CEE7C016045437DF80F375B5F050
          7C062C9C32072979688F4AA3D7C2FE0BC7E170E549488A8886A8C0C031B73966
          0276AC486682B77B73F2E470714C78C0686FB739C64B40437B2B9CADAE8217E7
          3E058941B156DD5371E32A6CF9EE1398161307C13EBE636A77CC04D040DED05A
          0E87F9DAA30F4D67336DF4155563C5780850A8D570F0CC69F8CDACC7E081F0E4
          51DD7BB2AE1C3EFCD71E58307D06F0B9A3DF5A635C04BCF587E95C9E8BA03E2E
          22509C9410EAD44ADDF11070FACA25706108604DCED8DEC7D8FCCDDF40432A61
          465CC2A8EF1D170134B616643F855CD10F731F4C23444E4C4D0C24805E1FB8DC
          500F4D5D9DA0D5EBC1DBCD0D12C32341C8B394516F30C017274F40D1FC5510E6
          3DB6C0B2AEF3066CF87A3B2CC9C80416C3323492AB555081EC4AB74C061C64B8
          2789C5101F1276AB3467DC04D0D85E947DD8C35590F9506622CB597BCC0D24E0
          54E565502835B0243907445C017C5F5306E79BAFC2FCF4E9C0E3DC36AE8D1DED
          70B9FE3ABCFD8B42A484B1A981DE8CE4A5FF2B8129E16148C13EB7CEAB755AF8
          0A4D6D498171303B2A15646A057C71EE1BA03B6AFF68B109013B0A727C299CBA
          1C1EEC239A9E14E51497E84E02644A057AA833F0FA636BC05B783B5FF5FAA1F7
          816420F73232FAD6B94B6894507A7CCCD34F3F367FF33E30D814248486DD3A57
          5653050C920DAF3CF4DCAD739DF21E58F7CFFF82F94856119F6F1B02686CCDCF
          9E8D46D5B1B4C408223ACCDFA1CAA77127018D9D1D5073A309DE5CBACEE2770E
          5DFE01BEBFF613CC4BBA6D68692579723C6145C613E36AFFAF3F7C0E3DDA1E48
          8DBAFDD2FAB18A73303B3C1D1E4EC8B0F8DD35BB5E87A8E0400846A3C56604D0
          D8969FFD2BC06167467A2C111CE06D77A5DF893B09E8E993991FFEED278BC085
          7DDB33D9F1FD67D0A5E936BB8DFDB8D8700D082313FE90FDECB8DA7FEBC80740
          318D3039F4F646BB67AE568237CF0B56CE5E76EB9C4AA786973E2D81ACE414F0
          14BADA96001A5B0BB356A0B9746BCAE4703C3622C06199A23B09A05309472BCA
          C18DE30ACFCC586CB6013FD496C1EEF24390939A0EEE82DB9ED2B5B656B8DEDA
          0E9B97BC32AEF6D7EE7E1DC2027C21CCEF764C2491F7C191F2B3F078EA23302B
          2205641A397C746A2FC8747D909D94624E65D89C001ADBF2E72D4051F2173111
          81CCE484307BD4E28E48000D8D4E073F555F85D6EE6EB39174E1F0202D2A1AFC
          BDBC2CEEA30DE59E933FC0A6256BC047E439A6B6DB65DD908FE6F5C5B3328037
          603DA2A5BB0B4D73D5A0D26ACC469ECE23A5A1698ACBBE59386C1702686C5937
          2F956010873DDD04BC8C697176DF027FB838C06034820EB99A230549C7D06889
          F00A85E533978CA9EDF74FEE867A4923CC4D1C3E88536A34C0663281C9B0F451
          EC46008DF70AE6894D38F1311A017312E3421831E10198BDDCD4F10462B4CD38
          72EE2CE43FF23C448A8347756F4DC775D8746807E4A4A4838770F49961BB12D0
          8F2D85F39E60628C77986C42383536841D36C9C7A6AFB876F7CAE18F8DD4B872
          4117AED5A198A0030AE63F0FFEAED66D40D22AED84D283DB21CCDFD7C2F88E06
          0E2180C68EE2853CA35EB392C0B122A47C7E44B01F634A6C303E9ECA8AEB4D9D
          70A9A651DBD7A761FD189A888F2B1B4A21AFA5BA125A3ABBE1D9998F427AD894
          610333DAA69CA9BF003BFFF52504798B213D2676CC6B030E23A01FBB8A97B27A
          0CB25C34008A5D789CB09C8CC4D1DB07E4E5945F6E20ABEA9A0D14856D341AA9
          F7CA22135B6DB11E50D3740305670D66839C11990A31BE61E0C1BFF92E834429
          85ABEDD7CC1E55070AA8A6A05E1F1538BE75718713D00F7A445026FD972C2691
          3923399A1DE86B5D8505FDF5E53F55D41ADB3A252A8309CB7971E3919FE8F34F
          BFFF0A65AB15319D410FD5CD4DD0D6DD0312459FC53577810802BC3C213220C8
          9CDB192F9C46008DE2E24C86D8C828C200CFF77217426C6420CB4FEC068C21BE
          99BB57AAA05F9883AA6BCD460C234E01A55FBEB2E4787DFF755B1270274C2612
          054F379724E9A0CED65FE7E55402FAF16EE1DC494C8CF8139A48972049B8223E
          4F8FA627068345102AA5562F57AA31ADDEC86260D8193D456E7EB1F4E8A06FB4
          B01701F6C68420A01F3747042B8322A918C0483F8AC4F968C26FC631AA0558C4
          F155C54786FDDEDF7F13E064D004CC8C9F0C42DEBDF5A543F47AC1BFAE5CBA3F
          0870B60CE3C1FF03C6A5D352DCBAD5DE0000000049454E44AE426082}
        ContentLeftMargin = 0
        ContentRightMargin = 0
        ContentTopMargin = 0
        ContentBottomMargin = 0
        Options.LeftMargin = 0
        Options.TopMargin = 0
        Options.RightMargin = 0
        Options.BottomMargin = 0
        Options.Stretch = True
        Options.StretchBorder = False
        Options.DrawOnlyBorder = False
        Options.DrawOnlyClient = False
        DrawStyle = idsTile
        VirtualWidth = 0
        VirtualHeight = 0
        TileOffsetX = 0
        TileOffsetY = 0
        Proportional = False
        Scaled = True
        PixelOffsetModeHighQuality = True
        InterpolationModeHighQuality = True
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D4948445200000060000000600806000000E29877
          3800000006624B474400FF00FF00FFA0BDA793000009BB4944415478DAED9D6D
          6C53D719C79F7BAEAFDF9DC4B11DC26B20615044C93655D3D469035121A1A962
          1F3A950F2B7BA9B6116D45AC54436BD76E09EBA8B696AEA555D53124AA019AB6
          B6DB348DA9D5C48A0A4593FA655B080A1402091042EC38895FAFEDFB7276CE0D
          3676E2E4DA8E0FB7C0F94B37BE2FE73EE739FFDFF53D8F7D1345002E4B25589D
          C0BD2E0EC0627100168B03B0581C80C5E2002C160760B138008BC501582C0EC0
          62710016EB5303A0F3E933FB744DDF3979FD8684B1CE66B00881777150136DE8
          D0D9BD9FDF6EF5988D9CAC4EE0C117AF3C91CB649F5765C54FB727AE5F074D51
          98F4254A36F02E5D60AC4B2E7BCCE172ECF9F8A915AF58397ECB006C3A1CFFB2
          8670777230B24949E500DFDC1F0B87419165267DDADC4EF0B4068C75DA9FC36D
          87E665A1D348C03DC71F0B1EB7C287DB0E206FBC806113DD96C33190C7920500
          722201A9F171267DBB827EB037B88D75DA9F37E0055FA8317FD81210B70DC0C6
          C3890D8280F790A16F28DE9F8BCB90BC365E00A06B2A4C0C0F03C6357432D740
          C9487DCB16822022639B866F5E1C0087CF59DA10E30FB128769FF886FFC3DBE1
          0B73003D3D189DEA48BC49067C73D29BE6AC8E61E2C20D627C7EE2C5908C8E43
          2699AC6B1E769F075C217FA17F4114A16565AB01A6BCF06F3F782CF043D2A0CE
          9742A9D802C058E83C183D1174D98BAEFA99E3498FC6418E260AC7755D83896B
          2350B76A0809D0B098982D8985FE3D011FB9FD34CC795A38AD7ED4F7FD96F52C
          213005D0BC6FF8C53501CF6E870D15ED9D39165D21860F8C1AEF06E338C92A97
          96211E1E2BDBBEDA217A16048C09786AB49894A30204DB5B412CC96BA632AA0E
          E7C7B3FBA34F2D79929547CC00045F1EEE21D67577867CD3DEE6E50DA513719A
          4CC87900C6BE78924CC813503B04015C814632F17A8B468BC1D7D2089E669F69
          5C4C26A2DE70967E7EF8F9D8AE85CFB3F0890980D0AB3776625DDF4F07F0D916
          DFF461CD365A880D4640957385AC68CB9C9C8154648CDC96AABB1DD1ABDC1D0A
          8044AEFC428F02ADFF255A7A928B420073B018FE379A35DA2251D81DFED1C27D
          F5F6AAEE005A5F1BF90EF1EA90AE63A12A0044BAAA41FC721834F25ADC52D734
          906371C89212D5AC3AA2BE4A5E32E1FA1B8C89B6388E48E680E6B690F16A964B
          FE780100A9514524748DEC6C3D584FBFEA0A60E1EBA35F27A6FF89982F9205AA
          0540A5E754880D450C18D35B6AA444A5738392CE18E5AAAEAAC67E64B3914524
          57B70B248FB3607C718F88DCEF03D47CBBADE25CA601A08B86106CBBBEA3F58F
          9F3A008BDE886C01ACFF99182F51F36B0560405054480E8F93DB4FAECC99A5E7
          E31923C0337AB03925685ADC3CCDFC4A729901802E0AF9F9C8F08ED0B17AF856
          17006D6F8E3DA4EAFA3F88E1CEBCF9F30160B421E7A6C8C42C8FC70991E2332B
          07408DF3047DA4E4F442F982BF2600745B26011F1E7E227462BEDECD1BC0F203
          635FD4747C9C18EEA586D70DC04DD15B911C4D42663265C4AC0400ADFBDD4D1E
          70935A1FCD596AD60C80BEA605246EBED2D5FC916500561C1CEF24D5C909624C
          73DEF07A0328EC21B194541672C92CA899ACF1C9D998270430EEFFD468C96107
          BBD761543E02AAAD9F2A00D02506A2B871E87BFEFFDC7600ED6FC53E8355ED24
          01D05A6C382B0055C7A8E8C3EBBC0190054548C9BD7EB02B78AE161F6B02D071
          28BA14EBE81431B88DD6E7F73800BA7DCD2EC257CE3DEE1FACD6CBAA01741C4E
          B480AA9CC4BAB07ACA700E606A1B2E4A8A7D7D7F9767A41A3FAB02B0FCAD8926
          1B16C8CC8F3F473F987200250068A7676C22DA78EEDB0DD1BA03587934DA2028
          B6E3C4D42F4C7D63C901940140D73F467A6ED3F9EF86121524501980256F6397
          27157B4F076103C653A52007302B00FA91E3B413C99B7BBFD59A9A3780070E60
          29E54AFC9518FA30C653A67300A600C882FEA9C5BC5FBBB853C8D60C60E56B17
          1C922FF8071D898F503339806A0090575DFBFB8A44D3A3EFCD016176003D18AD
          B35FEA070DAFCA2D0D19A972005500205BD2B531FA306DE08CD2711FF4086A55
          00D6FDEAF269219EFE125DD79ABCA0B4347100550090C213204E4E4D017A83FB
          64DFD32B3694EB6156009DCFF553670BC755024069F472001500B04D26408AC4
          6E854108F7FE724DD92FA56607B0E793146415F7AD9602E416054175D9398039
          0088991C3886C7A0F8C9117648C933DDAB7CE57A981DC06F86B6E068FA6F02BE
          F52EA0BD64C87CA04B2207500680A068E0BC1A21936FD1E35372F543C0BDB577
          57DBBB5501A05AF7F2959FC178E217C563C1928D40088206880328022092B60E
          32E9A25CE9EFB5EA7ECFDEBEDDCB9F9B354DB314EF7FE1D2FB28296F2EDEA7B9
          9D20B7FA8D77190780C8A5288073340A62BAB4DAD47D9E637DCF2CDF32679A15
          64096BF75E3C2FA6B2AB8AF7298D1EC8343770000480331A03299E2E35DFE31C
          E87BB663A5699A15017823EC45D1D85521936B2ADE9F0D3642C6E39C0BC01001
          D0766703C80D10BF3B6603E04865C13936596ABEC31ECFE0E6A5177B02F1BA00
          A0BAFF95C135C284DC2BA8FAAD27DB249134819075DA6702C0F81D25A3743DB0
          C43FED579DEF2C00FF1D171A919A7D8998BD7D3A0007A978DC9158491C2C892A
          6E6AE8ECDBB5A8BF125FABFA3A7AED4B435BD0648A5446B79EC4D2B5648B1F72
          365B1E408CDC9676849F5C74941E7FE8487CDA28EF2C001F6C0B1A630DBD3AF2
          A888D00172C7F1530092AA812F32412A9EA218A4E2D19A1C5BCFFEB8FD5DA850
          553F90B9EFD743DD523CD9533C3E5D44100BF94143C2BF3505B68DEE5A70297F
          EC6E0140B568FFF565208A47441DAF6F8C4C02D2B492D69ACFB3F7EC33B3573C
          65D3ACA6715E6B496524165746E48A907DAEBF5C685FBE15B60A2559DD4D000C
          F560B4DA71F9F78EA4BCADF874CDEB3A76F6A7ED5BA04AD5FC507EEDDE81D348
          CE3DA8DB84B4E2B2FFE0939FB41F29D7EEAE037053AB5F18785CCAA9AF0B8AEE
          56DD8E53FDCFB66F801AC4FC0F34EE5600F5120760729C03A8E9387000797100
          2669B20C4EC50198A4C932381507609226CBE0541C80499A2C835371002669B2
          0C4EC50198A4C932381507609226CBE0541C80499A2C835371002669B20C4EC5
          0198A4C932381507609226CBE0541C80499A2C835371002669B20C4EC50198A4
          C932381507609226CBE0541C80499A2C835371002669B20C4EC50198A4C93238
          1507609226CBE0541C80499A2C835371002669B20C4EC50198A4C93238150760
          9226CBE0541C80499A2C835371002669B20C4EC50198A4C932381507609226CB
          E0541C80499A2C835371002669B20C4E45005C252F4B2A1F7465C6988F6CFEFD
          60C0574F6C0B2E63E90F7B0047635F052CFC0E0A10EE0C00E4C8558461FBBFBE
          19789FA53F96FF1BAB7B5D1C80C5E2002C160760B138008BC501582C0EC06271
          00168B03B0581C80C5E2002C160760B1FE0F03F3A7CA55CDDE6F000000004945
          4E44AE426082}
        ContentLeftMargin = 0
        ContentRightMargin = 0
        ContentTopMargin = 0
        ContentBottomMargin = 0
        Options.LeftMargin = 0
        Options.TopMargin = 0
        Options.RightMargin = 0
        Options.BottomMargin = 0
        Options.Stretch = True
        Options.StretchBorder = False
        Options.DrawOnlyBorder = False
        Options.DrawOnlyClient = False
        DrawStyle = idsTile
        VirtualWidth = 0
        VirtualHeight = 0
        TileOffsetX = 0
        TileOffsetY = 0
        Proportional = False
        Scaled = True
        PixelOffsetModeHighQuality = True
        InterpolationModeHighQuality = True
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D4948445200000060000000600806000000E29877
          3800000006624B474400FF00FF00FFA0BDA7930000099E4944415478DAED9C7F
          6C13D71DC0BFFE71E71F71ECC43F12DB090E8104E250C66F0A4C0B83320465AB
          5489A1B50B1368EB58A7D256EBBA49DDD6B2894DDD463B89755A11935A06E58F
          B57F6C5AB5410B646562B01510494AEC9064F9E5C4B193F8F7F9E7F9BC3B332A
          C789E35F77BE347E9F288A7C7E7EDFBBEF27BE7BEFDD7B270004AF08F8DE8172
          0709E019248067169480B3A72E18485C123A7C7887878BFACF9DFC9B522CD4E8
          BFF6CCC3F7F83ED607F02EA0E35887785C453D1F24824F5371EF3210E0A45CAE
          7EE5E0F777FD82CD38674F767C3D1A74BE150C443021C8C212B9BC17C3F00F25
          32E5693E85F026E09D1317DB4264FCE5A0D7BF3D4E9162B5B606F63EE6859111
          0AAE7E10054C82C72AAB54171592CA17F71FDD662D34CE9913978F8608FF2B84
          DFAF39F00D0104433AE8BC55097EAF07FC1E2F90F11848A5F2A84C2EBF279148
          3B8422F11F9E7CBEADAB547928A9803FBD7EB98E88933F0F0588C7E95FA542A5
          049DDE00553A2D8884227868F51D703830E8B9AB069FCB0D018F0F62D12848E5
          32824E9205C32417A592C4F903CFEEEAC914E3BDDF76B48423F127C2B1C8BE90
          CFBF3646922245B50A541A356CFFE23884680123C38DC9B209FA271408DE9791
          22A45AADBDFECD971EDDB6A804BCFDEB8BEFBA9C93FBC5180EDADA1AD0EAF520
          91CA66947920A0B7B7E6D36D915018827E7FF26F38188238498248244E88712C
          4A4B8B0A858258824A602415C7C9680C8FC7490186E320AD90838CFEADA0250B
          85C2645D5BB70ECE10900E2364D06A0532465A9EFAF1975B179580D3C7DFEF11
          8A45E6E566331D74EEB0730948CB10C462518845A240D222282A0E090A4028A0
          6B140901C330104BF0E4DFB9C8268061A8EF1E44C391C52900974ACC4B9B5764
          2C93554091200148C02C90803490000E056CDB360841A2866EEA2ECD58A6AC05
          985B3F01B71BA0A7A796937DF842DB00B85DF5303E569FB14C590B686EEE8510
          DDC2E9EAD473B20F3B77F6D1C95F064E67E6FACB5AC0D2C601C0712FDCB8B184
          937DD8B7EF2E582DABE96F99266399B216A0D339C164EA870F2F35B31E5F2225
          61EF9E1EB87EBD8DEE5D6319CB95B5001C8FC296ADFF84BF5F68854858CC6AFC
          BA3A0FAC6A9D849B37E71F61286B010C1B37DE80BE7E350C0E56B31A7FD3A611
          100814D0DFB772DE72652FC068B4414DAD0DAE5C59CE5A6CA93406BBBFD40BB7
          6F6F8660B062DEB2652F40248CC3C35BAE4167B711464754ACC4DEB0610C2A2A
          12F049F7BAAC65CB5E0083AEC6014D4D56F847473310412C87DA33535FEF8575
          EB6C70FBD666BA172CCF5A1E09F83F2B565A40A974C3B56B0D40107841310D06
          5FF2DCDF77AF85EE611B72FA0C12F060C70414FD2DE803ADCE01168B91BE28AB
          2091C82D168EC7C16C9E848686A9E4457762C298F37E220169188C63B0B46100
          A274DB7DD4A6069B4D0181C0EC6F84409000B5264C9F727CB0A47E1A2211299D
          FC15E0F5E6D79A5ACC027A719974C5D2A6FC3B5922519C6EC78F8256EB048522
          00645C449FCFA574874A0C0221053846824C1E4A1E8ED75B054EFA74E370D602
          24F23FBCA1FE3E8886C2F768012BF3FE7001944CC0A99FFD65AC52A932D63536
          16550F86C768093E3AE931106351FAB42484580C83680407BF5F0914252AAA7E
          DBE020047C7EDB9197BFC2CD78481A2513F0FB9FFED955ADD5561BEA4B725C05
          631F1D01CFD494EB3BC71ED7145F5B764A26E08D9FBC17D4D72F91E9F4DC8C74
          B2C5E4841D26466DA1678EEFCFDE66658192086066A439465D5EF39A355051A9
          2C45C88209F87C60EDEA84DA256A55FBB38FFAB88E571201674F5CFE96D3613F
          BD61DBE7E98BA6B014210B26415170EB5FD7A0D65077A8FD7B3BCE701DAF2402
          DEFAE585F723E1F03EF3DAEC43010B819E3BB7412A93FEF5F00FF63EC675AC92
          0878E347EF86F5F5F5129D31F70E119F38C6C7C131668B1C3DFE5529D7B13817
          70EE37978F3AC7ED27D76ED90A2231BB63FC5C419231E8BC71036AEA0D4FB73F
          F7C89B5CC6E2540033F3D94AB95D95EAEACA258DCBB80CC53AA30303E0F1B888
          55424DD58E633B48AEE2702AE0ED5F5D38EF757B9E58BD7133FDDF5F5C07A9D4
          C4E371E8FAF8DF50A5D69C3BF4E2EE835CC5E14CC099D7AF7C77DA6EFFDDF2D6
          56FA20D45C85E1148F6B1A067A2CF4A948CFD9A9881301E75EBBD43EE570FE51
          DF60122CF49E6F36C6E99EB1C3364A690DFA83EDCFED3CCF76FDAC0B38F3DA07
          AF4E4F387F683499C0606A284D9638667C6498EE1D8F26AA6B75AF1E7A61F74B
          6CD6CD9A0066F1852714BC44787C2DA6E626D0D62EEC21877C999C9880D1FE7E
          A8AC52F549B4E2ED078FECB1B3516FD1026E7EFB26D6DD34FDA6D7ED3A24C125
          C2C61633C8E42519462939218280FFF65A818C44E34A8DE61D39617CEAC0B155
          D162EA2C5A0073BE9F181F3FDBD0D40C350603736784EF3C714B22014EBB1D86
          FBFB406F341E6C7F61D7B962AA634DC0A6B6ED7CA7A6A47C7CF52324804F1695
          0095CA03723991B59CD757054162FE8955F20A0254CAECEBBC99095ACCEDCB42
          593402D49A29686DED06A190CA5A9624C5D0D5B51E02FECA39DFAFA8F0C3E7D6
          DC010CCB7E5D4C5002B05856C3D494AEA0FD5E1402B4DA49309BBB4120CC71BE
          096496904FF21F904808C06A5D0593CEFC17842C0A01EBD7FF071495FEBC3F67
          B7D725275BA5D2BCC20A06C358DE7531229939A3F982042001F7615B407A6225
          9208981A06676CCB5500B31A321291CC2A970A129026E0EA478FCC78CDBCCF94
          4B2557014C62D3AF156DDB2FCF785DD6025A5AEECE6A7EA627235701CCB744AB
          999CB1CDDABB6A56B31509C8935C05E40A1290274840163E0B0298FE86C934F8
          697DA90C0D2D9BF7D105994002F210C05C9CD35B3F0CC3C3CB6078A8B0C9C265
          2180E9D5D6D44CC0F2A6BE19DBD910C0F47E2D96870ADEB74529805907A0547A
          A1AADA05D555AEE45A0010CC1EA66043001A0B82FBFFE14AA50F942ACFBC094F
          87AD53101A0BCA7128824914115024878F7DBE2A70BBD5C941B94240ADA01432
          09789070B7470D3E3AE94CE20B4D783A48400A7309E8EE5A9B4C7ABCC8A54699
          400252C8652C886D908014D814209584418CC7666C0B12F2598BF6908014D814
          80464391808258700232DD704F656A7AF6A327E712C00C4553D4CC356973C543
          02F204DD924C61A108601EF867320DE55D97DBA581EEEEB5797F0E094813C04C
          6D61A6B83043CFB942100AE8EA5C07B158FE8FC34102E6180B629E98C2DCE664
          1EF8948D6292CFB028047C964102780609E01924806790009E4102780609E019
          24806790009E4102780609E01924806790009E4102780609E01924806790009E
          41027866C109E03B217CB020049C3FD5A1A502F13D7C27830F840AD185278FEC
          982AA68E45FE78AB850F12C0334800CF20013CF33FA0121BCA9158698D000000
          0049454E44AE426082}
        ContentLeftMargin = 0
        ContentRightMargin = 0
        ContentTopMargin = 0
        ContentBottomMargin = 0
        Options.LeftMargin = 0
        Options.TopMargin = 0
        Options.RightMargin = 0
        Options.BottomMargin = 0
        Options.Stretch = True
        Options.StretchBorder = False
        Options.DrawOnlyBorder = False
        Options.DrawOnlyClient = False
        DrawStyle = idsTile
        VirtualWidth = 0
        VirtualHeight = 0
        TileOffsetX = 0
        TileOffsetY = 0
        Proportional = False
        Scaled = True
        PixelOffsetModeHighQuality = True
        InterpolationModeHighQuality = True
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D4948445200000060000000600806000000E29877
          3800000006624B474400FF00FF00FFA0BDA7930000020F4944415478DAEDD941
          4A1B711480F137816EBA28D11C40A137108367F002DD29EE9B5EA6A4752BE2C6
          0B48AF10114FE02207B06ADDB8109326E94A0871FCFBC297A9DF6F35038FC7E4
          FF1102932A84AAE80778EF0C003300CC003003C05E1D607C1463FAA1A7EE2E9E
          DFB7B7E927FAA73A78DD991A2099016006801900660098016006801900660098
          0160068019006600980160068019006600980160068019006600980160068019
          00660098016006801900660058E3030C869D38196CCCAEF77786D1DDBC993B57
          3740DD7D591A1FE0DBE956FC79F830BB6E7F7C8CEF5F2EE7CED50D50775F96C6
          07D83FDA79767F7C30983B573740DD7D590C50B82F8B010AF7653140E1BE2C06
          28DC97C50085FBB218A0705F160314EECB6280C27D590C50B82F8B010AF76531
          40E1BE2C8D0FE0CBB8172C3BC0F9703D4ECE3767D77BD3D7C71B6F7B1D5D775F
          96C607A8CB3F6460068019006600980160068019006600980160068019006600
          9801600680190066009801600680190066009801600680190066009801600680
          19006600980160EF36C06D6F3502ACAAB5BE015006801900B60A01AE5A11BD6A
          1C179F7EC46FFA4032DC7F8DCEE338BAAD56F427B79F17CDE20146A3D8EDFC8C
          5FC8492DD94D2F76270776B668060F503DC57AFB306E99235AAEE937E1A98AEB
          45337880763F5A93A5FFE5EFC4E4435577BD182D9A597A00E53200CC003003C0
          0C003300EC2F0A84267F27C597D00000000049454E44AE426082}
        ContentLeftMargin = 0
        ContentRightMargin = 0
        ContentTopMargin = 0
        ContentBottomMargin = 0
        Options.LeftMargin = 0
        Options.TopMargin = 0
        Options.RightMargin = 0
        Options.BottomMargin = 0
        Options.Stretch = True
        Options.StretchBorder = False
        Options.DrawOnlyBorder = False
        Options.DrawOnlyClient = False
        DrawStyle = idsTile
        VirtualWidth = 0
        VirtualHeight = 0
        TileOffsetX = 0
        TileOffsetY = 0
        Proportional = False
        Scaled = True
        PixelOffsetModeHighQuality = True
        InterpolationModeHighQuality = True
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D4948445200000060000000600806000000E29877
          3800000006624B474400FF00FF00FFA0BDA793000013F04944415478DAED5D09
          7C1445BEFE6A2633939070E580104826210641080802A248B844D45D567D2C88
          175E88CAF3581702F8F05AD7558400FA04E5E9CAB1B8BAEBED7AADF29EA08124
          CB6D820A24402E9310121272CE914C6D55930993499F33DD047F8F2FBF4E5577
          55D754FDBF3AFEFFEAEA6A820BE85290AECEC0FF775C20A08BA18A80124AC33C
          2D781414B7B3D38BD861332A4354E375AD053B8735CEC18E7CF6836FB942F072
          0A21CE80F2C3841FE971632BF38E32229754E5353D40545E33007B4D165C134F
          C829CDBF5FE4A69F3089FC46EF1C518573E19A4E4C109152128573BDC1F2F051
          8285FC87523E3AA0C449533D04B97A66844AF88573AA7C8FA6424B0B43329EA1
          44500CB5DBC88F6AF228A0D0451F62115ED1E7B725FC543EAE9AEBFED0D2FFFB
          926134112CCD0713AC64BD9ABC0A60DDCF5256EA1782F95135823F17E38052FF
          7F2E88A004E9891692A194AF76143AE94C96B1F703FE413F57F0CB08DEFFDC4D
          5B70DC51820A77253BAA50E13A899AD65A383C2E38A8437039424D56849250C1
          ED6DEE85586B0C622DD1E867E98BC4D001B0901049C17712B808117A91C0CAFE
          DB441BF94035011594863BDC38CE22C50422F80E2450F9702F8A9D65C86D3A84
          C34D4771CC592C90100CB8F09343EDB8386C2052BB0D4182AD5F8770A9DAEE25
          42AFD6C0CA7932D482A458421AA57E5F14454E3A9BC5FA9BDADF97ABF55282AF
          69ADC3AEFA03C8AEDF8732D789208AA98CFED6588CEB3E0A97771F815EE61EA2
          8268AFF9FAB586562683D9ACF67FE81FA02A3D46C22CD67FAD536A09FEC217AB
          F5BE82AF7457E3ABDAEFB0B36E2FCB616BF0D2D5003331634CC4705CDF7B32FA
          59CF164B4CD0FEAD410B09ACBC4760C2638921E40BB170D56909DD910BD34D26
          0C8607BD59C2C3D9DDD7480958AED673C17F58FD15F6351C64D78C32BBD481B0
          BFD111A9B8296A3A622C919D84E2DF1A2449A02867173F656E8D706A42353BFF
          C16EC6D7849016E9DF0F026C90BE8D9BDABEC215FC7EC2F7BABC967F5DBB039F
          566F0DBA6FD71B5666AA4EEF3511D7454E6A1FB4FD852DD325EDF2B0DB9308A9
          D5FABB410FF0C75DF46BE64CE37EB95A5FD05C848D27DE156AFFF98CBE4C7BBA
          27F6660C0C8DEF2420A9D6C03CE3997A9915C8EF054DC03117CD60892C94AAF5
          BC8BF9BFDA2CBC7FF28B73DECF070A1331E157915330236AAAD045F90A4A8C04
          87053D0613521FC86FE9D20298F0CFB480B66B5EB7D9E3C4EBE5EF20AFF15057
          C831688C081F8279FDE620CC64EB20AC4E2474550BE06380071DC700AF7BBAB5
          012F976E44B1E3E72E13A01EB087F6C7A303EE460F7384702E41C26E3E84D809
          A9D19A7E2702F6506A8971E25A9831041204510FC2995A3A4EAAE657B96BB0A6
          F44D9C705575B5FC744134D38E1E8BBF978D0F511D84E64B02A1A8E05A10F31F
          954A87C539CD64F7B53D941C835F1A028A1C7406D35957E3CC43974E105335FD
          AFD5B4D46179D16BA8766BAE0CE7357A87F4C4D2C4071115D2AB83E0B8ABD14E
          6861E19B5B2D58C4B5A6F6B8C54E7A33ABD56F33AF49EA4E0A713DDF7BADA9D5
          8115C5FF8352677957CBCB10C4D9FA6249C2FD08377713CE09C4076595FDFA6E
          A6BAA609710F51DA3DCC8DE3CC1B25155B4AF85ED7C5F4FA8CE2D771B4A9B8AB
          E5642852BA256161C2BD82AD20A719A9228160A910AFC8497FCB4EDE938AE72B
          682975734BC5C7D85E93A34B21BB31ADE3C6E82B901A6E87955814E37355F754
          4B3D2A5C35C8AAFB09879A4A75C98714AEEE3D1EB7C4CE6893213ABA44D39445
          DE1902DC74092BC372E902CAF7FBBBEBF2B0BEF4AFBA142ECC64C5BA410B9821
          141B701A858E4AAC2FFB1C39758775C9931816C4DF8ECBBA0F13FC52E3810A02
          1A8538852EFA9FCCB3562C8654EDF7D5789E39F6129A5B1DBA146C6EEC546689
          5E137C420C5B6BF66365C9FB7079F49FF6E8660EC333C9BFEB30286B6E054C73
          12C2D9003C8C0DC079E271A46B3F3FD6166FC681FA1FA11778ED1FCABA1EBD70
          A0E118961DDB8C469D2A882F46F518C65AC21D1D850F4DADE0EF67B52037FD90
          09F826DF50A5DA9FDB70182F176DD0B5501F0C7B025196EEBAA6B9AFBE008B8E
          BE090F53C2F5C6A3F6BB313C62B0E0D7D80A5A981CC7B687B5ADFFE1136B9779
          AFC9D57EDEAC97E567E8AEEF6F1BB59CE9C1FA3F12FF6BC576BC5EF6A5EEE9C6
          58A3F05CCA42A61599B5B4026E0BDC9760259B3A84E5536AB3B4E091B6157083
          D8112A55FBB755E7604BF947BA17E8DB512FEA9E268787E57CC1E175F8A9B144
          F7B4EF8C9B8989916305BF422BE08FFBB6B376B83CC94A0EF85CD78659EFCE32
          9F1898C467D82E0AE47E397C7B993104701C66EAE9033FAD15C8D01331D6483C
          3F281D6662F26F052EE679D2ECC25B09E1A44CECDE800848DB9D3E97A5BED908
          21C91190D750281C62480EEB87CB7B5EAC98FE1347FF82CCDA1F74CFF77DF173
          7045AF91829F9C3D9626D9886C8D0A8C805D8BB3D99DE3742F05C3B7A3A5F3BB
          A9EC7FB1B16CAB64F894C811589A380B3693B4F196DB701C0F1F5A0FBD91129E
          88A5C90F76E882CC2D884B0C27B2F3329A0948CB494FA1667238907BD5E03B19
          02362A10C03123662CD2ED3365E3DCF3E34B2868D27FBEEAF98BD3D1CF162DF8
          B970D878DA5FAAEBF142B310AFDAB5E48F04F409DD73DF86EFC62810F0F356C5
          34565F3C0FA37BA44886FFA5EC1BFCF9E7AF74CFFB0D7DAFC68DB1C20CBD2058
          93115DD0845D8B8F302745EB7D6AA10701C322EC7875C802C9F01247156ECB5B
          A97BDE636D31787EF022DF6EC8C548788A75455B741984D376FD3E9E52B32ED3
          9D83C2FBE3F1A4D918D82DB6FDB96B57815BC99F9FDC8D75C59F05BD4C66D5D0
          6588B4F414FCED83F1599BA092F9BF636AFD0B8956B2CF1B47352664A7DFC5EE
          D8A847A137A43E868BBAF50B3E211DB1ECC86664D604A721CDB3CFC1F8C833EF
          B288D9046DE7AD8CE6F98C840D9A08B82A279DAB9E73F528EC97A3FF80087398
          9EF20B1AFF5DF40FBC57B123A834C6478DC6BC84D9BEAAA80011A38C4F455CAE
          8D80ACF483ECEEA17A14F661FB0CCCEE374147F10587869666DC95B706279C9A
          D75675403CB3479E1DF298E8049DC8DCD0BBEA09A0CF98AECA69E42B7B43F528
          30EFF7AF8ABC0483C30708EB34BDB82D6E92E43D79F585C865875A4C8D1AC106
          C6DEA261A75B9AF059E52EC15FE36EC0F653B9410B9F83AFB07BEDD2E760F619
          D924E786BCD3D16A70E5CEF464134141D0395440E6152B24C336966EC5861265
          2DC88B6707DD8EC951C345C32A5DB598B9F77943CA9091FA38A2AD6788171988
          7D5B40A36A0258F7732D73F49F4EF4839E04FC3EE926DC147B856818D77CAEDD
          F59421655898320FA93D06097E0502F25413307EC7E2DB08A16F1992631F645E
          294340893602EE4B988EB903A68A86F1670313B3971A52860706DE8A7191970A
          7E194D887B96A827206BD1FDA044FF49143FEC9021608346021E4AFC35E6C4A5
          8986393D6E4CCD59664819EEB2CFC4A498CB2535217E300DE85F6E0B266A6801
          E98B98A39BF93828A23F965DC40CB1F0F3C310FBECC46EAC3D1EBC21C63127E1
          D7B8B66F9A1401FC61CCC6160BD2930939AD7E0CC85CF80425E48F7A157AD3A5
          CC100B8FD35B9641E1F143CC10AB3E18743A57468ECA9C9F7C8BB058D767959B
          9329313F93566C4D0C23C7BD17B5B5004A756B01FF1CF72C2242CE2F43ECE563
          CC102BCB0C3A1DD68616664DC858AD266E3B01450E3A90D1F59487601A1B9FE2
          DA126A3FB657E66053E1076AD25485879366E0E6FE69C127A413B82176E7FED5
          BAD80294627E565AC61B6AE29E5996E2A2773321AF678755EC19303FB2ABF661
          FDD177742B30EFF727440DC5E0EE038447795EDC3E60B2E43DB975CC10AB3BAE
          26795C13330A7D6C3D25C33FADF897608C71D4B81AB0AD4A1F43AC0DB73002FE
          A64A0E252E3AD603EC64FE9076818B3C84FFFEF461AC3AF467BD3228899D13A4
          7BB90DC55BF166D1D78A690C088BC6DB97A57720D617A75CF5B861D773862C53
          1140C9F4AC892B9533CA400ADDF4234271A3701FA409A8745663D1FEE56AD20C
          0A3BD3640828522680B7AC1787DD8DF1914324E37C529E8315F9FA75A79DD042
          13B3A6AE2A52139514BA68A5F7FD5FB17540ED6F3832DFFC5DFF05B701CBFC7C
          112C01F3ECD7E06EFB34D938F7EE7F1987EA0D5BC0DB9C95161101F28CAAE645
          8A5CB4196D136C4ACB10977DBF0AA54D1546655CC0CE890A04147626807735F6
          6E7D302F713A26460F934D7F774D3E7E97FBBA9145F83E6B52C6A56A237302F8
          7E40A9FC448980D70BFE8E1D27F7189979644DD4FF51A1177C3DD003FBD7E160
          9DAADE212030396DCC9994718FDAF87C0C486763C08AB69BBD8988129059B907
          6F30128C44D624E30878AF7407D6147C6268FE59777E47D6E40CD57366842F47
          B4BA052DE832C5A5E8AE5A3CB6E74F8616C028020A1ACA713FABFDCDADCEE013
          9383A77540F6D435AA5F0D15EC00BE30B7B5056F726D486E20E6EEE27D2FA2A2
          F9A461F967B547F7344F3A4F63FEDE57F4D4F3C541C94FD953332ED1724BC7B7
          249DF4124A30C9431147086218013398D08527E75E223E2CFE0A1F6B9891D40A
          BD09C86F28C3E3799B50E638157C62CA783A7BCAAA67B5DC20BF6519A5BD5B5C
          E02B98C6780938E1A8C2E23D2F1AB6CB49D6147D08686546D6276539585BF029
          1CAD6E43F2EA0756774D295953571ED57293E2645C819B8E271EECF0ED86FE90
          FB0A0A0CD224B28324A0CEDD84CCAA1FB0A5681B8A9A2A0DC9A3280876E44C59
          A57995812201FC15568B0B75DCEF6D053B2BF762FD61FDE6857CC1FA50E9BC30
          E369F7A9FC4ED76B5D0D38C58ED2E62AFC585762DC14830C0825B7654FCB785B
          F37D4A11780B30B5B580B3FBFE785837B442E88EF4861C01EF95ECC0EA231FEB
          FE9B3AE068A8B9FBE0ED939FD13C4DA03806B4FA8D016873BF29CFC64603E653
          B2AF5620E0F0F9470001BD377BDAEA805E96EB40007F5BD24330916940114C03
          4AE65A108B112B6694B5785AB064CF4A543AF4DD80E99746407848B7EA97C63E
          B13A34C4DAEA3BF76A6AFF2708D9C3FE8E59ADF892A9974DBEF70B0494521AC5
          EC800DBE7B442B1965DCCDAD398415B9FA4E51E74C932760D5A1F38B8045A9F7
          E2D2C8211D176179FD9D57C355F157D5EC36D2BE2B81D712E6CF2F3BED8EAEF4
          863C77D7FCB0097BAB827F8EEA45F6B495920FE9DF2D3EBF5AC0D898E178E492
          B99DB72B80EC5B927C4A6A8E970422B74D81D21E11FCA862D6E5B2DDABD0D8D2
          AC4BA1FE91F624FA848A3FC95A77E4736C29DC760E452C8D704B185E18BD0891
          B69E9DD6810AAEFC7BC255260B12E20969E6B3A1FC0D79C9395CA52D6AB8BBAF
          FA07ACC9DBA88B71F640CAF5B82BA9F362AAC616076ECD5AC9342F83A7135480
          B7D04786DD8931D1A9925D8FFFB54E6950DC9460231F7302F83BFC925FC450DA
          A4C9EBDF7CE4236CFD39B8A5DD1C565308FE34622E26F439BB08BBDEDD8C670F
          BE83CC4AFDDF6E0C04D7C64FC4ED179D192EE5B629F075FDC1CCE6C58916B2B2
          C3133129A81990F993B2E70FACC791D3EA1E9A2B6164EF8118DACB2ED4FC6F4F
          1C149EE39E0F18D23B194B87DF8F109359EDC02B0A16B620C14A5E23627B4488
          414D57D4C484F5DCFE575154FFCBDEA84F0AF1E1B17872D44342FF1F68D7E385
          896278BC8DE4916217E54616D78242E46E50B35F1C776B5D75787ACF2BA83A37
          B38FE70C51B65E787AF4C382ABA4F5F8BA6260713F4CB09099EDF1D838C05F3B
          E20B89AC729950B37396A01931E12FDFFF06CACFE5649881E81B16852523E733
          375A54F882AB7EA7AC2C8F05BFF26E73DC1EB7B09926C18C2709DF909B0A2BE3
          C4B7AC84FCDE715EB7D1DD8495DFBF89FCD3855D2DBFA030B0473CD247CC430F
          6B84ACF0BDE712C2E73A3A3796D62658F01621A47DB650F3B2E4E2461A47ADB8
          C343C11F3C58E54870B63AB1EEE0DBD87B523F43ED5C624C9F543C38F456D8CC
          5625E1BB4C84555E994D39A410F0BA706EC079DA0C383912B86DF0CF921D7827
          FF53B4787E397B47CF4EBE0E3312270B3ABF52CD67C25F6AB79080B679099880
          E394C61237CAD574471CF9A78BF11A6B0D154DC63D4FD60371E17D845A9FDCB3
          E3EEE972DD0E2C884B2424A0CD270226A0A489F66F0D81B0BC4C2D09C2F7034A
          76E2BDA35FC2D162F0EA048DB09A2D98619F82DF302BDC6292F87E80D7F5D378
          4C6EE54D39A4104C17247CE24AE9CB19A25FD0683E85770BBE404EC5812E797A
          E50BDEDD5C113B12B352AE479FD0B36F36FA0B484AF8E4CCBF73D705790761B4
          0DC2FC9A96CF9774F8860C23E2CBA26FF14D69B6E16B4EFDC1DF4DBEB2DF48DC
          9074B5D0EDF80B449404695D9FEF8CF5141B84B7E83608534ACD256ECC65027B
          889DF2A5C6B2AFB348912016E6EFAF71D66167F93E6496ED41717D402D593512
          BAC721ADFF185CC96A7D6F9BC257947CAF6930B418F8F763B6118A1713AC4476
          2DA7683AFC014D8B1B9FB3C0CBB5144EB4C6CBB4067F3F47112360FFC91F71B0
          3A5FB0215C412E29E12A644AAF440C8B4CC1C8984B18012ABF23E675897C3C05
          F017F2E63312243738114D2BD82FA8AA690DFE7EB173BE35E6B1D325286B3881
          B2C64AE1A876D40A0378636B339C6D03B92DC48670731842991B1DDA0BFDC2FB
          B26E2506FD23FA228969335693862FE9F9FAB5D57A4912D831CE6E257B551170
          CC4547988103810A5F8A04C1AF9208A96BC180285C1313BCEFF5A05EA425789F
          0DD2B354E5ABD84517B0C2AFD3A3D092DD8E041162E76AC3640B2513A62478A5
          F454CAE164A295F4110BEB94B61E5F5015C980B89F4AC793BBA6054A355F3837
          48F03E70B02E485489E9F41BC17E41550EB2FD3F958F1F0C444920D271F47E6F
          9F952397B58011AAF256466937B71B7CE167B4CEF9F0CD90A8BFFD1A557FBF6C
          61FCC389FC3D466D9820F61D61D9DFE41FEFC4992FA89A602034F5FF1A9B0391
          91265138D719C2B762920811DD3F5FF2B7DB48781506B6045F18A909A919070C
          01EBCA3D21B84FEE1B93B2F928A134ACD585EB880983E041AF7391672FF49E21
          32B429FB8072BD9FA09C59C1DBEC36A2F8658BAEDD27E6022E10D0D5B8404017
          E302015D8C7F03A5AD0FCF3A3CFE140000000049454E44AE426082}
        ContentLeftMargin = 0
        ContentRightMargin = 0
        ContentTopMargin = 0
        ContentBottomMargin = 0
        Options.LeftMargin = 0
        Options.TopMargin = 0
        Options.RightMargin = 0
        Options.BottomMargin = 0
        Options.Stretch = True
        Options.StretchBorder = False
        Options.DrawOnlyBorder = False
        Options.DrawOnlyClient = False
        DrawStyle = idsTile
        VirtualWidth = 0
        VirtualHeight = 0
        TileOffsetX = 0
        TileOffsetY = 0
        Proportional = False
        Scaled = True
        PixelOffsetModeHighQuality = True
        InterpolationModeHighQuality = True
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D4948445200000060000000600806000000E29877
          3800000006624B474400FF00FF00FFA0BDA79300001A274944415478DAED5D09
          5815D7D9FEE66E5CF6457611DC00451401B7C6254D34FBD624C6665571AD014C
          1552D33C697FFBB7CFD35AC5FC0AD8BAA246D336268D694C526B4CAA26EEB8A0
          A880CA22B28988DC05EE36F37FDFDC1DB80B300859DEE7B97A66EE9D9973BEF7
          9C6F3BE70C0CFC883E05D3D715F8A1E34702FA187D4EC0C6451BA54AB97C0AC7
          B213B132E3B04AF1005C107E15881F4FD3CF5AF0A3C24F137EAEE0F7F8119D94
          B3AAAFD237A42BFBBA0D3D419F1190B374DB7D0C0B7358609EC74A0CE8E66DB4
          D882231C705B95037C3E5AB97296B6AFDAD35DDC7302D6BCBE750A2316AD040E
          A60B7CEB3A8661D6B40CF0CAFD2E11D1AB0460CF64D664143CC0602FC7C3FBF0
          613160542D76F0923310E827023F1F11F87831209530201133201219BFD7E901
          F4060E3F00EA5616142A165A541C28942C3EA3034AF1B1AF67E5CF3DD8D7C275
          07BD46C0DA8CADE350BDAC47E1FFA4D307E3932382C5101122015FEFEE5543A3
          E5A0EEB601EA6E19A0556347058B9FDF2B822BFF77E5CA956C6F0AB0A7E81502
          D66614BC8CE2D886458F0E0FC42786068A617094043C3D84793CC77150832494
          571BF8916283BD8A60EF9FF7679524380139E9DB9E44297F82455E8188F009E1
          216208091481B7A718A4D2DE1B767A5455572A74D078C7603987DC7C2A13295E
          589ABB54D34B8FED110495C5DA5FEC18C849D8622CFAD3B1B7A70846C54AC14B
          A09EEE0EA8FF9757EBA1AA566F7B7A6B565EDA827B56892E4050C9E4646EDF8C
          5D8E6FA81C859E9A20E30D6A5FA0AAD600D7AB75966354530BB3F3E76DE993CA
          388160D2599FB92D44C7896AB0A9123A4E8A97F19E4D5FA204D551ED2D43675F
          A9504DB6222B14D89DC551F32D30DCC1ECDC7997EE751D0523000DEF2FB0217F
          A1B2BFAF089247C8EE755B3A00F53F9CB9AC41B79573F792431C03EBA3EBBC3F
          99B56796C1DD8B7A022109F8089BF91C9563A3A530304C7C2FEAEF120A350767
          8A35E03605469CE4182EED5E8C08210928C546C65279DC281906549DAB1F8D8E
          83CA9B7A50A260BC31E88A0CC538C0AB77ED4469A50E6A1A8C1D9AD462E27019
          EFAEAADB38AC070B4D7739B8A330403B96DA504DADC8CA9DBBBE37EB2648CB31
          D811F936C690AF2DA63B4E4B915BA2585B50244BBD516D1F3441508008A2C325
          10E0DB3B36A30D03B613455A3E5EA0FA4D4C9481A7DCFE5914D455D71BE0267E
          58CE5A3F8E63FE909D3FF737BD5231108880D5D93BBD456D063E2B49829F962A
          EFF47757CAF550D7A877781F6F4F0606E288081D200689C01AECE2552DC607C6
          A07810923D6C90A4D3DFB561E7B8744D072D2ADB009AF96356DEDCB785AD91E9
          CE42DCC4E801310D5426B773727287001887B9018ACA7496613EE5B161D050AD
          80B2E25BC0B1F62382C170D9DF878101383202FCC4E02D673A1D51EE82D4DEAD
          2616AE5619DD527291278DF170F87B96A5CEA28386268B1DE6B04ACF2CCF4DFB
          5428C15BDA2AC44DD6A46F8961187105DF3819362EC9BE710614F0C90B5A7E98
          13624787C2A3B346F2E5E6DBAD70FE58355C39570F5A8D03C7036BE985F7F5C2
          1122A6441D9221C1FFC536A4508A2338506C97DE30A09E2FBEAE83A6E68EE9A0
          094880B30091B4D085322D761CD6FC80463D67485A9137BFA6DF119093BE230E
          18B684CAA45B278EB677412B6BF4507ED3A87A3CBDA5F04AE678FE7F5B68B506
          28411288887A1C191CD745BF058C59D509A3ADE453445C59DBB9CA8B8B91F00E
          803390A13E451D4767AA0BC36C41A3BC5008999921BC0A92A20A1A6B3F02AAEA
          F470FD8651108FFD3C0186278638BD9F5AA983AAAB4D5059DA040DB54A68696A
          45B5E09A10FF2039BC90960862A9044462063E7DFF32549737F3DFC9906F2D55
          C1749B846152080D726D68C86E90FD3041AB67F4C356E42EACEE5704D87A41A4
          BFEF4FF5B0DCD93BC807C21262A0AA42099EBE32181C1BD4E5FB1BF42CDCB9A5
          8696E636D0B6E94183AA4A83FFEB7556D5229589201E559B5F90A7E5DCD7FF2A
          858BA76AF97264A81862222570A785E51384949175B7F5A72F69416932CA3830
          5767E7A7FDAA5F1140C8C928A8C3FFC2A83CE3FE200888F003FFC801E015E823
          D423BA8C1BD7EEC0DEED457CD9C3649BBADC601C3137EAF570CD348291801224
          60845075149080ED17B07A89547EED8DF11010EC25D4ADBB0D1675F8D65547A1
          ADD528BC275F8A031F290660CD2AD0AA35A0C38F41E7D82D6E43A7E942891654
          ADF6465C2216C7BCB16E76951075148E80CC822FCDF3BC3F4B4B824143037A41
          A45DC77F3EBC0225E7EBF9F294478741F2E428BBEFC905660D06DEEB61910C11
          BA560C7E4412097CF9CF2BBC53D011DC8B5979F3FE2144FD8424E00B24E0512A
          F727022E9CAC81FF7E5AC697E3D0463C62727FDDC1DE82F370E37AB3F9908208
          72DDDA44AC3865D986D99785A85F8F095893B1E3318663DFC13B8DC343DEFF7C
          297D1C04877B0B2AC8EEA2B2AC09FEB5F3025F166300111EE50B3F7968284444
          FBB9BCF6D4E12A387EA0DC2428EE0B1698E506605B848C057A44404EFAF6E9C0
          70FBA96DB6E717BE7D1FC83DA5DDBCABB0A040EFBDFF3B69774E8244BCB03819
          3B897307A1E9960A76AF3F6D3ED43052EFC0E5EFCE6A15B27E3D2320B3E024AA
          9DF1B6E77CFC3D202D7B929075EC11287ED8F6E763D0AAD2D99D1F123F009E7C
          35D1E5F53B91BCBBB78D32E758766AF686F9DF0859BF6E13F0EE2FDF8B60F57A
          7E284AA46278F8F911D050A380D8D1212E7BD6BDC62DAC577949130C08F3862F
          FE7E898FB229505BFCCE147E3438C367EF17C3F5CB8DE6431507DC6FB2F3E6BD
          2B54DDBA4DC0EA8C6D0FA2BFC02F7E1A38D81F9E9B3FF61E88B2E7783FF734DC
          6E50F165776CD537FFBE0667BFB50F7C194EF4DCF2FC391F0B519F6E13605A7E
          C26707878CC0E1FC8AEBE1DC1FF0E1E6B3505BD5C297672E4C76698CCB4B9B60
          DF7B17ECCED152170CC69E16A23EDD26805FE329121DA172648C3F3CBFE0BB31
          0276AD3B05771AD57CF9E58C71BC5A72859ACABB7C2AE4AB4F4A4D42638A97E7
          CD15A4C7759B803FBF5E108EF10A9F68917B4A60E1AF27F783C5EECE4139A5BF
          FEFE1BDE3053CE6AD13B934126736FE68752DB1B7E77984F4DE0B5D5CB73E70E
          12A24E3DF382320AAEE37F43A8FCC2A264081FE4DAB7EE4B945FB90DFB765FE4
          CB0342BDE1E5CC716E5FAB6AD1C0B6D5C78D070C5398953BD7FD8B9DA087046C
          5B85B7E03383A3C645C083CFC4F58EE40402099F48204C7C70304C7820C6ED6B
          AF1537C2E77F2F361E70B03D2B3F2D4D883AF58880D54BB72462584EE9463407
          0CFC7C494ABF7341CDB871AD19F66E3F6F6C34D675F61BE3ED52D7AEB06F1792
          5772DB74C4BD9695376F9710F5EAB1D65E9B59B013BD82D7A84C41D843180F44
          A02A124BFA76559C197A9D8117FE971F97409BDA188C7565B4D2F545276AE0DB
          FDD74D12631AA52019B634F7D51621EAD763024C0159211623CCE7C8B3787149
          2A1FECF425688E7977EE2950DEB52E8CF6F6F3E0EBE6E5E33A554269ECBFE59F
          B6BB9EE1B8B9CBF3E7ED10AA8EC22C4B59B2638C48C21D440739D87C8EE2028A
          0FFA12970AEBE0E0DE12CB3109FDD9B4B11014EADE5C45D1899B7068DF55F321
          8BED7B272B7FDE1F85ACA3605D74CDA28DC18C4C467AF1113A1E3E3A041E9B95
          20645DBB0CD2F9A47E08434606C38C67E3BA9424FC60E3197E81008163B897B3
          73E7FD4DE83A0AAA2356A76F9B286218DE57A31CCBFCB7EE039947DFAC115529
          B550806EA379CD11ADC470B7E71328F0DAB5FE94F180830A4548E5B0DED8EE24
          FC0E998C029AA8E0E74CA73D311C92260D14FA116EE1E47F2BE1C4C10ABE1C1A
          E9831E5A6A97AEB79D4943FC362B2FEDF7BD514FC109589351908937E517B492
          57347BD94410DF63634C9ECBF69C139614F48C67E361644AB8DBD737D629E1EF
          1BCEF05953ACB99AD56A63B2372D6E74FB065D80E092C97F3DDFA74DE475038B
          FC9CE4F49FC54342AAFB8D1702E78E56C3912FAEF16532BC73964F0289D44DB7
          9833D90EF3542403ABB272D3DEEAADBAF6CE2EC9F4EDBF45A3F53B2AFB06C8E1
          95A5E3402ABD37B680D60BED5E778AB70184C98F0C859429EEA76D0A0F57C151
          D33424A24ECA48E385F2F93B43AF10B0EA575B7D256A11F96FA1744C022041DC
          0B1CDA57C6074E04F2F9672F9BE072D2C50CCA7A7EBCEDBC65155E6F793EB6E8
          35E5BC267DDB0286613653D998A648EDF5897A7219F76C3A6B5957FAF0CC1110
          9F14E6D6B5B7EB55BCEAA1659126BC8F86F7955EAD30F42201F49A82B5993B0E
          A334A6D03145C73411DE5BAA88A2DE0FFE7AC692EB8F1A12804157925B2D6CAC
          55C2DE1D45B6F3C66AB1583FF497EB16D6BBBEBA67E815023E78E103F18D70E5
          02E4805C37CB4A5C5A94CB0767423F153BFCBEBF1543B975EE9637BE93A60FE1
          1D00CAFD3B02A99DCF7617435BABFDA43D231295E36DE767AD9FF3756FC8C8F2
          1CA16FB8267DFB3460B87578E34EA7C826CD180CE3EF773F0DEC0E4E7C550127
          BFAEECF4BB90485F98F6F8307ED6AE33D82EBEA2B1D96E8702E9B22D3AADF6CD
          B7362DBE2BB4AC088211B0EE8D9DD13A56BF9AE19859B6E73D7C3CC1D3DFB3B6
          F966932559D7D55CBC3350B045419719C131610A4593C257A350DBB532363114
          A6A02340B1892D4EBF5F04C72EDF8140110733E47AA8661928D448406BB31A1E
          A3FB068E65172DCF9FF78950F2B2A95ACFB071D1462FA54C469332F4B124D8C5
          12310C191F07C3C6C703835EC8B97D27A0AEF4A6E53A5AA3499E9133F5E00C94
          62205FFFFC71EB3D23E20741D213E38135B05051580AD74E94804167EDD3B47C
          26656A14A44E8D06093A069A4365A03D59C90B9B36F49B7D25351E1F4712AAF4
          EDBC2711EC1133FA4C216D438F08589B59F014C762D4CBC060DBF3C143C261D4
          F464F0F2B7E65E5896E549A82FB3AEEAA329CC879E8BEFF24A6ADAB041F9FD9B
          1556AD103A3402929F9E0822B1D5C8B7295BA1F4DB62A829AEB2DB71E3ED2B83
          7181D8419A9C6B951B0611122106156B1513769816E4FECDACBC399B19D4B57D
          42404EE68E64EC82EBB038D5F6BC57902F444F4C80E81103412CEA786B1CC670
          617F21DCBC645DD94DBD72C24FA361CCA481207531414EDB988AB0C79F427DAF
          D75BF36251A36220F1E114329C1DAEA125EA55576BA0EAF8655035DA0B3C5CCC
          C204990182C48EE548A3A3502B86125D87BAEDE738C3E2ECFC0595D003748900
          DA8AA4E7E00F1C30F4420E4B6BA59E3218981207C1B103799512E82F07B1D8B1
          30CB4F9741C9918B3C2166D0CA8A61A342F81D3421913EE0E963DC67D68A116D
          438D122A4A6FF3F3B214E99A214281C7DF3F1A06A70C77F82C83C10077EEB6F1
          E6B4F15A0DDC44D5A455B7D909204E6A80642442EE441AF506068EA25ABA6B33
          1AB0B12A1C59BF560657E6773753EA1601FC9B0DA5B274FCF5FF8029C7C35F8C
          BD9CB61F45260D07B1CCBAE1CD0B09F172917757DC6A86221C0D2DF5CDD01DF8
          870542E223A9E017E2EFF477EA362DA8D5561793F600D41495437D71396F2BCC
          9091DB86448C4022A8672958115CD631508B6A885E35A1E31887AF3BC088B904
          D5D1DCACDCB4E3821360523705584CB23D1F10150C83268E04B95FC7E8964641
          809FA7CB2C28E9E5BA926ADE582A1ADDF3F248E04327C643785C944B034EEAE7
          4E4B6BA73B2EC94BBA71AA04EE54DADB535F54EB64B6D55C17B533AD171201EA
          566EF5F2DC7979821090935EB0027F41C194A53B93C0A3278E00FF28E73B1D49
          3DF878CB40E666E44B23A11E757573ED6D50362941DB669C8795C93DC027C807
          02220640586C24F885BAB7F1438BDE8F12D517CB39D70C8ABA26A83A7119D44D
          8AAE09DCB954150CCB65BA3377DC2901A8CF24BE8D311BB068D9132B42B7322A
          2516424746776AEC1C4182D74958039CFDE42818B47AD4D7B130286908EFA60A
          0183DE00D5172BA0E27429F678746F9FF909305E72D0E9DD7BDB0CCD1D947C71
          02D4B7DB253CE9556B1162881E2285F04831040C10A19D624086BA4A8B96B9AD
          1547D76D16EA6AF470A3DCC0FFDF51BADC790D2B9EFE76FE9CDB8E9EDF81003E
          8793B16337965E329FF30D0F8421534683876FF736DEDDBA72032A8E155B8E3D
          BCE53074423C0C1AD37D2278C15FA880EBA846DA14D63D13E40C4426B9977925
          A15FFEFC04B07ADB588181843152484A95817FA0FB756BBEC34251A1062E9DD7
          F2EFAEB30A98536B448669BF5EBFB0D02D0272320BFE842CAC301F87C44641CC
          7D095DEAF5EDA155B5C115EC651A85FDE692EE10E148F0041946DD231E19071E
          7EAEB3AE776B1AA1EC40A1DD7B2A86C64960DA744FF0E9C19BBE942D1C1C3AA0
          86F2AB362CA0591189986796E5CEFDCC29016BD3B73DC331CC5EF3317938D113
          460A92B0A01C7BD3F55AA8397715ECD20424382F0F18921A0B31E84E3A228202
          B9EA8B95700DFDF9F6822737382C6130848D1ACCEF727405D52DEAF9C72CC227
          6761DA43721895E4FC2D5FC70E6BA0E8B40692C6C960D234B9D3DF5E3CAB8523
          07DBF845BD6612F40C3B6945DEFCD3B6BFB38876EDB22D419C4E4C2B57F99C4D
          6074280C7B30B9DBA902A1881052F004B243E7FEF1B545ED904E7FE2796F1818
          ED7A04FE65F55D20CF95085B92ED7A217275851E3EFF58CDDB0C135A350C17F3
          76EEBC5B1D08C8C928A089F44CBE52DE1E90F8B3A976BEBDD0E0B025B7CAAAA1
          B6E83AAFA26C21475542AA8970FD64099F52B0230AEB17317A2804C70D725BF0
          66147FF2ADC5E321413E3DCB3DE113F256595DE58C15FE6E5D43247CFAA1DA32
          123088BD989D3777B41D01AB32B6464A4044B3D8FCB88A9D9E0201D1A1BD267C
          5B381B11EDD19D1E6F0B22BCE29B8B96E3071EF574AA76F8D7DD9CD341E9251D
          DCBE65009DCE6A2FE8A5240342C4103F4A0209633DC059752E9ED3C27FF75B3B
          113A3A8BB3F3E66DB21060BBCCDC273410463E31F19E08DF16CE88E8A9E0CD38
          B3EB80253B4A06F7F1671D1B6B9582C39EAB82C606D7EE6C7098189E4235E6ED
          EB585D7FF64F34CC65E6889C532FCF4BF3A1641E63743BB75342895F3A10FB50
          2A46B9212E1FDA5B30ABA6BAE24A5A088B428FE996AA698FBA8BE57CE44B2057
          F3D5053E0EBD1DEAF97B76BA277C3342C2443073B6AFC391A0B8CBC2EE2D0AAB
          8BCAC15B59F969AB18FA430AC032DFF21593CB60EC8B3F45C3DB3F96960B89F3
          6878E9051D8431E8E34F9BE1786F4051A1160E7F69541924D089E8F1C48F9282
          B78F552E2A250B25177570E2481B98534AF73FE409A3531CABB443075AE1C219
          E372191C2BF5380AC2E9FDFE6FE101BFE237242E0A064FFE6EEC76EC0AB468C4
          CFEF3904E696BFB6D0C76990B567A712EA6B8DBDFFBEFBE59032C9388B76F78E
          81F7EF870C9758AE3F735C03470F199D088A9867BEE678834A73130BBB365B53
          1E1A8D289E599BBE7D0F2AA2997462C89444088E8D82EF1BAA51F5D45E342EB6
          0A1F88427AD5F92E9E8DEFB680CEE43AA6A5FB5A7AFE7B1B1570B79985804011
          BCBAC8973F4723A120DF28547269172D73EE9EDA928B7D611D8306F81216F957
          888C7AE63EF00AEADF1BEDBA035BD773C264394C98E2E1F4F78E0870E486BEB7
          49C98F0E5B621CE1380673A78F19470C03DC65C6F64D57635F7A00A472E795FB
          2EE2ECFB0741AF317A204FBFE00DD1439DC7371FBEA7B224D76C559023022CAA
          29560AFE01CEED67E5353DEF5DF1E04041049065E22D47EA9C47F8556CDF379C
          DEBEDF322730FB17BEE0E7EF5C481D8CF05434C289528BAA21B81B88B507A930
          5265261888004B74313EEDD1BE9655AFE054C1BF2DE5C5A8A3A532E79D8C7743
          711434D63B7643BB1288D982D2129BDEB5A6BE7F7004A4BFE90FEE78D97C20F6
          917312CC7027103383E687F2575B55D90F8E00F2526432F7D42CF9F797CE69A0
          844F45B016C3DC195C056266D88D00CE05019A161594FEC7388F10F7706A873C
          7B756119D45FAA80F084C1303035B6DF5E6B670316A30D08E879A0D99D408C40
          069BBC2613019C53026A8BAEF18D2544614323C60CB3FBBE70C77EE38B2F90F6
          71B31FEEB7D79EDD8D5E90D6E8053D855E508C0B2FA8B380CBD1F9AE0462840A
          F482F699BC207443954E09A8397B156E9E33EE931D3876384426DBAFBFB11DDA
          FDF95ADB3860FC640F9838C5F9644A670197A3F35D0DC48E1F6EC33840632200
          8A3B10A0D7EB41AD56814EA785A6CB35D05C667CF56F406C04F8C7D9EFF5AAFC
          ECACA51CF344B2DD77774BEBFACDB5772EDF8496EBFCABADDDEAA55D09C4BA4A
          C0073B94D0506734ECA88136D91190F8E234502894607EC3F5DDABD898125363
          E2B131C3ED0551F5F939E34E429108A21FB35B36D4AFAE35B46AA1FA2BD3A200
          EC76AF2EF4E57BB1237425102B441574CCAC825CA4399A9B0CB06BB3F5AFEF8A
          5871821D01ED7B935EA581FA53D7F849839009C340EA651F2553435B2A6E81DF
          E0606C6C64BFBEB6FAE04530B419EDC0E8140F34988ED5903B81188D8C0E46F8
          6134C2C94EB2A1FF69850B672D6F626FC8CA4B0B734AC0F7098AF20668BA645C
          CA2E91D028F0031FBFCEDD517702B1F6080937AA3687F3012D2CECDE6C331F60
          FAB32844009DE24D7AF4E363059F84EF4FB8B1BFC832194F9E0C4DC63B425702
          3112FE93CF7BD9CD17B4C7BE8FD45071D53802190ED4510DDE7EF4B7CA880072
          19783F8F74A6DFB0B0EF2D09AAEA26683C6F5D4DFE535419894E5486B3408CD2
          19034244103F4A06094932A70118A91D523F66702C939DBD616E0E95993599DB
          7EC770CC6FFB5A387D015A15F1D44C2F881AECDEEA8F6EAF8AD8A3B2D809ECDA
          65CBF3D22C6F8B62D62EFBC093D5290F3AFAC3CBDF7790EBF8F8B3EE91D09D75
          419F7DACB619399C86D56BA2DFFCEB9206F36F785D4324703AD50A3C7C057F44
          6F41EC1F7F87F01E81043A75861C12C73A4F235010751E3D245A37EA6A651CA9
          9D6FD093B2D982407F1FEED1ECFCB403B6BFFB7E2A7B3790B374FB748E65FF8D
          23DFD2F5694265DA7439F8FA773F5744DECEA1036D16836B02CB70ECCCE5F9F3
          3BBCEEF8074B002127736B128AE6287A1D9665DFE4A28E1C23C35EEE010141EE
          134141D6F9D35AB854A4B3AE073542833DFFA9F63DDF8C1F3401843F2ED91D28
          136BBFC4624AFBEFC222C43068B01422065AF707787830A0D1D8EC0FB8A987AA
          72BD25BD600B74374B24226EEA529BB5A01D7ED3D702E82F58BD645B1A2AA375
          E811FAF6F866E8E7E3BFBFC9CA4F5BEBEAA73F12D00E6B5E2F788311F1FB2322
          BA7E35FD313B6EA322B872A5BBBB267F24C001FEF4C6CE68096BC8C011F11803
          5C146A751A19B6DE2109989243D5F8DD11116BC859BE61C1D5AE3EE7FF01CE1A
          C5B0A2EDBF220000000049454E44AE426082}
        ContentLeftMargin = 0
        ContentRightMargin = 0
        ContentTopMargin = 0
        ContentBottomMargin = 0
        Options.LeftMargin = 0
        Options.TopMargin = 0
        Options.RightMargin = 0
        Options.BottomMargin = 0
        Options.Stretch = True
        Options.StretchBorder = False
        Options.DrawOnlyBorder = False
        Options.DrawOnlyClient = False
        DrawStyle = idsTile
        VirtualWidth = 0
        VirtualHeight = 0
        TileOffsetX = 0
        TileOffsetY = 0
        Proportional = False
        Scaled = True
        PixelOffsetModeHighQuality = True
        InterpolationModeHighQuality = True
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D4948445200000060000000600806000000E29877
          3800000006624B474400FF00FF00FFA0BDA7930000052C4944415478DAED9C4B
          6F1B551480CFF8153BCEC38EF3B29B3849135222D4D24590D8D1C20AD10A04AB
          2EBBE99EB240A26247110BE80FE88665573C0442624393256A41A82D4AD412AC
          364E94388DDF76D2C68FE9B9131CD2666C4FEDB9733AE9F9A468FC38BEF7FA7C
          33735F4914604851A81BF0B2C302886101C4B000625800312C801816400C0B20
          860510C302886101C4B000625800312C801816400C0B20860510C302886101C4
          B000625800312C80181640CC9E805028F43E1E3E565575168FFEDAEBA7BEBB64
          A8A0EBBFFD42FD5D2CE5ED77DE331437FFD1E5FD4F8B98DF9B78BC924EA77F16
          2F680230F95FE11B9FEA15C002F46951C01E98EF2F51C225459CF9F8E4C77A05
          B0007DDA1520C0BC9F1502E6F1C15BF58258803E26099853FAFAFAF2F8B8AB5E
          100BD0C70C0148FE8516E072B9B09752A05C2A995E76BB982420A70483C13945
          514ED58BB04A80C3E980E8C424842351F0797DDAE840ADA8FFBDA968C385C7A5
          1D48ACAFC2FDA57BE4524C12705D08388B027EAA17215B80C8EDF4F19310098F
          0294ABC63EE454209BCFC0AD3F6F407967A7A57ADBC5A43EE08C360C45099751
          C2677A4132050C0C85E1F8C959E3897F0605AF9ABB4B8BB0125B6AE9F3ED6082
          802F52A9D4E77B13319470060F1751C41BB0AF4F902560727A06C6C7A640ADB6
          96FC1AD85ED84826E0CE5F37DB2AE779695140017F6EE0992F26625AC29A2E45
          9C8F5F538D5474FBC13DC38DEFF6FA617C30A225CF2C5692EB902AE44C2BAF19
          27C6A60DC57D3B7AAEE197B45C4087DB0353C351703A1CA626443432965881E2
          A32D53CBAD876D05BC121E039FA7434A524A9532DC5DBD0F55B5BDDB9A116C29
          20E0EF86687F586A62D6D349D8C825A5D621B0A5806347C6A1C3E5919A1871F6
          2FC463D2AF02DB09F079BC78FB894A4D4A8DE5876B90D9CA4BADC37602868321
          18EC09494D4A8D4C310FCB9B6B52EBB09D80C9A111F07B3BA526A546A95C86C5
          D598D43A6C27E058640287A06EA949A981131DB813FF67776C2A09DB09786D74
          CAF4B17F2316566250C661A92C58401316E2FF42B95A9156BEED04BC1A19078F
          5BEE10B48668F0DFD81E897720FB09E04E581FCB040C054230D46BCD30345DCC
          417C735D6A1DB61320D67FC43A90153CC03940B6C813B103583114ADA85558E4
          A5087D7A3BBB616C40F2625C661336B229A975086C294030158E42A7C72B2529
          BC1C6D008FCBAD6DC8B89C4E5313B2BB211387E2A3ED3A5F5481E1603F04FC3D
          5A74A690C3AB25898FD496E26C2B40D085C3D189C123266F49262055C8D67D3F
          1CE88781DEBEA75E7B88B7AA35BC65B512676B0102B12F1CC5FEA0DDD9715555
          613595807493FDE0999149703F73D589A50AB164D14A9CED0508C4FEB0D8216B
          758B72A75C82651CEF6F3DDE6E1A3B33721413EB7AEA35D1672C1E10602CEE50
          08A83520D0D503C3384973BB8C0D512BD52A24B24948E533DA156004BD5B8B18
          2DAD1BB805E9C51D1A01FB5BD2E5E9841EBF1FFC1E1FCA706147BD7B26962B15
          6D616D0B3BD8EC7641FBCD07A389FFBF78EC5C71362E640B1A76C206E20E9F80
          3A8D131DF5F326DB0A5E0A012F322C801816400C0B2086051063998073B7AE1A
          12F0FBED3FA87362296F9E98351477EDF50B2C40062C801816408C65023E9CFB
          C69000FE3B617DBE3FFD090B90818502AEC401D49166712C4097380A68F83BF9
          4D057C30FFF5BB0ED571B59904167080B80ACA851F4E5FFCB55110FFC3266258
          00312C801816400C0B20860510C302886101C4B000625800312C801816400C0B
          20860510C302886101C4B000625800312C801816400C0B20860510C302886101
          C43C011FBAC7AFF16C10970000000049454E44AE426082}
        ContentLeftMargin = 0
        ContentRightMargin = 0
        ContentTopMargin = 0
        ContentBottomMargin = 0
        Options.LeftMargin = 0
        Options.TopMargin = 0
        Options.RightMargin = 0
        Options.BottomMargin = 0
        Options.Stretch = True
        Options.StretchBorder = False
        Options.DrawOnlyBorder = False
        Options.DrawOnlyClient = False
        DrawStyle = idsTile
        VirtualWidth = 0
        VirtualHeight = 0
        TileOffsetX = 0
        TileOffsetY = 0
        Proportional = False
        Scaled = True
        PixelOffsetModeHighQuality = True
        InterpolationModeHighQuality = True
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D4948445200000060000000600806000000E29877
          3800000006624B474400FF00FF00FFA0BDA793000007414944415478DAED9D7B
          6C53551CC77FB7034D08F298BCB7812F1C7FF90743D03FFC0712864C81601002
          86902043C3238608613CB4C13F3426C44419F23026C48963E3B1B0CDC1180B26
          2A88624444022A90AD656C5DCBD6B5F7F6B6F79EE339A7ED2858D776BBEBB9B7
          3DDFE5F49CDE7B7BEFB9DFCF3DEF2E954088AB24DE19C87609009C2500709600
          C05902006709009C2500709600C059020067190660711B2EC118F663803CFADE
          86A0E078BEE4A0E9854E5C2049D0127BBC85F73B886BA53513A5065301587407
          B792283F665303B989525D02FA77805C68DE431FB1F2FED69A49D264B301C046
          9DCB0A22000CF14E00E8A70400CE1200384B00E02C0180B30400CE120038CB72
          007EFCFA18DC73B60DB62F8628377F22BCB8FCB53E8FB11C80FA8FF71875A9B4
          A864CBFA3EF70B00832C0180B30400CECA3800E70F1F038FC32A8DF024D2082F
          EEF318CB01C83409009C2500709600C05902006709009C2500709600C0590200
          6709009C653900E95C0F48663EBFAF7C89F500039468322D51BE326E324E0088
          AF8C9C0D4D6636B3AF7C89D9500B4800E02C0180B30400CEB21C80C11807A4D2
          DF4F255F621C908292ED6EA69AAF8CEB860A00F165E971402AFDFD54F225C601
          169000C05902006709009C653900965E0F88DC1A26B114F1BD26CF662D00D699
          8E26B78130BCBC692D608498F92C8E118550FBCC7001A02FA50C809A8C746238
          62E9B91BDF64C6472140ECED11000DCF8DB71600D3AE07545481A7C519363F02
          61D48471307D61317BDF5B0A626E8F9680C6179EB21600B3891A8B4241C0C120
          202D44D221C0BA0658D3088320C8FE56F0F96F4240768012EC8490E625DB5556
          106CD223A069F2558CF07509E34B1850B3C7537411EC76946A3EB21200351B05
          D530009A2631DD1654DDE0BE7701BABD7F30C371A4EAC1D112C06288B38D6D77
          90B822C7A6957B36363892CD4BD60160C6AB61F3599A9480A0DA0DAECEB3D0E5
          BB4CDA5F8D1C04710C4E0400473F474E8CBE4490B3B3E7DDDACE44F9C92A00D4
          703D1088181F0E5D5DBF41BBA7113424DFAFEB070620B20DB911C6EB7D9B4F55
          9A0200EFF5805EF3D530005D55A0CD5507DDFECBFF31D31800BDFBF7F78C746D
          80B597425C01F09C8E66D50D315F0F28C4F80068AA0FEEB457834FBD15D74C83
          01D0A1C5B73DCAD02560AF95B30E00D675D01599198F2880800C8E8E23E0576F
          FEAF9946030847B8C91F185102F6EA201700BCD60398F9CCF870B8EB3A095EE5
          4AB4E7924E002061B4CF5776E66D2E007888563D0C801236BFBBEB57B8DB5D1F
          DB754C2B009A20872C53CA1A8F643E00921D6ABEC600C810543CD0D27110345D
          E10A80C49E9C60A8B0C77EAE33A301DC7FFAC3E16E671DA97A7E7F78F0943480
          BA051FC0F3E30BD9B97F6ABB062527B6F717008DF7CADB9BD66534005DF6DF7F
          FAFD1D70DB7590DCB7D66F00ED6BAA1E38FF98BD8B070220887360AAB2B5A925
          2301B09E0F05400205E0729F817BCACFB106F00640076A1F293B9ACB3212001D
          6845CDD7FC3EB8DDB18F8C747B4C06003B956773A7642400667C0480BFFB2F70
          7655C6338037007AF1599907806483991FA982DC9EEFC023FF605600E6A9820C
          9B2BC208468FCD85E925734809F0439BAB1A7CC17F4C0900617CD434000C9BAA
          A02B582115E6AC59CE7A412D1D5F4050739B120079B9927900480F08340A6005
          AB826EB77F461A602521809AE2F760C6D8A98664E182F34F28AEDC9C1000099D
          A60160D85C1101306ADC68983E7F366B076EB67FC21659120170BCF195515630
          8DDC5D920C00D534008C121B0147C7000240FAD53B051181906C15747CEE0E98
          39AED0903C9C775E8579955BAC550519253A0AA6832FDA03A20044239C6E00A4
          17A413005AA414B4B9AA443734BD0470EF28588F0CC4DCFEEF4D0980BC6CCD3C
          00446CF52B02C1E7FD1B9C9EC3A6042021986924002F891EE36D3E55B4274401
          845843FC3968BAD75C00106E51F4979E3412C0091AF1369F8AB503D16A884D47
          3782C77FD154004803F0A1BCF3EC36C3002C70E2429B04E74972346F0054AC1A
          EA5D9069875BED07C0440B322AC6E8696547B3D3D0DF928CFCE4DF6E922C2661
          044F00ECFB9F0482D6BB24590B5EF972BF019C7C7517CC9A308D9DFB42DB3578
          65204B9280F7C8DB9A36D07365CD8F79E657ADCECDC1E83A31604C7F00C49A19
          EF33290070E70443D30C5F94B7829EA85CB58C78F40D4F0008F0EB4AD999EA68
          9EB20A00D5E4CA55FB88116B7900C008CAE56DA71FF82A5FD60180AA253953D0
          B0A308E145690650EF0FA88BC07E4ECB6E0044936A4B870DE90954230CF3D301
          0061A9CEAF0C593AA85FCEB59A8AF6970EED18AE7E4ABA836F0D260009E372AF
          1C78E7E1273FAAAC05105541C5CAA508A33DB1BD23430020EC22E75DE7DB72AA
          BAAFEB673D00AABC432B1FC7367D17A92B5613031F1D2000953CF50791A4BDEF
          DD74DA93E8DA02408CF20FADCCD321B41E7458418C2C480900E056ACE38A2118
          CADD9BEA9CC95E53008827BBDD3621FFC60C8CF5D9C4D822E270210979240C47
          61003E121C247D8334B1BFD834D4ECEE2ABAD49F7F53FD175BB5610310FDAB98
          0000000049454E44AE426082}
        ContentLeftMargin = 0
        ContentRightMargin = 0
        ContentTopMargin = 0
        ContentBottomMargin = 0
        Options.LeftMargin = 0
        Options.TopMargin = 0
        Options.RightMargin = 0
        Options.BottomMargin = 0
        Options.Stretch = True
        Options.StretchBorder = False
        Options.DrawOnlyBorder = False
        Options.DrawOnlyClient = False
        DrawStyle = idsTile
        VirtualWidth = 0
        VirtualHeight = 0
        TileOffsetX = 0
        TileOffsetY = 0
        Proportional = False
        Scaled = True
        PixelOffsetModeHighQuality = True
        InterpolationModeHighQuality = True
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D4948445200000060000000600806000000E29877
          3800000006624B474400FF00FF00FFA0BDA793000015564944415478DAED9D09
          7C1455B6C6BFEAEE6C249805089004D9944551360185272E33BE076E0F512322
          236E4F651C101D2088224190D5615130E29B51C485246C2288E8F804954D4218
          60100222CA9084005908D948BABB6ACEADEEEAAEB53B24D5E9F6C1E157DCAAEA
          EEF4EDFF77EE39F7DEEABACDE1B2794C1004EE8D373E6C3671E2A355F579FEFC
          F9F3A3274C9850CD719CD0D0F7E482FDA143C1E6BEF55692E00C1B43128CA2C3
          2393C78F19529FD7CD5AB0F44B2AAEE679EEE330A733232D6D6CE1C5BEF7252D
          C0AC254B5A58ECD6A944E1193A8C94CE1394B169E3C72CF1F5DAD7172C7D9E9E
          B748F0FA7E0D076E591D776146FA8B2F96D6B70E97AC007317BE335CE084B769
          B7B5FA31175461AEA52EE2F5B4B4272BE48FA5BFF9E615110EDB2B02848982A0
          7E9D78A2881E1B3375C2D84FEB538F4B4E80ECEC6CEBF1C292F9B4FB82DEE36E
          F870FF5FCA41F89417B83C0AF3B42B7403C70DA307E20DE07B8C17F805DDDAB7
          99949A9AEAF4559F4B4E80390B33E6D2A79EA4F7981CBEF29CF2BC3FF8EC5810
          5F21CC9D3671DC645FF5B9E40498BB20A3BF60C12EF567371BBEB863E107BC3A
          617C8EAFFA5C7202309BB32823978A3ED27100E0B33267DAA471FDFDD525A405
          28DC80665195E8CF59D08D2ADA85A270373A9D4C5B0C1DC75319ED7E6A157DE0
          322A2B692BA05E791E3138429E9E5713859CA47B502DFFBB731667BC4D84C678
          A19A0E9F154BD2D3C68DF5F719434E80F24CDCC80B1862B1E2763A1C40350C17
          6BE9AE29E7A7C61E2E8267ABA373BB041E5B2CC017B10FE387D98B3216D39F19
          E70B7EB3A808B44D6C89E631D1888C88A0F7E55067B7E37C45250A8ACEA2B2AA
          5AF61A257C57292C4A4F1BFF02FC58480850B212EDACC04858F1047DCE2E1270
          4E022FD59273EF1AD55A70E3548920088AFD136B8AD32E9CA9EDD0550F7EDC15
          31E876557BB44C8817A15B2C16DDB2B8F41CF61DCCC3D992321DF8ACE0B3A74F
          7EE1A19016A02C133DA9F8337DA691B0C02A02B778A1732AF8F2525D714DD490
          957201EC8E48BC5F300776215C039F81EF7465B22174BDF260DE31EC3D7088BA
          9D820CBEF8E695355C6DD2BCB4B40AF8B0A008702E1B7DA9A63329B60F61C0E5
          E0155E6F24824F058CE1B36D77D95DD85D7A97067EEF1E5DC4907331F0A5F2D7
          9385F8E6FB5DA208526E10F5E0306DC6E4F1AF858C0065EB10873A4CA73A3F27
          F7784EEDF5D231FC88A0677AF0DDC7C7CFF7C4A6C2A769D7FB471AEAF9EA72FF
          8F47B073CF3E2F7C573C74F2BC70DFEBAFBCB821E8029C5B890728C62F21D8AD
          45E072F01619648BB6158815E5B88B6A019E5E0A15358E18EC393304FB4A6ED3
          C067317FE00DD76BA03AC87DD7ED2BC1E643653876A65A3C7775AB48DCDD3311
          0FF66B8BC830ABE2F91C956B377E8553A78B25F852C9D3B878A1CD8E39E9E913
          8A9B5C00611322CE55601ED56F9C045D1240137E142D81538AE02F01CBE15371
          ACAC377E2AEB8B2A7B2C0A2B3B2AC04BF099DDD8E75A4DC22DAE72E285D5BFE0
          2881979EC8C99A54F736D178E7B19E681317A578DDA9D367B16AC39772F862E9
          EE6D39697727ED9CE2793E6BCEB4496B022E00C5FA8E54AC21B0BD155E2F2F15
          02C8A04B8F49B5948BA057734156D07F9B7F7E1C474AFBC15F57F3F641FD349E
          FFF88A9F0CE173D49F056DDDDB46237BDC204486DB14AF5F9EB90EA5E7CAD5F0
          95A5207C4C028C0AA800A599E84175DA4CA09339AB16BC3C0489E0E549582F21
          4359EAF297C5FB8F0EBC8CB355C986F0D9F9CEED53704D974E8AF093955B8C37
          BECEF7099F736FAF0EEF8151833B2B5EBF75C76EECF9C74143F8822B51EF9F97
          9ED62B60029465E31662B89E627EAC1E7C6FC969C38F2A07188A60646EC0EFEC
          9A836A7B7343F8CC7A5DDB15ED53DA2A3C78F40747F06361955FF81CCFA35787
          78AC9A70BBE2F53F52B7F4F3AFB7FA82CFF68BE64F4F6B1B1001DCF03713FC48
          057CAB3E7CCE8F0086A3601F49987DD8C5DF2FA62E88CD103EB38137F44462CB
          0485070F9AB7173576DE2F7C761C1D4EBD9F450F285EFFCBBFF291B96E932FF8
          ACAC7DE3B5C991A60B509A8DEB88F3B7043FDE035F258202BC2A0FC893B0C7FB
          8106B580C5DF2E82C31966089F9D63BD9FB6AD5B293C78E0DC5C5CB03BFDC267
          FBCD232CD8F7E608C5EB99002BD76EF4059F9DADF9CB6B2F353355009670E9EF
          6FB758D1560DDFEBFD9CB635703231F4C28EDCFBD5B5958ED597C4E938E3FBD9
          A8AABDC2E7C4DA0D3DAF418776490A0F1EF5B78338985FE1173E479D9ADE1D13
          B07ACADD8AD7EF3B78181BBEDCE20B3E2B4F2D983125C934015857B3BC023B08
          6C1FCE6600DFCA19E4016893AE45059D8332FEF8980B92EC83ED2FE14C45B221
          7C665D3A5D895E3DBA293C3833E734667F7ECC2F7C8E7762DAC801187D470FC5
          EBBFDAB21DBB72FFE10B3E3BDEBF70E614F392F0B94C2C25F07F143DDF03DC00
          BE248C3A04E9F67E386DFF5F2F0FE84C436CDC371A870AFB19C26716DD2C0A77
          DF3158E1C114FEF1C83B7B915758EE137EF794387C3A6D18C2C36C8AD72F5AB6
          1C65E7CEFB82CF6AF2D1C2992FFFC11401D80897E0AFF200D788C0C9E23F1421
          4833F8F2EC738DEE861E3DD50B870BFBA0BA3606F9659DC1F316E5F3DD6AFC7E
          F08D68DDAA8502E2D98A3A8C793F17470ACA0DE1FFEDC521689B10A378DD8993
          0578EF933546F09DB4BB8D76CFF0E0B316BFFE4AE30762251FE10A4B38F23C71
          5F258218F335A1083EA62174C09B30175453178D5D3FDD819C5F6EA7739CE262
          4ACB84380CFDDDCD9AB91D07715FBDEB0436EC39899F0ACA44F8DD926271EF80
          8E18795B778DE7B3A98865CB5722BFB0480D9FA77241AD037396CE9E52A2AE6E
          A30450871E057C99E76B93B10CBEC5EDF1EAEEA7FC98FD81C8FEE0226F8510DE
          075C58573A45DD682EC60DBB12701642B01F0557B717C2054A821776D303BC57
          08DA3D56D4036B729EA2636F6B6090FA5C7F0D7AD298A0A113716CFB6E670EC5
          FF6D6AF84EC23F6CC1CC291B8D1836580036A54CEFFF0341B52AC14BFB9C7E3E
          50C397BC5E2F14D9DA01CDC710E747E86F265F5C051DF910AA3E062A32C47D51
          0812615BDE106C3B72A707BEE07EABDBFE63003A7768D720F8878E1C13BB9E3C
          852B45D8A1C1F282992FCDF055CD860B9085CDE4FDFF65E4FD1ACFB7EAC3F74C
          3DC83DDED60A887B8DC08FA6E3F08656D165421D3590F7A9C2D3488862D4D923
          F1D6173350EB08575CC1626FDBBFCFF5E84DADC1525F1168FB9E3CFFEF5BB76B
          E10B42A5ADD69A346F5E002EC894AD446F8B0DB91C9B91B541E1FD62E8B1AABC
          5E330A3680CFCA98878184C5B49FD038F06AE329FC968E2331B2B076E71394A0
          7BEA5C4614D026B12506F5EF8394A4363EE1B384FB25851C9D982FB5AC550B67
          4C49F557AD060940DEBF96C0DFC729C0BB85B0F9F07E23F86249A3D68425E09A
          3F692E78950915EFE2AB6FB620E7A7411AF8EE4311626CF3E6B8AAE39548A41E
          12EBAE32E8EC42FCE9B32538FAF3719496F9EE6A52EC5FBC68D6CBE34D17808D
          78E945C748008B3FEF3782AF6D0D342A4FCC061755AF2F2537DA366DFE10B907
          CB0DE11BCCE7FB9B5E501E0BC2DB8B67BDF29CE9029467E255D8305D1CF1AA63
          BFDBFB35E301396C961FE461C74A9E9FB8AEC9E033FBEB87593855742690F0D9
          CE9EC5B3A7F6335D006A01ACDFDF1532015C62A8BCDF06CDE8570C3DEA298816
          CB021E76E45670EA34DEFB283BA0F0DD9BC07318B474F6AB3B4D13807D698A60
          EE5478BF0DCA9E8F0DDA6EA781005CF39134125AD164F099FDDF773BB0FD87DC
          40C397CECD5D3A6F9A795FCE2DCBC474EAFDBCEA11C0A6EAF7DB7462BF1E7CF1
          F116E0927FA4B265930AC0E0B06EE3CE9CBD7EE1478655A37BEB7FA24574310D
          F4049CA9688943A7AF45755D945FF83CF83712A390969E9ECE9B26407936BE23
          A037AB0510C38FCD47F2B5CA0490CEB7C8A016F03F4D0A5F6E79477FC686AFB6
          A0B2B24A039F237C83AEDE829BAFFE0611965A710007A778591D176A23B0F5E7
          5BF1DD2F8375E14759AAEB2A1C910F66CC4BFFAC3EF5A8B700EC8BB2D1352825
          E8118ADE8F4DE9FD9A31803AF1B2F36129E4FD471B3FC86AA4D5D45CC0B73B77
          2327F700EA1C768FE7DFD56B1DFA77DA297ABD089F77C1679B24C4CE5F6FC267
          797779C0DBB83AF44FCCC12DADBFAD75586BE2DBA5A2C6540168F0752B859F2D
          2268396C9B37FE2BCECBBD5D2D40FC2C70B193EAFBD601B70A6A053FECC8C0FE
          BC73488829C6E89BFFEAF67AC1EBFDB25620385CE57BB9A3515C99805E89FB08
          FE6EC4582AC5C768507C4BFC43142DCC1480065FCF12BC0CDDF86F3310407E19
          D2738E469329C72964A5049BBBD29C05E04F7686DD6E411879B30BBAE0F27A5E
          5F80DADA30840976763F92E79CBB7C3AEE21FCAFA902500F6821C2305E11FB6D
          3AF15FEA7E1A797FD44DE0DA7C1F6CDCBA26140DA4B8B45B05DDD50A3CE71CB2
          7024EE6BE08334F94BDC084C305500EAFF6F2280433509D8A6ED7E2AE78094C9
          978B7F09889B51DFB76D5A3BF73284B2B9CAB0236F054E357C065D50C26721C8
          898DF1A9B8C75C01B270C01286EB14B0F512B0EA9AB028805C90C4D5E09A0D0B
          366A5D13AAD600671F520017059009C2002B4391B70548A2F076ECA710D4CB5C
          01B2F12B25E1F63E7B403679E8518520A90524EFA75ED0B5C166AD6F75FF8450
          D85B9578550228BC5F2580D4021C381E978ACEA60A40638012029DA081AD9780
          75BAA09E73579E317FAAD92C73164338D9C61B6EE402F0CA6EA8A00A410A511C
          288E4D452BB305A825C8E11725809403E4BDA2F6D541EFFF1B9A4083AE13D19E
          04EC0941F290543F016A4980C8FABC651004A8A2FF22828DDA40801A12A079C8
          0A604E086A5740E75AD7F76D9BD69C45148252423304999684DBD21820E2A660
          A3D6B7DA1D104E0D0ECD246C5A37B4C55270CD9F09366A5D132A960125CF856C
          37D49C8158F354A0E527C166AD6FC5234884D5A13910336D2AC296002E253FF4
          7A42ECEB2BF9C904B62C44A7224C9B8CA32D712D8D86EF0D367225FFEAF5C099
          FB95136F7E26E398F76BCF0568324EBCF385C35633A6A3B9664349840DF57DEB
          A6B133F790085FE87ABFD174B4E4FD8AF3B4391D189CF030EA35E3189C0B32EC
          EB8749394078EF60637759DD0108857D5D5F53D11340E7828C510F88B60BE781
          04D32FC830A330F42D811E6CC625492EA6E92FC81B5AF11F2054AE344EBE72EF
          57C77F75F871E01B0A3FBFABEF5B5FDC45F99548A7AEE834532ECAD3A0824B3E
          44C2750A2E7CC7710805D7889D770570DE20FCC8BC5F2FFED3B9A9B10F616640
          04285F8901E4E9BB7ECB5F4BD118F3FE8A95DE50A3079F87B6FBE9548D802521
          04DC4083B0DC8008C0CCDC2F66D171D22ECA057D8303BF6E3FC5FE7EE2455CBF
          0238D47940D07449A9FF7F98E05F733155B8F8AF26AEC4541A0FBC66D65713B9
          66B7026DBE0E8E00A78740A8FADA73038726F1EACD01C9E77F3461095328FECF
          0EA80094073A500BF8D9D42FE7B6D90C2EEAF74DCA5EA8F93B50345403DBE3FD
          46C957167E54BD1F6A00E898908A7F055400661486D610DCE1A67D3D3DB22725
          E41C78EE4F0DB851C829BC9144D8EB860E772B3080AF1803081A51DC2D209BBC
          DFEF1265A6084083B25EC470AFA93768B45EE1EA9A368109151F433833DA377C
          F9F4833FEF77D29F7052F21D81BD4D220033CFE49C55271734E416A5884EB0B4
          3BE4CEDE81A44FB1E224E5C9DAE3BAF0A57BC974BDDFA913FB5D097803753D1B
          34B7D26001DCB729E59879931ED76685AB6B1A48FECCFB8B46BBC01AC1977B3D
          EF850F4D2E103787D38EBE092371A049051045C8C45B24C29FCCBA4DD512791D
          B8F67B1B5B2D5FF8219CE807FEC23E37701FF0659EEF3A67E0FD4E2C24EF7FB1
          A1356AF48DDAB6701C26C04966DDA86D49D940B9606860F0577E013EFF1ED1EB
          E5F70FABE16B44E0F5E1D356444FE9463D9FF2A008C08C5AC170EA96AE316BA9
          02EE8A6124C29A8008C0E70F87707EBD37FC48E0A571806C2A42E3F9DAF18040
          FDCEFBE247607D63EA644A5B5787A2462DD6610987AD6B213D2FDE5CFACE5238
          8E2413C83AAFD74B2D4082AE997E100CF20158E25D143B027E97266E1201DCCB
          D56C27E07DCD58AEC6D23E1396D8074DE5CF9767813F31D20B5E3EFAD52BE5F0
          55D784A9DC130B0CE2525117120230738F90B77BF2819E08F55CB0C9DAEA5958
          92979A2B40C173709E7DC7137A3CB0F5E23F6F00DFE5FD05B43BF06247BC0117
          80195B29D16A116F636AD492655CCC40D8BA98FB1576C7D1419484772981AB42
          90045F731DC01BFFCBC59B2F4660BF59F5327FD1BE2C0C26A09B0976945EE2AD
          CFA27D96F036B0F52C305780FD4914FE4F2B7B3D8212BCEE28D8EBF935B4FB9F
          E4F9DBCCAC57403ADCE2EDAC166C24EF6FA11041531A2C5B698D4078BFEAC654
          41637539CD0862AD46005DF8F2C4ECF2FC734E27EEADEF75DEA00BC0ACE4135C
          6BB5890BB7A6E889E06FE1D68881CEC6BCBDC66A7758BD61470E5ED60AF4E053
          C83945C743CD0C3B4D220033969809F26AB17764D40A0C962E8E1C6CAE0017BE
          B3CAFAFE8257041FBD21122087E7F080590957CF022A00336119C2CAE3308380
          4F025BEDC52001AB0765E3D7BEE05E938746C79CAB141F2062E23AFDE49A6C8D
          1E5EE0BDFBEE4DEF78F9532BF4075F7A630117FC77632D186B465733A8024846
          ADE13ECA094B8969DBFA2C5FFFFCA7E33D0230D538CFD289EE9BA2794105DF2D
          8AA02FC2078FAF504E3DE84D43B8CA427AFA1F1B3BC20D39019815AD40746404
          A612CF3F13689BAF1F7078FEB3E7490009BEEB01377E119A0B3E13C30D5FD06F
          01D2F9E58F7EA8CC01DAEEA8839EF6366FC7D416A370BEA99834A90092B10B3A
          EC274CC8C1EF849BAF7A34FCFCE7635DF09908EC9F67E156F9FA0CBC58BA400B
          4AF86E812421963FF2A17614EC2AD94F2C6CA45ECE2B0D9D52FECD0920195B6B
          9AE33151EF477C267EF50CEC7CB8CCFB950248A148F27E454852C18FB0D522E3
          FE2C3578B622E826CE89E9710F634FB018045500C94A3E428AC586FBC9E11F27
          D63D59AD666E1B89B3D5AE5FB6F07ABF2B0831D3AC50228217340230715A479F
          C3AC211BA416904709368B845F11F7088E07FBB387840072A3415C3F02352463
          DF9D7F3A5CDA2191D3FC6C865700C80490E06B421209707D62FEE9F183B62E11
          387C71315F9A6A0A0B3901241BF5C4B3A9E4F85992009CA7BADA950E05197C65
          5276954EDEF9E0FA5599AB83FD99F42C640578FAE9A7C3AAED3844F1E72AFD75
          A26542783609BA6C9FE78FDB60EFBE6AD5AA80F6E71B6A212B00B3918F3D359C
          AAB8462702E9C0570A2125654AB6C3D6ADFEA449FAF40DB1901680D9C8479F9C
          4FB027E82D55EF59A110F264ECCE07227C7EEEBAD599931BF2BE4D65212F407A
          7ABAE5F0B15FE750289AE86900522B50C087675CE016625EAF1E5D5FF2B7665B
          B02DE405902C75D463C3882CFB2DF8ABE43F4BE2F95104EF7A9DC704C13961DD
          EAAC900D3B72FBCD08C08C25E6D2CA1A1202FF4DACD93D4529EE41593EC1CFA5
          98FF69EBF82BD6BFFBEEBBF660D7B5BEF69B12E0FFA35D1620C876598020DB65
          01826C970508B25D1620C8F66F7C358E42608C85C10000000049454E44AE4260
          82}
        ContentLeftMargin = 0
        ContentRightMargin = 0
        ContentTopMargin = 0
        ContentBottomMargin = 0
        Options.LeftMargin = 0
        Options.TopMargin = 0
        Options.RightMargin = 0
        Options.BottomMargin = 0
        Options.Stretch = True
        Options.StretchBorder = False
        Options.DrawOnlyBorder = False
        Options.DrawOnlyClient = False
        DrawStyle = idsTile
        VirtualWidth = 0
        VirtualHeight = 0
        TileOffsetX = 0
        TileOffsetY = 0
        Proportional = False
        Scaled = True
        PixelOffsetModeHighQuality = True
        InterpolationModeHighQuality = True
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D494844520000006400000064080600000070E295
          5400000006624B474400FF00FF00FFA0BDA793000012294944415478DAED9D09
          7C13551EC77F3393A4479A1E492BA407880802E55A05515651CED282B2202008
          B88B5C2B202028D78A1644AE72C8A51CA2CBB562390A05DA021544440E298252
          29C88D4D4BDB246DD3A44D9B64F64D0A28256993C9D1D04F7E9F4F3B49E65DF9
          7FF3E6FDDF316F2878E551A26ABB005E3D282F100F93178887C90BC4C3E405E2
          61F202F13079817898BC403C4C5E201E262F100F93178883521E088F1232EC32
          16E8C1BD27C76F699A9A1ED84571894F7A5E2076AA285D7E9C1C4C41DD725EE4
          600818F61C792FAD124C6D30526D64318ADBF6A6FF4800C9641345C1EA80F614
          8B16E4ED53A4D8CDC8B101F91393BF90BB474E5ACE18DC9165D99BA0A82C0AEC
          65164C66A1B4E84C3435B0DCD1B21020C7C88125403A15A7CB77901AF19A65C3
          52DB03BB2906DA9BBEC7025114EC6B0E9AE943AE019DC9DB17C89FBF834972B0
          7E6029F6086562F68487C664395A4602A7981C24564E17136841F6A6E9514014
          C57B43D97266304551C3C8DBF62ECEEE34CB529B5991E0EBC8C06E4A3E09540F
          842A0AEAA608B6374D8F009297B7BFBE916626915FEF3B70BC26D827167A6285
          8D2CE8B911B218BBAEF985E9F22462C07F583C495189415D15AFDB5B9C5A0592
          9B7BE03193909D4BACF24FF256549B6521E2DA97AF28113B4B2E89CBB72542F1
          E1F0A758137B0295EDD85FA53430745B59E7EC3FEC2D44AD0061D9783A57F9EC
          5096A29690B7A1B551866A4C5248FEC5CBA5C5AB286AA0B1A6D0956E2F96B060
          632AA35369069A9AC2078639BABBBFEEEDBCB4271986DD4A5E3EEBEEBCED11F1
          9E4E0A18E3907AC1BDAFB9335FB7025114A4F625BFA02FC9D7B5BBB1AB251593
          5FFEE80859DC37EECAD02D40583691C9554B96B12CDE71D71773AEA84FE5D293
          53282ADEE4F29C5C9D81B953A7926C2619D9DD49F22851D46E7D91CFE0468D3A
          97D51474C1CE6EBD48F8B5E0AE7C14357A7ADF83A93667E3CAEF909FBF47524E
          8B76934CBAB8C1642E17F91EDF0A4CE57DC3C2FA68AA0BB7605777CE7D8EBC1B
          E7F6B47E871AD891876BC4D58C1095642FEE0EBAD5195138A20D61639B50717A
          6B413C0E08E7D6E6A83A6C232F07B8DB5E6E11B97CC9438AFB5B738B1724F588
          254658478CCB9A601A3DA3DFB7693627ED8AF2E6A85257F069C08D1546ECDC90
          8A130733505850E48AA2D9A490D0603C1FF334FABD150B867432AC6859B82C76
          B2B3F3763A901C65EA00E2C327F289BB7DED3E1CDA7E0C7D870D42BD70B9B38B
          66B372B315D8BDE51B741FF022068CE96D3D208BD7C243637739336FA702B953
          98D2D868A432C84BBB4739394DEE3707DD5EED8DE113DF7666B178E9ABE59F23
          3D791F96EEFAB09A505421C3189E7166E7D16940EEB61BDCB80EEF1EF8F04E93
          F1CEACA988EDDFC759C5E2ADD41D7BB0F2E345F8EAFBA5D58623063C515F7AEA
          0567F5519C0684B41B6349BBB1DA91341E452095624787CBE2D63B235FA700A9
          1CB53571133E218EA4F3E802818A12B1CD6C1D25AE4E4E01A250A6AD23BF9251
          8EA6F3280191F83585D8B721B46537A129BD4C2ED9F82C2234769CA3F93A0CE4
          0F654A240DEA2A9C309F5115C8A83E83907DE3CF39A3888651589FBCADF2DCAB
          E4DCCDEAE793AC85AF2E9DA9F33FC2CB713D6A04523FA43BE98E30048401B9EA
          74F344971186C651A1AF643B62038781F0ED7358D2A359436E901AF2FBBD8F1D
          EE9B3804849B034785E0269C34EDFA2801B122AD49286CC8778E9E934340B20B
          52DEA1286A85B38C50078090CB18C6C9A5B19FF1CDD7B11AA24C3D0D27AE0EA9
          0B40B899C60859ECF37CF3E50DC4BC6E8A627E73A611EA02104EAC09CD22C262
          DDBB945451903A83C49EE74C2338DBCBE2235BBDACEA442E5B53C9652B814FFE
          FC8128530E92E8DD9D698CBA5243885D52C3653DE3F8E4CB0BC8DDC92715FE5C
          53EB14D51D20D0AAA51A299FB5C4BC80642B0F74A4603AEE6C23D42120A0C13E
          5F5F1677D2DE78BC802854A9A3893BB1D6D946A84B4088B73592785B1BEC8DC7
          0F8832955B71E8F4D9B23A06248100996A6F3CBE40F691432F671BC1D55ED63D
          0FEAC8FE83489839BBDA308E02219E5632F1B4ECFE65F105F20B39B4E255D26A
          54976A08D1F970596C5B7B23F10572831C1A3ADB08750CC87502E4097B23F105
          C20D9E49F9C4AD4E750C48010112666F24BE40B84562E6F90F86F64390B82544
          8260941B0A51A4FD1546538DAB2D2DAA4E0161A10F0F8DF5B5379AC340A492F6
          F011CAEE9FD35728A1D2FCC4EB3B788138E192756FE6EC7E39EECDA0F1505D19
          CBBA2BB75EB26EE06EA3EEAD2156E5D646FDBEDBFB601BA2266DC8056F1B5229
          B7BABD6EE918D6A61EB18E61CA6212758AB38D50A780B0EC227968DC34BBE3F1
          C98C001945A2AE73B611EA121016EC880859DC97F6C6F3E8E1774F5E975593DC
          3AFCEE9DA0AA512572699894A2DA55D81BD16E20ECE9415106865AC66D0CC382
          1294FBCAA10D79064661A0C346A84340528887C5CBE9B10B881986803A472E90
          0F8C639968110AC35F8151E05885A92B4028B0EFCB65718BF9E46B17908A8CC1
          3B60657F28BDB8218AC35E72C808750588DB9601112056B7236269210A1A0C76
          C80875010877038F5C16DB916FBE4E0422224006598C57DB3773CA1E0B4597DE
          3D316CEC480884429BE2FC1588C964C2D5CC9BB87CFE1AB2AFE7415D500CBD4E
          4FD26220090A40BD28291AB76C88E67F6B0271A0EF58B934EE73BE65B5174812
          ACEC0FA5173F4E2E599D2CC6ABED9B392B6FE24CC43F860EB4F9FEC57B40FA0C
          8FC1F7FB4E439DAF869FBF1FC21B4411C06108968640A7D3419D57805C450E94
          79F91088841007F8A717ABD553D22E5CFA854F59ED0252F6D3D0A718DAF8D0FE
          5026C6A7B251672C2F82F7849B39B99B380FEF4BC3E6437B6A0C6B341A913063
          0E4E7CF73DB777A2B97675ECF212DA3CFB348422CBB7C1DCB87215270F1FC3A1
          E4FDC8F943C14A249224AD563931F5972B766DD3C4CFED15504B88A765DE1FCA
          C4888E12183D8D8CD8EAB5C013DA86B49DC95831672152CE57DF9FD59568B170
          7A3CCE1C3F89BF777B1923268D43BD08394A3425389A9E8CDF2EFE641E3C35B1
          5C17838648E087E0A07A88891D8CA8468D6030187068F73E6CF97C03ABD56874
          E5FAB2570E645E3AE2322096A450A6AE218731D6CE8F8BFD0083470FC76BFF7A
          C34DE67F58C70E1CC6FCA9B3B0F3C743F0135BAEC939B7B3F1E1F8F7A0292CC2
          CCC573D1BAFD3350DCBE8D8D5F2E042B2C42A3D632C822031E8A57A6ADC0B573
          F9502B8CE8F4623F74EDD907C5248D79EF7D80CCB33F9B185A3866EFB9735FD8
          524EA700F9A3385D46575470377D5ADC1DEEE331CB11D9E0494C5F34C76D00AA
          2AEB974C4C1E361A4BB7AC47B3562D1E3A5F52ACC1BBC346994D3267D512D427
          B562FD9A05509564A175E748D280D336E573FBA212B7CE9761E29445080C09C1
          EA4F16E360D23E9654ABDE69172FA6D414DF69B7452B5469FF06CB5AF42EF66F
          F9167B37A5E38BBD89668FA736C4B50B43BABE8AEEAFC662C4E4F10F9C33998C
          889F300D9708B4655BBE80342C144BE64D46A30E428446563A954693013A4331
          4A8D1AF2BA82FC19415314184A081F813FFC058110317E95618957F9E3AE1B18
          F4C6FB6811DD1673DE9D8E8CE3A7F415FA8A76072F5EBCE01620DCC6010A5587
          E324C1E7AA9ED3694B317DF002348D6E81D9AB1240D30C9F2C1CD6A655EBB067
          6B2256256E843C2AE2FEE7DC67EB17AFC2BC759FA2D5337FC3271F8E43740F09
          716145D01BCB50A8CF4549B99A1BC1AD367D0E48886F7D488421DC5DB9F871E7
          558C1EB300526918260D1D493CB1BC8B49A732A201EB0939756B0D857A7F4398
          E8B3B0B044E8B73397B1F4FD7568D3A13D26C54F4768BDC7DCCD03A5BA524C18
          3CDC6C8EF89509E651DF52AD0E237A0FC4739D3B61C287D3B0EEB34F10D020CF
          DC56A8CBEE90BF9C1A4154959F50827A7E0D41B142FCB0ED263EFC78032E675E
          C4B4B7C6925AC50C4ABD70C1EA96812ED87C26A53F0B6ABBA5731C94B51F6F45
          99AE1CCFBED4114D5B34875812606F160EE94E4E2EB66FD80C46202035B639CA
          F57ADCBA76031BF625A2BCA20C9BFE37136DBB452157771DDA0AEB9DD80B3B4B
          D1A4BB0F7C022DB72D0C2D40B8B8092A8A29A8B36418F1F60CE2304C4166C6F9
          1CE1E31951DBB7C3E2D64E2ED99E49A14C5B467E86932C9D2BD596E1C8EE1F71
          F6D8AFC8BD95076D49A9EB2954231F5F1F74EED5D35C3BE6CF1E8F36B112E495
          5F37B717D5E9D8220D5A0FF1475084F5CB2F43091011D0143FEFCFC1C47756E3
          D6F59B983AFC6D982836E6D085AC8396E2B86C0333D29E7CEDE9FB2CFEFEEB75
          CC1BB71273562F45B3362DB162E5BFF144175FA8CA1435C6B50508271FC61721
          864628BFDD1803878EC1902EAFB0E432F9E5DE9FCF8FB414DED55BFC25939731
          2EB62B6F71DEDFFE2D87B1ED682A0EECDB01B5F0384A24376C6A336C05C249EA
          2BC7D53406FF895F874F3F9A87E3E9DF65EF3AF553A4A5B02EDF04D3408B92C8
          D7EBEACA7CF86AFDDCAF917F5B83E5DBBEC4E2059351AF531E34E52A9BE2DA03
          8434E4C83D1C88F8D95B91B4791BBE58BC92A5F4E57EA957AE3CB46FA35BB689
          95AA241B0994418EA7E65C2D9CB806928050E28A2FC6C2796311D8F1A6CD1E95
          3D4038A94E0563D2DB6BF1F389D3E61103CAC8364ACBCABA51359C9B3652366F
          6EC6CDA0BDEB8EFC6CD59C512BD0A4794B4C9A3D13F33F791B417FBFF95098CC
          5DA5505D333CF47949AE11FE521AB4E84113725DACF6A302200A78F0F3C20BFE
          18D66B090A556AB3FBCB9AD0CA5227D1AD5B8D6717A4F5A128F62B38B8AF96B3
          346FEC6AD40B6F8899097391B0E05D889F7B7892AFACC8047DF1C3B5E6EC262D
          9EEAE90BF1630FD610E2ED22A03EC32D947B40F967FC31FECD35B872310BB327
          7077BAD14D0E64665EA99AAEDB37E3CF2D3CD088359AB692AFC87BFB096769E5
          8C8DD06B59246C5C83E50933216C7FCEE6B8F65EB2EE1C0DC647B336E3C0CEBD
          5839771104B440BAFFD75FD555C3D5D2E32A582A57993A8C7420179312D8BD42
          DC594AFC6C2F4E1FBE609E23D9B47E39D4116910FADB6612BBDB90A351F8E0A3
          B5F8EF8ACFB167EB379AE48CF31697E9D4EA035D2A1F7124984D0A318294C4C7
          DDF99F397A1EAB676DC4673B374328146243D24484B6D5DB14D71E20A60A163E
          975EC6A8F1D3307EC09BDC0CE3C1A453672C76073CE29147DC9E8D46A1692C55
          D9E83BBEC0CB46E934A598D8371E6F8C1A8E41A3FF8539B34621B4AB6D1BC2D9
          03A4E09C086FC4CC87243018C3E35EE33CB9310733B32C2EC5F50820F774BB28
          4D2AA8C06013C50EB5346AEC4C71AB43C8BF2D13FBCCEEEB2F0EE8B676F7D738
          7EE45BFC786B15821AD7F8601DFCB04483366FF84322AF1E084B92D29D88C6FB
          1F2460D3EA7548DCB0A5C26434D5270DBAC50E8F4B8138F2D8863FF2F7376518
          BA0FCB9A9FACC03D36CFD151C812F2758F51301D3618057BA21EEB61DE972FAE
          55B35646963E3F6EC614AAD7EBFD3077D6380477BA065A58BD69CA4B5808C5D4
          43DE5455DD391E80914316422C0EC488DEFD599AA697EFFEE9AC55F7DFB5401C
          784AC05FC5B26784D9AAFC7634A86852DD9BD2149E22A0B83BB8B8D923EE693D
          F76011A3837B86948618EAA68905E7C75E62C066D693FA9DA1A8CE064BE9F7EB
          D06EBB50247A6D4DD2FF28A3C180254B2641DE4359A3B16B52E1EF22B40A791D
          AFF41F8CA5B3E6E2FB03E93A8D898AF8EEDCB9C2471A88AB15DBFAC9488120E0
          B766AD5B4AE6AE5986DFB37EC3D66F16A0FECB85E03B975678598448BA0BDE1C
          390129DB77631571757D7C7CC6249F3D57ED6D1CAE05E2C0631BDCAD1ECD9B77
          6284CCE1EE7D7A3113664D458E221B6B56C523A883027E21B69B896B33F24E06
          E0F95603D1F3D5FE387BE2143E1AF71EEBE3E7FB5FE259BD55537C8F6AD46B5B
          BD5AB71E613419D73FDBA92335757E3CA91D0CBED9B41657734F22B0B51A7EC1
          D6CDC5B9B6059942F8163D8121FF9C88A8C71B996BC6E7F39710183E3FDC32A0
          6B4646468DB72778815451CFE6CDE3185FE14E796484EFB8FFBC87D6ED9E46B1
          BA1007539270F5FA79680D05A07DF4A0C4E5408510468D003E7410C2821F4797
          1E7DF164B36650E52BCD1DC0F4E414F807047C75CB601A630B0C4E5E2016141B
          1DDDC237C07787AE44D7BCDD8BCF63E05B6FA245DB96F71767704B8654052A88
          03C408090DB9FF799E22176949C948DAF4354B544A7CB0776B6A33AACA0BC4BA
          A898162D06F889FD3E2DD5E9E44121C16C87975EA01E6FD218B2B0500487CA50
          AAD54279271F77727290F1C3495CBDF43B37576F100885AB8A0DA6D9D5795356
          33ADED6FEDE91A30004CE1C5665D7D85A28142914F4F9D561BCE8DC5FD358C8F
          AF4843209C2CD194EC10D2C2ED96060D6D9517889D1A101D2D2A620C11B40912
          9615E8C8472A6BBD6E3EF202F13079817898BC403C4C5E201E262F100FD3FF01
          9CA476DDEAB02D2A0000000049454E44AE426082}
        ContentLeftMargin = 0
        ContentRightMargin = 0
        ContentTopMargin = 0
        ContentBottomMargin = 0
        Options.LeftMargin = 0
        Options.TopMargin = 0
        Options.RightMargin = 0
        Options.BottomMargin = 0
        Options.Stretch = True
        Options.StretchBorder = False
        Options.DrawOnlyBorder = False
        Options.DrawOnlyClient = False
        DrawStyle = idsTile
        VirtualWidth = 0
        VirtualHeight = 0
        TileOffsetX = 0
        TileOffsetY = 0
        Proportional = False
        Scaled = True
        PixelOffsetModeHighQuality = True
        InterpolationModeHighQuality = True
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D4948445200000060000000600806000000E29877
          3800000006624B474400FF00FF00FFA0BDA79300001D134944415478DAED5D79
          7455D5D5DFF7DE372479195EE691246464260C41191451846A5B67ADA81542AD
          B60594C9B6DFB0BEC51FDF5A6D2D8340B0552B0928D56A9DAD55411C9821C81C
          8610C89C90797849DE78EFB7F77943DE98BC09927EF5B716E4BEF7EE70CEDEE7
          ECE9ECB32F07DF6358C10D7703FEDDF13D038619FF120C285EB62356CF49FF25
          81740F7E1C8DFF780FA78AF8EF2AF6EA63A5C8FFEFF26D8BDB86BBED4361C433
          60CB8AEDF10689FB160FC7F87869A5498439BF7EA9A869B8FB3018463C0336AE
          28D92949F0533FBBF7C69AE2257E5E7B6330A219F0FBA75F8E922B95CD20490A
          6A69CEDC0250672600C7799040C8A9AE8636A8D8F31D48A2489718406E4A5ABD
          E9A9F6E1EE8B278C68066C58B6FD4748ED8FE9382C3612C6DF33CBABEB2A7697
          41675D2B3B9600EE5F5B5CF4C170F7C513463403D62FDBBE9EE3B835749C383E
          13D26778A7061A4F5F81BAE397D831CF712FAEDABA64D570F7C51346340336AD
          DC592E1A4D63E93877FE54508F4AF0EA3A4D4B279CFFE4303B1604FEC2CACD8B
          C70E775F3C61C432C02CFF15ED284378144330F5B13B4050C8BCBA56924438B1
          6B2F980C46EC202729242E7EA49AA42396011B9697A2CD2F7D48C72A94FFE3BC
          94FF56D8EB014E92EE5BBD6DE987C3DD2777082A03B6AC7823D200C6259224CD
          C41BE3B8E5769B42F8B79E5FFF64AFAFF7DAB4A2749328492BE9386942268C2A
          F4CD0D683C7315EACA2E9A3BC9C3E6D55B8A56FADA86979F7E394CA3543C8AB3
          7081C4F4391C36EAF5A5BF7DE599AE60D12C680CD8B062C714B4FDDE05B3A73A
          F0008E6B16415CB976EBD2377DB9DF8BCFED386F32898CEA83C9FF10050F5ABD
          E8F2BDBD1E9029E5579EDBF044B62FCFDFB8ACF411D4E09B519C2539FC204195
          24700FADDDB2E47830E816140610F1B1A1BBF166B19ECEE105E19051D23FFDFC
          96A7CE0E75BF4D2B4BD4A209DABC91FF53B222A0BA450BED3D06473A39E90190
          1BE3BCF107362CDB91C7CBB99751F9DF36C8695D383B173EBF6DE99140691730
          03D63F5B3A8D13A5DD78184D9F05A51CC5453E4E061403A72A40DFABB37F1A0D
          D52DC650F17F7EF3C2CF7A3CDD73E3B2EDF74A1CC76CF7C1ECFF04B502F25355
          D0A733C17795DDE487D920081C5CDE731C5AAB9ACD8F1E420F6CFBD5B6F07E4E
          B58E176095244A364F4F1EAA84ACC21CE0653C5C3E78110C5ABDF5A74E740817
          AEDEBAF8E8B03160E3F2D7A6E320FDC29EF86316CE40A245B0DF451C7DF5272B
          E15A7935F34CADE005BECD249A56B8134B6F3FFCB65097D8FB1AD272317D4E42
          FB7F941BFB9FE73998961309217233AD2E37F4416387CEF65B44B81C6A8E57C0
          A5FDE7CDDF715C69576CD5CFD6AD5BE722AF362E2B791464FC56C924C60D3C80
          835113332167D6189087C8D9573DCD5D70ECDD8360D4DA665B17326141204CF0
          9B0116E2D3C857BB23BE3DFA3B345073B81CBA9B1C2500C7F30745C9F4736444
          F9FAA75F8E0385E2296CD02FF0A70CEB39B9774E07755A9CC37571510A189D10
          CAE4BF3D5ABBF450DDAA05B9424026007423C10EEFFAC6FE94AB12707F06BD6E
          FBDA579E695DBF62FB3881175E114DE26CFB93A292A361EC1D9320323ECAE1FE
          5A2DCAC5FA4EB8F0F95130E90698108838F28B0116B1B3C71BE2DB8043BAED6A
          23D41EBD00867E17B1B4077FBF15FF86D85F121EAF86B13FBC89D9530422F898
          341544847AF6079018D082FAA0C5A213BEFBE008B45EBDE67C9A166FF935DEF8
          4EB4D804EB978A3005E4CD190729E3D25D2843C4EFC77F84BEB61E1726A0C8BD
          73ED4B45C7AE3B03988234C249B08C52AF886F0793DE00F5272AA1F97C0D5394
          EE2053C8213E7F1424176481207324B65A2583ACA4305085082ED7910EE8E833
          4273B71E8CA25921988C22541FBF0C3527AF82BE4FE7F6794CDC4CCA845C1437
          6831B9FC6C4F7C2B880917BF386A2F8EAA791914AC7AB1A8F3BA3260C3B29295
          78D5262BA1F27FE03DF11D3AD0DE0DD587CA41D33CD05E555C14248C19053159
          29A4273C371A5B9DA456427672987572402F9AA2F5A803F44657A61201FBFA0C
          D0517D0D9A2FD4404F5387ED3775720C8CBD7D22442444B97D963BE213427100
          18BA3550F6EE219B624696AF5C5B5CB4F9FA326079C9DFF1CF83749C396B3C1B
          A97E035BDC73AD1DB4DDBDE8EDAA7D66641E5A40896809D1C8AF68EE774B7C1D
          5A487DFD8E04D476F582BEB30722E354109D12EB910A4478AD07E287586660DD
          996A28DF73CADC1D4E7A1BF5D94F7CE9831F0C28FD2B3E6A111D93774A5EEA70
          2144C9C3B4EC48E8E835426397DEE5F7C1466F881B11E6CFB5B5A7AEC2F9BD67
          ACE4F47901C86706AC5FB6FD29F46E5FA56392FF931FBC95FDBDD1B09A9A8951
          726480019C07FF8D20BE11CDEC03A57B41A7D15AA959B4666B51A92FFDF09901
          7F5CBB5325D38B95A22825D2E78431E9903173DC7522B37B907A8888905398C3
          3D0151ECF4F7FB477C6FC48E1597F6954355D965739B04A125B4BF3FF399579E
          E9F3A52FFE99A12BB62FE224EEAFEC064884B13FBC1954F151FEDCCA6758473E
          EF4147DF88914FD0B4F7C0A1D7BFB13998488F9FACDEB6E46D5FFBE3B723B6E9
          B91DFBAD0E0C119F98E06944060B2365E413CADE3900ED75E62506B9527EF4D9
          0D4FDCE44F9FFCA61879913CF0A7AD8ECCE85B26425C4EAAFFD41D04F80CE86F
          ED0249D70F49B9292EB63AC57B2E1FBC0042880242632221322906C213D4E469
          5F17E2379EAF85339F9DB01090471B4C9CBCBAB8E80CF8818086EC8615A59BC0
          12B397872A60C2FDB72271BC5BB5F206E4ECB45CAA65F6BBD57B8ECD8887BC05
          05E8609940B44CFF731F1E83FE4EC725076ACFE47B66424CCAE0A2D11DF1C9E3
          E650D4B923BE516F84833BF682D6A27879417871D5E627FD5E730E88017FF8F5
          6B110A9DAC1245513C7D4E189B01193707BEFCDA87F2B5E1640574D4349B9741
          EC89131B0E8937E73A7CD776B61634D5AD2EF7C9BD651C8C9E9EE3F139EE882F
          173898961B05575AFAC160925CAEB9F0D519E6551304B9D0C31BF9B467B73ED1
          ED6F5F0316DA1B97973C86CDDC65BE1B07E37F3CCB2FCF9820994496CDD0545E
          E542783275C392A320322B116438BA1D2F04D0F7F483AE4383FFFAD0C9EA054E
          2640526116C426C7424C7438592943129FC21CE45D872905D0A15DDB84BE458F
          DD399AB66E54BCDFDA8550A447D7142FFD5B20F40B980112FA7F9B9F7B7DBFC9
          646241FBF08468187BF74D3EDFB9BF530357BE39CD4214F6AD0B4B524364663C
          2863547E3797C21A71B151A08E0A67A10B4F329FA2AC1909A1106659656BECD6
          43AFCE64ED281C7D7B3F74369823BA824256B672E34F0B03A55F50CC963F3EFB
          970982243B6955C8C480F0C468AFAFA7E5C34B5F948109E5AB15217111103D36
          151491A1C16822832A2C04D4D16A1CC91A90E3312F1B981556852BA0ECCF4126
          5436F7DB027A04B278C8F26144E3389C03E2040AA307DAA620AE09977C86A364
          211DFB6211F55CEB808ADDC7D9D2216B108E56756E1244662704B3796650B4F4
          7C3D745F6D86908830187FDF6CC604676B87F480B3FCB78FF900CFED5EB365C9
          82603429283DDCB8EA2F319241A8C343365C27DC3F1B42D543EB016D571F947F
          7CD0467C5E2140E28C1C50448505A3598E902CCABA6640594F7CE056884E8C18
          D24C25D06AD8A181C51DADA4D78FA2459D409B151C06AC28791E4DF517E898E9
          801F0EED93A0E504E73F39C42C1E8280E66B02113F8822C71E5D97AF41E7C506
          DBE788517130E9AE4250A9BC8F631D79F35BE86A3287CF919FFFB1B6B8E8F781
          B62B284A78D3F2D28BD820661B66CD9D0CB159C9435E5775E02CDAF875E646A0
          664C9A95070AF5E023DFD46F80DE6B9DA06DEE06439F1E4C96383C3960F23074
          C21222213431CAD54A425C3B5C015A94FD84F0B418889D9C8EC40F85D49478F0
          D6816F38570367BF3869FD5833EA9A2AEB91771E317977759019C0B208F8D0D9
          1CC7DF8B76D92FE93BE6FC3C7C1B93E383812C9DF28F0E310F9710333E0D2232
          E33D135E6B80AE8A46E8A96D73314FDD7589CC5552E0F68CD0B56BA0E3622384
          C484833A3FC9D6F5449CB16A75B8577D16D134FDE6D52F6C0B303CC7ED9444F1
          3D9DA8FCF63FFEF478875737F1970144701D84CD011EE6A2A9B0106DF6C9E0B4
          5528A5201B52A7E40E79AF8B9F97417783597C92B59378936767A9EF5A17B49E
          AC06C9E8DB40430F1562A7644058E2E09EB08083253D2D812DE47BDC776007CA
          B2A83A56E144444E42B3F4AA68307E8412612F27C03E6F97263D3280BC5CA14F
          3687E3C4B9022F2C403BDF85E0F688488A81BC3BA7399876EEA041ABE7FCA7D6
          04020E526EC907B907B94FD64A4739C9ED81613F2AC30839B97A484D33822ADC
          FCBDA68787867A012A2E29A0AEC63E14C2E1EC4AF538BBF46804745F6D813E94
          EB8A1039DCB4E856B48E06D741148A38FEEE419B2EF04055111DBF8BA2287E86
          0375AFC160D8E7299DD18501B4274B2FF17FE039E93194104A8FCFC091436BB8
          14F88A4C898308B2FBBD984F55FB51F65798657F584A34C44FC9747B1E8DFC96
          B2AB36E2ABA34D306F7E3F23FC60A8AF93C157BBC3A0B3D33A5638889F3EDA61
          264868DF371FAB046DAB636ED8A4BBA74152FED0E63379C26DD5ADF8AF05FD83
          56E869E90687AC301762717A14B76F4A46E1D7CFFFF9C9668F0CB09893E46DB8
          6442D9089E1CC3463B593BBC30F494B507593EA7DEFA0A4791399320E1E61C08
          7513B630A28C6DF8E6824DEC10D1EFFA712F9A8B432A0006AD96834F3F52E1AC
          30CF061247C9B78D059925C1AABFAD079A0F5F76B82632391AA63F3013645EA6
          C0B3FE20237B3446D40906B6B6DDD3D40EDD8DED66CBCE3D432E7172D34CFB14
          490706D8EF4821CB243C51CD881D991C0BAA78B5CF047746575D0B5CDA6DCE69
          2505997AFB3870376DDA4ED580C6126BA791FFD0A31AAF896FCF8477DE8C802E
          CB4C084F8F83D889E60402D16482A6831560D4684185B39044544C6A0CB3887C
          25BE28BAB68B3C7A0786B40D845770266C58BB6DE95AB70CD8B0BC14B58BC434
          A22F3B52BC01AD64359FAE84ABC72EB910C4A1F1686AD67D75D626F6EF7F5833
          A4D8F1041247EFBF136EEB69EAEDE37116D89BA8928D043CCF436E760A786393
          0E467C7768BFD20895DF9CB236A3627571519E070694D09C674366DAE2858C68
          C1227E44B80C4E7E78C4962C1B3B291DC247B926537757B540C739B38E20857B
          EF039A809EFDC1BBE136C51C337E148EF6388FE7666626815231B863E62BF109
          14E52DDBF985F5A3694D71914DCE3933C076D7E94B167865960D052BF1E92FD9
          D0D60C82E439F96E430EA41CFB9BCD5376DEFC3E183FD135DDC4247270E48012
          2E9C573051993F560F37CDD2A275EC4A94B36794F0F51EB365438E5A42A1E76D
          02A9684C84877BB682FC213E63002AEDB2521B03001960A3FB7565803DF1095F
          16FF034C06B3624D9B3F91851F9CD1F07539182C29ED4F2CE9461DE09A6C7570
          7F287C77CCD1409B5AA8835973FA5DCEED681760D70EB3A297A94220F5B68105
          23233EA70F3D6BABB80B8F08838C09E83BA8554123BE850370ACF4F31BCB0067
          E293D7BB7BF3C7B6CEA62F9CC4164D9C51F3F9699BF5F3CCF24E90BB9108DB5F
          8984BE5EC7B685A94458FAB4EBC294010DAE978BD5E6CEE2F3E8B956347C85CC
          76CA175521F16717DD113CE20F07039C894FA088E797C59FDA3E67DC55C09262
          FD6140C9AB51D0AB71BC969CB2A29FBBFA3A7A3D07AF6C8BB23000BDDE85936D
          BFD5E36C33F60ECE8080890FE6C15776A318E08EF8E6569008FA84652B1352EF
          9860B3CBEDE1AF089A56A8859973B42EE776B4A108DAE95904F5367430FF8410
          19A582CC0274DAA2544123BEB5EFC74A3FBBFE0CF0487C0BBEDDBE87AD011092
          67E7BB8D7E7AAD840F86C0C5F36693F27A28E1A011DF4706D8CCD0E94F2E1832
          AAE90BF12969EAC47B87987342882BC800153A3FCEE84133B4DD6286A6A51BE1
          BE07033443FF8E6668ADC50C9D806668C6D0666850890F2E2268303374C011CB
          9E3B1962BC88EB7B4B7CCA58AB397A01AE9DAB62DF85A7C5B298BC338CFD7AA8
          FFEA5C901C31393A62667142E66A0A7ADE56478C6699289A202C3E8A0D34AB23
          46340F26F1099DB5CDAC828B05979001F9EE19B0A26403767CB5F533ED50B4C6
          7E221263DC6E15F596F884AEBA56B8B4BB8C1D0BA17248BB7D82DB6BDA4ED780
          A6D61C8A888C12E1E1453D101A1ABC5004119F441D6BBF5C860E610C24E4A742
          665E5A50884F3A85120D348DED6C5F1C4580255B6C487A614DF1D2DFB8658025
          1877080FF35CEE8A23282C26C28121B47BD05BE2B386A1757362D71E5B0729C1
          8A12AD9C410B300D5F9F67311B424AAA11EEBEC7FF601C593FA9B78DB7F91DFD
          4D5DD07CFC8A53F738C8BE6D1244677A37EB9D09DE8B04EF61046FC3E32E9B62
          7742392F83D9F66B052E94FBE32F76267032D30BD8A045AC509227608323E223
          21262D8EA50BC6A26CB557DA9E1265ABF79D81E6CBF5EC382C290AE2A765B9BD
          BD4B385A2DC2BC3BFBBC0847CB61EFEE50DBC8A72E26148E46056CB73083B7EC
          6D6887AE2BCD60E81E70DE12C76640BA37997D78BDA6B903BA1A5A59B0AD97F2
          56DD13DC4A2A9D04DCEB4A91FBAD73D1108FC11E56AD442EBF056DF5793CC72F
          1025711CDBB9EE0151496A98F6E02C16CE1D2C4B59D7D10D47DEDA677B7ACA2D
          63411E11E2F69E66855C0FF60B32A49873F20C68B118213CD2FC0C4DB700F50D
          32B87C516E53B8D607448F4F65895D9EA0EBEC055D530F7022B00DE60A55080C
          069AC514D1ED691A64D33DC789329970CE6832FD5312B9AF4D61C6FD9E36A67B
          1D6DA3DD9192096E01899B27C8653F42C72A8716E4EDCF195D988B9DC81B3245
          9C18D0D5685E4255C6844312E57A7A6809CD84B613D53671E42D48ECC41764B2
          45FAC140E2333636CE6B93BBFEE4656838E1B89640041764FC597420FF8934FA
          5A097DFB97BDB4CC2BF3CDEF70E7EF7EB92B5AC9EB6EC587DF6FDDD54E8ED5E4
          47E6B9AC1B38273E11F18FFE6DBF4D3191722425E909A2DE089D154D2C015792
          86D2031C5A58D1A01E93EA106B326874D071B11E94116110959768EB7A444424
          2A78EF526148779D7EFB6B5BA636B6E425FCFFA350B1FF80B7040F1A03ACA0D2
          02B589BDB44ACDAAA48C9E3301E272D33C12DF8AF22F4F43DDE92AF3071C8594
          90E54E21DB8356CAFA9BBAD18AE962E6AA758F2E315EC6D252A270C4473AC5FC
          CD68397E95ADFD12AC69290A4508EA16B5D77D6DBBD2C0F2572DA8EC89ABCE73
          57FAE0863280B07E79C96FF146BFA363B294C6DF3B7B50E23362EA0C7068D7B7
          D0DF65CEEBE7517724CDCC05797888974FF50D5D979BA0F362A3ED332566E5DF
          31D5276FFFC2A747582A25231CC7AD5DBD75C98640DB151C063CFD721CA750D4
          82A5D400312036453D64CA5F1B9A83A7DE3B80CCB0A426CA0548989EC5F44220
          2091A5EBEC6333CAE6CD7B484D0CF1320D92B2B7CFBEBFDFF691939BD282510E
          3398C9B99F5365293ACE437B3AD343B683AD079614F1EEC636665558CD38DA56
          143D2E0522D2E3FD6C9DC416F40D1AAD6BCE915D72AE32520513EE9D35641A8D
          156D683A5FD977C64AB5CFD76C2DFA4130E8169C19E0B45FACF0E1D9109DE6BA
          DC98182987E61E03DBB96E9F9F4F26DDE52F4FD8B22508340B6227A6A348729F
          194391CCE6A3666F36614636C8544A1B916B3E3F656368D2EC7C505A827E0A85
          12A2A222418FCC61E9E93EC4BAECF39950FC984C9CB1C09BE253378401F63B26
          D5293130E391392E77A67D5739F1A150DBA685AA26D7952B49DB0FE59F96415F
          D7C05E2F322553E68C1920AE1DEC65BA3A3F19A272062A8BB59DAA064D9D593A
          50C02F616A26A854115E5B3B6E818C250690034640E61D58B9F9C95B5835AEE1
          6480FD9E61B266662EBAD5A5F045A8428054B582155732E2C8AC68EC67B57D6C
          BF5B94352DDAD06EC76ADA83650D574CCF8610B46C5C18700919506161402E32
          206F800194F1D6B8DF5AB08F87298FDFEE5275C51FF477F4C0B90F0FD9B62849
          9CF498AFB5F082CA00E74D7A1953B3207FAE63808DC44E7C84AB59D8D96B8473
          351A50E2CC7056D65468E9CAE10BE8958642DEDCF1D0D7A7831E4D2FFED5DB76
          467A62004535C3429550BBEF3CEA970E46F88245F3BC96F543A1FA70392BB563
          79569B4EABCD0EA48A62400C58BFBC74230712DBA2A94431317BF1ED2E7B7829
          CD2652294032CE0019CA5CF2A39A3A7450DDD20F3219EFD5E6081BF0621DCE12
          3D5A39B5DF55429D25A096362D0BD2A766831C4D59A55CC62A4075B6F4427365
          234B990C8B89F4FE19438066E99977F70D149DE260232AE435379C014CF172FC
          196B81BB89774F85E4FC3497F3ACDBFFE3A314ACDA5543BB0E2A1BFBBCDA403D
          18FA3A7BE1BBF70FB30E4C79E0E681654464920615BD2920F76870B456D4C1D5
          FD56FDCB89A2899BF2FC9F169FF6E75E7E3360F3AAD70F1B0D46B615862C9EC2
          8766BBDCCD7937E2848C70B854DF8B62C1C791EF256E04F1197016977F7A187A
          2DC5A650CF1C5EB5E5C959FE28E4808B7590CC9DF9C46DA0720A23B82B7C4181
          2F77323F18B861C4B7801270CF7D74D096848BA45FB47A5BD15BBEDEC7BF7235
          06A8124D26163DCB2CCC85BC398E31745F6B2F048A1B4D7C2BA8E41A954023A0
          6F70CDA4E4B37D2DD31C50C126DACC307BF13C10E403265E20E562FC0145477B
          8681F8040AA19C79EF5B162464E0E067A890B7FB720FDF19B0BCE44DBCE8513A
          1E7F6701A44E185858FF7722BE154D67ABA0F6D8054B8360D79A6D454FF872BD
          CF0CD8B8ACF41D74401EA2E3090BA740CA38CB42B73F6207C5677B7D1BAB7442
          2B6AE171DE9B8BE40E687A91F826DF1D5192DF9A962E088D0A636BDB8118E324
          82481459F0B735C5458FFA727D40652B6957E4745A868C50F94C7CDAF85CBEF7
          B46D658C40156BD3276742625E0ADBD5E209FE109F16C9DBAF3420C16AD91AAE
          155457884AAEF9E32BB0DAA19F1DB5C5B0B035CFAE2D2EDA7A5D19605E2B569C
          C42B33AD4CC85B50C8D601BC213E6DF1A422D8B567AA6CE106675005DBB48999
          6C8953903BDEC357B1438562E95D022D4878FB609F0311381E12C6A643EA946C
          1014DE6DDC76533DF7AA9C9317F85ABA2628A58B69052A7FE10013DC119F08D7
          70AE966DF3B42F5D4C852FD05BDE2D8A924BE9E218F42FA6DBF917BE8E7C8AD9
          9CFFC7119626E2042DDEF31BB4DBE7DB972EA64AE954283C7674F2A0947143FC
          4E89E7E6FBF34E01FF3DE15F9514E2C0F9C29909EE166228B67301C54D67A3E3
          5E66994276CC60302C1928DEAD5CCA8144C5BB6D2F81B086B619F1357A9F14AE
          FD9E340BAA91757F06BDFE2FD6E2DD3C2FBC2A994487FAF8B4F333FDE671101A
          EDBA30E496F8222CF0A76E74400C70C7041247850FCDB22953123715072E40FD
          996A87C574247C974967FC853BC765DDBA757C545BE66B68DB2FA1CF5933F220
          6BE6189F894FA042E14D96544814D0A5A39A554FB92B2DE0AE7C3D455113C765
          406A4136CB9EBB1EC40F9801EE98A0C0699C3D338FED84A92AAB04BDB3B811B8
          2D0ABDE6BF07CB22B07F81833A2516C6DC3DC32F6B873C55EB0E456F5EE0A013
          54EBF070A543457595125226E5B01A72356517834AFCA0308060797F0CE98418
          4FE7A0723B6E306A9778B38AC4525E04431BE51D51F862CAE3F37D0E2793F2FD
          EEAF7B59A88062343A933CD69B7A0E965798BC221A4D7307392DE017375811B4
          3561A6984DD2DFADD69115684EB64A467199AF454D37AF79A3D2A833B0BCC5FC
          1F14B2BDCABEC03E239997F1E757BDB8D8A7F2BE1E5FE2432F81E0B98747D44B
          7CAC201355A194FF5492F859CC04E1614FB84EFFB6AFE57C091B56946C42B9CD
          4A62A64CCE86D4A9431701B10779A7E4A59A3BC96D5A5DBC64B54F3700DB6BAC
          1E0111E693ADCA71E241192876065225D11923F6456EEB9797DC878D7B9F8E23
          92A261CC5DBE15A67590FF1CDCB37A6BD1C7C3DD277718B10CA0547930C85A49
          0F506ECF54D2035E6631D8CB7FAA5CC20B10EBEB9B2D6E14462C03089B56EEBC
          80CA90ED261973D70CB62FC11B74D6A0FCFFD22AFF8573AB5E7C728257170E03
          463403ECF5406A410EA44CC9F1EA3A7BF98F5D5CBFA678C9F3C3DD174F18D10C
          F0570FD8CB7F14433F5EB36DE927C3DD174F18D10C30EB01A1092539D5AC87DC
          790510951EEF31A1966AF977543541A5358399E3F4069D2E21982FDF0C364634
          03081B9695BC81AD7CDC9F6BD1052B595BBC64E970F761308C7806B0126A22B7
          8F8AA2F8D8B5CB826098B372F3CFAFF976DD8DC5886700A178D98E581D2FFE27
          5AA4F49267F28E3DD9A3227689B2B53EE0E4C6DF05237DFC7AE35F8201FF9FF1
          3D038619DF336098F17FF9B7BD2414667C160000000049454E44AE426082}
        ContentLeftMargin = 0
        ContentRightMargin = 0
        ContentTopMargin = 0
        ContentBottomMargin = 0
        Options.LeftMargin = 0
        Options.TopMargin = 0
        Options.RightMargin = 0
        Options.BottomMargin = 0
        Options.Stretch = True
        Options.StretchBorder = False
        Options.DrawOnlyBorder = False
        Options.DrawOnlyClient = False
        DrawStyle = idsTile
        VirtualWidth = 0
        VirtualHeight = 0
        TileOffsetX = 0
        TileOffsetY = 0
        Proportional = False
        Scaled = True
        PixelOffsetModeHighQuality = True
        InterpolationModeHighQuality = True
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D4948445200000060000000600806000000E29877
          3800000006624B474400FF00FF00FFA0BDA793000015664944415478DAED5D09
          5854E7B9FECE3973661F869981618645511C509418405414E386B84440B3B769
          DAA4379BD8B4D75B631430258998C6A4ED134D62A34D9A366D93C6D6252EB865
          A98946053764115084618719661860F673CEFD0F8A0503B2CDCCC1DEFBFA3C3E
          303367CEF7BFEFFF7FCBBF1C30F87F700A8C6B03FEAF63540890BD223E8261F0
          688681F1C8222D60B410684C848C333318E8319A3E97BBFFFC19F451866B5B3D
          0D4E04C87978B2D4E9102DC709EC073403738161E4048E39F83C1E4592040F07
          8CC0708C70BB2997C34D514EB79B8F0C35020D7F7501F5E696CF2FD4734D9CA7
          E05301D6AF98198E33D45A0C98FFC2711C934B85A45424C42542120882E8F73A
          9AA6C1D2E98056F49FCDE90486865F1B344CEE8E1DE75C5C133852F844807569
          B3657C70FE0AB9935F8845241D2097F26562C1B06EDF6EB543BDA1CDEEA6E842
          A445FA9B87F21B7D4D9A27E1750136AC9C9E8803B38B4F1081C10172BE442418
          F17752140D354D2647A7DD697011F8CC2DBBCFD4FA842D2FC0AB0264A6C63D89
          11C4CE00B984502B641882C7BE9B41FFF48DADCE4E9BB3CE45D2B16FEC3AD7E6
          75B6BC00AF0990993E7D0D86315BC2D40A9E9F44E8957BD0286DBA5E67743829
          D7D1D776E7A7798D252FC22B0264A7273C85F2C59DE15A25E109977327B85C14
          94D736BB1986C9C1717A376FEAF9B29C1C942FDD25F0B800EB57C4C5E3809F1E
          13A4E4F989BDD3F36F87C9D2C9B4983B6C285D1561186E4623633B4630EF6CDE
          7DAEC127068C001E152067DE3CA15BD159AEF49386689432DCD78DA15151D16E
          B38301896177A04101CCAACDFB0AFEEC6B3B86028F0A909D96F02A8F4FACD385
          060A3C1970870AB65C461A405D8B89C2193C6BD3BEB36F7066CC00F0184B39A9
          F1012E02AB1DAB510A5071C575BBBA60B53BA1B2C140A166FE70F3DEFCCFB8B6
          A72F784C80ACD4F8570442FE4B1350EFE7BA513DD1D2D609CD468B8974E2E139
          79672C5CDB733B3C2200CA3A70EAD2F406ADCA4FED2F1373DDA6DBC04085BEC5
          E1A4A9CDB97BF25FE5DA9ADBE1110136A4C7CDC131E2CB49E1413C1CF379EC1D
          10AD681434B65AEA37EDCD0F855136A3EA11013251F0958AF8EBC283553E753F
          6CD683E1D8808DA0681AAE5435D2E88389B97B0BCEFAD2C681E01101B256249C
          512BA4D303FD653E33DC890A307D9311B50003A54C020A3FF11D1B73B5B6C5E1
          703AD7E5EE3BB7D567460E029E11203DA16D8C46E127F351E1C5663735CD66D0
          4569206C8C0ABEF95729600C06A1810A20797DBBC0FA163363EAB4FD19C58127
          7D62E4203162015E7A385E4E3831B32E4C0D0292E7556359E7CDFAF326930566
          26EA60DEC26860EB0D87DD05BBFF910F753546080F5201497E7F6D81BDAEA1D5
          5294BB373FC6AB460E11231660FD8309E37137736DD2580D1084F702B0CB4D41
          83D1020EB71B96A7C7C1C449C1BDDE6727E6767F7616F4550618A755C2EDC980
          B9C38A0AB3B6062440F050EEEB6D8C58808DE9F13114608593C769C11BD52F4B
          ACD1DC01064B278485A92075653CF8F989FAFC2C2BD207BFFF12081A03B5A277
          3C6217726A1A4D964DFBF2E55EE272581831631BD267446340157B5A008AA2C0
          68B181B9B3134462012C5A7C0F444DD40E785D55650B7CF2D753A00B55F78A07
          6CDCB85E6F74E7EECB27BDC4E5B03062C65E5C96A02149A66152387241F8485C
          10D395D9B4DB1C5D64B55B1DA0524960E6AC48981C133A24F7B6733B1A051480
          4A2EB9F5DACD6909E7E6BD05A3AA521FB100390F4FE63B9D22C784D04010F2BF
          DFB91C4E17983A6CE070B9513ECE0043DF9CAA477C12D88D60C9F676D6B733E8
          7D954A0ABA482DE8506F675DCE7070F29B32387BEA2A8C0F0EB8F55A970B6A36
          B56CDA93AFE682E8FEE0119F91BD22A13154AD08BA7DE5ABD9D40E2D6D1D302E
          3C10C684078018B912A1F086486C46E370DCD8D42014902091092030D00F4422
          FE88EDA9D11BE1E38FBE81E870D62DDE78CD88624853ABA5180930C587FC0E08
          0F1562D30EAAFC24CB34AA7FC737234AFBCC561BFCE047B3411BECEFD346994D
          567877EB11881C13047CDE8D51566730D3660BAA03F6E53FE55363068067A622
          D2A765094972E384B01B33A1287181B29A26589E168BFC7798CF1BE576D3F046
          EE3EE8E916CBF58D0E879BFEC5EBFB0ADEF7B9417780A746C07444FA69540B60
          6CB0B43A9C50556F841733D380C7E366722EF7953D101112002201BF6BDD98ED
          10384E476FDA73BE941383FA81C7A6A35D17A71943D54A7F398A03964E3B349A
          DB9817D7A771B62CD6538056E4FF1B8D16FDA6BDF963B9B2A73F788CA0EC95D3
          FE2411081E1FAB5511AD162BB4DA3AE1976B9773D6B09E0254D6B7B86C36D7EF
          723F2F78893383FA814704D8B6313986EEA0BF6EBE6E5146A1C0C7E6F0AD562B
          FCCFDAFB396B58B700388EC1D59A16D0E8FCAF88A4C4ECA7738EB47266541FF0
          8800EF6F4C29D504FAEBAE1434102282EC2A9A468B00E64E1BF0443C08182B76
          B477D83F793EF7D87F5616B475DDBC501E8F5773DF8C68A8BD6E84D327AF824A
          2601B3DDCEB900E15A65D7B4F5A265538027C4A1F08ADEF4FCA6A34ACE8CEA03
          2316607B66CA1406E8CB2973A676FDFEE99FBF03864279280FE35C00092AFCC4
          523EA43F140F6654979CBE54E1CEC83DFE9F3517B475C3D2401EE66A66478058
          C887A24B756814548048C2E75C0016CBD2A64270A8021A5BCC5058A66F7CFEB5
          A303CFE8F9109E8A0135D11342434334CAAE22881D053881C11A8E05080CF283
          F407E3BA7E2FAAA8A5EB1B8CFF4431E011CE8CEA031E1160FB86E4D7FDFCC4FF
          9D1817D93519545C520BF58D26F8D1A3F771D6B0F7761E815933A240AB95772D
          CA7F75AAC849D1CC63AB728FEDE1CCA83EE09911F052F2189A80ABF131116480
          5206350D46686836416A7202670DFBD33FBE82597151E02713C1357D2373ADBA
          A9B691E71A9F93F3B59B33A3FA80C70AB1F7B216BEC227C99792A64D143419DA
          468D00EC418ED3E72B281AC356AECE3DBA9F3383FA81E7F686E6CCE36929FE71
          019F9C19A251088CA60ECE0588D685427965839306662B0ABE2F7266CC1DE0D1
          B99ADFAE49148925D28F189A79582C16620F2D4BE4A451ECDAF0DFF69E607FA4
          700C7BF5B9DC63AF61A36C475C37BC3259F6EEFA85197C3E6FEB0F57DC478CFC
          DB868E7654FDEECE3B0D3845DCFBFC1B472E7161C360E11501B6AF4F8E051CCE
          3DFEC05C6C64EBC4C343338A4187FF7581422927395A7B7E37BC22C0D617960A
          F872CA82AA637E50A06F57C358149555C3A5D2EAC2675F3D32D5E737EF81D34B
          97FA81DD9E44E3385BFC195157FC6EE6175F34F5FC8CD7E6EB776C4CF97672D4
          98D9F7468FF379C38F9EB8E44459D86F32361FCBF4F9CD110A9293E50EC0B700
          43FFD4410AE976A1DC2DB15B08B1CBCA77E1E47E8271BF9074FCB89EFDACD704
          787743F25A9954F8DA834B660AC187C795EC0E17EC3A7092ADBD1666BC7EEC5F
          3EBBF14D9C4D4909B333F8D706993A6457ECA3826B813AA06FD21C62AE851585
          FF744D6829EFE4BB5DF3667CF5D525AF31F3879CC54AB78BAE5F303B4610A219
          DEF692E1E05249155C2EABBEFAEC6B47237DEDFF3F5CBD76861BB0A3B8C525FA
          60E633A48BF8FE0E0F8C61E0B1737FA312F4A79BE540EBBCDA35B7672DDE19A0
          903CB16C7E9CC017A3C0E974C33FF3BE733A9CAE8CD5AF7FF181D76FD8032CF9
          75A11127AD3C3ED1C80F82CB82A87E3F4BD014BC9C97ED50D8CC1BBDCACAFB99
          8BB50C4E97CF888D94468EF3FE9ED85305A5EECA9AE6ABD064BCE7391F3E4925
          EB371F86F15D8E32557088287E5A1C1C3AFE15D480128AF93A3404FBA67861D9
          3158567CA0C8EBDDF2BDCC454FF308ECBDE5C909A4DC8BE7C76A1B8CF0E5A9CB
          14436133327E7DF49CB7DBD50D967C34B84F05A9D5410BE7DF471238016D160B
          EC3F72FC8E22E85ACA61F589B7ED5E17003961ECFDEC94CF84427265EA826984
          5038F29D6FB7C3D06A61F37E9AA2607DC6E6A36F7ABB4DDDF8FDB675D36A5D93
          F606A903D5DDE477632011229BCB20E3C4DB369FA42737EB822A9944A8499E33
          15A41E3C49C3165DC7BF2D04CA4D7DF1FCE663C9BE680F8BF7DF593BA3C91D71
          521910822F983F0FEB497E376E89C028A05810D94B8405E5C7E1FEE2FDDE7741
          DD786F43F2876231FF299A6260EEAC18D0048C7C9B7EC5F506387DA10C481EE1
          723A5C2FAC7AFD0B9FEC7AEB413E81C887BEC8EF465F22B04178E3E1971DAA4E
          E3CBBE132033F9FD30ADEA593E9F84EBFA26183F2608E2622240340C97646AEB
          80B3172BBA5CCFE4C830B8A66FB27658ED6B32728FEFF0763B0EED5C1A5A664D
          2C3352A1E28756A623FB071ECD66731BEC3FFA0572472A24820E1E39FF299578
          FD5B83DBE598E0730158C22CED3628ABAC83B60E2B8487AA21223C18342A3FB8
          53AACA1E49AD6930404555033434B682364801BA706DD7CEEA6F0BAEF8440096
          7C3E8E9D9229B59A0B1D4964BB530A8B17268340307027EA1E098CA98359F2CD
          6E3B1A0549895F7E799E1301BA61686D87BAA656601770FCE562989F18D3677C
          6836B6C1D7DF1575AD376B83FC214C1300A8CABEF5BE2F04E8265F11A0D6DC3B
          6B3EE9A271F8E0B01B6C6E192C4E5E087CFEC0229CFCEE0C545654405459E1A3
          4F7CF86ED7B32B3815A01BECFC7D51991E8CE6F6AE5EAD0D5275F5EC4EAB1DAA
          EB0CA0AF6D4623251026A0F7D89D6EB7C3DB02DC4E3E7EF3B40EAAFBE08F47DD
          D0EE1878249CBF70098A8B8A20ACB6E299E7B6BEF987EED7478500DD68365AA0
          0EB997B6F6CEAE133522D4AB94FE12080B0900B9B4FF1AC29B02F4477E37BA44
          384241BB53D2AF08E72F1632978B4B1C61D55756ADDAF6E6473DDFF39A0069EB
          F6050349CE07868EC5713C660A7378D60C4D93F44E020C17270AAE32176CD39B
          AAB1D833949B398B31CC790273E4EF79FD01E348BE7720F2BB71271158F20B8B
          4BED14462DD8F2CB674EDF7EAD470548CBCE8B029A7A1CC7891FD3343D962449
          BB5CEE4788C56232C87E1AB46DFB61FE8C488F9EA6B4DA9C7022FF0AD485AC01
          1368C062E9B4593B3B718A769318469CA629FA2F80B9767FBE39BD6928DFDB4D
          BE52ADD14C4D9C4BE2032C2CF525C2B98BC8ED9494502E6092FA22DF6302A467
          1E588C13C4468AA266CBA432BB5AA316AA144A10087B1C48A41C202D580513C7
          C8606C48A0C704B858AA8746A7063A637A3F89A6A3A3038C4613180C069BD566
          E51318FE29322277CFA6E5031ED0E8D5F367CF43E40F6E65953DF2D61D9883D4
          4150565E0A21826B19AB7EF6C6F6FEAE199100E91B0ECEC0096C07CD60D11A8D
          1A0B0909214477785A16AFE504882AB64352BC0EC41E388CC7664F174AAAC116
          F71BA0C5FDBB360B4A016B6BEB9DADAD461E60F801DAE57E61FF1BA97A4F92DF
          0D76246CDFD30E860E1E048BAEAECAC8D8F2FB3B7D7E58022CCD39E42770616F
          330CFD638D46438F0D1FC343EE6650D70ACBB781B4FD1CCC8A1DC756B0C326BF
          C36A8353172AC13EF627E00A5E32A86B6C361B5CBD56E9349BCC0C8E61EBC9F2
          8E6DBB763D42798A7C16D78A2F3257CB2A9C558EC8D5CFAF7E6BC029F1210B90
          BA3E2F81E031BB054261E0C4A84881542A1DD2F518ED04D1E55F818C69828429
          6120E00F7DB3B2D9628582E26A702893C0AE5B35E4EB8D4623545CBDE6A0DDEE
          428A76A5B2F1C153E45F2F2B71D280A52C7EFAD08941F131941BA4651E780CC3
          F08FB55A0D366E5C38315060EA17281E884B3683C05E09F74CD042005B050F02
          0CC34075BD01CA2B9BC0A94901C7F8A760B80B3D2E970B4A4BCA9CED1D1DA628
          D1C59F2CD29CD8E9AF0AD2C426CDF519F92C066D7D7AF6C13540636F46E8C613
          5A8D66588DEECD2605FCDACF81D4FF1DE5FA28306BE510A0F0EBF391044E5413
          34227F5F556B42010EB99288E7800A18F9A62F56D0C6EA627A0EF10E161A24A2
          E266CFE5F9927C1683122035EB4006CEE05BA3274F22944AC5881BDE13B8AD01
          C8DA3D40B69C44C650201289402C20804F1260775260B35328D5EC008C948133
          28195CA169C0F086E6F6FA03499B21D29003017202E293E680AFC96731A00037
          DC0EF69789932611012AEF9DEE616303662903A2E33A604E3360940D112D0146
          180894743CD0B209833177D0B845BE3F0FE2672771423E0CD4A2FB330F4CE161
          784144C47801F2FB1E6B3CD7F024F90C0D8B539ECD1BF6F6977E0548CDD92F26
          DCBC22756060982E7282779F45E6438C26F259F42B000ABA5B4892FFF369F1F1
          026F3E8ACC97186DE4B3E85380F48D0763D00D2EDC13338590CB47D513BE860D
          CF907F09915FEC31F259F429405AD6A1432AA522393A7AD2A83AD2395C8C56F2
          597C4F80E52FED9F8A5CCEF9F869B1B84834DA9E033D74F06DD510D9FA2AA802
          FD11F9C34D35BD433E8BEF0990969DF7B1C2DFFF91299327797E038F8FD145BE
          211B02D42A884B9A37EAC867D14B8094B547244201659832395AA850F87E5FBF
          2741DAF510D592E501F2D980CB78857C16BD0448CF3CF4638247EC484C9C2E18
          257F667258B85BC867D18B65E47EFEAE090A7C503761022767BB3C01BEBD0A74
          CDD920119390B4241D706278A9665579A99D669845294FE79DF4A6BD3D0460B0
          15D9878D5151918A8000DFEDE7F734E445EB412B6E063F190DAA202D4C4E9835
          A4EB7D493E8B5B02AC589F174EE3F4F5E9D31306B5D1683402EFAC02D18517E1
          81253381C763E042F139983E7F09F829063787D5457E5989830648F605F92C6E
          09C0AEEB12046F5FE2AC99A3EAC9B24381B0E21D18839742F2ACE8AEDF0BCB2E
          81DD6187D0F191303E7ACA1D6301EBF3ABCA8A7D4A3E8B7F0B9075F0E762B1F8
          D77171B1A2917C2157C0DC16909C791652E6C480E6E6C94C37E502739B096A1A
          6B40289141DC9C0580F5B18884C887CA2B253446D373173D77F85B9FDADDFD43
          6AD6A15794FEFEEBA64C891E1D7F836A8820F5BB41D57A101E4889FDDE2A99DB
          ED868BA5E72122261642C2237ABD7783FC62686BA37EFEF0DAA3DB7C6DF7BF05
          C83CF85B1E41BCC017F09D5C9138FC46D090E4D8269A7D6F28D6DF51A8EAFA6A
          30980C30267222842197C466475C937FC3F69B48CDCA4BC2808AE688C3116112
          7D625A04AFF0A78FA4CE22FADB6961B35BBB046831B50029148252AD81AAB252
          4EC96771F7565B3DF0D8C3CB9A1F5FA0562D98A11B70DE9C7D527B7E5101506E
          17E7E4B3B8EB0578EAF1A50F15D7F176850408E0ED9F4D06955FFF2934FBDCB8
          928A1A97DD66C23086FEEF87D61D7B976BFBEF7A011E58797F79AD09D7B13F87
          A985F0BB8CE85E22B8518FBFAE6F46C4EB1D6DED3602C7B0CF683EF1D6AA97F3
          2E706D3B8BBB5A80E79E5CA4BBAC1796BB7BFCF9E6B04011FC6EF52410910C94
          5FAF674ACA6BDDA8AAED40AE670786D1DB56E57E59C7B5DD3D71570BF0D883CB
          8E541A8994DB5F574A712625DAC648044CB19B62DEE2194C9FF8F2E0F65070D7
          0AF0E493F384D5F5B28E4E27F44A7B08D4A26039AD0F9653EBB7FDE9F0275CDB
          3910EE5A019E7874E95B654DBC5F76FF2EE4031D28A5BE9589E0671FFDF5D065
          AEED1B2CEE5A0196DD7F7F9BA113F7F3973036B594FA586CE5ADD9B17FBF956B
          BB868ABB5280679E58B2B8A51DDFAA10322FFFF1D3BCBF736DCF48F0BFB6EC98
          F3EF3E4BED0000000049454E44AE426082}
        ContentLeftMargin = 0
        ContentRightMargin = 0
        ContentTopMargin = 0
        ContentBottomMargin = 0
        Options.LeftMargin = 0
        Options.TopMargin = 0
        Options.RightMargin = 0
        Options.BottomMargin = 0
        Options.Stretch = True
        Options.StretchBorder = False
        Options.DrawOnlyBorder = False
        Options.DrawOnlyClient = False
        DrawStyle = idsTile
        VirtualWidth = 0
        VirtualHeight = 0
        TileOffsetX = 0
        TileOffsetY = 0
        Proportional = False
        Scaled = True
        PixelOffsetModeHighQuality = True
        InterpolationModeHighQuality = True
      end
      item
        ContentLeftMargin = 0
        ContentRightMargin = 0
        ContentTopMargin = 0
        ContentBottomMargin = 0
        Options.LeftMargin = 0
        Options.TopMargin = 0
        Options.RightMargin = 0
        Options.BottomMargin = 0
        Options.Stretch = True
        Options.StretchBorder = False
        Options.DrawOnlyBorder = False
        Options.DrawOnlyClient = False
        DrawStyle = idsTile
        VirtualWidth = 0
        VirtualHeight = 0
        TileOffsetX = 0
        TileOffsetY = 0
        Proportional = False
        Scaled = True
        PixelOffsetModeHighQuality = True
        InterpolationModeHighQuality = True
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D494844520000006400000064080600000070E295
          5400000006624B474400FF00FF00FFA0BDA7930000115B4944415478DAEDDC09
          9414E59D00F07F55F5DD3D57333DDC73701F0E1E64936CF2C2465794974040F3
          786FF719F741C21A8C19E3265E889B9DB7C922098F0544A3AE6475778DCF88C0
          2AAE90C121894712490228CE7D7133173343373D7D54D5F7EDFFAB3EE6EAAEAA
          EE99E923337F2DAABBA6CEFFAFBFA38E6E0E2623A3824BF70E4CC6D09804C9B0
          9804C9B09804C9B09804C9B09804C9B09804C9B09804C9B09804C9B0C87A90FB
          BEFB83470581BB9B5016E48DFFD8BB6B67BAF7693491B520151515B9C468AF35
          994D335102D880FF40C01FB8E8A181A5BFD8BBD79DEE7D4C26B21264C3860D16
          4B9EABCE66B795463022206C2C06C5365F817DC9CB9595FE74EF6BA29175200C
          43E28C6FB9A64D5FC9711CC402515E0354791CE6B5D9869255200C8337E71CC2
          94AF2A98324599160F842A07478F7A1C96BBB209256B403654565ACC3DD70FC9
          92B84A9665D003127A4F8E7A736D5983921520958871D52B863024092404B158
          AC60B698758028C3D1FEBCEC40C9781086715D844388A060B0D2A18C0901BBDD
          01BCC0EB01014AE851DF35FB5D2FBF9CD928190D8218268F0807F0E56AF63E8A
          816309C704C73607A2F0BC3688D2D0D32A0B27AFDBB56B972FDDC7162F321684
          61B8457A80036EF5E0E91114290CC350AC76BB82A2098203E1A0CA96C1281909
          12C1C0AC2A18AC7B3B3822ED48B40AA37293C39E2361C2176B8128E584922A9B
          40331225E3408663447774188A524258B525C9F51227DE66B65A255EE6AB31F1
          E5DA20CAFB2ABB21F350320A84615C0BC807388E5F1DEBEF435030A9924CEAB9
          807CDBEEDDDBAEB049155BB6B87809AA0985721D200A8AC3081985923120110C
          DCA5D5C34BC3901D1EF85BBD4C83B7EDDE16C28804430144C17C97EB0061EF10
          85CB18948C00198C11DD317514C43022C6D62BB1FECE5028A20009575F6A20CA
          00557D666EDDFE0C40493B482C8CE8CEC546A927208E2819C3434109D2813645
          0524527DB92D42DA51D20AA260F8E5039896B8D5D4B0E9BA30225151B1C5458C
          248AA201C2FE56E549334ADA4006634477461D25218C483014D9202B283A4000
          ABB92A8FCD903694B480308C5EBFA4746D8723C4ABA62827258C110986220A52
          35C74A0A685F9024587D796DC6B4A0A41C8461F478C503B8650543D901759451
          61444241E1A56ACC78B91648E83D5479EDA94749298882E1091CA0FC40D75641
          89512A22D5D458604422828267EAE5DA20A186BEDF614E294ACA40184697C78F
          277D88A16C790022160AEBDA8E254624184A900F565332A8A1D7B820D9DF6759
          B77F7F6A505202B21E310ADDFE033CD050C9185455C542C134D49B64E1D61D3B
          2ADBC7637F365654B88C601C68E8B5AE7F5152E573DB528232EE200AC6356FE8
          AA6D18420D05FF19578C483014033554C3A0F394F820D8D0634909A400655C41
          18C6945E4FF4DAD4608858281C857A118CB7FE6C9C3122A1A01041FB82E44077
          B92AE0195F9471036118CE1E77F4DAD4B052100BA55E0653CA3022C15084C855
          6236411D84DD79AC0A7AEDE386322E20EBD7579A720A7B0F08AC37C5F3D1F641
          05A59E701262EC48294624141491AF261C2DD704094D4314C7B8A08C3908C3B0
          15741EC4447F9557928EFFA9A3347026EECBE9C288044381201CA754BE610004
          E281B0FF8FC97EF7DAFDFBF78F29CA9882545454983B7B3CFFC70BC2DF461014
          9461208A090E3CF07560E26EDDB7674F470A731F37EEDDBCB98806E45F134297
          0C5C098E0382FF11428E8B3ECF9AC3870FF78FD53EE80659F856F75A81E3D662
          256A8C374F61EB879FB7B9DBE78512CE873610A99A783EBCC5D07BD964755F2A
          F9EB63A2D19EF64BDE83C3207AADD39BDE5BC94BBEDCF0A57908A51FC2AF01C2
          45471989D6BC8EAEC5B71FA79C20C74C30C7C94111DE6ABABBF0A09EEDEB0259
          F456D70E47AEF161B57B1493113F189FCF2D3E5BB3A6F0BB5AF3EACAF04DBFEA
          E9335A84BC741F5836871894BDA7573A1D5AF3E903A9EAB966340BB9E93EA86C
          0E2928FB4EAD74DAB4E6D305B2EC6877A3D96A9C9FEE83CAE6F0FBE4F3675639
          4BB4E6D305B2F4EDCEA3B61CF39DE93EA86C8E7E4FF0FD9AD5AE155AF3E90259
          FC66D74F1DF9A647D27D50D91C5E77F0F9DA35AEFBB5E6D305B2E050F7BA3CA7
          F150BA0F2A9BC3DD1BF866C3BAA297B4E6D3D7A81FEACD17F2B8DE741F543647
          7F6F7F69DDD7679CD39A4FF789C5B417CEB5E2A82CDD0796A5D1D9FEED92A97A
          66D40FF2FCB9A39483C9863D89C033FAF73B37976836E82C74834C7DFEDCD338
          AA48F7C16567703FEFD85CBC49D79C7A57E97AFE5C0547E1E9741F5A96C6639D
          F797FC54CF8CBA418A9E6BC3EA8A3B9AD4EE503C53EDEE02B9AB0B4026C0E7E7
          8371E60C80C80547B5454509C48B178078AE0367328271FA74E0F3F45DC5217D
          D7406CBF023428029FE300E3ACD9C0190D3A1624205EBA8CCBF701083C082E17
          180A5DC95F1BA7F4AECEEF94FDAF9E59F557597BCF9651015A93D91FB9A30382
          17CE0F9926208A699EFAC93F2514827535407C832E08E31E9BE72F043E57FD4A
          8EEC7643B0A9217C793614BCD50AA6C54B81E3D50F3BD8D202726FCF9069A6E2
          62108A74B5CB2382E7B9A5ED9B4B6AF5CCABDFBC92F2AEA2735E7C6549748702
          9F9E01EA1FF95D4BF3B21BF1536F8ABB1C715F836063E388E90CD3A881196C6E
          C64FF8C89EBA69813A260D0621F0C9C72313653183F98665891EBA7218762BB5
          9FDD58A6EBCBA60915C2A267CED6604F6B49A27BE43FF9C7219FD481E42CC2AA
          2427EE7252572748E74776DD954FFA921B54B719ACFD7468C90A87A1B8040CAE
          A2F8D9F378F043501F2353142C377F26F49ADD0889DC65D3BE25D1DAF540E95C
          BDB94A08A4F0D9B64398D875892CC32270F24F31A71BD9A7D5111F446620C3AA
          3A65A72D0C64A9EA3683B535582A6380CCC6AA470DE4BA07C4C686F0DD42A20C
          54195330DF78330C7CB2C2A963D51FBB198703C70BF85E189EE123DD0F947D45
          6FAE1205F909EECFA3892CC322AB40AEF522481D3AC85190C8AD5C53F9B2F0DD
          C2C88E0CC660F7A40DA18E0A8E39C1A04CC71A65CFD507CA1E1A1710E733AD9B
          38CABD982848F0546C10C37C6D10F9626C10E3627510B12E3688302B0E882C01
          95456CB7FA406AC22A8B86402809A1F0561F76080A70A77B31D9D731D162B8E4
          1871B0E2EC4EACD5A6E2AC33F1EF388D81E0185F575C7D70CE33E302E27AA675
          05A1DC6FFFA24058D2A5203658A282227B7A416A6E5440841C0F76CF3BB07785
          08567FF48187F05327431E138A3E0C41CCB8F1125CD732509A5BA3E9CE9EEF97
          578D0FC8B36DD3884C137EF83978FACFB141E62D500761E72E31412C605CA401
          525F13B367A780B0730A65035208430EE29881B012823DB3FE9360997F09F802
          8F4AF2E3800C7A7408643BBE167EDCC707B7C1F7F53D2E94F0A98E734F2B9E2D
          4142F7D7C58F6383080CC4AE0E422EC500315BC0A001223190C048107E661804
          93AF6088012C0CAC8404B1CAEF0153E10758323A74245F07C8C0B436ACFABEE7
          79E4C8E1B107D9DDFA475CEA33590D52900F9441E0A0940E1C1B731AC132FDA3
          50DB40F4243F2190C853F4FF93E3356EBE5C19FF39AE84410A76B7BD8A6BFFFB
          4496913E8903327701702A20E46A7C1061A13A88DC100764FA0CE0D8B98F1402
          A1B21F2C8527C0E4AA0B3D77157A7E779C4094692780377ED5F3F0E1EE310171
          EE6AA9C4AEDCBF240672520524FE933121900B7140D4CF4FE586DA9120D88073
          452EE564948A7E05C33AED776072B68493951210F6885D3D05E156EFA3EF8C78
          7C36F112B2ABE51E5CED2B892C239F890DC2CFD106A1976383F00BD44148E370
          10AAB4199CCB059CC3AEB41D96A91F81B9A86150B25204129A76CAECE7BFDC53
          7964C8AFA7260C92BBBBE5AF7802271202F9340E48990E902B7140E66B80340D
          03618D38B6179CB310AB2C3B981C8D602BFBFDB0A4A61244D9DE61EFE3556BD9
          8F43260D52B0BD258F9AA02FAB40580224D680E3E09C02829340FEA223407929
          76E25207C21AFAEFF43FF1EE734983B0C8DBD9CCEA3EDDD7A249CDA998D3B9B2
          F9C0D9E283D09EEEB820DCBCC5AADBA4CD7503204A1737A034E4E07442EECDA7
          C098D73EF23B203A419C66072C71962AC96BBF7E15EA7B2E8C0284BA4180C5FD
          8F1DBB9C3448EECEE6F770C12F6507080D776F43BD2AF37C19726E3A35503D25
          5165FDFAEB3B1024F41022C1F75F7CED4168EAB9982C08EB6CECEBDF5AFD8F49
          83E4ED6CD9872BFA96DEF9696D6C1028D50681F69120C040E66A80B460379681
          10194B873FD4CDC521FF8E3630E4F78D0AA4F6DE7D30C532704F65ED9B3F840F
          2F9E190508150925F3FD4F1E3F971CC88E96C77095DB7583D4C50129D100E98D
          0362D20912F4474FFC188621B70F0AEE6C1A9AFCCC0061C3B6FE27ABB7260592
          B3A3F92E1CE9FA028A122A20A002022A20A001020A882F545D29A5C30F8E9BCE
          8175C1D58C04C16D9EF7C95F2A4B0AC4B1BD6929C7C3A7BA17A83F1D7B7AF13C
          6D908E8BB141E62C52DF666B3D5659FDA1C69C9D04228873752D08F6606682E0
          C071747972CF513CDD64CEF103BBBF2EE89A3F5D207E6FB4FDE04D6E707EAD7E
          64F23308045F3C92F477D4EC3F696EC3F399523DF3720DB1412803B1AA80F475
          0317078496A983706D0CE4BA7289848198667440EE17CF6734080EAF250D82D5
          D6AF7074872E90C63820B3758074C60129D500398B203E8F5242583B625F7411
          6CCBDA331A04BBD0279306B13DD5B417EB3CCD2F31B2E01B3F8E399DCC9EAB01
          7215F83820A474A1FA36CF360C01C9B9A50D2CF3AE6A8214981CF0FAED5B60BA
          DD39B0323AF4659EC936E4D78BAE8B3E9048CC2FE1424012E17BC7F6C291968F
          F494908EE44BC8B6C607D90D7C5D20AD35CADDB91120250B43ED41BCF0F401DF
          1EE3097E4424B3D49FACE12F3663A6FAA220B99F6D017369AF26C8E78A16C21B
          2BB7269B9698F1E2E9B7E1E1EAE7F480F8926F439E6A5E8585EC882E908E0BC0
          B9873E09488DE61088DA734DF8E912CE35282777439675CD0092EF52DD26D7D7
          A560462E99E47CAE09CCC57D9A209F2F5A04FB573E912E10316910CB538D7378
          0A2DBA66261226E73C70FD9E018C69A5CA19B756705E0F565BE7A3258CE63981
          B866EBDA2C7FE52C40CF6504C17390E55865CDE9D604999B331D8EAFD9AEFC02
          C558C5BF7EF8DFB0F30FBFD4037235F9ADBE4E055B53831B53A6F955DF687225
          F6E80C7EDA0D663D4FFC0D04DB6976D66D083F5EA337D865139F5B694B1CA59F
          807D66ADAE467D1EA24CB316847EBF41699021D22D55C63FBFFD07906B1A38EC
          1FFEEEBFA0A6BB6D48030EE1657D583A4F5CAA0799ED8B1608A18DA3FA1858FF
          ADF14D5CDBD746B38E710DF6DC143B5BC7C1565003B9733FCAE85E16FEF3F6A8
          40CC3FAA5F8845FB0FF8323FDDB98F1B6208C468BA0453CA8F6434086E77FBA8
          2B4AEB8FEBBE4081DF872F178F765DE31252307C72E885A937FF12782190B120
          4426ABC6A6E57AE14F464B7BCE0AE088EEA7BC531594120E4B098F6D90E02A3F
          B8C960E9BB314341BC3EC95634A17EDEA764FFA6BB392007321284D0577CFF5C
          7DEF840259FAFA7A9397CB69C524CCCC341042C9DFF89F3CFEDE84026151FAC6
          C67FC2CED7BF8F06E4E37B5E8069B682E83ABF72F0093871A56E3420BFEFDFFA
          EE17D8BA261CC8ACD7D75B05B0D700E5CA9205B9A37839DC3EFB16257917AF77
          C19E3F1F8C9E67240182CD1C5DE17BF2DD0F2624088BE2FD1B5773040ED37889
          4BE96340F4A5FE278E7D33B26F13128445E96B1B5F2040EF4BA6848C1508569D
          2D669E2CEF7DFCDD6B131E84555DBC6CFF0DA6E5B36902F1804C5778B71E1B72
          B368C282B098F1EA7D853C17789FA374518A4182949035DE2DC7467CB36A4283
          B0287B75D354898AEF60C7F3961481786542D6F73F5E15F3D6C584076131EF95
          7B72FD1CFF1282DC3DCE20CD8472EBBD8FBE733ADEBE4C820C8AD9BFF8C6FD84
          C053089237C62014ABC59705137DA8E7C1A15F3F181E9320C3A2F4A50DD3827C
          F047585AFE0193691A2D08F6E43EA032BFC5F3F0E10FF46C7F12244ECCF8CFBF
          9B4D39D88C30DFC0BC162708E2C5D78700E417FB1E7AE7BD44B63B09A2159595
          FC8CE2BA9B24C2DDC601598ED5D9024CF82C4C7C0E26DD88601E3CD5EEC45E53
          3326F30C7AFCC66222EF5FFE76723FD0FFFFED54D23ED5ED5D7B000000004945
          4E44AE426082}
        ContentLeftMargin = 0
        ContentRightMargin = 0
        ContentTopMargin = 0
        ContentBottomMargin = 0
        Options.LeftMargin = 0
        Options.TopMargin = 0
        Options.RightMargin = 0
        Options.BottomMargin = 0
        Options.Stretch = True
        Options.StretchBorder = False
        Options.DrawOnlyBorder = False
        Options.DrawOnlyClient = False
        DrawStyle = idsTile
        VirtualWidth = 0
        VirtualHeight = 0
        TileOffsetX = 0
        TileOffsetY = 0
        Proportional = False
        Scaled = True
        PixelOffsetModeHighQuality = True
        InterpolationModeHighQuality = True
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D4948445200000060000000600806000000E29877
          3800000006624B474400FF00FF00FFA0BDA79300000BF34944415478DAED9C0B
          5C54551EC77F771EBC5111111193F74390D408332C7B981156C8C795D448CC1E
          586EEE6AFA514B565BEA936D495B9BE56A6EBB608466269A89A5F9282B1F69BE
          4670239819E48D20AF016686B97BEE900377EE30C0185C58CFEFF381B9F7BCEE
          FF9EEFBDE7FCEF39E75E0654A28A11DB809B5D1480C8A20044160520B2280091
          4501882C0A40645100228B0210591480C8A20044160520B22800917543004605
          84074A59C4B16083242C2311E70C9852866D3D545898FBAD28C7BF51F36DCDE8
          E31F9648326F6159C641EC93308AC5469552B1486C337A2A9B00F8FA86FA4222
          554818383D31CB1B63825DC885284E6B5659A5C54759456CF5351D03867D4255
          70295314436C944DB5E6E31FBE885C71EF3FFE879158FE9CBFD8E7806327ABF1
          A7D5978849D8AD2E54C48B6D4F4F641380D1BE616BC915FFCACA17FC317BC648
          B1CF01EA2B4D885F709ADBFC5155A88816DB9E9EC8C63B60ECC360D9BD013E4E
          D8F4560486BAC9453B017D2B8BD4B45FB0F740056906F1AEB240B14434636C90
          AD0D37E3E31B7E90E4BE5F4A3A0291FC1FD309E8F42CF77B95B44163954A4599
          78D6D866BF4DF2080F7771D2601D292099B4BD76E29D02CBB9A2390609B3B828
          FFE2AFE2D9619B6ED8752177C24E52CACCC92F2EC1D080C03E357EDF92A568D5
          E934A4DD77EED303FF8EFADD003C90BA161E61617D6AFC8EC479D0B76829000E
          C03D2FADC4B090109BCAB07376E29A11D29AB0D0366ADA0C9332903B3A19B7D9
          D656E89A9A05F9762F5C4800D03BC00840EEE8402A4D6A531963131210F2702C
          D4DFFF88531F7ED866984482292B5710A8C138F39F74141E392AC8A7D368C01A
          580A40DC2648D7C4B63263FBF4C01D249319F405058A2218BD819E6B4003C84A
          98636CB6FA81EA4855A6EB5AEC5795949CD6F424E38006B07DF6E380A1152181
          2E7D7ADC8E321858288B3468D1B2360D850C68005C132463F4F8E10B71471FAA
          AE6AB160E97914973683610D772A95B9C7BB9BB7D70054171442DB506F318F93
          FB300CF2168E21B5D4D5A3465968D950D2290F0F0B27BFED26F717009C366D55
          6353869ADB7C813805EF77375FAF01D8F34C326E8FBC155233CFA89E54726963
          33EE5EBB4650D6A55DBB507FE2047CFD7D0471A74EFC8CC9292FC1CDCFCF14D6
          9F00AC48CDC3C1EFAA489BC4CC54A92EEEEA6EBE5E03F0C5D3C93879EC73383A
          DAF3D25FB878198B53D210FDCA5A41598A9DBB30CD6B105E589424888B4B781E
          23E72662A87F3B80ED649F31E831275EBC1159AE0FA8B9A6C7FEC3955C659683
          95872A9567AF7537FF800690356B761F5573B72AF22A2BC163AA5F15877A98EF
          C6242A8084D946EF7B5870501F54B150DA8606D4959492D3678ECAA4F284FCFC
          9F2B7B5AC6C007403477C7F6DEACE74E5574E2248EBD95C655E26665A162A12D
          65F42280679130331672B98C97BEB2AA1A67FEAB2600849D3007C03E3F0F1326
          840BE23ECFFE0A91CB975300E6EA0C80F2BBEFA021956D496EBE3EF09A305E10
          5E4F6E67EEA42C49229322F0C10721B36F9F7AB80E202C7EC60D9D43F0F45838
          BAB9A1F0F011D2A49440229521FCB1599010D797BB28F4CD4D16F371CDCF1562
          6FBF04D017BADE07442D7CD6F64218063ED1D1903B39A2ECC205349495432A97
          C3EF9E29C6386E8050AB69B498B5A65089FCAF0FDCE400409B208B002E646440
          5763D91D76F5F747D0A38F08C2CBCE9F470969062CA995FCDDFAE493B01F3CC8
          144601C0BA17F46E5A0AECECF89DB052598C2D9FEEEBD40B0AD1D6236EC60382
          B835A9FF4070F242DA099B8BBAA114000F80E66A354EA6A54162364F70CBB469
          F0BBFF3EE376E1A1C3283A7080176F201DEEC465CBE0E43ED4B87F32ED6D3457
          55F1D2B812EF6DC2C2F67AA6002C00E0466195E9FFC6E6F75E3585EDD97B105F
          E5972022695E9B0D195B11133812718FB43775C98BFF02DFF90B4CE573F6EFDC
          B6010EF66DF697955762F1AA3730356D3D05D0158092AC4CECD9B1D114F64956
          36B24EE5F100CC8D0AC5E373E33B2DDFDCFEE2E232CC4C5A3A7000EC5BB418BA
          A6466E9C8497DE603060786808A25F5A2528EBF29739B8F8C92790DB09D77935
          699A10FBF67ADE3C0205600540AB4E8BD6169DC53C9DAEA0E8B02CC55C129904
          3207475E180580FEF720565F5686432FA70826EB43E3E31032A36DC8E2F2EEDD
          C8CBDE6356130CEE7FFD35B88E1861DCFD66E52A3454F007378705046072CACB
          A6FD7E0D40DFDC02835E6F318FD45E4E1EF785CD0C6B608D6B7D2C1A2A911887
          0BBA02D097EAD700BE7C6E111CECE4307F7146A7D3C1D5DB1BD1AB570BCACAFB
          622F7EC9CE86B38B709D55756535A6FD6D1D06DF32CA144601A0FF79419C1ACA
          B9A683DF04390C1E4CFA90365BB8BBB3B9B65650152E9E1EA63D2E9E4BD75172
          4747D80F72A500AC01B8A652E370CA1A8CF26DBF536A6B6AE1396912229E486C
          B3E1E34C941F3F8EC16E834D69AE28AFE0BED75231C467749BFDC9CFC173B8BB
          E9DD37BD4E0F8DBE1553D7BF4501580340BD200AA0FF00485DF367C168A85A5D
          82ED39DF760AC0A7BE123131F708E2DEFCFB168C211D3B05D04D008ACC4C3455
          5659CC3324381881D36305E1158A5CA80F7C6DF9401229221624C1DED5FA7C00
          0720F79F1F60C5D2674C613F7C7F1AE735AD3C00B73A49113D39B253C0E61750
          75752D367CF4E9C001D017B204805B2A7269DB7630660F629E515118317E9C71
          BBECEC39949F3AC58B6749671B366736EC5CDA16FAE67EB613DA9A1A5E1A672F
          2F043EF2B0699F02A0CF019D03E05618345DABB598877B98F2BE3D52105E5B54
          84E29FCE5836943C0907C64C83DCA1FDD3141400AC77C2C94F3D06998C3FE856
          515E85C3672E75DA090FB9528849932608E2D233B3317EC9922E3B615D93A66D
          9C8735F0F28F888C84C76FEFB0555EBE8CB2D3A7CD6A42621C2FBAFE5EDA2F39
          FBD15CC35F56E3E235127EF7DD3B700088E5869E7DE71DCC4F6CF770CE9DBB84
          628741BC4ED8BBB90EE3C6B5DB6B0ED8FC02AAAF6BC0CEFD47074E274C9F0328
          000A8002101100F7864C70901F24127E27DCD8D88846468ABB2CBC21939B9D8D
          8A2347E1E5ED258C53E4610AC9E3E6E76B1500B75CF0DBBFA6624C78A829ACAA
          B212AE11E31131EFB7C1B8AD99A8BF7016C33C3C3A2DDFDC7EAD568B32F230F6
          40DA00198CBBA654A1B9CEB21BEA3C7CB869E6A9A3B40D8DE40AB6FCBD0D8954
          0E8F31214677D41A00D6604065EE65185AF9D3A16E3EBEA655752DB575A85129
          AD966FC97EA7A1EE1834CA7B6000E80BD1E700D80E801B0EC83F70D038EF6AE7
          EC8C51774421282686F7166457A20060030096C5A90FFF655CD66D2EF7A02070
          1FFDE838EB644D9600345654E0D86BAF1393F86341FE0FC52270FA43C6EDFC7D
          FB51B03F876F16C97157CACBC6E691D3B1575F85C66C307188AF2F26BEB87460
          03F8F59B4338B97113DCDDDD90B27A31264DBC0DEAA262BCBE6E03CE9DCFC5E8
          3BEFC4E465DDFBEA58675E903A3303591FA599C23EFB7C1FB22F14F2BCA0F808
          3FCC9A39DD9466EE53CB303A3189E7051DDC970E87DFA6314B4B2B30FF8F2903
          C70BB224AE83CC4E7E1EDABA3AECD8B611B7DDD6FE2A5203E98063A627A1A4A4
          1CB1EBDF24579B4F5787A66E6847005357AE804748302432B9E935A256ADCEB8
          40EBBA34D5D5D8B37C0542430390B3375D50D6BA37DEC7E62D59887A723E02A6
          DC6DEC0F78DF0C6AE67F3368DBD3CF5000D70138CBE5903212B8C8EDB03B2E11
          8E04C49C9C4FA1AE6B7F49C340DAFF06026462D4386CCF12BECDBFE1830CA4BD
          BD190E3219EC88FF2D232EE1A6A9333066A8075E397E085FABF279E9EBB42DC6
          33A04D100190FEE04C447A7A5B4D5B505B83B83D1F770960C5ED772369CC7874
          A588ADEF81656827DCAF00F4A528000A8002A0006E1A00F7DE2B1BADAE7A8838
          F38E66052C23FFEF88F10984A793F54F87D5B6346377411E860C1964F173042A
          55310A0AD488222039CFA72B65E49E35FE863C3ABDCBB4BDA186D27214FFC44D
          6D3207591836F3EAC5C054A9548A23E8E2637EDD0630DA6FEC3CE259640863D8
          6E17D3FD94FF1F6258C42A958AFD56D374B7303FBFB19E06603581C09B616119
          C6032C1BDA838A1D46FEAC7D6EDD60FCF60EA0EF4659D757D7D676236DAF8834
          81A40A180579C8E12D2222F637481987D48282D3566DBB992EC87E290A406451
          00228B0210591480C8A20044160520B22800914501882C0A40645100228B0210
          591480C8A20044D6FF000D55FCD9C67CDAEB0000000049454E44AE426082}
        ContentLeftMargin = 0
        ContentRightMargin = 0
        ContentTopMargin = 0
        ContentBottomMargin = 0
        Options.LeftMargin = 0
        Options.TopMargin = 0
        Options.RightMargin = 0
        Options.BottomMargin = 0
        Options.Stretch = True
        Options.StretchBorder = False
        Options.DrawOnlyBorder = False
        Options.DrawOnlyClient = False
        DrawStyle = idsTile
        VirtualWidth = 0
        VirtualHeight = 0
        TileOffsetX = 0
        TileOffsetY = 0
        Proportional = False
        Scaled = True
        PixelOffsetModeHighQuality = True
        InterpolationModeHighQuality = True
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D494844520000005A0000005A080600000038A841
          0200000006624B474400FF00FF00FFA0BDA7930000186D4944415478DAED5D09
          7454559AFEDEABBD92DA2B5B65272B0910B2115984000D824240187A8EADADB4
          DD7A7A75DAE96E0571CEC98C80F674F7393DC75EB41519A76DBB5B5BD9445104
          0CCA968D45D61042422A7B65A97DAF37F7158284AA4AEA65A9C2193F0F47A854
          DDBAF77BFFFBFEE5FEF785C2D78808A8684FE0FF0BBE263A42F89AE808E16BA2
          2384AF898E10A24AF4E38F970AD4BD8264C0A5E15194041EC643D3949527745C
          AD7EFB9C25DAE44C24224AF4A655E5A9E47F2BC130F34053F318303A0A0C4551
          3C174DD8F6328C806118897F621475C5076617CFEBDBBB794FE321F212136DB2
          C6834927FA27CBB3453291EA018A617EC4504C8958281C9249C4B152B1402816
          08C017D064125F4E8321747ABC5ED89D6E986D7693D1EAE0333E5C858FD9B465
          4FFDAE681336564C1AD1EBD6ADE365BB5B1EA7413FC7E7D1028D3236561523A1
          793C9AD3388464F45BAC9EBE4193D3E765F6095CBC47AB3F38618A36715C3129
          446FA82A2BA629EA4D019FD625691472598C78DC5FE4F1F9A0EF1E305B9DEE5E
          970BF37EF57E5D7714F81A33269CE84DABCB7E4A64F779AD32968E57C984D404
          7E032BD21D7D4356A3D5DEE9F60A4BFF73F7117304B91A17268C86EA6AD0AE53
          A5BFE351F42319491AA944249CA42933B8DA3960B6DB9D7B37EFAE7F20423C8D
          1B134534F5ECAAF23704027A4546529C9C48C6A44EDAEDF1A149DFEB15C7F06A
          BC4EDF7EA7C77DD6E3E4D5DFC9723221446FAC2AFB8D50C0FB5E564A9C9C4F4F
          2EC93740E40316BB8371B83D94C7E3F3B8DD3E8AA699F35E066F889CBC97EE34
          87396EA23755953F48F1F0A79C9404E9645BF248F0F918120E3AD067349B1C2E
          0F031FF5E3ADBBEBDE88DA846EC3B8887E76E5AC4C8687331989EA981889F08E
          49E74D163BF4862107E17EBB7066DD8F89FFF0457B4EE32287647AFBD50AE91C
          12C249A3BD90DBE1F278D1D2D167F379F1E7CDBB6ABF1FEDF98C99E80D55E5CB
          8852FC233F3D3186A6EF18631E0697DB83CBFA5E27497A7EB87577FD6BD19CCB
          9819DA747FF9D924B5224F2D97F2A3B980D13064B1A1A377C8EA7253D9D18C4A
          C644F4C6552577F369DEBEFCB42429153DFF1716D824A745DF67B3BB3DAF6FDD
          59F7C368CD634C44136B7E374E117B2FC9FC44D19A3817D81C2EB474195C0C45
          EB9EDF51DB1F8D397026BA7A5D61ACDB2DE9CF4989170A0577B46A0C43D3B56E
          ABDBEDFDF996DD0D2F45E3FB3913BDA9AA741D61F8959CD4784534263C56F40C
          9A7D06A3E5B32D3BEA1644E3FB39134D52EDBF689431DF4C50CBBF3AE64CE070
          B97145DFE732B986E42F7ED0EC8CF4F773B7E8FBCBF569F1EA6499343AF26C27
          7ACBE7F320207FB88021FF9DBFDAEDF57A31FB853D7575919E3727A237DE3F4B
          43797D7D059989141DA19AC6ADF0FA7CC4A9F58321295F7AA21A228E3EE2727B
          AFC5E1F63EF1FCAEBAED919E3B27A29F5D59B28812F2774F4D4B8C89F444598B
          D4F70C213D3B0E0AA5147527AE203351031E870BAEEF1B720E996DBFDEBAABFE
          D948CF9F9B45AF2EFBAE5424FC6D964E1B1BC949B2FB881DFD43885548F0E0C3
          73FDD2B16767235A5B7A91AA5521DCCD85EE0113FA872CDBB7ECAA7F3492F367
          C189E84DABCB9F53C44A7E9112A78C9840B355B98EBE21C854123CF0EDB9100A
          AFCB052B23AFBF5A03C6E58556210B6BACDE4133FA8CD6BD5B76D4AE88D4FC6F
          809B74AC2EFFB35619FB104954223239BBCB834E62C969E95AAC5E5BE6B7E45B
          D16F3063DBCB8790A9D342188673EC375A58B26B9EDB5157199105DC024E44FF
          DBEAF2DD5AB56C25C90A2775523EA21503462BFA4D562C5C5C88B28A296C9F47
          D0F7EEDD7312FA160312D5F251C71D34DB58F938F1DCBBB5774DEA0282801BD1
          F7971F4850C917A91593E50B190C991D3098CC50A965A8BABF14DAB891EF9E01
          8305AFBC7C00B9A909A047116BF6C2F50C583ED9BCE3C4C2495A404870B4E8B2
          E3895A65854A36B1E567B7C78B418BDDBF43229208B074D90CE4E42686FDF9DF
          FFD7475088459049C523BEAF8F488761C0BCE7B99D755513BA8030C0D1A2671D
          8C57CB166AE4E3B3687673D5EE72F9930F87DB03BBD3859C9C24949667222D43
          1B52264261C7DBB5E8EF36234E39B2A475F59B5849FAC3965D753F9A243E4382
          1BD16BCAFFA191C7AE1D8B33642B68EC86AA8D90CA5AB05A23436AAA061953E2
          30654A3C84A2B167F4073F3E87A6B31D48D28C5C7EB9D633E03059EDD55B7735
          FC7292F80C098EE15DD98B2A79EC8F759AD11DCF0DB05B4ABD247EF591BC62D6
          5D39C8CA8A87262E96B3D58E84C3351770EEE435E834CA11DFD7ACEFB592CCF0
          D1AD3BEBDE9A601E4705A7D53EB3BAF4DF1452E933A9092A7138EFB739DD241B
          1BC4BCF979A8989333AAB31A2BC2239AC1B9ABDD1E86628AB7EEA83F3B291319
          01DC2CBAAAFC41B188FFC7AC94B851B583B5E4AB5D0654AD2E457E41F2A42E22
          1CA2D9FDC3267DAFCFEC1C92DEF1D5BB67569696D03CFAD8D4CCA4517B0BAEF5
          0E208710BC6CF98C495F4438449BAC0EF6EED26FDE51973AE9130A024E4457AF
          2C95BA28CA92979E408D54A664ADE74AA701FFF2AFCB21914E560FDE97088768
          36FDEE375AF73DB7A376F9A44F2808B817FEEF2FEF4A4D5027CA24A1CB1D6CAA
          CB970AF0F0A3F323B2887088BED63DE032D91CBF8A46E58EC5180AFF651F91EC
          7089768434BC8B441919D9F158765F514416110ED19749C441EEB4C7B6ECACFF
          6B4426751B38134D228FADAA58E9CF92E3542135818D340A67A6A17251414416
          313AD10CCEB7747B7C8CB774EBEEC6331199D46D18C3E66CF9832231FF0FD9C9
          712183E93B8D68B7DB8B4BFA9EA8451C2C3813BD616579B9804F7D3235233164
          C1E34E23DA627790AC307A11070BEE16BDA6389DF1F15AA66526D1A13ECE16EA
          0B8A5250B9B830228BA8397401E74FB713A283A7E003D7AB76479EDB71625E44
          2614049C897E72DD6C89C4E5B6118B0EB95FD7D56F44464E42C49CE1FE7D6770
          E5520F9242D4A47BAE87767FD9BCA3F6A1884C2808C6D612B6AADC9D931AC70F
          D5A9C4C6AC9A4419D67CB322228B78E7AD131864AB77218A5D9DE4C20F0ED97E
          BB6577DD93119950107026DADF72E0F319F2D21211AAC37FC86C8793F2E2F11F
          2C8EC8225EFADD7EC4F00490C74AD04F27C040C7C3872F132AA3CDE11B82FC93
          41C5CC8F461A27CDE7981AC378E283FD4CCF973498195ED8C7A609B11D5E1FF6
          EE7D61C5E09888DE5435AB8CA17D270A894653213EEE74B35D41063CF98B7B21
          964C6E66683639F0E26F3F40665A1AEA6296A18F974C088F8548724BDD8B61D8
          83D05E80EF1969AC29FDADC278858492C60EAFB7775DEB44BB3CC96D11CBC23A
          39E0F37961329BBD4E8793F151CC237BB6DCF7CE18E2E8B26A8950F87456B276
          840A1E83A6F65EDCBBA2048533522695E886FA161C3E7811ED998FC0A9CC416E
          C13472A709C63416FDD907987FCF5CA86E8B5E4E7C52870E5A062A2397D37806
          433F2E5EBCE4828F99CF8968F6D8719EBBB5355E2D4BD18EB241CB6687B10A31
          1E5A7FF724D07B1D0CB1D4575F3E0833A5C3C9B8075056316BCC24C3E9008E7E
          88AA07ABC0BBAD8E73F1F4455C223EC037B594F3B06DADAD9E8ECEAE4F399649
          4BBF0F9A7E716A7A027FB496301749129AF5BDF8D6B7E7223D336E8229BE8E73
          67F4D8BBA711DECC25D06B97A0B0681C51CE401FC4974F61F9BA7B027ED4D1D6
          81C6864BF09455721ED66432E1F33367ED6113FDD49A8A1481D7772E412D936B
          95E1B51B74198CF0F1293CF683459C9B124783C5E2C02B2F1D8042244697B612
          06DD52E4E4E78F6D30B70B68B98038D8316FC99C801F9B8D661CD875084C31F9
          9942052EAE8DE8346AEBEAC3FB447565A5D8ADB41E938A04533392B4A270374A
          D82EA3E6CE5EE852D5F8D68373276CFB8ADD73DCFEEA27B09B9CC84852E32CBF
          7C6C445B8CE0B536C167E846AC528E829979D0A5E902DEC64A54C3678DE86CEF
          06783C7893B380E40CFFDF278C68364191BADC7B053C7A4E566ABC884B53A1FF
          8B5C1EF6580374292A3C40C81608C667D936AB13FFB3BD06568B0B5392346025
          EC2CBF2C90682F09323C6E4014C46793D7E9CB67C1F476203D271D3905598895
          8F7E97FA7C3E74EBBB49167A0956AB03BE5C2255DA206D11ECC119871590C484
          47F45355C53A21CD7F8F475385193AAD906B9BEC0D3808D9D77AFB8993A1B178
          D934144DCFE03C066B55B5B5CDA839700162111F295AD5CDCC3418D1D495F3C0
          B566D0DA0478135209210924ACE0B13A00DEE7C7A124C94DD9DC52486325DC17
          4488BC76E51A4ED79E81372E194CCE743236998BDD06AAA71D74F735F89C4E30
          158BE1043D32D1FEB32A2EC9198AE6A5E5A46879E3D5585646AE76F5FB9F2C93
          9EAFC2F4E9E9C8488D876294661CA7CB8D36E2544F9E6CC595737D9008F9C84C
          D60E7B6A4D00D1762BA8DA43A858500EE38011579BAFC145C661344924E6EA40
          FEB45CE4CFC81BF7016DBBD586CF3E3E46945D488662E0350E224E178F8C9C34
          74B476A2CBCEC03E65FAE816BDA1AA245B40F3DE148904B929F12A45388D84C1
          C036CCF49005BBC9AD37E7EE2C78F80CBAFA8660B1DA31352719A5D3B271FB93
          69D8FEBB7397DA70EA7C2B6248F29118AF825420C4B19A66D88823647B3862BE
          D8E5B99D68DED913485688503AB7E4FA60C4020DE48E6ABBDC86B8442DD2B2D3
          C6C7F02DF0B83D3879EC943FF64ECD4A254A757D4E0E9B1D1FBEB31FCEFC521C
          6F6A09EB9A529BAACA1FA368FC521123A6E3557279B83ACBEE841B062DDE418B
          D523D78A456BEE9FE5978F1B18325A71B6A99DA4CB0C723292A0515D2F0A0D0C
          9AD1DCD6E5B7DAC29C14286FE9F5631BD2DF79B70EC61EBB552214F0B5AA5851
          9B7C2EFA75F75C279A8469F4B95A2C5BBBF4E6A2B9803D4D60B739FC44F18954
          8A6324100AC7169B5F3C7309972EEB71D8210CFFE661A5C4E596FE8447514F08
          F8B4482993CA622522BE88DCCA376E6356479DE40A5B6C4EC668B15B9C1EAF87
          A698D7B4F192BFF0D5C2C6650B66062E8C7CA6BBCF885E03B170FBF59A3C1917
          F15A2512E3144123957D35A7E0313385DD7AE37D3C504F90F04E4715ACA173F3
          F2C1AB3B84A9F9C4C14DCBE1448AC568C1A5B39749BADD45A23D176891088C9B
          C80D49A7E51A1532C95D90999B018A4330C01E98F9F0DD8F71D6418F49A5A88D
          AB4AE6F169DEBDE4C34B49F29F4E31602F39E19B725134D541B83BE8F578760B
          4B1A6AD8270BFC71C3B20C86F65C0D46F458C0124DF9F8993F78615F2BFBEF75
          4F6E7B55915EB83E2F218E87939F61D6FC7224678697FAB317FAC2A98B682224
          2331050CEB38156ADC3C46E02217DFD0039EBE19429AC1EC85B348281DDEC93F
          2FB9A38F7C7C14ED7DA6897FA6D2E32F574B9D3CDB6C86C23C1E451793C8602A
          CFE54C286A3DAD583C671A09EFC6776A8E6D653878F42C4E671419BD42510F21
          EAFC50579E521D53303737375780DE4E50171AFDCE6E3487E78F640ED7A3BB67
          10BE6915E456928DF466506D4DA0DB9B3177F16C6888D68F041BF13F470F1C83
          C54BE3988D9A18A2D7BDF5A4446AE4AFE6F1F9DF25B74BA540207027A8D49446
          2E17C92452C488C5B01FDA8924A117F959BA717DD7F9E64EF47804905456C1EA
          70C064B3E1C27932B0278F9797FB45D44142389A38C4C4040DCAE69504D42E6E
          8E75F2029A2FB7C35B3A1F108C5E654C55F391E3D1E3C8872751B96211A431C1
          43C37EE2788F1D38012F89B1ED69F9A8AD6F181FD10FBFBE913D0EF70451A027
          C542212F5B9722494B48A41431816DBD4E927D75EC7A1DB3666443291F5B7FF5
          90C98ADA335790BC7A3D449A849BAFD7369038BD43859C9C5BAA6BE496A73F27
          64AB63FC61DEEDB09AADD8BFF3001896E4D8D19B3653547CAC2D9342C0A3F0FE
          DF8E906BE944D9DD81E3DACC367CB4F363206B2A98942C6E29F8EDA8ACAEE6A7
          A7397E423EBC592D9353D333A74874DAE1B16D50A21A3E8599440477CDCC06D7
          A788B1BDD4C74E35433E7D369425C3EB11418926A09A4E234BC1C7F4F2E901E3
          B121599BC90B666A31279259588C36BCF2C20E2C5EBD1831B2E146C5668FBBDF
          D80366D642906C68EC443FF8DACF0A4410BC4B2C38AD3CBF4092ACE5509923F1
          6CDFC19D7076B4A0A430C3BF23120E8C161B4E9E6B8330650AE217AE0ED0DD50
          44F31A0EA3B8281BA953863B46569BF7FE7D1FDC6CD95335B2D6DE4EF20DBCF5
          A78F8953D420BB303BE033FB771F844547E612AF1B1BD18F6C7BEABB64957FC8
          4B4DA54BB2F3462D958622DB70F443982E9C4206C9F0D8EC30D4DEA39B38BE96
          F65EB47518A028288666F6D2A0CE2D24D1473FC2DC45E5D0C46B86BDCEC6C81F
          BCBD0F58B0E27A5A1E02AC26AF290D24997D36D6F6371A21B39B882C95057CEE
          C881E3E815930B983A8523D1C4E13EFCDAD39B4904F1F30533660A751A6D581F
          1B09B68E56F47FFA015C1613D4CA58928A8B21FEC22139DC2E18CD0E7FE22294
          2BA1BD7B3924BAF4906385948E9AF7B0686525E4CAE11A3CD46FC4D18F8F20EE
          BE15D00F04DFDD0A65C94E42F23FEAADE8BA7015AAC176542E0BDCD8A8FFB401
          ED3EE28732F3B811FDE8F60D7FE4D1FCF54B4ACBC4CAD8893D63E8E8D1C3D27C
          012E4327BC0E9BFF359E240642E2B163B30A214E18BDB73A14D1ECD6D4827BE6
          41795BBF8799242787F61CC48FFEFD5B789B25CDE8E546F210797F7B0BE21D06
          12EA059EA43B5153874E9A5CDCF49CF0895EBF6DE3F3023EEFA7CBCA2BC432E9
          1DF730B01189E69F38808AB945442A876F6CB389C49E37F7E0B10D6B208C91E2
          ED3A2B7A4CD7C90E25174E37E3BF28DD5F5C14BAE90C3264148A2A0277753ED9
          770483CA244097111ED18F6CFBC5C334CD7FE5BE8AD942B934E2E7ECC74D348F
          8477051971411DD6910F3FC5F48A2C14CFC9F393F816219B2537A825BBBFB0E4
          1B964FFC0CFFF87E94CF2942626A603DFABDBF7D00770109FD94EAD189FEF6AB
          3F9F46E4A2AEB2A8583C119A1C0DA2D1F439740257D038BAADB90D57CE5DC6A3
          4FADF2570E6D2E066CADEC76921DAC25DF62F17E10B9135EBD80E56BBF417CE9
          70676A278E76DF5BC4D1CE590288A523135D5D5D4D5F4B7336E6A6A516B2D145
          B489E44C34B138EA5A13A8D62692549422392350E7D92ADDA1F70E216F462AE6
          DF5B1274DCDBE5E2FA8B0E7FD838B3AC2068B99595A5E335B530F49BE19B5101
          272D0C4DF4FA6D4FFD542A926CA99A334F1A8D07A08C8B689230D0174F4260EA
          C79CC5B3031CE1AD60375D0FBF5F438CAF0865F38777BE3ABE908B00923F3F8E
          A43805CAEF0EDD7AC0C6E9E71BCFA3994426CE9C19384EEE9E00A2D7FDBE3A36
          56E2E85C50542CBBD3252380E8B434F0CED64226A4307B5105C492D14FE90D18
          06517BE83852321350B9A2040AB52C08C98C5F2EE82BE7A14B8E47E99C990192
          110CED2D7A341E69440B15E489F0EBB73DFD8C4A2EDFB8BCFCAE883EFC644288
          4ED6917F1C42E57D0B02BA8D4682C3E6C0F993E7A16F69477C6A1C8C22156C10
          B20F050165B780EEEF069FA630BDB4D0BF8BC2056C97D305BD6138D16C0D2333
          CDDE337F46B19A536A1D65DC2A1D54F339A85C462C58C6BD159ADD03EC6AEFC6
          40DF206CC489B1CFC296C96390909C006DA2165C6574B07F0835449AEA68C570
          A21F79F5E9FB4422E1DFFF695E65CC57E9770E0DD3688F1BBCE3075036772674
          E9C34BB2368B1D02219FFC1963DB5808B05ACF1697865D08A23687DE3F8C0191
          02477A6E2BFC930CF0ADBC948CB5C5393977BE07BC05015147672BC4EDCD58BA
          66B17FC11DAD1DFE9DF0811E03642A39E67D633689BCC6D06610046D64DC9347
          4F82C7E7236D4A0AD2B3D3A1D42AA1BFAA47C389CF612F9A87DAC653B7FEA619
          50DFD9BE71606959B95223FF4A3DA4314878C780575F03B99807D320B12612CF
          7A1289B6C6278326F1AFC0D88F8AF9A5A3EE928C04763FF01C892CAE36B5C157
          58EEDFFA62FB3998DE4E486363E17239E1CE2C8053193F3CBC6313143ECD6F7C
          60E112C15749368212CD62A81F546F07189660B9EACBD7D9185BDF02AAE53C71
          6C69985A940B490C87D202F97C577B17CED49F8393E2C39B5F0CA21BB75E01A0
          AFD3FFFDC82F2211A16B38D10FBFF2F4431AB9FCF7CB2BEE0AFF191177084266
          8623C146A289960BFE8DD7A4F4247F34119F1447B2445E88B7DB8904E9FD1264
          B7BBE04BCB01890931DAB3E00232C387B73DF51FB9C9A91B66E5174CACA78800
          C644F40D58CDA0BAAE11EBD7232585C4C8F302131197D385BD7FDD0B9E260EDE
          F8142021E57A0B58180820FA3BAF6DF8DBB4CCAC7F9E9E3925DABC71467D23BB
          41A0C0CDCDD9B1802424F2EE162C5E5919F0A3FE6E033E23F1B06FCE3D9C87B5
          DBED686868F4DD24FA7BFFFDCC473A6DDC9244A58AF360D146678708579AE350
          525236F6412C26D00D87B1EAA1AA805D9C968B2D3877B9139EA2399C87658F57
          5CBED4DC7173C8F5DB9FFE0D9FE247EDC0E378E0F30AF80357CB66128BA6B571
          638C247C5E50357BB174ED3D011DA6A78F9F468B95FC25673AA72119C68786C6
          5356A7CDFEEBAF587C111A2B37ED5D4B837A33354547ABD46ABE40C8FD3458CC
          E9CF505C920F6DC2F03DC6E3350D30C813E0490833FD26E1A5956499AD6D6D56
          A7C37161882FB9FBFF0CD12C566DDC5BC1E3F39EF732CC6CC6E70BEBB94FB762
          BACF0CA537F899FCD37C054C547871020944D8DF27D50DAFEF9521A1F4854FAA
          173AFE171F3E573F12608AC60000000049454E44AE426082}
        ContentLeftMargin = 0
        ContentRightMargin = 0
        ContentTopMargin = 0
        ContentBottomMargin = 0
        Options.LeftMargin = 0
        Options.TopMargin = 0
        Options.RightMargin = 0
        Options.BottomMargin = 0
        Options.Stretch = True
        Options.StretchBorder = False
        Options.DrawOnlyBorder = False
        Options.DrawOnlyClient = False
        DrawStyle = idsTile
        VirtualWidth = 0
        VirtualHeight = 0
        TileOffsetX = 0
        TileOffsetY = 0
        Proportional = False
        Scaled = True
        PixelOffsetModeHighQuality = True
        InterpolationModeHighQuality = True
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D494844520000006400000064080600000070E295
          5400000006624B474400FF00FF00FFA0BDA793000009864944415478DAED5D0B
          8C5C5519FECF9D7BF7D127B480A514DA99ED4B0A6AB45DB56C1FBBECCC9A0A14
          547C202DB556482B46254413138326468346423086622C2E7681586884F0ECCC
          B44B9716D9B58618BAA1AF99292E566C4BD9BA9DEDEEDC3BF7F7BFD35952B4CC
          DC7BCFB973EE2DF74B9A3DDB9EF39FF39FAFE79CEF3C2F8310BE02935D8010EF
          474888CF1012E2338484F80C21213E434888CF1012E233048A905406AF6060CC
          05C0B9A6C22E0213C633C62E00664E284540E514220E820279C5C4E3E4DE8122
          AAFB3B66B301D965B70BDF12B2ED6D1C1F396D2C314D68A5522EA7822EA0BF1E
          EFD25C9EFEEC45849D4C811D66A3BAAB631ACBCBF6F15CF01521CF1FC4499AA2
          7F898A752B95AC85FE4AF3282B9D3178194DECD24D6DEB8A39EC3FB27D1F832F
          0849E6F4650CF00E407623FDDA58E3EC8781E15326B2873A625A8FECBA904A48
          2AA3B75017F253EA4ADA64574419BB4D60F726A29167696C421905904248A945
          98701FE5FE4919F9DBC01EAA98BBDA63DACBB5CEB8A684A4DFC2A95828FE9CE4
          D0B76A9DB70B500BC12ED3D4EE269576B45699D6AC525299C25A60ECD714BCA0
          56798A0055D0BB54EEEFB747D5476A949FB7E8EEC70946A3BE91B2FA7A2D1CF2
          0EB8593DAD6D685DC04E79998BA784A432A35703539EA0E03C2FF3A921DE8814
          CD9BDBE6D4F77B95816784A472FA72EA859FA6E024AFF290845354695FA0013F
          E585714F0849E78C1B11F1710A36785A35F2304A55B73A1E53B788362C9C9064
          B6B08E01A331032235A91A792802E2EDF1A6BA87451A154A48B9653C09E73F19
          633011D8571331F50951068511923EACB7A2092F50B05E4AD5C843812AF13A51
          638A1042CA6A6A179C7F03B85D9C24F5758D08F5C54D88B54CAE0C1B7FA5E047
          65D78A641C682CA80B5BE6B3211E23DC84A4B2853F929955B26BC31760F8783C
          5A770B97099EC4E5E5904DB2EBC14F608CADE15966714D483A8B1F4130F641C0
          D6A6BC86B5F65534D5F96E17245D1312765515C0D81FE25175ADABA46E12A5B3
          FA1204D8E936FD8700880C5A13516DA7D3848E2B94267E2C9D35F6F87873C917
          A0FFB07D8998F669A7E91C1392CC182B18C3E7643B1C0410291D444AD2491AC7
          84A4B2BAB5ADD922DBD920802AB78766F0CB1CA6B18FD25E38C24BB21D0D12A8
          82973AD99B7744482A57780C907D4DB693410203EC6A8FD5D956A3B609291D62
          8B18FFA2E03859CE9D383E0C7D3BDF7494A679D94C987291B4225B186E2CA8D3
          EC2EA9D826249D2D7C1381FD5EA6676F1E3A019B1FDCE328CDAAF50B61E6EC29
          328B4D9D0A7E2311ADEBB413D73621A98CBE8362B7CA742CA88410D2F19816B7
          13D11621E515DD1314AC93E95580092998E3D429760E78DB22249DD33F8758DA
          7C928A0013625574C2CE26962D429219FD5EC6E007B29D0A3221C8E01789A8F6
          A36AF1EC1192D57B2962B36CA7824C08E1551A473E5B2D5255424A6B5739C3BA
          3F3141B647012764A83DAA4EAE76AABE2A21DB0EE1E58A62FC43B63716024E08
          A0AA5E96B8821DA914A72A21E98CDE4EFD9F27A7F49C22E8843005DADA6769DD
          15E3543392CE14362063BF95ED8C85A0134213C4F53441DC58294E55425239FD
          1E40F8896C672C049D10C28F6960FF59A508D509C9EABFA21F77CBF6C442D009
          A1B9DC2F134DDA0F2BC5A94A4832636C246170876C672C049D1060ECC17854DD
          50314A351BA96CA1CB2F976D824E889DA5F890901A4208216197251062BAAC70
          50170521837A287B85825FF6861343711032310C974EC441C8D249B8B8280E42
          1617C3E5776110B3FC6E8194D6ABF4C3F13955D10838217FA1017D71B548E116
          6E8D20740B373CE4C00FEAA8E2ED4D5ABA6A3C3BC69E3982E31A468C77213C06
          E416859106F5C2EBA7B3E16A11ED9F5CCCE9DB65BFFC16544268144F25625AC2
          4E5C072717E55FF00C2A214E2E8206EAB0754009C93716D44B851FB6B690CA15
          1E25B9C0750F9B07C1240437C76375ABEDC67644C8B6ACBE543973D9930B6F1D
          1E84A193238ED31D7BFB14F424B38ED22C4DC4E0E269CEE7B4132737C08C5902
          6E7C232C893769BBEC467773A5CD7ADB76094F198FFD3B0F9D0FF4C2E888C1EF
          B007A8AB8BC09AEF34C325D327F29A7A8926838E6E0C382644D49CE4D0BEE3F0
          A74DAF019A529EC7FDE00AA119F0CD6B3E0E73AFBA84DF96CDB9C7FBD2B8C988
          5A89F5D8CC42DE02EFDE9E83EEE70F723B2E126D9F9F038BDBA2224CF552EBF8
          8CD344EE08C9E82D94B2C76DFAB3F1DC967E78ADF79F222A801B577F6A3AACBC
          E52A11A65031A1E5DAD9DA2B4E13BAAED064B6D0C980DDC65B72C330A18B9493
          35D0CBC4A53326C1EA3B1781A6F13F8687C0362562EA3A3769DD3F3E537AA5DA
          D84FC1A9BC0EE48746E1E1FBFBE0E4E069EECA70034B51ADFD6E73E9A7009CD0
          8BEAFC1573D8313789B9BA9C74CEB80D113B457871F4C81074FEA60F0A85A208
          73B6A191A25AFDED45A5162202D43A5651EBE8729B9E7B0C10D57559D8FFFA51
          78F291BF5B9B62422AA7AAF3E4FD4DB77E0CAEFCC43421F678BAAAF7CAC45B88
          D285D0BCD14796AE14E1542D9597404565ED77F48FD6ABCD7656742B41C8F34A
          3B0E8E2E284694DD149C2CC2DED38FED85D7FF7684DF500558ADC26A1D4CCC03
          5383A0988BE3B3EADFE03524ECBDABF23B282F8280D7ACBD565E22151561A47C
          C356C8B746843E4096CC1A3730C0AD1454796D79A5BC042BAA22F5555F8937A9
          5B45954FF88B70E57D93DF8180D7AD452B2FAB45582D4390A22A22C375769FCC
          B00B4F9EE84BE58C9570E6317EEE0F7C89525E8215D56859DE0A7B62FCBD728A
          363886F298627DAE827BA017A1BC042AAA411360A5575F74F3F411CB92FA5294
          2D2224F153A4BCF6BA545E0215D55E52535F16A1A63E089EBF2AFACA0036E6F5
          E2FDA4D46FE7B1E35679895354B8D91CA7ADF7FA0BA1357BE6B5BCCC721F055D
          EFA73A555E8214D53B345E7C8F6739C4096AFAEEEE8B033845D18D7B28D33BE9
          57C58D0DBBCA4B80A23ABF3F9B7736CAFB29566B59E4267D35E5254051F52A26
          DCE5663F8317D23FBD4A25B0AE785DE7346D25E5C5A1A84A9F5EED88A9CFC8AA
          135F3C157EE6E972EB6229BB091C9CFB3A97F272A1A8F20CF0CF88EC2127A743
          BC822F0819C3AE7D3871B85EFF22C3D2356CEB644BC5CF27FDAFF272A0A86862
          073D0A638F4686235BBDFE58A413F88A90B3611DF06E1C31AE41066D34BC2E87
          331FB8FFBF733963CACBA4F1A482A2B24E0DF693AD6E05A1FB7483BA9B7799DC
          2BF896907361FB005E668C1AF31486F3A84F9ACA10262063171E3E746C86F5EF
          339B2E1E500007A9E28790E13B586407D47A75FFB597337F9CA2B0814011F261
          404888CF1012E2338484F80C21213E434888CF1012E2338484F80CFF05D41446
          A16EC8CAD80000000049454E44AE426082}
        ContentLeftMargin = 0
        ContentRightMargin = 0
        ContentTopMargin = 0
        ContentBottomMargin = 0
        Options.LeftMargin = 0
        Options.TopMargin = 0
        Options.RightMargin = 0
        Options.BottomMargin = 0
        Options.Stretch = True
        Options.StretchBorder = False
        Options.DrawOnlyBorder = False
        Options.DrawOnlyClient = False
        DrawStyle = idsTile
        VirtualWidth = 0
        VirtualHeight = 0
        TileOffsetX = 0
        TileOffsetY = 0
        Proportional = False
        Scaled = True
        PixelOffsetModeHighQuality = True
        InterpolationModeHighQuality = True
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D494844520000006400000064080600000070E295
          5400000006624B474400FF00FF00FFA0BDA793000009E14944415478DAED9D09
          5414471AC7BFEA39B88C07B026A8FB124D34C63B6AA246410820673032A06878
          C6AC6B145757E31583AE620CEA8B91E8EA1A6234C8FA82CAE0B1CA61B8048FC4
          67D68DBABE68DC4DE2EEEA6ACC531445608EAEAD9E15669A0686E9E9A63BB1FE
          EFF198FE5E577F5F7DBF99AEAAEEEA2E043F6305BF32D95F63657D35887D8CDB
          B662E69E1EB3554545C69F948E4DAC90D201B455C1C1D33C753E35E330E01040
          682460DC8F983BB6B07B35F9BB88313EC5304CA527AAFBFCF0E1C30F94AE435B
          A47A20A1B189A310B02980D104B2D941E46138187F01066D2D3D6C3CA1749D5A
          936A8184C6240492E0D2C9C740890FFD2562D03B25878D954AD7B139A90E4844
          44A2AF55CBAE25A1BD29B32B2363B6CE292E3E7053E93A3B4A5540C263134231
          400E60E8DADA7E1A8D067AF57C127A74EF065DFDFDC0CBCBCB66AFADAD859F6E
          DD82ABD7AEC3F73F5C018BC5EAACF637192B9A5C5C642C57BAEEF6906C8930F4
          6631A422607A28188B060007FDFFBF507ABD0E820347C3D8C0513068407FF0F4
          F468F560F5F5F570FEC245A83CFE05541C3B09F526534BBB5A4912CA31E92928
          55710CEC55AD8649FFFC90F19F282A2ACAC3CCF87C4BEC4F2A15506BE2121F13
          190E13E3E3C0D7B78BA86354DDB90BC6FD8720BFB0186AEBEA94AE52B322BDC7
          2BBEDECCB3282276C2602BD69C553AA0E6346AC4705830771674EEDC4992E3DD
          ADBE079BFEB40D8E9F3CA574D59A95065987A0B0A8F891C0305F2A1D8CA3743A
          1DCC7823195E7D258A9C48A43F9394945712309FD84E6BAA12CB8E6A1688875E
          0F3A72CE965326724E3799CC02BBB7B717AC7D7739F4EBDB4756FF97FFF11D2C
          59FE2ED4D408C78B5C7BA52739905366527741BBD61290E9AFBF064989AFCA17
          8CD90C33E72E86FF5CBDC6B37B7878407ADA3B3078607F5993D1A08B972EC3D2
          3FBC070F48EFCC51DDBB05C0B62D1B6C60E4D21EE341D891FD19DFA81490AC5D
          BB2167EF7E9E8DEBCAAE59950A43870C92CD6F733A7BEE022C5DF11E58ADFC2E
          F2B4E424782DC9209B5FD500F9EFF51B303D65BE608C20F797A0357DFAE7DDB0
          3B97FF05E14EDB3B3FD90CFE7EBEB2F8540D10AE97935F54C2B3F57EA6176CC9
          584BC26064F1E94C168B0566CF7F1B7EB8F26F9E7D92613CFC96742EE4902A80
          DC21E381E4DFCC1634667FFC201D9E93B9117726AE3DF9FDA2653C9B8F8F37E4
          6465DA3A1A524B1540F61DCC87CCEDD93CDB8BC387DA1A72356859DA1A38FDD7
          AF79B685F3522032FC65C97DA902C882A52BE1EF17BEE1D9D6AD5E0EC39E1F2C
          B92F31E26070501C35F2C5E1B07AC5DB92FB521C48F5BD7B30317906AF37C335
          98393B336519FC8911CBB23065DA2CB875BBAAD1C635EE79399F3ABD76E6AA14
          07F2D599B390BA329D678B890C83F973664AEAC75D6DD8F4111C29E15FFCCD58
          B70A060EE827A91FC581E491F6E3E326ED47EAE2791032768CA47EDC55D9D163
          B06EC3669E6DCEACE9303E3652523F2E0199688883D8A871920690B56B0F1CAD
          E4DF3D4D4F4B855FF7E826A91F77C55D3D5896B696677B39788C6DA028A5F28B
          8A2177DF21BEB12520540A89025199281095890251995A02328874F194BE94F1
          4B1777A9E67C9341B26297DFA954300EA1E24B754030C6CDDE3E6DABEED7D4D8
          8E2146DCCC13ABB3395B2DA8DE76EBD924AA2C770FA8EEE1AC9793A74E437945
          9359ADEEDE53E72AA5D669353F4BD15E96CAC40151F3BCAC474D5AABB667C3CC
          45AEFFD54BE9801E6921BCAB347FDF54DB8D88C8C8A4A7AC1A4B1A06D45DF401
          316601C15DE5CA23B7CA230C6E95C762FD2316332CFEB6B870FF715B2D442780
          4A1651202A539B80844E98E0874CDA8908704767FB92B1810990F64869C1DE8B
          72C41B169D108710F46DCBCE649872A9B4308FBBE9206EC0D28AC262263D07D8
          128910723AE7943405D5586FC92D3B70E096D30A3A751C96D8093CF03970ED71
          857A16A1A0F27CE3692993101A6DD8481230CFC5621B4B0BF2DE92328E71D186
          11A47EC7C847572600FF0BEAD1E0D25263ABED8C7320D1868980D05E11716F25
          89F89D5449484B4B634E7C75817BBAD6C7C5A2F7C7BC30A01329CF4A154B588C
          612B495D8ACB05319E545AB82FB7B55D9C02098F35CC223D888F5CF54D0EBCA7
          A4206FB25449E01E8BD6FADCAF1553D652D3C1ABA262A7649714C26312769373
          A0CBF77411C22925F9FB325BDDC7A9730A449813B501E16661383EBF61B65860
          5E936998ED01849B6037FDF529BCFD7664E7C099AFCFF16CED0164D307E9A0D3
          6A1BB7BFB97419B664EEE0E7442E206B562D8317860D69DCE61EBC89899FD2F4
          C0B20309091A0DA94BE6F3F65BF3FE46387AEC24CFD61E400AF6E7F09E27696E
          1E1A05F25014083C04926F9CB2F0040CE5B6378C81BF7111894D82BB409E5F93
          E5C79AE169D603CE6E1E89AAC5E3700FC880D4BC6C8685610C82EBEB47A3EFDA
          0D08D7551EB824D7937C1AFFD0D1C18C4088170BC51D20FDE6EE98AAF1EEB81D
          B87103861F4942823784A04BED0D44DFD177499F948F67925C3C4D36C9500616
          6704A28C7601A27BCCAFACEFECCC50471BA9C4988D41E82488903B40FA2FF8EC
          7B46A76FBC9A4D2ABD3D2308CD686F20FE43C71D0A089F11E760AAADF1864EDB
          86A3C6A75F6503E2E1DBED8B3E3336BDD4E470933F0C427BDA1DC8C29C3A46AB
          F374301D21714489A201E281741D39FED8E36393831C6D5A2B04AC0F41371AB6
          291011A2408002B13BA7408439A1402810BB730A4498130A8402B13BA7408439
          A1402810BB730A4498130A8402B13BA7408439A1402810BB730A4498130A8402
          B13BA7408439A1402810BB730A4498130A8402B13BA7408439A1402810BB730A
          4498130A8402B13BA7408439A1402810BB730A4498130A8402B13BA7408439A1
          402810BB730A4498130A8402B13BA7408439A1402810BB730A4498130A8402B1
          3BA7408439A1402810BBF36680F876E96C5B95B341DCFB736FFCC85F271E214D
          9DAE93BF6312C0F2A0FA266BAABD2F320F5CAC3D1D0D5E9E9E82858BB995E09A
          BEBA56D7F15718314C635DB1C5F4C07CBFEA068817B7DE7B0747C3138F77E52D
          DDC4ADB37BBBEA0EBF902440A213A76184B3DC089EEAA1240112169B30153064
          3BDB8FCAB9FC474C280B089EC27B761FB4E0F7E14BE876C3A65320A1718641C8
          8AB8C5FD945986F39723B67BE4CC45BE83C31CDFDC709EB465BC3503DBF4CE45
          F22B7983FC4A16918F012E85C068740D8D296B31D7016B35BB545E32911644A7
          F722277906B3AC85B421A2DEBBE586AE238CD697141A77BE5589B957142691CC
          5FD56A6069D3F79DD0B792AA4C1488CA4481A84C1488CA6403326CD89BBACE01
          55F10CC64F291DD0A32816A12B77AE77D97FE6CC363307847B5BF4118246DAA5
          3DA95CD591D282BC68141E6BE88D31BAAC743454001A0DEA8D2222E203AC5AE6
          2AD0819FD2220324D4DDD68684C724AEC080570285A294580C90565690B7BAB1
          97151C9DF8841E81F8055DA844CB84E15A45A1D17681F17F55AB4032B3BCC2FF
          0000000049454E44AE426082}
        ContentLeftMargin = 0
        ContentRightMargin = 0
        ContentTopMargin = 0
        ContentBottomMargin = 0
        Options.LeftMargin = 0
        Options.TopMargin = 0
        Options.RightMargin = 0
        Options.BottomMargin = 0
        Options.Stretch = True
        Options.StretchBorder = False
        Options.DrawOnlyBorder = False
        Options.DrawOnlyClient = False
        DrawStyle = idsTile
        VirtualWidth = 0
        VirtualHeight = 0
        TileOffsetX = 0
        TileOffsetY = 0
        Proportional = False
        Scaled = True
        PixelOffsetModeHighQuality = True
        InterpolationModeHighQuality = True
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D494844520000006400000064080600000070E295
          5400000006624B474400FF00FF00FFA0BDA793000013734944415478DAED9D09
          5814679AC7DFAAEABBE96E9AA6BBB9EF430551E4F00C5147F044D12CEE646673
          8E4F8C71C7D91C93286896672238C9EC8E3BD93849DCCDAC397626316B8C3A40
          226A0C46454144830AAD1C724373354DD36755ED57ED2451078546BAAA35FC9F
          A71EB428FA7DEBFBF577BCDF89C1843C4A18D70EDC8B9E79A682DFA1EA7A1223
          E865CE1B14141A04923DC7F31638B8F66DACBA6F813030BA34FA220CB087D57E
          6A1E734FDFA177D03475BC9F2F5E76BF42B96F81ACCA295C8713C4AE1933A60B
          442291F39ED96281F39555368A24371E2858FEDF5CFB3816DD1740B2F3BEF0B1
          D8C905180D0FE1043E8FA6E8189AA665810101544464387EF3B3F5750D546B5B
          1B8E619811C3311DE5204FA0DB27481ABE2AFCED8A3EAEDF6524792C90F9795F
          8964B6A19F1238FE044D916918AA2864320978C964844422052FA904A45E5E80
          12FE96BF43A0C034380883A62130A16B70D0641B340E1014BA4F10782945D27B
          0C02F15E54A459B87EC7E1E47140966FFEAB9220B01730C037A1FF4A7D544A5C
          EDABC27C7C544C828EE9334992849EDE5EE8D6F750BDBD7D347AE94112E83F10
          7CEBCECFF356F773FDCE37CB63806467EF252C31925FE240BCC6E713C2A0A020
          BED64F0B3C8218573B0E04A7A3BD035A5A5A6D0E87C38AF2D45681CEB4EBD34F
          D7925CA701238F00B2726B712C72642FBAA6848604F302020300C7C7961B462B
          8AA2109436686A6E766040573B805CFBD7ED9957B94E0BCE8164E614AE45D5C0
          FBDE0A05111D13CD170985ACDAB75AACA0D35DB51906064814C73C7E60C7B2FF
          E3323D380592B5B5F057A8AEFD7D6060101E1E1EC2993BC80768696DA1AF375E
          67DA049B0F162CFF1D5769C21990ACDCA29769A077C4C6C6E06AB59A2B376E91
          BE4B0FB53A1D85F8FCFA60FEF2DF73E103274056E5143D0E18FD3F93274FC655
          2A1F2E5CB8A3BABB7BA0E64A0D85FEF9180A2EFFCCB67DD681AC78E5D0348247
          9C8D8C8C10F8FBFBB16D7E546A6B6B87FAFA06AB83A6920B0B5654B3699B5520
          28D8E32948CB05B58F2A2676520C8F4DDBAEAAE64AADA3B7AFF79ABA539DB07B
          77B29D2DBBAC0259B9A5E865BE90F79B94A42421CA256C9A76590ED20115E5E7
          6C0EBB63332ABA76B265973520D9795F79D9EC96D6E8A848B9D64FC396D97B52
          4747275CABAB1FA06DB6A0836FAC32B2619335202B738A5E1408F9F9A929C9C2
          DBFB9F3C554C1BF86C79B9D56EB56F612B97B09632AB728BEBC3C242C2838202
          D932392E6A6E698196A6966B9FBDB6249A0D7BAC00615A56388157CD4C4D0181
          50C086C9711313C99F2DAF009A20E20FBDB6E492BBEDB10264656EE10B12B1A8
          200955E66CD81B6F55549CB30C59CC5B0EE5AFF80F77DB620548564EF13EAD9F
          7A4D5474141BE6C65DBAABD7E8AE8EAE7D070A9665BBDB163B40728BAF864784
          46050404B0616EDCD5DAD606D71BAFEBF6BFB634D6DDB65801B22AA77070D2E4
          58A9AFAFEF3D7F16D36D4E5224381CA4B35790443F299A72FE0EC77060E21BA6
          15C7E3F19C5DF8E3D18DAFD777436DAD6EE040FE3285BBD38A2D208EB8F82984
          52A91CD5F334458369C8C40CBF3A8761ED362BD8EC36B0982D60B5B916340B05
          7C6026410804026783422416839797177849A5A386D5D7D707972E5D761CC85F
          CE77775AB153A9E714D20909F1A050DCE90B46C38071107A7BFA60C0D00F8326
          1390240572991802B572507B8B41A91083DC4B040A990864522130A18C587423
          7D24E827D3856EB6DA9DB183C5EA40398986C1211B188C16E847579FC10C3DE8
          6AEB1C40F7CC80E118FA3C2F907AC9C0C74709DEDE72F499C30332180C70F162
          351C2C58EEF6F4E2140893033A3B3BA1A7BB1B6C0E0704A8153025CA17224354
          4E1012917BBE9043661BB422308DADFD70A54E0FCDEDFDCEF17A6F9483B55A0D
          2895DEB724CD030E8486EEEE5E686D6D0123CA1521013E903A35101262B52011
          7313A33039AB068129AF6E055D6337FA220841EBE70F4C6F3453AC3DB040100B
          A86F68008BC502C9F181307F6638A89552365C18B58C83563855D504272AAE03
          335215121C0C62890801B9F46001F141C5406FBF0192A604C08AF9B1A87E10B1
          617ACCB2D94938565687AE7A10A3860053BC3E3040B2B616D14AB9087EBE3211
          4203BCD930396ED2F79A60CFFE4AD0F70CC2FEEDCB1E0C204F6DC87398343389
          E79F4E035FA5840D93E326A675F66FEF9582A4F32CB9E7ED57DD3EA8C60A90DC
          ACD4DE8ED8754A421D05BF7A2A0D047CD706A7ECA8F8E845096342AD2393D98E
          EA203B6A95912826197E82BB50C003010A10C5623E48514B4D2A1180522E06BE
          8B769962EB0F7B4A81ECAA03BFDADDFAFCCFCBDD3E90C30A90AD592935DEBEDA
          D8F37E4F425068203CF1482AF079C3B7F999D8A1B6013545DB0CD0DAD10B5DA8
          C81834FF30A9502CA0C10B5D52018ACE31DAD95010F36FFCDE6C276EBC118D81
          C986C3A00D03B3ED8757944978A0F19142809F124203BD21365C7DC7A63503E3
          BF3E3E0D7DEDAD10DFF63E18FA7ACE6DDF7F36F9C100B22AF953854CB2C65B13
          8C1F97AC016DA01F8292F27D6298D137FECC8566A8AE6D85EB1D4690A0DB312A
          2384294C10A4B0824A6C058DD40E72A11D70173D66024683950F5D263EF49885
          D06C1041A3410AB5DD5E80E247080F94C3D4C9C1A8E91DF47DCEED1FB0C087FB
          CBA1BBB30B160EED83EEF666C780C9F241C1C18A5F3C1040725625E70A05FCAD
          D1416A910993C129F152300B54F0504A248ACAAD5051DD0C328103E68574C374
          ED0044AB4C2E27BCAB22512ED2754BA1B25D0E279A7DC146F261D6F450749F86
          B3558D207374C35C73118868135C6EECB4D334FDCFA8C8DAEDEEB46205C896D5
          290FE3347D6C72A83F8AB330A00087D3A6703007A482DA9B0FE9115D901A88A2
          65A608E2407612836F9A7CE0E8750DD8CC16A0AE96C25C6507F29272068D75AD
          7AC06998B4FD6045ADBB7D610548DEFCF922BB72702048EDC357486FC41F57AE
          77C0DC8763E0A18726B3E1C2A85575A1110A3F3F0FF11137860AF4FD46D00F98
          FAB6EF3BCBCA8C3E5680FC31373DBBAF79F0131EC9C38235377A7C2F35B4C1E2
          E509909414C9860BA3D6ED40AEA1DC2190E3B4422BCEDE907F649FBBEDB302E4
          9D6DE99572BE24F172651BC484689C6B3EAAEBDB607956224C9F16C6860BA3D6
          CD40862C366868EB81A4B43014201A2AD7E71F4E72B77D5680BC9DB368286172
          98B8F4CB1A10F3F8A051CAEE0B20ADFA7E902A45903C3B0CCE55D79B37141C71
          7B54CB0E90DC74CB8CB83061579B11CE9D6984A840355C6E68F7682031215AB8
          DADC0519CBA782484A40E5A546CB86FC12B1BBEDB302E4DDAD8B1B6323FD43FD
          D54AF8F88332507A89A1A367C0A381F8285066E061B07A6D0A34B5E94157DFDE
          B07EFBE10877DB67AB52FF935625FFA7C4B8707EF5C5163857D6007607E9D140
          98E6F9C28C38088BF045C555835DDF3BF0C173F925EBDC6D9F9D226BCB4F56A0
          37FC7CE1EC388219F0D9FBD11930A180D0938128955258F3D314F4C571C0F1D3
          9798E56E2B9FDD5152E46EFBAC00D99B9D4DF4C4F6374504ABFDA3C302305D4D
          07941EABF168200B17C74144A41A740DED74438BBEA59337272C2F2F8F72B77D
          D6E6F6EECA4D7F1407F8705EF224422212C0C1E273B064D1740809F28CE56CDF
          A9A9450F5F1CA982CC65C93084A2F69315B52405D4CF37E61FFD840DFBAC01A1
          91AD7772D30BC522C1C2D989D1C263A7AB21232D11FCD49E3560D5819ABA5F96
          A21C323B1ECA2AAFDACC56DBD167F34B98A14256FA75585D17F0EE2B8B14340F
          3B25120AA21C2429989D3409C23C2C8734B474C1C9F22B20E0F16C569B4367E3
          137337E5150FB0659FF5851AEFBD3C5766E74BDE43957B765242244C8AF4ACE5
          093575AD507EE12A33A6F209C9B7ADDB98777C904DFB9CAD9CD9BD6D71D59498
          E069A829CC950BC3EA7C753D5CD2357DBB7E7B490217F63903F2C72D8B766A35
          DECF2D7938D1A3168C147F5569EBECE9FFCF8D05475FE2C23E674076E5666412
          40EFFF59561A31D65D7EC65B2445C15F3E3F41D224CD4ACC319C3803F266DE52
          39DFE6E8CB78783AEE292DADF6AE3E2839718114D88794BF78E3242B8B3C6F17
          A7AB2FDFD99AFE65B0BFEFC2F9B3E33D62CDFAF153D58E960EFD91F5DB8F2CE5
          CA074E81BCBD35632150D491D54B67633229B73319074D16F8ACF8344DD3D882
          E776947CCD951F9CAF4F7EF7D5C597A242FD26CD4A8CE1B422395D594BD53575
          5C5EFF9BC353B9F4837320BB36FF64098E63454B17CCC0D42AB72F501A565DDD
          06283E5E49E3402F7EB6E0680997E9C13910466FE766EC918A858F662D491510
          6EDE49EE76310B830E9494DB864C968FD6E71F76FBBCAB91E41140982E1510E0
          3A54C1ABD266C6116C6DF4C04CA22B2DAB7634B777F7809D8E5DFFFA1103D769
          E1114018BD9D93118F61D4A9C8F040E99C19ECD42767AAAE52BABA563349C3BC
          8D0525555CA701238F01C26857EEC2390410C7A223FC05A9D3A231776D84C9AC
          3F3C7341475FAB6FB752402F782EFF4819D7EFFE9D3C0A08A35DB98BE6A132EB
          B0CA5B265E30672A8845E3DBB33264B6C257A7AAA1D76034D324A46FD8517292
          EB77BE591E0784D15B5BD2FF5D2420FE05B5BEF06953C22126DCFF9ED79B33EB
          DB750DED5075A981A93B28BBDDB17343410927FD5577934702D995B3284F2993
          BCA2557B8BEA9B3B412C14C0B4C961101CA806BE8B1B9F3193299A5AF570E172
          23586C76880CD14247579FA5CF38F4FAC68223795CBFEBEDF25C2072C92B2858
          1431095A7FBD139A3B7A9CBF0BF6574164A81F04FAA9EEFA19ADE8F9BAEB1DD0
          D4D6EDDCD901B5E0202244E3045A765E67E91BF801C8FBCF2DE36696F730F278
          20DFDD638A1C7DAF117DBBFBA1B3A71F25AE1F24C54780E8B63AC662B1C1B9EA
          3AA86FEA04ADCA1BFC34DEA0F691DD52E40D072425692A8C76A7097788D92DA2
          FCDCB7F70F909BD53F60826A5D0B982D56E798BCB7ECC6D2EA7EE390B3C71605
          991017130CDEF2E1677E0E072463511A8277EF7BB18C551D5DDD70F848A9E701
          C97E7EAF7896E82FBFF55750EB672546DF717F2DA68CE9E919007D9F11CC569B
          F31E53D7A8953250A9E4777DB1B2F357ADED06FCDD32CBA39B3FDDB9D63C01E4
          6FCA78E94BA99047CE05825E2024F0D94063936C24A98982D358A2EC32CC9DE1
          9E999B272BEBE1BC710A5C83D9B48020BA327BDED4FE68813007B5C8EDA64C1E
          4E3C4D525406865C08F293DBA3427D856A1F2930D750CD7E30D715C3CC8430B7
          F870E662238822978064D21AE8EE3581E3CFEBE1470764F596CF540E5CB489C0
          E0791C03A946A3C68D4613A426F8C1B2B45BF7056BA93C04F5A5BB212D3966CC
          87B8DC494C676269850E22D29E81A01999CE7BA7362F1F35102B2A1ECF5FBCEC
          DCA76524C9655E90382D0E04829137D1610D4866DE210966C7B7A0E8FB259148
          C80F0A0A2454BE1A67425FAAAE86E4380D2C9E77EB869FA4DD0227DF790C027C
          85101BE63FAEFE30C1616B8F0DE66EF81008DE8D2ACA152065E555A0BB5A3F6A
          7BB1D111303365FA88CFB10264556E51268AB6DFE5F379EA88F0509E8F4A7DCB
          99517702C2A8BBEE0C54EDDB068993C341E32B1F177F3ABB0D5075A511A6FFC3
          76F08D48FDFEBE2B40BEFEE60C5C6F6A1DB5CDB09020489B973AE2736E05C2D4
          130A87F94D9A8275A1C101584070F0B04717DD0D08A3C6337BA1AEF44F90101B
          7CCF534E9929A2176A9A207AFE3A084DBD752F4B5780F4F70FC0D727CF82C130
          F264466F85DC0983F939A27FEE0292B9F560380FF85FF30544404C742CA1F0BE
          F328E048401835557C06BA63BB21C8DF07155F7EC01B43D789AEBE1D5A3AFB20
          66E17A08495EFD77CFB802C45D720B909539C50904411F45B941A5D668B1F0F0
          B0BB3E3F1A208CFA9A2EC0952F768275A00B42101826FA964BC577EC67606214
          A3D10CED285734B7F78248A185494B5E0065F0F0C3E50F2490CCDCA259046047
          A6C66A8406A38D47115E101A1A7CD7BF192D10463445417BF561683AFB2918BB
          9B50CB45080AB914043CECFB7D53EC0E0A6CE8EA1FB8B171A64C1D0221296BC1
          3F3E1DB0BBF4163F704032B77D114750D4E9C429FE9247574C2376FDEF1920F1
          F10572B386FA5A51AEB9082604C662EC02FBD08D9157BE4401229906A4BE21E0
          133A0DC4DEA3DB27F88102B2E6E5A2205A889D9B12A5F6797CD50C1EB336EFAD
          8FCADC0A64BCF5C000614ECCF121CDDF687DE5899B1E9B2DE0FDADE89800E2BA
          C60548566ED1EB0201EFF9979E9EC767F6D5FD4E13405CD73D03C9CA3D944AD1
          44D9538FCCC0E2A3B5B7FC6E0288EBBA2720797979F8B7D4AC7393A3D4F14F64
          CDF8BB89D213405CD73D0159B5A5703DC1C7DFDABA61018FD9F6FB764D00715D
          6306F2CC33157CBD9FBE71416A44C0D2B498619F9900E2BAC60C2433A7F04921
          8FB7FBD55F2EE08B85C3772B8F16C8B717BF45119FDDB96328979A51FDDAFD0B
          64CDB6E2EA59D343A6AC4E9F72C7BF1D2D90F6F676E7B88250C8EDDA90948BAF
          DC9F4098881C23C9EA5FAF43CEFB7ADDF1B9D102F114690EFDECFE04B232A7F0
          8D403FF9A6179E9C77D7C3BD2680B8AE310159F36AF1B5F43951918BE6DCFD70
          AF0920AECB65202B730EA0E88FD7FEE253F3B000EDDD075C2680B82E9781ACCA
          2DFA471E817FB4E3C50CDE4847A74E00715D2E03C9CC29DA1E16A87871D36373
          466C124D00715D2E0359B3AD68FFACE9A159A8B93BE2B313405C97CB401EF9D7
          2F6A97CC8B8E993F73E4D98413405C97EB39E4D5E2AEEC2553D5CCD951236902
          88EB721DC8D6E2C1C4B800A94635F2215E8D6D06E831D2CE031DEF07259D7F19
          2223429C874D7225E6ECC6BAFAA6D10359BDADE8308F2046B5B3334D33730AB0
          FBE664E8877A3F8E2570DA85980CC368F49638C02837C5A42919D95B33D25314
          49D93D6E39C28F5DFF0F4F8AC5CD5221D97B0000000049454E44AE426082}
        ContentLeftMargin = 0
        ContentRightMargin = 0
        ContentTopMargin = 0
        ContentBottomMargin = 0
        Options.LeftMargin = 0
        Options.TopMargin = 0
        Options.RightMargin = 0
        Options.BottomMargin = 0
        Options.Stretch = True
        Options.StretchBorder = False
        Options.DrawOnlyBorder = False
        Options.DrawOnlyClient = False
        DrawStyle = idsTile
        VirtualWidth = 0
        VirtualHeight = 0
        TileOffsetX = 0
        TileOffsetY = 0
        Proportional = False
        Scaled = True
        PixelOffsetModeHighQuality = True
        InterpolationModeHighQuality = True
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D494844520000006400000064080600000070E295
          5400000006624B474400FF00FF00FFA0BDA793000016504944415478DAED5C09
          781445167E993399DCF7018104C8010282202E37228AA81C028A06F158C11594
          6BD70B5414B944D995954305914311570441049453944B2002C120472EC89D90
          FB986492CCEC7B35DD939ECECC6426099941E7FFBEF9AABABBBABBFAFD55AF5E
          BD7A352EE08443C1C5DE1570C2184E421C0C4E421C0C4E421C0C4E421C0C4E42
          1C0C4E421C0C4E421C0C4E421C0C4E421C0C4E421C0C4E421C0C4E421C0C4E42
          1C0C4E421C0C4E421C0C4E421C0C4E421C0C4E421C0C4E42EC0392BB027FD5A6
          2EDCEA50E14FC9E55DF1E7C6E595DC35821C7F1E5C5E8A3F2FC1F7FB089EE5CB
          672412898F403EC2BCA18C4EA7F33575AF202F7CBEF85DD578FF084C0F0B3FA6
          2984083F48F8B17C2AC39FA7A01C9F4AF0E7CD7D2C5F616FEE3CBB1F2BC80B97
          17A650909EDCB341F0BE5B1A2E2E2E6BB45AED3F8CCE9928F70C165C0CF5AD8E
          5A9CABBD2B6F2D244A19B84824FABC02F332A9FE43E55290F07999048F65863C
          956379BC4FA294737917A3BC8B52C64B11A4AE5C5BC0F252259F179CC732122E
          EF22CEBB29A0E4B714C8D9719A4E7D8F8D70A44542F0A64398DC6D8B105CA412
          C3C7EB533C96EB8F9920E47CCA9DE3AFE37D2E0AA9D1474ADDF4ED40E226D77F
          007D300944F061FA720A769F9E043913DAAD8292B3A990F9E551CA1E4042EE6D
          8C900B98740D7BAC3FA822020DE79900E5D2FA7232BDA09DB01DA509D720E3F3
          9F29FB3312325878CD14217998047698FD10B886F95AF90A276C4159623AA46F
          F889B22790907EC26B6242244888065369D41BE340EEADB2F215F6479D5A63C8
          EB6AB5A0D5D4188EB59A5AD0D569B98B3AD056D518DDABD3363CD7E0F9D5785D
          AB15494B025E5DC341AA52822D28BF9409D7D7D1C800F148486FE13531210148
          483E653A2F89330C882D22B02A0DFB68125C7DAAC1F335A0C58FD5D5D4E90549
          79141013B08E4B4960785E5B5BC7CA696B6AF5A950D076825BBB0088987A9F4D
          B2AAB89A0DD7D61CA0EC0524A4BBF09A9890CE48C8451A3C63173C66DDD35168
          45A793A13ABBC858D0EA1A2ED5303240D7BA8292E1402F53D41B010A0F376618
          10C8DA52B89968D5785DE969592B28DD5D0D56DCF5F84B505552019E5DDA42DB
          4983AC26A532350FD256FF48D9CB4848AC511544650761A58F28FC3DA1D36B63
          AC2223FB9B9350742AC93A21A18048304A77377D8A3F571400A564349090A498
          9229297755B0BC1CCF9100E91EB2A4945EEE4CB0EC1EB4D2E42A574E96FA73AD
          89DC4BD760DBCCE5A0A9A802D7505F087BAC1F8EBB7E8DDEA7BE7E035257ECA5
          6C2A12D2C11221E3F0C3BEA16E18397D44A364646D3D09C5A79398607A3E3214
          54FE5E4C284A0FBD90A9B509852F95CBE0CF86AC0BC9B0FB8DB5505150C2CC78
          FFC1B781DFC0589079989FBA55651642CAF2DD94CD4442DA0AAF8909998C84AC
          F5886D03ED9E1D6ABE168C8C1348463223E3FEB7FE0ED1437BD95B3676436551
          19EC5FBC09524FFCCE8E4975F9F4EA005E3D22401519C48812A23AB70492977D
          47D97C242448784D4CC84C2464B977CF48681337C0E4CB69C0CD2632CED88F8C
          1A7535E45C4C83E2CC7C28CF2F06350A84EAE217190A917DBB826770E36AE366
          20F5F80538B97E0FE4FE9166384793569FDE1D2164CC9D86739A1B6590B47407
          654B9010A17FAB012173919045BE774541E8F8BF35782123E3EBE3501C9FC2F4
          FA082423EAEE3B5AED8349671FFF6427649CBB0A756869990211D375E4001834
          7D3C1BD8ED81F4DF2EC3D543BF41D291B3ACF71062DE7E14A4EE7A43A2A6A802
          AE2EDE4E5935E7BF33C088108944B2080BCCF51FD81982471999C78C8CAC2D47
          A1E45C1A23E381F9CF42A7C13D5BED234FAEDF0DBFE28FEA4120C34319E40D72
          5F7790A2BE2693597D2D1F2A5272984517D6AD238C5D3ED36EA410A8D1ACB87B
          3ACBC7CC7FD4305FA929464216314234286F23734F4CC8722C3033606837081A
          D1C3E8E1E410CBDC728C0DCC0F2C98021D077487D6C299CDFBE0E847DFB2DA52
          F70F18D61D147E1E26CB5624E730B7445D4535741CD4031E5A38C560A6B63648
          B5AEBA7716CBC72E7C9C393ED9F9924AB8BA701BCBA2BC15C27BC484ACC10253
          02EFBB1D02EF351638EF106BD3230A1E59F94FEB6A84837FEEE5EB4CD7D3A4CE
          A76D1084748EB0C91158949E0B9F4F5AC0EE0F1EDD1BFC07746EF41E322BAF7D
          BC0F279075D0F3D1A13078C623360B538B13CEAC842428CD29045734B5DBF68C
          0285CA36A7775559257C3CE25F2CDFF9DD8986C1BDB6B412AE2C6084D4A2BC8D
          BAB09890CD58202EF8A15E68BE75317A78654A2EA47DB40F851A084F7FF54EA3
          95213D7A60C91750927DC3E8BC6F78300C7FF32908E91269D547ED7D7B1D5C3E
          7006BCBAB767932F6B517AE1BADE81878DE2817726DB6478A41CBB00BFACDA06
          45D7730DE7143821BCE7A53888B9F74EAB9F5359580A6B46BDCAA4DCE5BD4986
          F3B5656AB8F2CE3794D5A2BC8D66934684E0804E43FFE890B177815FDF68A387
          F396810C276C2F1EF8AFC58ADC48C982AFA6BC0BB5D5354C6FBAB6F163AD439D
          7E83A912B9AB12C67D38B35152E8FE8F1F7C096A71A6DF61F683564DBA84C8DF
          771EF2F7278067902FFCFD9B4556F5CC539BF6C2F1B5BB189134975086F880A6
          A08C0DC434763EB1E10DF08B08B1EAFDE57945F0E9D8B9ECDBA987D413528584
          6CA52CF2A133D2A76242F663322C6C423FA6AB85A0EE7F69EE972CFFC2FEE56C
          066D0EBB5EFB08928F26807B5428843F3DC4B000A4ADAE85CCCDBF40D91F19E0
          DF210C266D7CC3B0A6610A643E6E99B214645E6E10FDE6789BC8605F8B6AE7CA
          FCADCC7D3371FD5C088C0AB7583EE9C839F8FEF54F583E60C86D1080AA9B2D31
          A0919081F52E3D9F063DC60D8121B32758F57E52D51B26CC6363078D210642CA
          AB58BD38468C39101142AB26FD4935908A10E38F395FA2355307CF6E5FCC5A9D
          299065B1FABED92C35E5C22752AE2CF886390B9FDE321F7CC283C01C885422D7
          2ACF8119D08C9866C623973C0F1D07DE6EB1ECC6B8B7999A0ABCA71B04DE6F6C
          D4945DCC80F4F587C1AF7D083CB9F92DABDE5D9896039B9E98CFB40459590619
          5556C3E5B7BEE609219565F0908A09F915933EE1CFDCCD1C666210ABC42E75DB
          804E6D4C56A22CB710D68D7B9DA987D825134DAA09AA0C552AEEB3B910146DBE
          D5D2CC77E7CBABC02DDC1F22673CD024425257FEC0CCE191EF4EB5681996A17A
          5947EA05D552F4BCF1FA1549010C9611F6E81987571896832D213F2903363FBD
          A8410F171142EAA3CE1C216730E9658E90A4A53B712C2985F12B66A3D5116DB2
          129ACA2A583DFC9F4C0747BD3E16E43EEEC61FC6D9E044D4F37B9631BF973990
          85B6E5D9254C9747CF7BA4492119D41B6B4BD53071C3EB10D8A9ADD97285D7B0
          354F9CCFD46BECC2C71AA8D2AAAC4248F9603733FB5F3CF8A155E311AF7269AE
          1435776C3D21A8422FCFFB1F4F0859598659AE9890784CEE087F6A0878766DD8
          72533FDCCB06E6D1EF4D83C87EDDCC56E47FCFBF0FD9BFA7B07128ECD17EF56F
          415D9CB5F538F38185DF118303FB2C8B1F54ABA9818F905C527F1D5F1A05CA60
          6F9BC860E625B66AF204BFB06F393348CC81CC6A1A80C9326AF3C440F0BE3DA2
          FE1AAAD9EB9F1E84CAB43CA6F648FD5983AC8464F87ADA3250047842A757EBBD
          E72242683036ACAE8909398B498FB64F0E06AF6EED1ABC80CC5E327F472D9D06
          1DFA9B27842AB2F5C5FFE0AC5A0BEE1D43C0BB57246B71A538CB2FBF9CC5DC1B
          E3B097B5E9DEA9D18FDAF1D24A483B9908A626AB8D8188CFFAFA3804E3DCE7F1
          B5AF365AFED78D7BE1C4DAEF98FF2970F8EDCC31589D530C058713A13AAF8479
          AC1F5F37077CDA045AF176BDE9BF6DC672D690A8411908315659D44A0CCB9562
          42CE6172BBB9413D6DD50FD84AF21B25847069DF2938F0EE17AC950B415DFE9E
          57264297117F036B70E5503CEC99F7298B38E9F4CA1890795A373923174BEA87
          7BD880DEEFB951D0E7C9C68D029A0CEE99B796595B62780478B3712838B67DA3
          CFE171EDD78BF0EDBF5630B3BFC3AC070DE705662F7066AF61F9CE640F117759
          1EB4A842B3606B0821D02CF7F7EF8E32A720F516D2E1DD1E1E64750BE305BB65
          F212C8BB920E1E316140E39BD89DDDF0261DE47C77060A8F5E62ADFA99AD0BD9
          42983520D595B0E3676C50A7A1FC46312322B27F7766EEDABA0096722C01BE7B
          B5A19528709D589EA9F35616B9DEC905DFE0059C09396AE95424A4F57C593792
          33D9E05887BDCD233A0C42C6F661CE4553A8CA2E82DC5DF16CDD9AD4E4C845CF
          319F963D70F5A7B3B0FB8D354CF5454C1B6E385F53580E57977C4B59CBDE5E24
          E4174C06B479BC3F78DFD1A1C10B92FFBD8BE954F265914FAB3571EDD445D835
          E763367B27D394C638B788406652EA34B5A0C92FC5B94226B38608B4043C6CCE
          2488B9A77733DFDC745CDE7F1AF6CEFF8C4D90DB3F37CC705EB01E528A841859
          2A62420E6232D4D44C9DBD002D03B21068624413A4D646416A161C58BA995970
          E6409EDD9861BDA1EFE491E01D16D0EA751422F1FBE3B0FFDDCFD91482542D0F
          321092DF672B86854888BF51FD8D0E5C5C7EC0643899AA3E771A13C20F446421
          4DDBBFDC28A2A3B591999004A9C72E403E8E2B55A5156CED9E3C0761D86B696C
          73F3F668FE4B5A0087967D89E3D12FE0D73FD668C590B40C691B442E1262D4B2
          C58490621B43AB85B46A2844E9F96B90F1C5CF9CA36EA1DDD6186E05903394D6
          70C851A945632662EA70368EF0E02799D05890834422D9840526058FEC05FE83
          8CDDEFE4104CFF4CBF9581D6AD47BCFD2C73493B618CCCF349F0038E1BE48A21
          909332E841E3656E757A0133C91169286F23EB494CC84A2CF042C0BDDD21E8BE
          868E389A68656FFF953918C9053D6AC9548BCEC1BF14D0D43EF3E57E38BE6627
          9BCF901548EB4AA63C1E8240B92B28EF18E13531218BB1C01C5A9CA2879902B1
          9BB1E908F34991EEBEE7E538EB167FB0C255E56AC3218583D654D5C7E3569755
          B2D9516DB586C5D1EAB873C09F434B8ABA3F05A58941E5CD053DC829D250E097
          12CE47680550E9C9C791A9F47164786CEBF8481130C73ED901E9F197D9318500
          D19A12BFEC208620B6F71CCADB283041EC219B439B75CC459DF0208F2F91424C
          137CDB05B3A84312300986091709A81610702B8108E18922F399859772A456A3
          1141DFC97E9555CC99AAE5E28B8980E0D177826F1FCB2E21C17684A328A781C2
          6B6242A62121ABAC592EA5C59F1B877E87829F1259D0735320DC63C236FD7011
          22E426A156CD6FF8214855F58E41A9ABA281375622286BA8230564D71A3CDB5C
          20371F05AF77F269D55CFC311793CC47B5D8F41D58779219F9BFCC4D5885A030
          AAACAF8E51F64724E47E4B848C47416C5575086611DDD6803E84223D984048C0
          284CFD4E29BD1526DCE9542FCC26F1D72A6001E35C90384F168BBAC74627C19E
          C3B6CCD16E306C3C14834C7929AA455B362F159EB80239DBC92902DB919071C2
          6B62D10CA0D9BA32D00B3ABE32DADEB2F9D3A2E0C845C8FD3E9EB4C0261C179F
          125E1313128585AE502B8E5960DDBAB129D080AFCE28602E026A4514B147BDCE
          5200F25F09F9071220FFC7F344C84748C834E13531219E58A89432B66ED821DD
          4BC1744527AFB225D306C037D1DA08C57C0927493416F16310DB8023D0F94230
          55C7ADD28997576F35E4ED3DCBC65F94F53224E465919844727371A9C044D569
          CEC366A3038D40E66C56119B9F906B9E2043C1F56AAB80085F1948319F98A381
          04FCE9B8F19204DA129B788CB62E73BB7C096C27B0C045CF76EF9A3202148D37
          389DC6D830B0B98E2EC0B6420B41F22267288E1FF3F1F0EDC608616B22B40185
          C5CDE2C35C04FB3A984582E66C6D4535A6552CE5251DE82E8559033CE1E9DE9E
          E0ED6AEC5AC92EAB83A53F95C0FA336560E75D680E039A8463B25A78CE94BD33
          81061BD0FF1787D578205605ABC7F84180BBE5567730490D715BF2A142A36381
          6FEDFF31CCD07AC57BD14D7E04B7DF90205471FCA64F0ABAD67193448A2523D3
          578C3A7535B424A46E96377D16C72743F91F9994DD8D24909B975CEE05F8DB0C
          A2FF3B31678086E18FDC9301387B8FC0B413B7F58A7E0D7CDA0FDFE60E1B2704
          80B521BB8793D5307A631EEDE50473CBC57F2690894BA62ECA701E1E2EB054B6
          2933029AF91031B1D8A2BFA2136767864154806DEE86977617C1C7274B59A826
          1142EA91169BE45E2A9079AB6EF9815B88ACAF4FB0AD7F48080DE0CB2C956DCE
          14AD0B1292E8E326818CB9E136DFFC475E0DDCB922CBEC759C68E9E43EEE2E32
          2448EEA362644979C2E81C11886674A3EBEB0E00DA3540BB07909017F17095A5
          B2CD2164382D68C504CA217E4698CD3793BA0A59701D2A6B984140EB30A48829
          F628147FFED63EC7D0AB28F5D16FDEA1BC8C9C84EC1A12E9E166D7FF4221BF1F
          45E3232193F1709DA5B2CDA9651C12B2F9AE764A3838A569CBB9E18BD3A148AD
          A58ADE8587A70497680649B1AAC4342DE084E25846DD30945BD0A16B449C757F
          A180C602F5260A212275284382E85F2AA41ECAFA632F3D812DF967093CD237FE
          0465BFA7D3774EC1C34F2D56B519EF790A09D9302CCA0D763C69FB9A484D9D0E
          4217A643552DEB211958590A5C4AB0F131F46222864822F2DA2071441A9D0BE1
          CE5119AB07381ABBF81EA627CD95E52995F33D8F8EDDADFF3B0DF2EC928717EB
          45FBDB565A2ADB1C42C6D0926F537BC8A9F46A18BA2647782A97FB2396149B1F
          6619F48D41DC8F7A5630FEC29038AAB4983CABFFDC85C62ED6EBA887F124510F
          24E23822E5ACF7B9422EC588E9ADAC06134153956D2A7A2221BFD1A07EEDB570
          B0756C9DB5AB103E3D550663BBBA4352410D2464B379C431AC34F9FDED357524
          0B92483390473D0EF4C43102414FA8F5917EA0278F5C44A451B45AED3316CB36
          A3F2527C0135F180ED9382E0BE68EBA3FA520A6BE1AE9559A0C6017DFFE41068
          EF2B83DE68719556B1F1240E8B6CB919D26E41904D4EA451AF0AE6D210EA7558
          7F5E4DF2C41A741BCA6B1D1232D9D2839B657A60053EC00ACCEA1C248723CF87
          824ADEF8E3C8AA1AB12E17E233AB61448C0AB63EA16F6C8B0F15C3E2C325946D
          F01F52B738C862A4DE45136ADAEE5161A970736DC12064FD3CBD7040842B6C7E
          3C00FC55E6AD949CB23AE636A1F183FC5E479E0F81763E7A3F5956691D44BF9F
          41592DF7771305F696A43DD012C6793F2485FEDAC68B1C8A2FF4F584873AABA0
          5B8882B9A8C89A4ACCAD81ED8995B0E66419946BB4E08BE3CE3654737DC28D2D
          15228488414286E0E1117B0BC71E68A9D95237CE2169886AA67998171244E382
          7099BA775B25AC1DE76FD2D5425617F51ECE04DE636FE1D8032D397D6D8FA4A4
          51C60DC712754D3D0B9E4A090C8C74854977B8C343B12AB31B6FFBAFCE86F3D9
          B46EA2A3C8E483F6168E3DD09284289090724CE5C7A68542B08794F50E0F2423
          C453DAA827989654229766C08D0AA6B2FAE0A9D3F6168E3DD0A20E1E24E43826
          7D978CF085E9FDBC6CBA37315783A670366535DC5F16DD9A415DCD444B7BDC66
          2329FFE9E82F8733D343412EB5FEF16FED2F867FFFCCCCDE06B14A7F25B43421
          7E484832A63EB6F492BCF23AE8FA4126546A74A4AE6843F7367B0BC65EB8193E
          E91948CA7F294E6E4B5C209BFC5902ADAF3FBA390F7EBCC234D46FDCF8D1F4A8
          825B1C37831017FA234D4CC72A5065BD3ED41BA6F6F532398B2F566B61FACE42
          F836914D5ECBB938D77336BEEF4F859BB56AA39448249FA380D91F5511197DDB
          BB4234CE3D7CDD5CA00ADB7FF28D1A389C52C52C31D0FF9117FDD5C1F7F61688
          BD71B397D168CDE44D4C3B5A28938864503865BCBD85E10868AD75CDDBF03700
          7B0DEF01ADD06AB5E429A65DBFB452E88CD4E2E0C071E87F4D38097130380971
          3038097130380971303809713038097130380971303809713038097130380971
          3038097130FC1FD308DFDD3A4277DF0000000049454E44AE426082}
        ContentLeftMargin = 0
        ContentRightMargin = 0
        ContentTopMargin = 0
        ContentBottomMargin = 0
        Options.LeftMargin = 0
        Options.TopMargin = 0
        Options.RightMargin = 0
        Options.BottomMargin = 0
        Options.Stretch = True
        Options.StretchBorder = False
        Options.DrawOnlyBorder = False
        Options.DrawOnlyClient = False
        DrawStyle = idsTile
        VirtualWidth = 0
        VirtualHeight = 0
        TileOffsetX = 0
        TileOffsetY = 0
        Proportional = False
        Scaled = True
        PixelOffsetModeHighQuality = True
        InterpolationModeHighQuality = True
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D494844520000006400000064080600000070E295
          5400000006624B474400FF00FF00FFA0BDA793000018184944415478DAED5D09
          7854D5157EB366F6C96403B29A109640645188188124606D1151B475C5B614CB
          26CA22B4A0066B514AFD6A053740B12A8A8005640765912C640122210B212021
          216421334966DFDFBCD773924C9A204926796F325138DF77BE79EB7DF7DD7FEE
          BD67BBE77188DBD4A788E3EB0ADCA6F6741B903E46B701E963741B903E46B701
          E963741B903E46BE0244002CEBE1BD426029C3E7738195C08A96F2BEF3513BFC
          849802B2097856CB0BFE9C6929F03BBEAE04121340F09F65635886775F8EC331
          C00FD5D1799AA6952DF5C7F7180E7CC5E77566702FF60A176E7CF4E59785E151
          51AA9646E002B51B8EFCFDFD694F0AA4391C395488E7DE174B24844020F0DACB
          8F8A892977D8EDD12DBBDF023F88D5F0DA033D20A6FF6E2730FF407A7A654C6C
          6CA42F5FA427343921E1746D7575429B436F00BFE6CB3A3105C4042CDDF5EDB7
          657177DE39D0972FD213FAF3D34FA76767642441AFD6C2F0A56A39FC0AF01A5F
          D58929200DC0015BF6EC29BD6BECD8A1BE7A899ED2DA356B32377DF0C104B95C
          5E3872E4C8C693274F26B79CF2D924CF14901AE0019F6CDB763E71E2C4E1BE78
          012674E4D0A1FCC5B3678F861ED270F4E8D1C0152B569CC8CBCB4B219A0581A7
          8077F4769D980252011CF5C1A79F164CFAF5AF47F676E599D2D52B57AAA64C98
          108EDBFBF6ED3389C562E9ECD9B3732A2A2A128966C90B7FF37BB34E4C01B908
          3CF8DF1B36E44D79F8E131BD5569D2E5B29A8D4693B6B1D16A34184C0E878320
          9D4E934EABE5C3691AB6CD7ABD5E6031996C46A3916BD0E9489BCD46C079AE4E
          A723605F48D13411151363CB38766C12B6C3E6CD9B2BC3C2C2229D4EA7FD8927
          9EB808F78D80E325C0F85ED6DE7A37A6801402DFF9E63BEF9C7EECC927133ABA
          C84551AE9CF4F422B3D94C416359A1B1B81445113445918D8D8DB4D56472194C
          268E5EABA5AC160BC76C32F10C0603CF66B1F0A121FD9C0E87101A4A4692A404
          265FD4D2C56C37C4BA75EB4AE3E3E39BE641B55A7D7DC68C1942785600EC7E00
          FCA2173168474C0139033C26F5CD37739FF9D39FC67574D1A7EBD79F7C7BF5EA
          F15E7C0F12E60113E83F4E601B9FCFB7F3783C522812D9F83C1E01439115B6B9
          22B1D821954AB97E7E7E2EBE40C0BD5852E25755597937DCCFFDF8E38FCB6362
          62DC3A090E61A7DE7BEFBD7B8866BD642AF0612FD6BF95980292059CB82C3535
          6BD6FCF9F77574D1A5D2D28A271F7C103A05258086E3F004020B97C3A140E973
          41C3D9A101F92291C80CDB7C3FB19804A98756F8FB53A05012AAC0404E404000
          5F191020F457A9844AA55204C7440AA552CAE5F1C4708D5F4F2B0FC39DF19EB8
          38396E6FDDBA551D02D4F6FCDCB97333CBCACA26C0E675601CC2347D1D9013C0
          C92F2E5B7672FE9225DEEC015EA1CB972E553C9C9272076CD2FBF7EFB7414F6A
          3714C2106B7AECB1C71A5D2E172ABDDB819FF6769D98028256D207E62E5C98B9
          68F9F209DEAE2CDBB467E7CED3AF2C5A94003DF5DAE1C387236E764D4E4E4EF1
          CA952B87B7B4D543C007BD5927A6801C009E3A6BDEBC8C652B574EF46645BD41
          B39E7C323DF7E4C92490AE7241CAEA700E5CB2644966515111FEE12A81E3818D
          DEAA135340BE017EF4D9E79ECB7865D5AA9F1D2077C7C6965AADD6A130D1174D
          983041131818C80D0A0A12C0AF087E25303FC961FE0A02098F9A3E7D3A0E5DA8
          B3BC0FBCD05B75620AC81EE0479E9E39337DE5EAD549BDD9986C507C44840604
          8DE02E2EA3410EC1C99C0B627010D1ACC54F064EF3469D9802B20F78DACFB587
          5CBC70A162CB7FFE73ED72692957ABD50A4C2693087A8CD861B7CB5C2489C646
          5107B756014774E3511E13534070827BF0B9050B3296BEF28A5701016DDC0E8A
          A3BEA1BEDE545F5F6F6E50AB510B273DBD5F53574742193468E9B4C96CA6ED56
          6BD3BBCB150A5A2814366DFF6ACA14FFE4071E68350135343418AAAE5ED5945F
          BEAC3B73EA94E5DBBD7B4300B02170EA2CF0DDDE784FA680A0B2F49B7920652D
          EC42CAAAAEAEAE2DCECFAFD537363A1D24D9EAC543EDDD6C3050D0D094C562A1
          2D6633071A82AB6D68F033190C12D0D4154E920C249A3574AF120C4DC6A2CA4A
          192897376D97AF3EFB2C77756A2A4EFE68A1F08AED8E2920C78027BFF897BF64
          CD5FBCF8BECE2EBC67D8B022A35E7F274B0DA7834633803E69E8F01A1E8FCB83
          0BDDFB023F3FB3101451D0D62989546A1708853CA7C3E1B4DB6C02CAE5421B18
          31343EDEBEF6A38F923B2AF3645A5AD19C1933F01DB4C0016CBCCB4FEACDF0FE
          6CE07B97BDF65AF6ACB973133BBBF0EFCB97A77DF3F5D7689AE0F2F87C278FCB
          B537397BB95C1C32ACA0A9BBF03868E04EA94C46F51F30C015161ECE1B101E2E
          1A101626E9171A2A05E947A154A9FCA1B778CFAFDB095DB97CB9EAA1A4A4F096
          5DD4F04D6C3F83292005C02356FDEB5FA77EF7CC33F7F47603F536C1FC610351
          D93DD1C70297B1FD0CA680FC88157B67E3C6B3BF9936EDAEDE6E205FD0F0F070
          2388BFD83B7044C861BB7CA6805403877EB4654BD184941456E687BE4E23A3A3
          2B61EE41DBD62344B3D8CF2A31050415A6A0AD7BF7968E1A33E667E753EF09DD
          3D78F045ABD98CA2EF4CE0CD6C97CF4A90C3F603072E8D183D7AB00FDAA74342
          4FA246AD6EBC5E5363ACABA9B18028ED8463AE7AB59A32198D381F10E828735F
          EF72B908B3D1C89FFAE8A3CE17962EED50A74A8C8F2FD469B5688A7F01F843B6
          EBCD14904660D597BB775FB83B2121CE5B8DDB96D0A9A201AAAEA8D05E2D2F37
          5EB972C55A76E9125D55592900E54F06DA762068D9680E11F6F011D6E26BD744
          1DE922931212CE5CAFAE1E0B9B2B80DF62FBFD980282F2B8FF673B769CBF2731
          B1CBA89323870E9D3BBC77AF0EDDB4379E23499240FFB77BDFE57436B9724171
          F4035D015DB822D0B4E58047209CE677A38E261E8FA7F513894CC03610B19D28
          622BFCFDD1CB48DF1855393E3959F8EC73CFDDDB5161D35252B2E10F8013FA6A
          E0547660F83FB102C8C75BB7168D4F4AEA72526F33FEB2415650EED412894417
          1412620A8F8870460D1CC8193C74A8F88EE86859FFD050655070B04AE8E72761
          B3C19E7AE8A1CCC2FC7CB44ABC07BC88CDB2915889CBFAE0B3CF0A26B5B10175
          443BB76D3BF3E9860D687FE2C8150AE78DE741F3E6C9E5F2D6E30141418452A9
          E4C2BF99ABF4F71740230B0784862AC222238314406C378627F4DC534FA5E764
          66A265FB53DC65BB7C56C280DE7AEFBDBC69BFFD6DAF8501F99216CD999376F4
          E0C164D8FC2FF0936C97CF4AD4C9CBAB56E5FCBE9371F79744A94B97A67FB37D
          3BF690434473340AABC41490E3C093E62F5992F9E2B2653F3B9F7A4FE8ED37DE
          C8F874E346148B3381597739DCD21EC39ED047EFBF9FF5EE3FFF8996ED3CE0B1
          6C97CF14902F807F3F75FAF4B47F7DF861B20FDAA7D769FB175FE4AE7AF965AF
          F9449802829AEAF320BBA77FFCD557B7440F39B477EF0FCB9E7F1EBD8528D0B0
          6E2E620A082E6C5931E2AEBB32B6EFDFDFE9785A52547479C3DAB555A0E0B53E
          D3623271EC6DF691CC46230F34EDF6C7CC668CB36D77CC66B38909FAFF3A9DCB
          E5E203B7F381932E9704AEE1119E113D68C890923DC78F77EA686BE3A4AA008E
          F6A8E46E1053405E06FEC7C0C183B3F79F38D1A983EA99471EC9389797D7A703
          214073B716545488401FEAB05D4EE7E49C9FF9BBDFA155C22B810E4C01C1F8A4
          770784859D3E7EFA744267171617145C7E7DC58A5A1EAFFD1FD64F28A4255269
          3BF305EE8BC5E2767593CAE59C1B8F81C2C8F3F3F36B3D86F6A7C0A020E10D65
          09409B6F676A71389D2E834EE7B8B18E43870D0B8E8A89E9B491B332328A673F
          FD3406CB5D03667D5D255340E603AF8746389B5950704B38A8D28E1E2D7C7EE6
          4CB4F662146314DBE53305E4CFC09B54818167B30A0B6F09408E1C3C786EF19C
          39A3883E3A87FC11F87300241F0019ED83F6E97502292B1FA42C7CD772E018B6
          CB670AC80CE02DB71220FB76ED3ABB62E1421C0D30C02196EDF25901C45FA53A
          975D5C3CCA170DD4DBB46FE7CE1F562C5A847AC865E0416C97CF1490D9C01F07
          0607FF9079EE9C57422BFB1AEDD9B123EF95C58BD1B28D1137ACBBAD59117B43
          C3C3738F9D3A358E6159BD4AA0585A1D369B1DB741F1845D5B931F262838D85F
          AE50C83BBA0F00390380A00DEB12305BCEB656620AC85F81DF8A898DCD3A909E
          DEA9860B9A360D13E2596D636393FC2F95C9F8A01F342925A827A0BE80DB6289
          44409224E574385CEE7BF57ABD1DF65BE381DBC607DBED760CA06EBAD61D4C8D
          31C246BD9E633499B806AD966FB1D90436AB155DC152D2E99451148559806EBA
          3611C354734A4A380A854279B3F3FB77EDCA5BBE7021F610CC1CC47A3A11A680
          FC0DF8F5E1234766EE3874A853F3FBA50B17CAA6DF7F7F9FCF878280406FB781
          B2DBFF66E74F676797CC7CFCF161447318A9BC7BA57BF07C86F7633E90250989
          89E99FEFD8D1A971D14592CEA94949790D1A8DBFCBE5E201372DB0847F2B1FB8
          699B6E8ED9C528775C24A36F733BCDE7F3DBC6D1623CB0D9BD03DB762E8FD7D4
          63C452A903973D438FA3542A15051A3E0D43102738248407CC0FEAD74F141C1C
          2C0E0C0C94C9E4F2D6887A2E9FCF93C191AE5EB8EAEAD59A071213435B76310D
          95B9AB7B7A1390CF81FFF89B69D3D2DFD9B8F196B0F6E23A9551D1D1689EC1B6
          433DA49CCDF29902B217F8E119336766BCBA7A759F361C769760C257AB351ACD
          F59A1A334536AF0BEA1F1A2A098B8A8A181119C96D89EF4D064E67F3B94C0141
          37E6F8452B5664CD7DF1C5FB1896E53372389DFAF4A3470B0FEFDB67CCCBCD95
          37363484C3308A86C39B99EE513273F79005C0EBD9AC0B53408A80E3BBCA75D2
          1709E630CBD75F7C91FDF9A64D3C981750F3BE9954E58006B270388495A6090E
          4D101811D91624B452E328816E885236EAC5141014FDA23D8DCBEA0B643418AE
          A7BEF4D2D963DF7D378AA6A8D0D6131C8E5A200DB92CF28F71D97457784E535D
          62B8987FA62829AAD56FEEA2097B81C15EB6F1AAAE76FF7573988DA2DD1E434C
          E5F42AF05A8261CE46A680D402F7FF64DBB6E2C48913E37DD2C25D93A3FADAB5
          D2EACA4ADBEE9D3BEBF7EDD831AE25CB4F130822556CA92226A59F481931180F
          E0E1C6D2BDE9A6EA3349FE026E51F9E4E80E2332F75C379D7AA1582D3393B43B
          8C762BD11C15EF247A484C01D1012B37EFDA7561ECB8719E045BA30267205D2E
          3388B172A2394D6BB71A17C4E7468D5AADAF57AB8DB535355698746DB55555CE
          9ADA5AA2BEAE0E178B0AF40683C86AB148401154B4AC436F17E5C8E10ACA15D1
          29D79551E3C7C2CE4FE284F565DF65E82B32272A05DCE28AC9D19DFED1489A76
          CCCCAFCB38A83663263A1CCEB601FFBEE55D7B1D90A6096EFBC18397468C1AD5
          A95D67756AEAE1AD9B370F8361C2EDD4418DDDC8E5728D3CD031B8F8E7E47249
          A14060C354B34DE85114413A1C12A7D3298686C5185DE4EE82D8960CF2887BF3
          5583A68C07203AF4B5EB7F04402A3D03C44DEB2BF459AF96D6E33C8ABAD427C0
          73881E0C5FACA489FDE6C8912B43870FEFD037004304313C22C20A1B6C261EA3
          783C9E0E94422328811650FEECAAC04012943F2A64C0004EBF7EFD041BD7ADF3
          339BCD4D3D572009CE0D193D6B104F240FECAA60EDC503E9C6AADCA4EE0082B4
          A9D290F9D7120D4A9BF8877A1E7843775F8A2920988445F6DF43872EC78F1CD9
          A96F60C3DAB58526A3D1F187D9B3E3FD44229141A733376AB586468DC652AFD1
          D870DD875EAB45E9A7C9D6459224FC8779A8650B31D05AA15008020203453285
          421A1814A4F457A9386D563DFF84562C5CF8DDBE5DBB7E8DC0C92312B355831F
          F4387D5463C937E9A6DAB3DD0604E94F0575C7F6D49AEE279A4D2BE8EAED96E2
          C8CA92B6BE36A9FF77CB96CCD7972F6F0240397072AEF28E946EC51D37147F9D
          66AE2B4A5609B805572647774B7A84318A1A78BCBC40EBA4D061F73DD19C17C5
          63620A083AFA23FAD22A5C8BD96C4A888B33502E57A838382E3378C48C6EC71C
          6B0AB6A459EB4B93FB8BF8791792A3BA15D5EFA469EAD50BF5D9307CB97B244E
          F6699EDECFCA7284D7D6ACC97DEA0F7FE813FE90B9CF3EFB7DE689139340922A
          0B4F4E8DC48482DD2D437DEEF3345BC3E5E428B120F75C52A447EF75DD4E6A97
          9ED7947CABB10CA16822A8CD29CC2936CDD367B3927371C1D2A52717BCF492CF
          53FCC11CA54F183A14A52759C0D0E9676461637A140C5D97F751865D7F6DE250
          99202B677C64A726A172ABB3EE85424D59B6D68A23843B72D22A9004153A2DF5
          6EEB050A16173D79362B09CCA63FFE78DA3FD6AD4B66AB617B4A6FBDFE7ADAE6
          4D9B9241A4AD8E4C797D00FCF6E8BB263539EF6693164D6282BF28E3BB716137
          359A161AEC950B8AD435C546070E694DBA0C482157E591E3AB9551134771F87E
          92AA8C378B29A70DE756F41BADF2E4D94C0141B16EDED87BEF4DDFBC73A7CFCD
          EF77C5C696DAACD6A1B2D031190171D37B6C7DAECE7C2BCFE5308E99D64F9AF6
          C5E8FEC96DCF1DABB79C5F56526FBB6A71DEE56E3F1C1E95037FD5A0881837A6
          ED9F407BE96086F15A0ED603333E247AF26C563C865177DC9173382BCBA72BA8
          4063BF3E69ECD87EF84EA1898B6BF8E2A0D09E965595FE463145DAE3E74529D3
          D7C4052539401BFFE08A3EFB9DF2C61033490F6B6D3CBE5FA96AE003465958C2
          18E22632B85D77F542DD0F9B70B8425B175A0BBA34A93005642EF046D0130A73
          CE9F1FE1ADC6F68440CFC97CFFEDB727E0BF3522E56F8C5CC5D74EFCED0A4DB9
          629E8FF63F6970B8886D35C658174DB85DBA0E981FF29583A6C82441433A5D0A
          0E6538A02C6C63142C3C4A56C314908781F70A84C2AB05E5E55DC6B98228EACC
          CFCB2BD2EB74342E4BB05A2CE6DAAA2AB2B6B69654ABD55C8BC944C3C48C69C8
          9BDCB1428140003A24C9130A493FA1502491C96C5C2EB735D881A628AED96412
          6100C59953A7426C16CB3051C0A08C90D17F64E42CABFC7EA59AA0E9764995A1
          07D44BFB8FBAE03FF081789E9F5CE57159C75736404DD13A80E2F7496F038252
          CC69604B49757597EBC1DD2229C367764AAA415372E491F7311A3E2B8FA7A23F
          BFC9660662F33559F83D57FD63EF1FCBE10ABB9D45BBF2FBD7AAE19F13069BF8
          DE27BABA9E2920F8205C2741E4969418154A65A74102AF2E59927560F7EED610
          7E4C5E06BDCB2A168B6D32B9DCA154A9488958ECF2138B393C4CDE0EDDC866B3
          F1E0878FBE6CE851E29BD599CFE3394B4B4A305F172764CC9C8B226524A37829
          4DD1D799765DB93C60D0145AD26FC428A2331B4D57801C5FA9831EE20F9B283E
          677B1B1014F7D0E2CBDD7DEC58C590B8B83B1896D72332E8F5DA71C386E13042
          4724BF66E1F0845ECFCFE809514EABB62A63B57B78C321BDB2AB7BD8F8E45D53
          46A0F59B371726DF7FBF4F26F6F2B2B26B53274EC48536C6C8C96FB21E2BD553
          B2A8CFFF505FB40D436C310509CE235D9AE3D90004258798D56BD79E79F48927
          585F26EC0901209500080E857A008489BF84550291371D445FD4CF30D1D9239E
          DCC30620B85EFBEE65A9A9D9B3E6CFF748F9619B1AEAEB1B278C1C896E592A22
          E5EF68B7EF696A26D6C845DA8CD5E96F628F40FDE359E0AF3CB98F0D409A52C5
          F64632E58E08C5DEE1E1E1389789FA272C2813CA07F83C645553B8F584555382
          965EFCF6083AEF3CFA6C121B80EC027EECCED1A33367CD9BD7E1642A93C95C52
          B95C0A929800242AA1542251C03E8A91ACA44F72677A9347DC9BAE1A3CD5A766
          1CA7B1E652EDE9F53889E3FB2D067ED7D37BD900E473A279695B4FC90452A51D
          B34A37253FE672CDF8F51D3E9FEFE2F27836D00DF942A1B0CBFCB8EABABA5897
          CB150A9AFA8F20690D245AFCF2BD4D3054996A32D7A851D3279A8773D4893C4E
          89CE062018DC80E12F58016CB89BD96BDC9FEB463D42E479D13D2365744ABA32
          6672AFF712DAE5305767BDFD23E5B4E06A32542E51C8F9B13B65F8EA4BCFEE2F
          0F886FD86E3B84E16488BE0DD4753C1565315D129A282869FF116981C31F4F71
          C75A799B5C0E4B7D6DEEDA6AD03DD0E58BC6C4E9440FBED3DE673FBDDD434240
          3121CE13B8C397049DEC3F76FE482EDFCFABBA89B5FE627E7DE15741344DA12E
          8493378271A42765FDD20041C2B9E3DF44F3648A1DA4563568CA8FF288C4096C
          BF2F4D3A2D9AC22FCFD9B457C6B53C1703077F4B340737F4887E8980B8097B09
          7E9EA8C96ACB134A7F08887B8C230E1A329AE97BD31469D2951D3963BC963304
          646EB7DF258D68166EBA348F7446BF64409030D800B387B67EEE0E94C6CBD2D0
          3195FED129715CA16C80A705D1A4BDD15C5F526AAE3A65B7EBAB1054FF965338
          79E377D831D09AF2B4BC8EE8970E889BD082B08C68365FB8C5611A4564BE24F0
          BA5016EAE48B640200080E49F804457148ABD6425A1B68D2A6E338CCD74368D2
          8191EE6DE380D13EB58E68065CC756456F1540DC840BFDF1BBB638CEF7C4C56B
          219ABF2AB49B68B64FB1FEF9BC5B0D1037612F415D01439770B9017EA40525A4
          FE2DE7DCFA145AB27151D279A239A51F863D79F5CBD1B72A207D966E03D2C7E8
          36207D8C6E03D2C7E836207D8CFE0782BE88EC655A87AB0000000049454E44AE
          426082}
        ContentLeftMargin = 0
        ContentRightMargin = 0
        ContentTopMargin = 0
        ContentBottomMargin = 0
        Options.LeftMargin = 0
        Options.TopMargin = 0
        Options.RightMargin = 0
        Options.BottomMargin = 0
        Options.Stretch = True
        Options.StretchBorder = False
        Options.DrawOnlyBorder = False
        Options.DrawOnlyClient = False
        DrawStyle = idsTile
        VirtualWidth = 0
        VirtualHeight = 0
        TileOffsetX = 0
        TileOffsetY = 0
        Proportional = False
        Scaled = True
        PixelOffsetModeHighQuality = True
        InterpolationModeHighQuality = True
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D4948445200000040000000400806000000AA6971
          DE0000000473424954080808087C0864880000000970485973000001D8000001
          D801FA5CA6720000001974455874536F667477617265007777772E696E6B7363
          6170652E6F72679BEE3C1A000007794944415478DAED9B0D6C136518C79FF7EE
          BA7EAC63631DDD273A7040448271B0894A74013F09435C7B6C03C161D4444374
          F1DB01C62826A2E057043F10D9982863C874632AA012138D464DD488E2740C19
          3835304437B6AEEDEEF5790B83B5BB6B6FBDDB2E933E49D3B777EF3DEFFF7E7D
          DE8FE7BD96C0396EC46801465B0C80D1028CB66105206E137962EBBD9248DC3C
          426032369FD1E8B1E7C48174D20AF05BBCD05B2DF87A5EFE7141ADF7FF058002
          296D7089949027F1534EFF535BBB1283AA5A81FA9CBCEFB543AEEABB519D34E2
          0194ED2DB3783A3B3662530BE5CE8702E83327EF3F9269E372BF9DB3E9E88805
          B078D7E2789FB7FB132CE62BD55102C02C89F3773A2DDE71BF14BE7D6CE401C0
          B02FDE29D612A0AE70D5C2016096CAFB0FFFE5AACA1EAAEE3064004A1AC462A4
          B03552BD480098E508DEB5CDAEEAFB470C8082BD05425A67CA7E0819F0A20510
          CF49DE6CDA993014B3C3900028AD176751423F5653570D00669378EF3D4DEEEA
          17870FC0458FC581CDBF08A8340F08C9813FBEC8012EEE3808B60FC0CA97C38F
          B59D4A9716D7BB9FC379BE5C4F0059BCEF9B23EECD797AEB950790BF7C3A0E62
          35581A7FE658EB4767CF0B161FD8D3964253CD16B9CB4B1BC43D14E8D57A0270
          70FEF676B12A456FBD44C1D9A758B2051DEFEF3070250F9090B9087EAD7D2BD4
          4549837B1FFB4EF4049040244FC7824D56BDF506030884916F7F10492587CC4C
          4836D1991C1A5E3803FC8033C0145D0170BD9E0EB13218800E7A8301E4AD588A
          C2DF905520E730A02CE37568AEBB3D08C04EF76EFC56AED113400ADF7BF498BB
          D2A9B7DE6000D32BEA7000993F2887E6D16DD0FA6166FF43C33608EAA0372402
          962BF75D2587269B078EEC0D0A4D1C030AF06DAF9E00269A3DCB7E99BF659DDE
          7A430160DF85295A1C32D37D2144702104320B211DF46AEF0296A43638B42B33
          F470F14EB748286CD303C00493E7995F8BB63C38E0840E7A4322A0A20C0F6D1A
          94437BC606385077C780E36C0F60A7BB8602885A006032D48AC9D038D9644807
          BD72D3E04F58BA40954393CD0BBEAC64F8ABFAA45C5B850D85B67830B3B120EA
          74388DFF37FBE7A2BA76D90A3AE81DB810BA74E5349024B6B0880FEB90F014E2
          3316C281ED6133BEC0864847E7066CE9E6C10048E57B0F279A7B7223EE0568D4
          2BBF149E56910B3CA9C130CE9175C8489A1DB744BAF9FE56DAE02AC45EB1168B
          13C20160995F2AF1AF6B61E9AFDA3D000D7A2324435EB68D5588D52606920B3E
          AE1D04EBFBD0ED2F87B6862EB537DF676C5354B0C04C20D23C4AC9641CC0B2D8
          A6A899D00E0B915AED1254F1B4FBD5A8D2DE28F5C6B6C58D1660B4C500182DC0
          681B084014793838712E9EB9113F4DC2576AA05EDB676303B539533770E643C0
          5BAB70545DABA691B2BAF9491EC1340707BF594009FAA40E746966E7EABB478D
          65EF1CA19289D21E0B47FFB401DD6D15F8A7F7CDDF7458D55DE455CC467F45A8
          6F2ACE044C2F1FD01BB843C10382F90FD45B0B16EE714C858306D89095E02357
          A194F5589A3CA011D98585BD03CC494BE0C03BEFCAE92AAE2F9A4108F72816D9
          EE9049AE8ED23A80C35732A6C00ECEF77053D116F994F7D28AA92071AF20D0CB
          54E9156C3D604DBE0F9ADF3993549D0530BDE2569C965E65D5641B535A5A9E5A
          603C8AD1B0AAEF50495D4936157AD710A04510A19BA9C905C6F0BE2329719CB8
          7F5EE597FDF4DE8061B30DBF71FBE0F4A21C5BC64668D971DB5900F915D76168
          36020B1D255372D807C136D60D2D353B16BC577405C7713BF0A8135498DA7438
          0E283D4FF0DDDBECAA7E1EF2575E0C54FA1C42577FAAF53208590F43CBF6D504
          0A1EB3C0497F1386D17961158473C8CC64EF5CB02EE94E8E231B037A559A5A00
          CC58B7C8167AD6B73C957D896CD80F462F6FF123040781BC15B7A3B3D722B61E
          C1E198096698F580D34F38852EA403803E08A33E8D87135F2768D21B307B7A15
          0258FE0116AFD70220DE21C0B52B9D60B6F311DD6805C0CC8C1D9F7BDB01DDBF
          8709343500E2128F32006D584CD70260E65D0EC8CAB54574A1170066295D148E
          AD0F235B0D00CEDCCB00F8005484AD8243C7F838B8E691D4A89754D1026096F4
          911D4E7C273F09A802808321034055B5A6E0F0AAF231903EC512F54D680190EC
          A170FC25852850038031D002C064E3E0A6E73280E3A35F516B01C00644618303
          BCFFC8ACB18603C0F9336C70D96D8EA86F402B006629DF9BE1D89ED1C600C82F
          1B0DE367DA555D3E5400C69C2070F4F5546300CC7EC81998FF8D0490E4A370E2
          059971603800CC79220D46A59B545D3E5400EC1285CE670D0250B83A3DB00832
          1200A6CED0B5260620062006200620062006205A007FE37BD2390980F09440FE
          F246F431E79C046019FD3B81192B2E04897EA5B8BBFA7F05C00912D8D32E3FBD
          2BBC621C4278123B442E28ECDF9F79D0D0CFE6AE4A16EC291A72615D0048B46B
          4DC641357A4FDFB90426EB41B02688B0BF669F26F183F949EC500148E67ADB8F
          8B9529D15EAF094049BDB81808DD6C2480F17CCFCB2DEE37EF3204C0E91F4255
          E23CBAC40800699CBFF94F77D5242DFF26D1FE74984168742DC2B725581E07A7
          76AA545BDFC351F582295838FA6F22F8B7B5B8DE5CA6F5AF34B1C7E3460B30DA
          62008C1660B4FD0782DC6F3085F40D110000000049454E44AE426082}
        ContentLeftMargin = 0
        ContentRightMargin = 0
        ContentTopMargin = 0
        ContentBottomMargin = 0
        Options.LeftMargin = 0
        Options.TopMargin = 0
        Options.RightMargin = 0
        Options.BottomMargin = 0
        Options.Stretch = True
        Options.StretchBorder = False
        Options.DrawOnlyBorder = False
        Options.DrawOnlyClient = False
        DrawStyle = idsTile
        VirtualWidth = 0
        VirtualHeight = 0
        TileOffsetX = 0
        TileOffsetY = 0
        Proportional = False
        Scaled = True
        PixelOffsetModeHighQuality = True
        InterpolationModeHighQuality = True
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D4948445200000040000000400806000000AA6971
          DE0000000473424954080808087C0864880000000970485973000001D8000001
          D801FA5CA6720000001974455874536F667477617265007777772E696E6B7363
          6170652E6F72679BEE3C1A000007264944415478DAED9B796C14551CC7BF73EC
          EC6E4B0BA507B8DBD206CA5D0A2801810A6804AF48E43E2A4540E311112F0201
          215131A0E10FC31188F10295231A10248809B70A06F0A016040AA694A35068F7
          ECDE3BE37B8B856E7786CE96EE2803DF267D9399376FDEF7336FDEEFBDB7338C
          CBE198C800CB0164A085150E87E171D85ABAD888588EAB63CDC2D0CC4CCBAF72
          C7A55305DDC1E07588180EAF2D5B725E66C00AD58CC1B49A1950FB767D3EC6ED
          705C4984F94403A0E28DC2E14C4B4E7F19F3B348B2946689ECF0D821D9CEDFC8
          202457324986DE4C5FBB9D02901255C14403E078C399AC9C0EF951E6CB0B6640
          C2C751191B03A032269F6507D5E5E90A8074B24B0618E134D96CDD2400222639
          7D81BE009C2A98499265311915004048AAD21B802F4952AC1A00C78B7A03B083
          248FA806806B51404F007E20C988BB00EE02D008805774C1233A91CE5B685177
          16800A5F29F6DAD72284203A99EEC5836DA6FEE70002BB0BF74A223334A61E36
          1702E76A5B0E0035BFC7B1066129747D5F49BBF72130A6FF144079E10357BDA5
          7C7AE37C5E84E14048B68C9B02B0872E115366247137065672E6D30CF7604CFA
          1C347E0C6E6B00BFB836A3AC6E2F38864751EA047436F7C759DF9FD8EDF83CCA
          7C2B360D4FA4CF440A17735D5900A5A595D8B4F910DC1EBF7AA32C8B1E3DAC28
          9E5C049E63B50020E1B3CBB389D1E0B54CE4AF7B52114E7A0FAA362F07201416
          F1CCB455A88BC37C43BDF8FC708C18DE4B1140D5F3034E846AD8AE3100AA43B0
          FF2DC60300D856BB1C9702A7152BD394793900814008C5252B100A89688EA696
          0CC15323FB290268D1284043DCF6DA95B085AA64CCB7F9D7FCCD9711E41E819D
          BBCAB061E301F80221A815ED59BA75B5E0B5571F479259D006801204B5E69500
          B4A434190778C34EECB0AD464DE8025AF3597834ED859B367BDD01A0122511AE
          F0D5887196E154575037009A2B5D03F0896EFCECFC1ACED015F46DF508F24CBD
          EF1C0091CED1463AC7E0B5CE91870153DA2D26832683FE013436AF5B00558172
          1C726D8DCC0306A68E8D843F39F37494F840EB49E8621E1053861C009F2F8843
          87CF4452B56218095DBA5890DB213AF42614C0BA2B0BE1093B22DBB4F77FA8CD
          34EC777E15637E309927744B1A285BB81C80B9F3D6E3E4A92AC42B96CC0716BD
          330EDDBB59B501F055F55B913BAE78579A302F07C0E30DA078CA8AB8CDD76BE2
          F8819830FEC6F5120A80CEFC76393E8D8C019A635E0E00D5DBEF6EC21F472BE2
          362F083C162F9A888E1DB3B4014055E13F8ADDF635044238CAFEE054D2149306
          37596939007446585656098F27A0DA3CCB30C8CF6F8F8C8C94A8FD9A44816808
          EACD2B016849691606AB8315A8F495C16AEC8A7B84CEAA2BA81B00CD95EE0154
          FA8F452649F9A67E30B2C977168043EEEF50EADE19D9FEBF2C8A6A06A0A1F97A
          FD1F96C55B1440480AA0DC7B18663685CCF4E84224A3683ECF588887D366C494
          A104201C96E0F3C6B12ACC7330990C32FB1308607BED0A5C24F3012A3AE0A103
          9FC3EE6D31E6AD42570C4F7B163C23C494210760F3962358BFE1008241F56B82
          54F99DDA63C1FC51484D356B01802E8BBF19B504DED660416DF0A26AF37200E8
          04A8B8642544B179ABC24F4F2EC298D137DE894A680BF8C9B11127BC07142BD3
          94793900D4F8F4E73E82C3E169168059331FC5B0A13DB4012041C45EFB9738E3
          8B7D0D4F8D79390054A7CF5CC6D6AD47E0747A551BE77816BD0A3A60E493F791
          5921D3607F82A3C035085F1008BFC56D5E09404B4A933048E700F477C20A7F29
          B2856E18943A569579DD00B815DD05701780D6007A6D21FF47AA06C0303A0350
          5E309EF4DCEBE8215500CCAD8EEB0A0055F0EC9CA2B079E03EB279FD4D8AB0E7
          2224F7F1A87359D6F4A3B9FBD2619A03902409172ED4C2EF8F6F286CB1A6C16C
          8A8E3E7200DC4EE76C72910FA2A0F8FDF0D5B91A9DCBD764E5E466680EE0C365
          DF63DFFEBFE22E2B25C58425EF4D84C5D2B62900470980C2A60050F1ADCCFD34
          0570ABCBE293260CC2F871F72B0270B95C3D19512C6B7C9E22009369ABA60068
          F37FE5B5B5387FBEA659E52D9C3F1A7DFBE6290220777F09B9C81CB500588EF7
          68FE08D8C94468F79E63A873FB5497C3722C7AF6CC469FC2DCA8FD8D01D4399D
          DF10C863D402601846D255142000A613009FA805C01A844A5D0120E68D04C2DF
          64D3A20680D16C2ED615002AB7DD3E97B4EDC54D016079BEB65D4E6EBAEE00D4
          D4D4A41A79BE120D3E9C920360309AE765582C8B7507808AB482A5A415BCA104
          80E1381FB9FBC9A413D4D73743F5F2783C563118A47D81200780371A57655AB2
          5F8AC0D023002AE26B0D494A1A0360392E9CC50BA98CC5E2D13500322A2C20A3
          C252EAB121005E10BECDB4E68CAACFA75B0054C4DB76923C560F800E7C38B0D6
          CCBCBCEBEFE85000D524CDBC1D01287D3C5D2F97CD368C61D93DF50038837030
          2B3B6750C33C8CCB6E9F40C82C4F0484847E3ECFF36EC1681E929695F5FBCDF2
          D188100AF85FF6FBFD753CCBF549B75ACF353CFE0FF797C685B0F60BB8000000
          0049454E44AE426082}
        ContentLeftMargin = 0
        ContentRightMargin = 0
        ContentTopMargin = 0
        ContentBottomMargin = 0
        Options.LeftMargin = 0
        Options.TopMargin = 0
        Options.RightMargin = 0
        Options.BottomMargin = 0
        Options.Stretch = True
        Options.StretchBorder = False
        Options.DrawOnlyBorder = False
        Options.DrawOnlyClient = False
        DrawStyle = idsTile
        VirtualWidth = 0
        VirtualHeight = 0
        TileOffsetX = 0
        TileOffsetY = 0
        Proportional = False
        Scaled = True
        PixelOffsetModeHighQuality = True
        InterpolationModeHighQuality = True
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D4948445200000040000000400806000000AA6971
          DE0000000473424954080808087C0864880000000970485973000001D8000001
          D801FA5CA6720000001974455874536F667477617265007777772E696E6B7363
          6170652E6F72679BEE3C1A00000D394944415478DACD9B077454551AC7FFEFBD
          E999F4100221454840091142558A88140BE4500541C172161145455141774196
          55D62301150F60830517145094DDA3AB2E6BA1A5016280D0941248233D646692
          C9CCBCB7DF9B494826D3DE34E03BE7BEB9F3DE9DFBBEEF77FB77EF3008B61C3C
          180B8EBB0B0C930641B895EEF4A41049218282B625958E421D855A0A67289CA6
          50088B653F860DAB08A67A4C5072CDCF1F44CACFA4D858ABE1BEBF4720688560
          D9FF52FC730C1972F8E605909B1B46D727293C41E1B6402BDA222729FC0366F3
          87183EBCE1E600909D1D4525F43CC59E85AD6A5F0FA9A59AB19640BC8711236A
          6F0C004160A8AACFA65816C53B5D27C33B4A0D8515D434DEA7A6C65F3F00D9D9
          29D4B16D21C387DE20C33BCA41EA731EA50EF35CF001E4E54D26C337C1D68BDF
          4C22F6094FE28E3BB607078020B064FC6A8A2DBCD196BAB7885983C1835F96DA
          24A401282C54A0A16133C566DE68FB2489207C06B9FC310C1C68F21F80CDF8AF
          29F680BF7A45362A10A5574263E4C0D2AB19EA47A34A15369D1901BA100B4A63
          0D2889310402C3B790C9267B82E01E80D8D3E7E56DA6D81C5FB560298BDB4B22
          90511C85189DB243F640555993E38F940C2EDDA2C7BE811530B33E75EEAD224E
          9E1E71D71CDC03C8CD7D077EB479B1C42715243818EE11C03510C09ED1E5FED6
          882CEA185FF61E405EDE83A4E14E5FDFDA49A7C2434792A032712ED37804202A
          C832D83BBC18E7938DBE2360985954133E970EE0E0C11E34CE1FA158B82FEF53
          3773989DDF1DE14D72B7E9A400B02A290376DD7B1E57A37D46504FF6F4C7A041
          E73D03B0CDF00EF833C91973260E1997A33CA6930A4094862803768DB904A814
          BEAAB59F6AC148AA0D827B0039397FA2441FFBFA9610A30C4F1D48B5767E8104
          C05076BBFB1D416D6A88EF1018E63182B0C53500DBC2465C8FC7F80AA06F4924
          C69DEA2229AD37004429EA5A819F934E0309B1BE42A88052D90B191975CE01E4
          E6AEA0EB525F8D17E5FE93F1E8532AADEBF0164063A8113B6ECB0138D61F08AF
          D3A8B0C211806D3D7F117E2E6967FC9A88C41AADA4B4DE02E0D5167C9ABEDFF6
          C5770835B48C4E6EF527B407F0125D57F963BC28F30F25435BAF090A004E2960
          63DFBDED6EF808411016E1CE3BD7D803C8C9394E9D441F7F012CC94F84E56A70
          6A804AC9E383BEFB3A50F109C2496A06696D00441F1ECFE7FB6BBC28CBF313A0
          BF1A1A14006A02B0A123005F21F07C7F0C1D7AD4062027670D95FE0B8100F066
          7E37D45D0DB3BB6731F1305B04F0668A5B787AB7683DC579019515A769B64733
          1D2A0B8E3E594E419F0AC83835CD5D94A4565B25D51080F5CE00F806C13A45B6
          E59E9B7B82AE698100B032B71BAE5487C06414D06CE461318B8E5DC1695A41E0
          71A5EAA8EBCC181672991A0AB9164A7938C2B51A6CE8B7DF757AEF20FC460032
          9816BF7D3902E4217EF15F5D5153AF9294D623800EA25668F0F5D82BEE134987
          20D0723996A1D29F465FBE0884F1A22CDB13894B65D246526F01C46895D83AB2
          CA7342A91004612A43ED7F3935B4D70305E0A30216D905C94101302C99C1D2B4
          ABD2124B83B04CAC01E232F1A1400138A0ABC4377BD251DEE0792EE00D00955C
          8EB5E3CF21D1E4C53CCD130486D9260210B79B06040A40B6F10A7AEB056C3FD6
          0327AF4441CE59D039B411715A0AA10644699AA0A67B6A85050AC68C4B976AA1
          3771A86F9643D72C43A95E85329D1CD58D2C1A8C16F0D454BB68657875F0EF88
          8C3021CA10EB9D42EE2008C22111C0458A26050AC06E6325265A1AA525A6D1C1
          74A54472DEE53422241A7C700AB886704104504D11CF8B7789B2BEB906F3CDBA
          A00028948520C3E0E352C539842A1180E86BF2D9CBD051E698F5D8D25C1D1400
          1F715158D0286D9D210902C318030E204AECD81A8B210B380006BDCC5D708167
          FD53B03D841600E2C0EABBB7CD89EC305661BA458227D70B00C5720DBAEB03D4
          525B21A8959522800B742B399000BAD3A4FF94B10C0A175360EF013018C777C6
          2F6649F54A3A846E9D4A023E0CB6CAABA6AB5869AA739F4822801F64E1C834D8
          569803D4E79119760419EA0B48E46A9168D4A356D0607F732ADEAE7F00A79AA5
          B9E3ACA294EB44009F21087B7EE2C2622B7586B3A853F407401155FD54AAFA03
          D5E7B0AACB56DCAD2D6C7B68E6C0D7B573BFD14B0FF3F19856F90C2E9B253417
          ADEAA208601945FF1A6800A2885B226F36D761B1D9C5F4D5038033F2100CA161
          6F56E48F5817BFD13A7112A5999AC2EEFC7E3874260E672E346162FF1A3C3EFC
          E2B5DF995806536B9EC2B786BEEE150C55FF2402984AD12F8301A0551EAAADC4
          1A99015DB80E0B4E1700788EC33A446051A31A8F46EEC5E684756DCF0406AF6F
          CFC4F92B9DF0CE9C5D58B5231D3F9FE030699011AF4D38D3968E1130AC6A31F2
          8DDD5D2B16AE7D5B04D099A26508D689B11619505E8E3C548055A9C12814B6D7
          D901602090E146930573CDE1D8012DFA533BCF49F9F3B5921725FF8F6464ED1E
          67DD27787AEC2FD8F45D3C0A2F09B4A26771606901B876FB1E3A4E86E8E2B530
          0B2E86CED8A8B4568748015D6F0F26803ECD06FC5AFC5B8BAD0C1819F5E80C87
          06BD0126B31926A309668BC5FA78813609DF3021F85FF7BF61B4F6B85D3E5F66
          F7C7CEEC81D6B8B1D9889292A26BCF36CE2D427AB77ABBF4EB8DC3F06CF56C47
          85E45C131E9EAA6E059045D7458132562C044DB3386409D02B2D8E005A441C25
          CB6A1CFB0711C0654D157E4B75DCD4DD7F3215EFFF679403009661B167C90984
          AACC76E90D2C87D0E2750EF940ABC9C3B40977B4FA048750A9E47A6BA89C4A72
          44682806FC110D459D1CBC81B18526AA723C414833409DD12CD2468CBE1E730E
          7F2F0940E5E0FB1019B61B3D1ADF727866B270786DEB64145546D90118D9DB82
          55330A9DEA39B87A098E1893ED6F46873F82CC7BB7B5DF17F0AA193C1C138395
          090948A4F69CF5A11E15558E6710C60C5760DC48DBD900417F15E67F6F940440
          75FF6C44985F82D2F0B5D377EB1A9558F0C94CD436085600DDE3386C9FEFDAAF
          B0D4301E2BEB32DB6E286446CC9A62F5DBB5DF1778916AC16A4F868B3F783729
          09CFC5C55DBB270580B5C3DBFD31D0D4362F700680A5CE4CF9E00B88ACBC1FF2
          A6034E75D01B1578FAC359A8D3D9000CE8016C9873CCA5CE9B4C4330B7F2F1B6
          1B61215F61CAF8A9F6000E1F0E87D92C4E8BDDAE371792E1EF24D9BB0F240120
          E14FE4C1723CDB2D0075025933620A222A2641D1B8C7A90E074EA560EDB7F75C
          6B029E00BC6BBC1B8BAA5B9C5E1C2BA06B6402468F2EB107208A87495134F5DC
          4519190861ED8715A900C40D01F3DEDD10CA8B9C02508468C18E9F6B1D2142AB
          9F815AB7D9A91E3F1DBF151FFC709764004F35CCC4C70D236D5FB4EA5F302D73
          54EBB38E00C41D0DF11485D3D5E1F354FAEF26393A8F24036881C09F3E0CFE6C
          0175983A2B0096802AE369C23294DA29675BF0A8F43B1156F5B8333560A125F1
          DC0DB3514D239E2700E23185F0D2F7A0179462E9F308932760E2C452E70044C9
          C9A122603E7296D9573D7B6272A4630BF10A407BE5084055790D848868075518
          BE1E3125BDE8D3F150F8858A18FC65DB44EA0CCD1E019C6322D1B3E4EFB62F61
          9A2D9832E131BBF7386A653D1A279ECF1FD3F1D1D9BE7D91AA72DCF4F0190035
          81CA5AD77E8390FA9508A97BD3E1FEEF65B158BE23133A836700636B9FC74F8D
          B7892BBF7A70A6684C9F6E710F4094DCDC54BAFE8AB67F744049D55437702064
          8CE34F820580111A6139391A71DA0287670B374DC78572B515C05D6916644D77
          9C037CC7F7C284F2176868A18E2F5C351A1327FCECF00E976FCFCB9B441A7ED5
          9A265DA3C1B1F474A749830540942F769EC38CDEE311137AD9EE7E694D04167F
          7A2F747555F86CDE312A60BB82C559261ABD4BDEA0B9A8D80968DFC3E4079C9E
          7774BF00CACB7B8BB45C2C46674447637B4A8A5700E26982D2AD8B6B1F1ECF0B
          2838EEDE855E5D2D40265461FE3D73D1BBABFDC66851593462C1DA1B4F169DD7
          0C46EAEF4FD8BE6B35D934E51DE62A7FF70076EEE49098B84DB47F79B76E783D
          3EDE2B009EC4DBF3011949DFE3BEF4F548E97C88E6FE167B870859620949822E
          210BD926AAFAFB68BEA1515D426D590AE6CD73795ED8F312B805C28E949419D3
          A39DFB4EAF178056D12A6B91DCF90C9E9C510CB6A91416654F34854EA0B66E6B
          6E152623D2F7ED2F839A4D4166A6DB3626F9B87C6E62E2F743B4DA51CE1E5F6F
          00A228950C56FCC5F91E41256FAAED73E26822468DF2B84323D9092208D6938F
          AF505849C1AE61DF4C009472596E78A86204C3306629F978ED052210E2FF0644
          47EA356FE4CD0080466741A590BD1DA6552EF1261F9FDC6004411C0E442FC3B8
          9B01805CC6562B38D90CAD56FEA3B7F9F8E5072410E2227B1D0148B81100DE58
          16C22B65EC2761A1AA79BEDAE0B7239420846DF9A271E3D9F3E6FB4C66483B20
          E82700866584A444D9C55716284768341AE9BBABC100D02ACB97976AF45CE8A3
          0C232C146C7F900E380056C634CBE5EC2E2D8CCFAD5EDD55C261A1EB08A0BD2C
          5ED1902670C204814726BD61A8ABF7480140AB63A34CCE1DE538E69FEB35911F
          60B96FFF10BDAE00DACBCBCB7571E02CFDA8DAF6052FF41358E6169AA08B7FBA
          0C270011D5E54D2A1AB278EAC5CDF4D9CC70A8E658E62427130EF016F69B0D59
          51C7FC56C28DFC1F5BECC2BDEC1E6F6C0000000049454E44AE426082}
        ContentLeftMargin = 0
        ContentRightMargin = 0
        ContentTopMargin = 0
        ContentBottomMargin = 0
        Options.LeftMargin = 0
        Options.TopMargin = 0
        Options.RightMargin = 0
        Options.BottomMargin = 0
        Options.Stretch = True
        Options.StretchBorder = False
        Options.DrawOnlyBorder = False
        Options.DrawOnlyClient = False
        DrawStyle = idsTile
        VirtualWidth = 0
        VirtualHeight = 0
        TileOffsetX = 0
        TileOffsetY = 0
        Proportional = False
        Scaled = True
        PixelOffsetModeHighQuality = True
        InterpolationModeHighQuality = True
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D4948445200000060000000600806000000E29877
          3800000006624B474400FF00FF00FFA0BDA793000010834944415478DAED5D09
          7C5355BAFFCE4D9A6669D3362DDD583BB288C5812AA3200203230F172C5AC1C1
          79AEA88C83CA2EDB3CF5270F655F64F38903B3A1CE80B480CACFD1370E88E230
          8EA22C0EA0AC85A6744969DAE4A6C9CD3DEFBB4D0B6D69734F724F92FAA6FFDF
          2FCD6DF29DEF9CF3FDEF3DDF77D610E8404C41625D807F7774101063A812208E
          1F9FA3F3FB0FE165422B5F1F3114165E1FEB4AFC90A14A80AFA0600805F81408
          594F64B9B8F173591086134A6F43020CB1AEC40F19EC04C8F2CD861D3BFED1E4
          F3D9F8F9C20E02B4A1838018A3838018A31901624141779D2CA73593D0E9FA03
          A59BDA20E065FC7C504BA5717171A7C9B66D0EAD852B2DAD498F93491E15843E
          40A10F16B60F16391D805AF0EB147C591A445DF8AAC2EF5C40E58B94901358B3
          6344168E1B88EF6062566279AC0DDD169A11E02D28A881D6A31DC04AF58DDFBE
          FDD865D97BEF7D0A1DF36B6D287D37AEB0303FD4C2949450B341708F22321989
          BA4760AEFD407BA88CF7091CC6BF7F9305FAB1C767FEA86B572246DAB0AC6849
          00C5BB7D25BEDE6AFAB94C488DB1A8E844B35A8D1FAFF3F97C4A08AA6BA65110
          56607A6A282A1AC1641D4A852ABBE7162AC04378F74EC02259235B65EA244076
          02A1DB5232CCBB0921FEC8E6171CAD1130038DB72A5C85BEFBEEDB416539498D
          80D3A7A931C9E89E4881CCC27F736254FF5304E8F2945AF366D28BD4C5A20051
          27406966E28938192F67E02B2B16956E05766CA296D781E97FB2B3893B9A1947
          950047A9EB6E4AC91ABCEC11CD4A8680F3F89A9E9A657E275A195E45003ADBF7
          0459FEB4E9E7188538E3046123463697DB4B9A9F9F21E9F50F2261FA66B2000F
          E35B595302AAEC620F3FD0B598D998685B344CA3ECC2A8E3595BB6E95C14F2BA
          028C6C8E62F4715D1BB23762CCFF55E33F78A7CF4007BAA275AD64BD61FBF667
          94CB8A12D73DE8E83643206CFC01813AB1224FE2D3B03592B944AC2346BFA3F1
          0E8BB8147398127DE3F1B410D968AB314E8994938E0801CEF3CE549F4EFF1E5E
          0E52D3FF830081CFF43E5F7E52D724CD9DCBAB55AB205402CACB5DD982247C80
          CFC0FFB3616AFA2FEC108D4EED6C2ED6AEEB0AB812505152772DF66B3EC4CBAE
          B1365784704E9685FFE8D4D9789C9742760228FD2B1184CB8F203AE03EF8D6B7
          91808A627767A287CFF0B27BACAD145110B820C864484AB6E92C1F752AA0E3C7
          DB2459DE8C06B7B4F2F53124E0D9409BAFDB87EAFAC6DA3ED101FD562F494379
          F804CD73C2F5D14E82B80722E870852A3BC41DDB0FFAE223A02B3D09C45D8D2F
          67E025350F4E6A1F5D01DE01A3235594261587FD369769A4D6E84833010EBB7B
          1D36514FF3AE1FF18A60F87237C4EFDF8A863FCA6E978414B8347757FD7BC441
          614D6AB679AAA67A6A495C69778FC3B76D7C2B4521FE8B5D607AFF5510AACBC2
          52A13C01CA93100D6071EF4BCB3617869B3E6C0294E10519E06B2C4212AFCA08
          B50EB06C9987CDCD67DA0D6330839C9406D49A0EBE6B0682EFFA912075E9AB74
          AC781537000297D0290F08D729875D9A0ABB7B1726BE9B573D74174F42E28627
          C3BEEB592075CD05F7D85920F5FC0957BD84C24E5BB6F99EB0D28693A8617CA7
          8857057425DFA1F11FAF7F02A281BAC1E3C035EEBF3063BD76650D2084E6DB32
          2DEF869C2ED4040DE3F9DF02A7785F31BA75F9FD205C2AE5660C16F87ADD04B5
          8FAF016A4CD0AE2C80D36EC9941BEA7467C80460D4F31C463D4BB914D9EF072B
          DEF9FA93FFE4658490E0BB6E28D43CB10EEF029D76650A284CC7A86875284942
          22A021E63F8597D93CCA6BDCF37B30EF58C6A7F261C233F23170E7CFE4A5CEEE
          F4987E9493433CAC094222C061774DA640D6F328A9E02C87A4457703116B7955
          3E3C10019CD3B680D4FDC77CD451FA942DDBF23AB33CABA0B27AC1512A7E0F9C
          26D02D6F3F0FF107B8F9F12BC8CA02B8331F03E483005FFE832989121D3967FC
          894B888ACDF3C9D44C532F0C52288B3C738EE576718400F4631E3612AA2F42F2
          82DBD107F878A80BC08ADD91DB50E74F6E5696C6606FAC0E60DD4A808B179992
          D73CB91E7CB9C3B91445A06438F60B3E61916526A0D2EEDA8CE28FF128A0B968
          2918F7FE814B65C1100F307C04C0B01181EBA6B88891D5BA5501325420E50C00
          E7D42D7CCA44C96F52B34D4FB2883211505C4C4D66BDC7CEA5D7EB9720E585E1
          405CD5DAF428CD45DE406C6EB02F9818642D97D20C6D7D8B4965F5EC22F067F7
          D25C45653ED92D993359425226022A4A5D6309253B38940CE28EEE85C437348E
          DDF5EA0D70D7586CEF3BB3C92B0430F803CFCF2682FBEE193CAA8986A5636C59
          96F7D5E5185059E27E95D7E47AC2967960F867C81DC6001A1D6CEF10A71D18FD
          816CEB0C975EF80B8F6A2A58919A659EA526C446805D3CC4658E97CA90327F08
          869E35A1A5539A98D17702DC7853C0C18603467F503D7F17F8D37FA4B9AA68D9
          AF5333CD79EA622AA85F224E75A52CB26AD05D380649CBC6B12708E660C30183
          3F7017CC03CFB0FFD49E173E507154CAB0665B2B8209A91AB5B2A4763476563E
          E0512225F251222055B03AD87030675AD0AFBD79B743ED23CBB964450561545A
          86F17F8356554D4945A97B0A76295EE551A0844D53C07058A52BA1B4EF4A3B9F
          15A175BB2A04F0F40314E833695996A02307EA04D8DDEB5168328F02252F180D
          82E34270A125CDC7B28E1F390C857FDC820F05817B1F7C10FAF4EB1734B9AABC
          0A010AAA167D0ED494A8B9BE68B7B5B62CF3141599E0A82C717D84B5B94D7361
          BC22A4CCB9B9DE1107450B0216CF9D0BD55555F5D74929293077F1E2A0C955E5
          190870CEDA16983DD35C69FA616AA625E80A017502ECE2E186AD429AA03FFF2F
          B02E1FAF2ED80E08507C80E20B38E01086A2FD83093010E03E031C265F94D85F
          E903A8E2AA26E808146D090C11143CF410F4CECD0D9A5C559E8100F1AEA9208E
          621A4950C3692420684CCB424025BED9B496C4F4D1EB607A7FADBAE09290E633
          4207030175830AC03561018FDC2A90804EC1045808507A2E9AF7029BB7BF02C6
          7D0C6332ED8080FA99B249AF31280B0E8A5CA665998DC164A24640C2EF6682E1
          6B86F0AE1D1020E5F407E7D4373567C58B002E4D9075EDA36C73BFED80006528
          421992E0002E4DD019E0E08493168DAD5FFBA38A7640806C4D834B0BF6F0C88D
          8713E6138626BF34AA7E91AD2ADA0101D46881AAC50778E4C6210CE5D4114B7E
          7E38083595EA828B57F15F3ED8088AADF2DCE9EA62FA78A85AFEA5F6FC7874C4
          780D45A4CC1BCC340C7D71CC38C8187AABF6CAB782D2BD9F40E66E8675B4820E
          1C2BBFD19C1F97A1085E837129CF0D04E2535F2EB3CFEE841B16BE04966E7C77
          39B9CE5F8083BF7E016ECD541FE3116F9F5CFFD20A2E8371BC86A36D33B02994
          D5CFC5D873BA0C8CE99DE0869717802189CFC26BEFA54BF0D5FC17C153510E3F
          CD490F2ACBCBF80AB80C47D7D86B3A79317E61910D0665CDBF79DB4220DEE047
          312804D4CBA7A6C2F5B36742424E0F4D46709D2B86C34B9681A73C302F128C00
          9EC6076542C62FA55BBB58833ABEA84E49EACA4ED577C894D5D06DA191807A79
          A3117A3F311132860D612D6A13506CF3F7C1779B7E0B7ECF9569C8B608E06C7C
          A51376103B6137A8C9B14ECAAF46494D5B712E67887EC05CB818E23F6FFD3C8C
          A6045C36DAFAF9D891C0AE8881718CDEEB04709E833D935FB95A572B04F0367E
          03F84DCA9797BAF2054A76F22C5D5B4D52AB04AC6EE05E8FBD7A630A2646DFA0
          375F59D52C4B00123AF8BA4B684D0776650377FC9E6957C70E2D098890F19565
          2977D9B22CBBD5E518C075615613B4D62405252044A8111029E3A359ABDD9231
          8BDBC22C059576D726149FC8BDA82D9AA468111039E32B95226FA4669A263189
          B2EA2CB78B3F1580FE2D3225BED224ED3D7E0612BC664877A7419A2B05CC9209
          60F56080EE72680A4F63D566FC1DDC7122949B1D5066A900175E2B0444D4F88A
          51291966CB36ED63926555DAB03C5D692B38AC5A6A1DF1BBDF05787D2B58CEB6
          5837BA720C4037FC4CE76553241900CE5901663659194808B8729221EECEEE50
          FB0497C996568106FD3E25D3D49BFBF274050EBBEB5714C806DE85D69D2D01F3
          D23720EEB336C65F1EBF09A0E03A00DF09BC13543A73CACA39D21BA0F028C0EF
          5A1FFEF60D1A00EEB993C0DFA30BEFAA281B347E69CBB66C64960F4539EF2D4A
          20F9C1B4F1CF60DA8CEDBF24B52D772DB6DBBF9F808E08FB34DE536DAFAC2068
          FC387C40D352011E7E1BE078DBE7B55283013C937E0EE2C471481AB7C1BFF3B6
          5A53CF508E2F0839E74ABB5BD950A579E918A97242E28C45A03FC8780CC1B687
          B1194AC6AE2D3645352731F46CB1B9438803B0F6043063D373B60AE0FE3F32A9
          F50DCE83DAA5B381265A98E48381625F292DD3BC26243B849A49C33655C56A3D
          C22DA850520689BF7A119B9E0BEC897E3E009DEAB0C0B51F7D414D09C6FD8E40
          15E29198C4CED89635CC9C2EDF83841D6256EDEFD90D6A362C00393DFC893F65
          6B528DC7D42F940D7A00618EEFA02FB8037D816A27A3D50CF1CEB73E3A2734E3
          2B88D763BBFE28362FE6E072653500F7E1DDEF9598D436C2DF3D1B6A7EBB0464
          5B785D1DD6FD0057A70B130EBB7B27B21EDAF9D0D8CE5B1F9903FAA3DF8594EC
          3206A2D35C732FDEE96D145B710DD376001C08EFB449292F179C6F2CC45E7688
          FB860914A5669A0BC2C9337C024AC46E54A0DFE0B397CC9AC6BC723318FFA071
          A3CD037900536FBD7AD64C99ED5A85A1F79FBFD6A45E7CE27E109F7930942455
          487CFF70CF92D3E4FE1DA5AE3194925D2C7A74C74E41D22FA6E35DCA141E07C7
          8DF8243C3210E0FACCC0FF874B0321E757E7B5EBD60950FDF66AF0F7EEC1224D
          1B8EAB097BBFADE6F88B75FB92F5B179EC114F8CA1444635AFBDA42E48601536
          3D9A3695F139B2CC227E8C9A6E694B467FF05B24606E246C153138DF5C01526E
          D01D93FB6C0ED36D24973076CF5B07971E88C3E148A21EE35ED4D6EA128C84F9
          2BC0B07B6FE4AC1501D4E5FF0C5C0BDA1A042447F5927758BB38B4AF116D1E5B
          89914FCAD05F0011430A8F630E6A3242D5276F2ABFC7D2F2ABF3849221BC0EF6
          E6BA00A7FC82A78F20C8CAC1ADDD1A3F8B3BF00D24FEF2F9881B2C12706E7A05
          A41B9BAD493B27FB85519DBA184F84ABB325B8AF802A2F77650912515651D41F
          3F62DAF0169836FE29E2C68A04C4A71EA87F0540BF0599DC1EF5A38BC3417571
          B54DD2C5BDAB38E684D94BC1F0E1A7DA95C600DE3B8641EDA2FA69DD7D3AAF77
          6C72F7E42ADE7944ECC73C3140D657968A0B93264C9FA33FC6B028B71D42EA7B
          0D38DF5AB5C656657A4E6BB4D31622FE6BAAE2F495FF1DFFC1E7F389A32ACC2D
          EEB1819C9A4CBD770C5F625AF12CC3BEAAF011959FB375AD7927CFF0E1FEF7F4
          5F1CE2338F10614837F73F5F3772F05D09D3C6B10FA98689A8FE9E70DD9C0DF3
          F57B0EBC289CB9D02E7FFED0DF25CBE71B3AE065D3EA990CDD603E88FA0F3A57
          AED96DB51C39B439EEF3AFEE11CA1C9C8E2BD4063923CD2F0DCA2BACEE7FD3C4
          F4A74744F510BB98FDA2365DB233D17BE6F83AFD17872708C5F6983C11FE6E9D
          BDFE81FDDE3658329E26CB1F76C5A20CEDE227CDC567963DA63B5B3A4B7FF444
          5FE212235A266A3151292FF7A4746DCE5AD3C2496B59572F440AED82804628CD
          93F9DCC96775C5F602DDC9E2EB840BA546CDC3D70251DA768F7C4DD7A3FECE19
          85EEEE3DD7A54EB9D319EBBA36A25D11D012E2B2AD39F462D9385D69F92D208A
          3D754E3193545D4A20A2470F9E3A1DF1D4D5979F1AE32918E3FDD46494307CAC
          A509163B5E7FEF4F4FD94F3AA5BF639AF7C09958D7A52DB46B02FE1DD041408C
          D141408CD141408CD141408CD141408CD141408CD141408CF17F2CA1ABBBE038
          4D6F0000000049454E44AE426082}
        ContentLeftMargin = 0
        ContentRightMargin = 0
        ContentTopMargin = 0
        ContentBottomMargin = 0
        Options.LeftMargin = 0
        Options.TopMargin = 0
        Options.RightMargin = 0
        Options.BottomMargin = 0
        Options.Stretch = True
        Options.StretchBorder = False
        Options.DrawOnlyBorder = False
        Options.DrawOnlyClient = False
        DrawStyle = idsTile
        VirtualWidth = 0
        VirtualHeight = 0
        TileOffsetX = 0
        TileOffsetY = 0
        Proportional = False
        Scaled = True
        PixelOffsetModeHighQuality = True
        InterpolationModeHighQuality = True
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D4948445200000060000000600806000000E29877
          3800000006624B474400FF00FF00FFA0BDA79300000BC54944415478DAED9B79
          6C9B671DC7BF8FEDC439EC24BD92E6E8B1F458D76340418C6303B40D69ACC7C6
          68D266542B4388B1312634F10768C03A40200B266D426248486852D9A8164A5B
          9A5E6BB3B4699AA56DD2746CEDB6B2B55DAFB44D9336B78FD7EFC3EF79FDBE76
          9C668E8FF7F56B3BFEC9F6F3FA790FBFCFE7F3BCCFF1DA66C886A9C1CC3E81C9
          1E590126475680C9911560726405981C590126475680C93129050C3C5C57CB38
          5FEED8BEF9E7669FCBA413D0BFAA6EBA85E13DCE51C6C05D8E1DE64A98740206
          573DBA9983AF05383D38E84A703976BE619A8449256068F5BAD53267DB35F881
          44BCC8AEA2DDFF3245C2A411D0FFEDC7A631C97792689785C1D764C87015ED4D
          BE844923606055DDEB44BA6E5CF8EA7B2624ECDB925409934240FFCABA558CF1
          FF4482AF2C0B20D42714EDDB9A3409192FE0C6C3DF2BB1F9DDEF11E0CA89E08B
          34B09EB94AF6274742C60BE85FB56E13D5EAF551C3E7D0F25C256F6D375C4246
          0BE85BBD6E8545E60DB1C30FBCA7876BEA811D864AC85801BD3535C539238C9A
          1E56150F7CED3D679C24EC344C42C60AA0A6E75526F30D89C00FBC171BCAAEA9
          CDBB0D919091028656D63E4813AE9DBAC057F79165D935BD75AFEE12324E40EF
          FDD4F4E45ADE257CB3F482AFEDCB8584B67DBA4AC83801032BD6FE8E803DA737
          FCC0B2B2D90B33DADEDCA8D7F9669E80076B3F2154B38D801F5C16128EEEDFA8
          C7F9669C80FE15350390B9C328F8A1C91A49687F6B63A2E79B79021E5CD30C19
          F7180A3FB4CE55DA7920A13E21A304F03760ED3E37A7C1DEF8F907C0B54CA3E0
          07FB1857E93BCD714BC81801FC2472FB2EE11FC323A8B176CE475EEB9D4980AF
          CD13F80B65FF6DD918CF796784007E18A53E09FFF4FB71EFB01BF07801EBF1F9
          B0B72E351E7EE8BDABEC646BCC5742DA0BF035E33E2AFF6BC4B34CBC2709A0AB
          006E9F90300F7987971A0E5FCB17B7B2CBDE6F8B4942DA0A186E45A54DC21F88
          A5B8D31928873AF195E480048F90D0590D7BCB12C3E18F5A76957F78346A0969
          27C07310CB18C30F89E3F7E96D41A8B30D3CB9BAECD7247835098B93013F782B
          BBFCF4B1A824A4BC00D1B94A37F04562F70D1A5EAEE00C5F0A833E0E7C2D4F69
          8ED43EC172E236D80F2D361EBEBA9DF8C94BF9471D134A48BA003A390B5A501C
          CCB0C3E19531C5E24709B3628AECC7543AA9795486F98C633E6D7107C12C180F
          7024F8DAB29030A475CC9D42C222C3E18766CCDC5579A633A2044305F07750C8
          7DD84CA723C6E5B620A47120465A172F7C6D9DD6318B3EC1727C2E49B8DD78F8
          9C5FA3D7A7ABCE9EA8374D80BF1DCF52F2E244808D84AFE5F9E5D112E620B7F9
          76C3E0D3E7D5332BFF71F9479DDD1331325480740CADF4015F361BBE96A74950
          86A81DB349C242BDE15FA397A72ACE746E8996916102A8F92995BDE8A2D3B2A4
          027C2D0D1BA276CC42CEC105FAC007AF87953D5571BAE37A2C9C0C1320B5E307
          54E0BFA512FCE01055F4091E7574D43E0BB907E72502FF2A3DA9D61FFF773C9C
          8C1370143B2859996AF0478F8E3409ACBD0AB907AAE3815F2FE7589FACFAE068
          4FBC9C0C11C0DB5140ED6DB7327C4C41F8B70C5145C7DC5E899CA6EA68E15FA1
          97272B3EEED896282B430450ED7F840AB92595E143E5A974CCAA0476AC02B94D
          B74D009FD5CB369650AD375EC011BC4AC9865487AF2D6B12DC4A9F504E57C25C
          40BE05FE45F8F144F999F65D7AB2D25D80F852C43F475CA2989E0EF0C795F0DE
          F446DBCE6A1BE57F9636EEA519F96BB97EF94F53CF74F4E9CD4B7701BEA3F83A
          9371209DE06BA9447D825BC2D61956D4B05AAAEF4908FD051CC18B54639E4D37
          F881092C0E165EC737D913F02581BD12FA0B68C36912B020DDE0535C850DCB0B
          1FC265A3A18F0E5D05788E61A955C2BB69089F5317709FF33B684A06F4D1A1AB
          00FFDBF82515E4B77AC2BF71230757BAEC181CB42AD9850E3FCA677A5052E4D3
          0B3EE88ADD54B0068F251BBEF2D97A1ECCD78A63947C412FF8172EE4A18BE0D3
          D83B90CD439F5555E14665B93B61F8B43C6C9171477E2DCE27917B307413C05B
          512911338CFE7E3612E048EBE879F3660EFE777AD4378EE348B87DC1208A9D52
          22F0C5E365C71AFC34D9E0B5D04D80F76D3C49C3CFBF440538D23A75F9C30F0A
          313060D3462781D56324886668E1BCA18880275A474DE652E71A9C4C2AF551A1
          9B005F0B76D3D11ED003BE484F9C7042922CCAB28C507EF002A3659B8D63F9B2
          BEB8E153DA5A5883AF9A425E0D5D04F0163825A6DC7CB347041C69DD9811CD3B
          42809FD1F024BC455396D52BC16A25014BFB22018EBC4EC673856BF17B33C06B
          A18B00A9056BA93C9B23028EB46E9CE1E4A9F71D181EB686ED3F5642B1939AA0
          EAA1F8E073A5F05F29A8C5DBA69057431701DE16BC46077A542FF862E879F66C
          4158FBAF020BDB65E16D4328724871C1A7182AB88129C99CF58E17090BE0EDC8
          91DC348BE498A21BFC73F9C1A647DB9431B151A8FDAF2873A3BCD4132F7C911E
          A5E6E72E33E18B485880EF10EEA7649F5EF0CF09F8C13CA69C605EBE049FD7A2
          6C9E9F2FA36CBA27919AAFAD7FDDB10EDF4D7B015233FE4CE5795A0FF89F7C92
          0F590E3FFE9C5923985AE2BBE5B809C187B2CD6F9CEBF0BC09CCC32221015408
          4657C0395A9CAD077C0D1C57DB7B017F8A01F0D5BCC71D75CA1747A6464202BC
          CD584E494722F0C58C776CCD172735BBCA40F850EEFFAC2CACC34E73B0879735
          EEF034E3052AC8AFC72B7474F06D6ACD0F75AE0A7C51F38B8D83AF4CEEFCB8BB
          683D0E9B4A1F895E010770828EF09978E19F17353F38CE0C74B8B3AA8C87AFE4
          C958E25C8F5366C20F943ACE1869C41CAB8DDAFF78E19F57DB7C353F00DF9D14
          F8222C3E54156CC0A5B41540B5FF194A5E8E07FE85F3F961932C31C4AF4A227C
          91FA7330ADB816BDE6E24F4C402325F7C602BF4FD4FC0BA19AAFC5AC4A374A92
          085F2C7A398AA7AD47BF99F045C4258037A1C4C7708D4A92130B7CF1058BE870
          C36ABE09F0C58B630885EC090CA7A5004F13D6D38E9BA286DFA7C20F0E35031F
          ABC02F4A3E7C45801D76560B6F5A0AF035A19E40AC8916FE45A5E687F2C48756
          567A4C832FC2F131AC6C23C6CCBBD34000DF05BB2F0FDD540E6754F02F8EAEF9
          81A8AC10355F8A0E70A47571C217A9F3B1D4F88362CC272135E25B7E865DD1C0
          BF74719C9A4FF08B4D864FE12301B966C38F4B80BB09AF30193F8A54D87E157E
          68921508F12B8614802FD2EDCE0D78D844EEC1884980B8F9E67D0B1769B12222
          FC4B7675A8C98293AC0AF3E18B86F0089DCB96FE11BC52910223A0980510FCBB
          084ADBA7C2EFB7E1F2457B58CD6724A1DC3CF86E2A610B0D771B980DF58575C9
          FDD9A1EE023CFB952FB07FF1A9F083351FA36ABE0745CEA4C2EFA5974601DDC3
          B02D15265B9122560127A9708BC78210F0BB2E8DADF9A09A9F34F8E768BF37E9
          626B700E608FD9DFF3C612510B7037621E75BE1F8D0531D06FC5E5CBA1A1A656
          F3C5EF370D852FE3146D5F6F0176143C8AE32C34C14EAB885EC03EFC8C36FEE3
          58F85D97EDEA509305879A338D81EFA7ABAA8DD27A8B842D05EB95C140DA472C
          020E1180BBC3E08B1FCECAE1879B59A62B7CF1BBC326FA8C7AAF05DBA7D642F7
          BF08991D5109E0FB31CD2BE32A31B16AF0AF74D96F9964CD2CF3C29938FCF3F4
          DC43CF860286BDA970BFC6C8884A80771F1EA70EF6EF0AFC0115FE98DB0B334B
          13827F8ADAF01DCC8F86BC1A1C4ED7F63C9E884A807B2FC41F921F12F0AF8E53
          F3CB44CD77C404DF2FE613346AD96103B6E63D82D36683302B2614C05B91EF19
          40F7E080B5F04A57AE0A35B45B596974F087A55C34DF5C88DD3D4BB1F3FA9DE8
          F639CD2EBB81C15B7C2F3D734F345B4E28C0FD26560FF65BB75FBD921BFCCF72
          604786D209E05FF73AB0BF7731B65EFB1C9A6E2C8247B6994D2669E17BE92751
          B52E136E7475B36D7FCFF59CFBC6DE581335DF51A8FE957614FCB3C3D3B1A767
          09B611F4237DD5345C4F89BBBE490FDD047CF8D73C49929835787B81F6289D11
          82EF972D68BB598D5DDDCBA8695986332333CC2E7B4A84FE02D48D67107C4B9E
          154DBD8BD070ED4EECB9BE043D3E87D9E54DB9D04DC0A54DB9CF0F0E597EE5E7
          16EB2936179B7AEE4653CF228CC83966973195E31009F85A341B4ECE063A8522
          2BC0E4C80A3039B2024C8EAC0093232BC0E4C80A3039B2024C8EFF031A6CF524
          0E046F570000000049454E44AE426082}
        ContentLeftMargin = 0
        ContentRightMargin = 0
        ContentTopMargin = 0
        ContentBottomMargin = 0
        Options.LeftMargin = 0
        Options.TopMargin = 0
        Options.RightMargin = 0
        Options.BottomMargin = 0
        Options.Stretch = True
        Options.StretchBorder = False
        Options.DrawOnlyBorder = False
        Options.DrawOnlyClient = False
        DrawStyle = idsTile
        VirtualWidth = 0
        VirtualHeight = 0
        TileOffsetX = 0
        TileOffsetY = 0
        Proportional = False
        Scaled = True
        PixelOffsetModeHighQuality = True
        InterpolationModeHighQuality = True
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D494844520000003C0000003C08060000003AFCD9
          7200000006624B474400FF00FF00FFA0BDA793000003E74944415478DAED9BCB
          4F13411CC77FB3BB2DB43C1A95286F48046F2A247AF6152D1A488B074C3C98F8
          27684C0C3E6E6A8C26241EFC1F8C1A5311237010CF1A43F1E0058CC82B104085
          4241F631FE767908F2EA74671828FD264D7727EDB7DFCF4E77E637DB2D815D26
          B27CA7AAB53904845E03A0C770374B7638979A46BA4F1685A62FC1F09B55C0D5
          ED918794C24DD9298588C283684DF8F612F07CCF5A11D9B9C4325B755DC18B2D
          F3C06DAF3F60D309D9A104AB231A0C9F5E008EC4F0295B7622C18A2170EE2230
          959D662B84C0240D9CCA4A03A7BA5C015BF169A0B118583333400DC369239A07
          88CF074A4E0E287EBFAB7022FC9302A67373608E8C6090F886AF53FC3E50F7E7
          03F17A994289F46706B643188343B86126F6098A0A9EA222A757B6833F13B07D
          E4F5BEBEC4C32C4A55C0535A06C4B3714F88F66706D607FA81C6E39B9AAE25C5
          E707ADA444AA3F13B03D8018030349855994565CB2EE4023DA9F19D81C190673
          62C25520251000ED40BE147F6660BDF7BB738EB911F16680A7BC5C8A3F33F05C
          4F377EEF2C57814051C05B5129C55F0E307E94B7F290147F66602E5F3915E7CC
          831552FC9981790C2A1B9D63A2FD99812D9C1F0D9C27DD48C9CE06ADB0488A3F
          33B02D63A00F83CD241D48DDBB0FD4BC3C69FECCC054D7C1E8FB01D4642CFD16
          A415176361B0FEA56ED1FECCC04E285CAAE9435811998C23AA3D82DA030A4E1D
          32FD935E1E1AB87CA33389D7BD899C5F5BE1EFF202401CACD8A4D32BCE027D83
          79542B2A04252B47BA3FD74B3CD6AF9F608C8EAE6AB7976DCE744108BB29677F
          AEC0C6F0305893ABE752353F1FD4DC805B7B2EFE5C81757B849D9D5DD1463232
          412B2B03777DCBCF9F1F30A5A07FEB066A2DB3416BADA41494CC4CF7B49CFCB9
          01DB23AADEBFB252B28B00BB18E0215EFEDC80CDF1317C8C2FEDB34C435BE9CF
          0DD8181A046B6ACAD9263E3F788A310C51DC580AF1E7066C4DC7C01C1E0192E9
          03ADA060D38A47967FFAA79654571A38D595064E75ED6AE0DD70DBD2240207E6
          81DB231D40E1A4EC44224580BEEF0CD69F71808FB445EAB07669961D4AA828A9
          8DD684DE2E2D25AB5A23F7F130DC929D4B84B077EF61EFDE9DDF5EA6A36DAF6A
          0928D771F338ECFC737A0A413F52AA34D93DFB0F3E41B918C90D5CACDF889E0B
          3D917D04C4035318A3401ABA6A421DB241B7009874816585A3E7EB7B65438A07
          26E4B9FA47B9FAB9AE2EB9BB54761030C552E651E7D95023426FCBEA8D273056
          6BF44A3458BFADFF4AC00BB8879810EABC10FE2A1B8827F0343EAD7123147907
          5EEB72F454FD6FD9305C81ABDB22CFB08B2FFDD7FCB87262AEF1454343723FEA
          6E67E0C32D2D7B54CD7C0A8406717714DF78A733187E291B401870AAE82FCE77
          9C5B5735E9EA0000000049454E44AE426082}
        ContentLeftMargin = 0
        ContentRightMargin = 0
        ContentTopMargin = 0
        ContentBottomMargin = 0
        Options.LeftMargin = 0
        Options.TopMargin = 0
        Options.RightMargin = 0
        Options.BottomMargin = 0
        Options.Stretch = True
        Options.StretchBorder = False
        Options.DrawOnlyBorder = False
        Options.DrawOnlyClient = False
        DrawStyle = idsTile
        VirtualWidth = 0
        VirtualHeight = 0
        TileOffsetX = 0
        TileOffsetY = 0
        Proportional = False
        Scaled = True
        PixelOffsetModeHighQuality = True
        InterpolationModeHighQuality = True
      end>
    Left = 688
    Top = 280
  end
  object scGPVirtualImageList1: TscGPVirtualImageList
    ColorDepth = cd32Bit
    DirectDraw = True
    PixelOffsetMode = scgppomDefault
    InterpolationMode = scgppimDefault
    Width = 48
    Height = 48
    DefaultWidth = 48
    DefaultHeight = 48
    SourceImageCollection = scGPImageCollection1
    Left = 755
    Top = 280
    Bitmap = {}
  end
  object ActionList1: TActionList
    Left = 360
    Top = 216
    object PMBoard: TAction
      Caption = 'Job Order'
      OnExecute = PMBoardExecute
    end
    object MaterialRequest: TAction
      Caption = 'Cash Purchase Request'
      OnExecute = MaterialRequestExecute
    end
    object CompanySetup: TAction
      Caption = 'Company Setup'
      OnExecute = CompanySetupExecute
    end
    object EmployeeRegistration: TAction
      Caption = 'Employee Registration'
      OnExecute = EmployeeRegistrationExecute
    end
    object UserRegistration: TAction
      Caption = 'User Registration'
      OnExecute = UserRegistrationExecute
    end
    object Payroll: TAction
      Caption = 'Payroll Register'
      OnExecute = PayrollExecute
    end
    object Items: TAction
      Caption = 'Items'
      OnExecute = ItemsExecute
    end
    object Garments: TAction
      Caption = 'Garments'
      OnExecute = GarmentsExecute
    end
    object Fabrics: TAction
      Caption = 'Fabrics'
      OnExecute = FabricsExecute
    end
    object ItemUnit: TAction
      Caption = 'Unit'
      OnExecute = Veb
    end
    object CashRegister: TAction
      Caption = 'Cash Register'
      OnExecute = CashRegisterExecute
    end
    object SalesInvoice: TAction
      Caption = 'Sales Invoice'
      OnExecute = SalesInvoiceExecute
    end
    object PO: TAction
      Caption = 'Purchase Order'
      OnExecute = POExecute
    end
    object IR: TAction
      Caption = 'Receiving Receipt'
      OnExecute = IRExecute
    end
    object Payment: TAction
      Caption = 'Payment'
      OnExecute = PaymentExecute
    end
    object Expense: TAction
      Caption = 'Expense/Deposits'
      OnExecute = ExpenseExecute
    end
    object PettyCash: TAction
      Caption = 'Petty Cash'
      OnExecute = PettyCashExecute
    end
    object UserRoles: TAction
      Caption = 'User Roles'
      OnExecute = UserRolesExecute
    end
    object LogOut: TAction
      Caption = 'Log Out'
      OnExecute = LogOutExecute
    end
    object Vendor: TAction
      Caption = 'Vendor'
      OnExecute = VendorExecute
    end
    object Bank: TAction
      Caption = 'Bank'
      OnExecute = BankExecute
    end
    object ExpenseType: TAction
      Caption = 'Expense Type'
      OnExecute = ExpenseTypeExecute
    end
    object FabRequest: TAction
      Caption = 'Material Request'
      OnExecute = FabRequestExecute
    end
    object JOSummary: TAction
      Caption = 'Job Order Report - Summary'
      OnExecute = JOSummaryExecute
    end
    object SalesSummary: TAction
      Caption = 'Sales Summary'
      OnExecute = SalesSummaryExecute
    end
    object PayrollSummary: TAction
      Caption = 'Payroll Summary'
      OnExecute = PayrollSummaryExecute
    end
    object CPRSummary: TAction
      Caption = 'Cash Purchase Summary'
      OnExecute = CPRSummaryExecute
    end
    object RRSummary: TAction
      Caption = 'RR Summary'
      OnExecute = RRSummaryExecute
    end
    object JODetail: TAction
      Caption = 'Job Order Report - Detail'
      OnExecute = JODetailExecute
    end
    object pay: TAction
      Caption = 'Sales Detail'
      OnExecute = payExecute
    end
    object ExpenseDetail: TAction
      Caption = 'Expense/Cash - Out Detail'
      OnExecute = ExpenseDetailExecute
    end
    object CashFlow: TAction
      Caption = 'Cash Flow'
      OnExecute = CashFlowExecute
    end
    object MatReqDetail: TAction
      Caption = 'Material Request Detail'
      OnExecute = MatReqDetailExecute
    end
    object ProjectCosting: TAction
      Caption = 'Project Costing Detail'
      OnExecute = ProjectCostingExecute
    end
    object ProjectCostingSummary: TAction
      Caption = 'Project Costing Summary'
      OnExecute = ProjectCostingSummaryExecute
    end
    object ReplenishmentDetail: TAction
      Caption = 'Replenishment Detail'
      OnExecute = ReplenishmentDetailExecute
    end
    object ReplenishmentSummary: TAction
      Caption = 'Replenishment Summary'
      OnExecute = ReplenishmentSummaryExecute
    end
    object Notif: TAction
      Caption = 'Notification'
      OnExecute = NotifExecute
    end
    object Clients: TAction
      Caption = 'Clients'
      OnExecute = ClientsExecute
    end
    object WorkLog: TAction
      Caption = 'Work Log'
      OnExecute = WorkLogExecute
    end
    object ARAgingSchedule: TAction
      Caption = 'AR Aging Schedule'
      OnExecute = ARAgingScheduleExecute
    end
    object RemittanceSummary: TAction
      Caption = 'Remittance Summary'
      OnExecute = RemittanceSummaryExecute
    end
    object RemittanceDetail: TAction
      Caption = 'Remittance Detail'
      OnExecute = RemittanceDetailExecute
    end
    object SalariesandWages: TAction
      Caption = 'Salaries and Wages'
      OnExecute = SalariesandWagesExecute
    end
    object CashAdvances: TAction
      Caption = 'Cash Advances'
      OnExecute = CashAdvancesExecute
    end
    object LayoutBoard: TAction
      Caption = 'Layout Board'
      OnExecute = LayoutBoardExecute
    end
    object RFQ: TAction
      Caption = 'Quotation'
      OnExecute = RFQExecute
    end
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 360
    Top = 280
  end
  object PopupMenu3: TPopupMenu
    Left = 496
    Top = 272
    object JobOrderSummary1: TMenuItem
      Action = JOSummary
    end
    object JobOrderReportDetail1: TMenuItem
      Action = JODetail
    end
    object MaterialRequestDetail1: TMenuItem
      Action = MatReqDetail
    end
    object ProjectCosting1: TMenuItem
      Action = ProjectCosting
    end
    object ProjectCostingSummary1: TMenuItem
      Action = ProjectCostingSummary
    end
    object ARAgingSchedule1: TMenuItem
      Action = ARAgingSchedule
    end
  end
  object PopupMenu4: TPopupMenu
    Left = 496
    Top = 328
    object SalesSummary1: TMenuItem
      Action = SalesSummary
    end
    object SalesDetail1: TMenuItem
      Action = pay
    end
    object ReplenishmentSummary2: TMenuItem
      Action = ReplenishmentSummary
    end
    object ReplenishmentSummary1: TMenuItem
      Action = ReplenishmentDetail
    end
    object ExpenseSummary: TMenuItem
      Caption = 'Expense/Cash Out Summary'
      OnClick = ExpenseSummaryClick
    end
    object ExpenseCashoutDetail1: TMenuItem
      Action = ExpenseDetail
    end
    object CashFlow1: TMenuItem
      Action = CashFlow
    end
    object RemittanceSummary1: TMenuItem
      Action = RemittanceSummary
    end
    object RemittanceDetail1: TMenuItem
      Action = RemittanceDetail
    end
    object SalariesandWages1: TMenuItem
      Action = SalariesandWages
    end
    object CashAdvances1: TMenuItem
      Action = CashAdvances
    end
    object PayrollSummary2: TMenuItem
      Action = PayrollSummary
    end
  end
  object PopupMenu6: TPopupMenu
    Left = 496
    Top = 392
    object MenuItem1: TMenuItem
      Action = CPRSummary
    end
    object RRSummary1: TMenuItem
      Action = RRSummary
    end
  end
end
