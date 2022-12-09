unit dmPM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, Vcl.Controls, cxGrid, DateUtils;

type
  Tdm_PM = class(TDataModule)
    dbConn: TFDConnection;
    brw_JO: TFDQuery;
    qry_JO: TFDQuery;
    qry_JOID: TFDAutoIncField;
    qry_JOCLIENTID: TIntegerField;
    qry_JOJONO: TIntegerField;
    qry_JOLOGDATE: TDateTimeField;
    qry_JODUEDATE: TDateField;
    qry_JOREMARKS: TStringField;
    qry_JOGROSSAMNT: TFloatField;
    qry_JODISCPRCENT: TFloatField;
    qry_JODISCOUNT: TFloatField;
    qry_JONETAMNT: TFloatField;
    qry_JOCREATEDBYID: TIntegerField;
    qry_JOCREATEDDATETIME: TDateTimeField;
    qry_JOCANCELLED: TBooleanField;
    qry_JODELETEDBYID: TIntegerField;
    qry_JODELETEDDATETIME: TDateTimeField;
    qry_JOPOSTED: TBooleanField;
    qry_JOPAIDAMNT: TFloatField;
    qry_JOBALAMNT: TFloatField;
    qry_JOCLOSED: TBooleanField;
    qry_JOPOSTEDDATETIME: TDateTimeField;
    brw_Client: TFDQuery;
    brw_ClientID: TFDAutoIncField;
    brw_ClientNAME: TStringField;
    tb_JODetail: TFDMemTable;
    qry_JODetail: TFDQuery;
    qry_JODetailID: TFDAutoIncField;
    qry_JODetailHEADERID: TIntegerField;
    qry_JODetailSHIRTID: TIntegerField;
    qry_JODetailDESCRIPTION: TStringField;
    qry_JODetailFABRICID: TIntegerField;
    qry_JODetailFABRIC: TStringField;
    qry_JODetailSIZE: TStringField;
    qry_JODetailFIT: TStringField;
    qry_JODetailQTY: TIntegerField;
    qry_JODetailFREE: TIntegerField;
    qry_JODetailCOST: TFloatField;
    qry_JODetailUNIT: TStringField;
    qry_JODetailTOTALCOST: TFloatField;
    qry_JODetailCANCELLED: TBooleanField;
    qry_JODetailDELETEDBYID: TIntegerField;
    qry_JODetailDELETEDDATETIME: TDateTimeField;
    qry_JODetailREMARKS: TStringField;
    tb_JODetailSHIRTID: TIntegerField;
    tb_JODetailDESCRIPTION: TStringField;
    tb_JODetailFABRICID: TIntegerField;
    tb_JODetailFABRIC: TStringField;
    tb_JODetailQTY: TIntegerField;
    tb_JODetailFREE: TIntegerField;
    tb_JODetailCOST: TFloatField;
    tb_JODetailUNIT: TStringField;
    tb_JODetailTOTALCOST: TFloatField;
    tb_JODetailREMARKS: TStringField;
    tb_JODetailID: TIntegerField;
    brw_MaxJO: TFDQuery;
    brw_MaxJOID: TIntegerField;
    brw_Garments: TFDQuery;
    brw_GarmentsID: TFDAutoIncField;
    brw_GarmentsDESCRIPTION: TStringField;
    brw_Fabrics: TFDQuery;
    brw_FabricsID: TFDAutoIncField;
    brw_FabricsDESCRIPTION: TStringField;
    brw_Unit: TFDQuery;
    brw_UnitID: TFDAutoIncField;
    brw_UnitDESCRIPTION: TStringField;
    brw_GarmentsUNIT: TStringField;
    brw_GarmentsFABRICID: TIntegerField;
    brw_GarmentDesc: TFDQuery;
    brw_GarmentDescID: TFDAutoIncField;
    brw_GarmentDescCODE: TStringField;
    brw_GarmentDescDESCRIPTION: TStringField;
    brw_GarmentDescUNIT: TStringField;
    brw_GarmentDescFABRICID: TIntegerField;
    brw_GarmentDescFABRIC: TStringField;
    brw_GarmentDescPRICE: TFloatField;
    brw_pmboard: TFDQuery;
    brw_pmboardID: TFDAutoIncField;
    brw_pmboardJONO: TIntegerField;
    brw_pmboardSTARTDATE: TDateTimeField;
    brw_pmboardDATEDUE: TDateTimeField;
    brw_pmboardSTATUS: TStringField;
    brw_pmboardSPRINT: TStringField;
    brw_pmboardCANCELLED: TBooleanField;
    brw_pmboardDELETEDBYID: TIntegerField;
    brw_pmboardDELETEDDATETIME: TDateTimeField;
    brw_pmboardFINISHEDDATE: TDateTimeField;
    brw_pmboardLOGDATE: TDateTimeField;
    brw_pmboardTOTALQTY: TIntegerField;
    brw_pmboardJODESC: TStringField;
    brw_JOID: TIntegerField;
    brw_JOCLIENTID: TIntegerField;
    brw_JOJONO: TIntegerField;
    brw_JOLOGDATE: TDateTimeField;
    brw_JODUEDATE: TDateField;
    brw_JOREMARKS: TStringField;
    brw_JOSUMMARY: TStringField;
    brw_JOGROSSAMNT: TFloatField;
    brw_JODISCPRCENT: TFloatField;
    brw_JODISCOUNT: TFloatField;
    brw_JONETAMNT: TFloatField;
    brw_JOCREATEDBYID: TIntegerField;
    brw_JOCREATEDDATETIME: TDateTimeField;
    brw_JOCANCELLED: TBooleanField;
    brw_JODELETEDBYID: TIntegerField;
    brw_JODELETEDDATETIME: TDateTimeField;
    brw_JOPOSTED: TBooleanField;
    brw_JOPOSTEDDATETIME: TDateTimeField;
    brw_JOPAIDAMNT: TFloatField;
    brw_JOBALAMNT: TFloatField;
    brw_JOCLOSED: TBooleanField;
    brw_JOCLIENT: TStringField;
    qry_JOSUMMARY: TStringField;
    brw_JODetail: TFDQuery;
    brw_JODetailID: TFDAutoIncField;
    brw_JODetailHEADERID: TIntegerField;
    brw_JODetailSHIRTID: TIntegerField;
    brw_JODetailDESCRIPTION: TStringField;
    brw_JODetailFABRICID: TIntegerField;
    brw_JODetailFABRIC: TStringField;
    brw_JODetailSIZE: TStringField;
    brw_JODetailFIT: TStringField;
    brw_JODetailQTY: TIntegerField;
    brw_JODetailFREE: TIntegerField;
    brw_JODetailCOST: TFloatField;
    brw_JODetailUNIT: TStringField;
    brw_JODetailTOTALCOST: TFloatField;
    brw_JODetailCANCELLED: TBooleanField;
    brw_JODetailDELETEDBYID: TIntegerField;
    brw_JODetailDELETEDDATETIME: TDateTimeField;
    brw_JODetailREMARKS: TStringField;
    qry_Client: TFDQuery;
    qry_ClientID: TFDAutoIncField;
    qry_ClientNAME: TStringField;
    qry_ClientCONTACTNO: TStringField;
    qry_ClientADDRESS: TStringField;
    qry_ClientCANCELLED: TBooleanField;
    qry_ClientDELETEDDATETIME: TDateTimeField;
    qry_ClientDELETEDBYID: TIntegerField;
    qry_ClientCREATEDBYID: TIntegerField;
    qry_ClientCREATEDDATETIME: TDateTimeField;
    upd_jo: TFDQuery;
    qry_PB: TFDQuery;
    qry_PBID: TFDAutoIncField;
    qry_PBJONO: TIntegerField;
    qry_PBSTARTDATE: TDateTimeField;
    qry_PBDATEDUE: TDateTimeField;
    qry_PBFINISHEDDATE: TDateTimeField;
    qry_PBSPRINT: TStringField;
    qry_PBCANCELLED: TBooleanField;
    qry_PBDELETEDBYID: TIntegerField;
    qry_PBDELETEDDATETIME: TDateTimeField;
    qry_PBCREATEDBYID: TIntegerField;
    qry_PBCREATEDDATETIME: TDateTimeField;
    brw_pmboardDETAILID: TIntegerField;
    qry_PBDETAILID: TIntegerField;
    tb_OPDetail: TFDMemTable;
    tb_OPDetailSIZE: TStringField;
    tb_OPDetailFIT: TStringField;
    tb_OPDetailQTY: TIntegerField;
    tb_OPDetailFREE: TIntegerField;
    tb_OPDetailUNIT: TStringField;
    tb_OPDetailREMARKS: TStringField;
    tb_OPDetailID: TIntegerField;
    tb_OPDetailSHIRT: TStringField;
    tb_OPDetailFABRIC: TStringField;
    brw_Emp: TFDQuery;
    brw_EmpID: TFDAutoIncField;
    brw_EmpLASTNAME: TStringField;
    brw_EmpFIRSTNAME: TStringField;
    brw_EmpMIDDLENAME: TStringField;
    brw_EmpROLEID: TIntegerField;
    brw_EmpEMPNAME: TStringField;
    tb_OPDetailDETAILID: TIntegerField;
    brw_pmboardCREATEDBYID: TIntegerField;
    brw_pmboardCREATEDDATETIME: TDateTimeField;
    brw_pmboardEMPNAME: TStringField;
    brw_pmboardLASTNAME: TStringField;
    brw_pmboardFIRSTNAME: TStringField;
    brw_pmboardMIDDLENAME: TStringField;
    brw_pmboardLAYOUT: TStringField;
    qry_PBLAYOUT: TStringField;
    brw_PMDetail: TFDQuery;
    brw_PMDetailID: TFDAutoIncField;
    brw_PMDetailJONO: TIntegerField;
    brw_PMDetailDETAILID: TIntegerField;
    brw_PMDetailSTARTDATE: TDateTimeField;
    brw_PMDetailDATEDUE: TDateTimeField;
    brw_PMDetailLAYOUT: TStringField;
    brw_PMDetailFINISHEDDATE: TDateTimeField;
    brw_PMDetailSPRINT: TStringField;
    brw_PMDetailCANCELLED: TBooleanField;
    brw_PMDetailDELETEDBYID: TIntegerField;
    brw_PMDetailDELETEDDATETIME: TDateTimeField;
    brw_PMDetailCREATEDBYID: TIntegerField;
    brw_PMDetailCREATEDDATETIME: TDateTimeField;
    qry_JOLAYOUT: TBooleanField;
    qry_JORELEASED: TBooleanField;
    tb_Log: TFDMemTable;
    tb_LogID: TIntegerField;
    tb_LogJONO: TIntegerField;
    tb_LogDETAILID: TIntegerField;
    tb_LogDESCRIPTION: TStringField;
    tb_LogFABRIC: TStringField;
    tb_LogTOTALQTY: TIntegerField;
    tb_LogDONE: TIntegerField;
    tb_LogQTY: TIntegerField;
    tb_LogUNIT: TStringField;
    tb_LogREMAINING: TIntegerField;
    tb_LogEMPID: TIntegerField;
    tb_LogHEADERID: TIntegerField;
    brw_Logs: TFDQuery;
    brw_LogsID: TFDAutoIncField;
    brw_LogsJONO: TIntegerField;
    brw_LogsHEADERID: TIntegerField;
    brw_LogsDETAILID: TIntegerField;
    brw_LogsEMPID: TIntegerField;
    brw_LogsQTY: TIntegerField;
    brw_LogsTOTALQTY: TIntegerField;
    brw_LogsDONE: TIntegerField;
    brw_LogsLOGDATE: TDateTimeField;
    brw_LogsCANCELLED: TBooleanField;
    brw_LogsDELETEDBYID: TIntegerField;
    brw_LogsDELETEDDATETIME: TDateTimeField;
    brw_LogsCREATEDBYID: TIntegerField;
    brw_LogsCREATEDDATETIME: TDateTimeField;
    brw_LogsLASTNAME: TStringField;
    brw_LogsFIRSTNAME: TStringField;
    brw_LogsMIDDLENAME: TStringField;
    brw_LogsREMAINING: TIntegerField;
    brw_LogsEMPNAME: TStringField;
    qry_Logs: TFDQuery;
    qry_LogsID: TFDAutoIncField;
    qry_LogsJONO: TIntegerField;
    qry_LogsHEADERID: TIntegerField;
    qry_LogsDETAILID: TIntegerField;
    qry_LogsEMPID: TIntegerField;
    qry_LogsQTY: TIntegerField;
    qry_LogsTOTALQTY: TIntegerField;
    qry_LogsDONE: TIntegerField;
    qry_LogsLOGDATE: TDateTimeField;
    qry_LogsCANCELLED: TBooleanField;
    qry_LogsDELETEDBYID: TIntegerField;
    qry_LogsDELETEDDATETIME: TDateTimeField;
    qry_LogsCREATEDBYID: TIntegerField;
    qry_LogsCREATEDDATETIME: TDateTimeField;
    qry_PBFILENAME: TStringField;
    brw_PMDetailFILENAME: TStringField;
    qry_LogsREMAINING: TIntegerField;
    qry_LogsCOMMENT: TStringField;
    brw_LogsSPRINT: TStringField;
    brw_LogsCOMMENT: TStringField;
    qry_LogsSPRINT: TStringField;
    brw_pmboardDONE: TBooleanField;
    brw_PMDetailDONE: TBooleanField;
    brw_LogDone: TFDQuery;
    brw_LogDoneTOTAL: TFMTBCDField;
    brw_PMDone: TFDQuery;
    qry_PBDONE: TBooleanField;
    brw_PMDoneID: TIntegerField;
    brw_PMDoneJONO: TIntegerField;
    brw_PMDoneDETAILID: TIntegerField;
    brw_PMDoneSTARTDATE: TDateTimeField;
    brw_PMDoneDATEDUE: TDateTimeField;
    brw_PMDoneLAYOUT: TStringField;
    brw_PMDoneFILENAME: TStringField;
    brw_PMDoneDONE: TBooleanField;
    brw_PMDoneFINISHEDDATE: TDateTimeField;
    brw_PMDoneSTATUS: TStringField;
    brw_PMDoneSPRINT: TStringField;
    brw_PMDoneCANCELLED: TBooleanField;
    brw_PMDoneDELETEDBYID: TIntegerField;
    brw_PMDoneDELETEDDATETIME: TDateTimeField;
    brw_PMDoneCREATEDBYID: TIntegerField;
    brw_PMDoneCREATEDDATETIME: TDateTimeField;
    brw_PMDoneLOGDATE: TDateTimeField;
    brw_PMDoneTOTALQTY: TIntegerField;
    brw_PMDoneEMPNAME: TStringField;
    tb_OPDetailPAPERSIZE: TIntegerField;
    qry_PBPAPERSIZE: TIntegerField;
    brw_PMDetailPAPERSIZE: TIntegerField;
    brw_pmboardPAPERSIZE: TIntegerField;
    brw_PMDonePAPERSIZE: TIntegerField;
    brw_CountLogs: TFDQuery;
    brw_CountLogsCOUNT: TLargeintField;
    brw_PMDoneJODESC: TStringField;
    brw_pmboardAGE: TIntegerField;
    brw_PMDoneAGE: TIntegerField;
    brw_PMDoneDONEBYID: TIntegerField;
    qry_PBDONEBYID: TIntegerField;
    brw_JORELEASED: TBooleanField;
    qry_company: TFDQuery;
    tb_OPDetailCODE: TStringField;
    tb_OPDetailTOTALQTY: TIntegerField;
    qry_JOEXPORTEDDATETIME: TDateTimeField;
    a: TDateTimeField;
    brw_pmboardFILENAME: TStringField;
    brw_pmboardDONEBYID: TIntegerField;
    brw_pmboardEXPORTEDDATETIME: TDateTimeField;
    brw_PMDoneEXPORTEDDATETIME: TDateTimeField;
    brw_PMDoneSTREXPORTEDDATETIME: TStringField;
    brw_pmboardSTREXPORTEDDATETIME: TStringField;
    brw_pmboardRELEASED: TBooleanField;
    qry_MR: TFDQuery;
    qry_MRID: TFDAutoIncField;
    qry_MRPMID: TIntegerField;
    qry_MRSOURCE: TStringField;
    qry_MRJONO: TIntegerField;
    qry_MRREQBY: TIntegerField;
    qry_MRREQDATETIME: TDateTimeField;
    qry_MRCANCELLED: TBooleanField;
    qry_MRDELETEDBYID: TIntegerField;
    qry_MRDELETEDDATETIME: TDateTimeField;
    qry_MRPOSTED: TBooleanField;
    qry_MRNOTE: TStringField;
    brw_MR: TFDQuery;
    brw_MRID: TFDAutoIncField;
    brw_MRPMID: TIntegerField;
    brw_MRSOURCE: TStringField;
    brw_MRJOID: TIntegerField;
    brw_MRJONO: TIntegerField;
    brw_MRREQBY: TIntegerField;
    brw_MRREQDATETIME: TDateTimeField;
    brw_MRCANCELLED: TBooleanField;
    brw_MRDELETEDBYID: TIntegerField;
    brw_MRDELETEDDATETIME: TDateTimeField;
    brw_MRPOSTED: TBooleanField;
    brw_MRNOTE: TStringField;
    brw_MRLASTNAME: TStringField;
    brw_MRFIRSTNAME: TStringField;
    brw_MRMIDDLENAME: TStringField;
    qry_MRJOID: TIntegerField;
    brw_MREMPNAME: TStringField;
    brw_MRTOTALCOST: TFloatField;
    brw_MRPOSTEDDATETIME: TDateTimeField;
    qry_MRTOTALCOST: TFloatField;
    qry_MRPOSTEDDATETIME: TDateTimeField;
    qry_MRDetails: TFDQuery;
    tb_MRDetails: TFDMemTable;
    qry_MRDetailsHEADERID: TIntegerField;
    qry_MRDetailsITEMID: TIntegerField;
    qry_MRDetailsITEMDESC: TStringField;
    qry_MRDetailsCOST: TFloatField;
    qry_MRDetailsTOTALCOST: TFloatField;
    qry_MRDetailsUNIT: TStringField;
    qry_MRDetailsCANCELLED: TBooleanField;
    qry_MRDetailsDELETEDBYID: TIntegerField;
    qry_MRDetailsDELETEDDATETIME: TDateTimeField;
    tb_MRDetailsITEMID: TIntegerField;
    tb_MRDetailsITEMDESC: TStringField;
    tb_MRDetailsUNIT: TStringField;
    tb_MRDetailsCANCELLED: TBooleanField;
    tb_MRDetailsDELETEDBYID: TIntegerField;
    tb_MRDetailsDELETEDDATETIME: TDateTimeField;
    brw_items: TFDQuery;
    brw_itemsID: TFDAutoIncField;
    brw_itemsCODE: TStringField;
    brw_itemsDESCRIPTION: TStringField;
    brw_itemsITEMTYPE: TStringField;
    brw_itemsPURCHASEUNIT: TStringField;
    brw_itemsINVUNIT: TStringField;
    brw_itemsUNITQTY: TSingleField;
    brw_itemsSELLINGPRICE: TFloatField;
    brw_itemsCANCELLED: TBooleanField;
    brw_itemsDELETEDBYID: TIntegerField;
    brw_itemsDELETEDDATETIME: TDateTimeField;
    brw_itemsCREATEDBYID: TIntegerField;
    brw_itemsCREATEDDATETIME: TDateTimeField;
    qry_MRDetailsOLDQTY: TSingleField;
    qry_MRDetailsQTY: TSingleField;
    tb_MRDetailsOLDQTY: TSingleField;
    tb_MRDetailsQTY: TSingleField;
    tb_MRDetailsCOST: TFloatField;
    brw_PMHeader: TFDQuery;
    brw_PMHeaderJONO: TIntegerField;
    brw_PMHeaderEXPORTEDDATETIME: TDateTimeField;
    del_MRDetails: TFDQuery;
    tb_MRDetailsID: TIntegerField;
    tb_MRDetailsTOTALCOST: TFloatField;
    qry_MRDetailsID: TFDAutoIncField;
    qry_MRSOURCEDESEC: TStringField;
    qry_ClientEMAIL: TStringField;
    qry_WorkersDetails: TFDQuery;
    qry_WorkersDetailsID: TFDAutoIncField;
    qry_WorkersDetailsROLEID: TIntegerField;
    qry_WorkersDetailsEMPID: TIntegerField;
    qry_WorkersDetailsROLE: TStringField;
    qry_WorkersDetailsEMPNAME: TStringField;
    qry_WorkersDetailsHEADERID: TIntegerField;
    qry_WorkersDetailsCANCELLED: TBooleanField;
    qry_WorkersDetailsDELETEDBYID: TIntegerField;
    qry_WorkersDetailsDELETEDDATETIME: TDateTimeField;
    brw_WorkerDetails: TFDQuery;
    brw_WorkerDetailsID: TFDAutoIncField;
    brw_WorkerDetailsROLEID: TIntegerField;
    brw_WorkerDetailsEMPID: TIntegerField;
    brw_WorkerDetailsROLE: TStringField;
    brw_WorkerDetailsEMPNAME: TStringField;
    brw_WorkerDetailsHEADERID: TIntegerField;
    brw_WorkerDetailsCANCELLED: TBooleanField;
    brw_WorkerDetailsDELETEDBYID: TIntegerField;
    brw_WorkerDetailsDELETEDDATETIME: TDateTimeField;
    tb_JOEmp: TFDMemTable;
    tb_JOEmpROLEID: TIntegerField;
    tb_JOEmpEMPID: TIntegerField;
    tb_JOEmpROLE: TStringField;
    tb_JOEmpEMPNAME: TStringField;
    tb_JOEmpID: TIntegerField;
    brw_EmpRoles: TFDQuery;
    del_JoEmp: TFDQuery;
    del_JoDetails: TFDQuery;
    brw_PMDetailDONEBYID: TIntegerField;
    brw_PMDetailEMPID: TIntegerField;
    brw_PMDetailROLEID: TIntegerField;
    brw_PMHeaderEMPID: TIntegerField;
    brw_PMHeaderROLEID: TIntegerField;
    tb_OPDetailEMPID: TIntegerField;
    tb_OPDetailROLEID: TIntegerField;
    tb_OPDetailROLE: TStringField;
    qry_PBEMPID: TIntegerField;
    qry_PBROLEID: TIntegerField;
    brw_pmboardEMPID: TIntegerField;
    brw_pmboardROLEID: TIntegerField;
    brw_PMDoneEMPID: TIntegerField;
    brw_PMDoneROLEID: TIntegerField;
    brw_Emp1: TFDQuery;
    brw_Emp1ID: TFDAutoIncField;
    brw_Emp1LASTNAME: TStringField;
    brw_Emp1FIRSTNAME: TStringField;
    brw_Emp1MIDDLENAME: TStringField;
    brw_Emp1ROLEID: TIntegerField;
    brw_Emp1EMPNAME: TStringField;
    qry_Users: TFDQuery;
    qry_UsersID: TIntegerField;
    qry_UsersUSERNAME: TStringField;
    qry_UsersPASSWORD: TStringField;
    qry_UsersLASTNAME: TStringField;
    qry_UsersFIRSTNAME: TStringField;
    qry_UsersMIDDLENAME: TStringField;
    qry_UsersCANCELLED: TBooleanField;
    qry_UsersCREATEDBYID: TIntegerField;
    qry_UsersCREATEDDATETIME: TDateTimeField;
    qry_UsersADMINISTRATOR: TBooleanField;
    qry_UsersDELETEDBYID: TIntegerField;
    qry_UsersDELETEDDATETIME: TDateTimeField;
    brw_Users: TFDQuery;
    brw_UsersID: TIntegerField;
    brw_UsersUSERNAME: TStringField;
    brw_UsersPASSWORD: TStringField;
    brw_UsersLASTNAME: TStringField;
    brw_UsersFIRSTNAME: TStringField;
    brw_UsersMIDDLENAME: TStringField;
    brw_UsersCANCELLED: TBooleanField;
    brw_UsersCREATEDBYID: TIntegerField;
    brw_UsersCREATEDDATETIME: TDateTimeField;
    brw_UsersADMINISTRATOR: TBooleanField;
    brw_UsersDELETEDBYID: TIntegerField;
    brw_UsersDELETEDDATETIME: TDateTimeField;
    qry_companyID: TFDAutoIncField;
    qry_companyNAME: TStringField;
    qry_companyADDRESS1: TStringField;
    qry_companyADDRESS2: TStringField;
    qry_companyZIPCODE: TIntegerField;
    qry_companyCONTACTNO: TStringField;
    qry_companyEMAIL: TStringField;
    qry_companyLOGO: TStringField;
    qry_companyCREATEDBYID: TIntegerField;
    qry_companyCREATEDDATETIME: TDateTimeField;
    brw_Users1: TFDQuery;
    brw_Users1ID: TFDAutoIncField;
    brw_Users1USERNAME: TStringField;
    brw_Users1PASSWORD: TStringField;
    brw_Users1LASTNAME: TStringField;
    brw_Users1FIRSTNAME: TStringField;
    brw_Users1MIDDLENAME: TStringField;
    brw_Users1CANCELLED: TBooleanField;
    brw_Users1CREATEDBYID: TIntegerField;
    brw_Users1CREATEDDATETIME: TDateTimeField;
    brw_Users1ADMINISTRATOR: TBooleanField;
    brw_Users1DELETEDBYID: TIntegerField;
    brw_Users1DELETEDDATETIME: TDateTimeField;
    qry_EmpReg: TFDQuery;
    brw_EmpReg: TFDQuery;
    qry_EmpRegID: TFDAutoIncField;
    qry_EmpRegUSERID: TIntegerField;
    qry_EmpRegIDNO: TStringField;
    qry_EmpRegLASTNAME: TStringField;
    qry_EmpRegFIRSTNAME: TStringField;
    qry_EmpRegMIDDLENAME: TStringField;
    qry_EmpRegCONTACTNO: TStringField;
    qry_EmpRegEMAIL: TStringField;
    qry_EmpRegROLEID: TIntegerField;
    qry_EmpRegADDRESS: TStringField;
    qry_EmpRegSSS: TFloatField;
    qry_EmpRegPAGIBIG: TFloatField;
    qry_EmpRegPHILHEALTH: TFloatField;
    qry_EmpRegRATE: TFloatField;
    qry_EmpRegCANCELLED: TBooleanField;
    qry_EmpRegDELETEDBYID: TIntegerField;
    qry_EmpRegDELETEDDATETIME: TDateTimeField;
    qry_EmpRegCREATEDBYID: TIntegerField;
    qry_EmpRegCREATEDDATETIME: TDateTimeField;
    brw_EmpRegID: TFDAutoIncField;
    brw_EmpRegUSERID: TIntegerField;
    brw_EmpRegIDNO: TStringField;
    brw_EmpRegLASTNAME: TStringField;
    brw_EmpRegFIRSTNAME: TStringField;
    brw_EmpRegMIDDLENAME: TStringField;
    brw_EmpRegCONTACTNO: TStringField;
    brw_EmpRegEMAIL: TStringField;
    brw_EmpRegROLEID: TIntegerField;
    brw_EmpRegADDRESS: TStringField;
    brw_EmpRegSSS: TFloatField;
    brw_EmpRegPAGIBIG: TFloatField;
    brw_EmpRegPHILHEALTH: TFloatField;
    brw_EmpRegRATE: TFloatField;
    brw_EmpRegCANCELLED: TBooleanField;
    brw_EmpRegDELETEDBYID: TIntegerField;
    brw_EmpRegDELETEDDATETIME: TDateTimeField;
    brw_EmpRegCREATEDBYID: TIntegerField;
    brw_EmpRegCREATEDDATETIME: TDateTimeField;
    brw_EmpRegTITLE: TStringField;
    brw_EmpRegMODEOFCOMP: TStringField;
    brw_EmpRegFREQUENCY: TStringField;
    qry_EmpRegMODEOFCOMP: TStringField;
    qry_EmpRegFREQUENCY: TStringField;
    brw_roles: TFDQuery;
    brw_rolesID: TFDAutoIncField;
    brw_rolesTITLE: TStringField;
    brw_rolesCANCELLED: TBooleanField;
    brw_rolesDELETEDBYID: TIntegerField;
    brw_rolesDELETEDDATETIME: TDateTimeField;
    brw_rolesCREATEDBYID: TIntegerField;
    brw_rolesCREATEDDATETIME: TDateTimeField;
    brw_UsersFULLNAME: TStringField;
    qry_Fabric: TFDQuery;
    qry_FabricID: TFDAutoIncField;
    qry_FabricDESCRIPTION: TStringField;
    qry_FabricCANCELLED: TBooleanField;
    qry_FabricDELETEDBYID: TIntegerField;
    qry_FabricDELETEDDATETIME: TDateTimeField;
    qry_FabricCREATEDBYID: TIntegerField;
    qry_FabricCREATEDDATETIME: TDateTimeField;
    qry_garments: TFDQuery;
    qry_garmentsID: TFDAutoIncField;
    qry_garmentsCODE: TStringField;
    qry_garmentsFABRICID: TIntegerField;
    qry_garmentsDESCRIPTION: TStringField;
    qry_garmentsSPECIFICATIONS: TStringField;
    qry_garmentsUNIT: TStringField;
    qry_garmentsPRICE: TFloatField;
    qry_garmentsCANCELLED: TBooleanField;
    qry_garmentsDELETEDBYID: TIntegerField;
    qry_garmentsDELETEDDATETIME: TDateTimeField;
    qry_garmentsCREATEDBYID: TIntegerField;
    qry_garmentsCREATEDDATETIME: TDateTimeField;
    qry_garmentsUNITQTY: TIntegerField;
    brw_GarmentDescUNITQTY: TIntegerField;
    qry_Unit: TFDQuery;
    qry_UnitID: TFDAutoIncField;
    qry_UnitDESCRIPTION: TStringField;
    qry_UnitCANCELLED: TBooleanField;
    qry_UnitDELETEDBYID: TIntegerField;
    qry_UnitDELETEDDATETIME: TDateTimeField;
    qry_UnitCREATEDBYID: TIntegerField;
    qry_UnitCREATEDDATETIME: TDateTimeField;
    qry_Items: TFDQuery;
    qry_ItemsID: TFDAutoIncField;
    qry_ItemsCODE: TStringField;
    qry_ItemsDESCRIPTION: TStringField;
    qry_ItemsITEMTYPE: TStringField;
    qry_ItemsPURCHASEUNIT: TStringField;
    qry_ItemsINVUNIT: TStringField;
    qry_ItemsUNITQTY: TSingleField;
    qry_ItemsSELLINGPRICE: TFloatField;
    qry_ItemsSALES: TBooleanField;
    qry_ItemsPURCHASE: TBooleanField;
    qry_ItemsMARKUP: TBooleanField;
    qry_ItemsMARKUPPERCENT: TFloatField;
    qry_ItemsCANCELLED: TBooleanField;
    qry_ItemsDELETEDBYID: TIntegerField;
    qry_ItemsDELETEDDATETIME: TDateTimeField;
    qry_ItemsCREATEDBYID: TIntegerField;
    qry_ItemsCREATEDDATETIME: TDateTimeField;
    qry_inventory: TFDQuery;
    qry_inventoryID: TFDAutoIncField;
    qry_inventoryITEMID: TIntegerField;
    qry_inventoryCLASSIFICATION: TStringField;
    qry_inventoryNOTES: TStringField;
    qry_inventoryCANCELLED: TBooleanField;
    qry_inventoryCREATEDBYID: TIntegerField;
    qry_inventoryCREATEDDATETIME: TDateTimeField;
    qry_inventoryDELETEDBYID: TIntegerField;
    qry_inventoryDELETEDDATETIME: TDateTimeField;
    brw_InvDetail: TFDQuery;
    qry_inventoryADJCCALC: TFloatField;
    brw_InvDetailSOURCECALC: TStringField;
    brw_InvDetailDATETIMECALC: TStringField;
    brw_InvDetailID: TLargeintField;
    brw_InvDetailQTY: TFloatField;
    brw_InvDetailINVID: TIntegerField;
    brw_InvDetailSOURCE: TStringField;
    brw_InvDetailSOURCEID: TIntegerField;
    brw_InvDetailHEADERID: TIntegerField;
    brw_InvDetailCREATEDDATETIME: TDateTimeField;
    brw_InvDetailCREATEDBYID: TIntegerField;
    brw_InvDetailLASTNAME: TStringField;
    brw_InvDetailFIRSTNAME: TStringField;
    brw_InvDetailMIDDLENAME: TStringField;
    brw_InvDetailCREATEDBYCALC: TStringField;
    qry_ItemsONHAND: TFloatField;
    brw_itemsONHAND: TFloatField;
    brw_itemsSALES: TBooleanField;
    brw_itemsPURCHASE: TBooleanField;
    brw_itemsMARKUP: TBooleanField;
    brw_itemsMARKUPPERCENT: TFloatField;
    qry_ItemsPRICE: TFloatField;
    brw_itemsPRICE: TFloatField;
    brw_InvDetailNOTES: TStringField;
    qry_inventoryFISCALYEAR: TIntegerField;
    brw_InvDetailFISCALYEAR: TIntegerField;
    qry_CashReg: TFDQuery;
    qry_CashRegID: TFDAutoIncField;
    qry_CashRegPAYMENTTYPE: TStringField;
    qry_CashRegSOURCE: TStringField;
    qry_CashRegREFID: TIntegerField;
    qry_CashRegCUSTOMER: TStringField;
    qry_CashRegNOTES: TStringField;
    qry_CashRegDISCOUNT: TFloatField;
    qry_CashRegDISCPERCENT: TFloatField;
    qry_CashRegGROSSAMNT: TFloatField;
    qry_CashRegNETAMNT: TFloatField;
    qry_CashRegBALAMNT: TFloatField;
    qry_CashRegCANCELLED: TBooleanField;
    qry_CashRegCANCELLEDBYID: TIntegerField;
    qry_CashRegCANCELLEDDATETIME: TDateTimeField;
    qry_CashRegCREATEDBYID: TIntegerField;
    qry_CashRegCREATEDDATETIME: TDateTimeField;
    brw_CashReg: TFDQuery;
    qry_CashDetail: TFDQuery;
    qry_CashDetailID: TFDAutoIncField;
    qry_CashDetailHEADERID: TIntegerField;
    qry_CashDetailITEMID: TIntegerField;
    qry_CashDetailDESCRIPTION: TStringField;
    qry_CashDetailQTY: TFloatField;
    qry_CashDetailPRICE: TFloatField;
    qry_CashDetailAMOUNT: TFloatField;
    qry_CashDetailUNIT: TStringField;
    tb_CashDetail: TFDMemTable;
    qry_CashDetailGARMENTID: TIntegerField;
    tb_CashDetailITEMID: TIntegerField;
    tb_CashDetailDESCRIPTION: TStringField;
    tb_CashDetailQTY: TFloatField;
    tb_CashDetailPRICE: TFloatField;
    tb_CashDetailAMOUNT: TFloatField;
    tb_CashDetailUNIT: TStringField;
    tb_CashDetailGARMENTID: TIntegerField;
    tb_CashDetailID: TIntegerField;
    tb_CashDetailONHAND: TFloatField;
    tb_CashDetailCODE: TStringField;
    qry_CashRegCASHAMNT: TFloatField;
    qry_CashRegCARDAMNT: TFloatField;
    qry_CashRegCHECKAMNT: TFloatField;
    qry_CashRegCARDHOLDER: TStringField;
    qry_CashRegCARDNO: TStringField;
    qry_CashRegCARDBANK: TStringField;
    qry_CashRegCHECKNO: TStringField;
    qry_CashRegCHECKPAYEE: TStringField;
    qry_CashRegCHECKDATE: TDateField;
    qry_CashRegCHECKBANK: TStringField;
    qry_CashRegSALESDATE: TDateField;
    qry_CashRegCARD: TBooleanField;
    qry_CashRegCHECK: TBooleanField;
    qry_CashRegCASH: TBooleanField;
    qry_CashRegTOTALAMNT: TFloatField;
    brw_CashRegID: TFDAutoIncField;
    brw_CashRegPAYMENTTYPE: TStringField;
    brw_CashRegSOURCE: TStringField;
    brw_CashRegREFID: TIntegerField;
    brw_CashRegCUSTOMER: TStringField;
    brw_CashRegSALESDATE: TDateField;
    brw_CashRegNOTES: TStringField;
    brw_CashRegDISCOUNT: TFloatField;
    brw_CashRegDISCPERCENT: TFloatField;
    brw_CashRegGROSSAMNT: TFloatField;
    brw_CashRegNETAMNT: TFloatField;
    brw_CashRegBALAMNT: TFloatField;
    brw_CashRegCARD: TBooleanField;
    brw_CashRegCHECK: TBooleanField;
    brw_CashRegCASH: TBooleanField;
    brw_CashRegCASHAMNT: TFloatField;
    brw_CashRegCARDAMNT: TFloatField;
    brw_CashRegCHECKAMNT: TFloatField;
    brw_CashRegCARDHOLDER: TStringField;
    brw_CashRegCARDNO: TStringField;
    brw_CashRegCARDBANK: TStringField;
    brw_CashRegCHECKNO: TStringField;
    brw_CashRegCHECKPAYEE: TStringField;
    brw_CashRegCHECKDATE: TDateField;
    brw_CashRegCHECKBANK: TStringField;
    brw_CashRegCANCELLED: TBooleanField;
    brw_CashRegCANCELLEDBYID: TIntegerField;
    brw_CashRegCANCELLEDDATETIME: TDateTimeField;
    brw_CashRegCREATEDBYID: TIntegerField;
    brw_CashRegCREATEDDATETIME: TDateTimeField;
    brw_ItemCode: TFDQuery;
    brw_ItemCodeCODE: TStringField;
    brw_ItemCodeID: TFDAutoIncField;
    brw_JODetailCODE: TStringField;
    brw_JOPaid: TFDQuery;
    brw_JOBalance: TFDQuery;
    brw_JOBalanceNETAMNT: TFloatField;
    brw_JOPaidCHANGEAMNT: TFloatField;
    brw_CashRegCHANGEAMNT: TFloatField;
    qry_CashRegCHANGEAMNT: TFloatField;
    brw_JOPaidCASHAMNT: TFloatField;
    brw_JOPaidCARDAMNT: TFloatField;
    brw_JOPaidCHECKAMNT: TFloatField;
    brw_CashRegPAIDAMNT: TFloatField;
    brw_CashRegVOID: TStringField;
    brw_CashRegPAYTPE: TStringField;
    brw_PO: TFDQuery;
    brw_POID: TFDAutoIncField;
    brw_POVENDOR: TStringField;
    brw_POVENDORID: TIntegerField;
    brw_PONOTES: TStringField;
    brw_POPODATE: TDateField;
    brw_POPOSTED: TBooleanField;
    brw_POPOSTEDDATETIME: TDateTimeField;
    brw_POCANCELLED: TBooleanField;
    brw_POCANCELLEDDATETIME: TDateTimeField;
    brw_POCANCELLEDBYID: TIntegerField;
    brw_POCREATEDBYID: TIntegerField;
    brw_POCREATEDDATETIME: TDateTimeField;
    brw_PONETAMOUNT: TFloatField;
    qry_PO: TFDQuery;
    qry_PODetail: TFDQuery;
    qry_POID: TFDAutoIncField;
    qry_POVENDOR: TStringField;
    qry_POVENDORID: TIntegerField;
    qry_PONOTES: TStringField;
    qry_PONETAMOUNT: TFloatField;
    qry_POPODATE: TDateField;
    qry_POPOSTED: TBooleanField;
    qry_POPOSTEDDATETIME: TDateTimeField;
    qry_POCANCELLED: TBooleanField;
    qry_POCANCELLEDDATETIME: TDateTimeField;
    qry_POCANCELLEDBYID: TIntegerField;
    qry_POCREATEDBYID: TIntegerField;
    qry_POCREATEDDATETIME: TDateTimeField;
    qry_PODetailID: TFDAutoIncField;
    qry_PODetailHEADERID: TIntegerField;
    qry_PODetailITEMID: TIntegerField;
    qry_PODetailDESCRIPTION: TStringField;
    qry_PODetailUNIT: TStringField;
    qry_PODetailONHANDQTY: TFloatField;
    qry_PODetailQTY: TFloatField;
    qry_PODetailCOST: TFloatField;
    qry_PODetailAMOUNT: TFloatField;
    qry_PODetailOVERRIDE: TBooleanField;
    tb_PODetail: TFDMemTable;
    tb_PODetailDESCRIPTION: TStringField;
    tb_PODetailUNIT: TStringField;
    tb_PODetailONHANDQTY: TFloatField;
    tb_PODetailQTY: TFloatField;
    tb_PODetailCOST: TFloatField;
    tb_PODetailAMOUNT: TFloatField;
    tb_PODetailOVERRIDE: TBooleanField;
    tb_PODetailID: TIntegerField;
    tb_PODetailHEADERID: TIntegerField;
    tb_PODetailITEMID: TIntegerField;
    brw_Vendor: TFDQuery;
    brw_VendorID: TFDAutoIncField;
    brw_VendorVENDORNAME: TStringField;
    brw_VendorCANCELLED: TBooleanField;
    brw_VendorCANCELLEDDATETIME: TDateTimeField;
    brw_VendorCANCELLEDBYID: TIntegerField;
    brw_VendorCREATEDBYID: TIntegerField;
    brw_VendorCREATEDDATETIME: TDateTimeField;
    qry_PODetailCANCELLED: TBooleanField;
    qry_PODetailCANCELLEDBYID: TIntegerField;
    qry_PODetailCANCELLEDDATETIME: TDateTimeField;
    del_PODetail: TFDQuery;
    brw_RR: TFDQuery;
    brw_RRID: TFDAutoIncField;
    brw_RRVENDORID: TIntegerField;
    brw_RRVENDOR: TStringField;
    brw_RRNOTES: TStringField;
    brw_RRIRDATE: TDateField;
    brw_RRPOSTED: TBooleanField;
    brw_RRPOSTEDDATETIME: TDateTimeField;
    brw_RRCANCELLED: TBooleanField;
    brw_RRCANCELLEDDATETIME: TDateTimeField;
    brw_RRCANCELLEDBYID: TIntegerField;
    brw_RRCREATEDBYID: TIntegerField;
    brw_RRCREATEDDATETIME: TDateTimeField;
    brw_RRNETAMNT: TFloatField;
    brw_RRREFID: TIntegerField;
    brw_RRSOURCE: TStringField;
    qry_RR: TFDQuery;
    qry_RRID: TFDAutoIncField;
    qry_RRREFID: TIntegerField;
    qry_RRSOURCE: TStringField;
    qry_RRVENDORID: TIntegerField;
    qry_RRVENDOR: TStringField;
    qry_RRNOTES: TStringField;
    qry_RRNETAMNT: TFloatField;
    qry_RRIRDATE: TDateField;
    qry_RRPOSTED: TBooleanField;
    qry_RRPOSTEDDATETIME: TDateTimeField;
    qry_RRCANCELLED: TBooleanField;
    qry_RRCANCELLEDDATETIME: TDateTimeField;
    qry_RRCANCELLEDBYID: TIntegerField;
    qry_RRCREATEDBYID: TIntegerField;
    qry_RRCREATEDDATETIME: TDateTimeField;
    qry_RRDetail: TFDQuery;
    qry_RRDetailID: TFDAutoIncField;
    qry_RRDetailHEADERID: TIntegerField;
    qry_RRDetailITEMID: TIntegerField;
    qry_RRDetailDESCRIPTION: TStringField;
    qry_RRDetailUNIT: TStringField;
    qry_RRDetailONHANDQTY: TFloatField;
    qry_RRDetailQTY: TFloatField;
    qry_RRDetailCOST: TFloatField;
    qry_RRDetailAMOUNT: TFloatField;
    qry_RRDetailOVERRIDE: TBooleanField;
    tb_RRDetail: TFDMemTable;
    tb_RRDetailDESCRIPTION: TStringField;
    tb_RRDetailUNIT: TStringField;
    tb_RRDetailONHANDQTY: TFloatField;
    tb_RRDetailQTY: TFloatField;
    tb_RRDetailCOST: TFloatField;
    tb_RRDetailAMOUNT: TFloatField;
    tb_RRDetailOVERRIDE: TBooleanField;
    tb_RRDetailID: TIntegerField;
    tb_RRDetailHEADERID: TIntegerField;
    tb_RRDetailITEMID: TIntegerField;
    qry_RRDetailCANCELLED: TBooleanField;
    qry_RRDetailCANCELLEDYID: TIntegerField;
    qry_RRDetailCANCELLEDDATETIME: TDateTimeField;
    del_RRDetail: TFDQuery;
    brw_InvDetailIN: TFloatField;
    brw_InvDetailOUT: TFloatField;
    brw_itemsCOST: TFloatField;
    qry_ItemsCOST: TFloatField;
    qry_CashDetailCANCELLED: TBooleanField;
    del_CashDetail: TFDQuery;
    qry_RRINVOICE: TStringField;
    brw_RRINVOICE: TStringField;
    qry_RRGROSS: TFloatField;
    qry_RRDISCOUNT: TFloatField;
    brw_RRGROSS: TFloatField;
    brw_RRDISCOUNT: TFloatField;
    brw_Payment: TFDQuery;
    brw_PaymentID: TFDAutoIncField;
    brw_PaymentVENDORID: TIntegerField;
    brw_PaymentORNO: TStringField;
    brw_PaymentNOTES: TStringField;
    brw_PaymentPAYDATE: TDateField;
    brw_PaymentPOSTEDDATETIME: TDateTimeField;
    brw_PaymentPOSTED: TBooleanField;
    brw_PaymentCHECKDATE: TDateField;
    brw_PaymentCHECKNO: TIntegerField;
    brw_PaymentBANKID: TIntegerField;
    brw_PaymentPAYMENTMODE: TStringField;
    brw_PaymentNETAMNT: TFloatField;
    brw_PaymentCANCELLED: TBooleanField;
    brw_PaymentCANCELLEDDATETIME: TDateTimeField;
    brw_PaymentCANCELLEDBYID: TIntegerField;
    brw_PaymentCREATEDBYID: TIntegerField;
    brw_PaymentCREATEDDATETIME: TDateTimeField;
    brw_PaymentVENDOR: TStringField;
    brw_PaymentBANK: TStringField;
    qry_Payment: TFDQuery;
    qry_PaymentID: TFDAutoIncField;
    qry_PaymentVENDORID: TIntegerField;
    qry_PaymentVENDOR: TStringField;
    qry_PaymentORNO: TStringField;
    qry_PaymentNOTES: TStringField;
    qry_PaymentPAYDATE: TDateField;
    qry_PaymentPOSTEDDATETIME: TDateTimeField;
    qry_PaymentPOSTED: TBooleanField;
    qry_PaymentCHECKDATE: TDateField;
    qry_PaymentCHECKNO: TIntegerField;
    qry_PaymentBANKID: TIntegerField;
    qry_PaymentBANK: TStringField;
    qry_PaymentPAYMENTMODE: TStringField;
    qry_PaymentNETAMNT: TFloatField;
    qry_PaymentCANCELLED: TBooleanField;
    qry_PaymentCANCELLEDDATETIME: TDateTimeField;
    qry_PaymentCANCELLEDBYID: TIntegerField;
    qry_PaymentCREATEDBYID: TIntegerField;
    qry_PaymentCREATEDDATETIME: TDateTimeField;
    qry_PaymentDetail: TFDQuery;
    qry_PaymentDetailID: TFDAutoIncField;
    qry_PaymentDetailHEADERID: TIntegerField;
    qry_PaymentDetailREFID: TIntegerField;
    qry_PaymentDetailINVOICE: TStringField;
    qry_PaymentDetailREFDATE: TDateField;
    qry_PaymentDetailAMOUNT: TFloatField;
    qry_PaymentDetailPAIDAMNT: TFloatField;
    qry_PaymentDetailNETAMOUNT: TFloatField;
    qry_PaymentDetailFP: TBooleanField;
    qry_PaymentDetailCANCELLED: TBooleanField;
    qry_PaymentDetailCANCELLEDDATETIME: TDateTimeField;
    tb_PaymentDetail: TFDMemTable;
    tb_PaymentDetailINVOICE: TStringField;
    tb_PaymentDetailREFDATE: TDateField;
    tb_PaymentDetailAMOUNT: TFloatField;
    tb_PaymentDetailPAIDAMNT: TFloatField;
    tb_PaymentDetailNETAMOUNT: TFloatField;
    tb_PaymentDetailFP: TBooleanField;
    tb_PaymentDetailID: TIntegerField;
    tb_PaymentDetailREFID: TIntegerField;
    qry_PaymentDetailBALANCE: TFloatField;
    tb_PaymentDetailBALANCE: TFloatField;
    brw_Bank: TFDQuery;
    brw_BankID: TFDAutoIncField;
    brw_BankTITLE: TStringField;
    brw_BankCANCELLED: TBooleanField;
    brw_BankCANCELLEDBYID: TIntegerField;
    brw_BankCANCELLEDDATETIME: TDateTimeField;
    brw_BankCREATEDBYID: TIntegerField;
    brw_BankCREATEDDATETIME: TDateTimeField;
    qry_PaymentDetailCANCELLEDBYID: TIntegerField;
    brw_PaidPO: TFDQuery;
    brw_PaidPOPAIDAMNT: TFloatField;
    del_PaymentDetail: TFDQuery;
    brw_BankCHECKSERIESNO: TIntegerField;
    brw_PaidVoucher: TFDQuery;
    brw_PaidVoucherID: TFDAutoIncField;
    brw_PaidVoucherBANKID: TIntegerField;
    brw_PaidVoucherCHECKNO: TIntegerField;
    brw_PaidVoucherCHECKDATE: TDateField;
    brw_RRCLOSED: TBooleanField;
    qry_RRCLOSED: TBooleanField;
    brw_PettyCash: TFDQuery;
    brw_PettyCashID: TFDAutoIncField;
    brw_PettyCashNOTES: TStringField;
    brw_PettyCashPAYDATE: TDateField;
    brw_PettyCashPOSTED: TBooleanField;
    brw_PettyCashPOSTEDDATETIME: TDateTimeField;
    brw_PettyCashNETAMNT: TFloatField;
    brw_PettyCashCANCELLED: TBooleanField;
    brw_PettyCashCANCELLEDBYID: TIntegerField;
    brw_PettyCashCANCELLEDDATETIME: TDateTimeField;
    brw_PettyCashCREATEDBYID: TIntegerField;
    brw_PettyCashCREATEDDATETIME: TDateTimeField;
    qry_PettyCash: TFDQuery;
    qry_PettyCashID: TFDAutoIncField;
    qry_PettyCashNOTES: TStringField;
    qry_PettyCashPAYDATE: TDateField;
    qry_PettyCashPOSTED: TBooleanField;
    qry_PettyCashPOSTEDDATETIME: TDateTimeField;
    qry_PettyCashNETAMNT: TFloatField;
    qry_PettyCashCANCELLED: TBooleanField;
    qry_PettyCashCANCELLEDBYID: TIntegerField;
    qry_PettyCashCANCELLEDDATETIME: TDateTimeField;
    qry_PettyCashCREATEDBYID: TIntegerField;
    qry_PettyCashCREATEDDATETIME: TDateTimeField;
    qry_PettyDetail: TFDQuery;
    qry_PettyDetailID: TFDAutoIncField;
    qry_PettyDetailHEADERID: TIntegerField;
    qry_PettyDetailREFID: TIntegerField;
    qry_PettyDetailREFDATE: TDateField;
    qry_PettyDetailAMOUNT: TFloatField;
    qry_PettyDetailCANCELLED: TBooleanField;
    qry_PettyDetailCANCELLEDDATETIME: TDateTimeField;
    tb_PettyDetail: TFDMemTable;
    tb_PettyDetailREFDATE: TDateField;
    tb_PettyDetailAMOUNT: TFloatField;
    tb_PettyDetailCANCELLED: TBooleanField;
    tb_PettyDetailCANCELLEDDATETIME: TDateTimeField;
    tb_PettyDetailID: TIntegerField;
    tb_PettyDetailREFID: TIntegerField;
    qry_PettyDetailNETAMNT: TFloatField;
    tb_PettyDetailNETAMNT: TFloatField;
    tb_PettyDetailBALANCE: TFloatField;
    tb_PettyDetailFP: TBooleanField;
    qry_PettyDetailFP: TBooleanField;
    del_PettyDetail: TFDQuery;
    brw_PaidMR: TFDQuery;
    brw_PaidMRPAIDAMNT: TFloatField;
    brw_PettyCashSOURCE: TStringField;
    qry_PettyCashSOURCE: TStringField;
    qry_PettyDetailPAIDAMNT: TFloatField;
    tb_PettyDetailPAIDAMNT: TFloatField;
    brw_Expense: TFDQuery;
    brw_ExpenseID: TFDAutoIncField;
    brw_ExpensePAYEE: TStringField;
    brw_ExpenseNOTES: TStringField;
    brw_ExpenseBANKID: TIntegerField;
    brw_ExpensePAYMENTMODE: TStringField;
    brw_ExpenseCHECKNO: TIntegerField;
    brw_ExpenseCHECKDATE: TDateField;
    brw_ExpenseNETAMOUNT: TFloatField;
    brw_ExpenseEXPENSEDATE: TDateField;
    brw_ExpensePOSTED: TBooleanField;
    brw_ExpensePOSTEDDATETIME: TDateTimeField;
    brw_ExpenseCANCELLED: TBooleanField;
    brw_ExpenseCANCELLEDBYID: TIntegerField;
    brw_ExpenseCANCELLEDDATETIME: TDateTimeField;
    brw_ExpenseCREATEDBYID: TIntegerField;
    brw_ExpenseCREATEDDATETIME: TDateTimeField;
    brw_ExpenseBANK: TStringField;
    qry_Expense: TFDQuery;
    qry_ExpenseID: TFDAutoIncField;
    qry_ExpensePAYEE: TStringField;
    qry_ExpenseNOTES: TStringField;
    qry_ExpenseBANK: TStringField;
    qry_ExpenseBANKID: TIntegerField;
    qry_ExpensePAYMENTMODE: TStringField;
    qry_ExpenseCHECKNO: TIntegerField;
    qry_ExpenseCHECKDATE: TDateField;
    qry_ExpenseNETAMOUNT: TFloatField;
    qry_ExpenseEXPENSEDATE: TDateField;
    qry_ExpensePOSTED: TBooleanField;
    qry_ExpensePOSTEDDATETIME: TDateTimeField;
    qry_ExpenseCANCELLED: TBooleanField;
    qry_ExpenseCANCELLEDBYID: TIntegerField;
    qry_ExpenseCANCELLEDDATETIME: TDateTimeField;
    qry_ExpenseCREATEDBYID: TIntegerField;
    qry_ExpenseCREATEDDATETIME: TDateTimeField;
    qry_ExpenseDetail: TFDQuery;
    qry_ExpenseDetailID: TFDAutoIncField;
    qry_ExpenseDetailHEADERID: TIntegerField;
    qry_ExpenseDetailDESCRIPTION: TStringField;
    qry_ExpenseDetailAMOUNT: TFloatField;
    qry_ExpenseDetailREMARKS: TStringField;
    qry_ExpenseDetailCANCELLED: TBooleanField;
    qry_ExpenseDetailCANCELLEDBYID: TIntegerField;
    tb_ExpenseDetail: TFDMemTable;
    tb_ExpenseDetailDESCRIPTION: TStringField;
    tb_ExpenseDetailAMOUNT: TFloatField;
    tb_ExpenseDetailREMARKS: TStringField;
    tb_ExpenseDetailID: TIntegerField;
    qry_ExpenseDetailCANCELLEDDATETIME: TDateTimeField;
    brw_PaidExpense: TFDQuery;
    brw_PaidExpenseID: TFDAutoIncField;
    brw_PaidExpenseBANKID: TIntegerField;
    brw_PaidExpenseCHECKNO: TIntegerField;
    brw_PaidExpenseCHECKDATE: TDateField;
    del_ExpenseDetail: TFDQuery;
    tb_RRDetailRCVDQTY: TFloatField;
    qry_RRDetailRCVDQTY: TFloatField;
    brw_RcvdItems: TFDQuery;
    brw_RcvdItemsQTY: TFloatField;
    qry_RRDetailREQQTY: TFloatField;
    tb_RRDetailREQQTY: TFloatField;
    brw_MRREIMBURSED: TBooleanField;
    qry_MRREIMBURSED: TBooleanField;
    brw_Payroll: TFDQuery;
    brw_PayrollID: TFDAutoIncField;
    brw_PayrollEMPCOUNT: TIntegerField;
    brw_PayrollBASICPAY: TFloatField;
    brw_PayrollALLOWANCES: TFloatField;
    brw_PayrollBACKWAGE: TFloatField;
    brw_PayrollLATE: TFloatField;
    brw_PayrollOTHERS: TFloatField;
    brw_PayrollSSS: TFloatField;
    brw_PayrollPAGIBIG: TFloatField;
    brw_PayrollPHIC: TFloatField;
    brw_PayrollNETPAY: TFloatField;
    brw_PayrollCANCELLED: TBooleanField;
    brw_PayrollCANCELLEDBYID: TIntegerField;
    brw_PayrollCANCELLEDDATETIME: TDateTimeField;
    brw_PayrollCREATEDBYID: TIntegerField;
    brw_PayrollCREATEDDATETIME: TDateTimeField;
    brw_PayrollPOSTED: TBooleanField;
    brw_PayrollPOSTEDDATETIME: TDateTimeField;
    qry_Payroll: TFDQuery;
    qry_PayrollID: TFDAutoIncField;
    qry_PayrollEMPCOUNT: TIntegerField;
    qry_PayrollBASICPAY: TFloatField;
    qry_PayrollALLOWANCES: TFloatField;
    qry_PayrollBACKWAGE: TFloatField;
    qry_PayrollLATE: TFloatField;
    qry_PayrollOTHERS: TFloatField;
    qry_PayrollSSS: TFloatField;
    qry_PayrollPAGIBIG: TFloatField;
    qry_PayrollPHIC: TFloatField;
    qry_PayrollNETPAY: TFloatField;
    qry_PayrollPOSTED: TBooleanField;
    qry_PayrollPOSTEDDATETIME: TDateTimeField;
    qry_PayrollCANCELLED: TBooleanField;
    qry_PayrollCANCELLEDBYID: TIntegerField;
    qry_PayrollCANCELLEDDATETIME: TDateTimeField;
    qry_PayrollCREATEDBYID: TIntegerField;
    qry_PayrollCREATEDDATETIME: TDateTimeField;
    qry_PayDetail: TFDQuery;
    qry_PayDetailID: TFDAutoIncField;
    qry_PayDetailHEADERID: TIntegerField;
    qry_PayDetailEMPID: TIntegerField;
    qry_PayDetailROLEID: TIntegerField;
    qry_PayDetailROLE: TStringField;
    qry_PayDetailRATE: TFloatField;
    qry_PayDetailBASICPAY: TFloatField;
    qry_PayDetailALLOWANCES: TFloatField;
    qry_PayDetailBACKWAGE: TFloatField;
    qry_PayDetailLATE: TFloatField;
    qry_PayDetailOTHERS: TFloatField;
    qry_PayDetailSSS: TFloatField;
    qry_PayDetailPAGIBIG: TFloatField;
    qry_PayDetailPHIC: TFloatField;
    qry_PayDetailNETPAY: TFloatField;
    tb_PayDetail: TFDMemTable;
    tb_PayDetailHEADERID: TIntegerField;
    tb_PayDetailEMPID: TIntegerField;
    tb_PayDetailROLEID: TIntegerField;
    tb_PayDetailROLE: TStringField;
    tb_PayDetailRATE: TFloatField;
    tb_PayDetailBASICPAY: TFloatField;
    tb_PayDetailALLOWANCES: TFloatField;
    tb_PayDetailBACKWAGE: TFloatField;
    tb_PayDetailLATE: TFloatField;
    tb_PayDetailOTHERS: TFloatField;
    tb_PayDetailSSS: TFloatField;
    tb_PayDetailPAGIBIG: TFloatField;
    tb_PayDetailPHIC: TFloatField;
    tb_PayDetailNETPAY: TFloatField;
    tb_PayDetailID: TIntegerField;
    qry_PayDetailABSENCES: TFloatField;
    tb_PayDetailABSENCES: TFloatField;
    tb_Emp: TFDMemTable;
    tb_EmpEMPNAME: TStringField;
    tb_EmpROLE: TStringField;
    tb_EmpSELECT: TBooleanField;
    tb_EmpID: TIntegerField;
    tb_EmpIDNO: TStringField;
    tb_EmpSSS: TFloatField;
    tb_EmpPAGIBIG: TFloatField;
    tb_EmpPHILHEALTH: TFloatField;
    tb_EmpRATE: TFloatField;
    tb_EmpMODEOFCOMP: TStringField;
    tb_EmpFREQUENCY: TStringField;
    brw_EmpIDNO: TStringField;
    tb_PayDetailIDNO: TStringField;
    qry_garmentsARTISTSHARE: TFloatField;
    qry_garmentsPRINTOPSHARE: TFloatField;
    qry_garmentsHEATPRESSSHARE: TFloatField;
    qry_garmentsCUTTERSHARE: TFloatField;
    qry_garmentsTAILORSHARE: TFloatField;
    brw_GarmentDescARTISTSHARE: TFloatField;
    brw_GarmentDescPRINTOPSHARE: TFloatField;
    brw_GarmentDescHEATPRESSSHARE: TFloatField;
    brw_GarmentDescCUTTERSHARE: TFloatField;
    brw_GarmentDescTAILORSHARE: TFloatField;
    tb_PayDetailNODAYS: TFloatField;
    qry_PayDetailNODAYS: TFloatField;
    tb_PayDetailNOPIECES: TFloatField;
    qry_PayDetailNOPIECES: TFloatField;
    tb_PayDetailMODE: TStringField;
    qry_PayDetailMODE: TStringField;
    brw_JOLAYOUT: TBooleanField;
    tb_PayDetailSCHED: TStringField;
    qry_PayDetailHRSLATE: TFloatField;
    qry_PayDetailDAYSABSENT: TFloatField;
    tb_PayDetailHRSLATE: TFloatField;
    tb_PayDetailDAYSABSENT: TFloatField;
    brw_DoneOrder: TFDQuery;
    brw_DoneOrderQTY: TFMTBCDField;
    brw_DoneOrderSHIRTID: TIntegerField;
    tb_EmpROLEID: TIntegerField;
    tb_PayParticular: TFDMemTable;
    tb_PayParticularID: TIntegerField;
    tb_PayParticularQTY: TFloatField;
    tb_PayParticularPRICE: TFloatField;
    tb_PayParticularGARMENT: TStringField;
    tb_PayParticularJONO: TIntegerField;
    brw_LogsROLEID: TIntegerField;
    tb_PayParticularLOGDATE: TDateTimeField;
    qry_PayDetailIDNO: TStringField;
    qry_PayDetailCANCELLED: TBooleanField;
    qry_PayDetailCANCELLEDDATETIME: TDateTimeField;
    qry_PayrollABSENCES: TFloatField;
    brw_PayrollABSENCES: TFloatField;
    del_PayrollDetail: TFDQuery;
    qry_PayDetailSCHED: TStringField;
    qry_PayDetailCANCELLEDBYID: TIntegerField;
    qry_PayrollPAYDATE: TDateField;
    brw_PayrollPAYDATE: TDateField;
    tb_PayDetailEMPNAME: TStringField;
    tb_PayDetailGROSSPAY: TFloatField;
    tb_PayDetailPARTICULAR: TStringField;
    qry_PayDetailPARTICULAR: TStringField;
    tb_PayParticularAMNT: TFloatField;
    qry_CashFund: TFDQuery;
    qry_CashFundID: TFDAutoIncField;
    qry_CashFundPOSDAYID: TIntegerField;
    qry_CashFundCASH: TFloatField;
    qry_CashFundQTY: TIntegerField;
    qry_CashFundAMNT: TFloatField;
    qry_CashFundCANCELLED: TBooleanField;
    qry_CashFundCANCELLEDBYID: TIntegerField;
    qry_CashFundCANCELLEDDATETIME: TDateTimeField;
    qry_CashFundOVERRIDEBY: TIntegerField;
    qry_POSDay: TFDQuery;
    qry_POSDayID: TFDAutoIncField;
    qry_POSDayDATE: TDateField;
    qry_POSDayDATEOPENED: TDateTimeField;
    qry_POSDayOPENEDBY: TIntegerField;
    qry_POSDayENDEDBY: TIntegerField;
    qry_POSDayDATEENDED: TDateTimeField;
    tb_CashFund: TFDMemTable;
    tb_CashFundQTY: TIntegerField;
    tb_CashFundCASH: TFloatField;
    tb_CashFundAMNT: TFloatField;
    qry_POSDayISACTIVE: TBooleanField;
    qry_CashEnd: TFDQuery;
    qry_CashEndID: TFDAutoIncField;
    qry_CashEndPOSDAYID: TIntegerField;
    qry_CashEndCASH: TFloatField;
    qry_CashEndQTY: TIntegerField;
    qry_CashEndAMNT: TFloatField;
    qry_CashEndCANCELLED: TBooleanField;
    qry_CashEndCANCELLEDBYID: TIntegerField;
    qry_CashEndCANCELLEDDATETIME: TDateTimeField;
    qry_CashEndOVERRIDEBY: TIntegerField;
    tb_CashDrawer: TFDMemTable;
    tb_CashDrawerQTY: TIntegerField;
    tb_CashDrawerCASH: TFloatField;
    tb_CashDrawerAMNT: TFloatField;
    tb_CashDrawerQTY1: TIntegerField;
    tb_CashDrawerCASH1: TFloatField;
    tb_CashDrawerAMNT1: TFloatField;
    qry_CashRegPOSDAYID: TIntegerField;
    brw_POSDay: TFDQuery;
    brw_POSDayID: TFDAutoIncField;
    brw_POSDayDATE: TDateField;
    brw_POSDayDATEOPENED: TDateTimeField;
    brw_POSDayOPENEDBY: TIntegerField;
    brw_POSDayENDEDBY: TIntegerField;
    brw_POSDayDATEENDED: TDateTimeField;
    brw_POSDayISACTIVE: TBooleanField;
    brw_POSDayLASTNAME: TStringField;
    brw_POSDayFIRSTNAME: TStringField;
    brw_POSDayMIDDLENAME: TStringField;
    brw_POSDayLASTNAME_1: TStringField;
    brw_POSDayFIRSTNAME_1: TStringField;
    brw_POSDayMIDDLENAME_1: TStringField;
    brw_POSDayOPENED_CASHIER: TStringField;
    brw_POSDayCLOSED_CASHIER: TStringField;
    qry_POSDay1: TFDQuery;
    qry_POSDay1ID: TFDAutoIncField;
    qry_POSDay1DATE: TDateField;
    qry_POSDay1DATEOPENED: TDateTimeField;
    qry_POSDay1OPENEDBY: TIntegerField;
    qry_POSDay1ENDEDBY: TIntegerField;
    qry_POSDay1DATEENDED: TDateTimeField;
    qry_POSDay1ISACTIVE: TBooleanField;
    qry_POSDay1OPEN_OVERRIDEBY: TIntegerField;
    qry_POSDay1CLOSE_OVERRIDEBY: TIntegerField;
    qry_POSDay1OPEN_OVERRIDEDATETIME: TDateTimeField;
    qry_POSDay1CLOSE_OVERRIDEDATETIME: TDateTimeField;
    tb_CashFundID: TIntegerField;
    qry_POSDay1LASTNAME: TStringField;
    qry_POSDay1FIRSTNAME: TStringField;
    qry_POSDay1MIDDLENAME: TStringField;
    qry_POSDay1CASHIER: TStringField;
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
    brw_Policy: TFDQuery;
    brw_PolicyID: TFDAutoIncField;
    brw_PolicyMODULES: TStringField;
    brw_PolicyPOLICY: TStringField;
    qry_Policy: TFDQuery;
    qry_PolicyID: TFDAutoIncField;
    qry_PolicyMODULES: TStringField;
    qry_PolicyPOLICY: TStringField;
    qry_Rights: TFDQuery;
    qry_RightsID: TFDAutoIncField;
    qry_RightsROLEID: TIntegerField;
    qry_RightsPOLICYID: TIntegerField;
    qry_RightsCREATEDBYID: TIntegerField;
    qry_RightsCREATEDDATETIME: TDateTimeField;
    brw_PolicySECURITY: TStringField;
    tb_Rights: TFDMemTable;
    tb_RightsID: TIntegerField;
    tb_RightsPOLICYID: TIntegerField;
    tb_RightsROLEID: TIntegerField;
    tb_RightsSELECT: TBooleanField;
    tb_RightsROLE: TStringField;
    brw_Rights: TFDQuery;
    brw_RightsID: TFDAutoIncField;
    brw_RightsROLEID: TIntegerField;
    brw_RightsTITLE: TStringField;
    qry_RightsSELECT: TBooleanField;
    brw_RightsSELECT: TBooleanField;
    brw_RightsPOLICYID: TIntegerField;
    brw_RightsMODULES: TStringField;
    qry_JOOVERRIDE: TBooleanField;
    qry_JOOVERRIDEBY: TIntegerField;
    brw_JOPaidNETAMNT: TFloatField;
    brw_pmboardHEADERID: TIntegerField;
    qry_ItemsMINQTY: TFloatField;
    brw_itemsMINQTY: TFloatField;
    brw_Print: TFDQuery;
    brw_PrintPRINT: TBooleanField;
    brw_ExpenseType: TFDQuery;
    brw_ExpenseTypeID: TFDAutoIncField;
    brw_ExpenseTypeNAME: TStringField;
    tb_PayDetailCA: TFloatField;
    qry_PayrollCA: TFloatField;
    qry_PayDetailCA: TFloatField;
    brw_PayrollCA: TFloatField;
    qry_Vendor: TFDQuery;
    qry_VendorID: TFDAutoIncField;
    qry_VendorVENDORNAME: TStringField;
    qry_VendorCANCELLED: TBooleanField;
    qry_VendorCANCELLEDDATETIME: TDateTimeField;
    qry_VendorCANCELLEDBYID: TIntegerField;
    qry_VendorCREATEDBYID: TIntegerField;
    qry_VendorCREATEDDATETIME: TDateTimeField;
    qry_Bank: TFDQuery;
    qry_BankID: TFDAutoIncField;
    qry_BankTITLE: TStringField;
    qry_BankCHECKSERIESNO: TIntegerField;
    qry_BankCANCELLED: TBooleanField;
    qry_BankCANCELLEDBYID: TIntegerField;
    qry_BankCANCELLEDDATETIME: TDateTimeField;
    qry_BankCREATEDBYID: TIntegerField;
    qry_BankCREATEDDATETIME: TDateTimeField;
    qry_ExpenseType: TFDQuery;
    qry_ExpenseTypeID: TFDAutoIncField;
    qry_ExpenseTypeNAME: TStringField;
    qry_ExpenseTypeCANCELLED: TBooleanField;
    qry_ExpenseTypeCANCELLEDDATETIME: TDateTimeField;
    qry_ExpenseTypeCANCELLEDBYID: TIntegerField;
    qry_ExpenseTypeCREATEDBYID: TIntegerField;
    qry_ExpenseTypeCREATEDDATETIME: TDateTimeField;
    tb_CashDisburse: TFDMemTable;
    tb_CashDisburseNO: TIntegerField;
    tb_CashDisbursePAYEE: TStringField;
    tb_CashDisburseNOTES: TStringField;
    tb_CashDisbursePAYMODE: TStringField;
    tb_CashDisburseBANK: TStringField;
    tb_CashDisburseCHECKNO: TIntegerField;
    tb_CashDisburseCHECKDATE: TDateField;
    tb_CashDisburseNETAMNT: TFloatField;
    tb_CashDisbursePREPAREDBY: TStringField;
    tb_CashDisburseDATE: TDateField;
    tb_CashDisburseDISBURSETYPE: TStringField;
    tb_PayDisburse: TFDMemTable;
    tb_PayDisburseVOUCHERNO: TIntegerField;
    tb_PayDisburseDESCRIPTION: TStringField;
    tb_PayDisburseREFNO: TIntegerField;
    tb_PayDisburseREFDATE: TDateField;
    tb_PayDisburseNETAMNT: TFloatField;
    tb_PayDisburseDATE: TDateField;
    tb_PayDisburseINVOICE: TStringField;
    tb_PayDisburseDISBURSETYPE: TStringField;
    qry_DisburseDetail: TFDQuery;
    qry_DisburseDetailID: TFDAutoIncField;
    qry_DisburseDetailHEADERID: TIntegerField;
    qry_DisburseDetailDISBURSETYPE: TStringField;
    qry_DisburseDetailVOUCHERNO: TIntegerField;
    qry_DisburseDetailDESCRIPTION: TStringField;
    qry_DisburseDetailREFNO: TIntegerField;
    qry_DisburseDetailREFDATE: TDateField;
    qry_DisburseDetailNETAMNT: TFloatField;
    qry_DisburseDetailDATE: TDateField;
    qry_DisburseDetailINVOICE: TStringField;
    qry_CashRegDISBURSETYPE: TStringField;
    brw_CashOut: TFDQuery;
    brw_CashOutID: TFDAutoIncField;
    brw_CashOutDISBURSETYPE: TStringField;
    brw_CashOutCUSTOMER: TStringField;
    brw_CashOutNETAMNT: TFloatField;
    brw_CashOutREFID: TIntegerField;
    tb_CashDetailITEMDESC: TStringField;
    brw_InvReq: TFDQuery;
    brw_InvReqID: TFDAutoIncField;
    brw_InvReqJONO: TIntegerField;
    brw_InvReqSOURCE: TStringField;
    brw_InvReqNOTES: TStringField;
    brw_InvReqTOTALCOST: TFloatField;
    brw_InvReqREQBY: TIntegerField;
    brw_InvReqREQDATETIME: TDateTimeField;
    brw_InvReqCANCELLED: TBooleanField;
    brw_InvReqCANCELLEDBYID: TIntegerField;
    brw_InvReqCANCELLEDDATETIME: TDateTimeField;
    brw_InvReqPOSTED: TBooleanField;
    brw_InvReqPOSTEDDATETIME: TDateTimeField;
    brw_InvReqLASTNAME: TStringField;
    brw_InvReqFIRSTNAME: TStringField;
    brw_InvReqMIDDLENAME: TStringField;
    brw_InvReqEMPNAME: TStringField;
    qry_InvRequest: TFDQuery;
    qry_InvRequestID: TFDAutoIncField;
    qry_InvRequestJONO: TIntegerField;
    qry_InvRequestSOURCE: TStringField;
    qry_InvRequestNOTES: TStringField;
    qry_InvRequestTOTALCOST: TFloatField;
    qry_InvRequestREQBY: TIntegerField;
    qry_InvRequestREQDATETIME: TDateTimeField;
    qry_InvRequestCANCELLED: TBooleanField;
    qry_InvRequestCANCELLEDBYID: TIntegerField;
    qry_InvRequestCANCELLEDDATETIME: TDateTimeField;
    qry_InvRequestPOSTED: TBooleanField;
    qry_InvRequestPOSTEDDATETIME: TDateTimeField;
    qry_InvReqDetail: TFDQuery;
    qry_InvReqDetailID: TFDAutoIncField;
    qry_InvReqDetailHEADERID: TIntegerField;
    qry_InvReqDetailITEMID: TIntegerField;
    qry_InvReqDetailITEMDESC: TStringField;
    qry_InvReqDetailCOST: TFloatField;
    qry_InvReqDetailOLDQTY: TSingleField;
    qry_InvReqDetailQTY: TSingleField;
    qry_InvReqDetailTOTALCOST: TFloatField;
    qry_InvReqDetailUNIT: TStringField;
    qry_InvReqDetailCANCELLED: TBooleanField;
    qry_InvReqDetailCANCELLEDBYID: TIntegerField;
    qry_InvReqDetailCANCELLEDDATETIME: TDateTimeField;
    tb_InvReqDetail: TFDMemTable;
    tb_InvReqDetailITEMID: TIntegerField;
    tb_InvReqDetailITEMDESC: TStringField;
    tb_InvReqDetailUNIT: TStringField;
    tb_InvReqDetailCANCELLED: TBooleanField;
    tb_InvReqDetailDELETEDBYID: TIntegerField;
    tb_InvReqDetailDELETEDDATETIME: TDateTimeField;
    tb_InvReqDetailOLDQTY: TSingleField;
    tb_InvReqDetailCOST: TFloatField;
    tb_InvReqDetailID: TIntegerField;
    tb_InvReqDetailTOTALCOST: TFloatField;
    del_InvReqDetail: TFDQuery;
    qry_InvRequestSOURCEDESC: TStringField;
    tb_InvReqDetailQTY: TFloatField;
    qry_inventoryONHAND: TFloatField;
    qry_inventoryADJQTY: TSingleField;
    qry_inventoryNEWONHAND: TFloatField;
    brw_OPShirt: TFDQuery;
    brw_OPShirtID: TIntegerField;
    brw_OPShirtCODE: TStringField;
    brw_OPShirtDESCRIPTION: TStringField;
    brw_OPShirtUNIT: TStringField;
    brw_OPShirtFABRICID: TIntegerField;
    brw_PMDetailDESCRIPTION: TStringField;
    brw_PMDetailFABRICID: TIntegerField;
    brw_PMDetailFABRIC: TStringField;
    brw_PMDetailSIZE: TStringField;
    brw_PMDetailFIT: TStringField;
    brw_PMDetailQTY: TIntegerField;
    brw_PMDetailFREE: TIntegerField;
    brw_pmboardDESCRIPTION: TStringField;
    brw_pmboardFABRICID: TIntegerField;
    brw_pmboardFABRIC: TStringField;
    brw_pmboardSIZE: TStringField;
    brw_pmboardFIT: TStringField;
    brw_pmboardQTY: TIntegerField;
    brw_pmboardFREE: TIntegerField;
    brw_pmboardUNIT: TStringField;
    brw_PMDoneFABRICID: TIntegerField;
    brw_PMDoneDESCRIPTION: TStringField;
    brw_PMDoneFABRIC: TStringField;
    brw_PMDoneSIZE: TStringField;
    brw_PMDoneFIT: TStringField;
    brw_PMDoneQTY: TIntegerField;
    brw_PMDoneFREE: TIntegerField;
    brw_PMDoneUNIT: TStringField;
    brw_PMDetailSHIRTID: TIntegerField;
    brw_PMDetailUNIT: TStringField;
    brw_pmboardSHIRTID: TIntegerField;
    brw_PMDoneSHIRTID: TIntegerField;
    tb_OPDetailSHIRTID: TIntegerField;
    tb_OPDetailFABRICID: TIntegerField;
    brw_OPShirtDETAILID: TIntegerField;
    brw_OPShirtFABRIC: TStringField;
    brw_PMDetailREMARKS: TStringField;
    brw_PMDoneREMARKS: TStringField;
    brw_pmboardREMARKS: TStringField;
    brw_PMLayout: TFDQuery;
    brw_PMLayoutID: TFDAutoIncField;
    brw_PMLayoutHEADERID: TIntegerField;
    brw_PMLayoutSHIRTID: TIntegerField;
    brw_PMLayoutDESCRIPTION: TStringField;
    brw_PMLayoutFABRICID: TIntegerField;
    brw_PMLayoutFABRIC: TStringField;
    brw_PMLayoutSIZE: TStringField;
    brw_PMLayoutFIT: TStringField;
    brw_PMLayoutQTY: TIntegerField;
    brw_PMLayoutFREE: TIntegerField;
    brw_PMLayoutCOST: TFloatField;
    brw_PMLayoutUNIT: TStringField;
    brw_PMLayoutTOTALCOST: TFloatField;
    brw_PMLayoutCANCELLED: TBooleanField;
    brw_PMLayoutDELETEDBYID: TIntegerField;
    brw_PMLayoutDELETEDDATETIME: TDateTimeField;
    brw_PMLayoutREMARKS: TStringField;
    brw_PMLayoutRELEASED: TBooleanField;
    brw_PMLayoutEXPORTEDDATETIME: TDateTimeField;
    brw_PMLayoutLOGDATE: TDateTimeField;
    qry_JODetailLAYOUT: TStringField;
    qry_JODetailFILENAME: TStringField;
    qry_PMDetail: TFDQuery;
    qry_PMDetailID: TFDAutoIncField;
    qry_PMDetailJONO: TIntegerField;
    qry_PMDetailDETAILID: TIntegerField;
    qry_PMDetailSHIRTID: TIntegerField;
    qry_PMDetailDESCRIPTION: TStringField;
    qry_PMDetailFABRICID: TIntegerField;
    qry_PMDetailFABRIC: TStringField;
    qry_PMDetailSIZE: TStringField;
    qry_PMDetailFIT: TStringField;
    qry_PMDetailQTY: TIntegerField;
    qry_PMDetailFREE: TIntegerField;
    qry_PMDetailUNIT: TStringField;
    qry_PMDetailREMARKS: TStringField;
    qry_PMDetailSTARTDATE: TDateTimeField;
    qry_PMDetailDATEDUE: TDateTimeField;
    qry_PMDetailPAPERSIZE: TIntegerField;
    qry_PMDetailLAYOUT: TStringField;
    qry_PMDetailFILENAME: TStringField;
    qry_PMDetailDONE: TBooleanField;
    qry_PMDetailDONEBYID: TIntegerField;
    qry_PMDetailEMPID: TIntegerField;
    qry_PMDetailROLEID: TIntegerField;
    qry_PMDetailFINISHEDDATE: TDateTimeField;
    qry_PMDetailSPRINT: TStringField;
    qry_PMDetailCANCELLED: TBooleanField;
    qry_PMDetailDELETEDBYID: TIntegerField;
    qry_PMDetailDELETEDDATETIME: TDateTimeField;
    qry_PMDetailCREATEDBYID: TIntegerField;
    qry_PMDetailCREATEDDATETIME: TDateTimeField;
    qry_PBSHIRTID: TIntegerField;
    qry_PBDESCRIPTION: TStringField;
    qry_PBFABRICID: TIntegerField;
    qry_PBFABRIC: TStringField;
    qry_PBSIZE: TStringField;
    qry_PBFIT: TStringField;
    qry_PBQTY: TIntegerField;
    qry_PBFREE: TIntegerField;
    qry_PBUNIT: TStringField;
    qry_PBREMARKS: TStringField;
    tb_JODetailLAYOUT: TStringField;
    tb_JODetailFILENAME: TStringField;
    brw_LogsDESCRIPTION: TStringField;
    brw_LogsFABRIC: TStringField;
    brw_LogsSIZE: TStringField;
    brw_LogsFIT: TStringField;
    brw_LogsUNIT: TStringField;
    qry_CashInDetail: TFDQuery;
    qry_CashInDetailID: TFDAutoIncField;
    qry_CashInDetailHEADERID: TIntegerField;
    qry_CashInDetailRECEIVEDFROM: TStringField;
    qry_CashInDetailREMARKS: TStringField;
    qry_CashInDetailREFDATE: TDateField;
    qry_CashInDetailCREATEDBY: TIntegerField;
    qry_CashInDetailCREATEDDATETIME: TDateTimeField;
    qry_CashInDetailCANCELLED: TBooleanField;
    qry_CashInDetailCANCELLEDBYID: TIntegerField;
    qry_CashInDetailCANCELLEDDATETIME: TDateTimeField;
    qry_CashInDetailAMOUNT: TFloatField;
    brw_CashIn: TFDQuery;
    brw_CashInID: TFDAutoIncField;
    brw_CashInCUSTOMER: TStringField;
    brw_CashInNETAMNT: TFloatField;
    brw_CashInPAYMENTTYPE: TStringField;
    brw_CashOut2: TFDQuery;
    brw_CashOut2ID: TFDAutoIncField;
    brw_CashOut2CUSTOMER: TStringField;
    brw_CashOut2NETAMNT: TFloatField;
    brw_CashOut2PAYMENTTYPE: TStringField;
    qry_CashOutDetail: TFDQuery;
    qry_CashOutDetailID: TFDAutoIncField;
    qry_CashOutDetailHEADERID: TIntegerField;
    qry_CashOutDetailPAYEE: TStringField;
    qry_CashOutDetailREMARKS: TStringField;
    qry_CashOutDetailREFDATE: TDateField;
    qry_CashOutDetailCREATEDBY: TIntegerField;
    qry_CashOutDetailCANCELLED: TBooleanField;
    qry_CashOutDetailCANCELLEDBYID: TIntegerField;
    qry_CashOutDetailCANCELLEDDATETIME: TDateTimeField;
    qry_CashOutDetailAMOUNT: TSingleField;
    qry_CashOutDetailCREATEDDATETIME: TDateTimeField;
    brw_CashSum: TFDQuery;
    brw_CashSumID: TFDAutoIncField;
    brw_CashSumPAYMENTTYPE: TStringField;
    brw_CashSumSOURCE: TStringField;
    brw_CashSumREFID: TIntegerField;
    brw_CashSumCUSTOMER: TStringField;
    brw_CashSumSALESDATE: TDateField;
    brw_CashSumNOTES: TStringField;
    brw_CashSumDISCOUNT: TFloatField;
    brw_CashSumDISCPERCENT: TFloatField;
    brw_CashSumGROSSAMNT: TFloatField;
    brw_CashSumNETAMNT: TFloatField;
    brw_CashSumBALAMNT: TFloatField;
    brw_CashSumCARD: TBooleanField;
    brw_CashSumCHECK: TBooleanField;
    brw_CashSumCASH: TBooleanField;
    brw_CashSumCASHAMNT: TFloatField;
    brw_CashSumCARDAMNT: TFloatField;
    brw_CashSumCHECKAMNT: TFloatField;
    brw_CashSumCARDHOLDER: TStringField;
    brw_CashSumCARDNO: TStringField;
    brw_CashSumCARDBANK: TStringField;
    brw_CashSumCHECKNO: TStringField;
    brw_CashSumCHECKPAYEE: TStringField;
    brw_CashSumCHECKDATE: TDateField;
    brw_CashSumCHECKBANK: TStringField;
    brw_CashSumCANCELLED: TBooleanField;
    brw_CashSumCANCELLEDBYID: TIntegerField;
    brw_CashSumCANCELLEDDATETIME: TDateTimeField;
    brw_CashSumCREATEDBYID: TIntegerField;
    brw_CashSumCREATEDDATETIME: TDateTimeField;
    brw_CashSumCHANGEAMNT: TFloatField;
    brw_CashSumPAIDAMNT: TFloatField;
    brw_CashSumVOID: TStringField;
    brw_CashSumPAYTPE: TStringField;
    brw_CashSumNETCALC: TFloatField;
    brw_CashSumGROSSCALC: TFloatField;
    brw_CashSumCASHCALC: TFloatField;
    brw_CashSumCHECKCALC: TFloatField;
    brw_CashSumCARDCALC: TFloatField;
    brw_CPRReport: TFDQuery;
    brw_CPRReportFIRSTNAME: TStringField;
    brw_CPRReportLASTNAME: TStringField;
    brw_CPRReportMIDDLENAME: TStringField;
    brw_CPRReportSOURCE: TStringField;
    brw_CPRReportJONO: TIntegerField;
    brw_CPRReportTOTALCOST: TFloatField;
    brw_CPRReportREQDATETIME: TDateTimeField;
    brw_CPRReportID: TIntegerField;
    brw_CPRReportHEADERID: TIntegerField;
    brw_CPRReportITEMID: TIntegerField;
    brw_CPRReportITEMDESC: TStringField;
    brw_CPRReportCOST: TFloatField;
    brw_CPRReportOLDQTY: TSingleField;
    brw_CPRReportQTY: TSingleField;
    brw_CPRReportTOTALCOST_1: TFloatField;
    brw_CPRReportUNIT: TStringField;
    brw_CPRReportCANCELLED: TBooleanField;
    brw_CPRReportDELETEDBYID: TIntegerField;
    brw_CPRReportDELETEDDATETIME: TDateTimeField;
    brw_CPRReportREQBY: TStringField;
    brw_IRReport: TFDQuery;
    brw_IRReportFIRSTNAME: TStringField;
    brw_IRReportLASTNAME: TStringField;
    brw_IRReportMIDDLENAME: TStringField;
    brw_IRReportINVOICE: TStringField;
    brw_IRReportIRDATE: TDateField;
    brw_IRReportNETAMNT: TFloatField;
    brw_IRReportREFID: TIntegerField;
    brw_IRReportVENDOR: TStringField;
    brw_IRReportSOURCE: TStringField;
    brw_IRReportID: TIntegerField;
    brw_IRReportHEADERID: TIntegerField;
    brw_IRReportITEMID: TIntegerField;
    brw_IRReportDESCRIPTION: TStringField;
    brw_IRReportUNIT: TStringField;
    brw_IRReportONHANDQTY: TFloatField;
    brw_IRReportREQQTY: TFloatField;
    brw_IRReportRCVDQTY: TFloatField;
    brw_IRReportQTY: TFloatField;
    brw_IRReportCOST: TFloatField;
    brw_IRReportAMOUNT: TFloatField;
    brw_IRReportOVERRIDE: TBooleanField;
    brw_IRReportCANCELLED: TBooleanField;
    brw_IRReportCANCELLEDYID: TIntegerField;
    brw_IRReportCANCELLEDDATETIME: TDateTimeField;
    brw_IRReportRCVDBY: TStringField;
    brw_JOReport: TFDQuery;
    brw_JOReportJONO: TIntegerField;
    brw_JOReportLOGDATE: TDateTimeField;
    brw_JOReportDUEDATE: TDateField;
    brw_JOReportPOSTEDDATETIME: TDateTimeField;
    brw_JOReportNETAMNT: TFloatField;
    brw_JOReportPAIDAMNT: TFloatField;
    brw_JOReportBALAMNT: TFloatField;
    brw_JOReportPOSTED: TBooleanField;
    brw_JOReportLAYOUT: TBooleanField;
    brw_JOReportRELEASED: TBooleanField;
    brw_JOReportCLOSED: TBooleanField;
    brw_JOReportNAME: TStringField;
    brw_JOReportID: TIntegerField;
    brw_JOReportHEADERID: TIntegerField;
    brw_JOReportSHIRTID: TIntegerField;
    brw_JOReportDESCRIPTION: TStringField;
    brw_JOReportFABRICID: TIntegerField;
    brw_JOReportFABRIC: TStringField;
    brw_JOReportSIZE: TStringField;
    brw_JOReportFIT: TStringField;
    brw_JOReportQTY: TIntegerField;
    brw_JOReportFREE: TIntegerField;
    brw_JOReportCOST: TFloatField;
    brw_JOReportUNIT: TStringField;
    brw_JOReportTOTALCOST: TFloatField;
    brw_JOReportCANCELLED: TBooleanField;
    brw_JOReportDELETEDBYID: TIntegerField;
    brw_JOReportDELETEDDATETIME: TDateTimeField;
    brw_JOReportREMARKS: TStringField;
    brw_JOReportLAYOUT_1: TStringField;
    brw_JOReportFILENAME: TStringField;
    brw_InvCount: TFDQuery;
    brw_InvCountBALANCE: TFloatField;
    brw_InvCountINVID: TIntegerField;
    brw_InvCountDESCRIPTION: TStringField;
    tb_InvPeriodic: TFDMemTable;
    tb_InvPeriodicBALANCE: TFloatField;
    tb_InvPeriodicINVID: TIntegerField;
    tb_InvPeriodicDESCRIPTION: TStringField;
    tb_InvPeriodicCREATEDDATETIME: TDateTimeField;
    tb_InvPeriodicSOURCE: TStringField;
    tb_InvPeriodicSOURCEID: TIntegerField;
    tb_InvPeriodicCREATEDBY: TStringField;
    tb_InvPeriodicIN: TFloatField;
    tb_InvPeriodicOUT: TFloatField;
    brw_InvDetailDESCRIPTION: TStringField;
    qry_dateconfig: TFDQuery;
    qry_dateconfigAUTONOW: TBooleanField;
    qry_dateconfigDATE: TDateField;
    qry_dateconfigACTIVE: TBooleanField;
    qry_CashOutDetailCATEGORYID: TIntegerField;
    qry_CashOutDetailPAYREFID: TIntegerField;
    qry_CashOutDetailEMPID: TIntegerField;
    brw_PayrollEmp: TFDQuery;
    brw_PayrollEmpHEADERID: TIntegerField;
    brw_PayrollEmpROLE: TStringField;
    brw_PayrollEmpNETPAY: TFloatField;
    brw_PayrollEmpFIRSTNAME: TStringField;
    brw_PayrollEmpMIDDLENAME: TStringField;
    brw_PayrollEmpLASTNAME: TStringField;
    brw_PayrollEmpEMPNAME: TStringField;
    brw_ExpenseTypeCATEGORY: TIntegerField;
    brw_PayrollEmpID: TIntegerField;
    qry_CashOutDetailCATEGORY: TStringField;
    qry_CashRegEXPENSETYPE: TStringField;
    brw_CashSumEXPENSETYPE: TStringField;
    brw_CashSumSOURCECALC: TStringField;
    brw_CompExpense: TFDQuery;
    brw_CompExpenseAMOUNT: TFloatField;
    brw_ViewCA: TFDQuery;
    brw_ViewCAID: TFDAutoIncField;
    brw_ViewCAHEADERID: TIntegerField;
    brw_ViewCACATEGORY: TStringField;
    brw_ViewCACATEGORYID: TIntegerField;
    brw_ViewCAPAYREFID: TIntegerField;
    brw_ViewCAEMPID: TIntegerField;
    brw_ViewCAPAYEE: TStringField;
    brw_ViewCAREMARKS: TStringField;
    brw_ViewCAAMOUNT: TSingleField;
    brw_ViewCAREFDATE: TDateField;
    brw_ViewCACREATEDBY: TIntegerField;
    brw_ViewCACREATEDDATETIME: TDateTimeField;
    brw_ViewCACANCELLED: TBooleanField;
    brw_ViewCACANCELLEDBYID: TIntegerField;
    brw_ViewCACANCELLEDDATETIME: TDateTimeField;
    brw_ViewCASALESDATE: TDateField;
    qry_PayDetailPAIDAMNT: TFloatField;
    tb_PayDetailPAIDAMNT: TFloatField;
    tb_PayDetailBALAMNT: TFloatField;
    brw_SalesJO: TFDQuery;
    brw_SalesJOORNO: TIntegerField;
    brw_SalesJOSOURCE: TStringField;
    brw_SalesJOCUSTOMER: TStringField;
    brw_SalesJOSALESDATE: TDateField;
    brw_SalesJOPAYMENTTYPE: TStringField;
    brw_SalesJOCASHAMNT: TFloatField;
    brw_SalesJOCARDAMNT: TFloatField;
    brw_SalesJOCHECKAMNT: TFloatField;
    brw_SalesJOJONO: TIntegerField;
    brw_SalesJOLOGDATE: TDateTimeField;
    brw_SalesJODUEDATE: TDateField;
    brw_SalesJONETAMNT: TFloatField;
    brw_SalesJOPAIDAMNT: TFloatField;
    brw_SalesJOFABRIC: TStringField;
    brw_SalesJOQTY: TLargeintField;
    brw_SalesJOCOST: TFloatField;
    brw_SalesJOUNIT: TStringField;
    brw_SalesCash: TFDQuery;
    brw_SalesCashORNO: TIntegerField;
    brw_SalesCashPAYMENTTYPE: TStringField;
    brw_SalesCashCUSTOMER: TStringField;
    brw_SalesCashSALESDATE: TDateField;
    brw_SalesCashGROSSAMNT: TFloatField;
    brw_SalesCashDISCOUNT: TFloatField;
    brw_SalesCashNETAMNT: TFloatField;
    brw_SalesCashCASHAMNT: TFloatField;
    brw_SalesCashCARDAMNT: TFloatField;
    brw_SalesCashCHECKAMNT: TFloatField;
    brw_SalesCashDESCRIPTION: TStringField;
    brw_SalesCashQTY: TFloatField;
    brw_SalesCashPRICE: TFloatField;
    brw_SalesCashUNIT: TStringField;
    brw_SalesCashAMOUNT: TFloatField;
    brw_SalesCashIn: TFDQuery;
    brw_SalesCashInORNO: TFDAutoIncField;
    brw_SalesCashInPAYMENTTYPE: TStringField;
    brw_SalesCashInSOURCE: TStringField;
    brw_SalesCashInCUSTOMER: TStringField;
    brw_SalesCashInSALESDATE: TDateField;
    brw_SalesCashInNETAMNT: TFloatField;
    brw_SalesCashInREMARKS: TStringField;
    brw_SalesCashSOURCE: TStringField;
    brw_SalesJOCLIENTID: TIntegerField;
    brw_SalesJOBALAMNT: TFloatField;
    brw_CashJO: TFDQuery;
    brw_CashJOCASHAMNT: TFloatField;
    brw_CashJOCARDAMNT: TFloatField;
    brw_CashJOCHECKAMNT: TFloatField;
    brw_CashJOCHANGEAMNT: TFloatField;
    brw_CashJONETAMNT: TFloatField;
    brw_OpenCashSum: TFDQuery;
    brw_OpenCashSumAMNT: TFloatField;
    brw_CloseCashSum: TFDQuery;
    brw_CloseCashSumAMNT: TFloatField;
    tb_CashFlow: TFDMemTable;
    tb_CashFlowDEBIT: TFloatField;
    tb_CashFlowCREDIT: TFloatField;
    tb_CashFlowOPERATIONS: TStringField;
    tb_CashFlowCUSTOMER: TStringField;
    tb_CashFlowOPENNING: TFloatField;
    tb_CashFlowPOSDAY: TDateField;
    tb_CashFlowPOSDAYID: TIntegerField;
    brw_OpenCashSumPOSDAYID: TIntegerField;
    brw_CloseCashSumPOSDAYID: TIntegerField;
    brw_OpenCashSumPOSDAY: TDateField;
    brw_CloseCashSumDATE: TDateField;
    tb_CashFlowTIME: TTimeField;
    tb_CashFlowENDING: TFloatField;
    brw_MatRequest: TFDQuery;
    brw_MatRequestID: TFDAutoIncField;
    brw_MatRequestJONO: TIntegerField;
    brw_MatRequestSOURCE: TStringField;
    brw_MatRequestREQBY: TIntegerField;
    brw_MatRequestITEMID: TIntegerField;
    brw_MatRequestITEMDESC: TStringField;
    brw_MatRequestCOST: TFloatField;
    brw_MatRequestUNIT: TStringField;
    brw_MatRequestLOGDATE: TDateTimeField;
    brw_MatRequestDUEDATE: TDateField;
    brw_MatRequestNETAMNT: TFloatField;
    brw_MatRequestCLIENT: TStringField;
    brw_MatRequestQTY: TSingleField;
    brw_MatRequestSOURCECALC: TStringField;
    brw_MatRequestLASTNAME: TStringField;
    brw_MatRequestFIRSTNAME: TStringField;
    brw_MatRequestREQBYNAME: TStringField;
    brw_MatRequestREQDATETIME: TDateTimeField;
    brw_Project: TFDQuery;
    brw_ProjectID: TFDAutoIncField;
    brw_ProjectJONO: TIntegerField;
    brw_ProjectLOGDATE: TDateTimeField;
    brw_ProjectDUEDATE: TDateField;
    brw_ProjectNETAMNT: TFloatField;
    brw_ProjectPAIDAMNT: TFloatField;
    brw_ProjectBALAMNT: TFloatField;
    brw_ProjectCLIENT: TStringField;
    brw_ProjectDESCRIPTION: TStringField;
    brw_ProjectQTY: TIntegerField;
    brw_ProjectFREE: TIntegerField;
    brw_ProjectCOST: TFloatField;
    brw_ProjectUNIT: TStringField;
    brw_ProjectTOTALCOST: TFloatField;
    tb_Project: TFDMemTable;
    tb_ProjectID: TFDAutoIncField;
    tb_ProjectJONO: TIntegerField;
    tb_ProjectLOGDATE: TDateTimeField;
    tb_ProjectDUEDATE: TDateField;
    tb_ProjectNETAMNT: TFloatField;
    tb_ProjectPAIDAMNT: TFloatField;
    tb_ProjectBALAMNT: TFloatField;
    tb_ProjectCLIENT: TStringField;
    tb_ProjectDESCRIPTION: TStringField;
    tb_ProjectFREE: TIntegerField;
    tb_ProjectCOST: TFloatField;
    tb_ProjectUNIT: TStringField;
    tb_ProjectTOTALCOST: TFloatField;
    tb_ProjectGROUP: TStringField;
    brw_MatRequestBALAMNT: TFloatField;
    brw_MatRequestPAIDAMNT: TFloatField;
    tb_ProjectQTY: TFloatField;
    tb_ProjectSEQUENCE: TStringField;
    brw_MatRequestTOTALCOST: TFloatField;
    brw_ProjectFABRICID: TIntegerField;
    qry_CashInDetailREPLENISHMENT: TBooleanField;
    qry_CashRegREPLENISHMENT: TBooleanField;
    brw_SalesCashInSOURCECALC: TStringField;
    brw_SalesCashInREPLENISHMENT: TBooleanField;
    tb_ProjectTOTAL: TFloatField;
    brw_DoneOrderROLEID: TIntegerField;
    tb_PayParticularWORK: TStringField;
    brw_LogsSHIRTID: TIntegerField;
    tb_ProjectSum: TFDMemTable;
    tb_ProjectSumJONO: TIntegerField;
    tb_ProjectSumDATE: TDateField;
    tb_ProjectSumDUEDATE: TDateField;
    tb_ProjectSumCLIENT: TStringField;
    tb_ProjectSumNETAMNT: TFloatField;
    tb_ProjectSumPAIDAMNT: TFloatField;
    tb_ProjectSumBALAMNT: TFloatField;
    tb_ProjectSumMATCOST: TFloatField;
    tb_ProjectSumLABORCOST: TFloatField;
    brw_MatCostSum: TFDQuery;
    brw_MatCostSumTOTAL: TFloatField;
    brw_LaborCostSum: TFDQuery;
    brw_ProjectSHIRTID: TIntegerField;
    brw_LaborCostSumTOTAL: TFloatField;
    qry_PBREMQTY: TIntegerField;
    brw_pmboardREMQTY: TIntegerField;
    brw_PMDetailREMQTY: TIntegerField;
    brw_EmpRolesID: TFDAutoIncField;
    brw_EmpRolesTITLE: TStringField;
    qry_LogsSHIRTID: TIntegerField;
    qry_LogsFIT: TStringField;
    qry_LogsSIZE: TStringField;
    brw_EmpUSERID: TIntegerField;
    brw_PMDoneHEADERID: TIntegerField;
    tb_ProjectROLEID: TIntegerField;
    brw_NoDays: TFDQuery;
    brw_NoDaysLOGDATE: TStringField;
    qry_JoCost: TFDQuery;
    qry_JoCostID: TFDAutoIncField;
    qry_JoCostHEADERID: TIntegerField;
    qry_JoCostITEMID: TIntegerField;
    qry_JoCostITEMDESC: TStringField;
    qry_JoCostCOST: TFloatField;
    qry_JoCostQTY: TSingleField;
    qry_JoCostTOTALCOST: TFloatField;
    qry_JoCostUNIT: TStringField;
    qry_JoCostCANCELLED: TBooleanField;
    qry_JoCostCANCELLEDBYID: TIntegerField;
    qry_JoCostCANCELLEDDATETIME: TDateTimeField;
    del_JOCost: TFDQuery;
    brw_RepJOCost: TFDQuery;
    brw_RepJOCostID: TIntegerField;
    brw_RepJOCostJONO: TIntegerField;
    brw_RepJOCostITEMID: TIntegerField;
    brw_RepJOCostITEMDESC: TStringField;
    brw_RepJOCostQTY: TSingleField;
    brw_RepJOCostCOST: TFloatField;
    brw_RepJOCostUNIT: TStringField;
    brw_RepJOCostBALAMNT: TFloatField;
    brw_RepJOCostPAIDAMNT: TFloatField;
    brw_RepJOCostLOGDATE: TDateTimeField;
    brw_RepJOCostDUEDATE: TDateField;
    brw_RepJOCostNETAMNT: TFloatField;
    brw_RepJOCostCLIENT: TStringField;
    brw_RepJOCostLASTNAME: TStringField;
    brw_RepJOCostFIRSTNAME: TStringField;
    brw_RepJOCostREQNAME: TStringField;
    brw_JOCostSum: TFDQuery;
    brw_JOCostSumTOTAL: TFloatField;
    upd_Override: TFDQuery;
    upd_PMBoard: TFDQuery;
    upd_JODetail: TFDQuery;
    brw_Pending: TFDQuery;
    brw_PendingEMPNAME: TStringField;
    brw_PendingROLE: TStringField;
    brw_PendingJONO: TIntegerField;
    brw_PendingCLIENTNAME: TStringField;
    brw_PendingDUEDATE: TDateField;
    brw_PendingREMARKS: TStringField;
    brw_PendingPOSTED: TBooleanField;
    brw_PendingDESCRIPTION: TStringField;
    brw_PendingFABRIC: TStringField;
    brw_PendingQTY: TIntegerField;
    brw_PendingFREE: TIntegerField;
    brw_PendingUNIT: TStringField;
    brw_PendingJODESC: TStringField;
    brw_PendingAGE: TIntegerField;
    brw_PendingLOGDATE: TDateTimeField;
    brw_PendingSTATUS: TStringField;
    qry_Notif: TFDQuery;
    qry_NotifID: TFDAutoIncField;
    qry_NotifINTERVAL: TSingleField;
    brw_PMNotif: TFDQuery;
    brw_PMNotifEMPNAME: TStringField;
    brw_PMNotifROLE: TStringField;
    brw_PMNotifJONO: TIntegerField;
    brw_PMNotifLOGDATE: TDateTimeField;
    brw_PMNotifCLIENTNAME: TStringField;
    brw_PMNotifDUEDATE: TDateField;
    brw_PMNotifREMARKS: TStringField;
    brw_PMNotifPOSTED: TBooleanField;
    brw_PMNotifDESCRIPTION: TStringField;
    brw_PMNotifFABRIC: TStringField;
    brw_PMNotifQTY: TIntegerField;
    brw_PMNotifFREE: TIntegerField;
    brw_PMNotifUNIT: TStringField;
    qry_NotifENABLED: TBooleanField;
    qry_NotifUPDATEDBYID: TIntegerField;
    qry_NotifUPDATEDDATETIME: TDateTimeField;
    brw_ClientADDRESS: TStringField;
    brw_ClientCONTACTNO: TStringField;
    brw_ClientEMAIL: TStringField;
    tb_PaySlip: TFDMemTable;
    tb_PaySlipIDNO: TStringField;
    tb_PaySlipRATE: TFloatField;
    tb_PaySlipBASICPAY: TFloatField;
    tb_PaySlipALLOWANCES: TFloatField;
    tb_PaySlipBACKWAGE: TFloatField;
    tb_PaySlipLATE: TFloatField;
    tb_PaySlipOTHERS: TFloatField;
    tb_PaySlipSSS: TFloatField;
    tb_PaySlipPAGIBIG: TFloatField;
    tb_PaySlipPHIC: TFloatField;
    tb_PaySlipNETPAY: TFloatField;
    tb_PaySlipNODAYS: TFloatField;
    tb_PaySlipNOPIECES: TFloatField;
    tb_PaySlipEMPNAME: TStringField;
    tb_PaySlipGROSSPAY: TFloatField;
    tb_PaySlipCA: TFloatField;
    tb_PaySlipMODE: TStringField;
    tb_PaySlipHRSLATE: TFloatField;
    tb_PaySlipABSENCES: TFloatField;
    tb_PaySlipDAYSABSENT: TFloatField;
    tb_PaySlipJODATE: TDateField;
    tb_PaySlipITEM: TStringField;
    tb_PaySlipQTY: TFloatField;
    tb_PaySlipPRICE: TFloatField;
    tb_PaySlipJONO: TIntegerField;
    brw_MRJO: TFDQuery;
    brw_MRJOJONO: TIntegerField;
    brw_MRJOLOGDATE: TDateTimeField;
    brw_itemsTOTAL: TFloatField;
    brw_InvCost: TFDQuery;
    brw_InvCostBALANCE: TFloatField;
    brw_InvCostINVID: TIntegerField;
    brw_InvCostDESCRIPTION: TStringField;
    brw_InvCostCOST: TFloatField;
    brw_InvCostINVUNIT: TStringField;
    brw_InvCostCODE: TStringField;
    qry_WorkLogs: TFDQuery;
    brw_WorkLogs: TFDQuery;
    brw_WorkLogsID: TIntegerField;
    brw_WorkLogsJONO: TIntegerField;
    brw_WorkLogsWORKERID: TIntegerField;
    brw_WorkLogsWORKER: TStringField;
    brw_WorkLogsOUTPUT: TIntegerField;
    brw_WorkLogsQTY: TIntegerField;
    brw_WorkLogsCOST: TSingleField;
    brw_WorkLogsCREATEDBYID: TIntegerField;
    brw_WorkLogsCREATEDDATETIME: TDateTimeField;
    brw_WorkLogsUPDATEDBYID: TIntegerField;
    brw_WorkLogsUPDATEDDATETIME: TDateTimeField;
    brw_WorkLogsCANCELLED: TBooleanField;
    brw_WorkLogsCANCELLEDDATETIME: TDateTimeField;
    brw_WorkLogsCANCELLEDBYID: TIntegerField;
    brw_WorkLogsCLIENT: TStringField;
    brw_WorkLogsROLE: TStringField;
    brw_WorkLogsDESCRIPTION: TStringField;
    qry_WorkLogsID: TFDAutoIncField;
    qry_WorkLogsJONO: TIntegerField;
    qry_WorkLogsCLIENTID: TIntegerField;
    qry_WorkLogsCLIENT: TStringField;
    qry_WorkLogsWORKERID: TIntegerField;
    qry_WorkLogsWORKER: TStringField;
    qry_WorkLogsROLE: TStringField;
    qry_WorkLogsOUTPUT: TIntegerField;
    qry_WorkLogsQTY: TIntegerField;
    qry_WorkLogsCOST: TSingleField;
    qry_WorkLogsCREATEDBYID: TIntegerField;
    qry_WorkLogsCREATEDDATETIME: TDateTimeField;
    qry_WorkLogsUPDATEDBYID: TIntegerField;
    qry_WorkLogsUPDATEDDATETIME: TDateTimeField;
    qry_WorkLogsCANCELLED: TBooleanField;
    qry_WorkLogsCANCELLEDDATETIME: TDateTimeField;
    qry_WorkLogsCANCELLEDBYID: TIntegerField;
    brw_WorkLogsCALC_DATE: TStringField;
    qry_WorkLogsROLEID: TStringField;
    brw_WorkLogsCLIENTID: TIntegerField;
    brw_WorkLogsROLEID: TStringField;
    brw_GarmentsARTISTSHARE: TFloatField;
    brw_GarmentsPRINTOPSHARE: TFloatField;
    brw_GarmentsHEATPRESSSHARE: TFloatField;
    brw_GarmentsCUTTERSHARE: TFloatField;
    brw_GarmentsTAILORSHARE: TFloatField;
    qry_CashOutDetailPAYDATEFROM: TDateField;
    qry_CashOutDetailPAYDATETO: TDateField;
    qry_CashOutDetailGROSS: TSingleField;
    qry_CashOutDetailCASHADVANCES: TSingleField;
    brw_ComputePay: TFDQuery;
    brw_ComputePayAMNT: TFloatField;
    brw_ComputePayWORKER: TStringField;
    qry_GarCosting: TFDQuery;
    qry_GarCostingID: TFDAutoIncField;
    qry_GarCostingHEADERID: TIntegerField;
    qry_GarCostingITEMID: TIntegerField;
    qry_GarCostingUNIT: TStringField;
    qry_GarCostingQTY: TSingleField;
    qry_GarCostingCOST: TSingleField;
    qry_GarCostingTOTAL: TSingleField;
    qry_GarCostingCANCELLED: TBooleanField;
    qry_GarCostingCANCELLEDBYID: TIntegerField;
    qry_GarCostingCANCELLEDDATETIME: TDateTimeField;
    brw_GarCosting: TFDQuery;
    brw_GarCostingID: TFDAutoIncField;
    brw_GarCostingHEADERID: TIntegerField;
    brw_GarCostingITEMID: TIntegerField;
    brw_GarCostingUNIT: TStringField;
    brw_GarCostingQTY: TSingleField;
    brw_GarCostingCOST: TSingleField;
    brw_GarCostingTOTAL: TSingleField;
    brw_GarCostingCANCELLED: TBooleanField;
    brw_GarCostingCANCELLEDBYID: TIntegerField;
    brw_GarCostingCANCELLEDDATETIME: TDateTimeField;
    del_GarCost: TFDQuery;
    tb_JOClone: TFDMemTable;
    tb_JOCloneSHIRTID: TIntegerField;
    tb_JOCloneDESCRIPTION: TStringField;
    tb_JOCloneFABRICID: TIntegerField;
    tb_JOCloneFABRIC: TStringField;
    tb_JOCloneQTY: TIntegerField;
    tb_JOCloneFREE: TIntegerField;
    tb_JOCloneCOST: TFloatField;
    tb_JOCloneUNIT: TStringField;
    tb_JOCloneTOTALCOST: TFloatField;
    tb_JOCloneREMARKS: TStringField;
    tb_JOCloneID: TIntegerField;
    tb_JOCloneLAYOUT: TStringField;
    tb_JOCloneFILENAME: TStringField;
    tb_InvReqDetailGARMENTID: TIntegerField;
    qry_GarCostingITEMDESC: TStringField;
    brw_GarCostingITEMDESC: TStringField;
    qry_JoCostGARMENTID: TIntegerField;
    brw_AR: TFDQuery;
    brw_ARNAME: TStringField;
    brw_ARNETAMNT: TFloatField;
    brw_ARPAID: TFloatField;
    brw_ARBALANCE: TFloatField;
    tb_ARAging: TFDMemTable;
    tb_ARAgingCLIENT: TStringField;
    tb_ARAgingTOTAL: TCurrencyField;
    tb_ARAgingBALANCE: TCurrencyField;
    tb_ARAgingCURRENT: TCurrencyField;
    tb_ARAgingField30DAYS: TCurrencyField;
    tb_ARAgingField60DAYS: TCurrencyField;
    tb_ARAgingField90DAYS: TCurrencyField;
    tb_ARAgingField120DAYS: TCurrencyField;
    tb_ARAgingField121DAYS: TCurrencyField;
    tb_ARAgingPAID: TCurrencyField;
    brw_Outstanding: TFDQuery;
    brw_OutstandingNETAMNT: TFloatField;
    brw_OutstandingCASHAMNT: TFloatField;
    brw_OutstandingCARDAMNT: TFloatField;
    brw_OutstandingCHECKAMNT: TFloatField;
    brw_OutstandingCHANGEAMNT: TFloatField;
    brw_WorkLogsTOTAL: TCurrencyField;
    brw_Salaries: TFDQuery;
    brw_SalariesID: TFDAutoIncField;
    brw_SalariesHEADERID: TIntegerField;
    brw_SalariesCATEGORY: TStringField;
    brw_SalariesCATEGORYID: TIntegerField;
    brw_SalariesPAYREFID: TIntegerField;
    brw_SalariesPAYDATEFROM: TDateField;
    brw_SalariesPAYDATETO: TDateField;
    brw_SalariesEMPID: TIntegerField;
    brw_SalariesPAYEE: TStringField;
    brw_SalariesREMARKS: TStringField;
    brw_SalariesGROSS: TSingleField;
    brw_SalariesCASHADVANCES: TSingleField;
    brw_SalariesAMOUNT: TSingleField;
    brw_SalariesREFDATE: TDateField;
    brw_SalariesCREATEDBY: TIntegerField;
    brw_SalariesCREATEDDATETIME: TDateTimeField;
    brw_SalariesCANCELLED: TBooleanField;
    brw_SalariesCANCELLEDBYID: TIntegerField;
    brw_SalariesCANCELLEDDATETIME: TDateTimeField;
    brw_SalariesEXPENSETYPE: TIntegerField;
    tb_CashFlowID: TIntegerField;
    tb_Payroll: TFDMemTable;
    tb_PayrollEMPLOYEE: TStringField;
    tb_PayrollGROSS: TFloatField;
    tb_PayrollCASHADV: TFloatField;
    tb_PayrollNETAMNT: TFloatField;
    brw_ComputePayWORKERID: TIntegerField;
    tb_PayrollWORKERID: TIntegerField;
    tb_PayrollLOGDATE: TDateField;
    tb_PayrollDESCRIPTION: TStringField;
    tb_PayrollJONO: TIntegerField;
    tb_PayrollROLE: TStringField;
    tb_PayrollQTY: TFloatField;
    tb_PayrollCOST: TFloatField;
    tb_PayrollTOTAL: TFloatField;
    tb_PayrollCLIENT: TStringField;
    qry_CashOutDetailCASHADVBALANCE: TSingleField;
    qry_CashOutDetailCASHADVCREDIT: TSingleField;
    qry_CashOutDetailCASHADVACTUAL: TSingleField;
    brw_CompExpenseACTUAL: TFloatField;
    brw_CompExpenseCASHADV: TFloatField;
    brw_ForwardedBal: TFDQuery;
    brw_ForwardedBalID: TFDAutoIncField;
    brw_ForwardedBalHEADERID: TIntegerField;
    brw_ForwardedBalCATEGORY: TStringField;
    brw_ForwardedBalCATEGORYID: TIntegerField;
    brw_ForwardedBalPAYREFID: TIntegerField;
    brw_ForwardedBalEMPID: TIntegerField;
    brw_ForwardedBalPAYEE: TStringField;
    brw_ForwardedBalREMARKS: TStringField;
    brw_ForwardedBalAMOUNT: TSingleField;
    brw_ForwardedBalREFDATE: TDateField;
    brw_ForwardedBalCREATEDBY: TIntegerField;
    brw_ForwardedBalCREATEDDATETIME: TDateTimeField;
    brw_ForwardedBalCANCELLED: TBooleanField;
    brw_ForwardedBalCANCELLEDBYID: TIntegerField;
    brw_ForwardedBalCANCELLEDDATETIME: TDateTimeField;
    brw_ForwardedBalPAYDATEFROM: TDateField;
    brw_ForwardedBalPAYDATETO: TDateField;
    brw_ForwardedBalGROSS: TSingleField;
    brw_ForwardedBalCASHADVANCES: TSingleField;
    brw_ForwardedBalCASHADVCREDIT: TSingleField;
    brw_ForwardedBalCASHADVBALANCE: TSingleField;
    brw_ForwardedBalCASHADVACTUAL: TSingleField;
    brw_ForwardedBalCALC_CASHADV: TFloatField;
    brw_SalariesCASHADVCREDIT: TSingleField;
    brw_SalariesCASHADVBALANCE: TSingleField;
    brw_SalariesCASHADVACTUAL: TSingleField;
    del_CashoutDetail: TFDQuery;
    del_CashInDetail: TFDQuery;
    brw_Layout: TFDQuery;
    tb_LayoutDetail: TFDMemTable;
    tb_LayoutDetailID: TIntegerField;
    tb_LayoutDetailDESCRIPTION: TStringField;
    tb_LayoutDetailHEADERID: TIntegerField;
    tb_LayoutDetailFABRICID: TIntegerField;
    tb_LayoutDetailREMARKS: TStringField;
    qry_Layout: TFDQuery;
    qry_LayoutID: TFDAutoIncField;
    qry_LayoutCLIENTID: TIntegerField;
    qry_LayoutPARTICULARS: TStringField;
    qry_LayoutNOTES: TStringField;
    qry_LayoutCREATEDBYID: TIntegerField;
    qry_LayoutCREATEDDATETIME: TDateTimeField;
    qry_LayoutUPDATEDBYID: TIntegerField;
    qry_LayoutCANCELLED: TBooleanField;
    qry_LayoutCANCELLEDBYID: TIntegerField;
    qry_LayoutCANCELLEDDATETIME: TDateTimeField;
    qry_LayoutDetail: TFDQuery;
    qry_LayoutDetailID: TFDAutoIncField;
    qry_LayoutDetailHEADERID: TIntegerField;
    qry_LayoutDetailITEMID: TIntegerField;
    qry_LayoutDetailDESCRIPTION: TStringField;
    qry_LayoutDetailFABRICID: TIntegerField;
    qry_LayoutDetailREMARKS: TStringField;
    qry_LayoutDetailCANCELLED: TBooleanField;
    qry_LayoutDetailCANCELLEDBYID: TIntegerField;
    qry_LayoutDetailCANCELLEDDATETIME: TDateTimeField;
    tb_LayoutDetailITEMID: TIntegerField;
    tb_LayoutDetailFABRIC: TStringField;
    qry_LayoutDetailFABRIC: TStringField;
    upd_lo: TFDQuery;
    del_LoDetails: TFDQuery;
    qry_LayoutUPDATEDDATETIME: TDateTimeField;
    brw_LayoutID: TFDAutoIncField;
    brw_LayoutCLIENTID: TIntegerField;
    brw_LayoutPARTICULARS: TStringField;
    brw_LayoutNOTES: TStringField;
    brw_LayoutCREATEDBYID: TIntegerField;
    brw_LayoutCREATEDDATETIME: TDateTimeField;
    brw_LayoutUPDATEDBYID: TIntegerField;
    brw_LayoutUPDATEDDATETIME: TDateTimeField;
    brw_LayoutCANCELLED: TBooleanField;
    brw_LayoutCANCELLEDBYID: TIntegerField;
    brw_LayoutCANCELLEDDATETIME: TDateTimeField;
    brw_LayoutCLIENT: TStringField;
    brw_RFQ: TFDQuery;
    brw_RFQID: TFDAutoIncField;
    brw_RFQCLIENT: TStringField;
    brw_RFQCONTACTNO: TStringField;
    brw_RFQEMAIL: TStringField;
    brw_RFQADDRESS: TStringField;
    brw_RFQREMARKS: TStringField;
    brw_RFQCREATEDBYID: TIntegerField;
    brw_RFQCREATEDDATETIME: TDateTimeField;
    brw_RFQUPDATEDBYID: TIntegerField;
    brw_RFQUPDATEDDATETIME: TDateTimeField;
    brw_RFQCANCELLED: TBooleanField;
    brw_RFQCANCELLEDBYID: TIntegerField;
    brw_RFQCANCELLEDDATETIME: TDateTimeField;
    brw_RFQSUMMARY: TStringField;
    brw_RFQTOTAL: TSingleField;
    qry_RFQ: TFDQuery;
    qry_RFQID: TFDAutoIncField;
    qry_RFQCLIENT: TStringField;
    qry_RFQCONTACTNO: TStringField;
    qry_RFQEMAIL: TStringField;
    qry_RFQADDRESS: TStringField;
    qry_RFQREMARKS: TStringField;
    qry_RFQTOTAL: TSingleField;
    qry_RFQSUMMARY: TStringField;
    qry_RFQCREATEDBYID: TIntegerField;
    qry_RFQCREATEDDATETIME: TDateTimeField;
    qry_RFQUPDATEDBYID: TIntegerField;
    qry_RFQUPDATEDDATETIME: TDateTimeField;
    qry_RFQCANCELLED: TBooleanField;
    qry_RFQCANCELLEDBYID: TIntegerField;
    qry_RFQCANCELLEDDATETIME: TDateTimeField;
    qry_RFQDetail: TFDQuery;
    qry_RFQDetailID: TFDAutoIncField;
    qry_RFQDetailHEADERID: TIntegerField;
    qry_RFQDetailITEMID: TIntegerField;
    qry_RFQDetailDESCRIPTION: TStringField;
    qry_RFQDetailFABRICID: TIntegerField;
    qry_RFQDetailFABRIC: TStringField;
    qry_RFQDetailUNIT: TStringField;
    qry_RFQDetailQTY: TSingleField;
    qry_RFQDetailCOST: TSingleField;
    qry_RFQDetailTOTAL: TSingleField;
    qry_RFQDetailREMARKS: TStringField;
    qry_RFQDetailCANCELLED: TBooleanField;
    qry_RFQDetailCANCELLEDBYID: TIntegerField;
    qry_RFQDetailCANCELLEDDATETIME: TDateTimeField;
    tb_RFQDetail: TFDMemTable;
    tb_RFQDetailITEMID: TIntegerField;
    tb_RFQDetailDESCRIPTION: TStringField;
    tb_RFQDetailFABRICID: TIntegerField;
    tb_RFQDetailFABRIC: TStringField;
    tb_RFQDetailUNIT: TStringField;
    tb_RFQDetailQTY: TSingleField;
    tb_RFQDetailCOST: TSingleField;
    tb_RFQDetailREMARKS: TStringField;
    tb_RFQDetailTOTAL: TFloatField;
    upd_RFQ: TFDQuery;
    del_RFQDetail: TFDQuery;
    tb_RFQDetailID: TIntegerField;
    brw_JOSTATUS: TStringField;
    qry_JOSTATUS: TStringField;
    qry_WorkLogsREMARKS: TStringField;
    qry_WorkLogsCONTRACTOUT: TBooleanField;
    brw_WorkLogsREMARKS: TStringField;
    brw_WorkLogsCONTRACTOUT: TBooleanField;
    brw_EmpAccnts: TFDQuery;
    brw_EmpAccntsID: TFDAutoIncField;
    brw_EmpAccntsEMPID: TIntegerField;
    brw_EmpAccntsBALANCE: TSingleField;
    brw_EmpAccntsEFFECTIVITYDATE: TDateField;
    brw_EmpAccntsCANCELLED: TBooleanField;
    brw_EmpAccntsCREATEDBYID: TIntegerField;
    brw_EmpAccntsCREATEDDATETIME: TDateTimeField;
    brw_EmpAccntsUPDATEDBYID: TIntegerField;
    brw_EmpAccntsUPDATEDDATETIME: TDateTimeField;
    qry_EmpAccnts: TFDQuery;
    qry_EmpAccntsID: TFDAutoIncField;
    qry_EmpAccntsEMPID: TIntegerField;
    qry_EmpAccntsBALANCE: TSingleField;
    qry_EmpAccntsEFFECTIVITYDATE: TDateField;
    qry_EmpAccntsFORWARDED: TBooleanField;
    qry_EmpAccntsCANCELLED: TBooleanField;
    qry_EmpAccntsCREATEDBYID: TIntegerField;
    qry_EmpAccntsCREATEDDATETIME: TDateTimeField;
    qry_EmpAccntsUPDATEDBYID: TIntegerField;
    qry_EmpAccntsUPDATEDDATETIME: TDateTimeField;
    brw_EmpAccntsFORWARDED: TBooleanField;
    brw_EmpAccntsREMARKS: TStringField;
    qry_EmpAccntsREMARKS: TStringField;
    qry_EmpAccntsCANCELLEDBYD: TIntegerField;
    qry_EmpAccntsCANCELLEDDATETIME: TDateTimeField;
    brw_ComputeAccts: TFDQuery;
    brw_ComputeAcctsAMOUNT: TFloatField;
    upd_CurrentAcct: TFDQuery;
    qry_CashOutDetailLIABILITY: TSingleField;
    brw_CompExpenseLIABILITY: TFloatField;
    brw_EmpAccntsDATEFORWARDED: TDateTimeField;
    tb_PayrollTITLE: TStringField;
    tb_PayrollGRANDTOTAL: TFloatField;
    procedure tb_JODetailCalcFields(DataSet: TDataSet);
    procedure brw_pmboardCalcFields(DataSet: TDataSet);
    procedure brw_EmpCalcFields(DataSet: TDataSet);
    procedure tb_LogCalcFields(DataSet: TDataSet);
    procedure brw_LogsCalcFields(DataSet: TDataSet);
    procedure qry_LogsCalcFields(DataSet: TDataSet);
    procedure brw_PMDoneCalcFields(DataSet: TDataSet);
    procedure tb_OPDetailCalcFields(DataSet: TDataSet);
    procedure brw_MRCalcFields(DataSet: TDataSet);
    procedure tb_MRDetailsCalcFields(DataSet: TDataSet);
    procedure qry_MRCalcFields(DataSet: TDataSet);
    procedure brw_Emp1CalcFields(DataSet: TDataSet);
    procedure brw_UsersCalcFields(DataSet: TDataSet);
    procedure qry_inventoryCalcFields(DataSet: TDataSet);
    procedure brw_InvDetailCalcFields(DataSet: TDataSet);
    procedure qry_ItemsCalcFields(DataSet: TDataSet);
    procedure brw_itemsCalcFields(DataSet: TDataSet);
    procedure tb_CashDetailCalcFields(DataSet: TDataSet);
    procedure qry_CashRegCalcFields(DataSet: TDataSet);
    procedure brw_CashRegCalcFields(DataSet: TDataSet);
    procedure tb_PODetailCalcFields(DataSet: TDataSet);
    procedure tb_RRDetailCalcFields(DataSet: TDataSet);
    procedure tb_PaymentDetailCalcFields(DataSet: TDataSet);
    procedure tb_PettyDetailCalcFields(DataSet: TDataSet);
    procedure tb_PayDetailCalcFields(DataSet: TDataSet);
    procedure tb_PayParticularCalcFields(DataSet: TDataSet);
    procedure tb_CashFundCalcFields(DataSet: TDataSet);
    procedure tb_CashDrawerCalcFields(DataSet: TDataSet);
    procedure brw_POSDayCalcFields(DataSet: TDataSet);
    procedure qry_POSDay1CalcFields(DataSet: TDataSet);
    procedure brw_PolicyCalcFields(DataSet: TDataSet);
    procedure brw_InvReqCalcFields(DataSet: TDataSet);
    procedure tb_InvReqDetailCalcFields(DataSet: TDataSet);
    procedure qry_InvRequestCalcFields(DataSet: TDataSet);
    procedure brw_CashSumCalcFields(DataSet: TDataSet);
    procedure brw_CPRReportCalcFields(DataSet: TDataSet);
    procedure brw_IRReportCalcFields(DataSet: TDataSet);
    procedure brw_PayrollEmpCalcFields(DataSet: TDataSet);
    procedure brw_MatRequestCalcFields(DataSet: TDataSet);
    procedure brw_SalesCashInCalcFields(DataSet: TDataSet);
    procedure brw_RepJOCostCalcFields(DataSet: TDataSet);
    procedure brw_PendingCalcFields(DataSet: TDataSet);
    procedure tb_PaySlipCalcFields(DataSet: TDataSet);
    procedure brw_WorkLogsCalcFields(DataSet: TDataSet);
    procedure tb_PayrollCalcFields(DataSet: TDataSet);
    procedure brw_ForwardedBalCalcFields(DataSet: TDataSet);
    procedure tb_RFQDetailCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    isSetDate: Boolean;
    isOpenDay: Boolean;
    user: string;
    admin: Boolean;
    empid: Integer;
    userid: Integer;
    roleid: Integer;
    map: string;
  end;

