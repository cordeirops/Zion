unit UCtrlEntrega;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadPadrao, Buttons, StdCtrls, DrLabel, jpeg, ExtCtrls, Grids,
  DBGrids, TFlatEditUnit, Mask, DBCtrls, EditFloat, Menus, FR_DSet,
  FR_DBSet, FR_Class;

type
  TFCtrlEntrega = class(TFCadPadrao)
    LNumPedV: TDRLabel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Panel2: TPanel;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    GroupBox3: TGroupBox;
    DBGrid2: TDBGrid;
    Panel3: TPanel;
    DBText1: TDBText;
    DBText2: TDBText;
    Label3: TLabel;
    EdQtdEntregue: TFloatEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    pm: TPopupMenu;
    Comprovante1: TMenuItem;
    FSRel: TfrReport;
    FDSCaixa: TfrDBDataSet;
    procedure FormActivate(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnConsultarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure EdQtdEntregueKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBEdit2Exit(Sender: TObject);
    procedure Comprovante1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
	 //Filtra Tabela Slave com os itens vendidos
	 Procedure FiltraSlave;
	 //Filtra os itens q foram entregues por entrega
	 Procedure FiltraEntrega;
    //Função q retorna o saldo da qtd do item ainda a ser entregue
    Procedure InsereSaldoEntrega;
  end;

var
  FCtrlEntrega: TFCtrlEntrega;
  XCtrlTecla: Integer;

implementation

uses UDMSaida, UMenu, UDMEstoque, UDMMacs, Alxor32, AlxMessage, UPadrao,
  Math, DB;

{$R *.dfm}

//Função q retorna o saldo da qtd do item ainda a ser entregue
Procedure TFCtrlEntrega.InsereSaldoEntrega;
Begin
	If XCtrlTecla=1
   Then Begin
       EdQtdEntregue.ValueNumeric:=DMESTOQUE.TSlave.FieldByName('qtdeprod').AsCurrency-DMESTOQUE.TSlave.FieldByName('qtdentregue').AsCurrency;
   End;
End;

//Filtra os itens q foram entregues por entrega
Procedure TFCtrlEntrega.FiltraEntrega;
Begin
   DMESTOQUE.Alx.Close;
   DMESTOQUE.Alx.SQL.Clear;
   DMESTOQUE.Alx.SQL.Add(' Select itementrega.cod_itementrega, itementrega.cod_temvenda, itementrega.qtd, vwsimilar.descricao from itementrega ');
   DMESTOQUE.Alx.SQL.Add(' left Join itenspedven on itementrega.cod_temvenda = itenspedven.cod_itenspedven ');
   DMESTOQUE.Alx.SQL.Add(' left join vwsimilar ON itenspedven.cod_estoque = vwsimilar.cod_estoque ');
   DMESTOQUE.Alx.SQL.Add(' where itementrega.cod_entrega=:CODIGO ');
   DMESTOQUE.Alx.ParamByName('CODIGO').AsInteger:=XCODPKMESTRE;
   DMESTOQUE.Alx.Open;
End;
//Filtra Tabela Slave com os itens vendidos
Procedure TFCtrlEntrega.FiltraSlave;
Begin
   	//INSERE COMANDOS PARA FILTRAR
 		DMESTOQUE.TSlave.Close;
		DMESTOQUE.TSlave.SQL.Clear;
		DMESTOQUE.TSlave.SQL.Add(' Select itenspedven.cod_itenspedven, itenspedven.cod_pedven, itenspedven.cod_estoque,  itenspedven.qtdeprod, ItensPedVen.ValorTotal, ');
		DMESTOQUE.TSlave.SQL.Add(' itenspedven.descpro, itenspedven.valunit, subproduto.descricao, itenspedven.qtdentregue, subproduto.marca, subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL1').AsString+' AS CONTRINT  ');
		DMESTOQUE.TSlave.SQL.Add(' From itenspedven left Join estoque on itenspedven.cod_estoque = estoque.cod_estoque ');
		DMESTOQUE.TSlave.SQL.Add(' Left Join subproduto on subproduto.cod_subproduto = estoque.cod_subprod ');
		DMESTOQUE.TSlave.SQL.Add(' left join lote on itenspedven.cod_lote = lote.cod_lote ');
		DMESTOQUE.TSlave.SQL.Add(' Left Join funcionario on funcionario.cod_func = itenspedven.cod_funcionario ');
		DMESTOQUE.TSlave.SQL.Add(' Left Join pessoa on funcionario.cod_pessoa = pessoa.COD_PESSOA ');
		DMESTOQUE.TSlave.SQL.Add(' Where itenspedven.cod_pedven = :CODPEDVENDA ');
		DMESTOQUE.TSlave.ParamByName('CODPEDVENDA').AsString:=FMenu.TIPOAUX;
		DMESTOQUE.TSlave.Open;
