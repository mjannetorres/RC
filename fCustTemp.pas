unit fCustTemp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  dxSkinXmas2008Blue, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxRadioGroup,
  System.ImageList, Vcl.ImgList, acAlphaImageList, scControls, scGPPagers,
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, Data.DB, cxDBData, cxImageComboBox, cxClasses, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridCustomView,
  cxGrid, Vcl.ComCtrls;

type
  Tf_CustTemp = class(TForm)
    Panel2: TPanel;
    sCharImageList1: TsCharImageList;
    cxStyleRepository1: TcxStyleRepository;
    header_style: TcxStyle;
    select_style: TcxStyle;
    cxGrid1: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    Label4: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    txt_search: TButtonedEdit;
    date_1: TDateTimePicker;
    date_2: TDateTimePicker;
    Label1: TLabel;
    cmb_filter: TcxComboBox;
    ds_jo: TDataSource;
    cxGridDBTableView2JONO: TcxGridDBColumn;
    cxGridDBTableView2LOGDATE: TcxGridDBColumn;
    cxGridDBTableView2DUEDATE: TcxGridDBColumn;
    cxGridDBTableView2SUMMARY: TcxGridDBColumn;
    cxGridDBTableView2GROSSAMNT: TcxGridDBColumn;
    cxGridDBTableView2DISCOUNT: TcxGridDBColumn;
    cxGridDBTableView2NETAMNT: TcxGridDBColumn;
    cxGridDBTableView2POSTED: TcxGridDBColumn;
    cxGridDBTableView2PAIDAMNT: TcxGridDBColumn;
    cxGridDBTableView2BALAMNT: TcxGridDBColumn;
    cxGridDBTableView2CLIENT: TcxGridDBColumn;
    Button3: TButton;
    Button4: TButton;
    Panel3: TPanel;
    procedure FormShow(Sender: TObject);
    procedure txt_searchRightButtonClick(Sender: TObject);
    procedure date_1CloseUp(Sender: TObject);
    procedure date_2CloseUp(Sender: TObject);
    procedure cmb_filterPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
  private
    { Private declarations }
    procedure search;
  public
    { Public declarations }
  end;

var
  f_CustTemp: Tf_CustTemp;

implementation

{$R *.dfm}

uses dmPM, DateUtils;

{ Tf_CustTemp }

procedure Tf_CustTemp.cmb_filterPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  search;
end;

procedure Tf_CustTemp.date_1CloseUp(Sender: TObject);
begin
  search;
end;

procedure Tf_CustTemp.date_2CloseUp(Sender: TObject);
begin
  search;
end;

procedure Tf_CustTemp.FormShow(Sender: TObject);
begin
  date_1.Date := Now;
  date_2.Date := Now;
  cmb_filter.ItemIndex  := 0;
  txt_search.SetFocus;

  search;
end;

procedure Tf_CustTemp.search;
begin
  with dm_PM do
  begin
    brw_JO.Close;
    if cmb_filter.Text <> '' then
    begin
      if cmb_filter.ItemIndex = 0 then
      begin
        brw_JO.SQL[3] := 'WHERE (JO_HEADER.LOGDATE BETWEEN :DATE1 AND :DATE2) AND JO_HEADER.JONO LIKE :JONO AND JO_HEADER.CANCELLED = FALSE AND JO_HEADER.BALAMNT > 0 AND JO_HEADER.CLOSED = FALSE ';
        brw_JO.ParamByName('JONO').Value  := '%'+Trim(txt_search.Text)+'%';
        brw_JO.ParamByName('DATE1').Value := FormatDateTime('yyyy-mm-dd hh:nn', StartOfTheDay(date_1.Date));
        brw_JO.ParamByName('DATE2').Value := FormatDateTime('yyyy-mm-dd hh:nn', EndOfTheDay(date_2.Date));
      end
      else
      begin
        brw_JO.SQL[3] := 'WHERE (JO_HEADER.LOGDATE BETWEEN :DATE1 AND :DATE2) AND JO_CLIENTS.NAME LIKE :NAME AND JO_HEADER.CANCELLED = FALSE AND JO_HEADER.BALAMNT > 0 AND JO_HEADER.CLOSED = FALSE';
        brw_JO.ParamByName('NAME').Value  := '%'+Trim(txt_search.Text)+'%';
        brw_JO.ParamByName('DATE1').Value := FormatDateTime('yyyy-mm-dd hh:nn', StartOfTheDay(date_1.Date));
        brw_JO.ParamByName('DATE2').Value := FormatDateTime('yyyy-mm-dd hh:nn', EndOfTheDay(date_2.Date));
      end;
    end;
    brw_JO.Open();
  end;
end;

procedure Tf_CustTemp.txt_searchRightButtonClick(Sender: TObject);
begin
  search;
end;

end.
