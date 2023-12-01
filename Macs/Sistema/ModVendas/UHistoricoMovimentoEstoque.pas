unit UHistoricoMovimentoEstoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ColorMaskEdit, StdCtrls, ExtCtrls, Mask, Grids, DBGrids,
  ComCtrls, DBCtrls;

type
  TfrmHistoricoMovimentoEstoque = class(TForm)
    Label77: TLabel;
    EdCodBarra: TMaskEdit;
    RGFiltro: TRadioGroup;
    Label3: TLabel;
    EdCtrlInt: TEdit;
    Label4: TLabel;
    EDCodFab: TColorMaskEdit;
    Label15: TLabel;
    EDSimilar: TEdit;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label1: TLabel;
    DBGrid2: TDBGrid;
    Label2: TLabel;
    DBGrid5: TDBGrid;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBGrid3: TDBGrid;
    DBGrid4: TDBGrid;
    DBGrid6: TDBGrid;
    GroupBox1: TGroupBox;
    DBText2: TDBText;
    DBText1: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    procedure FormActivate(Sender: TObject);
    procedure EdCtrlIntKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EDCodFabKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EDSimilarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodBarraKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
    procedure LimpaCamposPesquisa;
    Procedure GeraHist;    
  public
    { Public declarations }

  end;

var
  frmHistoricoMovimentoEstoque: TfrmHistoricoMovimentoEstoque;
  XCOD_ESTOQUE: Integer;

implementation

uses UDMEstoque, Alxor32, UMenu, UDMMacs, DB;

{$R *.dfm}

procedure TfrmHistoricoMovimentoEstoque.LimpaCamposPesquisa;
Begin
   Try
       EdCodBarra.Text:='';
       EdCtrlInt.Text:='';
       EDCodFab.Text:='';
       EDSimilar.Text:='';
   Except

   End;
End;
procedure TfrmHistoricoMovimentoEstoque.FormActivate(Sender: TObject);
begin
   Try
       DMESTOQUE.TransacEstoque.CommitRetaining;
       DMMACS.Transaction.CommitRetaining;
       If (FMenu.XCodSlave > 0) Then
           FiltraTabela(DMESTOQUE.WSimilar, 'VWSIMILAR', 'COD_LOJA', '', ' (COD_LOJA='+FMenu.LCODLOJA.Caption+') AND (cod_estoque = ' + IntToStr(FMenu.XCodSlave) + ')');
       GeraHist;           
   Except
   End;
   
   LimpaCamposPesquisa;
end;

