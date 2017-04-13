unit uCalculateAttackKnight;

interface

uses
  uCalculateAttackStrategyAPI, uCharacterAPI, Math;

type
  TCalculateAttackKnight = class(TInterfacedObject, ICalculateAttackStrategyAPI)
  public
    function CalculateAttack(const poCharacter: ICharacterAPI): integer;
  end;

implementation

const
  nSTRENGTH_HINT_POINT = 0.7;

{ TCalculateAttackKnight }

function TCalculateAttackKnight.CalculateAttack(
  const poCharacter: ICharacterAPI): integer;
begin
  result := poCharacter.nStrength + Ceil(poCharacter.nStrength * nSTRENGTH_HINT_POINT);
end;

end.
