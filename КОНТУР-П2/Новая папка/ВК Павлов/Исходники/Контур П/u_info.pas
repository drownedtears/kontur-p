unit u_info;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Registry;

type
  Tinfo = class(TForm)
    Label4: TLabel;
    BitBtn1: TBitBtn;
    Panel1: TPanel;
    Label2: TLabel;
    Label5: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    Label6: TLabel;
    BitBtn2: TBitBtn;
    inf_name: TLabel;
    inf_kours: TLabel;
    inf_data: TLabel;
    inf_data_first: TLabel;
    inf_level: TLabel;
    inf_vzvod: TLabel;
    Label7: TLabel;
    Image1: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  info: Tinfo;
  reg: TRegIniFile;

implementation

uses u_auto, u_menu_1, u_menu_2, u_kontyr;


{$R *.dfm}

procedure Tinfo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  auto.Show;
end;

procedure Tinfo.BitBtn1Click(Sender: TObject);
  var adres: string;
begin
  adres:='system\Контур_П\'+auto.kours.Text+'_курс\'+auto.vzvod.Text+'_взвод';
  reg:=TRegIniFile.Create(adres);
  reg.WriteString(auto.name.text,'Дата последнего сеанса',DateToStr(date));
  menu_1.inf_level.Caption:=info.inf_level.Caption;
  menu_1.show;
  info.Hide;
  if inf_level.Caption='0' then begin
    menu_1.label11.Enabled:=true;
    menu_2.label2.Enabled:=false;
    menu_2.label3.Enabled:=false;
    menu_2.label6.Enabled:=false;
  end;
  if inf_level.Caption='1' then begin
    menu_1.label11.Enabled:=true;
    menu_2.label2.Enabled:=true;
    menu_2.label3.Enabled:=true;
    menu_2.label6.Enabled:=false;
  end;
  if inf_level.Caption='2' then begin
    menu_1.label11.Enabled:=true;
    menu_2.label2.Enabled:=true;
    menu_2.label3.Enabled:=true;
    menu_2.label6.Enabled:=true;
  end;
  if inf_level.Caption='3' then begin
    menu_1.label11.Enabled:=true;
    menu_2.label2.Enabled:=true;
    menu_2.label3.Enabled:=true;
    menu_2.label6.Enabled:=true;
  end;
  if inf_level.Caption='4' then begin
    menu_1.label11.Enabled:=true;
    menu_2.label2.Enabled:=true;
    menu_2.label3.Enabled:=true;
    menu_2.label6.Enabled:=true;
  end;
end;

procedure Tinfo.BitBtn2Click(Sender: TObject);
var reg: TRegIniFile;
    adres_users, adres: string;
    DialogForm: TForm;
    j: integer;
begin
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
//+----------------------------------------------------------------------------+
// Удаление пользователя из общего списка
  adres_users:= 'system\Контур_П\';
  reg:=TRegIniFile.Create(adres_users);
  reg.DeleteKey('Все пользователи',inf_name.Caption);
  reg.Free;
//+----------------------------------------------------------------------------+
// Удаления данных о пользователе
  adres:= 'system\Контур_П\'+inf_kours.Caption+'_курс'+'\'+inf_vzvod.Caption+'_взвод'+'\';
  reg:= TRegIniFile.Create(adres);
  reg.EraseSection(inf_name.Caption);
  reg.Free;
//+----------------------------------------------------------------------------+
  info.Close;
  end;
end;

end.
