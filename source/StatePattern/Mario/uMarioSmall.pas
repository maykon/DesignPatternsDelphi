unit uMarioSmall;

interface

uses
  uMarioBase, uMarioStateAPI;

type
  TMarioSmall = class(TMarioBase, IMarioStateAPI)
  public
    constructor Create;
    function PegarCogumelo: IMarioStateAPI; override;
    function LevarDano: IMarioStateAPI; override;
  end;

implementation

uses
  uMarioBig, uMarioDead;

const
  n_IDX_MARIO_SMALL = 0;

{ TMarioSmall }

constructor TMarioSmall.Create;
begin
  nImage := n_IDX_MARIO_SMALL;
end;

function TMarioSmall.LevarDano: IMarioStateAPI;
begin
  result := TMarioDead.Create;
end;

function TMarioSmall.PegarCogumelo: IMarioStateAPI;
begin
  result := TMarioBig.Create;
end;

end.
