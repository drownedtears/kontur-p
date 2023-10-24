program server;

uses
  Forms,
  u_server in 'u_server.pas' {server_KP},
  Unit2 in 'Unit2.pas' {info},
  Unit3 in 'Unit3.pas' {users};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tserver_KP, server_KP);
  Application.CreateForm(Tinfo, info);
  Application.CreateForm(Tusers, users);
  Application.Run;
end.
