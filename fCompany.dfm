object f_Company: Tf_Company
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Company Information'
  ClientHeight = 276
  ClientWidth = 621
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
  TextHeight = 14
  object Panel1: TPanel
    Left = 0
    Top = 239
    Width = 621
    Height = 37
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      621
      37)
    object Button1: TButton
      Left = 459
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
      Left = 540
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
    Width = 621
    Height = 239
    Align = alClient
    BevelOuter = bvNone
    Color = clTeal
    ParentBackground = False
    TabOrder = 1
    DesignSize = (
      621
      239)
    object Label3: TLabel
      Left = 13
      Top = 27
      Width = 58
      Height = 17
      Caption = 'Company'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 13
      Top = 105
      Width = 58
      Height = 17
      Caption = 'Address 1'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 13
      Top = 155
      Width = 60
      Height = 17
      Caption = 'Address 2'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 94
      Top = 142
      Width = 149
      Height = 15
      Caption = 'Bldng No. / Street, Barangay'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 94
      Top = 206
      Width = 122
      Height = 15
      Caption = 'City, Province, Zipcode'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 13
      Top = 55
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
    object Label7: TLabel
      Left = 13
      Top = 82
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
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 94
      Top = 25
      DataBinding.DataField = 'NAME'
      DataBinding.DataSource = ds_company
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
      TabOrder = 0
      Width = 281
    end
    object txt_notes: TcxDBMemo
      Left = 94
      Top = 105
      DataBinding.DataField = 'ADDRESS1'
      DataBinding.DataSource = ds_company
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
      Height = 37
      Width = 281
    end
    object cxDBMemo1: TcxDBMemo
      Left = 94
      Top = 160
      DataBinding.DataField = 'ADDRESS2'
      DataBinding.DataSource = ds_company
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
      TabOrder = 2
      Height = 45
      Width = 281
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 94
      Top = 52
      DataBinding.DataField = 'CONTACTNO'
      DataBinding.DataSource = ds_company
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
      TabOrder = 3
      Width = 281
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 94
      Top = 79
      DataBinding.DataField = 'EMAIL'
      DataBinding.DataSource = ds_company
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
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 4
      Width = 281
    end
    object btnUpload: TButton
      Left = 474
      Top = 211
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = 'Upload'
      TabOrder = 5
      OnClick = btnUploadClick
    end
    object sPanel1: TsPanel
      Left = 416
      Top = 27
      Width = 185
      Height = 178
      BevelOuter = bvNone
      Color = clWhite
      Padding.Left = 1
      Padding.Top = 1
      Padding.Right = 1
      Padding.Bottom = 1
      StyleElements = []
      ParentBackground = False
      TabOrder = 6
      object Image1: TImage
        Left = 1
        Top = 1
        Width = 183
        Height = 176
        Align = alClient
        Center = True
        Proportional = True
        ExplicitLeft = 57
        ExplicitTop = 10
      end
    end
  end
  object ds_company: TDataSource
    DataSet = dm_PM.qry_company
    Left = 216
    Top = 240
  end
  object SavePictureDialog1: TSavePictureDialog
    FileName = 'C:\Users\acer\Pictures\Untitled.png'
    Filter = 'JPEG, PNG|*.jpg;*.jpeg;*.png'
    Left = 264
    Top = 241
  end
end
