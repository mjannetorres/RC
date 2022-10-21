unit fPBReassign;

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
  dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, Data.DB;

type
  Tf_PBReassign = class(TForm)
    btnSave: TButton;
    Button2: TButton;
    Panel1: TPanel;
    Panel2: TPanel;
    Label3: TLabel;
    ds_workers: TDataSource;
    Label1: TLabel;
    Splitter1: TSplitter;
    ds_PB: TDataSource;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    procedure FormShow(Sender: TObject);
    procedure cxDBLookupComboBox1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure manageui;
  end;

var
  f_PBReassign: Tf_PBReassign;

implementation

{$R *.dfm}

uses dmPM;

{ Tf_PBReassign }

procedure Tf_PBReassign.cxDBLookupComboBox1Exit(Sender: TObject);
begin
  manageui;
end;

procedure Tf_PBReassign.FormShow(Sender: TObject);
begin
  manageui;
end;

procedure Tf_PBReassign.manageui;
begin
  with dm_PM do
  begin
    cxDBLookupComboBox1.Style.BorderColor := $00121212;
    if qry_PBEMPID.IsNull then
    cxDBLookupComboBox1.Style.BorderColor := clRed;

    btnSave.Enabled := cxDBLookupComboBox1.Style.BorderColor = $00121212;

  end;
end;

end.
