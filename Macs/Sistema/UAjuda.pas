unit UAjuda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, TFlatListBoxUnit, ImgList, StdCtrls;

type
  TFAjuda = class(TForm)
    MenuAjuda: TTreeView;
    Icons: TImageList;
    Label1: TLabel;
    Label2: TLabel;
    procedure MenuAjudaDblClick(Sender: TObject);
    procedure MenuAjudaCustomDrawItem(Sender: TCustomTreeView;
      Node: TTreeNode; State: TCustomDrawState; var DefaultDraw: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAjuda: TFAjuda;

implementation

uses Alxor32;

{$R *.dfm}

procedure TFAjuda.MenuAjudaDblClick(Sender: TObject);
begin
   case MenuAjuda.Selected.SelectedIndex of
     111: AbrirHelp(pagamentos); //Abrimos ajuda para pagamentos
     10: AbrirHelp(boletoregistro); //Abrimos ajuda para emissão de boletos com registro
     11: AbrirHelp(fluxograma); //Abrimos ajuda para fluxograma do sistema
     12: AbrirHelp(primeirospassos); //Abrimos ajuda para Primeiros Passos
     13: AbrirHelp(suporte);//Abrimos ajuda para uso do suporte chat e tickets
     21: AbrirHelp(cliente);//Abrimos ajuda para Clientes e Fornecedores
     22: AbrirHelp(usuario);//Abrimos ajuda para Cadastro e Configuração de Usuários
     31: AbrirHelp(estoque);//Abrimos ajuda para estoque
     32: AbrirHelp(correcaoestoque); //Abrimos ajuda para Entradas e Saídas para Correção
     331: AbrirHelp(fichatecnica);
     332: AbrirHelp(ordemproducao);
     41: AbrirHelp(aberturacaixa);
     42: AbrirHelp(lancamentocaixa);
     51: AbrirHelp(aberturabanco);
     52: AbrirHelp(lancamentobanco);
     6: AbrirHelp(contaspagar);
     7: AbrirHelp(contasreceber);
     81: AbrirHelp(pedidocompra);
     82: AbrirHelp(importacaoxml);//Abrimos ajuda para Importação de XML
     83: AbrirHelp(faturacompra);//Abrimos ajuda para Importação de XML
     841: AbrirHelp(escrituranfeentrada);
     842: AbrirHelp(nfeentrada);
     843: AbrirHelp(devolucaonfecompra);
     85: AbrirHelp(solicitacaocompra);
     91: AbrirHelp(pedidovenda);
     921: AbrirHelp(osmecanica);
     923: AbrirHelp(osassistencia);
     93: AbrirHelp(faturasaidas);
     941: AbrirHelp(nfesaida);
     942: AbrirHelp(nfeoutrassaidas);
     943: AbrirHelp(nfedevolucaovenda);
     944: AbrirHelp(nfse);
     95: AbrirHelp(expedicao);//Abrimos ajuda para Expedição
     961: AbrirHelp(orcamentonormal);
     962: AbrirHelp(orcamentomecanica);
     97: AbrirHelp(controlesaidaitens);
   else
       MessageDlg('Selecione um manual para poder abrir.', mtWarning, [mbOK], 0);
   end; 
end;

procedure TFAjuda.MenuAjudaCustomDrawItem(Sender: TCustomTreeView;
  Node: TTreeNode; State: TCustomDrawState; var DefaultDraw: Boolean);
begin
   if  Node.SelectedIndex = -1  then
       Sender.Canvas.Font.Style := Sender.Canvas.Font.Style+[ fsBold ]
   Else
       Sender.Canvas.Font.Style := Sender.Canvas.Font.Style+[ fsUnderline ];   
end;

end.
