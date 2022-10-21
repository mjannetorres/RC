unit fRequestTemp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinXmas2008Blue, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxDBLookupComboBox,
  cxTextEdit, Vcl.Menus, frxClass, cxClasses, System.Actions, Vcl.ActnList,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridCustomView, cxGrid, cxImageComboBox, cxDBEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxCheckBox, cxMemo, cxLabel, cxDBLabel,
  cxMaskEdit, cxCalendar, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  Tf_RequestTemp = class(TForm)
    Panel2: TPanel;
    btnSave: TButton;
    btnCancel: TButton;
    btnPrint: TButton;
    Panel3: TPanel;
    Label1: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    date_date: TcxDBDateEdit;
    date_posted: TcxDBDateEdit;
    cxDBLabel1: TcxDBLabel;
    txt_notes: TcxDBMemo;
    chk_posted: TcxDBCheckBox;
    cmb_jo: TcxDBLookupComboBox;
    rad_source: TcxDBImageComboBox;
    grid_jodetail: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1ITEMID: TcxGridDBColumn;
    cxGridDBTableView1OLDQTY: TcxGridDBColumn;
    cxGridDBTableView1QTY: TcxGridDBColumn;
    cxGridDBTableView1UNIT: TcxGridDBColumn;
    cxGridDBTableView1COST: TcxGridDBColumn;
    cxGridDBTableView1TOTALCOST: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    ds_Req: TDataSource;
    ActionList1: TActionList;
    UI: TAction;
    Print: TAction;
    Delete: TAction;
    cxStyleRepository1: TcxStyleRepository;
    Header_style: TcxStyle;
    frxReport1: TfrxReport;
    ds_details: TDataSource;
    ds_items: TDataSource;
    ds_JO: TDataSource;
    PopupMenu1: TPopupMenu;
    Delete1: TMenuItem;
    procedure UIExecute(Sender: TObject);
    procedure PrintExecute(Sender: TObject);
    procedure DeleteExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure rad_sourceExit(Sender: TObject);
    procedure chk_postedClick(Sender: TObject);
    procedure cxGridDBTableView1ITEMIDPropertiesCloseUp(Sender: TObject);
    procedure cxGridDBTableView1QTYPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure grid_jodetailExit(Sender: TObject);
  private
    { Private declarations }
    posted: Boolean;
    procedure refresh_items;
    procedure generate_jo;
    procedure readonly(flag: Boolean);
    function manageui: Boolean;
  public
    { Public declarations }
  end;

var
  f_RequestTemp: Tf_RequestTemp;

implementation

{$R *.dfm}

uses dmPM, fReports;

procedure Tf_RequestTemp.chk_postedClick(Sender: TObject);
begin
  if chk_posted.Checked then
  begin
    if manageui then
    dm_PM.qry_InvRequestPOSTEDDATETIME.Value  := Now
    else
    begin
      dm_PM.qry_InvRequestPOSTEDDATETIME.Clear;
      dm_PM.qry_InvRequestPOSTED.Value  := False;
      chk_posted.Checked        := False;
    end;

    if dm_PM.tb_InvReqDetail.RecordCount = 0 then
    MessageDlg('Details cannot be empty!', mtError, [mbOK], 0)
    else if dm_PM.qry_InvRequestREQDATETIME.IsNull then
    MessageDlg('Date cannot be empty!', mtError, [mbOK], 0)
    else if dm_PM.qry_InvRequestSOURCE.Value <> 'O' then
    begin
      if dm_PM.qry_InvRequestJONO.IsNull then
      MessageDlg('JO No. cannot be empty!', mtError, [mbOK], 0);
    end;
  end
  else
    dm_PM.qry_InvRequestPOSTEDDATETIME.Clear;
end;

procedure Tf_RequestTemp.cxGridDBTableView1ITEMIDPropertiesCloseUp(
  Sender: TObject);
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

procedure Tf_RequestTemp.cxGridDBTableView1QTYPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  if DisplayValue < 0 then
  begin
    DisplayValue := 0;
    MessageDlg('Invalid qty!', mtError, [mbOK], 0);
  end
  else if DisplayValue > dm_PM.tb_InvReqDetailOLDQTY.Value then
  begin
    DisplayValue  := 0;
    MessageDlg('Cannot consume material greater than onhand!', mtError, [mbOK], 0);
  end;
end;

procedure Tf_RequestTemp.DeleteExecute(Sender: TObject);
begin
  with dm_PM do
  begin
     if not tb_InvReqDetailID.IsNull then
     begin
       qry_InvReqDetail.Close;
       qry_InvReqDetail.SQL[2]  := 'WHERE ID = :ID';
       qry_InvReqDetail.ParamByName('ID').Value := tb_InvReqDetailID.Value;
       qry_InvReqDetail.Open();

       if qry_InvReqDetail.RecordCount > 0 then
       begin
         qry_InvReqDetail.Edit;
         qry_InvReqDetailCANCELLED.Value          := True;
         qry_InvReqDetailCANCELLEDBYID.Value      := userid;
         qry_InvReqDetailCANCELLEDDATETIME.Value  := Now;
         qry_InvReqDetail.Post;
         qry_InvReqDetail.ApplyUpdates();
       end;
     end;
     tb_InvReqDetail.Delete;
     UIExecute(nil);
  end;