End;

procedure TFCtrlEntrega.FormActivate(Sender: TObject);
begin
  inherited;
  Caption:='Controle de Entrega' ;  
  XTabela:=DMSAIDA.TEntrega;
  XCampo:='DTENTREGA';
  XTransaction:=DMSAIDA.IBT;
  XPkTabela:='COD_ENTREGA';
  XTab:=True;
  XDescricao:= 'A Entrega';
  XSQLTABELA:='ENTREGA';
  XLiberaDados:=' Where Entrega.cod_pedvenda= '+#39+FMenu.TIPOAUX+#39+' ';
  LiberaDados;
  XCtrlTecla:=1;
  LNumPedV.Caption:=FMenu.TIPOREL;
  DBGridCadastroPadrao.DataSource:=DMSAIDA.DEntrega;
end;

procedure TFCtrlEntrega.BtnGravarClick(Sender: TObject);
begin
  inherited;
   XTabela.Edit;
	XTabela.FieldByName('COD_PEDVENDA').AsString:=FMenu.TIPOAUX;
   XTabela.FieldByName('COD_ENTREGA').AsInteger:=XCODPKMESTRE;
   XTabela.Post;
   DBText1.DataField:='';
   DBText2.DataField:='';   
   XTransaction.CommitRetaining;
   LiberaDados;
end;

procedure TFCtrlEntrega.BtnNovoClick(Sender: TObject);
begin
  inherited;
   XTabela.Insert;
   XCODPKMESTRE:=InserReg(XTabela, XSQLTABELA, XPkTabela);
   XTabela.FieldByName('COD_ENTREGA').AsInteger:=XCODPKMESTRE;
   XTabela.FieldByName('DTENTREGA').AsDateTime:=Date();
   XTabela.Post;
   FiltraEntrega;
   FiltraSlave;
   DBText1.DataField:='CONTRINT';
   DBText2.DataField:='descricao';
   InsereSaldoEntrega;
   DBEdit1.SetFocus;
end;

procedure TFCtrlEntrega.BtnConsultarClick(Sender: TObject);
begin
  inherited;
    If XTab=False
    Then Begin
        If FiltraTabela(XTabela, XSQLTABELA, XPkTabela, XView.FieldByName(XPkTabela).AsString, '')=True
        Then Begin
            XTabela.Edit;
            DBEdit1.SetFocus;
        End
        Else Begin
            Mensagem('Comunicado', XDescricao+ ' Seleção para ser apagada, não foi encontrada na tabela', '', 1, 1, False, 'I');
        End;
    End
    Else Begin
        XTabela.Edit;
        DBEdit1.SetFocus;
    End;
    XCODPKMESTRE:=XTabela.FieldByName('COD_ENTREGA').AsInteger;
    FiltraEntrega;
    FiltraSlave;
    DBText1.DataField:='CONTRINT';
    DBText2.DataField:='descricao';
    InsereSaldoEntrega;
end;

