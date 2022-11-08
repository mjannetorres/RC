unit fGarmentsTemp;

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
  cxDBLookupComboBox, cxTextEdit, cxDBEdit, cxGroupBox, Data.DB, System.Actions,
  Vcl.ActnList, cxSpinEdit, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, Vcl.Menus;

type
  Tf_GarmentsTemp = class(TForm)
    btnSave: TButton;
    Button2: TButton;
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    txt_code: TcxDBTextEdit;
    Label2: TLabel;
    cmb_fabric: TcxDBLookupComboBox;
    Label3: TLabel;
    txt_specs: TcxDBTextEdit;
    Label4: TLabel;
    cmb_unit: TcxDBLookupComboBox;
    cxGroupBox1: TcxGroupBox;
    Label12: TLabel;
    Label14: TLabel;
    txt_artist: TcxDBTextEdit;
    txt_price: TcxDBTextEdit;
    ds_garments: TDataSource;
    ds_fabric: TDataSource;
    Label5: TLabel;
    ds_unit: TDataSource;
    txt_unitqty: TcxDBSpinEdit;
    Label6: TLabel;
    txt_desc: TcxDBTextEdit;
    Label7: TLabel;
    txt_PrinOP: TcxDBTextEdit;
    Label8: TLabel;
    txt_cutter: TcxDBTextEdit;
    Label9: TLabel;
    txt_tailor: TcxDBTextEdit;
    Label10: TLabel;
    txt_heatpress: TcxDBTextEdit;
    cxGroupBox2: TcxGroupBox;
    cxGrid2: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBTableView1ITEMID: TcxGridDBColumn;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    ds_items: TDataSource;
    ds_costing: TDataSource;
    PopupMenu1: TPopupMenu;
    ActionList1: TActionList;
    Delete: TAction;
    Delete1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure txt_codeExit(Sender: TObject);
    procedure cmb_unitPropertiesCloseUp(Sender: TObject);
    procedure txt_unitqtyPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure cxGridDBTableView1ITEMIDPropertiesCloseUp(Sender: TObject);
    procedure DeleteExecute(Sender: TObject);
  private
    { Private declarations }
    procedure write_desc;
    procedure manageui;
  public
    { Public declarations }
  end;

var
  f_GarmentsTemp: Tf_GarmentsTemp;

implementation

{$R *.dfm}

uses dmPM;

{ Tf_GarmentsTemp }

procedure Tf_GarmentsTemp.cmb_unitPropertiesCloseUp(Sender: TObject);
begin
  if dm_PM.qry_garments.State = dsInsert then
  begin
    if cmb_unit.ItemIndex > 0 then
    dm_PM.qry_garmentsUNITQTY.Value := 1;
  end;
end;

procedure Tf_GarmentsTemp.cxGridDBTableView1ITEMIDPropertiesCloseUp(
  Sender: TObject);
 var itemid: Integer;
begin
  with dm_PM do
  begin
    itemid  := tb_InvReqDetailITEMID.Value;

    tb_InvReqDetail.DisableControls;
    tb_InvReqDetail.Filtered := False;
    tb_InvReqDetail.Filter   := 'ITEMID = '+IntToStr(itemid);
    tb_InvReqDetail.Filtered := True;

    if tb_InvReqDetail.RecordCount > 1 then
    begin
      tb_InvReqDetail.Last;
      tb_InvReqDetail.Delete;
      MessageDlg('Item already on the list!', mtInformation, [mbOK], 0);
      tb_InvReqDetail.Filtered := False;
      tb_InvReqDetail.EnableControls;
      Exit;
    end
    else
    begin
      tb_InvReqDetail.Filtered := False;
      tb_InvReqDetail.EnableControls;
    end;

    brw_items.DisableControls;
    if brw_items.Locate('ID', tb_InvReqDetailITEMID.Value) then
    begin
      tb_InvReqDetail.Edit;
      tb_InvReqDetailITEMID.Value    := brw_itemsID.Value;
      tb_InvReqDetailITEMDESC.Value  := brw_itemsDESCRIPTION.AsString;
      tb_InvReqDetailQTY.Value       := 1;
      tb_InvReqDetailUNIT.Value      := brw_itemsINVUNIT.Value;
      tb_InvReqDetailCOST.Value      := brw_itemsCOST.Value;
      tb_InvReqDetail.Post;
    end;
    brw_items.EnableControls;
  end;
end;

