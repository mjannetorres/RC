unit fPayroll;

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
  Vcl.ExtCtrls, scGPControls;

type
  Tf_Payroll = class(TForm)
    Splitter1: TSplitter;
    Panel3: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    date_1: TDateTimePicker;
    date_2: TDateTimePicker;
    scToolBar2: TscToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    s: TcxGrid;
    sDBTableView1: TcxGridDBTableView;
    sLevel1: TcxGridLevel;
    ActionList1: TActionList;
    New: TAction;
    Edit: TAction;
    Delete: TAction;
    Print: TAction;
    sCharImageList1: TsCharImageList;
    ds_Payroll: TDataSource;
    cxStyleRepository1: TcxStyleRepository;
    header_style: TcxStyle;
    select_style: TcxStyle;
    scGPGlyphButton1: TscGPGlyphButton;
    Search: TAction;
    sDBTableView1ID: TcxGridDBColumn;
    sDBTableView1PAYDATE: TcxGridDBColumn;
    sDBTableView1EMPCOUNT: TcxGridDBColumn;
    sDBTableView1BASICPAY: TcxGridDBColumn;
    sDBTableView1ALLOWANCES: TcxGridDBColumn;
    sDBTableView1BACKWAGE: TcxGridDBColumn;
    sDBTableView1LATE: TcxGridDBColumn;
    sDBTableView1OTHERS: TcxGridDBColumn;
    sDBTableView1SSS: TcxGridDBColumn;
    sDBTableView1PAGIBIG: TcxGridDBColumn;
    sDBTableView1PHIC: TcxGridDBColumn;
    sDBTableView1NETPAY: TcxGridDBColumn;
    sDBTableView1POSTED: TcxGridDBColumn;
    sDBTableView1POSTEDDATETIME: TcxGridDBColumn;
    sDBTableView1ABSENCES: TcxGridDBColumn;
    sDBTableView1CA: TcxGridDBColumn;
    procedure SearchExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure NewExecute(Sender: TObject);
    procedure EditExecute(Sender: TObject);
    procedure DeleteExecute(Sender: TObject);
    procedure PrintExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_Payroll: Tf_Payroll;

implementation

{$R *.dfm}

uses dmPM, DateUtils, fPayrollTemp;

