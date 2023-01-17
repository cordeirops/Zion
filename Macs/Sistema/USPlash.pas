unit USPlash;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  jpeg, ExtCtrls, TFlatProgressBarUnit, StdCtrls, Grids, DBGrids, OleCtrls,
  DrLabel, frxpngimage, pngimage;    
type
  TFSplash = class(TForm)
    ImgBarra: TImage;
    LArquivos: TLabel;
    Label1: TLabel;
    LVERSAO: TLabel;
    Image1: TImage;                
    barra: TFlatProgressBar;
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  FSplash: TFSplash;

implementation

uses Alxor32, ULogoff, UDMMacs, UMenu, AlxMessage, UAcessBase, UDMFiscal,
  UDMPessoa, UDMGEOGRAFIA, UDMFinanc, UDMEstoque, UDMEntrada, UDmBanco,
  UDMCaixa, UDMConta, UDMSaida, UDmServ, UGerenciador;

{$R *.DFM}

end.
