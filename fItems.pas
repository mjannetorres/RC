unit fItems;

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
  Vcl.StdCtrls, Vcl.ExtCtrls, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridCustomView, cxGrid, Vcl.ComCtrls,
  Vcl.ToolWin, scControls, cxGridBandedTableView, cxGridDBBandedTableView,
  frxBarcode;

type
  Tf_Items = class(TForm)
    Splitter1: TSplitter;
    scToolBar2: TscToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    Panel3: TPanel;
    ActionList1: TActionList;
    New: TAction;
    Edit: TAction;
    Delete: TAction;
    sCharImageList1: TsCharImageList;
    ds_items: TDataSource;
    cxStyleRepository1: TcxStyleRepository;
    header_style: TcxStyle;
    select_style: TcxStyle;
    cxGrid1DBTableView1CODE: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRIPTION: TcxGridDBColumn;
    cxGrid1DBTableView1ITEMTYPE: TcxGridDBColumn;
    cxGrid1DBTableView1FIRSTCOST: TcxGridDBColumn;
    cxGrid1DBTableView1MIDCOST: TcxGridDBColumn;
    cxGrid1DBTableView1LASTCOST: TcxGridDBColumn;
    cxGrid1DBTableView1HIGHESTCOST: TcxGridDBColumn;
    cxGrid1DBTableView1PURCHASEUNIT: TcxGridDBColumn;
    cxGrid1DBTableView1INVUNIT: TcxGridDBColumn;
    cxGrid1DBTableView1UNITQTY: TcxGridDBColumn;
    cxGrid1DBTableView1SELLINGPRICE: TcxGridDBColumn;
    cxGrid1DBTableView1ONHAND: TcxGridDBColumn;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1CODE: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1DESCRIPTION: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ITEMTYPE: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1INVUNIT: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1SELLINGPRICE: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ONHAND: TcxGridDBBandedColumn;
    cmb_filter: TComboBox;
    Label2: TLabel;
    txt_search: TButtonedEdit;
    Label1: TLabel;
    ToolButton4: TToolButton;
    Inventory: TAction;
    ToolButton5: TToolButton;
    BarCode: TAction;
    frxBarCodeObject1: TfrxBarCodeObject;
    cxGrid1DBBandedTableView1COST: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1MINQTY: TcxGridDBBandedColumn;
    ToolButton6: TToolButton;
    Print: TAction;
    ToolButton7: TToolButton;
    PeriodicInventory: TAction;
    cxGrid1DBBandedTableView1TOTAL: TcxGridDBBandedColumn;
    ToolButton8: TToolButton;
    InventoryCost: TAction;
    procedure NewExecute(Sender: TObject);
    procedure EditExecute(Sender: TObject);
    procedure DeleteExecute(Sender: TObject);
    procedure txt_searchRightButtonClick(Sender: TObject);
    procedure txt_searchKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure InventoryExecute(Sender: TObject);
    procedure BarCodeExecute(Sender: TObject);
    procedure cxGrid1DBBandedTableView1ONHANDStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure PrintExecute(Sender: TObject);
    procedure PeriodicInventoryExecute(Sender: TObject);
    procedure InventoryCostExecute(Sender: TObject);
  private
    { Private declarations }
    AYellowStyle: TcxStyle;
    ARedStyle: TcxStyle;
    procedure search;
  public
    { Public declarations }
  end;

var
  f_Items: Tf_Items;

implementation

{$R *.dfm}

uses dmPM, fItemsTemp, fInventory, fReports, fDateRange, DateUtils, frxClass;

{ Tf_Items }

procedure Tf_Items.BarCodeExecute(Sender: TObject);
begin
  f_Reports := Tf_Reports.Create(Self);
  f_Reports.rep_barcode.ShowReport();
end;

procedure Tf_Items.cxGrid1DBBandedTableView1ONHANDStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
  var stock_level, onhand: Real;
begin
  if ARecord.Values[cxGrid1DBBandedTableView1MINQTY.Index] = Null then
  stock_level := 0
  else
  stock_level := ARecord.Values[cxGrid1DBBandedTableView1MINQTY.Index];

  if ARecord.Values[cxGrid1DBBandedTableView1ONHAND.Index] = Null then
  onhand := 0
  else
  onhand := ARecord.Values[cxGrid1DBBandedTableView1ONHAND.Index];

  if (stock_level + 3 <= onhand) and (onhand > stock_level) then //((onhand - 3) = stock_level) then
  AStyle  :=  AYellowStyle
  else if (onhand < stock_level) then
  AStyle  := ARedStyle;
end;

