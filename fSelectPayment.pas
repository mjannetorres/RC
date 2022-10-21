unit fSelectPayment;

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
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxDBLookupComboBox,
  cxDropDownEdit, cxClasses, System.ImageList, Vcl.ImgList, acAlphaImageList,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridCustomView, cxGrid, scControls, scGPPagers, Vcl.StdCtrls, Vcl.ExtCtrls,
  cxContainer, cxGroupBox, cxRadioGroup, cxDBEdit, cxLabel, cxTextEdit, cxMemo,
  cxCheckBox, System.Actions, Vcl.ActnList, cxMaskEdit, cxCalendar;

type
  Tf_SelectPayment = class(TForm)
    Panel1: TPanel;
    btnOK: TButton;
    btnCancel: TButton;
    Panel2: TPanel;
    scGPPageControl1: TscGPPageControl;
    tab1: TscGPPageControlPage;
    sCharImageList1: TsCharImageList;
    Label3: TLabel;
    tab2: TscGPPageControlPage;
    tab3: TscGPPageControlPage;
    rad_paytype: TcxDBRadioGroup;
    ds_cashreg: TDataSource;
    cxLabel1: TcxLabel;
    lbl_AmntDueCash: TcxLabel;
    Splitter1: TSplitter;
    cxLabel3: TcxLabel;
    txt_cash: TcxDBTextEdit;
    cxLabel4: TcxLabel;
    lbl_AmntDueCard: TcxLabel;
    cxLabel6: TcxLabel;
    txt_card: TcxDBTextEdit;
    Splitter2: TSplitter;
    cxLabel7: TcxLabel;
    txt_cardholder: TcxDBTextEdit;
    cxLabel8: TcxLabel;
    txt_cardno: TcxDBTextEdit;
    cxLabel9: TcxLabel;
    txt_cardbank: TcxDBMemo;
    cxLabel10: TcxLabel;
    lbl_AmntDueCheck: TcxLabel;
    cxLabel12: TcxLabel;
    txt_check: TcxDBTextEdit;
    Splitter3: TSplitter;
    cxLabel13: TcxLabel;
    txt_checkpayee: TcxDBTextEdit;
    cxLabel14: TcxLabel;
    txt_checkno: TcxDBTextEdit;
    cxLabel15: TcxLabel;
    txt_checkbank: TcxDBMemo;
    chk_cash: TcxDBCheckBox;
    chk_check: TcxDBCheckBox;
    chk_card: TcxDBCheckBox;
    ActionList1: TActionList;
    ManageUI: TAction;
    cxLabel2: TcxLabel;
    TXT_CHECKDATE: TcxDBDateEdit;
    procedure FormShow(Sender: TObject);
    procedure scGPPageControl1ChangePage(Sender: TObject);
    procedure chk_cashClick(Sender: TObject);
    procedure chk_cashExit(Sender: TObject);
    procedure chk_cardClick(Sender: TObject);
    procedure chk_cardExit(Sender: TObject);
    procedure chk_checkClick(Sender: TObject);
    procedure chk_checkExit(Sender: TObject);
    procedure ManageUIExecute(Sender: TObject);
  private
    { Private declarations }
    procedure amount_due;
    procedure cash;
    procedure card;
    procedure check;
  public
   { Public declarations }
  end;

var
  f_SelectPayment: Tf_SelectPayment;

implementation

{$R *.dfm}

uses dmPM, fCashReg;

procedure Tf_SelectPayment.amount_due;
begin
  lbl_AmntDueCash.Caption := FormatCurr('###,###,##0.00', dm_PM.qry_CashRegNETAMNT.Value - dm_PM.qry_CashRegTOTALAMNT.Value);
  lbl_AmntDueCard.Caption := FormatCurr('###,###,##0.00', dm_PM.qry_CashRegNETAMNT.Value - dm_PM.qry_CashRegTOTALAMNT.Value);
  lbl_AmntDueCheck.Caption :=FormatCurr('###,###,##0.00', dm_PM.qry_CashRegNETAMNT.Value - dm_PM.qry_CashRegTOTALAMNT.Value);
end;

