unit fMatRequest;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls,
  System.ImageList, Vcl.ImgList, acAlphaImageList, System.Actions, Vcl.ActnList,
  Vcl.ToolWin, scControls, cxGraphics, cxControls, cxLookAndFeels,
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
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxImageComboBox, System.UITypes, FireDAC.Stan.Param;

type
  Tf_MatRequest = class(TForm)
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
    btnPrint: TToolButton;
    ActionList1: TActionList;
    New: TAction;
    Edit: TAction;
    Delete: TAction;
    Print: TAction;
    sCharImageList1: TsCharImageList;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    ds_MR: TDataSource;
    cxGrid1DBTableView1ID: TcxGridDBColumn;
    cxGrid1DBTableView1SOURCE: TcxGridDBColumn;
    cxGrid1DBTableView1JONO: TcxGridDBColumn;
    cxGrid1DBTableView1POSTED: TcxGridDBColumn;
    cxGrid1DBTableView1NOTE: TcxGridDBColumn;
    cxGrid1DBTableView1EMPNAME: TcxGridDBColumn;
    cxGrid1DBTableView1TOTALCOST: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    header_style: TcxStyle;
    select_style: TcxStyle;
    Splitter1: TSplitter;
    cxGrid1DBTableView1REQDATETIME: TcxGridDBColumn;
    cxGrid1DBTableView1POSTEDDATETIME: TcxGridDBColumn;
    cxGrid1DBTableView1PAID: TcxGridDBColumn;
    procedure NewExecute(Sender: TObject);
    procedure EditExecute(Sender: TObject);
    procedure DeleteExecute(Sender: TObject);
    procedure PrintExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure txt_searchRightButtonClick(Sender: TObject);
    procedure txt_searchKeyPress(Sender: TObject; var Key: Char);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure search;
  end;

var
  f_MatRequest: Tf_MatRequest;

implementation

{$R *.dfm}

uses dmPM, fMatRequestTemp, DateUtils;

procedure Tf_MatRequest.cxGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
   btnPrint.Visible  := dm_PM.brw_MRPOSTED.Value;
end;

procedure Tf_MatRequest.DeleteExecute(Sender: TObject);
begin
  with dm_PM do
  begin
    if not brw_MRPOSTED.Value then
    begin
      qry_MR.Close;
      qry_MR.SQL[2] := 'WHERE ID = :ID';
      qry_MR.ParamByName('ID').Value  := brw_MRID.Value;
      qry_MR.Open();

      qry_MR.Edit;
      qry_MRCANCELLED.Value       := True;
      qry_MRDELETEDBYID.Value     := userid;
      qry_MRDELETEDDATETIME.Value := Now;
      qry_MR.Post;
      qry_MR.ApplyUpdates();

      del_MRDetails.Close;
      del_MRDetails.SQL[2] := 'WHERE HEADERID = '+qry_MRID.AsString;
      del_MRDetails.ExecSQL;

      MessageDlg('Request has been deleted!', mtInformation, [mbOK], 0);
      search;
    end
    else
      MessageDlg('Posted request cannot be deleted!', mtError, [mbOK], 0);

  end;
end;


procedure Tf_MatRequest.EditExecute(Sender: TObject);
var total: Real;
    headerid: Integer;