var
  dm_PM: Tdm_PM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure Tdm_PM.brw_CashRegCalcFields(DataSet: TDataSet);
begin
  brw_CashRegPAIDAMNT.Value := (brw_CashRegCASHAMNT.Value + brw_CashRegCHECKAMNT.Value + brw_CashRegCARDAMNT.Value) - brw_CashRegCHANGEAMNT.Value;

  if brw_CashRegPAYMENTTYPE.Value = 'D' then
  brw_CashRegPAYTPE.Value := 'DEPOSIT'
  else
  brw_CashRegPAYTPE.Value := 'FULL PAYMENT';

  if brw_CashRegCANCELLED.Value then
  brw_CashRegVOID.Value := 'Y'
  else
  brw_CashRegVOID.Value := 'N';
end;

procedure Tdm_PM.brw_CashSumCalcFields(DataSet: TDataSet);
begin
  if (brw_CashSumSOURCE.Value = 'OUT')  or (brw_CashSumSOURCE.Value = 'DISBURSE') then
  begin
    brw_CashSumNETCALC.Value    := brw_CashSumNETAMNT.Value * -1;
    brw_CashSumCASHCALC.Value   := brw_CashSumCASHAMNT.Value * -1;
    brw_CashSumCARDCALC.Value   := brw_CashSumCARDAMNT.Value * -1;
    brw_CashSumCHECKCALC.Value  := brw_CashSumCHECKAMNT.Value * -1;
    brw_CashSumPAIDAMNT.Value   := ((brw_CashSumCASHAMNT.Value + brw_CashSumCHECKAMNT.Value + brw_CashSumCARDAMNT.Value) - brw_CashSumCHANGEAMNT.Value) * -1;
  end
  else
  begin
    brw_CashSumNETCALC.Value    := brw_CashSumNETAMNT.Value;
    brw_CashSumCASHCALC.Value   := brw_CashSumCASHAMNT.Value;
    brw_CashSumCARDCALC.Value   := brw_CashSumCARDAMNT.Value;
    brw_CashSumCHECKCALC.Value  := brw_CashSumCHECKAMNT.Value;
    brw_CashSumPAIDAMNT.Value   := ((brw_CashSumCASHAMNT.Value + brw_CashSumCHECKAMNT.Value + brw_CashSumCARDAMNT.Value) - brw_CashSumCHANGEAMNT.Value);
  end;

  if brw_CashSumSOURCE.Value = 'OUT' then
  brw_CashSumSOURCECALC.Value := brw_CashSumEXPENSETYPE.Value
  else
  brw_CashSumSOURCECALC.Value := brw_CashSumSOURCE.Value;

  if brw_CashSumPAYMENTTYPE.Value = 'D' then
  brw_CashSumPAYTPE.Value := 'DEPOSIT'
  else
  brw_CashSumPAYTPE.Value := 'FULL PAYMENT';

  if brw_CashSumCANCELLED.Value then
  brw_CashSumVOID.Value := 'Y'
  else
  brw_CashSumVOID.Value := 'N';
