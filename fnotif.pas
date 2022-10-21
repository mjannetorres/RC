unit fnotif;

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
  dxSkinXmas2008Blue, cxTextEdit, cxDBEdit, cxMaskEdit, cxSpinEdit, cxCheckBox,
  Data.DB;

type
  Tf_notif = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    chk_posted: TcxDBCheckBox;
    cxDBSpinEdit1: TcxDBSpinEdit;
    ds_notif: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure chk_postedClick(Sender: TObject);
  private
    { Private declarations }
    procedure manageui;
  public
    { Public declarations }
  end;

var
  f_notif: Tf_notif;

implementation

{$R *.dfm}

uses dmPM;

{ Tf_notif }

procedure Tf_notif.chk_postedClick(Sender: TObject);
begin
  dm_PM.qry_NotifENABLED.Value  := chk_posted.Checked;
  manageui;
end;

procedure Tf_notif.FormShow(Sender: TObject);
begin
  manageui;
end;

procedure Tf_notif.manageui;
begin
  cxDBSpinEdit1.Enabled := dm_PM.qry_NotifENABLED.Value;
  if cxDBSpinEdit1.Enabled then
  cxDBSpinEdit1.SetFocus;
end;

end.