begin
  with dm_PM do
  begin
    if not brw_MRID.IsNull then
    begin
      qry_MR.Close;
      qry_MR.SQL[2] := 'WHERE ID = :ID';
      qry_MR.ParamByName('ID').Value    := brw_MRID.Value;
      qry_MR.Open();

      qry_MR.Edit;

      tb_MRDetails.Close;
      tb_MRDetails.Open;

      qry_MRDetails.Close;
      qry_MRDetails.SQL[2]  := 'WHERE HEADERID = :ID AND CANCELLED = FALSE';
      qry_MRDetails.ParamByName('ID').Value := brw_MRID.Value;
      qry_MRDetails.Open();

      if qry_MRDetails.RecordCount > 0 then
      begin
        qry_MRDetails.First;
         while not qry_MRDetails.Eof do
         begin
          tb_MRDetails.Append;
          tb_MRDetailsID.Value        := qry_MRDetailsID.Value;
          tb_MRDetailsITEMID.Value    := qry_MRDetailsITEMID.Value;
          tb_MRDetailsITEMDESC.Value  := qry_MRDetailsITEMDESC.Value;
          tb_MRDetailsUNIT.Value      := qry_MRDetailsUNIT.Value;
          tb_MRDetailsOLDQTY.Value    := qry_MRDetailsOLDQTY.Value;
          tb_MRDetailsQTY.Value       := qry_MRDetailsQTY.Value;
          tb_MRDetailsCOST.Value      := qry_MRDetailsCOST.Value;
          tb_MRDetails.Post;

          qry_MRDetails.Next;
         end;
         tb_MRDetails.First;
      end;

      f_MatReqTemp  := Tf_MatReqTemp.Create(Self);
      f_MatRequest.Caption  := 'Edit Request No. '+brw_MRID.AsString;
      if f_MatReqTemp.ShowModal = mrOk then
      begin
        qry_JO.Close;
        qry_JO.SQL[2]   := 'WHERE JONO = :JONO';
        qry_JO.ParamByName('JONO').Value  := qry_MRJONO.Value;
        qry_JO.Open();

        qry_MRJOID.Value   := qry_JOID.Value;
        qry_MR.Post;
        qry_MR.ApplyUpdates();

        headerid  := qry_MRID.Value;

        total := 0;
        tb_MRDetails.First;
        while not tb_MRDetails.Eof do
        begin
          qry_MRDetails.Close;
          if tb_MRDetailsID.IsNull then
          qry_MRDetails.SQL[2] := 'WHERE ID = 0'
          else
          begin
            qry_MRDetails.SQL[2] := 'WHERE ID = :ID';
            qry_MRDetails.ParamByName('ID').Value   := tb_MRDetailsID.Value;
          end;
          qry_MRDetails.Open();

          if tb_MRDetailsID.IsNull then
          qry_MRDetails.Append
          else
          qry_MRDetails.Edit;

          qry_MRDetailsHEADERID.Value   := headerid;
          qry_MRDetailsITEMID.Value     := tb_MRDetailsITEMID.Value;
          qry_MRDetailsITEMDESC.Value   := tb_MRDetailsITEMDESC.Value;
          qry_MRDetailsCOST.Value       := tb_MRDetailsCOST.Value;
          qry_MRDetailsTOTALCOST.Value  := tb_MRDetailsTOTALCOST.Value;
          qry_MRDetailsUNIT.Value       := tb_MRDetailsUNIT.Value;
          qry_MRDetailsCANCELLED.Value  := False;
          qry_MRDetailsOLDQTY.Value     := tb_MRDetailsOLDQTY.Value;
          qry_MRDetailsQTY.Value        := tb_MRDetailsQTY.Value;

          total := total + tb_MRDetailsTOTALCOST.Value;
          qry_MRDetails.Post;
          qry_MRDetails.ApplyUpdates();
          tb_MRDetails.Next;
        end;

        qry_MR.Close;
        qry_MR.SQL[2] := 'WHERE ID = :ID';
        qry_MR.ParamByName('ID').Value  := headerid;
        qry_MR.Open();

        if qry_MR.RecordCount > 0 then
        begin
          qry_MR.Edit;

          qry_MRTOTALCOST.Value := total;
          qry_MR.Post;
          qry_MR.ApplyUpdates();
        end;
        search;
      end;
    end;
  end;
end;

procedure Tf_MatRequest.FormShow(Sender: TObject);
begin
  date_1.Date := StartOfTheMonth(Now);
  date_2.Date := Now;
  cmb_filter.ItemIndex  := 0;
  search;
end;

procedure Tf_MatRequest.NewExecute(Sender: TObject);
var headerid: Integer;
    total: Real;
