unit u_server;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, CheckLst, XPMan, Buttons, ExtCtrls, FileCtrl, Menus, Registry;

type
  Tserver_KP = class(TForm)
    Label1: TLabel;
    CheckListBox1: TCheckListBox;
    Button1: TButton;
    XPManifest1: TXPManifest;
    Button2: TButton;
    BitBtn1: TBitBtn;
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Button3: TButton;
    ListBox1: TListBox;
    Button4: TButton;
    GroupBox2: TGroupBox;
    Memo1: TMemo;
    Button5: TButton;
    Timer1: TTimer;
    DirectoryListBox1: TDirectoryListBox;
    Label2: TLabel;
    MainMenu1: TMainMenu;
    Af1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N6: TMenuItem;
    Memo2: TMemo;
    N5: TMenuItem;
    procedure Button1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure CheckListBox1DblClick(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  server_KP: Tserver_KP;
  s: string;
  time: integer;
  adr: string;
  adres: string;
implementation

uses Unit2, Unit3;



{$R *.dfm}

procedure Tserver_KP.Button1Click(Sender: TObject);
var i:integer;
begin
  if Button1.Caption='Выделить всех' then begin
    for i:=0 to CheckListBox1.Items.Count - 1 do begin
      CheckListBox1.Checked[i]:=true;
    end;
    Button1.Caption:='Снять всех';
  end
  else begin
    for i:=0 to CheckListBox1.Items.Count - 1 do begin
      CheckListBox1.Checked[i]:=false;
    end;
    Button1.Caption:='Выделить всех';
  end;

end;

procedure Tserver_KP.BitBtn1Click(Sender: TObject);
var F1: textFile;
    i,n: integer;
    otpravka: boolean;
begin
  otpravka:=false;
  for i:=0 to CheckListBox1.Items.Count - 1 do begin
      if CheckListBox1.Checked[i]=true then begin
        if ListBox1.Items.Text<>'' then begin
          CreateDir(adres+'\admin\');
          adr:=adres+'\admin\'+ CheckListBox1.Items[i]+'.txt';
          AssignFile(F1,adr);
          Rewrite(F1);
          for n:=0 to ListBox1.Items.Count-1 do writeln(F1,ListBox1.Items[n]);
          CloseFile(F1);
          otpravka:=true;
        end;
      end;
  end;
  if (otpravka) then begin
    showmessage('Данные переданы успешно...');
    ListBox1.Clear;
    Edit1.Text:='';
    Edit2.Text:='';
  end
  else showmessage('Ошибка! Данные не переданы...');
end;

procedure Tserver_KP.Button2Click(Sender: TObject);
begin
    randomize;
    Edit1.Text:=IntToStr(random(9))+IntToStr(random(9))+IntToStr(random(9));
    Edit2.Text:=IntToStr(random(9))+IntToStr(random(9))+IntToStr(random(9));
end;

procedure Tserver_KP.Button3Click(Sender: TObject);
begin
  if (length(Edit1.Text)=3) and (length(Edit2.Text)=3) then begin
  ListBox1.Items.Add(Edit1.Text+'  '+Edit2.Text);
  end
  else begin
    showmessage('Проверьте правильность ввода данных');
  end;
end;

procedure Tserver_KP.Button4Click(Sender: TObject);
begin
  ListBox1.Items.Delete(ListBox1.Count-1);
end;

procedure Code(var text: string; password: string;
  decode: boolean);
var
  i, PasswordLength: integer;
  sign: shortint;
begin
  PasswordLength := length(password);
  if PasswordLength = 0 then Exit;
  if decode
    then sign := -1
    else sign := 1;
  for i := 1 to Length(text) do
    text[i] := chr(ord(text[i]) + sign *
      ord(password[i mod PasswordLength + 1]));
end;

procedure Tserver_KP.CheckListBox1DblClick(Sender: TObject);
var F: TSearchRec;
    Path: string;
    Attr: integer;
    i,j: integer;
begin
  for i:=0 to CheckListBox1.Count-1 do begin
  if CheckListBox1.Selected[i]=true then begin
    if (GroupBox2.Visible=false) then begin
      server_KP.Height:=server_KP.Height+200;
      GroupBox2.Show;
      Button5.Show;
    end
    else begin
      server_KP.Height:=server_KP.Height-200;
      GroupBox2.Hide;
      Button5.Hide;
    end;
    Path:=adres+'\info\'+CheckListBox1.Items[i]+'.txt';
    Attr:=faAnyFile;
    FindFirst(path,attr,f);
    if F.Name<>'' then begin
    memo1.Lines.LoadFromFile(adres+'\info\'+CheckListBox1.Items[i]+'.txt');
    s := Memo1.Text;
    code(s, 'pavlov', false);
    for j:=0 to 1 do begin
    code(s, 'pavlov', true);
    Memo1.Text := s;
    end;
  Memo1.Lines.Delete(Memo1.Lines.Count-1);
  end;
  end;
  end;
end;

procedure Tserver_KP.Button5Click(Sender: TObject);
begin
  server_KP.Height:=server_KP.Height-200;
  GroupBox2.Hide;
  Button5.Hide;
end;

procedure Tserver_KP.FormCreate(Sender: TObject);
var F: TStringList;
    i,j: integer;
    adres_reg, adres_users, full_name: string;
    reg, reg_users: TRegIniFile;
begin
  full_name:= copy(memo2.Lines[2],8,length(memo2.Lines[2])-8+1);
  if fileexists('Adres.txt') then begin
    Timer1.Enabled:=true;
    F:= tstringlist.Create;
    F.LoadFromFile('Adres.txt');
    adres:=F.Strings[0];
    if fileexists(adres+'\Users.txt') then begin
      CheckListBox1.Items.LoadFromFile(adres+'\Users.txt');
      time:=FileAge(adres+'\Users.txt');
    end;
    adr:='Adres.txt';
    Label2.Caption:='Число пользователей:  '+inttostr(CheckListBox1.Items.Count);
  end
  else begin
  directorylistbox1.Show;
  end;
  server_KP.Height:=493;
  directorylistbox1.Left:=16;
  directorylistbox1.Top:=0;
  Label2.Caption:='Число пользователей:  '+inttostr(CheckListBox1.Items.Count);
//+----------------------------------------------------------------------------+
// Заполнение реестра по листбоксу
    for i:=0 to CheckListBox1.Count-1 do begin
      if fileexists(adres+'\info\'+CheckListBox1.Items[i]+'.txt') then begin
      memo2.Lines.LoadFromFile(adres+'\info\'+CheckListBox1.Items[i]+'.txt');
      s := Memo2.Text;
      code(s, 'pavlov', false);
      for j:=0 to 1 do begin
      code(s, 'pavlov', true);
      Memo2.Text := s;
      end;
      //+----------------------------------------------------------------------+
      // Запись в реестр:
      adres_users:='system\Контур_П_сервер\';
      reg:=TRegIniFile.Create(adres_users);
      reg.WriteString(copy(memo2.Lines[1],16,length(memo2.Lines[1])-16+1),'Имя',copy(memo2.Lines[1],16,length(memo2.Lines[1])-16+1));
      reg.WriteInteger(copy(memo2.Lines[1],16,length(memo2.Lines[1])-16+1),'Курс',StrToInt(copy(memo2.Lines[2],8,length(memo2.Lines[2])-8+1)));
      reg.WriteInteger(copy(memo2.Lines[1],16,length(memo2.Lines[1])-16+1),'Взвод',StrToInt(copy(memo2.Lines[3],9,length(memo2.Lines[3])-9+1)));
      reg.WriteString(copy(memo2.Lines[1],16,length(memo2.Lines[1])-16+1),'Пароль',copy(memo2.Lines[4],10,length(memo2.Lines[4])-10+1));
      reg.WriteString(copy(memo2.Lines[1],16,length(memo2.Lines[1])-16+1),'Уровень доступа',copy(memo2.Lines[7],19,length(memo2.Lines[7])-19+1));
      reg.WriteString(copy(memo2.Lines[1],16,length(memo2.Lines[1])-16+1),'Дата создания учетной записи',copy(memo2.Lines[6],30,length(memo2.Lines[6])-30+1));
      reg.WriteString(copy(memo2.Lines[1],16,length(memo2.Lines[1])-16+1),'Дата последнего входа',copy(memo2.Lines[5],26,length(memo2.Lines[5])-26+1));
      reg.WriteString('Все пользователи',copy(memo2.Lines[1],16,length(memo2.Lines[1])-16+1),copy(memo2.Lines[1],16,length(memo2.Lines[1])-16+1));
      reg.Free;
      end;
    end;
    // Конец записи в реестр
    //+------------------------------------------------------------------------+
end;

procedure Tserver_KP.Timer1Timer(Sender: TObject);
var i,j: integer;
    adres_users: string;
    reg: TRegIniFile;
begin
  if fileage(adres+'\Users.txt')<>time then begin
    if fileexists(adres+'\Users.txt') then
    CheckListBox1.Items.LoadFromFile(adres+'\Users.txt');
    time:=FileAge(adres+'\Users.txt');
    Label2.Caption:='число пользователей:  '+inttostr(CheckListBox1.Items.Count);
//+----------------------------------------------------------------------------+
// Заполнение реестра по листбоксу
    for i:=0 to CheckListBox1.Count-1 do begin
      if fileexists(adres+'\info\'+CheckListBox1.Items[i]+'.txt') then begin
      memo2.Lines.LoadFromFile(adres+'\info\'+CheckListBox1.Items[i]+'.txt');
      s := Memo2.Text;
      code(s, 'pavlov', false);
      for j:=0 to 1 do begin
      code(s, 'pavlov', true);
      Memo2.Text := s;
      end;
      //+----------------------------------------------------------------------+
      // Запись в реестр:
      adres_users:='system\Контур_П_сервер\';
      reg:=TRegIniFile.Create(adres_users);
      reg.WriteString(copy(memo2.Lines[1],16,length(memo2.Lines[1])-16+1),'Имя',copy(memo2.Lines[1],16,length(memo2.Lines[1])-16+1));
      reg.WriteInteger(copy(memo2.Lines[1],16,length(memo2.Lines[1])-16+1),'Курс',StrToInt(copy(memo2.Lines[2],8,length(memo2.Lines[2])-8+1)));
      reg.WriteInteger(copy(memo2.Lines[1],16,length(memo2.Lines[1])-16+1),'Взвод',StrToInt(copy(memo2.Lines[3],9,length(memo2.Lines[3])-9+1)));
      reg.WriteString(copy(memo2.Lines[1],16,length(memo2.Lines[1])-16+1),'Пароль',copy(memo2.Lines[4],10,length(memo2.Lines[4])-10+1));
      reg.WriteString(copy(memo2.Lines[1],16,length(memo2.Lines[1])-16+1),'Уровень доступа',copy(memo2.Lines[7],19,length(memo2.Lines[7])-19+1));
      reg.WriteString(copy(memo2.Lines[1],16,length(memo2.Lines[1])-16+1),'Дата создания учетной записи',copy(memo2.Lines[6],30,length(memo2.Lines[6])-30+1));
      reg.WriteString(copy(memo2.Lines[1],16,length(memo2.Lines[1])-16+1),'Дата последнего входа',copy(memo2.Lines[5],26,length(memo2.Lines[5])-26+1));
      reg.WriteString('Все пользователи',copy(memo2.Lines[1],16,length(memo2.Lines[1])-16+1),copy(memo2.Lines[1],16,length(memo2.Lines[1])-16+1));
      reg.Free;
      end;
    end;
    // Конец записи в реестр
    //+------------------------------------------------------------------------+
  end;
// Конец цикла поиска пользователей
//+----------------------------------------------------------------------------+
  if CheckListBox1.Items.Count=0 then begin
    GroupBox2.Hide;
    Button5.Hide;
    server_KP.Height:=493;
  end;
end;

procedure Tserver_KP.N4Click(Sender: TObject);
  var F: TStringList;
  dir: string;
begin
  if DirectoryListBox1.Visible=false then begin
  DirectoryListBox1.Show;
  DirectoryListBox1.Align:= alClient;
  N4.Checked:=true;
  end
  else begin
    N4.Checked:=false;
    Timer1.Enabled:=true;
    dir:=DirectoryListBox1.Directory;
    DirectoryListBox1.Hide;
    adres:=dir;
    F:= tstringlist.Create;
    F.Add(dir);
    F.SaveToFile('Adres.txt');
    if fileexists(adres+'\Users.txt') then begin
      CheckListBox1.Items.LoadFromFile(adres+'\Users.txt');
      time:=FileAge(adres+'\Users.txt');
    end;
  end;
end;

procedure Tserver_KP.N3Click(Sender: TObject);
begin
  close;
end;

procedure Tserver_KP.N6Click(Sender: TObject);
begin
  info.show;
end;

procedure Tserver_KP.N5Click(Sender: TObject);
var reg: TRegIniFile;
    adres_users: String;
    i: integer;
begin
  users.show;
  adres_users:='system\Контур_П_сервер\';
  reg:=TRegIniFile.Create(adres_users);
  reg.ReadSection('Все пользователи', users.CheckListBox1.Items);
  reg.Free;
  users.CheckListBox1.Items.Delete(0);
  users.Label3.Caption:='Число пользователей: '+IntToStr(users.CheckListBox1.Items.Count);
end;

procedure Tserver_KP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Timer1.Enabled:=false;
end;

end.
