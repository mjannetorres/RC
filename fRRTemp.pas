unit fRRTemp;

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
  cxCheckBox, cxDBEdit, cxMemo, cxLabel, cxDBLabel, cxMaskEdit, cxCalendar,
  Vcl.StdCtrls, Vcl.ExtCtrls, cxGroupBox, cxRadioGroup;

type
  Tf_RRTemp = class(TForm)
    Panel2: TPanel;
    btnSave: TButton;
    btnCancel: TButton;
    btnPrint: TButton;
    Panel3: TPanel;
    Label1: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label2: TLabel;
    date_date: TcxDBDateEdit;
    date_posted: TcxDBDateEdit;
    cxDBLabel1: TcxDBLabel;
    txt_notes: TcxDBMemo;
    chk_posted: TcxDBCheckBox;
    cmb_vendor: TcxDBLookupComboBox;
    grid_jodetail: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1ITEMID: TcxGridDBColumn;
    cxGridDBTableView1UNIT: TcxGridDBColumn;
    cxGridDBTableView1ONHANDQTY: TcxGridDBColumn;
    cxGridDBTableView1QTY: TcxGridDBColumn;
    cxGridDBTableView1COST: TcxGridDBColumn;
    cxGridDBTableView1AMOUNT: TcxGridDBColumn;
    cxGridDBTableView1OVERRIDE: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    ds_RR: TDataSource;
    ActionList1: TActionList;
    UI: TAction;
    Print: TAction;
    Delete: TAction;
    Override: TAction;
    cxStyleRepository1: TcxStyleRepository;
    Header_style: TcxStyle;
    frxReport1: TfrxReport;
    ds_details: TDataSource;
    ds_items: TDataSource;
    PopupMenu1: TPopupMenu;
    Delete1: TMenuItem;
    Override1: TMenuItem;
    ds_vendor: TDataSource;
    ds_MR: TDataSource;
    ds_PO: TDataSource;
    Label3: TLabel;
    rad_source: TcxDBRadioGroup;
    Label5: TLabel;
    cmb_refno: TcxDBLookupComboBox;
    txt_invoice: TcxDBTextEdit;
    Label7: TLabel;
    Label8: TLabel;
    txt_Gross: TcxDBTextEdit;
    Label9: TLabel;
    txt_discount: TcxDBTextEdit;
    Label10: TLabel;
    txt_netamount: TcxDBTextEdit;
    cxGridDBTableView1RCVDQTY: TcxGridDBColumn;
    cxGridDBTableView1REQQTY: TcxGridDBColumn;
    procedure UIExecute(Sender: TObject);
    procedure PrintExecute(Sender: TObject);
    procedure DeleteExecute(Sender: TObject);
    procedure OverrideExecute(Sender: TObject);
    procedure cxGridDBTableView1ITEMIDPropertiesCloseUp(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure rad_sourceExit(Sender: TObject);
    procedure chk_postedClick(Sender: TObject);
    procedure rad_sourcePropertiesChange(Sender: TObject);
    procedure cmb_refnoPropertiesCloseUp(Sender: TObject);
    procedure cxGridDBTableView1QTYPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
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
  f_RRTemp: Tf_RRTemp;

implementation

{$R *.dfm}

uses dmPM, fReports;

procedure Tf_RRTemp.chk_postedClick(Sender: TObject);
var hasZero : Boolean;
begin
  if chk_posted.Checked then
  begin
    if manageui then
    dm_PM.qry_RRPOSTEDDATETIME.Value  := Now
    else
    begin
      dm_PM.qry_RRPOSTEDDATETIME.Clear;
      dm_PM.qry_RRPOSTED.Value  := False;
      chk_posted.Checked        := False;
    end;

    hasZero := dm_PM.tb_RRDetail.Locate('QTY', 0, []);
    if dm_PM.tb_RRDetail.RecordCount = 0 then
    MessageDlg('Details cannot be empty!', mtError, [mbOK], 0)
    else if hasZero  then
    MessageDlg('Cannot received items with 0 Qty!', mtError, [mbok], 0)
    else if dm_PM.qry_RRIRDATE.IsNull then
    MessageDlg('Date cannot be empty!', mtError, [mbOK], 0)
    else if (dm_PM.qry_RRNOTES.IsNull) or (Trim(dm_PM.qry_RRNOTES.AsString) = '') then
    begin
      MessageDlg('Notes cannot be empty!', mtError, [mbOK], 0);
    end
    else if dm_PM.qry_RRVENDORID.IsNull then
      MessageDlg('Vendor cannot be empty!', mtError, [mbOK], 0);
  end
  else
    dm_PM.qry_RRPOSTEDDATETIME.Clear;
end;

procedure Tf_RRTemp.cmb_refnoPropertiesCloseUp(Sender: TObject);
begin
  with dm_PM do
  begin
    if not qry_RRPOSTED.Value then
    begin
      if MessageDlg('Continue to load details?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        tb_RRDetail.Append;
        tb_RRDetail.Delete;

        if (tb_RRDetail.RecordCount = 0) or (dm_PM.qry_RR.State = dsInsert) then
        begin
          if tb_RRDetail.RecordCount > 0 then
          begin
            tb_RRDetail.Close;
            tb_RRDetail.Open;
          end;

          if cmb_refno.EditValue > 0 then
          begin
            if qry_RRSOURCE.Value = 'CPR' then
            begin
              qry_MRDetails.Close;
              qry_MRDetails.SQL[2]  := 'WHERE HEADERID = :ID AND CANCELLED = FALSE';
              qry_MRDetails.ParamByName('ID').Value := cmb_refno.EditValue;
              qry_MRDetails.Open();

              if qry_MRDetails.RecordCount > 0 then
              begin
                qry_MRDetails.First;
                while not qry_MRDetails.Eof do
                begin

                  brw_RcvdItems.Close;
                  brw_RcvdItems.SQL[3]  := 'WHERE IR_HEADER.SOURCE = :SOURCE AND IR_HEADER.REFID = :REFID AND IR_DETAIL.ITEMID = :ITEMID AND IR_HEADER.CANCELLED = FALSE AND IR_DETAIL.CANCELLED = FALSE';
                  brw_RcvdItems.ParamByName('SOURCE').Value := 'CPR';
                  brw_RcvdItems.ParamByName('REFID').Value  := qry_RRREFID.Value;
                  brw_RcvdItems.ParamByName('ITEMID').Value := qry_MRDetailsITEMID.Value;
                  brw_RcvdItems.Open();

                  tb_RRDetail.Append;
                  tb_RRDetailDESCRIPTION.Value  := qry_MRDetailsITEMDESC.Value;
                  tb_RRDetailUNIT.Value         := qry_MRDetailsUNIT.Value;
                  tb_RRDetailREQQTY.Value       := qry_MRDetailsQTY.Value;
                  tb_RRDetailRCVDQTY.Value      := brw_RcvdItemsQTY.Value;
                  tb_RRDetailCOST.Value         := qry_MRDetailsCOST.Value;
                  tb_RRDetailAMOUNT.Value       := qry_MRDetailsTOTALCOST.Value;
                  tb_RRDetailOVERRIDE.Value     := False;
                  tb_RRDetailITEMID.Value       := qry_MRDetailsITEMID.Value;
                  if brw_items.Locate('ID', tb_RRDetailITEMID.Value, []) then
                  begin
                    tb_RRDetailONHANDQTY.Value    := brw_itemsONHAND.Value;
                    tb_RRDetail.Post;
                  end
                  else
                  tb_RRDetail.Cancel;

                  qry_MRDetails.Next;
                end;
              end;
            end
            else
            begin
              qry_PO.Close;
              qry_PO.SQL[2] := 'WHERE ID = :ID';
              qry_PO.ParamByName('ID').Value  := cmb_refno.EditValue;
              qry_PO.Open;

              if qry_PO.RecordCount > 0 then
              qry_RRVENDORID.Value  := qry_POVENDORID.Value;

              qry_PODetail.Close;
              qry_PODetail.SQL[2]  := 'WHERE HEADERID = :ID AND CANCELLED = FALSE';
              qry_PODetail.ParamByName('ID').Value := cmb_refno.EditValue;
              qry_PODetail.Open();

              if qry_PODetail.RecordCount > 0 then
              begin
                qry_PODetail.First;
                while not qry_PODetail.Eof do
                begin
                  brw_RcvdItems.Close;
                  brw_RcvdItems.SQL[3]  := 'WHERE IR_HEADER.SOURCE = :SOURCE AND IR_HEADER.REFID = :REFID AND IR_DETAIL.ITEMID = :ITEMID AND IR_HEADER.CANCELLED = FALSE AND IR_DETAIL.CANCELLED = FALSE';
                  brw_RcvdItems.ParamByName('SOURCE').Value := 'PO';
                  brw_RcvdItems.ParamByName('REFID').Value  := qry_RRREFID.Value;
                  brw_RcvdItems.ParamByName('ITEMID').Value := qry_PODetailITEMID.Value;
                  brw_RcvdItems.Open();

                  tb_RRDetail.Append;
                  tb_RRDetailDESCRIPTION.Value  := qry_PODetailDESCRIPTION.Value;
                  tb_RRDetailUNIT.Value         := qry_PODetailUNIT.Value;
                  tb_RRDetailREQQTY.Value       := qry_PODetailQTY.Value;
                  tb_RRDetailRCVDQTY.Value      := brw_RcvdItemsQTY.Value;
                  tb_RRDetailCOST.Value         := qry_PODetailCOST.Value;
                  tb_RRDetailAMOUNT.Value       := qry_PODetailAMOUNT.Value;
                  tb_RRDetailOVERRIDE.Value     := False;
                  tb_RRDetailITEMID.Value       := qry_PODetailITEMID.Value;

                  if brw_items.Locate('ID', tb_RRDetailITEMID.Value, []) then
                  begin
                    tb_RRDetailONHANDQTY.Value    := brw_itemsONHAND.Value;
                    tb_RRDetail.Post;
                  end
                  else
                  tb_RRDetail.Cancel;

                  qry_PODetail.Next;
                end;
              end;
            end;
          end;
        end
        else
        begin
          MessageDlg('Cannot overrite items for it may affect the inventory. Please delete all items manually.', mtInformation, [mbOK], 0);
          qry_RRREFID.Clear;
          qry_RRVENDORID.Clear;
        end;
        tb_RRDetail.First;
      end
      else
      begin
        qry_RRREFID.Clear;
        qry_RRVENDORID.Clear;
      end;
    end;
  end;
end;

procedure Tf_RRTemp.cxGridDBTableView1ITEMIDPropertiesCloseUp(Sender: TObject);
  var itemid: Integer;
begin
  with dm_PM do
  begin
    itemid  := tb_RRDetailITEMID.Value;

    tb_RRDetail.DisableControls;
    tb_RRDetail.Filtered := False;
    tb_RRDetail.Filter   := 'ITEMID = '+IntToStr(itemid);
    tb_RRDetail.Filtered := True;

    if tb_RRDetail.RecordCount > 1 then
    begin
      tb_RRDetail.Last;
      tb_RRDetail.Delete;
      MessageDlg('Item already on the list!', mtInformation, [mbOK], 0);
      tb_RRDetail.Filtered := False;
      tb_RRDetail.EnableControls;
      Exit;
    end
    else
    begin
      tb_RRDetail.Filtered := False;
      tb_RRDetail.EnableControls;
    end;

    brw_items.DisableControls;
    if brw_items.Locate('ID', tb_RRDetailITEMID.Value) then
    begin
      if brw_itemsONHAND.Value > 0 then
      begin
        tb_RRDetail.Edit;
        tb_RRDetailDESCRIPTION.Value  := brw_itemsDESCRIPTION.AsString;
        tb_RRDetailUNIT.Value         := brw_itemsINVUNIT.Value;
        tb_RRDetailCOST.Value         := brw_itemsCOST.Value;
        tb_RRDetailONHANDQTY.Value    := brw_itemsONHAND.Value;
        tb_RRDetailOVERRIDE.Value     := False;
        tb_RRDetail.Post;
      end
      else
      begin
        tb_RRDetail.Delete;
        MessageDlg('Cannot request 0 onhand! Please update inventory.', mtWarning, [mbOK], 0);
      end;
    end;
    brw_items.EnableControls;
  end;
end;

procedure Tf_RRTemp.cxGridDBTableView1QTYPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  if DisplayValue < 0 then
  begin
    MessageDlg('Invalid Qty!', mtError, [mbOK], 0);
    DisplayValue  := dm_PM.tb_RRDetailQTY.Value;
  end;
end;

procedure Tf_RRTemp.DeleteExecute(Sender: TObject);
begin
  with dm_PM do
  begin
    if MessageDlg('Continue to delete '+tb_RRDetailDESCRIPTION.AsString + ' from the list?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      if tb_RRDetailID.Value > 0 then
      begin
        qry_RRDetail.Close;
        qry_RRDetail.SQL[2] := 'WHERE ID = :ID';
        qry_RRDetail.ParamByName('ID').Value  := tb_RRDetailID.Value;
        qry_RRDetail.Open();

        if qry_RRDetail.RecordCount > 0 then
        begin
          qry_RRDetail.Edit;
          qry_RRDetailCANCELLED.Value   := True;
          qry_RRCANCELLEDBYID.Value     := userid;
          qry_RRCANCELLEDDATETIME.Value := Now;
          qry_RRDetail.Post;
          qry_RRDetail.ApplyUpdates();
        end;
      end;
      tb_RRDetail.Delete;
      UIExecute(nil);
    end;
  end;
end;

procedure Tf_RRTemp.FormShow(Sender: TObject);
begin
  with dm_PM do
  begin
    brw_MR.Close;
    brw_MR.SQL[3] := 'WHERE REQ_HEADER.CANCELLED = FALSE AND POSTED = TRUE AND REIMBURSED = TRUE';
    brw_MR.Open();

    brw_PO.Close;
    brw_PO.SQL[2] := 'WHERE CANCELLED = FALSE AND POSTED = TRUE';
    brw_PO.Open();

    brw_Vendor.Close;
    brw_Vendor.SQL[2] := 'WHERE CANCELLED = FALSE';
    brw_Vendor.Open();

    cmb_refno.SetFocus;

    refresh_items;

    posted  := qry_RRPOSTED.Value;

    readonly(qry_RRPOSTED.Value);
    if not qry_RRPOSTED.Value then
    manageui;
  end;
end;

function Tf_RRTemp.manageui: Boolean;
var hasZero: Boolean;
begin
  with dm_PM do
  begin

    cmb_refno.Style.BorderColor     := $00121212;
    if qry_RRREFID.IsNull then
    cmb_refno.Style.BorderColor     := clRed;

    date_date.Style.BorderColor     := $00121212;
    if qry_RRIRDATE.IsNull then
    date_date.Style.BorderColor     := clRed;

    cmb_vendor.Style.BorderColor     := $00121212;
    if qry_RRVENDORID.IsNull then
    cmb_vendor.Style.BorderColor    := clRed;

    txt_notes.Style.BorderColor   := $00121212;
    if (qry_RRNOTES.IsNull) or (Trim(qry_RRNOTES.Value) = '')  then
    txt_notes.Style.BorderColor := clRed;

    txt_invoice.Style.BorderColor   := $00121212;
    if (qry_RRINVOICE.IsNull) or (Trim(qry_RRINVOICE.Value) = '')  then
    txt_invoice.Style.BorderColor := clRed;

    hasZero  := tb_RRDetail.Locate('QTY', 0, []);

    if (hasZero) or (cmb_refno.Style.BorderColor = clRed) or (date_date.Style.BorderColor = clRed) or (cmb_vendor.Style.BorderColor = clRed) or (txt_notes.Style.BorderColor = clRed) or (txt_invoice.Style.BorderColor = clRed) or (tb_RRDetail.RecordCount = 0) then
    btnSave.Enabled := False
    else
    btnSave.Enabled := True;

    Result  := btnSave.Enabled;
  end;
end;

procedure Tf_RRTemp.OverrideExecute(Sender: TObject);
  var newcost: Real;
begin
  with dm_PM do
  begin
    if MessageDlg('Continue to override price on this item?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try
        newcost := StrToFloat(InputBox('Cost', 'Enter new cost : ', tb_RRDetailCOST.AsString));
        if newcost > 0 then
        begin
          tb_RRDetail.Edit;
          tb_RRDetailCOST.Value     := newcost;
          tb_RRDetailOVERRIDE.Value := True;
        end;

        Except on E : Exception do
        MessageDlg('Invalid input! Accepts numeric characters only.', mtError, [mbOK], 0);
      end;
    end;
  end;
end;

procedure Tf_RRTemp.PrintExecute(Sender: TObject);
begin
  with dm_PM do
  begin
    qry_company.Close;
    qry_company.SQL[2]  := 'WHERE ID = 1';
    qry_company.Open();

    brw_Emp.Close;
    brw_Emp.SQL[2]   := 'WHERE USERID = :ID';
    brw_Emp.ParamByName('ID').Value := qry_RRCREATEDBYID.AsString;
    brw_Emp.Open();

    f_reports := Tf_Reports.Create(Self);
    TfrxMemoView(f_Reports.rep_RR.FindObject('source')).Text := qry_RRSOURCE.AsString + ' No. '+qry_RRREFID.AsString;
    f_Reports.rep_RR.ShowReport(True);
  end;
end;

procedure Tf_RRTemp.rad_sourceExit(Sender: TObject);
begin
  with dm_PM do
  begin
    if qry_RRSOURCE.Value = 'CPR' then
    cmb_refno.Properties.ListSource := ds_MR
    else
    cmb_refno.Properties.ListSource := ds_PO;
  end;
  UIExecute(nil);
end;

procedure Tf_RRTemp.rad_sourcePropertiesChange(Sender: TObject);
begin
  with dm_PM do
  begin
    if (qry_RR.State = dsInsert) or (qry_RR.State = dsEdit) then
    begin
      qry_RRREFID.Clear;
      qry_RRVENDORID.Clear;

      if qry_RR.State = dsInsert then
      begin
        tb_RRDetail.Close;
        tb_RRDetail.Open;
      end;

      UIExecute(nil);
    end;
  end;
end;

procedure Tf_RRTemp.readonly(flag: Boolean);
begin
  with dm_PM do
  begin
    cxGridDBTableView1QTY.Options.Editing     := not flag;
    rad_source.Properties.ReadOnly            := flag;
    cmb_vendor.Properties.ReadOnly            := flag;
    cmb_refno.Properties.ReadOnly             := flag;
    txt_notes.Properties.ReadOnly             := flag;
    date_date.Properties.ReadOnly             := flag;
    txt_invoice.Properties.ReadOnly           := flag;
    txt_discount.Properties.ReadOnly          := flag;
    Delete1.Visible                           := not flag;
    Override1.Visible                         := not flag;

    if posted then
    btnSave.Enabled       := not flag
    else
    btnSave.Enabled       := True;

    if dm_PM.qry_RR.State = dsInsert then
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

procedure Tf_RRTemp.refresh_items;
begin
  with dm_PM do
  begin
    brw_items.Close;
    brw_items.SQL[2]  := 'WHERE CANCELLED = FALSE';
    brw_items.Open();

  end;
end;

procedure Tf_RRTemp.UIExecute(Sender: TObject);
var amnt: Variant;
begin

  with dm_PM do
  begin
    if (qry_RR.State = dsEdit) or (qry_RR.State = dsInsert) then
    begin
      tb_RRDetail.Append;
      tb_RRDetail.Delete;

      amnt  := cxGridDBTableView1.DataController.Summary.FooterSummaryValues[1];
      if tb_RRDetail.RecordCount > 0 then
      begin
        qry_RRGROSS.Value := StrToFloat(VarToStr(amnt));
        qry_RRNETAMNT.Value := StrToFloat(VarToStr(amnt)) - qry_RRDISCOUNT.Value
      end
      else
      begin
        qry_RRGROSS.Value   := 0;
        qry_RRNETAMNT.Value := 0;
      end;
    end;
  end;

  readonly(dm_PM.qry_RRPOSTED.Value);
  if not dm_PM.qry_RRPOSTED.Value then
  manageui;
end;

end.
