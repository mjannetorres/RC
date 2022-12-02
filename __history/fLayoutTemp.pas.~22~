unit fLayoutTemp;

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
  cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxDBLookupComboBox,
  cxTextEdit, Vcl.Menus, frxClass, cxClasses, System.Actions, Vcl.ActnList,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridCustomView, cxGrid, scControls, scGPPagers, cxCheckBox, cxDBEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxMemo, scGPFontControls,
  cxMaskEdit, cxCalendar, cxLabel, cxDBLabel, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  Tf_layoutTemp = class(TForm)
    Panel1: TPanel;
    btnSave: TButton;
    btnCancel: TButton;
    Panel3: TPanel;
    Label3: TLabel;
    Label1: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBLabel1: TcxDBLabel;
    btnAdd: TscGPCharGlyphButton;
    cxDBMemo1: TcxDBMemo;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    scGPPageControl1: TscGPPageControl;
    scGPPageControlPage1: TscGPPageControlPage;
    grid_jodetail: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1SHIRTID: TcxGridDBColumn;
    cxGridDBTableView1FABRICID: TcxGridDBColumn;
    cxGridDBTableView1REMARKS: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    ds_Layout: TDataSource;
    ds_Client: TDataSource;
    ds_LoDetail: TDataSource;
    ds_garment: TDataSource;
    ds_farbric: TDataSource;
    ActionList1: TActionList;
    Delete: TAction;
    cxStyleRepository1: TcxStyleRepository;
    Header_style: TcxStyle;
    PopupMenu1: TPopupMenu;
    Delete1: TMenuItem;
    AddClient: TAction;
    procedure DeleteExecute(Sender: TObject);
    procedure cxGridDBTableView1SHIRTIDPropertiesCloseUp(Sender: TObject);
    procedure AddClientExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxDBLookupComboBox1Exit(Sender: TObject);
  private
    { Private declarations }
    function manageui: Boolean;
    function readonly: Boolean;
  public
    { Public declarations }
  end;

var
  f_layoutTemp: Tf_layoutTemp;

implementation

{$R *.dfm}

uses dmPM, fJOClient;

procedure Tf_layoutTemp.AddClientExecute(Sender: TObject);
begin
  with dm_PM do
  begin
    qry_Client.Close;
    qry_Client.SQL[2] := 'WHERE ID = 0';
    qry_Client.Open();

    qry_Client.Append;
    qry_ClientCANCELLED.Value       := False;
    qry_ClientCREATEDBYID.Value     := userid;
    qry_ClientCREATEDDATETIME.Value := Now;

    f_JOClient  := Tf_JOClient.Create(Self);

    if f_JOClient.ShowModal = mrOk then
    begin
      qry_ClientNAME.Value    := Trim(f_JOClient.ComboBoxSearch.Text);
      qry_Client.Post;
      qry_Client.ApplyUpdates();

      brw_Client.Close;
      brw_Client.SQL[2] := 'WHERE CANCELLED = FALSE';
      brw_Client.Open();

      qry_LayoutCLIENTID.Value    := qry_ClientID.Value;
    end;
    manageui;
  end;
end;

procedure Tf_layoutTemp.cxDBLookupComboBox1Exit(Sender: TObject);
begin
  manageui;
end;

procedure Tf_layoutTemp.cxGridDBTableView1SHIRTIDPropertiesCloseUp(
  Sender: TObject);
var detailid: Integer;
begin
  with dm_PM do
  begin
    detailid  := tb_LayoutDetailITEMID.Value;

    tb_LayoutDetail.DisableControls;
    tb_LayoutDetail.Filtered := False;
    tb_LayoutDetail.Filter   := 'ITEMID = '+IntToStr(detailid);
    tb_LayoutDetail.Filtered := True;

    if tb_LayoutDetail.RecordCount > 1 then
    begin
      tb_LayoutDetail.Last;
      tb_LayoutDetail.Delete;
      MessageDlg('Item already on the list!', mtInformation, [mbOK], 0);
      tb_LayoutDetail.Filtered := False;
      tb_LayoutDetail.EnableControls;
      Exit;
    end
    else
    begin
      tb_LayoutDetail.Filtered := False;
      tb_LayoutDetail.EnableControls;
    end;

    if brw_GarmentDesc.Locate('ID', tb_LayoutDetailITEMID.Value, []) then
    begin
      tb_LayoutDetail.Edit;
      tb_LayoutDetailDESCRIPTION.Value:= brw_GarmentDescDESCRIPTION.AsString;
      tb_LayoutDetailFABRICID.Value   := brw_GarmentDescFABRICID.Value;
      tb_LayoutDetailFABRIC.Value     := brw_GarmentDescFABRIC.Value;
      tb_LayoutDetail.Post;
    end;

    manageui;
  end;
end;


procedure Tf_layoutTemp.DeleteExecute(Sender: TObject);
begin
  with dm_PM do
  begin
     if not tb_LayoutDetailID.IsNull then
     begin
       qry_LayoutDetail.Close;
       qry_LayoutDetail.SQL[2]  := 'WHERE ID = :ID';
       qry_LayoutDetail.ParamByName('ID').Value := tb_LayoutDetailID.Value;
       qry_LayoutDetail.Open();

       if qry_LayoutDetail.RecordCount > 0 then
       begin
         qry_LayoutDetail.Edit;
         qry_LayoutDetailCANCELLED.Value          := True;
         qry_LayoutDetailCANCELLEDBYID.Value      := userid;
         qry_LayoutDetailCANCELLEDDATETIME.Value  := Now;
         qry_LayoutDetail.Post;
         qry_LayoutDetail.ApplyUpdates();
       end;
     end;
   tb_LayoutDetail.Delete;
   manageui;
  end;
end;


procedure Tf_layoutTemp.FormShow(Sender: TObject);
begin
  cxDBLookupComboBox1.SetFocus;
  manageui;
end;

function Tf_layoutTemp.manageui: Boolean;
begin
  with dm_PM do
  begin

    cxDBLookupComboBox1.Style.BorderColor := $00121212;
    if qry_LayoutCLIENTID.IsNull then
    cxDBLookupComboBox1.Style.BorderColor := clRed;

    cxDBDateEdit1.Style.BorderColor     := $00121212;
    if qry_LayoutCREATEDDATETIME.IsNull then
    cxDBDateEdit1.Style.BorderColor     := clRed;

    if readonly then
    Exit;

    if (qry_LayoutCLIENTID.IsNull) or (qry_LayoutCREATEDDATETIME.IsNull) or (tb_LayoutDetail.RecordCount = 0)  then
    btnSave.Enabled := False
    else
    btnSave.Enabled := True;

    Result  := btnSave.Enabled;
  end;
end;

function Tf_layoutTemp.readonly: Boolean;
begin
  with dm_PM do
  begin
    cxDBLookupComboBox1.Properties.ReadOnly         := qry_LayoutORDERED.Value;
    cxDBMemo1.Properties.ReadOnly                   := qry_LayoutORDERED.Value;
    cxGridDBTableView1SHIRTID.Options.Editing       := not qry_LayoutORDERED.Value;
    cxGridDBTableView1REMARKS.Options.Editing       := not qry_LayoutORDERED.Value;

    btnSave.Enabled  := not qry_LayoutORDERED.Value;

    Result  := qry_LayoutORDERED.Value;
  end;
end;

end.
