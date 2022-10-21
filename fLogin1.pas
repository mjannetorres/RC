unit fLogin1;

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
  dxSkinXmas2008Blue, cxLabel, Vcl.StdCtrls, sButton, sEdit;

type
  Tf_Login1 = class(TForm)
    txt_username: TsEdit;
    txt_pwd: TsEdit;
    sButton1: TsButton;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    procedure sButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_Login1: Tf_Login1;

implementation

{$R *.dfm}

uses dmPM;

procedure Tf_Login1.sButton1Click(Sender: TObject);
begin
  with dm_PM do
  begin
     brw_Users.Close;
     brw_Users.SQL[2] := 'WHERE USERNAME = :USERNAME AND PASSWORD = :PASSWORD AND CANCELLED = FALSE';
     brw_Users.ParamByName('USERNAME').Value    := txt_username.Text;
     brw_Users.ParamByName('PASSWORD').Value    := txt_pwd.Text;
     brw_Users.Open();

     if brw_Users.RecordCount > 0 then
     begin
       admin    := brw_UsersADMINISTRATOR.Value;
       userid   := brw_UsersID.Value;
       user     := brw_UsersLASTNAME.AsString + ' '+brw_UsersFIRSTNAME.AsString + ' '+ brw_UsersMIDDLENAME.AsString;

       brw_Emp.Close;
       brw_Emp.SQL[2] := 'WHERE USERID = :ID AND CANCELLED = FALSE';
       brw_Emp.ParamByName('ID').Value  := userid;
       brw_Emp.Open();

       if brw_Emp.RecordCount > 0 then
       begin
         roleid := brw_EmpROLEID.Value;
         empid  := brw_EmpID.Value;
       end;

       Close;
     end
     else
     begin
       MessageDlg('Login error! No user matched.', mtError, [mbOK], 0);
       txt_username.SetFocus;
       txt_pwd.Clear;
     end;
  end;
end;

end.
