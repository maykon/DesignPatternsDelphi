unit uCalculateAttackStrategyAPI;

interface

uses
  uCharacterAPI;

type
  ICalculateAttackStrategyAPI = interface
    function CalculateAttack(const poCharacter: ICharacterAPI): integer;
  end;

implementation

end.
