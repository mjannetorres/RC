object f_GarmentsTemp: Tf_GarmentsTemp
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Garments'
  ClientHeight = 586
  ClientWidth = 445
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
    Top = 549
    Width = 445
    Height = 37
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      445
      37)
    object btnSave: TButton
      Left = 266
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
      Left = 353
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
    Width = 445
    Height = 549
    Align = alClient
    BevelOuter = bvNone
    Color = clTeal
    ParentBackground = False
    TabOrder = 1
    StyleElements = []
    object Label1: TLabel
      Left = 13
      Top = 15
      Width = 31
      Height = 17
      Caption = 'Code'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 220
      Top = 13
      Width = 36
      Height = 17
      Caption = 'Fabric'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 13
      Top = 42
      Width = 63
      Height = 17
      Caption = 'Item Label'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 13
      Top = 97
      Width = 25
      Height = 17
      Caption = 'Unit'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 203
      Top = 95
      Width = 53
      Height = 17
      Caption = 'Unit QTY'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 13
      Top = 69
      Width = 68
      Height = 17
      Caption = 'Description'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object txt_code: TcxDBTextEdit
      Left = 100
      Top = 13
      DataBinding.DataField = 'CODE'
      DataBinding.DataSource = ds_garments
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
      TabOrder = 0
      OnExit = txt_codeExit
      Width = 97
    end
    object cmb_fabric: TcxDBLookupComboBox
      Left = 262
      Top = 13
      DataBinding.DataField = 'FABRICID'
      DataBinding.DataSource = ds_garments
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'DESCRIPTION'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = ds_fabric
      Style.BorderColor = 1184274
      Style.BorderStyle = ebsThick
      Style.Color = 6570553
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'DevExpressDarkStyle'
      Style.ButtonStyle = btsUltraFlat
      Style.ButtonTransparency = ebtAlways
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'DevExpressDarkStyle'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'DevExpressDarkStyle'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'DevExpressDarkStyle'
      TabOrder = 1
      OnExit = txt_codeExit
      Width = 163
    end
    object txt_specs: TcxDBTextEdit
      Left = 100
      Top = 40
      DataBinding.DataField = 'SPECIFICATIONS'
      DataBinding.DataSource = ds_garments
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
      TabOrder = 2
      OnExit = txt_codeExit
      Width = 325
    end
    object cmb_unit: TcxDBLookupComboBox
      Left = 100
      Top = 95
      DataBinding.DataField = 'UNIT'
      DataBinding.DataSource = ds_garments
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'DESCRIPTION'
      Properties.ListColumns = <
        item
          FieldName = 'DESCRIPTION'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = ds_unit
      Properties.OnCloseUp = cmb_unitPropertiesCloseUp
      Style.BorderColor = 1184274
      Style.BorderStyle = ebsThick
      Style.Color = 6570553
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'DevExpressDarkStyle'
      Style.ButtonStyle = btsUltraFlat
      Style.ButtonTransparency = ebtAlways
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'DevExpressDarkStyle'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'DevExpressDarkStyle'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'DevExpressDarkStyle'
      TabOrder = 4
      OnExit = txt_codeExit
      Width = 97
    end
    object cxGroupBox1: TcxGroupBox
      Left = 13
      Top = 132
      Alignment = alTopCenter
      Caption = 'PRICING/EMP. SHARE'
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
      TabOrder = 6
      Transparent = True
      Height = 191
      Width = 412
      object Label12: TLabel
        Left = 21
        Top = 43
        Width = 29
        Height = 17
        Alignment = taRightJustify
        Caption = 'Price'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label14: TLabel
        Left = 217
        Top = 42
        Width = 71
        Height = 17
        Alignment = taRightJustify
        Caption = 'Artist Share'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 196
        Top = 69
        Width = 92
        Height = 17
        Alignment = taRightJustify
        Caption = 'Print Op. Share'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 212
        Top = 120
        Width = 76
        Height = 17
        Alignment = taRightJustify
        Caption = 'Cutter Share'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 218
        Top = 147
        Width = 70
        Height = 17
        Alignment = taRightJustify
        Caption = 'Tailor Share'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 184
        Top = 95
        Width = 103
        Height = 17
        Alignment = taRightJustify
        Caption = 'Heat Press Share'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object txt_artist: TcxDBTextEdit
        Left = 296
        Top = 41
        DataBinding.DataField = 'ARTISTSHARE'
        DataBinding.DataSource = ds_garments
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
        TabOrder = 1
        OnExit = txt_codeExit
        Width = 96
      end
      object txt_price: TcxDBTextEdit
        Left = 56
        Top = 41
        DataBinding.DataField = 'PRICE'
        DataBinding.DataSource = ds_garments
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
        TabOrder = 0
        OnExit = txt_codeExit
        Width = 97
      end
      object txt_PrinOP: TcxDBTextEdit
        Left = 296
        Top = 68
        DataBinding.DataField = 'PRINTOPSHARE'
        DataBinding.DataSource = ds_garments
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
        TabOrder = 2
        OnExit = txt_codeExit
        Width = 96
      end
      object txt_cutter: TcxDBTextEdit
        Left = 296
        Top = 119
        DataBinding.DataField = 'CUTTERSHARE'
        DataBinding.DataSource = ds_garments
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
        OnExit = txt_codeExit
        Width = 96
      end
      object txt_tailor: TcxDBTextEdit
        Left = 296
        Top = 146
        DataBinding.DataField = 'TAILORSHARE'
        DataBinding.DataSource = ds_garments
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
        OnExit = txt_codeExit
        Width = 96
      end
      object txt_heatpress: TcxDBTextEdit
        Left = 296
        Top = 94
        DataBinding.DataField = 'HEATPRESSSHARE'
        DataBinding.DataSource = ds_garments
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
        OnExit = txt_codeExit
        Width = 96
      end
    end
    object txt_unitqty: TcxDBSpinEdit
      Left = 262
      Top = 95
      DataBinding.DataField = 'UNITQTY'
      DataBinding.DataSource = ds_garments
      ParentFont = False
      Properties.ImmediatePost = True
      Properties.OnValidate = txt_unitqtyPropertiesValidate
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
      TabOrder = 5
      Width = 83
    end
    object txt_desc: TcxDBTextEdit
      Left = 100
      Top = 67
      DataBinding.DataField = 'DESCRIPTION'
      DataBinding.DataSource = ds_garments
      ParentFont = False
      ParentShowHint = False
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = True
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
      OnExit = txt_codeExit
      Width = 325
    end
    object cxGroupBox2: TcxGroupBox
      Left = 13
      Top = 331
      Alignment = alTopCenter
      Caption = 'COSTING'
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
      TabOrder = 7
      Transparent = True
      Height = 191
      Width = 412
      object cxGrid2: TcxGrid
        Left = 2
        Top = 22
        Width = 408
        Height = 167
        Align = alClient
        BevelInner = bvNone
        BevelOuter = bvNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'VisualStudio2013Light'
        object cxGridDBTableView3: TcxGridDBTableView
          PopupMenu = PopupMenu1
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = ds_costing
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '###,###,##0'
              Kind = skCount
              FieldName = 'ITEMID'
              Column = cxGridDBTableView1ITEMID
            end
            item
              Format = '###,###,##0.00'
              Kind = skSum
              FieldName = 'TOTALCOST'
              Column = cxGridDBColumn4
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Appending = True
          OptionsView.NoDataToDisplayInfoText = 'No Data To Display'
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          object cxGridDBTableView1ITEMID: TcxGridDBColumn
            Caption = 'ITEM DESCRIPTION'
            DataBinding.FieldName = 'ITEMID'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.CharCase = ecUpperCase
            Properties.DropDownWidth = 360
            Properties.ImmediatePost = True
            Properties.KeyFieldNames = 'ID'
            Properties.ListColumns = <
              item
                Caption = 'CODE'
                HeaderAlignment = taCenter
                Width = 80
                FieldName = 'CODE'
              end
              item
                HeaderAlignment = taCenter
                Width = 200
                FieldName = 'DESCRIPTION'
              end
              item
                Caption = 'ONHAND'
                HeaderAlignment = taCenter
                Width = 80
                FieldName = 'ONHAND'
              end>
            Properties.ListFieldIndex = 1
            Properties.ListSource = ds_items
            Properties.OnCloseUp = cxGridDBTableView1ITEMIDPropertiesCloseUp
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Options.Sorting = False
            Width = 190
          end
          object cxGridDBColumn1: TcxGridDBColumn
            DataBinding.FieldName = 'QTY'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.ValidateOnEnter = True
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Options.Sorting = False
            Width = 37
          end
          object cxGridDBColumn2: TcxGridDBColumn
            DataBinding.FieldName = 'UNIT'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Width = 61
          end
          object cxGridDBColumn3: TcxGridDBColumn
            DataBinding.FieldName = 'COST'
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Options.Sorting = False
            Width = 45
          end
          object cxGridDBColumn4: TcxGridDBColumn
            Caption = 'TOTAL'
            DataBinding.FieldName = 'TOTALCOST'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Width = 73
          end
        end
        object cxGridLevel3: TcxGridLevel
          GridView = cxGridDBTableView3
        end
      end
    end
  end
  object ds_garments: TDataSource
    DataSet = dm_PM.qry_garments
    Left = 40
    Top = 56
  end
  object ds_fabric: TDataSource
    DataSet = dm_PM.brw_Fabrics
    Left = 32
    Top = 112
  end
  object ds_unit: TDataSource
    DataSet = dm_PM.brw_Unit
    Left = 112
    Top = 56
  end
  object ds_items: TDataSource
    DataSet = dm_PM.brw_items
    Left = 32
    Top = 200
  end
  object ds_costing: TDataSource
    DataSet = dm_PM.tb_InvReqDetail
    Left = 37
    Top = 260
  end
  object PopupMenu1: TPopupMenu
    Left = 109
    Top = 252
    object Delete1: TMenuItem
      Action = Delete
    end
  end
  object ActionList1: TActionList
    Left = 109
    Top = 196
    object Delete: TAction
      Caption = 'Delete'
      OnExecute = DeleteExecute
    end
  end
end
