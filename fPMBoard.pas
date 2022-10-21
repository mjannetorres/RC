unit fPMBoard;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, sPanel,
  Vcl.ComCtrls, sPageControl, cxGraphics, cxControls, cxLookAndFeels,
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
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, Vcl.WinXCtrls,
  Vcl.Mask, sMaskEdit, sCustomComboEdit, sToolEdit, sComboBox, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, sSkinManager, cxContainer, cxTextEdit, cxMaskEdit,
  cxButtonEdit, System.ImageList, Vcl.ImgList, System.Actions, Vcl.ActnList,
  scControls, scGPFontControls, acAlphaImageList, cxGridCardView,
  cxGridDBCardView, cxGridCustomLayoutView, dxLayoutContainer,
  cxGridViewLayoutContainer, cxGridLayoutView, cxGridDBLayoutView, sButton,
  Vcl.ToolWin, Vcl.Menus, sToolBar, cxGridBandedTableView, System.UITypes, Firedac.Stan.Param,
  cxGridDBBandedTableView;

type
  Tf_PMBoard = class(TForm)
    pan_JO: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    cmb_filter: TComboBox;
    Label2: TLabel;
    date_1: TDateTimePicker;
    date_2: TDateTimePicker;
    ds_JO: TDataSource;
    Label3: TLabel;
    cxStyleRepository1: TcxStyleRepository;
    Header_style: TcxStyle;
    ActionList1: TActionList;
    New: TAction;
    Edit: TAction;
    Delete: TAction;
    txt_search: TButtonedEdit;
    cxImageList1: TcxImageList;
    sCharImageList1: TsCharImageList;
    ds_sprint: TDataSource;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1JONO: TcxGridDBColumn;
    cxGrid1DBTableView1CLIENT: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRIPTION: TcxGridDBColumn;
    cxGrid1DBTableView1LOGDATE: TcxGridDBColumn;
    cxGrid1DBTableView1DUEDATE: TcxGridDBColumn;
    cxGrid1DBTableView1POSTED: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    select_style: TcxStyle;
    pan_PM: TPanel;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1JODESC: TcxGridDBColumn;
    cxGridDBTableView1DATEDUE: TcxGridDBColumn;
    cxGridDBTableView1EMPNAME: TcxGridDBColumn;
    cxGridDBTableView1DESCRIPTION: TcxGridDBColumn;
    cxGridDBTableView1FABRIC: TcxGridDBColumn;
    cxGridDBTableView1SIZE: TcxGridDBColumn;
    cxGridDBTableView1FIT: TcxGridDBColumn;
    cxGridDBTableView1TOTALQTY: TcxGridDBColumn;
    cxGridDBTableView1UNIT: TcxGridDBColumn;
    cxGridDBTableView1STARTDATE: TcxGridDBColumn;
    cxGridDBTableView1FINISHEDDATE: TcxGridDBColumn;
    cxGridDBTableView1STATUS: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    scPageControl2: TscPageControl;
    scTabSheet8: TscTabSheet;
    CreateProject: TAction;
    EditProject: TAction;
    scToolBar1: TscToolBar;
    btnOPEdit: TToolButton;
    btnMatRequest: TToolButton;
    Splitter1: TSplitter;
    scToolBar2: TscToolBar;
    btnNew: TToolButton;
    btnEdit: TToolButton;
    btnDelete: TToolButton;
    MaterialRequest: TAction;
    ReleaseOP: TAction;
    btnOPExport: TToolButton;
    btnOPPrint: TToolButton;
    PrintOP: TAction;
    scToolBar3: TscToolBar;
    btnLogNew: TToolButton;
    btnLogEdit: TToolButton;
    btnLogDelete: TToolButton;
    NewLog: TAction;
    EditLog: TAction;
    DeleteLog: TAction;
    Splitter2: TSplitter;
    cxGrid3: TcxGrid;
    cxGridLevel2: TcxGridLevel;
    ds_logs: TDataSource;
    cxGrid3DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid3DBBandedTableView1JONO: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1QTY: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1TOTALQTY: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1DONE: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1LOGDATE: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1REMAINING: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1EMPNAME: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1DESCRIPTION: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1FABRIC: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1SIZE: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1FIT: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1SPRINT: TcxGridDBBandedColumn;
    cxGridDBTableView1PAPERSIZE: TcxGridDBColumn;
    cxGridDBTableView1AGE: TcxGridDBColumn;
    cxGrid1DBTableView1CLOSED: TcxGridDBColumn;
    cxGrid1DBTableView1RELEASED: TcxGridDBColumn;
    btnPrint: TToolButton;
    Print: TAction;
    cxGridDBTableView1STREXPORTEDDATETIME: TcxGridDBColumn;
    Assign: TAction;
    cxGrid1DBTableView1LAYOUT: TcxGridDBColumn;
    Overrideby: TAction;
    btnOverride: TToolButton;
    cxGrid1DBTableView1PAIDAMNT: TcxGridDBColumn;
    cxGrid1DBTableView1BALAMNT: TcxGridDBColumn;
    PopupMenu1: TPopupMenu;
    Reassign: TAction;
    ReassignWorker1: TMenuItem;
    scPageControl1: TscPageControl;
    scTabSheet1: TscTabSheet;
    scTabSheet2: TscTabSheet;
    scTabSheet3: TscTabSheet;
    scTabSheet4: TscTabSheet;
    scTabSheet5: TscTabSheet;
    scTabSheet6: TscTabSheet;
    scTabSheet7: TscTabSheet;
    btnCreateLayout: TToolButton;
    CreateLayout: TAction;
    cxGridDBTableView1REMQTY: TcxGridDBColumn;
    cxGridDBTableView1SPRINT: TcxGridDBColumn;
    btnCancelLayout: TToolButton;
    CancelLayout: TAction;
    CancelOPSheet: TAction;
    EditOPSheet: TAction;
    EditOPSheet1: TMenuItem;
    CancelOPSheet1: TMenuItem;
    scTabSheet9: TscTabSheet;
    ds_pending: TDataSource;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1EMPNAME: TcxGridDBColumn;
    cxGrid2DBTableView1ROLE: TcxGridDBColumn;
    cxGrid2DBTableView1DUEDATE: TcxGridDBColumn;
    cxGrid2DBTableView1REMARKS: TcxGridDBColumn;
    cxGrid2DBTableView1POSTED: TcxGridDBColumn;
    cxGrid2DBTableView1DESCRIPTION: TcxGridDBColumn;
    cxGrid2DBTableView1FABRIC: TcxGridDBColumn;
    cxGrid2DBTableView1QTY: TcxGridDBColumn;
    cxGrid2DBTableView1FREE: TcxGridDBColumn;
    cxGrid2DBTableView1UNIT: TcxGridDBColumn;
    cxGrid2DBTableView1JODESC: TcxGridDBColumn;
    cxGrid2DBTableView1AGE: TcxGridDBColumn;
    cxGrid2DBTableView1LOGDATE: TcxGridDBColumn;
    PopupMenu2: TPopupMenu;
    Layout: TAction;
    CreateLayout1: TMenuItem;
    ToolButton2: TToolButton;
    cxGrid2DBTableView1STATUS: TcxGridDBColumn;
    Timer1: TTimer;
    cxGridDBTableView1REMARKS: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EditExecute(Sender: TObject);
    procedure DeleteExecute(Sender: TObject);
    procedure NewExecute(Sender: TObject);
    procedure txt_searchRightButtonClick(Sender: TObject);
    procedure txt_searchKeyPress(Sender: TObject; var Key: Char);
    procedure EditProjectExecute(Sender: TObject);
    procedure scPageControl1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxGridDBTableView1DblClick(Sender: TObject);
    procedure ReleaseOPExecute(Sender: TObject);
    procedure PrintOPExecute(Sender: TObject);
    procedure NewLogExecute(Sender: TObject);
    procedure EditLogExecute(Sender: TObject);
    procedure DeleteLogExecute(Sender: TObject);
    procedure cxGridDBTableView1DATEDUEStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure PrintExecute(Sender: TObject);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGridDBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure MaterialRequestExecute(Sender: TObject);
    procedure AssignExecute(Sender: TObject);
    procedure OverridebyExecute(Sender: TObject);
    procedure ReassignExecute(Sender: TObject);
    procedure CreateLayoutExecute(Sender: TObject);
    procedure EditOPSheetExecute(Sender: TObject);
    procedure CancelOPSheetExecute(Sender: TObject);
    procedure CancelLayoutExecute(Sender: TObject);
    procedure LayoutExecute(Sender: TObject);
    procedure cxGrid2DBTableView1DUEDATEStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
    ARedStyle,AYellowStyle: TcxStyle;
    procedure create_layout(jono: String);
    procedure user_rights;
    procedure load_workers;
    procedure role_ui;
    procedure op_sheet_ui;
    procedure generate_pending;
    procedure generate_pm;
    procedure generate_logs;
    procedure generate_done;
    procedure notif;
  public
    { Public declarations }
    procedure search;
  end;

var
  f_PMBoard: Tf_PMBoard;

implementation

{$R *.dfm}

uses dmPM, fJO, DateUtils, fOPSheet, fLogTemp, fmenu, fMatRequest, fPassword,
  fPBReassign, fEnterJO, fEditOPSheet;

procedure Tf_PMBoard.txt_searchKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    search;
    generate_pending;
  end;
end;

procedure Tf_PMBoard.txt_searchRightButtonClick(Sender: TObject);
begin
   search;
   generate_pending;
end;

procedure Tf_PMBoard.user_rights;
begin
  with dm_PM do
  begin
    brw_Rights.Close;
    brw_Rights.SQL[4] := 'WHERE EMP_ROLE.CANCELLED = FALSE';
    brw_Rights.Open();
    brw_Rights.First;

    btnNew.Visible      := brw_Rights.Locate('POLICYID;SELECT;ROLEID',VarArrayOf([1, True, roleid]), []);
    btnEdit.Visible     := brw_Rights.Locate('POLICYID;SELECT;ROLEID',VarArrayOf([2, True, roleid]), []);
    btnDelete.Visible   := brw_Rights.Locate('POLICYID;SELECT;ROLEID',VarArrayOf([3, True, roleid]), []);
    btnOverride.Visible  := brw_Rights.Locate('POLICYID;SELECT;ROLEID',VarArrayOf([5, True, roleid]), []);
    CancelLayout.Visible := brw_Rights.Locate('POLICYID;SELECT;ROLEID',VarArrayOf([60, True, roleid]), []);
    EditOPSheet.Enabled  := brw_Rights.Locate('POLICYID;SELECT;ROLEID',VarArrayOf([61, True, roleid]), []);
    CancelOPSheet.Enabled := brw_Rights.Locate('POLICYID;SELECT;ROLEID',VarArrayOf([62, True, roleid]), []);

    New.Enabled         := btnNew.Visible;
    Edit.Enabled        := btnEdit.Visible;
    Delete.Enabled      := btnDelete.Visible;
    Overrideby.Enabled  := btnOverride.Visible;
    Layout.Enabled      := roleid = 1;
  end;
end;

procedure Tf_PMBoard.OverridebyExecute(Sender: TObject);
begin
  with dm_PM do
  begin
    if brw_JOPOSTED.Value or brw_JOLAYOUT.Value then
    begin
      brw_CashReg.Close;
      brw_CashReg.SQL[2]  := 'WHERE REFID = :ID AND SOURCE = ''JO'' AND CANCELLED = FALSE';
      brw_CashReg.ParamByName('ID').Value := brw_JOID.Value;
      brw_CashReg.Open();

