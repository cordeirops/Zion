unit ULancEstPadrao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UCadPadraoDesc, TFlatHintUnit, Mask, DBCtrls, DBColorEdit,
  Grids, DBGrids, StdCtrls, Buttons, TFlatEditUnit, jpeg, ExtCtrls,
  EditFloat, ColorEditFloat, ColorMaskEdit, Menus, DrLabel;

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

implementation

uses UMenu, AlxMessage, UDMMacs, Alxor32, UProduto, UDMEstoque, UDMSaida,
  UCadPadrao, ULote;

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
           LProduto.Caption:='';
           LSimilar.Caption:='';
           Lestoque.Caption:='';
           LGrupo.Caption:='';
           LSubGrupo.Caption:='';
           LMarca.Caption:='';
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
   DMEstoque.Alx.SQL.Add(' FROM SUBPRODUTO join produto on subproduto.cod_produto = produto.cod_produto ');
   DMEstoque.Alx.SQL.Add(' Join estoque on subproduto.cod_subproduto = estoque.cod_subprod ');
   DMEstoque.Alx.SQL.Add(' left join grupoprod on grupoprod.cod_grupoprod = produto.cod_grupoprod ');
   DMEstoque.Alx.SQL.Add(' left join subgrupoprod on produto.cod_subgrupoprod = subgrupoprod.cod_subgrupoprod ');
   DMEstoque.Alx.SQL.Add(' Where (estoque.cod_loja = :CODLOJA) ');
   //passa parametro para selecionar produto por loja
   DMEstoque.Alx.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
   //caso seja pedido para selecionar produtos pelo código composto, é passado novo parametro
   If Xcampo='CODCOMPOSTO'
   Then Begin
	   DMEstoque.Alx.SQL.Add('And (SubProduto.CODCOMPOSTO = :CODCOMPOSTO) ');
	   DMEstoque.Alx.ParamByName('CODCOMPOSTO').AsString:=EdCodComposto.Text;
	End;

   //caso seja pedido para selecionar produtos pelo código de barras, é passado novo parametro
   If Xcampo='CODBARRA'
   Then Begin
	   DMEstoque.Alx.SQL.Add('And (CODBARRA = '+#39+EdCodBarra.Text+#39+') ');
	End;

   //caso seja pedido para selecionar produtos pelo código d o fabricante, é passado novo parametro
   If Xcampo='CODPRODFABR'
   Then Begin
	   DMEstoque.Alx.SQL.Add(' AND (upper(CODPRODFABR) = upper('+#39+EDCodFab.Text+#39+')) ');
	End;                                                       

   //caso seja pedido para selecionar produtos pelo código Interno, é passado novo parametro
   If Xcampo='COD_INTERNO'
   Then Begin
	   DMEstoque.Alx.SQL.Add('And (SubProduto.CONTRINT=:CODINTERNO) ');
	   DMEstoque.Alx.ParamByName('CODINTERNO').AsString:=EdCodInterno.Text;
	End;
   //caso seja pedido para selecionar produtos pelo código Interno, é passado novo parametro
   If Xcampo='COD_SUBPRODUTO'
   Then Begin
	   DMEstoque.Alx.SQL.Add('And (SubProduto.COD_SUBPRODUTO = :CODSUBPRODUTO) ');
	   DMEstoque.Alx.ParamByName('CODSUBPRODUTO').AsString:=DMEstoque.Alx.FieldByName('COD_SUBPRODUTO').AsString;
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
	XEstPed, XEstFisico, XEstReserv: Real;
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
   if DMMACS.TLoja.FieldByName('USAOBSITEMCOMPRA').AsString = '1'
   Then Begin
   	If XSQLTABELA='LANCSAI'
       Then Begin
   		If XCOD_LOTE=-1
       	Then Begin
				Mensagem('INFORMAÇÃO AO USUÁRIO', 'É necessário informar o lote do produto!', '', 1, 1, False, 'I');
       		DBPRIMEIRO.SetFocus;
       		Exit;
       	End;
       End
       
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
       XTabela.post;
		If XSQLTABELA='LANCSAI'
   	Then Begin //significa que se esta trabalhando com lançamentos de saída
 		    DMESTOQUE.CalcCustMed(XCOD_ESTOQUE, 'S', StrToFloat(DBPRIMEIRO.Text), 0);
       	If DMEstoque.TEstoque.FieldByName('ESTFISICO').Text<>''
           Then Begin
	           If (DMEstoque.TEstoque.FieldByName('ESTFISICO').Value - StrToFloat(DBPRIMEIRO.TEXT)) < 0
              Then Begin
			       Mensagem('INFORMAÇÃO AO USUÁRIO', 'Não existe saldo em estoque para realizar esta operação!', '', 1, 1, False, 'I');
	              Exit;
              End;
              DMEstoque.TEstoque.edit;
              DMEstoque.TEstoque.FieldByName('ATUALIZAR').AsString:='1';
	           DMEstoque.TEstoque.FieldByName('ESTFISICO').Value:=DMEstoque.TEstoque.FieldByName('ESTFISICO').Value-StrToFloat(DBPRIMEIRO.TEXT);
              DMEstoque.TEstoque.Post;
              DMESTOQUE.TransacEstoque.CommitRetaining;
           End
           Else Begin
		       Mensagem('INFORMAÇÃO AO USUÁRIO', 'Não existe saldo em estoque para realizar esta operação!', '', 1, 1, False, 'I');
              Exit;
           End;
		End
       Else Begin
   		DMESTOQUE.CalcCustMed(XCOD_ESTOQUE , 'E', StrToFloat(DBPRIMEIRO.Text), 0);
       	If DMEstoque.TEstoque.FieldByName('ESTFISICO').AsString=''
           Then Begin
              DMEstoque.TEstoque.edit;
              DMEstoque.TEstoque.FieldByName('ATUALIZAR').AsString:='1';
	           DMEstoque.TEstoque.FieldByName('ESTFISICO').AsString:=DBPRIMEIRO.TEXT;
              DMESTOQUE.TEstoque.Post;
              DMESTOQUE.TransacEstoque.CommitRetaining;
           End
           Else Begin
              DMESTOQUE.TEstoque.Edit;
              DMEstoque.TEstoque.FieldByName('ATUALIZAR').AsString:='1';
		       DMEstoque.TEstoque.FieldByName('ESTFISICO').Value:=DMEstoque.TEstoque.FieldByName('ESTFISICO').Value+StrToFloat(DBPRIMEIRO.TEXT);
              DMESTOQUE.TEstoque.Post;
              DMESTOQUE.TransacEstoque.CommitRetaining;
           End;
		End;

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
           DMESTOQUE.TransacEstoque.CommitRetaining;
       Except
       End;

       Try
           XTabela.Edit;
           XTabela.FieldByName('COD_USUARIO').AsString:=FMenu.LCODUSUARIO.Caption;
           XTabela.FieldByName('COD_LOJA').AsString:=FMenu.LCODLOJA.Caption;
           XTabela.FieldByName('COD_ESTOQUE').AsInteger:=XCOD_ESTOQUE;
           XTabela.Post;

			If XSQLTABELA='LANCSAI'
   		Then Begin //significa que se esta trabalhando com lançamentos de saída
  				if DMMACS.TLoja.FieldByName('USAOBSITEMCOMPRA').AsString = '1'
   			Then Begin
               	//Se nao foi encontrado lote este deve ser inserido
                 	XTabela.Edit;
               	XTabela.FieldByName('COD_ESTOQUELOTE').AsInteger:=XCOD_LOTE;
                 	XTabela.Post;
               	//Atualiza o Estoque do Lote
               	DMESTOQUE.TEstoqueLote.Close;
           		DMESTOQUE.TEstoqueLote.SQL.Clear;
           		DMESTOQUE.TEstoqueLote.SQL.Add('SELECT * FROM ESTOQUELOTE EL WHERE (EL.COD_LOTE=:LOTE) AND (EL.COD_ESTOQUE=:CODESTOQUE)');
           		DMESTOQUE.TEstoqueLote.ParamByName('LOTE').AsInteger:=XCOD_LOTE;
           		DMESTOQUE.TEstoqueLote.ParamByName('CODESTOQUE').AsInteger:= XCOD_ESTOQUE;
           		DMESTOQUE.TEstoqueLote.Open;
               	If Not DMESTOQUE.TEstoqueLote.IsEmpty
               	Then Begin
               		DMESTOQUE.TEstoqueLote.Edit;
                   	DMESTOQUE.TEstoqueLote.FieldByName('QUANTIDADE').AsCurrency:=DMESTOQUE.TEstoqueLote.FieldByName('QUANTIDADE').AsCurrency-StrToFloat(DBPRIMEIRO.TEXT);
                   	DMESTOQUE.TEstoqueLote.Post;
               	End;
              	End;
           End
           Else Begin
  				If DMMACS.TLoja.FieldByName('USAOBSITEMCOMPRA').AsString = '1'
   			Then Begin
					XQTDLOTE:=XQtd;
           		//VERIFICA SE O LOTE JA SE ENCONTRA CADASTRADO
           		DMESTOQUE.TEstoqueLote.Close;
           		DMESTOQUE.TEstoqueLote.SQL.Clear;
           		DMESTOQUE.TEstoqueLote.SQL.Add('SELECT * FROM ESTOQUELOTE EL WHERE (EL.COD_LOTE=:LOTE) AND (EL.COD_ESTOQUE=:CODESTOQUE)');
           		DMESTOQUE.TEstoqueLote.ParamByName('LOTE').AsInteger:=XCOD_LOTE;
           		DMESTOQUE.TEstoqueLote.ParamByName('CODESTOQUE').AsInteger:= XCOD_ESTOQUE;
           		DMESTOQUE.TEstoqueLote.Open;
           		If Not DMESTOQUE.TEstoqueLote.IsEmpty
               	Then Begin
                       DMESTOQUE.TEstoqueLote.Edit;
                    	DMESTOQUE.TEstoqueLote.FieldByName('QUANTIDADE').AsCurrency:=DMESTOQUE.TEstoqueLote.FieldByName('QUANTIDADE').AsCurrency + StrToFloat(DBPRIMEIRO.TEXT);
                    	DMESTOQUE.TEstoqueLote.Post;
               		
           		End
           		Else Begin
           			//INSERE LOTE
   					XCOD_ESTLOTE:=InserReg(DMESTOQUE.TEstoqueLote, 'ESTOQUELOTE', 'COD_ESTOQUELOTE');
                       DMESTOQUE.TEstoqueLote.FieldByName('COD_ESTOQUELOTE').AsInteger:=XCOD_ESTLOTE;
   					DMESTOQUE.TEstoqueLote.FieldByName('COD_ESTOQUE').AsInteger:=XCOD_ESTOQUE;
   					DMESTOQUE.TEstoqueLote.FieldByName('COD_LOTE').AsInteger:=XCOD_LOTE;
						DMEstoque.TEstoque.FieldByName('ATUALIZAR').AsString:='1';
   					DMESTOQUE.TEstoqueLote.FieldByName('QUANTIDADE').AsCurrency:= StrToFloat(DBPRIMEIRO.TEXT);
   					DMESTOQUE.TEstoqueLote.Post;
						XTabela.FieldByName('COD_LOTE').AsInteger:=XCOD_LOTE;
                       XTabela.Post;
           		End;
               End;
           end;
           DMEstoque.TransacEstoque.CommitRetaining;
           LiberaDados;
			inherited;
       Except
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
  	MEscolheProc.Popup(BtnEscolheProc.Width+BtnEscolheProc.Left+40, 210 );
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
end;









procedure TFLancEstPadrao.DBDESCExit(Sender: TObject);
begin
  inherited;
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

end.
