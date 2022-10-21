unit fPOTemp;

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
  cxGridCustomView, cxGrid, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxGroupBox, cxRadioGroup, cxDBEdit, cxCheckBox, cxMemo, cxLabel, cxDBLabel,
  cxMaskEdit, cxCalendar, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  Tf_POTemp = class(TForm)
    Panel2: TPanel;
    btnSave: TButton;
    btnCancel: TButton;
    btnPrint: TButton;
    Panel3: TPanel;
    Label1: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    date_date: TcxDBDateEdit;
    date_posted: TcxDBDateEdit;
    cxDBLabel1: TcxDBLabel;
    txt_notes: TcxDBMemo;
    chk_posted: TcxDBCheckBox;
    grid_jodetail: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    ds_PO: TDataSource;
    ActionList1: TActionList;
    UI: TAction;
    Print: TAction;
    Delete: TAction;
    cxStyleRepository1: TcxStyleRepository;
    Header_style: TcxStyle;
    frxReport1: TfrxReport;
    ds_details: TDataSource;
    ds_items: TDataSource;
    PopupMenu1: TPopupMenu;
    Delete1: TMenuItem;
    cmb_vendor: TcxDBLookupComboBox;
    Label2: TLabel;
    cxGridDBTableView1UNIT: TcxGridDBColumn;
    cxGridDBTableView1ONHANDQTY: TcxGridDBColumn;
    cxGridDBTableView1QTY: TcxGridDBColumn;
    cxGridDBTableView1COST: TcxGridDBColumn;
    cxGridDBTableView1AMOUNT: TcxGridDBColumn;
    cxGridDBTableView1OVERRIDE: TcxGridDBColumn;
    cxGridDBTableView1ITEMID: TcxGridDBColumn;
    ds_vendor: TDataSource;
    ds_MR: TDataSource;
    Override: TAction;
    Override1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxGridDBTableView1ITEMIDPropertiesCloseUp(Sender: TObject);
    procedure cxGridDBTableView1QTYPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure chk_postedClick(Sender: TObject);
    procedure DeleteExecute(Sender: TObject);
    procedure UIExecute(Sender: TObject);
    procedure OverrideExecute(Sender: TObject);
    procedure PrintExecute(Sender: TObject);
  private
    { Private declarations }
    posted: Boolean;
    procedure refresh_items;
    function manageui: Boolean;
    procedure readonly(flag: Boolean);
  public
    { Public declarations }
  end;

var
  f_POTemp: Tf_POTemp;

implementation

{$R *.dfm}

uses dmPM, fReports;

procedure Tf_POTemp.chk_postedClick(Sender: TObject);
begin
  if chk_posted.Checked then
  begin
    if manageui then
    dm_PM.qry_POPOSTEDDATETIME.Value  := Now
    else
    begin
      dm_PM.qry_POPOSTEDDATETIME.Clear;
      dm_PM.qry_POPOSTED.Value  := False;
      chk_posted.Checked        := False;
    end;

    if dm_PM.tb_PODetail.RecordCount = 0 then
    MessageDlg('Details cannot be empty!', mtError, [mbOK], 0)
    else if dm_PM.qry_POPODATE.IsNull then
    MessageDlg('Date cannot be empty!', mtError, [mbOK], 0)
    else if (dm_PM.qry_PONOTES.IsNull) or (Trim(dm_PM.qry_PONOTES.AsString) = '') then
    begin
      MessageDlg('Notes cannot be empty!', mtError, [mbOK], 0);
    end
    else if dm_PM.qry_POVENDORID.IsNull then
      MessageDlg('Vendor cannot be empty!', mtError, [mbOK], 0);
  end
  else
    dm_PM.qry_POPOSTEDDATETIME.Clear;
end;

procedure Tf_POTemp.cxGridDBTableView1ITEMIDPropertiesCloseUp(Sender: TObject);
  var itemid: Integer;
begin
  with dm_PM do
  begin
    itemid  := tb_PODetailITEMID.Value;

    tb_PODetail.DisableControls;
    tb_PODetail.Filtered := False;
    tb_PODetail.Filter   := 'ITEMID = '+IntToStr(itemid);
    tb_PODetail.Filtered := True;

    if tb_PODetail.RecordCount > 1 then
    begin
      tb_PODetail.Last;
      tb_PODetail.Delete;
      MessageDlg('Item already on the list!', mtInformation, [mbOK], 0);
      tb_PODetail.Filtered := False;
      tb_PODetail.EnableControls;
      Exit;
    end
    else
    begin
      tb_PODetail.Filtered := False;
      tb_PODetail.EnableControls;
    end;

    brw_items.DisableControls;
    if brw_items.Locate('ID', tb_PODetailITEMID.Value) then
    begin
      tb_PODetail.Edit;
      tb_PODetailDESCRIPTION.Value  := brw_itemsDESCRIPTION.AsString;
      tb_PODetailUNIT.Value         := brw_itemsINVUNIT.Value;
      tb_PODetailCOST.Value         := brw_itemsCOST.Value;
      tb_PODetailONHANDQTY.Value    := brw_itemsONHAND.Value;
      tb_PODetailOVERRIDE.Value     := False;
      tb_PODetail.Post;
    end;
    brw_items.EnableControls;
  end;
end;

procedure Tf_POTemp.cxGridDBTableView1QTYPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  if DisplayValue < 0 then
  begin
    MessageDlg('Invalid Qty!', mtError, [mbOK], 0);
    DisplayValue  := 0;
  end;
end;

