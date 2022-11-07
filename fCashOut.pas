unit fCashOut;

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
  dxSkinXmas2008Blue, Data.DB, cxDBEdit, cxTextEdit, cxMemo, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.ComCtrls, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxCalendar;

type
  Tf_CashOut = class(TForm)
    Panel1: TPanel;
    btnSave: TButton;
    Button2: TButton;
    Panel2: TPanel;
    Label3: TLabel;
    pan_name: TPanel;
    ds_cash: TDataSource;
    cmb_exptype: TcxDBLookupComboBox;
    Label5: TLabel;
    ds_expense: TDataSource;
    ds_emp: TDataSource;
    Panel3: TPanel;
    Label1: TLabel;
    cmb_emp: TcxDBLookupComboBox;
    txt_payee: TcxDBMemo;
    pan_payroll: TPanel;
    Label6: TLabel;
    ds_payroll: TDataSource;
    pan_amnt: TPanel;
    Label4: TLabel;
    Label2: TLabel;
    txt_remarks: TcxDBMemo;
    txt_amnt: TcxDBTextEdit;
    date_payfrom: TcxDBDateEdit;
    date_payto: TcxDBDateEdit;
    Label7: TLabel;
    Label8: TLabel;
    txt_gross: TcxDBTextEdit;
    Label9: TLabel;
    txt_ca: TcxDBTextEdit;
    procedure FormShow(Sender: TObject);
    procedure txt_amntExit(Sender: TObject);
    procedure cmb_exptypePropertiesCloseUp(Sender: TObject);
    procedure cmb_empPropertiesCloseUp(Sender: TObject);
    procedure date_payfromPropertiesCloseUp(Sender: TObject);
    procedure date_paytoPropertiesCloseUp(Sender: TObject);
  private
    { Private declarations }
    procedure exp_type_ui;
    procedure compute_payroll;
    procedure manageui;
  public
    { Public declarations }
  end;

var
  f_CashOut: Tf_CashOut;

implementation

{$R *.dfm}

uses dmPM, DateUtils;

procedure Tf_CashOut.cmb_empPropertiesCloseUp(Sender: TObject);
begin
  compute_payroll;
end;

procedure Tf_CashOut.cmb_exptypePropertiesCloseUp(Sender: TObject);
begin
  exp_type_ui;
end;

procedure Tf_CashOut.compute_payroll;
var date1, date2: TDateTime;
begin
  with dm_PM do
  begin
    if (qry_CashOutDetailEMPID.Value > 0) then
    begin
      qry_CashOutDetailPAYEE.Value   := cmb_emp.Text;

       if (date_payfrom.Date <> Null) and (date_payto.Date <> Null) then
       begin

          date1   :=  StartOfTheDay(date_payfrom.Date);
          date2   :=  EndOfTheDay(date_payto.Date);

          brw_ComputePay.Close;
          brw_ComputePay.SQL[2]  := 'WHERE WORKERID = :EMPID AND (CREATEDDATETIME BETWEEN :DATE1 AND :DATE2) AND CANCELLED = FALSE';
          brw_ComputePay.ParamByName('EMPID').Value    := qry_CashOutDetailEMPID.Value;
          brw_ComputePay.ParamByName('DATE1').Value    := date1; //FormatDateTime('yyyy-mm-dd hh:nn', StartOfTheDay(qry_CashOutDetailPAYDATEFROM.Value));
          brw_ComputePay.ParamByName('DATE2').Value    := date2; //FormatDateTime('yyyy-mm-dd hh:nn', EndOfTheDay(qry_CashOutDetailPAYDATETO.Value));
//          ShowMessage(qry_CashOutDetailEMPID.AsString + #13#10 + qry_CashOutDetailPAYDATEFROM.AsString + #13#10 + qry_CashOutDetailPAYDATETO.AsString);
          brw_ComputePay.Open();

          qry_CashOutDetailGROSS.Value := brw_ComputePayAMNT.Value;

          brw_CompExpense.Close;
          brw_CompExpense.SQL[4]  := 'WHERE (DETAIL.REFDATE BETWEEN :date1 and :date2) AND DETAIL.EMPID = :EMPID AND EXP.CATEGORY = 2 AND HEADER.CANCELLED = FALSE AND DETAIL.CANCELLED = FALSE';
          brw_CompExpense.ParamByName('EMPID').Value   := qry_CashOutDetailEMPID.Value;
          brw_CompExpense.ParamByName('date1').Value   := date1;
          brw_CompExpense.ParamByName('date2').Value   := date2;
          brw_CompExpense.Open();

          qry_CashOutDetailCASHADVANCES.Value :=  brw_CompExpenseAMOUNT.Value;

          qry_CashOutDetailAMOUNT.Value := (qry_CashOutDetailGROSS.Value - qry_CashOutDetailCASHADVANCES.Value);
       end;

    end;

  end;
end;

procedure Tf_CashOut.date_payfromPropertiesCloseUp(Sender: TObject);
begin
  compute_payroll;
end;

procedure Tf_CashOut.date_paytoPropertiesCloseUp(Sender: TObject);
begin
  compute_payroll;
end;

