object f_JOStatus: Tf_JOStatus
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Status'
  ClientHeight = 284
  ClientWidth = 317
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
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 317
    Height = 227
    Align = alClient
    BevelOuter = bvNone
    Color = clTeal
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Padding.Left = 10
    Padding.Top = 5
    Padding.Right = 10
    Padding.Bottom = 5
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    StyleElements = [seFont, seBorder]
    ExplicitLeft = -968
    ExplicitWidth = 1370
    ExplicitHeight = 71
    object Label1: TLabel
      AlignWithMargins = True
      Left = 13
      Top = 8
      Width = 291
      Height = 25
      Align = alTop
      Caption = 'Set Status:'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Segoe UI Black'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Layout = tlCenter
      StyleElements = []
      ExplicitTop = 16
      ExplicitWidth = 100
    end
    object cxDBRadioGroup1: TcxDBRadioGroup
      Left = 10
      Top = 36
      Align = alClient
      DataBinding.DataField = 'STATUS'
      DataBinding.DataSource = ds_JO
      ParentFont = False
      Properties.Columns = 2
      Properties.Items = <
        item
          Caption = 'Pending'
          Value = 'A'
        end
        item
          Caption = 'Boxing'
          Value = 'B'
        end
        item
          Caption = 'Layout'
          Value = 'L'
        end
        item
          Caption = 'Printing'
          Value = 'P'
        end
        item
          Caption = 'Heat Press'
          Value = 'H'
        end
        item
          Caption = 'Cutting'
          Value = 'C'
        end
        item
          Caption = 'Sewing'
          Value = 'S'
        end
        item
          Caption = 'Closed'
          Value = 'Z'
        end>
      Properties.WordWrap = True
      Style.BorderStyle = ebsNone
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -15
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = True
      Style.LookAndFeel.SkinName = ''
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.SkinName = ''
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.SkinName = ''
      StyleHot.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.SkinName = ''
      TabOrder = 0
      ExplicitHeight = 165
      Height = 186
      Width = 297
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 227
    Width = 317
    Height = 57
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitLeft = -548
    ExplicitTop = 151
    ExplicitWidth = 855
    DesignSize = (
      317
      57)
    object btnSave: TButton
      Left = 149
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
      Left = 227
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
  end
  object ds_JO: TDataSource
    DataSet = dm_PM.qry_JO
    Left = 192
    Top = 32
  end
end
