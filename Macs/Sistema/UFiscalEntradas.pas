unit UFiscalEntradas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPadraoFiscal, Buttons, StdCtrls, DrLabel, jpeg, ExtCtrls, Mask,
  ColorMaskEdit, EditFloat, ColorEditFloat, Grids, DBGrids, ComCtrls,
  FashionPanel, frxClass, TFlatComboBoxUnit, TFlatEditUnit,
  TFlatButtonUnit, TFlatPanelUnit;

type
  TFFiscalEntradas = class(TFPadraoFiscal)
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FFiscalEntradas: TFFiscalEntradas;

implementation

uses UMenu, UDMCaixa, UPedCompra;

{$R *.dfm}

procedure TFFiscalEntradas.FormActivate(Sender: TObject);
begin
	Caption:='Nota Fiscal de Entrada' ;
   If FMenu.XOutrosEnt=True Then
       Caption:='Nota Fiscal de Outras Operações';
   FMenu.XTipoFiscal := 'PEDC';       
	BitBtn3.Caption:='F5 - Salvar';
   EdChaveNFE.Text:=FMenu.XChaveNFe;//Jônatas 29/07/2013 - armazenar a chave da nota fiscal para a tela do fiscal e exibí-la
   XChaveFiscalNFeXml:=EdChaveNFE.Text;//Jônatas 29/07/2013 - armazenar a chave da nota fiscal para a tela do fiscal e exibí-la
   inherited;
     {if XImportNfe = 1 then//Jônatas 31/07/2013 - Comentado para não salvar automaticamente e evitar problemas na edição da nota(principalmente no edit DTSaidaEntrada)
     begin
        BitBtn3Click(Sender);
        Close;
     end;}
end;

procedure TFFiscalEntradas.FormCreate(Sender: TObject);
begin
  inherited;
   FMenu.XTIPOBOLTO:='PEDC';
end;

end.