end;

procedure Tdm_PM.brw_CPRReportCalcFields(DataSet: TDataSet);
begin
  brw_CPRReportREQBY.Value  := brw_CPRReportLASTNAME.AsString +', '+brw_CPRReportFIRSTNAME.AsString + ' '+brw_CPRReportMIDDLENAME.AsString;
end;

procedure Tdm_PM.brw_Emp1CalcFields(DataSet: TDataSet);
begin
  brw_Emp1EMPNAME.Value  := brw_Emp1LASTNAME.AsString + ', '+brw_Emp1FIRSTNAME.AsString + ' '+brw_Emp1MIDDLENAME.AsString;
end;

procedure Tdm_PM.brw_EmpCalcFields(DataSet: TDataSet);
begin
  brw_EmpEMPNAME.Value  := brw_EmpLASTNAME.AsString + ', '+brw_EmpFIRSTNAME.AsString + ' '+brw_EmpMIDDLENAME.AsString;
end;

procedure Tdm_PM.brw_ForwardedBalCalcFields(DataSet: TDataSet);
begin
  if brw_ForwardedBalCASHADVANCES.Value > 0    then
  brw_ForwardedBalCALC_CASHADV.Value    :=  brw_ForwardedBalCASHADVANCES.Value
  else
  brw_ForwardedBalCALC_CASHADV.Value    :=  0
