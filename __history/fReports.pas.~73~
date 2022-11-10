unit fReports;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frxClass, frxDBSet;

type
  Tf_Reports = class(TForm)
    rep_JO: TfrxReport;
    ds_JODetails: TfrxDBDataset;
    ds_JO: TfrxDBDataset;
    ds_Client: TfrxDBDataset;
    ds_Emp: TfrxDBDataset;
    ds_Comp: TfrxDBDataset;
    rep_OPSheet: TfrxReport;
    ds_PM: TfrxDBDataset;
    rep_MR: TfrxReport;
    ds_MRDetails: TfrxDBDataset;
    ds_MR: TfrxDBDataset;
    ds_Emp1: TfrxDBDataset;
    ds_items: TfrxDBDataset;
    rep_barcode: TfrxReport;
    rep_cashsales: TfrxReport;
    ds_cashreg: TfrxDBDataset;
    rep_PO: TfrxReport;
    ds_PO: TfrxDBDataset;
    ds_PODetail: TfrxDBDataset;
    rep_inventory: TfrxReport;
    ds_inventory: TfrxDBDataset;
    rep_RR: TfrxReport;
    ds_RRDetail: TfrxDBDataset;
    ds_RR: TfrxDBDataset;
    rep_Payment: TfrxReport;
    ds_Payment: TfrxDBDataset;
    ds_PayDetail: TfrxDBDataset;
    ds_PettyCash: TfrxDBDataset;
    ds_PettyDetail: TfrxDBDataset;
    rep_PettyCash: TfrxReport;
    rep_Expense: TfrxReport;
    ds_Expense: TfrxDBDataset;
    ds_ExpenseDetail: TfrxDBDataset;
    rep_PaySummary: TfrxReport;
    ds_PayrollDetail: TfrxDBDataset;
    ds_Payroll: TfrxDBDataset;
    rep_PaySlip: TfrxReport;
    rep_cashinvoice: TfrxReport;
    ds_cashdetail: TfrxDBDataset;
    ds_cash: TfrxDBDataset;
    rep_CashSummary: TfrxReport;
    ds_Drawer: TfrxDBDataset;
    ds_POSDay: TfrxDBDataset;
    rep_cashdisburse: TfrxReport;
    ds_cashdisburse: TfrxDBDataset;
    ds_cashout: TfrxDBDataset;
    rep_InvReq: TfrxReport;
    ds_InvRequest: TfrxDBDataset;
    ds_InvReqDetails: TfrxDBDataset;
    ds_Layout: TfrxDBDataset;
    ds_cashin: TfrxDBDataset;
    rep_cashin: TfrxReport;
    ds_cashindetail: TfrxDBDataset;
    rep_cashout: TfrxReport;
    ds_cashout2: TfrxDBDataset;
    ds_cashoutdetail: TfrxDBDataset;
    ds_cashsum: TfrxDBDataset;
    rep_JOSummary: TfrxReport;
    ds_JOSummary: TfrxDBDataset;
    rep_SalesSummary: TfrxReport;
    rep_ExpenseSummary: TfrxReport;
    ds_invitems: TfrxDBDataset;
    rep_invitems: TfrxReport;
    rep_PayrollSummary: TfrxReport;
    ds_payreport: TfrxDBDataset;
    ds_CPRSummary: TfrxDBDataset;
    rep_CPRSummary: TfrxReport;
    rep_IRSummary: TfrxReport;
    ds_IRSummary: TfrxDBDataset;
    rep_JODetail: TfrxReport;
    ds_JODetail: TfrxDBDataset;
    rep_PeriodicInv: TfrxReport;
    ds_InvPeriodic: TfrxDBDataset;
    rep_ExpenseDetail: TfrxReport;
    ds_repExpenseDetail: TfrxDBDataset;
    rep_SalesDetail: TfrxReport;
    ds_RepSalesJO: TfrxDBDataset;
    ds_RepSalesCash: TfrxDBDataset;
    ds_RepSalesCashin: TfrxDBDataset;
    rep_cashflow: TfrxReport;
    ds_cashflow: TfrxDBDataset;
    ds_MatReq: TfrxDBDataset;
    rep_MatReq: TfrxReport;
    ds_project: TfrxDBDataset;
    rep_project: TfrxReport;
    rep_ProjectSummary: TfrxReport;
    ds_projectsum: TfrxDBDataset;
    rep_RepDetail: TfrxReport;
    rep_RepSummary: TfrxReport;
    ds_payrolldet: TfrxDBDataset;
    rep_invcost: TfrxReport;
    ds_invcost: TfrxDBDataset;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_Reports: Tf_Reports;

implementation

{$R *.dfm}

uses dmPM;

procedure Tf_Reports.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action  := caFree;
end;

end.
