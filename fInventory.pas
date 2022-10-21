unit fInventory;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxDBLookupComboBox,
  cxTextEdit, cxContainer, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxGroupBox, cxRadioGroup, cxDBEdit, cxCheckBox, cxMemo, cxLabel, cxDBLabel,
  cxMaskEdit, cxCalendar, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, Vcl.ComCtrls,
  Vcl.ToolWin, scControls, System.ImageList, Vcl.ImgList, acAlphaImageList,
  System.Actions, Vcl.ActnList, scGPFontControls, cxSpinEdit, cxSpinButton,
  frxClass;

type
  Tf_Inventory = class(TForm)
    Button1: TButton;
    Panel1: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label3: TLabel;
    date_date: TcxDBDateEdit;
    cxDBLabel1: TcxDBLabel;
    txt_notes: TcxDBMemo;
    rad_source: TcxDBRadioGroup;
    Label2: TLabel;
    txt_onhand: TcxDBTextEdit;
    Label5: TLabel;
    txt_adj: TcxDBTextEdit;
    Label7: TLabel;
    txt_newonhand: TcxDBTextEdit;
    cxStyleRepository1: TcxStyleRepository;
    Header_style: TcxStyle;
    grid_jodetail: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    ActionList1: TActionList;
    New: TAction;
    sCharImageList1: TsCharImageList;
    scToolBar2: TscToolBar;
    btnNew: TToolButton;
    ds_details: TDataSource;
    cxGridDBTableView1QTY: TcxGridDBColumn;
    cxGridDBTableView1SOURCE: TcxGridDBColumn;
    cxGridDBTableView1SOURCEID: TcxGridDBColumn;
    cxGridDBTableView1CREATEDDATETIME: TcxGridDBColumn;
    ds_inv: TDataSource;
    btnRefresh: TToolButton;
    Refresh: TAction;
    btnSave: TToolButton;
    Save: TAction;
    cxGridDBTableView1CREATEDBYNAME: TcxGridDBColumn;
    select_style: TcxStyle;
    cxGridDBTableView1NOTES: TcxGridDBColumn;
    Label8: TLabel;
    spin_year: TcxDBSpinEdit;
    ToolButton1: TToolButton;
    Print: TAction;
    frxReport1: TfrxReport;
    procedure NewExecute(Sender: TObject);
    procedure RefreshExecute(Sender: TObject);
    procedure SaveExecute(Sender: TObject);
    procedure rad_sourceExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PrintExecute(Sender: TObject);
  private
    { Private declarations }
    procedure manageui;
    procedure btnui;
  public
    { Public declarations }
  end;

var
  f_Inventory: Tf_Inventory;

implementation

{$R *.dfm}

uses dmPM, DateUtils, fReports;

procedure Tf_Inventory.btnui;
begin
  with dm_PM do
  begin
    if qry_inventory.State = dsInsert then
    begin
      btnNew.Enabled      := False;
      btnNew.ImageIndex   := 6;
      btnSave.Enabled     := True;
      btnSave.ImageIndex  := 3;
    end
    else
    begin
      btnNew.Enabled       := True;
      btnNew.ImageIndex    := 1;
      btnSave.Enabled      := False;
      btnSave.ImageIndex   := 7;
    end;

  end;
end;

procedure Tf_Inventory.FormShow(Sender: TObject);
begin
  btnui;
  manageui;
  RefreshExecute(nil);
end;

procedure Tf_Inventory.manageui;
var isvalid: Boolean;
begin
  with dm_PM do
  begin
    if (qry_inventory.Active) and (qry_inventory.State = dsInsert) then
    begin
      rad_source.Enabled    := True;
      txt_notes.Enabled     := True;
      txt_newonhand.Enabled := True;
      date_date.Enabled     := True;
      spin_year.Enabled     := True;

      txt_notes.Style.BorderColor := clRed;
      if (qry_inventoryNOTES.Value <> '') then
      txt_notes.Style.BorderColor := $00121212;

      isvalid := True;

      if not (isvalid) or (txt_notes.Style.BorderColor = clRed) then
      begin
        btnSave.Enabled       := False;
        btnSave.ImageIndex    := 7;
      end
      else
      begin
        btnSave.Enabled       := True;
        btnSave.ImageIndex    := 3;
      end;
    end
    else
    begin
      rad_source.Enabled    := False;
      txt_notes.Enabled     := False;
      txt_newonhand.Enabled := False;
      date_date.Enabled     := False;
      spin_year.Enabled     := False;
    end;
  end;
