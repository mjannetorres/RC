unit fOPSheet;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinXmas2008Blue, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxDBLookupComboBox,
  cxDropDownEdit, cxClasses, System.Actions, Vcl.ActnList, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridCustomView,
  cxGrid, cxCheckBox, cxDBEdit, cxLookupEdit, cxDBLookupEdit, cxMemo,
  scControls, scGPFontControls, cxMaskEdit, cxCalendar, cxTextEdit, cxLabel,
  cxDBLabel, Vcl.StdCtrls, Vcl.ExtCtrls, cxGridBandedTableView,
  cxGridDBBandedTableView, cxButtonEdit, System.ImageList, Vcl.ImgList,
  acAlphaImageList, Vcl.ExtDlgs, frxClass, cxGroupBox, scGPPagers,
  cxImageComboBox, Vcl.Menus;

type
  Tf_OPSheet = class(TForm)
    Panel1: TPanel;
    btnSave: TButton;
    btnCancel: TButton;
    Panel3: TPanel;
    Label3: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBDateEdit2: TcxDBDateEdit;
    cxDBDateEdit3: TcxDBDateEdit;
    cxDBLabel1: TcxDBLabel;
    cxDBMemo1: TcxDBMemo;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    ds_JO: TDataSource;
    ds_Client: TDataSource;
    ds_OPDetail: TDataSource;
    ActionList1: TActionList;
    cxStyleRepository1: TcxStyleRepository;
    Header_style: TcxStyle;
    Band_Header: TcxStyle;
    Label2: TLabel;
    ds_emp: TDataSource;
    sCharImageList1: TsCharImageList;
    AddLayout: TAction;
    ViewLayout: TAction;
    SavePictureDialog1: TSavePictureDialog;
    btnPrint: TButton;
    Print: TAction;
    frxReport1: TfrxReport;
    scGPPageControl1: TscGPPageControl;
    scGPPageControlPage2: TscGPPageControlPage;
    cxGrid1: TcxGrid;
    scGPPageControl2: TscGPPageControl;
    scGPPageControlPage1: TscGPPageControlPage;
    grid_jodetail: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1SHIRTID: TcxGridDBColumn;
    cxGridDBTableView1FABRICID: TcxGridDBColumn;
    cxGridDBTableView1SIZE: TcxGridDBColumn;
    cxGridDBTableView1FIT: TcxGridDBColumn;
    cxGridDBTableView1QTY: TcxGridDBColumn;
    cxGridDBTableView1FREE: TcxGridDBColumn;
    cxGridDBTableView1UNIT: TcxGridDBColumn;
    cxGridDBTableView1REMARKS: TcxGridDBColumn;
    cxGridDBTableView1PRINT: TcxGridDBColumn;
    cxGridDBTableView1ICUTTING: TcxGridDBColumn;
    cxGridDBTableView1HEATOP: TcxGridDBColumn;
    cxGridDBTableView1FCUTTING: TcxGridDBColumn;
    cxGridDBTableView1SEWING: TcxGridDBColumn;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBTableView1Column2: TcxGridDBColumn;
    grid_jodetailDBBandedTableView1: TcxGridDBBandedTableView;
    grid_jodetailDBBandedTableView1SHIRTID: TcxGridDBBandedColumn;
    grid_jodetailDBBandedTableView1FABRICID: TcxGridDBBandedColumn;
    grid_jodetailDBBandedTableView1SIZE: TcxGridDBBandedColumn;
    grid_jodetailDBBandedTableView1FIT: TcxGridDBBandedColumn;
    grid_jodetailDBBandedTableView1QTY: TcxGridDBBandedColumn;
    grid_jodetailDBBandedTableView1UNIT: TcxGridDBBandedColumn;
    grid_jodetailDBBandedTableView1REMARKS: TcxGridDBBandedColumn;
    grid_jodetailDBBandedTableView1PAPERSIZE: TcxGridDBBandedColumn;
    cxGridLevel1: TcxGridLevel;
    ds_jodetail: TDataSource;
    ds_garment: TDataSource;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1DESCRIPTION: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1FABRIC: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1QTY: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1FREE: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1COST: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1UNIT: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1REMARKS: TcxGridDBBandedColumn;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBBandedTableView1FILENAME: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column1: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column2: TcxGridDBBandedColumn;
    PopupMenu1: TPopupMenu;
    Delete: TAction;
    Delete1: TMenuItem;
    ManageUI: TAction;
    procedure AddLayoutExecute(Sender: TObject);
    procedure ViewLayoutExecute(Sender: TObject);
    procedure grid_jodetailDBBandedTableView1Column1PropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure grid_jodetailDBBandedTableView1Column1PropertiesValidate(
      Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure grid_jodetailDBBandedTableView1Column2PropertiesValidate(
      Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure FormShow(Sender: TObject);
    procedure PrintExecute(Sender: TObject);
    procedure grid_jodetailDBBandedTableView1SHIRTIDPropertiesCloseUp(
      Sender: TObject);
    procedure cxGrid1DBBandedTableView1Column1PropertiesValidate(
      Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure cxGrid1DBBandedTableView1Column2PropertiesValidate(
      Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure DeleteExecute(Sender: TObject);
    procedure ManageUIExecute(Sender: TObject);
  private
    { Private declarations }
    function readonly(flag: Boolean): Boolean;
  public
    { Public declarations }
  end;

var
  f_OPSheet: Tf_OPSheet;

implementation

{$R *.dfm}

uses dmPM, fOPSheetViewer, fReports;

procedure Tf_OPSheet.AddLayoutExecute(Sender: TObject);
var newfilename: string;
begin
  if SavePictureDialog1.Execute then
  begin
    newfilename := dm_PM.map+'\JO'+ dm_PM.qry_JOID.AsString+'D'+dm_PM.qry_JODetailID.AsString +'DT'+FormatDateTime('mmddyyyyhhnnss', Now)+ExtractFileExt(SavePictureDialog1.FileName);
    if not FileExists(newfilename) then
    begin
      CopyFile(Pchar(SavePictureDialog1.FileName), Pchar(newfilename), False);
      dm_PM.qry_JODetail.Edit;
      dm_PM.qry_JODetailLAYOUT.Value     := newfilename;
      dm_PM.qry_JODetailFILENAME.Value   := ExtractFileName(SavePictureDialog1.FileName);
    end
    else
      raise Exception.Create('File already exists. Cannot overwrite.')
  end;
     // Image1.Picture.SaveToFile(SavePictureDialog1.FileName);
end;

procedure Tf_OPSheet.cxGrid1DBBandedTableView1Column1PropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  AddLayoutExecute(nil);
  ManageUIExecute(nil);
end;

procedure Tf_OPSheet.cxGrid1DBBandedTableView1Column2PropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  ViewLayoutExecute(nil);
  ManageUIExecute(nil);
end;

procedure Tf_OPSheet.DeleteExecute(Sender: TObject);
begin
  with dm_PM do
  begin
     if not tb_OPDetailID.IsNull then
     begin
       qry_PB.Close;
       qry_PB.SQL[2]  := 'WHERE ID = :ID';
       qry_PB.ParamByName('ID').Value := tb_OPDetailID.Value;
       qry_PB.Open();

       if qry_PB.RecordCount > 0 then
       begin
         qry_PB.Edit;
         qry_PBCANCELLED.Value        := True;
         qry_PBDELETEDBYID.Value      := userid;
         qry_PBDELETEDDATETIME.Value  := Now;
         qry_PB.Post;
         qry_PB.ApplyUpdates();
       end;
     end;
     tb_OPDetail.Delete;
  end;
end;

procedure Tf_OPSheet.FormShow(Sender: TObject);
begin
  with dm_PM do
  begin
    brw_Client.Close;
    brw_Client.SQL[2] := 'WHERE CANCELLED = FALSE';
    brw_Client.Open();

    btnPrint.Visible  := qry_JORELEASED.Value;
    readonly(qry_JORELEASED.Value);
    ManageUIExecute(nil);
  end;
end;

procedure Tf_OPSheet.grid_jodetailDBBandedTableView1Column1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  AddLayoutExecute(nil);
end;

procedure Tf_OPSheet.grid_jodetailDBBandedTableView1Column1PropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  AddLayoutExecute(nil);
end;

procedure Tf_OPSheet.grid_jodetailDBBandedTableView1Column2PropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  ViewLayoutExecute(nil);
end;

procedure Tf_OPSheet.grid_jodetailDBBandedTableView1SHIRTIDPropertiesCloseUp(
  Sender: TObject);
begin
  with dm_PM do
  begin
    if brw_OPShirt.Locate('ID', tb_OPDetailSHIRTID.Value, []) then
    begin
      tb_OPDetail.Edit;
      tb_OPDetailSHIRT.Value    := brw_OPShirtDESCRIPTION.Value;
      tb_OPDetailFABRIC.Value   := brw_OPShirtFABRIC.Value;
      tb_OPDetailFABRICID.Value := brw_OPShirtFABRICID.Value;
      tb_OPDetailUNIT.Value     := brw_OPShirtUNIT.Value;
      tb_OPDetail.Post;
    end;
  end;
end;

procedure Tf_OPSheet.ManageUIExecute(Sender: TObject);
var disable: Boolean;
begin
  with dm_PM do
  begin
    disable := dm_PM.qry_JODetail.Locate('LAYOUT', Null, []);
    disable := disable or( dm_PM.tb_OPDetail.RecordCount = 0);
    disable := disable or (dm_PM.tb_OPDetail.Locate('SHIRTID', Null, [])  or dm_PM.tb_OPDetail.Locate('SHIRTID', 0, []));
    disable := disable or (dm_PM.tb_OPDetail.Locate('SIZE', Null, []));
    disable := disable or (dm_PM.tb_OPDetail.Locate('FIT', Null, []));
    disable := disable or (dm_PM.tb_OPDetail.Locate('SIZE', Null, []));
    disable := disable or (dm_PM.tb_OPDetail.Locate('QTY', Null, [])  or dm_PM.tb_OPDetail.Locate('QTY', 0, []));
    disable := disable or (dm_PM.tb_OPDetail.Locate('PAPERSIZE', Null, [])  or dm_PM.tb_OPDetail.Locate('PAPERSIZE', 0, []));
    disable := disable or qry_JORELEASED.Value;

    btnSave.Enabled := not disable;
  end;
end;

procedure Tf_OPSheet.PrintExecute(Sender: TObject);
begin
  with dm_PM do
  begin
    if qry_JORELEASED.Value then
    begin
      qry_company.Close;
      qry_company.SQL[2]  := 'WHERE ID = 1';
      qry_company.Open();

      qry_JODetail.Close;
      qry_JODetail.SQL[2] := 'WHERE HEADERID = :ID AND CANCELLED = FALSE';
      qry_JODetail.ParamByName('ID').Value  := qry_JOID.Value;
      qry_JODetail.Open();

      qry_WorkersDetails.Close;
      qry_WorkersDetails.SQL[2] := 'WHERE HEADERID = :ID AND CANCELLED = FALSE';
      qry_WorkersDetails.ParamByName('ID').Value   := qry_JOID.Value;
      qry_WorkersDetails.Open();

      f_Reports := Tf_Reports.Create(Self);

      qry_WorkersDetails.DisableControls;
      if qry_WorkersDetails.Locate('ROLEID',  2, []) then
      TfrxMemoView(f_Reports.rep_OPSheet.FindObject('printer')).Text := qry_WorkersDetailsEMPNAME.AsString;
      if qry_WorkersDetails.Locate('ROLEID', 3, []) then
      TfrxMemoView(f_Reports.rep_OPSheet.FindObject('cutter')).Text := qry_WorkersDetailsEMPNAME.AsString;
      if qry_WorkersDetails.Locate('ROLEID', 4, []) then
      TfrxMemoView(f_Reports.rep_OPSheet.FindObject('heatpress')).Text := qry_WorkersDetailsEMPNAME.AsString;
      if qry_WorkersDetails.Locate('ROLEID', 5, []) then
      TfrxMemoView(f_Reports.rep_OPSheet.FindObject('tailor')).Text := qry_WorkersDetailsEMPNAME.AsString;
      if qry_WorkersDetails.Locate('ROLEID', 1, []) then
      TfrxMemoView(f_Reports.rep_OPSheet.FindObject('artist')).Text := qry_WorkersDetailsEMPNAME.AsString;

      f_Reports.rep_OPSheet.ShowReport();
      qry_WorkersDetails.EnableControls;
    end;
  end;
end;

function Tf_OPSheet.readonly(flag: Boolean): Boolean;
begin
  grid_jodetailDBBandedTableView1PAPERSIZE.Options.Editing  := not flag;
  cxGrid1DBBandedTableView1Column1.Options.Editing          := not flag;
  Delete.Visible                                            := not flag;

  result := not flag;
end;

procedure Tf_OPSheet.ViewLayoutExecute(Sender: TObject);
begin
  if dm_PM.qry_JODetailLAYOUT.Value <> '' then
  begin

    if FileExists(dm_PM.qry_JODetailLAYOUT.Value) then
    begin
      f_OPSheetViewer := Tf_OPSheetViewer.Create(Self);
      f_OPSheetViewer.Caption := dm_PM.qry_JODetailFILENAME.Value;
      with f_OPSheetViewer do
      begin
        lblDesc.Caption       := dm_PM.qry_JODetailDESCRIPTION.AsString;
        lblFabric.Caption     := dm_PM.qry_JODetailFABRIC.AsString;

        Image1.Picture.LoadFromFile(dm_PM.qry_JODetailLAYOUT.Value);
        ShowModal;
      end;
    end;
  end;
end;

end.
