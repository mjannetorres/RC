unit fCashDisburse;

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
  cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxClasses,
  System.ImageList, Vcl.ImgList, acAlphaImageList, Vcl.StdCtrls, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridCustomView,
  cxGrid, cxTextEdit, cxMaskEdit, cxDropDownEdit, Vcl.ComCtrls, Vcl.ExtCtrls;

type
  Tf_CashDisburse = class(TForm)
    Panel2: TPanel;
    Label4: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    txt_search: TButtonedEdit;
    date_1: TDateTimePicker;
    date_2: TDateTimePicker;
    cmb_filter: TcxComboBox;
    cxGrid1: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    Panel3: TPanel;
    Button3: TButton;
    Button4: TButton;
    sCharImageList1: TsCharImageList;
    cxStyleRepository1: TcxStyleRepository;
    header_style: TcxStyle;
    select_style: TcxStyle;
    ds_disburse: TDataSource;
    cxGridDBTableView2NO: TcxGridDBColumn;
    cxGridDBTableView2PAYEE: TcxGridDBColumn;
    cxGridDBTableView2NOTES: TcxGridDBColumn;
    cxGridDBTableView2PAYMODE: TcxGridDBColumn;
    cxGridDBTableView2BANK: TcxGridDBColumn;
    cxGridDBTableView2CHECKNO: TcxGridDBColumn;
    cxGridDBTableView2CHECKDATE: TcxGridDBColumn;
    cxGridDBTableView2NETAMNT: TcxGridDBColumn;
    cxGridDBTableView2PREPAREDBY: TcxGridDBColumn;
    cxGridDBTableView2DATE: TcxGridDBColumn;
    procedure txt_searchRightButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure search;
  public
    { Public declarations }
  end;

var
  f_CashDisburse: Tf_CashDisburse;

implementation

{$R *.dfm}

uses dmPM, DateUtils;

procedure Tf_CashDisburse.FormShow(Sender: TObject);
begin
  date_1.Date := Now;
  date_2.Date := Now;
  cmb_filter.ItemIndex  := 0;
  txt_search.SetFocus;

  search;
end;

