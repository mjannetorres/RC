unit fPettyCash;

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
  Vcl.ExtCtrls, cxImageComboBox;

type
  Tf_PettyCash = class(TForm)
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
    s: TcxGrid;
    sDBTableView1: TcxGridDBTableView;
    sLevel1: TcxGridLevel;
    ActionList1: TActionList;
    New: TAction;
    Edit: TAction;
    Delete: TAction;
    Print: TAction;
    sCharImageList1: TsCharImageList;
    ds_Petty: TDataSource;
    cxStyleRepository1: TcxStyleRepository;
    header_style: TcxStyle;
    select_style: TcxStyle;
    sDBTableView1ID: TcxGridDBColumn;
    sDBTableView1NOTES: TcxGridDBColumn;
    sDBTableView1PAYDATE: TcxGridDBColumn;
    sDBTableView1POSTED: TcxGridDBColumn;
    sDBTableView1POSTEDDATETIME: TcxGridDBColumn;
    sDBTableView1NETAMNT: TcxGridDBColumn;
    sDBTableView1SOURCE: TcxGridDBColumn;
    procedure NewExecute(Sender: TObject);
    procedure EditExecute(Sender: TObject);
    procedure DeleteExecute(Sender: TObject);
    procedure PrintExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure txt_searchRightButtonClick(Sender: TObject);
    procedure txt_searchKeyPress(Sender: TObject; var Key: Char);
    procedure sDBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
    procedure search;
  public
    { Public declarations }
  end;

var
  f_PettyCash: Tf_PettyCash;

implementation

{$R *.dfm}

uses dmPM, DateUtils, fPettyCashTemp, fPaymentTemp;

