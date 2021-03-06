unit uFrmCharacterAttack;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.Edit, FMX.StdCtrls, uCharacterAPI, uCalculateAttackStrategyAPI;

type
  TfrmCharacterAttack = class(TForm)
    edtTotalAttack: TEdit;
    lbCharacter: TLabel;
    rbKnight: TRadioButton;
    rbWizard: TRadioButton;
    rbElf: TRadioButton;
    lbStrength: TLabel;
    gbAttributes: TGroupBox;
    lbIntelligence: TLabel;
    lbAgility: TLabel;
    tbIntelligence: TTrackBar;
    tbAgility: TTrackBar;
    tbStrength: TTrackBar;
    btnCreateCharacter: TButton;
    btnAttack: TButton;
    lbTotalAttack: TLabel;
    procedure btnCreateCharacterClick(Sender: TObject);
    procedure btnAttackClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    FoCharacter: ICharacterAPI;
    function CriarCalculateAttackStrategy: ICalculateAttackStrategyAPI;
  end;

var
  frmCharacterAttack: TfrmCharacterAttack;

implementation

uses
  uCharacter, uCalculateAttackKnight, uCalculateAttackWizard, uCalculateAttackElf, Math;

{$R *.fmx}

procedure TfrmCharacterAttack.btnAttackClick(Sender: TObject);
begin
  edtTotalAttack.Text := EmptyStr;
  if not Assigned(FoCharacter) then
    Exit;
  FoCharacter.nAgility := Trunc(tbAgility.Value);
  FoCharacter.nIntelligence := Trunc(tbIntelligence.Value);
  FoCharacter.nStrength := Trunc(tbStrength.Value);
  edtTotalAttack.Text := IntToStr(FoCharacter.Attack);
end;

procedure TfrmCharacterAttack.btnCreateCharacterClick(Sender: TObject);
begin
  FoCharacter := TCharacter.Create(CriarCalculateAttackStrategy);
end;

function TfrmCharacterAttack.CriarCalculateAttackStrategy: ICalculateAttackStrategyAPI;
begin
  if rbWizard.IsChecked then
    result := TCalculateAttackWizard.Create
  else if rbElf.IsChecked then
    result := TCalculateAttackElf.Create
  else
    result := TCalculateAttackKnight.Create;
end;

procedure TfrmCharacterAttack.FormDestroy(Sender: TObject);
begin
  FoCharacter := nil;
end;

end.
