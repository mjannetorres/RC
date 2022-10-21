unit fJO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, Vcl.ComCtrls, Vcl.DBCtrls, cxContainer, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit, cxLabel, cxDBLabel,
  scControls, scGPFontControls, cxDBLookupComboBox, System.Actions, Vcl.ActnList,
  cxCurrencyEdit, Vcl.Mask, sDBEdit, scDBControls, cxMemo, cxLookupEdit,
  cxDBLookupEdit, Vcl.Menus, cxCheckBox, frxClass, scGPPagers;

type
  Tf_JO = class(TForm)
    btnSave: TButton;
    btnCancel: TButton;
    Panel1: TPanel;
    Panel3: TPanel;
    Label3: TLabel;
    Label1: TLabel;
    ds_JO: TDataSource;
    Label4: TLabel;
    Label5: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBDateEdit2: TcxDBDateEdit;
    cxDBDateEdit3: TcxDBDateEdit;
    Label6: TLabel;
    cxDBLabel1: TcxDBLabel;
    btnAdd: TscGPCharGlyphButton;
    ds_Client: TDataSource;
    ds_JODetail: TDataSource;
    ds_garment: TDataSource;
    ds_farbric: TDataSource;
    ActionList1: TActionList;
    Cancel: TAction;
    cxStyleRepository1: TcxStyleRepository;
    Header_style: TcxStyle;
    Label2: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    cxDBLabel2: TcxDBLabel;
    cxDBLabel4: TcxDBLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    ComputeAmnt: TAction;
    cxDBMemo1: TcxDBMemo;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    chk_posted: TcxDBCheckBox;
    btnPrint: TButton;
    Print: TAction;
    frxReport1: TfrxReport;
    Delete: TAction;
    PopupMenu1: TPopupMenu;
    Delete1: TMenuItem;
    scGPPageControl1: TscGPPageControl;
    scGPPageControlPage1: TscGPPageControlPage;
    scGPPageControlPage2: TscGPPageControlPage;
    grid_jodetail: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1SHIRTID: TcxGridDBColumn;
    cxGridDBTableView1FABRICID: TcxGridDBColumn;
    cxGridDBTableView1QTY: TcxGridDBColumn;
    cxGridDBTableView1FREE: TcxGridDBColumn;
    cxGridDBTableView1UNIT: TcxGridDBColumn;
    cxGridDBTableView1COST: TcxGridDBColumn;
    cxGridDBTableView1TOTALCOST: TcxGridDBColumn;
    cxGridDBTableView1REMARKS: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    ds_Emp: TDataSource;
    cxGridDBTableView2ROLEID: TcxGridDBColumn;
    cxGridDBTableView2EMPID: TcxGridDBColumn;
    ds_roles: TDataSource;
    ds_workers: TDataSource;
    scGPPageControlPage3: TscGPPageControlPage;
    ds_items: TDataSource;
    ds_details: TDataSource;
    cxGrid2: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBTableView1ITEMID: TcxGridDBColumn;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    ActionList2: TActionList;
    PopupMenu2: TPopupMenu;
    MenuItem1: TMenuItem;
    DeleteCost: TAction;
    procedure chk_postedClick(Sender: TObject);
    procedure cxGridDBTableView1SHIRTIDPropertiesCloseUp(Sender: TObject);
    procedure CancelExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure ComputeAmntExecute(Sender: TObject);
    procedure cxDBTextEdit1PropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure btnAddClick(Sender: TObject);
    procedure cxDBDateEdit2PropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure PrintExecute(Sender: TObject);
    procedure cxGridDBTableView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DeleteExecute(Sender: TObject);
    procedure cxGridDBTableView2EMPIDPropertiesCloseUp(Sender: TObject);
    procedure cxGridDBTableView1ITEMIDPropertiesCloseUp(Sender: TObject);
    procedure cxGridDBColumn1PropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure DeleteCostExecute(Sender: TObject);
    procedure cxGrid2Exit(Sender: TObject);
  private
    { Private declarations }
    posted: Boolean;
    procedure readonly(flag: Boolean);
    function manageui: Boolean;
  public
    { Public declarations }
  end;

var
  f_JO: Tf_JO;

implementation

{$R *.dfm}

uses dmPM, DateUtils, fPMBoard, fJOClient, fReports;