procedure Tf_CashOut.exp_type_ui;
begin
  with dm_PM do
  begin
    if qry_CashOutDetailCATEGORYID.Value > 0 then
    begin
      brw_ExpenseType.DisableControls;
      if brw_ExpenseType.Locate('ID', qry_CashOutDetailCATEGORYID.Value, []) then
      begin
        qry_CashOutDetailCATEGORY.Value := brw_ExpenseTypeNAME.AsString;
        qry_CashRegEXPENSETYPE.Value    := brw_ExpenseTypeNAME.AsString;

        pan_payroll.Visible :=  brw_ExpenseTypeCATEGORY.Value = 1;
        cmb_emp.Visible     :=  (brw_ExpenseTypeCATEGORY.Value = 1) or (brw_ExpenseTypeCATEGORY.Value = 2);
        txt_payee.Visible   :=  (brw_ExpenseTypeCATEGORY.Value <> 1) and (brw_ExpenseTypeCATEGORY.Value <> 2);
        txt_amnt.Properties.ReadOnly :=  brw_ExpenseTypeCATEGORY.Value = 1;

        brw_Emp.Close;
        brw_Emp.SQL[2] := 'WHERE CANCELLED = FALSE';
        brw_Emp.Open();

        ds_emp.DataSet  := brw_Emp;

        qry_CashOutDetailPAYREFID.Clear;
        qry_CashOutDetailEMPID.Clear;
        qry_CashOutDetailPAYEE.Clear;
        qry_CashOutDetailAMOUNT.Clear;
        qry_CashOutDetailPAYDATEFROM.Clear;
        qry_CashOutDetailPAYDATETO.Clear;
        qry_CashOutDetailGROSS.Clear;
        qry_CashOutDetailCASHADVANCES.Clear;

        if brw_ExpenseTypeCATEGORY.Value = 1 then
        begin
          qry_CashOutDetailPAYDATEFROM.Value    := IncDay(StartOfTheWeek(Now), -2);
          qry_CashOutDetailPAYDATETO.Value      := IncDay(EndOfTheWeek(Now), -2);
        end;

      end;
      brw_ExpenseType.EnableControls;
    end;
  end;
end;

procedure Tf_CashOut.FormShow(Sender: TObject);
begin
  cmb_exptype.SetFocus;
  exp_type_ui;
  manageui;
end;

procedure Tf_CashOut.manageui;
begin
  txt_amnt.Style.BorderColor      := $00121212;
  txt_payee.Style.BorderColor     := $00121212;
  txt_remarks.Style.BorderColor   := $00121212;
  cmb_exptype.Style.BorderColor   := $00121212;
  cmb_emp.Style.BorderColor       := $00121212;
  date_payfrom.Style.BorderColor  := $00121212;
  date_payto.Style.BorderColor    := $00121212;
  txt_gross.Style.BorderColor     := $00121212;
  txt_ca.Style.BorderColor        := $00121212;


  if (dm_PM.qry_CashOutDetailCATEGORYID.Value = 0) or (dm_PM.qry_CashOutDetailCATEGORYID.IsNull) then
  cmb_exptype.Style.BorderColor   := clRed;

  if dm_PM.qry_CashOutDetailCATEGORYID.Value > 0 then
  begin
    dm_PM.brw_ExpenseType.DisableControls;
    if dm_PM.brw_ExpenseType.Locate('ID', dm_PM.qry_CashOutDetailCATEGORYID.Value, []) then
    begin

      if (dm_PM.brw_ExpenseTypeCATEGORY.Value = 1) and ((dm_PM.qry_CashOutDetailPAYDATEFROM.IsNull) or (dm_PM.qry_CashOutDetailPAYDATEFROM.AsString = '')) then
      date_payfrom.Style.BorderColor  := clRed;

      if (dm_PM.brw_ExpenseTypeCATEGORY.Value = 1) and ((dm_PM.qry_CashOutDetailPAYDATETO.IsNull) or (dm_PM.qry_CashOutDetailPAYDATETO.AsString = '')) then
      date_payto.Style.BorderColor  := clRed;


      if ((dm_PM.brw_ExpenseTypeCATEGORY.Value = 1) or (dm_PM.brw_ExpenseTypeCATEGORY.Value = 2)) and ((dm_PM.qry_CashOutDetailEMPID.Value = 0) or (dm_PM.qry_CashOutDetailEMPID.IsNull)) then
      cmb_emp.Style.BorderColor     := clRed;

      if (dm_PM.brw_ExpenseTypeCATEGORY.Value <> 1) and (dm_PM.brw_ExpenseTypeCATEGORY.Value <> 2) then
      begin
        if (Trim(dm_PM.qry_CashOutDetailPAYEE.Value) = '') or (dm_PM.qry_CashOutDetailPAYEE.IsNull) then
        txt_payee.Style.BorderColor      := clRed;
      end;
    end;
    dm_PM.brw_ExpenseType.EnableControls;
  end
  else
  begin
    cmb_exptype.Style.BorderColor    := clRed;
    txt_payee.Style.BorderColor      := clRed;
  end;

  if dm_PM.qry_CashOutDetailAMOUNT.Value = 0 then
  txt_amnt.Style.BorderColor      := clRed;
  if (Trim(dm_PM.qry_CashOutDetailREMARKS.Value) = '') or (dm_PM.qry_CashOutDetailREMARKS.IsNull)  then
  txt_remarks.Style.BorderColor      := clRed;

  btnSave.Enabled := (txt_amnt.Style.BorderColor <> clRed) and (txt_payee.Style.BorderColor <> clRed) and (txt_remarks.Style.BorderColor <> clRed) and (cmb_exptype.Style.BorderColor <> clRed) and (txt_gross.Style.BorderColor <> clRed) and (cmb_emp.Style.BorderColor <> clRed) and (date_payfrom.Style.BorderColor <> clRed) and (date_payto.Style.BorderColor <> clRed);
end;


procedure Tf_CashOut.txt_amntExit(Sender: TObject);
begin
  manageui;
end;

end.
