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
  cxGridDBTableView, cxGrid, cxMemo, cxDBEdit, cxLabel, cxDBLabel, cxSpinEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxImageComboBox;

type
  Tf_LogTemp = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label14: TLabel;
    ds_logs: TDataSource;
    cxStyleRepository1: TcxStyleRepository;
    header_style: TcxStyle;
    Label3: TLabel;
    cmb_jo: TcxDBLookupComboBox;
    cmb_client: TcxDBLookupComboBox;
    cmb_worker: TcxDBLookupComboBox;
    cmb_output: TcxDBLookupComboBox;
    txt_qty: TcxDBTextEdit;
    txt_cost: TcxDBTextEdit;
    ds_client: TDataSource;
    ds_workers: TDataSource;
    ds_output: TDataSource;
    ds_jo: TDataSource;
    cmb_role: TcxDBImageComboBox;
    procedure cmb_joPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure cmb_rolePropertiesValidate(Sender: TObject;
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

procedure Tf_LogTemp.cmb_joPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  with dm_PM do
  begin
    if DisplayValue <> null then
    begin

      qry_JO.Close;
      qry_JO.SQL[2] := 'WHERE JONO = :ID AND CANCELLED = FALSE';
      qry_JO.ParamByName('ID').Value  := DisplayValue;
      qry_JO.Open();

      brw_JODetail.Close;
      brw_JODetail.SQL[3] := 'WHERE JO_DETAIL.HEADERID = :ID AND JO_DETAIL.CANCELLED = FALSE';
      brw_JODetail.ParamByName('ID').Value  := qry_JOID.Value;
      brw_JODetail.Open();

      if qry_JO.RecordCount > 0 then
        qry_WorkLogsCLIENTID.Value  := qry_JOCLIENTID.Value;

    end;
  end;
end;

procedure Tf_LogTemp.cmb_rolePropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  with dm_PM do
  begin
    if (qry_WorkLogsOUTPUT.Value <> null) and (DisplayValue <> Null) then
    begin
      qry_JODetail.Close;
      qry_JODetail.SQL[2]   := 'WHERE ID = :ID AND CANCELLED = FALSE';
      qry_JODetail.ParamByName('ID').Value    := qry_WorkLogsOUTPUT.Value;
      qry_JODetail.Open();

      if qry_JODetail.RecordCount > 0 then
      begin
        brw_Garments.Close;
        brw_Garments.SQL[2]   := 'WHERE ID = :ID AND CANCELLED = FALSE';
        brw_Garments.ParamByName('ID').Value    := qry_JODetailSHIRTID.Value;
        brw_Garments.Open();


        if brw_Garments.RecordCount > 0 then
        begin
          if DisplayValue = 'ARTIST' then
          qry_WorkLogsCOST.Value := brw_GarmentsARTISTSHARE.Value
          else if DisplayValue = 'PRINTER OPERATOR' then
          qry_WorkLogsCOST.Value := brw_GarmentsPRINTOPSHARE.Value
          else if DisplayValue = 'HEAT PRESS OPERATOR' then
          qry_WorkLogsCOST.Value := brw_GarmentsHEATPRESSSHARE.Value
          else if DisplayValue = 'CUTTER' then
          qry_WorkLogsCOST.Value := brw_GarmentsCUTTERSHARE.Value
          else if DisplayValue = 'TAILOR' then
          qry_WorkLogsCOST.Value := brw_GarmentsTAILORSHARE.Value
          else
          qry_WorkLogsCOST.Value := 0;
        end;
      end;
    end;
  end;
end;

end.