procedure Tf_JO.btnAddClick(Sender: TObject);
begin
  with dm_PM do
  begin
    qry_Client.Close;
    qry_Client.SQL[2] := 'WHERE ID = 0';
    qry_Client.Open();

    qry_Client.Append;
    qry_ClientCANCELLED.Value       := False;
    qry_ClientCREATEDBYID.Value     := userid;
    qry_ClientCREATEDDATETIME.Value := Now;

    f_JOClient  := Tf_JOClient.Create(Self);

    if f_JOClient.ShowModal = mrOk then
    begin
      qry_ClientNAME.Value    := Trim(f_JOClient.ComboBoxSearch.Text);
      qry_Client.Post;
      qry_Client.ApplyUpdates();

      brw_Client.Close;
      brw_Client.SQL[2] := 'WHERE CANCELLED = FALSE';
      brw_Client.Open();

      qry_JOCLIENTID.Value    := qry_ClientID.Value;
    end;
    manageui;
  end;
end;

procedure Tf_JO.CancelExecute(Sender: TObject);
begin
  Close;
end;

procedure Tf_JO.chk_postedClick(Sender: TObject);
var emp_done : Boolean;
begin

  if chk_posted.Checked then
  begin
    if manageui then
    dm_PM.qry_JOPOSTEDDATETIME.Value  := Now
    else
    begin
      dm_PM.qry_JOPOSTEDDATETIME.Clear;
      dm_PM.qry_JOPOSTED.Value  := False;
      chk_posted.Checked        := False;
    end;

    dm_PM.tb_JOEmp.First;
    if dm_PM.tb_JOEmp.Locate('EMPID', null, [])  or dm_PM.tb_JOEmp.Locate('EMPID', 0, []) then
    emp_done := False
    else
    emp_done := True;

    if dm_PM.tb_JODetail.RecordCount = 0 then
    MessageDlg('Details cannot be empty!', mtError, [mbOK], 0)
    else if dm_PM.qry_JOCLIENTID.IsNull then
    MessageDlg('Client cannot be empty!', mtError, [mbOK], 0)
    else if dm_PM.qry_JODUEDATE.IsNull then
    MessageDlg('Due Date cannot be empty!', mtError, [mbOK], 0)
    else if dm_PM.qry_JOLOGDATE.IsNull then
    MessageDlg('Log Date cannot be empty', mtError, [mbOK], 0)
    else if (not emp_done) then
    MessageDlg('Incomplete Worker''s assigned!', mtError, [mbOK], 0);
  end
  else
    dm_PM.qry_JOPOSTEDDATETIME.Clear;
end;

procedure Tf_JO.ComputeAmntExecute(Sender: TObject);
var
  AValue: Variant;
begin
  dm_PM.tb_JODetail.Append;
  dm_PM.tb_JODetail.Delete;

  if (dm_PM.qry_JO.State = dsInsert) or (dm_PM.qry_JO.State = dsEdit) then
  begin
    if not dm_PM.qry_JOPOSTED.Value then
    begin
      AValue := cxGridDBTableView1.DataController.Summary.FooterSummaryValues[3];
      if AValue <> Null then
        dm_PM.qry_JOGROSSAMNT.Value   :=  StrToFloat(VarToStr(AValue))
      else
        dm_PM.qry_JOGROSSAMNT.Value   :=  0;
      dm_PM.qry_JONETAMNT.Value       :=  dm_PM.qry_JOGROSSAMNT.Value - dm_PM.qry_JODISCOUNT.Value;
    end;
  end;

  if not dm_PM.qry_JOOVERRIDE.Value then
  begin
    posted  := dm_PM.qry_JOPOSTED.Value;
    readonly(dm_PM.qry_JOPOSTED.Value);
    if not (dm_PM.qry_JOPOSTED.Value) then
    manageui;
  end
  else
  begin
    posted  := True;
    readonly(False);
  end;

end;

procedure Tf_JO.cxDBDateEdit2PropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  if StartOfTheDay(VarToDateTime(DisplayValue)) < StartOfTheDay(dm_PM.qry_JOLOGDATE.Value) then
  begin
    MessageDlg('Due date must be greater than JO Date!', mtError, [mbOK], 0);
    DisplayValue  := '';
    dm_PM.qry_JODUEDATE.Clear;
  end;
end;

procedure Tf_JO.cxDBTextEdit1PropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  if DisplayValue > dm_PM.qry_JOGROSSAMNT.Value then
  begin
    MessageDlg('Gross amount must be greater than discount. Please validate.', mtWarning, [mbOK], 0);
    DisplayValue  := 0;
  end;
