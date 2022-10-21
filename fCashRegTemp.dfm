object f_CashRegTemp: Tf_CashRegTemp
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Items'
  ClientHeight = 364
  ClientWidth = 757
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 757
    Height = 49
    Align = alTop
    BevelOuter = bvNone
    Color = clTeal
    ParentBackground = False
    TabOrder = 0
    StyleElements = []
    DesignSize = (
      757
      49)
    object Label3: TLabel
      Left = 13
      Top = 16
      Width = 80
      Height = 17
      Caption = 'Search Item :'
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
      Left = 420
      Top = 13
      Width = 32
      Height = 17
      Caption = 'Filter'
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
    object cmb_filter: TComboBox
      Left = 458
      Top = 13
      Width = 119
      Height = 23
      Style = csDropDownList
      Anchors = [akTop, akRight]
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      StyleElements = []
      Items.Strings = (
        'DESCRIPTION'
        'CODE'
        'ITEM TYPE')
    end
    object txt_search: TButtonedEdit
      Left = 105
      Top = 12
      Width = 309
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
      TabOrder = 1
      TextHint = 'Search ...'
      StyleElements = []
      OnKeyPress = txt_searchKeyPress
      OnRightButtonClick = txt_searchRightButtonClick
    end
  end
  object scGPPageControl1: TscGPPageControl
    Left = 0
    Top = 49
    Width = 757
    Height = 278
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
        Page = scGPPageControlPage3
        Visible = True
        Enabled = True
        ImageIndex = -1
        Caption = 'Select Item'
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
    TabIndex = 0
    ActivePage = scGPPageControlPage3
    StorePaintBuffer = False
    FreeOnClose = False
    object scGPPageControlPage3: TscGPPageControlPage
      Left = 0
      Top = 30
      Width = 757
      Height = 248
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
      WallpaperIndex = -1
      CustomBackgroundImageIndex = -1
      FluentUIOpaque = False
      StorePaintBuffer = False
      BGStyle = scgppsForm
      object grid_items: TcxGrid
        Left = 0
        Top = 0
        Width = 757
        Height = 248
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
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'VisualStudio2013Light'
        object cxGridDBTableView1: TcxGridDBTableView
          OnDblClick = cxGridDBTableView1DblClick
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = ds_items
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '###,###,##0'
              Kind = skCount
              FieldName = 'CODE'
              Column = cxGridDBTableView1CODE
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Appending = True
          OptionsSelection.CellSelect = False
          OptionsView.FocusRect = False
          OptionsView.NoDataToDisplayInfoText = 'No Data To Display'
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          Styles.Selection = select_style
          Styles.Header = Header_style
          object cxGridDBTableView1CODE: TcxGridDBColumn
            DataBinding.FieldName = 'CODE'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Width = 62
          end
          object cxGridDBTableView1DESCRIPTION: TcxGridDBColumn
            DataBinding.FieldName = 'DESCRIPTION'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Width = 288
          end
          object cxGridDBTableView1ITEMTYPE: TcxGridDBColumn
            Caption = 'ITEM TYPE'
            DataBinding.FieldName = 'ITEMTYPE'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Width = 116
          end
          object cxGridDBTableView1INVUNIT: TcxGridDBColumn
            Caption = 'UNIT'
            DataBinding.FieldName = 'INVUNIT'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Width = 192
          end
          object cxGridDBTableView1ONHAND: TcxGridDBColumn
            DataBinding.FieldName = 'ONHAND'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Styles.OnGetContentStyle = cxGridDBTableView1ONHANDStylesGetContentStyle
            Width = 98
          end
          object cxGridDBTableView1SELLINGPRICE: TcxGridDBColumn
            DataBinding.FieldName = 'PRICE'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Width = 99
          end
          object cxGridDBTableView1MINQTY: TcxGridDBColumn
            DataBinding.FieldName = 'MINQTY'
            Visible = False
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 327
    Width = 757
    Height = 37
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    DesignSize = (
      757
      37)
    object Button2: TButton
      Left = 589
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'OK'
      Default = True
      ModalResult = 1
      TabOrder = 0
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 676
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 1
      OnClick = Button3Click
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 440
    Top = 112
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
    object select_style: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clTeal
      TextColor = clWhite
    end
  end
  object ds_items: TDataSource
    DataSet = dm_PM.brw_items
    Left = 408
    Top = 104
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
    Left = 360
    Top = 104
    Bitmap = {
      494C010100000800080001000100FFFFFFFF0400FFFFFFFFFFFFFFFF424D7600
      0000000000007600000028000000040000000100000001000400000000000400
      0000000000000000000000000000000000000000000000008000008000000080
      8000800000008000800080800000C0C0C000808080000000FF0000FF000000FF
      FF00FF000000FF00FF00FFFF0000FFFFFF0000000000}
  end
  object ActionList1: TActionList
    Left = 328
    Top = 87
  end
end
