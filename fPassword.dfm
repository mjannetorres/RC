object f_Password: Tf_Password
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Enter Password'
  ClientHeight = 110
  ClientWidth = 310
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  StyleElements = []
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 73
    Width = 310
    Height = 37
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitTop = 69
    DesignSize = (
      310
      37)
    object Button1: TButton
      Left = 142
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
      Left = 229
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
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 310
    Height = 73
    Align = alClient
    BevelOuter = bvNone
    Color = clTeal
    ParentBackground = False
    TabOrder = 1
    ExplicitLeft = 184
    ExplicitTop = 16
    ExplicitWidth = 185
    ExplicitHeight = 41
    object scGPCharImage1: TscGPCharImage
      Left = 35
      Top = 22
      Width = 33
      Height = 27
      FluentUIOpaque = False
      TabOrder = 0
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
      Caption = 'scGPCharImage1'
      StorePaintBuffer = False
      DrawTextMode = scdtmGDI
      ImageColor = clWhite
      ImageColorAlpha = 255
      ImageSize = 0
      ImageIndex = 35
      Frame = scgpcfNone
      FrameRadius = 10
      FrameFillColor = clWindow
      FrameFillColorAlpha = 255
      FrameColor = clBtnFace
      FrameWidth = 2
      RotationAngle = 0
      AnimationAcceleration = False
      RotateAnimation = False
    end
    object txt_Password: TcxTextEdit
      Left = 74
      Top = 21
      ParentFont = False
      Properties.EchoMode = eemPassword
      Style.BorderColor = 1184274
      Style.BorderStyle = ebsThick
      Style.Color = 6570553
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -13
      Style.Font.Name = 'Segoe UI Semibold'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = False
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 1
      Text = 'cxTextEdit1'
      Width = 187
    end
  end
  object S: TsCharImageList
    EmbeddedFonts = <
      item
        FontName = 'FontAwesome'
        FontData = {}
      end>
    Items = <
      item
        Char = 61447
        Color = clWhite
      end
      item
        Char = 61475
        Color = clWhite
      end>
    Left = 256
    Top = 17
    Bitmap = {
      494C010100000800080001000100FFFFFFFF0400FFFFFFFFFFFFFFFF424D7600
      0000000000007600000028000000040000000100000001000400000000000400
      0000000000000000000000000000000000000000000000008000008000000080
      8000800000008000800080800000C0C0C000808080000000FF0000FF000000FF
      FF00FF000000FF00FF00FFFF0000FFFFFF0000000000}
  end
end
