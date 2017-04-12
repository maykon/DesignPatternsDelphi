unit uMarioStateAPI;

interface

type
  TOnImageChange = procedure(const poSender: TObject; const nIdxImage: integer) of object;

  IMarioStateAPI = interface['{162CF130-D74A-4390-A6F8-58F99D2FA007}']
    function GetImage: integer;
    procedure SetImage(const pnImage: integer);
    property nImage: integer read GetImage write SetImage;
    function PegarCogumelo: IMarioStateAPI;
    function LevarDano: IMarioStateAPI;
    function NovaVida: IMarioStateAPI;
  end;

implementation

end.
