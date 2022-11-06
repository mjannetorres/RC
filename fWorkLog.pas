unit fWorkLog;

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
  Tf_WorkLog = class(TForm)
    Splitter1: TSplitter;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    cmb_filter: TComboBox;
    date_1: TDateTimePicker;
    date_2: TDateTimePicker;
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
    Print: TAction;
    sCharImageList1: TsCharImageList;
    ds_Logs: TDataSource;
    cxStyleRepository1: TcxStyleRepository;
    header_style: TcxStyle;
    select_style: TcxStyle;
    cxGrid1DBTableView1JONO: TcxGridDBColumn;
    cxGrid1DBTableView1WORKER: TcxGridDBColumn;
    cxGrid1DBTableView1QTY: TcxGridDBColumn;
    cxGrid1DBTableView1COST: TcxGridDBColumn;
    cxGrid1DBTableView1CREATEDDATETIME: TcxGridDBColumn;
    cxGrid1DBTableView1CLIENT: TcxGridDBColumn;
    cxGrid1DBTableView1ROLE: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRIPTION: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure txt_searchKeyPress(Sender: TObject; var Key: Char);
    procedure txt_searchRightButtonClick(Sender: TObject);
    procedure NewExecute(Sender: TObject);
    procedure EditExecute(Sender: TObject);
    procedure DeleteExecute(Sender: TObject);
    procedure PrintExecute(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
  private
    { Private declarations }
    procedure search;
    procedure loaddetails;
  public
    { Public declarations }
  end;

var
  f_WorkLog: Tf_WorkLog;

implementation

uses DateUtils, dmPM, fLogTemp;

{$R *.dfm}

procedure Tf_WorkLog.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  EditExecute(nil);
end;

procedure Tf_WorkLog.DeleteExecute(Sender: TObject);
begin
  with dm_PM do
  begin
    if brw_WorkLogs.RecordCount > 0 then
    begin
      if MessageDlg('Do you want to delete this record?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        qry_WorkLogs.Close;
        qry_WorkLogs.SQL[2] := 'WHERE ID = :ID';
        qry_WorkLogs.ParamByName('ID').Value  := brw_WorkLogsID.Value;
        qry_WorkLogs.Open();

        if qry_WorkLogs.RecordCount > 0 then
        begin
          qry_WorkLogs.Edit;
          qry_WorkLogsCANCELLED.Value         := True;
          qry_WorkLogsCANCELLEDBYID.Value     := userid;
          qry_WorkLogsCANCELLEDDATETIME.Value := Now;
          qry_WorkLogs.Post;
          qry_WorkLogs.ApplyUpdates();

          MessageDlg('Record has been deleted.', mtInformation, [mbOK], 0);

          search;
        end;
      end;
    end
    else
    MessageDlg('Empty Record. Nothing to delete.', mtError, [mbOK], 0);
  end;
end;

procedure Tf_WorkLog.EditExecute(Sender: TObject);
begin
  with dm_PM do
  begin


    qry_WorkLogs.Close;
    qry_WorkLogs.SQL[2] := 'WHERE ID = :ID';
    qry_WorkLogs.ParamByName('ID').Value  := brw_WorkLogsID.Value;
    qry_WorkLogs.Open();

    qry_WorkLogs.Edit;

    loaddetails;

    f_LogTemp  := Tf_LogTemp.Create(Self);
    f_LogTemp.Caption  := 'Edit Log';
    if f_LogTemp.ShowModal = mrOk then
    begin
       with f_LogTemp do
       begin
         qry_WorkLogsWORKER.AsString   :=  cmb_worker.Text;
         qry_WorkLogsROLE.AsString     :=  cmb_role.Text;
         qry_WorkLogsCLIENT.AsString   :=  cmb_client.Text;

         qry_WorkLogs.Post;
         qry_WorkLogs.ApplyUpdates();
       end;
    end;

    search;
  end;
end;

procedure Tf_WorkLog.FormShow(Sender: TObject);
begin
  date_1.Date := StartOfTheMonth(Now);
  date_2.Date := Now;
  cmb_filter.ItemIndex  := 0;
  search;
end;

procedure Tf_WorkLog.loaddetails;
begin
  with dm_PM do
  begin
    brw_JO.Close;
    brw_JO.SQL[3] := 'WHERE JO_HEADER.CANCELLED = FALSE';    
    brw_JO.Open();

    brw_Client.Close;
    brw_Client.SQL[2] := 'WHERE CANCELLED = FALSE';
    brw_Client.Open();

    brw_Users.Close;
    brw_Users.SQL[2] := 'WHERE CANCELLED = FALSE';
    brw_Users.Open();

    brw_JODetail.Close;

    if qry_WorkLogs.State = dsInsert then
    brw_JODetail.SQL[3] := 'WHERE JO_DETAIL.ID = 0'
    else
    begin
      brw_JODetail.SQL[3] := 'WHERE JO_DETAIL.HEADERID = :ID';
      brw_JODetail.ParamByName('ID').Value := qry_WorkLogsJONO.Value;
    end;

    brw_JODetail.Open();
  end;
end;

procedure Tf_WorkLog.NewExecute(Sender: TObject);
begin
  with dm_PM do
  begin

    
    qry_WorkLogs.Close;
    qry_WorkLogs.SQL[2] := 'WHERE ID = 0';
    qry_WorkLogs.Open();

    qry_WorkLogs.Append;
    qry_WorkLogsCANCELLED.Value       := False;
    qry_WorkLogsCREATEDBYID.Value     := userid;
    qry_WorkLogsCREATEDDATETIME.Value := Now;
    qry_WorkLogsQTY.Value             := 0;

    loaddetails;

    f_LogTemp  := Tf_LogTemp.Create(Self);
    f_LogTemp.Caption  := 'New Log';
    if f_LogTemp.ShowModal = mrOk then
    begin
       with f_LogTemp do
       begin
         qry_WorkLogsWORKER.AsString   :=  cmb_worker.Text;
         qry_WorkLogsROLE.AsString     :=  cmb_role.Text;
         qry_WorkLogsCLIENT.AsString   :=  cmb_client.Text;
         
         qry_WorkLogs.Post;
         qry_WorkLogs.ApplyUpdates();
       end;       
    end;

    search;
  end;
end;

procedure Tf_WorkLog.PrintExecute(Sender: TObject);
begin
  //
end;

procedure Tf_WorkLog.search;
begin
  with dm_PM do
  begin
    brw_WorkLogs.Close;
    if cmb_filter.ItemIndex = 0 then
    begin
      brw_WorkLogs.SQL[3] := 'WHERE (PM_WORKLOGS.CREATEDDATETIME BETWEEN :DATE1 AND :DATE2) AND PM_WORKLOGS.JONO LIKE :ID AND PM_WORKLOGS.CANCELLED = FALSE';
      brw_WorkLogs.ParamByName('ID').Value  := '%'+Trim(txt_search.Text)+'%';
    end
    else if cmb_filter.ItemIndex = 1 then
    begin
     brw_WorkLogs.SQL[3] := 'WHERE (PM_WORKLOGS.CREATEDDATETIME BETWEEN :DATE1 AND :DATE2) AND PM_WORKLOGS.CLIENT LIKE :CLIENT AND PM_WORKLOGS.CANCELLED = FALSE';
     brw_WorkLogs.ParamByName('CLIENT').Value  := '%'+Trim(txt_search.Text)+'%';
    end
    else if cmb_filter.ItemIndex = 2 then
    begin
     brw_WorkLogs.SQL[3] := 'WHERE (PM_WORKLOGS.CREATEDDATETIME BETWEEN :DATE1 AND :DATE2) AND PM_WORKLOGS.WORKER LIKE :WORKER AND PM_WORKLOGS.CANCELLED = FALSE';
     brw_WorkLogs.ParamByName('WORKER').Value  := '%'+Trim(txt_search.Text)+'%';
    end
    else if cmb_filter.ItemIndex = 3 then
    begin
     brw_WorkLogs.SQL[3] := 'WHERE (PM_WORKLOGS.CREATEDDATETIME BETWEEN :DATE1 AND :DATE2) AND PM_WORKLOGS.ROLE LIKE :ROLE AND PM_WORKLOGS.CANCELLED = FALSE';
     brw_WorkLogs.ParamByName('ROLE').Value  := '%'+Trim(txt_search.Text)+'%';
    end;

    brw_WorkLogs.ParamByName('DATE1').Value := FormatDateTime('yyyy-mm-dd hh:nn', StartOfTheDay(date_1.Date));
    brw_WorkLogs.ParamByName('DATE2').Value := FormatDateTime('yyyy-mm-dd hh:nn', EndOfTheDay(date_2.Date));

    brw_WorkLogs.Open;
  end;
end;

procedure Tf_WorkLog.txt_searchKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  search;
end;

procedure Tf_WorkLog.txt_searchRightButtonClick(Sender: TObject);
begin
  search;
end;

end.