procedure Tf_Payroll.DeleteExecute(Sender: TObject);
begin
  with dm_PM do
  begin
    if not brw_PayrollPOSTED.Value then
    begin
      if MessageDlg('Continue to delete Payroll No. '+brw_PayrollID.AsString +'?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        qry_Payroll.Close;
        qry_Payroll.SQL[2] := 'WHERE ID = :ID';
        qry_Payroll.ParamByName('ID').Value  := brw_PayrollID.Value;
        qry_Payroll.Open();

        qry_Payroll.Edit;
        qry_PayrollCANCELLED.Value         := True;
        qry_PayrollCANCELLEDBYID.Value     := userid;
        qry_PayrollCANCELLEDDATETIME.Value := Now;
        qry_Payroll.Post;
        qry_Payroll.ApplyUpdates();

        del_PayrollDetail.Close;
        del_PayrollDetail.SQL[1] := 'SET CANCELLED = FALSE,';
        del_PayrollDetail.SQL[2] := 'CANCELLEDBYID = '+IntToStr(dm_PM.userid)+',';
        del_PayrollDetail.SQL[3] := 'CANCELLEDDATETIME = '''+FormatDateTime('yyyy-mm-dd hh:nn:ss', Now)+'''';
        del_PayrollDetail.SQL[4] := 'WHERE HEADERID = '+qry_PayrollID.AsString;
        del_PayrollDetail.ExecSQL;

        MessageDlg('Payroll has been deleted!', mtInformation, [mbOK], 0);
        SearchExecute(nil);
      end;
    end
    else
      MessageDlg('Posted Payroll cannot be deleted!', mtError, [mbOK], 0);
  end;
end;

procedure Tf_Payroll.EditExecute(Sender: TObject);
var totalemp: Integer;
begin
  with dm_PM do
  begin
    qry_Payroll.Close;
    qry_Payroll.SQL[2]  := 'WHERE ID = :ID';
    qry_Payroll.ParamByName('ID').Value := brw_PayrollID.Value;
    qry_Payroll.Open();

    qry_Payroll.Edit;

    brw_Emp1.Close;
    brw_Emp1.SQL[2]  := 'WHERE CANCELLED = FALSE';
    brw_Emp1.Open();

    tb_PayDetail.Close;
    tb_PayDetail.Open;

    qry_PayDetail.Close;
    qry_PayDetail.SQL[2]  := 'WHERE HEADERID = :ID AND CANCELLED = FALSE';
    qry_PayDetail.ParamByName('ID').Value := qry_PayrollID.Value;
    qry_PayDetail.Open();

    if qry_PayDetail.RecordCount > 0 then
    begin
      qry_PayDetail.First;
      while not qry_PayDetail.Eof do
      begin
        tb_PayDetail.Append;
        tb_PayDetailIDNO.Value        := qry_PayDetailIDNO.Value;
        tb_PayDetailEMPID.Value       := qry_PayDetailEMPID.Value;
        if brw_Emp1.Locate('ID', tb_PayDetailEMPID.Value, []) then
        tb_PayDetailEMPNAME.Value     := brw_Emp1EMPNAME.AsString;
        tb_PayDetailROLEID.Value      := qry_PayDetailROLEID.Value;
        tb_PayDetailROLE.Value        := qry_PayDetailROLE.Value;
        tb_PayDetailRATE.Value        := qry_PayDetailRATE.Value;
        tb_PayDetailALLOWANCES.Value  := qry_PayDetailALLOWANCES.Value;
        tb_PayDetailBACKWAGE.Value    := qry_PayDetailBACKWAGE.Value;
        tb_PayDetailHRSLATE.Value     := qry_PayDetailHRSLATE.Value;
        tb_PayDetailDAYSABSENT.Value  := qry_PayDetailDAYSABSENT.Value;
        tb_PayDetailOTHERS.Value      := qry_PayDetailOTHERS.Value;
        tb_PayDetailSSS.Value         := qry_PayDetailSSS.Value;
        tb_PayDetailPAGIBIG.Value     := qry_PayDetailPAGIBIG.Value;
        tb_PayDetailPHIC.Value        := qry_PayDetailPHIC.Value;
        tb_PayDetailCA.Value          := qry_PayDetailCA.Value;
        tb_PayDetailID.Value          := qry_PayDetailID.Value;
        tb_PayDetailIDNO.Value        := qry_PayDetailIDNO.Value;
        tb_PayDetailNODAYS.Value      := qry_PayDetailNODAYS.Value;
        tb_PayDetailNOPIECES.Value    := qry_PayDetailNOPIECES.Value;
        tb_PayDetailMODE.Value        := qry_PayDetailMODE.Value;
        tb_PayDetailSCHED.Value       := qry_PayDetailSCHED.Value;
        tb_PayDetailPARTICULAR.Value  := qry_PayDetailPARTICULAR.Value;
        tb_PayDetailPAIDAMNT.Value    := qry_PayDetailPAIDAMNT.Value;
        tb_PayDetail.Post;

        qry_PayDetail.Next;
      end;
      tb_PayDetail.First;

    end;

    f_PayrollTemp := Tf_PayrollTemp.Create(Self);
    if f_PayrollTemp.ShowModal = mrOk then
    begin
      qry_PayrollEMPCOUNT.Value  := f_PayrollTemp.grid_jodetailDBBandedTableView1.DataController.Summary.FooterSummaryValues[0];
      qry_PayrollBASICPAY.Value  := f_PayrollTemp.grid_jodetailDBBandedTableView1.DataController.Summary.FooterSummaryValues[1];
      qry_PayrollALLOWANCES.Value:= f_PayrollTemp.grid_jodetailDBBandedTableView1.DataController.Summary.FooterSummaryValues[2];
      qry_PayrollBACKWAGE.Value  := f_PayrollTemp.grid_jodetailDBBandedTableView1.DataController.Summary.FooterSummaryValues[3];
      qry_PayrollLATE.Value      := f_PayrollTemp.grid_jodetailDBBandedTableView1.DataController.Summary.FooterSummaryValues[4];
      qry_PayrollABSENCES.Value  := f_PayrollTemp.grid_jodetailDBBandedTableView1.DataController.Summary.FooterSummaryValues[10];
      qry_PayrollSSS.Value       := f_PayrollTemp.grid_jodetailDBBandedTableView1.DataController.Summary.FooterSummaryValues[5];
      qry_PayrollPAGIBIG.Value   := f_PayrollTemp.grid_jodetailDBBandedTableView1.DataController.Summary.FooterSummaryValues[6];
      qry_PayrollPHIC.Value      := f_PayrollTemp.grid_jodetailDBBandedTableView1.DataController.Summary.FooterSummaryValues[7];
      qry_PayrollOTHERS.Value    := f_PayrollTemp.grid_jodetailDBBandedTableView1.DataController.Summary.FooterSummaryValues[8];
      qry_PayrollNETPAY.Value    := f_PayrollTemp.grid_jodetailDBBandedTableView1.DataController.Summary.FooterSummaryValues[9];
      qry_PayrollCA.Value        := f_PayrollTemp.grid_jodetailDBBandedTableView1.DataController.Summary.FooterSummaryValues[13];

      qry_Payroll.Post;
      qry_Payroll.ApplyUpdates();

      if tb_PayDetail.RecordCount > 0 then
      begin
        tb_PayDetail.First;
        while not tb_PayDetail.Eof do
        begin
          qry_PayDetail.Close;
          if tb_PayDetailID.IsNull then
          qry_PayDetail.SQL[2]  := 'WHERE ID = 0'
          else
          begin
            qry_PayDetail.SQL[2]  := 'WHERE ID = :ID';
            qry_PayDetail.ParamByName('ID').Value := tb_PayDetailID.Value;
          end;
          qry_PayDetail.Open();

          if tb_PayDetailID.IsNull then
          qry_PayDetail.Append
          else
          qry_PayDetail.Edit;
          qry_PayDetailHEADERID.Value   := qry_PayrollID.Value;
          qry_PayDetailIDNO.Value       := tb_PayDetailIDNO.Value;
          qry_PayDetailEMPID.Value      := tb_PayDetailEMPID.Value;
          qry_PayDetailROLEID.Value     := tb_PayDetailROLEID.Value;
          qry_PayDetailROLE.Value       := tb_PayDetailROLE.Value;
          qry_PayDetailMODE.Value       := tb_PayDetailMODE.Value;
          qry_PayDetailNODAYS.Value     := tb_PayDetailNODAYS.Value;
          qry_PayDetailNOPIECES.Value   := tb_PayDetailNOPIECES.Value;
          qry_PayDetailRATE.Value       := tb_PayDetailRATE.Value;
          qry_PayDetailBASICPAY.Value   := tb_PayDetailBASICPAY.Value;
          qry_PayDetailALLOWANCES.Value := tb_PayDetailALLOWANCES.Value;
          qry_PayDetailBACKWAGE.Value   := tb_PayDetailBACKWAGE.Value;
          qry_PayDetailLATE.Value       := tb_PayDetailLATE.Value;
          qry_PayDetailOTHERS.Value     := tb_PayDetailOTHERS.Value;
          qry_PayDetailSSS.Value        := tb_PayDetailSSS.Value;
          qry_PayDetailPAGIBIG.Value    := tb_PayDetailPAGIBIG.Value;
          qry_PayDetailPHIC.Value       := tb_PayDetailPHIC.Value;
          qry_PayDetailCA.Value         := tb_PayDetailCA.Value;
          qry_PayDetailNETPAY.Value     := tb_PayDetailNETPAY.Value;
          qry_PayDetailABSENCES.Value   := tb_PayDetailABSENCES.Value;
          qry_PayDetailSCHED.Value      := tb_PayDetailSCHED.Value;
          qry_PayDetailHRSLATE.Value    := tb_PayDetailHRSLATE.Value;
          qry_PayDetailDAYSABSENT.Value := tb_PayDetailDAYSABSENT.Value;
          qry_PayDetailPARTICULAR.Value := tb_PayDetailPARTICULAR.Value;
          qry_PayDetailCANCELLED.Value  := False;
          qry_PayDetail.Post;
          qry_PayDetail.ApplyUpdates();

          tb_PayDetail.Next;
        end;
      end;
      SearchExecute(nil);
    end;
  end;
end;

procedure Tf_Payroll.FormCreate(Sender: TObject);
begin
  date_1.Date := StartOfTheMonth(Now);
  date_2.Date := EndOfTheMonth(Now);
  SearchExecute(nil);
end;

procedure Tf_Payroll.NewExecute(Sender: TObject);
var totalemp, basicpay, allowances, backwage, late, absences, sss, pagibig, phic, others, net: Variant;
begin
  with dm_PM do
  begin
    qry_Payroll.Close;
    qry_Payroll.SQL[2]  := 'WHERE ID = 0';
    qry_Payroll.Open();

    qry_Payroll.Append;
    qry_PayrollPAYDATE.Value           := Now;
    qry_PayrollCANCELLED.Value         := False;
    qry_PayrollPOSTED.Value            := False;
    qry_PayrollCREATEDBYID.Value       := userid;

    brw_Emp1.Close;
    brw_Emp1.SQL[2]  := 'WHERE CANCELLED = FALSE';
    brw_Emp1.Open();

    tb_PayDetail.Close;
    tb_PayDetail.Open;

    f_PayrollTemp := Tf_PayrollTemp.Create(Self);
    if f_PayrollTemp.ShowModal = mrOk then
    begin
      qry_PayrollCREATEDDATETIME.Value  := Now;

      qry_PayrollEMPCOUNT.Value  := f_PayrollTemp.grid_jodetailDBBandedTableView1.DataController.Summary.FooterSummaryValues[0];
      qry_PayrollBASICPAY.Value  := f_PayrollTemp.grid_jodetailDBBandedTableView1.DataController.Summary.FooterSummaryValues[1];
      qry_PayrollALLOWANCES.Value:= f_PayrollTemp.grid_jodetailDBBandedTableView1.DataController.Summary.FooterSummaryValues[2];
      qry_PayrollBACKWAGE.Value  := f_PayrollTemp.grid_jodetailDBBandedTableView1.DataController.Summary.FooterSummaryValues[3];
      qry_PayrollLATE.Value      := f_PayrollTemp.grid_jodetailDBBandedTableView1.DataController.Summary.FooterSummaryValues[4];
      qry_PayrollABSENCES.Value  := f_PayrollTemp.grid_jodetailDBBandedTableView1.DataController.Summary.FooterSummaryValues[10];
      qry_PayrollSSS.Value       := f_PayrollTemp.grid_jodetailDBBandedTableView1.DataController.Summary.FooterSummaryValues[5];
      qry_PayrollPAGIBIG.Value   := f_PayrollTemp.grid_jodetailDBBandedTableView1.DataController.Summary.FooterSummaryValues[6];
      qry_PayrollPHIC.Value      := f_PayrollTemp.grid_jodetailDBBandedTableView1.DataController.Summary.FooterSummaryValues[7];
      qry_PayrollOTHERS.Value    := f_PayrollTemp.grid_jodetailDBBandedTableView1.DataController.Summary.FooterSummaryValues[8];
      qry_PayrollCA.Value        := f_PayrollTemp.grid_jodetailDBBandedTableView1.DataController.Summary.FooterSummaryValues[13];
      qry_PayrollNETPAY.Value    := f_PayrollTemp.grid_jodetailDBBandedTableView1.DataController.Summary.FooterSummaryValues[9];

      qry_Payroll.Post;
      qry_Payroll.ApplyUpdates();

      if tb_PayDetail.RecordCount > 0 then
      begin
        tb_PayDetail.First;
        while not tb_PayDetail.Eof do
        begin
          qry_PayDetail.Close;
          qry_PayDetail.SQL[2]  := 'WHERE ID = 0';
          qry_PayDetail.Open();

          qry_PayDetail.Append;
          qry_PayDetailHEADERID.Value   := qry_PayrollID.Value;
          qry_PayDetailIDNO.Value       := tb_PayDetailIDNO.Value;
          qry_PayDetailEMPID.Value      := tb_PayDetailEMPID.Value;
          qry_PayDetailROLEID.Value     := tb_PayDetailROLEID.Value;
          qry_PayDetailROLE.Value       := tb_PayDetailROLE.Value;
          qry_PayDetailMODE.Value       := tb_PayDetailMODE.Value;
          qry_PayDetailNODAYS.Value     := tb_PayDetailNODAYS.Value;
          qry_PayDetailNOPIECES.Value   := tb_PayDetailNOPIECES.Value;
          qry_PayDetailRATE.Value       := tb_PayDetailRATE.Value;
          qry_PayDetailBASICPAY.Value   := tb_PayDetailBASICPAY.Value;
          qry_PayDetailALLOWANCES.Value := tb_PayDetailALLOWANCES.Value;
          qry_PayDetailBACKWAGE.Value   := tb_PayDetailBACKWAGE.Value;
          qry_PayDetailLATE.Value       := tb_PayDetailLATE.Value;
          qry_PayDetailOTHERS.Value     := tb_PayDetailOTHERS.Value;
          qry_PayDetailSSS.Value        := tb_PayDetailSSS.Value;
          qry_PayDetailPAGIBIG.Value    := tb_PayDetailPAGIBIG.Value;
          qry_PayDetailPHIC.Value       := tb_PayDetailPHIC.Value;
          qry_PayDetailCA.Value         := tb_PayDetailCA.Value;
          qry_PayDetailNETPAY.Value     := tb_PayDetailNETPAY.Value;
          qry_PayDetailABSENCES.Value   := tb_PayDetailABSENCES.Value;
          qry_PayDetailSCHED.Value      := tb_PayDetailSCHED.Value;
          qry_PayDetailHRSLATE.Value    := tb_PayDetailHRSLATE.Value;
          qry_PayDetailDAYSABSENT.Value := tb_PayDetailDAYSABSENT.Value;
          qry_PayDetailPARTICULAR.Value := tb_PayDetailPARTICULAR.Value;
          qry_PayDetailCANCELLED.Value  := False;
          qry_PayDetail.Post;
          qry_PayDetail.ApplyUpdates();

          tb_PayDetail.Next;
        end;
        tb_PayDetail.First;
      end;
      SearchExecute(nil);
    end;
  end;
end;

procedure Tf_Payroll.PrintExecute(Sender: TObject);
begin
  //
end;

procedure Tf_Payroll.SearchExecute(Sender: TObject);
begin
  with dm_PM do
  begin
    brw_Payroll.Close;
    brw_Payroll.SQL[2]  := 'WHERE (PAYDATE BETWEEN :date1 AND :date2) AND CANCELLED = FALSE';
    brw_Payroll.ParamByName('date1').Value  := FormatDateTime('yyyy-mm-dd', date_1.Date);
    brw_Payroll.ParamByName('date2').Value  :=FormatDateTime('yyyy-mm-dd', date_2.Date);
    brw_Payroll.Open();
  end;
end;

end.
