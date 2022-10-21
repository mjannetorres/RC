unit fEmpTemp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  dxSkinXmas2008Blue, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxTextEdit, cxDBEdit, scControls, scGPPagers, cxMemo,
  Data.DB, cxGroupBox, cxRadioGroup, System.Actions, Vcl.ActnList;

type
  Tf_EmpTemp = class(TForm)
    btnSave: TButton;
    Button2: TButton;
    Panel1: TPanel;
    scGPPageControl1: TscGPPageControl;
    scGPPageControlPage1: TscGPPageControlPage;
    scGPPageControlPage2: TscGPPageControlPage;
    Panel2: TPanel;
    Label3: TLabel;
    txt_lastname: TcxDBTextEdit;
    Label6: TLabel;
    txt_firstname: TcxDBTextEdit;
    Label7: TLabel;
    txt_middlename: TcxDBTextEdit;
    Label1: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    cmb_role: TcxDBLookupComboBox;
    Label2: TLabel;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    Label4: TLabel;
    Label5: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    Label8: TLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBMemo1: TcxDBMemo;
    Label9: TLabel;
    ds_Emp: TDataSource;
    Panel3: TPanel;
    Label10: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    rad_source: TcxDBRadioGroup;
    txt_rate: TcxDBTextEdit;
    cxGroupBox1: TcxGroupBox;
    txt_phic: TcxDBTextEdit;
    txt_pagibig: TcxDBTextEdit;
    txt_sss: TcxDBTextEdit;
    Label12: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    cmb_freq: TcxDBComboBox;
    ds_roles: TDataSource;
    ds_users: TDataSource;
    ActionList1: TActionList;
    UI: TAction;
    procedure FormShow(Sender: TObject);
    procedure cxDBLookupComboBox1PropertiesCloseUp(Sender: TObject);
    procedure UIExecute(Sender: TObject);
    procedure cxDBTextEdit3PropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure rad_sourcePropertiesChange(Sender: TObject);
    procedure scGPPageControl1ChangePage(Sender: TObject);
  private
    { Private declarations }
    function manageui: Boolean;
  public
    { Public declarations }
  end;

var
  f_EmpTemp: Tf_EmpTemp;

implementation

{$R *.dfm}

uses dmPM;

procedure Tf_EmpTemp.cxDBLookupComboBox1PropertiesCloseUp(Sender: TObject);
begin
  with dm_PM do
  begin
    brw_Users.DisableControls;
    if brw_Users.Locate('ID', cxDBLookupComboBox1.EditValue, []) then
    begin
      qry_EmpRegLASTNAME.Value    := brw_UsersLASTNAME.AsString;
      qry_EmpRegFIRSTNAME.Value   := brw_UsersFIRSTNAME.AsString;
      qry_EmpRegMIDDLENAME.Value  := brw_UsersMIDDLENAME.AsString;
    end;
    brw_Users.EnableControls;
  end;
end;

procedure Tf_EmpTemp.cxDBTextEdit3PropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  with dm_PM do
  begin
    brw_Emp.Close;
    brw_Emp.SQL[2]  := 'WHERE (IDNO = :IDNO AND ID <> :ID) AND CANCELLED = FALSE';
    brw_Emp.ParamByName('IDNO').Value := DisplayValue;
    brw_Emp.ParamByName('ID').Value   := qry_EmpRegID.Value;
    brw_Emp.Open();

    if brw_Emp.RecordCount > 0 then
    begin
      MessageDlg('ID No. is already taken by '+brw_EmpEMPNAME.AsString + '. Pls choose another one.', mtError, [mbOK], 0);
      DisplayValue := '';
      cxDBTextEdit3.SetFocus;
    end;
  end;
end;

procedure Tf_EmpTemp.FormShow(Sender: TObject);
begin
  with dm_PM do
  begin
    brw_Roles.Close;
    brw_Roles.SQL[2] := 'WHERE CANCELLED = FALSE';
    brw_Roles.Open();

    brw_Users.Close;
    brw_Users.SQL[2]  := 'WHERE CANCELLED = FALSE';
    brw_Users.Open();

    scGPPageControl1.ActivePage := scGPPageControlPage1;
    cxDBTextEdit3.SetFocus;
    manageui;
    rad_sourcePropertiesChange(nil);
  end;
