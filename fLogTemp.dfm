object f_LogTemp: Tf_LogTemp
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'New Log'
  ClientHeight = 265
  ClientWidth = 353
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 14
  object Label9: TLabel
    Left = 164
    Top = 152
    Width = 41
    Height = 17
    Caption = 'JO Qty'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 353
    Height = 228
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
    ExplicitWidth = 380
    ExplicitHeight = 320
    object Label1: TLabel
      Left = 13
      Top = 45
      Width = 71
      Height = 17
      Caption = 'Client/Team'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 12
      Top = 72
      Width = 45
      Height = 17
      Caption = 'Worker'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 12
      Top = 99
      Width = 26
      Height = 17
      Caption = 'Role'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 13
      Top = 126
      Width = 39
      Height = 17
      Caption = 'Ouput'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 13
      Top = 152
      Width = 22
      Height = 17
      Caption = 'Qty'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label14: TLabel
      Left = 190
      Top = 153
      Width = 27
      Height = 17
      Caption = 'Cost'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 12
      Top = 14
      Width = 40
      Height = 17
      Caption = 'JO No.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cmb_jo: TcxDBLookupComboBox
      Left = 90
      Top = 13
      DataBinding.DataField = 'JONO'
      DataBinding.DataSource = ds_logs
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Properties.DropDownWidth = 200
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'JONO'
      Properties.ListColumns = <
        item
          Caption = 'JO NO.'
          FieldName = 'JONO'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = ds_jo
      Properties.OnValidate = cmb_joPropertiesValidate
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
      TabOrder = 0
      Width = 94
    end
    object cmb_client: TcxDBLookupComboBox
      Left = 90
      Top = 41
      DataBinding.DataField = 'CLIENTID'
      DataBinding.DataSource = ds_logs
      ParentFont = False
      Properties.ButtonGlyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0004000000150000002B00000033000000330000003400000035000000350000
        0036000000360000003600000030000000180000000500000000000000000000
        00141615149B34312FFF302C2BFF2A2826FF262322FF221F1EFF1D1B1AFF1917
        16FF151313FF100F0FFF0D0D0CFF040404A40000001800000000000000000000
        0024393534F8827A74FF554840FF493C37FF423731FF13100EFF100C0CFF2D23
        1FFF261C19FF211815FF1F1714FF0C0C0CFA0000002D00000000000000000000
        00243D3937F88B817BFF675B53FF564941FF2F2B29FF323182FF1A1A6CFF2523
        21FF302520FF281E1BFF221A17FF0F0E0DFB0000003100000000000000000000
        001C363330E0847B75FF7E7269FF63554CFF5E5B5AFF615FA1FF35357DFF5654
        53FF3D302BFF312622FF261E1BFF100E0EE90000002700000000000000000000
        000F242120A3706864FF988C86FF7A6D65FFBBB9B9FF5E5CA0FF4C4C8CFFB7B6
        B6FF463A34FF3C302AFF302B28FF0B0B0AB40000001700000000000000000000
        00040505043144403CEC807772FF958B84FFF7F7F7FF2A2984FF232371FFF5F5
        F5FF5E544FFF564F4CFF1F1E1CF2020202430000000600000000000000000000
        0000000000070303032D312D2BC64A4543FF74849DFF436296FF3C588DFF6370
        8BFF353230FF1B1919D10201013F0000000B0000000100000000000000000000
        000000000000000000040000001E202E41A76484AFFF7FA3C6FF4B83B4FF224B
        87FF0B152BB50000002B00000007000000000000000000000000000000000000
        00000000000000000000000000112A4467CCB0C1D8FF96CCECFF70AFD6FF4377
        AAFF0A1F4ACD0000001B00000000000000000000000000000000000000000000
        000000000000000000000001021E1A2F51F9E8EDF4FFA7DDF6FF84C2E5FF6099
        C3FF102F6BF10000033300000000000000000000000000000000000000000000
        00000000000000000000030B19800A1938FEE4E9F0FFCAEBFBFF96D3F1FF689F
        C6FF14346EF1000213A100000000000000000000000000000000000000000000
        00000000000000000000061126AE1F395BFF212D49FF687387FF97B7CBFF7297
        BDFF071235EB000216B400000000000000000000000000000000000000000000
        00000000000000000000061122921F375AFF233E61FF0C2041FF071432FF2C3E
        62FE030927FF0103138800000000000000000000000000000000000000000000
        0000000000000000000002050A280F2444F7264165FF2A476BFF223D60FF0612
        2FFC020715810000020E00000000000000000000000000000000000000000000
        0000000000000000000000000000040A144F07152DC1071633F304102AD90105
        0F58000000010000000000000000000000000000000000000000}
      Properties.CharCase = ecUpperCase
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          Caption = 'CLIENT NAME'
          FieldName = 'NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = ds_client
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
      TabOrder = 1
      Width = 239
    end
    object cmb_worker: TcxDBLookupComboBox
      Left = 90
      Top = 69
      DataBinding.DataField = 'WORKERID'
      DataBinding.DataSource = ds_logs
      ParentFont = False
      Properties.ButtonGlyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0004000000150000002B00000033000000330000003400000035000000350000
        0036000000360000003600000030000000180000000500000000000000000000
        00143D322A9B947C67FF9F5632FF984F2CFF8F4626FF823E1FFF773419FF6D2C
        13FF652710FF61240EFF533F2FFF1E1610A40000001800000000000000000000
        0024927B67F8F4F3F1FFA15733FFC88B66FFC3845EFFBE7D55FFB9764EFFB46F
        46FFB06841FF62250EFF9F9686FF4C3A2BFA0000002D00000000000000000000
        0024937C67F8F5F3F2FFB37B60FFA15733FF9A522EFF904928FF854021FF7A36
        1AFF6F2D14FF794834FFA49C8CFF513E30FB0000003100000000000000000000
        001C7B6856E0E7E0DBFFF1EFEDFF8B563AFFDCD7D1FFD5D0C8FFCDC8BFFFC6C0
        B4FF754328FFB6AEA1FF9E9384FF49392DE90000002700000000000000000000
        000F4C4035A3CABDB1FFFBFAF9FF915C40FFC3BCB4FF8D8176FF7D6F62FFA399
        8EFF7B482DFFBEB6AAFF988C7FFF2F261FB40000001700000000000000000000
        00040A0807318D7867ECDBD1CBFF966144FFA0988EFF8DB2C7FF6184A7FF7161
        54FF814F33FFC4BCB5FF68594CF2070604430000000600000000000000000000
        0000000000070706052D665647C69A6548FF687487FF335990FF2B4E87FF4449
        5DFF885538FF52453BD10504043F0000000B0000000100000000000000000000
        000000000000000000040000001E2B3647A76484AFFF7FA3C6FF4B83B4FF234B
        88FF151D32B50000002B00000007000000000000000000000000000000000000
        0000000000000000000000000011314E72C4B0C1D8FF96CCECFF70AFD6FF4377
        AAFF0A1F4ACD0000001B00000000000000000000000000000000000000000000
        000000000000000000000814224D325D90F74C6D9AFF244C82FF1F447BFF264E
        82FF12316AF8040B195600000000000000000000000000000000000000000000
        000000000000000000001E5488F8459EC5FF55C0E0FF58D1EFFF4BC6EAFF36A1
        CEFF2277ABFF113064F800000000000000000000000000000000000000000000
        00000000000000000000145687E87B98B9FF3A6D9EFF1E4D84FF1B477FFF1B54
        8AFF196196FF0F3463E900000000000000000000000000000000000000000000
        000000000000000000000A3E5E9BA0C1D6FFD3F4FCFF91DDF3FF53C2E6FF48B7
        DFFF5194BBFF0A27469D00000000000000000000000000000000000000000000
        00000000000000000000041B28414B7F9DDAA0C0D5FFE2EBF2FFE2EBF1FF9FBA
        CFFF4A6F8DDB04121F4100000000000000000000000000000000000000000000
        0000000000000000000000000000041B28410B3E5E9B0F5684E10F5380E10A35
        549B041522410000000000000000000000000000000000000000}
      Properties.CharCase = ecUpperCase
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          Caption = 'WORKER'
          FieldName = 'FULLNAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = ds_workers
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
      TabOrder = 2
      Width = 239
    end
    object cmb_role: TcxDBLookupComboBox
      Left = 90
      Top = 97
      DataBinding.DataField = 'ROLEID'
      DataBinding.DataSource = ds_logs
      ParentFont = False
      Properties.ButtonGlyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        00000000000000000000000000010000000401050A1C0510235206142C79030A
        1648000000130000000800000001000000000000000000000000000000000000
        000000000000000000030103071B0C244CAE11427FFF0D5694FF0C5E9CFF0E49
        88FF0F2E65E90510236F0000000E000000020000000000000000000000000000
        00000000000305112254133F78EF1087BBFF03B5E6FF02B4E8FF02A9E3FF03A0
        DDFF0590CFFF0D5492FE051023760000000E0000000100000000000000000000
        0002050F1D461F5B91FA36C5E8FF23D6FCFF10BBE7FF0B81B1FF0B699AFF058F
        C6FF02A9E6FF039AD8FF0E4582FB030914540000000700000000000000000103
        061319447AE966D4EDFF56E2FDFF35BBDFFF1E6492FF165281FF163262FF132B
        5AFF0973A8FF02A5E2FF077EBCFF0C2450CD0000001500000000000000010B24
        43865B99BFFF8FECFEFF72E8FDFF55E2FDFF3ADBFDFF23D5FCFF0FD0FCFF07A5
        D6FF0F4C7CFF049FD8FF039FDBFF103C79FD0104083400000003000102041748
        7FEEAEE9F6FFA8F2FEFF8FEEFEFF74E8FDFF56E2FDFF3CDCFCFF23D6FCFF0FD0
        FCFF02C9FBFF02B3E7FF03A5DFFF0D5594FF05102270000000070717294B4E7F
        ADFFA6CFDFFF5C83A3FF79B5CCFF87E0F3FF74E7FDFF56E2FDFF3ADBFCFF23D5
        FCFF0FD0FCFF02C9FBFF02B1E6FF0B66A3FF071733910000000A0D29488177A5
        C7FFC5EAF3FF7A9FB9FF4A6D91FF264571FF88E3F4FF70E8FDFF55E1FDFF3ADB
        FDFF23D6FCFF0FCFFBFF03B7EAFF0B6CA7FF081A37980000000A113760AB97C2
        DAFFD5FAFFFFD5FAFFFFCAF8FFFFBBF5FEFFA6F2FEFF8DEDFDFF6BDAF1FF173B
        68FF1D5B85FF1A85AFFF0FB6E2FF0C67A1FF0716308400000008143D6ABAA2CC
        E1FFD6FAFFFFD5FAFFFFD4FAFFFFC9F8FEFFB9F5FEFFA4F1FEFF8CEDFEFF6BDB
        F2FF40A8C9FF22769FFF1DA3CCFF125A94FF050F1F5D00000004133B65B179A7
        C9FF487CABFF37699FFF285C96FF3D6FA1FF6091B9FF98D3E6FFA5F1FEFF8CED
        FEFF72E8FDFF56E2FDFF33BEE1FF133E7BF90102041C000000010D2A497D0E2B
        4A810715243F040D162702070C1505101C330A203969123B6DCC3E72A4FF83CB
        E3FF8CEDFEFF71E6FCFF3897C2FF0D2A56BE0000000900000000000000000000
        00000000000000000000000000000000000000000000000000000612223F143B
        6BC76AABCDFF87E2F4FF255D95FF040E1B480000000300000000000000000000
        0000000000000000000000000000000000000000000000000000000000000001
        02030D2A4F965894BBFF0E2C55B1000000070000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000C284A950205091A000000010000000000000000}
      Properties.CharCase = ecUpperCase
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          Caption = 'ROLE'
          FieldName = 'TITLE'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = ds_role
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
      TabOrder = 3
      Width = 239
    end
    object cmb_output: TcxDBLookupComboBox
      Left = 90
      Top = 125
      DataBinding.DataField = 'OUTPUT'
      DataBinding.DataSource = ds_logs
      ParentFont = False
      Properties.ButtonGlyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000002B2B2B725D5D
        5DFF5A595AFF575657FF535353FF505050FF4D4D4DFF4A4949FF434242FF4242
        43FF404040FF3E3D3DFF3B3A3BFF393838FF363536FF17161772616161F8B1B1
        B1FFC7C7C7FFC7C7C7FFC7C7C7FFC7C7C7FFC7C7C7FF696996FF4F4F7BFFB0B0
        B0FFC4C4C4FFC7C7C7FFC7C7C7FFC7C7C7FFA8A8A8FF353435F8626162F3F4F4
        F4FFF9F9F9FFF7F7F7FFF4F4F4FFF2F2F2FF7E7EAEFF1E1E8CFF18187EFF5858
        85FFD7D7D7FFE7E7E7FFE5E5E5FFDEDEDEFFC0C0C0FF363436F35A5A5AD8E6E6
        E6FFFBFBFBFFF9F9F9FFF7F7F7FFF4F4F4FF262680FF3535BEFF2A2AA6FF1A1A
        6DFFD2D2D2FFE8E8E8FFE6E6E6FFE4E4E4FFB2B2B2FF323132D8505050BAD7D6
        D7FFFDFDFDFFFBFBFBFFF9F9F9FFF6F6F6FF55559CFF3232BAFF2C2DADFF3E3E
        7FFFD8D8D8FFE9E9E9FFE8E8E8FFE2E2E2FFA3A2A3FF2D2C2DBA4646469FC8C8
        C8FFFFFFFFFFFDFDFDFFFAFAFAFFF3F3F3FF8686B9FF2929A7FF2929A5FF6B6B
        9AFFDDDDDDFFE8E8E8FFE9E9E9FFDFDFDFFF959596FF2928299F3A3B3A81B8B8
        B9FFFFFFFFFFFCFCFCFFECECECFFB7B7B7FFA8A8C4FF222296FF212194FF9797
        B4FFAFAFAFFFD8D8D8FFE7E7E7FFDCDCDCFF888788FF2222228129282857A3A3
        A3FFFFFFFFFFF7F7F7FF949595FF555554FF6D6D84FF141484FF12127BFF7D7D
        94FF565757FF808080FFDBDBDBFFD9D9D9FF757475FF18181857090809127E7E
        7FFCFDFDFDFFEDEDEDFF484848FFE6E6E6FF59595CFF181865FF23237BFF6869
        6AFFD8D8D8FF404141FFC4C4C4FFCDCDCDFF555455FC05050512000000005353
        53AED3D3D4FFAFAFAEFF888888FFF5F5F5FFBDBEBDFF484848FF727272FFBEBE
        BEFFE7E7E7FF7F7F7FFF878888FF9C9B9CFF373637AE00000000000000001313
        13278B8B8CFC747473FFCECECEFFC3C3C3FF656565FFCBCBCBFFE2E2E2FF8989
        89FFBFBFBFFFC1C1C1FF5A5A5BFF5F5E5FFC0D0D0D2800000000000000000000
        00004646469560605FFFDFDFDFFF646463FFCCCCCCFFDEDEDEFFE2E2E2FFD9D9
        D9FF767776FFD5D5D5FF525252FF3030309B0000000100000000000000000000
        00000606060F5E5E5EE97C7E7DFF8D8D8DFFB4B4B4FFBDBDBDFFBCBCBCFFB3B3
        B3FF8F8F8FFF808080FF525252EB040404140000000100000000000000000000
        0000000000000505050C424242AB40404087575657BA5D5E5DCE5A5A5BCE5050
        50BA38383887444444AB0404040C000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      Properties.CharCase = ecUpperCase
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'DESCRIPTION'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = ds_output
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
      TabOrder = 4
      OnExit = cmb_outputExit
      Width = 239
    end
    object txt_qty: TcxDBTextEdit
      Left = 90
      Top = 153
      DataBinding.DataField = 'QTY'
      DataBinding.DataSource = ds_logs
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
      Width = 94
    end
    object txt_cost: TcxDBTextEdit
      Left = 223
      Top = 153
      DataBinding.DataField = 'COST'
      DataBinding.DataSource = ds_logs
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
      TabOrder = 6
      Width = 104
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 228
    Width = 353
    Height = 37
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitTop = 316
    ExplicitWidth = 380
    DesignSize = (
      353
      37)
    object Button1: TButton
      Left = 163
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Save'
      Default = True
      ModalResult = 1
      TabOrder = 0
    end
    object Button2: TButton
      Left = 254
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
  object ds_logs: TDataSource
    DataSet = dm_PM.qry_WorkLogs
    Left = 120
    Top = 200
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 48
    Top = 200
    PixelsPerInch = 96
    object header_style: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = 6570553
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      TextColor = 6570553
    end
  end
  object ds_client: TDataSource
    DataSet = dm_PM.brw_Client
    Left = 176
    Top = 200
  end
  object ds_workers: TDataSource
    DataSet = dm_PM.brw_Users
    Left = 224
    Top = 200
  end
  object ds_role: TDataSource
    DataSet = dm_PM.brw_roles
    Left = 256
    Top = 200
  end
  object ds_output: TDataSource
    DataSet = dm_PM.brw_JODetail
    Left = 288
    Top = 200
  end
  object ds_jo: TDataSource
    DataSet = dm_PM.brw_JO
    Left = 152
    Top = 200
  end
end
