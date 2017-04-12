unit uMario;

interface

uses
  uMarioStateAPI;

type
  TMario = class
  private
    FoMarioState: IMarioStateAPI;
   function GetImage: integer;
  public
    constructor Create;
    function PegarCogumelo: IMarioStateAPI;
    function LevarDano: IMarioStateAPI;
    function NovaVida: IMarioStateAPI;
    property nImage: integer read GetImage;
  end;

implementation

uses
  uMarioSmall;

{ TMario }

constructor TMario.Create;
begin
  FoMarioState := TMarioSmall.Create;
end;

function TMario.GetImage: integer;
begin
  result := FoMarioState.nImage;
end;

function TMario.LevarDano: IMarioStateAPI;
begin
  FoMarioState := FoMarioState.LevarDano;
end;

function TMario.NovaVida: IMarioStateAPI;
begin
  FoMarioState := FoMarioState.NovaVida;
end;

function TMario.PegarCogumelo: IMarioStateAPI;
begin
  FoMarioState := FoMarioState.PegarCogumelo;
end;

end.