end;

procedure Tdm_PM.brw_InvDetailCalcFields(DataSet: TDataSet);
begin
  if brw_InvDetailSOURCE.Value = 'BI' then
  brw_InvDetailSOURCECALC.Value := 'BEGINNING INVENTORY'
  else if brw_InvDetailSOURCE.Value = 'IA' then
  brw_InvDetailSOURCECALC.Value := 'INVENTORY ADJUSTMENT'
  else if brw_InvDetailSOURCE.Value = 'IR' then
  brw_InvDetailSOURCECALC.Value := 'PURCHASES'
  else if brw_InvDetailSOURCE.Value = 'CASH' then
  brw_InvDetailSOURCECALC.Value := 'CASH'
  else if brw_InvDetailSOURCE.Value = 'REQ' then
  brw_InvDetailSOURCECALC.Value := 'MATERIAL CONSUMPTION';

  brw_InvDetailDATETIMECALC.Value   := FormatDateTime('mm/dd/yyyy hh:nn AM/PM', brw_InvDetailCREATEDDATETIME.Value);
  brw_InvDetailCREATEDBYCALC.Value  := brw_InvDetailLASTNAME.AsString + ', '+brw_InvDetailFIRSTNAME.AsString + ' '+brw_InvDetailMIDDLENAME.AsString;

  if brw_InvDetailQTY.Value > -1 then
  brw_InvDetailIN.Value   := brw_InvDetailQTY.Value
  else
  brw_InvDetailOUT.Value  := Abs(brw_InvDetailQTY.Value);
