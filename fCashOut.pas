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
  cxDBLookupEdit, cxDBLookupComboBox;

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
    Label4: TLabel;
    Label2: TLabel;
    txt_remarks: TcxDBMemo;
    txt_amnt: TcxDBTextEdit;
    Label1: TLabel;
    cmb_emp: TcxDBLookupComboBox;
    txt_payee: TcxDBMemo;
    pan_payroll: TPanel;
    Label6: TLabel;
    cmb_payroll: TcxDBLookupComboBox;
    ds_payroll: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure txt_amntExit(Sender: TObject);
    procedure cmb_exptypePropertiesCloseUp(Sender: TObject);
    procedure cmb_empPropertiesCloseUp(Sender: TObject);
  private
    { Private declarations }
    procedure exp_type_ui;
    procedure manageui;
  public
    { Public declarations }
  end;

var
  f_CashOut: Tf_CashOut;

implementation

{$R *.dfm}

uses dmPM;

procedure Tf_CashOut.cmb_empPropertiesCloseUp(Sender: TObject);
begin
  with dm_PM do
  begin
    if qry_CashOutDetailEMPID.Value > 0 then
    begin
      qry_CashOutDetailPAYEE.Value   := cmb_emp.Text;

      if qry_CashOutDetailPAYREFID.Value > 0 then
      begin
        brw_PayrollEmp.DisableControls;
        if brw_PayrollEmp.Locate('HEADERID;ID', VarArrayOf([qry_CashOutDetailPAYREFID.Value, qry_CashOutDetailEMPID.Value]), []) then
        qry_CashOutDetailAMOUNT.Value := brw_PayrollEmpNETPAY.Value;
        brw_PayrollEmp.EnableControls;
      end;
    end;

  end;
end;

procedure Tf_CashOut.cmb_exptypePropertiesCloseUp(Sender: TObject);
begin
  exp_type_ui;
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

        if brw_ExpenseTypeCATEGORY.Value = 1 then
        begin

          if qry_CashOutDetailPAYREFID.Value > 0 then
          begin
            brw_PayrollEmp.Close;
            brw_PayrollEmp.SQL[4] := 'WHERE HEADER.ID = :ID AND DETAIL.CANCELLED = FALSE AND HEADER.CANCELLED = FALSE';
            brw_PayrollEmp.ParamByName('ID').Value  := qry_CashOutDetailPAYREFID.Value;
            brw_PayrollEmp.Open();

            ds_emp.DataSet  := brw_PayrollEmp;
            qry_CashOutDetailEMPID.Clear;
            qry_CashOutDetailPAYEE.Clear;
            qry_CashOutDetailAMOUNT.Clear;

          end;
        end
        else if brw_ExpenseTypeCATEGORY.Value = 2 then
        begin
          brw_Emp.Close;
          brw_Emp.SQL[2] := 'WHERE CANCELLED = FALSE';
          brw_Emp.Open();

          ds_emp.DataSet  := brw_Emp;
          qry_CashOutDetailPAYREFID.Clear;
          qry_CashOutDetailEMPID.Clear;
          qry_CashOutDetailPAYEE.Clear;
          qry_CashOutDetailAMOUNT.Clear;
        end
        else
        begin
          qry_CashOutDetailPAYREFID.Clear;
          qry_CashOutDetailEMPID.Clear;
          qry_CashOutDetailPAYEE.Clear;
          qry_CashOutDetailAMOUNT.Clear;
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
  cmb_payroll.Style.BorderColor   := $00121212;

  if (dm_PM.qry_CashOutDetailCATEGORYID.Value = 0) or (dm_PM.qry_CashOutDetailCATEGORYID.IsNull) then
  cmb_exptype.Style.BorderColor   := clRed;

  if dm_PM.qry_CashOutDetailCATEGORYID.Value > 0 then
  begin
    dm_PM.brw_ExpenseType.DisableControls;
    if dm_PM.brw_ExpenseType.Locate('ID', dm_PM.qry_CashOutDetailCATEGORYID.Value, []) then
    begin
      if (dm_PM.brw_ExpenseTypeCATEGORY.Value = 1) and ((dm_PM.qry_CashOutDetailPAYREFID.Value = 0) or (dm_PM.qry_CashOutDetailPAYREFID.IsNull)) then
      cmb_payroll.Style.BorderColor := clRed;

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

  btnSave.Enabled := (txt_amnt.Style.BorderColor <> clRed) and (txt_payee.Style.BorderColor <> clRed) and (txt_remarks.Style.BorderColor <> clRed) and (cmb_exptype.Style.BorderColor <> clRed) and (cmb_payroll.Style.BorderColor <> clRed) and (cmb_emp.Style.BorderColor <> clRed);
end;


procedure Tf_CashOut.txt_amntExit(Sender: TObject);
begin
  manageui;
end;

end.