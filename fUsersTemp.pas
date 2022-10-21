unit fUsersTemp;

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
  dxSkinXmas2008Blue, cxCheckBox, cxDBEdit, Vcl.ExtCtrls, Data.DB, cxTextEdit,
  Vcl.StdCtrls;

type
  Tf_UsersTemp = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Panel1: TPanel;
    Panel2: TPanel;
    Label3: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    txt_lastname: TcxDBTextEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    ds_Users: TDataSource;
    txt_user: TcxDBTextEdit;
    txt_pass: TcxDBTextEdit;
    Splitter1: TSplitter;
    chk_admin: TcxDBCheckBox;
    chk_reveal: TcxCheckBox;
    procedure chk_revealClick(Sender: TObject);
    procedure txt_userExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_UsersTemp: Tf_UsersTemp;

implementation

{$R *.dfm}

uses dmPM;

procedure Tf_UsersTemp.chk_revealClick(Sender: TObject);
begin
  if chk_reveal.Checked then
  txt_pass.Properties.EchoMode := eemNormal
  else
  txt_pass.Properties.EchoMode := eemPassword;
end;

procedure Tf_UsersTemp.FormShow(Sender: TObject);
begin
  txt_lastname.SetFocus;
  chk_reveal.Checked := False;
  txt_pass.Properties.EchoMode  := eemPassword;

end;

procedure Tf_UsersTemp.txt_userExit(Sender: TObject);
begin
  with dm_pm do
  begin
    brw_Users1.Close;
    brw_Users1.SQL[2]  := 'WHERE USERNAME = :NAME AND CANCELLED = FALSE';
    brw_Users1.ParamByName('NAME').Value   := Trim(qry_UsersUSERNAME.Value);
    brw_Users1.Open();

    if brw_Users1.RecordCount > 0 then
    begin
      if brw_Users1ID.Value <> qry_UsersID.Value then
      begin
        MessageDlg('Username is already taken. Pick different username.', mtError, [mbOK], 0);
        qry_UsersUSERNAME.Clear;
        txt_user.SetFocus;
      end;
    end;

  end;
end;

end.
