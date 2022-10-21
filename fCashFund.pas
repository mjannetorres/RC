unit fCashFund;

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
  cxGrid, cxLabel, cxDBLabel, Vcl.StdCtrls, Vcl.ExtCtrls, cxGridBandedTableView,
  cxGridDBBandedTableView;

type
  Tf_CashFund = class(TForm)
    Panel2: TPanel;
    btnSave: TButton;
    btnCancel: TButton;
    Panel3: TPanel;
    lblDay: TLabel;
    cxDBLabel1: TcxDBLabel;
    grid_funddetail: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    ds_POS: TDataSource;
    cxStyleRepository1: TcxStyleRepository;
    Header_style: TcxStyle;
    ds_details: TDataSource;
    cxGridDBTableView1CASH: TcxGridDBColumn;
    cxGridDBTableView1QTY: TcxGridDBColumn;
    cxGridDBTableView1AMNT: TcxGridDBColumn;
    grid_funddetailDBBandedTableView1: TcxGridDBBandedTableView;
    grid_funddetailDBBandedTableView1CASH: TcxGridDBBandedColumn;
    grid_funddetailDBBandedTableView1QTY: TcxGridDBBandedColumn;
    grid_funddetailDBBandedTableView1AMNT: TcxGridDBBandedColumn;
    procedure FormShow(Sender: TObject);
    procedure grid_funddetailDBBandedTableView1QTYPropertiesValidate(
      Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_CashFund: Tf_CashFund;

implementation

{$R *.dfm}

uses dmPM;

procedure Tf_CashFund.FormShow(Sender: TObject);
begin
  grid_funddetail.SetFocus;
  if dm_pm.tb_CashFund.RecordCount > 0 then
  grid_funddetailDBBandedTableView1.ViewData.Rows[0].Focused := True;

end;

procedure Tf_CashFund.grid_funddetailDBBandedTableView1QTYPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  if DisplayValue < 0 then
  begin
    MessageDlg('Invalid Qty', mtError, [mbOK], 0);
    DisplayValue  := 0;
  end;
end;

end.