procedure TFCtrlEntrega.BtnCancelarClick(Sender: TObject);
begin
  inherited;
   XTabela.Cancel;
   DBText1.DataField:='';
   DBText2.DataField:='';
   XTransaction.CommitRetaining;
end;

procedure TFCtrlEntrega.EdQtdEntregueKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
	If Key=VK_DOWN Then
       DMESTOQUE.Alx.Next;
	If Key=VK_UP Then
       DMESTOQUE.Alx.Prior;
   If Key=33 Then
   	DMESTOQUE.TSlave.Prior;
	If Key=34 Then
       DMESTOQUE.TSlave.Next;
   If Key=VK_F1
   Then Begin
       XCtrlTecla:=1;
       InsereSaldoEntrega;
   end;

   If ((Key<>VK_DOWN) and (Key<>VK_UP) and (Key<>33) and (Key<>34)) Then
       XCtrlTecla:=0;
   InsereSaldoEntrega;
end;

procedure TFCtrlEntrega.BitBtn1Click(Sender: TObject);
begin
  inherited;
  	Try
       //TENTA LOCALIZAR ITENS DE PEDIDO DE VENDA
       DMSAIDA.TItemPV.Close;
       DMSAIDA.TItemPV.SQL.Clear;
       DMSAIDA.TItemPV.SQL.Add(' select * from itenspedven where (COD_ITENSPEDVEN=:CODIGO) ');
       DMSAIDA.TItemPV.ParamByName('CODIGO').AsInteger:=DMESTOQUE.TSlave.FieldByName('cod_itenspedven').AsInteger;
       DMSAIDA.TItemPV.SQL.Text;
       DMSAIDA.TItemPV.Open;
       If not DMSAIDA.TItemPV.IsEmpty
       Then Begin
			If (DMSAIDA.TItemPV.FieldByName('qtdentregue').AsCurrency+EdQtdEntregue.ValueNumeric)<DMSAIDA.TItemPV.FieldByName('qtdeprod').AsCurrency
       	Then Begin
   			XCtrlTecla:=1;
   			DMSAIDA.TItemEntrega.Insert;
   			DMSAIDA.TItemEntrega.FieldByName('cod_itementrega').AsInteger:=InserReg(DMSAIDA.TItemEntrega, 'itementrega', 'cod_itementrega');
   			DMSAIDA.TItemEntrega.FieldByName('COD_ENTREGA').AsInteger:=XCODPKMESTRE;
   			DMSAIDA.TItemEntrega.FieldByName('COD_TEMVENDA').AsInteger:=DMESTOQUE.TSlave.FieldByName('cod_itenspedven').AsInteger;
   			DMSAIDA.TItemEntrega.FieldByName('QTD').AsCurrency:=EdQtdEntregue.ValueNumeric;
           	DMSAIDA.TItemEntrega.Post;

           	DMSAIDA.TItemPV.Edit;
           	DMSAIDA.TItemPV.FieldByName('qtdentregue').AsCurrency:=DMSAIDA.TItemPV.FieldByName('qtdentregue').AsCurrency+EdQtdEntregue.ValueNumeric;
           	DMSAIDA.TItemPV.Post;
           End
           Else Begin
           	Mensagem('Comunicado', 'A quantidade entregue não confere com a quantidade vendida', '', 1, 1, False, 'I');
           End;
       End
       Else Begin
           Mensagem('Comunicado', 'Não foi possível atualizar a quantidade de entrega. Os valores serão retornados', '', 1, 1, False, 'I');

       End;
       DMSAIDA.IBT.CommitRetaining;
   Except
       DMSAIDA.IBT.RollbackRetaining;
   End;
   FiltraEntrega;
   FiltraSlave;
   InsereSaldoEntrega;   
   EdQtdEntregue.SetFocus
end;

