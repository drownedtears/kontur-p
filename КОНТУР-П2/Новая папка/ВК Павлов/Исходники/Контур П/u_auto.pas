unit u_auto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XPMan, StdCtrls, Mask, ExtCtrls, Registry, Buttons, Menus;

type
  Tauto = class(TForm)
    password: TMaskEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    kours: TEdit;
    vzvod: TEdit;
    name: TEdit;
    registration: TBitBtn;
    enter: TBitBtn;
    inf_name: TLabel;
    inf_password: TLabel;
    BitBtn2: TBitBtn;
    Image1: TImage;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    procedure registrationClick(Sender: TObject);
    procedure enterClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N2Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  auto: Tauto;
  reg: TRegIniFile;

implementation

uses u_registr, u_info, Unit1, Unit2;


{$R *.dfm}

procedure Tauto.registrationClick(Sender: TObject);
begin
  auto.Hide;
  registr.Show;
end;

procedure Tauto.enterClick(Sender: TObject);
var adres: string;
begin
  adres:='system\Контур_П\'+kours.Text+'_курс\'+vzvod.Text+'_взвод';
  reg:=TRegIniFile.Create(adres);
  inf_name.Caption:=reg.ReadString(name.Text,'Имя','');
  inf_password.Caption:=reg.ReadString(name.Text,'Пароль','');
  if (inf_name.Caption<>'') and (inf_password.Caption=password.Text) then begin
    auto.Hide;
    info.Show;
    // заполнение данных
    info.inf_name.Caption:=reg.ReadString(name.Text,'Имя','');
    info.inf_kours.Caption:=reg.ReadString(name.Text,'Курс','');
    info.inf_vzvod.Caption:=reg.ReadString(name.Text,'Взвод','');
    info.inf_data.Caption:=reg.ReadString(name.Text,'Дата последнего сеанса',dateToStr(date));
    info.inf_data_first.Caption:=reg.ReadString(name.Text,'Дата создания учетной записи','');
    if (name.Text='Павлов А.Е.') then begin
      info.inf_level.Caption:='высший';
    end
    else begin
      info.inf_level.Caption:=reg.ReadString(name.Text,'Уровень доступа','');
    end;
    reg.Free;
  end
  else showmessage ('Пользователь не существует или пароль введён неверно...');
end;

procedure Tauto.BitBtn2Click(Sender: TObject);
begin
  auto.Close;
end;

procedure Tauto.FormClose(Sender: TObject; var Action: TCloseAction);
var F:tStringlist;
    inf: string;
    i: integer;
begin
  inf:=GetCurrentDir+'\Users.txt';
  F:= tstringlist.Create;
  if fileexists(inf) then
    F.LoadFromFile(inf);
  for i:=0 to F.Count-1 do begin
    if F.Strings[i]=info.inf_name.caption then
    F.Delete(i);
  end;
  F.SaveToFile(inf);
  //F.Free;
end;

procedure Tauto.N2Click(Sender: TObject);
begin
  Close;
end;

procedure Tauto.N4Click(Sender: TObject);
begin
  form1.Show;
end;

procedure Tauto.N5Click(Sender: TObject);
begin
  form2.show;
end;

end.