procedure Tf_SelectPayment.card;
begin
  with dm_PM do
  begin
    scGPPageControl1.Tabs[1].Enabled := ((qry_CashRegTOTALAMNT.Value) <= qry_CashRegNETAMNT.Value) and chk_card.Checked;
    tab2.Enabled := ((qry_CashRegTOTALAMNT.Value) <= qry_CashRegNETAMNT.Value) and chk_card.Checked;
    qry_CashRegCARD.Value  := ((qry_CashRegTOTALAMNT.Value) <= qry_CashRegNETAMNT.Value) and chk_card.Checked;

    if not chk_card.Checked  then
    begin
      qry_CashRegCARDAMNT.Clear;
      qry_CashRegCARDHOLDER.Clear;
      qry_CashRegCARDNO.Clear;
      qry_CashRegCARDBANK.Clear;
    end
    else
    begin
      scGPPageControl1.TabIndex := 1;
      txt_card.SetFocus;
    end;

    ManageUIExecute(nil);
  end;
end;

procedure Tf_SelectPayment.cash;
begin
  with dm_PM do
  begin

    scGPPageControl1.Tabs[0].Enabled := ((qry_CashRegTOTALAMNT.Value) <= qry_CashRegNETAMNT.Value) and chk_cash.Checked;
    tab1.Enabled := ((qry_CashRegTOTALAMNT.Value) <= qry_CashRegNETAMNT.Value) and chk_cash.Checked;
    qry_CashRegCASH.Value  := ((qry_CashRegTOTALAMNT.Value) <= qry_CashRegNETAMNT.Value) and chk_cash.Checked;

    if not chk_cash.Checked then
    qry_CashRegCASHAMNT.Clear
    else
    begin
      scGPPageControl1.TabIndex := 0;
      txt_cash.SetFocus;
    end;

    ManageUIExecute(nil);
  end;
end;

procedure Tf_SelectPayment.check;
begin
  with dm_PM do
  begin

    scGPPageControl1.Tabs[2].Enabled := ((qry_CashRegTOTALAMNT.Value) <= qry_CashRegNETAMNT.Value) and  chk_check.Checked;
    tab3.Enabled := ((qry_CashRegTOTALAMNT.Value) <= qry_CashRegNETAMNT.Value) and  chk_check.Checked;
    qry_CashRegCHECK.Value  := ((qry_CashRegTOTALAMNT.Value) <= qry_CashRegNETAMNT.Value) and  chk_check.Checked;

    if not chk_check.Checked then
    begin
      qry_CashRegCHECKAMNT.Clear;
      qry_CashRegCHECKNO.Clear;
      qry_CashRegCHECKPAYEE.Clear;
      qry_CashRegCHECKDATE.Clear;
      qry_CashRegCHECKBANK.Clear;
    end
    else
    begin
      scGPPageControl1.TabIndex := 2;
      txt_check.SetFocus;
    end;

    ManageUIExecute(nil);
  end;
end;

procedure Tf_SelectPayment.chk_cardClick(Sender: TObject);
begin
   card;
end;

procedure Tf_SelectPayment.chk_cardExit(Sender: TObject);
begin
  card;
end;

procedure Tf_SelectPayment.chk_cashClick(Sender: TObject);
begin
  cash;
end;

procedure Tf_SelectPayment.chk_cashExit(Sender: TObject);
begin
  cash;
end;

procedure Tf_SelectPayment.chk_checkClick(Sender: TObject);
begin
  check;
end;

procedure Tf_SelectPayment.chk_checkExit(Sender: TObject);
begin
  check;
end;


procedure Tf_SelectPayment.FormShow(Sender: TObject);
begin
  scGPPageControl1.TabIndex := 0;
  amount_due;
  ManageUIExecute(nil);
end;

