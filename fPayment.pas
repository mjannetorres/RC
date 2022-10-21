unit fPayment;

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
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridCustomView, cxGrid, Vcl.ComCtrls, Vcl.ToolWin, scControls, Vcl.StdCtrls,
  Vcl.ExtCtrls;

type
  Tf_Payment = class(TForm)
    Splitter1: TSplitter;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    cmb_filter: TComboBox;
    date_1: TDateTimePicker;
    date_2: TDateTimePicker;
    txt_search: TButtonedEdit;
    scToolBar2: TscToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    btnPrint: TToolButton;
    s: TcxGrid;
    sDBTableView1: TcxGridDBTableView;
    sLevel1: TcxGridLevel;
    ActionList1: TActionList;
    New: TAction;
    Edit: TAction;
    Delete: TAction;
    Print: TAction;
    sCharImageList1: TsCharImageList;
    ds_Payment: TDataSource;
    cxStyleRepository1: TcxStyleRepository;
    header_style: TcxStyle;
    select_style: TcxStyle;
    sDBTableView1ID: TcxGridDBColumn;
    sDBTableView1ORNO: TcxGridDBColumn;
    sDBTableView1PAYDATE: TcxGridDBColumn;
    sDBTableView1POSTEDDATETIME: TcxGridDBColumn;
    sDBTableView1POSTED: TcxGridDBColumn;
    sDBTableView1CHECKDATE: TcxGridDBColumn;
    sDBTableView1CHECKNO: TcxGridDBColumn;
    sDBTableView1NETAMNT: TcxGridDBColumn;
    sDBTableView1VENDOR: TcxGridDBColumn;
    sDBTableView1BANK: TcxGridDBColumn;
    sDBTableView1PAYMENTMODE: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure NewExecute(Sender: TObject);
    procedure EditExecute(Sender: TObject);
    procedure DeleteExecute(Sender: TObject);
    procedure PrintExecute(Sender: TObject);
    procedure txt_searchRightButtonClick(Sender: TObject);
    procedure txt_searchKeyPress(Sender: TObject; var Key: Char);
    procedure sDBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
    procedure search;
  public
    { Public declarations }
  end;

var
  f_Payment: Tf_Payment;

implementation

uses DateUtils, dmPM, fPaymentTemp;

{$R *.dfm}