procedure Tf_CashDisburse.search;
begin
  with dm_PM do
  begin
    tb_CashDisburse.Close;
    tb_CashDisburse.Open;

    if cmb_filter.ItemIndex = 0 then
    begin
      brw_Payment.Close;
      brw_Payment.SQL[2]  := 'WHERE VENDOR LIKE :SEARCH AND (PAYDATE BETWEEN :DATE1 AND :DATE2) AND POSTED = TRUE AND CANCELLED = FALSE';
      brw_Payment.ParamByName('SEARCH').Value  := '%'+Trim(txt_search.Text)+'%';
      brw_Payment.ParamByName('DATE1').Value := FormatDateTime('yyyy-mm-dd', date_1.Date);
      brw_Payment.ParamByName('DATE2').Value := FormatDateTime('yyyy-mm-dd', date_2.Date);
      brw_Payment.Open();

      if brw_Payment.RecordCount > 0 then
      begin
        brw_Payment.First;
        while not brw_Payment.Eof do
        begin
          tb_CashDisburse.Append;
          tb_CashDisburseNO.Value           := brw_PaymentID.Value;
          tb_CashDisbursePAYEE.Value        := brw_PaymentVENDOR.AsString;
          tb_CashDisburseNOTES.Value        := brw_PaymentNOTES.AsString;
          tb_CashDisbursePAYMODE.Value      := brw_PaymentPAYMENTMODE.AsString;
          tb_CashDisburseBANK.Value         := brw_PaymentBANK.AsString;
          if not brw_PaymentCHECKNO.IsNull then
          tb_CashDisburseCHECKNO.Value      := brw_PaymentCHECKNO.Value;
          if not brw_PaymentCHECKDATE.IsNull then
          tb_CashDisburseCHECKDATE.Value    := brw_PaymentCHECKDATE.Value;
          tb_CashDisburseNETAMNT.Value      := brw_PaymentNETAMNT.Value;
          tb_CashDisburseDATE.Value         := brw_PaymentPAYDATE.Value;
          tb_CashDisburseDISBURSETYPE.Value := 'PAYMENT';

          brw_Users.Close;
          brw_Users.SQL[2]  := 'WHERE ID = :ID';
          brw_Users.ParamByName('ID').Value := brw_PaymentCREATEDBYID.Value;
          brw_Users.Open();

          tb_CashDisbursePREPAREDBY.Value :=  brw_UsersFULLNAME.AsString;
          tb_CashDisburse.Post;
          brw_Payment.Next;
        end;
        tb_CashDisburse.First;
      end;
    end
    else if cmb_filter.ItemIndex = 1 then
    begin
      brw_PettyCash.Close;
      brw_PettyCash.SQL[2]  := 'WHERE (PAYDATE BETWEEN :DATE1 AND :DATE2) AND POSTED = TRUE AND CANCELLED = FALSE';
      brw_PettyCash.ParamByName('DATE1').Value := FormatDateTime('yyyy-mm-dd', date_1.Date);
      brw_PettyCash.ParamByName('DATE2').Value := FormatDateTime('yyyy-mm-dd', date_2.Date);
      brw_PettyCash.Open();

      if brw_PettyCash.RecordCount > 0 then
      begin
        brw_PettyCash.First;
        while not brw_PettyCash.Eof do
        begin
          tb_CashDisburse.Append;
          tb_CashDisburseNO.Value           := brw_PettyCashID.Value;
          tb_CashDisburseNOTES.Value        := brw_PettyCashNOTES.AsString;
          tb_CashDisbursePAYMODE.Value      := 'CASH';
          tb_CashDisburseNETAMNT.Value      := brw_PettyCashNETAMNT.Value;
          tb_CashDisburseDATE.Value         := brw_PettyCashPAYDATE.Value;
          tb_CashDisburseDISBURSETYPE.Value := 'PETTY CASH';

          brw_Users.Close;
          brw_Users.SQL[2]  := 'WHERE ID = :ID';
          brw_Users.ParamByName('ID').Value := brw_PettyCashCREATEDBYID.Value;
          brw_Users.Open();

          tb_CashDisbursePREPAREDBY.Value :=  brw_UsersFULLNAME.AsString;
          tb_CashDisburse.Post;
          brw_PettyCash.Next;
        end;
        tb_CashDisburse.First;
      end;
    end
    else if cmb_filter.ItemIndex = 2 then
    begin
      brw_Expense.Close;
      brw_Expense.SQL[2]  := 'WHERE PAYEE LIKE :SEARCH AND (EXPENSEDATE BETWEEN :DATE1 AND :DATE2) AND POSTED = TRUE AND CANCELLED = FALSE';
      brw_Expense.ParamByName('SEARCH').Value  := '%'+Trim(txt_search.Text)+'%';
      brw_Expense.ParamByName('DATE1').Value := FormatDateTime('yyyy-mm-dd', date_1.Date);
      brw_Expense.ParamByName('DATE2').Value := FormatDateTime('yyyy-mm-dd', date_2.Date);
      brw_Expense.Open();

      if brw_Expense.RecordCount > 0 then
      begin
        brw_Expense.First;
        while not brw_Expense.Eof do
        begin
          tb_CashDisburse.Append;
          tb_CashDisburseNO.Value           := brw_ExpenseID.Value;
          tb_CashDisbursePAYEE.Value        := brw_ExpensePAYEE.AsString;
          tb_CashDisburseNOTES.Value        := brw_ExpenseNOTES.AsString;
          tb_CashDisbursePAYMODE.Value      := brw_ExpensePAYMENTMODE.AsString;
          tb_CashDisburseBANK.Value         := brw_ExpenseBANK.AsString;
          if not brw_PaymentCHECKNO.IsNull then
          tb_CashDisburseCHECKNO.Value      := brw_ExpenseCHECKNO.Value;
          if not brw_PaymentCHECKDATE.IsNull then
          tb_CashDisburseCHECKDATE.Value    := brw_ExpenseCHECKDATE.Value;
          tb_CashDisburseNETAMNT.Value      := brw_ExpenseNETAMOUNT.Value;
          tb_CashDisburseDATE.Value         := brw_ExpenseEXPENSEDATE.Value;
          tb_CashDisburseDISBURSETYPE.Value := 'EXPENSE';

          brw_Users.Close;
          brw_Users.SQL[2]  := 'WHERE ID = :ID';
          brw_Users.ParamByName('ID').Value := brw_ExpenseCREATEDBYID.Value;
          brw_Users.Open();

          tb_CashDisbursePREPAREDBY.Value :=  brw_UsersFULLNAME.AsString;
          tb_CashDisburse.Post;
          brw_Expense.Next;
        end;
        tb_CashDisburse.First;
      end;
    end;
  end;
end;

procedure Tf_CashDisburse.txt_searchRightButtonClick(Sender: TObject);
begin
  search;
end;

end.
