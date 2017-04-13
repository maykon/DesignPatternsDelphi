unit uCalculateAttackWizard;

interface

uses
  uCalculateAttackStrategyAPI, uCharacterAPI, Math;

type
  TCalculateAttackWizard = class(TInterfacedObject, ICalculateAttackStrategyAPI)
  public
    function CalculateAttack(const poCharacter: ICharacterAPI): integer;
  end;

implementation

const
  nINTELLIGENCE_HINT_POINT = 0.5;

{ TCalculateAttackWizard }

function TCalculateAttackWizard.CalculateAttack(
  const poCharacter: ICharacterAPI): integer;
var
  nLuckRandom: double;
  nLuckFactor: integer;
  nStrengthFactor: integer;
begin
  nLuckRandom := (Random(100) + 1) / 100;
  nLuckFactor := Ceil(poCharacter.nIntelligence * (nINTELLIGENCE_HINT_POINT + nLuckRandom));
  nStrengthFactor := Ceil((poCharacter.nStrength / 2));
  result := poCharacter.nIntelligence + nLuckFactor + nStrengthFactor;
end;

end.