//      if brw_CashReg.RecordCount > 0 then
//      begin
//        MessageDlg('Cannot override Job Order! Please void receipt first.', mtInformation, [mbOK], 0);
//        Exit
//      end;
//      if brw_JOLAYOUT.Value and not brw_JORELEASED.Value then
//      begin
//        MessageDlg('Cannot override Job Order! Please cancel layout first.', mtInformation, [mbOK], 0);
//        Exit
//      end
//      else if brw_JORELEASED.Value then
//      begin
//        MessageDlg('Cannot override Job Order! Please cancel Operator Sheet to continue.', mtInformation, [mbOK], 0);
//        Exit
//      end;


      f_Password  := Tf_Password.Create(Self);
      f_Password.Caption  := 'Enter your Password';
      if f_Password.ShowModal = mrOk then
      begin
        brw_Users.Close;
        brw_Users.SQL[2] := 'WHERE ID = :ID AND PASSWORD = :PASSWORD AND CANCELLED = FALSE';
        brw_Users.ParamByName('ID').Value         := userid;
        brw_Users.ParamByName('PASSWORD').Value   := f_Password.txt_Password.Text;
        brw_Users.Open();

        if brw_Users.RecordCount = 0 then
        begin
          MessageDlg('Password does not match! Please try again.', mtInformation, [mbOK], 0);
          Exit;
        end;

        qry_JO.Close;
        qry_JO.SQL[2] := 'WHERE ID = :ID';
        qry_JO.ParamByName('ID').Value  := brw_JOID.Value;
        qry_JO.Open();

        if brw_JO.RecordCount > 0 then
        begin
          qry_JO.Edit;
          qry_JOOVERRIDE.Value      := True;
          qry_JOOVERRIDEBY.Value    := userid;
          qry_JO.Post;
          qry_JO.ApplyUpdates();

          EditExecute(nil);
        end;
      end;
    end;
  end;
end;

procedure Tf_PMBoard.AssignExecute(Sender: TObject);
begin
  with dm_PM do
  begin

  end;
end;

