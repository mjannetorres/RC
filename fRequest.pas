unit fRequest;

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
  Tf_Request = class(TForm)
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
    btnPrint: TToolButton;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1ID: TcxGridDBColumn;
    cxGrid1DBTableView1JONO: TcxGridDBColumn;
    cxGrid1DBTableView1SOURCE: TcxGridDBColumn;
    cxGrid1DBTableView1NOTE: TcxGridDBColumn;
    cxGrid1DBTableView1EMPNAME: TcxGridDBColumn;
    cxGrid1DBTableView1TOTALCOST: TcxGridDBColumn;
    cxGrid1DBTableView1REQDATETIME: TcxGridDBColumn;
    cxGrid1DBTableView1POSTED: TcxGridDBColumn;
    cxGrid1DBTableView1POSTEDDATETIME: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    ActionList1: TActionList;
    New: TAction;
    Edit: TAction;
    Delete: TAction;
    Print: TAction;
    sCharImageList1: TsCharImageList;
    ds_Req: TDataSource;
    cxStyleRepository1: TcxStyleRepository;
    header_style: TcxStyle;
    select_style: TcxStyle;
    procedure FormShow(Sender: TObject);
    procedure txt_searchRightButtonClick(Sender: TObject);
    procedure txt_searchKeyPress(Sender: TObject; var Key: Char);
    procedure EditExecute(Sender: TObject);
    procedure NewExecute(Sender: TObject);
    procedure DeleteExecute(Sender: TObject);
    procedure PrintExecute(Sender: TObject);
  private
    { Private declarations }
    procedure search;
  public
    { Public declarations }
  end;

var
  f_Request: Tf_Request;

implementation

{$R *.dfm}

uses dmPM, DateUtils, fRequestTemp;

{ Tf_Request }