end;

procedure Tf_JO.cxGrid2Exit(Sender: TObject);
begin
  dm_PM.tb_InvReqDetail.Append;
  dm_PM.tb_InvReqDetail.Delete;
end;

procedure Tf_JO.cxGridDBColumn1PropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  if DisplayValue < 0 then
  begin
    DisplayValue := 0;
    MessageDlg('Invalid qty!', mtError, [mbOK], 0);
  end;
end;

procedure Tf_JO.cxGridDBTableView1ITEMIDPropertiesCloseUp(Sender: TObject);
  var itemid: Integer;
begin
  with dm_PM do
  begin
    itemid  := tb_InvReqDetailITEMID.Value;

    tb_InvReqDetail.DisableControls;
    tb_InvReqDetail.Filtered := False;
    tb_InvReqDetail.Filter   := 'ITEMID = '+IntToStr(itemid);
    tb_InvReqDetail.Filtered := True;

    if tb_InvReqDetail.RecordCount > 1 then
    begin
      tb_InvReqDetail.Last;
      tb_InvReqDetail.Delete;
      MessageDlg('Item already on the list!', mtInformation, [mbOK], 0);
      tb_InvReqDetail.Filtered := False;
      tb_InvReqDetail.EnableControls;
      Exit;
    end
    else
    begin
      tb_InvReqDetail.Filtered := False;
      tb_InvReqDetail.EnableControls;
    end;

    brw_items.DisableControls;
    if brw_items.Locate('ID', tb_InvReqDetailITEMID.Value) then
    begin
      tb_InvReqDetail.Edit;
      tb_InvReqDetailITEMDESC.Value  := brw_itemsDESCRIPTION.AsString;
      tb_InvReqDetailUNIT.Value      := brw_itemsINVUNIT.Value;
      tb_InvReqDetailCOST.Value      := brw_itemsCOST.Value;
      tb_InvReqDetailOLDQTY.Value    := brw_itemsONHAND.Value;
      tb_InvReqDetail.Post;
    end;
    brw_items.EnableControls;
  end;
end;

procedure Tf_JO.cxGridDBTableView1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_DOWN then
  ComputeAmntExecute(nil);
end;

procedure Tf_JO.cxGridDBTableView1SHIRTIDPropertiesCloseUp(Sender: TObject);
begin
  with dm_PM do
  begin
    if brw_GarmentDesc.Locate('ID', tb_JODetailSHIRTID.Value, []) then
    begin
      tb_JODetail.Edit;
      tb_JODetailDESCRIPTION.Value:= brw_GarmentDescDESCRIPTION.AsString;
      tb_JODetailFABRICID.Value   := brw_GarmentDescFABRICID.Value;
      tb_JODetailFABRIC.Value     := brw_GarmentDescFABRIC.Value;
      tb_JODetailUNIT.Value       := brw_GarmentDescUNIT.AsString;
      tb_JODetailCOST.Value       := brw_GarmentDescPRICE.Value;
      tb_JODetailQTY.Value        := 0;
      tb_JODetailFREE.Value       := 0;
      tb_JODetail.Post;
    end;

  end;
end;

procedure Tf_JO.cxGridDBTableView2EMPIDPropertiesCloseUp(Sender: TObject);
var jo_roleid : Integer;
begin
  with dm_PM do
  begin
    if tb_JOEmpROLEID.IsNull then
    jo_roleid  := 0
    else
    jo_roleid  := tb_JOEmpROLEID.Value;

    brw_EmpRoles.DisableControls;
    brw_EmpRoles.Locate('ID', jo_roleid, []);
    brw_EmpRoles.EnableControls;

    brw_Emp.DisableControls;
    if brw_Emp.Locate('ID', tb_JOEmpEMPID.Value, []) then
    begin
      tb_JOEmp.Edit;
      tb_JOEmpROLE.Value      := brw_EmpRolesTITLE.AsString;
      tb_JOEmpEMPNAME.Value   := brw_EmpEMPNAME.AsString;
      tb_JOEmp.Post;
    end;
    brw_Emp.EnableControls;
  end;
end;

