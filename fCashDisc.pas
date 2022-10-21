unit fCashDisc;

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
  dxSkinXmas2008Blue, cxTextEdit, cxMemo, Vcl.StdCtrls, Vcl.ExtCtrls,
  cxMaskEdit, cxSpinEdit, cxDBEdit, Data.DB;

type
  Tf_CashDisc = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Panel2: TPanel;
    Label3: TLabel;
    spin_percent: TcxDBSpinEdit;
    Label1: TLabel;
    spin_discamnt: TcxDBSpinEdit;
    ds_discount: TDataSource;
    procedure spin_percentPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure spin_discamntPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_CashDisc: Tf_CashDisc;

implementation

{$R *.dfm}

uses dmPM, fCashReg;

procedure Tf_CashDisc.FormShow(Sender: TObject);
begin
  spin_percent.SetFocus;
end;

procedure Tf_CashDisc.spin_discamntPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  if (dm_PM.qry_CashReg.State = dsInsert) or (dm_PM.qry_CashReg.State = dsEdit) then
  begin
    if (DisplayValue <= dm_PM.qry_CashRegGROSSAMNT.Value) and (DisplayValue >=0) then
    begin
      dm_PM.qry_CashRegDISCPERCENT.Value :=  (DisplayValue / dm_PM.qry_CashRegGROSSAMNT.Value) * 100;
      dm_PM.qry_CashRegDISCOUNT.Value    := DisplayValue;
    end
    else
    begin
      MessageDlg('Invalid input!', mtError, [mbOK], 0);
      DisplayValue                        := 0;
      dm_PM.qry_CashRegDISCOUNT.Value     := 0;
      dm_PM.qry_CashRegDISCPERCENT.Value  := 0;
    end;
  end;
  f_CashReg.compute_total;
end;

procedure Tf_CashDisc.spin_percentPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  if (dm_PM.qry_CashReg.State = dsInsert) or (dm_PM.qry_CashReg.State = dsEdit) then
  begin
    dm_PM.qry_CashRegDISCOUNT.Value     := (dm_PM.qry_CashRegGROSSAMNT.Value * (DisplayValue / 100));
    if (dm_PM.qry_CashRegDISCOUNT.Value <= dm_PM.qry_CashRegGROSSAMNT.Value) and (dm_PM.qry_CashRegDISCOUNT.Value >=0) then
    dm_PM.qry_CashRegDISCPERCENT.Value  := DisplayValue
    else
    begin
      MessageDlg('Invalid input!', mtError, [mbOK], 0);
      DisplayValue                        := 0;
      dm_PM.qry_CashRegDISCOUNT.Value     := 0;
      dm_PM.qry_CashRegDISCPERCENT.Value  := 0;
    end;
  end;
  f_CashReg.compute_total;
end;

end.
