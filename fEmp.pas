unit fEmp;

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
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridCustomView, cxGrid, Vcl.ComCtrls, Vcl.ToolWin, scControls, Vcl.StdCtrls,
  Vcl.ExtCtrls;

type
  Tf_Emp = class(TForm)
    Splitter1: TSplitter;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    cmb_filter: TComboBox;
    txt_search: TButtonedEdit;
    scToolBar2: TscToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    ActionList1: TActionList;
    New: TAction;
    Edit: TAction;
    Delete: TAction;
    sCharImageList1: TsCharImageList;
    ds_Emp: TDataSource;
    cxStyleRepository1: TcxStyleRepository;
    header_style: TcxStyle;
    select_style: TcxStyle;
    cxGrid1DBTableView1IDNO: TcxGridDBColumn;
    cxGrid1DBTableView1LASTNAME: TcxGridDBColumn;
    cxGrid1DBTableView1FIRSTNAME: TcxGridDBColumn;
    cxGrid1DBTableView1MIDDLENAME: TcxGridDBColumn;
    cxGrid1DBTableView1TITLE: TcxGridDBColumn;
    Account: TAction;
    ToolButton4: TToolButton;
    procedure txt_searchRightButtonClick(Sender: TObject);
    procedure txt_searchKeyPress(Sender: TObject; var Key: Char);
    procedure NewExecute(Sender: TObject);
    procedure EditExecute(Sender: TObject);
    procedure DeleteExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure AccountExecute(Sender: TObject);
  private
    { Private declarations }
    procedure search;
  public
    { Public declarations }
  end;

var
  f_Emp: Tf_Emp;

implementation

{$R *.dfm}

uses dmPM, fEmpTemp, fEmpAccounts;

{ Tf_Emp }

procedure Tf_Emp.AccountExecute(Sender: TObject);
begin
  with dm_PM do
  begin
    f_EmpAccounts := Tf_EmpAccounts.Create(nil);
    f_EmpAccounts.Caption         := 'Current Accounts';
    f_EmpAccounts.Label1.Caption  :=  brw_EmpRegLASTNAME.AsString + ', '+brw_EmpRegFIRSTNAME.AsString + ' ' +brw_EmpRegMIDDLENAME.AsString;
    f_EmpAccounts.ShowModal;

  end;
end;

procedure Tf_Emp.DeleteExecute(Sender: TObject);
begin
  if MessageDlg('Do you want to delete this record?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    with dm_PM do
    begin
      qry_EmpReg.Close;
      qry_EmpReg.SQL[2]  := 'WHERE ID = :ID';
      qry_EmpReg.ParamByName('ID').Value  :=  brw_EmpRegID.Value;
      qry_EmpReg.Open();

      qry_EmpReg.Edit;
      qry_EmpRegCANCELLED.Value        := True;
      qry_EmpRegDELETEDBYID.Value      := userid;
      qry_EmpRegDELETEDDATETIME.Value  := Now;
      qry_EmpReg.Post;
      qry_EmpReg.ApplyUpdates();

      search;
    end;
  end;
end;

procedure Tf_Emp.EditExecute(Sender: TObject);
begin
  with dm_PM do
  begin
    qry_EmpReg.Close;
    qry_EmpReg.SQL[2]  := 'WHERE ID = :ID';
    qry_EmpReg.ParamByName('ID').Value  :=  brw_EmpRegID.Value;
    qry_EmpReg.Open();

    qry_EmpReg.Edit;

    f_EmpTemp := tf_EmpTemp.Create(nil);
    f_EmpTemp.Caption := 'Edit Employee';
    if f_EmpTemp.ShowModal = mrOk then
    begin
      qry_EmpReg.Post;
      qry_EmpReg.ApplyUpdates();

      search;
    end;
  end;
end;

procedure Tf_Emp.FormCreate(Sender: TObject);
begin
  cmb_filter.ItemIndex := 0;
  search;
end;

procedure Tf_Emp.NewExecute(Sender: TObject);
begin
  with dm_PM do
  begin
    qry_EmpReg.Close;
    qry_EmpReg.SQL[2]  := 'WHERE ID = 0';
    qry_EmpReg.Open();

    qry_EmpReg.Append;
    qry_EmpRegMODEOFCOMP.Value       := 'F';
    qry_EmpRegCANCELLED.Value        := False;
    qry_EmpRegCREATEDBYID.Value      := userid;
    qry_EmpRegCREATEDDATETIME.Value  := Now;

    f_EmpTemp := Tf_EmpTemp.Create(nil);
    f_EmpTemp.Caption := 'New Employee';
    if f_EmpTemp.ShowModal = mrOk then
    begin
      qry_EmpReg.Post;
      qry_EmpReg.ApplyUpdates();

      search;
    end;
  end;
end;

procedure Tf_Emp.search;
begin
  with dm_PM do
  begin
    brw_EmpReg.Close;
    if cmb_filter.ItemIndex = 0 then
    begin
      brw_EmpReg.SQL[3]  := 'WHERE EMP_REG.IDNO LIKE :IDNO AND EMP_REG.CANCELLED = FALSE';
      brw_EmpReg.ParamByName('IDNO').Value := '%'+Trim(txt_search.Text)+'%';
    end
    else
    begin
      brw_EmpReg.SQL[3]  := 'WHERE (EMP_REG.LASTNAME LIKE :NAME OR EMP_REG.FIRSTNAME LIKE :NAME OR EMP_REG.MIDDLENAME LIKE :NAME) AND EMP_REG.CANCELLED = FALSE';
      brw_EmpReg.ParamByName('NAME').Value := '%'+Trim(txt_search.Text)+'%';
    end;
    brw_EmpReg.Open();
  end;
end;

procedure Tf_Emp.txt_searchKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  search;
end;

procedure Tf_Emp.txt_searchRightButtonClick(Sender: TObject);
begin
  search;
end;

end.
