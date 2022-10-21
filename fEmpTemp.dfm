object f_EmpTemp: Tf_EmpTemp
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Employee Details'
  ClientHeight = 343
  ClientWidth = 406
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
    Top = 306
    Width = 406
    Height = 37
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      406
      37)
    object btnSave: TButton
      Left = 221
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
      Left = 308
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
  object scGPPageControl1: TscGPPageControl
    Left = 0
    Top = 0
    Width = 406
    Height = 306
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
        Page = scGPPageControlPage1
        Visible = True
        Enabled = True
        ImageIndex = -1
        Caption = 'Employee Details'
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
        Caption = 'Payroll Terms'
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
    TabIndex = 1
    ActivePage = scGPPageControlPage2
    StorePaintBuffer = False
    FreeOnClose = False
    OnChangePage = scGPPageControl1ChangePage
    object scGPPageControlPage1: TscGPPageControlPage
      Left = 0
      Top = 30
      Width = 406
      Height = 276
      HorzScrollBar.Tracking = True
      VertScrollBar.Tracking = True
      BorderStyle = bsNone
      Color = 6570553
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 0
      Visible = False
      StyleElements = []
      WallpaperIndex = -1
      CustomBackgroundImageIndex = -1
      FluentUIOpaque = False
      StorePaintBuffer = False
      BGStyle = scgppsForm
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 406
        Height = 276
        Align = alClient
        BevelOuter = bvNone
        Color = clTeal
        ParentBackground = False
        TabOrder = 0
        StyleElements = []
        object Label3: TLabel
          Left = 13
          Top = 71
          Width = 64
          Height = 17
          Caption = 'Last Name'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 13
          Top = 97
          Width = 66
          Height = 17
          Caption = 'First Name'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 13
          Top = 125
          Width = 81
          Height = 17
          Caption = 'Middle Name'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label1: TLabel
          Left = 13
          Top = 21
          Width = 39
          Height = 17
          Caption = 'ID NO.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 210
          Top = 20
          Width = 26
          Height = 17
          Caption = 'Role'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 13
          Top = 46
          Width = 27
          Height = 17
          Caption = 'User'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 13
          Top = 152
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
        object Label8: TLabel
          Left = 13
          Top = 179
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
        object Label9: TLabel
          Left = 13
          Top = 204
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
        object txt_lastname: TcxDBTextEdit
          Left = 102
          Top = 69
          DataBinding.DataField = 'LASTNAME'
          DataBinding.DataSource = ds_Emp
          ParentFont = False
          ParentShowHint = False
          Properties.CharCase = ecUpperCase
          ShowHint = False
          Style.BorderColor = 1184274
          Style.BorderStyle = ebsThick
          Style.Color = 6570553
          Style.Font.Charset = ANSI_CHARSET
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
          OnExit = UIExecute
          Width = 281
        end
        object txt_firstname: TcxDBTextEdit
          Left = 102
          Top = 96
          DataBinding.DataField = 'FIRSTNAME'
          DataBinding.DataSource = ds_Emp
          ParentFont = False
          ParentShowHint = False
          Properties.CharCase = ecUpperCase
          ShowHint = False
          Style.BorderColor = 1184274
          Style.BorderStyle = ebsThick
          Style.Color = 6570553
          Style.Font.Charset = ANSI_CHARSET
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
          OnExit = UIExecute
          Width = 281
        end
        object txt_middlename: TcxDBTextEdit
          Left = 102
          Top = 123
          DataBinding.DataField = 'MIDDLENAME'
          DataBinding.DataSource = ds_Emp
          ParentFont = False
          ParentShowHint = False
          Properties.CharCase = ecUpperCase
          ShowHint = False
          Style.BorderColor = 1184274
          Style.BorderStyle = ebsThick
          Style.Color = 6570553
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWhite
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = False
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 5
          OnExit = UIExecute
          Width = 281
        end
        object cxDBTextEdit3: TcxDBTextEdit
          Left = 102
          Top = 19
          DataBinding.DataField = 'IDNO'
          DataBinding.DataSource = ds_Emp
          ParentFont = False
          ParentShowHint = False
          Properties.CharCase = ecUpperCase
          Properties.OnValidate = cxDBTextEdit3PropertiesValidate
          ShowHint = False
          Style.BorderColor = 1184274
          Style.BorderStyle = ebsThick
          Style.Color = 6570553
          Style.Font.Charset = ANSI_CHARSET
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
          OnExit = UIExecute
          Width = 97
        end
        object cmb_role: TcxDBLookupComboBox
          Left = 242
          Top = 18
          DataBinding.DataField = 'ROLEID'
          DataBinding.DataSource = ds_Emp
          ParentFont = False
          Properties.ButtonGlyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000040000
            00140000002000000024000000250000002700000028000000290000002B0000
            002C0000002D0000002E0000002F0000002D0000001E00000007000000117D5E
            48CCAD7F61FFAB7D5EFFA97A5BFFA87759FFA67656FFA47353FFA37051FFA16E
            4FFFA06D4DFF9E6B4BFF9E6A4AFF9D6848FF704A33D80000001E00000018B184
            66FFFDF9F7FFFBF8F5FFFBF7F4FFFAF6F2FFFAF5F1FFFAF3EFFFF9F2EEFFF8F2
            ECFFF8F0EBFFF7EFE9FFF7EEE7FFF7EDE6FF9D6948FF0000002D00000017B287
            69FFFCFAF7FF8D6D66FF62372FFF62372FFF62372FFF8C6C65FFFAF3EFFFF9F2
            EDFFF8F1ECFFF7F0EAFFF8EFE8FFF7EEE7FF9D6A4AFF0000002E00000014B48A
            6BFFFDFBF8FF8D6D67FF73473EFFC29284FF73473EFF8C6C65FFFAF4F0FFB895
            79FFB59072FFB38D6EFFF8F0EAFFF7EFE8FF9F6B4BFF0000002C00000012B58C
            6EFFFDFBFAFFD1C3BFFFBDA59EFFE5D2CBFFBDA49EFFD0C0BBFFFAF5F1FFFAF4
            F0FFF9F3EFFFF8F2ECFFF8F0EBFFF7EFEAFFA06D4DFF0000002A0000000FB78E
            71FFFEFCFBFFFDFBF9FFBDD0E1FF6A91B9FFB7C5D5FFFBF8F4FFFAF6F3FFC1A0
            86FFBD9C7FFFBA977AFFB59274FFF8F1EBFFA16F4FFF000000280000000DB991
            74FFFEFCFBFF99ACC1FF33618FFF5891C0FF7397BBFFF9F6F4FFFBF7F4FFFBF6
            F2FFFAF4F1FFF9F4EFFFF9F2EDFFF8F2ECFFA37151FF000000260000000ABA93
            75FFFEFCFBFF92A6BDFF466B93FF38608BFF225080FFFCF9F6FFFCF8F5FFC7AB
            93FFC5A78EFFC2A388FFBF9D82FFF8F2EDFFA47354FF0000002400000008BC96
            78FFFEFDFCFFD8DEE5FF587DA3FF1E4C7EFF7193B3FFFDF9F7FFFCF8F6FFFBF7
            F4FFFBF6F3FFFAF6F1FFFAF4F0FFFAF3EFFFA67557FF0000002200000005BD97
            7AFFFEFDFCFFFEFDFCFFFEFDFBFFFEFCFBFFFDFBF9FFFCFAF8FFFCF9F7FFFCF8
            F5FFFBF7F4FFFBF6F3FFFAF5F1FFF9F4EFFFA77859FF0000001E000000028D72
            5CC0BD977AFFBC9578FFBA9475FFB99173FFB78F70FFB68C6FFFB48A6BFFB288
            69FFB08466FFAE8264FFAD8061FFAB7D5EFF7D5A44CE00000012000000000000
            0002000000040000000600000007000000090000000B0000000C0000000E0000
            0010000000110000001300000015000000160000001000000004000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          Properties.CharCase = ecUpperCase
          Properties.GridMode = True
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'TITLE'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = ds_roles
          Style.BorderColor = 1184274
          Style.BorderStyle = ebsThick
          Style.Color = 6570553
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWhite
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.LookAndFeel.Kind = lfUltraFlat
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'DevExpressDarkStyle'
          Style.ButtonStyle = btsUltraFlat
          Style.ButtonTransparency = ebtAlways
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.Kind = lfUltraFlat
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'DevExpressDarkStyle'
          StyleFocused.LookAndFeel.Kind = lfUltraFlat
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'DevExpressDarkStyle'
          StyleHot.LookAndFeel.Kind = lfUltraFlat
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'DevExpressDarkStyle'
          TabOrder = 1
          OnExit = UIExecute
          Width = 140
        end
        object cxDBLookupComboBox1: TcxDBLookupComboBox
          Left = 102
          Top = 44
          DataBinding.DataField = 'USERID'
          DataBinding.DataSource = ds_Emp
          ParentFont = False
          Properties.ButtonGlyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000000000
            0004000000150000002B00000033000000330000003400000035000000350000
            0036000000360000003600000030000000180000000500000000000000000000
            00143D322A9B947C67FF8F7763FF89715FFF826C59FF7A6553FF735E4CFF6A55
            44FF624E3DFF5A4636FF533F2FFF1E1610A40000001800000000000000000000
            0024927B67F8F4F3F1FFCEB1A4FFC7A694FFD0CAC1FFBD9885FFB88E78FFB8B0
            A4FFB0856FFFAE7D64FF9F9686FF4C3A2BFA0000002D00000000000000000000
            0024937C67F8F5F3F2FFD3B9ABFFCAAB9CFFD6D0C9FFC09E8BFFBC9581FFBFB7
            ACFFB38A74FFB0836DFFA49C8CFF513E30FB0000003100000000000000000000
            001C7B6856E0E7E0DBFFE9DFDAFFDBCDC5FFDCD7D1FFCFC0B5FFC8B8ACFFC6C0
            B4FFBCA899FFB5A190FF9E9384FF49392DE90000002700000000000000000000
            000F4C4035A3CABDB1FFFBFAF9FFEEEAE7FFC3BCB4FF8D8176FF7D6F62FFA399
            8EFFC5BEB4FFBEB6AAFF988C7FFF2F261FB40000001700000000000000000000
            00040A0807318D7867ECDBD1CBFFFBFBFAFFA0988EFF8DB2C7FF6184A7FF7161
            54FFDED9D4FFC4BCB5FF68594CF2070604430000000600000000000000000000
            0000000000070706052D665647C6AB9787FF687487FF335990FF2B4E87FF4449
            5DFF99887CFF52453BD10504043F0000000B0000000100000000000000000000
            000000000000000000040000001E2B3647A76484AFFF7FA3C6FF4B83B4FF234B
            88FF151D32B50000002B00000007000000000000000000000000000000000000
            00000000000000000000000000112A466ECCB0C1D8FF96CCECFF70AFD6FF4377
            AAFF0A1F4ACD0000001B00000000000000000000000000000000000000000000
            000000000000000000000001041E1A346EF9E8EDF4FFA7DDF6FF84C2E5FF6099
            C3FF102F6BF10003073300000000000000000000000000000000000000000000
            00000000000000000000020D2E800B2162FEE4E9F1FFCAEBFBFF96D3F1FF689F
            C6FF14356FF102122CA100000000000000000000000000000000000000000000
            00000000000000000000031444AE486C9EFF203570FF69789FFF97B9D4FF7298
            BEFF0B2552EB041634B400000000000000000000000000000000000000000000
            0000000000000000000003123B92446699FF5A82B0FF355990FF152D68FF2E49
            7BFE072352FF0312298800000000000000000000000000000000000000000000
            0000000000000000000001051128173273F7597EACFF648DB8FF4E76A5FF0B20
            59FC041128810002040E00000000000000000000000000000000000000000000
            0000000000000000000000000000020A214F04164CC1041A5BF303144DD90107
            1C58000000010000000000000000000000000000000000000000}
          Properties.CharCase = ecUpperCase
          Properties.DropDownWidth = 200
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'FULLNAME'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = ds_users
          Properties.OnCloseUp = cxDBLookupComboBox1PropertiesCloseUp
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
          TabOrder = 2
          OnExit = UIExecute
          Width = 281
        end
        object cxDBTextEdit4: TcxDBTextEdit
          Left = 102
          Top = 150
          DataBinding.DataField = 'CONTACTNO'
          DataBinding.DataSource = ds_Emp
          ParentFont = False
          ParentShowHint = False
          Properties.CharCase = ecUpperCase
          ShowHint = False
          Style.BorderColor = 1184274
          Style.BorderStyle = ebsThick
          Style.Color = 6570553
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWhite
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = False
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 6
          OnExit = UIExecute
          Width = 281
        end
        object cxDBTextEdit5: TcxDBTextEdit
          Left = 102
          Top = 177
          DataBinding.DataField = 'EMAIL'
          DataBinding.DataSource = ds_Emp
          ParentFont = False
          ParentShowHint = False
          Properties.CharCase = ecUpperCase
          ShowHint = False
          Style.BorderColor = 1184274
          Style.BorderStyle = ebsThick
          Style.Color = 6570553
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWhite
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = False
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 7
          OnExit = UIExecute
          Width = 281
        end
        object cxDBMemo1: TcxDBMemo
          Left = 102
          Top = 204
          DataBinding.DataField = 'ADDRESS'
          DataBinding.DataSource = ds_Emp
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
          TabOrder = 8
          OnExit = UIExecute
          Height = 48
          Width = 281
        end
      end
    end
    object scGPPageControlPage2: TscGPPageControlPage
      Left = 0
      Top = 30
      Width = 406
      Height = 276
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
      WallpaperIndex = -1
      CustomBackgroundImageIndex = -1
      FluentUIOpaque = False
      StorePaintBuffer = False
      BGStyle = scgppsForm
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 406
        Height = 276
        Align = alClient
        BevelOuter = bvNone
        Color = clTeal
        ParentBackground = False
        TabOrder = 0
        StyleElements = []
        object Label10: TLabel
          Left = 126
          Top = 77
          Width = 95
          Height = 17
          Caption = 'Salary Schedule'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label13: TLabel
          Left = 14
          Top = 19
          Width = 143
          Height = 17
          Caption = 'Mode of Compensation'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label15: TLabel
          Left = 14
          Top = 77
          Width = 27
          Height = 17
          Caption = 'Rate'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object rad_source: TcxDBRadioGroup
          Left = 14
          Top = 42
          Alignment = alCenterCenter
          Caption = 'SOURCE'
          DataBinding.DataField = 'MODEOFCOMP'
          DataBinding.DataSource = ds_Emp
          ParentBackground = False
          ParentColor = False
          ParentFont = False
          Properties.Columns = 3
          Properties.DefaultValue = 'O'
          Properties.ImmediatePost = True
          Properties.Items = <
            item
              Caption = 'FIXED'
              Value = 'F'
            end
            item
              Caption = 'DAILY'
              Value = 'D'
            end
            item
              Caption = 'PER PIECE'
              Value = 'P'
            end>
          Properties.WordWrap = True
          Properties.OnChange = rad_sourcePropertiesChange
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
          TabOrder = 0
          OnExit = UIExecute
          Height = 29
          Width = 281
        end
        object txt_rate: TcxDBTextEdit
          Left = 14
          Top = 98
          DataBinding.DataField = 'RATE'
          DataBinding.DataSource = ds_Emp
          ParentFont = False
          ParentShowHint = False
          Properties.CharCase = ecUpperCase
          ShowHint = False
          Style.BorderColor = 1184274
          Style.BorderStyle = ebsThick
          Style.Color = 6570553
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWhite
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = False
          Style.IsFontAssigned = True
          StyleDisabled.Color = 6570553
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 1
          OnExit = UIExecute
          Width = 91
        end
        object cxGroupBox1: TcxGroupBox
          Left = 14
          Top = 125
          Alignment = alTopCenter
          Caption = 'BENEFITS'
          ParentBackground = False
          ParentColor = False
          ParentFont = False
          Style.BorderColor = clWhite
          Style.BorderStyle = ebsThick
          Style.Color = 6570553
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWhite
          Style.Font.Height = -13
          Style.Font.Name = 'Segoe UI Semibold'
          Style.Font.Style = [fsBold]
          Style.LookAndFeel.Kind = lfUltraFlat
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = ''
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
          Transparent = True
          Height = 105
          Width = 281
          object Label12: TLabel
            Left = 69
            Top = 25
            Width = 21
            Height = 17
            Caption = 'SSS'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label14: TLabel
            Left = 40
            Top = 51
            Width = 50
            Height = 17
            Caption = 'PAGIBIG'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label16: TLabel
            Left = 14
            Top = 75
            Width = 76
            Height = 17
            Caption = 'PHILHEALTH'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object txt_phic: TcxDBTextEdit
            Left = 112
            Top = 75
            DataBinding.DataField = 'PHILHEALTH'
            DataBinding.DataSource = ds_Emp
            ParentFont = False
            ParentShowHint = False
            Properties.CharCase = ecUpperCase
            ShowHint = False
            Style.BorderColor = 1184274
            Style.BorderStyle = ebsThick
            Style.Color = 6570553
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWhite
            Style.Font.Height = -12
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = False
            Style.IsFontAssigned = True
            StyleDisabled.Color = 6570553
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 2
            OnExit = UIExecute
            Width = 150
          end
          object txt_pagibig: TcxDBTextEdit
            Left = 112
            Top = 48
            DataBinding.DataField = 'PAGIBIG'
            DataBinding.DataSource = ds_Emp
            ParentFont = False
            ParentShowHint = False
            Properties.CharCase = ecUpperCase
            ShowHint = False
            Style.BorderColor = 1184274
            Style.BorderStyle = ebsThick
            Style.Color = 6570553
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWhite
            Style.Font.Height = -12
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = False
            Style.IsFontAssigned = True
            StyleDisabled.Color = 6570553
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 1
            OnExit = UIExecute
            Width = 150
          end
          object txt_sss: TcxDBTextEdit
            Left = 112
            Top = 21
            DataBinding.DataField = 'SSS'
            DataBinding.DataSource = ds_Emp
            ParentFont = False
            ParentShowHint = False
            Properties.CharCase = ecUpperCase
            ShowHint = False
            Style.BorderColor = 1184274
            Style.BorderStyle = ebsThick
            Style.Color = 6570553
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWhite
            Style.Font.Height = -12
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = False
            Style.IsFontAssigned = True
            StyleDisabled.Color = 6570553
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 0
            OnExit = UIExecute
            Width = 150
          end
        end
        object cmb_freq: TcxDBComboBox
          Left = 128
          Top = 98
          DataBinding.DataField = 'FREQUENCY'
          DataBinding.DataSource = ds_Emp
          Properties.CharCase = ecUpperCase
          Properties.ImmediatePost = True
          Properties.Items.Strings = (
            'MONTHLY'
            'TWICE A MONTH'
            'WEEKLY')
          Style.BorderColor = 1184274
          Style.BorderStyle = ebsThick
          Style.Color = 6570553
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'DevExpressDarkStyle'
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'DevExpressDarkStyle'
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'DevExpressDarkStyle'
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'DevExpressDarkStyle'
          TabOrder = 2
          OnExit = UIExecute
          Width = 167
        end
      end
    end
  end
  object ds_Emp: TDataSource
    DataSet = dm_PM.qry_EmpReg
    Left = 72
    Top = 286
  end
  object ds_roles: TDataSource
    DataSet = dm_PM.brw_roles
    Left = 120
    Top = 288
  end
  object ds_users: TDataSource
    DataSet = dm_PM.brw_Users
    Left = 160
    Top = 288
  end
  object ActionList1: TActionList
    Left = 32
    Top = 286
    object UI: TAction
      Caption = 'UI'
      OnExecute = UIExecute
    end
  end
end