begin
  with dm_PM do
  begin
    qry_MR.Close;
    qry_MR.SQL[2] := 'WHERE POSTED = FALSE AND CANCELLED = FALSE';
    qry_MR.Open();

    if qry_MR.RecordCount = 0 then
    begin
      qry_MR.Close;
      qry_MR.SQL[2] := 'WHERE ID = 0';
      qry_MR.Open();

      qry_MR.Append;
      qry_MRCANCELLED.Value     := False;
      qry_MRREQBY.Value         := userid;
      qry_MRREQDATETIME.Value   := Now;
      qry_MRPOSTED.Value        := False;
      qry_MRSOURCE.Value        := 'O';
      qry_MRREIMBURSED.Value    := False;

      tb_MRDetails.Close;
      tb_MRDetails.Open;

      f_MatReqTemp  := Tf_MatReqTemp.Create(Self);
      f_MatRequest.Caption  := 'New Request';
      if f_MatReqTemp.ShowModal = mrOk then
      begin
        qry_JO.Close;
        qry_JO.SQL[2]   := 'WHERE JONO = :JONO';
        qry_JO.ParamByName('JONO').Value  := qry_MRJONO.Value;
        qry_JO.Open();

        qry_MRJOID.Value   := qry_JOID.Value;
        qry_MR.Post;
        qry_MR.ApplyUpdates();

        headerid  := qry_MRID.Value;
        tb_MRDetails.First;
        total := 0;
        while not tb_MRDetails.Eof do
        begin
          qry_MRDetails.Close;
          qry_MRDetails.SQL[2] := 'WHERE ID = 0';
          qry_MRDetails.Open();

          qry_MRDetails.Append;
          qry_MRDetailsHEADERID.Value   := headerid;
          qry_MRDetailsITEMID.Value     := tb_MRDetailsITEMID.Value;
          qry_MRDetailsITEMDESC.Value   := tb_MRDetailsITEMDESC.Value;
          qry_MRDetailsCOST.Value       := tb_MRDetailsCOST.Value;
          qry_MRDetailsTOTALCOST.Value  := tb_MRDetailsTOTALCOST.Value;
          qry_MRDetailsUNIT.Value       := tb_MRDetailsUNIT.Value;
          qry_MRDetailsCANCELLED.Value  := False;
          qry_MRDetailsOLDQTY.Value     := tb_MRDetailsOLDQTY.Value;
          qry_MRDetailsQTY.Value        := tb_MRDetailsQTY.Value;

          qry_MRDetails.Post;
          qry_MRDetails.ApplyUpdates();

          total := total + tb_MRDetailsTOTALCOST.Value;
          tb_MRDetails.Next;
        end;

        qry_MR.Close;
        qry_MR.SQL[2] := 'WHERE ID = :ID';
        qry_MR.ParamByName('ID').Value  := headerid;
        qry_MR.Open();

        if qry_MR.RecordCount > 0 then
        begin
          qry_MR.Edit;

          qry_MRTOTALCOST.Value := total;
          qry_MR.Post;
          qry_MR.ApplyUpdates();
        end;
        search;
      end;
    end
    else
      MessageDlg('Unable to create new request due to pending Material Request No. '+qry_MRID.AsString, mtError, [mbOK], 0);
  end;
end;

