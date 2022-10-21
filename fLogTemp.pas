unit fLogTemp;

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
  dxSkinXmas2008Blue, cxTextEdit, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxMemo, cxDBEdit, cxLabel, cxDBLabel, cxSpinEdit;

type
  Tf_LogTemp = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Panel1: TPanel;
    Panel2: TPanel;
    Label3: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    txt_EmpName: TcxTextEdit;
    txt_desc: TcxTextEdit;
    txt_fabric: TcxTextEdit;
    txt_size: TcxTextEdit;
    txt_fit: TcxTextEdit;
    Label9: TLabel;
    Label13: TLabel;
    txt_unit: TcxTextEdit;
    Label14: TLabel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    ds_logs: TDataSource;
    cxGrid1DBTableView1QTY: TcxGridDBColumn;
    cxGrid1DBTableView1TOTALQTY: TcxGridDBColumn;
    cxGrid1DBTableView1DONE: TcxGridDBColumn;
    cxGrid1DBTableView1REMAINING: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    header_style: TcxStyle;
    cxDBMemo1: TcxDBMemo;
    cxDBLabel1: TcxDBLabel;
    cxDBLabel2: TcxDBLabel;
    procedure cxGrid1DBTableView1QTYPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_LogTemp: Tf_LogTemp;

implementation

{$R *.dfm}

uses dmPM;

procedure Tf_LogTemp.cxGrid1DBTableView1QTYPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  if DisplayValue > dm_PM.qry_LogsREMAINING.Value then
  begin
    DisplayValue := 0;
    MessageDlg('QTY cannot be greater than the total qty', mtError, [mbOK], 0);
  end
  else if DisplayValue < 0 then
  begin
    DisplayValue := 0;
    MessageDlg('Invalid Qty!', mtError, [mbOK], 0);
  end;

end;

end.