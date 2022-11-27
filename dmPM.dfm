object dm_PM: Tdm_PM
  OldCreateOrder = False
  Height = 834
  Width = 841
  object dbConn: TFDConnection
    Params.Strings = (
      'Database=PM'
      'Port='
      'User_Name=rcadmin'
      'Password=rcadmin123'
      'DriverID=MySQL')
    LoginPrompt = False
    Left = 16
    Top = 40
  end
  object brw_JO: TFDQuery
    Connection = dbConn
    SQL.Strings = (
      'SELECT JO_HEADER.*, JO_CLIENTS.NAME AS CLIENT'
      'FROM JO_HEADER'
      'INNER JOIN JO_CLIENTS ON JO_CLIENTS.ID = JO_HEADER.CLIENTID'
      ''
      'ORDER BY JO_HEADER.ID DESC;')
    Left = 544
    Top = 16
    object brw_JOID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object brw_JOCLIENTID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CLIENTID'
      Origin = 'CLIENTID'
    end
    object brw_JOJONO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'JONO'
      Origin = 'JONO'
    end
    object brw_JOLOGDATE: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'LOGDATE'
      Origin = 'LOGDATE'
    end
    object brw_JODUEDATE: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DUEDATE'
      Origin = 'DUEDATE'
    end
    object brw_JOREMARKS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'REMARKS'
      Origin = 'REMARKS'
      Size = 500
    end
    object brw_JOSUMMARY: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SUMMARY'
      Origin = 'SUMMARY'
      Size = 500
    end
    object brw_JOGROSSAMNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'GROSSAMNT'
      Origin = 'GROSSAMNT'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object brw_JODISCPRCENT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'DISCPRCENT'
      Origin = 'DISCPRCENT'
      DisplayFormat = '#0.00'
    end
    object brw_JODISCOUNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'DISCOUNT'
      Origin = 'DISCOUNT'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object brw_JONETAMNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'NETAMNT'
      Origin = 'NETAMNT'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object brw_JOCREATEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDBYID'
      Origin = 'CREATEDBYID'
    end
    object brw_JOCREATEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDDATETIME'
      Origin = 'CREATEDDATETIME'
    end
    object brw_JOCANCELLED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLED'
      Origin = 'CANCELLED'
    end
    object brw_JODELETEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'DELETEDBYID'
      Origin = 'DELETEDBYID'
    end
    object brw_JODELETEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'DELETEDDATETIME'
      Origin = 'DELETEDDATETIME'
    end
    object brw_JOPOSTED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'POSTED'
      Origin = 'POSTED'
    end
    object brw_JOPOSTEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'POSTEDDATETIME'
      Origin = 'POSTEDDATETIME'
    end
    object brw_JOPAIDAMNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PAIDAMNT'
      Origin = 'PAIDAMNT'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object brw_JOBALAMNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'BALAMNT'
      Origin = 'BALAMNT'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object brw_JOCLOSED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'CLOSED'
      Origin = 'CLOSED'
    end
    object brw_JOCLIENT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLIENT'
      Origin = '`NAME`'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object brw_JORELEASED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'RELEASED'
      Origin = 'RELEASED'
    end
    object a: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'EXPORTEDDATETIME'
      Origin = 'EXPORTEDDATETIME'
    end
    object brw_JOLAYOUT: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'LAYOUT'
      Origin = 'LAYOUT'
    end
  end
  object qry_JO: TFDQuery
    CachedUpdates = True
    Connection = dbConn
    SQL.Strings = (
      'SELECT *'
      'FROM JO_HEADER'
      ''
      'ORDER BY ID;')
    Left = 320
    Top = 16
    object qry_JOID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qry_JOCLIENTID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CLIENTID'
      Origin = 'CLIENTID'
    end
    object qry_JOJONO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'JONO'
      Origin = 'JONO'
    end
    object qry_JOLOGDATE: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'LOGDATE'
      Origin = 'LOGDATE'
    end
    object qry_JODUEDATE: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DUEDATE'
      Origin = 'DUEDATE'
    end
    object qry_JOREMARKS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'REMARKS'
      Origin = 'REMARKS'
      Size = 500
    end
    object qry_JOGROSSAMNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'GROSSAMNT'
      Origin = 'GROSSAMNT'
      DisplayFormat = '###,###,##0.00'
    end
    object qry_JODISCPRCENT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'DISCPRCENT'
      Origin = 'DISCPRCENT'
    end
    object qry_JODISCOUNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'DISCOUNT'
      Origin = 'DISCOUNT'
      DisplayFormat = '###,###,##0.00'
    end
    object qry_JONETAMNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'NETAMNT'
      Origin = 'NETAMNT'
      DisplayFormat = '###,###,##0.00'
    end
    object qry_JOCREATEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDBYID'
      Origin = 'CREATEDBYID'
    end
    object qry_JOCREATEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDDATETIME'
      Origin = 'CREATEDDATETIME'
    end
    object qry_JOCANCELLED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLED'
      Origin = 'CANCELLED'
    end
    object qry_JODELETEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'DELETEDBYID'
      Origin = 'DELETEDBYID'
    end
    object qry_JODELETEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'DELETEDDATETIME'
      Origin = 'DELETEDDATETIME'
    end
    object qry_JOPOSTED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'POSTED'
      Origin = 'POSTED'
    end
    object qry_JOPAIDAMNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PAIDAMNT'
      Origin = 'PAIDAMNT'
    end
    object qry_JOBALAMNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'BALAMNT'
      Origin = 'BALAMNT'
    end
    object qry_JOCLOSED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'CLOSED'
      Origin = 'CLOSED'
    end
    object qry_JOPOSTEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'POSTEDDATETIME'
      Origin = 'POSTEDDATETIME'
    end
    object qry_JOSUMMARY: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SUMMARY'
      Origin = 'SUMMARY'
      Size = 500
    end
    object qry_JOLAYOUT: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'LAYOUT'
      Origin = 'LAYOUT'
    end
    object qry_JORELEASED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'RELEASED'
      Origin = 'RELEASED'
    end
    object qry_JOEXPORTEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'EXPORTEDDATETIME'
      Origin = 'EXPORTEDDATETIME'
    end
    object qry_JOOVERRIDE: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'OVERRIDE'
      Origin = 'OVERRIDE'
    end
    object qry_JOOVERRIDEBY: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'OVERRIDEBY'
      Origin = 'OVERRIDEBY'
    end
  end
  object brw_Client: TFDQuery
    Connection = dbConn
    SQL.Strings = (
      'SELECT ID, NAME, ADDRESS, CONTACTNO, EMAIL'
      'FROM JO_CLIENTS'
      ''
      'ORDER BY NAME;')
    Left = 600
    Top = 16
    object brw_ClientID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object brw_ClientNAME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NAME'
      Origin = '`NAME`'
      Size = 100
    end
    object brw_ClientADDRESS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ADDRESS'
      Origin = 'ADDRESS'
      Size = 100
    end
    object brw_ClientCONTACTNO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONTACTNO'
      Origin = 'CONTACTNO'
    end
    object brw_ClientEMAIL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 50
    end
  end
  object tb_JODetail: TFDMemTable
    Active = True
    OnCalcFields = tb_JODetailCalcFields
    FieldDefs = <
      item
        Name = 'SHIRTID'
        DataType = ftInteger
      end
      item
        Name = 'DESCRIPTION'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'FABRICID'
        DataType = ftInteger
      end
      item
        Name = 'FABRIC'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'QTY'
        DataType = ftInteger
      end
      item
        Name = 'FREE'
        DataType = ftInteger
      end
      item
        Name = 'COST'
        DataType = ftFloat
      end
      item
        Name = 'UNIT'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'REMARKS'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'ID'
        DataType = ftInteger
      end
      item
        Name = 'LAYOUT'
        DataType = ftString
        Size = 500
      end
      item
        Name = 'FILENAME'
        DataType = ftString
        Size = 200
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 192
    Top = 24
    object tb_JODetailSHIRTID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'SHIRTID'
      Origin = 'SHIRTID'
    end
    object tb_JODetailDESCRIPTION: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRIPTION'
      Origin = 'DESCRIPTION'
      Size = 50
    end
    object tb_JODetailFABRICID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'FABRICID'
      Origin = 'FABRICID'
    end
    object tb_JODetailFABRIC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FABRIC'
      Origin = 'FABRIC'
      Size = 50
    end
    object tb_JODetailQTY: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'QTY'
      Origin = 'QTY'
      DisplayFormat = '###,###,##0'
    end
    object tb_JODetailFREE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'FREE'
      Origin = 'FREE'
      DisplayFormat = '###,###,##0'
    end
    object tb_JODetailCOST: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COST'
      Origin = 'COST'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object tb_JODetailUNIT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UNIT'
      Origin = 'UNIT'
    end
    object tb_JODetailTOTALCOST: TFloatField
      AutoGenerateValue = arDefault
      FieldKind = fkCalculated
      FieldName = 'TOTALCOST'
      Origin = 'TOTALCOST'
      DisplayFormat = '###,###,##0.00'
      currency = True
      Calculated = True
    end
    object tb_JODetailREMARKS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'REMARKS'
      Origin = 'REMARKS'
      Size = 255
    end
    object tb_JODetailID: TIntegerField
      FieldName = 'ID'
    end
    object tb_JODetailLAYOUT: TStringField
      FieldName = 'LAYOUT'
      Size = 500
    end
    object tb_JODetailFILENAME: TStringField
      FieldName = 'FILENAME'
      Size = 200
    end
  end
  object qry_JODetail: TFDQuery
    CachedUpdates = True
    Connection = dbConn
    SQL.Strings = (
      'SELECT *'
      'FROM JO_DETAIL'
      ''
      'ORDER BY ID;')
    Left = 352
    Top = 16
    object qry_JODetailID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qry_JODetailHEADERID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'HEADERID'
      Origin = 'HEADERID'
    end
    object qry_JODetailSHIRTID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'SHIRTID'
      Origin = 'SHIRTID'
    end
    object qry_JODetailDESCRIPTION: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRIPTION'
      Origin = 'DESCRIPTION'
      Size = 50
    end
    object qry_JODetailFABRICID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'FABRICID'
      Origin = 'FABRICID'
    end
    object qry_JODetailFABRIC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FABRIC'
      Origin = 'FABRIC'
      Size = 50
    end
    object qry_JODetailSIZE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SIZE'
      Origin = 'SIZE'
      Size = 10
    end
    object qry_JODetailFIT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FIT'
      Origin = 'FIT'
      Size = 10
    end
    object qry_JODetailQTY: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'QTY'
      Origin = 'QTY'
    end
    object qry_JODetailFREE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'FREE'
      Origin = 'FREE'
    end
    object qry_JODetailCOST: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COST'
      Origin = 'COST'
    end
    object qry_JODetailUNIT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UNIT'
      Origin = 'UNIT'
    end
    object qry_JODetailTOTALCOST: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'TOTALCOST'
      Origin = 'TOTALCOST'
    end
    object qry_JODetailCANCELLED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLED'
      Origin = 'CANCELLED'
    end
    object qry_JODetailDELETEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'DELETEDBYID'
      Origin = 'DELETEDBYID'
    end
    object qry_JODetailDELETEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'DELETEDDATETIME'
      Origin = 'DELETEDDATETIME'
    end
    object qry_JODetailREMARKS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'REMARKS'
      Origin = 'REMARKS'
      Size = 255
    end
    object qry_JODetailLAYOUT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'LAYOUT'
      Origin = 'LAYOUT'
      Size = 500
    end
    object qry_JODetailFILENAME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FILENAME'
      Origin = 'FILENAME'
      Size = 200
    end
  end
  object brw_MaxJO: TFDQuery
    Connection = dbConn
    SQL.Strings = (
      'SELECT MAX(ID) AS ID'
      'FROM JO_HEADER'
      ''
      ';')
    Left = 640
    Top = 16
    object brw_MaxJOID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInKey]
      ReadOnly = True
    end
  end
  object brw_Garments: TFDQuery
    Connection = dbConn
    SQL.Strings = (
      
        'SELECT ID, CODE, DESCRIPTION, UNIT, FABRICID, ARTISTSHARE, PRINT' +
        'OPSHARE, HEATPRESSSHARE, CUTTERSHARE, TAILORSHARE'
      'FROM INV_GARMENTS'
      ''
      'ORDER BY DESCRIPTION;')
    Left = 680
    Top = 16
    object brw_GarmentsID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object brw_GarmentsCODE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODE'
      Origin = 'CODE'
      Size = 10
    end
    object brw_GarmentsDESCRIPTION: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRIPTION'
      Origin = 'DESCRIPTION'
      Size = 100
    end
    object brw_GarmentsUNIT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UNIT'
      Origin = 'UNIT'
    end
    object brw_GarmentsFABRICID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'FABRICID'
      Origin = 'FABRICID'
    end
    object brw_GarmentsARTISTSHARE: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ARTISTSHARE'
      Origin = 'ARTISTSHARE'
    end
    object brw_GarmentsPRINTOPSHARE: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PRINTOPSHARE'
      Origin = 'PRINTOPSHARE'
    end
    object brw_GarmentsHEATPRESSSHARE: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'HEATPRESSSHARE'
      Origin = 'HEATPRESSSHARE'
    end
    object brw_GarmentsCUTTERSHARE: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'CUTTERSHARE'
      Origin = 'CUTTERSHARE'
    end
    object brw_GarmentsTAILORSHARE: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'TAILORSHARE'
      Origin = 'TAILORSHARE'
    end
  end
  object brw_Fabrics: TFDQuery
    Connection = dbConn
    SQL.Strings = (
      'SELECT ID, DESCRIPTION'
      'FROM INV_FABRICS'
      ''
      'ORDER BY DESCRIPTION;')
    Left = 560
    Top = 64
    object brw_FabricsID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object brw_FabricsDESCRIPTION: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRIPTION'
      Origin = 'DESCRIPTION'
      Size = 100
    end
  end
  object brw_Unit: TFDQuery
    Connection = dbConn
    SQL.Strings = (
      'SELECT ID, DESCRIPTION'
      'FROM INV_UNIT'
      ''
      'ORDER BY DESCRIPTION;')
    Left = 592
    Top = 64
    object brw_UnitID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object brw_UnitDESCRIPTION: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRIPTION'
      Origin = 'DESCRIPTION'
    end
  end
  object brw_GarmentDesc: TFDQuery
    Connection = dbConn
    SQL.Strings = (
      'SELECT GAR.*, FAB.DESCRIPTION AS FABRIC'
      'FROM INV_GARMENTS GAR'
      'INNER JOIN INV_FABRICS FAB ON FAB.ID = GAR.FABRICID'
      ''
      'ORDER BY GAR.DESCRIPTION;')
    Left = 632
    Top = 64
    object brw_GarmentDescID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object brw_GarmentDescCODE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODE'
      Origin = 'CODE'
      Size = 10
    end
    object brw_GarmentDescDESCRIPTION: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRIPTION'
      Origin = 'DESCRIPTION'
      Size = 100
    end
    object brw_GarmentDescUNIT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UNIT'
      Origin = 'UNIT'
    end
    object brw_GarmentDescFABRICID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'FABRICID'
      Origin = 'FABRICID'
    end
    object brw_GarmentDescFABRIC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FABRIC'
      Origin = 'DESCRIPTION'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object brw_GarmentDescPRICE: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PRICE'
      Origin = 'PRICE'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object brw_GarmentDescUNITQTY: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'UNITQTY'
      Origin = 'UNITQTY'
    end
    object brw_GarmentDescARTISTSHARE: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ARTISTSHARE'
      Origin = 'ARTISTSHARE'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object brw_GarmentDescPRINTOPSHARE: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PRINTOPSHARE'
      Origin = 'PRINTOPSHARE'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object brw_GarmentDescHEATPRESSSHARE: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'HEATPRESSSHARE'
      Origin = 'HEATPRESSSHARE'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object brw_GarmentDescCUTTERSHARE: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'CUTTERSHARE'
      Origin = 'CUTTERSHARE'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object brw_GarmentDescTAILORSHARE: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'TAILORSHARE'
      Origin = 'TAILORSHARE'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
  end
  object brw_pmboard: TFDQuery
    OnCalcFields = brw_pmboardCalcFields
    Connection = dbConn
    SQL.Strings = (
      
        'SELECT PM_BOARD.*, JO_HEADER.ID AS HEADERID, JO_HEADER.RELEASED,' +
        ' JO_HEADER.EXPORTEDDATETIME, JO_HEADER.LOGDATE, EMP_REG.LASTNAME' +
        ', EMP_REG.FIRSTNAME, EMP_REG.MIDDLENAME'
      'FROM PM_BOARD'
      'INNER JOIN EMP_REG ON EMP_REG.ID = PM_BOARD.EMPID'
      'INNER JOIN JO_HEADER ON JO_HEADER.JONO = PM_BOARD.JONO'
      ''
      'ORDER BY PM_BOARD.ID DESC;')
    Left = 600
    Top = 120
    object brw_pmboardID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object brw_pmboardJONO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'JONO'
      Origin = 'JONO'
    end
    object brw_pmboardSTARTDATE: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'STARTDATE'
      Origin = 'STARTDATE'
    end
    object brw_pmboardDATEDUE: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'DATEDUE'
      Origin = 'DATEDUE'
    end
    object brw_pmboardSTATUS: TStringField
      AutoGenerateValue = arDefault
      FieldKind = fkCalculated
      FieldName = 'STATUS'
      Origin = '`STATUS`'
      Calculated = True
    end
    object brw_pmboardSPRINT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SPRINT'
      Origin = 'SPRINT'
      Size = 50
    end
    object brw_pmboardCANCELLED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLED'
      Origin = 'CANCELLED'
    end
    object brw_pmboardDELETEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'DELETEDBYID'
      Origin = 'DELETEDBYID'
    end
    object brw_pmboardDELETEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'DELETEDDATETIME'
      Origin = 'DELETEDDATETIME'
    end
    object brw_pmboardFINISHEDDATE: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'FINISHEDDATE'
      Origin = 'FINISHEDDATE'
    end
    object brw_pmboardLOGDATE: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'LOGDATE'
      Origin = 'LOGDATE'
      ProviderFlags = []
      ReadOnly = True
    end
    object brw_pmboardTOTALQTY: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'TOTALQTY'
      Calculated = True
    end
    object brw_pmboardJODESC: TStringField
      FieldKind = fkCalculated
      FieldName = 'JODESC'
      Size = 100
      Calculated = True
    end
    object brw_pmboardDETAILID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'DETAILID'
      Origin = 'DETAILID'
    end
    object brw_pmboardCREATEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDBYID'
      Origin = 'CREATEDBYID'
    end
    object brw_pmboardCREATEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDDATETIME'
      Origin = 'CREATEDDATETIME'
    end
    object brw_pmboardEMPNAME: TStringField
      FieldKind = fkCalculated
      FieldName = 'EMPNAME'
      Size = 50
      Calculated = True
    end
    object brw_pmboardLASTNAME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'LASTNAME'
      Origin = 'LASTNAME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object brw_pmboardFIRSTNAME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FIRSTNAME'
      Origin = 'FIRSTNAME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object brw_pmboardMIDDLENAME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MIDDLENAME'
      Origin = 'MIDDLENAME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object brw_pmboardLAYOUT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'LAYOUT'
      Origin = 'LAYOUT'
      Size = 500
    end
    object brw_pmboardDONE: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'DONE'
      Origin = 'DONE'
    end
    object brw_pmboardPAPERSIZE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PAPERSIZE'
      Origin = 'PAPERSIZE'
    end
    object brw_pmboardAGE: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'AGE'
      Calculated = True
    end
    object brw_pmboardFILENAME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FILENAME'
      Origin = 'FILENAME'
      Size = 200
    end
    object brw_pmboardDONEBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'DONEBYID'
      Origin = 'DONEBYID'
    end
    object brw_pmboardEXPORTEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'EXPORTEDDATETIME'
      Origin = 'EXPORTEDDATETIME'
      ProviderFlags = []
      ReadOnly = True
    end
    object brw_pmboardSTREXPORTEDDATETIME: TStringField
      FieldKind = fkCalculated
      FieldName = 'STREXPORTEDDATETIME'
      Calculated = True
    end
    object brw_pmboardRELEASED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'RELEASED'
      Origin = 'RELEASED'
      ProviderFlags = []
      ReadOnly = True
    end
    object brw_pmboardEMPID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'EMPID'
      Origin = 'EMPID'
    end
    object brw_pmboardROLEID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ROLEID'
      Origin = 'ROLEID'
    end
    object brw_pmboardHEADERID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'HEADERID'
      Origin = 'ID'
      ProviderFlags = []
      ReadOnly = True
    end
    object brw_pmboardDESCRIPTION: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRIPTION'
      Origin = 'DESCRIPTION'
      Size = 50
    end
    object brw_pmboardFABRICID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'FABRICID'
      Origin = 'FABRICID'
    end
    object brw_pmboardFABRIC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FABRIC'
      Origin = 'FABRIC'
      Size = 50
    end
    object brw_pmboardSIZE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SIZE'
      Origin = 'SIZE'
      Size = 10
    end
    object brw_pmboardFIT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FIT'
      Origin = 'FIT'
      Size = 10
    end
    object brw_pmboardQTY: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'QTY'
      Origin = 'QTY'
    end
    object brw_pmboardFREE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'FREE'
      Origin = 'FREE'
    end
    object brw_pmboardUNIT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UNIT'
      Origin = 'UNIT'
    end
    object brw_pmboardSHIRTID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'SHIRTID'
      Origin = 'SHIRTID'
    end
    object brw_pmboardREMARKS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'REMARKS'
      Origin = 'REMARKS'
      Size = 255
    end
    object brw_pmboardREMQTY: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'REMQTY'
      Origin = 'REMQTY'
    end
  end
  object brw_JODetail: TFDQuery
    Connection = dbConn
    SQL.Strings = (
      'SELECT JO_DETAIL.*, INV_GARMENTS.CODE'
      'FROM JO_DETAIL'
      'LEFT JOIN INV_GARMENTS ON JO_DETAIL.SHIRTID = INV_GARMENTS.ID'
      ''
      ';')
    Left = 720
    Top = 16
    object brw_JODetailID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object brw_JODetailHEADERID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'HEADERID'
      Origin = 'HEADERID'
    end
    object brw_JODetailSHIRTID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'SHIRTID'
      Origin = 'SHIRTID'
    end
    object brw_JODetailDESCRIPTION: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRIPTION'
      Origin = 'DESCRIPTION'
      Size = 50
    end
    object brw_JODetailFABRICID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'FABRICID'
      Origin = 'FABRICID'
    end
    object brw_JODetailFABRIC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FABRIC'
      Origin = 'FABRIC'
      Size = 50
    end
    object brw_JODetailSIZE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SIZE'
      Origin = 'SIZE'
      Size = 10
    end
    object brw_JODetailFIT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FIT'
      Origin = 'FIT'
      Size = 10
    end
    object brw_JODetailQTY: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'QTY'
      Origin = 'QTY'
    end
    object brw_JODetailFREE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'FREE'
      Origin = 'FREE'
    end
    object brw_JODetailCOST: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COST'
      Origin = 'COST'
    end
    object brw_JODetailUNIT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UNIT'
      Origin = 'UNIT'
    end
    object brw_JODetailTOTALCOST: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'TOTALCOST'
      Origin = 'TOTALCOST'
    end
    object brw_JODetailCANCELLED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLED'
      Origin = 'CANCELLED'
    end
    object brw_JODetailDELETEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'DELETEDBYID'
      Origin = 'DELETEDBYID'
    end
    object brw_JODetailDELETEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'DELETEDDATETIME'
      Origin = 'DELETEDDATETIME'
    end
    object brw_JODetailREMARKS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'REMARKS'
      Origin = 'REMARKS'
      Size = 255
    end
    object brw_JODetailCODE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODE'
      Origin = 'CODE'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
  end
  object qry_Client: TFDQuery
    CachedUpdates = True
    Connection = dbConn
    SQL.Strings = (
      'SELECT *'
      'FROM JO_CLIENTS'
      ''
      ';')
    Left = 392
    Top = 16
    object qry_ClientID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qry_ClientNAME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NAME'
      Origin = '`NAME`'
      Size = 100
    end
    object qry_ClientCONTACTNO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONTACTNO'
      Origin = 'CONTACTNO'
    end
    object qry_ClientADDRESS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ADDRESS'
      Origin = 'ADDRESS'
      Size = 100
    end
    object qry_ClientCANCELLED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLED'
      Origin = 'CANCELLED'
    end
    object qry_ClientDELETEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'DELETEDDATETIME'
      Origin = 'DELETEDDATETIME'
    end
    object qry_ClientDELETEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'DELETEDBYID'
      Origin = 'DELETEDBYID'
    end
    object qry_ClientCREATEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDBYID'
      Origin = 'CREATEDBYID'
    end
    object qry_ClientCREATEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDDATETIME'
      Origin = 'CREATEDDATETIME'
    end
    object qry_ClientEMAIL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 50
    end
  end
  object upd_jo: TFDQuery
    Connection = dbConn
    SQL.Strings = (
      'UPDATE JO_HEADER'
      'SET SUMMARY = '#39'test'#39
      'WHERE ID = 8'
      ';')
    Left = 16
    Top = 80
  end
  object qry_PB: TFDQuery
    CachedUpdates = True
    Connection = dbConn
    SQL.Strings = (
      'SELECT *'
      'FROM PM_BOARD'
      ''
      ';')
    Left = 440
    Top = 16
    object qry_PBID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qry_PBJONO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'JONO'
      Origin = 'JONO'
    end
    object qry_PBSTARTDATE: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'STARTDATE'
      Origin = 'STARTDATE'
    end
    object qry_PBDATEDUE: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'DATEDUE'
      Origin = 'DATEDUE'
    end
    object qry_PBFINISHEDDATE: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'FINISHEDDATE'
      Origin = 'FINISHEDDATE'
    end
    object qry_PBSPRINT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SPRINT'
      Origin = 'SPRINT'
      Size = 50
    end
    object qry_PBCANCELLED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLED'
      Origin = 'CANCELLED'
    end
    object qry_PBDELETEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'DELETEDBYID'
      Origin = 'DELETEDBYID'
    end
    object qry_PBDELETEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'DELETEDDATETIME'
      Origin = 'DELETEDDATETIME'
    end
    object qry_PBCREATEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDBYID'
      Origin = 'CREATEDBYID'
    end
    object qry_PBCREATEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDDATETIME'
      Origin = 'CREATEDDATETIME'
    end
    object qry_PBDETAILID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'DETAILID'
      Origin = 'DETAILID'
    end
    object qry_PBLAYOUT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'LAYOUT'
      Origin = 'LAYOUT'
      Size = 500
    end
    object qry_PBFILENAME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FILENAME'
      Origin = 'FILENAME'
      Size = 200
    end
    object qry_PBDONE: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'DONE'
      Origin = 'DONE'
    end
    object qry_PBPAPERSIZE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PAPERSIZE'
      Origin = 'PAPERSIZE'
    end
    object qry_PBDONEBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'DONEBYID'
      Origin = 'DONEBYID'
    end
    object qry_PBEMPID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'EMPID'
      Origin = 'EMPID'
    end
    object qry_PBROLEID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ROLEID'
      Origin = 'ROLEID'
    end
    object qry_PBSHIRTID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'SHIRTID'
      Origin = 'SHIRTID'
    end
    object qry_PBDESCRIPTION: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRIPTION'
      Origin = 'DESCRIPTION'
      Size = 50
    end
    object qry_PBFABRICID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'FABRICID'
      Origin = 'FABRICID'
    end
    object qry_PBFABRIC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FABRIC'
      Origin = 'FABRIC'
      Size = 50
    end
    object qry_PBSIZE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SIZE'
      Origin = 'SIZE'
      Size = 10
    end
    object qry_PBFIT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FIT'
      Origin = 'FIT'
      Size = 10
    end
    object qry_PBQTY: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'QTY'
      Origin = 'QTY'
    end
    object qry_PBFREE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'FREE'
      Origin = 'FREE'
    end
    object qry_PBUNIT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UNIT'
      Origin = 'UNIT'
    end
    object qry_PBREMARKS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'REMARKS'
      Origin = 'REMARKS'
      Size = 255
    end
    object qry_PBREMQTY: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'REMQTY'
      Origin = 'REMQTY'
    end
  end
  object tb_OPDetail: TFDMemTable
    OnCalcFields = tb_OPDetailCalcFields
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 224
    Top = 24
    object tb_OPDetailSIZE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SIZE'
      Origin = 'SIZE'
      Size = 10
    end
    object tb_OPDetailFIT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FIT'
      Origin = 'FIT'
      Size = 10
    end
    object tb_OPDetailQTY: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'QTY'
      Origin = 'QTY'
      DisplayFormat = '###,###,##0'
    end
    object tb_OPDetailFREE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'FREE'
      Origin = 'FREE'
      DisplayFormat = '###,###,##0'
    end
    object tb_OPDetailUNIT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UNIT'
      Origin = 'UNIT'
    end
    object tb_OPDetailREMARKS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'REMARKS'
      Origin = 'REMARKS'
      Size = 255
    end
    object tb_OPDetailID: TIntegerField
      FieldName = 'ID'
    end
    object tb_OPDetailSHIRT: TStringField
      FieldName = 'SHIRT'
      Size = 100
    end
    object tb_OPDetailFABRIC: TStringField
      FieldName = 'FABRIC'
      Size = 100
    end
    object tb_OPDetailDETAILID: TIntegerField
      FieldName = 'DETAILID'
    end
    object tb_OPDetailPAPERSIZE: TIntegerField
      FieldName = 'PAPERSIZE'
      DisplayFormat = '###,###,##0'
      EditFormat = '###,###,##0'
    end
    object tb_OPDetailCODE: TStringField
      FieldName = 'CODE'
      Size = 10
    end
    object tb_OPDetailTOTALQTY: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'TOTALQTY'
      Calculated = True
    end
    object tb_OPDetailEMPID: TIntegerField
      FieldName = 'EMPID'
    end
    object tb_OPDetailROLEID: TIntegerField
      FieldName = 'ROLEID'
    end
    object tb_OPDetailROLE: TStringField
      FieldName = 'ROLE'
      Size = 50
    end
    object tb_OPDetailSHIRTID: TIntegerField
      FieldName = 'SHIRTID'
    end
    object tb_OPDetailFABRICID: TIntegerField
      FieldName = 'FABRICID'
    end
  end
  object brw_Emp: TFDQuery
    OnCalcFields = brw_EmpCalcFields
    Connection = dbConn
    SQL.Strings = (
      'SELECT IDNO, ID, LASTNAME, FIRSTNAME, MIDDLENAME, ROLEID, USERID'
      'FROM EMP_REG'
      ''
      ';')
    Left = 672
    Top = 64
    object brw_EmpID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object brw_EmpLASTNAME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'LASTNAME'
      Origin = 'LASTNAME'
      Size = 100
    end
    object brw_EmpFIRSTNAME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FIRSTNAME'
      Origin = 'FIRSTNAME'
      Size = 100
    end
    object brw_EmpMIDDLENAME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MIDDLENAME'
      Origin = 'MIDDLENAME'
      Size = 100
    end
    object brw_EmpROLEID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ROLEID'
      Origin = 'ROLEID'
    end
    object brw_EmpEMPNAME: TStringField
      FieldKind = fkCalculated
      FieldName = 'EMPNAME'
      Size = 50
      Calculated = True
    end
    object brw_EmpIDNO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IDNO'
      Origin = 'IDNO'
      Size = 15
    end
    object brw_EmpUSERID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'USERID'
      Origin = 'USERID'
    end
  end
  object brw_PMDetail: TFDQuery
    Connection = dbConn
    SQL.Strings = (
      'SELECT *'
      'FROM PM_BOARD'
      ''
      'ORDER BY ID;')
    Left = 720
    Top = 64
    object brw_PMDetailID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object brw_PMDetailJONO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'JONO'
      Origin = 'JONO'
    end
    object brw_PMDetailDETAILID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'DETAILID'
      Origin = 'DETAILID'
    end
    object brw_PMDetailSTARTDATE: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'STARTDATE'
      Origin = 'STARTDATE'
    end
    object brw_PMDetailDATEDUE: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'DATEDUE'
      Origin = 'DATEDUE'
    end
    object brw_PMDetailLAYOUT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'LAYOUT'
      Origin = 'LAYOUT'
      Size = 500
    end
    object brw_PMDetailFINISHEDDATE: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'FINISHEDDATE'
      Origin = 'FINISHEDDATE'
    end
    object brw_PMDetailSPRINT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SPRINT'
      Origin = 'SPRINT'
      Size = 50
    end
    object brw_PMDetailCANCELLED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLED'
      Origin = 'CANCELLED'
    end
    object brw_PMDetailDELETEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'DELETEDBYID'
      Origin = 'DELETEDBYID'
    end
    object brw_PMDetailDELETEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'DELETEDDATETIME'
      Origin = 'DELETEDDATETIME'
    end
    object brw_PMDetailCREATEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDBYID'
      Origin = 'CREATEDBYID'
    end
    object brw_PMDetailCREATEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDDATETIME'
      Origin = 'CREATEDDATETIME'
    end
    object brw_PMDetailFILENAME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FILENAME'
      Origin = 'FILENAME'
      Size = 200
    end
    object brw_PMDetailDONE: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'DONE'
      Origin = 'DONE'
    end
    object brw_PMDetailPAPERSIZE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PAPERSIZE'
      Origin = 'PAPERSIZE'
    end
    object brw_PMDetailDONEBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'DONEBYID'
      Origin = 'DONEBYID'
    end
    object brw_PMDetailEMPID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'EMPID'
      Origin = 'EMPID'
    end
    object brw_PMDetailROLEID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ROLEID'
      Origin = 'ROLEID'
    end
    object brw_PMDetailDESCRIPTION: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRIPTION'
      Origin = 'DESCRIPTION'
      Size = 50
    end
    object brw_PMDetailFABRICID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'FABRICID'
      Origin = 'FABRICID'
    end
    object brw_PMDetailFABRIC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FABRIC'
      Origin = 'FABRIC'
      Size = 50
    end
    object brw_PMDetailSIZE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SIZE'
      Origin = 'SIZE'
      Size = 10
    end
    object brw_PMDetailFIT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FIT'
      Origin = 'FIT'
      Size = 10
    end
    object brw_PMDetailQTY: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'QTY'
      Origin = 'QTY'
    end
    object brw_PMDetailFREE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'FREE'
      Origin = 'FREE'
    end
    object brw_PMDetailSHIRTID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'SHIRTID'
      Origin = 'SHIRTID'
    end
    object brw_PMDetailUNIT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UNIT'
      Origin = 'UNIT'
    end
    object brw_PMDetailREMARKS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'REMARKS'
      Origin = 'REMARKS'
      Size = 255
    end
    object brw_PMDetailREMQTY: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'REMQTY'
      Origin = 'REMQTY'
    end
  end
  object tb_Log: TFDMemTable
    OnCalcFields = tb_LogCalcFields
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 192
    Top = 72
    object tb_LogID: TIntegerField
      FieldName = 'ID'
    end
    object tb_LogEMPID: TIntegerField
      FieldName = 'EMPID'
    end
    object tb_LogHEADERID: TIntegerField
      FieldName = 'HEADERID'
    end
    object tb_LogJONO: TIntegerField
      FieldName = 'JONO'
    end
    object tb_LogDETAILID: TIntegerField
      FieldName = 'DETAILID'
    end
    object tb_LogDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      Size = 50
    end
    object tb_LogFABRIC: TStringField
      FieldName = 'FABRIC'
      Size = 50
    end
    object tb_LogTOTALQTY: TIntegerField
      FieldName = 'TOTALQTY'
    end
    object tb_LogDONE: TIntegerField
      FieldName = 'DONE'
    end
    object tb_LogQTY: TIntegerField
      FieldName = 'QTY'
    end
    object tb_LogUNIT: TStringField
      FieldName = 'UNIT'
    end
    object tb_LogREMAINING: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'REMAINING'
      Calculated = True
    end
  end
  object brw_Logs: TFDQuery
    OnCalcFields = brw_LogsCalcFields
    Connection = dbConn
    SQL.Strings = (
      
        'SELECT PM_BOARD.SHIRTID, PM_BOARD.DESCRIPTION, PM_BOARD.FABRIC, ' +
        'PM_BOARD.SIZE, PM_BOARD.FIT, PM_BOARD.UNIT, PM_LOGS.*, EMP_REG.L' +
        'ASTNAME, EMP_REG.FIRSTNAME, EMP_REG.MIDDLENAME, PM_BOARD.ROLEID'
      'FROM PM_LOGS'
      'INNER JOIN EMP_REG ON EMP_REG.ID = PM_LOGS.EMPID'
      'INNER JOIN PM_BOARD ON PM_BOARD.ID = PM_LOGS.HEADERID'
      ''
      'ORDER BY PM_LOGS.LOGDATE DESC;')
    Left = 760
    Top = 64
    object brw_LogsID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object brw_LogsJONO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'JONO'
      Origin = 'JONO'
    end
    object brw_LogsHEADERID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'HEADERID'
      Origin = 'HEADERID'
    end
    object brw_LogsDETAILID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'DETAILID'
      Origin = 'DETAILID'
    end
    object brw_LogsEMPID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'EMPID'
      Origin = 'EMPID'
    end
    object brw_LogsQTY: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'QTY'
      Origin = 'QTY'
    end
    object brw_LogsTOTALQTY: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'TOTALQTY'
      Origin = 'TOTALQTY'
    end
    object brw_LogsDONE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'DONE'
      Origin = 'DONE'
    end
    object brw_LogsLOGDATE: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'LOGDATE'
      Origin = 'LOGDATE'
    end
    object brw_LogsCANCELLED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLED'
      Origin = 'CANCELLED'
    end
    object brw_LogsDELETEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'DELETEDBYID'
      Origin = 'DELETEDBYID'
    end
    object brw_LogsDELETEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'DELETEDDATETIME'
      Origin = 'DELETEDDATETIME'
    end
    object brw_LogsCREATEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDBYID'
      Origin = 'CREATEDBYID'
    end
    object brw_LogsCREATEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDDATETIME'
      Origin = 'CREATEDDATETIME'
    end
    object brw_LogsLASTNAME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'LASTNAME'
      Origin = 'LASTNAME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object brw_LogsFIRSTNAME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FIRSTNAME'
      Origin = 'FIRSTNAME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object brw_LogsMIDDLENAME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MIDDLENAME'
      Origin = 'MIDDLENAME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object brw_LogsREMAINING: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'REMAINING'
      Calculated = True
    end
    object brw_LogsEMPNAME: TStringField
      FieldKind = fkCalculated
      FieldName = 'EMPNAME'
      Size = 100
      Calculated = True
    end
    object brw_LogsSPRINT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SPRINT'
      Origin = 'SPRINT'
      Size = 50
    end
    object brw_LogsCOMMENT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COMMENT'
      Origin = 'COMMENT'
      Size = 200
    end
    object brw_LogsROLEID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ROLEID'
      Origin = 'ROLEID'
      ProviderFlags = []
      ReadOnly = True
    end
    object brw_LogsDESCRIPTION: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRIPTION'
      Origin = 'DESCRIPTION'
      Size = 50
    end
    object brw_LogsFABRIC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FABRIC'
      Origin = 'FABRIC'
      Size = 50
    end
    object brw_LogsSIZE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SIZE'
      Origin = 'SIZE'
      Size = 10
    end
    object brw_LogsFIT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FIT'
      Origin = 'FIT'
      Size = 10
    end
    object brw_LogsUNIT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UNIT'
      Origin = 'UNIT'
    end
    object brw_LogsSHIRTID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'SHIRTID'
      Origin = 'SHIRTID'
    end
  end
  object qry_Logs: TFDQuery
    OnCalcFields = qry_LogsCalcFields
    CachedUpdates = True
    Connection = dbConn
    SQL.Strings = (
      'SELECT *'
      'FROM PM_LOGS'
      ''
      ';')
    Left = 320
    Top = 64
    object qry_LogsID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qry_LogsJONO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'JONO'
      Origin = 'JONO'
    end
    object qry_LogsHEADERID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'HEADERID'
      Origin = 'HEADERID'
    end
    object qry_LogsDETAILID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'DETAILID'
      Origin = 'DETAILID'
    end
    object qry_LogsEMPID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'EMPID'
      Origin = 'EMPID'
    end
    object qry_LogsQTY: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'QTY'
      Origin = 'QTY'
    end
    object qry_LogsTOTALQTY: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'TOTALQTY'
      Origin = 'TOTALQTY'
    end
    object qry_LogsDONE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'DONE'
      Origin = 'DONE'
    end
    object qry_LogsLOGDATE: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'LOGDATE'
      Origin = 'LOGDATE'
    end
    object qry_LogsCANCELLED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLED'
      Origin = 'CANCELLED'
    end
    object qry_LogsDELETEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'DELETEDBYID'
      Origin = 'DELETEDBYID'
    end
    object qry_LogsDELETEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'DELETEDDATETIME'
      Origin = 'DELETEDDATETIME'
    end
    object qry_LogsCREATEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDBYID'
      Origin = 'CREATEDBYID'
    end
    object qry_LogsCREATEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDDATETIME'
      Origin = 'CREATEDDATETIME'
    end
    object qry_LogsREMAINING: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'REMAINING'
      Calculated = True
    end
    object qry_LogsCOMMENT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COMMENT'
      Origin = 'COMMENT'
      Size = 200
    end
    object qry_LogsSPRINT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SPRINT'
      Origin = 'SPRINT'
      Size = 50
    end
    object qry_LogsSHIRTID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'SHIRTID'
      Origin = 'SHIRTID'
    end
    object qry_LogsFIT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FIT'
      Origin = 'FIT'
      Size = 10
    end
    object qry_LogsSIZE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SIZE'
      Origin = 'SIZE'
      Size = 10
    end
  end
  object brw_LogDone: TFDQuery
    Connection = dbConn
    SQL.Strings = (
      'SELECT SUM(QTY) AS TOTAL'
      'FROM PM_LOGS'
      ''
      ';')
    Left = 560
    Top = 120
    object brw_LogDoneTOTAL: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      ProviderFlags = []
      ReadOnly = True
      Precision = 32
      Size = 0
    end
  end
  object brw_PMDone: TFDQuery
    OnCalcFields = brw_PMDoneCalcFields
    Connection = dbConn
    SQL.Strings = (
      
        'SELECT PM_BOARD.*, JO_HEADER.ID AS HEADERID, JO_HEADER.EXPORTEDD' +
        'ATETIME, JO_HEADER.LOGDATE'
      'FROM PM_BOARD'
      'INNER JOIN JO_HEADER ON JO_HEADER.JONO = PM_BOARD.JONO'
      ''
      'ORDER BY PM_BOARD.FINISHEDDATE DESC')
    Left = 632
    Top = 120
    object brw_PMDoneID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object brw_PMDoneJONO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'JONO'
      Origin = 'JONO'
    end
    object brw_PMDoneDETAILID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'DETAILID'
      Origin = 'DETAILID'
    end
    object brw_PMDoneSTARTDATE: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'STARTDATE'
      Origin = 'STARTDATE'
    end
    object brw_PMDoneDATEDUE: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'DATEDUE'
      Origin = 'DATEDUE'
    end
    object brw_PMDoneLAYOUT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'LAYOUT'
      Origin = 'LAYOUT'
      Size = 500
    end
    object brw_PMDoneFILENAME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FILENAME'
      Origin = 'FILENAME'
      Size = 200
    end
    object brw_PMDoneDONE: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'DONE'
      Origin = 'DONE'
    end
    object brw_PMDoneFINISHEDDATE: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'FINISHEDDATE'
      Origin = 'FINISHEDDATE'
    end
    object brw_PMDoneSTATUS: TStringField
      AutoGenerateValue = arDefault
      FieldKind = fkCalculated
      FieldName = 'STATUS'
      Origin = '`STATUS`'
      Calculated = True
    end
    object brw_PMDoneSPRINT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SPRINT'
      Origin = 'SPRINT'
      Size = 50
    end
    object brw_PMDoneCANCELLED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLED'
      Origin = 'CANCELLED'
    end
    object brw_PMDoneDELETEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'DELETEDBYID'
      Origin = 'DELETEDBYID'
    end
    object brw_PMDoneDELETEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'DELETEDDATETIME'
      Origin = 'DELETEDDATETIME'
    end
    object brw_PMDoneCREATEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDBYID'
      Origin = 'CREATEDBYID'
    end
    object brw_PMDoneCREATEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDDATETIME'
      Origin = 'CREATEDDATETIME'
    end
    object brw_PMDoneLOGDATE: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'LOGDATE'
      Origin = 'LOGDATE'
      ProviderFlags = []
      ReadOnly = True
    end
    object brw_PMDoneTOTALQTY: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'TOTALQTY'
      Calculated = True
    end
    object brw_PMDoneEMPNAME: TStringField
      FieldKind = fkCalculated
      FieldName = 'EMPNAME'
      Size = 100
      Calculated = True
    end
    object brw_PMDonePAPERSIZE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PAPERSIZE'
      Origin = 'PAPERSIZE'
    end
    object brw_PMDoneJODESC: TStringField
      FieldKind = fkCalculated
      FieldName = 'JODESC'
      Size = 100
      Calculated = True
    end
    object brw_PMDoneAGE: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'AGE'
      Calculated = True
    end
    object brw_PMDoneDONEBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'DONEBYID'
      Origin = 'DONEBYID'
    end
    object brw_PMDoneEXPORTEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'EXPORTEDDATETIME'
      Origin = 'EXPORTEDDATETIME'
      ProviderFlags = []
      ReadOnly = True
    end
    object brw_PMDoneSTREXPORTEDDATETIME: TStringField
      FieldKind = fkCalculated
      FieldName = 'STREXPORTEDDATETIME'
      Calculated = True
    end
    object brw_PMDoneEMPID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'EMPID'
      Origin = 'EMPID'
    end
    object brw_PMDoneROLEID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ROLEID'
      Origin = 'ROLEID'
    end
    object brw_PMDoneFABRICID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'FABRICID'
      Origin = 'FABRICID'
    end
    object brw_PMDoneDESCRIPTION: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRIPTION'
      Origin = 'DESCRIPTION'
      Size = 50
    end
    object brw_PMDoneFABRIC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FABRIC'
      Origin = 'FABRIC'
      Size = 50
    end
    object brw_PMDoneSIZE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SIZE'
      Origin = 'SIZE'
      Size = 10
    end
    object brw_PMDoneFIT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FIT'
      Origin = 'FIT'
      Size = 10
    end
    object brw_PMDoneQTY: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'QTY'
      Origin = 'QTY'
    end
    object brw_PMDoneFREE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'FREE'
      Origin = 'FREE'
    end
    object brw_PMDoneUNIT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UNIT'
      Origin = 'UNIT'
    end
    object brw_PMDoneSHIRTID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'SHIRTID'
      Origin = 'SHIRTID'
    end
    object brw_PMDoneREMARKS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'REMARKS'
      Origin = 'REMARKS'
      Size = 255
    end
    object brw_PMDoneHEADERID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'HEADERID'
      Origin = 'ID'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object brw_CountLogs: TFDQuery
    Connection = dbConn
    SQL.Strings = (
      'SELECT COUNT(ID) AS COUNT'
      'FROM PM_LOGS'
      ''
      ';')
    Left = 664
    Top = 120
    object brw_CountLogsCOUNT: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'COUNT'
      Origin = 'COUNT'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object qry_company: TFDQuery
    CachedUpdates = True
    Connection = dbConn
    SQL.Strings = (
      'SELECT *'
      'FROM SYS_COMPANY'
      ''
      ';')
    Left = 360
    Top = 64
    object qry_companyID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qry_companyNAME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NAME'
      Origin = '`NAME`'
      Size = 100
    end
    object qry_companyADDRESS1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ADDRESS1'
      Origin = 'ADDRESS1'
      Size = 100
    end
    object qry_companyADDRESS2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ADDRESS2'
      Origin = 'ADDRESS2'
      Size = 100
    end
    object qry_companyZIPCODE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ZIPCODE'
      Origin = 'ZIPCODE'
    end
    object qry_companyCONTACTNO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONTACTNO'
      Origin = 'CONTACTNO'
      Size = 100
    end
    object qry_companyEMAIL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 30
    end
    object qry_companyLOGO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'LOGO'
      Origin = 'LOGO'
      Size = 500
    end
    object qry_companyCREATEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDBYID'
      Origin = 'CREATEDBYID'
    end
    object qry_companyCREATEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDDATETIME'
      Origin = 'CREATEDDATETIME'
    end
  end
  object qry_MR: TFDQuery
    OnCalcFields = qry_MRCalcFields
    CachedUpdates = True
    Connection = dbConn
    SQL.Strings = (
      'SELECT *'
      'FROM REQ_HEADER'
      ''
      'ORDER BY ID;')
    Left = 400
    Top = 64
    object qry_MRID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qry_MRPMID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PMID'
      Origin = 'PMID'
    end
    object qry_MRSOURCE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SOURCE'
      Origin = '`SOURCE`'
      FixedChar = True
      Size = 1
    end
    object qry_MRJONO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'JONO'
      Origin = 'JONO'
    end
    object qry_MRREQBY: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'REQBY'
      Origin = 'REQBY'
    end
    object qry_MRREQDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'REQDATETIME'
      Origin = 'REQDATETIME'
      DisplayFormat = 'mm/dd/yyyy'
    end
    object qry_MRCANCELLED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLED'
      Origin = 'CANCELLED'
    end
    object qry_MRDELETEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'DELETEDBYID'
      Origin = 'DELETEDBYID'
    end
    object qry_MRDELETEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'DELETEDDATETIME'
      Origin = 'DELETEDDATETIME'
    end
    object qry_MRPOSTED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'POSTED'
      Origin = 'POSTED'
    end
    object qry_MRNOTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOTE'
      Origin = 'NOTE'
      Size = 500
    end
    object qry_MRJOID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'JOID'
      Origin = 'JOID'
    end
    object qry_MRTOTALCOST: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'TOTALCOST'
      Origin = 'TOTALCOST'
      DisplayFormat = '###,###,##0.00'
    end
    object qry_MRPOSTEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'POSTEDDATETIME'
      Origin = 'POSTEDDATETIME'
    end
    object qry_MRSOURCEDESEC: TStringField
      FieldKind = fkCalculated
      FieldName = 'SOURCEDESEC'
      Size = 50
      Calculated = True
    end
    object qry_MRREIMBURSED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'REIMBURSED'
      Origin = 'REIMBURSED'
    end
  end
  object brw_MR: TFDQuery
    OnCalcFields = brw_MRCalcFields
    Connection = dbConn
    SQL.Strings = (
      
        'SELECT REQ_HEADER.*, EMP_REG.LASTNAME, EMP_REG.FIRSTNAME, EMP_RE' +
        'G.MIDDLENAME'
      'FROM REQ_HEADER'
      'INNER JOIN EMP_REG ON EMP_REG.ID = REQ_HEADER.REQBY'
      ''
      'ORDER BY REQ_HEADER.ID DESC;')
    Left = 696
    Top = 120
    object brw_MRID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object brw_MRPMID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PMID'
      Origin = 'PMID'
    end
    object brw_MRSOURCE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SOURCE'
      Origin = '`SOURCE`'
      FixedChar = True
      Size = 1
    end
    object brw_MRJOID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'JOID'
      Origin = 'JOID'
    end
    object brw_MRJONO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'JONO'
      Origin = 'JONO'
    end
    object brw_MRREQBY: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'REQBY'
      Origin = 'REQBY'
    end
    object brw_MRREQDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'REQDATETIME'
      Origin = 'REQDATETIME'
    end
    object brw_MRCANCELLED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLED'
      Origin = 'CANCELLED'
    end
    object brw_MRDELETEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'DELETEDBYID'
      Origin = 'DELETEDBYID'
    end
    object brw_MRDELETEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'DELETEDDATETIME'
      Origin = 'DELETEDDATETIME'
    end
    object brw_MRPOSTED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'POSTED'
      Origin = 'POSTED'
    end
    object brw_MRNOTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOTE'
      Origin = 'NOTE'
      Size = 500
    end
    object brw_MRLASTNAME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'LASTNAME'
      Origin = 'LASTNAME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object brw_MRFIRSTNAME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FIRSTNAME'
      Origin = 'FIRSTNAME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object brw_MRMIDDLENAME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MIDDLENAME'
      Origin = 'MIDDLENAME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object brw_MREMPNAME: TStringField
      FieldKind = fkCalculated
      FieldName = 'EMPNAME'
      Size = 50
      Calculated = True
    end
    object brw_MRTOTALCOST: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'TOTALCOST'
      Origin = 'TOTALCOST'
      DisplayFormat = '###,###,##0.00'
    end
    object brw_MRPOSTEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'POSTEDDATETIME'
      Origin = 'POSTEDDATETIME'
      DisplayFormat = 'mm/dd/yyyy'
    end
    object brw_MRREIMBURSED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'REIMBURSED'
      Origin = 'REIMBURSED'
    end
  end
  object qry_MRDetails: TFDQuery
    CachedUpdates = True
    Connection = dbConn
    SQL.Strings = (
      'SELECT *'
      'FROM REQ_DETAIL'
      ''
      'ORDER BY ID;')
    Left = 440
    Top = 64
    object qry_MRDetailsHEADERID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'HEADERID'
      Origin = 'HEADERID'
    end
    object qry_MRDetailsITEMID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ITEMID'
      Origin = 'ITEMID'
    end
    object qry_MRDetailsITEMDESC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ITEMDESC'
      Origin = 'ITEMDESC'
      Size = 100
    end
    object qry_MRDetailsCOST: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COST'
      Origin = 'COST'
    end
    object qry_MRDetailsTOTALCOST: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'TOTALCOST'
      Origin = 'TOTALCOST'
    end
    object qry_MRDetailsUNIT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UNIT'
      Origin = 'UNIT'
    end
    object qry_MRDetailsCANCELLED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLED'
      Origin = 'CANCELLED'
    end
    object qry_MRDetailsDELETEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'DELETEDBYID'
      Origin = 'DELETEDBYID'
    end
    object qry_MRDetailsDELETEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'DELETEDDATETIME'
      Origin = 'DELETEDDATETIME'
    end
    object qry_MRDetailsOLDQTY: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'OLDQTY'
      Origin = 'OLDQTY'
    end
    object qry_MRDetailsQTY: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'QTY'
      Origin = 'QTY'
    end
    object qry_MRDetailsID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
  end
  object tb_MRDetails: TFDMemTable
    OnCalcFields = tb_MRDetailsCalcFields
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 232
    Top = 72
    object tb_MRDetailsITEMID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ITEMID'
      Origin = 'ITEMID'
    end
    object tb_MRDetailsITEMDESC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ITEMDESC'
      Origin = 'ITEMDESC'
      Size = 100
    end
    object tb_MRDetailsUNIT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UNIT'
      Origin = 'UNIT'
    end
    object tb_MRDetailsCANCELLED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLED'
      Origin = 'CANCELLED'
    end
    object tb_MRDetailsDELETEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'DELETEDBYID'
      Origin = 'DELETEDBYID'
    end
    object tb_MRDetailsDELETEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'DELETEDDATETIME'
      Origin = 'DELETEDDATETIME'
    end
    object tb_MRDetailsOLDQTY: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'OLDQTY'
      Origin = 'OLDQTY'
    end
    object tb_MRDetailsQTY: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'QTY'
      Origin = 'QTY'
    end
    object tb_MRDetailsCOST: TFloatField
      FieldName = 'COST'
      DisplayFormat = '###,###,##0.00'
    end
    object tb_MRDetailsID: TIntegerField
      FieldName = 'ID'
    end
    object tb_MRDetailsTOTALCOST: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TOTALCOST'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
  end
  object brw_items: TFDQuery
    OnCalcFields = brw_itemsCalcFields
    Connection = dbConn
    SQL.Strings = (
      'SELECT *'
      'FROM INV_ITEMS'
      ''
      'ORDER BY DESCRIPTION;')
    Left = 736
    Top = 120
    object brw_itemsID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object brw_itemsCODE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODE'
      Origin = 'CODE'
    end
    object brw_itemsDESCRIPTION: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRIPTION'
      Origin = 'DESCRIPTION'
      Size = 200
    end
    object brw_itemsITEMTYPE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ITEMTYPE'
      Origin = 'ITEMTYPE'
    end
    object brw_itemsPURCHASEUNIT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PURCHASEUNIT'
      Origin = 'PURCHASEUNIT'
    end
    object brw_itemsINVUNIT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'INVUNIT'
      Origin = 'INVUNIT'
    end
    object brw_itemsUNITQTY: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'UNITQTY'
      Origin = 'UNITQTY'
      DisplayFormat = '###,###,##0'
    end
    object brw_itemsSELLINGPRICE: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'SELLINGPRICE'
      Origin = 'SELLINGPRICE'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object brw_itemsCANCELLED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLED'
      Origin = 'CANCELLED'
    end
    object brw_itemsDELETEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'DELETEDBYID'
      Origin = 'DELETEDBYID'
    end
    object brw_itemsDELETEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'DELETEDDATETIME'
      Origin = 'DELETEDDATETIME'
    end
    object brw_itemsCREATEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDBYID'
      Origin = 'CREATEDBYID'
    end
    object brw_itemsCREATEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDDATETIME'
      Origin = 'CREATEDDATETIME'
    end
    object brw_itemsONHAND: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ONHAND'
      Origin = 'ONHAND'
      DisplayFormat = '##0.000'
    end
    object brw_itemsSALES: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'SALES'
      Origin = 'SALES'
    end
    object brw_itemsPURCHASE: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'PURCHASE'
      Origin = 'PURCHASE'
    end
    object brw_itemsMARKUP: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'MARKUP'
      Origin = 'MARKUP'
    end
    object brw_itemsMARKUPPERCENT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'MARKUPPERCENT'
      Origin = 'MARKUPPERCENT'
    end
    object brw_itemsPRICE: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PRICE'
      DisplayFormat = '###,###,##0.00'
      currency = True
      Calculated = True
    end
    object brw_itemsCOST: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COST'
      Origin = 'COST'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object brw_itemsMINQTY: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'MINQTY'
      Origin = 'MINQTY'
      DisplayFormat = '##0.000'
    end
    object brw_itemsTOTAL: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TOTAL'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      currency = True
      Calculated = True
    end
  end
  object brw_PMHeader: TFDQuery
    Connection = dbConn
    SQL.Strings = (
      'SELECT PM.JONO, PM.EMPID, PM.ROLEID, JO.EXPORTEDDATETIME'
      'FROM PM_BOARD PM'
      'INNER JOIN JO_HEADER JO ON JO.JONO = PM.JONO'
      ''
      'GROUP BY PM.JONO, PM.EMPID, PM.ROLEID, JO.EXPORTEDDATETIME'
      'ORDER BY PM.JONO DESC;')
    Left = 760
    Top = 17
    object brw_PMHeaderJONO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'JONO'
      Origin = 'JONO'
    end
    object brw_PMHeaderEXPORTEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'EXPORTEDDATETIME'
      Origin = 'EXPORTEDDATETIME'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = 'mm/dd/yyyy'
      EditMask = 'mm/dd/yyyy'
    end
    object brw_PMHeaderEMPID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'EMPID'
      Origin = 'EMPID'
    end
    object brw_PMHeaderROLEID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ROLEID'
      Origin = 'ROLEID'
    end
  end
  object del_MRDetails: TFDQuery
    Connection = dbConn
    SQL.Strings = (
      'UPDATE REQ_DETAIL'
      'SET CANCELLED = TRUE'
      'WHERE ID = 0'
      ';')
    Left = 64
    Top = 24
  end
  object qry_WorkersDetails: TFDQuery
    CachedUpdates = True
    Connection = dbConn
    SQL.Strings = (
      'SELECT *'
      'FROM JO_EMPDETAIL'
      ''
      'ORDER BY ID;')
    Left = 323
    Top = 114
    object qry_WorkersDetailsID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qry_WorkersDetailsROLEID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ROLEID'
      Origin = 'ROLEID'
    end
    object qry_WorkersDetailsEMPID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'EMPID'
      Origin = 'EMPID'
    end
    object qry_WorkersDetailsROLE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ROLE'
      Origin = 'ROLE'
      Size = 50
    end
    object qry_WorkersDetailsEMPNAME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EMPNAME'
      Origin = 'EMPNAME'
      Size = 100
    end
    object qry_WorkersDetailsHEADERID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'HEADERID'
      Origin = 'HEADERID'
    end
    object qry_WorkersDetailsCANCELLED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLED'
      Origin = 'CANCELLED'
    end
    object qry_WorkersDetailsDELETEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'DELETEDBYID'
      Origin = 'DELETEDBYID'
    end
    object qry_WorkersDetailsDELETEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'DELETEDDATETIME'
      Origin = 'DELETEDDATETIME'
    end
  end
  object brw_WorkerDetails: TFDQuery
    Connection = dbConn
    SQL.Strings = (
      'SELECT *'
      'FROM JO_EMPDETAIL'
      ''
      'ORDER BY ID;')
    Left = 560
    Top = 168
    object brw_WorkerDetailsID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object brw_WorkerDetailsROLEID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ROLEID'
      Origin = 'ROLEID'
    end
    object brw_WorkerDetailsEMPID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'EMPID'
      Origin = 'EMPID'
    end
    object brw_WorkerDetailsROLE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ROLE'
      Origin = 'ROLE'
      Size = 50
    end
    object brw_WorkerDetailsEMPNAME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EMPNAME'
      Origin = 'EMPNAME'
      Size = 100
    end
    object brw_WorkerDetailsHEADERID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'HEADERID'
      Origin = 'HEADERID'
    end
    object brw_WorkerDetailsCANCELLED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLED'
      Origin = 'CANCELLED'
    end
    object brw_WorkerDetailsDELETEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'DELETEDBYID'
      Origin = 'DELETEDBYID'
    end
    object brw_WorkerDetailsDELETEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'DELETEDDATETIME'
      Origin = 'DELETEDDATETIME'
    end
  end
  object tb_JOEmp: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 192
    Top = 128
    object tb_JOEmpROLEID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ROLEID'
      Origin = 'ROLEID'
    end
    object tb_JOEmpEMPID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'EMPID'
      Origin = 'EMPID'
    end
    object tb_JOEmpROLE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ROLE'
      Origin = 'ROLE'
      Size = 50
    end
    object tb_JOEmpEMPNAME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EMPNAME'
      Origin = 'EMPNAME'
      Size = 100
    end
    object tb_JOEmpID: TIntegerField
      FieldName = 'ID'
    end
  end
  object brw_EmpRoles: TFDQuery
    Connection = dbConn
    SQL.Strings = (
      'SELECT ID, TITLE'
      'FROM EMP_ROLE'
      ''
      'ORDER BY ID;')
    Left = 608
    Top = 168
    object brw_EmpRolesID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object brw_EmpRolesTITLE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TITLE'
      Origin = 'TITLE'
      Size = 50
    end
  end
  object del_JoEmp: TFDQuery
    Connection = dbConn
    SQL.Strings = (
      'UPDATE JO_EMPDETAIL'
      'SET CANCELLED = TRUE'
      ''
      ''
      'WHERE ID = 0'
      ';')
    Left = 64
    Top = 80
  end
  object del_JoDetails: TFDQuery
    Connection = dbConn
    SQL.Strings = (
      'UPDATE JO_DETAIL'
      'SET CANCELLED = TRUE'
      ''
      ''
      'WHERE ID = 0'
      ';')
    Left = 64
    Top = 120
  end
  object brw_Emp1: TFDQuery
    OnCalcFields = brw_Emp1CalcFields
    Connection = dbConn
    SQL.Strings = (
      'SELECT ID, LASTNAME, FIRSTNAME, MIDDLENAME, ROLEID'
      'FROM EMP_REG'
      ''
      ';')
    Left = 640
    Top = 168
    object brw_Emp1ID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object brw_Emp1LASTNAME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'LASTNAME'
      Origin = 'LASTNAME'
      Size = 100
    end
    object brw_Emp1FIRSTNAME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FIRSTNAME'
      Origin = 'FIRSTNAME'
      Size = 100
    end
    object brw_Emp1MIDDLENAME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MIDDLENAME'
      Origin = 'MIDDLENAME'
      Size = 100
    end
    object brw_Emp1ROLEID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ROLEID'
      Origin = 'ROLEID'
    end
    object brw_Emp1EMPNAME: TStringField
      FieldKind = fkCalculated
      FieldName = 'EMPNAME'
      Size = 50
      Calculated = True
    end
  end
  object qry_Users: TFDQuery
    CachedUpdates = True
    Connection = dbConn
    SQL.Strings = (
      'SELECT *'
      'FROM SYS_USERS'
      ''
      ';')
    Left = 363
    Top = 114
    object qry_UsersID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = 'ID'
    end
    object qry_UsersUSERNAME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'USERNAME'
      Origin = 'USERNAME'
      Size = 12
    end
    object qry_UsersPASSWORD: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PASSWORD'
      Origin = '`PASSWORD`'
      Size = 12
    end
    object qry_UsersLASTNAME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'LASTNAME'
      Origin = 'LASTNAME'
    end
    object qry_UsersFIRSTNAME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FIRSTNAME'
      Origin = 'FIRSTNAME'
    end
    object qry_UsersMIDDLENAME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MIDDLENAME'
      Origin = 'MIDDLENAME'
    end
    object qry_UsersCANCELLED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLED'
      Origin = 'CANCELLED'
    end
    object qry_UsersCREATEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDBYID'
      Origin = 'CREATEDBYID'
    end
    object qry_UsersCREATEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDDATETIME'
      Origin = 'CREATEDDATETIME'
    end
    object qry_UsersADMINISTRATOR: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'ADMINISTRATOR'
      Origin = 'ADMINISTRATOR'
    end
    object qry_UsersDELETEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'DELETEDBYID'
      Origin = 'DELETEDBYID'
    end
    object qry_UsersDELETEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'DELETEDDATETIME'
      Origin = 'DELETEDDATETIME'
    end
  end
  object brw_Users: TFDQuery
    OnCalcFields = brw_UsersCalcFields
    Connection = dbConn
    SQL.Strings = (
      'select *'
      'from sys_users'
      ''
      'order by lastname, firstname;')
    Left = 680
    Top = 168
    object brw_UsersID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = 'ID'
    end
    object brw_UsersUSERNAME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'USERNAME'
      Origin = 'USERNAME'
      Size = 12
    end
    object brw_UsersPASSWORD: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PASSWORD'
      Origin = '`PASSWORD`'
      Size = 12
    end
    object brw_UsersLASTNAME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'LASTNAME'
      Origin = 'LASTNAME'
    end
    object brw_UsersFIRSTNAME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FIRSTNAME'
      Origin = 'FIRSTNAME'
    end
    object brw_UsersMIDDLENAME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MIDDLENAME'
      Origin = 'MIDDLENAME'
    end
    object brw_UsersCANCELLED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLED'
      Origin = 'CANCELLED'
    end
    object brw_UsersCREATEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDBYID'
      Origin = 'CREATEDBYID'
    end
    object brw_UsersCREATEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDDATETIME'
      Origin = 'CREATEDDATETIME'
    end
    object brw_UsersADMINISTRATOR: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'ADMINISTRATOR'
      Origin = 'ADMINISTRATOR'
    end
    object brw_UsersDELETEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'DELETEDBYID'
      Origin = 'DELETEDBYID'
    end
    object brw_UsersDELETEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'DELETEDDATETIME'
      Origin = 'DELETEDDATETIME'
    end
    object brw_UsersFULLNAME: TStringField
      FieldKind = fkCalculated
      FieldName = 'FULLNAME'
      Size = 100
      Calculated = True
    end
  end
  object brw_Users1: TFDQuery
    Connection = dbConn
    SQL.Strings = (
      'SELECT *'
      'FROM SYS_USERS'
      ''
      'ORDER BY LASTNAME, FIRSTNAME;')
    Left = 720
    Top = 168
    object brw_Users1ID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object brw_Users1USERNAME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'USERNAME'
      Origin = 'USERNAME'
      Size = 12
    end
    object brw_Users1PASSWORD: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PASSWORD'
      Origin = '`PASSWORD`'
      Size = 12
    end
    object brw_Users1LASTNAME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'LASTNAME'
      Origin = 'LASTNAME'
    end
    object brw_Users1FIRSTNAME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FIRSTNAME'
      Origin = 'FIRSTNAME'
    end
    object brw_Users1MIDDLENAME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MIDDLENAME'
      Origin = 'MIDDLENAME'
    end
    object brw_Users1CANCELLED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLED'
      Origin = 'CANCELLED'
    end
    object brw_Users1CREATEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDBYID'
      Origin = 'CREATEDBYID'
    end
    object brw_Users1CREATEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDDATETIME'
      Origin = 'CREATEDDATETIME'
    end
    object brw_Users1ADMINISTRATOR: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'ADMINISTRATOR'
      Origin = 'ADMINISTRATOR'
    end
    object brw_Users1DELETEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'DELETEDBYID'
      Origin = 'DELETEDBYID'
    end
    object brw_Users1DELETEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'DELETEDDATETIME'
      Origin = 'DELETEDDATETIME'
    end
  end
  object qry_EmpReg: TFDQuery
    CachedUpdates = True
    Connection = dbConn
    SQL.Strings = (
      'SELECT *'
      'FROM EMP_REG'
      ''
      ';')
    Left = 400
    Top = 112
    object qry_EmpRegID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qry_EmpRegUSERID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'USERID'
      Origin = 'USERID'
    end
    object qry_EmpRegIDNO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IDNO'
      Origin = 'IDNO'
      Size = 15
    end
    object qry_EmpRegLASTNAME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'LASTNAME'
      Origin = 'LASTNAME'
      Size = 100
    end
    object qry_EmpRegFIRSTNAME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FIRSTNAME'
      Origin = 'FIRSTNAME'
      Size = 100
    end
    object qry_EmpRegMIDDLENAME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MIDDLENAME'
      Origin = 'MIDDLENAME'
      Size = 100
    end
    object qry_EmpRegCONTACTNO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONTACTNO'
      Origin = 'CONTACTNO'
      Size = 15
    end
    object qry_EmpRegEMAIL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 30
    end
    object qry_EmpRegROLEID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ROLEID'
      Origin = 'ROLEID'
    end
    object qry_EmpRegADDRESS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ADDRESS'
      Origin = 'ADDRESS'
      Size = 50
    end
    object qry_EmpRegSSS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'SSS'
      Origin = 'SSS'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      currency = True
    end
    object qry_EmpRegPAGIBIG: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PAGIBIG'
      Origin = 'PAGIBIG'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      currency = True
    end
    object qry_EmpRegPHILHEALTH: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PHILHEALTH'
      Origin = 'PHILHEALTH'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      currency = True
    end
    object qry_EmpRegRATE: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'RATE'
      Origin = 'RATE'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      currency = True
    end
    object qry_EmpRegCANCELLED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLED'
      Origin = 'CANCELLED'
    end
    object qry_EmpRegDELETEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'DELETEDBYID'
      Origin = 'DELETEDBYID'
    end
    object qry_EmpRegDELETEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'DELETEDDATETIME'
      Origin = 'DELETEDDATETIME'
    end
    object qry_EmpRegCREATEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDBYID'
      Origin = 'CREATEDBYID'
    end
    object qry_EmpRegCREATEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDDATETIME'
      Origin = 'CREATEDDATETIME'
    end
    object qry_EmpRegMODEOFCOMP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MODEOFCOMP'
      Origin = 'MODEOFCOMP'
      Size = 1
    end
    object qry_EmpRegFREQUENCY: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FREQUENCY'
      Origin = 'FREQUENCY'
    end
  end
  object brw_EmpReg: TFDQuery
    Connection = dbConn
    SQL.Strings = (
      'SELECT EMP_REG.*, EMP_ROLE.TITLE'
      'FROM EMP_REG'
      'INNER JOIN EMP_ROLE ON EMP_REG.ROLEID = EMP_ROLE.ID'
      ''
      'ORDER BY EMP_REG.LASTNAME;')
    Left = 560
    Top = 216
    object brw_EmpRegID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object brw_EmpRegUSERID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'USERID'
      Origin = 'USERID'
    end
    object brw_EmpRegIDNO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IDNO'
      Origin = 'IDNO'
      Size = 15
    end
    object brw_EmpRegLASTNAME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'LASTNAME'
      Origin = 'LASTNAME'
      Size = 100
    end
    object brw_EmpRegFIRSTNAME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FIRSTNAME'
      Origin = 'FIRSTNAME'
      Size = 100
    end
    object brw_EmpRegMIDDLENAME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MIDDLENAME'
      Origin = 'MIDDLENAME'
      Size = 100
    end
    object brw_EmpRegCONTACTNO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONTACTNO'
      Origin = 'CONTACTNO'
      Size = 15
    end
    object brw_EmpRegEMAIL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 30
    end
    object brw_EmpRegROLEID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ROLEID'
      Origin = 'ROLEID'
    end
    object brw_EmpRegADDRESS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ADDRESS'
      Origin = 'ADDRESS'
      Size = 50
    end
    object brw_EmpRegSSS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'SSS'
      Origin = 'SSS'
    end
    object brw_EmpRegPAGIBIG: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PAGIBIG'
      Origin = 'PAGIBIG'
    end
    object brw_EmpRegPHILHEALTH: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PHILHEALTH'
      Origin = 'PHILHEALTH'
    end
    object brw_EmpRegRATE: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'RATE'
      Origin = 'RATE'
    end
    object brw_EmpRegCANCELLED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLED'
      Origin = 'CANCELLED'
    end
    object brw_EmpRegDELETEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'DELETEDBYID'
      Origin = 'DELETEDBYID'
    end
    object brw_EmpRegDELETEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'DELETEDDATETIME'
      Origin = 'DELETEDDATETIME'
    end
    object brw_EmpRegCREATEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDBYID'
      Origin = 'CREATEDBYID'
    end
    object brw_EmpRegCREATEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDDATETIME'
      Origin = 'CREATEDDATETIME'
    end
    object brw_EmpRegTITLE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TITLE'
      Origin = 'TITLE'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object brw_EmpRegMODEOFCOMP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MODEOFCOMP'
      Origin = 'MODEOFCOMP'
      Size = 1
    end
    object brw_EmpRegFREQUENCY: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FREQUENCY'
      Origin = 'FREQUENCY'
    end
  end
  object brw_roles: TFDQuery
    Connection = dbConn
    SQL.Strings = (
      'SELECT *'
      'FROM EMP_ROLE'
      ''
      'ORDER BY TITLE;')
    Left = 592
    Top = 216
    object brw_rolesID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object brw_rolesTITLE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TITLE'
      Origin = 'TITLE'
      Size = 50
    end
    object brw_rolesCANCELLED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLED'
      Origin = 'CANCELLED'
    end
    object brw_rolesDELETEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'DELETEDBYID'
      Origin = 'DELETEDBYID'
    end
    object brw_rolesDELETEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'DELETEDDATETIME'
      Origin = 'DELETEDDATETIME'
    end
    object brw_rolesCREATEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDBYID'
      Origin = 'CREATEDBYID'
    end
    object brw_rolesCREATEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDDATETIME'
      Origin = 'CREATEDDATETIME'
    end
  end
  object qry_Fabric: TFDQuery
    CachedUpdates = True
    Connection = dbConn
    SQL.Strings = (
      'SELECT *'
      'FROM INV_FABRICS'
      ''
      ';')
    Left = 440
    Top = 112
    object qry_FabricID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qry_FabricDESCRIPTION: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRIPTION'
      Origin = 'DESCRIPTION'
      Size = 100
    end
    object qry_FabricCANCELLED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLED'
      Origin = 'CANCELLED'
    end
    object qry_FabricDELETEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'DELETEDBYID'
      Origin = 'DELETEDBYID'
    end
    object qry_FabricDELETEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'DELETEDDATETIME'
      Origin = 'DELETEDDATETIME'
    end
    object qry_FabricCREATEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDBYID'
      Origin = 'CREATEDBYID'
    end
    object qry_FabricCREATEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDDATETIME'
      Origin = 'CREATEDDATETIME'
    end
  end
  object qry_garments: TFDQuery
    CachedUpdates = True
    Connection = dbConn
    SQL.Strings = (
      'SELECT *'
      'FROM INV_GARMENTS'
      ''
      ';')
    Left = 320
    Top = 160
    object qry_garmentsID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qry_garmentsCODE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODE'
      Origin = 'CODE'
      Size = 10
    end
    object qry_garmentsFABRICID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'FABRICID'
      Origin = 'FABRICID'
    end
    object qry_garmentsDESCRIPTION: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRIPTION'
      Origin = 'DESCRIPTION'
      Size = 100
    end
    object qry_garmentsSPECIFICATIONS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SPECIFICATIONS'
      Origin = 'SPECIFICATIONS'
      Size = 200
    end
    object qry_garmentsUNIT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UNIT'
      Origin = 'UNIT'
    end
    object qry_garmentsPRICE: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PRICE'
      Origin = 'PRICE'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object qry_garmentsCANCELLED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLED'
      Origin = 'CANCELLED'
    end
    object qry_garmentsDELETEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'DELETEDBYID'
      Origin = 'DELETEDBYID'
    end
    object qry_garmentsDELETEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'DELETEDDATETIME'
      Origin = 'DELETEDDATETIME'
    end
    object qry_garmentsCREATEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDBYID'
      Origin = 'CREATEDBYID'
    end
    object qry_garmentsCREATEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDDATETIME'
      Origin = 'CREATEDDATETIME'
    end
    object qry_garmentsUNITQTY: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'UNITQTY'
      Origin = 'UNITQTY'
    end
    object qry_garmentsARTISTSHARE: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ARTISTSHARE'
      Origin = 'ARTISTSHARE'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object qry_garmentsPRINTOPSHARE: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PRINTOPSHARE'
      Origin = 'PRINTOPSHARE'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object qry_garmentsHEATPRESSSHARE: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'HEATPRESSSHARE'
      Origin = 'HEATPRESSSHARE'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object qry_garmentsCUTTERSHARE: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'CUTTERSHARE'
      Origin = 'CUTTERSHARE'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object qry_garmentsTAILORSHARE: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'TAILORSHARE'
      Origin = 'TAILORSHARE'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
  end
  object qry_Unit: TFDQuery
    CachedUpdates = True
    Connection = dbConn
    SQL.Strings = (
      'SELECT *'
      'FROM INV_UNIT'
      ''
      ';')
    Left = 360
    Top = 160
    object qry_UnitID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qry_UnitDESCRIPTION: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRIPTION'
      Origin = 'DESCRIPTION'
    end
    object qry_UnitCANCELLED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLED'
      Origin = 'CANCELLED'
    end
    object qry_UnitDELETEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'DELETEDBYID'
      Origin = 'DELETEDBYID'
    end
    object qry_UnitDELETEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'DELETEDDATETIME'
      Origin = 'DELETEDDATETIME'
    end
    object qry_UnitCREATEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDBYID'
      Origin = 'CREATEDBYID'
    end
    object qry_UnitCREATEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDDATETIME'
      Origin = 'CREATEDDATETIME'
    end
  end
  object qry_Items: TFDQuery
    OnCalcFields = qry_ItemsCalcFields
    CachedUpdates = True
    Connection = dbConn
    SQL.Strings = (
      'SELECT *'
      'FROM INV_ITEMS'
      ''
      ';')
    Left = 400
    Top = 160
    object qry_ItemsID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qry_ItemsCODE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODE'
      Origin = 'CODE'
    end
    object qry_ItemsDESCRIPTION: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRIPTION'
      Origin = 'DESCRIPTION'
      Size = 200
    end
    object qry_ItemsITEMTYPE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ITEMTYPE'
      Origin = 'ITEMTYPE'
    end
    object qry_ItemsPURCHASEUNIT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PURCHASEUNIT'
      Origin = 'PURCHASEUNIT'
    end
    object qry_ItemsINVUNIT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'INVUNIT'
      Origin = 'INVUNIT'
    end
    object qry_ItemsUNITQTY: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'UNITQTY'
      Origin = 'UNITQTY'
    end
    object qry_ItemsSELLINGPRICE: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'SELLINGPRICE'
      Origin = 'SELLINGPRICE'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object qry_ItemsSALES: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'SALES'
      Origin = 'SALES'
    end
    object qry_ItemsPURCHASE: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'PURCHASE'
      Origin = 'PURCHASE'
    end
    object qry_ItemsMARKUP: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'MARKUP'
      Origin = 'MARKUP'
    end
    object qry_ItemsMARKUPPERCENT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'MARKUPPERCENT'
      Origin = 'MARKUPPERCENT'
    end
    object qry_ItemsCANCELLED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLED'
      Origin = 'CANCELLED'
    end
    object qry_ItemsDELETEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'DELETEDBYID'
      Origin = 'DELETEDBYID'
    end
    object qry_ItemsDELETEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'DELETEDDATETIME'
      Origin = 'DELETEDDATETIME'
    end
    object qry_ItemsCREATEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDBYID'
      Origin = 'CREATEDBYID'
    end
    object qry_ItemsCREATEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDDATETIME'
      Origin = 'CREATEDDATETIME'
    end
    object qry_ItemsONHAND: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ONHAND'
      Origin = 'ONHAND'
    end
    object qry_ItemsPRICE: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PRICE'
      DisplayFormat = '###,###,##0.00'
      currency = True
      Calculated = True
    end
    object qry_ItemsCOST: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COST'
      Origin = 'COST'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object qry_ItemsMINQTY: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'MINQTY'
      Origin = 'MINQTY'
    end
  end
  object qry_inventory: TFDQuery
    OnCalcFields = qry_inventoryCalcFields
    CachedUpdates = True
    Connection = dbConn
    SQL.Strings = (
      'SELECT *'
      'FROM INV_INVENTORY'
      ''
      ';')
    Left = 440
    Top = 160
    object qry_inventoryID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qry_inventoryITEMID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ITEMID'
      Origin = 'ITEMID'
    end
    object qry_inventoryCLASSIFICATION: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLASSIFICATION'
      Origin = 'CLASSIFICATION'
      Size = 30
    end
    object qry_inventoryNOTES: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOTES'
      Origin = 'NOTES'
      Size = 500
    end
    object qry_inventoryCANCELLED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLED'
      Origin = 'CANCELLED'
    end
    object qry_inventoryCREATEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDBYID'
      Origin = 'CREATEDBYID'
    end
    object qry_inventoryCREATEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDDATETIME'
      Origin = 'CREATEDDATETIME'
    end
    object qry_inventoryDELETEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'DELETEDBYID'
      Origin = 'DELETEDBYID'
    end
    object qry_inventoryDELETEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'DELETEDDATETIME'
      Origin = 'DELETEDDATETIME'
    end
    object qry_inventoryADJCCALC: TFloatField
      FieldKind = fkCalculated
      FieldName = 'ADJCCALC'
      Calculated = True
    end
    object qry_inventoryFISCALYEAR: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'FISCALYEAR'
      Origin = 'FISCALYEAR'
    end
    object qry_inventoryONHAND: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ONHAND'
      Origin = 'ONHAND'
    end
    object qry_inventoryADJQTY: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'ADJQTY'
      Origin = 'ADJQTY'
    end
    object qry_inventoryNEWONHAND: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'NEWONHAND'
      Origin = 'NEWONHAND'
    end
  end
  object brw_InvDetail: TFDQuery
    OnCalcFields = brw_InvDetailCalcFields
    Connection = dbConn
    SQL.Strings = (
      
        'SELECT INV_DETAILS.*, SYS_USERS.LASTNAME, SYS_USERS.FIRSTNAME, S' +
        'YS_USERS.MIDDLENAME, INV_ITEMS.DESCRIPTION'
      'FROM INV_DETAILS'
      'LEFT JOIN SYS_USERS ON SYS_USERS.ID = INV_DETAILS.CREATEDBYID'
      'INNER JOIN INV_ITEMS ON INV_ITEMS.ID = INV_DETAILS.INVID'
      ''
      'ORDER BY INV_DETAILS.INVID, INV_DETAILS.CREATEDDATETIME;')
    Left = 640
    Top = 216
    object brw_InvDetailSOURCECALC: TStringField
      FieldKind = fkCalculated
      FieldName = 'SOURCECALC'
      Size = 50
      Calculated = True
    end
    object brw_InvDetailDATETIMECALC: TStringField
      DisplayWidth = 30
      FieldKind = fkCalculated
      FieldName = 'DATETIMECALC'
      Size = 30
      Calculated = True
    end
    object brw_InvDetailID: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object brw_InvDetailQTY: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'QTY'
      Origin = 'QTY'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object brw_InvDetailINVID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'INVID'
      Origin = 'INVID'
    end
    object brw_InvDetailSOURCE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SOURCE'
      Origin = '`SOURCE`'
      Size = 50
    end
    object brw_InvDetailSOURCEID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'SOURCEID'
      Origin = 'SOURCEID'
    end
    object brw_InvDetailHEADERID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'HEADERID'
      Origin = 'HEADERID'
    end
    object brw_InvDetailCREATEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDDATETIME'
      Origin = 'CREATEDDATETIME'
    end
    object brw_InvDetailCREATEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDBYID'
      Origin = 'CREATEDBYID'
    end
    object brw_InvDetailLASTNAME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'LASTNAME'
      Origin = 'LASTNAME'
      ProviderFlags = []
      ReadOnly = True
    end
    object brw_InvDetailFIRSTNAME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FIRSTNAME'
      Origin = 'FIRSTNAME'
      ProviderFlags = []
      ReadOnly = True
    end
    object brw_InvDetailMIDDLENAME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MIDDLENAME'
      Origin = 'MIDDLENAME'
      ProviderFlags = []
      ReadOnly = True
    end
    object brw_InvDetailCREATEDBYCALC: TStringField
      FieldKind = fkCalculated
      FieldName = 'CREATEDBYCALC'
      Size = 50
      Calculated = True
    end
    object brw_InvDetailNOTES: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOTES'
      Origin = 'NOTES'
      Size = 255
    end
    object brw_InvDetailFISCALYEAR: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'FISCALYEAR'
      Origin = 'FISCALYEAR'
    end
    object brw_InvDetailIN: TFloatField
      FieldKind = fkCalculated
      FieldName = 'IN'
      DisplayFormat = '##0.000'
      Calculated = True
    end
    object brw_InvDetailOUT: TFloatField
      FieldKind = fkCalculated
      FieldName = 'OUT'
      DisplayFormat = '##0.000'
      Calculated = True
    end
    object brw_InvDetailDESCRIPTION: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRIPTION'
      Origin = 'DESCRIPTION'
      ProviderFlags = []
      ReadOnly = True
      Size = 200
    end
  end
  object qry_CashReg: TFDQuery
    OnCalcFields = qry_CashRegCalcFields
    CachedUpdates = True
    Connection = dbConn
    SQL.Strings = (
      'SELECT *'
      'FROM CASH_HEADER'
      ''
      ';')
    Left = 320
    Top = 208
    object qry_CashRegID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qry_CashRegPAYMENTTYPE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PAYMENTTYPE'
      Origin = 'PAYMENTTYPE'
    end
    object qry_CashRegSOURCE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SOURCE'
      Origin = '`SOURCE`'
      Size = 10
    end
    object qry_CashRegREFID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'REFID'
      Origin = 'REFID'
    end
    object qry_CashRegCUSTOMER: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CUSTOMER'
      Origin = 'CUSTOMER'
      Size = 100
    end
    object qry_CashRegNOTES: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOTES'
      Origin = 'NOTES'
      Size = 500
    end
    object qry_CashRegDISCOUNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'DISCOUNT'
      Origin = 'DISCOUNT'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object qry_CashRegDISCPERCENT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'DISCPERCENT'
      Origin = 'DISCPERCENT'
    end
    object qry_CashRegGROSSAMNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'GROSSAMNT'
      Origin = 'GROSSAMNT'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object qry_CashRegNETAMNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'NETAMNT'
      Origin = 'NETAMNT'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object qry_CashRegBALAMNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'BALAMNT'
      Origin = 'BALAMNT'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object qry_CashRegCANCELLED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLED'
      Origin = 'CANCELLED'
    end
    object qry_CashRegCANCELLEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLEDBYID'
      Origin = 'CANCELLEDBYID'
    end
    object qry_CashRegCANCELLEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLEDDATETIME'
      Origin = 'CANCELLEDDATETIME'
    end
    object qry_CashRegCREATEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDBYID'
      Origin = 'CREATEDBYID'
    end
    object qry_CashRegCREATEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDDATETIME'
      Origin = 'CREATEDDATETIME'
    end
    object qry_CashRegCARDAMNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'CARDAMNT'
      Origin = 'CARDAMNT'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object qry_CashRegCASHAMNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'CASHAMNT'
      Origin = 'CASHAMNT'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object qry_CashRegCHECKAMNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'CHECKAMNT'
      Origin = 'CHECKAMNT'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object qry_CashRegCARDHOLDER: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CARDHOLDER'
      Origin = 'CARDHOLDER'
      Size = 50
    end
    object qry_CashRegCARDNO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CARDNO'
      Origin = 'CARDNO'
    end
    object qry_CashRegCARDBANK: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CARDBANK'
      Origin = 'CARDBANK'
      Size = 50
    end
    object qry_CashRegCHECKNO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CHECKNO'
      Origin = 'CHECKNO'
    end
    object qry_CashRegCHECKPAYEE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CHECKPAYEE'
      Origin = 'CHECKPAYEE'
      Size = 50
    end
    object qry_CashRegCHECKDATE: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'CHECKDATE'
      Origin = 'CHECKDATE'
    end
    object qry_CashRegCHECKBANK: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CHECKBANK'
      Origin = 'CHECKBANK'
      Size = 50
    end
    object qry_CashRegSALESDATE: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'SALESDATE'
      Origin = 'SALESDATE'
    end
    object qry_CashRegCARD: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'CARD'
      Origin = 'CARD'
    end
    object qry_CashRegCHECK: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'CHECK'
      Origin = '`CHECK`'
    end
    object qry_CashRegCASH: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'CASH'
      Origin = 'CASH'
    end
    object qry_CashRegTOTALAMNT: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TOTALAMNT'
      DisplayFormat = '###,###,##0.00'
      currency = True
      Calculated = True
    end
    object qry_CashRegCHANGEAMNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'CHANGEAMNT'
      Origin = 'CHANGEAMNT'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object qry_CashRegPOSDAYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'POSDAYID'
      Origin = 'POSDAYID'
    end
    object qry_CashRegDISBURSETYPE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DISBURSETYPE'
      Origin = 'DISBURSETYPE'
    end
    object qry_CashRegEXPENSETYPE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EXPENSETYPE'
      Origin = 'EXPENSETYPE'
      Size = 50
    end
    object qry_CashRegREPLENISHMENT: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'REPLENISHMENT'
      Origin = 'REPLENISHMENT'
    end
  end
  object brw_CashReg: TFDQuery
    OnCalcFields = brw_CashRegCalcFields
    Connection = dbConn
    SQL.Strings = (
      'SELECT *'
      'FROM CASH_HEADER'
      ''
      'ORDER BY ID DESC;')
    Left = 672
    Top = 216
    object brw_CashRegID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object brw_CashRegPAYMENTTYPE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PAYMENTTYPE'
      Origin = 'PAYMENTTYPE'
    end
    object brw_CashRegSOURCE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SOURCE'
      Origin = '`SOURCE`'
      Size = 10
    end
    object brw_CashRegREFID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'REFID'
      Origin = 'REFID'
    end
    object brw_CashRegCUSTOMER: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CUSTOMER'
      Origin = 'CUSTOMER'
      Size = 100
    end
    object brw_CashRegSALESDATE: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'SALESDATE'
      Origin = 'SALESDATE'
    end
    object brw_CashRegNOTES: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOTES'
      Origin = 'NOTES'
      Size = 500
    end
    object brw_CashRegDISCOUNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'DISCOUNT'
      Origin = 'DISCOUNT'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object brw_CashRegDISCPERCENT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'DISCPERCENT'
      Origin = 'DISCPERCENT'
      DisplayFormat = '#0.00'
    end
    object brw_CashRegGROSSAMNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'GROSSAMNT'
      Origin = 'GROSSAMNT'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object brw_CashRegNETAMNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'NETAMNT'
      Origin = 'NETAMNT'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object brw_CashRegBALAMNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'BALAMNT'
      Origin = 'BALAMNT'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object brw_CashRegCARD: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'CARD'
      Origin = 'CARD'
    end
    object brw_CashRegCHECK: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'CHECK'
      Origin = '`CHECK`'
    end
    object brw_CashRegCASH: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'CASH'
      Origin = 'CASH'
    end
    object brw_CashRegCASHAMNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'CASHAMNT'
      Origin = 'CASHAMNT'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object brw_CashRegCARDAMNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'CARDAMNT'
      Origin = 'CARDAMNT'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object brw_CashRegCHECKAMNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'CHECKAMNT'
      Origin = 'CHECKAMNT'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object brw_CashRegCARDHOLDER: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CARDHOLDER'
      Origin = 'CARDHOLDER'
      Size = 50
    end
    object brw_CashRegCARDNO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CARDNO'
      Origin = 'CARDNO'
    end
    object brw_CashRegCARDBANK: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CARDBANK'
      Origin = 'CARDBANK'
      Size = 50
    end
    object brw_CashRegCHECKNO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CHECKNO'
      Origin = 'CHECKNO'
    end
    object brw_CashRegCHECKPAYEE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CHECKPAYEE'
      Origin = 'CHECKPAYEE'
      Size = 50
    end
    object brw_CashRegCHECKDATE: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'CHECKDATE'
      Origin = 'CHECKDATE'
    end
    object brw_CashRegCHECKBANK: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CHECKBANK'
      Origin = 'CHECKBANK'
      Size = 50
    end
    object brw_CashRegCANCELLED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLED'
      Origin = 'CANCELLED'
    end
    object brw_CashRegCANCELLEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLEDBYID'
      Origin = 'CANCELLEDBYID'
    end
    object brw_CashRegCANCELLEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLEDDATETIME'
      Origin = 'CANCELLEDDATETIME'
    end
    object brw_CashRegCREATEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDBYID'
      Origin = 'CREATEDBYID'
    end
    object brw_CashRegCREATEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDDATETIME'
      Origin = 'CREATEDDATETIME'
    end
    object brw_CashRegCHANGEAMNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'CHANGEAMNT'
      Origin = 'CHANGEAMNT'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object brw_CashRegPAIDAMNT: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PAIDAMNT'
      DisplayFormat = '###,###,##0.00'
      currency = True
      Calculated = True
    end
    object brw_CashRegVOID: TStringField
      FieldKind = fkCalculated
      FieldName = 'VOID'
      Size = 1
      Calculated = True
    end
    object brw_CashRegPAYTPE: TStringField
      FieldKind = fkCalculated
      FieldName = 'PAYTPE'
      Calculated = True
    end
  end
  object qry_CashDetail: TFDQuery
    CachedUpdates = True
    Connection = dbConn
    SQL.Strings = (
      'SELECT *'
      'FROM CASH_DETAIL'
      ''
      ';')
    Left = 368
    Top = 208
    object qry_CashDetailID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qry_CashDetailHEADERID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'HEADERID'
      Origin = 'HEADERID'
    end
    object qry_CashDetailITEMID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ITEMID'
      Origin = 'ITEMID'
    end
    object qry_CashDetailDESCRIPTION: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRIPTION'
      Origin = 'DESCRIPTION'
      Size = 100
    end
    object qry_CashDetailQTY: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'QTY'
      Origin = 'QTY'
    end
    object qry_CashDetailPRICE: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PRICE'
      Origin = 'PRICE'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object qry_CashDetailAMOUNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'AMOUNT'
      Origin = 'AMOUNT'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object qry_CashDetailUNIT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UNIT'
      Origin = 'UNIT'
    end
    object qry_CashDetailGARMENTID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'GARMENTID'
      Origin = 'GARMENTID'
    end
    object qry_CashDetailCANCELLED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLED'
      Origin = 'CANCELLED'
    end
  end
  object tb_CashDetail: TFDMemTable
    OnCalcFields = tb_CashDetailCalcFields
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 192
    Top = 168
    object tb_CashDetailITEMID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ITEMID'
      Origin = 'ITEMID'
    end
    object tb_CashDetailDESCRIPTION: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRIPTION'
      Origin = 'DESCRIPTION'
      Size = 100
    end
    object tb_CashDetailQTY: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'QTY'
      Origin = 'QTY'
    end
    object tb_CashDetailPRICE: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PRICE'
      Origin = 'PRICE'
      DisplayFormat = '###,###,#0.00'
      currency = True
    end
    object tb_CashDetailAMOUNT: TFloatField
      AutoGenerateValue = arDefault
      FieldKind = fkCalculated
      FieldName = 'AMOUNT'
      Origin = 'AMOUNT'
      DisplayFormat = '###,###,#0.00'
      currency = True
      Calculated = True
    end
    object tb_CashDetailUNIT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UNIT'
      Origin = 'UNIT'
    end
    object tb_CashDetailGARMENTID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'GARMENTID'
      Origin = 'GARMENTID'
    end
    object tb_CashDetailID: TIntegerField
      FieldName = 'ID'
    end
    object tb_CashDetailONHAND: TFloatField
      FieldName = 'ONHAND'
      DisplayFormat = '##0.000'
    end
    object tb_CashDetailCODE: TStringField
      FieldName = 'CODE'
    end
    object tb_CashDetailITEMDESC: TStringField
      FieldKind = fkCalculated
      FieldName = 'ITEMDESC'
      Size = 100
      Calculated = True
    end
  end
  object brw_ItemCode: TFDQuery
    Connection = dbConn
    SQL.Strings = (
      'SELECT CODE, ID'
      'FROM INV_ITEMS'
      ''
      ';')
    Left = 704
    Top = 216
    object brw_ItemCodeCODE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODE'
      Origin = 'CODE'
    end
    object brw_ItemCodeID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
  end
  object brw_JOPaid: TFDQuery
    Connection = dbConn
    SQL.Strings = (
      
        'SELECT SUM(NETAMNT) AS NETAMNT, SUM(CASHAMNT) AS CASHAMNT, SUM(C' +
        'ARDAMNT) AS CARDAMNT, SUM(CHECKAMNT) AS CHECKAMNT, SUM(CHANGEAMN' +
        'T) AS CHANGEAMNT'
      'FROM CASH_HEADER'
      ''
      ';')
    Left = 736
    Top = 216
    object brw_JOPaidCHANGEAMNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'CHANGEAMNT'
      Origin = 'CHANGEAMNT'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object brw_JOPaidCASHAMNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'CASHAMNT'
      Origin = 'CASHAMNT'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object brw_JOPaidCARDAMNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'CARDAMNT'
      Origin = 'CARDAMNT'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object brw_JOPaidCHECKAMNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'CHECKAMNT'
      Origin = 'CHECKAMNT'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object brw_JOPaidNETAMNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'NETAMNT'
      Origin = 'NETAMNT'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
  end
  object brw_JOBalance: TFDQuery
    Connection = dbConn
    SQL.Strings = (
      'SELECT SUM(NETAMNT) AS NETAMNT'
      'FROM JO_HEADER'
      ''
      ';')
    Left = 560
    Top = 264
    object brw_JOBalanceNETAMNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'NETAMNT'
      Origin = 'NETAMNT'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
  end
  object brw_PO: TFDQuery
    Connection = dbConn
    SQL.Strings = (
      'SELECT *'
      'FROM PO_HEADER'
      ''
      'ORDER BY ID DESC;')
    Left = 600
    Top = 264
    object brw_POID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object brw_POVENDOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VENDOR'
      Origin = 'VENDOR'
      Size = 50
    end
    object brw_POVENDORID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'VENDORID'
      Origin = 'VENDORID'
    end
    object brw_PONOTES: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOTES'
      Origin = 'NOTES'
      Size = 255
    end
    object brw_POPODATE: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'PODATE'
      Origin = 'PODATE'
    end
    object brw_POPOSTED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'POSTED'
      Origin = 'POSTED'
    end
    object brw_POPOSTEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'POSTEDDATETIME'
      Origin = 'POSTEDDATETIME'
      DisplayFormat = 'mm/dd/yyyy'
    end
    object brw_POCANCELLED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLED'
      Origin = 'CANCELLED'
    end
    object brw_POCANCELLEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLEDDATETIME'
      Origin = 'CANCELLEDDATETIME'
    end
    object brw_POCANCELLEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLEDBYID'
      Origin = 'CANCELLEDBYID'
    end
    object brw_POCREATEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDBYID'
      Origin = 'CREATEDBYID'
    end
    object brw_POCREATEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDDATETIME'
      Origin = 'CREATEDDATETIME'
    end
    object brw_PONETAMOUNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'NETAMOUNT'
      Origin = 'NETAMOUNT'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
  end
  object qry_PO: TFDQuery
    CachedUpdates = True
    Connection = dbConn
    SQL.Strings = (
      'SELECT *'
      'FROM PO_HEADER'
      ''
      ';')
    Left = 408
    Top = 208
    object qry_POID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qry_POVENDOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VENDOR'
      Origin = 'VENDOR'
      Size = 50
    end
    object qry_POVENDORID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'VENDORID'
      Origin = 'VENDORID'
    end
    object qry_PONOTES: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOTES'
      Origin = 'NOTES'
      Size = 255
    end
    object qry_PONETAMOUNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'NETAMOUNT'
      Origin = 'NETAMOUNT'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object qry_POPODATE: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'PODATE'
      Origin = 'PODATE'
    end
    object qry_POPOSTED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'POSTED'
      Origin = 'POSTED'
    end
    object qry_POPOSTEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'POSTEDDATETIME'
      Origin = 'POSTEDDATETIME'
    end
    object qry_POCANCELLED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLED'
      Origin = 'CANCELLED'
    end
    object qry_POCANCELLEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLEDDATETIME'
      Origin = 'CANCELLEDDATETIME'
    end
    object qry_POCANCELLEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLEDBYID'
      Origin = 'CANCELLEDBYID'
    end
    object qry_POCREATEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDBYID'
      Origin = 'CREATEDBYID'
    end
    object qry_POCREATEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDDATETIME'
      Origin = 'CREATEDDATETIME'
    end
  end
  object qry_PODetail: TFDQuery
    CachedUpdates = True
    Connection = dbConn
    SQL.Strings = (
      'SELECT *'
      'FROM PO_DETAIL'
      ''
      ';')
    Left = 448
    Top = 208
    object qry_PODetailID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qry_PODetailHEADERID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'HEADERID'
      Origin = 'HEADERID'
    end
    object qry_PODetailITEMID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ITEMID'
      Origin = 'ITEMID'
    end
    object qry_PODetailDESCRIPTION: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRIPTION'
      Origin = 'DESCRIPTION'
      Size = 100
    end
    object qry_PODetailUNIT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UNIT'
      Origin = 'UNIT'
    end
    object qry_PODetailONHANDQTY: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ONHANDQTY'
      Origin = 'ONHANDQTY'
    end
    object qry_PODetailQTY: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'QTY'
      Origin = 'QTY'
    end
    object qry_PODetailCOST: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COST'
      Origin = 'COST'
    end
    object qry_PODetailAMOUNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'AMOUNT'
      Origin = 'AMOUNT'
    end
    object qry_PODetailOVERRIDE: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'OVERRIDE'
      Origin = 'OVERRIDE'
    end
    object qry_PODetailCANCELLED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLED'
      Origin = 'CANCELLED'
    end
    object qry_PODetailCANCELLEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLEDBYID'
      Origin = 'CANCELLEDBYID'
    end
    object qry_PODetailCANCELLEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLEDDATETIME'
      Origin = 'CANCELLEDDATETIME'
    end
  end
  object tb_PODetail: TFDMemTable
    OnCalcFields = tb_PODetailCalcFields
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 232
    Top = 128
    object tb_PODetailDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      Origin = 'DESCRIPTION'
      Size = 100
    end
    object tb_PODetailUNIT: TStringField
      FieldName = 'UNIT'
      Origin = 'UNIT'
    end
    object tb_PODetailONHANDQTY: TFloatField
      FieldName = 'ONHANDQTY'
      Origin = 'ONHANDQTY'
    end
    object tb_PODetailQTY: TFloatField
      FieldName = 'QTY'
      Origin = 'QTY'
    end
    object tb_PODetailCOST: TFloatField
      FieldName = 'COST'
      Origin = 'COST'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object tb_PODetailAMOUNT: TFloatField
      FieldKind = fkCalculated
      FieldName = 'AMOUNT'
      Origin = 'AMOUNT'
      DisplayFormat = '###,###,##0.00'
      currency = True
      Calculated = True
    end
    object tb_PODetailOVERRIDE: TBooleanField
      FieldName = 'OVERRIDE'
      Origin = 'OVERRIDE'
    end
    object tb_PODetailID: TIntegerField
      FieldName = 'ID'
    end
    object tb_PODetailHEADERID: TIntegerField
      FieldName = 'HEADERID'
    end
    object tb_PODetailITEMID: TIntegerField
      FieldName = 'ITEMID'
    end
  end
  object brw_Vendor: TFDQuery
    Connection = dbConn
    SQL.Strings = (
      'SELECT *'
      'FROM SYS_VENDOR'
      ''
      'ORDER BY VENDORNAME;')
    Left = 648
    Top = 264
    object brw_VendorID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object brw_VendorVENDORNAME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VENDORNAME'
      Origin = 'VENDORNAME'
      Size = 100
    end
    object brw_VendorCANCELLED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLED'
      Origin = 'CANCELLED'
    end
    object brw_VendorCANCELLEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLEDDATETIME'
      Origin = 'CANCELLEDDATETIME'
    end
    object brw_VendorCANCELLEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLEDBYID'
      Origin = 'CANCELLEDBYID'
    end
    object brw_VendorCREATEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDBYID'
      Origin = 'CREATEDBYID'
    end
    object brw_VendorCREATEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDDATETIME'
      Origin = 'CREATEDDATETIME'
    end
  end
  object del_PODetail: TFDQuery
    Connection = dbConn
    SQL.Strings = (
      'UPDATE PO_DETAIL'
      'SET CANCELLED = TRUE'
      'WHERE ID = 0'
      ';')
    Left = 64
    Top = 160
  end
  object brw_RR: TFDQuery
    Connection = dbConn
    SQL.Strings = (
      'SELECT *'
      'FROM IR_HEADER'
      ''
      'ORDER BY ID DESC;')
    Left = 680
    Top = 264
    object brw_RRID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object brw_RRVENDORID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'VENDORID'
      Origin = 'VENDORID'
    end
    object brw_RRVENDOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VENDOR'
      Origin = 'VENDOR'
      Size = 50
    end
    object brw_RRNOTES: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOTES'
      Origin = 'NOTES'
      Size = 255
    end
    object brw_RRIRDATE: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'IRDATE'
      Origin = 'IRDATE'
      DisplayFormat = 'mm/dd/yyyy'
    end
    object brw_RRPOSTED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'POSTED'
      Origin = 'POSTED'
    end
    object brw_RRPOSTEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'POSTEDDATETIME'
      Origin = 'POSTEDDATETIME'
      DisplayFormat = 'mm/dd/yyyy'
    end
    object brw_RRCANCELLED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLED'
      Origin = 'CANCELLED'
    end
    object brw_RRCANCELLEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLEDDATETIME'
      Origin = 'CANCELLEDDATETIME'
    end
    object brw_RRCANCELLEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLEDBYID'
      Origin = 'CANCELLEDBYID'
    end
    object brw_RRCREATEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDBYID'
      Origin = 'CREATEDBYID'
    end
    object brw_RRCREATEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDDATETIME'
      Origin = 'CREATEDDATETIME'
    end
    object brw_RRNETAMNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'NETAMNT'
      Origin = 'NETAMNT'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object brw_RRREFID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'REFID'
      Origin = 'REFID'
    end
    object brw_RRSOURCE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SOURCE'
      Origin = '`SOURCE`'
      Size = 10
    end
    object brw_RRINVOICE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'INVOICE'
      Origin = 'INVOICE'
    end
    object brw_RRGROSS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'GROSS'
      Origin = 'GROSS'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object brw_RRDISCOUNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'DISCOUNT'
      Origin = 'DISCOUNT'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object brw_RRCLOSED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'CLOSED'
      Origin = 'CLOSED'
    end
  end
  object qry_RR: TFDQuery
    CachedUpdates = True
    Connection = dbConn
    SQL.Strings = (
      'SELECT *'
      'FROM IR_HEADER'
      ''
      ';')
    Left = 320
    Top = 256
    object qry_RRID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qry_RRREFID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'REFID'
      Origin = 'REFID'
    end
    object qry_RRSOURCE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SOURCE'
      Origin = '`SOURCE`'
      Size = 10
    end
    object qry_RRVENDORID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'VENDORID'
      Origin = 'VENDORID'
    end
    object qry_RRVENDOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VENDOR'
      Origin = 'VENDOR'
      Size = 50
    end
    object qry_RRNOTES: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOTES'
      Origin = 'NOTES'
      Size = 255
    end
    object qry_RRNETAMNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'NETAMNT'
      Origin = 'NETAMNT'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object qry_RRIRDATE: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'IRDATE'
      Origin = 'IRDATE'
    end
    object qry_RRPOSTED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'POSTED'
      Origin = 'POSTED'
    end
    object qry_RRPOSTEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'POSTEDDATETIME'
      Origin = 'POSTEDDATETIME'
    end
    object qry_RRCANCELLED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLED'
      Origin = 'CANCELLED'
    end
    object qry_RRCANCELLEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLEDDATETIME'
      Origin = 'CANCELLEDDATETIME'
    end
    object qry_RRCANCELLEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLEDBYID'
      Origin = 'CANCELLEDBYID'
    end
    object qry_RRCREATEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDBYID'
      Origin = 'CREATEDBYID'
    end
    object qry_RRCREATEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDDATETIME'
      Origin = 'CREATEDDATETIME'
    end
    object qry_RRINVOICE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'INVOICE'
      Origin = 'INVOICE'
    end
    object qry_RRGROSS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'GROSS'
      Origin = 'GROSS'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object qry_RRDISCOUNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'DISCOUNT'
      Origin = 'DISCOUNT'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object qry_RRCLOSED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'CLOSED'
      Origin = 'CLOSED'
    end
  end
  object qry_RRDetail: TFDQuery
    CachedUpdates = True
    Connection = dbConn
    SQL.Strings = (
      'SELECT *'
      'FROM IR_DETAIL'
      ''
      ';')
    Left = 368
    Top = 256
    object qry_RRDetailID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qry_RRDetailHEADERID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'HEADERID'
      Origin = 'HEADERID'
    end
    object qry_RRDetailITEMID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ITEMID'
      Origin = 'ITEMID'
    end
    object qry_RRDetailDESCRIPTION: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRIPTION'
      Origin = 'DESCRIPTION'
      Size = 100
    end
    object qry_RRDetailUNIT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UNIT'
      Origin = 'UNIT'
    end
    object qry_RRDetailRCVDQTY: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'RCVDQTY'
      Origin = 'RCVDQTY'
    end
    object qry_RRDetailONHANDQTY: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ONHANDQTY'
      Origin = 'ONHANDQTY'
    end
    object qry_RRDetailQTY: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'QTY'
      Origin = 'QTY'
    end
    object qry_RRDetailCOST: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COST'
      Origin = 'COST'
    end
    object qry_RRDetailAMOUNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'AMOUNT'
      Origin = 'AMOUNT'
    end
    object qry_RRDetailOVERRIDE: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'OVERRIDE'
      Origin = 'OVERRIDE'
    end
    object qry_RRDetailCANCELLED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLED'
      Origin = 'CANCELLED'
    end
    object qry_RRDetailCANCELLEDYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLEDYID'
      Origin = 'CANCELLEDYID'
    end
    object qry_RRDetailCANCELLEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLEDDATETIME'
      Origin = 'CANCELLEDDATETIME'
    end
    object qry_RRDetailREQQTY: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'REQQTY'
      Origin = 'REQQTY'
    end
  end
  object tb_RRDetail: TFDMemTable
    OnCalcFields = tb_RRDetailCalcFields
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 232
    Top = 168
    object tb_RRDetailDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      Origin = 'DESCRIPTION'
      Size = 100
    end
    object tb_RRDetailUNIT: TStringField
      FieldName = 'UNIT'
      Origin = 'UNIT'
    end
    object tb_RRDetailONHANDQTY: TFloatField
      FieldName = 'ONHANDQTY'
      Origin = 'ONHANDQTY'
    end
    object tb_RRDetailQTY: TFloatField
      FieldName = 'QTY'
      Origin = 'QTY'
    end
    object tb_RRDetailCOST: TFloatField
      FieldName = 'COST'
      Origin = 'COST'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object tb_RRDetailAMOUNT: TFloatField
      FieldKind = fkCalculated
      FieldName = 'AMOUNT'
      Origin = 'AMOUNT'
      DisplayFormat = '###,###,##0.00'
      currency = True
      Calculated = True
    end
    object tb_RRDetailOVERRIDE: TBooleanField
      FieldName = 'OVERRIDE'
      Origin = 'OVERRIDE'
    end
    object tb_RRDetailID: TIntegerField
      FieldName = 'ID'
    end
    object tb_RRDetailHEADERID: TIntegerField
      FieldName = 'HEADERID'
    end
    object tb_RRDetailITEMID: TIntegerField
      FieldName = 'ITEMID'
    end
    object tb_RRDetailRCVDQTY: TFloatField
      FieldName = 'RCVDQTY'
    end
    object tb_RRDetailREQQTY: TFloatField
      FieldName = 'REQQTY'
    end
  end
  object del_RRDetail: TFDQuery
    Connection = dbConn
    SQL.Strings = (
      'UPDATE IR_DETAIL'
      'SET CANCELLED = TRUE'
      'WHERE ID = 0'
      ';')
    Left = 64
    Top = 208
  end
  object del_CashDetail: TFDQuery
    Connection = dbConn
    SQL.Strings = (
      'UPDATE CASH_DETAIL'
      'SET CANCELLED = TRUE'
      'WHERE ID = 0'
      ';')
    Left = 64
    Top = 248
  end
  object brw_Payment: TFDQuery
    Connection = dbConn
    SQL.Strings = (
      'SELECT *'
      'FROM PAYMENT_HEADER'
      ''
      'ORDER BY ID DESC;')
    Left = 712
    Top = 264
    object brw_PaymentID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object brw_PaymentVENDORID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'VENDORID'
      Origin = 'VENDORID'
    end
    object brw_PaymentORNO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ORNO'
      Origin = 'ORNO'
      Size = 12
    end
    object brw_PaymentNOTES: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOTES'
      Origin = 'NOTES'
      Size = 255
    end
    object brw_PaymentPAYDATE: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'PAYDATE'
      Origin = 'PAYDATE'
    end
    object brw_PaymentPOSTEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'POSTEDDATETIME'
      Origin = 'POSTEDDATETIME'
      DisplayFormat = 'mm/dd/yyyy'
    end
    object brw_PaymentPOSTED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'POSTED'
      Origin = 'POSTED'
    end
    object brw_PaymentCHECKDATE: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'CHECKDATE'
      Origin = 'CHECKDATE'
    end
    object brw_PaymentCHECKNO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CHECKNO'
      Origin = 'CHECKNO'
    end
    object brw_PaymentBANKID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'BANKID'
      Origin = 'BANKID'
    end
    object brw_PaymentPAYMENTMODE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PAYMENTMODE'
      Origin = 'PAYMENTMODE'
      Size = 10
    end
    object brw_PaymentNETAMNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'NETAMNT'
      Origin = 'NETAMNT'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object brw_PaymentCANCELLED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLED'
      Origin = 'CANCELLED'
    end
    object brw_PaymentCANCELLEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLEDDATETIME'
      Origin = 'CANCELLEDDATETIME'
    end
    object brw_PaymentCANCELLEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLEDBYID'
      Origin = 'CANCELLEDBYID'
    end
    object brw_PaymentCREATEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDBYID'
      Origin = 'CREATEDBYID'
    end
    object brw_PaymentCREATEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDDATETIME'
      Origin = 'CREATEDDATETIME'
    end
    object brw_PaymentVENDOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VENDOR'
      Origin = 'VENDOR'
      Size = 50
    end
    object brw_PaymentBANK: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANK'
      Origin = 'BANK'
      Size = 30
    end
  end
  object qry_Payment: TFDQuery
    CachedUpdates = True
    Connection = dbConn
    SQL.Strings = (
      'SELECT *'
      'FROM PAYMENT_HEADER'
      ''
      ';')
    Left = 408
    Top = 256
    object qry_PaymentID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qry_PaymentVENDORID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'VENDORID'
      Origin = 'VENDORID'
    end
    object qry_PaymentVENDOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VENDOR'
      Origin = 'VENDOR'
      Size = 50
    end
    object qry_PaymentORNO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ORNO'
      Origin = 'ORNO'
      Size = 12
    end
    object qry_PaymentNOTES: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOTES'
      Origin = 'NOTES'
      Size = 255
    end
    object qry_PaymentPAYDATE: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'PAYDATE'
      Origin = 'PAYDATE'
    end
    object qry_PaymentPOSTEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'POSTEDDATETIME'
      Origin = 'POSTEDDATETIME'
    end
    object qry_PaymentPOSTED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'POSTED'
      Origin = 'POSTED'
    end
    object qry_PaymentCHECKDATE: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'CHECKDATE'
      Origin = 'CHECKDATE'
    end
    object qry_PaymentCHECKNO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CHECKNO'
      Origin = 'CHECKNO'
    end
    object qry_PaymentBANKID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'BANKID'
      Origin = 'BANKID'
    end
    object qry_PaymentBANK: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANK'
      Origin = 'BANK'
      Size = 30
    end
    object qry_PaymentPAYMENTMODE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PAYMENTMODE'
      Origin = 'PAYMENTMODE'
      Size = 10
    end
    object qry_PaymentNETAMNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'NETAMNT'
      Origin = 'NETAMNT'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object qry_PaymentCANCELLED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLED'
      Origin = 'CANCELLED'
    end
    object qry_PaymentCANCELLEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLEDDATETIME'
      Origin = 'CANCELLEDDATETIME'
    end
    object qry_PaymentCANCELLEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLEDBYID'
      Origin = 'CANCELLEDBYID'
    end
    object qry_PaymentCREATEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDBYID'
      Origin = 'CREATEDBYID'
    end
    object qry_PaymentCREATEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDDATETIME'
      Origin = 'CREATEDDATETIME'
    end
  end
  object qry_PaymentDetail: TFDQuery
    CachedUpdates = True
    Connection = dbConn
    SQL.Strings = (
      'SELECT *'
      'FROM PAYMENT_DETAIL'
      ''
      ';')
    Left = 448
    Top = 256
    object qry_PaymentDetailID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qry_PaymentDetailHEADERID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'HEADERID'
      Origin = 'HEADERID'
    end
    object qry_PaymentDetailREFID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'REFID'
      Origin = 'REFID'
    end
    object qry_PaymentDetailINVOICE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'INVOICE'
      Origin = 'INVOICE'
    end
    object qry_PaymentDetailREFDATE: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'REFDATE'
      Origin = 'REFDATE'
    end
    object qry_PaymentDetailAMOUNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'AMOUNT'
      Origin = 'AMOUNT'
    end
    object qry_PaymentDetailPAIDAMNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PAIDAMNT'
      Origin = 'PAIDAMNT'
    end
    object qry_PaymentDetailNETAMOUNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'NETAMOUNT'
      Origin = 'NETAMOUNT'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object qry_PaymentDetailFP: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'FP'
      Origin = 'FP'
    end
    object qry_PaymentDetailCANCELLED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLED'
      Origin = 'CANCELLED'
    end
    object qry_PaymentDetailCANCELLEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLEDDATETIME'
      Origin = 'CANCELLEDDATETIME'
    end
    object qry_PaymentDetailBALANCE: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'BALANCE'
      Origin = 'BALANCE'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object qry_PaymentDetailCANCELLEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLEDBYID'
      Origin = 'CANCELLEDBYID'
    end
  end
  object tb_PaymentDetail: TFDMemTable
    OnCalcFields = tb_PaymentDetailCalcFields
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 192
    Top = 216
    object tb_PaymentDetailINVOICE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'INVOICE'
      Origin = 'INVOICE'
    end
    object tb_PaymentDetailREFDATE: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'REFDATE'
      Origin = 'REFDATE'
    end
    object tb_PaymentDetailAMOUNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'AMOUNT'
      Origin = 'AMOUNT'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object tb_PaymentDetailPAIDAMNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PAIDAMNT'
      Origin = 'PAIDAMNT'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object tb_PaymentDetailNETAMOUNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'NETAMOUNT'
      Origin = 'NETAMOUNT'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object tb_PaymentDetailFP: TBooleanField
      AutoGenerateValue = arDefault
      FieldKind = fkCalculated
      FieldName = 'FP'
      Origin = 'FP'
      Calculated = True
    end
    object tb_PaymentDetailID: TIntegerField
      FieldName = 'ID'
    end
    object tb_PaymentDetailREFID: TIntegerField
      FieldName = 'REFID'
    end
    object tb_PaymentDetailBALANCE: TFloatField
      FieldKind = fkCalculated
      FieldName = 'BALANCE'
      DisplayFormat = '###,###,##0.00'
      currency = True
      Calculated = True
    end
  end
  object brw_Bank: TFDQuery
    Connection = dbConn
    SQL.Strings = (
      'SELECT *'
      'FROM SYS_BANK'
      ''
      'ORDER BY TITLE;')
    Left = 752
    Top = 264
    object brw_BankID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object brw_BankTITLE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TITLE'
      Origin = 'TITLE'
      Size = 100
    end
    object brw_BankCANCELLED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLED'
      Origin = 'CANCELLED'
    end
    object brw_BankCANCELLEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLEDBYID'
      Origin = 'CANCELLEDBYID'
    end
    object brw_BankCANCELLEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLEDDATETIME'
      Origin = 'CANCELLEDDATETIME'
    end
    object brw_BankCREATEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDBYID'
      Origin = 'CREATEDBYID'
    end
    object brw_BankCREATEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDDATETIME'
      Origin = 'CREATEDDATETIME'
    end
    object brw_BankCHECKSERIESNO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CHECKSERIESNO'
      Origin = 'CHECKSERIESNO'
    end
  end
  object brw_PaidPO: TFDQuery
    Connection = dbConn
    SQL.Strings = (
      'SELECT SUM(PAYMENT_DETAIL.NETAMOUNT) AS PAIDAMNT'
      'FROM PAYMENT_DETAIL'
      
        'INNER JOIN PAYMENT_HEADER ON PAYMENT_HEADER.ID = PAYMENT_DETAIL.' +
        'HEADERID'
      'INNER JOIN IR_HEADER ON IR_HEADER.ID = PAYMENT_DETAIL.REFID'
      ''
      ';')
    Left = 560
    Top = 304
    object brw_PaidPOPAIDAMNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PAIDAMNT'
      Origin = 'PAIDAMNT'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
  end
  object del_PaymentDetail: TFDQuery
    Connection = dbConn
    SQL.Strings = (
      'UPDATE PAYMENT_DETAIL'
      'SET CANCELLED = TRUE'
      'WHERE ID = 0'
      ';')
    Left = 64
    Top = 296
  end
  object brw_PaidVoucher: TFDQuery
    Connection = dbConn
    SQL.Strings = (
      'SELECT ID, BANKID, CHECKNO, CHECKDATE'
      'FROM PAYMENT_HEADER'
      ''
      ';')
    Left = 600
    Top = 304
    object brw_PaidVoucherID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object brw_PaidVoucherBANKID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'BANKID'
      Origin = 'BANKID'
    end
    object brw_PaidVoucherCHECKNO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CHECKNO'
      Origin = 'CHECKNO'
    end
    object brw_PaidVoucherCHECKDATE: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'CHECKDATE'
      Origin = 'CHECKDATE'
    end
  end
  object brw_PettyCash: TFDQuery
    Connection = dbConn
    SQL.Strings = (
      'SELECT *'
      'FROM PETTY_HEADER'
      ''
      'ORDER BY ID DESC;')
    Left = 648
    Top = 304
    object brw_PettyCashID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object brw_PettyCashNOTES: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOTES'
      Origin = 'NOTES'
      Size = 255
    end
    object brw_PettyCashPAYDATE: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'PAYDATE'
      Origin = 'PAYDATE'
    end
    object brw_PettyCashPOSTED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'POSTED'
      Origin = 'POSTED'
    end
    object brw_PettyCashPOSTEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'POSTEDDATETIME'
      Origin = 'POSTEDDATETIME'
      DisplayFormat = 'mm/dd/yyyy'
    end
    object brw_PettyCashNETAMNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'NETAMNT'
      Origin = 'NETAMNT'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object brw_PettyCashCANCELLED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLED'
      Origin = 'CANCELLED'
    end
    object brw_PettyCashCANCELLEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLEDBYID'
      Origin = 'CANCELLEDBYID'
    end
    object brw_PettyCashCANCELLEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLEDDATETIME'
      Origin = 'CANCELLEDDATETIME'
    end
    object brw_PettyCashCREATEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDBYID'
      Origin = 'CREATEDBYID'
    end
    object brw_PettyCashCREATEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDDATETIME'
      Origin = 'CREATEDDATETIME'
    end
    object brw_PettyCashSOURCE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SOURCE'
      Origin = '`SOURCE`'
      FixedChar = True
      Size = 1
    end
  end
  object qry_PettyCash: TFDQuery
    CachedUpdates = True
    Connection = dbConn
    SQL.Strings = (
      'SELECT *'
      'FROM PETTY_HEADER'
      ''
      ';')
    Left = 320
    Top = 304
    object qry_PettyCashID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qry_PettyCashNOTES: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOTES'
      Origin = 'NOTES'
      Size = 255
    end
    object qry_PettyCashPAYDATE: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'PAYDATE'
      Origin = 'PAYDATE'
    end
    object qry_PettyCashPOSTED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'POSTED'
      Origin = 'POSTED'
    end
    object qry_PettyCashPOSTEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'POSTEDDATETIME'
      Origin = 'POSTEDDATETIME'
    end
    object qry_PettyCashNETAMNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'NETAMNT'
      Origin = 'NETAMNT'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object qry_PettyCashCANCELLED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLED'
      Origin = 'CANCELLED'
    end
    object qry_PettyCashCANCELLEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLEDBYID'
      Origin = 'CANCELLEDBYID'
    end
    object qry_PettyCashCANCELLEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLEDDATETIME'
      Origin = 'CANCELLEDDATETIME'
    end
    object qry_PettyCashCREATEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDBYID'
      Origin = 'CREATEDBYID'
    end
    object qry_PettyCashCREATEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDDATETIME'
      Origin = 'CREATEDDATETIME'
    end
    object qry_PettyCashSOURCE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SOURCE'
      Origin = '`SOURCE`'
      FixedChar = True
      Size = 1
    end
  end
  object qry_PettyDetail: TFDQuery
    CachedUpdates = True
    Connection = dbConn
    SQL.Strings = (
      'SELECT *'
      'FROM PETTY_DETAIL'
      ''
      ';')
    Left = 368
    Top = 304
    object qry_PettyDetailID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qry_PettyDetailHEADERID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'HEADERID'
      Origin = 'HEADERID'
    end
    object qry_PettyDetailREFID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'REFID'
      Origin = 'REFID'
    end
    object qry_PettyDetailREFDATE: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'REFDATE'
      Origin = 'REFDATE'
    end
    object qry_PettyDetailAMOUNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'AMOUNT'
      Origin = 'AMOUNT'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object qry_PettyDetailCANCELLED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLED'
      Origin = 'CANCELLED'
    end
    object qry_PettyDetailCANCELLEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLEDDATETIME'
      Origin = 'CANCELLEDDATETIME'
    end
    object qry_PettyDetailNETAMNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'NETAMNT'
      Origin = 'NETAMNT'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object qry_PettyDetailFP: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'FP'
      Origin = 'FP'
    end
    object qry_PettyDetailPAIDAMNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PAIDAMNT'
      Origin = 'PAIDAMNT'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
  end
  object tb_PettyDetail: TFDMemTable
    OnCalcFields = tb_PettyDetailCalcFields
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 232
    Top = 216
    object tb_PettyDetailREFDATE: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'REFDATE'
      Origin = 'REFDATE'
    end
    object tb_PettyDetailAMOUNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'AMOUNT'
      Origin = 'AMOUNT'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object tb_PettyDetailCANCELLED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLED'
      Origin = 'CANCELLED'
    end
    object tb_PettyDetailCANCELLEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLEDDATETIME'
      Origin = 'CANCELLEDDATETIME'
    end
    object tb_PettyDetailID: TIntegerField
      FieldName = 'ID'
    end
    object tb_PettyDetailREFID: TIntegerField
      FieldName = 'REFID'
    end
    object tb_PettyDetailNETAMNT: TFloatField
      FieldName = 'NETAMNT'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object tb_PettyDetailBALANCE: TFloatField
      FieldKind = fkCalculated
      FieldName = 'BALANCE'
      DisplayFormat = '###,###,##0.00'
      currency = True
      Calculated = True
    end
    object tb_PettyDetailFP: TBooleanField
      FieldKind = fkCalculated
      FieldName = 'FP'
      Calculated = True
    end
    object tb_PettyDetailPAIDAMNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PAIDAMNT'
      Origin = 'PAIDAMNT'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
  end
  object del_PettyDetail: TFDQuery
    Connection = dbConn
    SQL.Strings = (
      'UPDATE PETTY_DETAIL'
      'SET CANCELLED = TRUE'
      'WHERE ID = 0'
      ';')
    Left = 112
    Top = 80
  end
  object brw_PaidMR: TFDQuery
    Connection = dbConn
    SQL.Strings = (
      'SELECT SUM(PETTY_DETAIL.NETAMNT) AS PAIDAMNT'
      'FROM PETTY_DETAIL'
      
        'INNER JOIN PETTY_HEADER ON PETTY_HEADER.ID = PETTY_DETAIL.HEADER' +
        'ID'
      ''
      ';')
    Left = 696
    Top = 304
    object brw_PaidMRPAIDAMNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PAIDAMNT'
      Origin = 'PAIDAMNT'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
  end
  object brw_Expense: TFDQuery
    Connection = dbConn
    SQL.Strings = (
      'SELECT *'
      'FROM EXPENSE_HEADER'
      ''
      'ORDER BY ID DESC;')
    Left = 736
    Top = 304
    object brw_ExpenseID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object brw_ExpensePAYEE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PAYEE'
      Origin = 'PAYEE'
      Size = 100
    end
    object brw_ExpenseNOTES: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOTES'
      Origin = 'NOTES'
      Size = 255
    end
    object brw_ExpenseBANKID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'BANKID'
      Origin = 'BANKID'
    end
    object brw_ExpensePAYMENTMODE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PAYMENTMODE'
      Origin = 'PAYMENTMODE'
    end
    object brw_ExpenseCHECKNO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CHECKNO'
      Origin = 'CHECKNO'
    end
    object brw_ExpenseCHECKDATE: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'CHECKDATE'
      Origin = 'CHECKDATE'
    end
    object brw_ExpenseNETAMOUNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'NETAMOUNT'
      Origin = 'NETAMOUNT'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object brw_ExpenseEXPENSEDATE: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'EXPENSEDATE'
      Origin = 'EXPENSEDATE'
    end
    object brw_ExpensePOSTED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'POSTED'
      Origin = 'POSTED'
    end
    object brw_ExpensePOSTEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'POSTEDDATETIME'
      Origin = 'POSTEDDATETIME'
      DisplayFormat = 'mm/dd/yyyy'
    end
    object brw_ExpenseCANCELLED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLED'
      Origin = 'CANCELLED'
    end
    object brw_ExpenseCANCELLEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLEDBYID'
      Origin = 'CANCELLEDBYID'
    end
    object brw_ExpenseCANCELLEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLEDDATETIME'
      Origin = 'CANCELLEDDATETIME'
    end
    object brw_ExpenseCREATEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDBYID'
      Origin = 'CREATEDBYID'
    end
    object brw_ExpenseCREATEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDDATETIME'
      Origin = 'CREATEDDATETIME'
    end
    object brw_ExpenseBANK: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANK'
      Origin = 'BANK'
      Size = 50
    end
  end
  object qry_Expense: TFDQuery
    CachedUpdates = True
    Connection = dbConn
    SQL.Strings = (
      'SELECT *'
      'FROM EXPENSE_HEADER'
      ''
      ';')
    Left = 416
    Top = 304
    object qry_ExpenseID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qry_ExpensePAYEE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PAYEE'
      Origin = 'PAYEE'
      Size = 100
    end
    object qry_ExpenseNOTES: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOTES'
      Origin = 'NOTES'
      Size = 255
    end
    object qry_ExpenseBANK: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANK'
      Origin = 'BANK'
      Size = 50
    end
    object qry_ExpenseBANKID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'BANKID'
      Origin = 'BANKID'
    end
    object qry_ExpensePAYMENTMODE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PAYMENTMODE'
      Origin = 'PAYMENTMODE'
    end
    object qry_ExpenseCHECKNO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CHECKNO'
      Origin = 'CHECKNO'
    end
    object qry_ExpenseCHECKDATE: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'CHECKDATE'
      Origin = 'CHECKDATE'
    end
    object qry_ExpenseNETAMOUNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'NETAMOUNT'
      Origin = 'NETAMOUNT'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object qry_ExpenseEXPENSEDATE: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'EXPENSEDATE'
      Origin = 'EXPENSEDATE'
    end
    object qry_ExpensePOSTED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'POSTED'
      Origin = 'POSTED'
    end
    object qry_ExpensePOSTEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'POSTEDDATETIME'
      Origin = 'POSTEDDATETIME'
    end
    object qry_ExpenseCANCELLED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLED'
      Origin = 'CANCELLED'
    end
    object qry_ExpenseCANCELLEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLEDBYID'
      Origin = 'CANCELLEDBYID'
    end
    object qry_ExpenseCANCELLEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLEDDATETIME'
      Origin = 'CANCELLEDDATETIME'
    end
    object qry_ExpenseCREATEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDBYID'
      Origin = 'CREATEDBYID'
    end
    object qry_ExpenseCREATEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDDATETIME'
      Origin = 'CREATEDDATETIME'
    end
  end
  object qry_ExpenseDetail: TFDQuery
    CachedUpdates = True
    Connection = dbConn
    SQL.Strings = (
      'SELECT *'
      'FROM EXPENSE_DETAIL'
      ''
      ';')
    Left = 456
    Top = 304
    object qry_ExpenseDetailID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qry_ExpenseDetailHEADERID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'HEADERID'
      Origin = 'HEADERID'
    end
    object qry_ExpenseDetailDESCRIPTION: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRIPTION'
      Origin = 'DESCRIPTION'
      Size = 200
    end
    object qry_ExpenseDetailAMOUNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'AMOUNT'
      Origin = 'AMOUNT'
    end
    object qry_ExpenseDetailREMARKS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'REMARKS'
      Origin = 'REMARKS'
      Size = 200
    end
    object qry_ExpenseDetailCANCELLED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLED'
      Origin = 'CANCELLED'
    end
    object qry_ExpenseDetailCANCELLEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLEDBYID'
      Origin = 'CANCELLEDBYID'
    end
    object qry_ExpenseDetailCANCELLEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLEDDATETIME'
      Origin = 'CANCELLEDDATETIME'
    end
  end
  object tb_ExpenseDetail: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 192
    Top = 264
    object tb_ExpenseDetailDESCRIPTION: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRIPTION'
      Origin = 'DESCRIPTION'
      Size = 200
    end
    object tb_ExpenseDetailAMOUNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'AMOUNT'
      Origin = 'AMOUNT'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object tb_ExpenseDetailREMARKS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'REMARKS'
      Origin = 'REMARKS'
      Size = 200
    end
    object tb_ExpenseDetailID: TIntegerField
      FieldName = 'ID'
    end
  end
  object brw_PaidExpense: TFDQuery
    Connection = dbConn
    SQL.Strings = (
      'SELECT ID, BANKID, CHECKNO, CHECKDATE'
      'FROM EXPENSE_HEADER'
      ''
      ';')
    Left = 560
    Top = 344
    object brw_PaidExpenseID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object brw_PaidExpenseBANKID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'BANKID'
      Origin = 'BANKID'
    end
    object brw_PaidExpenseCHECKNO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CHECKNO'
      Origin = 'CHECKNO'
    end
    object brw_PaidExpenseCHECKDATE: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'CHECKDATE'
      Origin = 'CHECKDATE'
    end
  end
  object del_ExpenseDetail: TFDQuery
    Connection = dbConn
    SQL.Strings = (
      'UPDATE EXPENSE_DETAIL'
      'SET CANCELLED = TRUE,'
      ''
      ''
      'WHERE ID = 0'
      ';')
    Left = 112
    Top = 24
  end
  object brw_RcvdItems: TFDQuery
    Connection = dbConn
    SQL.Strings = (
      'SELECT SUM(IR_DETAIL.QTY) AS QTY'
      'FROM IR_DETAIL'
      'INNER JOIN IR_HEADER ON IR_HEADER.ID = IR_DETAIL.`HEADERID`'
      ''
      ';')
    Left = 600
    Top = 344
    object brw_RcvdItemsQTY: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'QTY'
      Origin = 'QTY'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object brw_Payroll: TFDQuery
    Connection = dbConn
    SQL.Strings = (
      'SELECT *'
      'FROM PAYROLL_HEADER'
      ''
      'ORDER BY ID DESC;')
    Left = 648
    Top = 344
    object brw_PayrollID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object brw_PayrollEMPCOUNT: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'EMPCOUNT'
      Origin = 'EMPCOUNT'
    end
    object brw_PayrollBASICPAY: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'BASICPAY'
      Origin = 'BASICPAY'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object brw_PayrollALLOWANCES: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ALLOWANCES'
      Origin = 'ALLOWANCES'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object brw_PayrollBACKWAGE: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'BACKWAGE'
      Origin = 'BACKWAGE'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object brw_PayrollLATE: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'LATE'
      Origin = 'LATE'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object brw_PayrollOTHERS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'OTHERS'
      Origin = 'OTHERS'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object brw_PayrollSSS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'SSS'
      Origin = 'SSS'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object brw_PayrollPAGIBIG: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PAGIBIG'
      Origin = 'PAGIBIG'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object brw_PayrollPHIC: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PHIC'
      Origin = 'PHIC'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object brw_PayrollNETPAY: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'NETPAY'
      Origin = 'NETPAY'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object brw_PayrollCANCELLED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLED'
      Origin = 'CANCELLED'
    end
    object brw_PayrollCANCELLEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLEDBYID'
      Origin = 'CANCELLEDBYID'
    end
    object brw_PayrollCANCELLEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLEDDATETIME'
      Origin = 'CANCELLEDDATETIME'
    end
    object brw_PayrollCREATEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDBYID'
      Origin = 'CREATEDBYID'
    end
    object brw_PayrollCREATEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDDATETIME'
      Origin = 'CREATEDDATETIME'
    end
    object brw_PayrollPOSTED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'POSTED'
      Origin = 'POSTED'
    end
    object brw_PayrollPOSTEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'POSTEDDATETIME'
      Origin = 'POSTEDDATETIME'
      DisplayFormat = 'mm/dd/yyyy'
    end
    object brw_PayrollABSENCES: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ABSENCES'
      Origin = 'ABSENCES'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object brw_PayrollPAYDATE: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'PAYDATE'
      Origin = 'PAYDATE'
      DisplayFormat = 'mm/dd/yyyy'
    end
    object brw_PayrollCA: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'CA'
      Origin = 'CA'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
  end
  object qry_Payroll: TFDQuery
    CachedUpdates = True
    Connection = dbConn
    SQL.Strings = (
      'SELECT *'
      'FROM PAYROLL_HEADER'
      ''
      ';')
    Left = 320
    Top = 352
    object qry_PayrollID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qry_PayrollEMPCOUNT: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'EMPCOUNT'
      Origin = 'EMPCOUNT'
    end
    object qry_PayrollBASICPAY: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'BASICPAY'
      Origin = 'BASICPAY'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object qry_PayrollALLOWANCES: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ALLOWANCES'
      Origin = 'ALLOWANCES'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object qry_PayrollBACKWAGE: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'BACKWAGE'
      Origin = 'BACKWAGE'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object qry_PayrollLATE: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'LATE'
      Origin = 'LATE'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object qry_PayrollOTHERS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'OTHERS'
      Origin = 'OTHERS'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object qry_PayrollSSS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'SSS'
      Origin = 'SSS'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object qry_PayrollPAGIBIG: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PAGIBIG'
      Origin = 'PAGIBIG'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object qry_PayrollPHIC: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PHIC'
      Origin = 'PHIC'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object qry_PayrollNETPAY: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'NETPAY'
      Origin = 'NETPAY'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object qry_PayrollPOSTED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'POSTED'
      Origin = 'POSTED'
    end
    object qry_PayrollPOSTEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'POSTEDDATETIME'
      Origin = 'POSTEDDATETIME'
      DisplayFormat = 'mm/dd/yyyy'
    end
    object qry_PayrollCANCELLED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLED'
      Origin = 'CANCELLED'
    end
    object qry_PayrollCANCELLEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLEDBYID'
      Origin = 'CANCELLEDBYID'
    end
    object qry_PayrollCANCELLEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLEDDATETIME'
      Origin = 'CANCELLEDDATETIME'
    end
    object qry_PayrollCREATEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDBYID'
      Origin = 'CREATEDBYID'
    end
    object qry_PayrollCREATEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDDATETIME'
      Origin = 'CREATEDDATETIME'
    end
    object qry_PayrollABSENCES: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ABSENCES'
      Origin = 'ABSENCES'
    end
    object qry_PayrollPAYDATE: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'PAYDATE'
      Origin = 'PAYDATE'
      DisplayFormat = 'mm/dd/yyyy'
    end
    object qry_PayrollCA: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'CA'
      Origin = 'CA'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
  end
  object qry_PayDetail: TFDQuery
    CachedUpdates = True
    Connection = dbConn
    SQL.Strings = (
      'SELECT *'
      'FROM PAYROLL_DETAIL'
      ''
      ';')
    Left = 368
    Top = 352
    object qry_PayDetailID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qry_PayDetailHEADERID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'HEADERID'
      Origin = 'HEADERID'
    end
    object qry_PayDetailEMPID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'EMPID'
      Origin = 'EMPID'
    end
    object qry_PayDetailROLEID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ROLEID'
      Origin = 'ROLEID'
    end
    object qry_PayDetailROLE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ROLE'
      Origin = 'ROLE'
    end
    object qry_PayDetailRATE: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'RATE'
      Origin = 'RATE'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object qry_PayDetailBASICPAY: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'BASICPAY'
      Origin = 'BASICPAY'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object qry_PayDetailALLOWANCES: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ALLOWANCES'
      Origin = 'ALLOWANCES'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object qry_PayDetailBACKWAGE: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'BACKWAGE'
      Origin = 'BACKWAGE'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object qry_PayDetailLATE: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'LATE'
      Origin = 'LATE'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object qry_PayDetailOTHERS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'OTHERS'
      Origin = 'OTHERS'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object qry_PayDetailSSS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'SSS'
      Origin = 'SSS'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object qry_PayDetailPAGIBIG: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PAGIBIG'
      Origin = 'PAGIBIG'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object qry_PayDetailPHIC: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PHIC'
      Origin = 'PHIC'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object qry_PayDetailNETPAY: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'NETPAY'
      Origin = 'NETPAY'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object qry_PayDetailABSENCES: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ABSENCES'
      Origin = 'ABSENCES'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object qry_PayDetailNODAYS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'NODAYS'
      Origin = 'NODAYS'
    end
    object qry_PayDetailNOPIECES: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'NOPIECES'
      Origin = 'NOPIECES'
    end
    object qry_PayDetailMODE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MODE'
      Origin = '`MODE`'
      FixedChar = True
      Size = 1
    end
    object qry_PayDetailHRSLATE: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'HRSLATE'
      Origin = 'HRSLATE'
    end
    object qry_PayDetailDAYSABSENT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'DAYSABSENT'
      Origin = 'DAYSABSENT'
    end
    object qry_PayDetailIDNO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IDNO'
      Origin = 'IDNO'
      Size = 15
    end
    object qry_PayDetailCANCELLED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLED'
      Origin = 'CANCELLED'
    end
    object qry_PayDetailCANCELLEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLEDDATETIME'
      Origin = 'CANCELLEDDATETIME'
    end
    object qry_PayDetailSCHED: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SCHED'
      Origin = 'SCHED'
    end
    object qry_PayDetailCANCELLEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLEDBYID'
      Origin = 'CANCELLEDBYID'
    end
    object qry_PayDetailPARTICULAR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PARTICULAR'
      Origin = 'PARTICULAR'
      Size = 1000
    end
    object qry_PayDetailCA: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'CA'
      Origin = 'CA'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object qry_PayDetailPAIDAMNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PAIDAMNT'
      Origin = 'PAIDAMNT'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
  end
  object tb_PayDetail: TFDMemTable
    Active = True
    OnCalcFields = tb_PayDetailCalcFields
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 232
    Top = 264
    object tb_PayDetailIDNO: TStringField
      FieldName = 'IDNO'
      Origin = 'IDNO'
      Size = 15
    end
    object tb_PayDetailHEADERID: TIntegerField
      FieldName = 'HEADERID'
      Origin = 'HEADERID'
    end
    object tb_PayDetailEMPID: TIntegerField
      FieldName = 'EMPID'
      Origin = 'EMPID'
    end
    object tb_PayDetailROLEID: TIntegerField
      FieldName = 'ROLEID'
      Origin = 'ROLEID'
    end
    object tb_PayDetailROLE: TStringField
      FieldName = 'ROLE'
      Origin = 'ROLE'
    end
    object tb_PayDetailRATE: TFloatField
      FieldName = 'RATE'
      Origin = 'RATE'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object tb_PayDetailBASICPAY: TFloatField
      FieldKind = fkCalculated
      FieldName = 'BASICPAY'
      Origin = 'BASICPAY'
      DisplayFormat = '###,###,##0.00'
      currency = True
      Calculated = True
    end
    object tb_PayDetailALLOWANCES: TFloatField
      FieldName = 'ALLOWANCES'
      Origin = 'ALLOWANCES'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object tb_PayDetailBACKWAGE: TFloatField
      FieldName = 'BACKWAGE'
      Origin = 'BACKWAGE'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object tb_PayDetailLATE: TFloatField
      FieldKind = fkCalculated
      FieldName = 'LATE'
      Origin = 'LATE'
      DisplayFormat = '###,###,##0.00'
      currency = True
      Calculated = True
    end
    object tb_PayDetailOTHERS: TFloatField
      FieldName = 'OTHERS'
      Origin = 'OTHERS'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object tb_PayDetailSSS: TFloatField
      FieldName = 'SSS'
      Origin = 'SSS'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object tb_PayDetailPAGIBIG: TFloatField
      FieldName = 'PAGIBIG'
      Origin = 'PAGIBIG'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object tb_PayDetailPHIC: TFloatField
      FieldName = 'PHIC'
      Origin = 'PHIC'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object tb_PayDetailNETPAY: TFloatField
      FieldKind = fkCalculated
      FieldName = 'NETPAY'
      Origin = 'NETPAY'
      DisplayFormat = '###,###,##0.00'
      currency = True
      Calculated = True
    end
    object tb_PayDetailID: TIntegerField
      FieldName = 'ID'
    end
    object tb_PayDetailABSENCES: TFloatField
      FieldKind = fkCalculated
      FieldName = 'ABSENCES'
      DisplayFormat = '###,###,##0.00'
      currency = True
      Calculated = True
    end
    object tb_PayDetailNODAYS: TFloatField
      FieldName = 'NODAYS'
    end
    object tb_PayDetailNOPIECES: TFloatField
      FieldName = 'NOPIECES'
    end
    object tb_PayDetailMODE: TStringField
      FieldName = 'MODE'
      Size = 1
    end
    object tb_PayDetailSCHED: TStringField
      FieldName = 'SCHED'
    end
    object tb_PayDetailDAYSABSENT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'DAYSABSENT'
      Origin = 'DAYSABSENT'
    end
    object tb_PayDetailHRSLATE: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'HRSLATE'
      Origin = 'HRSLATE'
    end
    object tb_PayDetailEMPNAME: TStringField
      FieldName = 'EMPNAME'
      Size = 50
    end
    object tb_PayDetailGROSSPAY: TFloatField
      FieldKind = fkCalculated
      FieldName = 'GROSSPAY'
      DisplayFormat = '###,###,##0.00'
      currency = True
      Calculated = True
    end
    object tb_PayDetailPARTICULAR: TStringField
      FieldName = 'PARTICULAR'
      Size = 1000
    end
    object tb_PayDetailCA: TFloatField
      FieldName = 'CA'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object tb_PayDetailPAIDAMNT: TFloatField
      FieldName = 'PAIDAMNT'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object tb_PayDetailBALAMNT: TFloatField
      FieldKind = fkCalculated
      FieldName = 'BALAMNT'
      DisplayFormat = '###,###,##0.00'
      currency = True
      Calculated = True
    end
  end
  object tb_Emp: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 184
    Top = 304
    object tb_EmpEMPNAME: TStringField
      FieldName = 'EMPNAME'
      Size = 50
    end
    object tb_EmpROLE: TStringField
      FieldName = 'ROLE'
    end
    object tb_EmpSELECT: TBooleanField
      FieldName = 'SELECT'
    end
    object tb_EmpID: TIntegerField
      FieldName = 'ID'
    end
    object tb_EmpFREQUENCY: TStringField
      FieldName = 'FREQUENCY'
      Origin = 'FREQUENCY'
    end
    object tb_EmpMODEOFCOMP: TStringField
      FieldName = 'MODEOFCOMP'
      Origin = 'MODEOFCOMP'
      Size = 1
    end
    object tb_EmpRATE: TFloatField
      FieldName = 'RATE'
      Origin = 'RATE'
    end
    object tb_EmpPHILHEALTH: TFloatField
      FieldName = 'PHILHEALTH'
      Origin = 'PHILHEALTH'
    end
    object tb_EmpPAGIBIG: TFloatField
      FieldName = 'PAGIBIG'
      Origin = 'PAGIBIG'
    end
    object tb_EmpSSS: TFloatField
      FieldName = 'SSS'
      Origin = 'SSS'
    end
    object tb_EmpIDNO: TStringField
      FieldName = 'IDNO'
      Origin = 'IDNO'
      Size = 15
    end
    object tb_EmpROLEID: TIntegerField
      FieldName = 'ROLEID'
    end
  end
  object brw_DoneOrder: TFDQuery
    Connection = dbConn
    SQL.Strings = (
      
        'SELECT SUM(pm_logs.QTY) AS QTY, pm_board.SHIRTID, PM_BOARD.ROLEI' +
        'D'
      'FROM PM_LOGS'
      'INNER JOIN pm_board ON pm_board.id = pm_logs.headerid'
      ''
      'GROUP BY pm_board.SHIRTID, PM_BOARD.ROLEID'
      ';')
    Left = 688
    Top = 344
    object brw_DoneOrderQTY: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'QTY'
      Origin = 'QTY'
      Precision = 32
      Size = 0
    end
    object brw_DoneOrderSHIRTID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'SHIRTID'
      Origin = 'SHIRTID'
    end
    object brw_DoneOrderROLEID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ROLEID'
      Origin = 'ROLEID'
    end
  end
  object tb_PayParticular: TFDMemTable
    OnCalcFields = tb_PayParticularCalcFields
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 232
    Top = 304
    object tb_PayParticularJONO: TIntegerField
      FieldName = 'JONO'
    end
    object tb_PayParticularID: TIntegerField
      FieldName = 'ID'
    end
    object tb_PayParticularGARMENT: TStringField
      FieldName = 'GARMENT'
      Size = 50
    end
    object tb_PayParticularQTY: TFloatField
      FieldName = 'QTY'
    end
    object tb_PayParticularPRICE: TFloatField
      FieldName = 'PRICE'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object tb_PayParticularLOGDATE: TDateTimeField
      FieldName = 'LOGDATE'
    end
    object tb_PayParticularAMNT: TFloatField
      FieldKind = fkCalculated
      FieldName = 'AMNT'
      DisplayFormat = '###,###,##0.00'
      currency = True
      Calculated = True
    end
    object tb_PayParticularWORK: TStringField
      FieldName = 'WORK'
      Size = 50
    end
  end
  object del_PayrollDetail: TFDQuery
    Connection = dbConn
    SQL.Strings = (
      'UPDATE PAYROLL_DETAIL'
      'SET CANCELLED = TRUE'
      ''
      ''
      'WHERE ID = 0'
      ';')
    Left = 72
    Top = 336
  end
  object qry_CashFund: TFDQuery
    CachedUpdates = True
    Connection = dbConn
    SQL.Strings = (
      'SELECT *'
      'FROM CASH_FUND'
      ''
      'ORDER BY CASH DESC;')
    Left = 416
    Top = 352
    object qry_CashFundID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qry_CashFundPOSDAYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'POSDAYID'
      Origin = 'POSDAYID'
    end
    object qry_CashFundCASH: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'CASH'
      Origin = 'CASH'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object qry_CashFundQTY: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'QTY'
      Origin = 'QTY'
      DisplayFormat = '###,###,##0'
    end
    object qry_CashFundAMNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'AMNT'
      Origin = 'AMNT'
      DisplayFormat = '###,###,##0'
      currency = True
    end
    object qry_CashFundCANCELLED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLED'
      Origin = 'CANCELLED'
    end
    object qry_CashFundCANCELLEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLEDBYID'
      Origin = 'CANCELLEDBYID'
    end
    object qry_CashFundCANCELLEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLEDDATETIME'
      Origin = 'CANCELLEDDATETIME'
    end
    object qry_CashFundOVERRIDEBY: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'OVERRIDEBY'
      Origin = 'OVERRIDEBY'
    end
  end
  object qry_POSDay: TFDQuery
    CachedUpdates = True
    Connection = dbConn
    SQL.Strings = (
      'SELECT *'
      'FROM POS_DAY'
      ''
      ';')
    Left = 464
    Top = 352
    object qry_POSDayID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qry_POSDayDATE: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DATE'
      Origin = '`DATE`'
    end
    object qry_POSDayDATEOPENED: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'DATEOPENED'
      Origin = 'DATEOPENED'
    end
    object qry_POSDayOPENEDBY: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'OPENEDBY'
      Origin = 'OPENEDBY'
    end
    object qry_POSDayENDEDBY: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ENDEDBY'
      Origin = 'ENDEDBY'
    end
    object qry_POSDayDATEENDED: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'DATEENDED'
      Origin = 'DATEENDED'
    end
    object qry_POSDayISACTIVE: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'ISACTIVE'
      Origin = 'ISACTIVE'
    end
  end
  object tb_CashFund: TFDMemTable
    OnCalcFields = tb_CashFundCalcFields
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 184
    Top = 352
    object tb_CashFundQTY: TIntegerField
      FieldName = 'QTY'
      DisplayFormat = '###,###,##0'
    end
    object tb_CashFundCASH: TFloatField
      FieldName = 'CASH'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object tb_CashFundAMNT: TFloatField
      FieldKind = fkCalculated
      FieldName = 'AMNT'
      DisplayFormat = '###,###,##0.00'
      currency = True
      Calculated = True
    end
    object tb_CashFundID: TIntegerField
      FieldName = 'ID'
    end
  end
  object qry_CashEnd: TFDQuery
    CachedUpdates = True
    Connection = dbConn
    SQL.Strings = (
      'SELECT *'
      'FROM CASH_END'
      ''
      'ORDER BY CASH DESC;')
    Left = 320
    Top = 392
    object qry_CashEndID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qry_CashEndPOSDAYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'POSDAYID'
      Origin = 'POSDAYID'
    end
    object qry_CashEndCASH: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'CASH'
      Origin = 'CASH'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object qry_CashEndQTY: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'QTY'
      Origin = 'QTY'
      DisplayFormat = '###,###,##0'
    end
    object qry_CashEndAMNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'AMNT'
      Origin = 'AMNT'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object qry_CashEndCANCELLED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLED'
      Origin = 'CANCELLED'
    end
    object qry_CashEndCANCELLEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLEDBYID'
      Origin = 'CANCELLEDBYID'
    end
    object qry_CashEndCANCELLEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLEDDATETIME'
      Origin = 'CANCELLEDDATETIME'
    end
    object qry_CashEndOVERRIDEBY: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'OVERRIDEBY'
      Origin = 'OVERRIDEBY'
    end
  end
  object tb_CashDrawer: TFDMemTable
    Active = True
    OnCalcFields = tb_CashDrawerCalcFields
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 240
    Top = 352
    object tb_CashDrawerQTY: TIntegerField
      FieldName = 'QTY'
      DisplayFormat = '###,###,##0'
    end
    object tb_CashDrawerCASH: TFloatField
      FieldName = 'CASH'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object tb_CashDrawerAMNT: TFloatField
      FieldKind = fkCalculated
      FieldName = 'AMNT'
      DisplayFormat = '###,###,##0.00'
      currency = True
      Calculated = True
    end
    object tb_CashDrawerQTY1: TIntegerField
      FieldName = 'QTY1'
      DisplayFormat = '###,###,##0'
    end
    object tb_CashDrawerCASH1: TFloatField
      FieldName = 'CASH1'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object tb_CashDrawerAMNT1: TFloatField
      FieldKind = fkCalculated
      FieldName = 'AMNT1'
      DisplayFormat = '###,###,##0.00'
      currency = True
      Calculated = True
    end
  end
  object brw_POSDay: TFDQuery
    OnCalcFields = brw_POSDayCalcFields
    Connection = dbConn
    SQL.Strings = (
      
        'SELECT POS_DAY.*, A.LASTNAME, A.FIRSTNAME, A.MIDDLENAME, B.LASTN' +
        'AME, B.FIRSTNAME, B.MIDDLENAME'
      'FROM POS_DAY'
      'INNER JOIN SYS_USERS A ON A.ID = POS_DAY.OPENEDBY'
      'LEFT JOIN SYS_USERS B ON B.ID = POS_DAY.ENDEDBY'
      ''
      'ORDER BY POS_DAY.ID DESC;')
    Left = 736
    Top = 344
    object brw_POSDayID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object brw_POSDayDATE: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DATE'
      Origin = '`DATE`'
    end
    object brw_POSDayDATEOPENED: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'DATEOPENED'
      Origin = 'DATEOPENED'
    end
    object brw_POSDayOPENEDBY: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'OPENEDBY'
      Origin = 'OPENEDBY'
    end
    object brw_POSDayENDEDBY: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ENDEDBY'
      Origin = 'ENDEDBY'
    end
    object brw_POSDayDATEENDED: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'DATEENDED'
      Origin = 'DATEENDED'
    end
    object brw_POSDayISACTIVE: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'ISACTIVE'
      Origin = 'ISACTIVE'
    end
    object brw_POSDayLASTNAME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'LASTNAME'
      Origin = 'LASTNAME'
      ProviderFlags = []
      ReadOnly = True
    end
    object brw_POSDayFIRSTNAME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FIRSTNAME'
      Origin = 'FIRSTNAME'
      ProviderFlags = []
      ReadOnly = True
    end
    object brw_POSDayMIDDLENAME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MIDDLENAME'
      Origin = 'MIDDLENAME'
      ProviderFlags = []
      ReadOnly = True
    end
    object brw_POSDayLASTNAME_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'LASTNAME_1'
      Origin = 'LASTNAME'
      ProviderFlags = []
      ReadOnly = True
    end
    object brw_POSDayFIRSTNAME_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FIRSTNAME_1'
      Origin = 'FIRSTNAME'
      ProviderFlags = []
      ReadOnly = True
    end
    object brw_POSDayMIDDLENAME_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MIDDLENAME_1'
      Origin = 'MIDDLENAME'
      ProviderFlags = []
      ReadOnly = True
    end
    object brw_POSDayOPENED_CASHIER: TStringField
      FieldKind = fkCalculated
      FieldName = 'OPENED_CASHIER'
      Size = 50
      Calculated = True
    end
    object brw_POSDayCLOSED_CASHIER: TStringField
      FieldKind = fkCalculated
      FieldName = 'CLOSED_CASHIER'
      Size = 50
      Calculated = True
    end
  end
  object qry_POSDay1: TFDQuery
    OnCalcFields = qry_POSDay1CalcFields
    CachedUpdates = True
    Connection = dbConn
    SQL.Strings = (
      'SELECT POS_DAY.*, A.LASTNAME, A.FIRSTNAME, A.MIDDLENAME'
      'FROM POS_DAY'
      'INNER JOIN SYS_USERS A ON A.ID = POS_DAY.OPENEDBY'
      ''
      ';')
    Left = 368
    Top = 392
    object qry_POSDay1ID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qry_POSDay1DATE: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DATE'
      Origin = '`DATE`'
    end
    object qry_POSDay1DATEOPENED: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'DATEOPENED'
      Origin = 'DATEOPENED'
    end
    object qry_POSDay1OPENEDBY: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'OPENEDBY'
      Origin = 'OPENEDBY'
    end
    object qry_POSDay1ENDEDBY: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ENDEDBY'
      Origin = 'ENDEDBY'
    end
    object qry_POSDay1DATEENDED: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'DATEENDED'
      Origin = 'DATEENDED'
    end
    object qry_POSDay1ISACTIVE: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'ISACTIVE'
      Origin = 'ISACTIVE'
    end
    object qry_POSDay1OPEN_OVERRIDEBY: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'OPEN_OVERRIDEBY'
      Origin = 'OPEN_OVERRIDEBY'
    end
    object qry_POSDay1CLOSE_OVERRIDEBY: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CLOSE_OVERRIDEBY'
      Origin = 'CLOSE_OVERRIDEBY'
    end
    object qry_POSDay1OPEN_OVERRIDEDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'OPEN_OVERRIDEDATETIME'
      Origin = 'OPEN_OVERRIDEDATETIME'
    end
    object qry_POSDay1CLOSE_OVERRIDEDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'CLOSE_OVERRIDEDATETIME'
      Origin = 'CLOSE_OVERRIDEDATETIME'
    end
    object qry_POSDay1LASTNAME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'LASTNAME'
      Origin = 'LASTNAME'
      ProviderFlags = []
      ReadOnly = True
    end
    object qry_POSDay1FIRSTNAME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FIRSTNAME'
      Origin = 'FIRSTNAME'
      ProviderFlags = []
      ReadOnly = True
    end
    object qry_POSDay1MIDDLENAME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MIDDLENAME'
      Origin = 'MIDDLENAME'
      ProviderFlags = []
      ReadOnly = True
    end
    object qry_POSDay1CASHIER: TStringField
      FieldKind = fkCalculated
      FieldName = 'CASHIER'
      Size = 50
      Calculated = True
    end
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 'D:\PROJECTS\System\PM\Output\libmysql.dll'
    Left = 128
    Top = 136
  end
  object brw_Policy: TFDQuery
    OnCalcFields = brw_PolicyCalcFields
    Connection = dbConn
    SQL.Strings = (
      'SELECT *'
      'FROM SYS_POLICY'
      ''
      ';')
    Left = 560
    Top = 392
    object brw_PolicyID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object brw_PolicyMODULES: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MODULES'
      Origin = 'MODULES'
      Size = 50
    end
    object brw_PolicyPOLICY: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'POLICY'
      Origin = 'POLICY'
      Size = 100
    end
    object brw_PolicySECURITY: TStringField
      FieldKind = fkCalculated
      FieldName = 'SECURITY'
      Size = 255
      Calculated = True
    end
  end
  object qry_Policy: TFDQuery
    CachedUpdates = True
    Connection = dbConn
    SQL.Strings = (
      'SELECT *'
      'FROM SYS_POLICY'
      ''
      ';')
    Left = 416
    Top = 392
    object qry_PolicyID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qry_PolicyMODULES: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MODULES'
      Origin = 'MODULES'
      Size = 50
    end
    object qry_PolicyPOLICY: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'POLICY'
      Origin = 'POLICY'
      Size = 100
    end
  end
  object qry_Rights: TFDQuery
    CachedUpdates = True
    Connection = dbConn
    SQL.Strings = (
      'SELECT *'
      'FROM SYS_USERRIGHTS'
      ''
      ';')
    Left = 456
    Top = 392
    object qry_RightsID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qry_RightsROLEID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ROLEID'
      Origin = 'ROLEID'
    end
    object qry_RightsPOLICYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'POLICYID'
      Origin = 'POLICYID'
    end
    object qry_RightsCREATEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDBYID'
      Origin = 'CREATEDBYID'
    end
    object qry_RightsCREATEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDDATETIME'
      Origin = 'CREATEDDATETIME'
    end
    object qry_RightsSELECT: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'SELECT'
      Origin = '`SELECT`'
    end
  end
  object tb_Rights: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 184
    Top = 400
    object tb_RightsID: TIntegerField
      FieldName = 'ID'
    end
    object tb_RightsPOLICYID: TIntegerField
      FieldName = 'POLICYID'
    end
    object tb_RightsROLE: TStringField
      FieldName = 'ROLE'
    end
    object tb_RightsROLEID: TIntegerField
      FieldName = 'ROLEID'
    end
    object tb_RightsSELECT: TBooleanField
      FieldName = 'SELECT'
    end
  end
  object brw_Rights: TFDQuery
    CachedUpdates = True
    Connection = dbConn
    SQL.Strings = (
      
        'SELECT SYS_USERRIGHTS.ID, SYS_USERRIGHTS.ROLEID, SYS_USERRIGHTS.' +
        'SELECT, EMP_ROLE.TITLE, SYS_USERRIGHTS.POLICYID, SYS_POLICY.MODU' +
        'LES'
      'FROM SYS_USERRIGHTS'
      'INNER JOIN EMP_ROLE ON SYS_USERRIGHTS.ROLEID = EMP_ROLE.ID'
      'INNER JOIN SYS_POLICY ON SYS_POLICY.ID = SYS_USERRIGHTS.POLICYID'
      ''
      ';')
    Left = 600
    Top = 392
    object brw_RightsID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object brw_RightsROLEID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ROLEID'
      Origin = 'ROLEID'
    end
    object brw_RightsTITLE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TITLE'
      Origin = 'TITLE'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object brw_RightsSELECT: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'SELECT'
      Origin = '`SELECT`'
    end
    object brw_RightsPOLICYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'POLICYID'
      Origin = 'POLICYID'
    end
    object brw_RightsMODULES: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MODULES'
      Origin = 'MODULES'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
  end
  object brw_Print: TFDQuery
    Connection = dbConn
    SQL.Strings = (
      'SELECT *'
      'FROM CASH_PRINT'
      ''
      ';')
    Left = 648
    Top = 392
    object brw_PrintPRINT: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'PRINT'
      Origin = 'PRINT'
    end
  end
  object brw_ExpenseType: TFDQuery
    Connection = dbConn
    SQL.Strings = (
      'SELECT ID, NAME, CATEGORY'
      'FROM EXPENSE_TYPE'
      ''
      'ORDER BY NAME;')
    Left = 688
    Top = 392
    object brw_ExpenseTypeID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object brw_ExpenseTypeNAME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NAME'
      Origin = '`NAME`'
      Size = 30
    end
    object brw_ExpenseTypeCATEGORY: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CATEGORY'
      Origin = 'CATEGORY'
    end
  end
  object qry_Vendor: TFDQuery
    CachedUpdates = True
    Connection = dbConn
    SQL.Strings = (
      'SELECT *'
      'FROM SYS_VENDOR'
      ''
      ';')
    Left = 320
    Top = 440
    object qry_VendorID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qry_VendorVENDORNAME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VENDORNAME'
      Origin = 'VENDORNAME'
      Size = 100
    end
    object qry_VendorCANCELLED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLED'
      Origin = 'CANCELLED'
    end
    object qry_VendorCANCELLEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLEDDATETIME'
      Origin = 'CANCELLEDDATETIME'
    end
    object qry_VendorCANCELLEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLEDBYID'
      Origin = 'CANCELLEDBYID'
    end
    object qry_VendorCREATEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDBYID'
      Origin = 'CREATEDBYID'
    end
    object qry_VendorCREATEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDDATETIME'
      Origin = 'CREATEDDATETIME'
    end
  end
  object qry_Bank: TFDQuery
    CachedUpdates = True
    Connection = dbConn
    SQL.Strings = (
      'SELECT *'
      'FROM SYS_BANK'
      ''
      'ORDER BY TITLE;')
    Left = 368
    Top = 440
    object qry_BankID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qry_BankTITLE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TITLE'
      Origin = 'TITLE'
      Size = 100
    end
    object qry_BankCHECKSERIESNO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CHECKSERIESNO'
      Origin = 'CHECKSERIESNO'
    end
    object qry_BankCANCELLED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLED'
      Origin = 'CANCELLED'
    end
    object qry_BankCANCELLEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLEDBYID'
      Origin = 'CANCELLEDBYID'
    end
    object qry_BankCANCELLEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLEDDATETIME'
      Origin = 'CANCELLEDDATETIME'
    end
    object qry_BankCREATEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDBYID'
      Origin = 'CREATEDBYID'
    end
    object qry_BankCREATEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDDATETIME'
      Origin = 'CREATEDDATETIME'
    end
  end
  object qry_ExpenseType: TFDQuery
    CachedUpdates = True
    Connection = dbConn
    SQL.Strings = (
      'SELECT *'
      'FROM EXPENSE_TYPE'
      ''
      'ORDER BY NAME;')
    Left = 416
    Top = 440
    object qry_ExpenseTypeID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qry_ExpenseTypeNAME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NAME'
      Origin = '`NAME`'
      Size = 30
    end
    object qry_ExpenseTypeCANCELLED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLED'
      Origin = 'CANCELLED'
    end
    object qry_ExpenseTypeCANCELLEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLEDDATETIME'
      Origin = 'CANCELLEDDATETIME'
    end
    object qry_ExpenseTypeCANCELLEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLEDBYID'
      Origin = 'CANCELLEDBYID'
    end
    object qry_ExpenseTypeCREATEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDBYID'
      Origin = 'CREATEDBYID'
    end
    object qry_ExpenseTypeCREATEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDDATETIME'
      Origin = 'CREATEDDATETIME'
    end
  end
  object tb_CashDisburse: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 224
    Top = 400
    object tb_CashDisburseNO: TIntegerField
      FieldName = 'NO'
    end
    object tb_CashDisbursePAYEE: TStringField
      FieldName = 'PAYEE'
      Size = 1004
    end
    object tb_CashDisburseNOTES: TStringField
      FieldName = 'NOTES'
      Size = 100
    end
    object tb_CashDisbursePAYMODE: TStringField
      FieldName = 'PAYMODE'
    end
    object tb_CashDisburseBANK: TStringField
      FieldName = 'BANK'
      Size = 50
    end
    object tb_CashDisburseCHECKNO: TIntegerField
      FieldName = 'CHECKNO'
    end
    object tb_CashDisburseCHECKDATE: TDateField
      FieldName = 'CHECKDATE'
    end
    object tb_CashDisburseNETAMNT: TFloatField
      FieldName = 'NETAMNT'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object tb_CashDisbursePREPAREDBY: TStringField
      FieldName = 'PREPAREDBY'
      Size = 30
    end
    object tb_CashDisburseDATE: TDateField
      FieldName = 'DATE'
      DisplayFormat = 'mm/dd/yyyy'
    end
    object tb_CashDisburseDISBURSETYPE: TStringField
      FieldName = 'DISBURSETYPE'
    end
  end
  object tb_PayDisburse: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 192
    Top = 440
    object tb_PayDisburseVOUCHERNO: TIntegerField
      FieldName = 'VOUCHERNO'
    end
    object tb_PayDisburseDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      Size = 50
    end
    object tb_PayDisburseREFNO: TIntegerField
      FieldName = 'REFNO'
    end
    object tb_PayDisburseREFDATE: TDateField
      FieldName = 'REFDATE'
    end
    object tb_PayDisburseNETAMNT: TFloatField
      FieldName = 'NETAMNT'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object tb_PayDisburseDATE: TDateField
      FieldName = 'DATE'
    end
    object tb_PayDisburseINVOICE: TStringField
      FieldName = 'INVOICE'
    end
    object tb_PayDisburseDISBURSETYPE: TStringField
      FieldName = 'DISBURSETYPE'
    end
  end
  object qry_DisburseDetail: TFDQuery
    CachedUpdates = True
    Connection = dbConn
    SQL.Strings = (
      'SELECT *'
      'FROM CASH_DISBURSEDETAIL'
      ''
      ';')
    Left = 464
    Top = 440
    object qry_DisburseDetailID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qry_DisburseDetailHEADERID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'HEADERID'
      Origin = 'HEADERID'
    end
    object qry_DisburseDetailDISBURSETYPE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DISBURSETYPE'
      Origin = 'DISBURSETYPE'
    end
    object qry_DisburseDetailVOUCHERNO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'VOUCHERNO'
      Origin = 'VOUCHERNO'
    end
    object qry_DisburseDetailDESCRIPTION: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRIPTION'
      Origin = 'DESCRIPTION'
      Size = 50
    end
    object qry_DisburseDetailREFNO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'REFNO'
      Origin = 'REFNO'
    end
    object qry_DisburseDetailREFDATE: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'REFDATE'
      Origin = 'REFDATE'
    end
    object qry_DisburseDetailNETAMNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'NETAMNT'
      Origin = 'NETAMNT'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object qry_DisburseDetailDATE: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DATE'
      Origin = '`DATE`'
    end
    object qry_DisburseDetailINVOICE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'INVOICE'
      Origin = 'INVOICE'
    end
  end
  object brw_CashOut: TFDQuery
    Connection = dbConn
    SQL.Strings = (
      'SELECT ID, DISBURSETYPE, CUSTOMER, NETAMNT, REFID'
      'FROM CASH_HEADER'
      ''
      ';')
    Left = 736
    Top = 392
    object brw_CashOutID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object brw_CashOutDISBURSETYPE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DISBURSETYPE'
      Origin = 'DISBURSETYPE'
    end
    object brw_CashOutCUSTOMER: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CUSTOMER'
      Origin = 'CUSTOMER'
      Size = 100
    end
    object brw_CashOutNETAMNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'NETAMNT'
      Origin = 'NETAMNT'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object brw_CashOutREFID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'REFID'
      Origin = 'REFID'
    end
  end
  object brw_InvReq: TFDQuery
    OnCalcFields = brw_InvReqCalcFields
    Connection = dbConn
    SQL.Strings = (
      
        'SELECT INV_REQUEST.*, EMP_REG.LASTNAME, EMP_REG.FIRSTNAME, EMP_R' +
        'EG.MIDDLENAME'
      'FROM INV_REQUEST'
      'INNER JOIN EMP_REG ON EMP_REG.ID = INV_REQUEST.REQBY'
      ''
      'ORDER BY INV_REQUEST.ID DESC;')
    Left = 560
    Top = 440
    object brw_InvReqID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object brw_InvReqJONO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'JONO'
      Origin = 'JONO'
    end
    object brw_InvReqSOURCE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SOURCE'
      Origin = '`SOURCE`'
      FixedChar = True
      Size = 1
    end
    object brw_InvReqNOTES: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOTES'
      Origin = 'NOTES'
      Size = 500
    end
    object brw_InvReqTOTALCOST: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'TOTALCOST'
      Origin = 'TOTALCOST'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object brw_InvReqREQBY: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'REQBY'
      Origin = 'REQBY'
    end
    object brw_InvReqREQDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'REQDATETIME'
      Origin = 'REQDATETIME'
    end
    object brw_InvReqCANCELLED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLED'
      Origin = 'CANCELLED'
    end
    object brw_InvReqCANCELLEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLEDBYID'
      Origin = 'CANCELLEDBYID'
    end
    object brw_InvReqCANCELLEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLEDDATETIME'
      Origin = 'CANCELLEDDATETIME'
    end
    object brw_InvReqPOSTED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'POSTED'
      Origin = 'POSTED'
    end
    object brw_InvReqPOSTEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'POSTEDDATETIME'
      Origin = 'POSTEDDATETIME'
    end
    object brw_InvReqLASTNAME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'LASTNAME'
      Origin = 'LASTNAME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object brw_InvReqFIRSTNAME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FIRSTNAME'
      Origin = 'FIRSTNAME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object brw_InvReqMIDDLENAME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MIDDLENAME'
      Origin = 'MIDDLENAME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object brw_InvReqEMPNAME: TStringField
      FieldKind = fkCalculated
      FieldName = 'EMPNAME'
      Size = 50
      Calculated = True
    end
  end
  object qry_InvRequest: TFDQuery
    OnCalcFields = qry_InvRequestCalcFields
    CachedUpdates = True
    Connection = dbConn
    SQL.Strings = (
      'SELECT *'
      'FROM INV_REQUEST'
      ''
      'ORDER BY ID;')
    Left = 320
    Top = 488
    object qry_InvRequestID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qry_InvRequestJONO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'JONO'
      Origin = 'JONO'
    end
    object qry_InvRequestSOURCE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SOURCE'
      Origin = '`SOURCE`'
      FixedChar = True
      Size = 1
    end
    object qry_InvRequestNOTES: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOTES'
      Origin = 'NOTES'
      Size = 500
    end
    object qry_InvRequestTOTALCOST: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'TOTALCOST'
      Origin = 'TOTALCOST'
    end
    object qry_InvRequestREQBY: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'REQBY'
      Origin = 'REQBY'
    end
    object qry_InvRequestREQDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'REQDATETIME'
      Origin = 'REQDATETIME'
    end
    object qry_InvRequestCANCELLED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLED'
      Origin = 'CANCELLED'
    end
    object qry_InvRequestCANCELLEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLEDBYID'
      Origin = 'CANCELLEDBYID'
    end
    object qry_InvRequestCANCELLEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLEDDATETIME'
      Origin = 'CANCELLEDDATETIME'
    end
    object qry_InvRequestPOSTED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'POSTED'
      Origin = 'POSTED'
    end
    object qry_InvRequestPOSTEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'POSTEDDATETIME'
      Origin = 'POSTEDDATETIME'
    end
    object qry_InvRequestSOURCEDESC: TStringField
      FieldKind = fkCalculated
      FieldName = 'SOURCEDESC'
      Size = 30
      Calculated = True
    end
  end
  object qry_InvReqDetail: TFDQuery
    OnCalcFields = qry_MRCalcFields
    CachedUpdates = True
    Connection = dbConn
    SQL.Strings = (
      'SELECT *'
      'FROM INV_REQDETAIL'
      ''
      ';')
    Left = 360
    Top = 488
    object qry_InvReqDetailID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qry_InvReqDetailHEADERID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'HEADERID'
      Origin = 'HEADERID'
    end
    object qry_InvReqDetailITEMID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ITEMID'
      Origin = 'ITEMID'
    end
    object qry_InvReqDetailITEMDESC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ITEMDESC'
      Origin = 'ITEMDESC'
      Size = 100
    end
    object qry_InvReqDetailCOST: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COST'
      Origin = 'COST'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object qry_InvReqDetailOLDQTY: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'OLDQTY'
      Origin = 'OLDQTY'
    end
    object qry_InvReqDetailQTY: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'QTY'
      Origin = 'QTY'
    end
    object qry_InvReqDetailTOTALCOST: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'TOTALCOST'
      Origin = 'TOTALCOST'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object qry_InvReqDetailUNIT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UNIT'
      Origin = 'UNIT'
    end
    object qry_InvReqDetailCANCELLED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLED'
      Origin = 'CANCELLED'
    end
    object qry_InvReqDetailCANCELLEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLEDBYID'
      Origin = 'CANCELLEDBYID'
    end
    object qry_InvReqDetailCANCELLEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLEDDATETIME'
      Origin = 'CANCELLEDDATETIME'
    end
  end
  object tb_InvReqDetail: TFDMemTable
    OnCalcFields = tb_InvReqDetailCalcFields
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 224
    Top = 440
    object tb_InvReqDetailITEMID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ITEMID'
      Origin = 'ITEMID'
    end
    object tb_InvReqDetailITEMDESC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ITEMDESC'
      Origin = 'ITEMDESC'
      Size = 100
    end
    object tb_InvReqDetailUNIT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UNIT'
      Origin = 'UNIT'
    end
    object tb_InvReqDetailCANCELLED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLED'
      Origin = 'CANCELLED'
    end
    object tb_InvReqDetailDELETEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'DELETEDBYID'
      Origin = 'DELETEDBYID'
    end
    object tb_InvReqDetailDELETEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'DELETEDDATETIME'
      Origin = 'DELETEDDATETIME'
    end
    object tb_InvReqDetailOLDQTY: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'OLDQTY'
      Origin = 'OLDQTY'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object tb_InvReqDetailCOST: TFloatField
      FieldName = 'COST'
      DisplayFormat = '###,###,##0.00'
    end
    object tb_InvReqDetailID: TIntegerField
      FieldName = 'ID'
    end
    object tb_InvReqDetailTOTALCOST: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TOTALCOST'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object tb_InvReqDetailQTY: TFloatField
      FieldName = 'QTY'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object tb_InvReqDetailGARMENTID: TIntegerField
      FieldName = 'GARMENTID'
    end
  end
  object del_InvReqDetail: TFDQuery
    Connection = dbConn
    SQL.Strings = (
      'UPDATE INV_REQDETAIL'
      'SET CANCELLED = TRUE'
      ''
      ''
      ''
      ';')
    Left = 56
    Top = 384
  end
  object brw_OPShirt: TFDQuery
    Connection = dbConn
    SQL.Strings = (
      
        'SELECT INV_FABRICS.DESCRIPTION AS FABRIC, GAR.ID, GAR.CODE, GAR.' +
        'DESCRIPTION, GAR.UNIT, GAR.FABRICID, JO_DETAIL.ID AS DETAILID'
      'FROM INV_GARMENTS GAR'
      'INNER JOIN JO_DETAIL ON JO_DETAIL.SHIRTID = GAR.ID'
      'INNER JOIN INV_FABRICS ON INV_FABRICS.ID = GAR.FABRICID'
      ''
      'ORDER BY GAR.DESCRIPTION;')
    Left = 600
    Top = 440
    object brw_OPShirtID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object brw_OPShirtCODE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODE'
      Origin = 'CODE'
      Size = 10
    end
    object brw_OPShirtDESCRIPTION: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRIPTION'
      Origin = 'DESCRIPTION'
      Size = 100
    end
    object brw_OPShirtUNIT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UNIT'
      Origin = 'UNIT'
    end
    object brw_OPShirtFABRICID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'FABRICID'
      Origin = 'FABRICID'
    end
    object brw_OPShirtDETAILID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'DETAILID'
      Origin = 'DETAILID'
      ProviderFlags = []
      ReadOnly = True
    end
    object brw_OPShirtFABRIC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FABRIC'
      Origin = 'FABRIC'
      Size = 100
    end
  end
  object brw_PMLayout: TFDQuery
    Connection = dbConn
    SQL.Strings = (
      
        'SELECT JO_DETAIL.*, JO_HEADER.RELEASED, JO_HEADER.EXPORTEDDATETI' +
        'ME, JO_HEADER.LOGDATE'
      'FROM JO_HEADER'
      'INNER JOIN JO_DETAIL ON JO_DETAIL.ID = JO_HEADER.ID'
      ''
      'ORDER BY JO_HEADER.ID')
    Left = 640
    Top = 440
    object brw_PMLayoutID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object brw_PMLayoutHEADERID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'HEADERID'
      Origin = 'HEADERID'
    end
    object brw_PMLayoutSHIRTID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'SHIRTID'
      Origin = 'SHIRTID'
    end
    object brw_PMLayoutDESCRIPTION: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRIPTION'
      Origin = 'DESCRIPTION'
      Size = 50
    end
    object brw_PMLayoutFABRICID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'FABRICID'
      Origin = 'FABRICID'
    end
    object brw_PMLayoutFABRIC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FABRIC'
      Origin = 'FABRIC'
      Size = 50
    end
    object brw_PMLayoutSIZE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SIZE'
      Origin = 'SIZE'
      Size = 10
    end
    object brw_PMLayoutFIT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FIT'
      Origin = 'FIT'
      Size = 10
    end
    object brw_PMLayoutQTY: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'QTY'
      Origin = 'QTY'
    end
    object brw_PMLayoutFREE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'FREE'
      Origin = 'FREE'
    end
    object brw_PMLayoutCOST: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COST'
      Origin = 'COST'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object brw_PMLayoutUNIT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UNIT'
      Origin = 'UNIT'
    end
    object brw_PMLayoutTOTALCOST: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'TOTALCOST'
      Origin = 'TOTALCOST'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object brw_PMLayoutCANCELLED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLED'
      Origin = 'CANCELLED'
    end
    object brw_PMLayoutDELETEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'DELETEDBYID'
      Origin = 'DELETEDBYID'
    end
    object brw_PMLayoutDELETEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'DELETEDDATETIME'
      Origin = 'DELETEDDATETIME'
    end
    object brw_PMLayoutREMARKS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'REMARKS'
      Origin = 'REMARKS'
      Size = 255
    end
    object brw_PMLayoutRELEASED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'RELEASED'
      Origin = 'RELEASED'
    end
    object brw_PMLayoutEXPORTEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'EXPORTEDDATETIME'
      Origin = 'EXPORTEDDATETIME'
    end
    object brw_PMLayoutLOGDATE: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'LOGDATE'
      Origin = 'LOGDATE'
    end
  end
  object qry_PMDetail: TFDQuery
    CachedUpdates = True
    Connection = dbConn
    SQL.Strings = (
      'SELECT *'
      'FROM PM_BOARD'
      ''
      ';')
    Left = 408
    Top = 488
    object qry_PMDetailID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qry_PMDetailJONO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'JONO'
      Origin = 'JONO'
    end
    object qry_PMDetailDETAILID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'DETAILID'
      Origin = 'DETAILID'
    end
    object qry_PMDetailSHIRTID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'SHIRTID'
      Origin = 'SHIRTID'
    end
    object qry_PMDetailDESCRIPTION: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRIPTION'
      Origin = 'DESCRIPTION'
      Size = 50
    end
    object qry_PMDetailFABRICID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'FABRICID'
      Origin = 'FABRICID'
    end
    object qry_PMDetailFABRIC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FABRIC'
      Origin = 'FABRIC'
      Size = 50
    end
    object qry_PMDetailSIZE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SIZE'
      Origin = 'SIZE'
      Size = 10
    end
    object qry_PMDetailFIT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FIT'
      Origin = 'FIT'
      Size = 10
    end
    object qry_PMDetailQTY: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'QTY'
      Origin = 'QTY'
    end
    object qry_PMDetailFREE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'FREE'
      Origin = 'FREE'
    end
    object qry_PMDetailUNIT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UNIT'
      Origin = 'UNIT'
    end
    object qry_PMDetailREMARKS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'REMARKS'
      Origin = 'REMARKS'
      Size = 255
    end
    object qry_PMDetailSTARTDATE: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'STARTDATE'
      Origin = 'STARTDATE'
    end
    object qry_PMDetailDATEDUE: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'DATEDUE'
      Origin = 'DATEDUE'
    end
    object qry_PMDetailPAPERSIZE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PAPERSIZE'
      Origin = 'PAPERSIZE'
    end
    object qry_PMDetailLAYOUT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'LAYOUT'
      Origin = 'LAYOUT'
      Size = 500
    end
    object qry_PMDetailFILENAME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FILENAME'
      Origin = 'FILENAME'
      Size = 200
    end
    object qry_PMDetailDONE: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'DONE'
      Origin = 'DONE'
    end
    object qry_PMDetailDONEBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'DONEBYID'
      Origin = 'DONEBYID'
    end
    object qry_PMDetailEMPID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'EMPID'
      Origin = 'EMPID'
    end
    object qry_PMDetailROLEID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ROLEID'
      Origin = 'ROLEID'
    end
    object qry_PMDetailFINISHEDDATE: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'FINISHEDDATE'
      Origin = 'FINISHEDDATE'
    end
    object qry_PMDetailSPRINT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SPRINT'
      Origin = 'SPRINT'
      Size = 50
    end
    object qry_PMDetailCANCELLED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLED'
      Origin = 'CANCELLED'
    end
    object qry_PMDetailDELETEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'DELETEDBYID'
      Origin = 'DELETEDBYID'
    end
    object qry_PMDetailDELETEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'DELETEDDATETIME'
      Origin = 'DELETEDDATETIME'
    end
    object qry_PMDetailCREATEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDBYID'
      Origin = 'CREATEDBYID'
    end
    object qry_PMDetailCREATEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDDATETIME'
      Origin = 'CREATEDDATETIME'
    end
  end
  object qry_CashInDetail: TFDQuery
    CachedUpdates = True
    Connection = dbConn
    SQL.Strings = (
      'SELECT *'
      'FROM CASH_INDETAIL'
      ''
      ';')
    Left = 464
    Top = 488
    object qry_CashInDetailID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qry_CashInDetailHEADERID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'HEADERID'
      Origin = 'HEADERID'
    end
    object qry_CashInDetailRECEIVEDFROM: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RECEIVEDFROM'
      Origin = 'RECEIVEDFROM'
      Size = 255
    end
    object qry_CashInDetailREMARKS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'REMARKS'
      Origin = 'REMARKS'
      Size = 500
    end
    object qry_CashInDetailREFDATE: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'REFDATE'
      Origin = 'REFDATE'
    end
    object qry_CashInDetailCREATEDBY: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDBY'
      Origin = 'CREATEDBY'
    end
    object qry_CashInDetailCREATEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDDATETIME'
      Origin = 'CREATEDDATETIME'
    end
    object qry_CashInDetailCANCELLED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLED'
      Origin = 'CANCELLED'
    end
    object qry_CashInDetailCANCELLEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLEDBYID'
      Origin = 'CANCELLEDBYID'
    end
    object qry_CashInDetailCANCELLEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLEDDATETIME'
      Origin = 'CANCELLEDDATETIME'
    end
    object qry_CashInDetailAMOUNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'AMOUNT'
      Origin = 'AMOUNT'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object qry_CashInDetailREPLENISHMENT: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'REPLENISHMENT'
      Origin = 'REPLENISHMENT'
    end
  end
  object brw_CashIn: TFDQuery
    Connection = dbConn
    SQL.Strings = (
      'SELECT ID, CUSTOMER, NETAMNT, PAYMENTTYPE'
      'FROM CASH_HEADER'
      ''
      ';')
    Left = 688
    Top = 440
    object brw_CashInID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object brw_CashInCUSTOMER: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CUSTOMER'
      Origin = 'CUSTOMER'
      Size = 100
    end
    object brw_CashInNETAMNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'NETAMNT'
      Origin = 'NETAMNT'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object brw_CashInPAYMENTTYPE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PAYMENTTYPE'
      Origin = 'PAYMENTTYPE'
    end
  end
  object brw_CashOut2: TFDQuery
    Connection = dbConn
    SQL.Strings = (
      'SELECT ID, CUSTOMER, NETAMNT, PAYMENTTYPE'
      'FROM CASH_HEADER'
      ''
      ';')
    Left = 744
    Top = 440
    object brw_CashOut2ID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object brw_CashOut2CUSTOMER: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CUSTOMER'
      Origin = 'CUSTOMER'
      Size = 100
    end
    object brw_CashOut2NETAMNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'NETAMNT'
      Origin = 'NETAMNT'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object brw_CashOut2PAYMENTTYPE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PAYMENTTYPE'
      Origin = 'PAYMENTTYPE'
    end
  end
  object qry_CashOutDetail: TFDQuery
    CachedUpdates = True
    Connection = dbConn
    SQL.Strings = (
      'SELECT *'
      'FROM CASH_OUTDETAIL'
      ''
      ';')
    Left = 320
    Top = 536
    object qry_CashOutDetailID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qry_CashOutDetailHEADERID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'HEADERID'
      Origin = 'HEADERID'
    end
    object qry_CashOutDetailPAYEE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PAYEE'
      Origin = 'PAYEE'
    end
    object qry_CashOutDetailREMARKS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'REMARKS'
      Origin = 'REMARKS'
      Size = 500
    end
    object qry_CashOutDetailREFDATE: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'REFDATE'
      Origin = 'REFDATE'
    end
    object qry_CashOutDetailCREATEDBY: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDBY'
      Origin = 'CREATEDBY'
    end
    object qry_CashOutDetailCANCELLED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLED'
      Origin = 'CANCELLED'
    end
    object qry_CashOutDetailCANCELLEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLEDBYID'
      Origin = 'CANCELLEDBYID'
    end
    object qry_CashOutDetailCANCELLEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLEDDATETIME'
      Origin = 'CANCELLEDDATETIME'
    end
    object qry_CashOutDetailAMOUNT: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'AMOUNT'
      Origin = 'AMOUNT'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object qry_CashOutDetailCREATEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDDATETIME'
      Origin = 'CREATEDDATETIME'
    end
    object qry_CashOutDetailCATEGORYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CATEGORYID'
      Origin = 'CATEGORYID'
    end
    object qry_CashOutDetailPAYREFID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PAYREFID'
      Origin = 'PAYREFID'
    end
    object qry_CashOutDetailEMPID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'EMPID'
      Origin = 'EMPID'
    end
    object qry_CashOutDetailCATEGORY: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CATEGORY'
      Origin = 'CATEGORY'
      Size = 50
    end
    object qry_CashOutDetailPAYDATEFROM: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'PAYDATEFROM'
      Origin = 'PAYDATEFROM'
    end
    object qry_CashOutDetailPAYDATETO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'PAYDATETO'
      Origin = 'PAYDATETO'
    end
    object qry_CashOutDetailGROSS: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'GROSS'
      Origin = 'GROSS'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object qry_CashOutDetailCASHADVANCES: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'CASHADVANCES'
      Origin = 'CASHADVANCES'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object qry_CashOutDetailCASHADVBALANCE: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'CASHADVBALANCE'
      Origin = 'CASHADVBALANCE'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object qry_CashOutDetailCASHADVCREDIT: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'CASHADVCREDIT'
      Origin = 'CASHADVCREDIT'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object qry_CashOutDetailCASHADVACTUAL: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'CASHADVACTUAL'
      Origin = 'CASHADVACTUAL'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
  end
  object brw_CashSum: TFDQuery
    OnCalcFields = brw_CashSumCalcFields
    Connection = dbConn
    SQL.Strings = (
      'SELECT *'
      'FROM CASH_HEADER'
      ''
      'ORDER BY ID DESC;')
    Left = 560
    Top = 488
    object brw_CashSumID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object brw_CashSumPAYMENTTYPE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PAYMENTTYPE'
      Origin = 'PAYMENTTYPE'
    end
    object brw_CashSumSOURCE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SOURCE'
      Origin = '`SOURCE`'
      Size = 10
    end
    object brw_CashSumREFID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'REFID'
      Origin = 'REFID'
    end
    object brw_CashSumCUSTOMER: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CUSTOMER'
      Origin = 'CUSTOMER'
      Size = 100
    end
    object brw_CashSumSALESDATE: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'SALESDATE'
      Origin = 'SALESDATE'
    end
    object brw_CashSumNOTES: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOTES'
      Origin = 'NOTES'
      Size = 500
    end
    object brw_CashSumDISCOUNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'DISCOUNT'
      Origin = 'DISCOUNT'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object brw_CashSumDISCPERCENT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'DISCPERCENT'
      Origin = 'DISCPERCENT'
      DisplayFormat = '#0.00'
    end
    object brw_CashSumGROSSAMNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'GROSSAMNT'
      Origin = 'GROSSAMNT'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object brw_CashSumNETAMNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'NETAMNT'
      Origin = 'NETAMNT'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object brw_CashSumBALAMNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'BALAMNT'
      Origin = 'BALAMNT'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object brw_CashSumCARD: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'CARD'
      Origin = 'CARD'
    end
    object brw_CashSumCHECK: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'CHECK'
      Origin = '`CHECK`'
    end
    object brw_CashSumCASH: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'CASH'
      Origin = 'CASH'
    end
    object brw_CashSumCASHAMNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'CASHAMNT'
      Origin = 'CASHAMNT'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object brw_CashSumCARDAMNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'CARDAMNT'
      Origin = 'CARDAMNT'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object brw_CashSumCHECKAMNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'CHECKAMNT'
      Origin = 'CHECKAMNT'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object brw_CashSumCARDHOLDER: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CARDHOLDER'
      Origin = 'CARDHOLDER'
      Size = 50
    end
    object brw_CashSumCARDNO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CARDNO'
      Origin = 'CARDNO'
    end
    object brw_CashSumCARDBANK: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CARDBANK'
      Origin = 'CARDBANK'
      Size = 50
    end
    object brw_CashSumCHECKNO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CHECKNO'
      Origin = 'CHECKNO'
    end
    object brw_CashSumCHECKPAYEE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CHECKPAYEE'
      Origin = 'CHECKPAYEE'
      Size = 50
    end
    object brw_CashSumCHECKDATE: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'CHECKDATE'
      Origin = 'CHECKDATE'
    end
    object brw_CashSumCHECKBANK: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CHECKBANK'
      Origin = 'CHECKBANK'
      Size = 50
    end
    object brw_CashSumCANCELLED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLED'
      Origin = 'CANCELLED'
    end
    object brw_CashSumCANCELLEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLEDBYID'
      Origin = 'CANCELLEDBYID'
    end
    object brw_CashSumCANCELLEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLEDDATETIME'
      Origin = 'CANCELLEDDATETIME'
    end
    object brw_CashSumCREATEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDBYID'
      Origin = 'CREATEDBYID'
    end
    object brw_CashSumCREATEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDDATETIME'
      Origin = 'CREATEDDATETIME'
    end
    object brw_CashSumCHANGEAMNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'CHANGEAMNT'
      Origin = 'CHANGEAMNT'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object brw_CashSumPAIDAMNT: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PAIDAMNT'
      DisplayFormat = '###,###,##0.00'
      currency = True
      Calculated = True
    end
    object brw_CashSumVOID: TStringField
      FieldKind = fkCalculated
      FieldName = 'VOID'
      Size = 1
      Calculated = True
    end
    object brw_CashSumPAYTPE: TStringField
      FieldKind = fkCalculated
      FieldName = 'PAYTPE'
      Calculated = True
    end
    object brw_CashSumNETCALC: TFloatField
      FieldKind = fkCalculated
      FieldName = 'NETCALC'
      DisplayFormat = '###,###,##0.00'
      currency = True
      Calculated = True
    end
    object brw_CashSumGROSSCALC: TFloatField
      FieldKind = fkCalculated
      FieldName = 'GROSSCALC'
      DisplayFormat = '###,###,##0.00'
      currency = True
      Calculated = True
    end
    object brw_CashSumCASHCALC: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CASHCALC'
      DisplayFormat = '###,###,##0.00'
      currency = True
      Calculated = True
    end
    object brw_CashSumCHECKCALC: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CHECKCALC'
      DisplayFormat = '###,###,##0.00'
      currency = True
      Calculated = True
    end
    object brw_CashSumEXPENSETYPE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EXPENSETYPE'
      Origin = 'EXPENSETYPE'
      Size = 50
    end
    object brw_CashSumCARDCALC: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CARDCALC'
      DisplayFormat = '###,###,##0.00'
      currency = True
      Calculated = True
    end
    object brw_CashSumSOURCECALC: TStringField
      FieldKind = fkCalculated
      FieldName = 'SOURCECALC'
      Size = 50
      Calculated = True
    end
  end
  object brw_CPRReport: TFDQuery
    OnCalcFields = brw_CPRReportCalcFields
    Connection = dbConn
    SQL.Strings = (
      
        'SELECT USR.`FIRSTNAME`, USR.`LASTNAME`, USR.`MIDDLENAME`, HEADER' +
        '.`SOURCE`, HEADER.`JONO`, HEADER.`TOTALCOST`, HEADER.`REQDATETIM' +
        'E`, DETAIL.* FROM REQ_HEADER HEADER'
      'INNER JOIN REQ_DETAIL DETAIL ON DETAIL.`HEADERID` = HEADER.`ID`'
      'INNER JOIN SYS_USERS USR ON USR.`ID` = HEADER.`REQBY`'
      ''
      'ORDER BY HEADER.ID DESC;')
    Left = 608
    Top = 488
    object brw_CPRReportFIRSTNAME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FIRSTNAME'
      Origin = 'FIRSTNAME'
    end
    object brw_CPRReportLASTNAME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'LASTNAME'
      Origin = 'LASTNAME'
    end
    object brw_CPRReportMIDDLENAME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MIDDLENAME'
      Origin = 'MIDDLENAME'
    end
    object brw_CPRReportSOURCE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SOURCE'
      Origin = '`SOURCE`'
      FixedChar = True
      Size = 1
    end
    object brw_CPRReportJONO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'JONO'
      Origin = 'JONO'
    end
    object brw_CPRReportTOTALCOST: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'TOTALCOST'
      Origin = 'TOTALCOST'
    end
    object brw_CPRReportREQDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'REQDATETIME'
      Origin = 'REQDATETIME'
    end
    object brw_CPRReportID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object brw_CPRReportHEADERID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'HEADERID'
      Origin = 'HEADERID'
    end
    object brw_CPRReportITEMID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ITEMID'
      Origin = 'ITEMID'
    end
    object brw_CPRReportITEMDESC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ITEMDESC'
      Origin = 'ITEMDESC'
      Size = 100
    end
    object brw_CPRReportCOST: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COST'
      Origin = 'COST'
    end
    object brw_CPRReportOLDQTY: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'OLDQTY'
      Origin = 'OLDQTY'
    end
    object brw_CPRReportQTY: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'QTY'
      Origin = 'QTY'
    end
    object brw_CPRReportTOTALCOST_1: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'TOTALCOST_1'
      Origin = 'TOTALCOST'
    end
    object brw_CPRReportUNIT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UNIT'
      Origin = 'UNIT'
    end
    object brw_CPRReportCANCELLED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLED'
      Origin = 'CANCELLED'
    end
    object brw_CPRReportDELETEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'DELETEDBYID'
      Origin = 'DELETEDBYID'
    end
    object brw_CPRReportDELETEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'DELETEDDATETIME'
      Origin = 'DELETEDDATETIME'
    end
    object brw_CPRReportREQBY: TStringField
      FieldKind = fkCalculated
      FieldName = 'REQBY'
      Size = 255
      Calculated = True
    end
  end
  object brw_IRReport: TFDQuery
    OnCalcFields = brw_IRReportCalcFields
    Connection = dbConn
    SQL.Strings = (
      
        'SELECT USR.`FIRSTNAME`, USR.`LASTNAME`, USR.`MIDDLENAME`, HEADER' +
        '.`INVOICE`, HEADER.`IRDATE`, HEADER.`NETAMNT`, HEADER.`REFID`, H' +
        'EADER.`VENDOR`, HEADER.`SOURCE`, DETAIL.* '
      'FROM IR_HEADER HEADER'
      'INNER JOIN IR_DETAIL DETAIL ON DETAIL.`HEADERID` = HEADER.`ID`'
      'INNER JOIN SYS_USERS USR ON USR.`ID` = HEADER.`CREATEDBYID`'
      ''
      'ORDER BY HEADER.ID DESC;')
    Left = 648
    Top = 488
    object brw_IRReportFIRSTNAME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FIRSTNAME'
      Origin = 'FIRSTNAME'
    end
    object brw_IRReportLASTNAME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'LASTNAME'
      Origin = 'LASTNAME'
    end
    object brw_IRReportMIDDLENAME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MIDDLENAME'
      Origin = 'MIDDLENAME'
    end
    object brw_IRReportINVOICE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'INVOICE'
      Origin = 'INVOICE'
    end
    object brw_IRReportIRDATE: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'IRDATE'
      Origin = 'IRDATE'
    end
    object brw_IRReportNETAMNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'NETAMNT'
      Origin = 'NETAMNT'
    end
    object brw_IRReportREFID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'REFID'
      Origin = 'REFID'
    end
    object brw_IRReportVENDOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VENDOR'
      Origin = 'VENDOR'
      Size = 50
    end
    object brw_IRReportSOURCE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SOURCE'
      Origin = '`SOURCE`'
      Size = 10
    end
    object brw_IRReportID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object brw_IRReportHEADERID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'HEADERID'
      Origin = 'HEADERID'
    end
    object brw_IRReportITEMID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ITEMID'
      Origin = 'ITEMID'
    end
    object brw_IRReportDESCRIPTION: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRIPTION'
      Origin = 'DESCRIPTION'
      Size = 100
    end
    object brw_IRReportUNIT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UNIT'
      Origin = 'UNIT'
    end
    object brw_IRReportONHANDQTY: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ONHANDQTY'
      Origin = 'ONHANDQTY'
    end
    object brw_IRReportREQQTY: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'REQQTY'
      Origin = 'REQQTY'
    end
    object brw_IRReportRCVDQTY: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'RCVDQTY'
      Origin = 'RCVDQTY'
    end
    object brw_IRReportQTY: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'QTY'
      Origin = 'QTY'
    end
    object brw_IRReportCOST: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COST'
      Origin = 'COST'
    end
    object brw_IRReportAMOUNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'AMOUNT'
      Origin = 'AMOUNT'
    end
    object brw_IRReportOVERRIDE: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'OVERRIDE'
      Origin = 'OVERRIDE'
    end
    object brw_IRReportCANCELLED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLED'
      Origin = 'CANCELLED'
    end
    object brw_IRReportCANCELLEDYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLEDYID'
      Origin = 'CANCELLEDYID'
    end
    object brw_IRReportCANCELLEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLEDDATETIME'
      Origin = 'CANCELLEDDATETIME'
    end
    object brw_IRReportRCVDBY: TStringField
      FieldKind = fkCalculated
      FieldName = 'RCVDBY'
      Size = 255
      Calculated = True
    end
  end
  object brw_JOReport: TFDQuery
    Connection = dbConn
    SQL.Strings = (
      
        'SELECT HEADER.`JONO`, HEADER.`LOGDATE`, HEADER.`DUEDATE`, HEADER' +
        '.`POSTEDDATETIME`, HEADER.`NETAMNT`, HEADER.`PAIDAMNT`, HEADER.`' +
        'BALAMNT`, HEADER.`POSTED`, HEADER.`LAYOUT`, HEADER.`RELEASED`, H' +
        'EADER.`CLOSED`, CLIENTS.`NAME`, DETAIL.* '
      'FROM JO_HEADER HEADER'
      'INNER JOIN JO_DETAIL DETAIL ON DETAIL.`HEADERID` = HEADER.`ID`'
      'INNER JOIN JO_CLIENTS CLIENTS ON CLIENTS.ID = HEADER.`CLIENTID`'
      ''
      'ORDER BY HEADER.ID DESC;')
    Left = 688
    Top = 488
    object brw_JOReportJONO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'JONO'
      Origin = 'JONO'
    end
    object brw_JOReportLOGDATE: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'LOGDATE'
      Origin = 'LOGDATE'
    end
    object brw_JOReportDUEDATE: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DUEDATE'
      Origin = 'DUEDATE'
    end
    object brw_JOReportPOSTEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'POSTEDDATETIME'
      Origin = 'POSTEDDATETIME'
    end
    object brw_JOReportNETAMNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'NETAMNT'
      Origin = 'NETAMNT'
    end
    object brw_JOReportPAIDAMNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PAIDAMNT'
      Origin = 'PAIDAMNT'
    end
    object brw_JOReportBALAMNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'BALAMNT'
      Origin = 'BALAMNT'
    end
    object brw_JOReportPOSTED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'POSTED'
      Origin = 'POSTED'
    end
    object brw_JOReportLAYOUT: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'LAYOUT'
      Origin = 'LAYOUT'
    end
    object brw_JOReportRELEASED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'RELEASED'
      Origin = 'RELEASED'
    end
    object brw_JOReportCLOSED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'CLOSED'
      Origin = 'CLOSED'
    end
    object brw_JOReportNAME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NAME'
      Origin = '`NAME`'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object brw_JOReportID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInKey]
      ReadOnly = True
    end
    object brw_JOReportHEADERID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'HEADERID'
      Origin = 'HEADERID'
      ProviderFlags = []
      ReadOnly = True
    end
    object brw_JOReportSHIRTID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'SHIRTID'
      Origin = 'SHIRTID'
      ProviderFlags = []
      ReadOnly = True
    end
    object brw_JOReportDESCRIPTION: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRIPTION'
      Origin = 'DESCRIPTION'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object brw_JOReportFABRICID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'FABRICID'
      Origin = 'FABRICID'
      ProviderFlags = []
      ReadOnly = True
    end
    object brw_JOReportFABRIC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FABRIC'
      Origin = 'FABRIC'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object brw_JOReportSIZE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SIZE'
      Origin = 'SIZE'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object brw_JOReportFIT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FIT'
      Origin = 'FIT'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object brw_JOReportQTY: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'QTY'
      Origin = 'QTY'
      ProviderFlags = []
      ReadOnly = True
    end
    object brw_JOReportFREE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'FREE'
      Origin = 'FREE'
      ProviderFlags = []
      ReadOnly = True
    end
    object brw_JOReportCOST: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COST'
      Origin = 'COST'
      ProviderFlags = []
      ReadOnly = True
    end
    object brw_JOReportUNIT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UNIT'
      Origin = 'UNIT'
      ProviderFlags = []
      ReadOnly = True
    end
    object brw_JOReportTOTALCOST: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'TOTALCOST'
      Origin = 'TOTALCOST'
      ProviderFlags = []
      ReadOnly = True
    end
    object brw_JOReportCANCELLED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLED'
      Origin = 'CANCELLED'
      ProviderFlags = []
      ReadOnly = True
    end
    object brw_JOReportDELETEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'DELETEDBYID'
      Origin = 'DELETEDBYID'
      ProviderFlags = []
      ReadOnly = True
    end
    object brw_JOReportDELETEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'DELETEDDATETIME'
      Origin = 'DELETEDDATETIME'
      ProviderFlags = []
      ReadOnly = True
    end
    object brw_JOReportREMARKS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'REMARKS'
      Origin = 'REMARKS'
      ProviderFlags = []
      ReadOnly = True
      Size = 255
    end
    object brw_JOReportLAYOUT_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'LAYOUT_1'
      Origin = 'LAYOUT'
      ProviderFlags = []
      ReadOnly = True
      Size = 500
    end
    object brw_JOReportFILENAME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FILENAME'
      Origin = 'FILENAME'
      ProviderFlags = []
      ReadOnly = True
      Size = 200
    end
  end
  object brw_InvCount: TFDQuery
    Connection = dbConn
    SQL.Strings = (
      
        'SELECT SUM(DETAILS.QTY) AS BALANCE, DETAILS.INVID, ITEM.DESCRIPT' +
        'ION'
      'FROM INV_DETAILS DETAILS'
      'INNER JOIN INV_ITEMS ITEM ON ITEM.ID = DETAILS.INVID'
      ''
      'GROUP BY DETAILS.INVID;')
    Left = 736
    Top = 488
    object brw_InvCountBALANCE: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'BALANCE'
      Origin = 'BALANCE'
      ProviderFlags = []
      ReadOnly = True
    end
    object brw_InvCountINVID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'INVID'
      Origin = 'INVID'
    end
    object brw_InvCountDESCRIPTION: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRIPTION'
      Origin = 'DESCRIPTION'
      ProviderFlags = []
      ReadOnly = True
      Size = 200
    end
  end
  object tb_InvPeriodic: TFDMemTable
    Active = True
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 184
    Top = 488
    object tb_InvPeriodicBALANCE: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'BALANCE'
      Origin = 'BALANCE'
      ProviderFlags = []
    end
    object tb_InvPeriodicINVID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'INVID'
      Origin = 'INVID'
    end
    object tb_InvPeriodicDESCRIPTION: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRIPTION'
      Origin = 'DESCRIPTION'
      ProviderFlags = []
      Size = 200
    end
    object tb_InvPeriodicCREATEDDATETIME: TDateTimeField
      FieldName = 'CREATEDDATETIME'
    end
    object tb_InvPeriodicSOURCE: TStringField
      FieldName = 'SOURCE'
      Size = 50
    end
    object tb_InvPeriodicSOURCEID: TIntegerField
      FieldName = 'SOURCEID'
    end
    object tb_InvPeriodicCREATEDBY: TStringField
      FieldName = 'CREATEDBY'
      Size = 100
    end
    object tb_InvPeriodicIN: TFloatField
      FieldName = 'IN'
      DisplayFormat = '##0.000'
    end
    object tb_InvPeriodicOUT: TFloatField
      FieldName = 'OUT'
      DisplayFormat = '##0.000'
    end
  end
  object qry_dateconfig: TFDQuery
    CachedUpdates = True
    Connection = dbConn
    SQL.Strings = (
      'SELECT *'
      'FROM SYS_DATECONFIG'
      ''
      ';')
    Left = 368
    Top = 536
    object qry_dateconfigAUTONOW: TBooleanField
      FieldName = 'AUTONOW'
      Origin = 'AUTONOW'
      Required = True
    end
    object qry_dateconfigDATE: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DATE'
      Origin = '`DATE`'
    end
    object qry_dateconfigACTIVE: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'ACTIVE'
      Origin = 'ACTIVE'
    end
  end
  object brw_PayrollEmp: TFDQuery
    OnCalcFields = brw_PayrollEmpCalcFields
    Connection = dbConn
    SQL.Strings = (
      
        'SELECT DETAIL.HEADERID, DETAIL.ROLE, DETAIL.NETPAY, EMP.FIRSTNAM' +
        'E, EMP.MIDDLENAME, EMP.LASTNAME, EMP.ID'
      'FROM PAYROLL_DETAIL DETAIL'
      'INNER JOIN PAYROLL_HEADER HEADER ON DETAIL.HEADERID = HEADER.ID'
      'INNER JOIN EMP_REG EMP ON EMP.ID = DETAIL.EMPID'
      ''
      ';')
    Left = 560
    Top = 536
    object brw_PayrollEmpHEADERID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'HEADERID'
      Origin = 'HEADERID'
    end
    object brw_PayrollEmpROLE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ROLE'
      Origin = 'ROLE'
    end
    object brw_PayrollEmpNETPAY: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'NETPAY'
      Origin = 'NETPAY'
    end
    object brw_PayrollEmpFIRSTNAME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FIRSTNAME'
      Origin = 'FIRSTNAME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object brw_PayrollEmpMIDDLENAME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MIDDLENAME'
      Origin = 'MIDDLENAME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object brw_PayrollEmpLASTNAME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'LASTNAME'
      Origin = 'LASTNAME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object brw_PayrollEmpEMPNAME: TStringField
      FieldKind = fkCalculated
      FieldName = 'EMPNAME'
      Size = 100
      Calculated = True
    end
    object brw_PayrollEmpID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInKey]
      ReadOnly = True
    end
  end
  object brw_CompExpense: TFDQuery
    Connection = dbConn
    SQL.Strings = (
      
        'SELECT SUM(DETAIL.AMOUNT) AS AMOUNT, SUM(DETAIL.CASHADVACTUAL) A' +
        'S ACTUAL, SUM(DETAIL.CASHADVANCES) AS CASHADV'
      'FROM CASH_OUTDETAIL DETAIL'
      'INNER JOIN EXPENSE_TYPE EXP ON EXP.ID = DETAIL.CATEGORYID  '
      'INNER JOIN CASH_HEADER HEADER ON HEADER.ID = DETAIL.HEADERID'
      ''
      ';')
    Left = 608
    Top = 536
    object brw_CompExpenseAMOUNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'AMOUNT'
      Origin = 'AMOUNT'
      ProviderFlags = []
      ReadOnly = True
    end
    object brw_CompExpenseACTUAL: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ACTUAL'
      Origin = 'ACTUAL'
      ProviderFlags = []
      ReadOnly = True
    end
    object brw_CompExpenseCASHADV: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'CASHADV'
      Origin = 'CASHADV'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object brw_ViewCA: TFDQuery
    Connection = dbConn
    SQL.Strings = (
      'SELECT DETAIL.*, HEADER.SALESDATE'
      'FROM CASH_OUTDETAIL DETAIL'
      'INNER JOIN EXPENSE_TYPE EXP ON EXP.ID = DETAIL.CATEGORYID  '
      'INNER JOIN CASH_HEADER HEADER ON HEADER.ID = DETAIL.HEADERID'
      ''
      'ORDER BY DETAIL.CATEGORY, HEADER.SALESDATE;')
    Left = 648
    Top = 536
    object brw_ViewCAID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object brw_ViewCAHEADERID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'HEADERID'
      Origin = 'HEADERID'
    end
    object brw_ViewCACATEGORY: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CATEGORY'
      Origin = 'CATEGORY'
      Size = 50
    end
    object brw_ViewCACATEGORYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CATEGORYID'
      Origin = 'CATEGORYID'
    end
    object brw_ViewCAPAYREFID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PAYREFID'
      Origin = 'PAYREFID'
    end
    object brw_ViewCAEMPID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'EMPID'
      Origin = 'EMPID'
    end
    object brw_ViewCAPAYEE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PAYEE'
      Origin = 'PAYEE'
    end
    object brw_ViewCAREMARKS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'REMARKS'
      Origin = 'REMARKS'
      Size = 500
    end
    object brw_ViewCAAMOUNT: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'AMOUNT'
      Origin = 'AMOUNT'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object brw_ViewCAREFDATE: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'REFDATE'
      Origin = 'REFDATE'
    end
    object brw_ViewCACREATEDBY: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDBY'
      Origin = 'CREATEDBY'
    end
    object brw_ViewCACREATEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDDATETIME'
      Origin = 'CREATEDDATETIME'
    end
    object brw_ViewCACANCELLED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLED'
      Origin = 'CANCELLED'
    end
    object brw_ViewCACANCELLEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLEDBYID'
      Origin = 'CANCELLEDBYID'
    end
    object brw_ViewCACANCELLEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLEDDATETIME'
      Origin = 'CANCELLEDDATETIME'
    end
    object brw_ViewCASALESDATE: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'SALESDATE'
      Origin = 'SALESDATE'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object brw_SalesJO: TFDQuery
    Connection = dbConn
    SQL.Strings = (
      
        'SELECT CASH.BALAMNT, CASH.ID AS ORNO, CASH.SOURCE, CASH.CUSTOMER' +
        ',CASH.SALESDATE,CASH.PAYMENTTYPE,CASH.CASHAMNT,CASH.CARDAMNT,CAS' +
        'H.CHECKAMNT, JO.JONO, JO.LOGDATE, JO.DUEDATE,JO.NETAMNT,JO.PAIDA' +
        'MNT,DETAIL.FABRIC,DETAIL.QTY + DETAIL.FREE AS QTY, DETAIL.COST, ' +
        'DETAIL.UNIT, JO.CLIENTID '
      'FROM CASH_HEADER CASH'
      'INNER JOIN JO_HEADER JO ON JO.ID = CASH.REFID'
      'INNER JOIN JO_DETAIL DETAIL ON DETAIL.HEADERID = JO.ID'
      ''
      'ORDER BY ORNO, CASH.SALESDATE;')
    Left = 696
    Top = 536
    object brw_SalesJOORNO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ORNO'
      Origin = 'ID'
    end
    object brw_SalesJOSOURCE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SOURCE'
      Origin = '`SOURCE`'
      Size = 10
    end
    object brw_SalesJOCUSTOMER: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CUSTOMER'
      Origin = 'CUSTOMER'
      Size = 100
    end
    object brw_SalesJOSALESDATE: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'SALESDATE'
      Origin = 'SALESDATE'
    end
    object brw_SalesJOPAYMENTTYPE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PAYMENTTYPE'
      Origin = 'PAYMENTTYPE'
    end
    object brw_SalesJOCASHAMNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'CASHAMNT'
      Origin = 'CASHAMNT'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object brw_SalesJOCARDAMNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'CARDAMNT'
      Origin = 'CARDAMNT'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object brw_SalesJOCHECKAMNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'CHECKAMNT'
      Origin = 'CHECKAMNT'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object brw_SalesJOJONO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'JONO'
      Origin = 'JONO'
      ProviderFlags = []
      ReadOnly = True
    end
    object brw_SalesJOLOGDATE: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'LOGDATE'
      Origin = 'LOGDATE'
      ProviderFlags = []
      ReadOnly = True
    end
    object brw_SalesJODUEDATE: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DUEDATE'
      Origin = 'DUEDATE'
      ProviderFlags = []
      ReadOnly = True
    end
    object brw_SalesJONETAMNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'NETAMNT'
      Origin = 'NETAMNT'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object brw_SalesJOPAIDAMNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PAIDAMNT'
      Origin = 'PAIDAMNT'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object brw_SalesJOFABRIC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FABRIC'
      Origin = 'FABRIC'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object brw_SalesJOQTY: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'QTY'
      Origin = 'QTY'
      ProviderFlags = []
      ReadOnly = True
    end
    object brw_SalesJOCOST: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COST'
      Origin = 'COST'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object brw_SalesJOUNIT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UNIT'
      Origin = 'UNIT'
      ProviderFlags = []
      ReadOnly = True
    end
    object brw_SalesJOCLIENTID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CLIENTID'
      Origin = 'CLIENTID'
      ProviderFlags = []
      ReadOnly = True
    end
    object brw_SalesJOBALAMNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'BALAMNT'
      Origin = 'BALAMNT'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
  end
  object brw_SalesCash: TFDQuery
    Connection = dbConn
    SQL.Strings = (
      
        'SELECT HEADER.ID AS ORNO, HEADER.PAYMENTTYPE, HEADER.SOURCE, HEA' +
        'DER.CUSTOMER, HEADER.SALESDATE, HEADER.GROSSAMNT, HEADER.DISCOUN' +
        'T, HEADER.NETAMNT, HEADER.CASHAMNT, HEADER.CARDAMNT, HEADER.CHEC' +
        'KAMNT, DETAIL.DESCRIPTION, DETAIL.QTY, DETAIL.PRICE, DETAIL.UNIT' +
        ', DETAIL.AMOUNT  '
      'FROM CASH_HEADER HEADER'
      'INNER JOIN CASH_DETAIL DETAIL ON DETAIL.HEADERID = HEADER.ID'
      ''
      'ORDER BY HEADER.SOURCE, HEADER.SALESDATE, HEADER.CUSTOMER;')
    Left = 744
    Top = 536
    object brw_SalesCashORNO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ORNO'
      Origin = 'ID'
    end
    object brw_SalesCashPAYMENTTYPE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PAYMENTTYPE'
      Origin = 'PAYMENTTYPE'
    end
    object brw_SalesCashCUSTOMER: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CUSTOMER'
      Origin = 'CUSTOMER'
      Size = 100
    end
    object brw_SalesCashSALESDATE: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'SALESDATE'
      Origin = 'SALESDATE'
    end
    object brw_SalesCashGROSSAMNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'GROSSAMNT'
      Origin = 'GROSSAMNT'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object brw_SalesCashDISCOUNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'DISCOUNT'
      Origin = 'DISCOUNT'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object brw_SalesCashNETAMNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'NETAMNT'
      Origin = 'NETAMNT'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object brw_SalesCashCASHAMNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'CASHAMNT'
      Origin = 'CASHAMNT'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object brw_SalesCashCARDAMNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'CARDAMNT'
      Origin = 'CARDAMNT'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object brw_SalesCashCHECKAMNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'CHECKAMNT'
      Origin = 'CHECKAMNT'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object brw_SalesCashDESCRIPTION: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRIPTION'
      Origin = 'DESCRIPTION'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object brw_SalesCashQTY: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'QTY'
      Origin = 'QTY'
      ProviderFlags = []
      ReadOnly = True
    end
    object brw_SalesCashPRICE: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PRICE'
      Origin = 'PRICE'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object brw_SalesCashUNIT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UNIT'
      Origin = 'UNIT'
      ProviderFlags = []
      ReadOnly = True
    end
    object brw_SalesCashAMOUNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'AMOUNT'
      Origin = 'AMOUNT'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object brw_SalesCashSOURCE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SOURCE'
      Origin = '`SOURCE`'
      Size = 10
    end
  end
  object brw_SalesCashIn: TFDQuery
    OnCalcFields = brw_SalesCashInCalcFields
    Connection = dbConn
    SQL.Strings = (
      
        'SELECT DETAIL.REPLENISHMENT, HEADER.ID AS ORNO, HEADER.PAYMENTTY' +
        'PE, HEADER.SOURCE, HEADER.CUSTOMER, HEADER.SALESDATE, HEADER.NET' +
        'AMNT, DETAIL.REMARKS '
      'FROM CASH_HEADER HEADER'
      'INNER JOIN CASH_INDETAIL DETAIL ON DETAIL.HEADERID = HEADER.ID'
      ''
      ';')
    Left = 560
    Top = 584
    object brw_SalesCashInORNO: TFDAutoIncField
      FieldName = 'ORNO'
      Origin = 'ID'
      ReadOnly = True
    end
    object brw_SalesCashInPAYMENTTYPE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PAYMENTTYPE'
      Origin = 'PAYMENTTYPE'
    end
    object brw_SalesCashInSOURCE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SOURCE'
      Origin = '`SOURCE`'
      Size = 10
    end
    object brw_SalesCashInCUSTOMER: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CUSTOMER'
      Origin = 'CUSTOMER'
      Size = 100
    end
    object brw_SalesCashInSALESDATE: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'SALESDATE'
      Origin = 'SALESDATE'
    end
    object brw_SalesCashInNETAMNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'NETAMNT'
      Origin = 'NETAMNT'
    end
    object brw_SalesCashInREMARKS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'REMARKS'
      Origin = 'REMARKS'
      ProviderFlags = []
      ReadOnly = True
      Size = 500
    end
    object brw_SalesCashInSOURCECALC: TStringField
      FieldKind = fkCalculated
      FieldName = 'SOURCECALC'
      Calculated = True
    end
    object brw_SalesCashInREPLENISHMENT: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'REPLENISHMENT'
      Origin = 'REPLENISHMENT'
    end
  end
  object brw_CashJO: TFDQuery
    Connection = dbConn
    SQL.Strings = (
      
        'SELECT SUM(CASH.CASHAMNT) AS CASHAMNT, SUM(CASH.CARDAMNT) AS CAR' +
        'DAMNT, SUM(CASH.CHECKAMNT) AS CHECKAMNT, SUM(CASH.CHANGEAMNT) AS' +
        ' CHANGEAMNT, SUM(CASH.NETAMNT) AS NETAMNT'
      'FROM CASH_HEADER CASH'
      'INNER JOIN JO_HEADER JO ON JO.ID = CASH.REFID'
      ''
      ';')
    Left = 608
    Top = 584
    object brw_CashJOCASHAMNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'CASHAMNT'
      Origin = 'CASHAMNT'
      ProviderFlags = []
      ReadOnly = True
    end
    object brw_CashJOCARDAMNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'CARDAMNT'
      Origin = 'CARDAMNT'
      ProviderFlags = []
      ReadOnly = True
    end
    object brw_CashJOCHECKAMNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'CHECKAMNT'
      Origin = 'CHECKAMNT'
      ProviderFlags = []
      ReadOnly = True
    end
    object brw_CashJOCHANGEAMNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'CHANGEAMNT'
      Origin = 'CHANGEAMNT'
      ProviderFlags = []
      ReadOnly = True
    end
    object brw_CashJONETAMNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'NETAMNT'
      Origin = 'NETAMNT'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object brw_OpenCashSum: TFDQuery
    Connection = dbConn
    SQL.Strings = (
      
        'SELECT CASH_FUND.POSDAYID, POS_DAY.DATE AS POSDAY, SUM(CASH_FUND' +
        '.AMNT) AS AMNT'
      'FROM CASH_FUND'
      'INNER JOIN POS_DAY ON POS_DAY.ID = CASH_FUND.POSDAYID'
      ''
      'GROUP BY CASH_FUND.POSDAYID, POS_DAY.DATE;')
    Left = 656
    Top = 584
    object brw_OpenCashSumAMNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'AMNT'
      Origin = 'AMNT'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object brw_OpenCashSumPOSDAYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'POSDAYID'
      Origin = 'POSDAYID'
    end
    object brw_OpenCashSumPOSDAY: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'POSDAY'
      Origin = '`DATE`'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object brw_CloseCashSum: TFDQuery
    Connection = dbConn
    SQL.Strings = (
      
        'SELECT CASH_END.POSDAYID, POS_DAY.DATE, SUM(CASH_END.AMNT) AS AM' +
        'NT'
      'FROM CASH_END'
      'INNER JOIN POS_DAY ON POS_DAY.ID = CASH_END.POSDAYID'
      ''
      'GROUP BY CASH_END.POSDAYID, POS_DAY.DATE;')
    Left = 704
    Top = 584
    object brw_CloseCashSumAMNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'AMNT'
      Origin = 'AMNT'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object brw_CloseCashSumPOSDAYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'POSDAYID'
      Origin = 'POSDAYID'
    end
    object brw_CloseCashSumDATE: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DATE'
      Origin = '`DATE`'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object tb_CashFlow: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 224
    Top = 488
    object tb_CashFlowDEBIT: TFloatField
      FieldName = 'DEBIT'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object tb_CashFlowCREDIT: TFloatField
      FieldName = 'CREDIT'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object tb_CashFlowOPERATIONS: TStringField
      FieldName = 'OPERATIONS'
      Size = 100
    end
    object tb_CashFlowCUSTOMER: TStringField
      FieldName = 'CUSTOMER'
      Size = 100
    end
    object tb_CashFlowOPENNING: TFloatField
      FieldName = 'OPENNING'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object tb_CashFlowPOSDAY: TDateField
      FieldName = 'POSDAY'
    end
    object tb_CashFlowPOSDAYID: TIntegerField
      FieldName = 'POSDAYID'
    end
    object tb_CashFlowTIME: TTimeField
      FieldName = 'TIME'
    end
    object tb_CashFlowENDING: TFloatField
      FieldName = 'ENDING'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object tb_CashFlowID: TIntegerField
      FieldName = 'ID'
    end
  end
  object brw_MatRequest: TFDQuery
    OnCalcFields = brw_MatRequestCalcFields
    Connection = dbConn
    SQL.Strings = (
      
        'SELECT REQ.TOTALCOST, REQ.ID, REQ.JONO, REQ.SOURCE, REQ.REQBY, R' +
        'EQ.REQDATETIME, DETAIL.ITEMID, DETAIL.ITEMDESC, DETAIL.QTY, DETA' +
        'IL.COST, DETAIL.UNIT, JO.BALAMNT, JO.PAIDAMNT, JO.LOGDATE, JO.DU' +
        'EDATE, JO.NETAMNT, CLIENT.NAME AS CLIENT, USR.LASTNAME, USR.FIRS' +
        'TNAME'
      'FROM INV_REQUEST REQ'
      'INNER JOIN INV_REQDETAIL DETAIL ON DETAIL.HEADERID = REQ.ID'
      'INNER JOIN SYS_USERS USR ON USR.ID = REQ.REQBY'
      'LEFT JOIN JO_HEADER JO ON JO.JONO = REQ.JONO'
      'LEFT JOIN JO_CLIENTS CLIENT ON CLIENT.ID = JO.CLIENTID'
      ''
      'ORDER BY REQ.SOURCE, REQ.JONO')
    Left = 752
    Top = 584
    object brw_MatRequestID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object brw_MatRequestJONO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'JONO'
      Origin = 'JONO'
    end
    object brw_MatRequestSOURCE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SOURCE'
      Origin = '`SOURCE`'
      FixedChar = True
      Size = 1
    end
    object brw_MatRequestREQBY: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'REQBY'
      Origin = 'REQBY'
    end
    object brw_MatRequestITEMID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ITEMID'
      Origin = 'ITEMID'
      ProviderFlags = []
      ReadOnly = True
    end
    object brw_MatRequestITEMDESC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ITEMDESC'
      Origin = 'ITEMDESC'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object brw_MatRequestCOST: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COST'
      Origin = 'COST'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object brw_MatRequestUNIT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UNIT'
      Origin = 'UNIT'
      ProviderFlags = []
      ReadOnly = True
    end
    object brw_MatRequestLOGDATE: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'LOGDATE'
      Origin = 'LOGDATE'
      ProviderFlags = []
      ReadOnly = True
    end
    object brw_MatRequestDUEDATE: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DUEDATE'
      Origin = 'DUEDATE'
      ProviderFlags = []
      ReadOnly = True
    end
    object brw_MatRequestNETAMNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'NETAMNT'
      Origin = 'NETAMNT'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object brw_MatRequestCLIENT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLIENT'
      Origin = '`NAME`'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object brw_MatRequestQTY: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'QTY'
      Origin = 'QTY'
      ProviderFlags = []
      ReadOnly = True
    end
    object brw_MatRequestSOURCECALC: TStringField
      FieldKind = fkCalculated
      FieldName = 'SOURCECALC'
      Calculated = True
    end
    object brw_MatRequestLASTNAME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'LASTNAME'
      Origin = 'LASTNAME'
      ProviderFlags = []
      ReadOnly = True
    end
    object brw_MatRequestFIRSTNAME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FIRSTNAME'
      Origin = 'FIRSTNAME'
      ProviderFlags = []
      ReadOnly = True
    end
    object brw_MatRequestREQBYNAME: TStringField
      FieldKind = fkCalculated
      FieldName = 'REQBYNAME'
      Size = 50
      Calculated = True
    end
    object brw_MatRequestREQDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'REQDATETIME'
      Origin = 'REQDATETIME'
    end
    object brw_MatRequestBALAMNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'BALAMNT'
      Origin = 'BALAMNT'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object brw_MatRequestPAIDAMNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PAIDAMNT'
      Origin = 'PAIDAMNT'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object brw_MatRequestTOTALCOST: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'TOTALCOST'
      Origin = 'TOTALCOST'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
  end
  object brw_Project: TFDQuery
    Connection = dbConn
    SQL.Strings = (
      
        'SELECT JO.ID, JO.JONO, JO.LOGDATE, JO.DUEDATE, JO.NETAMNT, JO.PA' +
        'IDAMNT, JO.BALAMNT, CLIENT.NAME AS CLIENT, DETAIL.SHIRTID, DETAI' +
        'L.FABRICID, DETAIL.DESCRIPTION, DETAIL.QTY, DETAIL.FREE, DETAIL.' +
        'COST, DETAIL.UNIT, DETAIL.TOTALCOST'
      'FROM JO_HEADER JO'
      'INNER JOIN JO_CLIENTS CLIENT ON CLIENT.ID = JO.CLIENTID '
      'INNER JOIN JO_DETAIL DETAIL ON DETAIL.HEADERID = JO.ID'
      ''
      'ORDER BY JO.ID;')
    Left = 560
    Top = 624
    object brw_ProjectID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object brw_ProjectJONO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'JONO'
      Origin = 'JONO'
    end
    object brw_ProjectLOGDATE: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'LOGDATE'
      Origin = 'LOGDATE'
    end
    object brw_ProjectDUEDATE: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DUEDATE'
      Origin = 'DUEDATE'
    end
    object brw_ProjectNETAMNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'NETAMNT'
      Origin = 'NETAMNT'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object brw_ProjectPAIDAMNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PAIDAMNT'
      Origin = 'PAIDAMNT'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object brw_ProjectBALAMNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'BALAMNT'
      Origin = 'BALAMNT'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object brw_ProjectCLIENT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLIENT'
      Origin = '`NAME`'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object brw_ProjectDESCRIPTION: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRIPTION'
      Origin = 'DESCRIPTION'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object brw_ProjectQTY: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'QTY'
      Origin = 'QTY'
      ProviderFlags = []
      ReadOnly = True
    end
    object brw_ProjectFREE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'FREE'
      Origin = 'FREE'
      ProviderFlags = []
      ReadOnly = True
    end
    object brw_ProjectCOST: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COST'
      Origin = 'COST'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object brw_ProjectUNIT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UNIT'
      Origin = 'UNIT'
      ProviderFlags = []
      ReadOnly = True
    end
    object brw_ProjectTOTALCOST: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'TOTALCOST'
      Origin = 'TOTALCOST'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object brw_ProjectFABRICID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'FABRICID'
      Origin = 'FABRICID'
      ProviderFlags = []
      ReadOnly = True
    end
    object brw_ProjectSHIRTID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'SHIRTID'
      Origin = 'SHIRTID'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object tb_Project: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 184
    Top = 536
    object tb_ProjectID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object tb_ProjectJONO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'JONO'
      Origin = 'JONO'
    end
    object tb_ProjectLOGDATE: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'LOGDATE'
      Origin = 'LOGDATE'
    end
    object tb_ProjectDUEDATE: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DUEDATE'
      Origin = 'DUEDATE'
    end
    object tb_ProjectNETAMNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'NETAMNT'
      Origin = 'NETAMNT'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object tb_ProjectPAIDAMNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PAIDAMNT'
      Origin = 'PAIDAMNT'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object tb_ProjectBALAMNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'BALAMNT'
      Origin = 'BALAMNT'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object tb_ProjectCLIENT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLIENT'
      Origin = '`NAME`'
      ProviderFlags = []
      Size = 100
    end
    object tb_ProjectDESCRIPTION: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 500
      FieldName = 'DESCRIPTION'
      Origin = 'DESCRIPTION'
      ProviderFlags = []
      Size = 500
    end
    object tb_ProjectFREE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'FREE'
      Origin = 'FREE'
      ProviderFlags = []
    end
    object tb_ProjectCOST: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COST'
      Origin = 'COST'
      ProviderFlags = []
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object tb_ProjectUNIT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UNIT'
      Origin = 'UNIT'
      ProviderFlags = []
    end
    object tb_ProjectTOTALCOST: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'TOTALCOST'
      Origin = 'TOTALCOST'
      ProviderFlags = []
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object tb_ProjectGROUP: TStringField
      FieldName = 'GROUP'
    end
    object tb_ProjectQTY: TFloatField
      FieldName = 'QTY'
    end
    object tb_ProjectSEQUENCE: TStringField
      FieldName = 'SEQUENCE'
      Size = 1
    end
    object tb_ProjectTOTAL: TFloatField
      FieldName = 'TOTAL'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object tb_ProjectROLEID: TIntegerField
      FieldName = 'ROLEID'
    end
  end
  object tb_ProjectSum: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 240
    Top = 536
    object tb_ProjectSumJONO: TIntegerField
      FieldName = 'JONO'
    end
    object tb_ProjectSumDATE: TDateField
      FieldName = 'DATE'
    end
    object tb_ProjectSumDUEDATE: TDateField
      FieldName = 'DUEDATE'
    end
    object tb_ProjectSumCLIENT: TStringField
      FieldName = 'CLIENT'
      Size = 100
    end
    object tb_ProjectSumNETAMNT: TFloatField
      FieldName = 'NETAMNT'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object tb_ProjectSumPAIDAMNT: TFloatField
      FieldName = 'PAIDAMNT'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object tb_ProjectSumBALAMNT: TFloatField
      FieldName = 'BALAMNT'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object tb_ProjectSumMATCOST: TFloatField
      FieldName = 'MATCOST'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object tb_ProjectSumLABORCOST: TFloatField
      FieldName = 'LABORCOST'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
  end
  object brw_MatCostSum: TFDQuery
    Connection = dbConn
    SQL.Strings = (
      'SELECT SUM(DETAIL.TOTALCOST) AS TOTAL'
      'FROM INV_REQUEST REQ'
      'INNER JOIN INV_REQDETAIL DETAIL ON DETAIL.HEADERID = REQ.ID'
      ''
      ';')
    Left = 608
    Top = 629
    object brw_MatCostSumTOTAL: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
  end
  object brw_LaborCostSum: TFDQuery
    Connection = dbConn
    SQL.Strings = (
      
        'SELECT (SUM(GAR.ARTISTSHARE * (DETAIL.QTY+DETAIL.FREE)) + SUM(GA' +
        'R.PRINTOPSHARE * (DETAIL.QTY+DETAIL.FREE)) + SUM(GAR.HEATPRESSSH' +
        'ARE * (DETAIL.QTY+DETAIL.FREE)) + SUM(GAR.CUTTERSHARE * (DETAIL.' +
        'QTY+DETAIL.FREE)) + SUM(GAR.TAILORSHARE * (DETAIL.QTY+DETAIL.FRE' +
        'E))) AS TOTAL'
      'FROM JO_DETAIL DETAIL'
      'INNER JOIN INV_GARMENTS GAR ON GAR.ID = DETAIL.SHIRTID'
      ''
      ';')
    Left = 656
    Top = 624
    object brw_LaborCostSumTOTAL: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
  end
  object brw_NoDays: TFDQuery
    Connection = dbConn
    FetchOptions.AssignedValues = [evRowsetSize]
    FetchOptions.RowsetSize = 1000
    SQL.Strings = (
      'SELECT DATE_FORMAT(LOGDATE, "%c/%d/%Y") AS LOGDATE'
      'FROM PM_LOGS'
      ''
      'GROUP BY DATE_FORMAT(LOGDATE, "%c/%d/%Y")')
    Left = 712
    Top = 624
    object brw_NoDaysLOGDATE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'LOGDATE'
      Origin = 'LOGDATE'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
  end
  object qry_JoCost: TFDQuery
    CachedUpdates = True
    Connection = dbConn
    SQL.Strings = (
      'SELECT *'
      'FROM JO_COST'
      ''
      ';')
    Left = 408
    Top = 536
    object qry_JoCostID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qry_JoCostHEADERID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'HEADERID'
      Origin = 'HEADERID'
    end
    object qry_JoCostITEMID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ITEMID'
      Origin = 'ITEMID'
    end
    object qry_JoCostITEMDESC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ITEMDESC'
      Origin = 'ITEMDESC'
      Size = 100
    end
    object qry_JoCostCOST: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COST'
      Origin = 'COST'
    end
    object qry_JoCostQTY: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'QTY'
      Origin = 'QTY'
    end
    object qry_JoCostTOTALCOST: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'TOTALCOST'
      Origin = 'TOTALCOST'
    end
    object qry_JoCostUNIT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UNIT'
      Origin = 'UNIT'
    end
    object qry_JoCostCANCELLED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLED'
      Origin = 'CANCELLED'
    end
    object qry_JoCostCANCELLEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLEDBYID'
      Origin = 'CANCELLEDBYID'
    end
    object qry_JoCostCANCELLEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLEDDATETIME'
      Origin = 'CANCELLEDDATETIME'
    end
    object qry_JoCostGARMENTID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'GARMENTID'
      Origin = 'GARMENTID'
    end
  end
  object del_JOCost: TFDQuery
    Connection = dbConn
    SQL.Strings = (
      'UPDATE JO_COST'
      'SET CANCELLED = TRUE'
      ''
      ''
      ''
      ';')
    Left = 56
    Top = 440
  end
  object brw_RepJOCost: TFDQuery
    OnCalcFields = brw_RepJOCostCalcFields
    Connection = dbConn
    SQL.Strings = (
      
        'SELECT JO.ID, JO.JONO, DETAIL.ITEMID, DETAIL.ITEMDESC, DETAIL.QT' +
        'Y, DETAIL.COST, DETAIL.UNIT, JO.BALAMNT, JO.PAIDAMNT, JO.LOGDATE' +
        ', JO.DUEDATE, JO.NETAMNT, CLIENT.NAME AS CLIENT, USR.LASTNAME, U' +
        'SR.FIRSTNAME'
      'FROM JO_COST DETAIL'
      'INNER JOIN JO_HEADER JO ON DETAIL.HEADERID = JO.ID'
      'INNER JOIN JO_CLIENTS CLIENT ON CLIENT.ID = JO.CLIENTID'
      'INNER JOIN SYS_USERS USR ON USR.ID = JO.CREATEDBYID'
      ''
      'ORDER BY JO.JONO')
    Left = 752
    Top = 624
    object brw_RepJOCostID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object brw_RepJOCostJONO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'JONO'
      Origin = 'JONO'
    end
    object brw_RepJOCostITEMID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ITEMID'
      Origin = 'ITEMID'
    end
    object brw_RepJOCostITEMDESC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ITEMDESC'
      Origin = 'ITEMDESC'
      Size = 100
    end
    object brw_RepJOCostQTY: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'QTY'
      Origin = 'QTY'
      DisplayFormat = '###,###,##0.000'
      currency = True
    end
    object brw_RepJOCostCOST: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COST'
      Origin = 'COST'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object brw_RepJOCostUNIT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UNIT'
      Origin = 'UNIT'
    end
    object brw_RepJOCostBALAMNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'BALAMNT'
      Origin = 'BALAMNT'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object brw_RepJOCostPAIDAMNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PAIDAMNT'
      Origin = 'PAIDAMNT'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object brw_RepJOCostLOGDATE: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'LOGDATE'
      Origin = 'LOGDATE'
    end
    object brw_RepJOCostDUEDATE: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DUEDATE'
      Origin = 'DUEDATE'
    end
    object brw_RepJOCostNETAMNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'NETAMNT'
      Origin = 'NETAMNT'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object brw_RepJOCostCLIENT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLIENT'
      Origin = 'CLIENT'
      Size = 100
    end
    object brw_RepJOCostLASTNAME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'LASTNAME'
      Origin = 'LASTNAME'
    end
    object brw_RepJOCostFIRSTNAME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FIRSTNAME'
      Origin = 'FIRSTNAME'
    end
    object brw_RepJOCostREQNAME: TStringField
      FieldKind = fkCalculated
      FieldName = 'REQNAME'
      Size = 100
      Calculated = True
    end
  end
  object brw_JOCostSum: TFDQuery
    Connection = dbConn
    SQL.Strings = (
      'SELECT SUM(DETAIL.TOTALCOST) AS TOTAL'
      'FROM JO_HEADER HEADER'
      'INNER JOIN JO_COST DETAIL ON DETAIL.HEADERID = HEADER.ID'
      ''
      ';')
    Left = 560
    Top = 672
    object brw_JOCostSumTOTAL: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
  end
  object upd_Override: TFDQuery
    Connection = dbConn
    SQL.Strings = (
      'UPDATE JO_HEADER'
      'SET OVERRIDE = FALSE'
      ''
      ';')
    Left = 16
    Top = 144
  end
  object upd_PMBoard: TFDQuery
    Connection = dbConn
    SQL.Strings = (
      'UPDATE PM_BOARD'
      'SET CANCELLED = TRUE'
      ''
      ''
      ';')
    Left = 16
    Top = 192
  end
  object upd_JODetail: TFDQuery
    Connection = dbConn
    SQL.Strings = (
      'UPDATE JO_DETAIL'
      ''
      ''
      ''
      ';')
    Left = 16
    Top = 248
  end
  object brw_Pending: TFDQuery
    OnCalcFields = brw_PendingCalcFields
    Connection = dbConn
    SQL.Strings = (
      
        'SELECT EMP.`EMPNAME`, EMP.ROLE, HEADER.JONO, HEADER.LOGDATE, CLI' +
        'ENTS.`NAME` AS CLIENTNAME, HEADER.DUEDATE, HEADER.`REMARKS`, HEA' +
        'DER.`POSTED`, DETAIL.`DESCRIPTION`, DETAIL.FABRIC, DETAIL.QTY, D' +
        'ETAIL.FREE, DETAIL.UNIT FROM JO_EMPDETAIL EMP'
      'INNER JOIN JO_HEADER HEADER ON HEADER.ID = EMP.`HEADERID`'
      'INNER JOIN JO_DETAIL DETAIL ON DETAIL.HEADERID = HEADER.`ID`'
      'INNER JOIN JO_CLIENTS CLIENTS ON CLIENTS.ID = HEADER.`CLIENTID`'
      ''
      'ORDER BY HEADER.JONO DESC;')
    Left = 616
    Top = 672
    object brw_PendingEMPNAME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EMPNAME'
      Origin = 'EMPNAME'
      Size = 100
    end
    object brw_PendingROLE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ROLE'
      Origin = 'ROLE'
      Size = 50
    end
    object brw_PendingJONO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'JONO'
      Origin = 'JONO'
      ProviderFlags = []
      ReadOnly = True
    end
    object brw_PendingCLIENTNAME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLIENTNAME'
      Origin = '`NAME`'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object brw_PendingDUEDATE: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DUEDATE'
      Origin = 'DUEDATE'
      ProviderFlags = []
      ReadOnly = True
    end
    object brw_PendingREMARKS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'REMARKS'
      Origin = 'REMARKS'
      ProviderFlags = []
      ReadOnly = True
      Size = 500
    end
    object brw_PendingPOSTED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'POSTED'
      Origin = 'POSTED'
      ProviderFlags = []
      ReadOnly = True
    end
    object brw_PendingDESCRIPTION: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRIPTION'
      Origin = 'DESCRIPTION'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object brw_PendingFABRIC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FABRIC'
      Origin = 'FABRIC'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object brw_PendingQTY: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'QTY'
      Origin = 'QTY'
      ProviderFlags = []
      ReadOnly = True
    end
    object brw_PendingFREE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'FREE'
      Origin = 'FREE'
      ProviderFlags = []
      ReadOnly = True
    end
    object brw_PendingUNIT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UNIT'
      Origin = 'UNIT'
      ProviderFlags = []
      ReadOnly = True
    end
    object brw_PendingJODESC: TStringField
      FieldKind = fkCalculated
      FieldName = 'JODESC'
      Size = 100
      Calculated = True
    end
    object brw_PendingAGE: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'AGE'
      Calculated = True
    end
    object brw_PendingLOGDATE: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'LOGDATE'
      Origin = 'LOGDATE'
      ProviderFlags = []
      ReadOnly = True
    end
    object brw_PendingSTATUS: TStringField
      FieldKind = fkCalculated
      FieldName = 'STATUS'
      Calculated = True
    end
  end
  object qry_Notif: TFDQuery
    CachedUpdates = True
    Connection = dbConn
    SQL.Strings = (
      'SELECT *'
      'FROM SYS_NOTIF'
      ''
      ';')
    Left = 448
    Top = 536
    object qry_NotifID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qry_NotifINTERVAL: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'INTERVAL'
      Origin = '`INTERVAL`'
    end
    object qry_NotifENABLED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'ENABLED'
      Origin = 'ENABLED'
    end
    object qry_NotifUPDATEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'UPDATEDBYID'
      Origin = 'UPDATEDBYID'
    end
    object qry_NotifUPDATEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'UPDATEDDATETIME'
      Origin = 'UPDATEDDATETIME'
    end
  end
  object brw_PMNotif: TFDQuery
    Connection = dbConn
    SQL.Strings = (
      
        'SELECT EMP.`EMPNAME`, EMP.ROLE, HEADER.JONO, HEADER.LOGDATE, CLI' +
        'ENTS.`NAME` AS CLIENTNAME, HEADER.DUEDATE, HEADER.`REMARKS`, HEA' +
        'DER.`POSTED`, DETAIL.`DESCRIPTION`, DETAIL.FABRIC, DETAIL.QTY, D' +
        'ETAIL.FREE, DETAIL.UNIT FROM JO_EMPDETAIL EMP'
      'INNER JOIN JO_HEADER HEADER ON HEADER.ID = EMP.`HEADERID`'
      'INNER JOIN JO_DETAIL DETAIL ON DETAIL.HEADERID = HEADER.`ID`'
      'INNER JOIN JO_CLIENTS CLIENTS ON CLIENTS.ID = HEADER.`CLIENTID`'
      ''
      'ORDER BY HEADER.JONO DESC;')
    Left = 664
    Top = 672
    object brw_PMNotifEMPNAME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EMPNAME'
      Origin = 'EMPNAME'
      Size = 100
    end
    object brw_PMNotifROLE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ROLE'
      Origin = 'ROLE'
      Size = 50
    end
    object brw_PMNotifJONO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'JONO'
      Origin = 'JONO'
      ProviderFlags = []
      ReadOnly = True
    end
    object brw_PMNotifLOGDATE: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'LOGDATE'
      Origin = 'LOGDATE'
      ProviderFlags = []
      ReadOnly = True
    end
    object brw_PMNotifCLIENTNAME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLIENTNAME'
      Origin = '`NAME`'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object brw_PMNotifDUEDATE: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DUEDATE'
      Origin = 'DUEDATE'
      ProviderFlags = []
      ReadOnly = True
    end
    object brw_PMNotifREMARKS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'REMARKS'
      Origin = 'REMARKS'
      ProviderFlags = []
      ReadOnly = True
      Size = 500
    end
    object brw_PMNotifPOSTED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'POSTED'
      Origin = 'POSTED'
      ProviderFlags = []
      ReadOnly = True
    end
    object brw_PMNotifDESCRIPTION: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRIPTION'
      Origin = 'DESCRIPTION'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object brw_PMNotifFABRIC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FABRIC'
      Origin = 'FABRIC'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object brw_PMNotifQTY: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'QTY'
      Origin = 'QTY'
      ProviderFlags = []
      ReadOnly = True
    end
    object brw_PMNotifFREE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'FREE'
      Origin = 'FREE'
      ProviderFlags = []
      ReadOnly = True
    end
    object brw_PMNotifUNIT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UNIT'
      Origin = 'UNIT'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object tb_PaySlip: TFDMemTable
    OnCalcFields = tb_PaySlipCalcFields
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 184
    Top = 584
    object tb_PaySlipIDNO: TStringField
      FieldName = 'IDNO'
      Origin = 'IDNO'
      Size = 15
    end
    object tb_PaySlipRATE: TFloatField
      FieldName = 'RATE'
      Origin = 'RATE'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object tb_PaySlipBASICPAY: TFloatField
      FieldKind = fkCalculated
      FieldName = 'BASICPAY'
      Origin = 'BASICPAY'
      DisplayFormat = '###,###,##0.00'
      currency = True
      Calculated = True
    end
    object tb_PaySlipALLOWANCES: TFloatField
      FieldName = 'ALLOWANCES'
      Origin = 'ALLOWANCES'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object tb_PaySlipBACKWAGE: TFloatField
      FieldName = 'BACKWAGE'
      Origin = 'BACKWAGE'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object tb_PaySlipLATE: TFloatField
      FieldKind = fkCalculated
      FieldName = 'LATE'
      Origin = 'LATE'
      DisplayFormat = '###,###,##0.00'
      currency = True
      Calculated = True
    end
    object tb_PaySlipOTHERS: TFloatField
      FieldName = 'OTHERS'
      Origin = 'OTHERS'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object tb_PaySlipSSS: TFloatField
      FieldName = 'SSS'
      Origin = 'SSS'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object tb_PaySlipPAGIBIG: TFloatField
      FieldName = 'PAGIBIG'
      Origin = 'PAGIBIG'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object tb_PaySlipPHIC: TFloatField
      FieldName = 'PHIC'
      Origin = 'PHIC'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object tb_PaySlipNETPAY: TFloatField
      FieldKind = fkCalculated
      FieldName = 'NETPAY'
      Origin = 'NETPAY'
      DisplayFormat = '###,###,##0.00'
      currency = True
      Calculated = True
    end
    object tb_PaySlipNODAYS: TFloatField
      FieldName = 'NODAYS'
    end
    object tb_PaySlipNOPIECES: TFloatField
      FieldName = 'NOPIECES'
    end
    object tb_PaySlipEMPNAME: TStringField
      FieldName = 'EMPNAME'
      Size = 50
    end
    object tb_PaySlipGROSSPAY: TFloatField
      FieldKind = fkCalculated
      FieldName = 'GROSSPAY'
      DisplayFormat = '###,###,##0.00'
      currency = True
      Calculated = True
    end
    object tb_PaySlipMODE: TStringField
      FieldName = 'MODE'
      Size = 1
    end
    object tb_PaySlipHRSLATE: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'HRSLATE'
      Origin = 'HRSLATE'
    end
    object tb_PaySlipABSENCES: TFloatField
      FieldKind = fkCalculated
      FieldName = 'ABSENCES'
      DisplayFormat = '###,###,##0.00'
      currency = True
      Calculated = True
    end
    object tb_PaySlipDAYSABSENT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'DAYSABSENT'
      Origin = 'DAYSABSENT'
    end
    object tb_PaySlipCA: TFloatField
      FieldName = 'CA'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object tb_PaySlipJODATE: TDateField
      FieldName = 'JODATE'
    end
    object tb_PaySlipITEM: TStringField
      FieldName = 'ITEM'
      Size = 200
    end
    object tb_PaySlipQTY: TFloatField
      FieldName = 'QTY'
    end
    object tb_PaySlipPRICE: TFloatField
      FieldName = 'PRICE'
    end
    object tb_PaySlipJONO: TIntegerField
      FieldName = 'JONO'
    end
  end
  object brw_MRJO: TFDQuery
    Connection = dbConn
    SQL.Strings = (
      'SELECT JONO, LOGDATE'
      'FROM JO_HEADER'
      ''
      'ORDER BY JONO DESC;')
    Left = 712
    Top = 672
    object brw_MRJOJONO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'JONO'
      Origin = 'JONO'
    end
    object brw_MRJOLOGDATE: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'LOGDATE'
      Origin = 'LOGDATE'
    end
  end
  object brw_InvCost: TFDQuery
    Connection = dbConn
    SQL.Strings = (
      
        'SELECT SUM(DETAILS.QTY) AS BALANCE, DETAILS.INVID, ITEM.DESCRIPT' +
        'ION, ITEM.COST, ITEM.INVUNIT, ITEM.CODE'
      'FROM INV_DETAILS DETAILS'
      'INNER JOIN INV_ITEMS ITEM ON ITEM.ID = DETAILS.INVID'
      ''
      'GROUP BY DETAILS.INVID'
      'ORDER BY ITEM.DESCRIPTION')
    Left = 752
    Top = 672
    object brw_InvCostBALANCE: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'BALANCE'
      Origin = 'BALANCE'
      ProviderFlags = []
      ReadOnly = True
    end
    object brw_InvCostINVID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'INVID'
      Origin = 'INVID'
    end
    object brw_InvCostDESCRIPTION: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRIPTION'
      Origin = 'DESCRIPTION'
      ProviderFlags = []
      ReadOnly = True
      Size = 200
    end
    object brw_InvCostCOST: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COST'
      Origin = 'COST'
      ProviderFlags = []
      ReadOnly = True
    end
    object brw_InvCostINVUNIT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'INVUNIT'
      Origin = 'INVUNIT'
      ProviderFlags = []
      ReadOnly = True
    end
    object brw_InvCostCODE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODE'
      Origin = 'CODE'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object qry_WorkLogs: TFDQuery
    CachedUpdates = True
    Connection = dbConn
    SQL.Strings = (
      'SELECT *'
      'FROM PM_WORKLOGS'
      ''
      ';')
    Left = 320
    Top = 584
    object qry_WorkLogsID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qry_WorkLogsJONO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'JONO'
      Origin = 'JONO'
    end
    object qry_WorkLogsCLIENTID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CLIENTID'
      Origin = 'CLIENTID'
    end
    object qry_WorkLogsCLIENT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLIENT'
      Origin = 'CLIENT'
      Size = 50
    end
    object qry_WorkLogsWORKERID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'WORKERID'
      Origin = 'WORKERID'
    end
    object qry_WorkLogsWORKER: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'WORKER'
      Origin = 'WORKER'
      Size = 50
    end
    object qry_WorkLogsROLE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ROLE'
      Origin = 'ROLE'
    end
    object qry_WorkLogsOUTPUT: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'OUTPUT'
      Origin = 'OUTPUT'
    end
    object qry_WorkLogsQTY: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'QTY'
      Origin = 'QTY'
    end
    object qry_WorkLogsCOST: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'COST'
      Origin = 'COST'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object qry_WorkLogsCREATEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDBYID'
      Origin = 'CREATEDBYID'
    end
    object qry_WorkLogsCREATEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDDATETIME'
      Origin = 'CREATEDDATETIME'
    end
    object qry_WorkLogsUPDATEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'UPDATEDBYID'
      Origin = 'UPDATEDBYID'
    end
    object qry_WorkLogsUPDATEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'UPDATEDDATETIME'
      Origin = 'UPDATEDDATETIME'
    end
    object qry_WorkLogsCANCELLED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLED'
      Origin = 'CANCELLED'
    end
    object qry_WorkLogsCANCELLEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLEDDATETIME'
      Origin = 'CANCELLEDDATETIME'
    end
    object qry_WorkLogsCANCELLEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLEDBYID'
      Origin = 'CANCELLEDBYID'
    end
    object qry_WorkLogsROLEID: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ROLEID'
      Origin = 'ROLEID'
      FixedChar = True
      Size = 1
    end
  end
  object brw_WorkLogs: TFDQuery
    OnCalcFields = brw_WorkLogsCalcFields
    Connection = dbConn
    SQL.Strings = (
      'SELECT PM_WORKLOGS.*, JO_DETAIL.DESCRIPTION'
      'FROM PM_WORKLOGS'
      'INNER JOIN JO_DETAIL ON JO_DETAIL.ID = PM_WORKLOGS.OUTPUT'
      ''
      'ORDER BY CREATEDDATETIME DESC;')
    Left = 560
    Top = 720
    object brw_WorkLogsID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object brw_WorkLogsJONO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'JONO'
      Origin = 'JONO'
    end
    object brw_WorkLogsWORKERID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'WORKERID'
      Origin = 'WORKERID'
    end
    object brw_WorkLogsWORKER: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'WORKER'
      Origin = 'WORKER'
      Size = 50
    end
    object brw_WorkLogsOUTPUT: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'OUTPUT'
      Origin = 'OUTPUT'
    end
    object brw_WorkLogsQTY: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'QTY'
      Origin = 'QTY'
    end
    object brw_WorkLogsCOST: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'COST'
      Origin = 'COST'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object brw_WorkLogsCREATEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDBYID'
      Origin = 'CREATEDBYID'
    end
    object brw_WorkLogsCREATEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDDATETIME'
      Origin = 'CREATEDDATETIME'
    end
    object brw_WorkLogsUPDATEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'UPDATEDBYID'
      Origin = 'UPDATEDBYID'
    end
    object brw_WorkLogsUPDATEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'UPDATEDDATETIME'
      Origin = 'UPDATEDDATETIME'
    end
    object brw_WorkLogsCANCELLED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLED'
      Origin = 'CANCELLED'
    end
    object brw_WorkLogsCANCELLEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLEDDATETIME'
      Origin = 'CANCELLEDDATETIME'
    end
    object brw_WorkLogsCANCELLEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLEDBYID'
      Origin = 'CANCELLEDBYID'
    end
    object brw_WorkLogsCLIENT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLIENT'
      Origin = 'CLIENT'
      Size = 50
    end
    object brw_WorkLogsROLE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ROLE'
      Origin = 'ROLE'
    end
    object brw_WorkLogsDESCRIPTION: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRIPTION'
      Origin = 'DESCRIPTION'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object brw_WorkLogsCALC_DATE: TStringField
      FieldKind = fkCalculated
      FieldName = 'CALC_DATE'
      Calculated = True
    end
    object brw_WorkLogsCLIENTID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CLIENTID'
      Origin = 'CLIENTID'
    end
    object brw_WorkLogsROLEID: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ROLEID'
      Origin = 'ROLEID'
      FixedChar = True
      Size = 1
    end
    object brw_WorkLogsTOTAL: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'TOTAL'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
  end
  object brw_ComputePay: TFDQuery
    Connection = dbConn
    SQL.Strings = (
      'SELECT SUM(QTY * COST) AS AMNT, WORKER, WORKERID'
      'FROM pm_worklogs'
      ''
      'GROUP BY WORKER, WORKERID;')
    Left = 616
    Top = 720
    object brw_ComputePayAMNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'AMNT'
      Origin = 'AMNT'
      ProviderFlags = []
      ReadOnly = True
    end
    object brw_ComputePayWORKER: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'WORKER'
      Origin = 'WORKER'
      Size = 50
    end
    object brw_ComputePayWORKERID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'WORKERID'
      Origin = 'WORKERID'
    end
  end
  object qry_GarCosting: TFDQuery
    CachedUpdates = True
    Connection = dbConn
    SQL.Strings = (
      'SELECT *'
      'FROM INV_COSTING'
      ''
      ';')
    Left = 368
    Top = 584
    object qry_GarCostingID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qry_GarCostingHEADERID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'HEADERID'
      Origin = 'HEADERID'
    end
    object qry_GarCostingITEMID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ITEMID'
      Origin = 'ITEMID'
    end
    object qry_GarCostingUNIT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UNIT'
      Origin = 'UNIT'
      Size = 10
    end
    object qry_GarCostingQTY: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'QTY'
      Origin = 'QTY'
    end
    object qry_GarCostingCOST: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'COST'
      Origin = 'COST'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object qry_GarCostingTOTAL: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object qry_GarCostingCANCELLED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLED'
      Origin = 'CANCELLED'
    end
    object qry_GarCostingCANCELLEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLEDBYID'
      Origin = 'CANCELLEDBYID'
    end
    object qry_GarCostingCANCELLEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLEDDATETIME'
      Origin = 'CANCELLEDDATETIME'
    end
    object qry_GarCostingITEMDESC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ITEMDESC'
      Origin = 'ITEMDESC'
    end
  end
  object brw_GarCosting: TFDQuery
    Connection = dbConn
    SQL.Strings = (
      'SELECT *'
      'FROM INV_COSTING'
      ''
      ';')
    Left = 664
    Top = 720
    object brw_GarCostingID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object brw_GarCostingHEADERID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'HEADERID'
      Origin = 'HEADERID'
    end
    object brw_GarCostingITEMID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ITEMID'
      Origin = 'ITEMID'
    end
    object brw_GarCostingUNIT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UNIT'
      Origin = 'UNIT'
      Size = 10
    end
    object brw_GarCostingQTY: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'QTY'
      Origin = 'QTY'
    end
    object brw_GarCostingCOST: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'COST'
      Origin = 'COST'
    end
    object brw_GarCostingTOTAL: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
    end
    object brw_GarCostingCANCELLED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLED'
      Origin = 'CANCELLED'
    end
    object brw_GarCostingCANCELLEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLEDBYID'
      Origin = 'CANCELLEDBYID'
    end
    object brw_GarCostingCANCELLEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLEDDATETIME'
      Origin = 'CANCELLEDDATETIME'
    end
    object brw_GarCostingITEMDESC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ITEMDESC'
      Origin = 'ITEMDESC'
    end
  end
  object del_GarCost: TFDQuery
    Connection = dbConn
    SQL.Strings = (
      'UPDATE INV_COSTING'
      'SET CANCELLED = TRUE'
      ''
      ''
      ''
      ';')
    Left = 56
    Top = 496
  end
  object tb_JOClone: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 232
    Top = 584
    object tb_JOCloneSHIRTID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'SHIRTID'
      Origin = 'SHIRTID'
    end
    object tb_JOCloneDESCRIPTION: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRIPTION'
      Origin = 'DESCRIPTION'
      Size = 50
    end
    object tb_JOCloneFABRICID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'FABRICID'
      Origin = 'FABRICID'
    end
    object tb_JOCloneFABRIC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FABRIC'
      Origin = 'FABRIC'
      Size = 50
    end
    object tb_JOCloneQTY: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'QTY'
      Origin = 'QTY'
      DisplayFormat = '###,###,##0'
    end
    object tb_JOCloneFREE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'FREE'
      Origin = 'FREE'
      DisplayFormat = '###,###,##0'
    end
    object tb_JOCloneCOST: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COST'
      Origin = 'COST'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object tb_JOCloneUNIT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UNIT'
      Origin = 'UNIT'
    end
    object tb_JOCloneTOTALCOST: TFloatField
      AutoGenerateValue = arDefault
      FieldKind = fkCalculated
      FieldName = 'TOTALCOST'
      Origin = 'TOTALCOST'
      DisplayFormat = '###,###,##0.00'
      currency = True
      Calculated = True
    end
    object tb_JOCloneREMARKS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'REMARKS'
      Origin = 'REMARKS'
      Size = 255
    end
    object tb_JOCloneID: TIntegerField
      FieldName = 'ID'
    end
    object tb_JOCloneLAYOUT: TStringField
      FieldName = 'LAYOUT'
      Size = 500
    end
    object tb_JOCloneFILENAME: TStringField
      FieldName = 'FILENAME'
      Size = 200
    end
  end
  object brw_AR: TFDQuery
    Connection = dbConn
    SQL.Strings = (
      
        'SELECT CLIENTS.NAME, SUM(`NETAMNT`) AS NETAMNT, SUM(HEADER.PAIDA' +
        'MNT) AS PAID, SUM(HEADER.BALAMNT) AS BALANCE '
      'FROM JO_HEADER HEADER'
      'INNER JOIN JO_CLIENTS CLIENTS ON CLIENTS.ID = HEADER.CLIENTID'
      ''
      'GROUP BY CLIENTS.`NAME`')
    Left = 720
    Top = 720
    object brw_ARNAME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NAME'
      Origin = '`NAME`'
      Size = 100
    end
    object brw_ARNETAMNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'NETAMNT'
      Origin = 'NETAMNT'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object brw_ARPAID: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PAID'
      Origin = 'PAID'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object brw_ARBALANCE: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'BALANCE'
      Origin = 'BALANCE'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
  end
  object tb_ARAging: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'CLIENT'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'TOTAL'
        DataType = ftCurrency
        Precision = 19
      end
      item
        Name = 'BALANCE'
        DataType = ftCurrency
        Precision = 19
      end
      item
        Name = 'CURRENT'
        DataType = ftCurrency
        Precision = 19
      end
      item
        Name = '30DAYS'
        DataType = ftCurrency
        Precision = 19
      end
      item
        Name = '60DAYS'
        DataType = ftCurrency
        Precision = 19
      end
      item
        Name = '90DAYS'
        DataType = ftCurrency
        Precision = 19
      end
      item
        Name = '120DAYS'
        DataType = ftCurrency
        Precision = 19
      end
      item
        Name = '121DAYS'
        DataType = ftCurrency
        Precision = 19
      end
      item
        Name = 'PAID'
        DataType = ftCurrency
        Precision = 19
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 184
    Top = 632
    object tb_ARAgingCLIENT: TStringField
      FieldName = 'CLIENT'
      Size = 50
    end
    object tb_ARAgingTOTAL: TCurrencyField
      FieldName = 'TOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object tb_ARAgingBALANCE: TCurrencyField
      FieldName = 'BALANCE'
      DisplayFormat = '###,###,##0.00'
    end
    object tb_ARAgingCURRENT: TCurrencyField
      FieldName = 'CURRENT'
      DisplayFormat = '###,###,##0.00'
    end
    object tb_ARAgingField30DAYS: TCurrencyField
      FieldName = '30DAYS'
      DisplayFormat = '###,###,##0.00'
    end
    object tb_ARAgingField60DAYS: TCurrencyField
      FieldName = '60DAYS'
      DisplayFormat = '###,###,##0.00'
    end
    object tb_ARAgingField90DAYS: TCurrencyField
      FieldName = '90DAYS'
      DisplayFormat = '###,###,##0.00'
    end
    object tb_ARAgingField120DAYS: TCurrencyField
      FieldName = '120DAYS'
      DisplayFormat = '###,###,##0.00'
    end
    object tb_ARAgingField121DAYS: TCurrencyField
      FieldName = '121DAYS'
      DisplayFormat = '###,###,##0.00'
    end
    object tb_ARAgingPAID: TCurrencyField
      FieldName = 'PAID'
    end
  end
  object brw_Outstanding: TFDQuery
    Connection = dbConn
    SQL.Strings = (
      
        'SELECT SUM(NETAMNT) AS NETAMNT, SUM(CASHAMNT) AS CASHAMNT, SUM(C' +
        'ARDAMNT) AS CARDAMNT, SUM(CHECKAMNT) AS CHECKAMNT, SUM(CHANGEAMN' +
        'T) AS CHANGEAMNT'
      'FROM CASH_HEADER'
      ''
      ';')
    Left = 760
    Top = 720
    object brw_OutstandingNETAMNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'NETAMNT'
      Origin = 'NETAMNT'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object brw_OutstandingCASHAMNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'CASHAMNT'
      Origin = 'CASHAMNT'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object brw_OutstandingCARDAMNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'CARDAMNT'
      Origin = 'CARDAMNT'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object brw_OutstandingCHECKAMNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'CHECKAMNT'
      Origin = 'CHECKAMNT'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object brw_OutstandingCHANGEAMNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'CHANGEAMNT'
      Origin = 'CHANGEAMNT'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
  end
  object brw_Salaries: TFDQuery
    Connection = dbConn
    SQL.Strings = (
      'SELECT DETAIL.*, EXP.CATEGORY AS EXPENSETYPE'
      'FROM CASH_OUTDETAIL DETAIL'
      'INNER JOIN CASH_HEADER HEADER ON DETAIL.HEADERID = HEADER.ID'
      'INNER JOIN EXPENSE_TYPE EXP ON EXP.ID = DETAIL.CATEGORYID'
      ''
      'ORDER BY DETAIL.PAYEE;')
    Left = 560
    Top = 768
    object brw_SalariesID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object brw_SalariesHEADERID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'HEADERID'
      Origin = 'HEADERID'
    end
    object brw_SalariesCATEGORY: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CATEGORY'
      Origin = 'CATEGORY'
      Size = 50
    end
    object brw_SalariesCATEGORYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CATEGORYID'
      Origin = 'CATEGORYID'
    end
    object brw_SalariesPAYREFID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PAYREFID'
      Origin = 'PAYREFID'
    end
    object brw_SalariesPAYDATEFROM: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'PAYDATEFROM'
      Origin = 'PAYDATEFROM'
    end
    object brw_SalariesPAYDATETO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'PAYDATETO'
      Origin = 'PAYDATETO'
    end
    object brw_SalariesEMPID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'EMPID'
      Origin = 'EMPID'
    end
    object brw_SalariesPAYEE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PAYEE'
      Origin = 'PAYEE'
    end
    object brw_SalariesREMARKS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'REMARKS'
      Origin = 'REMARKS'
      Size = 500
    end
    object brw_SalariesGROSS: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'GROSS'
      Origin = 'GROSS'
    end
    object brw_SalariesCASHADVANCES: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'CASHADVANCES'
      Origin = 'CASHADVANCES'
    end
    object brw_SalariesAMOUNT: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'AMOUNT'
      Origin = 'AMOUNT'
    end
    object brw_SalariesREFDATE: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'REFDATE'
      Origin = 'REFDATE'
    end
    object brw_SalariesCREATEDBY: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDBY'
      Origin = 'CREATEDBY'
    end
    object brw_SalariesCREATEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDDATETIME'
      Origin = 'CREATEDDATETIME'
    end
    object brw_SalariesCANCELLED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLED'
      Origin = 'CANCELLED'
    end
    object brw_SalariesCANCELLEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLEDBYID'
      Origin = 'CANCELLEDBYID'
    end
    object brw_SalariesCANCELLEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLEDDATETIME'
      Origin = 'CANCELLEDDATETIME'
    end
    object brw_SalariesEXPENSETYPE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'EXPENSETYPE'
      Origin = 'CATEGORY'
      ProviderFlags = []
      ReadOnly = True
    end
    object brw_SalariesCASHADVCREDIT: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'CASHADVCREDIT'
      Origin = 'CASHADVCREDIT'
    end
    object brw_SalariesCASHADVBALANCE: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'CASHADVBALANCE'
      Origin = 'CASHADVBALANCE'
    end
    object brw_SalariesCASHADVACTUAL: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'CASHADVACTUAL'
      Origin = 'CASHADVACTUAL'
    end
  end
  object tb_Payroll: TFDMemTable
    Active = True
    OnCalcFields = tb_PayrollCalcFields
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 240
    Top = 632
    object tb_PayrollEMPLOYEE: TStringField
      FieldName = 'EMPLOYEE'
    end
    object tb_PayrollGROSS: TFloatField
      FieldName = 'GROSS'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object tb_PayrollCASHADV: TFloatField
      FieldName = 'CASHADV'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object tb_PayrollNETAMNT: TFloatField
      FieldKind = fkCalculated
      FieldName = 'NETAMNT'
      DisplayFormat = '###,###,##0.00'
      currency = True
      Calculated = True
    end
    object tb_PayrollWORKERID: TIntegerField
      FieldName = 'WORKERID'
    end
    object tb_PayrollLOGDATE: TDateField
      FieldName = 'LOGDATE'
    end
    object tb_PayrollDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      Size = 50
    end
    object tb_PayrollJONO: TIntegerField
      FieldName = 'JONO'
    end
    object tb_PayrollROLE: TStringField
      FieldName = 'ROLE'
    end
    object tb_PayrollQTY: TFloatField
      FieldName = 'QTY'
    end
    object tb_PayrollCOST: TFloatField
      FieldName = 'COST'
    end
    object tb_PayrollTOTAL: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TOTAL'
      Calculated = True
    end
    object tb_PayrollCLIENT: TStringField
      FieldName = 'CLIENT'
      Size = 50
    end
  end
  object brw_ForwardedBal: TFDQuery
    OnCalcFields = brw_ForwardedBalCalcFields
    Connection = dbConn
    SQL.Strings = (
      'SELECT DETAIL.*'
      'FROM CASH_OUTDETAIL DETAIL'
      'INNER JOIN EXPENSE_TYPE EXP ON EXP.ID = DETAIL.CATEGORYID  '
      'INNER JOIN CASH_HEADER HEADER ON HEADER.ID = DETAIL.HEADERID'
      ''
      'ORDER BY DETAIL.ID DESC;')
    Left = 616
    Top = 768
    object brw_ForwardedBalID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object brw_ForwardedBalHEADERID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'HEADERID'
      Origin = 'HEADERID'
    end
    object brw_ForwardedBalCATEGORY: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CATEGORY'
      Origin = 'CATEGORY'
      Size = 50
    end
    object brw_ForwardedBalCATEGORYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CATEGORYID'
      Origin = 'CATEGORYID'
    end
    object brw_ForwardedBalPAYREFID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PAYREFID'
      Origin = 'PAYREFID'
    end
    object brw_ForwardedBalEMPID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'EMPID'
      Origin = 'EMPID'
    end
    object brw_ForwardedBalPAYEE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PAYEE'
      Origin = 'PAYEE'
    end
    object brw_ForwardedBalREMARKS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'REMARKS'
      Origin = 'REMARKS'
      Size = 500
    end
    object brw_ForwardedBalAMOUNT: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'AMOUNT'
      Origin = 'AMOUNT'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object brw_ForwardedBalREFDATE: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'REFDATE'
      Origin = 'REFDATE'
    end
    object brw_ForwardedBalCREATEDBY: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDBY'
      Origin = 'CREATEDBY'
    end
    object brw_ForwardedBalCREATEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'CREATEDDATETIME'
      Origin = 'CREATEDDATETIME'
    end
    object brw_ForwardedBalCANCELLED: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLED'
      Origin = 'CANCELLED'
    end
    object brw_ForwardedBalCANCELLEDBYID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLEDBYID'
      Origin = 'CANCELLEDBYID'
    end
    object brw_ForwardedBalCANCELLEDDATETIME: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELLEDDATETIME'
      Origin = 'CANCELLEDDATETIME'
    end
    object brw_ForwardedBalPAYDATEFROM: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'PAYDATEFROM'
      Origin = 'PAYDATEFROM'
    end
    object brw_ForwardedBalPAYDATETO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'PAYDATETO'
      Origin = 'PAYDATETO'
    end
    object brw_ForwardedBalGROSS: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'GROSS'
      Origin = 'GROSS'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object brw_ForwardedBalCASHADVANCES: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'CASHADVANCES'
      Origin = 'CASHADVANCES'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object brw_ForwardedBalCASHADVCREDIT: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'CASHADVCREDIT'
      Origin = 'CASHADVCREDIT'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object brw_ForwardedBalCASHADVBALANCE: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'CASHADVBALANCE'
      Origin = 'CASHADVBALANCE'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object brw_ForwardedBalCASHADVACTUAL: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'CASHADVACTUAL'
      Origin = 'CASHADVACTUAL'
      DisplayFormat = '###,###,##0.00'
      currency = True
    end
    object brw_ForwardedBalCALC_CASHADV: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CALC_CASHADV'
      DisplayFormat = '###,###,##0.00'
      currency = True
      Calculated = True
    end
  end
  object del_CashoutDetail: TFDQuery
    Connection = dbConn
    SQL.Strings = (
      'UPDATE CASH_OUTDETAIL'
      'SET CANCELLED = TRUE'
      'WHERE ID = 0'
      ';')
    Left = 56
    Top = 544
  end
  object del_CashInDetail: TFDQuery
    Connection = dbConn
    SQL.Strings = (
      'UPDATE CASH_INDETAIL'
      'SET CANCELLED = TRUE'
      'WHERE ID = 0'
      ';')
    Left = 56
    Top = 592
  end
end
