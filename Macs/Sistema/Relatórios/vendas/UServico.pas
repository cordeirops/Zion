unit UServico;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UCadPadrao, TFlatHintUnit, Grids, DBGrids, StdCtrls, TFlatEditUnit,
  Buttons, jpeg, ExtCtrls, EditFloat, ColorEditFloat, Menus, Mask, DBCtrls,
  UFrmBusca, DBColorEdit, TFlatCheckBoxUnit, DBColorComboBox, DrLabel;

type
  TFServico = class(TFCadPadrao)
    GroupBox2: TGroupBox;
    BitBtn1: TBitBtn;
    GBSIMILAR: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBGrid1: TDBGrid;
    EDSimilar: TEdit;
    BtnSelecionar2: TBitBtn;
    EdCodComposto: TMaskEdit;
    PMCadastro: TPopupMenu;
    CadastrarNovoProduto1: TMenuItem;
    CadastrarumProdutoSimilar1: TMenuItem;
    EdVlrTotalServ: TFloatEdit;
    Label137: TLabel;
    EdCodGrade: TEdit;
    EdDescricaoGrade: TEdit;
    BtnProduto: TBitBtn;
    LDescSimilar: TLabel;
    DBCODINTERNO: TDBColorEdit;
    DBDESCRICAOSIM: TDBColorEdit;
    LGarantia: TLabel;
    DBQuant: TDBColorEdit;
    DBDesc: TDBColorComboBox;
    LEspecificacao: TLabel;
    dbcodbarra: TDBColorEdit;
    LTempo: TLabel;
    DBTempo: TDBColorEdit;
    LExec: TLabel;
    DBExec: TDBColorComboBox;
    Label1: TLabel;
    LVlrUnit: TLabel;
    dbvalorunitario: TDBEdit;
    LLucrat: TLabel;
    dblucrat: TDBEdit;
    LCoef: TLabel;
    DBCoef: TDBEdit;
    LTotServ: TLabel;
    DBServFinal: TDBEdit;
    GBFinanc: TShape;
    GBDespachante: TGroupBox;
    CbFaturaVista: TCheckBox;
    CBFaturaPrazo: TCheckBox;
    CbFaturarNao: TCheckBox;
    FrmContaServico: TFrmBusca;
    FrmFormPag1: TFrmBusca;
    PTabelaPreco: TPanel;
    EDProduto: TEdit;
    procedure CadastrarNovoProduto1Click(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure EDCODGRUPOExit(Sender: TObject);
    procedure EDCODSUBGRUPOExit(Sender: TObject);
    procedure DBDescKeyPress(Sender: TObject; var Key: Char);
    procedure DBExecKeyPress(Sender: TObject; var Key: Char);
    procedure BtnGravarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure CadastrarumProdutoSimilar1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DBGridCadastroPadraoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridCadastroPadraoCellClick(Column: TColumn);
    procedure BtnApagarClick(Sender: TObject);
    procedure EDProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EDGrupoCompKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodCompostoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EDSimilarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnConsultarClick(Sender: TObject);
    procedure dbvalorunitarioExit(Sender: TObject);
    procedure DBVlrFinalExit(Sender: TObject);
    procedure CbFaturaVistaClick(Sender: TObject);
    procedure CBFaturaPrazoClick(Sender: TObject);
    procedure CbFaturarNaoClick(Sender: TObject);
    procedure FrmContaServicoBTNOPENClick(Sender: TObject);
    procedure FrmContaServicoBTNMINUSClick(Sender: TObject);
    procedure FrmFormPag1BTNMINUSClick(Sender: TObject);
    procedure FrmFormPag1BTNOPENClick(Sender: TObject);
    procedure FrmFormPag1EDCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnProdutoClick(Sender: TObject);
    procedure DBServFinalExit(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    Procedure SelectSERV;//Seleciona os serviços através das edits de codigo de composicão
    Procedure CalcVlrTotServ;//Calcula o valor total do serviço (soma todos os valores totais de cada subservico)
  public
    { Public declarations }
    //Procedure utilizada para calcular o valor final do serviço
    Procedure CalcVlrServ;
    // se o sistema for para guinchomaq os dados são apagados
    Procedure OcultaDados;
  end;

var
  FServico: TFServico;
  XCOD_SERVICO, XCOD_SUBSERVICO, XCOD_GRUPO, XCOD_SUBGRUPO, XCOD_UNIDADE, XCOD_CONTA, XCOD_FORMPAG: Integer;//ARMAZENA OS VALORES DE CODIGO DE ESTOQUE, CODIGO DO PRODUTO E CODIGO DO SUBPRODUTO

implementation

uses UDMSERV, Alxor32, UCadGrupo, UMenu, UCadSubgrupo, UCadUnidade,
  UDMMacs, AlxMessage, UDMEstoque, UDMConta, UConsPlncta, UFormPag,
  UDMFinanc, DB, UcadServico;

{$R *.DFM}

//Calcula o valor total do serviço (soma todos os valores totais de cada subservico)
Procedure TFServico.CalcVlrTotServ;
Begin
	Try
   	DMSERV.Alx.close;
   	DMSERV.Alx.SQL.Clear;
   	DMSERV.Alx.SQL.Add('select sum(subservico.vlrsubserv) AS TOTAL from subservico where subservico.cod_servico=:SERVICO');
   	DMSERV.Alx.ParamByName('SERVICO').AsString:=DMSERV.WServico.FieldByName('COD_SERVICO').AsString;
		DMSERV.Alx.Open;
   	EdVlrTotalServ.ValueNumeric:=DMSERV.Alx.FieldByNAme('TOTAL').AsCurrency;
   Except
   End;
End;
//Procedure utilizada para calcular o valor final do serviço
Procedure TFSERVICO.CalcVlrServ;
Begin
   DMSERV.TSubserv.Edit;
   DMSERV.TSubserv.FieldByName('COEFDIV').AsCurrency:=(100-(DMMACS.TLoja.FieldByName('OUTROIMPSERV').AsCurrency+DMMACS.TLoja.FieldByName('COMISSAOSERV').AsCurrency+DMMACS.TLoja.FieldByName('PIS').AsCurrency+DMMACS.TLoja.FieldByName('COFINS').AsCurrency+DMMACS.TLoja.FieldByName('CONTSOC').AsCurrency+DMMACS.TLoja.FieldByName('IMPREND').AsCurrency+DMMACS.TLoja.FieldByName('INSS').AsCurrency+DMMACS.TLoja.FieldByName('ISSQN').AsCurrency))/100;
	DMSERV.TSubserv.FieldByName('VLRFINAL').AsCurrency:=((DMSERV.TSubserv.FieldByName('VLRUNIT').AsCurrency/DMSERV.TSubserv.FieldByName('COEFDIV').AsCurrency)+(((DMSERV.TSubserv.FieldByName('VLRUNIT').AsCurrency/DMSERV.TSubserv.FieldByName('COEFDIV').AsCurrency)*DMSERV.TSubserv.FieldByName('LUCRAT').AsCurrency)/100))
End;

//Seleciona os servicos através das edits de codigo de composicão
Procedure TFSERVICO.SelectSERV;
Var
	SQLCONDICAO: String;
   CONTROLAND:WORD;
Begin
End;


procedure TFServico.CadastrarNovoProduto1Click(Sender: TObject);
begin
  inherited;
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('CADSERV', 'M')=False Then
  		Exit;

   //PREPARA DE TALHES DE INTERFACE
   BtnFecha.Visible:=False;
   PConsulta.Visible:=False;
   PCadastro.Visible:=TRUE;
   PCadastro.BringToFront;

   //INSERE REGISTROS NA TABELA DE SERVIÇO E SUBSERVIÇO
   DMServ.TServ.Close;
   DMServ.TServ.Open;
	XCOD_SERVICO:=InserReg(DMSERV.TServ, 'SERVICO', 'COD_SERVICO');
   DMSERV.TServ.FieldByName('COD_SERVICO').AsInteger:=XCOD_SERVICO;

   DMServ.TSubserv.Close;
   DMServ.TSubserv.Open;
	XCOD_SUBSERVICO:=InserReg(DMSERV.TSubServ, 'SUBSERVICO', 'COD_SUBSERVICO');
   DMSERV.TSubServ.FieldByName('COD_SUBSERVICO').AsInteger:=XCOD_SUBSERVICO;
end;

procedure TFServico.BtnNovoClick(Sender: TObject);
begin

   //Paulo 29/06/2011: Para mostrar o form de pag em caso se for despachante
   If DMMACS.TLoja.FieldByName('atividade').AsString = 'DESPACHANTE' Then
       FrmFormPag1.Visible:=True
   else
       FrmFormPag1.Visible:=False;
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('SERVICO', 'M')=False Then
  		Exit;


    //Insere REGISTROS NA TABELA DE SUBSERVICO E LOCALIZA SERVICO
	 XCOD_SERVICO:=DMSERV.WServico.FieldByName('COD_SERVICO').AsInteger;

    EdCodGrade.Text:= DMSERV.WServico.FieldByName('COD_INTERNO').AsString;
    EdDescricaoGrade.Text:= DMSERV.WServico.FieldByName('SERVICO').AsString;


	 XCOD_SUBSERVICO:=InserReg(DMSERV.TSubserv, 'SUBSERVICO', 'COD_SUBSERVICO');
    DMSERV.TSubserv.FieldByName('COD_SUBSERVICO').AsInteger:=XCOD_SUBSERVICO;
    DMSERV.TSubserv.FieldByName('COD_INTERNO').AsInteger:=XCOD_SUBSERVICO;    

	//Localiza o produto selecionado e mostra na tela.
   FiltraTabela(DMSERV.TServ, 'SERVICO', 'COD_SERVICO', DMSERV.WServico.FieldByName('COD_SERVICO').AsString, '');
   PConsulta.Visible:=False;
   PCadastro.Visible:=TRUE;
   PCadastro.BringToFront;
   DBCODINTERNO.SetFocus;
end;

procedure TFServico.EDCODGRUPOExit(Sender: TObject);
Var CODGRUPO: STRING;
begin
  inherited;
end;

procedure TFServico.EDCODSUBGRUPOExit(Sender: TObject);
Var CODSUBGRUPO: STRING;
begin
  inherited;
end;

procedure TFServico.DBDescKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	Key:=#0;
end;

procedure TFServico.DBExecKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	Key:=#0;
end;

procedure TFServico.BtnGravarClick(Sender: TObject);
Var
	TipoFatura: String;
begin
//  inherited;
    TipoFatura:='';
    DMSERV.TServ.Edit;
    DMSERV.TSubserv.Edit;
    // Bloqueio o cadastro do servico caso não seja informado a Código do Sub Serviço
    If (DBCODINTERNO.text = '')
    Then Begin
        Mensagem('INFORMAÇÃO AO USUÁRIO', 'É necesário informar o Código do SubServiço para que possa ser cadastrado.', '', 1, 1, False, 'I');
        DBCODINTERNO.SetFocus;
        exit;
    end;

    // Bloqueio o cadastro do serviço caso não seja informado a Descrição do SubServiço
    If (DBDESCRICAOSIM.Text='')
    Then Begin
        Mensagem('INFORMAÇÃO AO USUÁRIO', 'É necesário informar a Descrição do SubServiço para que possa ser cadastrado.', '', 1, 1, False, 'I');
        DBDESCRICAOSIM.SetFocus;
        exit;
    end;

    // faz a verificação se não for da guinchomaq
    If DMMACS.TLoja.FieldByName('ORDEMLOCA_GUINDASTE').AsString <> '1'
    Then Begin
        // Bloqueio o cadastro do produto caso não seja informado a Lucratividade do produto.
        If ((DBLucrat.Text ='') or (dbvalorunitario.Text = ''))
        Then Begin
            Mensagem('INFORMAÇÃO AO USUÁRIO', 'É necesário informar os dados financeiros do Serviço para que possa ser cadastrado e para que seja possível calcular o Valor de Execução do mesmo.', '', 1, 1, False, 'I');
            dbvalorunitario.SetFocus;
            exit;
        end;
   End;
  	//Controle para despachante
   If DMMACS.TLoja.FieldByName('ATIVIDADE').AsString = 'DESPACHANTE'
   Then Begin
   	If (CbFaturaVista.Checked=False) and (CBFaturaPrazo.Checked=False)  and (CbFaturarNao.Checked=False)
       Then Begin
            Mensagem('INFORMAÇÃO AO USUÁRIO', 'É necessário informar o tipo da fatura do serviço.', '', 1, 1, False, 'I');
            CbFaturaVista.SetFocus;
            exit;
        end
        Else Begin
            If CbFaturaVista.Checked=True Then
               TipoFatura:='V';
            If CBFaturaPrazo.Checked=True Then
               TipoFatura:='P';
            If CbFaturarNao.Checked=True Then
               TipoFatura:='N';
        End;
   End;

    // Grava os dados na Tabela SubSERVICO
    DMSERV.TSubserv.Edit;
    // Faz a concatenação do Código Interno do GRUPO, Código Interno do SUBGRUPO, Código Interno do SERVIÇO e Código Interno do SUBSERVICO, formando o Código Composto do Produto.
    DMSERV.TSubserv.FieldByName('TIPOFATURA').AsString:=TipoFatura;
    DMSERV.TSubserv.FieldByName('COD_SERVICO').AsInteger:=XCOD_SERVICO;
    DMSERV.TSubserv.FieldByName('COD_CONTA').AsInteger:=XCOD_CONTA;
    DMSERV.TSubserv.FieldByName('COD_FORMPAG').AsInteger:=XCOD_FORMPAG;    
    DMSERV.TSubserv.FieldByName('DTCAD').AsString:=DateToStr(DAte());
    DMSERV.TSubserv.FieldByName('COD_UNIDADE').AsInteger:=XCOD_UNIDADE;
    DMSERV.TSubserv.Post;
    DMSERV.TSubserv.ApplyUpdates;
    DMSERV.IBT.CommitRetaining;
    PCadastro.Visible:=False;
    PConsulta.Visible:=true;
    PConsulta.BringToFront;
    BtnFecha.Visible:=True;
    BtnFecha.BringToFront;
    //LIBERADADOS
    FiltraTabela(DMSERV.WServico, 'VWSERVICO', '', '', ' ORDER BY SERVICO');
    SelectSERV;

   
end;

procedure TFServico.BtnCancelarClick(Sender: TObject);
begin
//  inherited;
	 //Cancela Operações

    DMSERV.TSubserv.CANCEL;
    DMSERV.TSubserv.CancelUpdates;

    DMSERV.TServ.CANCEL;
    DMSERV.TServ.CancelUpdates;

    DMSERV.IBT.CommitRetaining;

    PCadastro.Visible:=False;
    PConsulta.Visible:=true;
    PConsulta.BringToFront;
    BtnFecha.Visible:=True;

end;

procedure TFServico.CadastrarumProdutoSimilar1Click(Sender: TObject);
begin
//  inherited;

end;

procedure TFServico.FormActivate(Sender: TObject);
begin
  inherited;

  	//Controle para despachante
   XCOD_CONTA:=-1;
   If DMMACS.TLoja.FieldByName('ATIVIDADE').AsString = 'DESPACHANTE'
   Then Begin
       GBDespachante.Visible:=True;
       FrmContaServico.Visible:=True;
       FrmFormPag1.Visible:=True;
       FrmContaServico.EDCodigo.Text:='';
       FrmContaServico.EdDescricao.Text:='';
       PTabelaPreco.Visible:=False;
   End
   Else Begin
       GBDespachante.Visible:=False;
       FrmContaServico.Visible:=False;
       FrmFormPag1.Visible:=False;
       PTabelaPreco.Visible:=True;
       PTabelaPreco.BringToFront;
   End;
       
  //SETA OS DATA SETS
  DBGridCadastroPadrao.DataSource:=DMSERV.DWServico;
  DBGrid1.DataSource:=DMSERV.DWSubserv;

  XTabela:=DMSERV.TServ;
  XCampo:='SERVICO';
  XTransaction:=DMSERV.IBT;
  XPkTabela:='COD_SERVICO';
  XTab:=True;
  XDescricao:= 'O Serviço';
  XSQLTABELA:='SERVICO';
  EDProduto.Text:='';

  //INFORMA VALOR DA SOMA DOS SUBSERVICOS
  CalcVlrTotServ;
  //FILTRA VIEW DE SIMILARES DE ACORDO COM VIEW DE PRODUTOS
  FiltraTabela(DMSERV.WServico, 'VWSERVICO', '', '', ' ORDER BY SERVICO');  
  If DMSERV.WServico.FieldByName('COD_SERVICO').AsString <> '' Then
       FiltraTabela(DMSERV.WSubServ, 'VWSUBSERVICO', 'COD_SERVICO', '', ' (COD_SERVICO = '+DMSERV.WServico.FieldByName('COD_SERVICO').AsString+') ORDER BY DESCRICAO');
  //Controla o aparecimento do botão selecionar
  If BtnSelecionar.Visible=True
  Then Begin
    BtnSelecionar2.Visible:=True;
  End
  Else Begin
    BtnSelecionar2.Visible:=False;
  End;
end;

procedure TFServico.DBGridCadastroPadraoKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
	If (Key=VK_Down) Or (Key=VK_up)
   Then Begin
	    //INFORMA VALOR DA SOMA DOS SUBSERVICOS
   	CalcVlrTotServ;
	    //FILTRA VIEW DE SIMILARES DE ACORDO COM VIEW DE PRODUTOS
		FiltraTabela(DMSERV.WSubServ, 'VWSUBSERVICO', 'COD_SERVICO', '', ' (COD_SERVICO = '+#39+DMSERV.WServico.FieldByName('COD_SERVICO').AsString+#39+') ORDER BY DESCRICAO');
   End;
end;

procedure TFServico.DBGridCadastroPadraoCellClick(Column: TColumn);
begin
  inherited;
   //INFORMA VALOR DA SOMA DOS SUBSERVICOS
   CalcVlrTotServ;
   //FILTRA VIEW DE SIMILARES DE ACORDO COM VIEW DE servico
	FiltraTabela(DMSERV.WSubServ, 'VWSUBSERVICO', 'COD_SERVICO', '', ' (COD_SERVICO = '+DMSERV.WServico.FieldByName('COD_SERVICO').AsString+') ORDER BY DESCRICAO');
end;

procedure TFServico.BtnApagarClick(Sender: TObject);
begin
//  inherited;

	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('PRODUTOS', 'M')=False Then
  		Exit;

	 If DMSERV.WSubServ.IsEmpty
    Then Begin
    	If Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Não existe nenhum Sub Serviço a ser apagado. Deseja apagar o SERVIÇO '+#13+ DMSERV.WServico.FieldByName('SERVICO').AsString+ '?' , '', 2, 3, False, 'c')= 2
       Then Begin
   		//Localiza em TSERVICO DE Acordo com xview
   		If FiltraTabela(DMSERV.TServ, 'SERVICO', 'COD_SERVICO', DMSERV.WServico.FieldByName('COD_SERVICO').AsString, '')=True
   		Then Begin
        		Try
        			DMSERV.TServ.Delete;
            		DMSERV.TServ.ApplyUpdates;
            		DMSERV.IBT.CommitRetaining;
                   //Djonathan 14/11/2009:  REGISTRA NO BANCO QUANDO FOR APAGADO UM SERVICO
                   Registra('SERVICO','APAGAR','','Aplicacao: ' + DMServ.WServico.FieldByName('APLICACAO').AsString ,'Descricao: ' + DMServ.WServico.FieldByName('SERVICO').AsString);
  					//FILTRA SERVICO
					FiltraTabela(DMSERV.WServico, 'VWSERVICO', '', '', ' ORDER BY SERVICO');                   
            	Except
               	DMSERV.IBT.RollbackRetaining;
				End;
       	End;
       End;
    End
    Else Begin
	    //confirmação para apagar SUBSERVICO
   	If Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Deseja realmente apagar o Sub Serviço '+#13+ DMSERV.WSubServ.FieldByName('DESCRICAO').AsString+ '?' , '', 2, 3, False, 'c')<>2   Then
    		Exit;
           { TODO : Verificar relação de serviços com outras tabelas }
{	    If CheckRelation('COD_ESTOQUE', DMSERV.WSimilar.FieldByName('COD_ESTOQUE').AsString, ['ITENSPEDC', 'ITENSPEDVEN', 'LANCENT', 'LANCSAI'], 4)=True
	    Then Begin
 			Mensagem('OPÇÃO BLOQUEADA', 'Este produto não pode ser apagado, ele contém referências com outras tabelas!', 'Veririque a existência de lançamentos em pedidos de compra ou venda e correções de estoque com referência a este produto, ele não poderá ser apagado enquanto houver esta ligação', 1, 1, True, 'I');
	        Exit;
	    End;}

	    //Localiza em tSUBPRODUTO DE Acordo com xview
	    If FiltraTabela(DMSERV.TSubserv, 'SUBSERVICO', 'COD_SUBSERVICO', DMSERV.WSubServ.FieldByName('COD_SUBSERVICO').AsString, '')=True
	    Then Begin
        	Try
        		DMSERV.TSubserv.Delete;
            	DMSERV.TSubserv.ApplyUpdates;
            	DMSERV.IBT.CommitRetaining;
  				//FILTRA SUBSERVICO DE ACORDO COM O SERVICO
               SelectSERV;
            Except
               DMSERV.IBT.RollbackRetaining;
			End;
	    End;
    End;
end;

procedure TFServico.EDProdutoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	If Key=VK_Return
   Then Begin
   	//FILTRA VIEW DE SERVICO DE ACORDO COM EDIT PRODUTO
		FiltraTabela(DMSERV.WServico, 'VWSERVICO', 'COD_LOJA', '', ' (upper(SERVICO) like upper('+#39+EDProduto.Text+'%'+#39+')) ORDER BY SERVICO');
       //FILTRA VIEW DE SIMILARES DE ACORDO COM VIEW DE PRODUTOS
		FiltraTabela(DMSERV.WSubServ, 'VWSUBSERVICO', 'COD_LOJA', '', ' (COD_SERVICO = '+#39+DMSERV.WServico.FieldByName('COD_SERVICO').AsString+#39+') ORDER BY DESCRICAO');
   END;
   If key=VK_Escape Then
		FiltraTabela(DMSERV.WServico, 'VWSERVICO', '', '', ' ORDER BY SERVICO');

    //contrala next e prior na tabela de wproduto
    If key=VK_Up Then
       DMSERV.WServico.prior;
    If Key=VK_Down Then
       DMSERV.WServico.Next;
end;
procedure TFServico.EDGrupoCompKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  	 If Key=VK_RETURN
    Then Begin//filtra wservico de acordo com os valores da edit
       SelectSERV;
    End;
    if KEY=VK_ESCAPE Then
    Begin//lia as edits de busca e libera todos os servico de acordo com a loja
        SelectServ;
    End;

    //contrala next e prior na tabela de wproduto
    If key=VK_Up
    Then Begin
       DMSERV.WServico.prior;
		//FILTRA SIMILAR DE ACORDO COM O SERVICO
		FiltraTabela(DMSERV.WSubServ , 'VWSUBSERVICO', 'COD_SERVICO', DMSERV.WServico.FieldByName('COD_SERVICO').AsString, ' Order By DESCRICAO');
  	 End;
    If Key=VK_Down
    Then Begin
       DMSERV.WServico.Next;
		//FILTRA SUBSERVICO
		FiltraTabela(DMSERV.WSubServ, 'VWSUBSERVICO', 'COD_SERVICO', DMSERV.WServico.FieldByName('COD_SERVICO').AsString, ' Order By DESCRICAO');
	 End;

end;

procedure TFServico.EdCodCompostoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	If Key=VK_Return
   Then Begin
		//FILTRA SIMILAR DE ACORDO COM A DESCRICAO
		FiltraTabela(DMSERV.WSubServ, 'VWSUBSERVICO', 'COD_LOJA', '', ' (upper(CODCOMPOSTO) like upper('+#39+EdCodComposto.Text+'%'+#39+')) ORDER BY DESCRICAO');
   End;
   If KEy=VK_Escape
   Then Begin//Libera todos os similares
		//FILTRA SIMILAR DE ACORDO COM A LOJA
		FiltraTabela(DMSERV.WSubServ, 'VWSUBSERVICO', 'COD_LOJA', '', ' Order By DESCRICAO');
	END;

   //controla next e prior de wsimilar
   If key=VK_Up Then
       DMSERV.WSubServ.Prior;
   If key=VK_Down Then
       DMSERV.WSubServ.Next;
end;

procedure TFServico.EDSimilarKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	If Key=VK_Return
   Then Begin
		//FILTRA SIMILAR DE ACORDO COM A DESCRICAO
		FiltraTabela(DMSERV.WSubServ, 'VWSUBSERVICO', 'COD_LOJA', '', ' (upper(DESCRICAO) like upper('+#39+EDSimilar.Text+'%'+#39+')) ORDER BY DESCRICAO');
   End;

   If KEy=VK_Escape
   Then Begin//Libera todos os similares
		//FILTRA SIMILAR DE ACORDO COM A LOJA
		FiltraTabela(DMSERV.WSubServ, 'VWSUBSERVICO', 'COD_LOJA', '', ' Order By DESCRICAO');
	END;

   //controla next e prior de wsimilar
   If key=VK_Up Then
       DMSERV.WSUBSERV.Prior;
   If key=VK_Down Then
       DMSERV.WSUBSERV.Next;

end;

procedure TFServico.BtnConsultarClick(Sender: TObject);
begin
//  inherited;
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('SERVICO', 'M')=False Then
  		Exit;

	 	//Localiza os dados em todas as tabelas que fazem referências na Tabela Produto;
    	//filtra SERVICO
		If FiltraTabela(DMSERV.TServ, 'SERVICO', 'COD_SERVICO', DMSERV.WServico.FieldByName('COD_SERVICO').AsString, '')=False Then
       	Exit;
		XCOD_SERVICO:=DMSERV.TServ.FieldByName('COD_SERVICO').AsInteger;

		//filtra subSERVICO
		If FiltraTabela(DMSERV.TSubserv, 'SUBSERVICO', 'COD_SUBSERVICO', DMSERV.WSubServ.FieldByName('COD_SUBSERVICO').AsString, '')=False Then
       	Exit;
		XCOD_SUBSERVICO:=DMSERV.TSubserv.FieldByName('COD_SUBSERVICO').AsInteger;

       //filtra forma de pagamento
		If FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'COD_FORMPAG', DMSERV.TSubserv.FieldByName('COD_FORMPAG').AsString, '')
    	Then Begin
           XCOD_FORMPAG:= DMSERV.TSubserv.FieldByName('COD_FORMPAG').AsInteger;
           FrmFormPag1.EDCodigo.Text:=DMFINANC.TFormPag.FieldByName('COD_INTERNO').AsString;
           FrmFormPag1.EdDescricao.Text:=DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString;
       End
       Else begin
           XCOD_FORMPAG:=-1;
           FrmFormPag1.EDCodigo.Text:='';
           FrmFormPag1.EdDescricao.Text:='';
       End;

       //filtra grade
		If FiltraTabela(DMServ.TServ, 'SERVICO', 'cod_servico', DMSERV.TSubserv.FieldByName('COD_SERVICO').AsString, '')
    	Then Begin
           XCOD_SERVICO:= DMSERV.TServ.FieldByName('COD_SERVICO').AsInteger;
           EdCodGrade.Text:=DMServ.TServ.FieldByName('COD_INTERNO').AsString;
           EdDescricaoGrade.Text:=DMServ.TServ.FieldByName('DESCRICAO').AsString;
       End
       Else begin
           XCOD_SERVICO:= -1;
           EdCodGrade.Text:='';
           EdDescricaoGrade.Text:='';
       End;


       //Controle para despachante
       If DMMACS.TLoja.FieldByName('ATIVIDADE').AsString = 'DESPACHANTE'
       Then Begin
           CbFaturaVista.Checked:=False;
           CBFaturaPrazo.Checked:=False;
           CbFaturarNao.Checked:=False;
       	If DMServ.TSubserv.FieldByName('TIPOFATURA').AsString='V' Then
           	CbFaturaVista.Checked:=True;
       	If DMServ.TSubserv.FieldByName('TIPOFATURA').AsString='P' Then
           	CBFaturaPrazo.Checked:=True;
       	If DMServ.TSubserv.FieldByName('TIPOFATURA').AsString='N' Then
           	CbFaturarNao.Checked:=True;
			//Verifica Conta
           If FiltraTabela(DMCONTA.TPlnCta, 'plncta', 'cod_plncta', DMSERV.TSubserv.FieldByName('cod_contA').AsString, '')
           Then Begin
               XCOD_CONTA:=DMCONTA.TPlnCta.FieldByName('cod_plncta').AsInteger;
               FrmContaServico.EDCodigo.Text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
               FrmContaServico.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
           End
           Else begin
               FrmContaServico.EDCodigo.Text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
               FrmContaServico.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
               XCOD_CONTA:=-1;
           End;
       End;
	 	//Edit as Tabelas;
	 	DMSERV.TServ.Edit;
	 	DMSERV.TSubserv.Edit;
	    inherited;
end;

procedure TFServico.dbvalorunitarioExit(Sender: TObject);
begin
   // caso a edit nao possuir nenhum valor, o calculo abaixo vai gerar um erro, por isso é necessário ter no minimo um valor real
   If (DBTempo.Text = '') or (StrToInt(DBTempo.Text) = 0)
   Then Begin
       Mensagem('   A T E N Ç Ã O   ','O campo "Tempo" deve ter valor maior que "0".','',1,1,false,'I');
       DBTempo.SetFocus;
       Exit;
   End;

	CalcVlrServ;

   DMSERV.TSubserv.FieldByName('VLRSUBSERV').AsCurrency:=DMSERV.TSubserv.FieldByName('TEMPSERV').AsCurrency*DMSERV.TSubserv.FieldByName('VLRFINAL').AsCurrency;
end;

procedure TFServico.DBVlrFinalExit(Sender: TObject);
begin
//  inherited;
   // faz o calculo da porcentagem referente ao valor final que o usuario informar
   dblucrat.Text := FloatToStr( ((StrToFloat(DBServFinal.Text) - StrToFloat(dbvalorunitario.Text)) * 100) / StrToFloat(dbvalorunitario.Text) );

   DMSERV.TSubserv.FieldByName('LUCRAT').AsCurrency := StrToFloat(dblucrat.Text);

   DMSERV.TSubserv.FieldByName('VLRFINAL').AsCurrency := StrToFloat(DBServFinal.Text);
	DMSERV.TSubserv.FieldByName('VLRSUBSERV').AsCurrency := DMSERV.TSubserv.FieldByName('VLRFINAL').AsCurrency;

   Exit;
end;

// se o sistema for para guinchomaq os dados são apagados
Procedure TFServico.OcultaDados;
begin
   LGarantia.Visible := false;
   DBQuant.Visible := false;
   DBDesc.Visible := false;
   LEspecificacao.Visible := false;
   dbcodbarra.Visible := false;
   LTempo.Visible := false;
   LExec.Visible := false;
   DBTempo.Visible := false;
   DBExec.Visible := false;
   GBFinanc.Visible := false;
   LVlrUnit.Visible := false;
   LLucrat.Visible := false;
   LCoef.Visible := false;
   LTotServ.Visible := false;
   dbvalorunitario.Visible := false;
   dblucrat.Visible := false;
   DBCoef.Visible := false;
end;


procedure TFServico.CbFaturaVistaClick(Sender: TObject);
begin
  inherited;
	If CbFaturaVista.Checked=True
   Then Begin
       CBFaturaPrazo.Checked:=False;
       CbFaturarNao.Checked:=False;
   End;

end;

procedure TFServico.CBFaturaPrazoClick(Sender: TObject);
begin
  inherited;
	If CBFaturaPrazo.Checked=True
   Then Begin
       CbFaturaVista.Checked:=False;
       CbFaturarNao.Checked:=False;
   End;
end;

procedure TFServico.CbFaturarNaoClick(Sender: TObject);
begin
  inherited;
	If CbFaturarNao.Checked=True
   Then Begin
       CbFaturaVista.Checked:=False;
       CBFaturaPrazo.Checked:=False;
   End;

end;

procedure TFServico.FrmContaServicoBTNOPENClick(Sender: TObject);
   Var
	Oper: Char;
begin
  inherited;
   Oper:='D';
   // armazena o tipo do plano de conta que vai ser filtrado. Se for "C" buscará apenas contas de creditos, e se for "D" irá selecionar apenas contas de despesa. Estando sem valor, o formulario vai trazer todas as contas
   XTIPO_CONTA := 'D';

	//LIBERA TODAS OS ESTADOS PARA CONSUTA
	filtraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_FILIAL', '', ' (COD_FILIAL = '+FMenu.LCODEMPRESA.Caption+') AND (NATUREZA = '+#39+Oper+#39+') AND (TIPO='+#39+'N'+#39+') ORDER BY CLASSIFICACAO');

   If AbrirForm(TFConsPlnCta, FConsPlnCta, 1)='Selected'
   Then Begin
      	XCOD_CONTA:=DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger;
      	FrmContaServico.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
      	FrmContaServico.EDCodigo.text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
   End;
   FrmContaServico.Repaint;
   FrmContaServico.Refresh;
end;

procedure TFServico.FrmContaServicoBTNMINUSClick(Sender: TObject);
begin
  inherited;
   XCOD_CONTA:=-1;
   FrmContaServico.EDCodigo.Text:='';
   FrmContaServico.EdDescricao.Text:='';
   FrmContaServico.Refresh;
end;

procedure TFServico.FrmFormPag1BTNMINUSClick(Sender: TObject);
begin
  inherited;
   XCOD_FORMPAG:=-1;
   FrmFormPag1.EDCodigo.Text:='';
   FrmFormPag1.EdDescricao.Text:='';
   FrmFormPag1.Repaint;
end;

procedure TFServico.FrmFormPag1BTNOPENClick(Sender: TObject);
begin
  inherited;
  If AbrirForm(TFFormPag, FFormPag, 1)='Selected'
   Then Begin
		XCOD_FORMPAG:=DMFinanc.TFormPag.FieldByName('COD_FORMPAG').AsInteger;
       FrmFormPag1.EDCodigo.Text:=DMFinanc.TFormPag.FieldByName('COD_INTERNO').AsString;
       FrmFormPag1.EdDescricao.Text:=DMFinanc.TFormPag.FieldByName('DESCRICAO').AsString;
   	FrmFormPag1.Repaint;
   End
   Else Begin
      if XCOD_FORMPAG=-1
      then begin
        //XCOD_FORMPAG:=-1;
        FrmFormPag1.EDCodigo.Text:='';
        FrmFormPag1.EdDescricao.Text:='';
      end;
   End;
end;

procedure TFServico.FrmFormPag1EDCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
	If Key=VK_RETURN
  	Then Begin
   	//seleciona a forma de pagamento
       If FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'COD_INTERNO', FrmFormPag1.EDCodigo.Text, '')=true
       Then Begin
       	XCOD_FORMPAG:=DMFINANC.TFormPag.FieldByName('COD_FORMPAG').AsInteger;
          	FrmFormPag1.EDCodigo.Text:=DMFINANC.TFormPag.FieldByName('COD_INTERNO').AsString;
          	FrmFormPag1.EdDescricao.Text:=DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString;
		End
       Else Begin
       	XCOD_FORMPAG:=-1;
          	FrmFormPag1.EDCodigo.Text:='';
          	FrmFormPag1.EdDescricao.Text:='';
		End;
       FrmFormPag1.Repaint;
  end;
end;

procedure TFServico.BtnProdutoClick(Sender: TObject);
begin
  inherited;
    FiltraTabela(DMServ.TServ, 'SERVICO', '', '', '');
    If AbrirForm(TFCADSERVICO, FCADSERVICO, 1)='Selected'
    Then Begin
        XCOD_SERVICO:= DMServ.TServ.FieldByName('COD_SERVICO').AsInteger;
        EdCodGrade.TEXT:=DMServ.TServ.FieldByName('cod_interno').AsString;
        EdDescricaoGrade.Text:=DMServ.TServ.FieldByName('DESCRICAO').AsString;
    End;
end;

procedure TFServico.DBServFinalExit(Sender: TObject);
begin
  inherited;
   dblucrat.Text := FloatToStr( ((StrToFloat(DBServFinal.Text) - StrToFloat(dbvalorunitario.Text)) * 100) / StrToFloat(dbvalorunitario.Text) );

   DMSERV.TSubserv.FieldByName('LUCRAT').AsCurrency := StrToFloat(dblucrat.Text);

   DMSERV.TSubserv.FieldByName('VLRFINAL').AsCurrency := StrToFloat(DBServFinal.Text);

end;

procedure TFServico.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	If Key=VK_Return
   Then Begin
   	//FILTRA VIEW DE SERVICO DE ACORDO COM EDIT PRODUTO
		FiltraTabela(DMSERV.WServico, 'VWSERVICO', 'COD_LOJA', '', ' (upper(SERVICO) like upper('+#39+EDProduto.Text+'%'+#39+')) ORDER BY SERVICO');
       //FILTRA VIEW DE SIMILARES DE ACORDO COM VIEW DE PRODUTOS
		FiltraTabela(DMSERV.WSubServ, 'VWSUBSERVICO', 'COD_LOJA', '', ' (COD_SERVICO = '+#39+DMSERV.WServico.FieldByName('COD_SERVICO').AsString+#39+') ORDER BY DESCRICAO');
   END;
   If key=VK_Escape Then
		FiltraTabela(DMSERV.WServico, 'VWSERVICO', '', '', ' ORDER BY SERVICO');

    //contrala next e prior na tabela de wproduto
    If key=VK_Up Then
       DMSERV.WServico.prior;
    If Key=VK_Down Then
       DMSERV.WServico.Next;

end;

end.