procedure Tf_PMBoard.CancelLayoutExecute(Sender: TObject);
begin
  with dm_PM do
  begin
    if brw_pmboard.RecordCount > 0 then
    begin
      if MessageDlg('Do you want to cancel layout for JO No. ?'+brw_pmboardJONO.AsString, mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        upd_PMBoard.Close;
        upd_PMBoard.SQL[1]  := 'SET CANCELLED = TRUE';
        upd_PMBoard.SQL[2]  := 'WHERE JONO = '+brw_pmboardJONO.AsString;
        upd_PMBoard.ExecSQL;

        qry_JO.Close;
        qry_JO.SQL[2] := 'WHERE JONO = :JONO AND CANCELLED = FALSE';
        qry_JO.ParamByName('JONO').Value  := brw_pmboardJONO.Value;
        qry_JO.Open();

        qry_JO.Edit;
        qry_JOLAYOUT.Value  := False;
        qry_JO.Post;
        qry_JO.ApplyUpdates();

        upd_JODetail.Close;
        upd_JODetail.SQL[1] := 'SET LAYOUT = '''', ';
        upd_JODetail.SQL[2] := 'FILENAME = ''''';
        upd_JODetail.SQL[3] := 'WHERE HEADERID = '+qry_JOID.AsString;
        upd_JODetail.ExecSQL;

        MessageDlg('Layout has been cancelled', mtInformation, [mbOK], 0);

        generate_pm;
        search;
      end;
    end;
  end;
end;

procedure Tf_PMBoard.CancelOPSheetExecute(Sender: TObject);
begin
  with dm_PM do
  begin

    f_EnterJO := Tf_EnterJO.Create(Self);
    if f_EnterJO.ShowModal = mrOk then
    begin
      brw_PMDetail.Close;
      brw_PMDetail.SQL[2] := 'WHERE JONO = :JONO AND SPRINT <> ''LAYOUT/DESIGN'' AND CANCELLED = FALSE';
      brw_PMDetail.ParamByName('JONO').Value  := Trim(f_EnterJO.txt_JO.Text);
      brw_PMDetail.Open();

      if brw_PMDetail.RecordCount = 0 then
      begin
        MessageDlg('No Operator Sheet exported matching Job Order '+Trim(f_EnterJO.txt_JO.Text)+'.', mtError, [mbOK], 0);
        Exit;
      end;

      qry_Logs.Close;
      qry_Logs.SQL[2]  := 'WHERE JONO = :JONO AND CANCELLED = FALSE';
      qry_Logs.ParamByName('JONO').Value    := Trim(f_EnterJO.txt_JO.Text);
      qry_Logs.Open();

      if qry_Logs.RecordCount > 0 then
      begin
        MessageDlg('Job Order No. '+Trim(f_EnterJO.txt_JO.Text)+' has record(s) on work logs. Please delete all work logs of this Job Order to continue!', mtError, [mbOK], 0);
        Exit

      end;

      if MessageDlg('Are you sure to cancel OP Sheet of JO No.'+Trim(f_EnterJO.txt_JO.Text)+'?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        qry_JO.Close;
        qry_JO.SQL[2] := 'WHERE JONO = :ID AND CANCELLED = FALSE';
        qry_JO.ParamByName('ID').Value  := Trim(f_EnterJO.txt_JO.EditValue);
        qry_JO.Open();

        upd_PMBoard.Close;
        upd_PMBoard.SQL[1]  := 'SET CANCELLED = TRUE';
        upd_PMBoard.SQL[2]  := 'WHERE SPRINT <> ''LAYOUT/DESIGN'' AND  JONO = '+qry_JOJONO.AsString;
        upd_PMBoard.ExecSQL;

        upd_PMBoard.Close;
        upd_PMBoard.SQL[1]  := 'SET DONE = FALSE';
        upd_PMBoard.SQL[2]  := 'WHERE SPRINT = ''LAYOUT/DESIGN'' AND  JONO = '+qry_JOJONO.AsString;
        upd_PMBoard.ExecSQL;

        qry_JO.Edit;
        qry_JORELEASED.Value  := False;
        qry_JO.Post;
        qry_JO.ApplyUpdates();

        MessageDlg('OP Sheet has been cancelled!', mtInformation, [mbOK], 0);

        generate_pm;
        search;
      end;
    end;
  end;
end;

procedure Tf_PMBoard.CreateLayoutExecute(Sender: TObject);
begin
  with dm_PM do
  begin
    f_EnterJO := Tf_EnterJO.Create(Self);
    if f_EnterJO.ShowModal = mrOk then
    begin
      create_layout(Trim(f_EnterJO.txt_JO.EditValue));
    end;
  end;
end;

procedure Tf_PMBoard.create_layout(jono: string);
begin
  with dm_PM do
  begin
    qry_JO.Close;
    qry_JO.SQL[2] := 'WHERE JONO = :ID AND CANCELLED = FALSE';
    qry_JO.ParamByName('ID').Value  := jono; //Trim(f_EnterJO.txt_JO.EditValue);
    qry_JO.Open();

    if qry_JO.RecordCount > 0 then
    begin
      if not qry_JOLAYOUT.Value  then
      begin
        if MessageDlg('Continue to create operator sheet for JO No. '+qry_JOJONO.AsString +'?', mtWarning, [mbYes, mbNo], 0) = mrYes then
        begin
          brw_OPShirt.Close;
          brw_OPShirt.SQL[4] := 'WHERE JO_DETAIL.HEADERID = :ID AND JO_DETAIL.CANCELLED = FALSE';
          brw_OPShirt.ParamByName('ID').Value  := qry_JOID.Value;
          brw_OPShirt.Open();

          tb_OPDetail.Close;
          tb_OPDetail.Open;

          qry_JODetail.Close;
          qry_JODetail.SQL[2] := 'WHERE HEADERID = :ID AND CANCELLED = FALSE';
          qry_JODetail.ParamByName('ID').Value  := qry_JOID.Value;
          qry_JODetail.Open();

          f_OPSheet   := Tf_OPSheet.Create(Self);
          if f_OPSheet.ShowModal = mrOk then
          begin
            qry_JO.Edit;
            qry_JOLAYOUT.Value    := True;
            qry_JO.Post;
            qry_JO.ApplyUpdates();

            qry_JODetail.Edit;
            qry_JODetail.Post;
            qry_JODetail.ApplyUpdates();

            tb_OPDetail.First;
            while not tb_OPDetail.Eof do
            begin
              qry_PB.Close;
              qry_PB.SQL[2] := 'WHERE ID = 0';
              qry_PB.Open();

              qry_PB.Append;
              qry_PBJONO.Value        := qry_JOJONO.Value;
              qry_PBSTARTDATE.Value   := Now;
              qry_PBDATEDUE.Value     := qry_JODUEDATE.Value;
              qry_PBSPRINT.Value      := 'LAYOUT/DESIGN';
              qry_PBCANCELLED.Value   := False;
              qry_PBCREATEDBYID.Value := userid;
              qry_PBDETAILID.Value    := tb_OPDetailDETAILID.Value;
              qry_PBDONE.Value        := False;
              qry_PBPAPERSIZE.Value   := tb_OPDetailPAPERSIZE.Value;
              qry_PBEMPID.Value       := empid;
              qry_PBROLEID.Value      := 1;
              qry_PBSHIRTID.Value     := tb_OPDetailSHIRTID.Value;
              qry_PBDESCRIPTION.Value := tb_OPDetailSHIRT.Value;
              qry_PBFABRICID.Value    := tb_OPDetailFABRICID.Value;
              qry_PBFABRIC.Value      := tb_OPDetailFABRIC.Value;
              qry_PBSIZE.Value        := tb_OPDetailSIZE.Value;
              qry_PBFIT.Value         := tb_OPDetailFIT.Value;
              qry_PBQTY.Value         := tb_OPDetailQTY.Value;
              qry_PBREMQTY.Value      := tb_OPDetailQTY.Value;
              qry_PBFREE.Value        := tb_OPDetailFREE.Value;
              qry_PBUNIT.Value        := tb_OPDetailUNIT.Value;
              qry_PBREMARKS.Value     := tb_OPDetailREMARKS.Value;

              qry_PB.Post;
              qry_PB.ApplyUpdates();

              tb_OPDetail.Next;
            end;

            MessageDlg('Project has been forwarded for layout!', mtInformation, [mbOK], 0);
          end;

          generate_pending;
          generate_pm;
          search;
        end;
      end
      else
        MessageDlg('JO No. '+qry_JOJONO.AsString +' is already on the list!', mtError, [mbOK], 0);
    end
    else
       MessageDlg('JO No. '+VarToStr(f_EnterJO.txt_JO.Value) +' not found!', mtError, [mbOK], 0);
  end;
end;

procedure Tf_PMBoard.cxGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  btnOverride.Visible   := (dm_PM.brw_JOPOSTED.Value or dm_PM.brw_JOLAYOUT.Value) and dm_PM.brw_Rights.Locate('POLICYID;SELECT;ROLEID',VarArrayOf([5, True, dm_PM.roleid]), [])
end;

procedure Tf_PMBoard.cxGrid2DBTableView1DUEDATEStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
begin
  if (ARecord.Values[cxGrid2DBTableView1STATUS.Index] = 'OFF TRACK') then
  AStyle  :=  ARedStyle
  else if (ARecord.Values[cxGrid2DBTableView1STATUS.Index] = 'AT RISK') then
  AStyle  :=  AYellowStyle;
end;

procedure Tf_PMBoard.cxGridDBTableView1CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  if scPageControl1.ActivePageIndex = 1 then
  btnOPExport.Visible := not dm_PM.brw_pmboardRELEASED.Value;
 // btnOPPrint.Visible  := dm_PM.brw_pmboardRELEASED.Value;
  CancelLayout.Visible  := (scPageControl1.ActivePageIndex = 1) and (dm_PM.brw_pmboardSPRINT.Value = 'LAYOUT/DESIGN') and dm_PM.brw_Rights.Locate('POLICYID;SELECT;ROLEID',VarArrayOf([62, True, dm_PM.roleid]), []);
  EditOPSheet.Enabled   := (scPageControl1.ActivePageIndex > 1) and dm_PM.brw_Rights.Locate('POLICYID;SELECT;ROLEID',VarArrayOf([61, True, dm_PM.roleid]), []);
  CancelOPSheet.Enabled := (scPageControl1.ActivePageIndex > 1) and dm_PM.brw_Rights.Locate('POLICYID;SELECT;ROLEID',VarArrayOf([62, True, dm_PM.roleid]), []);

end;

procedure Tf_PMBoard.cxGridDBTableView1DATEDUEStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
begin
  if (ARecord.Values[cxGridDBTableView1STATUS.Index] = 'OFF TRACK') then
  AStyle  :=  ARedStyle
  else if (ARecord.Values[cxGridDBTableView1STATUS.Index] = 'AT RISK') then
  AStyle  :=  AYellowStyle;
end;

procedure Tf_PMBoard.cxGridDBTableView1DblClick(Sender: TObject);
begin
  if scPageControl1.ActivePageIndex = 1 then
  EditProjectExecute(nil);
end;

procedure Tf_PMBoard.DeleteExecute(Sender: TObject);
begin
  with dm_PM do
  begin
    if brw_JO.RecordCount > 0 then
    begin
      if not brw_JOPOSTED.Value then
      begin
        if not brw_JOLAYOUT.Value then
        begin
          if brw_JOPAIDAMNT.Value <= 0 then
          begin
            if MessageDlg('Do you want to delete this record?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
            begin
              qry_JO.Close;
              qry_JO.SQL[2] := 'WHERE ID = '+brw_JOID.AsString;
              qry_JO.Open();

              if qry_JO.RecordCount > 0 then
              begin
                qry_JO.Edit;
                qry_JOCANCELLED.Value         := True;
                qry_JODELETEDDATETIME.Value   := Now;
                qry_JODELETEDBYID.Value       := userid;
                qry_JO.Post;
                qry_JO.ApplyUpdates();
              end;

              del_JoDetails.Close;
              del_JoDetails.SQL[1] := 'SET CANCELLED = TRUE,';
              del_JoDetails.SQL[2] := 'DELETEDBYID = '+IntToStr(userid)+',';
              del_JoDetails.SQL[3] := 'DELETEDDATETIME = '+''''+FormatDateTime('yyyy-mm-dd hh:nn:ss', Now)+'''';
              del_JoDetails.SQL[4] := 'WHERE HEADERID = '+brw_JOID.AsString;
              del_JoDetails.ExecSQL;

              del_JoEmp.Close;
              del_JoEmp.SQL[1] := 'SET CANCELLED = TRUE,';
              del_JoEmp.SQL[2] := 'DELETEDBYID = '+IntToStr(userid)+',';
              del_JoEmp.SQL[3] := 'DELETEDDATETIME = '+''''+FormatDateTime('yyyy-mm-dd hh:nn:ss', Now)+'''';
              del_JoEmp.SQL[4] := 'WHERE HEADERID = '+brw_JOID.AsString;
              del_JoEmp.ExecSQL;

              del_JOCost.Close;
              del_JOCost.SQL[1] := 'SET CANCELLED = FALSE,';
              del_JOCost.SQL[2] := 'CANCELLEDBYID = '+IntToStr(dm_PM.userid)+',';
              del_JOCost.SQL[3] := 'CANCELLEDDATETIME = '''+FormatDateTime('yyyy-mm-dd hh:nn:ss', Now)+'''';
              del_JOCost.SQL[4] := 'WHERE HEADERID = '+qry_JOID.AsString;
              del_JOCost.ExecSQL;

              MessageDlg('JO NO. '+brw_JOJONO.AsString + ' has been deleted', mtInformation, [mbOK], 0);
              search;
            end;
          end
          else
           MessageDlg('Paid transaction(s) cannot be deleted. Please void payment history', mtError, [mbOK], 0);
        end
        else
          MessageDlg('Job Order has been forwarded for layout. Cannot delete Job Order.', mtError, [mbOK], 0);
      end
      else
         MessageDlg('Cannot delete posted transaction(s)', mtError, [mbOK], 0);
    end;
  end;
end;

procedure Tf_PMBoard.DeleteLogExecute(Sender: TObject);
begin
  with dm_PM do
  begin
    if (scPageControl1.ActivePageIndex < 7) then
    begin
      if brw_Logs.RecordCount > 0 then
      begin
        if MessageDlg('Do you want to delete this record?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
          qry_Logs.Close;
          qry_Logs.SQL[2] := 'WHERE ID = :ID';
          qry_Logs.ParamByName('ID').Value  := brw_LogsID.Value;
          qry_Logs.Open();

          if qry_Logs.RecordCount > 0 then
          begin
            qry_Logs.Edit;
            qry_LogsCANCELLED.Value         := True;
            qry_LogsDELETEDDATETIME.Value   := Now;
            qry_LogsDELETEDBYID.Value       := userid;
            qry_Logs.Post;
            qry_Logs.ApplyUpdates();

            brw_LogDone.Close;
            brw_LogDone.SQL[2]  := 'WHERE JONO = :JONO AND SHIRTID = :ID AND SPRINT = :SPRINT AND SIZE = :SIZE AND FIT = :FIT AND CANCELLED = FALSE';
            brw_LogDone.ParamByName('JONO').Value    := qry_LogsJONO.Value;
            brw_LogDone.ParamByName('ID').Value      := qry_LogsSHIRTID.Value;
            brw_LogDone.ParamByName('SPRINT').Value  := qry_LogsSPRINT.Value;
            brw_LogDone.ParamByName('SIZE').Value    := qry_LogsSIZE.Value;
            brw_LogDone.ParamByName('FIT').Value     := qry_LogsFIT.Value;
            brw_LogDone.Open();

            brw_PMDetail.Close;
            brw_PMDetail.SQL[2] := 'WHERE JONO = :JONO AND SHIRTID = :ID AND SPRINT = :SPRINT AND SIZE = :SIZE AND FIT = :FIT AND CANCELLED = FALSE';
            brw_PMDetail.ParamByName('JONO').Value    := qry_LogsJONO.Value;
            brw_PMDetail.ParamByName('ID').Value      := qry_LogsSHIRTID.Value;
            brw_PMDetail.ParamByName('SPRINT').Value  := qry_LogsSPRINT.Value;
            brw_PMDetail.ParamByName('SIZE').Value    := qry_LogsSIZE.Value;
            brw_PMDetail.ParamByName('FIT').Value     := qry_LogsFIT.Value;
            brw_PMDetail.Open();

            brw_PMDetail.First;
            while not brw_PMDetail.Eof do
            begin
              qry_PB.Close;
              qry_PB.SQL[2] := 'WHERE ID = :ID';
              qry_PB.ParamByName('ID').Value  := brw_PMDetailID.Value;
              qry_PB.Open();

              qry_PB.Edit;
              qry_PBREMQTY.Value       := brw_LogDoneTOTAL.AsInteger;
              qry_PB.Post;
              qry_PB.ApplyUpdates();

              brw_PMDetail.Next;
            end;


            MessageDlg('Log has been deleted!', mtInformation, [mbOK], 0);
            generate_logs;
            generate_pm;

          end
          else
          MessageDlg('No log to delete!', mtError, [mbOK], 0);
        end;
      end
      else
       MessageDlg('No log to delete!', mtError, [mbOK], 0);
    end;
  end;
end;

procedure Tf_PMBoard.EditExecute(Sender: TObject);
var particulars: string;
begin
  with dm_PM do
  begin
    if brw_JO.RecordCount > 0 then
    begin

      qry_JO.Close;
      qry_JO.SQL[2] := 'WHERE ID = '+brw_JOID.AsString;
      qry_JO.Open();

      qry_JO.Edit;

      qry_JODetail.Close;
      qry_JODetail.SQL[2] := 'WHERE HEADERID = :ID AND CANCELLED = FALSE';
      qry_JODetail.ParamByName('ID').Value  := brw_JOID.Value;
      qry_JODetail.Open();

      tb_JODetail.Close;
      tb_JODetail.Open;

      if qry_JODetail.RecordCount > 0 then
      begin
        qry_JODetail.First;
        while not qry_JODetail.Eof do
        begin
          tb_JODetail.Append;
          tb_JODetailID.Value           := qry_JODetailID.Value;
          tb_JODetailSHIRTID.Value      := qry_JODetailSHIRTID.Value;
          tb_JODetailDESCRIPTION.Value  := qry_JODetailDESCRIPTION.Value;
          tb_JODetailFABRICID.Value     := qry_JODetailFABRICID.Value;
          tb_JODetailFABRIC.Value       := qry_JODetailFABRIC.Value;
          tb_JODetailQTY.Value          := qry_JODetailQTY.Value;
          tb_JODetailFREE.Value         := qry_JODetailFREE.Value;
          tb_JODetailCOST.Value         := qry_JODetailCOST.Value;
          tb_JODetailUNIT.Value         := qry_JODetailUNIT.Value;
          tb_JODetailREMARKS.Value      := qry_JODetailREMARKS.Value;
          tb_JODetail.Post;

          qry_JODetail.Next;
        end;
      end;

      tb_JODetail.First;

      brw_Emp.Close;
      brw_Emp.SQL[2]  := 'WHERE CANCELLED = FALSE';
      brw_Emp.Open();

      qry_WorkersDetails.Close;
      qry_WorkersDetails.SQL[2] := 'WHERE HEADERID = :ID AND CANCELLED = FALSE';
      qry_WorkersDetails.ParamByName('ID').Value  := brw_JOID.Value;
      qry_WorkersDetails.Open();

      tb_JOEmp.Close;
      tb_JOEmp.Open;

      if qry_WorkersDetails.RecordCount > 0 then
      begin
        qry_WorkersDetails.First;
        while not qry_WorkersDetails.Eof do
        begin
          tb_JOEmp.Append;
          tb_JOEmpID.Value        := qry_WorkersDetailsID.Value;
          tb_JOEmpROLEID.Value    := qry_WorkersDetailsROLEID.Value;
          tb_JOEmpROLE.Value      := qry_WorkersDetailsROLE.AsString;
          tb_JOEmpEMPNAME.Value   := qry_WorkersDetailsEMPNAME.AsString;
          tb_JOEmpEMPID.Value     := qry_WorkersDetailsEMPID.Value;
          tb_JOEmp.Post;
          qry_WorkersDetails.Next;
        end;
        tb_JOEmp.First;
      end
      else
      load_workers;


      tb_InvReqDetail.Close;
      tb_InvReqDetail.Open;

      qry_JoCost.Close;
      qry_JoCost.SQL[2]  := 'WHERE HEADERID = :ID AND CANCELLED = FALSE';
      qry_JoCost.ParamByName('ID').Value := qry_JOID.Value;
      qry_JoCost.Open();

      if qry_JoCost.RecordCount > 0 then
      begin
        qry_JoCost.First;
         while not qry_JoCost.Eof do
         begin
          tb_InvReqDetail.Append;
          tb_InvReqDetailID.Value        := qry_JoCostID.Value;
          tb_InvReqDetailITEMID.Value    := qry_JoCostITEMID.Value;
          tb_InvReqDetailITEMDESC.Value  := qry_JoCostITEMDESC.Value;
          tb_InvReqDetailUNIT.Value      := qry_JoCostUNIT.Value;
          tb_InvReqDetailQTY.Value       := qry_JoCostQTY.Value;
          tb_InvReqDetailCOST.Value      := qry_JoCostCOST.Value;
          tb_InvReqDetail.Post;

          qry_JoCost.Next;
         end;
         tb_InvReqDetail.First;
      end;

      f_JO  := Tf_JO.Create(Self);
      if f_JO.ShowModal = mrOk then
      begin
        qry_JOBALAMNT.Value := qry_JONETAMNT.Value - qry_JOPAIDAMNT.Value;
        qry_JO.Post;
        qry_JO.ApplyUpdates();

        particulars  := '';

        tb_JODetail.First;
        while not tb_JODetail.Eof do
        begin
          qry_JODetail.Close;
          if tb_JODetailID.IsNull then
          qry_JODetail.SQL[2] := 'WHERE ID = 0'
          else
          qry_JODetail.SQL[2] := 'WHERE ID = '+tb_JODetailID.AsString;
          qry_JODetail.Open();

          if tb_JODetailID.IsNull then
          qry_JODetail.Append
          else
          qry_JODetail.Edit;

          qry_JODetailHEADERID.Value      := qry_JOID.Value;
          qry_JODetailSHIRTID.Value       := tb_JODetailSHIRTID.Value;
          qry_JODetailDESCRIPTION.Value   := tb_JODetailDESCRIPTION.Value;
          qry_JODetailFABRICID.Value      := tb_JODetailFABRICID.Value;
          qry_JODetailFABRIC.Value        := tb_JODetailFABRIC.Value;
          qry_JODetailQTY.Value           := tb_JODetailQTY.Value;
          qry_JODetailFREE.Value          := tb_JODetailFREE.Value;
          qry_JODetailCOST.Value          := tb_JODetailCOST.Value;
          qry_JODetailUNIT.Value          := tb_JODetailUNIT.Value;
          qry_JODetailTOTALCOST.Value     := tb_JODetailTOTALCOST.Value;
          qry_JODetailREMARKS.Value       := tb_JODetailREMARKS.Value;

          qry_JODetailCANCELLED.Value     := False;

          if tb_JODetail.RecNo <> tb_JODetail.RecordCount then
          particulars := particulars + IntToStr(qry_JODetailQTY.Value + qry_JODetailFREE.Value) +' - '+ qry_JODetailDESCRIPTION.AsString + ' ('+qry_JODetailFABRIC.AsString+ ') ' + qry_JODetailSIZE.AsString  + ' '+qry_JODetailFIT.AsString + #13#10
          else
          particulars := particulars + IntToStr(qry_JODetailQTY.Value + qry_JODetailFREE.Value) +' - '+ qry_JODetailDESCRIPTION.AsString + ' ('+qry_JODetailFABRIC.AsString+ ') ' + qry_JODetailSIZE.AsString  + ' '+qry_JODetailFIT.AsString;

          qry_JODetail.Post;
          qry_JODetail.ApplyUpdates();

          tb_JODetail.Next;
        end;

        tb_JOEmp.First;
        while not tb_JOEmp.Eof do
        begin
          qry_WorkersDetails.Close;
          qry_WorkersDetails.SQL[2] := 'WHERE ID = :ID';
          if tb_JOEmpID.IsNull then
          qry_WorkersDetails.ParamByName('ID').Value  := 0
          else
          qry_WorkersDetails.ParamByName('ID').Value  := tb_JOEmpID.Value;
          qry_WorkersDetails.Open();

          if tb_JOEmpID.IsNull then
          qry_WorkersDetails.Append
          else
          qry_WorkersDetails.Edit;
          qry_WorkersDetailsHEADERID.Value  := qry_JOID.Value;
          qry_WorkersDetailsROLEID.Value    := tb_JOEmpROLEID.Value;
          qry_WorkersDetailsROLE.Value      := tb_JOEmpROLE.AsString;
          qry_WorkersDetailsEMPNAME.Value   := tb_JOEmpEMPNAME.AsString;
          qry_WorkersDetailsEMPID.Value     := tb_JOEmpEMPID.Value;
          qry_WorkersDetailsCANCELLED.Value := False;
          qry_WorkersDetails.Post;
          qry_WorkersDetails.ApplyUpdates();

          tb_JOEmp.Next;
        end;

        tb_InvReqDetail.First;
        while not tb_InvReqDetail.Eof do
        begin
          qry_JoCost.Close;
          if tb_InvReqDetailID.IsNull then
          qry_JoCost.SQL[2] := 'WHERE ID = 0'
          else
          begin
            qry_JoCost.SQL[2] := 'WHERE ID = :ID';
            qry_JoCost.ParamByName('ID').Value   := tb_InvReqDetailID.Value;
          end;
          qry_JoCost.Open();

          if qry_JoCostID.IsNull then
          qry_JoCost.Append
          else
          qry_JoCost.Edit;

          qry_JoCostHEADERID.Value         := qry_JOID.Value;
          qry_JoCostITEMID.Value           := tb_InvReqDetailITEMID.Value;
          qry_JoCostITEMDESC.Value         := tb_InvReqDetailITEMDESC.Value;
          qry_JoCostCOST.Value             := tb_InvReqDetailCOST.Value;
          qry_JoCostTOTALCOST.Value        := tb_InvReqDetailTOTALCOST.Value;
          qry_JoCostUNIT.Value             := tb_InvReqDetailUNIT.Value;
          qry_JoCostCANCELLED.Value        := False;
          qry_JoCostQTY.Value              := tb_InvReqDetailQTY.Value;

          qry_JoCost.Post;
          qry_JoCost.ApplyUpdates();
          tb_InvReqDetail.Next;
        end;

        upd_jo.Close;
        upd_jo.SQL[1] := 'SET SUMMARY = '''+particulars+'''';
        upd_jo.SQL[2] := 'WHERE ID = '+IntToStr(qry_JOID.Value);
        upd_jo.ExecSQL;

        search;
      end;
    end;
  end;
end;

procedure Tf_PMBoard.EditLogExecute(Sender: TObject);
begin
  with dm_PM do
  begin
    if (scPageControl1.ActivePageIndex < 7) and (scPageControl1.ActivePageIndex > 0) then
    begin
      if brw_Logs.RecordCount > 0 then
      begin
        if MessageDlg('Continue to override current record?', mtInformation, [mbYes, mbNo], 0) = mrYes then
        begin
          qry_Logs.Close;
          qry_Logs.SQL[2]   := 'WHERE ID = :ID';
          qry_Logs.ParamByName('ID').Value  := brw_LogsID.Value;
          qry_Logs.Open();

          qry_Logs.Edit;
          f_LogTemp := Tf_LogTemp.Create(Self);
          with f_LogTemp do
          begin
            Caption := 'New Log';

            brw_Emp.Close;
            brw_Emp.SQL[2]  := 'WHERE ID = :ID';
            brw_Emp.ParamByName('ID').Value := qry_LogsEMPID.Value;
            brw_Emp.Open();

            txt_EmpName.Text                := brw_EmpEMPNAME.AsString;
            txt_desc.Text                   := brw_pmboardDESCRIPTION.AsString;
            txt_fabric.Text                 := brw_pmboardFABRIC.AsString;
            txt_size.Text                   := brw_pmboardSIZE.AsString;
            txt_fit.Text                    := brw_pmboardFIT.AsString;
            txt_unit.Text                   := brw_pmboardUNIT.AsString;

            if ShowModal = mrOk then
            begin
              qry_Logs.Edit;
              qry_Logs.Post;
              qry_Logs.ApplyUpdates();


              brw_PMDetail.Close;
              brw_PMDetail.SQL[2] := 'WHERE JONO = :JONO AND SHIRTID = :ID AND SPRINT = :SPRINT AND SIZE = :SIZE AND FIT = :FIT AND CANCELLED = FALSE';
              brw_PMDetail.ParamByName('JONO').Value    := qry_LogsJONO.Value;
              brw_PMDetail.ParamByName('ID').Value      := qry_LogsSHIRTID.Value;
              brw_PMDetail.ParamByName('SPRINT').Value  := qry_LogsSPRINT.Value;
              brw_PMDetail.ParamByName('SIZE').Value    := qry_LogsSIZE.Value;
              brw_PMDetail.ParamByName('FIT').Value     := qry_LogsFIT.Value;
              brw_PMDetail.Open();

              brw_PMDetail.First;
              while not brw_PMDetail.Eof do
              begin
                qry_PB.Close;
                qry_PB.SQL[2] := 'WHERE ID = :ID';
                qry_PB.ParamByName('ID').Value  := brw_PMDetailID.Value;
                qry_PB.Open();

                qry_PB.Edit;
                qry_PBREMQTY.Value       := qry_LogsREMAINING.Value;
                qry_PB.Post;
                qry_PB.ApplyUpdates();

                brw_PMDetail.Next;
              end;

              if qry_LogsREMAINING.Value = 0 then
              begin
                brw_PMDetail.Close;
                brw_PMDetail.SQL[2] := 'WHERE JONO = :JONO AND SHIRTID = :ID AND SPRINT = :SPRINT AND SIZE = :SIZE AND FIT = :FIT AND CANCELLED = FALSE';
                brw_PMDetail.ParamByName('JONO').Value    := qry_LogsJONO.Value;
                brw_PMDetail.ParamByName('ID').Value      := qry_LogsSHIRTID.Value;
                brw_PMDetail.ParamByName('SPRINT').Value  := qry_LogsSPRINT.Value;
                brw_PMDetail.ParamByName('SIZE').Value    := qry_LogsSIZE.Value;
                brw_PMDetail.ParamByName('FIT').Value     := qry_LogsFIT.Value;
                brw_PMDetail.Open();

                brw_PMDetail.First;
                while not brw_PMDetail.Eof do
                begin
                  qry_PB.Close;
                  qry_PB.SQL[2] := 'WHERE ID = :ID';
                  qry_PB.ParamByName('ID').Value  := brw_PMDetailID.Value;
                  qry_PB.Open();

                  qry_PB.Edit;
                  qry_PBFINISHEDDATE.Value    := Now;
                  qry_PBDONE.Value            := True;
                  qry_PBDONEBYID.Value        := userid;
                  qry_PB.Post;
                  qry_PB.ApplyUpdates();

                  brw_PMDetail.Next;
                end;
              end;

              MessageDlg('Changes has been saved successfully!', mtInformation, [mbOK], 0);
              generate_logs;
              generate_pm;
            end;
          end;
        end;
      end;

    end;
  end;
end;

procedure Tf_PMBoard.EditOPSheetExecute(Sender: TObject);
begin
  with dm_PM do
  begin
    if brw_pmboard.RecordCount > 0 then
    begin
      brw_OPShirt.Close;
      brw_OPShirt.SQL[4] := 'WHERE JO_DETAIL.HEADERID = :ID AND JO_DETAIL.CANCELLED = FALSE';
      brw_OPShirt.ParamByName('ID').Value  := brw_pmboardJONO.Value;
      brw_OPShirt.Open();

      qry_PB.Close;
      qry_PB.SQL[2] := 'WHERE JONO = :JO AND SPRINT = :SPRINT AND CANCELLED = FALSE';
      qry_PB.ParamByName('JO').Value      := brw_pmboardJONO.Value;
      qry_PB.ParamByName('SPRINT').Value  := brw_pmboardSPRINT.Value;
      qry_PB.Open();

      qry_JO.Close;
      qry_JO.SQL[2] := 'WHERE JONO = :JONO AND CANCELLED = FALSE';
      qry_JO.ParamByName('JONO').Value  := brw_pmboardJONO.Value;
      qry_JO.Open();


      tb_OPDetail.Close;
      tb_OPDetail.Open;

      if qry_PB.RecordCount > 0 then
      begin
        qry_PB.First;
        while not qry_PB.Eof do
        begin
          tb_OPDetail.Append;
          tb_OPDetailID.Value       := qry_PBID.Value;
          tb_OPDetailSIZE.Value     := qry_PBSIZE.Value;
          tb_OPDetailFIT.Value      := qry_PBFIT.Value;
          tb_OPDetailQTY.Value      := qry_PBQTY.Value;
          tb_OPDetailFREE.Value     := qry_PBFREE.Value;
          tb_OPDetailUNIT.Value     := qry_PBUNIT.Value;
          tb_OPDetailREMARKS.Value  := qry_PBREMARKS.Value;
          tb_OPDetailID.Value       := qry_PBID.Value;
          tb_OPDetailSHIRT.Value    := qry_PBDESCRIPTION.Value;
          tb_OPDetailFABRIC.Value   := qry_PBFABRIC.Value;
          tb_OPDetailDETAILID.Value := qry_PBDETAILID.Value;
          tb_OPDetailPAPERSIZE.Value:= qry_PBPAPERSIZE.Value;
          tb_OPDetailSHIRTID.Value  := qry_PBSHIRTID.Value;
          tb_OPDetailFABRICID.Value := qry_PBFABRICID.Value;
          tb_OPDetailEMPID.Value    := qry_PBEMPID.Value;
          tb_OPDetailROLEID.Value   := qry_PBROLEID.Value;

          tb_OPDetail.Post;
          qry_PB.Next;
        end;
      end;

      tb_OPDetail.First;


      f_EditOPSheet   := Tf_EditOPSheet.Create(Self);
      f_EditOPSheet.scGPPageControl2.Tabs[0].Caption  := brw_pmboardSPRINT.Value + ' Sheeta';
      if f_EditOPSheet.ShowModal = mrOk then
      begin

        tb_OPDetail.First;
        while not tb_OPDetail.Eof do
        begin
          qry_PB.Close;
          if tb_OPDetailID.IsNull then
          qry_PB.SQL[2] := 'WHERE ID = 0'
          else
          begin
            qry_PB.SQL[2] := 'WHERE ID = :ID';
            qry_PB.ParamByName('ID').Value  := tb_OPDetailID.Value;
          end;
          qry_PB.Open();

          if tb_OPDetailID.IsNull then
          qry_PB.Append
          else
          qry_PB.Edit;

          qry_PBJONO.Value        := qry_JOJONO.Value;
          qry_PBSTARTDATE.Value   := Now;
          qry_PBDATEDUE.Value     := qry_JODUEDATE.Value;
          qry_PBSPRINT.Value      := brw_pmboardSPRINT.Value;
          qry_PBCANCELLED.Value   := False;
          qry_PBCREATEDBYID.Value := userid;
          qry_PBDETAILID.Value    := tb_OPDetailDETAILID.Value;
          qry_PBDONE.Value        := False;
          qry_PBPAPERSIZE.Value   := tb_OPDetailPAPERSIZE.Value;
          qry_PBEMPID.Value       := tb_OPDetailEMPID.Value;
          qry_PBROLEID.Value      := brw_pmboardROLEID.Value;
          qry_PBSHIRTID.Value     := tb_OPDetailSHIRTID.Value;
          qry_PBDESCRIPTION.Value := tb_OPDetailSHIRT.Value;
          qry_PBFABRICID.Value    := tb_OPDetailFABRICID.Value;
          qry_PBFABRIC.Value      := tb_OPDetailFABRIC.Value;
          qry_PBSIZE.Value        := tb_OPDetailSIZE.Value;
          qry_PBFIT.Value         := tb_OPDetailFIT.Value;
          qry_PBQTY.Value         := tb_OPDetailQTY.Value;
          qry_PBFREE.Value        := tb_OPDetailFREE.Value;
          qry_PBUNIT.Value        := tb_OPDetailUNIT.Value;
          qry_PBREMARKS.Value     := tb_OPDetailREMARKS.Value;
          if qry_PB.State = dsInsert then
          qry_PBREMQTY.Value      := tb_OPDetailQTY.Value;

          qry_PB.Post;
          qry_PB.ApplyUpdates();

          tb_OPDetail.Next;
        end;
      end;

      generate_pm;
    end;
  end;
end;

procedure Tf_PMBoard.EditProjectExecute(Sender: TObject);
begin
  with dm_PM do
  begin
    if brw_pmboard.RecordCount > 0 then
    begin
      qry_JO.Close;
      qry_JO.SQL[2] := 'WHERE JONO = :JONO AND CANCELLED = FALSE';
      qry_JO.ParamByName('JONO').Value  := brw_pmboardJONO.Value;
      qry_JO.Open();

      brw_OPShirt.Close;
      brw_OPShirt.SQL[4] := 'WHERE JO_DETAIL.HEADERID = :ID AND JO_DETAIL.CANCELLED = FALSE';
      brw_OPShirt.ParamByName('ID').Value  := qry_JOID.Value;
      brw_OPShirt.Open();

      qry_PB.Close;
      qry_PB.SQL[2] := 'WHERE JONO = :JO AND CANCELLED = FALSE';
      qry_PB.ParamByName('JO').Value  := qry_JOJONO.Value;
      qry_PB.Open();

      tb_OPDetail.Close;
      tb_OPDetail.Open;

      if qry_PB.RecordCount > 0 then
      begin
        qry_PB.First;
        while not qry_PB.Eof do
        begin
          tb_OPDetail.Append;
          tb_OPDetailID.Value       := qry_PBID.Value;
          tb_OPDetailSIZE.Value     := qry_PBSIZE.Value;
          tb_OPDetailFIT.Value      := qry_PBFIT.Value;
          tb_OPDetailQTY.Value      := qry_PBQTY.Value;
          tb_OPDetailFREE.Value     := qry_PBFREE.Value;
          tb_OPDetailUNIT.Value     := qry_PBUNIT.Value;
          tb_OPDetailREMARKS.Value  := qry_PBREMARKS.Value;
          tb_OPDetailID.Value       := qry_PBID.Value;
          tb_OPDetailSHIRT.Value    := qry_PBDESCRIPTION.Value;
          tb_OPDetailFABRIC.Value   := qry_PBFABRIC.Value;
          tb_OPDetailDETAILID.Value := qry_PBDETAILID.Value;
          tb_OPDetailPAPERSIZE.Value:= qry_PBPAPERSIZE.Value;
          tb_OPDetailSHIRTID.Value  := qry_PBSHIRTID.Value;
          tb_OPDetailFABRICID.Value := qry_PBFABRICID.Value;

          tb_OPDetail.Post;
          qry_PB.Next;
        end;
      end;

      tb_OPDetail.First;

      qry_JODetail.Close;
      qry_JODetail.SQL[2] := 'WHERE HEADERID = :ID AND CANCELLED = FALSE';
      qry_JODetail.ParamByName('ID').Value  := qry_JOID.Value;
      qry_JODetail.Open();


      f_OPSheet   := Tf_OPSheet.Create(Self);
      if f_OPSheet.ShowModal = mrOk then
      begin
        qry_JODetail.Edit;
        qry_JODetail.Post;
        qry_JODetail.ApplyUpdates();

        tb_OPDetail.First;
        while not tb_OPDetail.Eof do
        begin
          qry_PB.Close;
          if tb_OPDetailID.IsNull then
          qry_PB.SQL[2] := 'WHERE ID = 0'
          else
          begin
            qry_PB.SQL[2] := 'WHERE ID = :ID';
            qry_PB.ParamByName('ID').Value  := tb_OPDetailID.Value;
          end;
          qry_PB.Open();

          if tb_OPDetailID.IsNull then
          qry_PB.Append
          else
          qry_PB.Edit;

          qry_PBJONO.Value        := qry_JOJONO.Value;
          qry_PBSTARTDATE.Value   := Now;
          qry_PBDATEDUE.Value     := qry_JODUEDATE.Value;
          qry_PBSPRINT.Value      := 'LAYOUT/DESIGN';
          qry_PBCANCELLED.Value   := False;
          qry_PBCREATEDBYID.Value := userid;
          qry_PBDETAILID.Value    := tb_OPDetailDETAILID.Value;
          qry_PBDONE.Value        := False;
          qry_PBPAPERSIZE.Value   := tb_OPDetailPAPERSIZE.Value;
          qry_PBEMPID.Value       := empid;
          qry_PBROLEID.Value      := roleid;
          qry_PBSHIRTID.Value     := tb_OPDetailSHIRTID.Value;
          qry_PBDESCRIPTION.Value := tb_OPDetailSHIRT.Value;
          qry_PBFABRICID.Value    := tb_OPDetailFABRICID.Value;
          qry_PBFABRIC.Value      := tb_OPDetailFABRIC.Value;
          qry_PBSIZE.Value        := tb_OPDetailSIZE.Value;
          qry_PBFIT.Value         := tb_OPDetailFIT.Value;
          qry_PBQTY.Value         := tb_OPDetailQTY.Value;
          qry_PBFREE.Value        := tb_OPDetailFREE.Value;
          qry_PBUNIT.Value        := tb_OPDetailUNIT.Value;
          qry_PBREMARKS.Value     := tb_OPDetailREMARKS.Value;

          qry_PB.Post;
          qry_PB.ApplyUpdates();

          tb_OPDetail.Next;
        end;
      end;

      generate_pm;
    end;
  end;
end;

procedure Tf_PMBoard.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Timer1.Enabled  := False;
  Action  := caFree;
end;

procedure Tf_PMBoard.FormCreate(Sender: TObject);
begin
  ARedStyle            := TcxStyle.Create(Self);
  ARedStyle.Color      := clRed;

  AYellowStyle         := TcxStyle.Create(Self);
  AYellowStyle.Color   := clYellow;

  date_1.Date := StartOfTheMonth(Date);
  date_2.Date := Now;
  cmb_filter.ItemIndex := 0;

  role_ui;
  op_sheet_ui;
  user_rights;

  search;
  generate_pending;

  notif;
  //generate_pm;
  //generate_logs;
end;

procedure Tf_PMBoard.generate_done;
begin
  with dm_PM do
  begin

    brw_Emp.Close;
    brw_Emp.SQL[2]  := 'WHERE CANCELLED = FALSE';
    brw_Emp.Open();

    brw_PMDone.Close;
    if roleid < 6 then
    begin
      brw_PMDone.SQL[3]  := 'WHERE PM_BOARD.DONE = TRUE AND PM_BOARD.EMPID = :ID'
       +' AND JO_HEADER.CANCELLED = FALSE AND PM_BOARD.CANCELLED = FALSE';
      brw_PMDone.ParamByName('ID').Value     := empid;
    end
    else
    brw_PMDone.SQL[3]  := 'WHERE PM_BOARD.DONE = TRUE AND JO_HEADER.CANCELLED = FALSE AND PM_BOARD.CANCELLED = FALSE';
    brw_PMDone.Open();

    ds_sprint.DataSet := brw_PMDone;
    cxGridDBTableView1FINISHEDDATE.Visible  := True;
    cxGridDBTableView1.ViewData.Expand(True);
  end;
end;

procedure Tf_PMBoard.generate_logs;
begin
  with dm_PM do
  begin
     if scPageControl1.ActivePageIndex > 1 then
     begin
      brw_Logs.Close;
      if roleid < 6 then
      begin
        brw_Logs.SQL[4] := 'WHERE PM_LOGS.SPRINT = :SPRINT AND PM_LOGS.CANCELLED = FALSE AND PM_LOGS.EMPID = :EMPID AND PM_BOARD.CANCELLED = FALSE';
        brw_Logs.ParamByName('EMPID').Value     := dm_PM.empid;
      end
      else
        brw_Logs.SQL[4] := 'WHERE PM_LOGS.SPRINT = :SPRINT AND PM_LOGS.CANCELLED = FALSE AND PM_BOARD.CANCELLED = FALSE';
      brw_Logs.ParamByName('SPRINT').Value    := scPageControl1.Pages[scPageControl1.ActivePageIndex].Caption;
      brw_Logs.Open();

     end;
   cxGrid3DBBandedTableView1.ViewData.Expand(True);
  end;
end;

procedure Tf_PMBoard.generate_pending;
begin
  with dm_PM do
  begin
    if scPageControl1.ActivePageIndex = 0 then
    begin
      brw_Pending.Close;
      if roleid < 6 then
      begin
        brw_Pending.SQL[4]  := 'WHERE EMP.EMPID = :EMPID AND HEADER.LAYOUT = FALSE AND HEADER.CANCELLED = FALSE';
        brw_Pending.ParamByName('EMPID').Value  := dm_PM.empid;
      end
      else
      begin
        brw_Pending.SQL[4]  := 'WHERE HEADER.LAYOUT = FALSE AND HEADER.CANCELLED = FALSE';
      end;
      brw_Pending.Open();

      cxGridLevel1.GridView := cxGrid2DBTableView1;
      cxGrid2DBTableView1.ViewData.Expand(True);
    end;
  end;
end;

procedure Tf_PMBoard.generate_pm;
var sprint: string;
  pageid, userid: Integer;
begin
  with dm_PM do
  begin

    if scPageControl1.ActivePageIndex > 0 then
    begin
      sprint  := scPageControl1.Pages[scPageControl1.ActivePageIndex].Caption;
      pageid  := scPageControl1.ActivePageIndex;
      brw_pmboard.Close;
      if roleid < 6 then
      begin
        brw_pmboard.SQL[4]  := 'WHERE PM_BOARD.EMPID = :EMPID AND PM_BOARD.SPRINT = :SPRINT AND PM_BOARD.DONE = FALSE AND JO_HEADER.CANCELLED = FALSE  AND PM_BOARD.CANCELLED = FALSE';
        brw_pmboard.ParamByName('SPRINT').Value := sprint;
        brw_pmboard.ParamByName('EMPID').Value  := dm_PM.empid;
      end
      else
      begin
        brw_pmboard.SQL[4]  := 'WHERE PM_BOARD.SPRINT = :SPRINT AND PM_BOARD.DONE = FALSE AND JO_HEADER.CANCELLED = FALSE AND PM_BOARD.CANCELLED = FALSE';
        brw_pmboard.ParamByName('SPRINT').Value := sprint;
      end;
      brw_pmboard.Open();

      ds_sprint.DataSet := brw_pmboard;
      cxGridDBTableView1FINISHEDDATE.Visible  := False;
      cxGridLevel1.GridView := cxGridDBTableView1;
      cxGridDBTableView1.ViewData.Expand(True);
    end;
  end;
end;

procedure Tf_PMBoard.LayoutExecute(Sender: TObject);
begin
  create_layout(dm_PM.brw_PendingJONO.AsString);
end;

procedure Tf_PMBoard.load_workers;
begin
  with dm_PM do
  begin
    brw_Emp.Close;
    brw_Emp.SQL[2]  := 'WHERE CANCELLED = FALSE';
    brw_Emp.Open();

    tb_JOEmp.Close;
    tb_JOEmp.Open;

    tb_JOEmp.Append;
    tb_JOEmpROLEID.Value    := 1;
    tb_JOEmpROLE.Value      := 'ARTIST';
    if brw_Emp.Locate('ROLEID', tb_JOEmpROLEID.Value, []) then
    begin
      tb_JOEmpEMPID.Value     := brw_EmpID.Value;
      tb_JOEmpEMPNAME.Value   := brw_EmpEMPNAME.AsString;
    end;
    tb_JOEmp.Post;

    tb_JOEmp.Append;
    tb_JOEmpROLEID.Value    := 2;
    tb_JOEmpROLE.Value      := 'PRINTER OPERATOR';
    if brw_Emp.Locate('ROLEID', tb_JOEmpROLEID.Value, []) then
    begin
      tb_JOEmpEMPID.Value     := brw_EmpID.Value;
      tb_JOEmpEMPNAME.Value   := brw_EmpEMPNAME.AsString;
    end;
    tb_JOEmp.Post;

    tb_JOEmp.Append;
    tb_JOEmpROLEID.Value    := 3;
    tb_JOEmpROLE.Value      := 'CUTTER';
    if brw_Emp.Locate('ROLEID', tb_JOEmpROLEID.Value, []) then
    begin
      tb_JOEmpEMPID.Value     := brw_EmpID.Value;
      tb_JOEmpEMPNAME.Value   := brw_EmpEMPNAME.AsString;
    end;
    tb_JOEmp.Post;

    tb_JOEmp.Append;
    tb_JOEmpROLEID.Value    := 4;
    tb_JOEmpROLE.Value      := 'HEAT PRESS OPERATOR';
    if brw_Emp.Locate('ROLEID', tb_JOEmpROLEID.Value, []) then
    begin
      tb_JOEmpEMPID.Value     := brw_EmpID.Value;
      tb_JOEmpEMPNAME.Value   := brw_EmpEMPNAME.AsString;
    end;
    tb_JOEmp.Post;

    tb_JOEmp.Append;
    tb_JOEmpROLEID.Value    := 5;
    tb_JOEmpROLE.Value      := 'TAILOR';
    if brw_Emp.Locate('ROLEID', tb_JOEmpROLEID.Value, []) then
    begin
      tb_JOEmpEMPID.Value     := brw_EmpID.Value;
      tb_JOEmpEMPNAME.Value   := brw_EmpEMPNAME.AsString;
    end;
    tb_JOEmp.Post;
  end;
end;

procedure Tf_PMBoard.MaterialRequestExecute(Sender: TObject);
begin
  f_menu.FabRequestExecute(nil);
end;

procedure Tf_PMBoard.NewExecute(Sender: TObject);
var particulars: string;
 maxid: Integer;
begin
  with dm_PM do
  begin
    maxid := 0;

    brw_MaxJO.Close;
    brw_MaxJO.SQL[2]  := 'WHERE CANCELLED = FALSE';
    brw_MaxJO.Open();

    qry_JO.Close;
    qry_JO.SQL[2] := 'WHERE ID = 0';
    qry_JO.Open();

    qry_JO.Append;
    qry_JOLOGDATE.Value           := StrToDate(FormatDateTime('mm/dd/yyyy', Now));
    qry_JOCREATEDBYID.Value       := userid;
    qry_JOCREATEDDATETIME.Value   := Now;
    qry_JOCANCELLED.Value         := False;
    qry_JOPOSTED.Value            := False;
    qry_JORELEASED.Value          := False;
    qry_JOCLOSED.Value            := False;
    qry_JOLAYOUT.Value            := False;
    qry_JOJONO.Value              := brw_MaxJOID.Value +1;
    qry_JOGROSSAMNT.Value         := 0;
    qry_JODISCOUNT.Value          := 0;
    qry_JONETAMNT.Value           := 0;

    tb_JODetail.Close;
    tb_JODetail.Open;

    tb_InvReqDetail.Close;
    tb_InvReqDetail.Open;

    load_workers;

    f_JO  := Tf_JO.Create(Self);
    if f_JO.ShowModal = mrOk then
    begin
      qry_JOBALAMNT.Value := qry_JONETAMNT.Value - qry_JOPAIDAMNT.Value;
      qry_JO.Post;
      qry_JO.ApplyUpdates();

      particulars  := '';

      maxid := qry_JOID.Value;

      tb_JODetail.First;
      while not tb_JODetail.Eof do
      begin
        qry_JODetail.Close;
        qry_JODetail.SQL[2] := 'WHERE ID = 0';
        qry_JODetail.Open();

        qry_JODetail.Append;

        qry_JODetailHEADERID.Value      := maxid;
        qry_JODetailSHIRTID.Value       := tb_JODetailSHIRTID.Value;
        qry_JODetailDESCRIPTION.Value   := tb_JODetailDESCRIPTION.Value;
        qry_JODetailFABRICID.Value      := tb_JODetailFABRICID.Value;
        qry_JODetailFABRIC.Value        := tb_JODetailFABRIC.Value;
        qry_JODetailQTY.Value           := tb_JODetailQTY.Value;
        qry_JODetailFREE.Value          := tb_JODetailFREE.Value;
        qry_JODetailCOST.Value          := tb_JODetailCOST.Value;
        qry_JODetailUNIT.Value          := tb_JODetailUNIT.Value;
        qry_JODetailTOTALCOST.Value     := tb_JODetailTOTALCOST.Value;
        qry_JODetailCANCELLED.Value     := False;
        qry_JODetailREMARKS.Value       := tb_JODetailREMARKS.Value;

        if tb_JODetail.RecNo <> tb_JODetail.RecordCount then
        particulars := particulars + IntToStr(qry_JODetailQTY.Value + qry_JODetailFREE.Value) +' - '+ qry_JODetailDESCRIPTION.AsString + ' ('+qry_JODetailFABRIC.AsString+ ') ' + qry_JODetailSIZE.AsString  + ' '+qry_JODetailFIT.AsString + #13#10
        else
        particulars := particulars + IntToStr(qry_JODetailQTY.Value + qry_JODetailFREE.Value) +' - '+ qry_JODetailDESCRIPTION.AsString + ' ('+qry_JODetailFABRIC.AsString+ ') ' + qry_JODetailSIZE.AsString  + ' '+qry_JODetailFIT.AsString;

        qry_JODetail.Post;
        qry_JODetail.ApplyUpdates();

        tb_JODetail.Next;
      end;

      tb_JOEmp.First;
      while not tb_JOEmp.Eof do
      begin
        qry_WorkersDetails.Close;
        qry_WorkersDetails.SQL[2] := 'WHERE ID = 0';
        qry_WorkersDetails.Open();

        qry_WorkersDetails.Append;
        qry_WorkersDetailsHEADERID.Value  := qry_JOID.Value;
        qry_WorkersDetailsROLEID.Value    := tb_JOEmpROLEID.Value;
        qry_WorkersDetailsROLE.Value      := tb_JOEmpROLE.AsString;
        qry_WorkersDetailsEMPNAME.Value   := tb_JOEmpEMPNAME.AsString;
        qry_WorkersDetailsEMPID.Value     := tb_JOEmpEMPID.Value;
        qry_WorkersDetailsCANCELLED.Value := False;
        qry_WorkersDetails.Post;
        qry_WorkersDetails.ApplyUpdates();

        tb_JOEmp.Next;
      end;

      tb_InvReqDetail.First;

      while not tb_InvReqDetail.Eof do
      begin
        qry_JoCost.Close;
        qry_JoCost.SQL[2] := 'WHERE ID = 0';
        qry_JoCost.Open();

        qry_JoCost.Append;
        qry_JoCostHEADERID.Value         := qry_JOID.Value;
        qry_JoCostITEMID.Value           := tb_InvReqDetailITEMID.Value;
        qry_JoCostITEMDESC.Value         := tb_InvReqDetailITEMDESC.Value;
        qry_JoCostCOST.Value             := tb_InvReqDetailCOST.Value;
        qry_JoCostTOTALCOST.Value        := tb_InvReqDetailTOTALCOST.Value;
        qry_JoCostUNIT.Value             := tb_InvReqDetailUNIT.Value;
        qry_JoCostCANCELLED.Value        := False;
        qry_JoCostQTY.Value              := tb_InvReqDetailQTY.Value;

        qry_JoCost.Post;
        qry_JoCost.ApplyUpdates();
        tb_InvReqDetail.Next;
      end;

      upd_jo.Close;
      upd_jo.SQL[1] := 'SET SUMMARY = '''+particulars+'''';
      upd_jo.SQL[2] := 'WHERE ID = '+IntToStr(maxid);
      upd_jo.ExecSQL;

      search;
    end;
  end;
end;

procedure Tf_PMBoard.NewLogExecute(Sender: TObject);
begin
  with dm_PM do
  begin
    if (scPageControl1.ActivePageIndex < 7) and (scPageControl1.ActivePageIndex > 0) then
    begin
      if brw_pmboard.RecordCount > 0 then
      begin
        if brw_pmboardEMPID.Value <> empid then
        begin
          MessageDlg('You are not the assigned worker for this task!', mtError, [mbOK], 0);
          Exit;
        end;

        if MessageDlg('Continue to log current record?', mtInformation, [mbYes, mbNo], 0) = mrYes then
        begin

          f_LogTemp := Tf_LogTemp.Create(Self);
          with f_LogTemp do
          begin
            Caption := 'New Log';

            brw_Emp.Close;
            brw_Emp.SQL[2]  := 'WHERE USERID = :ID';
            brw_Emp.ParamByName('ID').Value := userid;
            brw_Emp.Open();

            brw_LogDone.Close;
            brw_LogDone.SQL[2]  := 'WHERE JONO = :JONO AND SHIRTID = :ID AND SPRINT = :SPRINT AND SIZE = :SIZE AND FIT = :FIT AND CANCELLED = FALSE';
            brw_LogDone.ParamByName('JONO').Value    := brw_pmboardJONO.Value;
            brw_LogDone.ParamByName('ID').Value      := brw_pmboardSHIRTID.Value;
            brw_LogDone.ParamByName('SPRINT').Value  := brw_pmboardSPRINT.Value;
            brw_LogDone.ParamByName('SIZE').Value    := brw_pmboardSIZE.Value;
            brw_LogDone.ParamByName('FIT').Value     := brw_pmboardFIT.Value;
            brw_LogDone.Open();

            txt_EmpName.Text                := brw_EmpEMPNAME.AsString;
            txt_desc.Text                   := brw_pmboardDESCRIPTION.AsString;
            txt_fabric.Text                 := brw_pmboardFABRIC.AsString;
            txt_size.Text                   := brw_pmboardSIZE.AsString;
            txt_fit.Text                    := brw_pmboardFIT.AsString;
            txt_unit.Text                   := brw_pmboardUNIT.AsString;

            qry_Logs.Close;
            qry_Logs.SQL[2]   := 'WHERE ID = 0';
            qry_Logs.Open();

            qry_Logs.Append;

            qry_LogsJONO.Value              := brw_pmboardJONO.Value;
            qry_LogsHEADERID.Value          := brw_pmboardID.Value;
            qry_LogsDETAILID.Value          := brw_pmboardDETAILID.Value;
            qry_LogsEMPID.Value             := empid;
            qry_LogsSPRINT.Value            := brw_pmboardSPRINT.Value;
            qry_LogsTOTALQTY.Value          := brw_pmboardTOTALQTY.Value;
            qry_LogsDONE.Value              := brw_LogDoneTOTAL.AsInteger;
            qry_LogsLOGDATE.Value           := Now;
            qry_LogsCANCELLED.Value         := False;
            qry_LogsCREATEDBYID.Value       := userid;
            qry_LogsCREATEDDATETIME.Value   := Now;
            qry_LogsSHIRTID.Value           := brw_pmboardSHIRTID.Value;
            qry_LogsFIT.Value               := brw_pmboardFIT.Value;
            qry_LogsSIZE.Value              := brw_pmboardSIZE.Value;

            if ShowModal = mrOk then
            begin
              if qry_LogsQTY.Value = 0 then
              begin
                MessageDlg('Qty to log should be above zero! Cannot proceed at the moment', mtError, [mbOK], 0);
                qry_Logs.Cancel;
                Exit;
              end;

              brw_CountLogs.Close;
              brw_CountLogs.SQL[2]  := 'WHERE HEADERID = :HEADERID AND CANCELLED = FALSE';
              brw_CountLogs.ParamByName('HEADERID').Value   := brw_pmboardID.Value;
              brw_CountLogs.Open();


              if brw_CountLogsCOUNT.Value = 0 then
              begin
                qry_PB.Close;
                qry_PB.SQL[2] := 'WHERE ID = :ID';
                qry_PB.ParamByName('ID').Value  := qry_LogsHEADERID.Value;
                qry_PB.Open();

                qry_PB.Edit;
                qry_PBSTARTDATE.Value    := Now;

                qry_PB.Post;
                qry_PB.ApplyUpdates();
              end;

              qry_Logs.Post;
              qry_Logs.ApplyUpdates();

              brw_PMDetail.Close;
              brw_PMDetail.SQL[2] := 'WHERE JONO = :JONO AND SHIRTID = :ID AND SPRINT = :SPRINT AND SIZE = :SIZE AND FIT = :FIT';
              brw_PMDetail.ParamByName('JONO').Value    := qry_LogsJONO.Value;
              brw_PMDetail.ParamByName('ID').Value      := qry_LogsSHIRTID.Value;
              brw_PMDetail.ParamByName('SPRINT').Value  := qry_LogsSPRINT.Value;
              brw_PMDetail.ParamByName('SIZE').Value    := qry_LogsSIZE.Value;
              brw_PMDetail.ParamByName('FIT').Value     := qry_LogsFIT.Value;
              brw_PMDetail.Open();

              brw_PMDetail.First;
              while not brw_PMDetail.Eof do
              begin

                qry_PB.Close;
                qry_PB.SQL[2] := 'WHERE ID = :ID';
                qry_PB.ParamByName('ID').Value  := brw_PMDetailID.Value;
                qry_PB.Open();

                qry_PB.Edit;
                qry_PBREMQTY.Value       := qry_LogsREMAINING.Value;
                qry_PB.Post;
                qry_PB.ApplyUpdates();

                brw_PMDetail.Next;
              end;


              if qry_LogsREMAINING.Value = 0 then
              begin

                brw_PMDetail.Close;
                brw_PMDetail.SQL[2] := 'WHERE JONO = :JONO AND SHIRTID = :ID AND SPRINT = :SPRINT AND SIZE = :SIZE AND FIT = :FIT AND CANCELLED = FALSE';
                brw_PMDetail.ParamByName('JONO').Value    := qry_LogsJONO.Value;
                brw_PMDetail.ParamByName('ID').Value      := qry_LogsSHIRTID.Value;
                brw_PMDetail.ParamByName('SPRINT').Value  := qry_LogsSPRINT.Value;
                brw_PMDetail.ParamByName('SIZE').Value    := qry_LogsSIZE.Value;
                brw_PMDetail.ParamByName('FIT').Value     := qry_LogsFIT.Value;
                brw_PMDetail.Open();

                brw_PMDetail.First;
                while not brw_PMDetail.Eof do
                begin
                  brw_Emp.Close;
                  brw_Emp.SQL[2]  := 'WHERE ID = :ID';
                  brw_Emp.ParamByName('ID').Value := brw_PMDetailEMPID.Value;
                  brw_Emp.Open();

                  qry_PB.Close;
                  qry_PB.SQL[2] := 'WHERE ID = :ID';
                  qry_PB.ParamByName('ID').Value  := brw_PMDetailID.Value;
                  qry_PB.Open();

                  qry_PB.Edit;
                  qry_PBFINISHEDDATE.Value    := Now;
                  qry_PBDONE.Value            := True;
                  if brw_PMDetailEMPID.Value = empid then
                  qry_PBDONEBYID.Value        := userid
                  else
                  qry_PBDONEBYID.Value        := brw_EmpUSERID.Value;
                  qry_PB.Post;
                  qry_PB.ApplyUpdates();

                  brw_PMDetail.Next;
                end;
              end;

              MessageDlg('Your work has been logged!', mtInformation, [mbOK], 0);
              generate_logs;
              generate_pm;
            end;
          end;
        end;
      end
      else
      MessageDlg('Please select record to log!', mtInformation, [mbOK], 0);
    end;
  end;
end;

procedure Tf_PMBoard.notif;
begin
  with dm_PM do
  begin
    qry_Notif.Close;
    qry_Notif.SQL[2]  := 'WHERE ID = 1';
    qry_Notif.Open();

    Timer1.Interval := qry_NotifINTERVAL.AsInteger * 10000;
    Timer1.Enabled  := qry_NotifENABLED.Value;
  end;
end;

procedure Tf_PMBoard.op_sheet_ui;
begin
  btnCreateLayout.Visible := True;
  btnOPEdit.Visible       := True;
  btnOPExport.Visible     := True;
  btnOPPrint.Visible      := True;
  btnMatRequest.Visible   := True;
  btnLogNew.Visible       := True;
  btnLogDelete.Visible    := True;
  btnCancelLayout.Visible    := False;

  cxGridDBTableView1SPRINT.Visible  :=  scPageControl1.ActivePageIndex = 7;

  if (scPageControl1.ActivePageIndex = 0) then
  begin
    btnCreateLayout.Visible := False;
    btnOPEdit.Visible       := False;
    btnOPExport.Visible     := False;
    btnOPPrint.Visible      := False;
    btnMatRequest.Visible   := False;
    btnLogNew.Visible       := False;
    btnLogDelete.Visible    := False;
    btnCancelLayout.Visible := False;
  end;

  if (scPageControl1.ActivePageIndex > 1) then
  begin
    btnCreateLayout.Visible := False;
    btnOPEdit.Visible       := False;
    btnOPExport.Visible     := False;
  end;

  if scPageControl1.ActivePageIndex = 7 then
  begin
    btnLogNew.Visible := False;
    Reassign.Enabled  := False;
  end
  else
  begin
    if dm_PM.roleid < 6 then
    begin
      Reassign.Enabled  := False;
    end
    else
    begin
      Reassign.Enabled  := True;
    end;
  end;

end;

procedure Tf_PMBoard.PrintExecute(Sender: TObject);
begin
  with dm_PM do
  begin
    if (brw_JO.RecordCount > 0) then
    begin
      qry_JO.Close;
      qry_JO.SQL[2] := 'WHERE ID = '+brw_JOID.AsString;
      qry_JO.Open();

      qry_JO.Edit;

      qry_JODetail.Close;
      qry_JODetail.SQL[2] := 'WHERE HEADERID = '+brw_JOID.AsString;
      qry_JODetail.Open();

      tb_JODetail.Close;
      tb_JODetail.Open;

      if qry_JODetail.RecordCount > 0 then
      begin
        qry_JODetail.First;
        while not qry_JODetail.Eof do
        begin
          tb_JODetail.Append;
          tb_JODetailID.Value           := qry_JODetailID.Value;
          tb_JODetailSHIRTID.Value      := qry_JODetailSHIRTID.Value;
          tb_JODetailDESCRIPTION.Value  := qry_JODetailDESCRIPTION.Value;
          tb_JODetailFABRICID.Value     := qry_JODetailFABRICID.Value;
          tb_JODetailFABRIC.Value       := qry_JODetailFABRIC.Value;
          tb_JODetailQTY.Value          := qry_JODetailQTY.Value;
          tb_JODetailFREE.Value         := qry_JODetailFREE.Value;
          tb_JODetailCOST.Value         := qry_JODetailCOST.Value;
          tb_JODetailUNIT.Value         := qry_JODetailUNIT.Value;
          tb_JODetailREMARKS.Value      := qry_JODetailREMARKS.Value;
          tb_JODetail.Post;

          qry_JODetail.Next;
        end;
      end;
      tb_JODetail.First;

      f_JO  := Tf_JO.Create(Self);
      f_JO.PrintExecute(Self);
    end;

  end;

end;

procedure Tf_PMBoard.PrintOPExecute(Sender: TObject);
var opjono, opheaderid, opempid: Integer;
  sprint: string;
begin
  with dm_PM do
  begin
    if scPageControl1.ActivePageIndex = 7 then
    begin
      opjono      := brw_PMDoneJONO.Value;
      opheaderid  := brw_PMDoneHEADERID.Value;
      sprint    := brw_PMDoneSPRINT.Value;
      opempid     := brw_PMDoneEMPID.Value;
    end
    else
    begin
      opjono      := brw_pmboardJONO.Value;
      opheaderid  := brw_pmboardHEADERID.Value;
      sprint    := brw_pmboardSPRINT.Value;
      opempid     := brw_pmboardEMPID.Value;
    end;

    if (brw_pmboard.RecordCount > 0) or (brw_PMDone.RecordCount > 0) then
    begin
      qry_JO.Close;
      qry_JO.SQL[2] := 'WHERE JONO = :JONO AND CANCELLED = FALSE';
      qry_JO.ParamByName('JONO').Value  := opjono;
      qry_JO.Open();

      qry_JODetail.Close;
      qry_JODetail.SQL[2] := 'WHERE HEADERID = :ID AND CANCELLED = FALSE';
      qry_JODetail.ParamByName('ID').Value  := opheaderid;
      qry_JODetail.Open();

      brw_PMDetail.Close;
      brw_PMDetail.SQL[2] := 'WHERE JONO = :JONO AND SPRINT = :SPRINT AND EMPID = :EMPID AND CANCELLED = FALSE';
      brw_PMDetail.ParamByName('JONO').Value    := opjono;
      brw_PMDetail.ParamByName('SPRINT').Value  := sprint; //scPageControl1.Pages[scPageControl1.ActivePageIndex].Caption;
      brw_PMDetail.ParamByName('EMPID').Value   := opempid;
      brw_PMDetail.Open();

      brw_PMDetail.First;


      tb_OPDetail.Close;
      tb_OPDetail.Open;
      brw_PMDetail.DisableControls;
      while not brw_PMDetail.Eof do
      begin
        tb_OPDetail.Append;
        tb_OPDetailSHIRT.Value      := brw_PMDetailDESCRIPTION.Value;
        tb_OPDetailFABRIC.Value     := brw_PMDetailFABRIC.Value;
        tb_OPDetailSIZE.Value       := brw_PMDetailSIZE.Value;
        tb_OPDetailFIT.Value        := brw_PMDetailFIT.Value;
        tb_OPDetailQTY.Value        := brw_PMDetailQTY.Value;
        tb_OPDetailFREE.Value       := brw_PMDetailFREE.Value;
        tb_OPDetailUNIT.Value       := brw_PMDetailUNIT.Value;
        tb_OPDetailREMARKS.Value    := brw_PMDetailREMARKS.Value;
        tb_OPDetailDETAILID.Value   := brw_PMDetailDETAILID.Value;
        tb_OPDetailEMPID.Value      := brw_PMDetailEMPID.Value;
        tb_OPDetailROLEID.Value     := brw_PMDetailROLEID.Value;
        tb_OPDetailPAPERSIZE.Value  := brw_PMDetailPAPERSIZE.Value;
        tb_OPDetail.Post;

        brw_PMDetail.Next;
      end;
      brw_PMDetail.EnableControls;

      f_OPSheet := Tf_OPSheet.Create(Self);
      f_OPSheet.PrintExecute(Self);
    end
    else
      MessageDlg('Nothing to print!', mtInformation, [mbOK], 0);
  end;
end;

procedure Tf_PMBoard.ReassignExecute(Sender: TObject);
begin
  with dm_PM do
  begin
    if MessageDlg('Continue to reassign to another worker?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      brw_Emp1.Close;
      brw_Emp1.SQL[2] := 'WHERE CANCELLED = FALSE';
      brw_Emp1.Open();

      qry_PB.Close;
      qry_PB.SQL[2] := 'WHERE ID = :ID';
      qry_PB.ParamByName('ID').Value  := brw_pmboardID.Value;
      qry_PB.Open();

      qry_PB.Edit;

      f_PBReassign  := Tf_PBReassign.Create(Self);
      f_PBReassign.Label1.Caption := qry_PBSPRINT.AsString;
      if f_PBReassign.ShowModal = mrOk then
      begin
        qry_PB.Post;
        qry_PB.ApplyUpdates();

        MessageDlg('Successfully reassigned to '+ f_PBReassign.cxDBLookupComboBox1.Text, mtInformation, [mbOK], 0);
        generate_pm;
        generate_logs;
      end;
    end;
  end;
end;

procedure Tf_PMBoard.ReleaseOPExecute(Sender: TObject);

function check_if_complete: Boolean;
var inc_count: Integer;
begin
  with dm_PM do
  begin
    Result := False;

    brw_PMDetail.Close;
    brw_PMDetail.SQL[2] := 'WHERE JONO = :JONO AND CANCELLED = FALSE';
    brw_PMDetail.ParamByName('JONO').Value  := brw_pmboardJONO.Value;
    brw_PMDetail.Open();

    inc_count := 0;
    if brw_PMDetail.RecordCount > 0 then
    begin
      brw_PMDetail.First;
      while not brw_PMDetail.Eof do
      begin
        if (brw_PMDetailPAPERSIZE.IsNull) or (brw_PMDetailPAPERSIZE.Value = 0) then
        inc_count := inc_count +1;
        if (brw_PMDetailSHIRTID.IsNull) or (brw_PMDetailSHIRTID.Value = 0) then
        inc_count := inc_count +1;
        if (brw_PMDetailSIZE.IsNull) then
        inc_count := inc_count +1;
        if (brw_PMDetailFIT.IsNull)then
        inc_count := inc_count +1;
        if (brw_PMDetailQTY.IsNull) or (brw_PMDetailQTY.Value = 0) then
        inc_count := inc_count +1;
        brw_PMDetail.Next;
      end;
    end;

    qry_JODetail.Close;
    qry_JODetail.SQL[2] := 'WHERE HEADERID = :ID AND CANCELLED = FALSE';
    qry_JODetail.ParamByName('ID').Value  := brw_pmboardHEADERID.Value;
    qry_JODetail.Open();

    if qry_JODetail.RecordCount > 0 then
    begin
      qry_JODetail.First;
      while not qry_JODetail.Eof do
      begin
        if (qry_JODetailLAYOUT.IsNull) then
        inc_count := inc_count +1;
        qry_JODetail.Next;
      end;
    end;

    if inc_count = 0 then
    Result  := True;
  end;
end;

var sprintcount: Integer;
exported: Boolean;
begin
  with dm_PM do
  begin
    qry_JO.Close;
    qry_JO.SQL[2]  := 'WHERE JONO = :JONO AND CANCELLED = FALSE';
    qry_JO.ParamByName('JONO').Value  := brw_pmboardJONO.Value;
    qry_JO.Open();

    if qry_JO.RecordCount > 0 then
    begin
      if not qry_JORELEASED.Value then
      begin
        if MessageDlg('Continue to export Operator Sheet?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin

          if qry_JO.RecordCount > 0 then
          begin
            if check_if_complete then
            begin
              qry_JO.Edit;
              qry_JORELEASED.Value          := True;
              qry_JOEXPORTEDDATETIME.Value  := Now;
              qry_JO.Post;
              qry_JO.ApplyUpdates();

              qry_WorkersDetails.Close;
              qry_WorkersDetails.SQL[2] := 'WHERE ROLEID > 0 AND HEADERID = :ID AND CANCELLED = FALSE';
              qry_WorkersDetails.ParamByName('ID').Value  := qry_JOID.Value;
              qry_WorkersDetails.Open();

              qry_WorkersDetails.First;
              while not qry_WorkersDetails.Eof do
              begin

                brw_PMDetail.Close;
                brw_PMDetail.SQL[2] := 'WHERE JONO = :JONO AND SPRINT = :SPRINT AND CANCELLED = FALSE';
                brw_PMDetail.ParamByName('JONO').Value  := brw_pmboardJONO.Value;
                brw_PMDetail.ParamByName('SPRINT').Value  := 'LAYOUT/DESIGN';
                brw_PMDetail.Open();

                brw_PMDetail.First;
                while not brw_PMDetail.Eof do
                begin
                  if qry_WorkersDetailsROLEID.Value = 1 then
                  begin
                    qry_Logs.Close;
                    qry_Logs.SQL[2] := 'WHERE ID = 0';
                    qry_Logs.Open();

                    qry_Logs.Append;
                    qry_LogsJONO.Value              := brw_PMDetailJONO.Value;
                    qry_LogsHEADERID.Value          := brw_PMDetailID.Value;
                    qry_LogsDETAILID.Value          := brw_PMDetailDETAILID.Value;
                    qry_LogsEMPID.Value             := empid;
                    qry_LogsSPRINT.Value            := 'LAYOUT/DESIGN';
                    qry_LogsTOTALQTY.Value          := brw_PMDetailQTY.Value + brw_PMDetailFREE.Value;
                    qry_LogsQTY.Value               := qry_LogsTOTALQTY.Value;
                    qry_LogsDONE.Value              := 0;
                    qry_LogsREMAINING.Value         := 0;
                    qry_LogsLOGDATE.Value           := Now;
                    qry_LogsCANCELLED.Value         := False;
                    qry_LogsCREATEDBYID.Value       := userid;
                    qry_LogsCREATEDDATETIME.Value   := Now;
                    qry_LogsSHIRTID.Value           := brw_PMDetailSHIRTID.Value;
                    qry_LogsFIT.Value               := brw_PMDetailFIT.Value;
                    qry_LogsSIZE.Value              := brw_PMDetailSIZE.Value;

                    qry_Logs.Post;
                    qry_Logs.ApplyUpdates();

                    if qry_LogsREMAINING.Value = 0 then
                    begin
                      qry_PB.Close;
                      qry_PB.SQL[2] := 'WHERE ID = :ID';
                      qry_PB.ParamByName('ID').Value  := qry_LogsHEADERID.Value;
                      qry_PB.Open();

                      qry_PB.Edit;
                      qry_PBREMQTY.Value          := 0;
                      qry_PBFINISHEDDATE.Value    := Now;
                      qry_PBDONE.Value            := True;
                      qry_PBDONEBYID.Value        := userid;
                      qry_PB.Post;
                      qry_PB.ApplyUpdates();
                    end;

                  end
                  else
                  begin

                    sprintcount := 0;
                    exported    := False;

                    repeat

                      qry_PB.Close;
                      qry_PB.SQL[2] := 'WHERE ID = 0';
                      qry_PB.Open();

                      qry_PB.Append;
                      qry_PBJONO.Value            := qry_JOJONO.Value;
                      qry_PBDATEDUE.Value         := qry_JODUEDATE.Value;
                      qry_PBDONE.Value            := False;
                      qry_PBPAPERSIZE.Value       := brw_PMDetailPAPERSIZE.Value;
                      qry_PBSHIRTID.Value         := brw_PMDetailSHIRTID.Value;
                      qry_PBDESCRIPTION.Value     := brw_PMDetailDESCRIPTION.Value;
                      qry_PBFABRICID.Value        := brw_PMDetailFABRICID.Value;
                      qry_PBFABRIC.Value          := brw_PMDetailFABRIC.Value;
                      qry_PBSIZE.Value            := brw_PMDetailSIZE.Value;
                      qry_PBFIT.Value             := brw_PMDetailFIT.Value;
                      qry_PBQTY.Value             := brw_PMDetailQTY.Value;
                      qry_PBREMQTY.Value          := brw_PMDetailQTY.Value;
                      qry_PBFREE.Value            := brw_PMDetailFREE.Value;
                      qry_PBUNIT.Value            := brw_PMDetailUNIT.Value;
                      qry_PBREMARKS.Value         := brw_PMDetailREMARKS.Value;

                      if qry_WorkersDetailsROLEID.Value = 2 then
                      begin
                        qry_PBSPRINT.Value        := 'PRINTING';
                        exported  := True;
                      end
                      else if qry_WorkersDetailsROLEID.Value = 4 then
                      begin
                        qry_PBSPRINT.Value          := 'HEAT PRESS';
                        exported  := True;
                      end
                      else if qry_WorkersDetailsROLEID.Value = 5 then
                      begin
                        qry_PBSPRINT.Value          := 'SEWING';
                        exported  := True;
                      end
                      else if qry_WorkersDetailsROLEID.Value = 3 then
                      begin
                        if sprintcount = 0 then
                        begin
                          qry_PBSPRINT.Value          := 'FIRST CUTTING';
                          Inc(sprintcount);
                        end
                        else
                        begin
                          qry_PBSPRINT.Value          := 'FINAL CUTTING';
                          exported := True;
                        end;
                      end;

                      qry_PBEMPID.Value           := qry_WorkersDetailsEMPID.Value;
                      qry_PBROLEID.Value          := qry_WorkersDetailsROLEID.Value;
                      qry_PBCANCELLED.Value       := False;
                      qry_PBCREATEDBYID.Value     := userid;
                      qry_PBCREATEDDATETIME.Value := Now;
                      qry_PBDETAILID.Value        := brw_PMDetailDETAILID.Value;
                      qry_PB.Post;
                      qry_PB.ApplyUpdates();

                    until exported;
                  end;

                  brw_PMDetail.Next;
                end;
                qry_WorkersDetails.Next;
              end;
              MessageDlg('Operator Sheet has been exported successfully!', mtInformation, [mbOK], 0);
              search;
              generate_pm;
              generate_logs;
            end
            else
              MessageDlg('Incomplete layout/design specifications cannot be exported!', mtInformation, [mbOK], 0);
          end;
        end;
      end
      else
      MessageDlg('This sheet was already exported!', mtWarning, [mbOK], 0);
    end
    else
      MessageDlg('Nothing to export!', mtInformation, [mbOK], 0);
  end;
end;

procedure Tf_PMBoard.role_ui;
var I: Integer;
begin
  if dm_PM.roleid < 6 then
  begin
    pan_JO.Visible          := False;
  end
  else
  begin
    pan_JO.Visible          := True;
  end;

  scPageControl1.ActivePageIndex  := 0;
end;

procedure Tf_PMBoard.scPageControl1Change(Sender: TObject);
begin
  op_sheet_ui;
  if scPageControl1.ActivePageIndex = 7 then
    generate_done
  else if scPageControl1.ActivePageIndex = 0 then
    generate_pending
  else
  begin
    generate_pm;
    generate_logs;
  end;
end;

procedure Tf_PMBoard.search;
begin
  with dm_PM do
  begin
    brw_JO.Close;
    if cmb_filter.Text <> '' then
    begin
      if cmb_filter.ItemIndex = 0 then
      begin
        brw_JO.SQL[3] := 'WHERE (JO_HEADER.LOGDATE BETWEEN :DATE1 AND :DATE2) AND JO_CLIENTS.NAME LIKE :NAME AND JO_HEADER.CANCELLED = FALSE';
        brw_JO.ParamByName('NAME').Value  := '%'+Trim(txt_search.Text)+'%';
        brw_JO.ParamByName('DATE1').Value := FormatDateTime('yyyy-mm-dd hh:nn', StartOfTheDay(date_1.Date));
        brw_JO.ParamByName('DATE2').Value := FormatDateTime('yyyy-mm-dd hh:nn', EndOfTheDay(date_2.Date));
      end
      else
      begin
        brw_JO.SQL[3] := 'WHERE (JO_HEADER.LOGDATE BETWEEN :DATE1 AND :DATE2) AND JO_HEADER.JONO LIKE :JONO AND JO_HEADER.CANCELLED = FALSE';
        brw_JO.ParamByName('JONO').Value  := '%'+Trim(txt_search.Text)+'%';
        brw_JO.ParamByName('DATE1').Value := FormatDateTime('yyyy-mm-dd hh:nn', StartOfTheDay(date_1.Date));
        brw_JO.ParamByName('DATE2').Value := FormatDateTime('yyyy-mm-dd hh:nn', EndOfTheDay(date_2.Date));
      end;
    end;
    brw_JO.Open();
  end;
end;

procedure Tf_PMBoard.Timer1Timer(Sender: TObject);
var msg : string;
  count: Integer;
begin
  with dm_PM do
  begin
    brw_PMNotif.Close;
    if roleid < 6 then
    begin
      brw_PMNotif.SQL[4]  := 'WHERE EMP.EMPID = :EMPID AND HEADER.LAYOUT = FALSE AND HEADER.CANCELLED = FALSE';
      brw_PMNotif.ParamByName('EMPID').Value  := dm_PM.empid;
    end
    else
    begin
      brw_PMNotif.SQL[4]  := 'WHERE HEADER.LAYOUT = FALSE AND HEADER.CANCELLED = FALSE';
    end;
    brw_PMNotif.Open();

    msg   := '';
    count := 0;
    if brw_PMNotif.RecordCount > 0 then
    begin
      brw_PMNotif.First;
      while not brw_PMNotif.Eof do
      begin
        msg := brw_PMNotifEMPNAME.AsString + ' - ' +brw_PMNotifCLIENTNAME.AsString + ' - JO NO. '+brw_PMNotifJONO.AsString + ': ('+IntToStr(brw_PMNotifQTY.Value + brw_PMNotifFREE.Value)+') '+brw_PMNotifDESCRIPTION.AsString + #13#10 + msg;
        Inc(count);
        if count < 20 then
        brw_PMNotif.Next
        else
        Break
      end;

      Timer1.Enabled := False;
      MessageDlg('Please be advised with the following pending Job Order(s):' +#13#10 +#13#10+msg, mtWarning, [mbOK], 0);
      Timer1.Enabled  := True;
    end;
  end;
end;

end.
