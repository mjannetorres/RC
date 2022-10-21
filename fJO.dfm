object f_JO: Tf_JO
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Job Order'
  ClientHeight = 471
  ClientWidth = 837
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Panel1: TPanel
    Left = 0
    Top = 385
    Width = 837
    Height = 86
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      837
      86)
    object Label2: TLabel
      Left = 249
      Top = 6
      Width = 83
      Height = 17
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = 'GROSS AMNT'
      Color = 6570553
      Font.Charset = ANSI_CHARSET
      Font.Color = 6570553
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold, fsItalic]
      ParentColor = False
      ParentFont = False
      StyleElements = []
    end
    object Label7: TLabel
      Left = 441
      Top = 6
      Width = 66
      Height = 17
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = 'DISCOUNT'
      Color = 6570553
      Font.Charset = ANSI_CHARSET
      Font.Color = 6570553
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold, fsItalic]
      ParentColor = False
      ParentFont = False
      StyleElements = []
    end
    object Label8: TLabel
      Left = 653
      Top = 6
      Width = 67
      Height = 17
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = 'NET AMNT'
      Color = 6570553
      Font.Charset = ANSI_CHARSET
      Font.Color = 6570553
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold, fsItalic]
      ParentColor = False
      ParentFont = False
      StyleElements = []
    end
    object btnSave: TButton
      Left = 669
      Top = 54
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = '&Save'
      Default = True
      ModalResult = 1
      TabOrder = 0
    end
    object btnCancel: TButton
      Left = 747
      Top = 54
      Width = 75
      Height = 25
      Action = Cancel
      Anchors = [akTop, akRight]
      Cancel = True
      ModalResult = 2
      TabOrder = 1
    end
    object cxDBLabel2: TcxDBLabel
      Left = 346
      Top = 4
      Anchors = [akTop, akRight]
      AutoSize = True
      DataBinding.DataField = 'GROSSAMNT'
      DataBinding.DataSource = ds_JO
      Enabled = False
      ParentColor = False
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Style.BorderStyle = ebsNone
      Style.Color = clBlack
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -13
      Style.Font.Name = 'Segoe UI Black'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Transparent = True
      AnchorX = 424
    end
    object cxDBLabel4: TcxDBLabel
      Left = 742
      Top = 4
      Anchors = [akTop, akRight]
      AutoSize = True
      DataBinding.DataField = 'NETAMNT'
      DataBinding.DataSource = ds_JO
      Enabled = False
      ParentColor = False
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Style.BorderStyle = ebsNone
      Style.Color = clBlack
      Style.Edges = [bBottom]
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -13
      Style.Font.Name = 'Segoe UI Black'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      StyleDisabled.BorderColor = clWindowFrame
      StyleDisabled.BorderStyle = ebsSingle
      StyleDisabled.TextStyle = [fsBold]
      Transparent = True
      AnchorX = 822
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 518
      Top = 4
      Anchors = [akTop, akRight]
      DataBinding.DataField = 'DISCOUNT'
      DataBinding.DataSource = ds_JO
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.OnValidate = cxDBTextEdit1PropertiesValidate
      Style.BorderColor = 1184274
      Style.BorderStyle = ebsThick
      Style.Color = 6570553
      Style.Edges = [bLeft, bTop, bRight, bBottom]
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -12
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = False
      Style.TransparentBorder = True
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 4
      OnExit = ComputeAmntExecute
      Width = 112
    end
    object btnPrint: TButton
      Left = 13
      Top = 54
      Width = 75
      Height = 25
      Action = Print
      Anchors = [akTop, akRight]
      Default = True
      TabOrder = 5
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 837
    Height = 137
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
      837
      137)
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
      Left = 678
      Top = 16
      Width = 50
      Height = 17
      Anchors = [akTop, akRight]
      Caption = 'JO NO. '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI Black'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 671
      Top = 40
      Width = 47
      Height = 17
      Caption = 'JO Date'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 663
      Top = 63
      Width = 56
      Height = 17
      Anchors = [akTop, akRight]
      Caption = 'Due Date'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 13
      Top = 36
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
      Left = 728
      Top = 35
      Anchors = [akTop, akRight]
      DataBinding.DataField = 'LOGDATE'
      DataBinding.DataSource = ds_JO
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
      OnExit = ComputeAmntExecute
      Width = 94
    end
    object cxDBDateEdit2: TcxDBDateEdit
      Left = 728
      Top = 60
      Anchors = [akTop, akRight]
      DataBinding.DataField = 'DUEDATE'
      DataBinding.DataSource = ds_JO
      ParentFont = False
      Properties.DisplayFormat = 'mm/dd/yyyy'
      Properties.EditFormat = 'mm/dd/yyyy'
      Properties.SaveTime = False
      Properties.ShowTime = False
      Properties.OnValidate = cxDBDateEdit2PropertiesValidate
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
      TabOrder = 3
      OnExit = ComputeAmntExecute
      Width = 94
    end
    object cxDBDateEdit3: TcxDBDateEdit
      Left = 728
      Top = 84
      Anchors = [akTop, akRight]
      DataBinding.DataField = 'POSTEDDATETIME'
      DataBinding.DataSource = ds_JO
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
      OnExit = ComputeAmntExecute
      Width = 94
    end
    object cxDBLabel1: TcxDBLabel
      Left = 735
      Top = 10
      Anchors = [akTop, akRight]
      AutoSize = True
      DataBinding.DataField = 'JONO'
      DataBinding.DataSource = ds_JO
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
      AnchorX = 822
    end
    object btnAdd: TscGPCharGlyphButton
      Left = 301
      Top = 11
      Width = 26
      Height = 21
      FluentUIOpaque = False
      TabOrder = 6
      TabStop = True
      OnClick = btnAddClick
      Animation = False
      Badge.Color = clRed
      Badge.ColorAlpha = 255
      Badge.Font.Charset = DEFAULT_CHARSET
      Badge.Font.Color = clWhite
      Badge.Font.Height = -12
      Badge.Font.Name = 'Tahoma'
      Badge.Font.Style = [fsBold]
      Badge.Visible = False
      Caption = 'btnAdd'
      CanFocused = True
      CustomDropDown = False
      DrawTextMode = scdtmGDI
      FluentLightEffect = False
      Layout = blGlyphLeft
      TransparentBackground = True
      Options.NormalColor = clBlack
      Options.HotColor = clBtnText
      Options.PressedColor = clBtnText
      Options.FocusedColor = clBtnFace
      Options.DisabledColor = clBtnText
      Options.NormalColor2 = clBlack
      Options.HotColor2 = clNone
      Options.PressedColor2 = clNone
      Options.FocusedColor2 = clNone
      Options.DisabledColor2 = clNone
      Options.NormalColorAlpha = 10
      Options.HotColorAlpha = 20
      Options.PressedColorAlpha = 30
      Options.FocusedColorAlpha = 255
      Options.DisabledColorAlpha = 5
      Options.NormalColor2Alpha = 255
      Options.HotColor2Alpha = 255
      Options.PressedColor2Alpha = 255
      Options.FocusedColor2Alpha = 255
      Options.DisabledColor2Alpha = 255
      Options.FrameNormalColor = clBtnText
      Options.FrameHotColor = clBtnText
      Options.FramePressedColor = clBtnText
      Options.FrameFocusedColor = clHighlight
      Options.FrameDisabledColor = clBtnText
      Options.FrameWidth = 1
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
      Options.ShapeFillGradientColorOffset = 90
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
      GlyphOptions.HotColor = clBtnText
      GlyphOptions.PressedColor = clWhite
      GlyphOptions.FocusedColor = clBtnText
      GlyphOptions.DisabledColor = clBtnText
      GlyphOptions.NormalColorAlpha = 200
      GlyphOptions.HotColorAlpha = 255
      GlyphOptions.PressedColorAlpha = 255
      GlyphOptions.FocusedColorAlpha = 255
      GlyphOptions.DisabledColorAlpha = 100
      GlyphOptions.Index = 321
      GlyphOptions.Margin = 0
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
    object cxDBMemo1: TcxDBMemo
      Left = 55
      Top = 38
      DataBinding.DataField = 'REMARKS'
      DataBinding.DataSource = ds_JO
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
      OnExit = ComputeAmntExecute
      Height = 89
      Width = 269
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox
      Left = 55
      Top = 11
      DataBinding.DataField = 'CLIENTID'
      DataBinding.DataSource = ds_JO
      ParentFont = False
      Properties.ButtonGlyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0004000000150000002B00000033000000330000003400000035000000350000
        0036000000360000003600000030000000180000000500000000000000000000
        00141615149B34312FFF302C2BFF2A2826FF262322FF221F1EFF1D1B1AFF1917
        16FF151313FF100F0FFF0D0D0CFF040404A40000001800000000000000000000
        0024393534F8827A74FF554840FF493C37FF423731FF13100EFF100C0CFF2D23
        1FFF261C19FF211815FF1F1714FF0C0C0CFA0000002D00000000000000000000
        00243D3937F88B817BFF675B53FF564941FF2F2B29FF323182FF1A1A6CFF2523
        21FF302520FF281E1BFF221A17FF0F0E0DFB0000003100000000000000000000
        001C363330E0847B75FF7E7269FF63554CFF5E5B5AFF615FA1FF35357DFF5654
        53FF3D302BFF312622FF261E1BFF100E0EE90000002700000000000000000000
        000F242120A3706864FF988C86FF7A6D65FFBBB9B9FF5E5CA0FF4C4C8CFFB7B6
        B6FF463A34FF3C302AFF302B28FF0B0B0AB40000001700000000000000000000
        00040505043144403CEC807772FF958B84FFF7F7F7FF2A2984FF232371FFF5F5
        F5FF5E544FFF564F4CFF1F1E1CF2020202430000000600000000000000000000
        0000000000070303032D312D2BC64A4543FF74849DFF436296FF3C588DFF6370
        8BFF353230FF1B1919D10201013F0000000B0000000100000000000000000000
        000000000000000000040000001E202E41A76484AFFF7FA3C6FF4B83B4FF224B
        87FF0B152BB50000002B00000007000000000000000000000000000000000000
        00000000000000000000000000112A4467CCB0C1D8FF96CCECFF70AFD6FF4377
        AAFF0A1F4ACD0000001B00000000000000000000000000000000000000000000
        000000000000000000000001021E1A2F51F9E8EDF4FFA7DDF6FF84C2E5FF6099
        C3FF102F6BF10000033300000000000000000000000000000000000000000000
        00000000000000000000030B19800A1938FEE4E9F0FFCAEBFBFF96D3F1FF689F
        C6FF14346EF1000213A100000000000000000000000000000000000000000000
        00000000000000000000061126AE1F395BFF212D49FF687387FF97B7CBFF7297
        BDFF071235EB000216B400000000000000000000000000000000000000000000
        00000000000000000000061122921F375AFF233E61FF0C2041FF071432FF2C3E
        62FE030927FF0103138800000000000000000000000000000000000000000000
        0000000000000000000002050A280F2444F7264165FF2A476BFF223D60FF0612
        2FFC020715810000020E00000000000000000000000000000000000000000000
        0000000000000000000000000000040A144F07152DC1071633F304102AD90105
        0F58000000010000000000000000000000000000000000000000}
      Properties.CharCase = ecUpperCase
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = ds_Client
      Style.BorderColor = 1184274
      Style.BorderStyle = ebsThick
      Style.Color = 6570553
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = False
      Style.ButtonStyle = btsUltraFlat
      Style.ButtonTransparency = ebtAlways
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      OnExit = ComputeAmntExecute
      Width = 239
    end
    object chk_posted: TcxDBCheckBox
      Left = 651
      Top = 86
      AutoSize = False
      Caption = 'Posted'
      DataBinding.DataField = 'POSTED'
      DataBinding.DataSource = ds_JO
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
      TabOrder = 7
      OnClick = chk_postedClick
      OnExit = ComputeAmntExecute
      Height = 25
      Width = 71
    end
  end
  object scGPPageControl1: TscGPPageControl
    Left = 0
    Top = 137
    Width = 837
    Height = 248
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
        Caption = 'Order Details'
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
        Page = scGPPageControlPage2
        Visible = True
        Enabled = True
        ImageIndex = -1
        Caption = 'Workers Assignment'
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
        Page = scGPPageControlPage3
        Visible = True
        Enabled = True
        ImageIndex = -1
        Caption = 'Cost Estimate'
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
    ActivePage = scGPPageControlPage3
    StorePaintBuffer = False
    FreeOnClose = False
    OnChangePage = ComputeAmntExecute
    object scGPPageControlPage2: TscGPPageControlPage
      Left = 0
      Top = 30
      Width = 837
      Height = 218
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
      TabOrder = 1
      Visible = False
      WallpaperIndex = -1
      CustomBackgroundImageIndex = -1
      FluentUIOpaque = False
      StorePaintBuffer = False
      BGStyle = scgppsForm
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 837
        Height = 218
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
        OnExit = ComputeAmntExecute
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'VisualStudio2013Light'
        object cxGridDBTableView2: TcxGridDBTableView
          PopupMenu = PopupMenu1
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = ds_Emp
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '###,###,##0'
              Kind = skCount
              FieldName = 'ROLEID'
              Column = cxGridDBTableView2ROLEID
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Appending = True
          OptionsData.Inserting = False
          OptionsView.NoDataToDisplayInfoText = 'No Data To Display'
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          Styles.Header = Header_style
          object cxGridDBTableView2ROLEID: TcxGridDBColumn
            Caption = 'ROLE'
            DataBinding.FieldName = 'ROLEID'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.CharCase = ecUpperCase
            Properties.ImmediatePost = True
            Properties.KeyFieldNames = 'ID'
            Properties.ListColumns = <
              item
                FieldName = 'TITLE'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = ds_roles
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Options.Sorting = False
            Width = 194
          end
          object cxGridDBTableView2EMPID: TcxGridDBColumn
            Caption = 'ASSIGNED TO'
            DataBinding.FieldName = 'EMPID'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.ImmediatePost = True
            Properties.KeyFieldNames = 'ID'
            Properties.ListColumns = <
              item
                FieldName = 'EMPNAME'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = ds_workers
            Properties.OnCloseUp = cxGridDBTableView2EMPIDPropertiesCloseUp
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Options.Sorting = False
            Width = 206
          end
        end
        object cxGridLevel2: TcxGridLevel
          GridView = cxGridDBTableView2
        end
      end
    end
    object scGPPageControlPage1: TscGPPageControlPage
      Left = 0
      Top = 30
      Width = 837
      Height = 218
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
      Visible = False
      WallpaperIndex = -1
      CustomBackgroundImageIndex = -1
      FluentUIOpaque = False
      StorePaintBuffer = False
      BGStyle = scgppsForm
      object grid_jodetail: TcxGrid
        Left = 0
        Top = 0
        Width = 837
        Height = 218
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
        OnExit = ComputeAmntExecute
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'VisualStudio2013Light'
        object cxGridDBTableView1: TcxGridDBTableView
          PopupMenu = PopupMenu1
          OnKeyDown = cxGridDBTableView1KeyDown
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = ds_JODetail
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '###,###,##0'
              Kind = skCount
              FieldName = 'SHIRTID'
              Column = cxGridDBTableView1SHIRTID
            end
            item
              Format = '###,###,##0'
              Kind = skSum
              FieldName = 'QTY'
              Column = cxGridDBTableView1QTY
            end
            item
              Format = '###,###,##0'
              Kind = skSum
              FieldName = 'FREE'
              Column = cxGridDBTableView1FREE
            end
            item
              Format = '###,###,##0.00'
              Kind = skSum
              FieldName = 'TOTALCOST'
              Column = cxGridDBTableView1TOTALCOST
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Appending = True
          OptionsView.NoDataToDisplayInfoText = 'No Data To Display'
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          object cxGridDBTableView1SHIRTID: TcxGridDBColumn
            Caption = 'DESCRIPTION'
            DataBinding.FieldName = 'SHIRTID'
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
            Width = 169
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
            Width = 148
          end
          object cxGridDBTableView1QTY: TcxGridDBColumn
            DataBinding.FieldName = 'QTY'
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Options.Sorting = False
            Styles.Header = Header_style
            Width = 33
          end
          object cxGridDBTableView1FREE: TcxGridDBColumn
            DataBinding.FieldName = 'FREE'
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Options.Sorting = False
            Styles.Header = Header_style
            Width = 36
          end
          object cxGridDBTableView1UNIT: TcxGridDBColumn
            DataBinding.FieldName = 'UNIT'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Styles.Header = Header_style
            Width = 67
          end
          object cxGridDBTableView1COST: TcxGridDBColumn
            Caption = 'PRICE'
            DataBinding.FieldName = 'COST'
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Options.Sorting = False
            Styles.Header = Header_style
            Width = 55
          end
          object cxGridDBTableView1TOTALCOST: TcxGridDBColumn
            Caption = 'AMOUNT'
            DataBinding.FieldName = 'TOTALCOST'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Styles.Header = Header_style
            Width = 88
          end
          object cxGridDBTableView1REMARKS: TcxGridDBColumn
            DataBinding.FieldName = 'REMARKS'
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Options.Sorting = False
            Styles.Header = Header_style
            Width = 115
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
    end
    object scGPPageControlPage3: TscGPPageControlPage
      Left = 0
      Top = 30
      Width = 837
      Height = 218
      HorzScrollBar.Tracking = True
      VertScrollBar.Tracking = True
      BorderStyle = bsNone
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 2
      WallpaperIndex = -1
      CustomBackgroundImageIndex = -1
      FluentUIOpaque = False
      StorePaintBuffer = False
      BGStyle = scgppsForm
      object cxGrid2: TcxGrid
        Left = 0
        Top = 0
        Width = 837
        Height = 218
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
        OnExit = cxGrid2Exit
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'VisualStudio2013Light'
        object cxGridDBTableView3: TcxGridDBTableView
          PopupMenu = PopupMenu2
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = ds_details
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '###,###,##0'
              Kind = skCount
              FieldName = 'ITEMID'
              Column = cxGridDBTableView1ITEMID
            end
            item
              Format = '###,###,##0.00'
              Kind = skSum
              FieldName = 'TOTALCOST'
              Column = cxGridDBColumn4
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Appending = True
          OptionsView.NoDataToDisplayInfoText = 'No Data To Display'
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          object cxGridDBTableView1ITEMID: TcxGridDBColumn
            Caption = 'ITEM DESCRIPTION'
            DataBinding.FieldName = 'ITEMID'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.CharCase = ecUpperCase
            Properties.DropDownWidth = 360
            Properties.ImmediatePost = True
            Properties.KeyFieldNames = 'ID'
            Properties.ListColumns = <
              item
                Caption = 'CODE'
                HeaderAlignment = taCenter
                Width = 80
                FieldName = 'CODE'
              end
              item
                HeaderAlignment = taCenter
                Width = 200
                FieldName = 'DESCRIPTION'
              end
              item
                Caption = 'ONHAND'
                HeaderAlignment = taCenter
                Width = 80
                FieldName = 'ONHAND'
              end>
            Properties.ListFieldIndex = 1
            Properties.ListSource = ds_items
            Properties.OnCloseUp = cxGridDBTableView1ITEMIDPropertiesCloseUp
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Options.Sorting = False
            Styles.Header = Header_style
            Width = 197
          end
          object cxGridDBColumn1: TcxGridDBColumn
            DataBinding.FieldName = 'QTY'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.ValidateOnEnter = True
            Properties.OnValidate = cxGridDBColumn1PropertiesValidate
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Options.Sorting = False
            Styles.Header = Header_style
            Width = 66
          end
          object cxGridDBColumn2: TcxGridDBColumn
            DataBinding.FieldName = 'UNIT'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Styles.Header = Header_style
            Width = 78
          end
          object cxGridDBColumn3: TcxGridDBColumn
            DataBinding.FieldName = 'COST'
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Options.Sorting = False
            Styles.Header = Header_style
            Width = 102
          end
          object cxGridDBColumn4: TcxGridDBColumn
            Caption = 'TOTAL COST'
            DataBinding.FieldName = 'TOTALCOST'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Styles.Header = Header_style
            Width = 102
          end
        end
        object cxGridLevel3: TcxGridLevel
          GridView = cxGridDBTableView3
        end
      end
    end
  end
  object ds_JO: TDataSource
    DataSet = dm_PM.qry_JO
    Left = 224
    Top = 192
  end
  object ds_Client: TDataSource
    DataSet = dm_PM.brw_Client
    Left = 264
    Top = 192
  end
  object ds_JODetail: TDataSource
    DataSet = dm_PM.tb_JODetail
    Left = 304
    Top = 192
  end
  object ds_garment: TDataSource
    DataSet = dm_PM.brw_Garments
    Left = 344
    Top = 192
  end
  object ds_farbric: TDataSource
    DataSet = dm_PM.brw_Fabrics
    Left = 392
    Top = 192
  end
  object ActionList1: TActionList
    Left = 440
    Top = 192
    object Cancel: TAction
      Caption = '&Cancel'
      OnExecute = CancelExecute
    end
    object ComputeAmnt: TAction
      Caption = 'ComputeAmnt'
      OnExecute = ComputeAmntExecute
    end
    object Print: TAction
      Caption = 'Print'
      OnExecute = PrintExecute
    end
    object Delete: TAction
      Caption = 'Delete'
      OnExecute = DeleteExecute
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
      Font.Height = -12
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
  object PopupMenu1: TPopupMenu
    Left = 552
    Top = 192
    object Delete1: TMenuItem
      Action = Delete
    end
  end
  object ds_Emp: TDataSource
    DataSet = dm_PM.tb_JOEmp
    Left = 592
    Top = 191
  end
  object ds_roles: TDataSource
    DataSet = dm_PM.brw_EmpRoles
    Left = 632
    Top = 191
  end
  object ds_workers: TDataSource
    DataSet = dm_PM.brw_Emp
    Left = 672
    Top = 191
  end
  object ds_items: TDataSource
    DataSet = dm_PM.brw_items
    Left = 104
    Top = 192
  end
  object ds_details: TDataSource
    DataSet = dm_PM.tb_InvReqDetail
    Left = 64
    Top = 192
  end
  object ActionList2: TActionList
    Left = 64
    Top = 240
    object DeleteCost: TAction
      Caption = 'Delete'
      OnExecute = DeleteCostExecute
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 184
    Top = 240
    object MenuItem1: TMenuItem
      Action = DeleteCost
    end
  end
end