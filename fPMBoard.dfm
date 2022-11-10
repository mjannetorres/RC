object f_PMBoard: Tf_PMBoard
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'PM Board'
  ClientHeight = 670
  ClientWidth = 1370
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clBlack
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 15
  object pan_JO: TPanel
    Left = 0
    Top = 0
    Width = 1370
    Height = 670
    Align = alClient
    BevelOuter = bvNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 1370
      Height = 71
      Align = alTop
      BevelOuter = bvNone
      Color = clTeal
      Padding.Left = 10
      Padding.Top = 5
      Padding.Right = 10
      Padding.Bottom = 5
      ParentBackground = False
      TabOrder = 0
      StyleElements = [seFont, seBorder]
      DesignSize = (
        1370
        71)
      object Label1: TLabel
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
      object Label2: TLabel
        Left = 1228
        Top = 43
        Width = 32
        Height = 17
        Anchors = [akTop, akRight]
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
      object Label3: TLabel
        Left = 973
        Top = 44
        Width = 40
        Height = 17
        Anchors = [akTop, akRight]
        Caption = 'Period'
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
        Left = 1271
        Top = 41
        Width = 89
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
        Items.Strings = (
          'CLIENT'
          'JO NO.')
      end
      object date_1: TDateTimePicker
        Left = 1030
        Top = 41
        Width = 93
        Height = 21
        Anchors = [akTop, akRight]
        Date = 44189.551065162040000000
        Time = 44189.551065162040000000
        TabOrder = 1
      end
      object date_2: TDateTimePicker
        Left = 1129
        Top = 41
        Width = 93
        Height = 21
        Anchors = [akTop, akRight]
        Date = 44189.551065162040000000
        Time = 44189.551065162040000000
        TabOrder = 2
      end
      object txt_search: TButtonedEdit
        Left = 973
        Top = 12
        Width = 387
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
        RightButton.HotImageIndex = 3
        RightButton.ImageIndex = 3
        RightButton.PressedImageIndex = 3
        RightButton.Visible = True
        TabOrder = 3
        TextHint = 'Search ...'
        StyleElements = [seFont, seBorder]
        OnKeyPress = txt_searchKeyPress
        OnRightButtonClick = txt_searchRightButtonClick
      end
    end
    object scToolBar2: TscToolBar
      Left = 0
      Top = 71
      Width = 1370
      Height = 30
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      AutoSize = True
      ButtonHeight = 30
      ButtonWidth = 82
      Caption = 'scToolBar1'
      Color = clWhite
      Customizable = True
      DrawingStyle = dsGradient
      EdgeInner = esNone
      EdgeOuter = esNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clTeal
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      GradientEndColor = clWhite
      GradientStartColor = clWhite
      HotTrackColor = clWhite
      Images = sCharImageList1
      List = True
      ParentColor = False
      ParentFont = False
      ShowCaptions = True
      TabOrder = 1
      Transparent = True
      StyleElements = []
      object btnNew: TToolButton
        Left = 0
        Top = 0
        Action = New
        AutoSize = True
        ImageIndex = 7
      end
      object btnEdit: TToolButton
        Left = 65
        Top = 0
        Action = Edit
        AutoSize = True
        ImageIndex = 9
      end
      object btnDelete: TToolButton
        Left = 126
        Top = 0
        Action = Delete
        AutoSize = True
        ImageIndex = 8
      end
      object btnPrint: TToolButton
        Left = 200
        Top = 0
        Action = Print
        AutoSize = True
        ImageIndex = 17
      end
      object btnOverride: TToolButton
        Left = 266
        Top = 0
        Action = Overrideby
        AutoSize = True
        ImageIndex = 20
      end
    end
    object cxGrid1: TcxGrid
      Left = 0
      Top = 101
      Width = 1370
      Height = 569
      Align = alClient
      BevelInner = bvNone
      BevelOuter = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'VisualStudio2013Light'
      object cxGrid1DBTableView1: TcxGridDBTableView
        OnDblClick = EditExecute
        Navigator.Buttons.CustomButtons = <>
        OnCellClick = cxGrid1DBTableView1CellClick
        DataController.DataSource = ds_JO
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '###,###,##'
            Kind = skCount
            FieldName = 'JONO'
            Column = cxGrid1DBTableView1JONO
          end
          item
            Format = '###,###,##0.00'
            Kind = skSum
            FieldName = 'PAIDAMNT'
            Column = cxGrid1DBTableView1PAIDAMNT
          end
          item
            Format = '###,###,##0.00'
            Kind = skSum
            FieldName = 'BALAMNT'
            Column = cxGrid1DBTableView1BALAMNT
          end
          item
            Format = '###,###,##0.00'
            Kind = skSum
            FieldName = 'NETAMNT'
            Column = cxGrid1DBTableView1NETAMNT
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsSelection.CellSelect = False
        OptionsView.FocusRect = False
        OptionsView.NoDataToDisplayInfoText = 'No Data To Display'
        OptionsView.CellAutoHeight = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        Styles.Selection = select_style
        Styles.Header = Header_style
        object cxGrid1DBTableView1JONO: TcxGridDBColumn
          Caption = 'JO NO.'
          DataBinding.FieldName = 'JONO'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.Sorting = False
          Width = 36
        end
        object cxGrid1DBTableView1CLIENT: TcxGridDBColumn
          DataBinding.FieldName = 'CLIENT'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.Sorting = False
          Styles.Header = Header_style
          Width = 92
        end
        object cxGrid1DBTableView1DESCRIPTION: TcxGridDBColumn
          Caption = 'PARTICULARS'
          DataBinding.FieldName = 'SUMMARY'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.Sorting = False
          Width = 123
        end
        object cxGrid1DBTableView1LOGDATE: TcxGridDBColumn
          Caption = 'DATE'
          DataBinding.FieldName = 'LOGDATE'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.Sorting = False
          Width = 70
        end
        object cxGrid1DBTableView1DUEDATE: TcxGridDBColumn
          Caption = 'DUE DATE'
          DataBinding.FieldName = 'DUEDATE'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.Sorting = False
          Width = 67
        end
        object cxGrid1DBTableView1POSTED: TcxGridDBColumn
          DataBinding.FieldName = 'POSTED'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.Sorting = False
          Width = 40
        end
        object cxGrid1DBTableView1CLOSED: TcxGridDBColumn
          DataBinding.FieldName = 'CLOSED'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.Sorting = False
          Styles.Header = Header_style
          Width = 36
        end
        object cxGrid1DBTableView1NETAMNT: TcxGridDBColumn
          Caption = 'NET AMOUNT'
          DataBinding.FieldName = 'NETAMNT'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.Sorting = False
        end
        object cxGrid1DBTableView1PAIDAMNT: TcxGridDBColumn
          Caption = 'PAID'
          DataBinding.FieldName = 'PAIDAMNT'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.Sorting = False
          Width = 63
        end
        object cxGrid1DBTableView1BALAMNT: TcxGridDBColumn
          Caption = 'BALANCE'
          DataBinding.FieldName = 'BALAMNT'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.Sorting = False
          Width = 59
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object ds_JO: TDataSource
    DataSet = dm_PM.brw_JO
    Left = 345
    Top = 184
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 264
    Top = 184
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
  object ActionList1: TActionList
    Left = 376
    Top = 184
    object New: TAction
      Caption = '&New'
      OnExecute = NewExecute
    end
    object Edit: TAction
      Caption = '&Edit'
      OnExecute = EditExecute
    end
    object Delete: TAction
      Caption = '&Delete'
      OnExecute = DeleteExecute
    end
    object Print: TAction
      Caption = 'Print'
      OnExecute = PrintExecute
    end
    object Overrideby: TAction
      Caption = 'Override'
      OnExecute = OverridebyExecute
    end
  end
  object cxImageList1: TcxImageList
    FormatVersion = 1
    DesignInfo = 12058928
    ImageInfo = <
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000020000000E0B14308329448DFB1D2F58A5000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000020000000E0D1937883C6DB2FF5BB1F9FF325196F4000000000000
          00000000000100000004000000090000000D0000000F0000000F0000000C0000
          00070000000E0F1D3C864A7CBCFF73C4FFFF467CC3FF17254485000000000000
          0002000000081C130F465A3B31BC7C5043F87F5244FF7B4E42FA57382FC11E14
          1059112142875686C2FF88D0FFFF5186C7FF142343880000000F000000010302
          02104A332C91946B5DFDC6ACA1FFE4D1C6FFEDDDD2FFE2D0C5FFC0A599FF855C
          50FF6E6B7EFF98D4F8FF5B8ECBFF152545840000000D00000002000000076046
          3DA6B39288FFE9DAD0FFDAC0A1FFCBA87AFFC49B66FFCCAA7EFFDCC2A5FFE5D2
          C6FF9A766AFF736A77FF162747850000000E00000002000000002A201D4AAE88
          7CFFEFE6DFFFCDA67CFFCDA26BFFE3C28CFFEDD5A2FFE7CD9EFFD3B182FFD0AE
          88FFE7D5CAFF885F53FF25181464000000070000000000000000755B53ACDFCE
          C9FFDDC1A8FFC99865FFE8BE83FFE9C388FFEDCA97FFEFD3A7FFF2D9B0FFD5B1
          87FFDBBEA6FFC5ACA2FF5A3D33C10000000C0000000000000000A9877CE9F8F4
          F2FFC79873FFDEAB77FFEFCDABFFF0D0B1FFEDC9A1FFECC69AFFEFCFA9FFE9C9
          A4FFC89B77FFE6D6CEFF7C5448F10000000F0000000000000000C09C90FFFDFD
          FCFFBE875FFFEDCFB9FFF5DFD2FFF2D6C1FFF1CFB4FFEDC6A4FFECC19BFFEFC8
          A6FFC08B67FFF1E6DFFF8B6154FF0000000F0000000000000000AF9186E6F9F5
          F4FFC69474FFE8CDC3FFF9E8E4FFF6DED2FFF3D4C2FFF0CBB2FFEBB78EFFE5B7
          92FFC59172FFEBDFD9FF866055EE0000000D0000000000000000876F68B0E7D9
          D4FFE2C6B7FFC89072FFFAEFF2FFF9E7E4FFF6DDD3FFF1C8B2FFEBAF88FFC98E
          6CFFDCBBAAFFD3C0B7FF6B4F46BC00000009000000000000000026201E36CCAF
          A7FAFBF8F7FFCF9F88FFC78E72FFE9CDC6FFEDC7B5FFDD9F79FFC88865FFCE9D
          84FFF5EFEBFFB39387FF2A201D52000000040000000000000000000000036454
          4F84D9C2BAFFFDFBFAFFE2C6B8FFCB977EFFC08163FFCB977DFFE0C4B4FFFAF6
          F5FFC9B0A7FF6B564EA700000009000000010000000000000000000000000202
          020762534D81CEB2A9FAEADDD8FFF9F5F4FFFFFFFFFFF9F5F4FFE9DCD7FFC8AC
          A2FC62504B900404031000000002000000000000000000000000000000000000
          000000000003241F1D3486726BADB69B91E6CCADA1FFB99C92E988736CB22822
          1F3E000000060000000100000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000020000000A170D0738542D1894814626D193502AEA924F2AE87F45
          25D0522C17931209053000000009000000010000000000000000000000000000
          00030201011159311B97A96239FAC58957FFD6A36DFFDDAF75FFDDAF74FFD6A4
          6BFFC58956FFA46137F53C2112730000000F0000000300000000000000020201
          0110744226B9BC7C4DFFDDAE77FFDEB076FFE2B782FFE3BB87FFE3BC86FFE1B7
          82FFDEAF74FFDBAB72FFBD7E4EFF6F3E24B50000001000000002000000085C36
          2095BE8053FFE0B37CFFDFB076FFDEB177FFB78254FFAA7144FFAB7245FFBC88
          59FFDFB279FFDFB277FFDEB077FFC08253FF55321D920000000A190F0932B070
          47FADFB27DFFDFB27AFFE0B37BFFE0B57DFFA56B3FFFF5EFEAFFF8F3EEFFAB72
          45FFE2B67EFFE0B47CFFE0B47BFFDEB079FFB3734AFB130B072F613C2795CD9B
          6FFFE2B780FFE5BD89FFE7C291FFE8C393FFA56B3FFFF1E6DEFFF9F5F1FFAA71
          44FFE8C494FFE8C393FFE5BF8CFFE1B77FFFD09C6EFF5434218B935E3DD2DCB3
          83FFE3B781FFBA8659FFA97043FFAB7245FFAC7346FFF5EDE6FFFAF6F3FFAD75
          47FFB0784AFFB17A4BFFC29162FFE4B983FFDEB17EFF8E5B3BD0B0744CF2E3BF
          8FFFE4BB84FFA56B3FFFF3EBE6FFFAF6F3FFF6EFE8FFF7F0EAFFFBF7F5FFFAF7
          F4FFFAF7F3FFFAF6F2FFAB7245FFE5BD87FFE5BE8BFFAB714CEEAE764FECE9C9
          A0FFE5BE89FFA56B3FFFE0D2CAFFE1D3CCFFE3D5CFFFF2EAE4FFF8F3EFFFEADF
          D9FFE6DAD4FFE9DED9FFAA7144FFE7C08CFFEACA9DFFAE764FEE9A6A49D0E9CD
          ACFFEAC796FFB78456FFA56B3FFFA56B3FFFA56B3FFFF1EAE5FFFAF6F3FFA56B
          3FFFA56B3FFFA56B3FFFB78457FFEACA99FFEBD1ADFF996A49D46E4E3697DDBB
          9DFFEED3A9FFEECFA2FFEED2A5FFF0D6A9FFA56B3FFFF0EAE7FFFDFCFBFFA56B
          3FFFF1D6AAFFF0D5A8FFEED2A5FFEFD4A7FFE0C2A2FF6246318F1C140E2BC794
          6CFCF5E8CCFFEFD6ABFFF1D8AEFFF2DAB0FFA56B3FFFDECFC9FFDFD1CBFFA56B
          3FFFF3DCB2FFF1DBB0FFF1D8ADFFF7EACDFFC69470FA1A120D2E000000036F52
          3C92D7B08CFFF8EFD3FFF3E0B9FFF3DFB7FFB98A5FFFA56B3FFFA56B3FFFBA8A
          5FFFF4E1B9FFF4E2BDFFFAF1D5FFD9B390FF664B368C00000006000000010202
          0107906C4EB8D9B38FFFF7EDD3FFF8EED0FFF7EBC9FFF6E8C4FFF6E8C5FFF7EC
          CAFFF8EED0FFF4E8CDFFD7AF8BFF88664AB30202010B00000001000000000000
          00010202010770543F8FCFA078FCE2C4A2FFEBD7B8FFF4E9CDFFF4EACEFFECD8
          B9FFE3C5A3FFC59973F24C392A67000000060000000100000000000000000000
          000000000001000000022019122C6C543E89A47E5FCCC59770F1C19570EEA47E
          60CD6C543F8B16110D2200000003000000010000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000002000000070000000C0000001000000012000000110000
          000E000000080000000200000000000000000000000000000000000000000000
          000100000004000101120D2A1D79184E36C6216B4BFF216B4BFF216C4BFF1A53
          3AD20F2F21840001011500000005000000010000000000000000000000000000
          0005050F0A351C5B40DC24805CFF29AC7EFF2CC592FF2DC894FF2DC693FF2AAE
          80FF258560FF1A563DD405110C3D00000007000000010000000000000003040E
          0A31206548ED299D74FF2FC896FF2EC996FF56D4ACFF68DAB5FF3BCD9DFF30C9
          96FF32CA99FF2BA479FF227050F805110C3D00000005000000000000000A1A57
          3DD02EA57CFF33CA99FF2EC896FF4CD2A8FF20835CFF00673BFF45BE96FF31CB
          99FF31CB98FF34CC9CFF31AD83FF1B5C41D300010113000000020B23185E2E8A
          66FF3BCD9EFF30CA97FF4BD3A9FF349571FF87AF9DFFB1CFC1FF238A60FF45D3
          A8FF36CF9FFF33CD9BFF3ED0A3FF319470FF0F32237F00000007184D37B63DB3
          8CFF39CD9FFF4BD5A9FF43A382FF699782FFF8F1EEFFF9F3EEFF357F5DFF56C4
          A1FF43D5A8FF3ED3A4FF3CD1A4FF41BC95FF1B5C43CD0000000B1C6446DF4BCA
          A4FF44D2A8FF4FB392FF4E826AFFF0E9E6FFC0C3B5FFEFE3DDFFCEDDD4FF1B75
          4FFF60DCB8FF48D8ACFF47D6AAFF51D4ACFF247A58F80000000E217050F266D9
          B8FF46D3A8FF0B6741FFD2D2CBFF6A8F77FF116B43FF73967EFFF1E8E3FF72A2
          8BFF46A685FF5EDFBAFF4CD9AFFF6BE2C2FF278460FF020604191E684ADC78D9
          BEFF52DAB1FF3DBA92FF096941FF2F9C76FF57DEB8FF2D9973FF73967EFFF0EA
          E7FF4F886CFF5ABB9AFF5BDEB9FF7FE2C7FF27835FF80000000C19523BAB77C8
          B0FF62E0BCFF56DDB7FF59DFBAFF5CE1BDFF5EE2BEFF5FE4C1FF288C67FF698E
          76FFE6E1DCFF176B47FF5FD8B4FF83D5BDFF1E674CC60000000909201747439C
          7BFF95ECD6FF5ADFBAFF5EE2BDFF61E4BFFF64E6C1FF67E6C5FF67E8C7FF39A1
          7EFF1F6D4AFF288B64FF98EFD9FF4DAC8CFF1036286D00000004000000041C5F
          46B578C6ADFF9AEED9FF65E5C0FF64E7C3FF69E7C6FF6BE8C8FF6CE9C9FF6BEA
          C9FF5ED6B6FF97EDD7FF86D3BBFF237759D20102010C0000000100000001030A
          0718247B5BDA70C1A8FFB5F2E3FF98F0DAFF85EDD4FF75EBCEFF88EFD6FF9CF2
          DDFFBAF4E7FF78CDB3FF2A906DEA0615102E0000000200000000000000000000
          0001030A07171E694FB844AB87FF85D2BBFFA8E6D6FFC5F4EBFFABE9D8FF89D8
          C1FF4BB692FF237F60CB05130E27000000030000000000000000000000000000
          000000000001000000030A241B411B60489D258464CF2C9D77EE258867CF1F71
          56B00E3226560000000600000002000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000020000000C05031A46110852AB190C76E31D0E89FF1C0E89FF190C
          76E4120852AD06031B4D0000000E000000030000000000000000000000000000
          000301010519130A55A9211593FF2225AEFF2430C2FF2535CBFF2535CCFF2430
          C3FF2225AFFF211594FF140B58B20101051E0000000400000000000000020101
          03151C1270CD2522A6FF2D3DCCFF394BD3FF3445D1FF2939CDFF2839CDFF3344
          D0FF394AD4FF2D3CCDFF2523A8FF1C1270D20101051D00000003000000091912
          5BA72A27AAFF2F41D0FF3541C7FF2726ABFF3137BCFF384AD3FF384BD3FF3137
          BCFF2726ABFF3540C7FF2E40D0FF2927ACFF1A115EB10000000D08061C3D3129
          A2FD2C3CCCFF3842C6FF5F5DBDFFEDEDF8FF8B89CEFF3337B9FF3437B9FF8B89
          CEFFEDEDF8FF5F5DBDFF3741C6FF2B3ACDFF3028A4FF0907204A1E185F9F373B
          BCFF3042D0FF2621A5FFECE7ECFFF5EBE4FFF8F2EEFF9491D1FF9491D1FFF8F1
          EDFFF3E9E2FFECE6EBFF2621A5FF2E3FCFFF343ABEFF201A66B0312A92E03542
          CBFF3446D1FF2C2FB5FF8070ADFFEBDBD3FFF4EAE4FFF7F2EDFFF8F1EDFFF4E9
          E2FFEADAD1FF7F6FACFF2B2EB5FF3144D0FF3040CBFF312A95E53E37AEFA3648
          D0FF374AD3FF3A4ED5FF3234B4FF8A7FB9FFF6ECE7FFF5ECE6FFF4EBE5FFF6EB
          E5FF897DB8FF3233B4FF384BD3FF3547D2FF3446D1FF3E37AEFA453FB4FA4557
          D7FF3B50D5FF4C5FDAFF4343B7FF9189C7FFF7EFE9FFF6EEE9FFF6EFE8FFF7ED
          E8FF9087C5FF4242B7FF495DD8FF394CD4FF3F52D4FF443FB3FA403DA1DC5967
          DAFF5B6EDDFF4F4DBAFF8F89CAFFFBF6F4FFF7F1ECFFEDE1D9FFEDE0D9FFF7F0
          EAFFFAF5F2FF8F89CAFF4E4DB9FF576ADCFF5765D9FF403EA4E12E2D70987C85
          DDFF8798E8FF291D9BFFE5DADEFFF6EEEBFFEDDFDAFF816EA9FF816EA9FFEDDF
          D8FFF4ECE7FFE5D9DCFF291D9BFF8494E7FF7A81DDFF33317BAC111125356768
          D0FC9EACEDFF686FCEFF5646A1FFCCB6BCFF7A68A8FF4C4AB6FF4D4BB7FF7A68
          A8FFCBB5BCFF5646A1FF666DCCFF9BAAEEFF696CD0FD1212273F000000043B3B
          79977D84DFFFA5B6F1FF6D74D0FF2D219BFF5151B9FF8EA2ECFF8EA1ECFF5252
          BBFF2D219BFF6B72D0FFA2B3F0FF8086E0FF404183A700000008000000010303
          050C4E509DBC8087E2FFAEBDF3FFA3B6F1FF9DAFF0FF95A9EEFF95A8EEFF9BAD
          EFFFA2B3F0FFACBCF3FF838AE3FF4F52A0C10303051100000002000000000000
          000100000005323464797378D9F8929CEAFFA1AEEFFFB0BFF3FFB0BFF4FFA2AE
          EFFF939DE9FF7479DAF83234647D000000080000000200000000000000000000
          000000000000000000031213232D40437D935D61B5D07378DFFC7378DFFC5D61
          B5D040437D951212223000000004000000010000000000000000}
      end>
  end
  object sCharImageList1: TsCharImageList
    BlendColor = clOlive
    ShareImages = True
    EmbeddedFonts = <
      item
        FontName = 'FontAwesome'
        FontData = {}
      end>
    Items = <
      item
        ScalingFactor = 0.570000000000000100
        OffsetY = 1
        Char = 61525
        Color = clBlack
      end
      item
        Char = 61526
        Color = clWhite
      end
      item
        Char = 61528
        Color = clWhite
      end
      item
        ScalingFactor = 0.730000000000000000
        OffsetY = 2
        Char = 61442
        Color = 4210688
      end
      item
        ScalingFactor = 0.740000000000000000
        OffsetY = 5
        Char = 61508
        Color = clTeal
      end
      item
        ScalingFactor = 0.740000000000000000
        OffsetY = 5
        Char = 61510
        Color = clWhite
      end
      item
        ScalingFactor = 0.740000000000000000
        OffsetY = 5
        Char = 61525
        Color = clWhite
      end
      item
        ScalingFactor = 0.750000000000000000
        OffsetY = 4
        Char = 61525
      end
      item
        ScalingFactor = 0.750000000000000000
        OffsetY = 4
        Char = 61527
      end
      item
        ScalingFactor = 0.750000000000000000
        OffsetY = 4
        Char = 61528
      end
      item
        ScalingFactor = 0.750000000000000000
        OffsetY = 5
        AddedSize = 59
        Char = 61447
        AddedChar = 61525
        AddedFontName = 'FontAwesome'
        Color = clTeal
      end
      item
        ScalingFactor = 0.730000000000000000
        OffsetY = 4
        Char = 62025
        AddedChar = 61504
        AddedFontName = 'FontAwesome'
        Color = clWhite
      end
      item
        ScalingFactor = 0.740000000000000000
        OffsetY = 5
        Char = 61509
        Color = clWhite
      end
      item
        ScalingFactor = 0.740000000000000000
        OffsetY = 5
        Char = 61487
        Color = clWhite
      end
      item
        ScalingFactor = 0.740000000000000000
        OffsetY = 5
        Char = 61543
        Color = clWhite
      end
      item
        ScalingFactor = 0.740000000000000000
        OffsetY = 5
        Char = 61504
        Color = clWhite
      end
      item
        ScalingFactor = 0.740000000000000000
        OffsetY = 5
        Char = 61544
        Color = clWhite
      end
      item
        ScalingFactor = 0.740000000000000000
        OffsetY = 5
        Char = 61487
        Color = 8421440
      end
      item
        ScalingFactor = 0.740000000000000000
        OffsetY = 5
        Char = 61742
        AddedChar = 61504
        AddedFontName = 'FontAwesome'
        Color = clTeal
      end
      item
        ScalingFactor = 0.740000000000000000
        OffsetY = 5
        Char = 61447
        AddedChar = 61533
        AddedFontName = 'FontAwesome'
        Color = 8421440
      end
      item
        ScalingFactor = 0.740000000000000000
        OffsetY = 5
        Char = 61666
        Color = clTeal
      end
      item
        ScalingFactor = 0.740000000000000000
        OffsetY = 5
        Char = 61453
        Color = clTeal
      end>
    BlendingMode = bmAlways
    Left = 424
    Top = 184
    Bitmap = {
      494C010100000800080001000100FFFFFFFF0400FFFFFFFFFFFFFFFF424D7600
      0000000000007600000028000000040000000100000001000400000000000400
      0000000000000000000000000000000000000000000000008000008000000080
      8000800000008000800080800000C0C0C000808080000000FF0000FF000000FF
      FF00FF000000FF00FF00FFFF0000FFFFFF0000000000}
  end
  object ds_sprint: TDataSource
    DataSet = dm_PM.brw_pmboard
    Left = 737
    Top = 112
  end
  object ds_logs: TDataSource
    DataSet = dm_PM.brw_Logs
    Left = 930
    Top = 399
  end
  object PopupMenu1: TPopupMenu
    Left = 769
    Top = 112
    object ReassignWorker1: TMenuItem
      Caption = 'Reassign Worker'
    end
    object EditOPSheet1: TMenuItem
      Caption = 'Edit OP Sheet'
      OnClick = EditOPSheetExecute
    end
    object CancelOPSheet1: TMenuItem
      Caption = 'Cancel OP Sheet'
    end
  end
  object ds_pending: TDataSource
    DataSet = dm_PM.brw_Pending
    Left = 817
    Top = 112
  end
  object PopupMenu2: TPopupMenu
    Left = 873
    Top = 112
    object CreateLayout1: TMenuItem
      Caption = 'Create Layout'
    end
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 480
    Top = 184
  end
end