procedure TfrmHistoricoMovimentoEstoque.EdCtrlIntKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
	If Key=VK_Return
   Then Begin
       If RGFiltro.ItemIndex=0 Then
           FiltraTabela(DMESTOQUE.WSimilar, 'VWSIMILAR', 'COD_LOJA', '', ' (COD_LOJA='+FMenu.LCODLOJA.Caption+') AND (upper(CONTRINT) like upper('+#39+EdCtrlInt.Text+'%'+#39+'))and ((ATIVO = ''S'') or (ATIVO is null)) ORDER BY CONTRINT');
       If RGFiltro.ItemIndex=1 Then
           FiltraTabela(DMESTOQUE.WSimilar, 'VWSIMILAR', 'COD_LOJA', '', ' (COD_LOJA='+FMenu.LCODLOJA.Caption+') AND (upper(CONTRINT) like upper('+#39+EdCtrlInt.Text+'%'+#39+')) and (ATIVO = ''N'') ORDER BY CONTRINT');
       GeraHist;           
   End;
end;

procedure TfrmHistoricoMovimentoEstoque.EDCodFabKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
	If Key=VK_Return
   Then Begin
       If RGFiltro.ItemIndex=0 Then
           FiltraTabela(DMESTOQUE.WSimilar, 'VWSIMILAR', 'COD_LOJA', '', ' (COD_LOJA='+FMenu.LCODLOJA.Caption+') AND (upper(codfabricante) like upper('+#39+EDCodFab.Text+'%'+#39+'))and ((ATIVO = ''S'') or (ATIVO is null)) ORDER BY codfabricante');
       If RGFiltro.ItemIndex=1 Then
           FiltraTabela(DMESTOQUE.WSimilar, 'VWSIMILAR', 'COD_LOJA', '', ' (COD_LOJA='+FMenu.LCODLOJA.Caption+') AND (upper(codfabricante) like upper('+#39+EDCodFab.Text+'%'+#39+')) and (ATIVO = ''N'') ORDER BY codfabricante');
       GeraHist;           
   End;

end;

procedure TfrmHistoricoMovimentoEstoque.EDSimilarKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
	If Key=VK_Return
   Then Begin
       If RGFiltro.ItemIndex=0 Then
           FiltraTabela(DMESTOQUE.WSimilar, 'VWSIMILAR', 'COD_LOJA', '', ' (COD_LOJA='+FMenu.LCODLOJA.Caption+') AND (upper(descricao) like upper('+#39+EDSimilar.Text+'%'+#39+'))and ((ATIVO = ''S'') or (ATIVO is null)) ORDER BY descricao');
       If RGFiltro.ItemIndex=1 Then
           FiltraTabela(DMESTOQUE.WSimilar, 'VWSIMILAR', 'COD_LOJA', '', ' (COD_LOJA='+FMenu.LCODLOJA.Caption+') AND (upper(descricao) like upper('+#39+EDSimilar.Text+'%'+#39+')) and (ATIVO = ''N'') ORDER BY descricao');
       GeraHist;           
   End;

end;

procedure TfrmHistoricoMovimentoEstoque.EdCodBarraKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
	If Key=VK_Return
   Then Begin
		//FILTRA SIMILAR DE ACORDO COM O PRODUTO
       FiltraTabela(DMESTOQUE.WSimilar, 'VWSIMILAR', 'COD_LOJA', '', ' (COD_LOJA='+FMenu.LCODLOJA.Caption+') AND (CODBARRA='+#39+EdCodBarra.Text+#39+') ORDER BY CODFABRICANTE');
       GeraHist;
   End;

end;

Procedure TfrmHistoricoMovimentoEstoque.GeraHist;
Begin
   If not DMESTOQUE.WSimilar.IsEmpty
   Then Begin
       XCOD_ESTOQUE := DMESTOQUE.WSimilar.FieldByName('COD_ESTOQUE').AsInteger;
   End
   Else Begin
       exit;
   End;
	//FILTRA LANÇAMENTOS DE ENTRADA PARA CORREÇÃO
   DMESTOQUE.Alx.Close;
   DMESTOQUE.Alx.SQL.Clear;
   DMESTOQUE.Alx.SQL.Add('SELECT * FROM VWlancent where VWlancent.cod_estoque=:CODESTOQUE');
   DMESTOQUE.Alx.ParamByName('CODESTOQUE').AsInteger:=XCOD_ESTOQUE;
   DMESTOQUE.Alx.Open;


	//FILTRA LANÇAMENTOS DE SAIDA PARA CORREÇÃO
   DMESTOQUE.Alx1.Close;
   DMESTOQUE.Alx1.SQL.Clear;
   DMESTOQUE.Alx1.SQL.Add('select * from vwlancsai where vwlancsai.cod_estoque=:CODESTOQUE');
   DMESTOQUE.Alx1.ParamByName('CODESTOQUE').AsInteger:=XCOD_ESTOQUE;
   DMESTOQUE.Alx1.Open;

	//FILTRA DE Producao
   DMMACS.TALX.Close;
   DMMACS.TALX.SQL.Clear;
   DMMACS.TALX.SQL.Add(' select producao.dtproduc, iprdmat.qtd, iprdmat.vlrunit, iprdmat.vlrtot from iprdmat ');
   DMMACS.TALX.SQL.Add('    left join subproduto on iprdmat.cod_subproduto = subproduto.cod_subproduto ');
   DMMACS.TALX.SQL.Add('    left join estoque on subproduto.cod_subproduto = estoque.cod_subprod ');
   DMMACS.TALX.SQL.Add('    left join producao on iprdmat.cod_producao = producao.cod_producao ');
   DMMACS.TALX.SQL.Add('   where estoque.cod_estoque=:CODIGO ');
   DMMACS.TALX.ParamByName('CODIGO').AsInteger:=XCOD_ESTOQUE;
   DMMACS.TALX.Open;
	//FILTRA  E TOTALIZA LANÇAMENTOS DE ordens de serviço
   DMESTOQUE.Alx4.Close;
   DMESTOQUE.Alx4.SQL.Clear;
   DMESTOQUE.Alx4.SQL.Add(' Select ordem.numero,  vwcliente.nome AS CLIENTE, itprodord.cod_itprodord, itprodord.cod_ordem, itprodord.cod_estoque,  itprodord.numreq, itprodord.qtd, itprodord.qtdRET, itprodord.total, ');
   DMESTOQUE.Alx4.SQL.Add(' itprodord.desconto, ORDEM.DTABERT AS DATA, itprodord.cod_funcionario, pessoa.nome, itprodord.vlrunit UNITARIO, subproduto.descricao, subproduto.marca, SubProduto.CODPRODFABR ');
   DMESTOQUE.Alx4.SQL.Add(' From itprodord left Join estoque on itprodord.cod_estoque = estoque.cod_estoque ');
   DMESTOQUE.Alx4.SQL.Add(' Left Join subproduto on subproduto.cod_subproduto = estoque.cod_subprod ');
   DMESTOQUE.Alx4.SQL.Add(' Left Join funcionario on funcionario.cod_func = itprodord.cod_funcionario ');
   DMESTOQUE.Alx4.SQL.Add(' Left Join pessoa on funcionario.cod_pessoa = pessoa.COD_PESSOA ');
   DMESTOQUE.Alx4.SQL.Add(' left join ordem on itprodord.cod_ordem=ordem.cod_ordem ');
   DMESTOQUE.Alx4.SQL.Add(' left join vwcliente on ordem.cod_cliente = vwcliente.cod_cliente ');
   DMESTOQUE.Alx4.SQL.Add(' Where (itprodord.cod_estoque=:CODESTOQUE) ');
   DMESTOQUE.Alx4.ParamByName('CODESTOQUE').AsInteger:=XCOD_ESTOQUE;
   DMESTOQUE.Alx4.Open;

	//FILTRA LANÇAMENTOS DE COMPRAS
   DMESTOQUE.Alx3.Close;
   DMESTOQUE.Alx3.SQL.Clear;
   DMESTOQUE.Alx3.SQL.Add(' Select pedcompra.numped, SUBPRODUTO.CONTRINT, pedcompra.DTPEDCOMP AS DATA, ');
   DMESTOQUE.Alx3.SQL.Add(' itenspedc.qtdeprod, itenspedc.qtdest, subproduto.descricao, ');
   DMESTOQUE.Alx3.SQL.Add(' itenspedc.valortotal AS TOTPROD, itenspedc.valunit UNITARIO, pessoa.nome, pessoa.cpfcnpj ');
   DMESTOQUE.Alx3.SQL.Add(' From itenspedc left join pedcompra on itenspedc.cod_pedcompra = pedcompra.cod_pedcomp');
   DMESTOQUE.Alx3.SQL.Add(' left Join estoque on itenspedc.cod_estoque = estoque.cod_estoque');
   DMESTOQUE.Alx3.SQL.Add(' Left Join subproduto on subproduto.cod_subproduto = estoque.cod_subprod');
   DMESTOQUE.Alx3.SQL.Add(' Left Join produto on produto.cod_produto = subproduto.cod_produto');
   DMESTOQUE.Alx3.SQL.Add(' left join fornecedor on fornecedor.cod_fornec = pedcompra.cod_fornec');
   DMESTOQUE.Alx3.SQL.Add(' left join pessoa on pessoa.cod_pessoa = fornecedor.cod_pessoa');
   DMESTOQUE.Alx3.SQL.Add(' Where (Estoque.Cod_Estoque=:CODESTOQUE) ');
   DMESTOQUE.Alx3.ParamByName('CODESTOQUE').AsInteger:=XCOD_ESTOQUE;
   DMESTOQUE.Alx3.Open;
	//FILTRA LANÇAMENTOS DE VENDAS
   DMESTOQUE.Alx2.Close;
   DMESTOQUE.Alx2.SQL.Clear;
   DMESTOQUE.Alx2.SQL.Add(' Select pedvenda.numped, SUBPRODUTO.CONTRINT, lote.numero, pedvenda.dtpedven ,');
   DMESTOQUE.Alx2.SQL.Add(' itenspedven.qtdeprod, subproduto.descricao , Itenspedven.OPERACAO,');
   DMESTOQUE.Alx2.SQL.Add(' itenspedven.valortotal AS TOTPROD, itenspedven.valunit UNITARIO, pedvenda.nomecli, pedvenda.cpfcnpj');
   DMESTOQUE.Alx2.SQL.Add(' From itenspedven left join pedvenda on itenspedven.cod_pedven = pedvenda.cod_pedvenda');
   DMESTOQUE.Alx2.SQL.Add(' left Join estoque on itenspedven.cod_estoque = estoque.cod_estoque');
   DMESTOQUE.Alx2.SQL.Add(' Left Join subproduto on subproduto.cod_subproduto = estoque.cod_subprod');
   DMESTOQUE.Alx2.SQL.Add(' Left Join produto on produto.cod_produto = subproduto.cod_produto');
   DMESTOQUE.Alx2.SQL.Add('  left join lote on itenspedven.cod_lote = lote.cod_lote ');
   DMESTOQUE.Alx2.SQL.Add(' Where (Estoque.Cod_Estoque=:CODESTOQUE) ');
   DMESTOQUE.Alx2.ParamByName('CODESTOQUE').AsInteger:=XCOD_ESTOQUE;
   DMESTOQUE.Alx2.Open;
End;


procedure TfrmHistoricoMovimentoEstoque.DBGrid1DblClick(Sender: TObject);
begin
   GeraHist;
end;

end.
