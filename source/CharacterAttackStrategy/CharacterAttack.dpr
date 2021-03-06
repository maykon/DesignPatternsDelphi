program CharacterAttack;

uses
  System.StartUpCopy,
  FMX.Forms,
  uCalculateAttackKnight in 'uCalculateAttackKnight.pas',
  uCalculateAttackStrategyAPI in 'uCalculateAttackStrategyAPI.pas',
  uCharacter in 'uCharacter.pas',
  uCharacterAPI in 'uCharacterAPI.pas',
  uFrmCharacterAttack in 'uFrmCharacterAttack.pas' {frmCharacterAttack},
  uCalculateAttackWizard in 'uCalculateAttackWizard.pas',
  uCalculateAttackElf in 'uCalculateAttackElf.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmCharacterAttack, frmCharacterAttack);
  Application.Run;
end.