end;

procedure Tdm_PM.brw_InvReqCalcFields(DataSet: TDataSet);
begin
 brw_InvReqEMPNAME.Value := brw_InvReqLASTNAME.AsString + ', '+brw_InvReqFIRSTNAME.AsString + ' '+brw_InvReqMIDDLENAME.AsString;
end;

procedure Tdm_PM.brw_IRReportCalcFields(DataSet: TDataSet);
begin
  brw_IRReportRCVDBY.AsString := brw_IRReportLASTNAME.AsString + ', '+brw_IRReportFIRSTNAME.AsString + ' '+brw_IRReportMIDDLENAME.AsString;
end;

procedure Tdm_PM.brw_itemsCalcFields(DataSet: TDataSet);
begin
  if brw_itemsMARKUP.Value then
    brw_itemsPRICE.Value :=  (brw_itemsCOST.Value * (brw_itemsMARKUPPERCENT.Value / 100)) +brw_itemsCOST.Value
  else
    brw_itemsPRICE.Value  := brw_itemsSELLINGPRICE.Value;

  brw_itemsTOTAL.Value  := brw_itemsONHAND.Value * brw_itemsCOST.Value;
end;

procedure Tdm_PM.brw_LogsCalcFields(DataSet: TDataSet);
begin
  brw_LogsREMAINING.Value :=  brw_LogsTOTALQTY.Value - (brw_LogsDONE.Value + brw_LogsQTY.Value);
  brw_LogsEMPNAME.Value   := brw_LogsLASTNAME.AsString + ', '+ brw_LogsFIRSTNAME.AsString + ' '+brw_LogsMIDDLENAME.AsString;