procedure TFCtrlEntrega.BitBtn2Click(Sender: TObject);
begin
  inherited;
	XCtrlTecla:=1;
  	Try
       //TENTA LOCALIZAR ITENS DE PEDIDO DE VENDA
       DMSAIDA.TItemPV.Close;
       DMSAIDA.TItemPV.SQL.Clear;
       DMSAIDA.TItemPV.SQL.Add(' select * from itenspedven where (COD_ITENSPEDVEN=:CODIGO) ');
       DMSAIDA.TItemPV.ParamByName('CODIGO').AsInteger:=DMESTOQUE.Alx.FieldByName('cod_temvenda').AsInteger;
       DMSAIDA.TItemPV.SQL.Text;
       DMSAIDA.TItemPV.Open;
       If not DMSAIDA.TItemPV.IsEmpty
       Then Begin
       	//TENTA LOCALIZAR ITENS DE ENTREGA
       	DMSAIDA.TItemEntrega.Close;
       	DMSAIDA.TItemEntrega.SQL.Clear;
       	DMSAIDA.TItemEntrega.SQL.Add(' select * from itementrega where (itementrega.cod_itementrega=:CODIGO) ');
       	DMSAIDA.TItemEntrega.ParamByName('CODIGO').AsInteger:=DMESTOQUE.Alx.FieldByName('cod_itementrega').AsInteger;
       	DMSAIDA.TItemEntrega.SQL.Text;
       	DMSAIDA.TItemEntrega.Open;
       	If Not DMSAIDA.TItemEntrega.IsEmpty
       	Then Begin
           	DMSAIDA.TItemPV.Edit;
           	DMSAIDA.TItemPV.FieldByName('qtdentregue').AsCurrency:=DMSAIDA.TItemPV.FieldByName('qtdentregue').AsCurrency-DMSAIDA.TItemEntrega.FieldByName('QTD').AsCurrency;
           	DMSAIDA.TItemPV.Post;
               DMSAIDA.TItemEntrega.Delete;
               DMSAIDA.IBT.CommitRetaining;
           End;
       End;
   Except
       DMSAIDA.IBT.RollbackRetaining;
   End;
   FiltraEntrega;
   FiltraSlave;
   InsereSaldoEntrega;
   EdQtdEntregue.SetFocus;
end;

procedure TFCtrlEntrega.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   InsereSaldoEntrega;
end;

procedure TFCtrlEntrega.DBGrid1CellClick(Column: TColumn);
begin
  inherited;
   InsereSaldoEntrega;
end;

procedure TFCtrlEntrega.DBEdit2Exit(Sender: TObject);
begin
  inherited;
   EdQtdEntregue.SetFocus;
end;