procedure Tf_PettyCash.DeleteExecute(Sender: TObject);
begin
  with dm_PM do
  begin
    if not brw_PettyCashPOSTED.Value then
    begin
      if MessageDlg('Continue to delete Payment Voucher No. '+brw_PettyCashID.AsString +'?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        qry_PettyCash.Close;
        qry_PettyCash.SQL[2] := 'WHERE ID = :ID';
        qry_PettyCash.ParamByName('ID').Value  := brw_PettyCashID.Value;
        qry_PettyCash.Open();

        qry_PettyCash.Edit;
        qry_PettyCashCANCELLED.Value         := True;
        qry_PettyCashCANCELLEDBYID.Value     := userid;
        qry_PettyCashCANCELLEDDATETIME.Value := Now;
        qry_PettyCash.Post;
        qry_PettyCash.ApplyUpdates();

        del_PettyDetail.Close;
        del_PettyDetail.SQL[2] := 'WHERE HEADERID = '+qry_PettyCashID.AsString;
        del_PettyDetail.ExecSQL;

        MessageDlg('Payment Voucher has been deleted!', mtInformation, [mbOK], 0);
        search;
      end;
    end
    else
      MessageDlg('Posted Payment cannot be deleted!', mtError, [mbOK], 0);
  end;
end;

procedure Tf_PettyCash.EditExecute(Sender: TObject);
begin
  with dm_PM do
  begin
    qry_PettyCash.Close;
    qry_PettyCash.SQL[2]  := 'WHERE ID = :ID';
    qry_PettyCash.ParamByName('ID').Value := brw_PettyCashID.Value;
    qry_PettyCash.Open();

    qry_PettyCash.Edit;

    qry_PettyDetail.Close;
    qry_PettyDetail.SQL[2]  := 'WHERE HEADERID = :HEADERID AND CANCELLED = FALSE';
    qry_PettyDetail.ParamByName('HEADERID').Value := brw_PettyCashID.Value;
    qry_PettyDetail.Open();

    tb_PettyDetail.Close;
    tb_PettyDetail.Open;

    qry_PettyDetail.First;
    while not qry_PettyDetail.Eof do
    begin
      tb_PettyDetail.Append;
      tb_PettyDetailREFDATE.Value     := qry_PettyDetailREFDATE.Value;
      tb_PettyDetailAMOUNT.Value      := qry_PettyDetailAMOUNT.Value;
      tb_PettyDetailPAIDAMNT.Value    := qry_PettyDetailPAIDAMNT.Value;
      tb_PettyDetailNETAMNT.Value     := qry_PettyDetailNETAMNT.Value;
      tb_PettyDetailID.Value          := qry_PettyDetailID.Value;
      tb_PettyDetailREFID.Value       := qry_PettyDetailREFID.Value;
      tb_PettyDetail.Post;

      qry_PettyDetail.Next;
    end;
    tb_PettyDetail.First;

    f_PettyCashTemp := Tf_PettyCashTemp.Create(Self);
    if f_PettyCashTemp.ShowModal = mrOk then
    begin
      qry_PettyCash.Post;
      qry_PettyCash.ApplyUpdates();

      tb_PettyDetail.First;
      while not tb_PettyDetail.Eof do
      begin
        if tb_PettyDetailNETAMNT.Value > 0 then
        begin
          qry_PettyDetail.Close;
          if tb_PettyDetailID.Value > 0 then
          begin
            qry_PettyDetail.SQL[2]  := 'WHERE ID = :ID';
            qry_PettyDetail.ParamByName('ID').Value := tb_PettyDetailID.Value;
          end
          else
          qry_PettyDetail.SQL[2]    := 'WHERE ID = 0';
          qry_PettyDetail.Open();

          if tb_PettyDetailID.Value > 0 then
          qry_PettyDetail.Edit
          else
          qry_PettyDetail.Append;

          qry_PettyDetailHEADERID.Value     := qry_PettyCashID.Value;
          qry_PettyDetailREFID.Value        := tb_PettyDetailREFID.Value;
          qry_PettyDetailREFDATE.Value      := tb_PettyDetailREFDATE.Value;
          qry_PettyDetailAMOUNT.Value       := tb_PettyDetailAMOUNT.Value;
          qry_PettyDetailPAIDAMNT.Value     := tb_PettyDetailPAIDAMNT.Value;
          qry_PettyDetailNETAMNT.Value      := tb_PettyDetailNETAMNT.Value;
          qry_PettyDetailFP.Value           := tb_PettyDetailFP.Value;
          qry_PettyDetailCANCELLED.Value    := False;
          qry_PettyDetail.Post;
          qry_PettyDetail.ApplyUpdates();
        end;
        tb_PettyDetail.Next;
      end;
      search;
    end;
  end;
end;

procedure Tf_PettyCash.FormCreate(Sender: TObject);
begin
  date_1.Date := StartOfTheMonth(Now);
  date_2.Date := EndOfTheMonth(Now);
  cmb_filter.ItemIndex  := 0;
  search;
end;

procedure Tf_PettyCash.NewExecute(Sender: TObject);
begin
  with dm_PM do
  begin
    qry_PettyCash.Close;
    qry_PettyCash.SQL[2]  := 'WHERE ID = 0';
    qry_PettyCash.Open();

    qry_PettyCash.Append;
    qry_PettyCashPAYDATE.Value      := Now;
    qry_PettyCashCANCELLED.Value    := False;
    qry_PettyCashCREATEDBYID.Value  := userid;
    qry_PettyCashPOSTED.Value       := False;
    qry_PettyCashSOURCE.Value       := 'D';

    tb_PettyDetail.Close;
    tb_PettyDetail.Open;

    f_PettyCashTemp := Tf_PettyCashTemp.Create(Self);
    if f_PettyCashTemp.ShowModal = mrOk then
    begin
      qry_PettyCashCREATEDDATETIME.Value  := Now;
      qry_PettyCash.Post;
      qry_PettyCash.ApplyUpdates();

      tb_PettyDetail.First;
      while not tb_PettyDetail.Eof do
      begin
        if tb_PettyDetailNETAMNT.Value > 0 then
        begin
          qry_PettyDetail.Close;
          qry_PettyDetail.SQL[2]  := 'WHERE ID = 0';
          qry_PettyDetail.Open();

          qry_PettyDetail.Append;
          qry_PettyDetailHEADERID.Value     := qry_PettyCashID.Value;
          qry_PettyDetailREFID.Value        := tb_PettyDetailREFID.Value;
          qry_PettyDetailREFDATE.Value      := tb_PettyDetailREFDATE.Value;
          qry_PettyDetailAMOUNT.Value       := tb_PettyDetailAMOUNT.Value;
          qry_PettyDetailPAIDAMNT.Value     := tb_PettyDetailPAIDAMNT.Value;
          qry_PettyDetailNETAMNT.Value      := tb_PettyDetailNETAMNT.Value;
          qry_PettyDetailFP.Value           := tb_PettyDetailFP.Value;
          qry_PettyDetailCANCELLED.Value    := False;
          qry_PettyDetail.Post;
          qry_PettyDetail.ApplyUpdates();
        end;
        tb_PettyDetail.Next;
      end;
      search;
    end;
  end;
end;

procedure Tf_PettyCash.PrintExecute(Sender: TObject);
begin
  with dm_PM do
  begin
    qry_PettyCash.Close;
    qry_PettyCash.SQL[2]  := 'WHERE ID = :ID';
    qry_PettyCash.ParamByName('ID').Value := brw_PettyCashID.Value;
    qry_PettyCash.Open();

    qry_PettyCash.Edit;

    qry_PettyDetail.Close;
    qry_PettyDetail.SQL[2]  := 'WHERE HEADERID = :HEADERID AND CANCELLED = FALSE';
    qry_PettyDetail.ParamByName('HEADERID').Value := brw_PettyCashID.Value;
    qry_PettyDetail.Open();

    tb_PettyDetail.Close;
    tb_PettyDetail.Open;

    qry_PettyDetail.First;
    while not qry_PettyDetail.Eof do
    begin
      tb_PettyDetail.Append;
      tb_PettyDetailREFDATE.Value     := qry_PettyDetailREFDATE.Value;
      tb_PettyDetailAMOUNT.Value      := qry_PettyDetailAMOUNT.Value;
      tb_PettyDetailPAIDAMNT.Value    := qry_PettyDetailPAIDAMNT.Value;
      tb_PettyDetailNETAMNT.Value     := qry_PettyDetailNETAMNT.Value;
      tb_PettyDetailID.Value          := qry_PettyDetailID.Value;
      tb_PettyDetailREFID.Value       := qry_PettyDetailREFID.Value;
      tb_PettyDetail.Post;

      qry_PettyDetail.Next;
    end;
    tb_PettyDetail.First;

    f_PettyCashTemp := Tf_PettyCashTemp.Create(Self);
    f_PettyCashTemp.PrintExecute(nil);
  end;
end;

procedure Tf_PettyCash.sDBTableView1CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
   btnPrint.Visible  := not dm_PM.qry_PettyCashPOSTED.Value;
end;

procedure Tf_PettyCash.search;
begin
  with dm_PM do
  begin
    brw_PettyCash.Close;
    if cmb_filter.ItemIndex = 0 then
    brw_PettyCash.SQL[2]  := 'WHERE ID LIKE :SEARCH AND (PAYDATE BETWEEN :date1 AND :date2) AND CANCELLED = FALSE';
    brw_PettyCash.ParamByName('SEARCH').Value := '%'+Trim(txt_search.Text)+'%';
    brw_PettyCash.ParamByName('date1').Value  := FormatDateTime('yyyy-mm-dd', date_1.Date);
    brw_PettyCash.ParamByName('date2').Value  :=FormatDateTime('yyyy-mm-dd', date_2.Date);
    brw_PettyCash.Open();
  end;
end;

procedure Tf_PettyCash.txt_searchKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  search;
end;

procedure Tf_PettyCash.txt_searchRightButtonClick(Sender: TObject);
begin
  search;
end;

end.
