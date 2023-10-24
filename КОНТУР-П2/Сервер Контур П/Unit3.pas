unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, XPMan, ExtCtrls, Registry, CheckLst;

type
  Tusers = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    XPManifest1: TXPManifest;
    Label1: TLabel;
    ListBox2: TListBox;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    CheckListBox1: TCheckListBox;
    Label3: TLabel;
    Image1: TImage;
    Button4: TButton;
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure CheckListBox1DblClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  users: Tusers;

implementation

uses u_server;

{$R *.dfm}


procedure Tusers.Button3Click(Sender: TObject);
var reg: TRegIniFile;
    adres_users: String;
begin
  adres_users:='system\Контур_П_сервер\';
  reg:=TRegIniFile.Create(adres_users);
  reg.ReadSection('Все пользователи', CheckListBox1.Items);
  reg.Free;
  CheckListBox1.Items.Delete(0);
  Label3.Caption:='Число пользователей: '+IntToStr(users.CheckListBox1.Items.Count);
end;

procedure Tusers.Button1Click(Sender: TObject);
var reg: TRegIniFile;
    adres_users: string;
    DialogForm: TForm;
    i,j,k: integer;
    check: boolean;
begin
  check:=false;
  for i:= 0 to CheckListBox1.Items.Count-1 do begin
    if CheckListBox1.Checked[i]=true then check:=true
  end;

  if check then begin
  dialogform:= CreateMessageDialog('Вы действительно хотите удалить пользователя', mtConfirmation, [mbYes,mbNo]);
  DialogForm.Caption:= 'Подтверждение удаления пользователя';
  for j := 0 to DialogForm.controlCount - 1 do begin
    with tButton(DialogForm.controls[j]) do begin
      if caption = '&Yes' then caption := 'Да';
      if caption = '&No' then caption := 'Нет';
    end;
  end;
  DialogForm.showmodal;

  if DialogForm.ModalResult=mrYes then begin
    adres_users:='system\Контур_П_сервер\';
    reg:=TRegIniFile.Create(adres_users);
    k:= 0;
    while (k <= CheckListBox1.Items.Count-1) do begin
      if CheckListBox1.Checked[k]=true then begin
        reg.DeleteKey('Все пользователи',CheckListBox1.Items[k]);
        reg.EraseSection(CheckListBox1.Items[k]);
        CheckListBox1.Items.Delete(k);
        ListBox2.Clear;
        k:=CheckListBox1.Items.Count;
      end;
      inc(k);
    end;
    reg.Free;
  end;
  end
  else showmessage('Пользователь не выбран...');
end;

procedure Tusers.CheckListBox1DblClick(Sender: TObject);
var reg: TRegIniFile;
    adres_users: String;
    i: integer;
begin
  adres_users:= 'system\Контур_П_сервер\';
  reg:=TRegIniFile.Create(adres_users);
  for i:= 0 to CheckListBox1.Items.Count- 1 do begin
    if CheckListBox1.Selected[i]= true then begin
      ListBox2.Items[0]:='Фамилия И.О. : '+reg.ReadString(CheckListBox1.Items[i],'Имя','');
      ListBox2.Items[1]:='Курс\Взвод : '+reg.ReadString(CheckListBox1.Items[i],'Курс','');
      ListBox2.Items[2]:='Взвод : '+reg.ReadString(CheckListBox1.Items[i],'Взвод','');
      ListBox2.Items[3]:='Пароль : '+reg.ReadString(CheckListBox1.Items[i],'Пароль','');
      ListBox2.Items[4]:='Дата последнего входа : '+reg.ReadString(CheckListBox1.Items[i],'Дата последнего входа','');
      ListBox2.Items[5]:='Дата создания пользователя : '+reg.ReadString(CheckListBox1.Items[i],'Дата создания учетной записи','');
      ListBox2.Items[6]:='Уровень доступа : '+reg.ReadString(CheckListBox1.Items[i],'Уровень доступа','');
    end;
  end;
end;

procedure Tusers.Button2Click(Sender: TObject);
begin
  close;
end;

procedure Tusers.Button4Click(Sender: TObject);
var i: integer;
begin
  if Button4.Caption='Выделить всех' then begin
    for i:=0 to CheckListBox1.Items.Count - 1 do begin
      CheckListBox1.Checked[i]:=true;
    end;
    Button4.Caption:='Снять всех';
  end
  else begin
    for i:=0 to CheckListBox1.Items.Count - 1 do begin
      CheckListBox1.Checked[i]:=false;
    end;
    Button4.Caption:='Выделить всех';
  end;
end;

end.