procedure Tf_GarmentsTemp.DeleteExecute(Sender: TObject);
begin
 with dm_PM do
  begin
     if not tb_InvReqDetailID.IsNull then
     begin
       qry_GarCosting.Close;
       qry_GarCosting.SQL[2]  := 'WHERE ID = :ID';
       qry_GarCosting.ParamByName('ID').Value := tb_InvReqDetailID.Value;
       qry_GarCosting.Open();

       if qry_GarCosting.RecordCount > 0 then
       begin
         qry_GarCosting.Edit;
         qry_GarCostingCANCELLED.Value          := True;
         qry_GarCostingCANCELLEDBYID.Value      := userid;
         qry_GarCostingCANCELLEDDATETIME.Value  := Now;
         qry_GarCosting.Post;
         qry_GarCosting.ApplyUpdates();
       end;
     end;
     tb_InvReqDetail.Delete;
  end;
end;

procedure Tf_GarmentsTemp.FormShow(Sender: TObject);
begin
  with dm_PM do
  begin
    brw_Fabrics.Close;
    brw_Fabrics.SQL[2]  := 'WHERE CANCELLED = FALSE';
    brw_Fabrics.Open();

    brw_Unit.Close;
    brw_Unit.SQL[2]  := 'WHERE CANCELLED = FALSE';
    brw_Unit.Open();

    brw_items.Close;
    brw_items.SQL[2]  := 'WHERE CANCELLED = FALSE';
    brw_items.Open();

    manageui;
    txt_code.SetFocus;
  end;

end;

procedure Tf_GarmentsTemp.manageui;
begin
  with dm_PM do
  begin
    cmb_fabric.Style.BorderColor := $00121212;
    if (qry_garmentsFABRICID.IsNull) or  (qry_garmentsFABRICID.Value = 0) then
    cmb_fabric.Style.BorderColor := clRed;

    cmb_unit.Style.BorderColor := $00121212;
    if (qry_garmentsUNIT.IsNull) or  (qry_garmentsUNIT.Value = '') then
    cmb_unit.Style.BorderColor := clRed;

    txt_specs.Style.BorderColor     := $00121212;
    if (qry_garmentsSPECIFICATIONS.IsNull) or (qry_garmentsSPECIFICATIONS.Value = '') then
    txt_specs.Style.BorderColor     := clRed;

    txt_desc.Style.BorderColor     := $00121212;
    if (qry_garmentsDESCRIPTION.IsNull) or (qry_garmentsDESCRIPTION.Value = '') then
    txt_desc.Style.BorderColor     := clRed;

    txt_unitqty.Style.BorderColor     := $00121212;
    if (qry_garmentsUNITQTY.IsNull) or (qry_garmentsUNITQTY.Value = 0) then
    txt_unitqty.Style.BorderColor     := clRed;

    txt_price.Style.BorderColor     := $00121212;
    if (qry_garmentsPRICE.IsNull) or (qry_garmentsPRICE.Value = 0) then
    txt_price.Style.BorderColor     := clRed;

    txt_artist.Style.BorderColor     := $00121212;
    if qry_garmentsARTISTSHARE.IsNull then
    txt_artist.Style.BorderColor     := clRed;

    txt_PrinOP.Style.BorderColor     := $00121212;
    if qry_garmentsPRINTOPSHARE.IsNull then
    txt_PrinOP.Style.BorderColor     := clRed;

    txt_heatpress.Style.BorderColor     := $00121212;
    if qry_garmentsHEATPRESSSHARE.IsNull then
    txt_heatpress.Style.BorderColor     := clRed;

    txt_cutter.Style.BorderColor     := $00121212;
    if qry_garmentsCUTTERSHARE.IsNull then
    txt_cutter.Style.BorderColor     := clRed;

    txt_tailor.Style.BorderColor     := $00121212;
    if qry_garmentsTAILORSHARE.IsNull then
    txt_tailor.Style.BorderColor     := clRed;

    if (cmb_fabric.Style.BorderColor = clRed) or (cmb_unit.Style.BorderColor = clRed) or (txt_specs.Style.BorderColor = clRed) or (txt_desc.Style.BorderColor = clRed) or (txt_unitqty.Style.BorderColor = clRed) or (txt_price.Style.BorderColor = clRed) or (txt_artist.Style.BorderColor = clRed) or (txt_PrinOP.Style.BorderColor = clRed) or (txt_heatpress.Style.BorderColor = clRed) or (txt_cutter.Style.BorderColor = clRed) or (txt_tailor.Style.BorderColor = clRed) then
    btnSave.Enabled := False
    else
    btnSave.Enabled := True;
  end;
end;
procedure Tf_GarmentsTemp.txt_codeExit(Sender: TObject);
begin
  write_desc;
  manageui;
end;

procedure Tf_GarmentsTemp.txt_unitqtyPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  if (DisplayValue  = 0) then
  begin
    DisplayValue := 1;
    MessageDlg('Qty cannot be 0', mtError, [mbOK], 0);
  end;
end;

procedure Tf_GarmentsTemp.write_desc;
begin
  dm_PM.qry_garmentsDESCRIPTION.Value := dm_PM.qry_garmentsSPECIFICATIONS.AsString + ' '+cmb_fabric.Text;
end;

end.