procedure Tf_Payment.DeleteExecute(Sender: TObject);
begin
  with dm_PM do
  begin
    if not brw_PaymentPOSTED.Value then
    begin
      if MessageDlg('Continue to delete Payment Voucher No. '+brw_PaymentID.AsString +'?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        qry_Payment.Close;
        qry_Payment.SQL[2] := 'WHERE ID = :ID';
        qry_Payment.ParamByName('ID').Value  := brw_PaymentID.Value;
        qry_Payment.Open();

        qry_Payment.Edit;
        qry_PaymentCANCELLED.Value         := True;
        qry_PaymentCANCELLEDBYID.Value     := userid;
        qry_PaymentCANCELLEDDATETIME.Value := Now;
        qry_Payment.Post;
        qry_Payment.ApplyUpdates();

        del_PaymentDetail.Close;
        del_PaymentDetail.SQL[2] := 'WHERE HEADERID = '+qry_PaymentID.AsString;
        del_PaymentDetail.ExecSQL;

        MessageDlg('Payment Voucher has been deleted!', mtInformation, [mbOK], 0);
        search;
      end;
    end
    else
      MessageDlg('Posted Payment cannot be deleted!', mtError, [mbOK], 0);
  end;
end;

procedure Tf_Payment.EditExecute(Sender: TObject);
begin
  with dm_PM do
  begin
    qry_Payment.Close;
    qry_Payment.SQL[2]  := 'WHERE ID = :ID';
    qry_Payment.ParamByName('ID').Value := brw_PaymentID.Value;
    qry_Payment.Open();

    qry_Payment.Edit;

    qry_PaymentDetail.Close;
    qry_PaymentDetail.SQL[2]  := 'WHERE HEADERID = :HEADERID AND CANCELLED = FALSE';
    qry_PaymentDetail.ParamByName('HEADERID').Value := brw_PaymentID.Value;
    qry_PaymentDetail.Open();

    tb_PaymentDetail.Close;
    tb_PaymentDetail.Open;

    qry_PaymentDetail.First;
    while not qry_PaymentDetail.Eof do
    begin
      tb_PaymentDetail.Append;
      tb_PaymentDetailINVOICE.Value   := qry_PaymentDetailINVOICE.Value;
      tb_PaymentDetailREFDATE.Value   := qry_PaymentDetailREFDATE.Value;
      tb_PaymentDetailAMOUNT.Value    := qry_PaymentDetailAMOUNT.Value;
      tb_PaymentDetailPAIDAMNT.Value  := qry_PaymentDetailPAIDAMNT.Value;
      tb_PaymentDetailNETAMOUNT.Value := qry_PaymentDetailNETAMOUNT.Value;
      tb_PaymentDetailID.Value        := qry_PaymentDetailID.Value;
      tb_PaymentDetailREFID.Value     := qry_PaymentDetailREFID.Value;
      tb_PaymentDetail.Post;

      qry_PaymentDetail.Next;
    end;
    tb_PaymentDetail.First;

    f_PaymentTemp := Tf_PaymentTemp.Create(Self);
    if f_PaymentTemp.ShowModal = mrOk then
    begin
      qry_PaymentVENDOR.Value           := f_PaymentTemp.cmb_vendor.Text;
      qry_PaymentBANK.Value             := f_PaymentTemp.cmb_bank.Text;
      qry_Payment.Post;
      qry_Payment.ApplyUpdates();

      tb_PaymentDetail.First;
      while not tb_PaymentDetail.Eof do
      begin
        if tb_PaymentDetailNETAMOUNT.Value > 0 then
        begin
          qry_PaymentDetail.Close;
          if tb_PaymentDetailID.Value > 0 then
          begin
            qry_PaymentDetail.SQL[2]  := 'WHERE ID = :ID';
            qry_PaymentDetail.ParamByName('ID').Value := tb_PaymentDetailID.Value;
          end
          else
          qry_PaymentDetail.SQL[2]    := 'WHERE ID = 0';
          qry_PaymentDetail.Open();

          if tb_PaymentDetailID.Value > 0 then
          qry_PaymentDetail.Edit
          else
          qry_PaymentDetail.Append;

          qry_PaymentDetailHEADERID.Value   := qry_PaymentID.Value;
          qry_PaymentDetailREFID.Value      := tb_PaymentDetailREFID.Value;
          qry_PaymentDetailINVOICE.Value    := tb_PaymentDetailINVOICE.Value;
          qry_PaymentDetailREFDATE.Value    := tb_PaymentDetailREFDATE.Value;
          qry_PaymentDetailAMOUNT.Value     := tb_PaymentDetailAMOUNT.Value;
          qry_PaymentDetailPAIDAMNT.Value   := tb_PaymentDetailPAIDAMNT.Value;
          qry_PaymentDetailNETAMOUNT.Value  := tb_PaymentDetailNETAMOUNT.Value;
          qry_PaymentDetailFP.Value         := tb_PaymentDetailFP.Value;
          qry_PaymentDetailCANCELLED.Value  := False;
          qry_PaymentDetail.Post;
          qry_PaymentDetail.ApplyUpdates();
        end;
        tb_PaymentDetail.Next;
      end;
      search;
    end;
  end;
end;

procedure Tf_Payment.FormCreate(Sender: TObject);
begin
  date_1.Date := StartOfTheMonth(Now);
  date_2.Date := EndOfTheMonth(Now);
  cmb_filter.ItemIndex  := 0;
  search;
end;

procedure Tf_Payment.NewExecute(Sender: TObject);
begin
  with dm_PM do
  begin
    qry_Payment.Close;
    qry_Payment.SQL[2]  := 'WHERE ID = 0';
    qry_Payment.Open();

    qry_Payment.Append;
    qry_PaymentPAYDATE.Value      := Now;
    qry_PaymentCANCELLED.Value    := False;
    qry_PaymentCREATEDBYID.Value  := userid;
    qry_PaymentPOSTED.Value       := False;
    qry_PaymentPAYMENTMODE.Value  := 'CHECK';

    tb_PaymentDetail.Close;
    tb_PaymentDetail.Open;

    f_PaymentTemp := Tf_PaymentTemp.Create(Self);
    if f_PaymentTemp.ShowModal = mrOk then
    begin
      qry_PaymentVENDOR.Value           := f_PaymentTemp.cmb_vendor.Text;
      qry_PaymentBANK.Value             := f_PaymentTemp.cmb_bank.Text;
      qry_PaymentCREATEDDATETIME.Value  := Now;
      qry_Payment.Post;
      qry_Payment.ApplyUpdates();

      tb_PaymentDetail.First;
      while not tb_PaymentDetail.Eof do
      begin
        if tb_PaymentDetailNETAMOUNT.Value > 0 then
        begin
          qry_PaymentDetail.Close;
          qry_PaymentDetail.SQL[2]  := 'WHERE ID = 0';
          qry_PaymentDetail.Open();

          qry_PaymentDetail.Append;
          qry_PaymentDetailHEADERID.Value   := qry_PaymentID.Value;
          qry_PaymentDetailREFID.Value      := tb_PaymentDetailREFID.Value;
          qry_PaymentDetailINVOICE.Value    := tb_PaymentDetailINVOICE.Value;
          qry_PaymentDetailREFDATE.Value    := tb_PaymentDetailREFDATE.Value;
          qry_PaymentDetailAMOUNT.Value     := tb_PaymentDetailAMOUNT.Value;
          qry_PaymentDetailPAIDAMNT.Value   := tb_PaymentDetailPAIDAMNT.Value;
          qry_PaymentDetailNETAMOUNT.Value  := tb_PaymentDetailNETAMOUNT.Value;
          qry_PaymentDetailFP.Value         := tb_PaymentDetailFP.Value;
          qry_PaymentDetailCANCELLED.Value  := False;
          qry_PaymentDetail.Post;
          qry_PaymentDetail.ApplyUpdates();
        end;
        tb_PaymentDetail.Next;
      end;
      search;
    end;
  end;
end;

procedure Tf_Payment.PrintExecute(Sender: TObject);
begin
  with dm_PM do
  begin
    qry_Payment.Close;
    qry_Payment.SQL[2]  := 'WHERE ID = :ID';
    qry_Payment.ParamByName('ID').Value := brw_PaymentID.Value;
    qry_Payment.Open();

    qry_Payment.Edit;

    qry_PaymentDetail.Close;
    qry_PaymentDetail.SQL[2]  := 'WHERE HEADERID = :HEADERID AND CANCELLED = FALSE';
    qry_PaymentDetail.ParamByName('HEADERID').Value := brw_PaymentID.Value;
    qry_PaymentDetail.Open();

    tb_PaymentDetail.Close;
    tb_PaymentDetail.Open;

    qry_PaymentDetail.First;
    while not qry_PaymentDetail.Eof do
    begin
      tb_PaymentDetail.Append;
      tb_PaymentDetailINVOICE.Value   := qry_PaymentDetailINVOICE.Value;
      tb_PaymentDetailREFDATE.Value   := qry_PaymentDetailREFDATE.Value;
      tb_PaymentDetailAMOUNT.Value    := qry_PaymentDetailAMOUNT.Value;
      tb_PaymentDetailPAIDAMNT.Value  := qry_PaymentDetailPAIDAMNT.Value;
      tb_PaymentDetailNETAMOUNT.Value := qry_PaymentDetailNETAMOUNT.Value;
      tb_PaymentDetailID.Value        := qry_PaymentDetailID.Value;
      tb_PaymentDetailREFID.Value     := qry_PaymentDetailREFID.Value;
      tb_PaymentDetail.Post;

      qry_PaymentDetail.Next;
    end;
    tb_PaymentDetail.First;

    f_PaymentTemp := Tf_PaymentTemp.Create(Self);
    f_PaymentTemp.PrintExecute(nil);
  end;
end;

procedure Tf_Payment.sDBTableView1CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  btnPrint.Visible  := dm_PM.brw_PaymentPOSTED.Value;
end;

procedure Tf_Payment.search;
begin
  with dm_PM do
  begin
    brw_Payment.Close;
    if cmb_filter.ItemIndex = 0 then
    brw_Payment.SQL[2]  := 'WHERE ID LIKE :SEARCH AND (PAYDATE BETWEEN :date1 AND :date2) AND CANCELLED = FALSE'
    else if cmb_filter.ItemIndex = 1 then
    brw_Payment.SQL[2]  := 'WHERE VENDOR LIKE :SEARCH AND (PAYDATE BETWEEN :date1 AND :date2) AND CANCELLED = FALSE'
    else if cmb_filter.ItemIndex = 2 then
    brw_Payment.SQL[2]  := 'WHERE CHECKNO LIKE :SEARCH AND (PAYDATE BETWEEN :date1 AND :date2) AND CANCELLED = FALSE'
    else if cmb_filter.ItemIndex = 3 then
    brw_Payment.SQL[2]  := 'WHERE ORNO LIKE :SEARCH AND (PAYDATE BETWEEN :date1 AND :date2) AND CANCELLED = FALSE';
    brw_Payment.ParamByName('SEARCH').Value := '%'+Trim(txt_search.Text)+'%';
    brw_Payment.ParamByName('date1').Value  := FormatDateTime('yyyy-mm-dd', date_1.Date);
    brw_Payment.ParamByName('date2').Value  :=FormatDateTime('yyyy-mm-dd', date_2.Date);
    brw_Payment.Open();
  end;
end;

procedure Tf_Payment.txt_searchKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  search;
end;

procedure Tf_Payment.txt_searchRightButtonClick(Sender: TObject);
begin
  search;
end;

end.
