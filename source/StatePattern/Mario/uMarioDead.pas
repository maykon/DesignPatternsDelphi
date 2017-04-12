unit uMarioDead;

interface

uses
  uMarioBase, uMarioStateAPI;

type
  TMarioDead = class(TMarioBase, IMarioStateAPI)
  public
    constructor Create;
    function PegarCogumelo: IMarioStateAPI; override;
    function LevarDano: IMarioStateAPI; override;
  end;

implementation

uses
 uMarioSmall;

const
  n_IDX_MARIO_DEAD = 2;

{ TMarioDead }

constructor TMarioDead.Create;
begin
  nImage := n_IDX_MARIO_DEAD;
end;

function TMarioDead.LevarDano: IMarioStateAPI;
begin
  result := Self;
end;

function TMarioDead.PegarCogumelo: IMarioStateAPI;
begin
  result := Self;
end;

end.

