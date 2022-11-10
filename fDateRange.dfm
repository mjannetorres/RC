object f_DateRange: Tf_DateRange
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Reports Date Range'
  ClientHeight = 128
  ClientWidth = 313
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
  object Panel1: TPanel
    Left = 0
    Top = 91
    Width = 313
    Height = 37
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 303
    DesignSize = (
      313
      37)
    object Button1: TButton
      Left = 126
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'OK'
      Default = True
      ModalResult = 1
      TabOrder = 0
      ExplicitLeft = 116
    end
    object Button2: TButton
      Left = 213
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 1
      ExplicitLeft = 203
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 313
    Height = 91
    Align = alClient
    BevelOuter = bvNone
    Color = clTeal
    Padding.Left = 10
    Padding.Top = 10
    Padding.Right = 10
    Padding.Bottom = 10
    ParentBackground = False
    TabOrder = 1
    StyleElements = []
    ExplicitWidth = 303
    object lbl_date_from: TLabel
      Left = 13
      Top = 22
      Width = 71
      Height = 17
      Caption = 'Date From :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl_date_to: TLabel
      Left = 13
      Top = 47
      Width = 69
      Height = 17
      Caption = 'Date To     :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object date_1: TcxDateEdit
      Left = 116
      Top = 19
      ParentFont = False
      Properties.ImmediatePost = True
      Properties.SaveTime = False
      Properties.ShowTime = False
      Properties.ShowToday = False
      Style.BorderColor = 1184274
      Style.BorderStyle = ebsThick
      Style.Color = 6570553
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = False
      Style.ButtonStyle = btsOffice11
      Style.ButtonTransparency = ebtAlways
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      Width = 172
    end
    object date_2: TcxDateEdit
      Left = 116
      Top = 47
      ParentFont = False
      Properties.ImmediatePost = True
      Properties.SaveTime = False
      Properties.ShowTime = False
      Properties.ShowToday = False
      Style.BorderColor = 1184274
      Style.BorderStyle = ebsThick
      Style.Color = 6570553
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = False
      Style.ButtonStyle = btsOffice11
      Style.ButtonTransparency = ebtAlways
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 1
      Width = 172
    end
  end
end