procedure Tf_SelectPayment.ManageUIExecute(Sender: TObject);
var isvalid : Boolean;
begin
  with dm_PM do
  begin
    amount_due;
    f_CashReg.compute_total;

    tab1.Enabled  := qry_CashRegCASH.Value;
    tab2.Enabled  := qry_CashRegCARD.Value;
    tab3.Enabled  := qry_CashRegCHECK.Value;

    rad_paytype.Enabled :=  qry_CashRegSOURCE.Value = 'JO';

    txt_cash.Style.BorderColor   := $00121212;
    if qry_CashRegCASH.Value then
    begin
      if (qry_CashRegCASHAMNT.Value = 0) or (qry_CashRegCASHAMNT.IsNull) then
      txt_cash.Style.BorderColor  := clRed;
    end;

    txt_card.Style.BorderColor        := $00121212;
    txt_cardholder.Style.BorderColor  := $00121212;
    txt_cardno.Style.BorderColor      := $00121212;
    txt_cardbank.Style.BorderColor    := $00121212;
    if qry_CashRegCARD.Value then
    begin
      if (qry_CashRegCARDAMNT.Value = 0) or (qry_CashRegCARDAMNT.IsNull) then
      txt_card.Style.BorderColor        := clRed;

      if Trim(qry_CashRegCARDHOLDER.Value).IsEmpty then
      txt_cardholder.Style.BorderColor  := clRed;

      if Trim(qry_CashRegCARDNO.Value).IsEmpty then
      txt_cardno.Style.BorderColor      := clRed;

      if Trim(qry_CashRegCARDBANK.Value).IsEmpty then
      txt_cardbank.Style.BorderColor    := clRed;

    end;

    txt_check.Style.BorderColor        := $00121212;
    txt_checkpayee.Style.BorderColor   := $00121212;
    txt_checkno.Style.BorderColor      := $00121212;
    txt_checkbank.Style.BorderColor    := $00121212;
    txt_checkdate.Style.BorderColor    := $00121212;
    if qry_CashRegCHECK.Value then
    begin
      if (qry_CashRegCHECKAMNT.Value = 0) or (qry_CashRegCHECKAMNT.IsNull) then
      txt_check.Style.BorderColor        := clRed;
      if Trim(qry_CashRegCHECKPAYEE.Value).IsEmpty then
      txt_checkpayee.Style.BorderColor   := clRed;
      if Trim(qry_CashRegCHECKNO.Value).IsEmpty then
      txt_checkno.Style.BorderColor      := clRed;
      if Trim(qry_CashRegCHECKBANK.Value).IsEmpty then
      txt_checkbank.Style.BorderColor    := clRed;
      if qry_CashRegCHECKDATE.IsNull then
      txt_checkdate.Style.BorderColor    := clRed;
    end;

    if (txt_cash.Style.BorderColor = clRed) or (txt_card.Style.BorderColor = clRed) or (txt_cardholder.Style.BorderColor = clRed) or (txt_cardno.Style.BorderColor = clRed) or (txt_cardbank.Style.BorderColor = clRed) or (txt_check.Style.BorderColor = clRed) or (txt_checkpayee.Style.BorderColor = clRed) or (txt_checkno.Style.BorderColor = clRed) or (txt_checkbank.Style.BorderColor = clRed) or (txt_checkdate.Style.BorderColor = clRed) then
    isvalid := False
    else
    isvalid := True;

    if qry_CashRegPAYMENTTYPE.Value = 'D' then
    begin
      if (qry_CashRegTOTALAMNT.Value >0) and isvalid then
      btnOK.Enabled := True
      else
      btnOK.Enabled := False;
    end
    else if qry_CashRegPAYMENTTYPE.Value = 'FP' then
    begin
      if (qry_CashRegTOTALAMNT.Value >= qry_CashRegNETAMNT.Value) and isvalid then
      btnOK.Enabled := True
      else
      btnOK.Enabled := False;
    end
    else
      btnOK.Enabled := False;
  end;
end;

procedure Tf_SelectPayment.scGPPageControl1ChangePage(Sender: TObject);
begin
  ManageUIExecute(nil);
  if scGPPageControl1.TabIndex = 0 then
  begin
    if scGPPageControl1.Tabs[0].Enabled then
    txt_cash.SetFocus;
  end
  else if scGPPageControl1.ActivePage = tab2 then
  begin
    if scGPPageControl1.Tabs[1].Enabled then
    txt_card.SetFocus;
  end
  else if scGPPageControl1.ActivePage = tab3 then
  begin
    if scGPPageControl1.Tabs[2].Enabled then
    txt_check.SetFocus;
  end;
end;

end.