procedure Tf_Request.DeleteExecute(Sender: TObject);
begin
  with dm_PM do
  begin
    if not brw_InvReqPOSTED.Value then
    begin
      qry_InvRequest.Close;
      qry_InvRequest.SQL[2] := 'WHERE ID = :ID';
      qry_InvRequest.ParamByName('ID').Value  := brw_InvReqID.Value;
      qry_InvRequest.Open();

      qry_InvRequest.Edit;
      qry_InvRequestCANCELLED.Value         := True;
      qry_InvRequestCANCELLEDBYID.Value     := userid;
      qry_InvRequestCANCELLEDDATETIME.Value := Now;
      qry_InvRequest.Post;
      qry_InvRequest.ApplyUpdates();

      del_InvReqDetail.Close;
      del_InvReqDetail.SQL[1] := 'SET CANCELLED = FALSE,';
      del_InvReqDetail.SQL[2] := 'CANCELLEDBYID = '+IntToStr(dm_PM.userid)+',';
      del_InvReqDetail.SQL[3] := 'CANCELLEDDATETIME = '''+FormatDateTime('yyyy-mm-dd hh:nn:ss', Now)+'''';
      del_InvReqDetail.SQL[4] := 'WHERE HEADERID = '+qry_InvRequestID.AsString;
      del_InvReqDetail.ExecSQL;

      MessageDlg('Request has been deleted!', mtInformation, [mbOK], 0);
      search;
    end
    else
      MessageDlg('Posted request cannot be deleted!', mtError, [mbOK], 0);

  end;
end;

procedure Tf_Request.EditExecute(Sender: TObject);
begin
  with dm_PM do
  begin
    if not brw_InvReqID.IsNull then
    begin
      qry_InvRequest.Close;
      qry_InvRequest.SQL[2] := 'WHERE ID = :ID';
      qry_InvRequest.ParamByName('ID').Value    := brw_InvReqID.Value;
      qry_InvRequest.Open();

      qry_InvRequest.Edit;

      tb_InvReqDetail.Close;
      tb_InvReqDetail.Open;

      qry_InvReqDetail.Close;
      qry_InvReqDetail.SQL[2]  := 'WHERE HEADERID = :ID AND CANCELLED = FALSE';
      qry_InvReqDetail.ParamByName('ID').Value := brw_InvReqID.Value;
      qry_InvReqDetail.Open();

      if qry_InvReqDetail.RecordCount > 0 then
      begin
        qry_InvReqDetail.First;
         while not qry_InvReqDetail.Eof do
         begin
          tb_InvReqDetail.Append;
          tb_InvReqDetailID.Value        := qry_InvReqDetailID.Value;
          tb_InvReqDetailITEMID.Value    := qry_InvReqDetailITEMID.Value;
          tb_InvReqDetailITEMDESC.Value  := qry_InvReqDetailITEMDESC.Value;
          tb_InvReqDetailUNIT.Value      := qry_InvReqDetailUNIT.Value;
          tb_InvReqDetailOLDQTY.Value    := qry_InvReqDetailOLDQTY.Value;
          tb_InvReqDetailQTY.Value       := qry_InvReqDetailQTY.Value;
          tb_InvReqDetailCOST.Value      := qry_InvReqDetailCOST.Value;
          tb_InvReqDetail.Post;

          qry_InvReqDetail.Next;
         end;
         tb_InvReqDetail.First;
      end;

      f_RequestTemp := Tf_RequestTemp.Create(Self);
      f_RequestTemp.Caption  := 'Edit Request No. '+brw_InvReqID.AsString;
      if f_RequestTemp.ShowModal = mrOk then
      begin
        qry_InvRequestTOTALCOST.Value  := f_RequestTemp.cxGridDBTableView1.DataController.Summary.FooterSummaryValues[1];
        qry_InvRequest.Post;
        qry_InvRequest.ApplyUpdates();

        tb_InvReqDetail.First;
        while not tb_InvReqDetail.Eof do
        begin
          qry_InvReqDetail.Close;
          if tb_InvReqDetailID.IsNull then
          qry_InvReqDetail.SQL[2] := 'WHERE ID = 0'
          else
          begin
            qry_InvReqDetail.SQL[2] := 'WHERE ID = :ID';
            qry_InvReqDetail.ParamByName('ID').Value   := tb_InvReqDetailID.Value;
          end;
          qry_InvReqDetail.Open();

          if tb_InvReqDetailID.IsNull then
          qry_InvReqDetail.Append
          else
          qry_InvReqDetail.Edit;

          qry_InvReqDetailHEADERID.Value   := qry_InvRequestID.Value;
          qry_InvReqDetailITEMID.Value     := tb_InvReqDetailITEMID.Value;
          qry_InvReqDetailITEMDESC.Value   := tb_InvReqDetailITEMDESC.Value;
          qry_InvReqDetailCOST.Value       := tb_InvReqDetailCOST.Value;
          qry_InvReqDetailTOTALCOST.Value  := tb_InvReqDetailTOTALCOST.Value;
          qry_InvReqDetailUNIT.Value       := tb_InvReqDetailUNIT.Value;
          qry_InvReqDetailCANCELLED.Value  := False;
          qry_InvReqDetailOLDQTY.Value     := tb_InvReqDetailOLDQTY.Value;
          qry_InvReqDetailQTY.Value        := tb_InvReqDetailQTY.Value;

          qry_InvReqDetail.Post;
          qry_InvReqDetail.ApplyUpdates();
          tb_InvReqDetail.Next;
        end;
        search;
      end;
    end;
  end;
end;

procedure Tf_Request.FormShow(Sender: TObject);
begin
  date_1.Date := StartOfTheMonth(Now);
  date_2.Date := Now;
  cmb_filter.ItemIndex  := 0;
  search;
end;

procedure Tf_Request.NewExecute(Sender: TObject);
begin
  with dm_PM do
  begin

    qry_InvRequest.Close;
    qry_InvRequest.SQL[2] := 'WHERE ID = 0';
    qry_InvRequest.Open();

    qry_InvRequest.Append;
    qry_InvRequestCANCELLED.Value     := False;
    qry_InvRequestREQBY.Value         := userid;
    qry_InvRequestREQDATETIME.Value   := Now;
    qry_InvRequestPOSTED.Value        := False;
    qry_InvRequestSOURCE.Value        := 'O';

    tb_InvReqDetail.Close;
    tb_InvReqDetail.Open;

    f_RequestTemp  := Tf_RequestTemp.Create(Self);
    f_RequestTemp.Caption  := 'New Request';
    if f_RequestTemp.ShowModal = mrOk then
    begin
      qry_InvRequestTOTALCOST.Value  := f_RequestTemp.cxGridDBTableView1.DataController.Summary.FooterSummaryValues[1];
      qry_InvRequest.Post;
      qry_InvRequest.ApplyUpdates();

      tb_InvReqDetail.First;

      while not tb_InvReqDetail.Eof do
      begin
        qry_InvReqDetail.Close;
        qry_InvReqDetail.SQL[2] := 'WHERE ID = 0';
        qry_InvReqDetail.Open();

        qry_InvReqDetail.Append;
        qry_InvReqDetailHEADERID.Value   := qry_InvRequestID.Value;
        qry_InvReqDetailITEMID.Value     := tb_InvReqDetailITEMID.Value;
        qry_InvReqDetailITEMDESC.Value   := tb_InvReqDetailITEMDESC.Value;
        qry_InvReqDetailCOST.Value       := tb_InvReqDetailCOST.Value;
        qry_InvReqDetailTOTALCOST.Value  := tb_InvReqDetailTOTALCOST.Value;
        qry_InvReqDetailUNIT.Value       := tb_InvReqDetailUNIT.Value;
        qry_InvReqDetailCANCELLED.Value  := False;
        qry_InvReqDetailOLDQTY.Value     := tb_InvReqDetailOLDQTY.Value;
        qry_InvReqDetailQTY.Value        := tb_InvReqDetailQTY.Value;

        qry_InvReqDetail.Post;
        qry_InvReqDetail.ApplyUpdates();
        tb_InvReqDetail.Next;
      end;
      search;
    end;
  end;
end;

procedure Tf_Request.PrintExecute(Sender: TObject);
begin
  with dm_PM do
  begin
    qry_InvRequest.Close;
    qry_InvRequest.SQL[2] := 'WHERE ID = :ID';
    qry_InvRequest.ParamByName('ID').Value    := brw_InvReqID.Value;
    qry_InvRequest.Open();

    qry_InvRequest.Edit;

    tb_InvReqDetail.Close;
    tb_InvReqDetail.Open;

    qry_InvReqDetail.Close;
    qry_InvReqDetail.SQL[2]  := 'WHERE HEADERID = :ID AND CANCELLED = FALSE';
    qry_InvReqDetail.ParamByName('ID').Value := brw_InvReqID.Value;
    qry_InvReqDetail.Open();

    if qry_InvReqDetail.RecordCount > 0 then
    begin
      qry_InvReqDetail.First;
       while not qry_InvReqDetail.Eof do
       begin
        tb_InvReqDetail.Append;
        tb_InvReqDetailID.Value        := qry_InvReqDetailID.Value;
        tb_InvReqDetailITEMID.Value    := qry_InvReqDetailITEMID.Value;
        tb_InvReqDetailITEMDESC.Value  := qry_InvReqDetailITEMDESC.Value;
        tb_InvReqDetailUNIT.Value      := qry_InvReqDetailUNIT.Value;
        tb_InvReqDetailOLDQTY.Value    := qry_InvReqDetailOLDQTY.Value;
        tb_InvReqDetailQTY.Value       := qry_InvReqDetailQTY.Value;
        tb_InvReqDetailCOST.Value      := qry_InvReqDetailCOST.Value;
        tb_InvReqDetail.Post;

        qry_InvReqDetail.Next;
       end;
       tb_InvReqDetail.First;
    end;

    f_RequestTemp  := Tf_RequestTemp.Create(Self);
    f_RequestTemp.PrintExecute(nil);
  end;
end;

procedure Tf_Request.search;
begin
  with dm_PM do
  begin
    if cmb_filter.ItemIndex > -1 then
    begin
      brw_InvReq.Close;
      if cmb_filter.ItemIndex = 0 then
      begin
        brw_InvReq.SQL[3] := 'WHERE (INV_REQUEST.REQDATETIME BETWEEN :DATE1 AND :DATE2) AND INV_REQUEST.ID LIKE :ID AND INV_REQUEST.CANCELLED = FALSE';
        brw_InvReq.ParamByName('ID').Value  := '%'+Trim(txt_search.Text)+'%';
        brw_InvReq.ParamByName('DATE1').Value := FormatDateTime('yyyy-mm-dd hh:nn', StartOfTheDay(date_1.Date));
        brw_InvReq.ParamByName('DATE2').Value := FormatDateTime('yyyy-mm-dd hh:nn', EndOfTheDay(date_2.Date));
      end
      else if cmb_filter.ItemIndex = 1 then
      begin
        brw_InvReq.SQL[3] := 'WHERE (INV_REQUEST.REQDATETIME BETWEEN :DATE1 AND :DATE2) AND INV_REQUEST.JONO LIKE :JONO AND INV_REQUEST.CANCELLED = FALSE';
        brw_InvReq.ParamByName('JONO').Value := '%'+Trim(txt_search.Text)+'%';
        brw_InvReq.ParamByName('DATE1').Value := FormatDateTime('yyyy-mm-dd hh:nn', StartOfTheDay(date_1.Date));
        brw_InvReq.ParamByName('DATE2').Value := FormatDateTime('yyyy-mm-dd hh:nn', EndOfTheDay(date_2.Date));
      end
      else
      begin
        brw_InvReq.SQL[3] := 'WHERE (INV_REQUEST.REQDATETIME BETWEEN :DATE1 AND :DATE2) AND (EMP_REG.LASTNAME LIKE :NAME OR EMP_REG.FIRSTNAME LIKE :NAME OR EMP_REG.MIDDLENAME LIKE :NAME) AND INV_REQUEST.CANCELLED = FALSE';
        brw_InvReq.ParamByName('NAME').Value := '%'+Trim(txt_search.Text)+'%';
        brw_InvReq.ParamByName('DATE1').Value := FormatDateTime('yyyy-mm-dd hh:nn', StartOfTheDay(date_1.Date));
        brw_InvReq.ParamByName('DATE2').Value := FormatDateTime('yyyy-mm-dd hh:nn', EndOfTheDay(date_2.Date));
      end;
      brw_InvReq.Open();
    end
    else
      MessageDlg('Please select filter.', mtInformation, [mbOK], 0);
  end;
end;

procedure Tf_Request.txt_searchKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  search;
end;

procedure Tf_Request.txt_searchRightButtonClick(Sender: TObject);
begin
  search;
end;

end.