procedure TFCtrlEntrega.Comprovante1Click(Sender: TObject);
begin
  inherited;
	//Filtra a loja para garantir que todos as informações estejam corretas
   If FiltraTabela(DMMacs.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '')=True
   Then Begin//Se encontrou a loja
       DMMACS.TLOJA.Edit;
       DMMACS.TLoja.FieldByName('TMP2').AsString:='';
       DMMACS.TLoja.Post;
       DMMACS.Transaction.CommitRetaining;
		FiltraTabela(DMMacs.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
			//insere sql necessária para filtrar pedido de venda e valores necessários
           DMEstoque.Alx.Close;
           DMEstoque.Alx.SQL.Clear;
           DMEstoque.Alx.SQL.Add(' SELECT pedvenda.numped, PEDVENDA.VLRFRETE, entrega.dtentrega, entrega.responsavel AS ENTREGADOR, pedvenda.nomecli, cliente.endentraga, Cliente.Atacadista as atacadista,');
           DMEstoque.Alx.SQL.Add(' pessoa.telrel,  pessoa.BAIRRO, PESSOA.CEP, pedvenda.cpfcnpj, pedvenda.obs, pessoa.endnumero, pessoa.endereco, pessoa.endnumero, ');
           DMEstoque.Alx.SQL.Add(' cidade.nome, pedvenda.dtpedven, PedVenda.Desconto AS DESCONTO, PedVenda.Descmoe, PedVenda.Valor ');
           DMEstoque.Alx.SQL.Add(' from entrega ');
           DMEstoque.Alx.SQL.Add(' left join pedvenda on entrega.cod_pedvenda = pedvenda.cod_pedvenda ');
           DMEstoque.Alx.SQL.Add(' Left join cliente ON pedvenda.cod_cliente = cliente.cod_cliente ');
           DMEstoque.Alx.SQL.Add(' Left join pessoa on cliente.cod_pessoa = pessoa.cod_pessoa ');
           DMEstoque.Alx.SQL.Add(' left join cidade ON pessoa.cod_cidade = cidade.cod_cidade ');
           DMEstoque.Alx.SQL.Add(' left join telefone ON telefone.cod_pessoa = pessoa.cod_pessoa ');
           DMEstoque.Alx.SQL.Add(' where entrega.cod_entrega=:CODIGO ');
           DMEstoque.Alx.ParamByName('CODIGO').AsInteger:=DMSAIDA.TEntrega.FieldByName('COD_ENTREGA').AsInteger;
           DMEstoque.Alx.Open;

           //insere sql necessária para filtrar inetns do pedido de venda
           DMESTOQUE.TSlave.close;
           DMESTOQUE.TSlave.sql.clear;
           DMESTOQUE.TSlave.sql.Add('SELECT itenspedven.operacao AS OPER, itenspedven.qtdentregue AS TOTALENT, itementrega.qtd AS QTDENT, subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL1').AsString+' AS PRIMCOD, subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL2').AsString+' AS SEGCOD, ');
           DMESTOQUE.TSlave.sql.Add(' itenspedven.qtdeprod, LOTE.LOTE, lote.vencimento, unidade.sigla_unid, ');
           DMESTOQUE.TSlave.sql.Add('subproduto.descricao, subproduto.marca, itenspedven.valunit, itenspedven.descpro, itenspedven.valortotal, itenspedven.DATA ');
           DMESTOQUE.TSlave.sql.Add('FROM itenspedven join estoque on itenspedven.cod_estoque = estoque.cod_estoque ');
           DMESTOQUE.TSlave.sql.Add('left join itementrega ON itenspedven.cod_itenspedven = itementrega.cod_temvenda ');
           DMESTOQUE.TSlave.sql.Add('join subproduto on estoque.cod_subprod = subproduto.cod_subproduto ');
           DMESTOQUE.TSlave.sql.Add('LEFT Join LOTE on itenspedven.cod_lote = LOTE.COD_LOTE ');
           DMESTOQUE.TSlave.sql.Add('join produto on subproduto.cod_produto = produto.cod_produto ');
           DMESTOQUE.TSlave.sql.Add('LEFT Join unidade on SubProduto.cod_unidVenda = unidade.cod_unidade ');
           DMESTOQUE.TSlave.sql.Add('Where (itementrega.cod_entrega=:CODPED) ORDER BY Subproduto.Descricao, itenspedven.DATA');
			DMESTOQUE.TSlave.ParamByName('CODPED').AsInteger:=DMSAIDA.TEntrega.FieldByName('COD_ENTREGA').AsInteger;;
           DMESTOQUE.TSlave.Open;

	        //verifica se a tabela para pedido não esta vazia
	        If DMEstoque.Alx.IsEmpty
	        Then Begin
				Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'O pedido que tentou imprimir encontra-se com falta de informações. Altere o pedido e preencha com as informações pendentes!', '', 1, 1, False, 'a');
	            Exit;
	        End;
	        //verifica se a tabela para items não esta vazia
	        If (DMESTOQUE.TSlave.IsEmpty=True) And (DMESTOQUE.Tdesp.IsEmpty=True)
	        Then Begin
				Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'O pedido que tentou imprimir encontra-se sem items!'+#13+'É provável que o produto deste pedido tenha sido devolvido ou trocado.', '', 1, 1, False, 'a');
  	            Exit;
           End;

        	FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfCompEntrega.frf');
			FSRel.ShowReport;
	End; //fim de filtra loja

end;

end.