procedure Tf_Items.DeleteExecute(Sender: TObject);
begin
  if MessageDlg('Do you want to delete this record?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    with dm_PM do
    begin
      qry_Items.Close;
      qry_Items.SQL[2] := 'WHERE ID = :ID';
      qry_Items.ParamByName('ID').Value  := brw_itemsID.Value;
      qry_Items.Open();

      qry_Items.Edit;
      qry_ItemsCANCELLED.Value       := True;
      qry_ItemsDELETEDBYID.Value     := userid;
      qry_ItemsDELETEDDATETIME.Value := Now;
      qry_Items.Post;
      qry_Items.ApplyUpdates();

      search;
    end;
  end;
end;

procedure Tf_Items.EditExecute(Sender: TObject);
begin
  with dm_PM do
  begin
    qry_Items.Close;
    qry_Items.SQL[2] := 'WHERE ID = :ID';
    qry_Items.ParamByName('ID').Value  := brw_itemsID.Value;
    qry_Items.Open();

    qry_Items.Edit;

    f_ItemsTemp  := Tf_ItemsTemp.Create(Self);
    f_ItemsTemp.Caption  := qry_ItemsDESCRIPTION.AsString;
    if f_ItemsTemp.ShowModal =  mrOk then
    begin
      qry_Items.Post;
      qry_Items.ApplyUpdates();

      search;
    end;
  end;
end;

procedure Tf_Items.FormCreate(Sender: TObject);
begin
  AYellowStyle         := TcxStyle.Create(Self);
  AYellowStyle.Color   := clYellow;

  ARedStyle         := TcxStyle.Create(Self);
  ARedStyle.Color   := clRed;

  cmb_filter.ItemIndex  := 0;
  search;
end;

procedure Tf_Items.InventoryCostExecute(Sender: TObject);
begin
  with dm_PM do
  begin

    f_DateRange := Tf_DateRange.Create(Self);
    f_DateRange.date_1.Date := StartOfTheMonth(Now);
    f_DateRange.date_2.Date := EndOfTheMonth(Now);

    if f_DateRange.ShowModal = mrOk then
    begin

      brw_InvCost.Close;
      brw_InvCost.SQL[3]  := 'WHERE (DETAILS.CREATEDDATETIME <= :DATE2) AND ITEM.CANCELLED = FALSE';
      brw_InvCost.ParamByName('DATE2').Value := FormatDateTime('yyyy-mm-dd hh:nn', EndOfTheDay(f_DateRange.date_2.Date));
      brw_InvCost.Open();

      f_Reports := Tf_Reports.Create(Self);
      TfrxMemoView(f_Reports.rep_invcost.FindObject('period')).Text  :=  ' As of '+DateToStr(f_DateRange.date_2.Date);

      f_Reports.rep_invcost.ShowReport();
      brw_InvCost.First;
    end;
  end;
end;

procedure Tf_Items.InventoryExecute(Sender: TObject);
begin
  f_Inventory  := Tf_Inventory.Create(Self);
  f_Inventory.Caption := dm_PM.brw_itemsDESCRIPTION.AsString;
  f_Inventory.ShowModal;
  search;
end;

procedure Tf_Items.NewExecute(Sender: TObject);
begin
 with dm_PM do
  begin
    qry_Items.Close;
    qry_Items.SQL[2] := 'WHERE ID = 0';
    qry_Items.Open();

    qry_Items.Append;
    qry_ItemsCANCELLED.Value       := False;
    qry_ItemsCREATEDBYID.Value     := userid;
    qry_ItemsCREATEDDATETIME.Value := Now;

    f_ItemsTemp  := Tf_ItemsTemp.Create(Self);
    f_ItemsTemp.Caption  := 'New Item';
    if f_ItemsTemp.ShowModal =  mrOk then
    begin
      qry_Items.Post;
      qry_Items.ApplyUpdates();

      search;
    end;
  end;
end;

procedure Tf_Items.PeriodicInventoryExecute(Sender: TObject);
begin
  with dm_PM do
  begin

    f_DateRange := Tf_DateRange.Create(Self);
    f_DateRange.date_1.Date := StartOfTheMonth(Now);
    f_DateRange.date_2.Date := EndOfTheMonth(Now);

    if f_DateRange.ShowModal = mrOk then
    begin
      tb_InvPeriodic.Close;
      tb_InvPeriodic.Open;

      brw_InvCount.Close;
      brw_InvCount.SQL[3]  := 'WHERE (DETAILS.CREATEDDATETIME < :DATE1) AND ITEM.CANCELLED = FALSE';
      brw_InvCount.ParamByName('DATE1').Value := FormatDateTime('yyyy-mm-dd hh:nn', StartOfTheDay(f_DateRange.date_1.Date));
      brw_InvCount.Open();

      brw_InvDetail.Close;
      brw_InvDetail.SQL[4]  := 'WHERE (INV_DETAILS.CREATEDDATETIME BETWEEN :DATE1 AND :DATE2) AND INV_ITEMS.CANCELLED = FALSE';
      brw_InvDetail.ParamByName('DATE1').Value := FormatDateTime('yyyy-mm-dd hh:nn', StartOfTheDay(f_DateRange.date_1.Date));
      brw_InvDetail.ParamByName('DATE2').Value := FormatDateTime('yyyy-mm-dd hh:nn', EndOfTheDay(f_DateRange.date_2.Date));
      brw_InvDetail.Open();

      brw_InvCount.DisableControls;

      brw_items.DisableControls;
      brw_items.First;

      while not brw_items.Eof do
      begin
        Application.ProcessMessages;

        brw_InvDetail.Filtered  := False;
        brw_InvDetail.Filter    := 'INVID = '+brw_itemsID.AsString;
        brw_InvDetail.Filtered  := True;

        if brw_InvDetail.RecordCount > 0 then
        begin
          brw_InvDetail.First;
          while not brw_InvDetail.Eof do
          begin
            tb_InvPeriodic.Append;
            tb_InvPeriodicINVID.Value           := brw_itemsID.Value;
            tb_InvPeriodicDESCRIPTION.Value     := brw_itemsDESCRIPTION.AsString;
            tb_InvPeriodicBALANCE.Value := 0;
            if brw_InvCount.Locate('INVID', brw_itemsID.Value, []) then
            tb_InvPeriodicBALANCE.Value         := brw_InvCountBALANCE.Value;
            tb_InvPeriodicCREATEDDATETIME.Value := brw_InvDetailCREATEDDATETIME.Value;
            tb_InvPeriodicSOURCE.Value          := brw_InvDetailSOURCECALC.Value;
            tb_InvPeriodicSOURCEID.Value        := brw_InvDetailSOURCEID.Value;
            tb_InvPeriodicCREATEDBY.Value       := brw_InvDetailCREATEDBYCALC.Value;
            tb_InvPeriodicIN.Value              := brw_InvDetailIN.Value;
            tb_InvPeriodicOUT.Value             := brw_InvDetailOUT.Value;

            tb_InvPeriodic.Post;
            brw_InvDetail.Next;
          end;
        end
        else
        begin
          tb_InvPeriodic.Append;
          tb_InvPeriodicINVID.Value           := brw_itemsID.Value;
          tb_InvPeriodicDESCRIPTION.Value     := brw_itemsDESCRIPTION.AsString;
          tb_InvPeriodicBALANCE.Value := 0;
          if brw_InvCount.Locate('INVID', brw_itemsID.Value, []) then
          tb_InvPeriodicBALANCE.Value         := brw_InvCountBALANCE.Value;
          tb_InvPeriodic.Post;
        end;

        brw_items.Next;
      end;

      brw_InvDetail.Filtered  := False;
      brw_items.EnableControls;
      brw_InvCount.EnableControls;

      tb_InvPeriodic.First;
      tb_InvPeriodic.IndexFieldNames := 'DESCRIPTION';

      f_Reports := Tf_Reports.Create(Self);
      TfrxMemoView(f_Reports.rep_PeriodicInv.FindObject('period')).Text  := DateToStr(f_DateRange.date_1.Date) + ' - '+DateToStr(f_DateRange.date_2.Date);

      f_Reports.rep_PeriodicInv.ShowReport();
      brw_items.First;
    end;
  end;
end;

procedure Tf_Items.PrintExecute(Sender: TObject);
begin
  f_Reports := Tf_Reports.Create(Self);
  f_Reports.rep_invitems.ShowReport();

  dm_PM.brw_items.First;
end;

procedure Tf_Items.search;
begin
  with DM_PM do
  begin
    brw_items.Close;
    if cmb_filter.ItemIndex = 0 then
    begin
      brw_items.SQL[2]   := 'WHERE CODE LIKE :CODE AND CANCELLED = FALSE';
      brw_items.ParamByName('CODE').Value :=  '%'+Trim(txt_search.Text)+'%';
    end
    else if cmb_filter.ItemIndex = 1 then
    begin
      brw_items.SQL[2]   := 'WHERE DESCRIPTION LIKE :DESC AND CANCELLED = FALSE';
      brw_items.ParamByName('DESC').Value :=  '%'+Trim(txt_search.Text)+'%';
    end
    else
    begin
      brw_items.SQL[2]   := 'WHERE INVUNIT LIKE :UNIT AND CANCELLED = FALSE';
      brw_items.ParamByName('UNIT').Value :=  '%'+Trim(txt_search.Text)+'%';
    end;
    brw_items.Open();
  end;
end;

procedure Tf_Items.txt_searchKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  search;
end;

procedure Tf_Items.txt_searchRightButtonClick(Sender: TObject);
begin
   search;
end;

end.