end;

procedure Tdm_PM.brw_MatRequestCalcFields(DataSet: TDataSet);
begin
  if brw_MatRequestSOURCE.Value = 'D' then
  brw_MatRequestSOURCECALC.Value := 'LAYOUT/DESIGN'
  else if brw_MatRequestSOURCE.Value = 'P' then
  brw_MatRequestSOURCECALC.Value := 'PRINTING'
  else if brw_MatRequestSOURCE.Value = 'F' then
  brw_MatRequestSOURCECALC.Value := 'FIRST CUTTING'
  else if brw_MatRequestSOURCE.Value = 'H' then
  brw_MatRequestSOURCECALC.Value := 'HEAT PRESSS'
  else if brw_MatRequestSOURCE.Value = 'L' then
  brw_MatRequestSOURCECALC.Value := 'FINAL CUTTING'
  else if brw_MatRequestSOURCE.Value = 'S' then
  brw_MatRequestSOURCECALC.Value := 'SEWING'
  else if brw_MatRequestSOURCE.Value = 'O' then
  brw_MatRequestSOURCECALC.Value := 'OTHERS'
  else if brw_MatRequestSOURCE.Value = 'J' then
  brw_MatRequestSOURCECALC.Value := 'JOB ORDER';

  brw_MatRequestREQBYNAME.Value := brw_MatRequestLASTNAME.AsString + ', '+brw_MatRequestFIRSTNAME.AsString;
