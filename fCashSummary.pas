
unit fCashSummary;

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
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, System.Actions,
  Vcl.ActnList, System.ImageList, Vcl.ImgList, acAlphaImageList, cxClasses,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridCustomView, cxGrid, scControls, scGPPagers, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.Menus, cxImageComboBox, frxClass, cxContainer, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxGridBandedTableView, cxGridDBBandedTableView,
  cxButtons;

type
  Tf_CashSummary = class(TForm)
    Panel2: TPanel;
    btnClose: TButton;
    Panel1: TPanel;
    Label3: TLabel;
    Label1: TLabel;
    txt_search: TButtonedEdit;
    cxStyleRepository1: TcxStyleRepository;
    Header_style: TcxStyle;
    select_style: TcxStyle;
    ds_jo: TDataSource;
    sCharImageList1: TsCharImageList;
    ActionList1: TActionList;
    date_1: TDateTimePicker;
    date_2: TDateTimePicker;
    Label2: TLabel;
    Label4: TLabel;
    PopupMenu1: TPopupMenu;
    Void1: TMenuItem;
    Void: TAction;
    Print: TAction;
    frxReport1: TfrxReport;
    cmb_Filter: TcxComboBox;
    scGPPageControl1: TscGPPageControl;
    scGPPageControlPage3: TscGPPageControlPage;
    scGPPageControlPage1: TscGPPageControlPage;
    grid_jodetail: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1ID: TcxGridDBColumn;
    cxGridDBTableView1CUSTOMER: TcxGridDBColumn;
    cxGridDBTableView1PAYMENTTYPE: TcxGridDBColumn;
    cxGridDBTableView1SOURCE: TcxGridDBColumn;
    cxGridDBTableView1REFID: TcxGridDBColumn;
    cxGridDBTableView1NETAMNT: TcxGridDBColumn;
    cxGridDBTableView1CASHAMNT: TcxGridDBColumn;
    cxGridDBTableView1CARDAMNT: TcxGridDBColumn;
    cxGridDBTableView1CHECKAMNT: TcxGridDBColumn;
    cxGridDBTableView1CHANGE: TcxGridDBColumn;
    cxGridDBTableView1SALESDATE: TcxGridDBColumn;
    cxGridDBTableView1CANCELLED: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    ds_Open: TDataSource;
    cxGrid1: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBTableView2ID: TcxGridDBColumn;
    cxGridDBTableView2DATE: TcxGridDBColumn;
    cxGridDBTableView2DATEOPENED: TcxGridDBColumn;
    cxGridDBTableView2OPENED_CASHIER: TcxGridDBColumn;
    cxGridDBTableView2ISACTIVE: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1ID: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1DATE: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1DATEOPENED: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1DATEENDED: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ISACTIVE: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1OPENED_CASHIER: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1CLOSED_CASHIER: TcxGridDBBandedColumn;
    PopupMenu2: TPopupMenu;
    OpenOverride: TAction;
    ClosingOverride: TAction;
    OpeningDrawerOverride1: TMenuItem;
    ClosingDrawerOverride1: TMenuItem;
    PopupMenu3: TPopupMenu;
    Print1: TMenuItem;
    Reprint: TAction;
    ReprintCashSalesSummary1: TMenuItem;
    cxButton1: TcxButton;
    ReprintPayslip: TAction;
    ReprintPayslip1: TMenuItem;
    ReprintPayslip2: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure txt_searchRightButtonClick(Sender: TObject);
    procedure txt_searchKeyPress(Sender: TObject; var Key: Char);
    procedure VoidExecute(Sender: TObject);
    procedure PrintExecute(Sender: TObject);
    procedure ClosingOverrideExecute(Sender: TObject);
    procedure OpenOverrideExecute(Sender: TObject);
    procedure ReprintExecute(Sender: TObject);
    procedure scGPPageControl1ChangePage(Sender: TObject);
    procedure ReprintPayslipExecute(Sender: TObject);
  private
    { Private declarations }
    procedure user_rights;
    procedure search;
  public
    { Public declarations }
  end;

var
  f_CashSummary: Tf_CashSummary;

implementation

{$R *.dfm}

uses dmPM, fReports, fCashFund, fCashReg, DateUtils;