procedure Tf_JO.DeleteCostExecute(Sender: TObject);
begin
  with dm_PM do
  begin
     if not tb_InvReqDetailID.IsNull then
     begin
       qry_JoCost.Close;
       qry_JoCost.SQL[2]  := 'WHERE ID = :ID';
       qry_JoCost.ParamByName('ID').Value := tb_InvReqDetailID.Value;
       qry_JoCost.Open();

       if qry_JoCost.RecordCount > 0 then
       begin
         qry_JoCost.Edit;
         qry_JoCostCANCELLED.Value          := True;
         qry_JoCostCANCELLEDBYID.Value      := userid;
         qry_JoCostCANCELLEDDATETIME.Value  := Now;
         qry_JoCost.Post;
         qry_JoCost.ApplyUpdates();
       end;
     end;
     tb_InvReqDetail.Delete;
     ComputeAmntExecute(nil);
  end;
end;


procedure Tf_JO.DeleteExecute(Sender: TObject);
begin
 with dm_PM do
 begin
   if not tb_JODetailID.IsNull then
   begin
     qry_JODetail.Close;
     qry_JODetail.SQL[2]  := 'WHERE ID = :ID';
     qry_JODetail.ParamByName('ID').Value := tb_JODetailID.Value;
     qry_JODetail.Open();

     if qry_JODetail.RecordCount > 0 then
     begin
       qry_JODetail.Edit;
       qry_JODetailCANCELLED.Value        := True;
       qry_JODetailDELETEDBYID.Value      := userid;
       qry_JODetailDELETEDDATETIME.Value  := Now;
       qry_JODetail.Post;
       qry_JODetail.ApplyUpdates();
     end;
   end;
   tb_JODetail.Delete;
   ComputeAmntExecute(nil);
 end;
end;

procedure Tf_JO.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  with dm_PM do
  begin
    upd_Override.Close;
    upd_Override.SQL[2] := 'WHERE ID = '+qry_JOID.AsString;
    upd_Override.ExecSQL;

  end;

  Action  := caFree;
end;

procedure Tf_JO.FormShow(Sender: TObject);
begin
  with dm_PM do
  begin
    brw_Client.Close;
    brw_Client.SQL[2] := 'WHERE CANCELLED = FALSE';
    brw_Client.Open();

    brw_Garments.Close;
    brw_Garments.SQL[2] := 'WHERE CANCELLED = FALSE';
    brw_Garments.Open();

    brw_items.Close;
    brw_items.SQL[2]  := 'WHERE CANCELLED = FALSE';
    brw_items.Open();

    brw_GarmentDesc.Close;
    brw_GarmentDesc.SQL[3]  := 'WHERE GAR.CANCELLED = FALSE';
    brw_GarmentDesc.Open();

    brw_Fabrics.Close;
    brw_Fabrics.SQL[2]  := 'WHERE CANCELLED = FALSE';
    brw_Fabrics.Open();

    brw_Unit.Close;
    brw_Unit.SQL[2]     := 'WHERE CANCELLED = FALSE';
    brw_Unit.Open();

    brw_EmpRoles.Close;
    brw_EmpRoles.SQL[2] := 'WHERE (ID >= 1 AND ID <= 5) AND CANCELLED = FALSE';
    brw_EmpRoles.Open();

    scGPPageControl1.ActivePage := scGPPageControlPage1;
    if not qry_JOOVERRIDE.Value then
    begin
      posted  := qry_JOPOSTED.Value;
      readonly(qry_JOPOSTED.Value);
      if not (qry_JOPOSTED.Value) then
      manageui;
    end
    else
    begin
      posted  := True;
      readonly(False);
    end;
  end;
end;

function Tf_JO.manageui: Boolean;
var emp_done: Boolean;
begin
  with dm_PM do
  begin
    cxDBLookupComboBox1.Style.BorderColor := $00121212;
    if qry_JOCLIENTID.IsNull then
    cxDBLookupComboBox1.Style.BorderColor := clRed;

    cxDBDateEdit1.Style.BorderColor     := $00121212;
    if qry_JOLOGDATE.IsNull then
    cxDBDateEdit1.Style.BorderColor     := clRed;

    cxDBDateEdit2.Style.BorderColor     := $00121212;
    if qry_JODUEDATE.IsNull then
    cxDBDateEdit2.Style.BorderColor     := clRed;

    tb_JOEmp.First;
    if tb_JOEmp.Locate('EMPID', null, [])  or tb_JOEmp.Locate('EMPID', 0, []) or tb_JOEmp.Locate('ROLEID', 0, []) or tb_JOEmp.Locate('ROLEID', null, []) then
    emp_done := False
    else
    emp_done := True;

    if (qry_JOCLIENTID.IsNull) or (qry_JOLOGDATE.IsNull) or (qry_JODUEDATE.IsNull) or (tb_JODetail.RecordCount = 0) or (tb_InvReqDetail.RecordCount = 0) or (not emp_done) then
    btnSave.Enabled := False
    else
    btnSave.Enabled := True;

    Result  := btnSave.Enabled;
  end;