procedure Tf_POTemp.DeleteExecute(Sender: TObject);
begin
  with dm_PM do
  begin
    if MessageDlg('Continue to delete '+tb_PODetailDESCRIPTION.AsString + ' from the list?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      if tb_PODetailID.Value > 0 then
      begin
        qry_PODetail.Close;
        qry_PODetail.SQL[2] := 'WHERE ID = :ID';
        qry_PODetail.ParamByName('ID').Value  := tb_PODetailID.Value;
        qry_PODetail.Open();

        if qry_PODetail.RecordCount > 0 then
        begin
          qry_PODetail.Edit;
          qry_PODetailCANCELLED.Value         := True;
          qry_PODetailCANCELLEDBYID.Value     := userid;
          qry_PODetailCANCELLEDDATETIME.Value := Now;
          qry_PODetail.Post;
          qry_PODetail.ApplyUpdates();
        end;
      end;
      tb_PODetail.Delete;

    end;
  end;
end;

procedure Tf_POTemp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (manageui) then
  Action  := caFree
  else
  begin
    if (dm_PM.qry_PO.State = dsEdit) then
    begin
      refresh_items;
      Action  := caNone;
    end
    else
      Action  := caFree;
  end;
end;

procedure Tf_POTemp.FormShow(Sender: TObject);
begin
  with dm_PM do
  begin
    brw_MR.Close;
    brw_MR.SQL[3] := 'WHERE REQ_HEADER.CANCELLED = FALSE';
    brw_MR.Open();

    brw_Vendor.Close;
    brw_Vendor.SQL[2] := 'WHERE CANCELLED = FALSE';
    brw_Vendor.Open();

    cmb_vendor.SetFocus;

    refresh_items;

    posted  := qry_POPOSTED.Value;

    readonly(qry_POPOSTED.Value);
    if not qry_POPOSTED.Value then
    manageui;
  end;
end;

function Tf_POTemp.manageui: Boolean;
begin
  with dm_PM do
  begin

    date_date.Style.BorderColor     := $00121212;
    if qry_POPODATE.IsNull then
    date_date.Style.BorderColor     := clRed;

    cmb_vendor.Style.BorderColor     := $00121212;
    if qry_POVENDORID.IsNull then
    cmb_vendor.Style.BorderColor    := clRed;

    txt_notes.Style.BorderColor   := $00121212;
    if (qry_PONOTES.IsNull) or (Trim(qry_PONOTES.Value) = '')  then
    txt_notes.Style.BorderColor := clRed;

    if (date_date.Style.BorderColor = clRed) or (cmb_vendor.Style.BorderColor = clRed) or (txt_notes.Style.BorderColor = clRed) or (tb_PODetail.RecordCount = 0) then
    btnSave.Enabled := False
    else
    btnSave.Enabled := True;

    Result  := btnSave.Enabled;
  end;
end;

procedure Tf_POTemp.OverrideExecute(Sender: TObject);
var newcost: Real;
begin
  with dm_PM do
  begin
    if MessageDlg('Continue to override price on this item?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try
        newcost := StrToFloat(InputBox('Cost', 'Enter new cost : ', tb_PODetailCOST.AsString));
        if newcost > 0 then
        begin
          tb_PODetail.Edit;
          tb_PODetailCOST.Value     := newcost;
          tb_PODetailOVERRIDE.Value := True;
        end;

        Except on E : Exception do
        MessageDlg('Invalid input! Accepts numeric characters only.', mtError, [mbOK], 0);
      end;
    end;
  end;
end;

procedure Tf_POTemp.PrintExecute(Sender: TObject);
begin
  with dm_PM do
  begin
    qry_company.Close;
    qry_company.SQL[2]  := 'WHERE ID = 1';
    qry_company.Open();

    brw_Emp.Close;
    brw_Emp.SQL[2]   := 'WHERE USERID = :ID';
    brw_Emp.ParamByName('ID').Value := qry_POCREATEDBYID.Value;
    brw_Emp.Open();

    f_Reports := Tf_Reports.Create(Self);
    f_Reports.rep_PO.ShowReport();
  end;
end;

procedure Tf_POTemp.readonly(flag: Boolean);
begin
  with dm_PM do
  begin
    cxGridDBTableView1ITEMID.Options.Editing  := not flag;
    cxGridDBTableView1QTY.Options.Editing     := not flag;
    cmb_vendor.Properties.ReadOnly            := flag;
    txt_notes.Properties.ReadOnly             := flag;
    date_date.Properties.ReadOnly             := flag;
    Delete1.Visible                           := not flag;
    Override1.Visible                         := not flag;

    if posted then
    btnSave.Enabled       := not flag
    else
    btnSave.Enabled       := True;

    if dm_PM.qry_PO.State = dsInsert then
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
end;

procedure Tf_POTemp.refresh_items;
begin
  with dm_PM do
  begin
    brw_items.Close;
    brw_items.SQL[2]  := 'WHERE CANCELLED = FALSE';
    brw_items.Open();
  end;
end;

procedure Tf_POTemp.UIExecute(Sender: TObject);
var amnt: Variant;
begin
  with dm_PM do
  begin
    tb_PODetail.Append;
    tb_PODetail.Delete;

    amnt  := cxGridDBTableView1.DataController.Summary.FooterSummaryValues[1];
    if tb_PODetail.RecordCount > 0 then
    qry_PONETAMOUNT.Value := StrToFloat(VarToStr(amnt))
    else
    qry_PONETAMOUNT.Value := 0;
  end;

  readonly(dm_PM.qry_POPOSTED.Value);
  if not dm_PM.qry_POPOSTED.Value then
  manageui;
end;

end.