end;

procedure Tdm_PM.brw_MRCalcFields(DataSet: TDataSet);
begin
  brw_MREMPNAME.Value := brw_MRLASTNAME.AsString + ', '+brw_MRFIRSTNAME.AsString + ' '+brw_MRMIDDLENAME.AsString;
end;

procedure Tdm_PM.brw_PayrollEmpCalcFields(DataSet: TDataSet);
begin
  brw_PayrollEmpEMPNAME.Value  := brw_PayrollEmpLASTNAME.AsString + ', '+brw_PayrollEmpFIRSTNAME.AsString + ' '+brw_PayrollEmpMIDDLENAME.AsString;
end;

procedure Tdm_PM.brw_PendingCalcFields(DataSet: TDataSet);
begin
  brw_PendingJODESC.Value := brw_PendingJONO.AsString + ' - '+brw_PendingCLIENTNAME.AsString;
  if DaysBetween(brw_PendingLOGDATE.Value, EndOfTheDay(Now)) = 0 then
  brw_PendingAGE.Value       := 1
  else
  brw_PendingAGE.Value       := DaysBetween(brw_PendingLOGDATE.Value, EndOfTheDay(Now));

  if brw_PendingAGE.Value > 3 then
  brw_PendingSTATUS.Value   := 'OFF TRACK'
  else if brw_PendingAGE.Value = 3 then
  brw_PendingSTATUS.Value   := 'AT RISK'
  else
  brw_PendingSTATUS.Value   := 'ON TRACK';