end;

procedure Tf_Inventory.NewExecute(Sender: TObject);
var balance: Variant;
begin
  with dm_PM do
  begin
    if MessageDlg('Note: Please suspend all current transactions with this item.', mtWarning, [mbOK], 0) = mrOk then
    begin
      RefreshExecute(nil);

      balance := cxGridDBTableView1.DataController.Summary.FooterSummaryValues[0];
      qry_inventory.Close;
      qry_inventory.SQL[2]  := 'WHERE ID = 0';
      qry_inventory.Open();

      qry_inventory.Append;
      qry_inventoryCLASSIFICATION.Value   := 'IA';
      if balance <> null then
      qry_inventoryONHAND.Value           := balance
      else
      qry_inventoryONHAND.Value           := 0;
      qry_inventoryNEWONHAND.Value        := 0;
      qry_inventoryCREATEDDATETIME.Value  := Now;
      qry_inventoryFISCALYEAR.Value       := YearOf(qry_inventoryCREATEDDATETIME.Value);

      if brw_InvDetail.Locate('SOURCE;FISCALYEAR', VarArrayOf(['BI',qry_inventoryFISCALYEAR.Value]), []) then
      qry_inventoryCLASSIFICATION.Value   := 'IA'
      else
      qry_inventoryCLASSIFICATION.Value   := 'BI';

      btnui;
      manageui;
    end;
  end;
end;

procedure Tf_Inventory.PrintExecute(Sender: TObject);
var balance: Variant;
begin
  with dm_PM do
  begin
    //balance  := FormatCurr('##0.000', cxGridDBTableView1.DataController.Summary.FooterSummaryValues[0]);

    f_reports := Tf_Reports.Create(Self);
    TfrxMemoView(f_Reports.rep_inventory.FindObject('period')).Text := 'As of '+FormatDateTime('mm/dd/yyyy', Now);
    //TfrxMemoView(f_Reports.rep_inventory.FindObject('balance')).Text := balance;
    TfrxMemoView(f_Reports.rep_inventory.FindObject('item')).Text := brw_itemsDESCRIPTION.AsString;
    f_Reports.rep_inventory.ShowReport(True);
  end;
end;

procedure Tf_Inventory.rad_sourceExit(Sender: TObject);
begin
  btnui;
  manageui;
end;

procedure Tf_Inventory.RefreshExecute(Sender: TObject);
begin
  with dm_PM do
  begin
    brw_InvDetail.Close;
    brw_InvDetail.SQL[4]  := 'WHERE INV_DETAILS.INVID = :ID';
    brw_InvDetail.ParamByName('ID').Value := brw_itemsID.Value;
    brw_InvDetail.Open();

  end;
end;

procedure Tf_Inventory.SaveExecute(Sender: TObject);
begin
  with dm_PM do
  begin
    if qry_inventory.State = dsInsert then
    begin

      qry_inventoryADJQTY.Value           := txt_newonhand.EditValue - qry_inventoryONHAND.Value;
      qry_inventoryCANCELLED.Value        := False;
      qry_inventoryCREATEDBYID.Value      := userid;
      qry_inventoryCREATEDDATETIME.Value  := Now;
      qry_inventoryITEMID.Value           := brw_itemsID.Value;
      qry_inventory.Post;
      qry_inventory.ApplyUpdates();
    end
    else
    qry_inventory.Cancel;

    qry_inventory.Close;
    qry_inventory.SQL[2]  := 'WHERE ID = 0';
    qry_inventory.Open();
  end;

  btnui;
  manageui;
  RefreshExecute(nil);

end;

end.