end;

procedure Tf_RequestTemp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (manageui) then
  Action  := caFree
  else
  begin
    if (dm_PM.qry_InvRequest.State = dsEdit) then
    begin
      refresh_items;
      Action  := caNone;
    end
    else
      Action  := caFree;
  end;
end;

procedure Tf_RequestTemp.FormShow(Sender: TObject);
begin
  with dm_PM do
  begin
    refresh_items;
    generate_jo;

    rad_source.SetFocus;
    posted  := qry_InvRequestPOSTED.Value;

    readonly(qry_InvRequestPOSTED.Value);
    if not qry_InvRequestPOSTED.Value then
    manageui;
  end;
end;

procedure Tf_RequestTemp.generate_jo;
var req_roleid : Integer;
begin
  with dm_PM do
  begin
    if qry_InvRequestSOURCE.Value <> 'O' then
    begin
//      brw_PMHeader.Close;
//      if qry_InvRequestSOURCE.Value = 'D' then
//      req_roleid  := 1
//      else if qry_InvRequestSOURCE.Value = 'P' then
//      req_roleid  := 2
//      else if (qry_InvRequestSOURCE.Value = 'F') or (qry_InvRequestSOURCE.Value = 'L') then
//      req_roleid  := 3
//      else if qry_InvRequestSOURCE.Value = 'H' then
//      req_roleid  := 4
//      else if qry_InvRequestSOURCE.Value = 'S' then
//      req_roleid  := 5;
//      brw_PMHeader.SQL[3] := 'WHERE PM.ROLEID = :ROLEID  AND PM.CANCELLED = FALSE'; //PM.ROLEID = :ROLEID AND PM.EMPID = :ID AND
////      brw_PMHeader.ParamByName('ID').Value      := empid;
//      brw_PMHeader.ParamByName('ROLEID').Value  := req_roleid;
//      brw_PMHeader.Open();

      brw_MRJO.Close;
      brw_MRJO.SQL[2] := 'WHERE CANCELLED = FALSE';
      brw_MRJO.Open();
    end;
  end;
end;

procedure Tf_RequestTemp.grid_jodetailExit(Sender: TObject);
begin
  with dm_PM do
  begin
    tb_InvReqDetail.Edit;
    tb_InvReqDetail.Post;
    UIExecute(nil);
  end;
end;

function Tf_RequestTemp.manageui: Boolean;
begin
  with dm_PM do
  begin
    cmb_jo.Style.BorderColor := $00121212;
    if qry_InvRequestSOURCE.Value <> 'O' then
    begin
      if qry_InvRequestJONO.IsNull then
      cmb_jo.Style.BorderColor := clRed;
    end;

    date_date.Style.BorderColor     := $00121212;
    if qry_InvRequestREQDATETIME.IsNull then
    date_date.Style.BorderColor     := clRed;

    if (cmb_jo.Style.BorderColor = clRed) or (date_date.Style.BorderColor = clRed) or (tb_InvReqDetail.RecordCount = 0) then
    btnSave.Enabled := False
    else
    btnSave.Enabled := True;

    Result  := btnSave.Enabled;
  end;
end;

procedure Tf_RequestTemp.PrintExecute(Sender: TObject);
begin
  with dm_PM do
  begin
    qry_company.Close;
    qry_company.SQL[2]  := 'WHERE ID = 1';
    qry_company.Open();

    brw_Emp.Close;
    brw_Emp.SQL[2]   := 'WHERE USERID = :ID';
    brw_Emp.ParamByName('ID').Value := qry_InvRequestREQBY.Value;
    brw_Emp.Open();

    f_Reports := Tf_Reports.Create(Self);
    f_Reports.rep_InvReq.ShowReport();
  end;
end;

procedure Tf_RequestTemp.rad_sourceExit(Sender: TObject);
begin
  generate_jo;
  UIExecute(nil);
end;

procedure Tf_RequestTemp.readonly(flag: Boolean);
begin
  cxGridDBTableView1ITEMID.Options.Editing  := not flag;
  cxGridDBTableView1QTY.Options.Editing     := not flag;
  rad_source.Properties.ReadOnly            := flag;
  txt_notes.Properties.ReadOnly             := flag;
  cmb_jo.Properties.ReadOnly                := flag;
  date_date.Properties.ReadOnly             := flag;
  date_posted.Properties.ReadOnly           := flag;
  Delete1.Visible                           := not flag;

  if posted then
  btnSave.Enabled       := not flag
  else
  btnSave.Enabled       := True;

  if dm_PM.qry_InvRequest.State = dsInsert then
  begin
    chk_posted.Properties.ReadOnly  := False;
    btnPrint.Visible                := False;
  end
  else
  begin
    chk_posted.Properties.ReadOnly  := posted;
    btnPrint.Visible                := posted;
  end;
end;

procedure Tf_RequestTemp.refresh_items;
begin
  with dm_PM do
  begin
    brw_items.Close;
    brw_items.SQL[2]  := 'WHERE CANCELLED = FALSE';
    brw_items.Open();
  end;
end;

procedure Tf_RequestTemp.UIExecute(Sender: TObject);
begin
  readonly(dm_PM.qry_InvRequestPOSTED.Value);
  if not dm_PM.qry_InvRequestPOSTED.Value then
  manageui;
end;

end.
