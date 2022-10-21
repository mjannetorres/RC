unit fBank;

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
  Tf_Bank = class(TForm)
    Splitter1: TSplitter;
    scToolBar2: TscToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1VENDORNAME: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    Panel3: TPanel;
    Label1: TLabel;
    txt_search: TButtonedEdit;
    ActionList1: TActionList;
    New: TAction;
    Edit: TAction;
    Delete: TAction;
    sCharImageList1: TsCharImageList;
    ds_bank: TDataSource;
    cxStyleRepository1: TcxStyleRepository;
    header_style: TcxStyle;
    select_style: TcxStyle;
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
  f_Bank: Tf_Bank;

implementation

{$R *.dfm}

uses dmPM, fBankTemp;

procedure Tf_Bank.DeleteExecute(Sender: TObject);
begin
  if MessageDlg('Do you want to delete this record?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    with dm_PM do
    begin
      qry_Bank.Close;
      qry_Bank.SQL[2] := 'WHERE ID = :ID';
      qry_Bank.ParamByName('ID').Value  := brw_BankID.Value;
      qry_Bank.Open();

      qry_Bank.Edit;
      qry_BankCANCELLED.Value         := True;
      qry_BankCANCELLEDBYID.Value     := userid;
      qry_BankCANCELLEDDATETIME.Value := Now;
      qry_Bank.Post;
      qry_Bank.ApplyUpdates();

      search;
    end;
  end;
end;

procedure Tf_Bank.EditExecute(Sender: TObject);
begin
  with dm_PM do
  begin
    qry_Bank.Close;
    qry_Bank.SQL[2] := 'WHERE ID = :ID';
    qry_Bank.ParamByName('ID').Value  := brw_BankID.Value;
    qry_Bank.Open();

    qry_Bank.Edit;

    f_BankTemp  := Tf_BankTemp.Create(Self);
    f_BankTemp.Caption  := qry_BankTITLE.AsString;
    if f_BankTemp.ShowModal =  mrOk then
    begin
      qry_Bank.Post;
      qry_Bank.ApplyUpdates();

      search;
    end;
  end;
end;

procedure Tf_Bank.FormCreate(Sender: TObject);
begin
  search;
end;

procedure Tf_Bank.NewExecute(Sender: TObject);
begin
  with dm_PM do
  begin
    qry_Bank.Close;
    qry_Bank.SQL[2] := 'WHERE ID = 0';
    qry_Bank.Open();

    qry_Bank.Append;
    qry_BankCANCELLED.Value       := False;
    qry_BankCREATEDBYID.Value     := userid;
    qry_BankCREATEDDATETIME.Value := Now;

    f_BankTemp  := Tf_BankTemp.Create(Self);
    f_BankTemp.Caption  := 'New Vendor';
    if f_BankTemp.ShowModal =  mrOk then
    begin
      qry_Bank.Post;
      qry_Bank.ApplyUpdates();

      search;
    end;
  end;
end;

procedure Tf_Bank.search;
begin
  with dm_PM do
  begin
    brw_Bank.Close;
    brw_Bank.SQL[2]  := 'WHERE TITLE LIKE :NAME AND CANCELLED = FALSE';
    brw_Bank.ParamByName('NAME').Value := '%'+Trim(txt_search.Text)+'%';
    brw_Bank.Open();

  end;
end;

procedure Tf_Bank.txt_searchKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  search;
end;

procedure Tf_Bank.txt_searchRightButtonClick(Sender: TObject);
begin
  search;
end;

end.
