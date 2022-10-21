object f_CustTemp: Tf_CustTemp
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  ClientHeight = 407
  ClientWidth = 902
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
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 902
    Height = 83
    Align = alTop
    BevelOuter = bvNone
    Color = clTeal
    ParentBackground = False
    TabOrder = 0
    StyleElements = []
    DesignSize = (
      902
      83)
    object Label4: TLabel
      AlignWithMargins = True
      Left = 13
      Top = 24
      Width = 108
      Height = 25
      Caption = 'JOB ORDER'
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
    end
    object Label3: TLabel
      Left = 462
      Top = 13
      Width = 48
      Height = 17
      Anchors = [akTop, akRight]
      Caption = 'Search :'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      StyleElements = []
    end
    object Label2: TLabel
      Left = 462
      Top = 42
      Width = 48
      Height = 17
      Anchors = [akTop, akRight]
      Caption = 'Period :'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      StyleElements = []
    end
    object Label1: TLabel
      Left = 725
      Top = 42
      Width = 40
      Height = 17
      Anchors = [akTop, akRight]
      Caption = 'Filter :'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      StyleElements = []
    end
    object txt_search: TButtonedEdit
      Left = 527
      Top = 9
      Width = 358
      Height = 25
      Anchors = [akTop, akRight]
      CharCase = ecUpperCase
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      Images = sCharImageList1
      LeftButton.HotImageIndex = 0
      LeftButton.ImageIndex = 0
      LeftButton.PressedImageIndex = 0
      ParentFont = False
      RightButton.DisabledImageIndex = 0
      RightButton.HotImageIndex = 0
      RightButton.ImageIndex = 0
      RightButton.PressedImageIndex = 0
      RightButton.Visible = True
      TabOrder = 0
      TextHint = 'Search ...'
      StyleElements = []
      OnRightButtonClick = txt_searchRightButtonClick
    end
    object date_1: TDateTimePicker
      Left = 527
      Top = 40
      Width = 93
      Height = 21
      Anchors = [akTop, akRight]
      Date = 44189.551065162040000000
      Time = 44189.551065162040000000
      TabOrder = 1
      OnCloseUp = date_1CloseUp
    end
    object date_2: TDateTimePicker
      Left = 622
      Top = 40
      Width = 93
      Height = 21
      Anchors = [akTop, akRight]
      Date = 44189.551065162040000000
      Time = 44189.551065162040000000
      TabOrder = 2
      OnCloseUp = date_2CloseUp
    end
    object cmb_filter: TcxComboBox
      Left = 771
      Top = 40
      Anchors = [akTop, akRight]
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Properties.DropDownListStyle = lsEditFixedList
      Properties.ImmediatePost = True
      Properties.Items.Strings = (
        'JOB ORDER NO.'
        'CLIENT')
      Properties.OnValidate = cmb_filterPropertiesValidate
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
      Style.ButtonStyle = btsSimple
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.Kind = lfUltraFlat
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.Kind = lfUltraFlat
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.Kind = lfUltraFlat
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 3
      Width = 114
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 83
    Width = 902
    Height = 287
    Align = alClient
    BevelInner = bvNone
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'VisualStudio2013Light'
    object cxGridDBTableView2: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = ds_jo
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '###,###,##0'
          Kind = skCount
          FieldName = 'JONO'
          Column = cxGridDBTableView2JONO
        end
        item
          Format = '###,###,##0.00'
          Kind = skSum
          FieldName = 'NETAMNT'
          Column = cxGridDBTableView2NETAMNT
        end
        item
          Format = '###,###,##0.00'
          Kind = skSum
          FieldName = 'BALAMNT'
          Column = cxGridDBTableView2BALAMNT
        end
        item
          Format = '###,###,##0.00'
          Kind = skSum
          FieldName = 'PAIDAMNT'
          Column = cxGridDBTableView2PAIDAMNT
        end
        item
          Format = '###,###,##0.00'
          Kind = skSum
          FieldName = 'GROSSAMNT'
          Column = cxGridDBTableView2GROSSAMNT
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Appending = True
      OptionsSelection.CellSelect = False
      OptionsView.NoDataToDisplayInfoText = 'No Data To Display'
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      Styles.Selection = select_style
      Styles.Header = header_style
      object cxGridDBTableView2JONO: TcxGridDBColumn
        DataBinding.FieldName = 'JONO'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 38
      end
      object cxGridDBTableView2CLIENT: TcxGridDBColumn
        DataBinding.FieldName = 'CLIENT'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 172
      end
      object cxGridDBTableView2LOGDATE: TcxGridDBColumn
        Caption = 'DATE'
        DataBinding.FieldName = 'LOGDATE'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 71
      end
      object cxGridDBTableView2DUEDATE: TcxGridDBColumn
        Caption = 'DUE DATE'
        DataBinding.FieldName = 'DUEDATE'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 77
      end
      object cxGridDBTableView2SUMMARY: TcxGridDBColumn
        DataBinding.FieldName = 'SUMMARY'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 174
      end
      object cxGridDBTableView2GROSSAMNT: TcxGridDBColumn
        Caption = 'GROSS'
        DataBinding.FieldName = 'GROSSAMNT'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 77
      end
      object cxGridDBTableView2DISCOUNT: TcxGridDBColumn
        DataBinding.FieldName = 'DISCOUNT'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 62
      end
      object cxGridDBTableView2NETAMNT: TcxGridDBColumn
        Caption = 'NET AMNT'
        DataBinding.FieldName = 'NETAMNT'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 65
      end
      object cxGridDBTableView2PAIDAMNT: TcxGridDBColumn
        Caption = 'PAID'
        DataBinding.FieldName = 'PAIDAMNT'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 52
      end
      object cxGridDBTableView2BALAMNT: TcxGridDBColumn
        Caption = 'BALANCE'
        DataBinding.FieldName = 'BALAMNT'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 60
      end
      object cxGridDBTableView2POSTED: TcxGridDBColumn
        DataBinding.FieldName = 'POSTED'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 52
      end
    end
    object cxGridLevel2: TcxGridLevel
      GridView = cxGridDBTableView2
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 370
    Width = 902
    Height = 37
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    DesignSize = (
      902
      37)
    object Button3: TButton
      Left = 727
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'OK'
      Default = True
      ModalResult = 1
      TabOrder = 0
    end
    object Button4: TButton
      Left = 814
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
  object sCharImageList1: TsCharImageList
    EmbeddedFonts = <
      item
        FontName = 'FontAwesome'
        FontData = {}
      end>
    Items = <
      item
        ScalingFactor = 0.740000000000000000
        OffsetY = 1
        Char = 61442
      end>
    Left = 496
    Top = 168
    Bitmap = {
      494C010100000800080001000100FFFFFFFF0400FFFFFFFFFFFFFFFF424D7600
      0000000000007600000028000000040000000100000001000400000000000400
      0000000000000000000000000000000000000000000000008000008000000080
      8000800000008000800080800000C0C0C000808080000000FF0000FF000000FF
      FF00FF000000FF00FF00FFFF0000FFFFFF0000000000}
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 453
    Top = 168
    PixelsPerInch = 96
    object header_style: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      TextColor = 6570553
    end
    object select_style: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clTeal
      TextColor = clWhite
    end
  end
  object ds_jo: TDataSource
    DataSet = dm_PM.brw_JO
    Left = 608
    Top = 168
  end
end