procedure Tf_MatRequest.PrintExecute(Sender: TObject);
begin
  with dm_PM do
  begin
    qry_MR.Close;
    qry_MR.SQL[2] := 'WHERE ID = :ID';
    qry_MR.ParamByName('ID').Value    := brw_MRID.Value;
    qry_MR.Open();

    qry_MR.Edit;

    tb_MRDetails.Close;
    tb_MRDetails.Open;

    qry_MRDetails.Close;
    qry_MRDetails.SQL[2]  := 'WHERE HEADERID = :ID AND CANCELLED = FALSE';
    qry_MRDetails.ParamByName('ID').Value := brw_MRID.Value;
    qry_MRDetails.Open();

    if qry_MRDetails.RecordCount > 0 then
    begin
      qry_MRDetails.First;
       while not qry_MRDetails.Eof do
       begin
        tb_MRDetails.Append;
        tb_MRDetailsID.Value        := qry_MRDetailsID.Value;
        tb_MRDetailsITEMID.Value    := qry_MRDetailsITEMID.Value;
        tb_MRDetailsITEMDESC.Value  := qry_MRDetailsITEMDESC.Value;
        tb_MRDetailsUNIT.Value      := qry_MRDetailsUNIT.Value;
        tb_MRDetailsOLDQTY.Value    := qry_MRDetailsOLDQTY.Value;
        tb_MRDetailsQTY.Value       := qry_MRDetailsQTY.Value;
        tb_MRDetailsCOST.Value      := qry_MRDetailsCOST.Value;
        tb_MRDetails.Post;

        qry_MRDetails.Next;
       end;
       tb_MRDetails.First;
    end;

    f_MatReqTemp  := Tf_MatReqTemp.Create(Self);
    f_MatReqTemp.PrintExecute(nil);
  end;
end;

procedure Tf_MatRequest.search;
begin
  with dm_PM do
  begin
    if cmb_filter.ItemIndex > -1 then
    begin
      brw_MR.Close;
      if cmb_filter.ItemIndex = 0 then
      begin
        brw_MR.SQL[3] := 'WHERE (REQ_HEADER.REQDATETIME BETWEEN :DATE1 AND :DATE2) AND REQ_HEADER.ID LIKE :ID AND REQ_HEADER.CANCELLED = FALSE';
        brw_MR.ParamByName('ID').Value  := '%'+Trim(txt_search.Text)+'%';
        brw_MR.ParamByName('DATE1').Value := FormatDateTime('yyyy-mm-dd hh:nn', StartOfTheDay(date_1.Date));
        brw_MR.ParamByName('DATE2').Value := FormatDateTime('yyyy-mm-dd hh:nn', EndOfTheDay(date_2.Date));
      end
      else if cmb_filter.ItemIndex = 1 then
      begin
        brw_MR.SQL[3] := 'WHERE (REQ_HEADER.REQDATETIME BETWEEN :DATE1 AND :DATE2) AND REQ_HEADER.JONO LIKE :JONO AND REQ_HEADER.CANCELLED = FALSE';
        brw_MR.ParamByName('JONO').Value := '%'+Trim(txt_search.Text)+'%';
        brw_MR.ParamByName('DATE1').Value := FormatDateTime('yyyy-mm-dd hh:nn', StartOfTheDay(date_1.Date));
        brw_MR.ParamByName('DATE2').Value := FormatDateTime('yyyy-mm-dd hh:nn', EndOfTheDay(date_2.Date));
      end
      else
      begin
        brw_MR.SQL[3] := 'WHERE (REQ_HEADER.REQDATETIME BETWEEN :DATE1 AND :DATE2) AND (EMP_REG.LASTNAME LIKE :NAME OR EMP_REG.FIRSTNAME LIKE :NAME OR EMP_REG.MIDDLENAME LIKE :NAME) AND REQ_HEADER.CANCELLED = FALSE';
        brw_MR.ParamByName('NAME').Value := '%'+Trim(txt_search.Text)+'%';
        brw_MR.ParamByName('DATE1').Value := FormatDateTime('yyyy-mm-dd hh:nn', StartOfTheDay(date_1.Date));
        brw_MR.ParamByName('DATE2').Value := FormatDateTime('yyyy-mm-dd hh:nn', EndOfTheDay(date_2.Date));
      end;
      brw_MR.Open();
    end
    else
      MessageDlg('Please select filter.', mtInformation, [mbOK], 0);
  end;
end;

procedure Tf_MatRequest.txt_searchKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  search;
end;

procedure Tf_MatRequest.txt_searchRightButtonClick(Sender: TObject);
begin
  search;
end;

end.
