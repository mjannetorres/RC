unit fmenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.ToolWin,
  Vcl.StdCtrls, sScrollBox, sFrameBar, sSkinProvider, sSkinManager,
  acAlphaImageList, System.Actions, Vcl.ActnList, System.ImageList, Vcl.ImgList,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore,
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
  dxSkinXmas2008Blue, cxButtons, scDrawUtils, scGPImages, scImageCollection,
  scStyleManager, scStyledForm, scControls, scGPControls, scGPPagers,
  scGPExtControls, scAdvancedControls, scGPFontControls, scModernControls,
  Vcl.OleCtrls, SHDocVw, acWebBrowser, frxClass;

type
  Tf_menu = class(TForm)
    StatusBar1: TStatusBar;
    scStyledForm1: TscStyledForm;
    PopupMenu1: TPopupMenu;
    Open1: TMenuItem;
    New1: TMenuItem;
    Save1: TMenuItem;
    SaveAs1: TMenuItem;
    N2: TMenuItem;
    Print1: TMenuItem;
    PrintSetup1: TMenuItem;
    N1: TMenuItem;
    Exit1: TMenuItem;
    scStyleManager1: TscStyleManager;
    scGPImageCollection1: TscGPImageCollection;
    scGPVirtualImageList1: TscGPVirtualImageList;
    scGPToolPager1: TscGPToolPager;
    scGPToolPagerPage3: TscGPToolPagerPage;
    scGPToolPagerPage2: TscGPToolPagerPage;
    scGPToolPagerPage1: TscGPToolPagerPage;
    scGPToolGroupPanel3: TscGPToolGroupPanel;
    btnPMBoard: TscGPButton;
    scGPPanel4: TscGPPanel;
    CloseButton: TscGPGlyphButton;
    MinButton: TscGPGlyphButton;
    scGPGlyphButton2: TscGPGlyphButton;
    MaxButton: TscGPGlyphButton;
    scLabel1: TscGPLabel;
    scGPToolPagerPage4: TscGPToolPagerPage;
    scGPToolPagerPage5: TscGPToolPagerPage;
    scGPToolPagerPage6: TscGPToolPagerPage;
    sWebBrowser1: TsWebBrowser;
    ActionList1: TActionList;
    PMBoard: TAction;
    Splitter1: TSplitter;
    MaterialRequest: TAction;
    Timer1: TTimer;
    scGPToolPagerPage7: TscGPToolPagerPage;
    scGPToolGroupPanel1: TscGPToolGroupPanel;
    btnUsers: TscGPButton;
    scGPToolGroupPanel4: TscGPToolGroupPanel;
    btnCompany: TscGPButton;
    CompanySetup: TAction;
    EmployeeRegistration: TAction;
    UserRegistration: TAction;
    scGPToolPagerPage8: TscGPToolPagerPage;
    scGPToolGroupPanel5: TscGPToolGroupPanel;
    btnEmpReg: TscGPButton;
    scGPToolGroupPanel6: TscGPToolGroupPanel;
    btnPayroll: TscGPButton;
    Payroll: TAction;
    Roles: TAction;
    scGPToolGroupPanel7: TscGPToolGroupPanel;
    btnItems: TscGPButton;
    btnFabrics: TscGPButton;
    Items: TAction;
    Garments: TAction;
    Fabrics: TAction;
    ItemUnit: TAction;
    scGPToolGroupPanel8: TscGPToolGroupPanel;
    btnCashReg: TscGPButton;
    CashRegister: TAction;
    SalesInvoice: TAction;
    scGPToolGroupPanel9: TscGPToolGroupPanel;
    btnPO: TscGPButton;
    btnIR: TscGPButton;
    PO: TAction;
    IR: TAction;
    btnCPR: TscGPButton;
    scGPToolGroupPanel2: TscGPToolGroupPanel;
    btnExpense: TscGPButton;
    btnPettyCash: TscGPButton;
    Payment: TAction;
    Expense: TAction;
    btnPayment: TscGPButton;
    PettyCash: TAction;
    btnGarments: TscGPButton;
    btnUnit: TscGPButton;
    UserRoles: TAction;
    LogOut: TAction;
    btnUserRoles: TscGPButton;
    scGPToolGroupPanel10: TscGPToolGroupPanel;
    btnVendor: TscGPButton;
    Vendor: TAction;
    scGPToolGroupPanel11: TscGPToolGroupPanel;
    btnExpenseType: TscGPButton;
    Bank: TAction;
    btnBank: TscGPButton;
    ExpenseType: TAction;
    FabRequest: TAction;
    scGPToolGroupPanel12: TscGPToolGroupPanel;
    btnPMReports: TscGPButton;
    PopupMenu3: TPopupMenu;
    JOSummary: TAction;
    JobOrderSummary1: TMenuItem;
    scGPToolGroupPanel13: TscGPToolGroupPanel;
    scGPButton1: TscGPButton;
    PopupMenu4: TPopupMenu;
    SalesSummary: TAction;
    SalesSummary1: TMenuItem;
    ExpenseSummary: TMenuItem;
    PayrollSummary: TAction;
    PopupMenu5: TPopupMenu;
    PayrollSummary1: TMenuItem;
    scGPToolGroupPanel14: TscGPToolGroupPanel;
    scGPButton2: TscGPButton;
    CPRSummary: TAction;
    PopupMenu6: TPopupMenu;
    MenuItem1: TMenuItem;
    scGPToolGroupPanel15: TscGPToolGroupPanel;
    scGPButton3: TscGPButton;
    RRSummary: TAction;
    RRSummary1: TMenuItem;
    JODetail: TAction;
    JobOrderReportDetail1: TMenuItem;
    SalesDetail: TAction;
    SalesDetail1: TMenuItem;
    ExpenseDetail: TAction;
    ExpenseCashoutDetail1: TMenuItem;
    CashFlow: TAction;
    CashFlow1: TMenuItem;
    MatReqDetail: TAction;
    MaterialRequestDetail1: TMenuItem;
    ProjectCosting: TAction;
    ProjectCosting1: TMenuItem;
    ProjectCostingSummary: TAction;
    ProjectCostingSummary1: TMenuItem;
    ReplenishmentDetail: TAction;
    ReplenishmentSummary1: TMenuItem;
    ReplenishmentSummary: TAction;
    ReplenishmentSummary2: TMenuItem;
    scGPButton4: TscGPButton;
    Notif: TAction;
    btnClients: TscGPButton;
    Clients: TAction;
    btnMatRequest: TscGPButton;
    scGPButton5: TscGPButton;
    btnWorkLog: TscGPButton;
    WorkLog: TAction;
    procedure MinButtonClick(Sender: TObject);
    procedure MaxButtonClick(Sender: TObject);
    procedure CloseButtonClick(Sender: TObject);
    procedure PMBoardExecute(Sender: TObject);
    procedure scGPButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure MaterialRequestExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure CompanySetupExecute(Sender: TObject);
    procedure EmployeeRegistrationExecute(Sender: TObject);
    procedure UserRegistrationExecute(Sender: TObject);
    procedure PayrollExecute(Sender: TObject);
    procedure RolesExecute(Sender: TObject);
    procedure ItemsExecute(Sender: TObject);
    procedure GarmentsExecute(Sender: TObject);
    procedure FabricsExecute(Sender: TObject);
    procedure Veb(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure CashRegisterExecute(Sender: TObject);
    procedure SalesInvoiceExecute(Sender: TObject);
    procedure POExecute(Sender: TObject);
    procedure IRExecute(Sender: TObject);
    procedure ExpenseExecute(Sender: TObject);
    procedure PaymentExecute(Sender: TObject);
    procedure PettyCashExecute(Sender: TObject);
    procedure UserRolesExecute(Sender: TObject);
    procedure LogOutExecute(Sender: TObject);
    procedure VendorExecute(Sender: TObject);
    procedure BankExecute(Sender: TObject);
    procedure ExpenseTypeExecute(Sender: TObject);
    procedure FabRequestExecute(Sender: TObject);
    procedure JOSummaryExecute(Sender: TObject);
    procedure SalesSummaryExecute(Sender: TObject);
    procedure ExpenseSummaryClick(Sender: TObject);
    procedure PayrollSummaryExecute(Sender: TObject);
    procedure CPRSummaryExecute(Sender: TObject);
    procedure RRSummaryExecute(Sender: TObject);
    procedure JODetailExecute(Sender: TObject);
    procedure SalesDetailExecute(Sender: TObject);
    procedure ExpenseDetailExecute(Sender: TObject);
    procedure CashFlowExecute(Sender: TObject);
    procedure MatReqDetailExecute(Sender: TObject);
    procedure ProjectCostingExecute(Sender: TObject);
    procedure ProjectCostingSummaryExecute(Sender: TObject);
    procedure ReplenishmentDetailExecute(Sender: TObject);
    procedure ReplenishmentSummaryExecute(Sender: TObject);
    procedure NotifExecute(Sender: TObject);
    procedure ClientsExecute(Sender: TObject);
    procedure WorkLogExecute(Sender: TObject);
  private
    { Private declarations }
    procedure user_rights;
  public
    { Public declarations }
    procedure CloseAllForms;
    procedure webOn;
    procedure webOff;
  end;

var
  f_menu: Tf_menu;

implementation

{$R *.dfm}

uses frmPM, fPMBoard, FJO, dmPM, DateUtils, fMatRequest, fCompany, fUsers, fEmp,
  fFabrics, fGarments, fUnit, fItems, fLogin, fCashReg, fPO, fRR, fPayment,
  fPettyCash, fExpense, fPayroll, fPolicy, fVendor, fBank, fExpenseType,
  fRequest, fDateRange, fReports, fnotif, fClients, fLogin1, fWorkLog;

procedure Tf_menu.BankExecute(Sender: TObject);
begin
  CloseAllForms;
  f_Bank := Tf_Bank.Create(Self);
  webOff;
end;

procedure Tf_menu.Button1Click(Sender: TObject);
begin
  f_Login := Tf_Login.Create(Self);
  f_Login.ShowModal;

end;

procedure Tf_menu.CashFlowExecute(Sender: TObject);
var balance: Real;
begin
  with dm_PM do
  begin
    f_DateRange := Tf_DateRange.Create(Self);
    f_DateRange.date_1.Date := StartOfTheMonth(Now);
    f_DateRange.date_2.Date := EndOfTheMonth(Now);

    if f_DateRange.ShowModal = mrOk then
    begin
      tb_CashFlow.Close;
      tb_CashFlow.Open;

      brw_OpenCashSum.Close;
      brw_OpenCashSum.SQL[3]  := 'WHERE (POS_DAY.DATE BETWEEN :DATE1 AND :DATE2)';
      brw_OpenCashSum.ParamByName('DATE1').Value := FormatDateTime('yyyy-mm-dd hh:nn', StartOfTheDay(f_DateRange.date_1.Date));
      brw_OpenCashSum.ParamByName('DATE2').Value := FormatDateTime('yyyy-mm-dd hh:nn', EndOfTheDay(f_DateRange.date_2.Date));
      brw_OpenCashSum.Open();


      if brw_OpenCashSum.RecordCount > 0 then
      begin
        brw_OpenCashSum.First;
        while not brw_OpenCashSum.Eof do
        begin
          brw_CashSum.Close;
          brw_CashSum.SQL[2]  := 'WHERE POSDAYID = :ID AND CANCELLED = FALSE';
          brw_CashSum.ParamByName('ID').Value := brw_OpenCashSumPOSDAYID.Value;
          brw_CashSum.Open();

          brw_CloseCashSum.Close;
          brw_CloseCashSum.SQL[3]  := 'WHERE (POS_DAY.ID = :ID)';
          brw_CloseCashSum.ParamByName('ID').Value := brw_OpenCashSumPOSDAYID.Value;
          brw_CloseCashSum.Open();

          if brw_CashSum.RecordCount >0 then
          begin
            brw_CashSum.First;
            while not brw_CashSum.Eof do
            begin
              tb_CashFlow.Append;
              tb_CashFlowPOSDAY.Value       := brw_OpenCashSumPOSDAY.Value;
              tb_CashFlowPOSDAYID.Value     := brw_OpenCashSumPOSDAYID.Value;
              tb_CashFlowOPENNING.Value     := brw_OpenCashSumAMNT.Value;
              tb_CashFlowENDING.Value       := brw_CloseCashSumAMNT.Value;
              tb_CashFlowTIME.Value         := StrToDateTime(FormatDateTime('hh:nn AM/PM', brw_CashSumCREATEDDATETIME.Value));

              tb_CashFlowCUSTOMER.Value     := brw_CashSumCUSTOMER.AsString;
              if (brw_CashSumSOURCE.Value = 'JO') or (brw_CashSumSOURCE.Value = 'CASH') or (brw_CashSumSOURCE.Value = 'IN') then
              begin
                tb_CashFlowOPERATIONS.Value  :=  'RECEIVED '+brw_CashSumPAYTPE.AsString;
                if brw_CashSumSOURCE.Value = 'JO' then
                tb_CashFlowOPERATIONS.Value   := tb_CashFlowOPERATIONS.AsString + ' FOR JO No. '+brw_CashSumREFID.AsString + ' (OR No. '+brw_CashSumID.AsString+')'
                else
                tb_CashFlowOPERATIONS.Value  := tb_CashFlowOPERATIONS.AsString +' (OR No. '+brw_CashSumID.AsString+')';
              end
              else
              tb_CashFlowOPERATIONS.Value   := brw_CashSumEXPENSETYPE.AsString + ' (OR No. '+brw_CashSumID.AsString+')';

              tb_CashFlowDEBIT.Value := 0;
              tb_CashFlowCREDIT.Value := 0;

              if brw_CashSumSOURCE.Value = 'JO' then
              tb_CashFlowDEBIT.Value := brw_CashSumPAIDAMNT.Value
              else if (brw_CashSumSOURCE.Value = 'CASH') or (brw_CashSumSOURCE.Value = 'IN') then
              tb_CashFlowDEBIT.Value := brw_CashSumNETAMNT.Value
              else
              tb_CashFlowCREDIT.Value   := brw_CashSumNETAMNT.Value;

              tb_CashFlow.Post;
              brw_CashSum.Next;
            end;
          end;
          balance := balance + tb_CashFlowENDING.Value;
          brw_OpenCashSum.Next;
        end;
      end;

      tb_CashFlow.IndexFieldNames := 'POSDAYID;TIME';
      f_Reports := Tf_Reports.Create(Self);
      TfrxMemoView(f_Reports.rep_cashflow.FindObject('period')).Text  := DateToStr(f_DateRange.date_1.Date) + ' - '+DateToStr(f_DateRange.date_2.Date);
      TfrxMemoView(f_Reports.rep_cashflow.FindObject('grandtotal')).Text  := 'Ending Bal. '+FormatCurr('###,###,##0.00', balance);

      f_Reports.rep_cashflow.ShowReport();
    end;
  end;
end;

procedure Tf_menu.CashRegisterExecute(Sender: TObject);
begin
  f_CashReg := Tf_cashReg.Create(Self);
  f_CashReg.ShowModal;
end;

procedure Tf_menu.ClientsExecute(Sender: TObject);
begin
  CloseAllForms;
  f_Clients := Tf_Clients.Create(Self);
  webOff;
end;

procedure Tf_menu.CloseAllForms;
var i: Integer;
begin
  for i := Screen.FormCount -1 downto 0 do
  begin
    if Screen.Forms[i] <> Self then
    Screen.Forms[i].Close;
  end;
  webOn;
end;

procedure Tf_menu.CloseButtonClick(Sender: TObject);
begin
  Close;
end;

procedure Tf_menu.CompanySetupExecute(Sender: TObject);
begin
  with dm_PM do
  begin
    qry_company.Close;
    qry_company.SQL[2]  := 'WHERE ID =1';
    qry_company.Open();

    qry_company.Edit;
    f_company := Tf_Company.Create(nil);
    if f_Company.ShowModal = mrOk then
    begin
      qry_companyCREATEDBYID.Value      := userid;
      qry_companyCREATEDDATETIME.Value  := Now;
      qry_company.Post;
      qry_company.ApplyUpdates();
    end;
  end;
end;

procedure Tf_menu.CPRSummaryExecute(Sender: TObject);
begin
  with dm_PM do
  begin
    f_DateRange := Tf_DateRange.Create(Self);
    f_DateRange.date_1.Date := StartOfTheMonth(Now);
    f_DateRange.date_2.Date := EndOfTheMonth(Now);

    if f_DateRange.ShowModal = mrOk then
    begin
      brw_CPRReport.Close;
      brw_CPRReport.SQL[4] := 'WHERE (HEADER.REQDATETIME BETWEEN :DATE1 AND :DATE2) AND HEADER.CANCELLED = FALSE';
      brw_CPRReport.ParamByName('DATE1').Value := FormatDateTime('yyyy-mm-dd hh:nn', StartOfTheDay(f_DateRange.date_1.Date));
      brw_CPRReport.ParamByName('DATE2').Value := FormatDateTime('yyyy-mm-dd hh:nn', EndOfTheDay(f_DateRange.date_2.Date));
      brw_CPRReport.Open();

      f_Reports := Tf_Reports.Create(Self);
      TfrxMemoView(f_Reports.rep_CPRSummary.FindObject('period')).Text  := DateToStr(f_DateRange.date_1.Date) + ' - '+DateToStr(f_DateRange.date_2.Date);

      f_Reports.rep_CPRSummary.ShowReport();
    end;
  end;
end;

procedure Tf_menu.EmployeeRegistrationExecute(Sender: TObject);
begin
  CloseAllForms;
  f_Emp := Tf_Emp.Create(Self);
  webOff;
end;

procedure Tf_menu.ExpenseDetailExecute(Sender: TObject);
begin
  with dm_PM do
  begin
    f_DateRange := Tf_DateRange.Create(Self);
    f_DateRange.date_1.Date := StartOfTheMonth(Now);
    f_DateRange.date_2.Date := EndOfTheMonth(Now);

    if f_DateRange.ShowModal = mrOk then
    begin
      brw_ViewCA.Close;
      brw_ViewCA.SQL[4]  := 'WHERE (HEADER.SALESDATE BETWEEN :date1 and :date2) AND HEADER.SOURCE = ''OUT'' AND HEADER.CANCELLED = FALSE AND DETAIL.CANCELLED = FALSE';
      brw_ViewCA.ParamByName('date1').Value  := FormatDateTime('yyyy-mm-dd', f_DateRange.date_1.Date);
      brw_ViewCA.ParamByName('date2').Value := FormatDateTime('yyyy-mm-dd', f_DateRange.date_2.Date);
      brw_ViewCA.Open();

      f_Reports := Tf_Reports.Create(Self);

      TfrxMemoView(f_Reports.rep_ExpenseDetail.FindObject('period')).Text  := DateToStr(f_DateRange.date_1.Date) + ' - '+DateToStr(f_DateRange.date_2.Date);

      f_Reports.rep_ExpenseDetail.ShowReport();

    end;
  end;
end;

procedure Tf_menu.ExpenseExecute(Sender: TObject);
begin
  CloseAllForms;
  f_Expense := Tf_Expense.Create(Self);
  webOff;
end;

procedure Tf_menu.ExpenseSummaryClick(Sender: TObject);
begin
  with dm_PM do
  begin

    f_DateRange := Tf_DateRange.Create(Self);
    f_DateRange.date_1.Date := StartOfTheMonth(Now);
    f_DateRange.date_2.Date := EndOfTheMonth(Now);

    if f_DateRange.ShowModal = mrOk then
    begin
      brw_CashSum.Close;
      brw_CashSum.SQL[2]  := 'WHERE (SALESDATE BETWEEN :date1 and :date2) AND SOURCE IN (''OUT'', ''DISBURSE'') AND CANCELLED = FALSE';
      brw_CashSum.ParamByName('date1').Value  := FormatDateTime('yyyy-mm-dd', f_DateRange.date_1.Date);
      brw_CashSum.ParamByName('date2').Value := FormatDateTime('yyyy-mm-dd', f_DateRange.date_2.Date);
      brw_CashSum.Open();

      f_Reports := Tf_Reports.Create(Self);

      TfrxMemoView(f_Reports.rep_ExpenseSummary.FindObject('period')).Text  := DateToStr(f_DateRange.date_1.Date) + ' - '+DateToStr(f_DateRange.date_2.Date);

      f_Reports.rep_ExpenseSummary.ShowReport();

    end;
  end;
end;

procedure Tf_menu.ExpenseTypeExecute(Sender: TObject);
begin
  CloseAllForms;
  f_ExpenseType := Tf_ExpenseType.Create(Self);
  webOff;
end;

procedure Tf_menu.FabRequestExecute(Sender: TObject);
begin
  CloseAllForms;
  f_Request := Tf_Request.Create(Self);
  webOff;
end;

procedure Tf_menu.FabricsExecute(Sender: TObject);
begin
  CloseAllForms;
  f_Fabric := Tf_Fabric.Create(Self);
  webOff;
end;

procedure Tf_menu.FormCreate(Sender: TObject);
var SomeTxtFile : TextFile;
    buffer,SERVER, PORT, vendorLIB: string;
begin
  with dm_PM do
  begin
    if FileExists('config.txt') then
    begin
      AssignFile(SomeTxtFile, 'config.txt') ;
      Reset(SomeTxtFile) ;

      while not EOF(SomeTxtFile) do
      begin
        ReadLn(SomeTxtFile,buffer);

        if AnsiPos('SERVER:', buffer)=1 then
        begin
          SERVER  :=  TrimLeft(copy(buffer, AnsiPos(':', buffer) + 1, 100));
          dbConn.Params.Values['Server'] := SERVER;
        end;
        if AnsiPos('PORT:', buffer)=1 then
        begin
          PORT  :=  TrimLeft(copy(buffer, AnsiPos(':', buffer) + 1, 100));
          dbConn.Params.Values['Port'] := PORT;
        end;
        if AnsiPos('MAP:', buffer)=1 then
        begin
          map  :=  TrimLeft(copy(buffer, AnsiPos(':', buffer) + 1, 100));
        end;
        if AnsiPos('vendorLIB:', buffer)=1 then
        begin
          vendorLIB  :=  TrimLeft(copy(buffer, AnsiPos(':', buffer) + 1, 100));
        end;
      end;

      try
        FDPhysMySQLDriverLink1.VendorLib  := vendorLIB;
        dbConn.Connected := True;

      except
        on E: Exception do
        begin
          MessageDlg(E.Message, mtError, [mbOK], 0);
          Application.Terminate;
        end;
      end;

      scStyledForm1.DWMClientMaximize;

      f_Login := Tf_Login.Create(Self);
      f_Login.ShowModal;

    end
    else
    begin
      MessageDlg('config.txt not found.', mtError, [mbCancel], 0);
      Application.Terminate;
    end;
  end;
end;

procedure Tf_menu.FormShow(Sender: TObject);
begin
  if f_Login.Showing then
  begin
    f_Login.sSkinManager1.Active := False;
    f_Login.firstOpen := False;
    f_Login.Close;

    scGPToolPager1.TabIndex := 0;
    user_rights;
  end;

  Timer1.Enabled  := True;
end;

procedure Tf_menu.GarmentsExecute(Sender: TObject);
begin
  CloseAllForms;
  f_Garments := Tf_Garments.Create(Self);
  webOff;
end;

procedure Tf_menu.IRExecute(Sender: TObject);
begin
  CloseAllForms;
  f_RR := Tf_RR.Create(Self);
  webOff;
end;

procedure Tf_menu.ItemsExecute(Sender: TObject);
begin
  CloseAllForms;
  f_Items := Tf_Items.Create(Self);
  webOff;
end;

procedure Tf_menu.JODetailExecute(Sender: TObject);
begin
  with dm_PM do
  begin
    f_DateRange := Tf_DateRange.Create(Self);
    f_DateRange.date_1.Date := StartOfTheMonth(Now);
    f_DateRange.date_2.Date := EndOfTheMonth(Now);

    if f_DateRange.ShowModal = mrOk then
    begin
      brw_JOReport.Close;
      brw_JOReport.SQL[4] := 'WHERE (HEADER.LOGDATE BETWEEN :DATE1 AND :DATE2) AND HEADER.CANCELLED = FALSE';
      brw_JOReport.ParamByName('DATE1').Value := FormatDateTime('yyyy-mm-dd hh:nn', StartOfTheDay(f_DateRange.date_1.Date));
      brw_JOReport.ParamByName('DATE2').Value := FormatDateTime('yyyy-mm-dd hh:nn', EndOfTheDay(f_DateRange.date_2.Date));
      brw_JOReport.Open();

      f_Reports := Tf_Reports.Create(Self);

      TfrxMemoView(f_Reports.rep_JODetail.FindObject('period')).Text  := DateToStr(f_DateRange.date_1.Date) + ' - '+DateToStr(f_DateRange.date_2.Date);

      f_Reports.rep_JODetail.ShowReport();

    end;
  end;
end;

procedure Tf_menu.JOSummaryExecute(Sender: TObject);
begin
  with dm_PM do
  begin
    f_DateRange := Tf_DateRange.Create(Self);
    f_DateRange.date_1.Date := StartOfTheMonth(Now);
    f_DateRange.date_2.Date := EndOfTheMonth(Now);

    if f_DateRange.ShowModal = mrOk then
    begin
      brw_JO.Close;
      brw_JO.SQL[3] := 'WHERE (JO_HEADER.LOGDATE BETWEEN :DATE1 AND :DATE2) AND JO_HEADER.CANCELLED = FALSE';
      brw_JO.ParamByName('DATE1').Value := FormatDateTime('yyyy-mm-dd hh:nn', StartOfTheDay(f_DateRange.date_1.Date));
      brw_JO.ParamByName('DATE2').Value := FormatDateTime('yyyy-mm-dd hh:nn', EndOfTheDay(f_DateRange.date_2.Date));
      brw_JO.Open();

      f_Reports := Tf_Reports.Create(Self);

      TfrxMemoView(f_Reports.rep_JOSummary.FindObject('period')).Text  := DateToStr(f_DateRange.date_1.Date) + ' - '+DateToStr(f_DateRange.date_2.Date);

      f_Reports.rep_JOSummary.ShowReport();

    end;
  end;
end;

procedure Tf_menu.Veb(Sender: TObject);
begin
  CloseAllForms;
  f_Unit := Tf_Unit.Create(Self);
  webOff;
end;

procedure Tf_menu.LogOutExecute(Sender: TObject);
begin
  f_Login1 := Tf_Login1.Create(Self);
  f_Login1.ShowModal;
end;

procedure Tf_menu.MaterialRequestExecute(Sender: TObject);
begin
  CloseAllForms;
  f_MatRequest := Tf_MatRequest.Create(Self);
  webOff;
end;

procedure Tf_menu.MatReqDetailExecute(Sender: TObject);
begin
  with dm_PM do
  begin
    f_DateRange := Tf_DateRange.Create(Self);
    f_DateRange.date_1.Date := StartOfTheMonth(Now);
    f_DateRange.date_2.Date := EndOfTheMonth(Now);

    if f_DateRange.ShowModal = mrOk then
    begin
      brw_MatRequest.Close;
      brw_MatRequest.SQL[6]  := 'WHERE (REQ.REQDATETIME BETWEEN :date1 AND :date2) AND REQ.CANCELLED = FALSE';
      brw_MatRequest.ParamByName('date1').Value  := FormatDateTime('yyyy-mm-dd hh:nn', StartOfTheDay(f_DateRange.date_1.Date));
      brw_MatRequest.ParamByName('date2').Value  := FormatDateTime('yyyy-mm-dd hh:nn', EndOfTheDay(f_DateRange.date_2.Date));
      brw_MatRequest.Open();

      f_Reports := Tf_Reports.Create(Self);
      TfrxMemoView(f_Reports.rep_MatReq.FindObject('period')).Text  := DateToStr(f_DateRange.date_1.Date) + ' - '+DateToStr(f_DateRange.date_2.Date);
      f_Reports.rep_MatReq.ShowReport();
    end;
  end;
end;

procedure Tf_menu.MaxButtonClick(Sender: TObject);
begin
  if scStyledForm1.IsDWMClientMaximized then
    scStyledForm1.DWMClientRestore
  else
    scStyledForm1.DWMClientMaximize;
end;

procedure Tf_menu.MinButtonClick(Sender: TObject);
begin
  Application.Minimize;
end;

procedure Tf_menu.NotifExecute(Sender: TObject);
begin
  with dm_PM do
  begin
    qry_Notif.Close;
    qry_Notif.SQL[2]  := 'WHERE ID =1';
    qry_Notif.Open();

    qry_Notif.Edit;
    f_notif := Tf_notif.Create(nil);
    if f_notif.ShowModal = mrOk then
    begin
      qry_NotifUPDATEDBYID.Value        := userid;
      qry_NotifUPDATEDDATETIME.Value    := Now;
      qry_Notif.Post;
      qry_Notif.ApplyUpdates();
    end;
  end;
end;

procedure Tf_menu.PaymentExecute(Sender: TObject);
begin
  CloseAllForms;
  f_Payment := Tf_Payment.Create(Self);
  webOff;
end;

procedure Tf_menu.PayrollExecute(Sender: TObject);
begin
  CloseAllForms;
  f_Payroll := Tf_Payroll.Create(Self);
  webOff;
end;

procedure Tf_menu.PayrollSummaryExecute(Sender: TObject);
begin
  with dm_PM do
  begin
    f_DateRange := Tf_DateRange.Create(Self);
    f_DateRange.date_1.Date := StartOfTheMonth(Now);
    f_DateRange.date_2.Date := EndOfTheMonth(Now);

    if f_DateRange.ShowModal = mrOk then
    begin
      brw_Payroll.Close;
      brw_Payroll.SQL[2]  := 'WHERE (PAYDATE BETWEEN :date1 AND :date2) AND CANCELLED = FALSE';
      brw_Payroll.ParamByName('date1').Value  := FormatDateTime('yyyy-mm-dd', f_DateRange.date_1.Date);
      brw_Payroll.ParamByName('date2').Value  :=FormatDateTime('yyyy-mm-dd', f_DateRange.date_2.Date);
      brw_Payroll.Open();

      f_Reports := Tf_Reports.Create(Self);
      TfrxMemoView(f_Reports.rep_PayrollSummary.FindObject('period')).Text  := DateToStr(f_DateRange.date_1.Date) + ' - '+DateToStr(f_DateRange.date_2.Date);
      f_Reports.rep_PayrollSummary.ShowReport();
    end;
  end;
end;

procedure Tf_menu.PettyCashExecute(Sender: TObject);
begin
  CloseAllForms;
  f_PettyCash := Tf_PettyCash.Create(Self);
  webOff;
end;

procedure Tf_menu.PMBoardExecute(Sender: TObject);
begin
  CloseAllForms;
  f_PMBoard := Tf_PMBoard.Create(Self);
  webOff;
end;

procedure Tf_menu.POExecute(Sender: TObject);
begin
  CloseAllForms;
  f_PO := Tf_PO.Create(Self);
  webOff;
end;

procedure Tf_menu.ProjectCostingExecute(Sender: TObject);
begin
  with dm_PM do
  begin
    f_DateRange := Tf_DateRange.Create(Self);
    f_DateRange.date_1.Date := StartOfTheMonth(Now);
    f_DateRange.date_2.Date := EndOfTheMonth(Now);

    if f_DateRange.ShowModal = mrOk then
    begin
      tb_Project.Close;
      tb_Project.Open;

      brw_Project.Close;
      brw_Project.SQL[4] := 'WHERE (JO.LOGDATE BETWEEN :DATE1 AND :DATE2) AND JO.CANCELLED = FALSE AND DETAIL.CANCELLED = FALSE';
      brw_Project.ParamByName('DATE1').Value := FormatDateTime('yyyy-mm-dd hh:nn', StartOfTheDay(f_DateRange.date_1.Date));
      brw_Project.ParamByName('DATE2').Value := FormatDateTime('yyyy-mm-dd hh:nn', EndOfTheDay(f_DateRange.date_2.Date));
      brw_Project.Open();

      if brw_Project.RecordCount > 0 then
      begin
        brw_Project.First;
        while not brw_Project.Eof do
        begin
          tb_Project.Append;
          tb_ProjectJONO.Value          := brw_ProjectJONO.Value;
          tb_ProjectLOGDATE.Value       := brw_ProjectLOGDATE.Value;
          tb_ProjectDUEDATE.Value       := brw_ProjectDUEDATE.Value;
          tb_ProjectNETAMNT.Value       := brw_ProjectNETAMNT.Value;
          tb_ProjectPAIDAMNT.Value      := brw_ProjectPAIDAMNT.Value;
          tb_ProjectBALAMNT.Value       := brw_ProjectBALAMNT.Value;
          tb_ProjectCLIENT.Value        := brw_ProjectCLIENT.Value;
          tb_ProjectDESCRIPTION.Value   := brw_ProjectDESCRIPTION.Value;
          tb_ProjectQTY.Value           := brw_ProjectQTY.Value + brw_ProjectFREE.Value;
          tb_ProjectFREE.Value          := brw_ProjectFREE.Value;
          tb_ProjectCOST.Value          := brw_ProjectCOST.Value;
          tb_ProjectUNIT.Value          := brw_ProjectUNIT.Value;
          tb_ProjectTOTALCOST.Value     := brw_ProjectTOTALCOST.Value;
          tb_ProjectTOTAL.Value         := brw_ProjectTOTALCOST.Value;
          tb_ProjectGROUP.Value         := 'PROJECT';
          tb_ProjectSEQUENCE.Value      := 'A';
          tb_Project.Post;

          qry_WorkersDetails.Close;
          qry_WorkersDetails.SQL[2] := 'WHERE HEADERID = :ID AND CANCELLED = FALSE';
          qry_WorkersDetails.ParamByName('ID').Value  :=  brw_ProjectID.Value;
          qry_WorkersDetails.Open();

          if qry_WorkersDetails.RecordCount > 0 then
          begin
            qry_WorkersDetails.First;
            while not qry_WorkersDetails.Eof do
            begin
              brw_GarmentDesc.Close;
              brw_GarmentDesc.SQL[3]  := 'WHERE GAR.CANCELLED = FALSE AND GAR.ID = :ID';
              brw_GarmentDesc.ParamByName('ID').Value := brw_ProjectSHIRTID.Value;
              brw_GarmentDesc.Open();

//              if tb_Project.Locate('JONO;SEQUENCE;ROLEID;', VarArrayOf([brw_ProjectJONO.Value,'C', qry_WorkersDetailsROLEID.Value]), []) then
//              begin
//                tb_Project.Edit;
//                tb_ProjectDESCRIPTION.Value   := tb_ProjectDESCRIPTION.AsString +','+#13#10 + qry_WorkersDetailsEMPNAME.AsString + ' ('+brw_ProjectDESCRIPTION.AsString + ')';
//              end
//              else
//              begin
                tb_Project.Append;
                tb_ProjectDESCRIPTION.Value   := '('+brw_ProjectDESCRIPTION.AsString + ')'+#13#10 + qry_WorkersDetailsROLE.AsString + ' : '+ qry_WorkersDetailsEMPNAME.AsString;
//              end;

              tb_ProjectROLEID.Value        := qry_WorkersDetailsROLEID.Value;
              tb_ProjectJONO.Value          := brw_ProjectJONO.Value;
              tb_ProjectLOGDATE.Value       := brw_ProjectLOGDATE.Value;
              tb_ProjectDUEDATE.Value       := brw_ProjectDUEDATE.Value;
              tb_ProjectNETAMNT.Value       := brw_ProjectNETAMNT.Value;
              tb_ProjectPAIDAMNT.Value      := brw_ProjectPAIDAMNT.Value;
              tb_ProjectBALAMNT.Value       := brw_ProjectBALAMNT.Value;
              tb_ProjectCLIENT.Value        := brw_ProjectCLIENT.Value;

              if qry_WorkersDetailsROLEID.Value = 1 then
              tb_ProjectCOST.Value          := brw_GarmentDescARTISTSHARE.Value
              else if qry_WorkersDetailsROLEID.Value = 2 then
              tb_ProjectCOST.Value          := brw_GarmentDescPRINTOPSHARE.Value
              else if qry_WorkersDetailsROLEID.Value = 3 then
              tb_ProjectCOST.Value          := brw_GarmentDescCUTTERSHARE.Value
              else if qry_WorkersDetailsROLEID.Value = 4 then
              tb_ProjectCOST.Value          := brw_GarmentDescHEATPRESSSHARE.Value
              else if qry_WorkersDetailsROLEID.Value = 5 then
               tb_ProjectCOST.Value          := brw_GarmentDescTAILORSHARE.Value;

              tb_ProjectQTY.Value           := brw_ProjectQTY.Value + brw_ProjectFREE.Value;

              tb_ProjectUNIT.Value          := brw_GarmentDescUNIT.Value;
              tb_ProjectTOTALCOST.Value     :=  -1 *(tb_ProjectCOST.Value * tb_ProjectQTY.Value);
              tb_ProjectTOTAL.Value         :=  (tb_ProjectCOST.Value * tb_ProjectQTY.Value);
              tb_ProjectGROUP.Value         := 'COST - WORKERS';
              tb_ProjectSEQUENCE.Value      := 'C';
              tb_Project.Post;

              qry_WorkersDetails.Next;
            end;
          end;

          brw_Project.Next;
        end;
      end;

      brw_RepJOCost.Close;
      brw_RepJOCost.SQL[5] := 'WHERE (JO.LOGDATE BETWEEN :DATE1 AND :DATE2) AND JO.CANCELLED = FALSE AND DETAIL.CANCELLED = FALSE';
      brw_RepJOCost.ParamByName('DATE1').Value := FormatDateTime('yyyy-mm-dd hh:nn', StartOfTheDay(f_DateRange.date_1.Date));
      brw_RepJOCost.ParamByName('DATE2').Value := FormatDateTime('yyyy-mm-dd hh:nn', EndOfTheDay(f_DateRange.date_2.Date));
      brw_RepJOCost.Open();

      if brw_RepJOCost.RecordCount > 0 then
      begin
        brw_RepJOCost.First;
        while not brw_RepJOCost.Eof do
        begin
          tb_Project.Append;
          tb_ProjectJONO.Value          := brw_RepJOCostJONO.Value;
          tb_ProjectLOGDATE.Value       := brw_RepJOCostLOGDATE.Value;
          tb_ProjectDUEDATE.Value       := brw_RepJOCostDUEDATE.Value;
          tb_ProjectNETAMNT.Value       := brw_RepJOCostNETAMNT.Value;
          tb_ProjectPAIDAMNT.Value      := brw_RepJOCostPAIDAMNT.Value;
          tb_ProjectBALAMNT.Value       := brw_RepJOCostBALAMNT.Value;
          tb_ProjectCLIENT.Value        := brw_RepJOCostCLIENT.Value;
          tb_ProjectDESCRIPTION.Value   := brw_RepJOCostITEMDESC.Value;
          tb_ProjectQTY.Value           := brw_RepJOCostQTY.Value;
          tb_ProjectFREE.Value          := 0;
          tb_ProjectCOST.Value          := brw_RepJOCostCOST.Value;
          tb_ProjectUNIT.Value          := brw_RepJOCostUNIT.Value;
          tb_ProjectTOTALCOST.Value     := -1 * (brw_RepJOCostCOST.Value * brw_RepJOCostQTY.Value);
          tb_ProjectTOTAL.Value         := (brw_RepJOCostCOST.Value * brw_RepJOCostQTY.Value);
          tb_ProjectGROUP.Value         := 'COST - MATERIALS';
          tb_ProjectSEQUENCE.Value      := 'B';
          tb_Project.Post;

          brw_RepJOCost.Next;
        end;
      end;

      tb_Project.IndexFieldNames := 'JONO;SEQUENCE';

      f_Reports := Tf_Reports.Create(Self);
      TfrxMemoView(f_Reports.rep_project.FindObject('period')).Text  := DateToStr(f_DateRange.date_1.Date) + ' - '+DateToStr(f_DateRange.date_2.Date);

      f_Reports.rep_project.ShowReport();
    end;
  end;
end;


procedure Tf_menu.ProjectCostingSummaryExecute(Sender: TObject);
begin
  with dm_PM do
  begin
    f_DateRange := Tf_DateRange.Create(Self);
    f_DateRange.date_1.Date := StartOfTheMonth(Now);
    f_DateRange.date_2.Date := EndOfTheMonth(Now);

    if f_DateRange.ShowModal = mrOk then
    begin
      brw_JO.Close;
      brw_JO.SQL[3] := 'WHERE (JO_HEADER.LOGDATE BETWEEN :DATE1 AND :DATE2) AND JO_HEADER.CANCELLED = FALSE';
      brw_JO.ParamByName('DATE1').Value := FormatDateTime('yyyy-mm-dd hh:nn', StartOfTheDay(f_DateRange.date_1.Date));
      brw_JO.ParamByName('DATE2').Value := FormatDateTime('yyyy-mm-dd hh:nn', EndOfTheDay(f_DateRange.date_2.Date));
      brw_JO.Open();

      tb_ProjectSum.Close;
      tb_ProjectSum.Open;

      brw_JO.First;
      while not brw_JO.Eof do
      begin
        tb_ProjectSum.Append;
        tb_ProjectSumJONO.Value      := brw_JOJONO.Value;
        tb_ProjectSumDATE.Value      := brw_JOLOGDATE.Value;
        tb_ProjectSumDUEDATE.Value   := brw_JODUEDATE.Value;
        tb_ProjectSumNETAMNT.Value   := brw_JONETAMNT.Value;
        tb_ProjectSumPAIDAMNT.Value  := brw_JOPAIDAMNT.Value;
        tb_ProjectSumBALAMNT.Value   := brw_JOBALAMNT.Value;
        tb_ProjectSumCLIENT.Value    := brw_JOCLIENT.Value;

        brw_JOCostSum.Close;
        brw_JOCostSum.SQL[3] := 'WHERE HEADER.JONO = :JONO AND HEADER.CANCELLED = FALSE AND DETAIL.CANCELLED = FALSE';
        brw_JOCostSum.ParamByName('JONO').Value := brw_JOJONO.Value;
        brw_JOCostSum.Open();

        tb_ProjectSumMATCOST.Value   :=  brw_JOCostSumTOTAL.Value;

        brw_LaborCostSum.Close;
        brw_LaborCostSum.SQL[3] := 'WHERE DETAIL.HEADERID = :ID AND DETAIL.CANCELLED = FALSE';
        brw_LaborCostSum.ParamByName('ID').Value := brw_JOID.Value;
        brw_LaborCostSum.Open();

        tb_ProjectSumLABORCOST.Value  := brw_LaborCostSumTOTAL.Value;
        tb_ProjectSum.Post;

        brw_JO.Next;
      end;

      f_Reports := Tf_Reports.Create(Self);

      TfrxMemoView(f_Reports.rep_ProjectSummary.FindObject('period')).Text  := DateToStr(f_DateRange.date_1.Date) + ' - '+DateToStr(f_DateRange.date_2.Date);

      f_Reports.rep_ProjectSummary.ShowReport();

    end;
  end;
end;

procedure Tf_menu.ReplenishmentDetailExecute(Sender: TObject);
var totalcashin: Real;
begin
  with dm_PM do
  begin
    f_DateRange := Tf_DateRange.Create(Self);
    f_DateRange.date_1.Date := StartOfTheMonth(Now);
    f_DateRange.date_2.Date := EndOfTheMonth(Now);

    if f_DateRange.ShowModal = mrOk then
    begin

      brw_SalesCashIn.Close;
      brw_SalesCashIn.SQL[3]  := 'WHERE (HEADER.SALESDATE BETWEEN :date1 and :date2) AND DETAIL.REPLENISHMENT = TRUE AND HEADER.SOURCE = ''IN'' AND DETAIL.CANCELLED = FALSE AND HEADER.CANCELLED = FALSE';
      brw_SalesCashIn.ParamByName('date1').Value  := FormatDateTime('yyyy-mm-dd', f_DateRange.date_1.Date);
      brw_SalesCashIn.ParamByName('date2').Value := FormatDateTime('yyyy-mm-dd', f_DateRange.date_2.Date);
      brw_SalesCashIn.Open();


      brw_JOPaid.Close;
      brw_JOPaid.SQL[2]  := 'WHERE (SALESDATE BETWEEN :date1 and :date2) AND REPLENISHMENT = TRUE AND SOURCE = ''IN'' AND CANCELLED = FALSE';
      brw_JOPaid.ParamByName('date1').Value  := FormatDateTime('yyyy-mm-dd', f_DateRange.date_1.Date);
      brw_JOPaid.ParamByName('date2').Value := FormatDateTime('yyyy-mm-dd', f_DateRange.date_2.Date);
      brw_JOPaid.Open();

      totalcashin := brw_JOPaidNETAMNT.Value;

      f_Reports := Tf_Reports.Create(Self);

      TfrxMemoView(f_Reports.rep_RepDetail.FindObject('period')).Text      := DateToStr(f_DateRange.date_1.Date) + ' - '+DateToStr(f_DateRange.date_2.Date);
      TfrxMemoView(f_Reports.rep_RepDetail.FindObject('grandtotal')).Text  := 'Grand Total : '+FormatCurr('###,###,##0.00', totalcashin);

      f_Reports.rep_RepDetail.ShowReport();
    end;
  end;
end;

procedure Tf_menu.ReplenishmentSummaryExecute(Sender: TObject);
begin
  with dm_PM do
  begin

    f_DateRange := Tf_DateRange.Create(Self);
    f_DateRange.date_1.Date := StartOfTheMonth(Now);
    f_DateRange.date_2.Date := EndOfTheMonth(Now);

    if f_DateRange.ShowModal = mrOk then
    begin
      brw_CashSum.Close;
      brw_CashSum.SQL[2]  := 'WHERE (SALESDATE BETWEEN :date1 and :date2) AND SOURCE =''IN'' AND CANCELLED = FALSE AND REPLENISHMENT = TRUE';
      brw_CashSum.ParamByName('date1').Value  := FormatDateTime('yyyy-mm-dd', f_DateRange.date_1.Date);
      brw_CashSum.ParamByName('date2').Value := FormatDateTime('yyyy-mm-dd', f_DateRange.date_2.Date);
      brw_CashSum.Open();

      f_Reports := Tf_Reports.Create(Self);

      TfrxMemoView(f_Reports.rep_RepSummary.FindObject('period')).Text  := DateToStr(f_DateRange.date_1.Date) + ' - '+DateToStr(f_DateRange.date_2.Date);

      f_Reports.rep_RepSummary.ShowReport();

    end;
  end;
end;

procedure Tf_menu.RolesExecute(Sender: TObject);
begin
  //
end;

procedure Tf_menu.RRSummaryExecute(Sender: TObject);
begin
  with dm_PM do
  begin
    f_DateRange := Tf_DateRange.Create(Self);
    f_DateRange.date_1.Date := StartOfTheMonth(Now);
    f_DateRange.date_2.Date := EndOfTheMonth(Now);

    if f_DateRange.ShowModal = mrOk then
    begin
      brw_IRReport.Close;
      brw_IRReport.SQL[4] := 'WHERE (HEADER.IRDATE BETWEEN :DATE1 AND :DATE2) AND HEADER.CANCELLED = FALSE';
      brw_IRReport.ParamByName('DATE1').Value := FormatDateTime('yyyy-mm-dd hh:nn', StartOfTheDay(f_DateRange.date_1.Date));
      brw_IRReport.ParamByName('DATE2').Value := FormatDateTime('yyyy-mm-dd hh:nn', EndOfTheDay(f_DateRange.date_2.Date));
      brw_IRReport.Open();

      f_Reports := Tf_Reports.Create(Self);
      TfrxMemoView(f_Reports.rep_IRSummary.FindObject('period')).Text  := DateToStr(f_DateRange.date_1.Date) + ' - '+DateToStr(f_DateRange.date_2.Date);

      f_Reports.rep_IRSummary.ShowReport();
    end;
  end;
end;

procedure Tf_menu.SalesDetailExecute(Sender: TObject);
var totalcash, totaljo, totalcashin: Real;
begin
  with dm_PM do
  begin
    f_DateRange := Tf_DateRange.Create(Self);
    f_DateRange.date_1.Date := StartOfTheMonth(Now);
    f_DateRange.date_2.Date := EndOfTheMonth(Now);

    if f_DateRange.ShowModal = mrOk then
    begin
      brw_SalesJO.Close;
      brw_SalesJO.SQL[4]  := 'WHERE (CASH.SALESDATE BETWEEN :date1 and :date2) AND CASH.SOURCE = ''JO'' AND JO.CANCELLED = FALSE AND DETAIL.CANCELLED = FALSE AND CASH.CANCELLED = FALSE';
      brw_SalesJO.ParamByName('date1').Value  := FormatDateTime('yyyy-mm-dd', f_DateRange.date_1.Date);
      brw_SalesJO.ParamByName('date2').Value := FormatDateTime('yyyy-mm-dd', f_DateRange.date_2.Date);
      brw_SalesJO.Open();

      brw_SalesCash.Close;
      brw_SalesCash.SQL[3]  := 'WHERE (HEADER.SALESDATE BETWEEN :date1 and :date2) AND HEADER.SOURCE = ''CASH'' AND HEADER.CANCELLED = FALSE';
      brw_SalesCash.ParamByName('date1').Value  := FormatDateTime('yyyy-mm-dd', f_DateRange.date_1.Date);
      brw_SalesCash.ParamByName('date2').Value := FormatDateTime('yyyy-mm-dd', f_DateRange.date_2.Date);
      brw_SalesCash.Open();

      brw_SalesCashIn.Close;
      brw_SalesCashIn.SQL[3]  := 'WHERE (HEADER.SALESDATE BETWEEN :date1 and :date2) AND DETAIL.REPLENISHMENT = FALSE AND HEADER.SOURCE = ''IN'' AND DETAIL.CANCELLED = FALSE AND HEADER.CANCELLED = FALSE';
      brw_SalesCashIn.ParamByName('date1').Value  := FormatDateTime('yyyy-mm-dd', f_DateRange.date_1.Date);
      brw_SalesCashIn.ParamByName('date2').Value := FormatDateTime('yyyy-mm-dd', f_DateRange.date_2.Date);
      brw_SalesCashIn.Open();

      brw_JOPaid.Close;
      brw_JOPaid.SQL[2]  := 'WHERE (SALESDATE BETWEEN :date1 and :date2) AND SOURCE = ''CASH'' AND CANCELLED = FALSE';
      brw_JOPaid.ParamByName('date1').Value  := FormatDateTime('yyyy-mm-dd', f_DateRange.date_1.Date);
      brw_JOPaid.ParamByName('date2').Value := FormatDateTime('yyyy-mm-dd', f_DateRange.date_2.Date);
      brw_JOPaid.Open();

      totalcash := brw_JOPaidNETAMNT.Value;

      brw_JOPaid.Close;
      brw_JOPaid.SQL[2]  := 'WHERE (SALESDATE BETWEEN :date1 and :date2) AND REPLENISHMENT = FALSE AND SOURCE = ''IN'' AND CANCELLED = FALSE';
      brw_JOPaid.ParamByName('date1').Value  := FormatDateTime('yyyy-mm-dd', f_DateRange.date_1.Date);
      brw_JOPaid.ParamByName('date2').Value := FormatDateTime('yyyy-mm-dd', f_DateRange.date_2.Date);
      brw_JOPaid.Open();

      totalcashin := brw_JOPaidNETAMNT.Value;

      brw_CashJO.Close;
      brw_CashJO.SQL[3]  := 'WHERE (CASH.SALESDATE BETWEEN :date1 and :date2) AND CASH.SOURCE = ''JO'' AND JO.CANCELLED = FALSE AND CASH.CANCELLED = FALSE';
      brw_CashJO.ParamByName('date1').Value  := FormatDateTime('yyyy-mm-dd', f_DateRange.date_1.Date);
      brw_CashJO.ParamByName('date2').Value := FormatDateTime('yyyy-mm-dd', f_DateRange.date_2.Date);
      brw_CashJO.Open();

      totaljo := (brw_CashJOCASHAMNT.Value + brw_CashJOCARDAMNT.Value + brw_CashJOCHECKAMNT.Value) - brw_CashJOCHANGEAMNT.Value;

      f_Reports := Tf_Reports.Create(Self);

      TfrxMemoView(f_Reports.rep_SalesDetail.FindObject('period')).Text      := DateToStr(f_DateRange.date_1.Date) + ' - '+DateToStr(f_DateRange.date_2.Date);
      TfrxMemoView(f_Reports.rep_SalesDetail.FindObject('cashtotal')).Text   := 'Total : '+FormatCurr('###,###,##0.00', totalcash);
      TfrxMemoView(f_Reports.rep_SalesDetail.FindObject('jototal')).Text     := 'Total : '+FormatCurr('###,###,##0.00', totaljo);
      TfrxMemoView(f_Reports.rep_SalesDetail.FindObject('grandtotal')).Text  := 'Grand Total : '+FormatCurr('###,###,##0.00', totalcash + totalcashin + totaljo);

      f_Reports.rep_SalesDetail.ShowReport();
    end;
  end;
end;

procedure Tf_menu.SalesInvoiceExecute(Sender: TObject);
begin
  //
end;

procedure Tf_menu.SalesSummaryExecute(Sender: TObject);
begin
  with dm_PM do
  begin

    f_DateRange := Tf_DateRange.Create(Self);
    f_DateRange.date_1.Date := StartOfTheMonth(Now);
    f_DateRange.date_2.Date := EndOfTheMonth(Now);

    if f_DateRange.ShowModal = mrOk then
    begin
      brw_CashSum.Close;
      brw_CashSum.SQL[2]  := 'WHERE (SALESDATE BETWEEN :date1 and :date2) AND SOURCE IN (''JO'', ''CASH'', ''IN'') AND CANCELLED = FALSE AND REPLENISHMENT IS NOT TRUE';
      brw_CashSum.ParamByName('date1').Value  := FormatDateTime('yyyy-mm-dd', f_DateRange.date_1.Date);
      brw_CashSum.ParamByName('date2').Value := FormatDateTime('yyyy-mm-dd', f_DateRange.date_2.Date);
      brw_CashSum.Open();

      f_Reports := Tf_Reports.Create(Self);

      TfrxMemoView(f_Reports.rep_SalesSummary.FindObject('period')).Text  := DateToStr(f_DateRange.date_1.Date) + ' - '+DateToStr(f_DateRange.date_2.Date);

      f_Reports.rep_SalesSummary.ShowReport();

    end;
  end;
end;

procedure Tf_menu.scGPButton2Click(Sender: TObject);
begin
 CloseAllForms;
end;

procedure Tf_menu.Timer1Timer(Sender: TObject);
begin
  StatusBar1.Panels[0].Text := 'Logged in: '+dm_PM.user;
  StatusBar1.Panels[1].Text := 'Date and Time : '+FormatDateTime('mm/dd/yyyy hh:nn:ss AM/PM', Now);
end;

procedure Tf_menu.UserRegistrationExecute(Sender: TObject);
begin
  with dm_PM do
  begin
    CloseAllForms;
    f_Users := Tf_Users.Create(Self);
    webOff;
  end;
end;

procedure Tf_menu.UserRolesExecute(Sender: TObject);
begin
  with dm_PM do
  begin
    CloseAllForms;
    f_Policy := Tf_Policy.Create(Self);
    webOff;
  end;
end;

procedure Tf_menu.user_rights;
begin
  with dm_PM do
  begin
    brw_Rights.Close;
    brw_Rights.SQL[4] := 'WHERE EMP_ROLE.CANCELLED = FALSE';
    brw_Rights.Open();
    brw_Rights.First;

    if not admin then
    begin
      btnCompany.Enabled  := brw_Rights.Locate('MODULES;SELECT;ROLEID',VarArrayOf(['COMPANY', True, roleid]), []);
      btnUsers.Enabled    := brw_Rights.Locate('MODULES;SELECT;ROLEID',VarArrayOf(['USERS', True, roleid]), []);
      btnGarments.Enabled := brw_Rights.Locate('MODULES;SELECT;ROLEID',VarArrayOf(['GARMENTS', True, roleid]), []);
      btnCashReg.Enabled  := brw_Rights.Locate('POLICYID;SELECT;ROLEID',VarArrayOf([13, True, roleid]), []);
      btnItems.Enabled    := brw_Rights.Locate('MODULES;SELECT;ROLEID',VarArrayOf(['ITEMS', True, roleid]), []);
      btnFabrics.Enabled  := brw_Rights.Locate('MODULES;SELECT;ROLEID',VarArrayOf(['FABRICS', True, roleid]), []);
      btnCPR.Enabled      := brw_Rights.Locate('MODULES;SELECT;ROLEID',VarArrayOf(['CASH PURCHASE', True, roleid]), []);
      btnPO.Enabled       := brw_Rights.Locate('MODULES;SELECT;ROLEID',VarArrayOf(['PURCHASE ORDER', True, roleid]), []);
      btnIR.Enabled       := brw_Rights.Locate('MODULES;SELECT;ROLEID',VarArrayOf(['RECEIVING REPORT', True, roleid]), []);
      btnPayment.Enabled  := brw_Rights.Locate('MODULES;SELECT;ROLEID',VarArrayOf(['PAYMENT', True, roleid]), []);
      btnPettyCash.Enabled:= brw_Rights.Locate('MODULES;SELECT;ROLEID',VarArrayOf(['PETTY CASH', True, roleid]), []);
      btnExpense.Enabled  := brw_Rights.Locate('MODULES;SELECT;ROLEID',VarArrayOf(['EXPENSE', True, roleid]), []);
      btnEmpReg.Enabled   := brw_Rights.Locate('MODULES;SELECT;ROLEID',VarArrayOf(['EMPLOYEE REGISTRATION', True, roleid]), []);
      btnPayroll.Enabled  := brw_Rights.Locate('MODULES;SELECT;ROLEID',VarArrayOf(['PAYROLL', True, roleid]), []);
    end;
  end;
end;

procedure Tf_menu.VendorExecute(Sender: TObject);
begin
  CloseAllForms;
  f_Vendor := Tf_Vendor.Create(Self);
  webOff;
end;

procedure Tf_menu.webOff;
begin
  sWebBrowser1.Align  := alNone;
  sWebBrowser1.Width  := 0;
  sWebBrowser1.Height := 0;
end;

procedure Tf_menu.webOn;
begin
  sWebBrowser1.Width  := f_menu.Width;
  sWebBrowser1.Height := f_menu.Height;
  sWebBrowser1.Align  := alClient;
end;

procedure Tf_menu.WorkLogExecute(Sender: TObject);
begin
  CloseAllForms;
  f_WorkLog := Tf_WorkLog.Create(Self);
  webOff;
end;

end.
