unit fVendor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxClasses,
  System.ImageList, Vcl.ImgList, acAlphaImageList, System.Actions, Vcl.ActnList,
  Vcl.StdCtrls, Vcl.ExtCtrls, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridCustomView, cxGrid, Vcl.ComCtrls,
  Vcl.ToolWin, scControls;

type
  Tf_Vendor = class(TForm)
    Splitter1: TSplitter;
    scToolBar2: TscToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    Panel3: TPanel;
    Label1: TLabel;
    txt_search: TButtonedEdit;
    ActionList1: TActionList;
    New: TAction;
    Edit: TAction;
    Delete: TAction;
    sCharImageList1: TsCharImageList;
    ds_vendor: TDataSource;
    cxStyleRepository1: TcxStyleRepository;
    header_style: TcxStyle;
    select_style: TcxStyle;
    cxGrid1DBTableView1VENDORNAME: TcxGridDBColumn;
    procedure NewExecute(Sender: TObject);
    procedure EditExecute(Sender: TObject);
    procedure DeleteExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure txt_searchRightButtonClick(Sender: TObject);
    procedure txt_searchKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure search;
  public
    { Public declarations }
  end;

var
  f_Vendor: Tf_Vendor;

implementation

{$R *.dfm}

uses dmPM, fVendorTemp;

procedure Tf_Vendor.DeleteExecute(Sender: TObject);
begin
  if MessageDlg('Do you want to delete this record?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    with dm_PM do
    begin
      qry_Vendor.Close;
      qry_Vendor.SQL[2] := 'WHERE ID = :ID';
      qry_Vendor.ParamByName('ID').Value  := brw_VendorID.Value;
      qry_Vendor.Open();

      qry_Vendor.Edit;
      qry_VendorCANCELLED.Value         := True;
      qry_VendorCANCELLEDBYID.Value     := userid;
      qry_VendorCANCELLEDDATETIME.Value := Now;
      qry_Vendor.Post;
      qry_Vendor.ApplyUpdates();

      search;
    end;
  end;
end;

procedure Tf_Vendor.EditExecute(Sender: TObject);
begin
  with dm_PM do
  begin
    qry_Vendor.Close;
    qry_Vendor.SQL[2] := 'WHERE ID = :ID';
    qry_Vendor.ParamByName('ID').Value  := brw_VendorID.Value;
    qry_Vendor.Open();

    qry_Vendor.Edit;

    f_VendorTemp  := Tf_VendorTemp.Create(Self);
    f_VendorTemp.Caption  := qry_VendorVENDORNAME.AsString;
    if f_VendorTemp.ShowModal =  mrOk then
    begin
      qry_Vendor.Post;
      qry_Vendor.ApplyUpdates();

      search;
    end;
  end;
end;

procedure Tf_Vendor.FormCreate(Sender: TObject);
begin
  search;
end;

procedure Tf_Vendor.NewExecute(Sender: TObject);
begin
  with dm_PM do
  begin
    qry_Vendor.Close;
    qry_Vendor.SQL[2] := 'WHERE ID = 0';
    qry_Vendor.Open();

    qry_Vendor.Append;
    qry_VendorCANCELLED.Value       := False;
    qry_VendorCREATEDBYID.Value     := userid;
    qry_VendorCREATEDDATETIME.Value := Now;

    f_VendorTemp  := Tf_VendorTemp.Create(Self);
    f_VendorTemp.Caption  := 'New Vendor';
    if f_VendorTemp.ShowModal =  mrOk then
    begin
      qry_Vendor.Post;
      qry_Vendor.ApplyUpdates();

      search;
    end;
  end;
end;

procedure Tf_Vendor.search;
begin
  with dm_PM do
  begin
    brw_Vendor.Close;
    brw_Vendor.SQL[2]  := 'WHERE VENDORNAME LIKE :NAME AND CANCELLED = FALSE';
    brw_Vendor.ParamByName('NAME').Value := '%'+Trim(txt_search.Text)+'%';
    brw_Vendor.Open();

  end;
end;

procedure Tf_Vendor.txt_searchKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  search;
end;

procedure Tf_Vendor.txt_searchRightButtonClick(Sender: TObject);
begin
  search;
end;

end.