end;

function Tf_EmpTemp.manageui: Boolean;
begin
  with dm_PM do
  begin
    cmb_role.Style.BorderColor := $00121212;
    if (qry_EmpRegROLEID.IsNull) or  (qry_EmpRegROLEID.Value = 0) then
    cmb_role.Style.BorderColor := clRed;

    cxDBTextEdit3.Style.BorderColor     := $00121212;
    if (qry_EmpRegIDNO.IsNull) or (Trim(qry_EmpRegIDNO.Value) = '') then
    cxDBTextEdit3.Style.BorderColor     := clRed;

    txt_lastname.Style.BorderColor     := $00121212;
    if (qry_EmpRegLASTNAME.IsNull) or (Trim(qry_EmpRegLASTNAME.Value) = '') then
    txt_lastname.Style.BorderColor     := clRed;

    txt_firstname.Style.BorderColor     := $00121212;
    if (qry_EmpRegFIRSTNAME.IsNull) or (Trim(qry_EmpRegFIRSTNAME.Value) = '') then
    txt_firstname.Style.BorderColor     := clRed;

    txt_middlename.Style.BorderColor     := $00121212;
    if (qry_EmpRegMIDDLENAME.IsNull) or (Trim(qry_EmpRegMIDDLENAME.Value) = '') then
    txt_middlename.Style.BorderColor     := clRed;

//    txt_sss.Style.BorderColor       := $00121212;
//    if (qry_EmpRegSSS.IsNull) or (qry_EmpRegSSS.Value = 0) then
//    txt_sss.Style.BorderColor     := clRed;
//
//    txt_pagibig.Style.BorderColor   := $00121212;
//    if (qry_EmpRegPAGIBIG.IsNull) or (qry_EmpRegPAGIBIG.Value = 0) then
//    txt_pagibig.Style.BorderColor     := clRed;
//
//    txt_phic.Style.BorderColor     := $00121212;
//    if (qry_EmpRegPHILHEALTH.IsNull) or (qry_EmpRegPHILHEALTH.Value = 0) then
//    txt_phic.Style.BorderColor     := clRed;

    txt_rate.Style.BorderColor      := $00121212;
    if qry_EmpRegMODEOFCOMP.Value <> 'P' then
    begin
      if qry_EmpRegRATE.IsNull then
      txt_rate.Style.BorderColor     := clRed;
    end;

    cmb_freq.Style.BorderColor := $00121212;
    if (qry_EmpRegFREQUENCY.IsNull) or  (qry_EmpRegFREQUENCY.Value = '') then
    cmb_freq.Style.BorderColor := clRed;

    if (cmb_role.Style.BorderColor = clRed) or (cxDBTextEdit3.Style.BorderColor = clRed) or (txt_lastname.Style.BorderColor = clRed) or (txt_firstname.Style.BorderColor = clRed) or (txt_middlename.Style.BorderColor = clRed) or (txt_rate.Style.BorderColor = clRed) or (cmb_freq.Style.BorderColor = clRed) then
    btnSave.Enabled := False
    else
    btnSave.Enabled := True;
  end;
end;

procedure Tf_EmpTemp.rad_sourcePropertiesChange(Sender: TObject);
begin
  with dm_PM do
  begin
    if (qry_EmpReg.State = dsInsert) or (qry_EmpReg.State = dsEdit) then
    begin
      txt_rate.Enabled    := qry_EmpRegMODEOFCOMP.Value <> 'P';

      if not txt_rate.Enabled then
      qry_EmpRegRATE.Clear;

      UIExecute(nil);
    end;
  end;
end;

procedure Tf_EmpTemp.scGPPageControl1ChangePage(Sender: TObject);
begin
  rad_sourcePropertiesChange(nil);
end;

procedure Tf_EmpTemp.UIExecute(Sender: TObject);
begin
  manageui;
end;

end.
