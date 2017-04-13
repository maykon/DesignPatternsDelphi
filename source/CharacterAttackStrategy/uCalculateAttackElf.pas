unit uCalculateAttackElf;

interface

uses
  uCalculateAttackStrategyAPI, uCharacterAPI, Math;

type
  TCalculateAttackElf = class(TInterfacedObject, ICalculateAttackStrategyAPI)
  public
    function CalculateAttack(const poCharacter: ICharacterAPI): integer;
  end;

implementation

const
  nAGILITY_HINT_POINT = 0.6;

{ TCalculateAttackElf }

function TCalculateAttackElf.CalculateAttack(
  const poCharacter: ICharacterAPI): integer;
var
  nLuckRandom: double;
  nLuckFactor: integer;
begin
  nLuckRandom := (Random(100) + 1) /100;
  nLuckFactor := Ceil(poCharacter.nAgility * (nAGILITY_HINT_POINT + nLuckRandom));
  result := poCharacter.nAgility + nLuckFactor;
end;

end.