{ Tf_CashSummary }

procedure Tf_CashSummary.ClosingOverrideExecute(Sender: TObject);
var index: Integer;
    amnt : Variant;
begin
  with dm_PM do
  begin
    if MessageDlg('Continue to Edit', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      qry_POSDay1.Close;
      qry_POSDay1.SQL[3] := 'WHERE POS_DAY.ID = :ID';
      qry_POSDay1.ParamByName('ID').Value := brw_POSDayID.Value;
      qry_POSDay1.Open();

      qry_POSDay1.Edit;
      qry_POSDay1CLOSE_OVERRIDEBY.Value        := userid;
      qry_POSDay1CLOSE_OVERRIDEDATETIME.Value  := Now;

      tb_CashFund.Close;
      tb_CashFund.Open;

      qry_CashEnd.Close;
      qry_CashEnd.SQL[2] := 'WHERE POSDAYID = :ID';
      qry_CashEnd.ParamByName('ID').Value  := qry_POSDay1ID.Value;
      qry_CashEnd.Open();

      qry_CashEnd.First;
      while not qry_CashEnd.Eof do
      begin
        tb_CashFund.Append;
        tb_CashFundID.Value   := qry_CashEndID.Value;
        tb_CashFundCASH.Value := qry_CashEndCASH.Value;
        tb_CashFundQTY.Value  := qry_CashEndQTY.Value;
        tb_CashFund.Post;
        qry_CashEnd.Next;
      end;

      tb_CashFund.First;

      f_CashFund  := Tf_CashFund.Create(Self);
      f_CashFund.Caption  := 'Cash Count - Closing';
      if f_CashFund.ShowModal = mrOk then
      begin
        tb_CashFund.Append;
        tb_CashFund.Delete;

        amnt := f_CashFund.grid_funddetailDBBandedTableView1.DataController.Summary.FooterSummaryValues[0];
        if amnt > 0 then
        begin
          if MessageDlg('Continue to override cash count?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
          begin
            qry_POSDay1.Post;
            qry_POSDay1.ApplyUpdates();

            tb_CashFund.First;
            while not tb_CashFund.Eof do
            begin
              qry_CashEnd.Close;
              qry_CashEnd.SQL[2] := 'WHERE ID =:ID';
              qry_CashEnd.ParamByName('ID').Value  := tb_CashFundID.Value;
              qry_CashEnd.Open();

              qry_CashEnd.Edit;
              qry_CashEndQTY.Value        := tb_CashFundQTY.Value;
              qry_CashEndAMNT.Value       := tb_CashFundAMNT.Value;
              qry_CashEndOVERRIDEBY.Value := userid;
              qry_CashEnd.Post;
              qry_CashEnd.ApplyUpdates();
              tb_CashFund.Next;
            end;
          end;
        end
        else
          MessageDlg('Cannot end day with 0 amount', mtError, [mbOK], 0);
      end;
    end;
  end;
end;

procedure Tf_CashSummary.FormShow(Sender: TObject);
begin
  user_rights;

  date_1.Date := Now;
  date_2.Date := Now;
  cmb_filter.ItemIndex  := 0;
  scGPPageControl1.TabIndex := 0;
  search;
end;

procedure Tf_CashSummary.OpenOverrideExecute(Sender: TObject);
var index: Integer;
    amnt : Variant;
begin
  with dm_PM do
  begin
    if MessageDlg('Continue to Edit', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      qry_POSDay1.Close;
      qry_POSDay1.SQL[3] := 'WHERE POS_DAY.ID = :ID';
      qry_POSDay1.ParamByName('ID').Value := brw_POSDayID.Value;
      qry_POSDay1.Open();

      qry_POSDay1.Edit;
      qry_POSDay1OPEN_OVERRIDEBY.Value        := userid;
      qry_POSDay1OPEN_OVERRIDEDATETIME.Value  := Now;

      tb_CashFund.Close;
      tb_CashFund.Open;

      qry_CashFund.Close;
      qry_CashFund.SQL[2] := 'WHERE POSDAYID = :ID';
      qry_CashFund.ParamByName('ID').Value  := qry_POSDay1ID.Value;
      qry_CashFund.Open();

      qry_CashFund.First;
      while not qry_CashFund.Eof do
      begin
        tb_CashFund.Append;
        tb_CashFundID.Value   := qry_CashFundID.Value;
        tb_CashFundCASH.Value := qry_CashFundCASH.Value;
        tb_CashFundQTY.Value  := qry_CashFundQTY.Value;
        tb_CashFund.Post;
        qry_CashFund.Next;
      end;

      tb_CashFund.First;

      f_CashFund  := Tf_CashFund.Create(Self);
      f_CashFund.Caption  := 'Cash Count - Opening';
      if f_CashFund.ShowModal = mrOk then
      begin
        tb_CashFund.Append;
        tb_CashFund.Delete;

        amnt := f_CashFund.grid_funddetailDBBandedTableView1.DataController.Summary.FooterSummaryValues[0];
        if amnt > 0 then
        begin
          if MessageDlg('Continue to override cash count?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
          begin
            qry_POSDay1.Post;
            qry_POSDay1.ApplyUpdates();

            tb_CashFund.First;
            while not tb_CashFund.Eof do
            begin
              qry_CashFund.Close;
              qry_CashFund.SQL[2] := 'WHERE ID =:ID';
              qry_CashFund.ParamByName('ID').Value  := tb_CashFundID.Value;
              qry_CashFund.Open();

              qry_CashFund.Edit;
              qry_CashFundQTY.Value         := tb_CashFundQTY.Value;
              qry_CashFundAMNT.Value        := tb_CashFundAMNT.Value;
              qry_CashFundOVERRIDEBY.Value  := userid;
              qry_CashFund.Post;
              qry_CashFund.ApplyUpdates();
              tb_CashFund.Next;
            end;
          end;
        end
        else
          MessageDlg('Cannot open day with 0 amount', mtError, [mbOK], 0);
      end;
    end;
  end;
end;

procedure Tf_CashSummary.PrintExecute(Sender: TObject);
var cash, card, check, change, total: Variant;
begin
  with dm_PM do
  begin
//    brw_JOPaid.Close;
//    if cmb_filter.ItemIndex = 0 then
//    brw_JOPaid.SQL[2]  := 'WHERE CREATEDBYID = :TRANSBY AND ID LIKE :SEARCH AND (SALESDATE BETWEEN :date1 and :date2) AND CANCELLED = FALSE'
//    else
//    brw_JOPaid.SQL[2]  := 'WHERE CREATEDBYID = :TRANSBY AND CUSTOMER LIKE :SEARCH AND (SALESDATE BETWEEN :date1 and :date2) AND CANCELLED = FALSE';
//    brw_JOPaid.ParamByName('TRANSBY').Value := userid;
//    brw_JOPaid.ParamByName('SEARCH').Value  := '%'+Trim(txt_search.Text)+'%';
//    brw_JOPaid.ParamByName('date1').Value   := FormatDateTime('yyyy-mm-dd', date_1.Date);
//    brw_JOPaid.ParamByName('date2').Value   := FormatDateTime('yyyy-mm-dd', date_2.Date);
//    brw_JOPaid.Open();

    total := cxGridDBTableView1.DataController.Summary.FooterSummaryValues[1];
    cash  := cxGridDBTableView1.DataController.Summary.FooterSummaryValues[2];
    card  := cxGridDBTableView1.DataController.Summary.FooterSummaryValues[3];
    check := cxGridDBTableView1.DataController.Summary.FooterSummaryValues[4];
    change:= cxGridDBTableView1.DataController.Summary.FooterSummaryValues[5];

    brw_Users.Close;
    brw_Users.SQL[2] := 'WHERE ID = :ID AND CANCELLED = FALSE';
    brw_Users.ParamByName('ID').Value    := userid;
    brw_Users.Open();

    f_Reports := Tf_Reports.Create(Self);

    TfrxMemoView(f_Reports.rep_cashsales.FindObject('cash')).Text := Trim(FormatCurr('###,###,##0.00', cash));
    TfrxMemoView(f_Reports.rep_cashsales.FindObject('card')).Text := Trim(FormatCurr('###,###,##0.00', card));
    TfrxMemoView(f_Reports.rep_cashsales.FindObject('check')).Text := Trim(FormatCurr('###,###,##0.00', check));
    TfrxMemoView(f_Reports.rep_cashsales.FindObject('change')).Text := '('+Trim(FormatCurr('###,###,##0.00', change))+')';
    TfrxMemoView(f_Reports.rep_cashsales.FindObject('total')).Text := Trim(FormatCurr('###,###,##0.00', cash + card + check - change));

    TfrxMemoView(f_Reports.rep_cashsales.FindObject('MEMO40')).Text := DateToStr(date_1.Date) + '-'+DateToStr(date_2.Date);
    TfrxMemoView(f_Reports.rep_cashsales.FindObject('MEMO41')).Text := brw_UsersLASTNAME.AsString + ', '+brw_UsersFIRSTNAME.AsString + ' '+brw_UsersMIDDLENAME.AsString;
    TfrxMemoView(f_Reports.rep_cashsales.FindObject('MEMO42')).Text := cmb_filter.Text;
    f_Reports.rep_cashsales.ShowReport();
  end;
end;

procedure Tf_CashSummary.ReprintExecute(Sender: TObject);
begin
  f_cashreg.preview_cash_summary(dm_PM.brw_POSDayID.Value, True);
end;

procedure Tf_CashSummary.ReprintPayslipExecute(Sender: TObject);
begin
  with dm_PM do
  begin
    qry_CashOutDetail.Close;
    qry_CashOutDetail.SQL[2] := 'WHERE HEADERID = :ID AND CANCELLED = FALSE';
    qry_CashOutDetail.ParamByName('ID').Value := brw_CashSumID.Value;
    qry_CashOutDetail.Open();

    if qry_CashOutDetail.RecordCount > 0 then
    begin
      brw_ExpenseType.Close;
      brw_ExpenseType.SQL[2]  := 'WHERE CANCELLED = FALSE';
      brw_ExpenseType.Open();

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
          //f_CashReg.preview_payslip(qry_CashOutDetailEMPID.Value, qry_CashOutDetailPAYDATEFROM.Value, qry_CashOutDetailPAYDATETO.Value);
        end
        else
          MessageDlg('Cannot preview payslip on the record selected.', mtInformation, [mbOK], 0);
      end;
      brw_ExpenseType.EnableControls;
    end
    else
      MessageDlg('Cannot preview voided payroll entry', mtInformation, [mbOK], 0);
  end;
end;

procedure Tf_CashSummary.scGPPageControl1ChangePage(Sender: TObject);
begin
  search;
end;

procedure Tf_CashSummary.search;
begin
  with dm_PM do
  begin
    if scGPPageControl1.TabIndex = 0 then
    begin
      brw_CashSum.Close;
      if cmb_filter.ItemIndex = 0 then
      brw_CashSum.SQL[2]  := 'WHERE ID LIKE :SEARCH AND (SALESDATE BETWEEN :date1 and :date2)'  //CREATEDBYID = :TRANSBY AND
      else
      brw_CashSum.SQL[2]  := 'WHERE CUSTOMER LIKE :SEARCH AND (SALESDATE BETWEEN :date1 and :date2)';
      //brw_CashSum.ParamByName('TRANSBY').Value := userid;
      brw_CashSum.ParamByName('SEARCH').Value := '%'+Trim(txt_search.Text)+'%';
      brw_CashSum.ParamByName('date1').Value  := FormatDateTime('yyyy-mm-dd', date_1.Date);
      brw_CashSum.ParamByName('date2').Value := FormatDateTime('yyyy-mm-dd', date_2.Date);
      brw_CashSum.Open();
    end
    else
    begin
      brw_POSDay.Close;
      brw_POSDay.SQL[4]  := 'WHERE (POS_DAY.DATE BETWEEN :date1 and :date2)'; //(POS_DAY.OPENEDBY = :OPENEDBY OR POS_DAY.ENDEDBY = :ENDEDBY) AND
      //brw_POSDay.ParamByName('OPENEDBY').Value := userid;
      //brw_POSDay.ParamByName('ENDEDBY').Value  := userid;
      brw_POSDay.ParamByName('date1').Value    := FormatDateTime('yyyy-mm-dd', date_1.Date);
      brw_POSDay.ParamByName('date2').Value    := FormatDateTime('yyyy-mm-dd', date_2.Date);
      brw_POSDay.Open();
    end;

  end;
end;

procedure Tf_CashSummary.txt_searchKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  search;
end;

procedure Tf_CashSummary.txt_searchRightButtonClick(Sender: TObject);
begin
  search;
end;

procedure Tf_CashSummary.user_rights;
begin
  with dm_PM do
  begin
    brw_Rights.Close;
    brw_Rights.SQL[4] := 'WHERE EMP_ROLE.CANCELLED = FALSE';
    brw_Rights.Open();
    brw_Rights.First;

    Void.Enabled              := brw_Rights.Locate('POLICYID;SELECT;ROLEID',VarArrayOf([15, True, roleid]), []);
    OpenOverride.Enabled      := brw_Rights.Locate('POLICYID;SELECT;ROLEID',VarArrayOf([16, True, roleid]), []);
    ClosingOverride.Enabled   := brw_Rights.Locate('POLICYID;SELECT;ROLEID',VarArrayOf([17, True, roleid]), []);
  end;
end;

procedure Tf_CashSummary.VoidExecute(Sender: TObject);
var paid, paidamnt: Real;
begin
  with dm_PM do
  begin
    if not brw_CashSumCANCELLED.Value then
    begin
      if MessageDlg('Do you want to void this record?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        qry_CashReg.Close;
        qry_CashReg.SQL[2]  := 'WHERE ID = :ID';
        qry_CashReg.ParamByName('ID').Value := brw_CashSumID.Value;
        qry_CashReg.Open();

        if qry_CashReg.RecordCount > 0 then
        begin
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
            brw_JOPaid.ParamByName('ID').Value := brw_CashSumREFID.Value;
            brw_JOPaid.Open();

            paid  := (brw_JOPaidCASHAMNT.Value + brw_JOPaidCARDAMNT.Value + brw_JOPaidCHECKAMNT.Value) - brw_JOPaidCHANGEAMNT.Value;

            brw_JOPaid.Close;
            brw_JOPaid.SQL[2] := 'WHERE SOURCE = ''JO'' AND PAYMENTTYPE = ''D'' AND REFID = :ID AND CANCELLED = FALSE';
            brw_JOPaid.ParamByName('ID').Value := brw_CashSumREFID.Value;
            brw_JOPaid.Open();

            paidamnt  := paid + (brw_JOPaidCASHAMNT.Value + brw_JOPaidCARDAMNT.Value + brw_JOPaidCHECKAMNT.Value);

            brw_JOBalance.Close;
            brw_JOBalance.SQL[2]  := 'WHERE JONO = :ID AND CANCELLED = FALSE';
            brw_JOBalance.ParamByName('ID').Value := brw_CashSumREFID.Value;
            brw_JOBalance.Open();

            qry_JO.Close;
            qry_JO.SQL[2] := 'WHERE JONO = :ID AND CANCELLED = FALSE';
            qry_JO.ParamByName('ID').Value := brw_CashSumREFID.Value;
            qry_JO.Open();

            qry_JO.Edit;
            if paidamnt <=0 then
            begin
              qry_JOPOSTED.Value          := False;
              qry_JOPOSTEDDATETIME.Clear;
            end;
            qry_JOPAIDAMNT.Value        := paidamnt;
            qry_JOBALAMNT.Value         := (brw_JOBalanceNETAMNT.Value - paidamnt);
            qry_JO.Post;
            qry_JO.ApplyUpdates();
          end
          else if qry_CashRegSOURCE.Value = 'OUT' then
          begin
            del_CashoutDetail.Close;
            del_CashoutDetail.SQL[2] := 'WHERE HEADERID = '+qry_CashRegID.AsString;
            del_CashoutDetail.ExecSQL;
          end
          else if qry_CashRegSOURCE.Value = 'IN' then
          begin
            del_CashInDetail.Close;
            del_CashInDetail.SQL[2] := 'WHERE HEADERID = '+qry_CashRegID.AsString;
            del_CashInDetail.ExecSQL;
          end;

          search;
        end;
      end;
    end
    else
      MessageDlg('This record is already voided!', mtInformation, [mbOK], 0);
  end;
end;

end.