end;

procedure Tf_JO.PrintExecute(Sender: TObject);
begin
  with dm_PM do
  begin
    if qry_JOCLIENTID.Value > 0 then
    begin
      qry_Client.Close;
      qry_Client.SQL[2] := 'WHERE ID = :ID';
      qry_Client.ParamByName('ID').Value  := qry_JOCLIENTID.Value;
      qry_Client.Open();

      brw_Emp1.Close;
      brw_Emp1.SQL[2] := 'WHERE USERID = :ID';
      brw_Emp1.ParamByName('ID').Value  := qry_JOCREATEDBYID.Value;
      brw_Emp1.Open();

      qry_company.Close;
      qry_company.SQL[2]  := 'WHERE ID = 1';
      qry_company.Open();

      f_Reports := Tf_Reports.Create(Self);

      TfrxMemoView(f_Reports.rep_JO.FindObject('MEMO5')).Text := 'JOB ORDER NO. '+qry_JOJONO.AsString;
      TfrxMemoView(f_Reports.rep_JO.FindObject('MEMO45')).Text := FormatDateTime('mm/dd/yyyy', qry_JOPOSTEDDATETIME.Value);
      f_Reports.rep_JO.ShowReport();
      qry_JO.Edit;
    end;
  end;
end;

procedure Tf_JO.readonly(flag: Boolean);
begin
  with dm_PM do
  begin
    cxDBLookupComboBox1.Properties.ReadOnly    := (flag or qry_JOLAYOUT.Value);
    cxDBMemo1.Properties.ReadOnly              := (flag or qry_JOLAYOUT.Value);
    cxDBDateEdit1.Properties.ReadOnly          := (flag or qry_JOLAYOUT.Value);
    cxDBDateEdit2.Properties.ReadOnly          := (flag or qry_JOLAYOUT.Value);
    cxGridDBTableView1SHIRTID.Options.Editing  := (not flag and not (qry_JOLAYOUT.Value));
    cxGridDBTableView1QTY.Options.Editing      := (not flag and not (qry_JOLAYOUT.Value));
    cxGridDBTableView1FREE.Options.Editing     := (not flag and not (qry_JOLAYOUT.Value));
    cxGridDBTableView1COST.Options.Editing     := (not flag and not (qry_JOLAYOUT.Value));
    cxGridDBTableView1QTY.Options.Editing      := (not flag and not (qry_JOLAYOUT.Value));
    cxGridDBTableView1REMARKS.Options.Editing  := (not flag and not (qry_JOLAYOUT.Value));
    cxGridDBTableView2EMPID.Options.Editing    := (not flag and not (qry_JOLAYOUT.Value));
    cxGridDBTableView2ROLEID.Options.Editing   := (not flag and not (qry_JOLAYOUT.Value));
    //cxGridDBTableView1ITEMID.Options.Editing   := (not flag and not (qry_JOLAYOUT.Value));
    //cxGridDBColumn1.Options.Editing            := (not flag and not (qry_JOLAYOUT.Value));
    //cxGridDBColumn3.Options.Editing            := (not flag and not (qry_JOLAYOUT.Value));

    cxDBTextEdit1.Properties.ReadOnly          := (flag or qry_JOLAYOUT.Value);
    Delete1.Visible                            := ((not flag) and not (qry_JOLAYOUT.Value));
//    MenuItem1.Visible                          := ((not flag) and not (qry_JOLAYOUT.Value));

    if posted then
    btnSave.Enabled       := (not flag and not (qry_JOLAYOUT.Value))
    else
    btnSave.Enabled       := True;


    if qry_JO.State = dsInsert then
    begin
      chk_posted.Properties.ReadOnly  := True;
      btnPrint.Visible                := False;
    end
    else
    begin
      chk_posted.Properties.ReadOnly  := True;
      btnPrint.Visible                := True;
    end;
    btnAdd.Enabled  := (not flag and not (qry_JOLAYOUT.Value));
  end;
end;

end.