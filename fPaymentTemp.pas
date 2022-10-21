unit fPaymentTemp;

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
  cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxTextEdit, Vcl.Menus,
  frxClass, cxClasses, System.Actions, Vcl.ActnList, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridCustomView,
  cxGrid, cxDBEdit, cxGroupBox, cxRadioGroup, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxCheckBox, cxMemo, cxLabel, cxDBLabel,
  cxMaskEdit, cxCalendar, Vcl.StdCtrls, Vcl.ExtCtrls, scControls,
  scGPFontControls;

type
  Tf_PaymentTemp = class(TForm)
    Panel2: TPanel;
    btnSave: TButton;
    btnCancel: TButton;
    btnPrint: TButton;
    Panel3: TPanel;
    Label1: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label2: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    date_date: TcxDBDateEdit;
    date_posted: TcxDBDateEdit;
    cxDBLabel1: TcxDBLabel;
    txt_notes: TcxDBMemo;
    chk_posted: TcxDBCheckBox;
    cmb_vendor: TcxDBLookupComboBox;
    txt_checkno: TcxDBTextEdit;
    grid_jodetail: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    ds_Payment: TDataSource;
    ActionList1: TActionList;
    UI: TAction;
    Print: TAction;
    Delete: TAction;
    cxStyleRepository1: TcxStyleRepository;
    Header_style: TcxStyle;
    frxReport1: TfrxReport;
    ds_details: TDataSource;
    PopupMenu1: TPopupMenu;
    Delete1: TMenuItem;
    ds_vendor: TDataSource;
    date_checkdate: TcxDBDateEdit;
    Label3: TLabel;
    cmb_bank: TcxDBLookupComboBox;
    Label5: TLabel;
    rad_paymode: TcxDBRadioGroup;
    txt_netamnt: TcxDBTextEdit;
    cxGridDBTableView1INVOICE: TcxGridDBColumn;
    cxGridDBTableView1REFDATE: TcxGridDBColumn;
    cxGridDBTableView1AMOUNT: TcxGridDBColumn;
    cxGridDBTableView1PAIDAMNT: TcxGridDBColumn;
    cxGridDBTableView1NETAMOUNT: TcxGridDBColumn;
    cxGridDBTableView1FP: TcxGridDBColumn;
    cxGridDBTableView1REFID: TcxGridDBColumn;
    Load: TAction;
    cxGridDBTableView1BALANCE: TcxGridDBColumn;
    ds_Bank: TDataSource;
    btnLoad: TscGPCharGlyphButton;
    procedure LoadExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure UIExecute(Sender: TObject);
    procedure PrintExecute(Sender: TObject);
    procedure DeleteExecute(Sender: TObject);
    procedure chk_postedClick(Sender: TObject);
    procedure cmb_bankPropertiesCloseUp(Sender: TObject);
    procedure txt_checknoPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure cxGridDBTableView1NETAMOUNTPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
  private
    { Private declarations }
    posted: Boolean;
    function manageui: Boolean;
    procedure readonly(flag: Boolean);
  public
    { Public declarations }
  end;

var
  f_PaymentTemp: Tf_PaymentTemp;

implementation

{$R *.dfm}

uses dmPM, fReports;

procedure Tf_PaymentTemp.chk_postedClick(Sender: TObject);
begin
  if chk_posted.Checked then
  begin
    if manageui then
    dm_PM.qry_PaymentPOSTEDDATETIME.Value  := Now
    else
    begin
      dm_PM.qry_PaymentPOSTEDDATETIME.Clear;
      dm_PM.qry_PaymentPOSTED.Value  := False;
      chk_posted.Checked        := False;
    end;

    if dm_PM.tb_PaymentDetail.RecordCount = 0 then
    MessageDlg('Details cannot be empty!', mtError, [mbOK], 0)
    else if (dm_PM.qry_PaymentNETAMNT.Value = 0) or (dm_PM.qry_PaymentNETAMNT.IsNull) then
    MessageDlg('Net amount cannot be 0!', mtError, [mbOK], 0)
    else if dm_PM.qry_PaymentPAYDATE.IsNull then
    MessageDlg('Date cannot be empty!', mtError, [mbOK], 0)
    else if (dm_PM.qry_PaymentNOTES.IsNull) or (Trim(dm_PM.qry_PaymentNOTES.AsString) = '') then
    begin
      MessageDlg('Notes cannot be empty!', mtError, [mbOK], 0);
    end
    else if dm_PM.qry_PaymentVENDORID.IsNull then
      MessageDlg('Vendor cannot be empty!', mtError, [mbOK], 0)
    else if dm_PM.qry_PaymentPAYMENTMODE.Value = 'CHECK' then
    begin
      if dm_PM.qry_PaymentBANKID.IsNull then
      MessageDlg('Bank cannot be empty!', mtError, [mbOK], 0)
      else if dm_PM.qry_PaymentCHECKNO.IsNull then
      MessageDlg('Check No. cannot be empty!', mtError, [mbOK], 0)
      else if dm_PM.qry_PaymentCHECKDATE.IsNull then
      MessageDlg('Check Date cannot be empty!', mtError, [mbOK], 0);
    end;
  end
  else
    dm_PM.qry_PaymentPOSTEDDATETIME.Clear;
