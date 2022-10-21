unit fVendorTemp;

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
  dxSkinXmas2008Blue, Data.DB, cxTextEdit, cxDBEdit, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  Tf_VendorTemp = class(TForm)
    Panel1: TPanel;
    btnSave: TButton;
    Button2: TButton;
    Panel2: TPanel;
    Label1: TLabel;
    txt_desc: TcxDBTextEdit;
    ds_vendor: TDataSource;
    procedure txt_descExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure manageui;
  public
    { Public declarations }
  end;

var
  f_VendorTemp: Tf_VendorTemp;

implementation

{$R *.dfm}

uses dmPM;

{ Tf_VendorTemp }

procedure Tf_VendorTemp.FormShow(Sender: TObject);
begin
  manageui;
  txt_desc.SetFocus;
end;

procedure Tf_VendorTemp.manageui;
begin
  with dm_PM do
  begin
    txt_desc.Style.BorderColor     := clRed;
    if qry_VendorVENDORNAME.Value <> '' then
    txt_desc.Style.BorderColor     := $00121212;

    if qry_VendorVENDORNAME.Value <> '' then
    btnSave.Enabled := True
    else
    btnSave.Enabled := False;
  end;
end;

procedure Tf_VendorTemp.txt_descExit(Sender: TObject);
begin
  manageui;
end;

end.
