object f_Login1: Tf_Login1
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Log Out User'
  ClientHeight = 180
  ClientWidth = 392
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object txt_username: TsEdit
    Left = 92
    Top = 25
    Width = 253
    Height = 25
    Color = 4469804
    Font.Charset = ANSI_CHARSET
    Font.Color = 16183278
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TextHint = 'Username'
    SkinData.SkinSection = 'BARTITLE'
  end
  object txt_pwd: TsEdit
    Left = 92
    Top = 72
    Width = 253
    Height = 25
    Color = 4469804
    Font.Charset = ANSI_CHARSET
    Font.Color = 16183278
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    PasswordChar = '*'
    TabOrder = 1
    TextHint = 'Password'
    SkinData.SkinSection = 'BARTITLE'
  end
  object sButton1: TsButton
    Left = 168
    Top = 115
    Width = 105
    Height = 41
    Caption = 'LOGIN'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = sButton1Click
    SkinData.CustomFont = True
    SkinData.SkinSection = 'BUTTON'
  end
  object cxLabel1: TcxLabel
    Left = 24
    Top = 30
    Caption = 'Username'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWhite
    Style.Font.Height = -12
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.LookAndFeel.NativeStyle = True
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    Transparent = True
  end
  object cxLabel2: TcxLabel
    Left = 26
    Top = 76
    Caption = 'Password'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWhite
    Style.Font.Height = -12
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.LookAndFeel.NativeStyle = True
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    Transparent = True
  end
end
