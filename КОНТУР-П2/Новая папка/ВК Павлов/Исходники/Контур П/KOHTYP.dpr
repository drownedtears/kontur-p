program KOHTYP;

uses
  Forms,
  u_auto in 'u_auto.pas' {auto},
  u_registr in 'u_registr.pas' {registr},
  u_info in 'u_info.pas' {info},
  u_menu_1 in 'u_menu_1.pas' {menu_1},
  u_menu_2 in 'u_menu_2.pas' {menu_2},
  u_kontyr in 'u_kontyr.pas' {kontyr},
  Unit1 in 'Unit1.pas' {Form1},
  Unit2 in 'Unit2.pas' {Form2},
  Unit3 in 'Unit3.pas' {Form3};

//Unit1 in 'Unit1.pas' {Form1};

//u_instr in 'u_instr.pas' {instr};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Контур П-2';
  Application.CreateForm(Tauto, auto);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(Tkontyr, kontyr);
  Application.CreateForm(Tregistr, registr);
  Application.CreateForm(Tinfo, info);
  Application.CreateForm(Tmenu_1, menu_1);
  Application.CreateForm(Tmenu_2, menu_2);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  //Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
