unit ULancEstPadrao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UCadPadraoDesc, TFlatHintUnit, Mask, DBCtrls, DBColorEdit,
  Grids, DBGrids, StdCtrls, Buttons, TFlatEditUnit, jpeg, ExtCtrls,
  EditFloat, ColorEditFloat, ColorMaskEdit, Menus, DrLabel, AppEvnts;

type
  TFLancEstPadrao = class(TFCadPadraoDesc)
    GroupBox2 : TGroupBox;
    Label2: TLabel;
    btnprocprod: TBitBtn;
    LProduto: TLabel;
    LSimilar: TLabel;
    LGrupo: TLabel;
    LSubGrupo: TLabel;
    LMarca: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Lestoque: TLabel;
    Label15: TLabel;
    EdCodComposto: TColorMaskEdit;
    Label16: TLabel;
    Label17: TLabel;
    DBColorEdit1: TDBColorEdit;
    DBColorEdit2: TDBColorEdit;
    Label18: TLabel;
    DBColorEdit3: TDBColorEdit;
    EdCodBarra: TMaskEdit;
    LCodProduto: TLabel;
    LCodSubProduto: TLabel;
    PCodFab: TPanel;
    Label1: TLabel;
    EDCodFab: TColorMaskEdit;
    BtnEscolheProc: TBitBtn;
    MEscolheProc: TPopupMenu;
    ControleInterno1: TMenuItem;
    CdFab1: TMenuItem;
    PCodInterno: TPanel;
    Label3: TLabel;
    EdCodInterno: TMaskEdit;
    EdCtrlInterno: TFlatEdit;
    EdCodFabricante: TFlatEdit;
    EdDtLancamento: TColorMaskEdit;
    PLote: TPanel;
    Label70: TLabel;
    CBLoteSelecionado: TDBLookupComboBox;
    BtnAbreLote: TBitBtn;
    EdPesquisaRapida: TColorMaskEdit;
    lPesquisa: TLabel;
    pPesquisaRapida: TPanel;
    dgPesquisaRapida: TDBGrid;
    ApplicationEvents1: TApplicationEvents;
    LQtd4Casas: TLabel;
    EdQtd4Casas: TFloatEdit;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodBarraKeyPress(Sender: TObject; var Key: Char);
    procedure EdCodCompostoKeyPress(Sender: TObject; var Key: Char);
    procedure EdCodInternoKeyPress(Sender: TObject; var Key: Char);
    procedure BtnGravarClick(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure btnprocprodClick(Sender: TObject);
    procedure EDCodFabKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ControleInterno1Click(Sender: TObject);
    procedure CdFab1Click(Sender: TObject);
    procedure BtnEscolheProcClick(Sender: TObject);
    procedure EdNomeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCtrlInternoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodFabricanteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdDtLancamentoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GroupBox2Exit(Sender: TObject);
    //procedure PSelectLoteExit(Sender: TObject);
   // procedure PLoteExit(Sender: TObject);
   // procedure GDBLoteKeyPress(Sender: TObject; var Key: Char);
  //  procedure EdLoteKeyPress(Sender: TObject; var Key: Char);
    procedure DBDESCExit(Sender: TObject);
    procedure EDCodFabKeyPress(Sender: TObject; var Key: Char);
    procedure BtnAbreLoteKeyPress(Sender: TObject; var Key: Char);
    procedure EdPesquisaRapidaEnter(Sender: TObject);
    procedure EdPesquisaRapidaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdPesquisaRapidaKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dgPesquisaRapidaDblClick(Sender: TObject);
    procedure dgPesquisaRapidaKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dgPesquisaRapidaCellClick(Column: TColumn);
    procedure dgPesquisaRapidaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ApplicationEvents1Message(var Msg: tagMSG;
      var Handled: Boolean);
    procedure DBPRIMEIROExit(Sender: TObject);
  private
    { Private declarations }
    //recupera um produto em alxproduto de acordo com os campos passados
    Function SelectProd(Xcampo: String; Xvalor: String):Boolean;
    //Procedure que preenche as labels de acordo com o produto encontrado através da função selectprod
	 Procedure EscreveLabel(QualEdit: String);
  public
    { Public declarations }
  end;

var
  FLancEstPadrao: TFLancEstPadrao;
  XCOD_LOTE: Integer;//CHAVE PRIMÁRIA PARA CONTROLE DE LOTE
  XCOD_ESTOQUE: Integer;//Chave Primaria para controle de estoque
  XQTDLOTE: Real;// quantidade da venda no lote
  XQtd: Real;
  xCodProdTmp: String;

implementation

uses UMenu, AlxMessage, UDMMacs, Alxor32, UProduto, UDMEstoque, UDMSaida,
  UCadPadrao, ULote, DB, UMDO;

{$R *.DFM}

//Procedure que preenche as labels de acordo com o produto encontrado através da função selectprod
Procedure TFLancEstPadrao.EscreveLabel(QualEdit: String);
Begin
	If QualEdit<>''
   Then Begin
       	DMESTOQUE.WProduto.Close;
       	DMESTOQUE.WProduto.SQL.Clear;
       	DMESTOQUE.WProduto.SQL.Add('SELECT * FROM VWPRODUTO WHERE COD_PRODUTO=:CODPROD');
       	DMESTOQUE.WProduto.ParamByName('CODPROD').AsString:=DMESTOQUE.Alx.FieldByName('COD_PRODUTO').AsString;
       	DMESTOQUE.WProduto.Open;

           //FiltraTabela(DMESTOQUE.WProduto, 'VWPRODUTO', 'COD_PRODUTO', DMESTOQUE.WSimilar.FieldByName('COD_PRODUTO').AsString, '');
           LProduto.Caption:=DMEstoque.WProduto.FieldByName('produto').AsString;
           LSimilar.Caption:=DMEstoque.Alx.FieldByName('DESCRICAO').AsString;
           If DMEstoque.Alx.FieldByName('ESTFISICO').AsString<>'' then
	           Lestoque.Caption:=DMEstoque.Alx.FieldByName('ESTFISICO').AsString
			Else
	           Lestoque.Caption:='0';


           If DMESTOQUE.WSimilar.IsEmpty
           Then Begin
           	LProduto.Caption:='NÃO ENCONTRADO';
           	LSimilar.Caption:='NÃO ENCONTRADO';
           	Lestoque.Caption:='';
           	LGrupo.Caption:='';
           	LSubGrupo.Caption:='';
           	LMarca.Caption:='';
           End
           Else Begin
           	LCodProduto.Caption:=DMEstoque.Alx.FieldByName('COD_PRODUTO').AsString;
           	LCodSubProduto.Caption:=DMEstoque.Alx.FieldByName('COD_SUBPRODUTO').AsString;
           	LGrupo.Caption:=DMEstoque.WProduto.FieldByName('GRUPO').AsString;
           	LSubGrupo.Caption:=DMEstoque.WProduto.FieldByName('SUBGRUPO').AsString;
           	LMarca.Caption:=DMEstoque.Alx.FieldByName('MARCA').AsString;
               XTabela.Edit;
           	XTabela.FieldByName('QUANTIDADE').AsFloat:=1;
           	XTabela.FieldByName('DT_ESTOQUE').AsString:=DateToStr(Date());
           	XTabela.FieldByName('DT_LANCAMENTO').AsString:=DateToStr(Date());
           	XTabela.FieldByName('MOTIVO').AsString:='Lançamento de Correção de Estoque';
               XTabela.Post;
           	DBPRIMEIRO.SetFocus;
           	DBPRIMEIRO.SelectAll;
           End;
	End
   Else Begin
       LCodProduto.Caption := '';
       LCodSubProduto.Caption := '';
       LProduto.Caption := '';
       LSimilar.Caption := '';
       Lestoque.Caption := '';
       LGrupo.Caption := '';
       LSubGrupo.Caption := '';
       LMarca.Caption := '';
   End;
End;

//recupera um produto em alxproduto de acordo com os campos passados
Function TFLancEstPadrao.SelectProd(Xcampo: String; Xvalor: String):Boolean;
Begin
	//prepara e informa nova sql
	DMEstoque.Alx.Close;
   DMEstoque.Alx.SQL.Clear;
   DMEstoque.Alx.SQL.Add(' SELECT produto.cod_produto, subproduto.codcomposto, produto.descricao as PRODUTO, estoque.estfisico, ');
   DMEstoque.Alx.SQL.Add(' subproduto.cod_subproduto, subproduto.codbarra, subproduto.descricao as DESCRICAO, grupoprod.descricao as GRUPO, ');
   DMEstoque.Alx.SQL.Add(' subgrupoprod.descricao as SUBGRUPO, subproduto.fabricante, subproduto.marca, ');
   DMEstoque.Alx.SQL.Add(' estoque.cod_loja, estoque.cod_estoque ');
   DMEstoque.Alx.SQL.Add(' FROM SUBPRODUTO left join produto on subproduto.cod_produto = produto.cod_produto ');
   DMEstoque.Alx.SQL.Add(' left Join estoque on subproduto.cod_subproduto = estoque.cod_subprod ');
   DMEstoque.Alx.SQL.Add(' left join grupoprod on grupoprod.cod_grupoprod = produto.cod_grupoprod ');
   DMEstoque.Alx.SQL.Add(' left join subgrupoprod on produto.cod_subgrupoprod = subgrupoprod.cod_subgrupoprod ');
   DMEstoque.Alx.SQL.Add(' LEFT JOIN CODIGOBARRA ON CODIGOBARRA.COD_ESTOQUE = ESTOQUE.COD_ESTOQUE ');
   DMEstoque.Alx.SQL.Add(' Where (estoque.cod_loja = :CODLOJA) ');
   //passa parametro para selecionar produto por loja
   DMEstoque.Alx.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;

   //caso seja pedido para selecionar produtos pelo código composto, é passado novo parametro
   If Xcampo='CODCOMPOSTO'
   Then Begin
	   DMEstoque.Alx.SQL.Add('And (SUBPRODUTO.CODCOMPOSTO = :CODCOMPOSTO) ');
	   DMEstoque.Alx.ParamByName('CODCOMPOSTO').AsString:=EdCodComposto.Text;
	End;

   //caso seja pedido para selecionar produtos pelo código de barras, é passado novo parametro
   If Xcampo='CODBARRA'
   Then Begin
	   DMEstoque.Alx.SQL.Add('And ((SUBPRODUTO.CODBARRA = '+#39+EdCodBarra.Text+#39+') OR (CODIGOBARRA.CODBARRA = '+QuotedStr(EdCodBarra.Text)+')) ');
	End;

   //caso seja pedido para selecionar produtos pelo código d o fabricante, é passado novo parametro
   If Xcampo='CODPRODFABR'
   Then Begin
	   DMEstoque.Alx.SQL.Add(' AND (upper(SUBPRODUTO.CODPRODFABR) = upper('+#39+EDCodFab.Text+#39+')) ');
	End;                                                       

   //caso seja pedido para selecionar produtos pelo código Interno, é passado novo parametro
   If Xcampo='COD_INTERNO'
   Then Begin
	   DMEstoque.Alx.SQL.Add('And (SUBPRODUTO.CONTRINT=:CODINTERNO) ');
	   DMEstoque.Alx.ParamByName('CODINTERNO').AsString:=EdCodInterno.Text;
	End;
   //caso seja pedido para selecionar produtos pelo código Interno, é passado novo parametro
   If Xcampo='COD_SUBPRODUTO'
   Then Begin
	   DMEstoque.Alx.SQL.Add('And (SUBPRODUTO.COD_SUBPRODUTO = :CODSUBPRODUTO) ');
	   DMEstoque.Alx.ParamByName('CODSUBPRODUTO').AsString:=DMEstoque.Alx.FieldByName('COD_SUBPRODUTO').AsString;
	End;

   If Xcampo='COD_ESTOQUE'
   Then Begin
	   DMEstoque.Alx.SQL.Add('And (ESTOQUE.COD_ESTOQUE = :ESTOQUE) ');
	   DMEstoque.Alx.ParamByName('ESTOQUE').AsString:=Xvalor;
	End;

   DMEstoque.Alx.SQL.Text;
   DMEstoque.Alx.Open;
   XCOD_ESTOQUE:=DMESTOQUE.Alx.FieldByName('COD_ESTOQUE').AsInteger;
   //Verifica e passa o resultado se encontrou ou não algum produto
   If not DMEstoque.Alx.IsEmpty Then
   	Result:=True
   Else
       Result:=False;
End;
procedure TFLancEstPadrao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if (Key = VK_F6) OR (KEY = VK_F8) then
   	Exit;
  inherited;
{	If key=vk_f4 Then
       EdCodBarra.SetFocus;}
end;

procedure TFLancEstPadrao.EdCodBarraKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	//caso seja pressionado o botão enter e seleciona o produto classificado e jogado o focu para edit de quantidade
   If Key=#13
   Then Begin
		If SelectProd('CODBARRA', EdCodBarra.Text)=False Then
       	EdCodBarra.SetFocus
       Else
			EscreveLabel('CODBARRA');
   End;
end;

procedure TFLancEstPadrao.EdCodCompostoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	//caso seja pressionado o botão enter e seleciona o produto classificado e jogado o focu para edit de quantidade
   If Key=#13
   Then Begin
		If SelectProd('CODCOMPOSTO', EdCodComposto.Text)=False Then
       	EdCodComposto.SetFocus;
		EscreveLabel('CODCOMPOSTO');
   End;

end;

procedure TFLancEstPadrao.EdCodInternoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
   If Key=#13
   Then Begin
		If SelectProd('COD_INTERNO', EdCodInterno.Text)=False Then
       	EdCodInterno.SetFocus;
		EscreveLabel('COD_INTERNO');
   End;
end;

procedure TFLancEstPadrao.BtnGravarClick(Sender: TObject);
Var
	XEstPed, XEstFisico, XEstReserv, xMediaCustos: Real;
   XCOD_ESTLOTE: Integer;
begin
	//realiza validações quanto a quantidade lançada
	If DBPRIMEIRO.Text<>''
   Then Begin
   	If StrToFloat(DBPRIMEIRO.Text)=0
       Then Begin
			Mensagem('INFORMAÇÃO AO USUÁRIO', 'É necessário que se informe uma quantidade superior a "0"!', '', 1, 1, False, 'I');
           Exit;
           DBPRIMEIRO.SetFocus;
       End;
   End
   Else Begin
		Mensagem('INFORMAÇÃO AO USUÁRIO', 'É necessário que se informe uma quantidade!', '', 1, 1, False, 'I');
       Exit;
       DBPRIMEIRO.SetFocus;
	End;

	//Utilizada para filtrar o estoque referente a subproduto e Loja
	DMEstoque.Alx.Close;
	DMEstoque.Alx.SQL.Clear;
	DMEstoque.Alx.SQL.Add('Select * from Estoque Where (cod_loja =:cod_loja) and (cod_subprod =:cod_subprod)');
	DMEstoque.Alx.ParamByName('cod_Loja').AsString:=FMenu.LCODLOJA.Caption;
	DMEstoque.Alx.ParamByName('cod_Subprod').AsString:=LCodSubProduto.Caption;
	DMEstoque.Alx.Open;
	If FiltraTabela(DMEstoque.TEstoque, 'ESTOQUE', 'COD_ESTOQUE', IntToStr(XCOD_ESTOQUE) , '')
   Then Begin
   	//Armazena o saldo atual na tabela em movimento
       XTabela.Edit;
	    XTabela.FieldByName('QTDANT').AsFloat:=DMESTOQUE.TEstoque.FieldByName('ESTFISICO').AsFloat;
	    XTabela.FieldByName('QTD4CASAS').AsString:=EdQtd4Casas.Text;
       XTabela.post;
       
       try
           If XSQLTABELA='LANCSAI'
           Then Begin //significa que se esta trabalhando com lançamentos de saída
               DMESTOQUE.CalcCustMed(XCOD_ESTOQUE, 'S', StrToFloat(DBPRIMEIRO.Text), 0);
               DMEstoque.TEstoque.edit;
               DMEstoque.TEstoque.FieldByName('ATUALIZAR').AsString:='1';
               DMEstoque.TEstoque.FieldByName('ESTFISICO').Value:=DMEstoque.TEstoque.FieldByName('ESTFISICO').Value-StrToFloat(DBPRIMEIRO.TEXT);
               DMEstoque.TEstoque.FieldByName('ESTOQUE4CASAS').AsString:=RetornaCalculoPreciso4Casas(DMEstoque.TEstoque.FieldByName('ESTOQUE4CASAS').AsString, EdQtd4Casas.Text, '-');
               DMEstoque.TEstoque.Post;

               //busca o custo mais antigo com estoque, dá saída de estoque nele e atualiza.
               //se a quantidade existente pra ele não for o suficiente para a venda, busca pelo
               //proximo mais antigo (nunca ficar negativo)
               AplicaSaidaCustoEstoque(XCOD_ESTOQUE, -1, '', StrToFloat(DBPRIMEIRO.Text));
           End
           Else Begin
               DMESTOQUE.CalcCustMed(XCOD_ESTOQUE , 'E', StrToFloat(DBPRIMEIRO.Text), 0);
               If DMEstoque.TEstoque.FieldByName('ESTFISICO').AsString=''
               Then Begin
                  DMEstoque.TEstoque.edit;
                  DMEstoque.TEstoque.FieldByName('ATUALIZAR').AsString:='1';
                  DMEstoque.TEstoque.FieldByName('ESTFISICO').AsString:=DBPRIMEIRO.TEXT;
                  DMEstoque.TEstoque.FieldByName('ESTOQUE4CASAS').AsString:=EdQtd4Casas.Text;
                  DMESTOQUE.TEstoque.Post;
               End
               Else Begin
                  DMESTOQUE.TEstoque.Edit;
                  DMEstoque.TEstoque.FieldByName('ATUALIZAR').AsString:='1';
                  DMEstoque.TEstoque.FieldByName('ESTFISICO').Value:=DMEstoque.TEstoque.FieldByName('ESTFISICO').Value+StrToFloat(DBPRIMEIRO.TEXT);
                  DMEstoque.TEstoque.FieldByName('ESTOQUE4CASAS').AsString:=RetornaCalculoPreciso4Casas(DMEstoque.TEstoque.FieldByName('ESTOQUE4CASAS').AsString, EdQtd4Casas.Text, '+');
                  DMESTOQUE.TEstoque.Post;
               End;
               //criando um novo CustoEstoqueEmpresa sem ItemPedido e armazenar a média dos custos disponiveis 
               //ou o valor de compra do Produto quando não existir custos ativos
               MDO.QConsulta.Close;
               MDO.QConsulta.SQL.Clear;
               MDO.QConsulta.SQL.Add(' SELECT (SUM(VALORUNITARIOCUSTO) / COUNT(cod_custoestoqueempresa)) AS MEDIACUSTO ');
               MDO.QConsulta.SQL.Add(' FROM CUSTOESTOQUEEMPRESA ');
               MDO.QConsulta.SQL.Add(' WHERE (ATIVO = ''1'') AND (QUANTIDADEDISPONIVELVENDA > 0) ');
               MDO.QConsulta.SQL.Add(' AND (COD_ESTOQUE = :COD_ESTOQUE) ');
               MDO.QConsulta.ParamByName('COD_ESTOQUE').AsInteger := XCOD_ESTOQUE;
               MDO.QConsulta.Open;
               if (MDO.QConsulta.FieldByName('MEDIACUSTO').AsString = '') then
                   //quando não existe custos disponiveis, buscamos o proprio valor de compra do produto
                   xMediaCustos := DMEstoque.TEstoque.FieldByName('VLRUNITCOMP').AsCurrency
               else
                   xMediaCustos := MDO.QConsulta.FieldByName('MEDIACUSTO').AsCurrency;

               InserirItemCustoProduto(XCOD_ESTOQUE, -1, xMediaCustos, StrToFloat(DBPRIMEIRO.TEXT), Date(), 'LANCEST');
           End;
       except
       end;

       //Atualiza saldo de estoque
       //prepara estoque em pedido de compra
       If DMEstoque.TEstoque.FieldByName('ESTPED').AsString='' Then
           XEstPed:=0
       Else
           XEstPed:=DMEstoque.TEstoque.FieldByName('ESTPED').Value;

       //prepara estoque em pedido de venda
       If DMEstoque.TEstoque.FieldByName('ESTRESERV').AsString='' Then
           XEstReserv:=0
       Else
           XEstReserv:=DMEstoque.TEstoque.FieldByName('ESTRESERV').Value;

       //prepara estoque fisico
       If DMEstoque.TEstoque.FieldByName('ESTFISICO').AsString='' Then
           XEstFisico:=0
       Else
           XEstFisico:=DMEstoque.TEstoque.FieldByName('ESTFISICO').Value;
           
       //calcula saldo de estoque
       Try
           DMESTOQUE.TEstoque.Edit;
			DMEstoque.TEstoque.FieldByName('ATUALIZAR').AsString:='1';
	  		DMEstoque.TEstoque.FieldByName('ESTSALDO').Value:=(XEstPed-XEstReserv)+XEstFisico;
           DMESTOQUE.TEstoque.Post; 

           XTabela.Edit;
           XTabela.FieldByName('COD_USUARIO').AsString:=FMenu.LCODUSUARIO.Caption;
           XTabela.FieldByName('COD_LOJA').AsString:=FMenu.LCODLOJA.Caption;
           XTabela.FieldByName('COD_ESTOQUE').AsInteger:=XCOD_ESTOQUE;
           XTabela.Post;

           DMEstoque.TransacEstoque.CommitRetaining;
           MDO.Transac.CommitRetaining;

           LiberaDados;
			inherited;
       Except
           DMEstoque.TransacEstoque.RollbackRetaining;
           MDO.Transac.RollbackRetaining;

			Mensagem('OPÇÃO BLOQUEADA', 'O Sistema encontrou problemas ao tentar salvar as informações, por motivos de segurança foram voltadas as informações anteriores!', 'É aconselhado que se o problema persistir, reinicar o sistema', 1, 1, True, 'I');
           BtnCancelar.Click;
       End;
   End;
end;

procedure TFLancEstPadrao.BtnNovoClick(Sender: TObject);
begin
  inherited;
  XCOD_LOTE:=-1;
//	If SelectProd('COD_INTERNO', '')=True Then
		EscreveLabel('');
//   Else
//     	EdCodInterno.SetFocus;
  //filtra loja para verificar em qual componente deve-se jogar o focu
  FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');

   //VERIFICA QUAL O COMPONENTE DE BUSCA DE PRODUTO DEVE APARECER
   IF DMMacs.Tloja.FieldByName('CAMPOPESQITEMPED').AsString = 'CI'
   THEN BEGIN
       PCodInterno.Visible:=True;
       PCodInterno.BringToFront;
   END;
   IF DMMacs.Tloja.FieldByName('CAMPOPESQITEMPED').AsString = 'CF'
   THEN BEGIN
  		PCodFab.Visible:=True;
       PCodFab.BringToFront;
   End;

   //VERIFICA QUAL COMPONENETE DEVE RECEBER O FOCUS
  IF DMMacs.Tloja.FieldByName('FOCUITEMPED').AsString = 'BP' THEN
       BtnProcProd.SetFocus;
  IF DMMacs.Tloja.FieldByName('FOCUITEMPED').AsString = 'CB' THEN
  		EDCodBarra.SetFocus;
  IF DMMacs.Tloja.FieldByName('FOCUITEMPED').AsString = 'PR' THEN//Pesquisa Rápida
  		EdPesquisaRapida.SetFocus;
  IF DMMacs.Tloja.FieldByName('FOCUITEMPED').AsString = 'CA'
  THEN BEGIN//Caso o focus deve cair sobre um código auxiliar. verificar qual o código em Questão
  		IF DMMacs.Tloja.FieldByName('CAMPOPESQITEMPED').AsString = 'CI'
       THEN Begin
       	Try
           	EDCodInterno.SetFocus;
           Except
           End;
       End;
		IF DMMacs.Tloja.FieldByName('CAMPOPESQITEMPED').AsString = 'CC'
       THEN Begin
       	Try
           	EDCodComposto.SetFocus;
           Except
           End;
		End;
		IF DMMacs.Tloja.FieldByName('CAMPOPESQITEMPED').AsString = 'CF'
       THEN Begin
       	Try
           	EDCodFab.SetFocus;
           Except
           End;
		End;
  END;

  EdPesquisaRapida.Text := '';
  pPesquisaRapida.Visible := False;
  pPesquisaRapida.SendToBack;
  FiltraTabela(DMESTOQUE.WSimilar, 'VWSIMILAR', '', '', '(ATIVO = ''S'') ORDER BY DESCRICAO');  
end;

procedure TFLancEstPadrao.btnprocprodClick(Sender: TObject);
begin
  inherited;
    If AbrirForm(TFProduto, FProduto, 1)='Selected'
    Then Begin
       EdCodInterno.Text:=DMEstoque.WSimilar.FieldByName('CONTRINT').AsString;
		//prepara e informa nova sql
		DMEstoque.Alx.Close;
   	DMEstoque.Alx.SQL.Clear;
   	DMEstoque.Alx.SQL.Add(' SELECT produto.cod_produto, subproduto.codcomposto, produto.descricao as PRODUTO, estoque.estfisico, ');
   	DMEstoque.Alx.SQL.Add(' subproduto.cod_subproduto, subproduto.codbarra, subproduto.descricao as DESCRICAO, grupoprod.descricao as GRUPO, ');
   	DMEstoque.Alx.SQL.Add(' subgrupoprod.descricao as SUBGRUPO, subproduto.fabricante, subproduto.marca, ');
   	DMEstoque.Alx.SQL.Add(' estoque.cod_loja, estoque.cod_estoque ');
   	DMEstoque.Alx.SQL.Add(' FROM SUBPRODUTO join produto on subproduto.cod_produto = produto.cod_produto ');
   	DMEstoque.Alx.SQL.Add(' Join estoque on subproduto.cod_subproduto = estoque.cod_subprod ');
   	DMEstoque.Alx.SQL.Add(' left join grupoprod on grupoprod.cod_grupoprod = produto.cod_grupoprod ');
   	DMEstoque.Alx.SQL.Add(' left join subgrupoprod on produto.cod_subgrupoprod = subgrupoprod.cod_subgrupoprod ');
   	DMEstoque.Alx.SQL.Add(' Where (estoque.cod_loja = :CODLOJA) And (estoque.cod_estoque=:CODESTOQUE)');
       DMESTOQUE.Alx.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
       DMESTOQUE.Alx.ParamByName('CODESTOQUE').AsString:=DMESTOQUE.WSimilar.FieldByName('COD_ESTOQUE').AsString;
		DMESTOQUE.Alx.Open;
       XCOD_ESTOQUE:=DMESTOQUE.WSimilar.FieldByName('COD_ESTOQUE').AsInteger;
		EscreveLabel('COD_SUBPRODUTO')
    End;
    EdPesquisaRapidaEnter(sender);
end;

procedure TFLancEstPadrao.EDCodFabKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
{	If Key=VK_Return
   Then Begin
       DMESTOQUE.WSimilar.Close;
       DMESTOQUE.WSimilar.SQL.Clear;
       DMESTOQUE.WSimilar.SQL.Add('SELECT * FROM VWSIMILAR WHERE CODFABRICANTE=:CODFAB');
       DMESTOQUE.WSimilar.ParamByName('CODFAB').AsString:=EDCodFab.Text;
       DMESTOQUE.WSimilar.Open;
{		FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'CODFABRICANTE', EDCodFab.Text, '');}
{		EscreveLabel('cod_produto');
   End;}
end;

procedure TFLancEstPadrao.ControleInterno1Click(Sender: TObject);
begin
  inherited;
   PCodInterno.Visible:=True;
   PCodInterno.BringToFront;
   PCodInterno.Enabled:=True;
   EDCodInterno.SetFocus;
end;

procedure TFLancEstPadrao.CdFab1Click(Sender: TObject);
begin
  inherited;
   PCodFab.Visible:=True;
   PCodFab.BringToFront;
   PCodFab.Enabled:=True;
   EDCodFab.SetFocus;
end;

procedure TFLancEstPadrao.BtnEscolheProcClick(Sender: TObject);
begin
  inherited;
  	MEscolheProc.Popup(BtnEscolheProc.Width+BtnEscolheProc.Left+40, 210);
end;

procedure TFLancEstPadrao.EdNomeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	Try
		If Key=VK_RETURN
   	Then Begin//pressionado enter, consultar
			FiltraTabela(XView, XSQLVIEW, XCampo, '', '(upper(NUMNOTA) like upper('+#39+EdNome.Text+'%'+#39+')) ORDER BY NUMNOTA')
       End;
       If Key=VK_ESCAPE
       Then Begin //pressionado esc, liberar
           LiberaDados;
       End;
   Except
   End;
end;

procedure TFLancEstPadrao.EdCtrlInternoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  	Try
		If Key=VK_RETURN
   	Then Begin//pressionado enter, consultar
			FiltraTabela(XView, XSQLVIEW, 'CTRLINT', '', '(upper(CTRLINT) like upper('+#39+EdCtrlInterno.Text+'%'+#39+')) ORDER BY CTRLINT');
       End;
       If Key=VK_ESCAPE
       Then Begin //pressionado esc, liberar
           LiberaDados;
       End;
   Except
   End;
end;

procedure TFLancEstPadrao.EdCodFabricanteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  	Try
		If Key=VK_RETURN
   	Then Begin//pressionado enter, consultar
			FiltraTabela(XView, XSQLVIEW, 'CODFABRICANTE', '', '(upper(CODFABRICANTE) like upper('+#39+EdCodFabricante.Text+'%'+#39+')) ORDER BY CODFABRICANTE');
       End;
       If Key=VK_ESCAPE
       Then Begin //pressionado esc, liberar
           LiberaDados;
       End;
   Except
   End;

end;

procedure TFLancEstPadrao.EdDtLancamentoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  	Try
		If Key=VK_RETURN
   	Then Begin//pressionado enter, consultar
       	try
           	XView.Close;
           	XView.SQL.Clear;
           	XView.SQL.Add('SELECT * FROM '+XSQLVIEW+' WHERE DT_LANCAMENTO = :DATA');
           	XView.ParamByName('DATA').AsDate:=StrToDate(EdDtLancamento.Text);
               XView.SQL.Text;
           	XView.Open;
           Except;
               LiberaDados;
           end;
       End;
       If Key=VK_ESCAPE
       Then Begin //pressionado esc, liberar
           LiberaDados;
       End;
   Except
   End;

end;

procedure TFLancEstPadrao.GroupBox2Exit(Sender: TObject);
begin
  inherited;
  {
  	if DMMACS.TLoja.FieldByName('USAOBSITEMCOMPRA').AsString = '1'
   Then Begin
   	//Paulo 23/11/2010: Seleciona os lotes
       DMMACS.TLote.Close;
       DMMACS.TLote.SQL.Clear;
       DMMACS.TLote.SQL.Add('select * from lote where lote.status = ''N'' order by lote.dtabertura');
       DMMACS.TLote.Open;
       PLote.Visible:=True;
       PLote.BringToFront;
   End;
   }
end;









procedure TFLancEstPadrao.DBDESCExit(Sender: TObject);
begin
  inherited;
  {
  	if DMMACS.TLoja.FieldByName('USAOBSITEMCOMPRA').AsString = '1'
   Then Begin
		//Paulo 23/11/2010: Seleciona os lotes
       DMMACS.TLote.Close;
       DMMACS.TLote.SQL.Clear;
       DMMACS.TLote.SQL.Add('select * from lote where lote.status = ''N'' order by lote.dtabertura');
       DMMACS.TLote.Open;
       PLote.Visible:=True;
       PLote.BringToFront;  
   End;
   }
end;

procedure TFLancEstPadrao.EDCodFabKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
   If Key=#13
   Then Begin
		If SelectProd('CODPRODFABR', EDCodFab.Text)=False Then
       	EdCodInterno.SetFocus;
		EscreveLabel('COD_INTERNO');
   End;
end;

procedure TFLancEstPadrao.BtnAbreLoteKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
		AbrirForm(TFLote,FLote,0);
end;

procedure TFLancEstPadrao.EdPesquisaRapidaEnter(Sender: TObject);
begin
	FiltraTabela(DMESTOQUE.WSimilar, 'VWSIMILAR', '', '', '(ATIVO = ''S'') ORDER BY DESCRICAO');
end;

procedure TFLancEstPadrao.EdPesquisaRapidaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  If Key = Vk_Down then
  begin
      DMESTOQUE.WSimilar.Next;

      xCodProdTmp := dgPesquisaRapida.Columns[0].Field.Text;
  end;


  If Key = Vk_UP then
  begin
      DMESTOQUE.WSimilar.Prior;

      xCodProdTmp := dgPesquisaRapida.Columns[0].Field.Text;
  end;
end;

procedure TFLancEstPadrao.EdPesquisaRapidaKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
	xPesqDesc, xPesqCtrlInt, xPesqCodFab: Boolean;
begin
  inherited;  
  pPesquisaRapida.Visible := True;
  pPesquisaRapida.BringToFront;

  if Key = VK_UP then
      Exit;

  if Key = VK_DOWN then
      Exit;

  	//Edmar - 03/10/2014 - Apertando ESC filtra o similar e esconde o painel
  	If Key = VK_ESCAPE then
   begin
       EdPesquisaRapidaEnter(sender);
       
      	pPesquisaRapida.Visible := False;
      	pPesquisaRapida.SendToBack;
      	EdPesquisaRapida.Text := '';
      	lPesquisa.Caption := 'Pesquisa:';

   	Exit;
  	End;

  //Edmar - 03/10/2014 - Se o campo estiver vazio esconde o painel e atualiza a label
  If EdPesquisaRapida.Text = '' then
  begin
      pPesquisaRapida.Visible := False;
      pPesquisaRapida.SendToBack;
      lPesquisa.Caption := 'Pesquisa:';

      Exit;
  end;

  //Edmar - 03/10/2014 - Apertando ENTER filtra similar com o código que foi buscado
  If Key = Vk_Return then
  begin
      DMESTOQUE.WSimilar.Close;
      DMESTOQUE.WSimilar.SQL.Clear;
      DMESTOQUE.WSimilar.SQL.Add('select * from vwsimilar where (vwsimilar.cod_estoque=:Codigo) AND  (VWSIMILAR.ATIVO=' + #39 + 'S' + #39 + ')');
      DMESTOQUE.WSimilar.ParamByName('CODIGO').AsString := xCodProdTmp;
      DMESTOQUE.WSimilar.Open;

      If Not DMESTOQUE.WSimilar.IsEmpty then
      begin
      		If SelectProd('COD_ESTOQUE', xCodProdTmp)=False Then
           	EdCodInterno.SetFocus;

          	EscreveLabel('COD_ESTOQUE');

          	pPesquisaRapida.Visible := False;
          	pPesquisaRapida.SendToBack;
          	EdPesquisaRapida.Text := '';

      		xPesqCodFab := False;
           xPesqDesc := False;
       	xPesqCtrlInt := False;
      end
      else
          MessageDlg('ATENÇÃO!' + #13 + #10 + 'O produto selecionado não foi escrito', mtWarning, [mbOK], 0);

      EdPesquisaRapidaEnter(sender);
      Exit;
  End;

  //Edmar - 03/10/2014 - Busca pela descrição
  if DMESTOQUE.WSimilar.Locate('DESCRICAO', EdPesquisaRapida.Text, [loCaseInsensitive, loPartialKey]) then
  begin
       if not xPesqDesc then
       begin
           DMESTOQUE.WSimilar.Close;
           DMESTOQUE.WSimilar.SQL.Clear;
           DMESTOQUE.WSimilar.SQL.Add('SELECT * FROM VWSIMILAR WHERE (VWSIMILAR.ATIVO =' + #39 + 'S' + #39 + ') ORDER BY DESCRICAO');
           DMESTOQUE.WSimilar.Open;

          	xPesqDesc := True;
           xPesqCtrlInt := False;
       	xPesqCodFab := False;

	   		DMESTOQUE.WSimilar.Locate('DESCRICAO', EdPesquisaRapida.Text, [loCaseInsensitive, loPartialKey]);           
       end;

      	lPesquisa.Caption := 'Descrição:';
      	xCodProdTmp := dgPesquisaRapida.Columns[0].Field.Text;

      	Exit;
  end;

  //Edmar - 03/10/2014 - Busca pelo codigo interno
  if DMESTOQUE.WSimilar.Locate('CONTRINT', EdPesquisaRapida.Text, [loCaseInsensitive, loPartialKey]) then
  begin
       if not xPesqCtrlInt then
       begin
       	DMESTOQUE.WSimilar.Close;
           DMESTOQUE.WSimilar.SQL.Clear;
           DMESTOQUE.WSimilar.SQL.Add('SELECT * FROM VWSIMILAR WHERE (VWSIMILAR.ATIVO =' + #39 + 'S' + #39 + ') ORDER BY CONTRINT');
           DMESTOQUE.WSimilar.Open;

          	xPesqCtrlInt := True;
           xPesqDesc := False;
       	xPesqCodFab := False;

			DMESTOQUE.WSimilar.Locate('CONTRINT', EdPesquisaRapida.Text, [loCaseInsensitive, loPartialKey]);           
       end;

      	lPesquisa.Caption := 'Ctrl. Interno:';
      	xCodProdTmp := dgPesquisaRapida.Columns[0].Field.Text;

      	Exit;
  end;

  //Edmar - 03/10/2014 - Busca pelo código do fabricante
  if DMESTOQUE.WSimilar.Locate('CODFABRICANTE', EdPesquisaRapida.Text, [loCaseInsensitive, loPartialKey]) then
  begin
       if not xPesqCodFab then
       begin
       	DMESTOQUE.WSimilar.Close;
           DMESTOQUE.WSimilar.SQL.Clear;
           DMESTOQUE.WSimilar.SQL.Add('SELECT * FROM VWSIMILAR WHERE (VWSIMILAR.ATIVO =' + #39 + 'S' + #39 + ') ORDER BY CODFABRICANTE');
           DMESTOQUE.WSimilar.Open;

          	xPesqCodFab := True;
           xPesqDesc := False;
       	xPesqCtrlInt := False;

           DMESTOQUE.WSimilar.Locate('CODFABRICANTE', EdPesquisaRapida.Text, [loCaseInsensitive, loPartialKey]);           
       end;

      	lPesquisa.Caption := 'Cod. Fabricante:';
      	xCodProdTmp := dgPesquisaRapida.Columns[0].Field.Text;

      	Exit;
  end;

  xCodProdTmp := dgPesquisaRapida.Columns[0].Field.Text;
  lPesquisa.Caption := 'Fora de Pesquisa';
end;

procedure TFLancEstPadrao.dgPesquisaRapidaDblClick(Sender: TObject);
begin
  inherited;
  DMESTOQUE.WSimilar.Close;
  DMESTOQUE.WSimilar.SQL.Clear;
  DMESTOQUE.WSimilar.SQL.Add('select * from vwsimilar where (vwsimilar.cod_estoque=:Codigo) AND  (VWSIMILAR.ATIVO=' + #39 + 'S' + #39 + ')');
  DMESTOQUE.WSimilar.ParamByName('CODIGO').AsString := xCodProdTmp;
  DMESTOQUE.WSimilar.Open;

  If Not DMESTOQUE.WSimilar.IsEmpty then
  begin
      If SelectProd('COD_ESTOQUE', xCodProdTmp)=False Then
           EdCodInterno.SetFocus;

      EscreveLabel('COD_ESTOQUE');
          
      pPesquisaRapida.Visible := False;
      pPesquisaRapida.SendToBack;
      EdPesquisaRapida.Text := '';
  end
  else
      MessageDlg('ATENÇÃO!' + #13 + #10 + 'O produto selecionado não foi escrito', mtWarning, [mbOK], 0);

  EdPesquisaRapidaEnter(sender);
end;

procedure TFLancEstPadrao.dgPesquisaRapidaKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  //Edmar - 03/10/2014 - Apertando ENTER filtra similar com o código que foi buscado
  If Key = Vk_Return then
  begin
		dgPesquisaRapidaDblClick(sender);
      Exit;
  End;

  //Edmar - 03/10/2014 - Apertando ESC filtra o similar e esconde o painel
  If Key = VK_ESCAPE
  Then Begin
      DMESTOQUE.WSimilar.Close;
      DMESTOQUE.WSimilar.SQL.Clear;
      DMESTOQUE.WSimilar.SQL.Add('SELECT * FROM VWSIMILAR WHERE (VWSIMILAR.ATIVO=' + #39 + 'S' + #39 + ') ');
      DMESTOQUE.WSimilar.Open;
      
      pPesquisaRapida.Visible := False;
      pPesquisaRapida.SendToBack;
      EdPesquisaRapida.Text := '';
      lPesquisa.Caption := 'Pesquisa:';

      Exit;
  End;  
end;

procedure TFLancEstPadrao.dgPesquisaRapidaCellClick(Column: TColumn);
begin
  inherited;
	xCodProdTmp := dgPesquisaRapida.Columns[0].Field.Text;
end;

procedure TFLancEstPadrao.dgPesquisaRapidaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
	xCodProdTmp := dgPesquisaRapida.Columns[0].Field.Text;
end;

procedure TFLancEstPadrao.ApplicationEvents1Message(var Msg: tagMSG;
  var Handled: Boolean);
begin
  inherited;
	if (Msg.Message = WM_KEYDOWN) AND (Msg.wParam = VK_TAB) then
  	begin
		pPesquisaRapida.Visible := False;
   	pPesquisaRapida.SendToBack;
   end;
end;

procedure TFLancEstPadrao.DBPRIMEIROExit(Sender: TObject);
begin
  inherited;
   EdQtd4Casas.Text:=DBPRIMEIRO.Text;
end;

end.
