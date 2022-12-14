unit fCashRegTemp;

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
  cxGridCustomView, cxGrid, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxGroupBox, cxRadioGroup, cxDBEdit, cxCheckBox, cxMemo, cxLabel, cxDBLabel,
  cxMaskEdit, cxCalendar, Vcl.StdCtrls, Vcl.ExtCtrls, System.ImageList,
  Vcl.ImgList, acAlphaImageList, scControls, scGPPagers;

type
  Tf_CashRegTemp = class(TForm)
    cxStyleRepository1: TcxStyleRepository;
    Header_style: TcxStyle;
    ds_items: TDataSource;
    Panel1: TPanel;
    select_style: TcxStyle;
    Label3: TLabel;
    Label1: TLabel;
    cmb_filter: TComboBox;
    sCharImageList1: TsCharImageList;
    txt_search: TButtonedEdit;
    scGPPageControl1: TscGPPageControl;
    scGPPageControlPage3: TscGPPageControlPage;
    grid_items: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1CODE: TcxGridDBColumn;
    cxGridDBTableView1DESCRIPTION: TcxGridDBColumn;
    cxGridDBTableView1ITEMTYPE: TcxGridDBColumn;
    cxGridDBTableView1INVUNIT: TcxGridDBColumn;
    cxGridDBTableView1ONHAND: TcxGridDBColumn;
    cxGridDBTableView1SELLINGPRICE: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    ActionList1: TActionList;
    Button3: TButton;
    Panel3: TPanel;
    cxGridDBTableView1MINQTY: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure txt_searchRightButtonClick(Sender: TObject);
    procedure txt_searchKeyPress(Sender: TObject; var Key: Char);
    procedure cxGridDBTableView1DblClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure cxGridDBTableView1ONHANDStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure FormCreate(Sender: TObject);
    procedure cxGridDBTableView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    AYellowStyle: TcxStyle;
    ARedStyle: TcxStyle;
    procedure search;
  public
    { Public declarations }
  end;

var
  f_CashRegTemp: Tf_CashRegTemp;

implementation

{$R *.dfm}

uses dmPM, fCashReg;

{ Tf_CashRegTemp }

procedure Tf_CashRegTemp.Button2Click(Sender: TObject);
begin
  f_CashReg.add_item;
  Close;
end;

procedure Tf_CashRegTemp.Button3Click(Sender: TObject);
begin
  Close;
end;

procedure Tf_CashRegTemp.cxGridDBTableView1DblClick(Sender: TObject);
begin
  f_CashReg.add_item;
  Close;
end;

procedure Tf_CashRegTemp.cxGridDBTableView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = 13 then
  begin
    f_CashReg.add_item;
    Close;
  end;
end;

procedure Tf_CashRegTemp.cxGridDBTableView1ONHANDStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
  var stock_level, onhand: Real;
begin
  if ARecord.Values[cxGridDBTableView1MINQTY.Index] = Null then
  stock_level := 0
  else
  stock_level := ARecord.Values[cxGridDBTableView1MINQTY.Index];

  if ARecord.Values[cxGridDBTableView1ONHAND.Index] = Null then
  onhand := 0
  else
  onhand := ARecord.Values[cxGridDBTableView1ONHAND.Index];

  if (stock_level + 3 <= onhand) and (onhand > stock_level) then //((onhand - 3) = stock_level) then
  AStyle  :=  AYellowStyle
  else if (onhand < stock_level) then
  AStyle  := ARedStyle;
end;

procedure Tf_CashRegTemp.FormCreate(Sender: TObject);
begin
  AYellowStyle         := TcxStyle.Create(Self);
  AYellowStyle.Color   := clYellow;

  ARedStyle         := TcxStyle.Create(Self);
  ARedStyle.Color   := clRed;
end;

procedure Tf_CashRegTemp.FormShow(Sender: TObject);
begin
  cmb_filter.ItemIndex := 0;
  search;
  txt_search.SetFocus;
end;

procedure Tf_CashRegTemp.search;
begin
  with dm_PM do
  begin
    brw_items.Close;
    if cmb_filter.ItemIndex = 0 then
    brw_items.SQL[2]  := 'WHERE DESCRIPTION LIKE :TEXT AND CANCELLED = FALSE AND SALES = TRUE'
    else if cmb_filter.ItemIndex = 1 then
    brw_items.SQL[2]  := 'WHERE CODE LIKE :TEXT AND CANCELLED = FALSE AND SALES = TRUE'
    else
    brw_items.SQL[2]  := 'WHERE ITEMTYPE LIKE :TEXT AND CANCELLED = FALSE AND SALES = TRUE';
    brw_items.ParamByName('TEXT').Value := '%'+Trim(txt_search.Text)+'%';
    brw_items.Open();

    brw_items.First;

    grid_items.SetFocus;
    if brw_items.RecordCount > 0 then
    begin
      cxGridDBTableView1.ViewData.Rows[0].Focused := True;
    end;
  end;
end;

procedure Tf_CashRegTemp.txt_searchKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  search;
end;

procedure Tf_CashRegTemp.txt_searchRightButtonClick(Sender: TObject);
begin
  search;
end;

end.