end;

procedure Tf_PaymentTemp.cmb_bankPropertiesCloseUp(Sender: TObject);
begin
  with dm_PM do
  begin
    if brw_Bank.Locate('ID', cmb_bank.EditValue, []) then
    qry_PaymentCHECKNO.Value  := brw_BankCHECKSERIESNO.Value;
  end;
end;

procedure Tf_PaymentTemp.cxGridDBTableView1NETAMOUNTPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  if DisplayValue <=0 then
  begin
    MessageDlg('Amount should be greater than 0', mtError, [mbOK], 0);
    DisplayValue  := 0;
  end
  else
  begin
    if DisplayValue > (dm_PM.tb_PaymentDetailAMOUNT.Value - dm_PM.tb_PaymentDetailPAIDAMNT.Value) then
    begin
      MessageDlg('Amount should not be greater than amount due!', mtError, [mbOK], 0);
      DisplayValue  := (dm_PM.tb_PaymentDetailAMOUNT.Value - dm_PM.tb_PaymentDetailPAIDAMNT.Value);
    end;
  end;
end;

procedure Tf_PaymentTemp.DeleteExecute(Sender: TObject);
begin
  with dm_PM do
  begin
    if MessageDlg('Continue to delete '+tb_PaymentDetailREFID.AsString + ' from the list?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      if tb_PaymentDetailID.Value > 0 then
      begin
        qry_PaymentDetail.Close;
        qry_PaymentDetail.SQL[2] := 'WHERE ID = :ID';
        qry_PaymentDetail.ParamByName('ID').Value  := tb_PaymentDetailID.Value;
        qry_PaymentDetail.Open();

        if qry_PaymentDetail.RecordCount > 0 then
        begin
          qry_PaymentDetail.Edit;
          qry_PaymentDetailCANCELLED.Value             := True;
          qry_PaymentDetailCANCELLEDDATETIME.Value     := userid;
          qry_PaymentDetailCANCELLEDBYID.Value         := userid;
          qry_PaymentDetail.Post;
          qry_PaymentDetail.ApplyUpdates();
        end;
      end;
      tb_PaymentDetail.Delete;
      UIExecute(nil);
    end;
  end;
end;

procedure Tf_PaymentTemp.FormShow(Sender: TObject);
begin
  with dm_PM do
  begin
    brw_Vendor.Close;
    brw_Vendor.SQL[2] := 'WHERE CANCELLED = FALSE';
    brw_Vendor.Open();

    brw_Bank.Close;
    brw_Bank.SQL[2]   := 'WHERE CANCELLED = FALSE';
    brw_Bank.Open();

    cmb_vendor.SetFocus;

    posted  := qry_PaymentPOSTED.Value;

    readonly(qry_PaymentPOSTED.Value);
    if not qry_PaymentPOSTED.Value then
    manageui;
  end;

end;

procedure Tf_PaymentTemp.LoadExecute(Sender: TObject);
begin
  with dm_PM do
  begin
    if qry_PaymentVENDORID.Value > 0 then
    begin
      brw_RR.Close;
      brw_RR.SQL[2] := 'WHERE VENDORID = :VENDORID AND POSTED = TRUE AND CANCELLED = FALSE';
      brw_RR.ParamByName('VENDORID').Value  := qry_PaymentVENDORID.Value;
      brw_RR.Open();

      if brw_RR.RecordCount > 0 then
      begin
        brw_RR.First;
        while not brw_RR.Eof do
        begin
          brw_PaidPO.Close;
          brw_PaidPO.SQL[4] := 'WHERE PAYMENT_HEADER.VENDORID = :VENDORID AND IR_HEADER.SOURCE = :SOURCE AND PAYMENT_DETAIL.REFID = :REFID AND PAYMENT_DETAIL.CANCELLED = FALSE AND PAYMENT_HEADER.CANCELLED = FALSE';
          brw_PaidPO.ParamByName('SOURCE').Value    := 'PO';
          brw_PaidPO.ParamByName('REFID').Value     := brw_RRID.Value;
          brw_PaidPO.ParamByName('VENDORID').Value  := qry_PaymentVENDORID.Value;
          brw_PaidPO.Open();

          if brw_RRNETAMNT.Value > brw_PaidPOPAIDAMNT.Value then
          begin
            if not tb_PaymentDetail.Locate('REFID', brw_RRID.AsString, []) then
            tb_PaymentDetail.Append
            else
            tb_PaymentDetail.Edit;

            tb_PaymentDetailREFID.Value     := brw_RRID.Value;
            tb_PaymentDetailINVOICE.Value   := brw_RRINVOICE.Value;
            tb_PaymentDetailREFDATE.Value   := brw_RRIRDATE.Value;
            tb_PaymentDetailAMOUNT.Value    := brw_RRNETAMNT.Value;
            tb_PaymentDetailPAIDAMNT.Value  := brw_PaidPOPAIDAMNT.Value;
            tb_PaymentDetail.Post;
          end;
          brw_RR.Next;
        end;
        tb_PaymentDetail.First;
      end;
    end;
  end;
end;

function Tf_PaymentTemp.manageui: Boolean;
begin
  with dm_PM do
  begin

    date_date.Style.BorderColor     := $00121212;
    if qry_PaymentPAYDATE.IsNull then
    date_date.Style.BorderColor     := clRed;

    cmb_vendor.Style.BorderColor     := $00121212;
    if qry_PaymentVENDORID.IsNull then
    cmb_vendor.Style.BorderColor    := clRed;

    txt_notes.Style.BorderColor   := $00121212;
    if (qry_PaymentNOTES.IsNull) or (Trim(qry_PaymentNOTES.Value) = '')  then
    txt_notes.Style.BorderColor := clRed;

    cmb_bank.Style.BorderColor     := $00121212;
    txt_checkno.Style.BorderColor   := $00121212;
    date_checkdate.Style.BorderColor     := $00121212;
    if qry_PaymentPAYMENTMODE.Value = 'CHECK' then
    begin
      if qry_PaymentBANKID.IsNull then
      cmb_bank.Style.BorderColor    := clRed;

      if (qry_PaymentCHECKNO.IsNull) then
      txt_checkno.Style.BorderColor := clRed;

      if qry_PaymentCHECKDATE.IsNull then
      date_checkdate.Style.BorderColor     := clRed;
    end;

    if ((qry_PaymentNETAMNT.Value = 0) or (qry_PaymentNETAMNT.IsNull)) or (cmb_bank.Style.BorderColor = clRed) or (date_date.Style.BorderColor = clRed) or (cmb_vendor.Style.BorderColor = clRed) or (txt_notes.Style.BorderColor = clRed) or (txt_checkno.Style.BorderColor = clRed) or (date_checkdate.Style.BorderColor = clRed) or (tb_PaymentDetail.RecordCount = 0) then
    btnSave.Enabled := False
    else
    btnSave.Enabled := True;

    Result  := btnSave.Enabled;
  end;
end;

procedure Tf_PaymentTemp.PrintExecute(Sender: TObject);
begin
  with dm_PM do
  begin

    qry_company.Close;
    qry_company.SQL[2]  := 'WHERE ID = 1';
    qry_company.Open();

    brw_Emp.Close;
    brw_Emp.SQL[2]   := 'WHERE USERID = :ID';
    brw_Emp.ParamByName('ID').Value := qry_PaymentCREATEDBYID.Value;
    brw_Emp.Open();

    f_reports := Tf_Reports.Create(Self);
    TfrxMemoView(f_Reports.rep_Payment.FindObject('bank')).Visible      := qry_PaymentPAYMENTMODE.Value = 'CHECK';
    TfrxMemoView(f_Reports.rep_Payment.FindObject('lblbank')).Visible   := qry_PaymentPAYMENTMODE.Value = 'CHECK';
    TfrxMemoView(f_Reports.rep_Payment.FindObject('ptbank')).Visible    := qry_PaymentPAYMENTMODE.Value = 'CHECK';
    TfrxMemoView(f_Reports.rep_Payment.FindObject('checkno')).Visible   := qry_PaymentPAYMENTMODE.Value = 'CHECK';
    TfrxMemoView(f_Reports.rep_Payment.FindObject('lblcheckno')).Visible:= qry_PaymentPAYMENTMODE.Value = 'CHECK';
    TfrxMemoView(f_Reports.rep_Payment.FindObject('ptcheckno')).Visible := qry_PaymentPAYMENTMODE.Value = 'CHECK';
    TfrxMemoView(f_Reports.rep_Payment.FindObject('check')).Visible     := qry_PaymentPAYMENTMODE.Value = 'CHECK';
    TfrxMemoView(f_Reports.rep_Payment.FindObject('ptcheck')).Visible   := qry_PaymentPAYMENTMODE.Value = 'CHECK';
    TfrxMemoView(f_Reports.rep_Payment.FindObject('lblcheck')).Visible  := qry_PaymentPAYMENTMODE.Value = 'CHECK';
    f_Reports.rep_Payment.ShowReport(True);
  end;
end;

procedure Tf_PaymentTemp.readonly(flag: Boolean);
begin
  with dm_PM do
  begin
    cxGridDBTableView1NETAMOUNT.Options.Editing := not flag;
    rad_paymode.Properties.ReadOnly             := flag;
    cmb_bank.Properties.ReadOnly                := flag;
    txt_notes.Properties.ReadOnly               := flag;
    date_date.Properties.ReadOnly               := flag;
    txt_checkno.Properties.ReadOnly             := flag;
    date_checkdate.Properties.ReadOnly          := flag;
    btnLoad.Enabled                             := not flag;
    Delete1.Visible                             := not flag;
    cmb_vendor.Properties.ReadOnly              := qry_Payment.State <> dsInsert;

    cmb_bank.Enabled        := qry_PaymentPAYMENTMODE.Value = 'CHECK';
    txt_checkno.Enabled     := qry_PaymentPAYMENTMODE.Value = 'CHECK';
    date_checkdate.Enabled  := qry_PaymentPAYMENTMODE.Value = 'CHECK';

    if posted then
    btnSave.Enabled       := not flag
    else
    btnSave.Enabled       := True;

    if dm_PM.qry_Payment.State = dsInsert then
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

procedure Tf_PaymentTemp.txt_checknoPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  with dm_PM do
  begin
    if DisplayValue > 0 then
    begin
      brw_PaidVoucher.Close;
      brw_PaidVoucher.SQL[2]  := 'WHERE ID <> :ID AND CHECKNO = :CHECKNO AND BANKID = :BANKID AND CANCELLED = FALSE';
      brw_PaidVoucher.ParamByName('CHECKNO').Value  := DisplayValue;
      brw_PaidVoucher.ParamByName('BANKID').Value   := qry_PaymentBANKID.Value;
      brw_PaidVoucher.ParamByName('ID').Value       := qry_PaymentID.Value;
      brw_PaidVoucher.Open();

      if brw_PaidVoucher.RecordCount > 0 then
      begin
        DisplayValue  := qry_PaymentCHECKNO.Value;
        MessageDlg('Check No. is already used with Voucher '+brw_PaidVoucherID.AsString, mtError, [mbOK], 0);
      end;
    end;
  end;
end;

procedure Tf_PaymentTemp.UIExecute(Sender: TObject);
var amnt: Variant;
begin

  with dm_PM do
  begin
    if (qry_Payment.State = dsEdit) or (qry_Payment.State = dsInsert) then
    begin
      tb_PaymentDetail.Append;
      tb_PaymentDetail.Delete;

      amnt  := cxGridDBTableView1.DataController.Summary.FooterSummaryValues[1];
      if tb_PaymentDetail.RecordCount > 0 then
      qry_PaymentNETAMNT.Value := StrToFloat(VarToStr(amnt))
      else
      qry_PaymentNETAMNT.Value := 0;
    end;
  end;

  readonly(dm_PM.qry_PaymentPOSTED.Value);
  if not dm_PM.qry_PaymentPOSTED.Value then
  manageui;
end;

end.