end;

procedure Tdm_PM.brw_pmboardCalcFields(DataSet: TDataSet);
begin
  brw_pmboardEMPNAME.Value  := brw_pmboardLASTNAME.AsString + ', '+brw_pmboardFIRSTNAME.AsString + ' '+brw_pmboardMIDDLENAME.AsString;
  brw_pmboardTOTALQTY.Value := brw_pmboardQTY.Value + brw_pmboardFREE.Value;
  brw_pmboardJODESC.Value   := brw_pmboardJONO.AsString + ' - '+brw_pmboardLOGDATE.AsString;
  if not brw_pmboardEXPORTEDDATETIME.IsNull then
  brw_pmboardSTREXPORTEDDATETIME.Value  := FormatDateTime('mm/dd/yyyy', brw_pmboardEXPORTEDDATETIME.Value);

  if DaysBetween(brw_pmboardLOGDATE.Value, EndOfTheDay(Now)) = 0 then
  brw_pmboardAGE.Value       := 1
  else
  brw_pmboardAGE.Value       := DaysBetween(brw_pmboardLOGDATE.Value, EndOfTheDay(Now));

  if (StrToDate(FormatDateTime('mm/dd/yyyy', Now)) >= brw_pmboardDATEDUE.Value) and (not brw_pmboardDONE.Value) then
  brw_pmboardSTATUS.Value   := 'OFF TRACK'
  else if (DaysBetween(brw_pmboardDATEDUE.Value, StrToDate(FormatDateTime('mm/dd/yyyy', Now))) <=3) and (not brw_pmboardDONE.Value) then
  brw_pmboardSTATUS.Value   := 'AT RISK'
  else
  brw_pmboardSTATUS.Value   := 'ON TRACK';

end;

procedure Tdm_PM.brw_PMDoneCalcFields(DataSet: TDataSet);
begin
  if brw_Emp.Locate('ID', brw_PMDoneEMPID.Value, []) then
  brw_PMDoneEMPNAME.Value   := brw_EmpEMPNAME.AsString;

  brw_PMDoneTOTALQTY.Value  := brw_PMDoneQTY.Value + brw_PMDoneFREE.Value;
  brw_PMDoneJODESC.Value    := brw_PMDoneJONO.AsString + ' - '+brw_PMDoneLOGDATE.AsString;
  if not brw_PMDoneEXPORTEDDATETIME.IsNull then
  brw_PMDoneSTREXPORTEDDATETIME.Value  := FormatDateTime('mm/dd/yyyy', brw_PMDoneEXPORTEDDATETIME.Value);

  if DaysBetween(brw_PMDoneLOGDATE.Value, EndOfTheDay(brw_PMDoneFINISHEDDATE.Value)) = 0 then
  brw_PMDoneAGE.Value       := 1
  else
  brw_PMDoneAGE.Value       := DaysBetween(brw_PMDoneLOGDATE.Value, EndOfTheDay(brw_PMDoneFINISHEDDATE.Value));

  if (StrToDate(FormatDateTime('mm/dd/yyyy', brw_PMDoneFINISHEDDATE.Value)) >= brw_PMDoneDATEDUE.Value) then
  brw_PMDoneSTATUS.Value   := 'OFF TRACK'
  else if (DaysBetween(brw_PMDoneDATEDUE.Value, StrToDate(FormatDateTime('mm/dd/yyyy', brw_PMDoneFINISHEDDATE.Value))) <=3) then
  brw_PMDoneSTATUS.Value   := 'AT RISK'
  else
  brw_PMDoneSTATUS.Value   := 'ON TRACK';
end;

procedure Tdm_PM.brw_PolicyCalcFields(DataSet: TDataSet);
begin
  brw_Rights.Close;
  brw_Rights.SQL[4] := 'WHERE SYS_USERRIGHTS.POLICYID = :ID AND SYS_USERRIGHTS.SELECT = TRUE AND EMP_ROLE.CANCELLED = FALSE';
  brw_Rights.ParamByName('ID').Value  := brw_PolicyID.Value;
  brw_Rights.Open();

  brw_Rights.First;
  while not brw_Rights.Eof do
  begin
    if brw_Rights.RecordCount <>  brw_Rights.RecNo then
    brw_PolicySECURITY.Value  := brw_PolicySECURITY.AsString + brw_RightsTITLE.AsString +', '
    else
    brw_PolicySECURITY.Value  := brw_PolicySECURITY.AsString + brw_RightsTITLE.AsString;
    brw_Rights.Next;
  end;
end;

procedure Tdm_PM.brw_POSDayCalcFields(DataSet: TDataSet);
begin
  brw_POSDayOPENED_CASHIER.Value  := brw_POSDayLASTNAME.AsString + ', '+brw_POSDayFIRSTNAME.AsString +' '+brw_POSDayMIDDLENAME.AsString;
  brw_POSDayCLOSED_CASHIER.Value  := brw_POSDayLASTNAME_1.AsString + ', '+brw_POSDayFIRSTNAME_1.AsString +' '+brw_POSDayMIDDLENAME_1.AsString;
end;

procedure Tdm_PM.brw_RepJOCostCalcFields(DataSet: TDataSet);
begin
  brw_RepJOCostREQNAME.Value := brw_RepJOCostLASTNAME.AsString + ', '+brw_RepJOCostFIRSTNAME.Value;
end;

procedure Tdm_PM.brw_SalesCashInCalcFields(DataSet: TDataSet);
begin
  if brw_SalesCashInREPLENISHMENT.Value then
  brw_SalesCashInSOURCECALC.Value := 'REPLENISHMENT'
  else
  brw_SalesCashInSOURCECALC.Value := 'CASH-IN';
end;

procedure Tdm_PM.brw_UsersCalcFields(DataSet: TDataSet);
begin
  brw_UsersFULLNAME.Value := brw_UsersLASTNAME.AsString + ', '+brw_UsersFIRSTNAME.AsString + ' '+brw_UsersMIDDLENAME.AsString;
end;

procedure Tdm_PM.brw_WorkLogsCalcFields(DataSet: TDataSet);
begin
  brw_WorkLogsCALC_DATE.Value := FormatDateTime('mm/dd/yyyy hh:nn AM/PM', brw_WorkLogsCREATEDDATETIME.Value);
  brw_WorkLogsTOTAL.Value     := brw_WorkLogsQTY.Value * brw_WorkLogsCOST.Value;
end;

procedure Tdm_PM.qry_CashRegCalcFields(DataSet: TDataSet);
begin
  if qry_CashRegSOURCE.Value = 'OUT' then
  qry_CashRegTOTALAMNT.Value    := qry_CashRegNETAMNT.Value
  else
  qry_CashRegTOTALAMNT.Value  :=  qry_CashRegCASHAMNT.Value + qry_CashRegCARDAMNT.Value + qry_CashRegCHECKAMNT.Value;
end;

procedure Tdm_PM.qry_inventoryCalcFields(DataSet: TDataSet);
begin
  qry_inventoryADJCCALC.Value := qry_inventoryNEWONHAND.Value - qry_inventoryONHAND.Value;
end;

procedure Tdm_PM.qry_InvRequestCalcFields(DataSet: TDataSet);
begin
  if qry_InvRequestSOURCE.Value = 'D' then
  qry_InvRequestSOURCEDESC.Value := 'LAYOUT/DESIGN'
  else if qry_InvRequestSOURCE.Value = 'F' then
  qry_InvRequestSOURCEDESC.Value := 'FIRST CUTTING'
  else if qry_InvRequestSOURCE.Value = 'H' then
  qry_InvRequestSOURCEDESC.Value := 'HEAT PRESS'
  else if qry_InvRequestSOURCE.Value = 'L' then
  qry_InvRequestSOURCEDESC.Value := 'LAST CUTTING'
  else if qry_InvRequestSOURCE.Value = 'S' then
  qry_InvRequestSOURCEDESC.Value := 'SEWING'
  else if qry_InvRequestSOURCE.Value = 'P' then
  qry_InvRequestSOURCEDESC.Value := 'PRINTING'
  else if qry_InvRequestSOURCE.Value = 'O' then
  qry_InvRequestSOURCEDESC.Value := 'OTHERS';
end;

procedure Tdm_PM.qry_ItemsCalcFields(DataSet: TDataSet);
begin
  if qry_ItemsMARKUP.Value then
    qry_ItemsPRICE.Value :=  (qry_ItemsCOST.Value * (qry_ItemsMARKUPPERCENT.Value / 100)) +qry_ItemsCOST.Value
  else
  qry_ItemsPRICE.Value  := qry_ItemsSELLINGPRICE.Value;
end;

procedure Tdm_PM.qry_LogsCalcFields(DataSet: TDataSet);
begin
  qry_LogsREMAINING.Value := qry_LogsTOTALQTY.Value - (qry_LogsDONE.Value + qry_LogsQTY.Value);
end;

procedure Tdm_PM.qry_MRCalcFields(DataSet: TDataSet);
begin
  if qry_MRSOURCE.Value = 'D' then
  qry_MRSOURCEDESEC.Value := 'LAYOUT/DESIGN'
  else if qry_MRSOURCE.Value = 'F' then
  qry_MRSOURCEDESEC.Value := 'FIRST CUTTING'
  else if qry_MRSOURCE.Value = 'H' then
  qry_MRSOURCEDESEC.Value := 'HEAT PRESS'
  else if qry_MRSOURCE.Value = 'L' then
  qry_MRSOURCEDESEC.Value := 'LAST CUTTING'
  else if qry_MRSOURCE.Value = 'S' then
  qry_MRSOURCEDESEC.Value := 'SEWING'
  else if qry_MRSOURCE.Value = 'P' then
  qry_MRSOURCEDESEC.Value := 'PRINTING'
  else if qry_MRSOURCE.Value = 'O' then
  qry_MRSOURCEDESEC.Value := 'OTHERS';
end;

procedure Tdm_PM.qry_POSDay1CalcFields(DataSet: TDataSet);
begin
  qry_POSDay1CASHIER.Value  := qry_POSDay1LASTNAME.AsString + ', '+qry_POSDay1FIRSTNAME.AsString +' '+qry_POSDay1MIDDLENAME.AsString;
end;

procedure Tdm_PM.tb_CashDetailCalcFields(DataSet: TDataSet);
begin
  tb_CashDetailITEMDESC.Value   := tb_CashDetailDESCRIPTION.AsString +' ('+tb_CashDetailUNIT.AsString+')';
  tb_CashDetailAMOUNT.Value     := tb_CashDetailQTY.Value * tb_CashDetailPRICE.Value;
end;

procedure Tdm_PM.tb_CashFundCalcFields(DataSet: TDataSet);
begin
  tb_CashFundAMNT.Value := tb_CashFundQTY.Value * tb_CashFundCASH.Value;
end;

procedure Tdm_PM.tb_InvReqDetailCalcFields(DataSet: TDataSet);
begin
  tb_InvReqDetailTOTALCOST.Value := tb_InvReqDetailQTY.Value * tb_InvReqDetailCOST.Value;
end;

procedure Tdm_PM.tb_CashDrawerCalcFields(DataSet: TDataSet);
begin
  tb_CASHDrawerAMNT.Value := tb_CashDrawerQTY.Value * tb_CashDrawerCASH.Value;
  tb_CASHDrawerAMNT1.Value := tb_CashDrawerQTY1.Value * tb_CashDrawerCASH1.Value;
end;

procedure Tdm_PM.tb_JODetailCalcFields(DataSet: TDataSet);
begin
  tb_JODetailTOTALCOST.Value  := tb_JODetailQTY.Value * tb_JODetailCOST.Value;
end;

procedure Tdm_PM.tb_LogCalcFields(DataSet: TDataSet);
begin
  tb_LogREMAINING.Value := tb_LogTOTALQTY.Value - (tb_LogDONE.Value + tb_LogQTY.Value);
end;

procedure Tdm_PM.tb_MRDetailsCalcFields(DataSet: TDataSet);
begin
  tb_MRDetailsTOTALCOST.Value := tb_MRDetailsQTY.Value * tb_MRDetailsCOST.Value;
end;

procedure Tdm_PM.tb_OPDetailCalcFields(DataSet: TDataSet);
begin
  tb_OPDetailTOTALQTY.Value := tb_OPDetailQTY.Value + tb_OPDetailFREE.Value;
end;

procedure Tdm_PM.tb_PayDetailCalcFields(DataSet: TDataSet);
begin
  if tb_PayDetailMODE.Value = 'F' then
  tb_PayDetailBASICPAY.Value  := tb_PayDetailRATE.Value
  else if tb_PayDetailMODE.Value = 'D' then
  tb_PayDetailBASICPAY.Value  := tb_PayDetailNODAYS.Value * tb_PayDetailRATE.Value
  else if tb_PayDetailMODE.Value = 'P' then
  tb_PayDetailBASICPAY.Value  := tb_PayDetailRATE.Value;

  tb_PayDetailLATE.Value      := tb_PayDetailHRSLATE.Value * (((tb_PayDetailBASICPAY.Value/tb_PayDetailNODAYS.Value)/8)/60);

  tb_PayDetailABSENCES.Value  := tb_PayDetailDAYSABSENT.Value * (tb_PayDetailBASICPAY.Value/tb_PayDetailNODAYS.Value);
  tb_PayDetailGROSSPAY.Value  := (tb_PayDetailBASICPAY.Value + tb_PayDetailALLOWANCES.Value + tb_PayDetailBACKWAGE.Value);
  tb_PayDetailNETPAY.Value    := (tb_PayDetailBASICPAY.Value + tb_PayDetailALLOWANCES.Value + tb_PayDetailBACKWAGE.Value) - (tb_PayDetailLATE.Value + tb_PayDetailABSENCES.Value + tb_PayDetailCA.Value + tb_PayDetailSSS.Value + tb_PayDetailPAGIBIG.Value + tb_PayDetailPHIC.Value + tb_PayDetailOTHERS.Value);
  tb_PayDetailBALAMNT.Value   := tb_PayDetailNETPAY.Value - tb_PayDetailPAIDAMNT.Value;
end;

procedure Tdm_PM.tb_PaymentDetailCalcFields(DataSet: TDataSet);
begin
  tb_PaymentDetailBALANCE.Value   := (tb_PaymentDetailAMOUNT.Value - tb_PaymentDetailPAIDAMNT.Value) - tb_PaymentDetailNETAMOUNT.Value;
  tb_PaymentDetailFP.Value        := tb_PaymentDetailBALANCE.Value <=0;
end;

procedure Tdm_PM.tb_PayParticularCalcFields(DataSet: TDataSet);
begin
  tb_PayParticularAMNT.Value  := tb_PayParticularQTY.Value * tb_PayParticularPRICE.Value;
end;

procedure Tdm_PM.tb_PayrollCalcFields(DataSet: TDataSet);
begin
  tb_PayrollNETAMNT.Value := tb_PayrollGROSS.Value - tb_PayrollCASHADV.Value;
  tb_PayrollTOTAL.Value   := tb_PayrollQTY.Value * tb_PayrollCOST.Value;
end;

procedure Tdm_PM.tb_PaySlipCalcFields(DataSet: TDataSet);
begin
  if tb_PaySlipMODE.Value = 'F' then
  tb_PaySlipBASICPAY.Value  := tb_PaySlipRATE.Value
  else if tb_PaySlipMODE.Value = 'D' then
  tb_PaySlipBASICPAY.Value  := tb_PaySlipNODAYS.Value * tb_PaySlipRATE.Value
  else if tb_PaySlipMODE.Value = 'P' then
  tb_PaySlipBASICPAY.Value  := tb_PaySlipRATE.Value;

  tb_PaySlipLATE.Value      := tb_PaySlipHRSLATE.Value * (((tb_PaySlipBASICPAY.Value/tb_PaySlipNODAYS.Value)/8)/60);
  tb_PaySlipABSENCES.Value  := tb_PaySlipDAYSABSENT.Value * (tb_PaySlipBASICPAY.Value/tb_PaySlipNODAYS.Value);
  tb_PaySlipGROSSPAY.Value  := (tb_PaySlipBASICPAY.Value + tb_PaySlipALLOWANCES.Value + tb_PaySlipBACKWAGE.Value);
  tb_PaySlipNETPAY.Value    := (tb_PaySlipBASICPAY.Value + tb_PaySlipALLOWANCES.Value + tb_PaySlipBACKWAGE.Value) - (tb_PaySlipLATE.Value + tb_PaySlipABSENCES.Value + tb_PaySlipCA.Value + tb_PaySlipSSS.Value + tb_PaySlipPAGIBIG.Value + tb_PaySlipPHIC.Value + tb_PaySlipOTHERS.Value);
end;

procedure Tdm_PM.tb_PettyDetailCalcFields(DataSet: TDataSet);
begin
  tb_PettyDetailBALANCE.Value   := (tb_PettyDetailAMOUNT.Value - tb_PettyDetailPAIDAMNT.Value) - tb_PettyDetailNETAMNT.Value;
  tb_PettyDetailFP.Value        := tb_PettyDetailBALANCE.Value <=0;
end;

procedure Tdm_PM.tb_PODetailCalcFields(DataSet: TDataSet);
begin
  tb_PODetailAMOUNT.Value := tb_PODetailQTY.Value * tb_PODetailCOST.Value;
end;

procedure Tdm_PM.tb_RFQDetailCalcFields(DataSet: TDataSet);
begin
  tb_RFQDetailTOTAL.Value := tb_RFQDetailQTY.Value * tb_RFQDetailCOST.Value;
end;

procedure Tdm_PM.tb_RRDetailCalcFields(DataSet: TDataSet);
begin
  tb_RRDetailAMOUNT.Value := tb_RRDetailQTY.Value * tb_RRDetailCOST.Value;
end;

end.
