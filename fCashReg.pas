unit fCashReg;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
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
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxClasses,
  System.ImageList, Vcl.ImgList, acAlphaImageList, System.Actions, Vcl.ActnList,
  Vcl.StdCtrls, Vcl.ExtCtrls, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridCustomView, cxGrid, Vcl.ComCtrls,
  Vcl.ToolWin, scControls, cxContainer, scGPFontControls, cxLabel, scGPControls,
  sButton, cxDBLabel, cxTextEdit, Vcl.Mask, cxMaskEdit, cxSpinEdit, frxClass,
  scGPPagers, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  dxLayoutContainer, cxGridViewLayoutContainer, cxGridLayoutView,
  cxGridDBLayoutView, cxGridCustomLayoutView;

type
  Tf_CashReg = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    sCharImageList1: TsCharImageList;
    Panel4: TPanel;
    cxLabel2: TcxLabel;
    Panel9: TPanel;
    ActionList1: TActionList;
    Cash: TAction;
    JobOrder: TAction;
    ds_detail: TDataSource;
    cxStyleRepository1: TcxStyleRepository;
    header_style: TcxStyle;
    Panel11: TPanel;
    Panel12: TPanel;
    pan_item: TPanel;
    lbl_POS: TcxLabel;
    StatusBar1: TStatusBar;
    ds_cashreg: TDataSource;
    AddItem: TAction;
    Cancel: TAction;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1DESCRIPTION: TcxGridDBColumn;
    cxGrid1DBTableView1UNIT: TcxGridDBColumn;
    cxGrid1DBTableView1QTY: TcxGridDBColumn;
    cxGrid1DBTableView1PRICE: TcxGridDBColumn;
    cxGrid1DBTableView1AMOUNT: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    Panel7: TPanel;
    cxLabel13: TcxLabel;
    Panel8: TPanel;
    Splitter7: TSplitter;
    Splitter8: TSplitter;
    Splitter4: TSplitter;
    Splitter1: TSplitter;
    Splitter5: TSplitter;
    Splitter6: TSplitter;
    Splitter9: TSplitter;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    lbl_Card: TcxLabel;
    lbl_Check: TcxLabel;
    lbl_Change: TcxLabel;
    lbl_Cash: TcxLabel;
    Panel10: TPanel;
    btnSummary: TscGPButton;
    btnPay: TscGPButton;
    pan_cust: TPanel;
    Splitter13: TSplitter;
    scGPCharGlyphButton2: TscGPCharGlyphButton;
    lblCustomer: TcxLabel;
    cxDBLabel1: TcxDBLabel;
    Panel5: TPanel;
    Splitter2: TSplitter;
    cxLabel3: TcxLabel;
    lbl_Subtotal: TcxLabel;
    Panel6: TPanel;
    Splitter3: TSplitter;
    cxLabel4: TcxLabel;
    lbl_Discount: TcxLabel;
    Panel3: TPanel;
    lbl_Total: TcxLabel;
    scGPCharGlyphButton1: TscGPCharGlyphButton;
    cxLabel17: TcxLabel;
    Panel14: TPanel;
    cxLabel5: TcxLabel;
    cxGrid1DBTableView1ONHAND: TcxGridDBColumn;
    Panel15: TPanel;
    btnSelect: TscGPButton;
    btnDiscount: TscGPButton;
    Discount: TAction;
    SelectPayment: TAction;
    Post: TAction;
    Void: TAction;
    Delete: TAction;
    lbl_DiscPercent: TcxLabel;
    FocusQty: TAction;
    Splitter12: TSplitter;
    cxLabel14: TcxLabel;
    lbl_TotalAmnt: TcxLabel;
    Summary: TAction;
    CloseForm: TAction;
    Timer1: TTimer;
    frxReport1: TfrxReport;
    DayOpen: TAction;
    Panel16: TPanel;
    btnClose: TscGPButton;
    btnVoid: TscGPButton;
    Panel17: TPanel;
    btnOpen: TscGPButton;
    Splitter14: TSplitter;
    DayEnd: TAction;
    btnCash: TscGPButton;
    split_cash: TSplitter;
    btnJO: TscGPButton;
    split_jo: TSplitter;
    btnDelete: TscGPButton;
    Splitter11: TSplitter;
    btnCancel: TscGPButton;
    Splitter10: TSplitter;
    btnEnd: TscGPButton;
    Splitter15: TSplitter;
    page_detail: TscGPPageControl;
    scGPPageControlPage3: TscGPPageControlPage;
    scGPPageControlPage1: TscGPPageControlPage;
    pan_search: TPanel;
    cxLabel1: TcxLabel;
    cxLabel10: TcxLabel;
    txt_code: TcxTextEdit;
    cxLabel11: TcxLabel;
    txt_price: TcxTextEdit;
    cxLabel12: TcxLabel;
    txt_desc: TcxTextEdit;
    btnItem: TscGPButton;
    txt_qty: TcxSpinEdit;
    Panel13: TPanel;
    ds_JO: TDataSource;
    jo_header: TcxStyle;
    Panel18: TPanel;
    cxLabel15: TcxLabel;
    lblBalance: TcxLabel;
    lblPaid: TcxLabel;
    lblPayable: TcxLabel;
    cxLabel20: TcxLabel;
    S: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1ID: TcxGridDBColumn;
    cxGridDBTableView1PAYTPE: TcxGridDBColumn;
    cxGridDBTableView1NETAMNT: TcxGridDBColumn;
    cxGridDBTableView1DISCOUNT: TcxGridDBColumn;
    cxGridDBTableView1CASHAMNT: TcxGridDBColumn;
    cxGridDBTableView1CARDAMNT: TcxGridDBColumn;
    cxGridDBTableView1CHECKAMNT: TcxGridDBColumn;
    cxGridDBTableView1CHANGEAMNT: TcxGridDBColumn;
    cxGridDBTableView1PAIDAMNT: TcxGridDBColumn;
    cxGridDBTableView1SALESDATE: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxLabel16: TcxLabel;
    btnDisburse: TscGPButton;
    Splitter16: TSplitter;
    CashDisburse: TAction;
    cxGrid1DBTableView2: TcxGridDBTableView;
    ds_cashdis: TDataSource;
    cxGrid1DBTableView2VOUCHERNO: TcxGridDBColumn;
    cxGrid1DBTableView2DESCRIPTION: TcxGridDBColumn;
    cxGrid1DBTableView2REFNO: TcxGridDBColumn;
    cxGrid1DBTableView2INVOICE: TcxGridDBColumn;
    cxGrid1DBTableView2REFDATE: TcxGridDBColumn;
    cxGrid1DBTableView2NETAMNT: TcxGridDBColumn;
    cxGrid1DBTableView2DATE: TcxGridDBColumn;
    cmb_unit: TcxLookupComboBox;
    ds_unit: TDataSource;
    btnCashIn: TscGPButton;
    Splitter17: TSplitter;
    CashIn: TAction;
    cxGrid1DBLayoutView1Group_Root: TdxLayoutGroup;
    cxGrid1DBLayoutView1: TcxGridDBLayoutView;
    ds_cashin: TDataSource;
    cxGrid1DBLayoutView1LayoutItem3: TcxGridLayoutItem;
    cxGrid1DBLayoutView1RECEIVEDFROM: TcxGridDBLayoutViewItem;
    cxGrid1DBLayoutView1LayoutItem4: TcxGridLayoutItem;
    cxGrid1DBLayoutView1REMARKS: TcxGridDBLayoutViewItem;
    cxGrid1DBLayoutView1LayoutItem5: TcxGridLayoutItem;
    cxGrid1DBLayoutView1REFDATE: TcxGridDBLayoutViewItem;
    cxGrid1DBLayoutView1LayoutItem11: TcxGridLayoutItem;
    cxGrid1DBLayoutView1AMOUNT: TcxGridDBLayoutViewItem;
    CashOut: TAction;
    cxGrid1DBLayoutView2Group_Root: TdxLayoutGroup;
    cxGrid1DBLayoutView2: TcxGridDBLayoutView;
    ds_cashout: TDataSource;
    cxGrid1DBLayoutView2LayoutItem3: TcxGridLayoutItem;
    cxGrid1DBLayoutView2PAYEE: TcxGridDBLayoutViewItem;
    cxGrid1DBLayoutView2LayoutItem4: TcxGridLayoutItem;
    cxGrid1DBLayoutView2REMARKS: TcxGridDBLayoutViewItem;
    cxGrid1DBLayoutView2LayoutItem5: TcxGridLayoutItem;
    cxGrid1DBLayoutView2REFDATE: TcxGridDBLayoutViewItem;
    cxGrid1DBLayoutView2LayoutItem11: TcxGridLayoutItem;
    cxGrid1DBLayoutView2AMOUNT: TcxGridDBLayoutViewItem;
    DateConfig: TAction;
    ReOpenDay: TAction;
    procedure CashExecute(Sender: TObject);
    procedure JobOrderExecute(Sender: TObject);
    procedure SalesInvoiceExecute(Sender: TObject);
    procedure CancelExecute(Sender: TObject);
    procedure AddItemExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxGrid1DBTableView1QTYPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure cxGrid1Exit(Sender: TObject);
    procedure DiscountExecute(Sender: TObject);
    procedure SelectPaymentExecute(Sender: TObject);
    procedure VoidExecute(Sender: TObject);
    procedure PostExecute(Sender: TObject);
    procedure DeleteExecute(Sender: TObject);
    procedure txt_codeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure txt_qtyPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure cxGrid1DBTableView1FocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure FocusQtyExecute(Sender: TObject);
    procedure SummaryExecute(Sender: TObject);
    procedure CloseFormExecute(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure txt_descKeyPress(Sender: TObject; var Key: Char);
    procedure DayOpenExecute(Sender: TObject);
    procedure DayEndExecute(Sender: TObject);
    procedure CashDisburseExecute(Sender: TObject);
    procedure CashInExecute(Sender: TObject);
    procedure CashOutExecute(Sender: TObject);
    procedure DateConfigExecute(Sender: TObject);
    procedure ReOpenDayExecute(Sender: TObject);
  private
    { Private declarations }
    const CashAmnt : array[0..11] of Real = (1000, 500, 200, 100, 50, 20, 10, 5, 1, 0.25, 0.1, 0.05);
    function posDay_active: Boolean;
    procedure manage_disburse_ui;
    procedure user_rights;
    procedure manageui;
    procedure reset;
    procedure reset_item_desc;
    procedure search;
    procedure display_items_to_text;
    procedure reset_date_config;
  public
    { Public declarations }
    procedure preview_cash_summary(id: Integer; reprint: Boolean);
    procedure add_item;
    function compute_total: Boolean;
  end;

var
  f_CashReg: Tf_CashReg;

implementation

{$R *.dfm}

uses dmPM, fCustNew, fCashRegTemp, fCashDisc, fSelectPayment, fCashSummary,
  fCustTemp, fReports, fCashFund, fVoid, fCashDisburse, fCashIn, fCashOut,
  fDateConfig, DateUtils;

procedure Tf_CashReg.AddItemExecute(Sender: TObject);
begin
  with dm_PM do
  begin
    f_CashRegTemp := Tf_CashRegTemp.Create(Self);
    f_CashRegTemp.txt_search.Text := Trim(txt_desc.Text);
    f_CashRegTemp.ShowModal;
  end;
end;

procedure Tf_CashReg.add_item;
begin
  with dm_PM do
  begin
     if brw_itemsONHAND.Value > 0 then
     begin
        if qry_CashReg.Active then
        begin
          if qry_CashReg.State = dsInsert then
          begin
            if not tb_CashDetail.Locate('ITEMID', brw_itemsID.Value, []) then
            begin
              tb_CashDetail.Append;
              tb_CashDetailCODE.Value         := brw_itemsCODE.AsString;
              tb_CashDetailDESCRIPTION.Value  := brw_itemsDESCRIPTION.AsString;
              tb_CashDetailITEMID.Value       := brw_itemsID.Value;
              tb_CashDetailQTY.Value          := 1;
              tb_CashDetailPRICE.Value        := brw_itemsPRICE.Value;
              tb_CashDetailUNIT.Value         := brw_itemsINVUNIT.Value;
              tb_CashDetailONHAND.Value       := brw_itemsONHAND.Value;
              tb_CashDetail.Post;

              tb_CashDetail.Append;
              tb_CashDetail.Delete;

              compute_total;
            end
            else
              MessageDlg('Selected item is already on the list!', mtInformation, [mbOK], 0);
          end;
        end;
     end
     else
      MessageDlg('Item '+brw_itemsDESCRIPTION.AsString + ' has 0 onhand!. Cannot proceed at the moment.', mtInformation, [mbOK], 0);
  end;
end;

procedure Tf_CashReg.CancelExecute(Sender: TObject);
begin
  compute_total;
  reset;
end;

procedure Tf_CashReg.CashDisburseExecute(Sender: TObject);
begin
  with dm_PM do
  begin
    qry_CashReg.Close;
    qry_CashReg.SQL[2] := 'WHERE ID = 0';
    qry_CashReg.Open();

    qry_CashReg.Append;
    qry_CashRegSOURCE.Value     := 'DISBURSE';

    cxGrid1Level1.GridView := cxGrid1DBTableView2;

    manageui;

    page_detail.Visible := False;

    f_CashDisburse := Tf_CashDisburse.Create(Self);
    if f_CashDisburse.ShowModal = mrOk then
    begin
      if tb_CashDisburse.RecordCount > 0 then
      begin
        manage_disburse_ui;

        qry_CashRegREFID.Value        := tb_CashDisburseNO.Value;
        qry_CashRegCUSTOMER.Value     := tb_CashDisbursePAYEE.AsString;
        qry_CashRegDISBURSETYPE.Value := tb_CashDisburseDISBURSETYPE.Value;

        tb_PayDisburse.Close;
        tb_PayDisburse.Open;

        if tb_CashDisburseDISBURSETYPE.Value = 'PAYMENT' then
        begin
          qry_PaymentDetail.Close;
          qry_PaymentDetail.SQL[2]  := 'WHERE HEADERID = :ID AND CANCELLED = FALSE';
          qry_PaymentDetail.ParamByName('ID').Value := tb_CashDisburseNO.Value;
          qry_PaymentDetail.Open();

          if qry_PaymentDetail.RecordCount > 0 then
          begin
            qry_PaymentDetail.First;
            while not qry_PaymentDetail.Eof do
            begin
              tb_PayDisburse.Append;
              tb_PayDisburseVOUCHERNO.Value     := qry_PaymentDetailHEADERID.Value;
              tb_PayDisburseREFNO.Value         := qry_PaymentDetailREFID.Value;
              tb_PayDisburseREFDATE.Value       := qry_PaymentDetailREFDATE.Value;
              tb_PayDisburseINVOICE.Value       := qry_PaymentDetailINVOICE.Value;
              tb_PayDisburseNETAMNT.Value       := qry_PaymentDetailNETAMOUNT.Value;
              tb_PayDisburseDATE.Value          := tb_CashDisburseDATE.Value;
              tb_PayDisburseDISBURSETYPE.Value  := tb_CashDisburseDISBURSETYPE.Value;
              tb_PayDisburse.Post;

              qry_PaymentDetail.Next;
            end;
            tb_PayDisburse.First;
          end;
        end
        else if tb_CashDisburseDISBURSETYPE.Value = 'PETTY CASH' then
        begin
          qry_PettyDetail.Close;
          qry_PettyDetail.SQL[2]  := 'WHERE HEADERID = :ID AND CANCELLED = FALSE';
          qry_PettyDetail.ParamByName('ID').Value := tb_CashDisburseNO.Value;
          qry_PettyDetail.Open();

          if qry_PettyDetail.RecordCount > 0 then
          begin
            qry_PettyDetail.First;
            while not qry_PettyDetail.Eof do
            begin
              tb_PayDisburse.Append;
              tb_PayDisburseVOUCHERNO.Value     := qry_PettyDetailHEADERID.Value;
              tb_PayDisburseREFNO.Value         := qry_PettyDetailREFID.Value;
              tb_PayDisburseREFDATE.Value       := qry_PettyDetailREFDATE.Value;
              tb_PayDisburseNETAMNT.Value       := qry_PettyDetailNETAMNT.Value;
              tb_PayDisburseDATE.Value          := tb_CashDisburseDATE.Value;
              tb_PayDisburseDISBURSETYPE.Value  := tb_CashDisburseDISBURSETYPE.Value;
              tb_PayDisburse.Post;

              qry_PettyDetail.Next;
            end;
            tb_PayDisburse.First;
          end;
        end
        else if tb_CashDisburseDISBURSETYPE.Value = 'EXPENSE' then
        begin
          qry_ExpenseDetail.Close;
          qry_ExpenseDetail.SQL[2]  := 'WHERE HEADERID = :ID AND CANCELLED = FALSE';
          qry_ExpenseDetail.ParamByName('ID').Value := tb_CashDisburseNO.Value;
          qry_ExpenseDetail.Open();

          if qry_ExpenseDetail.RecordCount > 0 then
          begin
            qry_ExpenseDetail.First;
            while not qry_ExpenseDetail.Eof do
            begin
              tb_PayDisburse.Append;
              tb_PayDisburseVOUCHERNO.Value     := qry_ExpenseDetailHEADERID.Value;
              tb_PayDisburseDESCRIPTION.Value   := qry_ExpenseDetailDESCRIPTION.Value;
              tb_PayDisburseNETAMNT.Value       := qry_ExpenseDetailAMOUNT.Value;
              tb_PayDisburseDATE.Value          := tb_CashDisburseDATE.Value;
              tb_PayDisburseDISBURSETYPE.Value  := tb_CashDisburseDISBURSETYPE.Value;
              tb_PayDisburse.Post;

              qry_ExpenseDetail.Next;
            end;
            tb_PayDisburse.First;
          end;
        end;
      end;
    end;
    compute_total;
  end;
end;

procedure Tf_CashReg.CashExecute(Sender: TObject);
begin
  with dm_PM do
  begin
    qry_CashReg.Close;
    qry_CashReg.SQL[2] := 'WHERE ID = 0';
    qry_CashReg.Open();

    qry_CashReg.Append;
    qry_CashRegSOURCE.Value     := 'CASH';
    manageui;

    cxGrid1Level1.GridView := cxGrid1DBTableView1;

    page_detail.Visible := True;
    page_detail.Tabs[0].Visible := True;
    page_detail.Tabs[1].Visible := False;
    page_detail.TabIndex        := 0;

    pan_search.Visible        := True;
    txt_code.SetFocus;

    tb_CashDetail.Close;
    tb_CashDetail.Open;

    f_CustNew := Tf_CustNew.Create(Self);   
    if f_CustNew.ShowModal = mrOk then
    begin      
      compute_total;
    end;
  end;
end;

procedure Tf_CashReg.CashInExecute(Sender: TObject);
begin
  with dm_PM do
  begin
    qry_dateconfig.Close;
    qry_dateconfig.Open();

    if (not qry_dateconfigACTIVE.Value) and (not qry_dateconfigAUTONOW.Value) then
    DateConfigExecute(nil);

    qry_CashReg.Close;
    qry_CashReg.SQL[2] := 'WHERE ID = 0';
    qry_CashReg.Open();

    qry_CashReg.Append;
    qry_CashRegSOURCE.Value     := 'IN';

    manageui;

    cxGrid1Level1.GridView := cxGrid1DBLayoutView1;

    qry_CashInDetail.Close;
    qry_CashInDetail.SQL[2] := 'WHERE ID = 0';
    qry_CashInDetail.Open();

    qry_CashInDetail.Append;
    if qry_dateconfigAUTONOW.Value then
    qry_CashInDetailREFDATE.Value         := Now
    else
    begin
      qry_CashInDetailREFDATE.Value         := qry_dateconfigDATE.Value;
    end;

    page_detail.Visible := False;
    page_detail.Tabs[0].Visible := True;
    page_detail.Tabs[1].Visible := False;
    page_detail.TabIndex        := 0;

    pan_search.Visible        := False;

    f_CashIn := Tf_CashIn.Create(Self);
    if f_CashIn.ShowModal = mrOk then
    begin
      qry_CashRegCUSTOMER.Value      := qry_CashInDetailRECEIVEDFROM.AsString;
      qry_CashRegREPLENISHMENT.Value := qry_CashInDetailREPLENISHMENT.Value;
    end;
    compute_total;
  end;
end;

procedure Tf_CashReg.CashOutExecute(Sender: TObject);
begin
 with dm_PM do
  begin

    brw_Emp.Close;
    brw_Emp.SQL[2]  := 'WHERE CANCELLED = FALSE';
    brw_Emp.Open();

    brw_ExpenseType.Close;
    brw_ExpenseType.SQL[2]  := 'WHERE CANCELLED = FALSE';
    brw_ExpenseType.Open();

    qry_dateconfig.Close;
    qry_dateconfig.Open();

    if (not qry_dateconfigACTIVE.Value) and (not qry_dateconfigAUTONOW.Value) then
    DateConfigExecute(nil);

    qry_CashReg.Close;
    qry_CashReg.SQL[2] := 'WHERE ID = 0';
    qry_CashReg.Open();

    qry_CashReg.Append;
    qry_CashRegSOURCE.Value     := 'OUT';

    manageui;

    cxGrid1Level1.GridView := cxGrid1DBLayoutView2;

    qry_CashOutDetail.Close;
    qry_CashOutDetail.SQL[2] := 'WHERE ID = 0';
    qry_CashOutDetail.Open();

    qry_CashOutDetail.Append;
    if qry_dateconfigAUTONOW.Value then
    qry_CashOutDetailREFDATE.Value         := Now
    else
    qry_CashOutDetailREFDATE.Value    :=    qry_dateconfigDATE.Value;

    page_detail.Visible := False;
    page_detail.Tabs[0].Visible := True;
    page_detail.Tabs[1].Visible := False;
    page_detail.TabIndex        := 0;

    pan_search.Visible        := False;

    f_CashOut := Tf_CashOut.Create(Self);
    f_CashOut.pan_payroll.Visible   := False;
    f_CashOut.cmb_exptype.ItemIndex := 0;
    if f_CashOut.ShowModal = mrOk then
    begin

    end;
    qry_CashRegCUSTOMER.Value := qry_CashOutDetailPAYEE.Value;
    compute_total;
  end;
end;

procedure Tf_CashReg.CloseFormExecute(Sender: TObject);
begin
  reset;
  Close;
end;

function Tf_CashReg.compute_total: Boolean;
var subtotal: Variant;
begin
  with dm_PM do
  begin
    if (tb_CashDetail.Active) or (tb_PayDisburse.Active) or (qry_CashInDetail.Active) or (qry_CashOutDetail.Active) then
    begin

      if (qry_CashReg.State = dsInsert) or (qry_CashReg.State = dsedit) then
      begin
        if qry_CashRegSOURCE.Value = 'DISBURSE' then
        subtotal  := cxGrid1DBTableView2.DataController.Summary.FooterSummaryValues[0]
        else if qry_CashRegSOURCE.Value = 'IN' then
        subtotal  := qry_CashInDetailAMOUNT.Value
        else if qry_CashRegSOURCE.Value = 'OUT' then
        subtotal  := qry_CashOutDetailAMOUNT.Value
        else
        subtotal := cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[1];

        if (subtotal = null) then
        subtotal  := 0;
        //if (qry_CashRegSOURCE.Value <> 'JO') then
        qry_CashRegGROSSAMNT.Value        := subtotal;
//        else
//        qry_CashRegGROSSAMNT.Value        := (qry_CashRegBALAMNT.Value - qry_CashRegDISCOUNT.Value);

        lbl_Subtotal.Caption              := FormatCurr('###,###,##0.00', qry_CashRegGROSSAMNT.Value);
        lbl_Discount.Caption              := '- '+FormatCurr('###,###,##0.00', qry_CashRegDISCOUNT.Value);
        if qry_CashRegDISCPERCENT.Value > 0 then
        lbl_DiscPercent.Caption := ' ('+Trim(FormatFloat('0.##', qry_CashRegDISCPERCENT.Value))+'%)'
        else
        lbl_DiscPercent.Caption := '';

        if qry_CashRegSOURCE.Value = 'CASH' then
        qry_CashRegNETAMNT.Value          := (qry_CashRegGROSSAMNT.Value - qry_CashRegDISCOUNT.Value)
        else if qry_CashRegSOURCE.Value = 'JO' then
        qry_CashRegNETAMNT.Value          := (qry_CashRegBALAMNT.Value)//  - qry_CashRegDISCOUNT.Value
        else
        qry_CashRegNETAMNT.Value          := qry_CashRegGROSSAMNT.Value;

        lbl_Total.Caption                 := FormatCurr('###,###,##0.00', qry_CashRegNETAMNT.Value);

        if (qry_CashRegSOURCE.Value = 'IN') or (qry_CashRegSOURCE.Value = 'OUT') then
        begin
          qry_CashRegPAYMENTTYPE.Value  := 'FP';
          if (qry_CashRegSOURCE.Value = 'OUT') then
          qry_CashRegCASHAMNT.Value     := qry_CashRegNETAMNT.Value;
        end;

        lbl_Cash.Caption                  := FormatCurr('###,###,##0.00', qry_CashRegCASHAMNT.Value);
        lbl_Card.Caption                  := FormatCurr('###,###,##0.00', qry_CashRegCARDAMNT.Value);
        lbl_Check.Caption                 := FormatCurr('###,###,##0.00', qry_CashRegCHECKAMNT.Value);
        lbl_TotalAmnt.Caption             := FormatCurr('###,###,##0.00', qry_CashRegTOTALAMNT.Value);

        if qry_CashRegPAYMENTTYPE.Value = 'FP' then
        qry_CashRegCHANGEAMNT.Value       := qry_CashRegTOTALAMNT.Value - qry_CashRegNETAMNT.Value
        else
        qry_CashRegCHANGEAMNT.Value       := 0;

        if qry_CashRegCHANGEAMNT.Value > -1 then
        lbl_Change.Caption                := FormatCurr('###,###,##0.00', qry_CashRegCHANGEAMNT.Value)
        else
        lbl_Change.Caption                := '-';

        if qry_CashRegTOTALAMNT.Value > 0 then
        begin
          if qry_CashRegPAYMENTTYPE.Value = 'FP' then
          begin
            if qry_CashRegCHANGEAMNT.Value >= 0 then
            Result  := True
            else
            Result  := False;
          end
          else
            Result  := True;
        end
        else
          Result  := False;

        Post.Enabled  := Result;
      end;
    end;
  end;

end;

procedure Tf_CashReg.cxGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  display_items_to_text;
end;

procedure Tf_CashReg.cxGrid1DBTableView1FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  display_items_to_text;
end;

procedure Tf_CashReg.cxGrid1DBTableView1QTYPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  if DisplayValue <= 0 then
  begin
    MessageDlg('Invalid Qty!', mtError, [mbOK], 0);
    DisplayValue := 1;
  end
  else if DisplayValue > dm_PM.tb_CashDetailONHAND.Value then
  begin
    MessageDlg('Qty cannot be greater than onhand.', mtError, [mbOK], 0);
    DisplayValue := dm_PM.tb_CashDetailONHAND.Value;
  end;

  compute_total;
end;

procedure Tf_CashReg.cxGrid1Exit(Sender: TObject);
begin
  compute_total;
end;

procedure Tf_CashReg.DateConfigExecute(Sender: TObject);
begin
  with dm_PM do
  begin
   if qry_dateconfig.Active then
   begin
    if not qry_dateconfigAUTONOW.Value then
    begin
      qry_dateconfig.Edit;
      qry_dateconfigDATE.Value := Now;
      qry_dateconfigACTIVE.Value  := False;

      f_DateConfig := Tf_DateConfig.Create(Self);
      if f_DateConfig.ShowModal = mrOk then
      begin
        qry_dateconfigACTIVE.Value := True;
        qry_dateconfig.Post;
        qry_dateconfig.ApplyUpdates();
      end;
    end;
   end;
  end;
end;

procedure Tf_CashReg.DayEndExecute(Sender: TObject);
var index: Integer;
    amnt: Variant;
begin
  with dm_PM do
  begin
    if MessageDlg('Please provide Cash Summary. Continue to Close POS Day?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin

      qry_dateconfig.Close;
      qry_dateconfig.Open();

      if (not qry_dateconfigACTIVE.Value) and (not qry_dateconfigAUTONOW.Value) then
      DateConfigExecute(nil);

      qry_POSDay.Close;
      qry_POSDay.SQL[2] := 'WHERE ISACTIVE = TRUE';
      qry_POSDay.Open();

      qry_POSDay.Edit;
      if qry_dateconfigAUTONOW.Value then
      qry_POSDayDATEENDED.Value     := Now
      else
      begin
        qry_POSDayDATEENDED.Value     := qry_dateconfigDATE.Value;
      end;

      qry_POSDayENDEDBY.Value       := userid;
      qry_POSDayISACTIVE.Value      := False;

      tb_CashFund.Close;
      tb_CashFund.Open;

      for index := 0 to Length(CashAmnt) -1 do
      begin
        tb_CashFund.Append;
        tb_CashFundCASH.Value := CashAmnt[index];
        tb_CashFundQTY.Value  := 0;
        tb_CashFund.Post;
      end;
      tb_CashFund.First;

      f_CashFund  := Tf_CashFund.Create(Self);
      f_CashFund.Caption  := 'Cash Count - Closing';
      if f_CashFund.ShowModal = mrOk then
      begin
        tb_CashFund.Append;
        tb_CashFund.Delete;

        amnt := f_CashFund.grid_funddetailDBBandedTableView1.DataController.Summary.FooterSummaryValues[0];
        if amnt >= 0 then
        begin
          if MessageDlg('Please review entered amount. Continue to save Cash Summary?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
          begin
            qry_POSDay.Post;
            qry_POSDay.ApplyUpdates();

            tb_CashFund.First;
            while not tb_CashFund.Eof do
            begin
              qry_CashEnd.Close;
              qry_CashEnd.SQL[2] := 'WHERE ID = 0';
              qry_CashEnd.Open();

              qry_CashEnd.Append;
              qry_CashEndPOSDAYID.Value   := qry_POSDayID.Value;
              qry_CashEndCASH.Value       := tb_CashFundCASH.Value;
              qry_CashEndQTY.Value        := tb_CashFundQTY.Value;
              qry_CashEndAMNT.Value       := tb_CashFundAMNT.Value;
              qry_CashEnd.Post;
              qry_CashEnd.ApplyUpdates();
              tb_CashFund.Next;
            end;
            preview_cash_summary(qry_POSDayID.Value, False);
            reset_date_config;
            posDay_active;
            reset;
          end;
        end
        else
          MessageDlg('Cannot close day with negative amount', mtError, [mbOK], 0);
      end;
    end;
  end;
end;

procedure Tf_CashReg.DayOpenExecute(Sender: TObject);
var index: Integer;
    amnt : Variant;
begin
  with dm_PM do
  begin
    if MessageDlg('Continue to Open Day?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin

      qry_dateconfig.Close;
      qry_dateconfig.Open();

      if (not qry_dateconfigACTIVE.Value) and (not qry_dateconfigAUTONOW.Value) then
      DateConfigExecute(nil);

      qry_POSDay.Close;
      qry_POSDay.SQL[2] := 'WHERE DATE BETWEEN :DATE1 and :DATE2';
      qry_POSDay.ParamByName('DATE1').Value  := FormatDateTime('yyyy-mm-dd', qry_dateconfigDATE.Value);
      qry_POSDay.ParamByName('DATE2').Value  := FormatDateTime('yyyy-mm-dd', qry_dateconfigDATE.Value);
      qry_POSDay.Open();

      if qry_POSDay.RecordCount > 0 then
      begin
        MessageDlg('Pos Day cannot be entered twice. Please reopen day (ctrl+r) to edit transactions.', mtInformation, [mbok], 0);
        reset_date_config;
        Exit;
      end;

      qry_POSDay.Close;
      qry_POSDay.SQL[2] := 'WHERE ID = 0';
      qry_POSDay.Open();

      qry_POSDay.Edit;

      if qry_dateconfigAUTONOW.Value then
      begin
        qry_POSDayDATE.Value          := Now;
        qry_POSDayDATEOPENED.Value    := Now;
      end
      else
      begin
        qry_POSDayDATE.Value          := qry_dateconfigDATE.Value;
        qry_POSDayDATEOPENED.Value    := qry_dateconfigDATE.Value;
      end;

      qry_POSDayOPENEDBY.Value      := userid;
      qry_POSDayISACTIVE.Value      := True;

      tb_CashFund.Close;
      tb_CashFund.Open;

      for index := 0 to Length(CashAmnt) -1 do
      begin
        tb_CashFund.Append;
        tb_CashFundCASH.Value := CashAmnt[index];
        tb_CashFundQTY.Value  := 0;
        tb_CashFund.Post;
      end;
      tb_CashFund.First;

      f_CashFund  := Tf_CashFund.Create(Self);
      f_CashFund.Caption  := 'Cash Count - Opening';
      if f_CashFund.ShowModal = mrOk then
      begin
        tb_CashFund.Append;
        tb_CashFund.Delete;

        amnt := f_CashFund.grid_funddetailDBBandedTableView1.DataController.Summary.FooterSummaryValues[0];
        if amnt >= 0 then
        begin
          if MessageDlg('Details will be reported at the end of the day. Continue to save cash fund?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
          begin
            qry_POSDay.Post;
            qry_POSDay.ApplyUpdates();

            tb_CashFund.First;
            while not tb_CashFund.Eof do
            begin
              qry_CashFund.Close;
              qry_CashFund.SQL[2] := 'WHERE ID = 0';
              qry_CashFund.Open();

              qry_CashFund.Append;
              qry_CashFundPOSDAYID.Value  := qry_POSDayID.Value;
              qry_CashFundCASH.Value      := tb_CashFundCASH.Value;
              qry_CashFundQTY.Value       := tb_CashFundQTY.Value;
              qry_CashFundAMNT.Value      := tb_CashFundAMNT.Value;
              qry_CashFund.Post;
              qry_CashFund.ApplyUpdates();
              tb_CashFund.Next;
            end;
            posDay_active;
            reset;
          end;
        end
        else
        begin
          MessageDlg('Cannot open day with negative amount', mtError, [mbOK], 0);
          reset_date_config;
        end;
      end
      else
      begin
        reset_date_config;
      end;

    end;
  end;
end;

procedure Tf_CashReg.DeleteExecute(Sender: TObject);
begin
  with dm_PM do
  begin
    if tb_CashDetail.RecordCount > 0 then
    begin
      tb_CashDetail.Delete;
      compute_total;
    end;
  end;
end;

procedure Tf_CashReg.DiscountExecute(Sender: TObject);
begin
  if dm_PM.qry_CashRegNETAMNT.Value > 0 then
  begin
    f_CashDisc := Tf_CashDisc.Create(Self);
    dm_PM.qry_CashReg.Edit;
    if f_CashDisc.ShowModal = mrOk then
    begin
      compute_total;
    end;
  end
  else
    MessageDlg('Net amount is 0. Cannot proceed to discount!', mtError, [mbOK], 0);
end;

procedure Tf_CashReg.display_items_to_text;
begin
  with dm_PM do
  begin
    if tb_CashDetail.Active then
    begin
      if pan_search.Visible then
      begin
        txt_code.Text       := tb_CashDetailCODE.AsString;
        txt_desc.Text       := tb_CashDetailDESCRIPTION.AsString;
        txt_qty.Value       := tb_CashDetailQTY.Value;
        cmb_unit.EditValue  := tb_CashDetailUNIT.Value;
        txt_price.Text      := Trim(FormatCurr('###,###,##0.00', tb_CashDetailPRICE.Value));
      end;
    end;
  end;
end;

procedure Tf_CashReg.FocusQtyExecute(Sender: TObject);
begin
  txt_qty.SetFocus;
end;

procedure Tf_CashReg.FormShow(Sender: TObject);
begin
  dm_PM.brw_Emp.Close;
  dm_PM.brw_Emp.SQL[2]  := 'WHERE USERID = :ID';
  dm_PM.brw_Emp.ParamByName('ID').Value := dm_PM.userid;
  dm_PM.brw_Emp.Open();

  dm_PM.brw_Unit.Close;
  dm_PM.brw_Unit.SQL[2] := 'WHERE CANCELLED = FALSE';
  dm_PM.brw_Unit.Open();

  StatusBar1.Panels[0].Text := 'Cashier Logged in : '+dm_PM.brw_EmpEMPNAME.AsString;
  StatusBar1.Panels[1].Text := 'Date Today : '+FormatDateTime('dddd, mmmm d, yyyy', Now);
  dm_PM.tb_CashDetail.Close;

  dm_PM.tb_CashDetail.Open;
  dm_PM.tb_CashDetail.Edit;

  user_rights;
  posDay_active;
  reset;
  compute_total;
end;

procedure Tf_CashReg.JobOrderExecute(Sender: TObject);
var paid, paidamnt: Real;
begin
  with dm_PM do
  begin
    qry_CashReg.Close;
    qry_CashReg.SQL[2] := 'WHERE ID = 0';
    qry_CashReg.Open();

    brw_CashReg.Close;
    brw_CashReg.SQL[2]  := 'WHERE ID = 0';
    brw_CashReg.Open();

    qry_CashReg.Append;
    qry_CashRegSOURCE.Value     := 'JO';

    cxGrid1Level1.GridView := cxGrid1DBTableView1;
    manageui;
    lblBalance.Caption  := FormatCurr('###,###,##0.00', 0);
    lblPayable.Caption  := FormatCurr('###,###,##0.00', 0);
    lblPaid.Caption     := FormatCurr('###,###,##0.00', 0);

    page_detail.Visible := True;
    page_detail.Tabs[0].Visible := False;
    page_detail.Tabs[1].Visible := True;
    page_detail.TabIndex        := 1;

    pan_cust.Visible        := True;
    pan_search.Visible        := False;

    tb_CashDetail.Close;
    tb_CashDetail.Open;

    f_CustTemp := Tf_CustTemp.Create(Self);
    if f_CustTemp.ShowModal = mrOk then
    begin
      if brw_JO.RecordCount > 0 then
      begin
        qry_CashRegREFID.Value        := brw_JOJONO.Value;
        qry_CashRegCUSTOMER.Value     := brw_JOCLIENT.Value;

        brw_CashReg.Close;
        brw_CashReg.SQL[2]  := 'WHERE SOURCE = ''JO'' AND REFID = :REFID AND CANCELLED = FALSE';
        brw_CashReg.ParamByName('REFID').Value  := qry_CashRegREFID.Value;
        brw_CashReg.Open();

        brw_JOPaid.Close;
        brw_JOPaid.SQL[2] := 'WHERE SOURCE = ''JO'' AND PAYMENTTYPE = ''FP'' AND REFID = :ID AND CANCELLED = FALSE';
        brw_JOPaid.ParamByName('ID').Value := qry_CashRegREFID.Value;
        brw_JOPaid.Open();

        paid  := brw_JOPaidNETAMNT.Value; //(brw_JOPaidCASHAMNT.Value + brw_JOPaidCARDAMNT.Value + brw_JOPaidCHECKAMNT.Value) - brw_JOPaidCHECKAMNT.Value;

        brw_JOPaid.Close;
        brw_JOPaid.SQL[2] := 'WHERE SOURCE = ''JO'' AND PAYMENTTYPE = ''D'' AND REFID = :ID AND CANCELLED = FALSE';
        brw_JOPaid.ParamByName('ID').Value := qry_CashRegREFID.Value;
        brw_JOPaid.Open();

        paidamnt  := paid + (brw_JOPaidCASHAMNT.Value + brw_JOPaidCARDAMNT.Value + brw_JOPaidCHECKAMNT.Value);

        brw_JOBalance.Close;
        brw_JOBalance.SQL[2]  := 'WHERE JONO = :ID AND CANCELLED = FALSE';
        brw_JOBalance.ParamByName('ID').Value := qry_CashRegREFID.Value;
        brw_JOBalance.Open();

        lblBalance.Caption  := FormatCurr('###,###,##0.00', brw_JONETAMNT.Value - paidamnt);
        lblPayable.Caption  := FormatCurr('###,###,##0.00', brw_JONETAMNT.Value);
        lblPaid.Caption     := FormatCurr('###,###,##0.00', paidamnt);

        qry_CashRegBALAMNT.Value      := brw_JONETAMNT.Value - paidamnt;
        if brw_CashReg.RecordCount = 0 then
        begin
          qry_CashRegDISCOUNT.Value     := brw_JODISCOUNT.Value;
          qry_CashRegDISCPERCENT.Value  := brw_JODISCPRCENT.Value;
        end;

        brw_JODetail.Close;
        brw_JODetail.SQL[3] := 'WHERE JO_DETAIL.HEADERID = :ID AND JO_DETAIL.CANCELLED = FALSE';
        brw_JODetail.ParamByName('ID').Value  := brw_JOID.Value;
        brw_JODetail.Open();

        tb_CashDetail.Close;
        tb_CashDetail.Open;

        if brw_JODetail.RecordCount > 0 then
        begin
          brw_JODetail.First;
          while not brw_JODetail.Eof do
          begin
            tb_CashDetail.Append;
            tb_CashDetailGARMENTID.Value      := brw_JODetailSHIRTID.Value;
            tb_CashDetailDESCRIPTION.Value    := brw_JODetailDESCRIPTION.Value;
            tb_CashDetailQTY.Value            := brw_JODetailQTY.Value;
            tb_CashDetailPRICE.Value          := brw_JODetailCOST.Value;
            tb_CashDetailUNIT.Value           := brw_JODetailUNIT.Value;
            tb_CashDetailCODE.Value           := brw_JODetailCODE.Value;
            tb_CashDetail.Post;

            brw_JODetail.Next;
          end;
          tb_CashDetail.First;
        end;
      end;
    end;
    compute_total;
  end;
end;

procedure Tf_CashReg.manageui;
begin
  with dm_PM do
  begin

    btnOpen.Enabled := not isOpenDay;
    Void.Enabled    := brw_Rights.Locate('POLICYID;SELECT;ROLEID',VarArrayOf([15, True, roleid]), []) and isOpenDay;
    Summary.Enabled := True; //brw_Rights.Locate('POLICYID;SELECT;ROLEID',VarArrayOf([14, True, roleid]), []) and isOpenDay;

    if (qry_CashReg.State = dsInsert) or (qry_CashReg.State = dsedit) then
    begin
      btnEnd.Enabled      := False;
      cxGrid1DBTableView1ONHAND.Visible := True;
      Cash.Enabled        := False;
      Delete.Enabled      := False;
      Cancel.Enabled      := False;
      JobOrder.Enabled    := False;
      CashDisburse.Enabled:= False;
      CashOut.Enabled     := False;
      CashIn.Enabled      := False;

      Discount.Enabled      := True;
      SelectPayment.Enabled := True;
      Post.Enabled          := False;

      if qry_CashRegSOURCE.Value = 'CASH' then
      begin
        Cancel.Enabled      := True and isOpenDay;
        Delete.Enabled      := True and isOpenDay;
      end
      else if qry_CashRegSOURCE.Value = 'JO' then
      begin
        cxGrid1DBTableView1ONHAND.Visible := False;
        Discount.Enabled      := False;
        JobOrder.Enabled      := True and isOpenDay;
        Cancel.Enabled        := True and isOpenDay;
      end
      else if qry_CashRegSOURCE.Value = 'DISBURSE' then
      begin
        Discount.Enabled      := False;
        Cancel.Enabled        := True and isOpenDay;
      end
      else if qry_CashRegSOURCE.Value = 'OUT' then
      begin
        Discount.Enabled      := False;
        SelectPayment.Enabled := False;
        Cancel.Enabled        := True and isOpenDay;
      end
      else if qry_CashRegSOURCE.Value = 'IN' then
      begin
        Discount.Enabled      := False;
        Cancel.Enabled        := True and isOpenDay;
      end;
    end
    else
    begin
      cxGrid1DBTableView1ONHAND.Visible := True;

      btnEnd.Enabled      := True and isOpenDay;
      Cash.Enabled        := True and isOpenDay;
      JobOrder.Enabled    := True and isOpenDay;
      CashDisburse.Enabled:= True and isOpenDay;
      CashOut.Enabled     := True and isOpenDay;
      CashIn.Enabled      := True and isOpenDay;
      Cancel.Enabled      := False;
      Delete.Enabled      := False;

      Discount.Enabled      := False;
      SelectPayment.Enabled := False;
      Post.Enabled          := False;
    end;
  end;
end;

procedure Tf_CashReg.manage_disburse_ui;
begin
  cxGrid1DBTableView2DESCRIPTION.Visible  := dm_PM.tb_CashDisburseDISBURSETYPE.Value = 'EXPENSE';
  cxGrid1DBTableView2REFNO.Visible        := dm_PM.tb_CashDisburseDISBURSETYPE.Value <> 'EXPENSE';
  cxGrid1DBTableView2INVOICE.Visible      := dm_PM.tb_CashDisburseDISBURSETYPE.Value = 'PAYMENT';
  cxGrid1DBTableView2REFDATE.Visible      := dm_PM.tb_CashDisburseDISBURSETYPE.Value <> 'EXPENSE';
end;

function Tf_CashReg.posDay_active: Boolean;
begin
  with dm_PM do
  begin
    qry_dateconfig.Close;
    qry_dateconfig.Open();

    qry_POSDay.Close;
    qry_POSDay.SQL[2] := 'WHERE ISACTIVE = TRUE';
    qry_POSDay.Open();

    Result  := qry_POSDay.RecordCount > 0;
    if Result then
    begin
      lbl_POS.Style.TextColor := $0037282B;
      if qry_dateconfigAUTONOW.Value then
      lbl_POS.Caption         := 'POS DAY : '+FormatDateTime('mmmm d, yyyy hh:nn:ss AM/PM', qry_POSDayDATE.Value)
      else
      lbl_POS.Caption         := 'POS DAY : '+FormatDateTime('mmmm d, yyyy hh:nn:ss AM/PM', qry_dateconfigDATE.Value + Time);
    end
    else
    begin
      lbl_POS.Style.TextColor := $003E3EFF;
      lbl_POS.Caption         := 'DAY IS CLOSED';
    end;
    Timer1.Enabled  := Result;
    isOpenDay       := Result;
  end;
end;


procedure Tf_CashReg.PostExecute(Sender: TObject);
var paid, paidamnt: Real;
    report: TfrxReport;
    created_at : TDateTime;
begin
  with dm_PM do
  begin
    if dm_PM.qry_CashRegNETAMNT.Value > 0 then
    begin
       qry_dateconfig.Close;
       qry_dateconfig.Open();

       created_at := qry_dateconfigDATE.Value + Time;

       if (not qry_dateconfigACTIVE.Value) and (not qry_dateconfigAUTONOW.Value) then
       DateConfigExecute(nil);

       if compute_total then
       begin
          if MessageDlg('Payment will be posted? Do you want to continue?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
          begin
            qry_CashRegPOSDAYID.Value         := qry_POSDayID.Value;
            qry_CashRegCANCELLED.Value        := False;
            qry_CashRegCREATEDBYID.Value      := userid;
            if qry_dateconfigAUTONOW.Value then
            begin
              qry_CashRegCREATEDDATETIME.Value  := Now;
              qry_CashRegSALESDATE.Value        := Now;
            end
            else
            begin
              qry_CashRegCREATEDDATETIME.Value  := created_at; //qry_dateconfigDATE.Value;
              qry_CashRegSALESDATE.Value        := qry_dateconfigDATE.Value;
            end;

            qry_CashReg.Post;
            qry_CashReg.ApplyUpdates();

            if (qry_CashRegSOURCE.Value = 'JO') or (qry_CashRegSOURCE.Value = 'CASH') then
            begin
              tb_CashDetail.First;
              while not tb_CashDetail.Eof do
              begin
                qry_CashDetail.Close;
                qry_CashDetail.SQL[2] := 'WHERE ID = 0';
                qry_CashDetail.Open();

                qry_CashDetail.Append;
                qry_CashDetailHEADERID.Value      := qry_CashRegID.Value;
                qry_CashDetailITEMID.Value        := tb_CashDetailITEMID.Value;
                qry_CashDetailDESCRIPTION.Value   := tb_CashDetailDESCRIPTION.Value;
                qry_CashDetailQTY.Value           := tb_CashDetailQTY.Value;
                qry_CashDetailPRICE.Value         := tb_CashDetailPRICE.Value;
                qry_CashDetailAMOUNT.Value        := tb_CashDetailAMOUNT.Value;
                qry_CashDetailUNIT.Value          := tb_CashDetailUNIT.Value;
                qry_CashDetailGARMENTID.Value     := tb_CashDetailGARMENTID.Value;
                qry_CashDetailCANCELLED.Value     := False;
                qry_CashDetail.Post;
                qry_CashDetail.ApplyUpdates();
          
                tb_CashDetail.Next;
              end;

              if qry_CashRegSOURCE.Value = 'JO' then
              begin
                brw_JOPaid.Close;
                brw_JOPaid.SQL[2] := 'WHERE SOURCE = ''JO'' AND PAYMENTTYPE = ''FP'' AND REFID = :ID AND CANCELLED = FALSE';
                brw_JOPaid.ParamByName('ID').Value := qry_CashRegREFID.Value;
                brw_JOPaid.Open();

                paid  := brw_JOPaidNETAMNT.Value;

//                if qry_CashRegPAYMENTTYPE.Value = 'D' then
//                paid  := brw_JOPaidNETAMNT.Value
//                else
//                paid  := (brw_JOPaidCASHAMNT.Value + brw_JOPaidCARDAMNT.Value + brw_JOPaidCHECKAMNT.Value) - brw_JOPaidCHECKAMNT.Value;

                brw_JOPaid.Close;
                brw_JOPaid.SQL[2] := 'WHERE SOURCE = ''JO'' AND PAYMENTTYPE = ''D'' AND REFID = :ID AND CANCELLED = FALSE';
                brw_JOPaid.ParamByName('ID').Value := qry_CashRegREFID.Value;
                brw_JOPaid.Open();

                paidamnt  := paid + (brw_JOPaidCASHAMNT.Value + brw_JOPaidCARDAMNT.Value + brw_JOPaidCHECKAMNT.Value);

                brw_JOBalance.Close;
                brw_JOBalance.SQL[2]  := 'WHERE JONO = :ID AND CANCELLED = FALSE';
                brw_JOBalance.ParamByName('ID').Value := qry_CashRegREFID.Value;
                brw_JOBalance.Open();

                qry_JO.Close;
                qry_JO.SQL[2] := 'WHERE JONO = :ID AND CANCELLED = FALSE';
                qry_JO.ParamByName('ID').Value := qry_CashRegREFID.Value;
                qry_JO.Open();

                qry_JO.Edit;
                qry_JOPOSTED.Value          := True;

                if qry_dateconfigAUTONOW.Value then
                qry_JOPOSTEDDATETIME.Value  := Now
                else
                qry_JOPOSTEDDATETIME.Value  := created_at;
                qry_JOPAIDAMNT.Value        := paidamnt;
                qry_JOBALAMNT.Value         := (qry_JONETAMNT.Value - paidamnt);
                qry_JO.Post;
                qry_JO.ApplyUpdates();
              end;
            end
            else if qry_CashRegSOURCE.Value = 'DISBURSE' then
            begin
              tb_PayDisburse.First;
              while not tb_PayDisburse.Eof do
              begin
                qry_DisburseDetail.Close;
                qry_DisburseDetail.SQL[2] := 'WHERE ID = 0';
                qry_DisburseDetail.Open();

                qry_DisburseDetail.Append;
                qry_DisburseDetailHEADERID.Value      := qry_CashRegID.Value;
                qry_DisburseDetailDISBURSETYPE.Value  := tb_PayDisburseDISBURSETYPE.Value;
                qry_DisburseDetailDESCRIPTION.Value   := tb_PayDisburseDESCRIPTION.Value;
                qry_DisburseDetailVOUCHERNO.Value     := tb_PayDisburseVOUCHERNO.Value;
                qry_DisburseDetailREFNO.Value         := tb_PayDisburseREFNO.Value;
                qry_DisburseDetailREFDATE.Value       := tb_PayDisburseREFDATE.Value;
                qry_DisburseDetailNETAMNT.Value       := tb_PayDisburseNETAMNT.Value;
                qry_DisburseDetailDATE.Value          := tb_PayDisburseDATE.Value;
                qry_DisburseDetailINVOICE.Value       := tb_PayDisburseINVOICE.Value;

                qry_DisburseDetail.Post;
                qry_DisburseDetail.ApplyUpdates();

                tb_PayDisburse.Next;
              end;
            end
            else if qry_CashRegSOURCE.Value = 'IN' then
            begin
              qry_CashInDetailHEADERID.Value  := qry_CashRegID.Value;
              qry_CashInDetailCANCELLED.Value       := False;
              qry_CashInDetailCREATEDBY.Value       := userid;
              if qry_dateconfigAUTONOW.Value then
              qry_CashInDetailCREATEDDATETIME.Value := Now
              else
              qry_CashInDetailCREATEDDATETIME.Value := created_at;
              qry_CashInDetail.Post;
              qry_CashInDetail.ApplyUpdates();
            end
            else
            begin
              qry_CashOutDetailHEADERID.Value        := qry_CashRegID.Value;
              qry_CashOutDetailCANCELLED.Value       := False;
              qry_CashOutDetailCREATEDBY.Value       := userid;
              if qry_dateconfigAUTONOW.Value then
              qry_CashOutDetailCREATEDDATETIME.Value := Now
              else
              qry_CashOutDetailCREATEDDATETIME.Value := created_at;
              qry_CashOutDetail.Post;
              qry_CashOutDetail.ApplyUpdates();

              brw_ExpenseType.DisableControls;
              if brw_ExpenseType.Locate('ID', qry_CashOutDetailCATEGORYID.Value, []) then
              begin
                if brw_ExpenseTypeCATEGORY.Value = 1 then
                begin
                  brw_WorkLogs.Close;
                  brw_WorkLogs.SQL[3] := 'WHERE PM_WORKLOGS.WORKERID = :EMPID AND (PM_WORKLOGS.CREATEDDATETIME BETWEEN :DATE1 AND :DATE2) AND PM_WORKLOGS.CANCELLED = FALSE';
                  brw_WorkLogs.ParamByName('EMPID').Value      := qry_CashOutDetailEMPID.Value;
                  brw_WorkLogs.ParamByName('DATE1').Value      := StartOfTheDay(qry_CashOutDetailPAYDATEFROM.Value);
                  brw_WorkLogs.ParamByName('DATE2').Value      := EndOfTheDay(qry_CashOutDetailPAYDATETO.Value);
                  brw_WorkLogs.Open();

                  f_Reports := Tf_Reports.Create(Self);
                  TfrxMemoView(f_Reports.rep_PaySlip.FindObject('mem_days')).Text  := VarToStr(DaysBetween(StartOfTheDay(qry_CashOutDetailPAYDATEFROM.Value), EndOfTheDay(qry_CashOutDetailPAYDATETO.Value)));
                  TfrxMemoView(f_Reports.rep_PaySlip.FindObject('mem_count')).Text  := IntToStr(brw_WorkLogs.RecordCount) + ' NO. OF ITEM(S)';
                  f_Reports.rep_PaySlip.ShowReport();
                  //preview_payslip(qry_CashOutDetailEMPID.Value, qry_CashOutDetailPAYDATEFROM.Value, qry_CashOutDetailPAYDATETO.Value);
                end;
              end;
              brw_ExpenseType.EnableControls;

            end;

            qry_company.Close;
            qry_company.SQL[2]  := 'WHERE ID = 1';
            qry_company.Open();

            brw_Emp.Close;
            brw_Emp.SQL[2]  := 'WHERE USERID = :ID';
            brw_Emp.ParamByName('ID').Value := userid;
            brw_Emp.Open();

            f_Reports := Tf_Reports.Create(Self);
            if qry_CashRegSOURCE.Value = 'DISBURSE' then
            report := f_Reports.rep_cashdisburse
            else if qry_CashRegSOURCE.Value = 'IN' then
            report := f_Reports.rep_cashin
            else if qry_CashRegSOURCE.Value = 'OUT' then
            report := f_Reports.rep_cashout
            else
            report := f_Reports.rep_cashinvoice;

            if qry_CashRegSOURCE.Value = 'JO' then
            TfrxMemoView(report.FindObject('repTitle')).Text      := 'OFFICIAL RECEIPT'
            else if qry_CashRegSOURCE.Value = 'CASH' then
            TfrxMemoView(report.FindObject('repTitle')).Text      := 'CASH SALES INVOICE'
            else if qry_CashRegSOURCE.Value = 'IN' then
            TfrxMemoView(report.FindObject('repTitle')).Text      := 'CASH IN'
            else if qry_CashRegSOURCE.Value = 'OUT' then
            TfrxMemoView(report.FindObject('repTitle')).Text      := qry_CashRegEXPENSETYPE.AsString
            else
            TfrxMemoView(report.FindObject('repTitle')).Text      := 'CASH DISBURSEMENT';
            TfrxMemoView(report.FindObject('cashier')).Text       := brw_EmpEMPNAME.AsString;
            TfrxMemoView(report.FindObject('orno')).Text          := 'NO. '+qry_CashRegID.AsString;

            if (qry_CashRegSOURCE.Value = 'CASH') or (qry_CashRegSOURCE.Value = 'JO') then
            begin
              TfrxMemoView(report.FindObject('cash')).Text          := '-';
              TfrxMemoView(report.FindObject('check')).Text         := '-';
              TfrxMemoView(report.FindObject('card')).Text          := '-';
              TfrxMemoView(report.FindObject('change')).Text        := '-';

              if qry_CashRegCASHAMNT.Value > 0 then
              TfrxMemoView(report.FindObject('cash')).Text          := FormatCurr('###,###,##0.00', qry_CashRegCASHAMNT.Value);
              if qry_CashRegCHECKAMNT.Value > 0 then
              TfrxMemoView(report.FindObject('check')).Text         := FormatCurr('###,###,##0.00', qry_CashRegCHECKAMNT.Value);
              if qry_CashRegCARDAMNT.Value > 0 then
              TfrxMemoView(report.FindObject('card')).Text          := FormatCurr('###,###,##0.00', qry_CashRegCARDAMNT.Value);
              if qry_CashRegCHANGEAMNT.Value > 0 then
              TfrxMemoView(report.FindObject('change')).Text        := FormatCurr('###,###,##0.00', qry_CashRegCHANGEAMNT.Value);
            end;

            if qry_CashRegSOURCE.Value = 'DISBURSE' then
            begin
              TfrxMemoView(report.FindObject('disburse_type')).Text := qry_CashRegDISBURSETYPE.AsString;
              TfrxMasterData(report.FindObject('payment')).Visible    := qry_CashRegDISBURSETYPE.Value = 'PAYMENT';
              TfrxMasterData(report.FindObject('pettycash')).Visible  := qry_CashRegDISBURSETYPE.Value = 'PETTY CASH';
              TfrxMasterData(report.FindObject('expense')).Visible    := qry_CashRegDISBURSETYPE.Value = 'EXPENSE';

            end;

            if brw_PrintPRINT.Value then
            begin
              report.PrepareReport(True);
              report.Print;
            end
            else
            report.ShowReport();

            reset;
          end;
       end;
    end
    else
       MessageDlg('There is nothing to pay!', mtError, [mbOK], 0);
  end;
end;

procedure Tf_CashReg.preview_cash_summary(id: Integer; reprint: Boolean);
var open_cash, close_cash, sales, cashin, cashout, disbursed: Real;
begin
  with dm_PM do
  begin
    qry_POSDay1.Close;
    qry_POSDay1.SQL[3] := 'WHERE POS_DAY.ID = :ID';
    qry_POSDay1.ParamByName('ID').Value  := id;
    qry_POSDay1.Open();

    qry_CashFund.Close;
    qry_CashFund.SQL[2] := 'WHERE POSDAYID = :ID';
    qry_CashFund.ParamByName('ID').Value  := id;
    qry_CashFund.Open();

    qry_CashEnd.Close;
    qry_CashEnd.SQL[2] := 'WHERE POSDAYID = :ID';
    qry_CashEnd.ParamByName('ID').Value  := id;
    qry_CashEnd.Open();

    tb_CashDrawer.Close;
    tb_CashDrawer.Open;

    open_cash   := 0;
    close_cash  := 0;
    if qry_CashFund.RecordCount > 0 then
    begin
      qry_CashFund.First;
      while not qry_CashFund.Eof do
      begin
        tb_CashDrawer.Append;
        tb_CashDrawerCASH.Value := qry_CashFundCASH.Value;
        tb_CashDrawerQTY.Value  := qry_CashFundQTY.Value;
        open_cash := open_cash + tb_CashDrawerAMNT.Value;
        if qry_CashEnd.Locate('CASH', qry_CashFundCASH.Value, []) then
        begin
          tb_CashDrawerCASH1.Value := qry_CashEndCASH.Value;
          tb_CashDrawerQTY1.Value  := qry_CashEndQTY.Value;
          close_cash := close_cash + tb_CashDrawerAMNT1.Value;
        end;
        tb_CashDrawer.Post;
        qry_CashFund.Next;
      end;
    end;

    brw_CashReg.Close;
    brw_CashReg.SQL[2]  := 'WHERE POSDAYID = :POSDAYID AND CANCELLED = FALSE AND SOURCE IN (''JO'', ''CASH'')';
    brw_CashReg.ParamByName('POSDAYID').Value  := id;
    brw_CashReg.Open();

    brw_CashOut.Close;
    brw_CashOut.SQL[2]  := 'WHERE POSDAYID = :POSDAYID AND CANCELLED = FALSE AND SOURCE = ''DISBURSE''';
    brw_CashOut.ParamByName('POSDAYID').Value  := id;
    brw_CashOut.Open();

    brw_CashOut2.Close;
    brw_CashOut2.SQL[2]  := 'WHERE POSDAYID = :POSDAYID AND CANCELLED = FALSE AND SOURCE = ''OUT''';
    brw_CashOut2.ParamByName('POSDAYID').Value  := id;
    brw_CashOut2.Open();

    brw_CashIn.Close;
    brw_CashIn.SQL[2]  := 'WHERE POSDAYID = :POSDAYID AND CANCELLED = FALSE AND SOURCE = ''IN''';
    brw_CashIn.ParamByName('POSDAYID').Value  := id;
    brw_CashIn.Open();

    brw_JOPaid.Close;
    brw_JOPaid.SQL[2]  := 'WHERE POSDAYID = :POSDAYID AND CANCELLED = FALSE AND SOURCE IN (''JO'', ''CASH'')';
    brw_JOPaid.ParamByName('POSDAYID').Value  := id;
    brw_JOPaid.Open();

    sales := brw_JOPaidCASHAMNT.Value + brw_JOPaidCARDAMNT.Value + brw_JOPaidCHECKAMNT.Value - brw_JOPaidCHANGEAMNT.Value;

    brw_JOPaid.Close;
    brw_JOPaid.SQL[2]  := 'WHERE POSDAYID = :POSDAYID AND CANCELLED = FALSE AND SOURCE = ''DISBURSE''';
    brw_JOPaid.ParamByName('POSDAYID').Value  := id;
    brw_JOPaid.Open();

    disbursed := brw_JOPaidNETAMNT.Value;

    brw_JOPaid.Close;
    brw_JOPaid.SQL[2]  := 'WHERE POSDAYID = :POSDAYID AND CANCELLED = FALSE AND SOURCE = ''IN''';
    brw_JOPaid.ParamByName('POSDAYID').Value  := id;
    brw_JOPaid.Open();

    cashin    := brw_JOPaidNETAMNT.Value;

    brw_JOPaid.Close;
    brw_JOPaid.SQL[2]  := 'WHERE POSDAYID = :POSDAYID AND CANCELLED = FALSE AND SOURCE = ''OUT''';
    brw_JOPaid.ParamByName('POSDAYID').Value  := id;
    brw_JOPaid.Open();

    cashout    := brw_JOPaidNETAMNT.Value;

    f_Reports := Tf_Reports.Create(Self);

    if reprint then
    begin
      TfrxMemoView(f_Reports.rep_CashSummary.FindObject('title')).Text       := 'REPRINT - CASH SALES SUMMARY';
      TfrxMemoView(f_Reports.rep_CashSummary.FindObject('title')).Color      := clRed;
    end
    else
    begin
      TfrxMemoView(f_Reports.rep_CashSummary.FindObject('title')).Text       := 'CASH SALES SUMMARY';
      TfrxMemoView(f_Reports.rep_CashSummary.FindObject('title')).Color      := clTeal;
    end;
    TfrxMemoView(f_Reports.rep_CashSummary.FindObject('tot_open')).Text    := Trim(FormatCurr('###,###,##0.00', open_cash));
    TfrxMemoView(f_Reports.rep_CashSummary.FindObject('opening')).Text     := Trim(FormatCurr('###,###,##0.00', open_cash));
    TfrxMemoView(f_Reports.rep_CashSummary.FindObject('tot_close')).Text   := Trim(FormatCurr('###,###,##0.00', close_cash));
    TfrxMemoView(f_Reports.rep_CashSummary.FindObject('closing')).Text     := Trim(FormatCurr('###,###,##0.00', close_cash));
    TfrxMemoView(f_Reports.rep_CashSummary.FindObject('total_sales')).Text := Trim(FormatCurr('###,###,##0.00', sales));
    TfrxMemoView(f_Reports.rep_CashSummary.FindObject('cashin')).Text      := Trim(FormatCurr('###,###,##0.00', cashin));
    TfrxMemoView(f_Reports.rep_CashSummary.FindObject('total')).Text       := Trim(FormatCurr('###,###,##0.00', (open_cash+sales+cashin)-(disbursed+cashout)));
    TfrxMemoView(f_Reports.rep_CashSummary.FindObject('total_disb')).Text  := '('+Trim(FormatCurr('###,###,##0.00', (disbursed+cashout)))+')';
    TfrxMemoView(f_Reports.rep_CashSummary.FindObject('over')).Text        := Trim(FormatCurr('###,###,##0.00', (close_cash - ((open_cash + sales + cashin) - (disbursed+cashout)))));
    f_Reports.rep_CashSummary.ShowReport;
  end;
end;

procedure Tf_CashReg.ReOpenDayExecute(Sender: TObject);
begin
  with dm_PM do
  begin
    qry_POSDay.Close;
    qry_POSDay.SQL[2] := 'WHERE ISACTIVE = TRUE';
    qry_POSDay.Open();

    if qry_POSDay.RecordCount = 0 then
    begin
      if MessageDlg('Continue to Re-open Day?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin

        qry_dateconfig.Close;
        qry_dateconfig.Open();

        qry_dateconfig.Edit;
        qry_dateconfigDATE.Value := Now;
        qry_dateconfigACTIVE.Value  := False;

        f_DateConfig := Tf_DateConfig.Create(Self);
        if f_DateConfig.ShowModal = mrOk then
        begin
          qry_dateconfigACTIVE.Value := True;

          qry_POSDay.Close;
          qry_POSDay.SQL[2] := 'WHERE DATE BETWEEN :DATE1 and :DATE2';
          qry_POSDay.ParamByName('DATE1').Value  := FormatDateTime('yyyy-mm-dd', qry_dateconfigDATE.Value);
          qry_POSDay.ParamByName('DATE2').Value  := FormatDateTime('yyyy-mm-dd', qry_dateconfigDATE.Value);
          qry_POSDay.Open();

          if qry_POSDay.RecordCount > 0 then
          begin
            qry_POSDay.Edit;

            qry_POSDayOPENEDBY.Value      := userid;
            qry_POSDayISACTIVE.Value      := True;

            qry_dateconfig.Post;
            qry_dateconfig.ApplyUpdates();

            qry_POSDay.Post;
            qry_POSDay.ApplyUpdates();

            posDay_active;
            reset;
          end
          else
          begin
            MessageDlg('Pos Date not found!', mtError, [mbOK], 0);
            reset_date_config;
          end;
        end;
      end
      else
        reset_date_config;
    end
    else
      MessageDlg('Pos Day is currently active. Invalid command!', mtError, [mbOK], 0);
  end;
end;

procedure Tf_CashReg.VoidExecute(Sender: TObject);
var paid, paidamnt: Real;
begin
  with dm_PM do
  begin
    qry_dateconfig.Close;
    qry_dateconfig.Open();

    if (not qry_dateconfigACTIVE.Value) and (not qry_dateconfigAUTONOW.Value) then
    DateConfigExecute(nil);

    f_Void  := Tf_Void.Create(Self);
    if f_Void.ShowModal = mrOk then
    begin
      brw_CashReg.Close;
      brw_CashReg.SQL[2]  := 'WHERE ID = :ID AND CANCELLED = FALSE';
      brw_CashReg.ParamByName('ID').Value := Trim(f_Void.cxSpinEdit1.EditValue);
      brw_CashReg.Open();

      if brw_CashReg.RecordCount > 0 then
      begin
        if MessageDlg('Continue to void receipt no. '+brw_CashRegID.AsString+' from Customer '+ brw_CashRegCUSTOMER.AsString+'?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
          qry_CashReg.Close;
          qry_CashReg.SQL[2]  := 'WHERE ID = :ID';
          qry_CashReg.ParamByName('ID').Value := brw_CashRegID.Value;
          qry_CashReg.Open();

          qry_CashReg.Edit;
          qry_CashRegCANCELLED.Value          := True;
          qry_CashRegCANCELLEDBYID.Value      := userid;
          qry_CashRegCANCELLEDDATETIME.Value  := Now;
          qry_CashReg.Post;
          qry_CashReg.ApplyUpdates();

          del_CashDetail.Close;
          del_CashDetail.SQL[2] := 'WHERE HEADERID = '+qry_CashRegID.AsString;
          del_CashDetail.ExecSQL;

          if qry_CashRegSOURCE.Value = 'JO' then
            begin
              brw_JOPaid.Close;
              brw_JOPaid.SQL[2] := 'WHERE SOURCE = ''JO'' AND PAYMENTTYPE = ''FP'' AND REFID = :ID AND CANCELLED = FALSE';
              brw_JOPaid.ParamByName('ID').Value := qry_CashRegREFID.Value;
              brw_JOPaid.Open();

              if qry_CashRegPAYMENTTYPE.Value = 'D' then
              paid  := brw_JOPaidNETAMNT.Value
              else
              paid  := (brw_JOPaidCASHAMNT.Value + brw_JOPaidCARDAMNT.Value + brw_JOPaidCHECKAMNT.Value) - brw_JOPaidCHANGEAMNT.Value;

              brw_JOPaid.Close;
              brw_JOPaid.SQL[2] := 'WHERE SOURCE = ''JO'' AND PAYMENTTYPE = ''D'' AND REFID = :ID AND CANCELLED = FALSE';
              brw_JOPaid.ParamByName('ID').Value := qry_CashRegREFID.Value;
              brw_JOPaid.Open();

              paidamnt  := paid + (brw_JOPaidCASHAMNT.Value + brw_JOPaidCARDAMNT.Value + brw_JOPaidCHECKAMNT.Value);

              brw_JOBalance.Close;
              brw_JOBalance.SQL[2]  := 'WHERE JONO = :ID AND CANCELLED = FALSE';
              brw_JOBalance.ParamByName('ID').Value := qry_CashRegREFID.Value;
              brw_JOBalance.Open();

              qry_JO.Close;
              qry_JO.SQL[2] := 'WHERE JONO = :ID AND CANCELLED = FALSE';
              qry_JO.ParamByName('ID').Value := qry_CashRegREFID.Value;
              qry_JO.Open();

              qry_JO.Edit;
              qry_JOPOSTED.Value          := True;
              if qry_dateconfigAUTONOW.Value then
              qry_JOPOSTEDDATETIME.Value  := Now
              else
              qry_JOPOSTEDDATETIME.Value  := qry_dateconfigDATE.Value;
              qry_JOPAIDAMNT.Value        := paidamnt;
              qry_JOBALAMNT.Value         := (brw_JOBalanceNETAMNT.Value - paidamnt);
              qry_JO.Post;
              qry_JO.ApplyUpdates();
            end;

          MessageDlg('Receipt has been voided!', mtInformation, [mbOK], 0);
          reset;
        end;
      end
      else
      MessageDlg('Receipt/Invoice No. not found! Reference No might be incorrect or has been voided already.', mtError, [mbOK], 0);

    end;
  end;
end;


procedure Tf_CashReg.reset;
begin
  dm_PM.qry_CashReg.Close;
  dm_PM.qry_CashReg.SQL[2]  := 'WHERE ID = 0';
  dm_PM.qry_CashReg.Open();
  dm_PM.qry_CashReg.Cancel;

  dm_PM.tb_CashDetail.Close;
  dm_PM.tb_CashDetail.Open;

  cxGrid1Level1.GridView := cxGrid1DBTableView1;

  manageui;
  reset_item_desc;

  page_detail.Visible := False;

  pan_search.Visible  := False;

  lbl_Subtotal.Caption  := '0.00';
  lbl_Discount.Caption  := '0.00';
  lbl_Total.Caption     := '0.00';
  lbl_Cash.Caption      := '0.00';
  lbl_Card.Caption      := '0.00';
  lbl_Check.Caption     := '0.00';
  lbl_Change.Caption    := '0.00';
  lbl_TotalAmnt.Caption := '0.00';
  lbl_DiscPercent.Caption := '';
end;

procedure Tf_CashReg.reset_date_config;
begin
  with dm_PM do
  begin
    qry_dateconfig.Close;
    qry_dateconfig.Open();

    qry_dateconfig.Edit;
    qry_dateconfigACTIVE.Value  := False;
    qry_dateconfig.Post;
    qry_dateconfig.ApplyUpdates();
  end;
end;

procedure Tf_CashReg.reset_item_desc;
begin
  txt_code.Clear;
  txt_desc.Clear;
  txt_qty.Clear;
  txt_price.Clear;
  cmb_unit.Clear;
end;

procedure Tf_CashReg.SalesInvoiceExecute(Sender: TObject);
begin
  //
end;

procedure Tf_CashReg.search;
begin
  with dm_PM do
  begin
    brw_items.Close;
    brw_items.SQL[2]  := 'WHERE CODE = :TEXT AND CANCELLED = FALSE AND SALES = TRUE';
    brw_items.ParamByName('TEXT').Value := Trim(txt_code.Text);
    brw_items.Open();

    brw_items.First;

    if brw_items.RecordCount > 0 then
    begin
      if brw_items.RecordCount = 1 then
      begin
        txt_code.Text       := Trim(brw_itemsCODE.AsString);
        txt_desc.Text       := Trim(brw_itemsDESCRIPTION.AsString);
        txt_qty.Text        := '1';
        cmb_unit.EditValue  := brw_itemsINVUNIT.Value;
        txt_price.Text      := FormatCurr('###,###,##0.00', brw_itemsPRICE.Value);

        add_item;
      end
      else
        AddItemExecute(nil);
    end
    else
      MessageDlg('No item matched! Click search or F5 to browse for available items.', mtInformation, [mbOK], 0);

  end;
end;

procedure Tf_CashReg.SelectPaymentExecute(Sender: TObject);
begin
  if dm_PM.qry_CashRegNETAMNT.Value > 0 then
  begin
    f_SelectPayment   :=  Tf_SelectPayment.Create(Self);
    dm_PM.qry_CashRegPAYMENTTYPE.Value := 'FP';
    if f_SelectPayment.ShowModal = mrOk then
    begin
      compute_total;
    end;
  end
  else
    MessageDlg('There is nothing to pay!', mtError, [mbOK], 0);
end;

procedure Tf_CashReg.SummaryExecute(Sender: TObject);
begin
  f_CashSummary := Tf_CashSummary.Create(Self);
  f_CashSummary.ShowModal;
end;

procedure Tf_CashReg.Timer1Timer(Sender: TObject);
begin
  if dm_PM.qry_dateconfig.Active then
  begin
    if dm_PM.qry_dateconfigAUTONOW.Value then
    lbl_POS.Caption := 'POS DAY : '+FormatDateTime('mmmm d, yyyy hh:nn:ss AM/PM', Now)
    else
    lbl_POS.Caption := 'POS DAY : '+FormatDateTime('mmmm d, yyyy hh:nn:ss AM/PM', dm_PM.qry_dateconfigDATE.Value + Time);
  end;
end;

procedure Tf_CashReg.txt_codeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
  search;
end;

procedure Tf_CashReg.txt_descKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  AddItemExecute(nil);
end;

procedure Tf_CashReg.txt_qtyPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin  
  dm_PM.tb_CashDetail.Edit;
  if (DisplayValue > 0) and (DisplayValue <= dm_PM.tb_CashDetailONHAND.Value) then
  dm_PM.tb_CashDetailQTY.Value    := DisplayValue
  else
  begin
    dm_PM.tb_CashDetailQTY.Value  := 1;
    DisplayValue                  := 1;
    MessageDlg('Qty entered is invalid or exceeds onhand!', mtError, [mbOK], 0);
  end;
  dm_PM.tb_CashDetail.Append;
  dm_PM.tb_CashDetail.Delete;
  compute_total;
end;

procedure Tf_CashReg.user_rights;
begin
  with dm_PM do
  begin
    brw_Rights.Close;
    brw_Rights.SQL[4] := 'WHERE EMP_ROLE.CANCELLED = FALSE';
    brw_Rights.Open();
    brw_Rights.First;

    Void.Enabled         := brw_Rights.Locate('POLICYID;SELECT;ROLEID',VarArrayOf([15, True, roleid]), []);
    Summary.Enabled      := brw_Rights.Locate('POLICYID;SELECT;ROLEID',VarArrayOf([14, True, roleid]), []);
  end;
end;

end.
