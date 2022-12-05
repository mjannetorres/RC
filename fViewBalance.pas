unit fViewBalance;

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
  cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridLevel, cxGridCustomView,
  cxGrid, cxLabel, Vcl.StdCtrls, Vcl.ExtCtrls, scControls, scGPPagers,
  cxImageComboBox, System.ImageList, Vcl.ImgList, acAlphaImageList;

type
  Tf_ViewBalance = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Panel2: TPanel;
    cxLabel1: TcxLabel;
    cxStyleRepository1: TcxStyleRepository;
    Header_style: TcxStyle;
    select_style: TcxStyle;
    ds_detail: TDataSource;
    lblBalance: TcxLabel;
    scGPPageControl1: TscGPPageControl;
    scGPPageControlPage2: TscGPPageControlPage;
    grid_jodetail: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1REFDATE: TcxGridDBColumn;
    cxGridDBTableView1REMARKS: TcxGridDBColumn;
    cxGridDBTableView1PAYDATEFROM: TcxGridDBColumn;
    cxGridDBTableView1PAYDATETO: TcxGridDBColumn;
    cxGridDBTableView1CASHADVBALANCE: TcxGridDBColumn;
    cxGridDBTableView1CASHADVACTUAL: TcxGridDBColumn;
    cxGridDBTableView1CASHADVANCES: TcxGridDBColumn;
    cxGridDBTableView1CASHADVCREDIT: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    scGPPageControl2: TscGPPageControl;
    scGPPageControlPage1: TscGPPageControlPage;
    cxGrid1: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    ds_accts: TDataSource;
    cxGridDBTableView2BALANCE: TcxGridDBColumn;
    cxGridDBTableView2EFFECTIVITYDATE: TcxGridDBColumn;
    cxGridDBTableView2REMARKS: TcxGridDBColumn;
    cxGridDBTableView2FORWARDED: TcxGridDBColumn;
    cxGridDBTableView2CREATEDDATETIME: TcxGridDBColumn;
    sCharImageList1: TsCharImageList;
    procedure cxGridDBTableView1CASHADVCREDITStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    ARedStyle : TcxStyle;
  public
    { Public declarations }
  end;

var
  f_ViewBalance: Tf_ViewBalance;

implementation

{$R *.dfm}

procedure Tf_ViewBalance.cxGridDBTableView1CASHADVCREDITStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
begin
  AStyle  := ARedStyle;
end;

procedure Tf_ViewBalance.FormCreate(Sender: TObject);
begin
  ARedStyle := TcxStyle.Create(Self);
  ARedStyle.TextColor   := clRed;
end;

end.
