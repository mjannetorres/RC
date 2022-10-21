unit fItemsTemp;

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
  dxSkinXmas2008Blue, cxTextEdit, cxDBEdit, Vcl.StdCtrls, Vcl.ExtCtrls,
  cxGroupBox, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxCheckBox, Data.DB;

type
  Tf_ItemsTemp = class(TForm)
    btnSave: TButton;
    Button2: TButton;
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    txt_code: TcxDBTextEdit;
    Label2: TLabel;
    txt_desc: TcxDBTextEdit;
    Label3: TLabel;
    cxGroupBox1: TcxGroupBox;
    Label16: TLabel;
    txt_purcost: TcxDBTextEdit;
    Label5: TLabel;
    txt_sellingprice: TcxDBTextEdit;
    txt_markup: TcxDBTextEdit;
    cmb_pur: TcxDBLookupComboBox;
    cmb_inv: TcxDBLookupComboBox;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    txt_qty: TcxDBTextEdit;
    chk_sales: TcxDBCheckBox;
    chk_purchase: TcxDBCheckBox;
    ds_items: TDataSource;
    chk_markuppercent: TcxDBCheckBox;
    cmb_item: TcxDBComboBox;
    ds_purchase: TDataSource;
    ds_invunit: TDataSource;
    txt_price: TcxDBTextEdit;
    Label4: TLabel;
    txt_minqty: TcxDBTextEdit;
    procedure FormShow(Sender: TObject);
    procedure txt_codeExit(Sender: TObject);
    procedure chk_purchaseClick(Sender: TObject);
    procedure txt_codeKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure manageui;
  public
    { Public declarations }
  end;

var
  f_ItemsTemp: Tf_ItemsTemp;

implementation

{$R *.dfm}

uses dmPM;

{ Tf_ItemsTemp }

procedure Tf_ItemsTemp.chk_purchaseClick(Sender: TObject);
begin
  manageui;
  if not chk_markuppercent.Checked then
  begin
    dm_PM.qry_ItemsMARKUPPERCENT.Value  := 0;
    dm_PM.qry_ItemsMARKUP.Value         := False;
  end;
  if dm_PM.qry_ItemsCOST.IsNull then
  dm_PM.qry_ItemsCOST.Value             := 0;
end;

procedure Tf_ItemsTemp.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  Key := #0;
end;

procedure Tf_ItemsTemp.FormShow(Sender: TObject);
begin
  with dm_PM do
  begin
    brw_Unit.Close;
    brw_Unit.SQL[2] := 'WHERE CANCELLED = FALSE';
    brw_Unit.Open();
  end;
  manageui;
  txt_code.SetFocus;
end;

procedure Tf_ItemsTemp.manageui;
begin
  with dm_PM do
  begin

    txt_price.Visible         := chk_markuppercent.Checked;
    txt_sellingprice.Visible  := not chk_markuppercent.Checked;

    cmb_item.Style.BorderColor := clRed;
    if (qry_ItemsITEMTYPE.Value <> '') then
    cmb_item.Style.BorderColor := $00121212;

    txt_code.Style.BorderColor := clRed;
    if (qry_ItemsCODE.Value <> '') then
    txt_code.Style.BorderColor := $00121212;

    txt_desc.Style.BorderColor := clRed;
    if (qry_ItemsDESCRIPTION.Value <> '') then
    txt_desc.Style.BorderColor := $00121212;

    cmb_pur.Style.BorderColor := clRed;
    if (qry_ItemsPURCHASEUNIT.Value <> '') then
    cmb_pur.Style.BorderColor := $00121212;

    cmb_inv.Style.BorderColor := clRed;
    if (qry_ItemsINVUNIT.Value <> '') then
    cmb_inv.Style.BorderColor := $00121212;

    txt_qty.Style.BorderColor := clRed;
    if (qry_ItemsUNITQTY.Value > 0) then
    txt_qty.Style.BorderColor := $00121212;

    txt_purcost.Enabled   := chk_purchase.Checked;
    chk_markuppercent.Enabled   := chk_sales.Checked and chk_purchase.Checked;
    txt_sellingprice.Enabled    := chk_sales.Checked;
    txt_markup.Enabled          := chk_markuppercent.Checked and chk_purchase.Checked;

    if chk_sales.Checked then
    begin
      if chk_purchase.Checked then
      begin
        if chk_markuppercent.Checked then
        begin
          txt_markup.Style.BorderColor := clRed;
          if (qry_ItemsMARKUPPERCENT.Value > 0) then
          txt_markup.Style.BorderColor := $00121212;
        end;
      end;

      txt_price.Style.BorderColor := $00121212;
      txt_sellingprice.Style.BorderColor := $00121212;
      if chk_markuppercent.Checked then
      begin
        txt_price.Style.BorderColor := clRed;
        if (qry_ItemsPRICE.Value > 0) then
        txt_price.Style.BorderColor := $00121212;
      end
      else
      begin
        txt_sellingprice.Style.BorderColor := clRed;
        if (qry_ItemsSELLINGPRICE.Value > 0) then
        txt_sellingprice.Style.BorderColor := $00121212;
      end;
    end;

    if (cmb_item.Style.BorderColor = clRed) or (txt_code.Style.BorderColor = clRed) or (txt_desc.Style.BorderColor = clRed) or (cmb_pur.Style.BorderColor = clRed) or (cmb_inv.Style.BorderColor = clRed) or (txt_qty.Style.BorderColor = clRed) or (txt_purcost.Style.BorderColor = clRed) or (txt_markup.Style.BorderColor = clRed) or (txt_sellingprice.Style.BorderColor = clRed) or (txt_price.Style.BorderColor = clRed) then
    btnSave.Enabled := False
    else
    btnSave.Enabled := True;
  end;
end;

procedure Tf_ItemsTemp.txt_codeExit(Sender: TObject);
begin
  dm_PM.brw_ItemCode.Close;
  dm_PM.brw_ItemCode.SQL[2]  := 'WHERE CODE = :CODE AND (ID <> :ID)';
  dm_PM.brw_ItemCode.ParamByName('CODE').Value := dm_PM.qry_ItemsCODE.Value;
  dm_PM.brw_ItemCode.ParamByName('ID').Value   := dm_PM.qry_ItemsID.Value;
  dm_PM.brw_ItemCode.Open();

  if dm_PM.brw_ItemCode.RecordCount > 0 then
  begin
    MessageDlg('Item code is already taken! Pls. use unique code.', mtError, [mbOK], 0);
    txt_code.SelectAll;
    txt_code.SetFocus;
  end;
  manageui;

end;

procedure Tf_ItemsTemp.txt_codeKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9', #8]) then
  Key := #0;
end;

end.
