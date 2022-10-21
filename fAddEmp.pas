unit fAddEmp;

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
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, System.Actions,
  Vcl.ActnList, System.ImageList, Vcl.ImgList, acAlphaImageList, cxClasses,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridCustomView, cxGrid, scControls, scGPPagers, Vcl.StdCtrls, Vcl.ExtCtrls,
  cxCheckBox, cxRadioGroup, cxImageComboBox;

type
  Tf_AddEmp = class(TForm)
    Panel1: TPanel;
    Label3: TLabel;
    txt_search: TButtonedEdit;
    scGPPageControl1: TscGPPageControl;
    scGPPageControlPage3: TscGPPageControlPage;
    grid_jodetail: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxStyleRepository1: TcxStyleRepository;
    Header_style: TcxStyle;
    select_style: TcxStyle;
    ds_emp: TDataSource;
    sCharImageList1: TsCharImageList;
    ActionList1: TActionList;
    cxGridDBTableView1EMPNAME: TcxGridDBColumn;
    cxGridDBTableView1ROLE: TcxGridDBColumn;
    cxGridDBTableView1SELECT: TcxGridDBColumn;
    Button1: TButton;
    Button2: TButton;
    Panel3: TPanel;
    rad_weekly: TcxRadioButton;
    rad_twice: TcxRadioButton;
    rad_monthly: TcxRadioButton;
    cxGridDBTableView1FREQUENCY: TcxGridDBColumn;
    cxGridDBTableView1MODEOFCOMP: TcxGridDBColumn;
    cxGridDBTableView1IDNO: TcxGridDBColumn;
    procedure txt_searchRightButtonClick(Sender: TObject);
    procedure txt_searchKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure search;
  public
    { Public declarations }
  end;

var
  f_AddEmp: Tf_AddEmp;

implementation

{$R *.dfm}

uses dmPM;

procedure Tf_AddEmp.FormShow(Sender: TObject);
begin
  rad_weekly.Checked  := True;
  search;
end;

procedure Tf_AddEmp.search;
var freq : string;
begin
  with dm_PM do
  begin
    if rad_weekly.Checked then
    freq  := 'WEEKLY'
    else if rad_twice.Checked then
    freq  := 'TWICE A MONTH'
    else
    freq  := 'MONTHLY';

    tb_Emp.Filtered := False;

    brw_EmpReg.Close;
    brw_EmpReg.SQL[3] := 'WHERE FREQUENCY = :FREQ AND (EMP_REG.LASTNAME LIKE :SEARCH OR EMP_REG.FIRSTNAME LIKE :SEARCH OR  EMP_REG.MIDDLENAME LIKE :SEARCH) AND EMP_REG.CANCELLED = FALSE';
    brw_EmpReg.ParamByName('SEARCH').Value  := '%'+Trim(txt_search.Text)+'%';
    brw_EmpReg.ParamByName('FREQ').Value    := freq;
    brw_EmpReg.Open();

    tb_Emp.Close;
    tb_Emp.Open;

    brw_EmpReg.First;
    while not brw_EmpReg.Eof do
    begin
      tb_Emp.Append;
      tb_EmpEMPNAME.Value     := brw_EmpRegLASTNAME.AsString + ', '+brw_EmpRegFIRSTNAME.AsString +' '+brw_EmpRegMIDDLENAME.AsString;
      tb_EmpROLE.Value        := brw_EmpRegTITLE.AsString;
      tb_EmpROLEID.Value      := brw_EmpRegROLEID.Value;
      tb_EmpSELECT.Value      := False;
      tb_EmpID.Value          := brw_EmpRegID.Value;
      tb_EmpIDNO.Value        := brw_EmpRegIDNO.Value;
      tb_EmpSSS.Value         := brw_EmpRegSSS.Value;
      tb_EmpPAGIBIG.Value     := brw_EmpRegPAGIBIG.Value;
      tb_EmpPHILHEALTH.Value  := brw_EmpRegPHILHEALTH.Value;
      tb_EmpRATE.Value        := brw_EmpRegRATE.Value;
      tb_EmpMODEOFCOMP.Value  := brw_EmpRegMODEOFCOMP.Value;
      tb_EmpFREQUENCY.Value   := brw_EmpRegFREQUENCY.Value;
      tb_Emp.Post;
      brw_EmpReg.Next;
    end;

    tb_Emp.First;
  end;
end;

procedure Tf_AddEmp.txt_searchKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  search;
end;

procedure Tf_AddEmp.txt_searchRightButtonClick(Sender: TObject);
begin
  search;
end;

end.
