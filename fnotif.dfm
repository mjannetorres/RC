object f_notif: Tf_notif
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Notification Settings'
  ClientHeight = 193
  ClientWidth = 259
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
    Top = 156
    Width = 259
    Height = 37
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitTop = 170
    ExplicitWidth = 457
    DesignSize = (
      259
      37)
    object Button1: TButton
      Left = 91
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'OK'
      Default = True
      ModalResult = 1
      TabOrder = 0
      ExplicitLeft = 289
    end
    object Button2: TButton
      Left = 178
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 1
      ExplicitLeft = 376
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 259
    Height = 156
    Align = alClient
    BevelOuter = bvNone
    Color = clTeal
    Padding.Left = 10
    Padding.Right = 10
    ParentBackground = False
    TabOrder = 1
    StyleElements = []
    ExplicitTop = -6
    object Label1: TLabel
      Left = 13
      Top = 43
      Width = 91
      Height = 17
      Caption = 'Interval (mins.)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object chk_posted: TcxDBCheckBox
      Left = 10
      Top = 14
      AutoSize = False
      Caption = 'Enabled'
      DataBinding.DataField = 'ENABLED'
      DataBinding.DataSource = ds_notif
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
      TabOrder = 0
      OnClick = chk_postedClick
      Height = 25
      Width = 71
    end
    object cxDBSpinEdit1: TcxDBSpinEdit
      Left = 120
      Top = 41
      DataBinding.DataField = 'INTERVAL'
      DataBinding.DataSource = ds_notif
      ParentFont = False
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
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 1
      Width = 81
    end
  end
  object ds_notif: TDataSource
    DataSet = dm_PM.qry_Notif
    Left = 16
    Top = 72
  end
end
