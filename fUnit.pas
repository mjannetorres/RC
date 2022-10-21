unit fUnit;

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
  Tf_Unit = class(TForm)
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
    ds_units: TDataSource;
    cxStyleRepository1: TcxStyleRepository;
    header_style: TcxStyle;
    select_style: TcxStyle;
    cxGrid1DBTableView1DESCRIPTION: TcxGridDBColumn;
    procedure NewExecute(Sender: TObject);
    procedure EditExecute(Sender: TObject);
    procedure DeleteExecute(Sender: TObject);
    procedure txt_searchRightButtonClick(Sender: TObject);
    procedure txt_searchKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure search;
  public
    { Public declarations }
  end;

var
  f_Unit: Tf_Unit;

implementation

{$R *.dfm}

uses dmPM, fUnitTemp;

procedure Tf_Unit.DeleteExecute(Sender: TObject);
begin
  if MessageDlg('Do you want to delete this record?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    with dm_PM do
    begin
      qry_Unit.Close;
      qry_Unit.SQL[2] := 'WHERE ID = :ID';
      qry_Unit.ParamByName('ID').Value  := brw_UnitID.Value;
      qry_Unit.Open();

      qry_Unit.Edit;
      qry_UnitCANCELLED.Value       := True;
      qry_UnitDELETEDBYID.Value     := userid;
      qry_UnitDELETEDDATETIME.Value := Now;
      qry_Unit.Post;
      qry_Unit.ApplyUpdates();

      search;
    end;
  end;
end;

procedure Tf_Unit.EditExecute(Sender: TObject);
begin
  with dm_PM do
  begin
    qry_Unit.Close;
    qry_Unit.SQL[2] := 'WHERE ID = :ID';
    qry_Unit.ParamByName('ID').Value  := brw_UnitID.Value;
    qry_Unit.Open();

    qry_Unit.Edit;

    f_UnitTemp        := Tf_UnitTemp.Create(Self);
    f_UnitTemp.Caption  := qry_UnitDESCRIPTION.AsString;
    if f_UnitTemp.ShowModal =  mrOk then
    begin
      qry_Unit.Post;
      qry_Unit.ApplyUpdates();

      search;
    end;
  end;
end;

procedure Tf_Unit.FormShow(Sender: TObject);
begin
  search;
end;

procedure Tf_Unit.NewExecute(Sender: TObject);
begin
  with dm_PM do
  begin
    qry_Unit.Close;
    qry_Unit.SQL[2] := 'WHERE ID = 0';
    qry_Unit.Open();

    qry_Unit.Append;
    qry_UnitCANCELLED.Value       := False;
    qry_UnitCREATEDBYID.Value     := userid;
    qry_UnitCREATEDDATETIME.Value := Now;

    f_UnitTemp  := Tf_UnitTemp.Create(Self);
    f_UnitTemp.Caption  := 'New Fabric';
    if f_UnitTemp.ShowModal =  mrOk then
    begin
      qry_Unit.Post;
      qry_Unit.ApplyUpdates();

      search;
    end;
  end;
end;

procedure Tf_Unit.search;
begin
  with dm_PM do
  begin
    brw_Unit.Close;
    brw_Unit.SQL[2]  := 'WHERE DESCRIPTION LIKE :NAME AND CANCELLED = FALSE';
    brw_Unit.ParamByName('NAME').Value := '%'+Trim(txt_search.Text)+'%';
    brw_Unit.Open();

  end;
end;

procedure Tf_Unit.txt_searchKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  search;
end;

procedure Tf_Unit.txt_searchRightButtonClick(Sender: TObject);
begin
  search;
end;

end.
