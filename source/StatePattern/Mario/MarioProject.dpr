program MarioProject;

uses
  Vcl.Forms,
  uMarioApp in 'uMarioApp.pas' {frmMario},
  uMarioStateAPI in 'uMarioStateAPI.pas',
  uMarioSmall in 'uMarioSmall.pas',
  uMarioBig in 'uMarioBig.pas',
  uMarioDead in 'uMarioDead.pas',
  uMario in 'uMario.pas',
  uMarioBase in 'uMarioBase.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMario, frmMario);
  Application.Run;
end.
