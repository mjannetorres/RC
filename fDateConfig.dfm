object f_DateConfig: Tf_DateConfig
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Date Configuration'
  ClientHeight = 142
  ClientWidth = 217
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 105
    Width = 217
    Height = 37
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitTop = 182
    ExplicitWidth = 376
    DesignSize = (
      217
      37)
    object Button3: TButton
      Left = 116
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'OK'
      Default = True
      ModalResult = 1
      TabOrder = 0
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 217
    Height = 49
    Align = alTop
    BevelOuter = bvNone
    Color = clTeal
    Padding.Left = 10
    ParentBackground = False
    TabOrder = 1
    ExplicitWidth = 376
    object Label3: TLabel
      Left = 10
      Top = 0
      Width = 165
      Height = 49
      Align = alLeft
      Caption = 'Enter Date of Transaction :'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Layout = tlCenter
      StyleElements = []
      ExplicitHeight = 17
    end
  end
  object pan_name: TPanel
    Left = 0
    Top = 49
    Width = 217
    Height = 56
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    Padding.Left = 10
    Padding.Top = 10
    Padding.Right = 10
    Padding.Bottom = 10
    ParentBackground = False
    TabOrder = 2
    StyleElements = []
    ExplicitWidth = 376
    ExplicitHeight = 133
    object date_posted: TcxDBDateEdit
      Left = 10
      Top = 14
      DataBinding.DataField = 'DATE'
      DataBinding.DataSource = ds_config
      ParentFont = False
      Properties.DisplayFormat = 'mm/dd/yyyy'
      Properties.EditFormat = 'mm/dd/yyyy'
      Properties.ReadOnly = False
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
      TabOrder = 0
      Width = 181
    end
  end
  object ds_config: TDataSource
    DataSet = dm_PM.qry_dateconfig
    Left = 176
    Top = 25
  end
end
