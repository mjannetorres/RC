unit fUsers;

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
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxImageComboBox,
  cxClasses, System.ImageList, Vcl.ImgList, acAlphaImageList, System.Actions,
  Vcl.ActnList, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridCustomView, cxGrid, Vcl.ComCtrls, Vcl.ToolWin,
  scControls, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  Tf_Users = class(TForm)
    Splitter1: TSplitter;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    cmb_filter: TComboBox;
    txt_search: TButtonedEdit;
    scToolBar2: TscToolBar;
    btnNew: TToolButton;
    btnEdit: TToolButton;
    btnDelete: TToolButton;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    ActionList1: TActionList;
    New: TAction;
    Edit: TAction;
    Delete: TAction;
    sCharImageList1: TsCharImageList;
    ds_MR: TDataSource;
    cxStyleRepository1: TcxStyleRepository;
    header_style: TcxStyle;
    select_style: TcxStyle;
    cxGrid1DBTableView1USERNAME: TcxGridDBColumn;
    cxGrid1DBTableView1LASTNAME: TcxGridDBColumn;
    cxGrid1DBTableView1FIRSTNAME: TcxGridDBColumn;
    cxGrid1DBTableView1MIDDLENAME: TcxGridDBColumn;
    cxGrid1DBTableView1ADMINISTRATOR: TcxGridDBColumn;
    procedure NewExecute(Sender: TObject);
    procedure EditExecute(Sender: TObject);
    procedure DeleteExecute(Sender: TObject);
    procedure txt_searchRightButtonClick(Sender: TObject);
    procedure txt_searchKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure PolicyExecute(Sender: TObject);
  private
    { Private declarations }
    procedure user_rights;
    procedure search;
  public
    { Public declarations }
  end;

var
  f_Users: Tf_Users;

implementation

{$R *.dfm}

uses dmPM, fUsersTemp;

procedure Tf_Users.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  EditExecute(nil);
end;

procedure Tf_Users.DeleteExecute(Sender: TObject);
begin
  if MessageDlg('Do you want to delete this user?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    with dm_PM do
    begin
      qry_Users.Close;
      qry_Users.SQL[2]  := 'WHERE ID = :ID';
      qry_Users.ParamByName('ID').Value  :=  brw_UsersID.Value;
      qry_Users.Open();

      qry_Users.Edit;
      qry_UsersCANCELLED.Value        := True;
      qry_UsersDELETEDBYID.Value      := userid;
      qry_UsersDELETEDDATETIME.Value  := Now;
      qry_Users.Post;
      qry_Users.ApplyUpdates();

      search;
    end;
  end;
end;

procedure Tf_Users.EditExecute(Sender: TObject);
begin
  with dm_PM do
  begin
    qry_Users.Close;
    qry_Users.SQL[2]  := 'WHERE ID = :ID';
    qry_Users.ParamByName('ID').Value  :=  brw_UsersID.Value;
    qry_Users.Open();

    qry_Users.Edit;

    f_UsersTemp := Tf_UsersTemp.Create(nil);
    if f_UsersTemp.ShowModal = mrOk then
    begin
      qry_Users.Post;
      qry_Users.ApplyUpdates();

      search;
    end;
  end;
end;

procedure Tf_Users.FormCreate(Sender: TObject);
begin
  cmb_filter.ItemIndex  := 0;
  user_rights;
  search;
end;

procedure Tf_Users.NewExecute(Sender: TObject);
begin
  with dm_PM do
  begin
    qry_Users.Close;
    qry_Users.SQL[2]  := 'WHERE ID = 0';
    qry_Users.Open();

    qry_Users.Append;
    qry_UsersCANCELLED.Value        := False;
    qry_UsersCREATEDBYID.Value      := userid;
    qry_UsersCREATEDDATETIME.Value  := Now;

    f_UsersTemp := Tf_UsersTemp.Create(nil);
    if f_UsersTemp.ShowModal = mrOk then
    begin
      qry_Users.Post;
      qry_Users.ApplyUpdates();

      search;
    end;
  end;
end;

procedure Tf_Users.PolicyExecute(Sender: TObject);
begin
  //
end;

procedure Tf_Users.search;
begin
  with dm_PM do
  begin
    brw_Users.Close;
    if cmb_filter.ItemIndex = 0 then
    begin
      brw_Users.SQL[2]  := 'WHERE USERNAME LIKE :NAME AND CANCELLED = FALSE';
      brw_Users.ParamByName('NAME').Value := '%'+Trim(txt_search.Text)+'%';
    end
    else
    begin
      brw_Users.SQL[2]  := 'WHERE (LASTNAME LIKE :NAME OR FIRSTNAME LIKE :NAME OR MIDDLENAME LIKE :NAME) AND CANCELLED = FALSE';
      brw_Users.ParamByName('NAME').Value := '%'+Trim(txt_search.Text)+'%';
    end;
    brw_Users.Open();
  end;
end;

procedure Tf_Users.txt_searchKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  search;
end;

procedure Tf_Users.txt_searchRightButtonClick(Sender: TObject);
begin
  search;
end;

procedure Tf_Users.user_rights;
begin
  with dm_PM do
  begin
    brw_Rights.Close;
    brw_Rights.Open();
    brw_Rights.First;

    btnNew.Visible      := brw_Rights.Locate('POLICYID;SELECT;ROLEID',VarArrayOf([7, True, roleid]), []);
    btnEdit.Visible     := brw_Rights.Locate('POLICYID;SELECT;ROLEID',VarArrayOf([8, True, roleid]), []);
    btnDelete.Visible   := brw_Rights.Locate('POLICYID;SELECT;ROLEID',VarArrayOf([9, True, roleid]), []);

    New.Enabled         := btnNew.Visible;
    Edit.Enabled        := btnEdit.Visible;
    Delete.Enabled      := btnDelete.Visible;
  end;
end;

end.
