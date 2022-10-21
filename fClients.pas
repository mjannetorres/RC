unit fClients;

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
  cxGridLevel, cxGridBandedTableView, cxGridDBBandedTableView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridCustomView,
  cxGrid, Vcl.ComCtrls, Vcl.ToolWin, scControls, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  Tf_Clients = class(TForm)
    Splitter1: TSplitter;
    Panel3: TPanel;
    Label1: TLabel;
    txt_search: TButtonedEdit;
    scToolBar2: TscToolBar;
    btnNew: TToolButton;
    btnEdit: TToolButton;
    btnDelete: TToolButton;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1CODE: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRIPTION: TcxGridDBColumn;
    cxGrid1DBTableView1FABRIC: TcxGridDBColumn;
    cxGrid1DBTableView1UNIT: TcxGridDBColumn;
    cxGrid1DBTableView1UNITQTY: TcxGridDBColumn;
    cxGrid1DBTableView1PRICE: TcxGridDBColumn;
    cxGrid1DBTableView1EMPSHARE: TcxGridDBColumn;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1CODE: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1DESCRIPTION: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1UNIT: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1FABRIC: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1PRICE: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ARTISTSHARE: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1PRINTOPSHARE: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1HEATPRESSSHARE: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1CUTTERSHARE: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1TAILORSHARE: TcxGridDBBandedColumn;
    ActionList1: TActionList;
    New: TAction;
    Edit: TAction;
    Delete: TAction;
    sCharImageList1: TsCharImageList;
    ds_client: TDataSource;
    cxStyleRepository1: TcxStyleRepository;
    header_style: TcxStyle;
    select_style: TcxStyle;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView2: TcxGridDBTableView;
    cxGrid1DBTableView2NAME: TcxGridDBColumn;
    cxGrid1DBTableView2ADDRESS: TcxGridDBColumn;
    cxGrid1DBTableView2CONTACTNO: TcxGridDBColumn;
    cxGrid1DBTableView2EMAIL: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure EditExecute(Sender: TObject);
    procedure NewExecute(Sender: TObject);
    procedure DeleteExecute(Sender: TObject);
    procedure txt_searchKeyPress(Sender: TObject; var Key: Char);
    procedure txt_searchRightButtonClick(Sender: TObject);
    procedure cxGrid1DBTableView2DblClick(Sender: TObject);
  private
    { Private declarations }
    procedure user_rights;
    procedure search;
  public
    { Public declarations }
  end;

var
  f_Clients: Tf_Clients;

implementation

{$R *.dfm}

uses dmPM, fClientsTemp;

{ Tf_Clients }

procedure Tf_Clients.cxGrid1DBTableView2DblClick(Sender: TObject);
begin
  EditExecute(nil);
end;

procedure Tf_Clients.DeleteExecute(Sender: TObject);
begin
  if MessageDlg('Do you want to delete this record?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    with dm_PM do
    begin
      qry_Client.Close;
      qry_Client.SQL[2] := 'WHERE ID = :ID';
      qry_Client.ParamByName('ID').Value  := brw_ClientID.Value;
      qry_Client.Open();

      qry_Client.Edit;
      qry_ClientCANCELLED.Value       := True;
      qry_ClientDELETEDBYID.Value     := userid;
      qry_ClientDELETEDDATETIME.Value := Now;
      qry_Client.Post;
      qry_Client.ApplyUpdates();

      search;
    end;
  end;
end;

procedure Tf_Clients.EditExecute(Sender: TObject);
begin
  with dm_PM do
  begin
    qry_Client.Close;
    qry_Client.SQL[2] := 'WHERE ID = :ID';
    qry_Client.ParamByName('ID').Value  := brw_ClientID.Value;
    qry_Client.Open();

    qry_Client.Edit;

    f_ClientsTemp  := Tf_ClientsTemp.Create(Self);
    f_ClientsTemp.Caption  := qry_ClientNAME.AsString;
    if f_ClientsTemp.ShowModal =  mrOk then
    begin
      qry_Client.Post;
      qry_Client.ApplyUpdates();

      search;
    end;
  end;
end;

procedure Tf_Clients.FormCreate(Sender: TObject);
begin
  search;
end;

procedure Tf_Clients.NewExecute(Sender: TObject);
begin
  with dm_PM do
  begin
    qry_Client.Close;
    qry_Client.SQL[2] := 'WHERE ID = 0';
    qry_Client.Open();

    qry_Client.Append;
    qry_ClientCANCELLED.Value       := False;
    qry_ClientCREATEDBYID.Value     := userid;
    qry_ClientCREATEDDATETIME.Value := Now;

    f_ClientsTemp  := Tf_ClientsTemp.Create(Self);
    f_ClientsTemp.Caption  := 'New Client';
    if f_ClientsTemp.ShowModal =  mrOk then
    begin
      qry_Client.Post;
      qry_Client.ApplyUpdates();

      search;
    end;
  end;
end;

procedure Tf_Clients.search;
begin
  with dm_PM do
  begin
    brw_Client.Close;
    brw_Client.SQL[2]  := 'WHERE NAME LIKE :NAME AND CANCELLED = FALSE';
    brw_Client.ParamByName('NAME').Value := '%'+Trim(txt_search.Text)+'%';
    brw_Client.Open();
  end;
end;

procedure Tf_Clients.txt_searchKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  search;
end;

procedure Tf_Clients.txt_searchRightButtonClick(Sender: TObject);
begin
  search;
end;

procedure Tf_Clients.user_rights;
begin

end;

end.
