unit fPettyCashTemp;

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
  cxGrid, scControls, scGPFontControls, cxGroupBox, cxRadioGroup, cxDBEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxCheckBox,
  cxMemo, cxLabel, cxDBLabel, cxMaskEdit, cxCalendar, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  Tf_PettyCashTemp = class(TForm)
    Panel2: TPanel;
    btnSave: TButton;
    btnCancel: TButton;
    btnPrint: TButton;
    Panel3: TPanel;
    Label1: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    date_date: TcxDBDateEdit;
    date_posted: TcxDBDateEdit;
    cxDBLabel1: TcxDBLabel;
    txt_notes: TcxDBMemo;
    chk_posted: TcxDBCheckBox;
    btnLoad: TscGPCharImage;
    grid_jodetail: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    ds_Petty: TDataSource;
    ActionList1: TActionList;
    UI: TAction;
    Print: TAction;
    Delete: TAction;
    Load: TAction;
    cxStyleRepository1: TcxStyleRepository;
    Header_style: TcxStyle;
    frxReport1: TfrxReport;
    ds_details: TDataSource;
    PopupMenu1: TPopupMenu;
    Delete1: TMenuItem;
    ds_vendor: TDataSource;
    cxGridDBTableView1REFDATE: TcxGridDBColumn;
    cxGridDBTableView1AMOUNT: TcxGridDBColumn;
    cxGridDBTableView1REFID: TcxGridDBColumn;
    cxGridDBTableView1NETAMNT: TcxGridDBColumn;
    cxGridDBTableView1BALANCE: TcxGridDBColumn;
    cxGridDBTableView1FP: TcxGridDBColumn;
    Label3: TLabel;
    rad_source: TcxDBRadioGroup;
    cxGridDBTableView1PAIDAMNT: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure UIExecute(Sender: TObject);
    procedure PrintExecute(Sender: TObject);
    procedure DeleteExecute(Sender: TObject);
    procedure LoadExecute(Sender: TObject);
    procedure chk_postedClick(Sender: TObject);
    procedure cxGridDBTableView1NETAMNTPropertiesValidate(Sender: TObject;
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
  f_PettyCashTemp: Tf_PettyCashTemp;

implementation

{$R *.dfm}

uses dmPM, fReports;

{ Tf_PettyCashTemp }

procedure Tf_PettyCashTemp.chk_postedClick(Sender: TObject);
begin
  if chk_posted.Checked then
  begin
    if manageui then
    dm_PM.qry_PettyCashPOSTEDDATETIME.Value  := Now
    else
    begin
      dm_PM.qry_PettyCashPOSTEDDATETIME.Clear;
      dm_PM.qry_PettyCashPOSTED.Value  := False;
      chk_posted.Checked        := False;
    end;

    if dm_PM.tb_PettyDetail.RecordCount = 0 then
    MessageDlg('Details cannot be empty!', mtError, [mbOK], 0)
    else if (dm_PM.qry_PettyCashNETAMNT.Value = 0) or (dm_PM.qry_PettyCashNETAMNT.IsNull) then
    MessageDlg('Net amount cannot be 0!', mtError, [mbOK], 0)
    else if dm_PM.qry_PettyCashPAYDATE.IsNull then
    MessageDlg('Date cannot be empty!', mtError, [mbOK], 0)
    else if (dm_PM.qry_PettyCashNOTES.IsNull) or (Trim(dm_PM.qry_PettyCashNOTES.AsString) = '') then
    MessageDlg('Notes cannot be empty!', mtError, [mbOK], 0);
  end
  else
    dm_PM.qry_PettyCashPOSTEDDATETIME.Clear;
end;

procedure Tf_PettyCashTemp.cxGridDBTableView1NETAMNTPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  if DisplayValue <=0 then
  begin
    MessageDlg('Net Amount should be greater than 0', mtError, [mbOK], 0);
    DisplayValue  := 0;
  end
  else
  begin
    if DisplayValue > (dm_PM.tb_PettyDetailAMOUNT.Value - dm_PM.tb_PettyDetailPAIDAMNT.Value) then
    begin
      MessageDlg('Net Amount should not be greater than amount due!', mtError, [mbOK], 0);
      DisplayValue  := dm_PM.tb_PettyDetailAMOUNT.Value - dm_PM.tb_PettyDetailPAIDAMNT.Value;
    end;
  end;
end;

procedure Tf_PettyCashTemp.DeleteExecute(Sender: TObject);
begin
  //
end;

procedure Tf_PettyCashTemp.FormShow(Sender: TObject);
begin
  with dm_PM do
  begin
    brw_Vendor.Close;
    brw_Vendor.SQL[2] := 'WHERE CANCELLED = FALSE';
    brw_Vendor.Open();

    posted  := qry_PettyCashPOSTED.Value;

    readonly(qry_PettyCashPOSTED.Value);
    if not qry_PettyCashPOSTED.Value then
    manageui;
  end;

end;

procedure Tf_PettyCashTemp.LoadExecute(Sender: TObject);
begin
  with dm_PM do
  begin
    brw_MR.Close;
    brw_MR.SQL[3] := 'WHERE REQ_HEADER.SOURCE = :SOURCE AND REQ_HEADER.POSTED = TRUE AND REQ_HEADER.CANCELLED = FALSE';
    brw_MR.ParamByName('SOURCE').Value  := qry_PettyCashSOURCE.Value;
    brw_MR.Open();

    if brw_MR.RecordCount > 0 then
    begin
      brw_MR.First;
      while not brw_MR.Eof do
      begin
        brw_PaidMR.Close;
        brw_PaidMR.SQL[3] := 'WHERE PETTY_DETAIL.REFID = :REFID AND PETTY_DETAIL.CANCELLED = FALSE';
        brw_PaidMR.ParamByName('REFID').Value     := brw_MRID.Value;
        brw_PaidMR.Open();

        if brw_MRTOTALCOST.Value > brw_PaidMRPAIDAMNT.Value then
        begin
          if not tb_PettyDetail.Locate('REFID', brw_MRID.AsString, []) then
          tb_PettyDetail.Append
          else
          tb_PettyDetail.Edit;

          tb_PettyDetailREFID.Value       := brw_MRID.Value;
          tb_PettyDetailREFDATE.Value     := brw_MRREQDATETIME.Value;
          tb_PettyDetailAMOUNT.Value      := brw_MRTOTALCOST.Value;
          tb_PettyDetailPAIDAMNT.Value    := brw_PaidMRPAIDAMNT.Value;
          tb_PettyDetail.Post;
        end;
        brw_MR.Next;
      end;
      tb_PettyDetail.First;
    end;
  end;
end;

function Tf_PettyCashTemp.manageui: Boolean;
begin
  with dm_PM do
  begin

    date_date.Style.BorderColor     := $00121212;
    if qry_PettyCashPAYDATE.IsNull then
    date_date.Style.BorderColor     := clRed;

    txt_notes.Style.BorderColor   := $00121212;
    if (qry_PettyCashNOTES.IsNull) or (Trim(qry_PettyCashNOTES.Value) = '')  then
    txt_notes.Style.BorderColor := clRed;

    if ((qry_PettyCashNETAMNT.Value = 0) or (qry_PettyCashNETAMNT.IsNull)) or (date_date.Style.BorderColor = clRed) or (txt_notes.Style.BorderColor = clRed) or (tb_PettyDetail.RecordCount = 0) then
    btnSave.Enabled := False
    else
    btnSave.Enabled := True;

    Result  := btnSave.Enabled;
  end;
end;

procedure Tf_PettyCashTemp.PrintExecute(Sender: TObject);
begin
  with dm_PM do
  begin
    qry_company.Close;
    qry_company.SQL[2]  := 'WHERE ID = 1';
    qry_company.Open();

    brw_Emp.Close;
    brw_Emp.SQL[2]   := 'WHERE USERID = :ID';
    brw_Emp.ParamByName('ID').Value := qry_PettyCashCREATEDBYID.Value;
    brw_Emp.Open();

    f_reports := Tf_Reports.Create(Self);
    f_Reports.rep_PettyCash.ShowReport(True);
  end;
end;

procedure Tf_PettyCashTemp.readonly(flag: Boolean);
begin
  with dm_PM do
  begin
    cxGridDBTableView1NETAMNT.Options.Editing := not flag;
    txt_notes.Properties.ReadOnly               := flag;
    date_date.Properties.ReadOnly               := flag;
    rad_source.Properties.ReadOnly              := flag;
    btnLoad.Enabled                             := not flag;
    Delete1.Visible                             := not flag;

    if posted then
    btnSave.Enabled       := not flag
    else
    btnSave.Enabled       := True;

    if dm_PM.qry_PettyCash.State = dsInsert then
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

procedure Tf_PettyCashTemp.UIExecute(Sender: TObject);
var amnt: Variant;
begin

  with dm_PM do
  begin
    if (qry_PettyCash.State = dsEdit) or (qry_PettyCash.State = dsInsert) then
    begin
      tb_PettyDetail.Append;
      tb_PettyDetail.Delete;

      amnt  := cxGridDBTableView1.DataController.Summary.FooterSummaryValues[2];
      if tb_PettyDetail.RecordCount > 0 then
      qry_PettyCashNETAMNT.Value := StrToFloat(VarToStr(amnt))
      else
      qry_PettyCashNETAMNT.Value := 0;
    end;
  end;

  readonly(dm_PM.qry_PettyCashPOSTED.Value);
  if not dm_PM.qry_PettyCashPOSTED.Value then
  manageui;
end;

end.
