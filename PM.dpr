program PM;

uses
  Vcl.Forms,
  fmenu in 'fmenu.pas' {f_menu},
  Vcl.Themes,
  Vcl.Styles,
  frmPM in 'frmPM.pas' {frm_PM: TFrame},
  fPMBoard in 'fPMBoard.pas' {f_PMBoard},
  fJO in 'fJO.pas' {f_JO},
  dmPM in 'dmPM.pas' {dm_PM: TDataModule},
  fJOClient in 'fJOClient.pas' {f_JOClient},
  fOPSheet in 'fOPSheet.pas' {f_OPSheet},
  fOPSheetViewer in 'fOPSheetViewer.pas' {f_OPSheetViewer},
  fLogTemp in 'fLogTemp.pas' {f_LogTemp},
  fReports in 'fReports.pas' {f_Reports},
  fMatRequest in 'fMatRequest.pas' {f_MatRequest},
  fMatRequestTemp in 'fMatRequestTemp.pas' {f_MatReqTemp},
  fCompany in 'fCompany.pas' {f_Company},
  fUsers in 'fUsers.pas' {f_Users},
  fUsersTemp in 'fUsersTemp.pas' {f_UsersTemp},
  fEmp in 'fEmp.pas' {f_Emp},
  fEmpTemp in 'fEmpTemp.pas' {f_EmpTemp},
  fFabrics in 'fFabrics.pas' {f_Fabric},
  fFabricTemp in 'fFabricTemp.pas' {f_FabricTemp},
  fGarments in 'fGarments.pas' {f_Garments},
  fGarmentsTemp in 'fGarmentsTemp.pas' {f_GarmentsTemp},
  fUnit in 'fUnit.pas' {f_Unit},
  fUnitTemp in 'fUnitTemp.pas' {f_UnitTemp},
  fItems in 'fItems.pas' {f_Items},
  fItemsTemp in 'fItemsTemp.pas' {f_ItemsTemp},
  fInventory in 'fInventory.pas' {f_Inventory},
  fLogin in 'fLogin.pas' {f_Login},
  fCashReg in 'fCashReg.pas' {f_CashReg},
  fCashRegTemp in 'fCashRegTemp.pas' {f_CashRegTemp},
  fCustTemp in 'fCustTemp.pas' {f_CustTemp},
  fCustNew in 'fCustNew.pas' {f_CustNew},
  fCashDisc in 'fCashDisc.pas' {f_CashDisc},
  fSelectPayment in 'fSelectPayment.pas' {f_SelectPayment},
  fCashSummary in 'fCashSummary.pas' {f_CashSummary},
  fPO in 'fPO.pas' {f_PO},
  fPOTemp in 'fPOTemp.pas' {f_POTemp},
  fRR in 'fRR.pas' {f_RR},
  fRRTemp in 'fRRTemp.pas' {f_RRTemp},
  fPayment in 'fPayment.pas' {f_Payment},
  fPaymentTemp in 'fPaymentTemp.pas' {f_PaymentTemp},
  fPettyCash in 'fPettyCash.pas' {f_PettyCash},
  fPettyCashTemp in 'fPettyCashTemp.pas' {f_PettyCashTemp},
  fExpense in 'fExpense.pas' {f_Expense},
  fExpenseTemp in 'fExpenseTemp.pas' {f_ExpenseTemp},
  fPayroll in 'fPayroll.pas' {f_Payroll},
  fPayrollTemp in 'fPayrollTemp.pas' {f_PayrollTemp},
  fAddEmp in 'fAddEmp.pas' {f_AddEmp},
  fPayrollDetail in 'fPayrollDetail.pas' {f_PayrollDetail},
  fPayrollComp in 'fPayrollComp.pas' {f_PayrollComp},
  fCashFund in 'fCashFund.pas' {f_CashFund},
  fPolicy in 'fPolicy.pas' {f_Policy},
  fSecurity in 'fSecurity.pas' {f_Security},
  fPassword in 'fPassword.pas' {f_Password},
  fPBReassign in 'fPBReassign.pas' {f_PBReassign},
  fVoid in 'fVoid.pas' {f_Void},
  fVendor in 'fVendor.pas' {f_Vendor},
  fVendorTemp in 'fVendorTemp.pas' {f_VendorTemp},
  fBank in 'fBank.pas' {f_Bank},
  fBankTemp in 'fBankTemp.pas' {f_BankTemp},
  fExpenseType in 'fExpenseType.pas' {f_ExpenseType},
  fExpTypeTemp in 'fExpTypeTemp.pas' {f_ExpTypeTemp},
  fCashDisburse in 'fCashDisburse.pas' {f_CashDisburse},
  fRequestTemp in 'fRequestTemp.pas' {f_RequestTemp},
  fRequest in 'fRequest.pas' {f_Request},
  fEnterJO in 'fEnterJO.pas' {f_EnterJO},
  fCashIn in 'fCashIn.pas' {f_CashIn},
  fCashOut in 'fCashOut.pas' {f_CashOut},
  fDateRange in 'fDateRange.pas' {f_DateRange},
  fDateConfig in 'fDateConfig.pas' {f_DateConfig},
  fViewCA in 'fViewCA.pas' {f_ViewCA},
  fEditOPSheet in 'fEditOPSheet.pas' {f_EditOPSheet},
  fnotif in 'fnotif.pas' {f_notif},
  fClients in 'fClients.pas' {f_Clients},
  fClientsTemp in 'fClientsTemp.pas' {f_ClientsTemp},
  fLogin1 in 'fLogin1.pas' {f_Login1},
  fWorkLog in 'fWorkLog.pas' {f_WorkLog},
  fViewBalance in 'fViewBalance.pas' {f_ViewBalance},
  fLayout in 'fLayout.pas' {f_Layout},
  fLayoutTemp in 'fLayoutTemp.pas' {f_layoutTemp},
  fRFQ in 'fRFQ.pas' {f_RFQ},
  fRFQDetail in 'fRFQDetail.pas' {f_RFQTemp},
  FJOStatus in 'FJOStatus.pas' {f_JOStatus},
  fEmpAccounts in 'fEmpAccounts.pas' {f_EmpAccounts},
  fEmpAccountsTemp in 'fEmpAccountsTemp.pas' {f_EmpAccountsTemp};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('TabletDark');
  Application.CreateForm(Tdm_PM, dm_PM);
  Application.CreateForm(Tf_menu, f_menu);
  Application.CreateForm(Tf_Login1, f_Login1);
  Application.CreateForm(Tf_JOStatus, f_JOStatus);
  Application.CreateForm(Tf_EmpAccounts, f_EmpAccounts);
  Application.CreateForm(Tf_EmpAccountsTemp, f_EmpAccountsTemp);
  Application.Run;
end.
