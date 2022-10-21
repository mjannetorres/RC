unit fClientsTemp;

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
  dxSkinXmas2008Blue, Data.DB, Vcl.StdCtrls, cxMemo, cxDBEdit, cxTextEdit,
  Vcl.ExtCtrls;

type
  Tf_ClientsTemp = class(TForm)
    Panel2: TPanel;
    Label1: TLabel;
    Panel1: TPanel;
    btnSave: TButton;
    btnCancel: TButton;
    Panel3: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBMemo1: TcxDBMemo;
    ds_client: TDataSource;
    cxDBTextEdit1: TcxDBTextEdit;
    procedure FormShow(Sender: TObject);
    procedure cxDBTextEdit1Exit(Sender: TObject);
  private
    { Private declarations }
    procedure manageui;
  public
    { Public declarations }
  end;

var
  f_ClientsTemp: Tf_ClientsTemp;

implementation

{$R *.dfm}

uses dmPM;

procedure Tf_ClientsTemp.cxDBTextEdit1Exit(Sender: TObject);
begin
  manageui;
end;

procedure Tf_ClientsTemp.FormShow(Sender: TObject);
begin
  manageui;
  cxDBTextEdit1.SetFocus;
end;

procedure Tf_ClientsTemp.manageui;
begin
  with dm_PM do
  begin
    cxDBTextEdit1.Style.BorderColor     := $00121212;
    if (qry_ClientNAME.IsNull) or (qry_ClientNAME.Value = '') then
    cxDBTextEdit1.Style.BorderColor     := clRed;

    if (cxDBTextEdit1.Style.BorderColor = clRed) then
    btnSave.Enabled := False
    else
    btnSave.Enabled := True;
  end;
end;

end.