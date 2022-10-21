unit fExpenseType;

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
  Tf_ExpenseType = class(TForm)
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
    ds_exptype: TDataSource;
    cxStyleRepository1: TcxStyleRepository;
    header_style: TcxStyle;
    select_style: TcxStyle;
    cxGrid1DBTableView1NAME: TcxGridDBColumn;
    procedure NewExecute(Sender: TObject);
    procedure EditExecute(Sender: TObject);
    procedure DeleteExecute(Sender: TObject);
    procedure txt_searchRightButtonClick(Sender: TObject);
    procedure txt_searchKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure search;
  public
    { Public declarations }
  end;

var
  f_ExpenseType: Tf_ExpenseType;

implementation

{$R *.dfm}

uses dmPM, fExpTypeTemp;

procedure Tf_ExpenseType.DeleteExecute(Sender: TObject);
begin
  if MessageDlg('Do you want to delete this record?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    with dm_PM do
    begin
      qry_ExpenseType.Close;
      qry_ExpenseType.SQL[2] := 'WHERE ID = :ID';
      qry_ExpenseType.ParamByName('ID').Value  := brw_ExpenseTypeID.Value;
      qry_ExpenseType.Open();

      qry_ExpenseType.Edit;
      qry_ExpenseTypeCANCELLED.Value         := True;
      qry_ExpenseTypeCANCELLEDBYID.Value     := userid;
      qry_ExpenseTypeCANCELLEDDATETIME.Value := Now;
      qry_ExpenseType.Post;
      qry_ExpenseType.ApplyUpdates();

      search;
    end;
  end;
end;

procedure Tf_ExpenseType.EditExecute(Sender: TObject);
begin
  with dm_PM do
  begin
    qry_ExpenseType.Close;
    qry_ExpenseType.SQL[2] := 'WHERE ID = :ID';
    qry_ExpenseType.ParamByName('ID').Value  := brw_ExpenseTypeID.Value;
    qry_ExpenseType.Open();

    qry_ExpenseType.Edit;

    f_ExpTypeTemp  := Tf_ExpTypeTemp.Create(Self);
    f_ExpTypeTemp.Caption  := qry_ExpenseTypeNAME.AsString;
    if f_ExpTypeTemp.ShowModal =  mrOk then
    begin
      qry_ExpenseType.Post;
      qry_ExpenseType.ApplyUpdates();

      search;
    end;
  end;
end;

procedure Tf_ExpenseType.FormCreate(Sender: TObject);
begin
  search;
end;

procedure Tf_ExpenseType.NewExecute(Sender: TObject);
begin
  with dm_PM do
  begin
    qry_ExpenseType.Close;
    qry_ExpenseType.SQL[2] := 'WHERE ID = 0';
    qry_ExpenseType.Open();

    qry_ExpenseType.Append;
    qry_ExpenseTypeCANCELLED.Value       := False;
    qry_ExpenseTypeCREATEDBYID.Value     := userid;
    qry_ExpenseTypeCREATEDDATETIME.Value := Now;

    f_ExpTypeTemp  := Tf_ExpTypeTemp.Create(Self);
    f_ExpTypeTemp.Caption  := 'New Vendor';
    if f_ExpTypeTemp.ShowModal =  mrOk then
    begin
      qry_ExpenseType.Post;
      qry_ExpenseType.ApplyUpdates();

      search;
    end;
  end;
end;

procedure Tf_ExpenseType.search;
begin
  with dm_PM do
  begin
    brw_ExpenseType.Close;
    brw_ExpenseType.SQL[2]  := 'WHERE NAME LIKE :NAME AND CANCELLED = FALSE';
    brw_ExpenseType.ParamByName('NAME').Value := '%'+Trim(txt_search.Text)+'%';
    brw_ExpenseType.Open();
  end;
end;

procedure Tf_ExpenseType.txt_searchKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  search;
end;

procedure Tf_ExpenseType.txt_searchRightButtonClick(Sender: TObject);
begin
  search;
end;

end.
