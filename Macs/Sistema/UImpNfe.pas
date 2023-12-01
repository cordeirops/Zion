Unit UImpNfe;

Interface

Uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, ExtCtrls, Mask, DBCtrls, DBColorEdit, StdCtrls, EditFloat,
    ColorEditFloat, Buttons, Grids, DBGrids, UFrmBusca, DB, QRCtrls,
  QuickRpt;

Type
    TFImpNfe = Class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    BtnCancelar: TBitBtn;
    BtnGravar: TBitBtn;
    EdTotalNfe: TColorEditFloat;
    EdNumNfe: TEdit;
    PSelectCliente: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    LAtacadista: TLabel;
    EdCodForn: TEdit;
    EdCNPJ: TEdit;
    EdNomeForn: TEdit;
    Label1: TLabel;
    GroupBox1: TGroupBox;
    EdDtEmissao: TEdit;
    Label7: TLabel;
    DBProdutos: TDBGrid;
    PAlteracoes: TPanel;
    EdCSTEnt: TEdit;
    Label12: TLabel;
    Label13: TLabel;
    EdCstVenda: TEdit;
    BtOk: TBitBtn;
    BtCancela: TBitBtn;
    Pproduto: TGroupBox;
    EdCodP: TEdit;
    EdDescP: TEdit;
    BTNOPENP: TBitBtn;
    Label17: TLabel;
    EdVlrCusto: TColorEditFloat;
    Label21: TLabel;
    pLabels: TPanel;
    BtnPercentual: TButton;
    LabelMarca: TLabel;
    EdMarcaProduto: TEdit;
    BtCstVenda: TBitBtn;
    Label23: TLabel;
    EdAliqFrete: TColorEditFloat;
    btnRecarregaProdutos: TButton;
    EdCustoNfe: TColorEditFloat;
    Shape5: TShape;
    Label26: TLabel;
    Label19: TLabel;
    Shape4: TShape;
    Label14: TLabel;
    Shape1: TShape;
    Label16: TLabel;
    Shape3: TShape;
    GroupBox2: TGroupBox;
    CBAplicaCadastrados: TCheckBox;
    Label20: TLabel;
    EdPercentual: TEdit;
    Label22: TLabel;
    EdPercentualAtac: TEdit;
    Label11: TLabel;
    Shape2: TShape;
    GroupBox3: TGroupBox;
    CBAlteraValordeCompra: TCheckBox;
    EdTotalProd: TColorEditFloat;
    Label8: TLabel;
    Shape6: TShape;
    Label10: TLabel;
    EDCodigo: TEdit;
    EdDescricao: TEdit;
    BTNOPEN: TBitBtn;
    Label9: TLabel;
    Memo1: TMemo;
    Memo2: TMemo;
    Label15: TLabel;
    edValorCustoTotal: TColorEditFloat;
    Memo3: TMemo;
    Label27: TLabel;
    Memo4: TMemo;
    EdQtdEmbalagem: TColorEditFloat;
    GroupBox4: TGroupBox;
    Label24: TLabel;
    EdValorAtacVista: TColorEditFloat;
    Label18: TLabel;
    EdValorVenda: TColorEditFloat;
    BitBtn2: TBitBtn;
    RelatorioConferencia: TQuickRep;
    QRBand1: TQRBand;
    QRBand3: TQRBand;
    qrdbcodigo: TQRDBText;
    QRLabel74: TQRLabel;
    QRLabel75: TQRLabel;
    QRLabel76: TQRLabel;
    QRLabel77: TQRLabel;
    QRLabel78: TQRLabel;
    QRLabel70: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRBand11: TQRBand;
    txtNumeroNfe: TQRLabel;
    txtRelValorTotal: TQRLabel;
    QRShape46: TQRShape;
    QRShape49: TQRShape;
    QRShape50: TQRShape;
    txtRelEmitente: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRShape1: TQRShape;
    qrdbdescricao: TQRDBText;
    qrdbncm: TQRDBText;
    qrdbquantidades: TQRDBText;
    qrdbvlrunit: TQRDBText;
    qrdbvlrtotal: TQRDBText;
    qrdbvlrvenda: TQRDBText;
    qrdbcst: TQRDBText;
    qrdbmarca: TQRDBText;
    qrdbcustonfe: TQRDBText;
    qrdbdescricaovinculado: TQRDBText;
    Procedure FormActivate(Sender: TObject);
    Procedure DBProdutosDrawColumnCell(Sender: TObject; Const Rect: TRect;
    DataCol: Integer; Column: TColumn; State: TGridDrawState);
    Procedure DBProdutosDblClick(Sender: TObject);
    Procedure BtOkClick(Sender: TObject);
    Procedure BTNOPENClick(Sender: TObject);
    Procedure BtnGravarClick(Sender: TObject);
    Procedure BTNOPENPClick(Sender: TObject);
    //Paulo 25/09/2010: Selecio o CST de venda
    Function EncontraCSTVenda(XCstEnt, xCfop: String): String;
    //Paulo 27/09/2010: verifica o produto, se não tiver produto insere um novo produto, depois retorna o cod_composto
    Function VerificaProdutoImporta:Integer;
    Procedure BtCancelaClick(Sender: TObject);
    Procedure BtnCancelarClick(Sender: TObject);
    Procedure BtCstEntradaClick(Sender: TObject);
    Procedure BtnPercentualClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtCstVendaClick(Sender: TObject);
    procedure DBProdutosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnRecarregaProdutosClick(Sender: TObject);
    procedure edValorCustoTotalExit(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure RelatorioConferenciaBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure FormShow(Sender: TObject);
    private
    { Private declarations }
    public
    //Angelo - 19/05/2015 - Calcula Lucratividade
    Procedure CalculaLucratividade(xCodEstoque : Integer);
    //Paulo 03/10/2011: Realiza cálculos para o produto
    Procedure CalculoVenda(DescVistaVar: Real; AcrecPrazoVar: Real; DescVistaAtac: Real; AcrecPrazoAtac: Real; ComVistaVar: Real; ComPrazoVar: Real; ComVistaAtac: Real; ComPrazoAtac: Real; XRET: INTEGER; XCALCLUC: INTEGER);
    //Paulo 03/10/2011: inicia calculos do produto
    Procedure IniciaCalculo(codSub: Integer; codEst: Integer);
    //Função que retorna o calculo do coeficiente de divisão para o produto
    Function CalculaCoefDiv : Real;
    Procedure FiltraSlave;
    //Procedure ValiCstImportada;//Jônatas 25/09/2013 - Movida para PedCompra
    //Jônatas 04/10/2013 - função para cadastrar NCM caso ele não exista na tabela NCM
    Procedure AchaNCM(xAchaNCM:String);
    //Função pra calcular o valor rep do item importado
    Function CalcularValorRepItens : Boolean;
    //
    Function CalculaCustoNFeProdutos: Boolean;
    
    //
    function EncontraCst(XCST: String): Integer;
    End;

Var
    FImpNfe: TFImpNfe;
    XCODPRODFORN, XDtEmissao: String;
    XDtSaiEnt: String; //Jônatas 24/07/2013 - Incluído para importação da data de saída/entrada do arquivo xml
    XFlagVlr, XCodPedComp, XCODPROD, XcodForn: Integer;
    XNumNFe: String;
    VlrVarejoVista, VlrVarejoPrazo, VlrAtacadoVista, VlrAtacadoPrazo: Real;
    XControlAlteraCompra: Boolean;
    XConfirmaImp: Boolean;
    xIndexListagem: TBookmark;
    //armazena a diferença de custo calculado pra importação.
    //aqui geralmente vai ficar o valor de seguro, frete, outras despesas, etc.
    //tudo que não entrar no registro do item de importação
    xDifTotNFCusto: Real;
Implementation

Uses UPedidoPadrao, UPedCompra, UDMPessoa, UDMEntrada, Alxor32, UDMEstoque,
    UDMMacs, UProduto, UCadProduto, UCadPadrao, UMenu, UDMFinanc,
    UMensagem, UMessage, AlxMessage, UDMConta, UCadCST, UMDO, Math;

{$R *.dfm}

Procedure TFImpNfe.FormActivate(Sender: TObject);
Begin
   Caption:='Importação de XML';
    XFlagVlr := 0;
    EdDtEmissao.Text := (Copy(XDtEmissao, 9, 2)) + '/' + (Copy(XDtEmissao, 6, 2)) + '/' + (Copy(XDtEmissao, 1, 4));
    EdNumNfe.Text := XNumNFe;
    EdTotalNfe.ValueNumeric := XTotalNFe;
    EdTotalProd.ValueNumeric := XTotalProd;
    PAlteracoes.Visible := false;
    PAlteracoes.SendToBack;
    CBAlteraValordeCompra.Checked:=True;
    XControlAlteraCompra:=False;
    //Paulo 21/09/2010: Seleciona o fornecedor
    With DMPESSOA.TALX do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select pessoa.nome, pessoa.cpfcnpj, fornecedor.cod_fornec from pessoa');
      SQL.Add('join fornecedor on fornecedor.cod_pessoa = pessoa.cod_pessoa where pessoa.cod_pessoa = :COD');
      ParamByName('COD').AsInteger := XcodForn;
      Open;
      EdCodForn.Text := FieldByName('COD_FORNEC').AsString;
      EdCNPJ.Text := FieldByName('CPFCNPJ').AsString;
      EdNomeForn.Text := FieldByName('NOME').AsString;
    end;
    XCNPJForn := EdCNPJ.Text;
    XNomeForn := EdNomeForn.Text;
    FiltraSlave;
    //ValiCstImportada;//Jônatas 25/9/2013 - Chamada feita em PedCompra agora

		 //Angelo - 18/05/2015 - Preenche os campos de reajuste
    FiltraTabela(DMMACS.TLoja, 'loja', '', '', '');
    EdPercentual.Text := DMMACS.TLoja.FieldByName('ALIQVAR').AsString;
    EdPercentualAtac.Text := DMMACS.TLoja.FieldByName('ALIQATAC').AsString;

      // - 20/04/2009: verificar se arquivo de layout foi salvo anteriormente
   If FileExists('C:\MZR\Arquivos\LayoutGrid\impnfe.lgm') Then
       DBProdutos.Columns.LoadFromFile('C:\MZR\Arquivos\LayoutGrid\impnfe.lgm');
End;

//Paulo 25/09/2010: Seleciona o CST de venda
Function TFImpNfe.EncontraCSTVenda(XCstEnt, xCfop: String): String;
Begin
   if FiltraTabela(DMESTOQUE.Alx1, 'cst', 'cod_cst', IntToStr(DMMACS.TLoja.FieldByName('csttrib').AsInteger), '') then
   begin
       FiltraTabela(DMCONTA.TAlx, 'cst', 'cod_sit_trib', XCstEnt {DMMACS.TLoja.FieldByName('csttrib').AsString}, '');
       //Verifica se o cst é tributado ou substituido
       if (DMCONTA.TAlx.FieldByName('substituicao').AsString <> '1') then
       begin
          FiltraTabela(DMMACS.TLoja, 'loja', '', '', '');
          FiltraTabela(DMESTOQUE.Alx1, 'cst', 'cod_cst', IntToStr(DMMACS.TLoja.FieldByName('csttrib').AsInteger), '');
          If DMESTOQUE.Alx1.IsEmpty Then
            Mensagem('OPÇÃO BLOQUEADA', 'Verifique na Configuração da Loja o CST de venda e depois volte a fazer a importação.', '', 1, 1, false, 'i');
       end
       else begin
           FiltraTabela(DMMACS.TLoja, 'loja', '', '', '');
           FiltraTabela(DMESTOQUE.Alx1, 'cst', 'cod_cst', IntToStr(DMMACS.TLoja.FieldByName('cstsubst').AsInteger), '');
           If DMESTOQUE.Alx1.IsEmpty Then
               Mensagem('OPÇÃO BLOQUEADA', 'Verifique na Configuração da Loja o CST de venda e depois volte a fazer a importação.', '', 1, 1, false, 'i');
       end;
       EncontraCSTVenda := DMESTOQUE.Alx1.FIeldByName('cod_sit_trib').AsString;
   end
   else begin
       if ((Copy(xCfop,1,2) = '54') or (Copy(xCfop,1,2) = '64')) then
       begin
           if ((XCstEnt = '160') or (XCstEnt = '260')  or (XCstEnt = '360') or (XCstEnt = '110') or (XCstEnt = '210')) Then
               EncontraCSTVenda := '260'
           else
               EncontraCSTVenda := '060';
       end;

       if ((Copy(xCfop,1,2) = '51') or (Copy(xCfop,1,2) = '61')) then
       begin
           if ((XCstEnt = '100') or (XCstEnt = '200')) Then
               EncontraCSTVenda := '200'
           else
               EncontraCSTVenda := '000';
       end;
   end;
End;

Procedure TFImpNfe.FiltraSlave;
Begin
   //Jônatas 15/08/2013 - Zerar a variável antes da atualização da dbgrid, para controle do valor de venda
   XFlagVlr := 0;

   //Edmar - 15/04/2015 - Recalcula o valor total dos Produtos da NF-e
   DMENTRADA.TAlx.Close;
   DMENTRADA.TAlx.SQL.Clear;
   DMENTRADA.TAlx.SQL.Add(' SELECT SUM(IMPNFETMP.VALORTOTAL) SOMA FROM IMPNFETMP ');
   DMENTRADA.TAlx.Open;

   XTotalProd := DMENTRADA.TAlx.FieldByName('SOMA').AsCurrency;
   EdTotalProd.ValueNumeric := XTotalProd;

   MDO.QConsulta.Close;
   MDO.QConsulta.SQL.Clear;
   MDO.QConsulta.SQL.Add(' select * from impnfetmp order by nitem ');
   MDO.QConsulta.Open;

   DBProdutos.DataSource := MDO.DConsulta;
End;

//Paulo 21/09/2010:Procura na tabela subproduto se existe o produto pelo código do fornecedor
//Se existir a linha fica verde, senão fica vermelha

Procedure TFImpNfe.DBProdutosDrawColumnCell(Sender: TObject;
    Const Rect: TRect; DataCol: Integer; Column: TColumn;
    State: TGridDrawState);
Begin
   try
       If MDO.QConsulta.Fields.FindField('status') <> NIL
       Then Begin
           if (MDO.QConsulta.FieldByName('status').AsString = 'NCAD') Then//Somente itens não cadastrados
               DBProdutos.Canvas.Brush.Color := $004D4DFF;

           If MDO.QConsulta.FieldByName('status').AsString = 'NOME' Then //Descrição ou Valor de venda alterado
               DBProdutos.Canvas.Brush.Color := $00FFBB5C;

           If MDO.QConsulta.FieldByName('status').AsString = 'OK' Then // Itens anteriormentes cadastrados
               DBProdutos.Canvas.Brush.Color := clMoneyGreen;

           If MDO.QConsulta.FieldByName('valorvenda').AsFloat = 0 Then  //Itens sem valor de venda
           Begin
               DBProdutos.Canvas.Brush.COlor := $004EDFF5;
               XFlagVlr := 1;
           End;

           DBProdutos.Canvas.FillRect(Rect);
           DBProdutos.DefaultDrawDataCell(Rect, DBProdutos.Columns[datacol].Field, State);
       End
   except
   end;
End;

Procedure TFImpNfe.DBProdutosDblClick(Sender: TObject);
var
   xStatus, xCst, xCfop : String;
Begin
    xIndexListagem  := MDO.QConsulta.GetBookmark;
    pLabels.SendToBack;
    BTNOPEN.Enabled := true;
    BTNOPENP.Enabled := true;
    PAlteracoes.Visible := true;
    PAlteracoes.BringToFront;
    EDCodigo.Enabled := false;
    EdDescP.Enabled := true;
    EdCodP.Enabled := true;
    //EdVlrCusto.Enabled := false;
    FiltraTabela(DMENTRADA.TImpNfeTMP, 'IMPNFETMP', 'CODPRODFORN', MDO.QConsulta.FieldByName('CODPRODFORN').AsString, '');
    XCODPRODFORN := DMENTRADA.TImpNfeTMP.FieldByName('CODPRODFORN').AsString;
    xStatus := DMENTRADA.TImpNfeTMP.FieldByName('STATUS').AsString;
    xCst := DMENTRADA.TImpNfeTMP.FieldByName('cst').AsString;
	 xCfop := MDO.QConsulta.FieldByName('cfop').AsString;
    //Paulo 23/09/2010: Se o produto ja esta cadastrado mostrara na tela
    if (xStatus = 'DESC') Or (xStatus = 'OK') then
    begin
        //Seleciona o subproduto com o cod_estoque
        FiltraTabela(DMESTOQUE.Alx4, 'estoque', 'cod_estoque', IntToStr(DMENTRADA.TImpNfeTMP.FieldByName('cod_estoque').AsInteger), '');
        FiltraTabela(DMESTOQUE.Alx5, 'subproduto', 'cod_subproduto', IntToStr(DMESTOQUE.Alx4.FieldByName('cod_subprod').AsInteger), '');
        FiltraTabela(DMESTOQUE.Alx3, 'produto', 'cod_produto', IntToStr(DMESTOQUE.Alx5.FieldByName('cod_produto').AsInteger), '');
        EDCodigo.Text := DMESTOQUE.Alx5.FieldByName('contrint').AsString;
        EdDescricao.Text := DMESTOQUE.Alx5.FieldByName('descricao').AsString;
        EDCodP.Text := DMESTOQUE.Alx3.FieldByName('cod_produto').AsString;
        EdDescP.Text := DMESTOQUE.Alx3.FieldByName('descricao').AsString;
        EdMarcaProduto.Text := DMENTRADA.TImpNfeTMP.FieldByName('MARCA').AsString;

        //Angelo - 15/05/2015 - Preenche os campos de valores de venda do produto
        EdValorVenda.Text := FloatToStr(DMENTRADA.TImpNfeTMP.FieldByName('VALORVENDA').AsFloat);
        EdValorAtacVista.Text := FloatToStr(DMENTRADA.TImpNfeTMP.FieldByName('VALORVENDAAT').AsFloat);

        If (xStatus = 'OK') Then
        Begin
            BTNOPEN.Enabled := FALSE;
            BTNOPENP.Enabled := FALSE;
            EdDescricao.Enabled := false;
            Label10.Caption := 'Dados do item';
            //Label11.Caption := '';
            EdDescP.Enabled := false;
            EdCodP.Enabled := false;
        End
        Else Begin
            BTNOPEN.Enabled := true;
            BTNOPENP.Enabled := true;
            EdDescricao.Enabled := true;
            EdDescricao.SetFocus;
            Label10.Caption := 'Descrição gravado no sistema para este item';
            //Label11.Caption := '';
        End;
    End
    //Se o produto não estiver cadastrado
    Else Begin
        FiltraTabela(DMESTOQUE.Alx3, 'impnfetmp', '', '', ' where (impnfetmp.codprodforn= '+MDO.QConsulta.FieldByName('codprodforn').AsString+' ) and (impnfetmp.cfop= '+xCfop+' )');
        EDCodigo.Text := '000';
        If DMENTRADA.TImpNfeTMP.FieldByName('DESCPRODVINCULADO').AsString='' Then
           EdDescricao.Text := DMENTRADA.TImpNfeTMP.FieldByName('DESCPROD').AsString
        Else
           EdDescricao.Text := DMENTRADA.TImpNfeTMP.FieldByName('DESCPRODVINCULADO').AsString;
        EdCodP.Text := '000';
        EdDescP.Text := '';
        BTNOPEN.Enabled := true;
        BTNOPENP.Enabled := true;
        EdDescricao.Enabled := true;
        EdDescricao.SetFocus;
        EdMarcaProduto.Text := DMENTRADA.TImpNfeTMP.FieldByName('MARCA').AsString;
        //Angelo -15/05/2015 - Preenche os campos baseando-se na tabela temporária
        EdValorVenda.Text := DMENTRADA.TImpNfeTMP.FieldByName('VALORVENDA').AsString;
        EdValorAtacVista.Text := DMENTRADA.TImpNfeTMP.FieldByName('VALORVENDAAT').AsString;
       //Caso não existam valores na tabela temporária
        if (DMENTRADA.TImpNfeTMP.FieldByName('VALORVENDAAT').AsString='') then
    	   EdValorAtacVista.Text := '0,00';
    End;

    //Paulo 08/10/2010: Mostra o valor de custo do produto que entrou pela NFe
    EdVlrCusto.ValueNumeric := DMENTRADA.TImpNfeTMP.FieldByName('valorun').AsCurrency;
    edValorCustoTotal.ValueNumeric := DMENTRADA.TImpNfeTMP.FieldByName('VALORTOTAL').AsCurrency;
    //busca o valor
    EdQtdEmbalagem.ValueNumeric := DMENTRADA.TImpNfeTMP.FieldByName('QUANTIDADE').AsCurrency;
    EdAliqFrete.Text := DMENTRADA.TImpNfeTMP.FieldByName('ALIQFRETE').AsString;
    EdCustoNfe.ValueNumeric := DMENTRADA.TImpNfeTMP.FieldByName('CUSTONFE').AsCurrency;

    //Paulo 24/09/2010: Mostra o cst que entrou pela NFe e o de venda utilizado pela loja
    EdCstVenda.Text := EncontraCSTVenda(xCst, DMENTRADA.TImpNfeTMP.FieldByName('CFOP').AsString);
    EdCSTEnt.Text := xCst;
    If EdDescricao.Enabled Then
       EdDescricao.SetFocus
    Else
       EdQtdEmbalagem.SetFocus;
End;


Procedure TFImpNfe.BtOkClick(Sender: TObject);
Begin
  //Paulo 24/09/2010: Se o for modificado o nome do produto atualiza o item na tabela ImpNFETMP
   DMENTRADA.TImpNfeTMP.Close;
   DMENTRADA.TImpNfeTMP.SQL.Clear;
   //Edmar - 15/04/2015 - Comando de UPDATE alterado para atualizar também o valor de compra do item e alterar também
   //o valor total do item comprado.
   //QUANDO INSERIR TEM QUE RECALCULAR O VALOR TOTAL DO ICMS ST DO PRODUTO
   //Angelo - 15/05/2015 - Adicionando valores de venda no varejo e atacado
   DMENTRADA.TImpNfeTMP.SQL.Add(' UPDATE IMPNFETMP SET IMPNFETMP.COD_ESTOQUE = :CODESTOQUE, IMPNFETMP.STATUS = :STATUS, ');
   DMENTRADA.TImpNfeTMP.SQL.Add(' IMPNFETMP.VALORVENDAAT = :VALORVENDAAT,  IMPNFETMP.MARCA = :MARCA, IMPNFETMP.CSTVENDA = :CSTVENDA, IMPNFETMP.ALIQFRETE = :ALIQFRETE, ');
   DMENTRADA.TImpNfeTMP.SQL.Add(' IMPNFETMP.QUANTIDADE = :QUANTIDADE, IMPNFETMP.QTDEMB = :QTDEMB,  IMPNFETMP.CUSTONFE = :CUSTONFE, IMPNFETMP.CODPRODUTO = :CODPRODUTO, IMPNFETMP.VALORVENDA = :VLRVENDA, IMPNFETMP.DESCPRODVINCULADO = :DESCVINC,  ');
   DMENTRADA.TImpNfeTMP.SQL.Add(' IMPNFETMP.VALORUN = :VLRCOMP, IMPNFETMP.VALORTOTAL = :VALORTOTAL ');
   //IMPNFETMP.ICMSSUBST = :VALORTOTAL * (:SUBSANT / 100) => retirado o recalculo do ST
   DMENTRADA.TImpNfeTMP.SQL.Add(' WHERE IMPNFETMP.CODPRODFORN = :CODPROD ');
   
   //verifica se foi assimilado algum prod ja existente ou não
   If EDCodigo.Text = '000' Then
   Begin
      DMENTRADA.TImpNfeTMP.ParamByName('CODESTOQUE').AsInteger := 0;
      DMENTRADA.TImpNfeTMP.ParamByName('STATUS').AsString := 'NOME';
      If MDO.QCONSULTA.FieldByName('DESCPROD').AsString<>   EdDescricao.Text
      Then Begin
           DMENTRADA.TImpNfeTMP.ParamByName('DESCVINC').AsString := EdDescricao.Text;
       End;
   End
   Else Begin
    //Seleciona o cod_estoque com base de contrint que esta na tela
       FiltraTabela(DMESTOQUE.Alx3, 'subproduto', 'contrint', EDCodigo.Text, '');
       FiltraTabela(DMESTOQUE.Alx4, 'estoque', 'cod_subprod', IntToStr(DMESTOQUE.Alx3.FieldByName('cod_subproduto').AsInteger), '');
       DMENTRADA.TImpNfeTMP.ParamByName('CODESTOQUE').AsInteger := DMESTOQUE.Alx4.FieldByName('cod_estoque').AsInteger;
       DMENTRADA.TImpNfeTMP.ParamByName('STATUS').AsString := 'OK';
       DMENTRADA.TImpNfeTMP.ParamByName('DESCVINC').AsString := EdDescricao.Text;
   End;
   
   if (EdCodP.Text = '000') OR (EdCodP.Text = '') then
       DMENTRADA.TImpNfeTMP.ParamByName('CODPRODUTO').AsInteger := 0
   else
       DMENTRADA.TImpNfeTMP.ParamByName('CODPRODUTO').AsInteger := StrToInt(EdCodP.Text);

   //DMENTRADA.TImpNfeTMP.ParamByName('SUBSANT').AsCurrency := MDO.QConsulta.FieldByName('ICMSSUBST').AsCurrency;//valor de st antigo para buscar a aliquota do st
   DMENTRADA.TImpNfeTMP.ParamByName('VLRCOMP').AsCurrency := EdVlrCusto.ValueNumeric;//valor de compra atualizado
   DMENTRADA.TImpNfeTMP.ParamByName('VALORTOTAL').AsCurrency := edValorCustoTotal.ValueNumeric;
   DMENTRADA.TImpNfeTMP.ParamByName('CODPROD').AsString := XCODPRODFORN;
   DMENTRADA.TImpNfeTMP.ParamByName('VLRVENDA').AsCurrency := EdValorVenda.ValueNumeric;
   //Angelo - 15/05/2015 - Salvando valores de venda para atacado a vista e a prazo e varejo a prazo
   DMENTRADA.TImpNfeTMP.ParamByName('VALORVENDAAT').AsCurrency := EdValorAtacVista.ValueNumeric;
   //Angelo - 19/05/2015 - Marca do produto
   DMENTRADA.TImpNfeTMP.ParamByName('MARCA').AsString := EdMarcaProduto.Text;
   DMENTRADA.TImpNfeTMP.ParamByName('QTDEMB').AsCurrency := 1;
   DMENTRADA.TImpNfeTMP.ParamByName('QUANTIDADE').AsCurrency := EdQtdEmbalagem.ValueNumeric;
   DMENTRADA.TImpNfeTMP.ParamByName('CUSTONFE').AsCurrency := EdCustoNfe.ValueNumeric;
   DMENTRADA.TImpNfeTMP.ParamByName('CSTVENDA').AsString := EdCstVenda.Text;
   DMENTRADA.TImpNfeTMP.ParamByName('ALIQFRETE').AsCurrency := EdAliqFrete.ValueNumeric;
   DMENTRADA.TImpNfeTMP.ExecSQL;
   DMENTRADA.IBT.CommitRetaining;
   CalcularValorRepItens;
   DMENTRADA.TImpNfeTMP.Open;
   FiltraSlave;
   PAlteracoes.Visible := false;
   PAlteracoes.SendToBack;
                                  
   MDO.QConsulta.GotoBookmark(xIndexListagem);
   MDO.QConsulta.FreeBookmark(xIndexListagem);
End;



Procedure TFImpNfe.BTNOPENClick(Sender: TObject);
Begin
    If AbrirForm(TFProduto, FProduto, 1) = 'Selected' Then
    Begin
       //XCODPROD:=StrToInt(DMESTOQUE.TSubProd.FieldByName('CONTRINT').AsString);
        EDCodigo.Text := DMESTOQUE.WSimilar.FieldByName('CONTRINT').AsString;
        EdDescricao.Text := DMESTOQUE.WSimilar.FieldByName('DESCRICAO').AsString;
        EDCodigo.Enabled := false;
        EdDescricao.Enabled := false;
        EdMarcaProduto.Text := DMESTOQUE.WSimilar.FieldByName('MARCA').AsString;
    End;
    //Para selecionar o produto referente ao subproduto selecionado
    FiltraTabela(DMESTOQUE.Alx4, 'produto', 'cod_produto', IntToStr(DMESTOQUE.WSimilar.FieldByName('cod_produto').AsInteger), '');
    EDCodP.Text := DMESTOQUE.Alx4.FieldByName('cod_produto').AsString;
    EdDescP.Text := DMESTOQUE.Alx4.FieldByName('descricao').AsString;
    FiltraTabela(DMESTOQUE.Alx1, 'subproduto', 'cod_subproduto', IntToStr(DMESTOQUE.WSimilar.FieldByName('cod_subproduto').AsInteger), '');

    //Paulo 30/09/2011: seleciona o cst do produto selecionado
    FiltraTabela(DMCONTA.TAlx, 'cst', 'cod_cst', IntToStr(DMESTOQUE.Alx1.FieldByName('cod_cst').AsInteger), '');
    EdCstVenda.Text := DMCONTA.TAlx.FieldByName('cod_sit_trib').AsString;
    EDCodP.Enabled := false;
    EdDescP.Enabled := false;

    //Paulo 24/10/2011: Seleciona valor de venda do produto
    FiltraTabela(DMESTOQUE.TEstoque, 'ESTOQUE', 'cod_SUBPROD', IntToStr(DMESTOQUE.WSimilar.FieldByName('cod_subproduto').AsInteger), '');
    EdValorVenda.Text := FloatToStr(DMESTOQUE.TEstoque.FieldByName('VENDVARV').AsCurrency);
    EdValorAtacVista.Text := FloatToStr(DMESTOQUE.TEstoque.FieldByName('VENDATAV').AsCurrency);
End;

Procedure TFImpNfe.BtnGravarClick(Sender: TObject);
Var
    XCodest, XcodSub: integer;
   DescVistaVar, ComVistaVar: Real;
Begin
   //mensagem de segurança quanto ao valor de compra
    If XControlAlteraCompra=False
    Then Begin
      MessageDlg('A T E N Ç Ã O !!!'+#13+#10+'Verifique as suas configurações de reajuste de preços de compra e venda do produto.'+#13+#10+'Com base nessas configurações, o sistema irá alterar o valor de compra e venda definitivamente.'+#13+#10+''+#13+#10+'Após conferir, clique em confirmar novamente.', mtWarning, [mbOK], 0);
       CBAlteraValordeCompra.SetFocus;
       XControlAlteraCompra:=True;
       Exit;
    End;
    //Jônatas 15/08/2013 - Verificação realocada para cá para ser feita antes de alguma tentativa de atualizar o estoque
    If XFlagVlr <> 0 Then
    Begin
        Mensagem('OPÇÃO BLOQUEADA', 'Há Produto(s) sem valor de venda, verifique antes de prosseguir!', '', 1, 1, False, 'a');
        Exit;
    End;

    XcodSub := 0;
    //Paulo 24/09/2010: Grava os itens novos no banco
    //Percorre a tabela impnfetmp para localizar os itens que não estão cadastrados no banco
    FiltraTabela(DMESTOQUE.Alx3, 'impnfetmp', '', '', '');
    DMESTOQUE.Alx3.First;
    While Not DMESTOQUE.Alx3.Eof Do
    Begin
        If (DMESTOQUE.Alx3.FieldByName('COD_ESTOQUE').AsInteger <> 0) Then
        Begin
            Try
              //Se foi encontrado só atualiza o nome caso o usuário tenha mudado o nome é modificado caso ao contrario não
                FiltraTabela(DMESTOQUE.TEstoque, 'estoque', 'cod_estoque', IntToStr(DMESTOQUE.Alx3.FieldByName('cod_estoque').AsInteger), '');
                FiltraTabela(DMESTOQUE.TSubProd, 'subproduto', 'cod_subproduto', IntToStr(DMESTOQUE.TEstoque.FieldByName('cod_subprod').AsInteger), '');

                //Alex 17/07/2019: Armazenamos os dados de valro para salvar os dados de ultimos valores salvos
                // valor de venda a vista no varejo
                XVALOR_VISTAVAREJO := DMESTOQUE.TEstoque.FieldByName('VENDVARV').AsCurrency;
                // valor de venda a prazo no varejo
                XVALOR_PRAZOVAREJO := DMESTOQUE.TEstoque.FieldByName('VENDVARP').AsCurrency;
                // valor de venda a vista no atacado
                XVALOR_VISTAATAC := DMESTOQUE.TEstoque.FieldByName('VENDATAV').AsCurrency;
                // valor de venda a prazo no atacado
                XVALOR_PRAZOATAC := DMESTOQUE.TEstoque.FieldByName('VENDATAP').AsCurrency;

                //Incrementa variaveis para calculo de lucratividade
                   //Tratamento para desconto
                   If DMESTOQUE.TEstoque.FieldByName('AVVPROVAR').AsCurrency > 0 Then
                       DescVistaVar:= DMESTOQUE.TEstoque.FieldByName('AVVPROVAR').AsCurrency
                   Else
                       DescVistaVar:= DMMACS.TEmpresa.FieldByName('AVVPROVAR').AsCurrency;

                   //Tratamento para comissão
                   If DMESTOQUE.TEstoque.FieldByName('CVVPROVAR').AsCurrency > 0 Then
                       ComVistaVar:= DMESTOQUE.TEstoque.FieldByName('CVVPROVAR').AsCurrency
                   Else
                       ComVistaVar:= DMMACS.TEmpresa.FieldByName('CVVPROVAR').AsCurrency;

                //Jônatas 04/10/2013 - função para cadastrar NCM caso ele não exista na tabela NCM
                AchaNCM(DMESTOQUE.Alx3.FieldByName('NCM').AsString);

                DMESTOQUE.TSubProd.Edit;
                DMESTOQUE.TSubProd.FieldByName('COD_SUBPRODUTO').AsInteger := DMESTOQUE.TEstoque.FieldByName('cod_subprod').AsInteger;
                DMESTOQUE.TSubProd.FieldByName('NCM').AsString := DMESTOQUE.Alx3.FieldByName('NCM').AsString;

                //Angelo - 22/05/2015 - CST de venda baseada na coluna cstvenda da impnfetmp
                //Em caso de não ter sido alterada, é preenchida com EncontraCSTVenda
                FiltraTabela(DMMACS.TALX, 'CST', 'cod_sit_trib', EncontraCSTVenda(DMESTOQUE.Alx3.FieldByName('CST').AsString, DMESTOQUE.Alx3.FieldByName('CFOP').AsString), '');
                if (DMESTOQUE.Alx3.FieldByName('CSTVENDA').AsString = '') then
                	DMESTOQUE.TSubProd.FieldByName('COD_CST').AsInteger := DMMACS.TALX.FieldByName('cod_cst').AsInteger
                else
                	DMESTOQUE.TSubProd.FieldByName('COD_CST').AsInteger := EncontraCst(DMESTOQUE.Alx3.FieldByName('CSTVENDA').AsString);

                DMESTOQUE.TSubProd.FieldByName('CODBARRA').AsString := DMESTOQUE.Alx3.FieldByName('CODBARRA').AsString;
                //Angelo - 19/05/2015 - Adicionando campo marca
                DMESTOQUE.TSubProd.FieldByName('MARCA').AsString := DMESTOQUE.Alx3.FieldByName('MARCA').AsString;

                XCodest := DMESTOQUE.TEstoque.FieldByName('COD_ESTOQUE').AsInteger;

                DMESTOQUE.TEstoque.Edit;
                DMESTOQUE.TEstoque.FieldByName('VENDATAV').AsCurrency := DMESTOQUE.Alx3.FieldByName('VALORVENDAAT').AsCurrency;
                DMESTOQUE.TEstoque.FieldByName('VENDVARP').AsCurrency := DMESTOQUE.Alx3.FieldByName('VALORVENDA').AsCurrency;
                DMESTOQUE.TEstoque.FieldByName('VENDVARV').AsCurrency := DMESTOQUE.Alx3.FieldByName('VALORVENDA').AsCurrency;
                DMESTOQUE.TEstoque.FieldByName('VENDATAP').AsCurrency := DMESTOQUE.Alx3.FieldByName('VALORVENDAAT').AsCurrency;
                //DMESTOQUE.TEstoque.FieldByName('VALCUSTO').AsCurrency := DMESTOQUE.Alx3.FieldByName('VALORUN').AsCurrency;
                If (CBAlteraValordeCompra.Checked=True) or (DMESTOQUE.TEstoque.FieldByName('VLRUNITCOMP').AsCurrency<=0)
                Then Begin
                  DMESTOQUE.TEstoque.FieldByName('VLRUNITCOMP').AsCurrency := DMESTOQUE.Alx3.FieldByName('VALORUN').AsCurrency/DMESTOQUE.Alx3.FieldByName('QTDEMB').AsCurrency;
                  DMESTOQUE.TEstoque.FieldByName('VLRCOMPSD').AsCurrency :=DMESTOQUE.Alx3.FieldByName('VALORUN').AsCurrency/DMESTOQUE.Alx3.FieldByName('QTDEMB').AsCurrency;
                  DMESTOQUE.TEstoque.FieldByName('VALUNIT').AsCurrency := DMESTOQUE.Alx3.FieldByName('VALORUN').AsCurrency;
                End;

                if DMESTOQUE.Alx3.FieldByName('ALIQFRETE').AsCurrency <> 0 then
                   DMESTOQUE.TEstoque.FieldByName('FRETE').AsCurrency := DMESTOQUE.Alx3.FieldByName('ALIQFRETE').AsCurrency;

                if DMESTOQUE.Alx3.FieldByName('IPI').AsCurrency <> 0 then
                   DMESTOQUE.TSubProd.FieldByName('IPIPROD').AsCurrency := DMESTOQUE.Alx3.FieldByName('IPI').AsCurrency;

                If DMMACS.TLoja.FieldByName('IMPSTXMLPRODUTO').AsString = '1'
                Then Begin
                   {try
                       XAliqSt := (DMESTOQUE.Alx3.FieldByName('VALORUN').AsCurrency * (((DMESTOQUE.Alx3.FieldByName('ICMSSUBST').AsCurrency * 100) / DMESTOQUE.Alx3.FieldByName('BASESUBST').AsCurrency) / 100));
                   except
                       XAliqSt := 0;
                   end;}
                   //recupera a aliquota de ST real vinda no xml
                   if DMESTOQUE.Alx3.FieldByName('ALIQST').AsCurrency <> 0 then
                       DMESTOQUE.TEstoque.FieldByName('PIS').AsCurrency := DMESTOQUE.Alx3.FieldByName('ALIQST').AsCurrency;
                End;

                If DMESTOQUE.Alx3.FieldByName('MARCA').AsString='15' Then
                   XAliqInternaEstDest:=XAliqInternaEstDest;

                DMESTOQUE.TEstoque.FieldByName('VALREP').AsCurrency := DMESTOQUE.Alx3.FieldByName('VALORREP').AsCurrency; //DMESTOQUE.Alx3.FieldByName('VALORUN').AsCurrency/DMESTOQUE.Alx3.FieldByName('QTDEMB').AsCurrency;
                DMESTOQUE.TEstoque.FieldByName('valcustonfe').AsCurrency :=  DMESTOQUE.Alx3.FieldByName('CUSTONFE').AsCurrency;
                {End;}

                DMESTOQUE.TEstoque.FieldByName('COMPVLRBCST').AsCurrency := DMESTOQUE.Alx3.FieldByName('BASESUBST').AsCurrency / DMESTOQUE.Alx3.FieldByName('QUANTIDADE').AsCurrency;
                DMESTOQUE.TEstoque.FieldByName('COMPALIQST').AsCurrency  := DMESTOQUE.Alx3.FieldByName('ALIQST').AsCurrency+DMESTOQUE.Alx3.FieldByName('ALIQFCP').AsCurrency;
                DMESTOQUE.TEstoque.FieldByName('COMPVLRST').AsCurrency   := DMESTOQUE.Alx3.FieldByName('ICMSSUBST').AsCurrency / DMESTOQUE.Alx3.FieldByName('QUANTIDADE').AsCurrency;
                DMESTOQUE.TEstoque.FieldByName('COMPVLRICMS').AsCurrency := DMESTOQUE.Alx3.FieldByName('VALORICMS').AsCurrency / DMESTOQUE.Alx3.FieldByName('QUANTIDADE').AsCurrency;

                //Alex 17/07/2019 - Verificamos se ocorreu alteração de preço e registramos na tabela
                If (XVALOR_VISTAVAREJO <> DMESTOQUE.TEstoque.FieldByName('VENDVARV').AsCurrency ) OR  (XVALOR_PRAZOVAREJO <> DMESTOQUE.TEstoque.FieldByName('VENDVARP').AsCurrency) OR (XVALOR_VISTAATAC <> DMESTOQUE.TEstoque.FieldByName('VENDATAV').AsCurrency) OR (XVALOR_PRAZOATAC <> DMESTOQUE.TEstoque.FieldByName('VENDATAP').AsCurrency)
                Then Begin
                       Registra('ALTERA PRODUTO', 'ALTERACAO PRECO XML', DateToStr(Date()), 'VVV: '+ FormatFloat('0.00', DMESTOQUE.TEstoque.FieldByName('vendvarv').AsCurrency) + ' - ' + 'VAV: '+ FormatFloat('0.00', DMESTOQUE.TEstoque.FieldByName('vendatav').AsCurrency ),  ' Anterior: V.P.: '+ FormatFloat('0.00', XVALOR_PRAZOVAREJO) + ' - ' + 'V.V.: '+ FormatFloat('0.00', XVALOR_VISTAVAREJO)  + ' - ' + 'A.P.: '+ FormatFloat('0.00', XVALOR_PRAZOATAC)  + ' - ' + 'A.V.: '+ FormatFloat('0.00', XVALOR_VISTAATAC) + ' Controle Int.: '+DMESTOQUE.TSubProd.FieldByName('contrint').AsString + ' - Prod.: ' + DMESTOQUE.TSubProd.FieldByName('DESCRICAO').AsString);
                       DMESTOQUE.TEstoque.FieldByName('ULTVLR_VNDVVAR').AsCurrency := XVALOR_VISTAVAREJO;
                       DMESTOQUE.TEstoque.FieldByName('ULTVLR_VNDPVAR').AsCurrency := XVALOR_PRAZOVAREJO;
                       DMESTOQUE.TEstoque.FieldByName('ULTVLR_VNDVATAC').AsCurrency := XVALOR_VISTAATAC;
                       DMESTOQUE.TEstoque.FieldByName('ULTVLR_VPATAC').AsCurrency := XVALOR_PRAZOATAC;
                End;

                DMESTOQUE.TSubProd.Post;
                DMESTOQUE.TEstoque.Post;
                //Efetua Calculo de Lucratividade
                //CalculoVenda(DescVistaVar, 0, 0, 0, ComVistaVar, 0, 0, 0, 1, 1);
                //Angelo - 19/05/2015 - Calcula lucratividade
                CalculaLucratividade(XCodest);
                DMESTOQUE.TransacEstoque.CommitRetaining;
               //Jônatas 12/09/2013 - Insere registro na tabela codbarra caso não exista
                FiltraTabela(DMESTOQUE.Alx4, 'codigobarra', 'codbarra', '', ' codigobarra.codbarra = ' + #39+ DMESTOQUE.Alx3.FieldByName('CODPRODFORN').AsString+#39 + ' and codigobarra.codfornerc = ' + #39+EdCodForn.Text+#39);
                If DMESTOQUE.Alx4.IsEmpty
                Then Begin
                    DMESTOQUE.TCodBarra.Close;
                    DMESTOQUE.TCodBarra.SQL.Clear;
                    dmestoque.TCodBarra.SQL.Add('insert into codigobarra(cod_estoque,codbarra,codfornerc)');
                    dmestoque.TCodBarra.SQL.Add('values(:CODESTOQUE, :CODBARRA, :CODFORNERC)');
                    DMESTOQUE.TCodBarra.ParamByName('CODESTOQUE').AsInteger := DMESTOQUE.TEstoque.FieldByName('COD_ESTOQUE').AsInteger;
                    DMESTOQUE.TCodBarra.ParamByName('CODBARRA').AsString := DMESTOQUE.Alx3.FieldByName('CODPRODFORN').AsString;
                    DMESTOQUE.TCodBarra.ParamByName('CODFORNERC').AsInteger := StrToInt(EdCodForn.Text);
                    DMESTOQUE.TCodBarra.ExecSQL;
                End;
               //Jônatas 12/09/2013 - Atualiza a tabela tmp
                DMENTRADA.TImpNfeTMP.Close;
                DMENTRADA.TImpNfeTMP.SQL.Clear;
                DMENTRADA.TImpNfeTMP.SQL.Add('update IMPNFETMP set IMPNFETMP.COD_ESTOQUE = :CODESTOQUE');
                DMENTRADA.TImpNfeTMP.SQL.Add('where IMPNFETMP.CODPRODFORN = :CODBARRA');
                DMENTRADA.TImpNfeTMP.ParamByName('CODESTOQUE').AsInteger := DMESTOQUE.TEstoque.FieldByName('COD_ESTOQUE').AsInteger;
                DMENTRADA.TImpNfeTMP.ParamByName('CODBARRA').AsString := DMESTOQUE.Alx3.FieldByName('CODPRODFORN').AsString;
                DMENTRADA.TImpNfeTMP.ExecSQL;
                DMENTRADA.IBT.CommitRetaining;
                DMENTRADA.TImpNfeTMP.Open;
               //Jônatas 12/09/2013 - Para controle do contrint, salva o proximo contrint na loja
                DMMACS.TLoja.Edit;
                DMMACS.TLoja.FieldByName('PROXCTRINT').AsString := INCSTRNUM(1, DMMACS.TLoja.FieldByName('PROXCTRINT').AsString);
                DMMACS.TLoja.Post;
                DMMACS.Transaction.CommitRetaining;
            Except
                DMESTOQUE.TransacEstoque.RollbackRetaining;
            End;

        End
        Else Begin
            Try
              //Incrementa variaveis para calculo de lucratividade
                DescVistaVar:= DMMACS.TEmpresa.FieldByName('AVVPROVAR').AsCurrency;
                ComVistaVar:= DMMACS.TEmpresa.FieldByName('CVVPROVAR').AsCurrency;

                FiltraTabela(DMESTOQUE.TSubProd, 'SUBPRODUTO', '', '', '');
                XcodSub := InserReg(DMESTOQUE.TSubProd, 'SUBPRODUTO', 'COD_SUBPRODUTO');
                   DMESTOQUE.TSubProd.FieldByName('COD_SUBPRODUTO').AsInteger := XcodSub;

                   AchaNCM(DMESTOQUE.Alx3.FieldByName('NCM').AsString);

                   DMESTOQUE.TSubProd.Edit;
                   If DMESTOQUE.Alx3.FieldByName('DESCPRODVINCULADO').AsString <> '' Then
                       DMESTOQUE.TSubProd.FieldByName('DESCRICAO').AsString := DMESTOQUE.Alx3.FieldByName('DESCPRODVINCULADO').AsString
                   ELSE
                       DMESTOQUE.TSubProd.FieldByName('DESCRICAO').AsString := DMESTOQUE.Alx3.FieldByName('DESCPROD').AsString;
                   DMESTOQUE.TSubProd.FieldByName('CODBARRA').AsString := DMESTOQUE.Alx3.FieldByName('CODBARRA').AsString;
                   DMESTOQUE.TSubProd.FieldByName('CODPRODFABR').AsString := DMESTOQUE.Alx3.FieldByName('CODPRODFORN').AsString;
                   DMESTOQUE.TSubProd.FieldByName('COD_INTERNO').AsString := IntToStr(XcodSub);
                   DMESTOQUE.TSubProd.FieldByName('MARCA').AsString := DMESTOQUE.Alx3.FieldByName('MARCA').AsString;

                   FiltraTabela(DMESTOQUE.Alx4, 'UNIDADE', 'SIGLA_UNID', 'UN', '');
                   DMESTOQUE.TSubProd.FieldByName('COD_UNIDCOMPRA').AsInteger := DMESTOQUE.Alx4.FieldByName('COD_UNIDADE').AsInteger;
                   DMESTOQUE.TSubProd.FieldByName('COD_UNIDVENDA').AsInteger := DMESTOQUE.Alx4.FieldByName('COD_UNIDADE').AsInteger;

                   FiltraTabela(DMMACS.TALX, 'CST', 'cod_sit_trib', EncontraCSTVenda(DMESTOQUE.Alx3.FieldByName('CST').AsString, DMESTOQUE.Alx3.FieldByName('CFOP').AsString), '');
                   if (DMESTOQUE.Alx3.FieldByName('CSTVENDA').AsString = '')
                   then
                	    DMESTOQUE.TSubProd.FieldByName('COD_CST').AsInteger := DMMACS.TALX.FieldByName('cod_cst').AsInteger
                   else
                       DMESTOQUE.TSubProd.FieldByName('COD_CST').AsInteger := EncontraCst(DMESTOQUE.Alx3.FieldByName('CSTVENDA').AsString);

                   DmEstoque.TSubProd.FieldByName('DTCAD').AsString := DateToStr(Date());
                   FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
                   DMESTOQUE.TSubProd.FieldByName('CONTRINT').AsString := DMMACS.TLoja.FieldByName('PROXCTRINT').AsString;
                   DMESTOQUE.TSubProd.FieldByName('NCM').AsString := DMESTOQUE.Alx3.FieldByName('NCM').AsString;
                   DMESTOQUE.TSubProd.FieldByName('IPIPROD').AsFloat := DMESTOQUE.Alx3.FieldByName('IPI').AsFloat;

                   If DMESTOQUE.Alx3.FieldByName('CODPRODUTO').AsInteger = 0 Then
                       DMESTOQUE.TSubProd.FieldByName('COD_PRODUTO').AsInteger := VerificaProdutoImporta
                   Else
                       DMESTOQUE.TSubProd.FieldByName('COD_PRODUTO').AsInteger := DMESTOQUE.Alx3.FieldByName('CODPRODUTO').AsInteger;

                   DMESTOQUE.TSubProd.Post;

                XCodest := InserReg(DMESTOQUE.TEstoque, 'ESTOQUE', 'COD_ESTOQUE');
                   DMESTOQUE.TEstoque.FieldByName('COD_ESTOQUE').AsInteger := XCodest;
                   DMESTOQUE.TEstoque.FieldByName('COD_LOJA').AsInteger := DMMACS.TLoja.FieldByName('COD_LOJA').AsInteger;
                   DMESTOQUE.TEstoque.FieldByName('COD_SUBPROD').AsInteger := DMESTOQUE.TSubProd.FieldByName('COD_SUBPRODUTO').AsInteger;
                   DMESTOQUE.TEstoque.FieldByName('VALCUSTO').AsCurrency := DMESTOQUE.Alx3.FieldByName('VALORUN').AsCurrency;
                   DMESTOQUE.TEstoque.FieldByName('ICMS').AsCurrency := DMESTOQUE.Alx3.FieldByName('ALIQICMS').AsCurrency;
                   DMESTOQUE.TEstoque.FieldByName('estfisico').AsCurrency := 0;
                   DMESTOQUE.TEstoque.FieldByName('VENDATAV').AsCurrency := DMESTOQUE.Alx3.FieldByName('VALORVENDAAT').AsCurrency;
                   DMESTOQUE.TEstoque.FieldByName('VENDVARP').AsCurrency := DMESTOQUE.Alx3.FieldByName('VALORVENDA').AsCurrency;
                   DMESTOQUE.TEstoque.FieldByName('VENDVARV').AsCurrency := DMESTOQUE.Alx3.FieldByName('VALORVENDA').AsCurrency;
                   DMESTOQUE.TEstoque.FieldByName('VENDATAP').AsCurrency := DMESTOQUE.Alx3.FieldByName('VALORVENDAAT').AsCurrency;
                   If (CBAlteraValordeCompra.Checked=True) or (DMESTOQUE.TEstoque.FieldByName('VLRUNITCOMP').AsCurrency<=0)
                   Then Begin
                       DMESTOQUE.TEstoque.FieldByName('VLRUNITCOMP').AsCurrency := DMESTOQUE.Alx3.FieldByName('VALORUN').AsCurrency/DMESTOQUE.Alx3.FieldByName('QTDEMB').AsCurrency;
                       DMESTOQUE.TEstoque.FieldByName('VLRCOMPSD').AsCurrency := DMESTOQUE.Alx3.FieldByName('VALORUN').AsCurrency/DMESTOQUE.Alx3.FieldByName('QTDEMB').AsCurrency;
                       DMESTOQUE.TEstoque.FieldByName('VALUNIT').AsCurrency := DMESTOQUE.Alx3.FieldByName('VALORUN').AsCurrency;
                   End;

                   if DMESTOQUE.Alx3.FieldByName('ALIQFRETE').AsCurrency <> 0 then
                       DMESTOQUE.TEstoque.FieldByName('FRETE').AsCurrency := DMESTOQUE.Alx3.FieldByName('ALIQFRETE').AsCurrency;

                   if DMESTOQUE.Alx3.FieldByName('IPI').AsCurrency <> 0 then
                       DMESTOQUE.TSubProd.FieldByName('IPIPROD').AsCurrency := DMESTOQUE.Alx3.FieldByName('IPI').AsCurrency;

                   try
                       XAliqSt := DMESTOQUE.Alx3.FieldByName('ALIQST').AsCurrency;
                   except
                       XAliqSt := 0;
                   end;

                   if XAliqSt <> 0 then
                       DMESTOQUE.TEstoque.FieldByName('PIS').AsCurrency := XAliqSt;

                   If DMESTOQUE.Alx3.FieldByName('MARCA').AsString='15' Then
                       XAliqInternaEstDest:=XAliqInternaEstDest;

                   DMESTOQUE.TEstoque.FieldByName('COMPVLRBCST').AsCurrency := DMESTOQUE.Alx3.FieldByName('BASESUBST').AsCurrency / DMESTOQUE.Alx3.FieldByName('QUANTIDADE').AsCurrency;
                   DMESTOQUE.TEstoque.FieldByName('COMPALIQST').AsCurrency  := XAliqSt+DMESTOQUE.Alx3.FieldByName('ALIQFCP').AsCurrency;
                   DMESTOQUE.TEstoque.FieldByName('COMPVLRST').AsCurrency   := DMESTOQUE.Alx3.FieldByName('ICMSSUBST').AsCurrency / DMESTOQUE.Alx3.FieldByName('QUANTIDADE').AsCurrency;
                   DMESTOQUE.TEstoque.FieldByName('COMPVLRICMS').AsCurrency := DMESTOQUE.Alx3.FieldByName('VALORICMS').AsCurrency / DMESTOQUE.Alx3.FieldByName('QUANTIDADE').AsCurrency;
                   DMESTOQUE.TEstoque.FieldByName('valcustonfe').AsCurrency :=  DMESTOQUE.Alx3.FieldByName('CUSTONFE').AsCurrency;
                   DMESTOQUE.TEstoque.FieldByName('VALREP').AsCurrency := DMESTOQUE.Alx3.FieldByName('VALORREP').AsCurrency; //DMESTOQUE.Alx3.FieldByName('VALORUN').AsCurrency/DMESTOQUE.Alx3.FieldByName('QTDEMB').AsCurrency;
                   DMESTOQUE.TEstoque.FieldByName('ATUALIZAR').AsString := '1';
                   DMESTOQUE.TEstoque.Post;

                DMESTOQUE.TCodBarra.Close;
                DMESTOQUE.TCodBarra.SQL.Clear;
                dmestoque.TCodBarra.SQL.Add('insert into codigobarra(cod_estoque,codbarra,codfornerc)');
                dmestoque.TCodBarra.SQL.Add('values(:CODESTOQUE, :CODBARRA, :CODFORNERC)');
                DMESTOQUE.TCodBarra.ParamByName('CODESTOQUE').AsInteger := DMESTOQUE.TEstoque.FieldByName('COD_ESTOQUE').AsInteger;
                DMESTOQUE.TCodBarra.ParamByName('CODBARRA').AsString := DMESTOQUE.Alx3.FieldByName('CODPRODFORN').AsString;
                DMESTOQUE.TCodBarra.ParamByName('CODFORNERC').AsInteger := StrToInt(EdCodForn.Text);
                DMESTOQUE.TCodBarra.ExecSQL;

                DMENTRADA.TImpNfeTMP.Close;
                DMENTRADA.TImpNfeTMP.SQL.Clear;
                DMENTRADA.TImpNfeTMP.SQL.Add('update IMPNFETMP set IMPNFETMP.CODPRODUTO = :CODPRODUTO, IMPNFETMP.COD_ESTOQUE = :CODESTOQUE');
                DMENTRADA.TImpNfeTMP.SQL.Add('where IMPNFETMP.CODPRODFORN = :CODBARRA');
                If DMENTRADA.TImpNfeTMP.ParamByName('CODPRODUTO').AsInteger = 0 Then
                   DMENTRADA.TImpNfeTMP.ParamByName('CODPRODUTO').AsInteger := VerificaProdutoImporta
                Else
                   DMENTRADA.TImpNfeTMP.ParamByName('CODPRODUTO').AsInteger := DMENTRADA.TImpNfeTMP.ParamByName('CODPRODUTO').AsInteger;

                DMENTRADA.TImpNfeTMP.ParamByName('CODESTOQUE').AsInteger := DMESTOQUE.TEstoque.FieldByName('COD_ESTOQUE').AsInteger;
                DMENTRADA.TImpNfeTMP.ParamByName('CODBARRA').AsString := DMESTOQUE.Alx3.FieldByName('CODPRODFORN').AsString;
                DMENTRADA.TImpNfeTMP.ExecSQL;
                DMENTRADA.IBT.CommitRetaining;
                DMENTRADA.TImpNfeTMP.Open;

                DMMACS.TLoja.Edit;
                DMMACS.TLoja.FieldByName('PROXCTRINT').AsString := INCSTRNUM(1, DMMACS.TLoja.FieldByName('PROXCTRINT').AsString);
                DMMACS.TLoja.Post;
                DMMACS.Transaction.CommitRetaining;

                CalculaLucratividade(DMESTOQUE.TEstoque.FieldByName('COD_ESTOQUE').AsInteger);
                DMESTOQUE.TransacEstoque.CommitRetaining;
            Except
                DMESTOQUE.TransacEstoque.RollbackRetaining;
                MessageDlg('Verifique estoque para o item:' + #13 +
                           DMESTOQUE.Alx3.FieldByName('DESCPROD').AsString, mtWarning, [mbOK], 0);
            End;

        End;

        //IniciaCalculo(XcodSub, XCodest);

        DMESTOQUE.Alx3.Next;
    End;

     ////==========================================================================////////
    {if  XFlagVlr <> 0 then
     begin
        Mensagem('OPÇÃO BLOQUEADA', 'Há Produto(s) sem valor de venda, verifique antes de prosseguir!', '', 1, 1, False, 'a');
        Exit;
     end;}
  XConfirmaImp := True;
  Close;
End;

//Paulo 03/10/2011: inicia calculos do produto
Procedure TFImpNfe.IniciaCalculo(codSub: Integer; codEst: Integer);
Var
    XAuxValor, DescVistaVar, DescVistaAtac, AcrecPrazoVar, AcrecPrazoAtac, ComVistaVar, ComVistaAtac, ComPrazoVar, ComPrazoAtac: Real;
Begin
   //Paulo 03/10/2011 Calcula valores do produto
    FiltraTabela(DMESTOQUE.TSubProd, 'SUBPRODUTO', 'COD_SUBPRODUTO', IntToStr(codSub), '');
    FiltraTabela(DMESTOQUE.TEstoque, 'estoque', 'cod_estoque', IntToStr(codEst), '');

    DMESTOQUE.TEstoque.Edit;
    DMESTOQUE.TEstoque.FieldByName('VALUNIT').AsCurrency := DMESTOQUE.TEstoque.FieldByName('VLRCOMPSD').AsCurrency + ((DMESTOQUE.TEstoque.FieldByName('VLRCOMPSD').AsCurrency * DMESTOQUE.TEstoque.FieldByName('ACRECIMO').AsCurrency) / 100);
    DMESTOQUE.TEstoque.FieldByName('VALUNIT').AsCurrency := DMESTOQUE.TEstoque.FieldByName('VALUNIT').AsCurrency - ((DMESTOQUE.TEstoque.FieldByName('VALUNIT').AsCurrency * DMESTOQUE.TEstoque.FieldByName('DESCONTO').AsCurrency) / 100);
    DMESTOQUE.TEstoque.Post;
    If DMMACS.TLoja.FieldByName('CONVERTUNID').AsString <> '1'
        Then Begin
        DMESTOQUE.TEstoque.Edit;
        DMESTOQUE.TEstoque.FieldByName('VLRUNITCOMP').AsCurrency := DMESTOQUE.TEstoque.FieldByName('VALUNIT').AsCurrency;
        DMESTOQUE.TEstoque.Post;
    End;

    //Verifica se pega o valor em questão da tabela estoque ou empresa
    If DMESTOQUE.TEstoque.FieldByName('VALREP').AsCurrency = 0 Then
        DescVistaVar := DMMacs.TEmpresa.FieldByName('AVVPROVAR').AsCurrency
    Else
        DescVistaVar := DMESTOQUE.TEstoque.FieldByName('VALREP').AsCurrency;

      //Verifica se pega o valor em questão da tabela estoque ou empresa
    If DMESTOQUE.TEstoque.FieldByName('AVPPROVAR').AsCurrency = 0 Then
        AcrecPrazoVar := DMMacs.TEmpresa.FieldByName('AVPPROVAR').AsCurrency
    Else
        AcrecPrazoVar := DMESTOQUE.TEstoque.FieldByName('AVPPROVAR').AsCurrency;

      //Verifica se pega o valor em questão da tabela estoque ou empresa
    If DMESTOQUE.TEstoque.FieldByName('AVVPROAT').AsCurrency = 0 Then
        DescVistaAtac := DMMacs.TEmpresa.FieldByName('AVVPROAT').AsCurrency
    Else
        DescVistaAtac := DMESTOQUE.TEstoque.FieldByName('AVVPROAT').AsCurrency;

     //Verifica se pega o valor em questão da tabela estoque ou empresa
    If DMESTOQUE.TEstoque.FieldByName('AVPPROAT').AsCurrency = 0 Then
        AcrecPrazoAtac := DMMacs.TEmpresa.FieldByName('AVPPROAT').AsCurrency
    Else
        AcrecPrazoAtac := DMESTOQUE.TEstoque.FieldByName('AVPPROAT').AsCurrency;

      //Verifica se pega o valor em questão da tabela estoque ou empresa
    If DMESTOQUE.TEstoque.FieldByName('CVVPROVAR').AsCurrency = 0 Then
        ComVistaVar := DMMacs.TEmpresa.FieldByName('CVVPROVAR').AsCurrency
    Else
        ComVistaVar := DMESTOQUE.TEstoque.FieldByName('CVVPROVAR ').AsCurrency;

      //Verifica se pega o valor em questão da tabela estoque ou empresa
    If DMESTOQUE.TEstoque.FieldByName('CVPPROVAR').AsCurrency = 0 Then
        ComPrazoVar := DMMacs.TEmpresa.FieldByName('CVPPROVAR').AsCurrency
    Else
        ComPrazoVar := DMESTOQUE.TEstoque.FieldByName('CVPPROVAR ').AsCurrency;

      //Verifica se pega o valor em questão da tabela estoque ou empresa
    If DMESTOQUE.TEstoque.FieldByName('CVVPROAT').AsCurrency = 0 Then
        ComVistaAtac := DMMacs.TEmpresa.FieldByName('CVVPROAT').AsCurrency
    Else
        ComPrazoAtac := DMESTOQUE.TEstoque.FieldByName('CVVPROAT').AsCurrency;

      //Verifica se pega o valor em questão da tabela estoque ou empresa
    If DMESTOQUE.TEstoque.FieldByName('CVPPROAT').AsCurrency = 0 Then
        ComPrazoAtac := DMMacs.TEmpresa.FieldByName('CVPPROAT').AsCurrency
    Else
        ComPrazoAtac := DMESTOQUE.TEstoque.FieldByName('CVPPROAT').AsCurrency;
      //Jônatas 15/08/2013 - Não grava no banco se der erro
    Try
        CalculoVenda(DescVistaVar, AcrecPrazoVar, DescVistaAtac, AcrecPrazoAtac, ComVistaVar, ComPrazoVar, ComVistaAtac, ComPrazoAtac, 1, 1);
        DMESTOQUE.TransacEstoque.CommitRetaining;
    Except
        DMESTOQUE.TransacEstoque.RollbackRetaining;
    End;
End;

//Angelo - 19/05/2015 - Calcula lucratividade
Procedure TFImpNfe.CalculaLucratividade(xCodEstoque : Integer);
var descVistaVar,
    acrecPrazoVar,
    descVistaAtac,
    acrecPrazoAtac,
    descVistaInd,
    acrecPrazoInd,
    comVistaVar,
    comPrazoVar,
    comVistaAtac,
    comPrazoAtac : Real;
    X,Y,Z,B,C,F,I :Real;
		 VlrVenda: Real;
    XBaseCalc: Real;
    XCredICMSFrete: Real;
		 XCredICMS: Real;
    xVendaVarj, xVendaAtac : Real;

Begin
  Try
   descVistaInd := 0;
   acrecPrazoInd := 0;
   acrecPrazoVar := 0;
   descVistaAtac := 0;
   acrecPrazoAtac := 0;
   //Preenche os valores de comissões e descontos de acordo com com as respectivas tabelas
   With DMMacs.TEmpresa do
   Begin
     comVistaVar := FieldByName('CVVPROVAR').AsCurrency;
     comPrazoVar := FieldByName('CVPPROVAR').AsCurrency;
     comVistaAtac := FieldByName('CVVPROAT').AsCurrency;
     descVistaVar := FieldByName('AVVPROVAR').AsCurrency;
     comPrazoAtac := FieldByName('CVPPROAT').AsCurrency;
   End;
  //CALCULA BASE DE CALCULO P/ LUCRO REAL/PRESUMIDO
  XBaseCalc:=Dmestoque.Testoque.Fieldbyname('VLRUNITCOMP').ascurrency-((Dmestoque.Testoque.Fieldbyname('VLRUNITCOMP').ascurrency*Dmestoque.Testoque.Fieldbyname('DESCONTO').ascurrency)/100)+((Dmestoque.Testoque.Fieldbyname('VLRUNITCOMP').ascurrency*Dmestoque.Testoque.Fieldbyname('ACRECIMO').ascurrency)/100);

  //CALCULANDO CUSTOS ADICIONAIS PARA (VALREP)
   If DMMACS.TEmpresa.FieldByName('TIPOEMPRESA').AsString='SIMPLES'
   Then Begin
    X:= (Dmestoque.Testoque.Fieldbyname('VLRUNITCOMP').ascurrency * (Dmestoque.TSubprod.Fieldbyname('IPIPROD').ascurrency) /100);
    Y:= (Dmestoque.Testoque.Fieldbyname('VLRUNITCOMP').ascurrency * (Dmestoque.TEstoque.Fieldbyname('FRETE').ascurrency) /100);
    Z:= (Dmestoque.Testoque.Fieldbyname('VLRUNITCOMP').ascurrency * (Dmestoque.TSubprod.Fieldbyname('EMBPROD').ascurrency) /100);
   End
   Else Begin
    X:= (XBaseCalc*(Dmestoque.TSubprod.Fieldbyname('IPIPROD').ascurrency)/100);
    Y:= (XBaseCalc*(Dmestoque.TEstoque.Fieldbyname('FRETE').ascurrency)/100);
    Z:= (XBaseCalc*(Dmestoque.TSubprod.Fieldbyname('EMBPROD').ascurrency)/100);
   End;
   //CALCULA CREDITO DE ICMS P/ FRETE
   XCredICMSFrete:=((Y*Dmestoque.TEstoque.Fieldbyname('ICMS').ascurrency)/100);

   //CALCULA CREDITO DE ICMS
   XCredICMS:=((XBaseCalc*Dmestoque.TEstoque.Fieldbyname('ICMS').ascurrency)/100);

   //CALCULO CUSTO LIQUIDO NOMMINAL CORRIGIDO (CLNC)
   DMESTOQUE.TEstoque.Edit;
   Dmestoque.TEstoque.Fieldbyname('CLNC').ascurrency:=XBaseCalc+X+Z+Y-XCredICMSFrete-XCredICMS;
   DMESTOQUE.TEstoque.Post;

  //CALCULANDO VALOR DE REPOSIÇÃO (VALREP)
   If DMMACS.TEmpresa.FieldByName('TIPOEMPRESA').AsString='SIMPLES'
   Then Begin
    DMESTOQUE.TEstoque.Edit;
    Dmestoque.Testoque.Fieldbyname('VALREP').ascurrency:= (Dmestoque.Testoque.Fieldbyname('VLRUNITCOMP').ascurrency + X + Y + Z);
    DMESTOQUE.TEstoque.Post;
   End
   Else Begin
       If DMMACS.TEmpresa.FieldByName('CREDITAIPI').AsString='1'
       Then Begin
      //Empresa possui credito IPI
           DMESTOQUE.TEstoque.Edit;
      Dmestoque.Testoque.Fieldbyname('VALREP').ascurrency:=XBaseCalc+Y-XCredICMSFrete;
           DMESTOQUE.TEstoque.Post;
       End
       Else Begin
      //Empresa nao possui credito IPI
           DMESTOQUE.TEstoque.Edit;
      Dmestoque.Testoque.Fieldbyname('VALREP').ascurrency:=XBaseCalc+Y+X-XCredICMSFrete;
           DMESTOQUE.TEstoque.Post;
       End;
   End;

   //COEFICIENTE DE DIVISAO
   If DMMACS.TEmpresa.FieldByName('TIPOEMPRESA').AsString='SIMPLES'
   Then Begin
    //COEFICIENTE P/ EMPRESA SIMPLES
       DMESTOQUE.TEstoque.Edit;
    Dmestoque.Testoque.Fieldbyname('COEFDIV').ascurrency := (100 - (DMMacs.Tempresa.Fieldbyname('IMPEST').ascurrency + DMMacs.Tempresa.Fieldbyname('IMPFED').ascurrency + COMVISTAVAR + DESCVISTAVAR + DMESTOQUE.TEstoque.FieldByname('OUTROS').ascurrency))/100;
       DMESTOQUE.TEstoque.Post;
   End
   Else Begin
    //COEFICIENTE P/ EMPRESA LUCRO REAL E PRESUMIDO
       If DMMACS.TEmpresa.FieldByName('CALCULAIPI').AsString='1'
       Then Begin
        // DESTACA IPI
           DMESTOQUE.TEstoque.Edit;
      Dmestoque.Testoque.Fieldbyname('COEFDIV').ascurrency := (100 - (Dmestoque.Testoque.Fieldbyname('ICMS').ascurrency + Dmestoque.TSubProd.Fieldbyname('IPIPROD').ascurrency +COMVISTAVAR + DESCVISTAVAR+DMESTOQUE.TEstoque.FieldByname('IMPEXP').ascurrency+DMESTOQUE.TEstoque.FieldByname('IMPREND').ascurrency+DMESTOQUE.TEstoque.FieldByname('COFINS').ascurrency+DMESTOQUE.TEstoque.FieldByname('PIS').ascurrency+DMESTOQUE.TEstoque.FieldByname('CONTSOC').ascurrency))/100;
           DMESTOQUE.TEstoque.Post;
       End
       Else Begin
        // NAO DESTACA IPI
           DMESTOQUE.TEstoque.Edit;
      Dmestoque.Testoque.Fieldbyname('COEFDIV').ascurrency := (100 - (Dmestoque.Testoque.Fieldbyname('ICMS').ascurrency+COMVISTAVAR + DESCVISTAVAR+DMESTOQUE.TEstoque.FieldByname('IMPEXP').ascurrency+DMESTOQUE.TEstoque.FieldByname('IMPREND').ascurrency+DMESTOQUE.TEstoque.FieldByname('COFINS').ascurrency+DMESTOQUE.TEstoque.FieldByname('PIS').ascurrency+DMESTOQUE.TEstoque.FieldByname('CONTSOC').ascurrency))/100;
           DMESTOQUE.TEstoque.Post;
       End;
   End;
  //Valor do Produto com Valor de Reposição + os Impostos
  B:=(Dmestoque.Testoque.Fieldbyname('VALREP').ascurrency / Dmestoque.Testoque.Fieldbyname('COEFDIV').ascurrency);
  DMESTOQUE.TEstoque.Edit;
   DMESTOQUE.TEstoque.FieldByName('VLRBONIFIC').AsCurrency:=DMESTOQUE.TEstoque.FieldByName('VENDVARV').AsCurrency-(DMESTOQUE.TEstoque.FieldByName('VENDVARV').AsCurrency*DMESTOQUE.TEstoque.FieldByName('BONIFICACAO').AsCurrency)/100;
   DMESTOQUE.TEstoque.FieldByName('VALOREST').AsCurrency:=(DMESTOQUE.TEstoque.Fieldbyname('VALREP').AsCurrency/DMESTOQUE.TEstoque.Fieldbyname('COEFDIV').AsCurrency)*DMESTOQUE.TEstoque.Fieldbyname('ESTFISICO').AsCurrency;
  DMESTOQUE.TEstoque.Post;
  //CALCULANDO VALOR DE VENDA VAREJO A VISTA  (VENDAVARV)
  //Achando o Segundo Coeficiente.
    C := (Dmestoque.Testoque.Fieldbyname('LUCRATIVIDADE').ascurrency / 100)+1;
    //CALCULANDO VALOR DE VENDA VAREJO A PRAZO  (VENDAVARP)
       DMESTOQUE.TEstoque.Edit;
       Dmestoque.Testoque.Fieldbyname('VENDVARP'). Ascurrency := (Dmestoque.Testoque.Fieldbyname('VENDVARV'). Ascurrency *  ((100 + AcrecPrazoVar) / 100));
       DMESTOQUE.TEstoque.post;
    //CALCULANDO VALOR DE VENDA ATACADO A VISTA  (VENDATAV)

      //Angelo - 21/05/2015 - Salvando valores de varejo e atacado
      xVendaVarj := Dmestoque.Testoque.Fieldbyname('VENDVARV'). Ascurrency;
      xVendaAtac := Dmestoque.Testoque.Fieldbyname('VENDATAV'). Ascurrency;
      //F:= Dmestoque.Testoque.Fieldbyname('VENDVARV'). Ascurrency;

      DMESTOQUE.TEstoque.Edit;
      Dmestoque.Testoque.Fieldbyname('VENDATAV'). Ascurrency := (xVendaAtac / ((100 + DESCVISTAATAC) / 100));
      DMESTOQUE.TEstoque.post;
    //CALCULANDO VALOR DE VENDA ATACADO A PRAZO  (VENDATAP)
    I := Dmestoque.Testoque.Fieldbyname('VENDATAV').Ascurrency;
       DMESTOQUE.TEstoque.Edit;
    Dmestoque.Testoque.Fieldbyname('VENDATAP').Ascurrency := (I * ((100 + ACRECPRAZOATAC) / 100));
       DMESTOQUE.TEstoque.post;
    //Como o sistema não deve calcular o valor de venda ele deve informar qual a lucratividade alcançada pelo valor de venda informado pelo usuário
     //DMESTOQUE.TEstoque.Edit;
     //Dmestoque.Testoque.Fieldbyname('LUCRATIVIDADE').Ascurrency:=((Dmestoque.Testoque.Fieldbyname('VENDVARV').Ascurrency/B)-1)*100;
     //DMESTOQUE.TEstoque.post;

		  //Angelo - 22/05/2015 - Atualiza a lucratividade na tabela estoque
     DMEstoque.TransacEstoque.CommitRetaining;
     MDO.Query.Close;
     MDO.Query.SQL.Clear;
     MDO.Query.SQL.Add('UPDATE ESTOQUE SET ESTOQUE.LUCRATIVIDADE = :LUCRATIVIDADE ');
     MDO.Query.SQL.Add('WHERE ESTOQUE.COD_ESTOQUE = :COD');
     MDO.Query.ParamByName('LUCRATIVIDADE').Ascurrency := ((xVendaVarj/B)-1)*100;
     MDO.Query.ParamByName('COD').AsInteger := xCodEstoque;
     MDO.Query.ExecSQL;
     MDO.Transac.CommitRetaining;

      //se estiver no form de produtos
     //CALCULA VALORES EM MOEDA
     If Dmestoque.Testoque.Fieldbyname('AVVPROVAR').Ascurrency<>0 Then
        CalcLuc(Dmestoque.Testoque.Fieldbyname('VENDVARV').AsCurrency, Dmestoque.Testoque.Fieldbyname('AVVPROVAR').AsCurrency, 1)
     Else
        CalcLuc(Dmestoque.Testoque.Fieldbyname('VENDVARV').AsCurrency, DMMACS.TEmpresa.Fieldbyname('AVVPROVAR').AsCurrency, 1);
      //REPETE CALCULO SEM ALIQUOTA
     If Dmestoque.Testoque.Fieldbyname('AVVPROVAR').Ascurrency<>0 Then
        CalcLuc(Dmestoque.Testoque.Fieldbyname('VENDVARV').AsCurrency-((Dmestoque.Testoque.Fieldbyname('VENDVARV').AsCurrency)*Dmestoque.Testoque.Fieldbyname('AVVPROVAR').AsCurrency)/100, 0, 1)
     Else
        CalcLuc(Dmestoque.Testoque.Fieldbyname('VENDVARV').AsCurrency-((Dmestoque.Testoque.Fieldbyname('VENDVARV').AsCurrency)*DMMACS.TEmpresa.Fieldbyname('AVVPROVAR').AsCurrency)/100, 0, 1);


     // - 19/06/2009: calcula PMC se foi informado um valor para a MVA
     If DMESTOQUE.TEstoque.Fieldbyname('MVA').AsCurrency > 0
     Then Begin
       Try
        DMESTOQUE.TEstoque.Edit;
        DMESTOQUE.TEstoque.Fieldbyname('PMC').AsCurrency := Dmestoque.Testoque.Fieldbyname('VENDVARV').AsCurrency + ((Dmestoque.Testoque.Fieldbyname('VENDVARV').AsCurrency * DMESTOQUE.TEstoque.Fieldbyname('MVA').AsCurrency)/100);
        DMESTOQUE.TEstoque.Post;
       Except
       end;
     end;
	 Except
  End;
End;


//Realiza cálculos para o produto
Procedure TFImpNfe.CalculoVenda(DescVistaVar: Real; AcrecPrazoVar: Real; DescVistaAtac: Real; AcrecPrazoAtac: Real; ComVistaVar: Real; ComPrazoVar: Real; ComVistaAtac: Real; ComPrazoAtac: Real; XRET: INTEGER; XCALCLUC: INTEGER);
var
X,Y,Z,B,C,F,I :Real;
VlrVenda: Real;
XBaseCalc: Real;
XCredICMSFrete: Real;
XCredICMS: Real;
begin

  //CALCULA BASE DE CALCULO P/ LUCRO REAL/PRESUMIDO
  XBaseCalc:=Dmestoque.Testoque.Fieldbyname('VLRUNITCOMP').ascurrency-((Dmestoque.Testoque.Fieldbyname('VLRUNITCOMP').ascurrency*Dmestoque.Testoque.Fieldbyname('DESCONTO').ascurrency)/100)+((Dmestoque.Testoque.Fieldbyname('VLRUNITCOMP').ascurrency*Dmestoque.Testoque.Fieldbyname('ACRECIMO').ascurrency)/100);

  //CALCULANDO CUSTOS ADICIONAIS PARA (VALREP)
   If DMMACS.TEmpresa.FieldByName('TIPOEMPRESA').AsString='SIMPLES'
   Then Begin
    X:= (Dmestoque.Testoque.Fieldbyname('VLRUNITCOMP').ascurrency * (Dmestoque.TSubprod.Fieldbyname('IPIPROD').ascurrency) /100);
    Y:= (Dmestoque.Testoque.Fieldbyname('VLRUNITCOMP').ascurrency * (Dmestoque.TEstoque.Fieldbyname('FRETE').ascurrency) /100);
    Z:= (Dmestoque.Testoque.Fieldbyname('VLRUNITCOMP').ascurrency * (Dmestoque.TSubprod.Fieldbyname('EMBPROD').ascurrency) /100);
   End
   Else Begin
    X:= (XBaseCalc*(Dmestoque.TSubprod.Fieldbyname('IPIPROD').ascurrency)/100);
    Y:= (XBaseCalc*(Dmestoque.TEstoque.Fieldbyname('FRETE').ascurrency)/100);
    Z:= (XBaseCalc*(Dmestoque.TSubprod.Fieldbyname('EMBPROD').ascurrency)/100);
   End;
   //CALCULA CREDITO DE ICMS P/ FRETE
   XCredICMSFrete:=((Y*Dmestoque.TEstoque.Fieldbyname('ICMS').ascurrency)/100);

   //CALCULA CREDITO DE ICMS
   XCredICMS:=((XBaseCalc*Dmestoque.TEstoque.Fieldbyname('ICMS').ascurrency)/100);

   //CALCULO CUSTO LIQUIDO NOMMINAL CORRIGIDO (CLNC)
   DMESTOQUE.TEstoque.Edit;
  Dmestoque.TEstoque.Fieldbyname('CLNC').ascurrency:=XBaseCalc+X+Z+Y-XCredICMSFrete-XCredICMS;
   DMESTOQUE.TEstoque.Post;

  //CALCULANDO VALOR DE REPOSIÇÃO (VALREP)
   If DMMACS.TEmpresa.FieldByName('TIPOEMPRESA').AsString='SIMPLES'
   Then Begin
    DMESTOQUE.TEstoque.Edit;
    Dmestoque.Testoque.Fieldbyname('VALREP').ascurrency:= (Dmestoque.Testoque.Fieldbyname('VLRUNITCOMP').ascurrency + X + Y + Z);
    DMESTOQUE.TEstoque.Post;
   End
   Else Begin
       If DMMACS.TEmpresa.FieldByName('CREDITAIPI').AsString='1'
       Then Begin
      //Empresa possui credito IPI
           DMESTOQUE.TEstoque.Edit;
      Dmestoque.Testoque.Fieldbyname('VALREP').ascurrency:=XBaseCalc+Y-XCredICMSFrete;
           DMESTOQUE.TEstoque.Post;
       End
       Else Begin
      //Empresa nao possui credito IPI
           DMESTOQUE.TEstoque.Edit;
      Dmestoque.Testoque.Fieldbyname('VALREP').ascurrency:=XBaseCalc+Y+X-XCredICMSFrete;
           DMESTOQUE.TEstoque.Post;
       End;
   End;

   //COEFICIENTE DE DIVISAO
   If DMMACS.TEmpresa.FieldByName('TIPOEMPRESA').AsString='SIMPLES'
   Then Begin
    //COEFICIENTE P/ EMPRESA SIMPLES
       DMESTOQUE.TEstoque.Edit;
    Dmestoque.Testoque.Fieldbyname('COEFDIV').ascurrency := (100 - (DMMacs.Tempresa.Fieldbyname('IMPEST').ascurrency + DMMacs.Tempresa.Fieldbyname('IMPFED').ascurrency + COMVISTAVAR + DESCVISTAVAR + DMESTOQUE.TEstoque.FieldByname('OUTROS').ascurrency))/100;
       DMESTOQUE.TEstoque.Post;
   End
   Else Begin
    //COEFICIENTE P/ EMPRESA LUCRO REAL E PRESUMIDO
       If DMMACS.TEmpresa.FieldByName('CALCULAIPI').AsString='1'
       Then Begin
        // DESTACA IPI
           DMESTOQUE.TEstoque.Edit;
      Dmestoque.Testoque.Fieldbyname('COEFDIV').ascurrency := (100 - (Dmestoque.Testoque.Fieldbyname('ICMS').ascurrency + Dmestoque.TSubProd.Fieldbyname('IPIPROD').ascurrency +COMVISTAVAR + DESCVISTAVAR+DMESTOQUE.TEstoque.FieldByname('IMPEXP').ascurrency+DMESTOQUE.TEstoque.FieldByname('IMPREND').ascurrency+DMESTOQUE.TEstoque.FieldByname('COFINS').ascurrency+DMESTOQUE.TEstoque.FieldByname('PIS').ascurrency+DMESTOQUE.TEstoque.FieldByname('CONTSOC').ascurrency))/100;
           DMESTOQUE.TEstoque.Post;
       End
       Else Begin
        // NAO DESTACA IPI
           DMESTOQUE.TEstoque.Edit;
      Dmestoque.Testoque.Fieldbyname('COEFDIV').ascurrency := (100 - (Dmestoque.Testoque.Fieldbyname('ICMS').ascurrency+COMVISTAVAR + DESCVISTAVAR+DMESTOQUE.TEstoque.FieldByname('IMPEXP').ascurrency+DMESTOQUE.TEstoque.FieldByname('IMPREND').ascurrency+DMESTOQUE.TEstoque.FieldByname('COFINS').ascurrency+DMESTOQUE.TEstoque.FieldByname('PIS').ascurrency+DMESTOQUE.TEstoque.FieldByname('CONTSOC').ascurrency))/100;
           DMESTOQUE.TEstoque.Post;
       End;
   End;
  //Valor do Produto com Valor de Reposição + os Impostos
  B:=(Dmestoque.Testoque.Fieldbyname('VALREP').ascurrency / Dmestoque.Testoque.Fieldbyname('COEFDIV').ascurrency);
  DMESTOQUE.TEstoque.Edit;
   DMESTOQUE.TEstoque.FieldByName('VLRBONIFIC').AsCurrency:=DMESTOQUE.TEstoque.FieldByName('VENDVARV').AsCurrency-(DMESTOQUE.TEstoque.FieldByName('VENDVARV').AsCurrency*DMESTOQUE.TEstoque.FieldByName('BONIFICACAO').AsCurrency)/100;
   DMESTOQUE.TEstoque.FieldByName('VALOREST').AsCurrency:=(DMESTOQUE.TEstoque.Fieldbyname('VALREP').AsCurrency/DMESTOQUE.TEstoque.Fieldbyname('COEFDIV').AsCurrency)*DMESTOQUE.TEstoque.Fieldbyname('ESTFISICO').AsCurrency;
  DMESTOQUE.TEstoque.Post;
  //CALCULANDO VALOR DE VENDA VAREJO A VISTA  (VENDAVARV)
  //Achando o Segundo Coeficiente.
    C := (Dmestoque.Testoque.Fieldbyname('LUCRATIVIDADE').ascurrency / 100)+1;
   If XCALCLUC=0
   Then Begin//parametro que determina que o sistema deve calcular os valores de venda do produto
    //Valor do Produto com Valor de Reposição + os Impostos + Lucratividade
    If DMMACS.TEmpresa.FieldByName('TIPOEMPRESA').AsString='SIMPLES'
    Then Begin
        DMESTOQUE.TEstoque.Edit;
      Dmestoque.Testoque.Fieldbyname('VENDVARV').Ascurrency := (B * C);
       // Dmestoque.Testoque.Fieldbyname('MARGEMSEG').Ascurrency := (B * ((Dmestoque.Testoque.Fieldbyname('PERCMARGSEG').ascurrency / 100) + 1));
           DMESTOQUE.TEstoque.Post;
       End
       Else Begin
        DMESTOQUE.TEstoque.Edit;
      Dmestoque.Testoque.Fieldbyname('VENDVARV').Ascurrency:=(Dmestoque.Testoque.Fieldbyname('VALREP').Ascurrency+((Dmestoque.Testoque.Fieldbyname('VALREP').Ascurrency*Dmestoque.Testoque.Fieldbyname('OUTROS').Ascurrency)/100)+((Dmestoque.Testoque.Fieldbyname('VALREP').Ascurrency*Dmestoque.Testoque.Fieldbyname('MOD').Ascurrency)/100))/Dmestoque.Testoque.Fieldbyname('COEFDIV').Ascurrency;
       // Dmestoque.Testoque.Fieldbyname('MARGEMSEG').Ascurrency :=Dmestoque.Testoque.Fieldbyname('VENDVARV').Ascurrency;
      Dmestoque.Testoque.Fieldbyname('VENDVARV').Ascurrency:=Dmestoque.Testoque.Fieldbyname('VENDVARV').Ascurrency+((Dmestoque.Testoque.Fieldbyname('VENDVARV').Ascurrency*Dmestoque.Testoque.Fieldbyname('LUCRATIVIDADE').Ascurrency))/100;
       // Dmestoque.Testoque.Fieldbyname('MARGEMSEG').Ascurrency:=Dmestoque.Testoque.Fieldbyname('MARGEMSEG').Ascurrency+((Dmestoque.Testoque.Fieldbyname('MARGEMSEG').Ascurrency*Dmestoque.Testoque.Fieldbyname('PERCMARGSEG').Ascurrency))/100;
           DMESTOQUE.TEstoque.Post;
       End;

    //CALCULANDO VALOR DE VENDA VAREJO A PRAZO  (VENDAVARP)
       DMESTOQUE.TEstoque.Edit;
    Dmestoque.Testoque.Fieldbyname('VENDVARP'). Ascurrency := (Dmestoque.Testoque.Fieldbyname('VENDVARV'). Ascurrency *  ((100 + AcrecPrazoVar) / 100));
    DMESTOQUE.TEstoque.Post;
    //CALCULANDO VALOR DE VENDA ATACADO A VISTA  (VENDATAV)
    F:= Dmestoque.Testoque.Fieldbyname('VENDVARV'). Ascurrency;
       DMESTOQUE.TEstoque.edit;
    Dmestoque.Testoque.Fieldbyname('VENDATAV'). Ascurrency := (F / ((100 + DESCVISTAATAC) / 100));
       DMESTOQUE.TEstoque.post;

    //CALCULANDO VALOR DE VENDA ATACADO A PRAZO  (VENDATAP)
    I := Dmestoque.Testoque.Fieldbyname('VENDATAV'). Ascurrency;
       DMESTOQUE.TEstoque.edit;
    Dmestoque.Testoque.Fieldbyname('VENDATAP'). Ascurrency := (I * ((100 + ACRECPRAZOATAC) / 100));
       DMESTOQUE.TEstoque.post;
  End
   Else Begin
    //CALCULANDO VALOR DE VENDA VAREJO A PRAZO  (VENDAVARP)
       DMESTOQUE.TEstoque.Edit;
       Dmestoque.Testoque.Fieldbyname('VENDVARP'). Ascurrency := (Dmestoque.Testoque.Fieldbyname('VENDVARV'). Ascurrency *  ((100 + AcrecPrazoVar) / 100));
       DMESTOQUE.TEstoque.post;
    //CALCULANDO VALOR DE VENDA ATACADO A VISTA  (VENDATAV)

      F:= Dmestoque.Testoque.Fieldbyname('VENDVARV'). Ascurrency;
       DMESTOQUE.TEstoque.Edit;
      Dmestoque.Testoque.Fieldbyname('VENDATAV'). Ascurrency := (F / ((100 + DESCVISTAATAC) / 100));
       DMESTOQUE.TEstoque.post;
    //CALCULANDO VALOR DE VENDA ATACADO A PRAZO  (VENDATAP)
    I := Dmestoque.Testoque.Fieldbyname('VENDATAV').Ascurrency;
       DMESTOQUE.TEstoque.Edit;
    Dmestoque.Testoque.Fieldbyname('VENDATAP').Ascurrency := (I * ((100 + ACRECPRAZOATAC) / 100));
       DMESTOQUE.TEstoque.post;
    //Como o sistema não deve calcular o valor de venda ele deve informar qual a lucratividade alcançada pelo valor de venda informado pelo usuário
    If XRET=1
       Then Begin//verifica se foi informado um valor de venda para calcular a lucratividade
           DMESTOQUE.TEstoque.Edit;
           Dmestoque.Testoque.Fieldbyname('LUCRATIVIDADE').Ascurrency:=((Dmestoque.Testoque.Fieldbyname('VENDVARV').Ascurrency/B)-1)*100;
           DMESTOQUE.TEstoque.post;
    End
       Else Begin
      FMenu.TIPOAUX:=FormatFloat('###,##0,00',((Dmestoque.Testoque.Fieldbyname('VENDVARV').Ascurrency/B)-1)*100);
       End;
   End;
   If XRET=1
   Then Begin
      //se estiver no form de produtos
     //CALCULA VALORES EM MOEDA
     If Dmestoque.Testoque.Fieldbyname('AVVPROVAR').Ascurrency<>0 Then
        CalcLuc(Dmestoque.Testoque.Fieldbyname('VENDVARV').AsCurrency, Dmestoque.Testoque.Fieldbyname('AVVPROVAR').AsCurrency, 1)
     Else
        CalcLuc(Dmestoque.Testoque.Fieldbyname('VENDVARV').AsCurrency, DMMACS.TEmpresa.Fieldbyname('AVVPROVAR').AsCurrency, 1);
      //REPETE CALCULO SEM ALIQUOTA
     If Dmestoque.Testoque.Fieldbyname('AVVPROVAR').Ascurrency<>0 Then
        CalcLuc(Dmestoque.Testoque.Fieldbyname('VENDVARV').AsCurrency-((Dmestoque.Testoque.Fieldbyname('VENDVARV').AsCurrency)*Dmestoque.Testoque.Fieldbyname('AVVPROVAR').AsCurrency)/100, 0, 1)
     Else
        CalcLuc(Dmestoque.Testoque.Fieldbyname('VENDVARV').AsCurrency-((Dmestoque.Testoque.Fieldbyname('VENDVARV').AsCurrency)*DMMACS.TEmpresa.Fieldbyname('AVVPROVAR').AsCurrency)/100, 0, 1);


     // - 19/06/2009: calcula PMC se foi informado um valor para a MVA
     If DMESTOQUE.TEstoque.Fieldbyname('MVA').AsCurrency > 0
     Then Begin
       Try
        DMESTOQUE.TEstoque.Edit;
        DMESTOQUE.TEstoque.Fieldbyname('PMC').AsCurrency := Dmestoque.Testoque.Fieldbyname('VENDVARV').AsCurrency + ((Dmestoque.Testoque.Fieldbyname('VENDVARV').AsCurrency * DMESTOQUE.TEstoque.Fieldbyname('MVA').AsCurrency)/100);
        DMESTOQUE.TEstoque.Post;
       Except
       End;
     End;
  End;
End;

//Função que retorna o calculo do coeficiente de divisão para o produto
Function TFImpNfe.CalculaCoefDiv : Real;
Var
  COMVISTAVAR, DESCVISTAVAR, Outros: Real;
Begin
  Try
    //Tratamento para comissão
       If DMESTOQUE.TEstoque.FieldByName('CVVPROVAR').AsCurrency > 0 Then
      COMVISTAVAR:= DMESTOQUE.TEstoque.FieldByName('CVVPROVAR').AsCurrency
       Else
           COMVISTAVAR:= DMMACS.TEmpresa.FieldByName('CVVPROVAR').AsCurrency;

       //Tratamento para desconto
       If DMESTOQUE.TEstoque.FieldByName('AVVPROVAR').AsCurrency > 0 Then
      DESCVISTAVAR:= DMESTOQUE.TEstoque.FieldByName('AVVPROVAR').AsCurrency
       Else
           DESCVISTAVAR:= DMMACS.TEmpresa.FieldByName('AVVPROVAR').AsCurrency;

       //Tratamento para Outros
       If DMESTOQUE.TEstoque.FieldByName('OUTROS').AsCurrency > 0 Then
      Outros:= DMESTOQUE.TEstoque.FieldByName('OUTROS').AsCurrency
       Else  Begin
           DMCONTA.TAlx.Close;
           DMCONTA.TAlx.SQL.Clear;
           DMCONTA.TAlx.SQL.Add(' Select max(estoque.outros) as OUTROS from estoque where estoque.outros>0 ');
           DMCONTA.TAlx.Open;
           If DMCONTA.TAlx.FieldByName('OUTROS').AsCurrency<=0 Then
            MessageDlg('Altere as informações de lucratividade de apenas um produto, informando o campo Outros.', mtWarning, [mbOK], 0);
           Outros:=DMCONTA.TAlx.FieldByName('OUTROS').AsCurrency;
       End;
    Dmestoque.Testoque.Fieldbyname('COEFDIV').ascurrency := (100 - (DMMacs.Tempresa.Fieldbyname('IMPEST').ascurrency + DMMacs.Tempresa.Fieldbyname('IMPFED').ascurrency + COMVISTAVAR + Outros))/100;
   Except
       Result:=1;
   End;
End;

Procedure TFImpNfe.BTNOPENPClick(Sender: TObject);
Begin
    If AbrirForm(TFCadProduto, FCadProduto, 1) = 'Selected' Then
    Begin
       //XCODPROD:=StrToInt(DMESTOQUE.TSubProd.FieldByName('CONTRINT').AsString);
        EdCodP.Text := DMEstoque.TProduto.FieldByName('COD_PRODUTO').AsString;
        EdDescP.Text := DMEstoque.TProduto.FieldByName('DESCRICAO').AsString;
        EDCodP.Enabled := false;
        EdDescP.Enabled := false;
    End;
End;

//Paulo 27/09/2010: verifica o produto, se não tiver produto insere um novo produto, depois retorna o cod_composto

Function TFImpNfe.VerificaProdutoImporta:Integer;
Begin
	try
      //Cria um produto para importação de NFe para caso o item não tiver produto é inserido com esse produto
      If FiltraTabela(DMMACS.TALX, 'produto', 'descricao', 'IMPORTACAO NFE', '') = false Then
      Begin
          DMESTOQUE.TProduto.close;
          DMESTOQUE.TProduto.SQL.Clear;
  //        DMESTOQUE.TProduto.SQL.Add('insert into PRODUTO(COD_PRODUTO,COD_INTERNO,DESCRICAO,COD_SUBGRUPOPROD,COD_GRUPOPROD,COD_LOJA)');
  //        DMESTOQUE.TProduto.SQL.Add('VALUES(:COD_PRODUTO,:COD_INTERNO,:DESCRICAO,:SUBGRUPOPROD,:GRUPOPROD,:COD_LOJA)');
          DMESTOQUE.TProduto.SQL.Add('insert into PRODUTO(COD_PRODUTO,DESCRICAO,COD_SUBGRUPOPROD,COD_GRUPOPROD,COD_LOJA)');
          DMESTOQUE.TProduto.SQL.Add('VALUES(:COD_PRODUTO,:DESCRICAO,:SUBGRUPOPROD,:GRUPOPROD,:COD_LOJA)');
          DMESTOQUE.TProduto.ParamByName('COD_PRODUTO').AsInteger := FPedCompra.EncontraPK('PRODUTO', 'COD_PRODUTO');
  //      DMESTOQUE.TProduto.ParamByName('COD_INTERNO').AsString := UltCodInt('PRODUTO', 'GRUPO');
          DMESTOQUE.TProduto.ParamByName('DESCRICAO').AsString := 'IMPORTACAO NFE';
          DMESTOQUE.TProduto.ParamByName('SUBGRUPOPROD').AsInteger := 1;
          DMESTOQUE.TProduto.ParamByName('GRUPOPROD').AsInteger := 1;
          FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
          DMESTOQUE.TProduto.ParamByName('COD_LOJA').AsInteger := DMMACS.TLoja.FieldByName('COD_LOJA').AsInteger;
          DMESTOQUE.TProduto.ExecSQL;
          DMESTOQUE.TransacEstoque.CommitRetaining;
          DMESTOQUE.TProduto.Open;
      End;
	except
	end;
    FiltraTabela(DMESTOQUE.TProduto, 'produto', 'descricao', 'IMPORTACAO NFE', '');
    Result:= DMESTOQUE.TProduto.FieldbyName('COD_PRODUTO').AsInteger;
End;

Procedure TFImpNfe.BtCancelaClick(Sender: TObject);
Begin
    PAlteracoes.Visible := False;
    PAlteracoes.SendToBack;

    MDO.QConsulta.GotoBookmark(xIndexListagem);
    MDO.QConsulta.FreeBookmark(xIndexListagem);
End;

Procedure TFImpNfe.BtnCancelarClick(Sender: TObject);
Begin
    XFecha := 1;
    Close;
End;


Procedure TFImpNfe.BtCstEntradaClick(Sender: TObject);
Begin
   //13/10/2011: abre a ela de cst para ser modificado o cst de entrada
    FiltraTabela(DMEstoque.TCST, 'cst', '', '', '');
    If AbrirForm(TFCadCST, FCadCST, 1) = 'Selected'
        Then Begin
        EdCSTEnt.Text := DMEstoque.TCST.FieldByName('cod_sit_trib').AsString;
    End;

    //Paulo 13/10/2011: Atualiza a tabela nfe tmp
    DMENTRADA.TImpNfeTMP.Edit;
    DMENTRADA.TImpNfeTMP.FieldByName('cst').AsString := EdCSTEnt.Text;
    DMENTRADA.TImpNfeTMP.Post;
    DMENTRADA.IBT.CommitRetaining;
End;


//Jônatas 13/08/2013 - Aplicar percentual de reajuste para os itens
Procedure TFImpNfe.BtnPercentualClick(Sender: TObject);
Var
    Valor_custo: Real;
    CodLoja: Integer;
Begin
   If MessageDlg('Baseado em suas configurações de reajuste de preços de compra e venda, os valores serão reajustados.'+#13+#10+'Deseja continuar com o reajuste?', mtConfirmation, [mbYes, mbNo], 0)=mrno Then
       Exit;
	MDO.Transac.CommitRetaining;
   DMENTRADA.IBT.CommitRetaining;
   //verifica se o edit está vazio, e coloca como 0 caso seja verdade
    If EdPercentual.Text = '' Then
        EdPercentual.Text := '0';
    If EdPercentualAtac.Text = '' Then
        EdPercentualAtac.Text := '0';
    If ( StrToFloat(EdPercentual.text) > 0  ) Then
    Begin
       Try
           //Angelo - 18/05/2015 - Atualiza percentuais de venda na tabela loja
           CodLoja := DMMACS.TLoja.FieldByName('COD_LOJA').AsInteger;
           MDO.Query.Close;
           MDO.Query.SQL.Clear;
           MDO.Query.SQL.Add('UPDATE LOJA SET LOJA.ALIQVAR = :ALIQVAR, LOJA.ALIQATAC = :ALIQATAC ');
           MDO.Query.SQL.Add('WHERE LOJA.COD_LOJA = :COD_LOJA');
           MDO.Query.ParamByName('COD_LOJA').AsInteger := CodLoja;
           MDO.Query.ParamByName('ALIQVAR').AsFloat := StrToFloat(EdPercentual.text);
           if ( StrToFloat(EdPercentualAtac.text) > 0 ) then
             MDO.Query.ParamByName('ALIQATAC').AsFloat := StrToFloat(EdPercentualAtac.text)
           else
             MDO.Query.ParamByName('ALIQATAC').AsFloat := StrToFloat(EdPercentual.text);
           MDO.Query.ExecSQL;
           MDO.Transac.CommitRetaining;
           FiltraTabela(DMENTRADA.TImpNfeTMP, 'impnfetmp', '', '', '');
           //FiltraTabela(DMENTRADA.TImpNfeTMP, 'impnfetmp', 'VALORVENDA', '0', ' or STATUS =''NCAD''');
           DMENTRADA.TImpNfeTMP.First;
           If Not DMENTRADA.TImpNfeTMP.IsEmpty Then
           Begin
               While Not DMENTRADA.TImpNfeTMP.Eof Do
               Begin
                   if (CBAplicaCadastrados.Checked)
                       OR ((CBAplicaCadastrados.Checked = False) AND (DMENTRADA.TImpNfeTMP.FieldByName('STATUS').AsString <> 'OK')) then
                   begin
                       Valor_custo := DMENTRADA.TImpNfeTMP.FieldByName('VALORUN').AsCurrency;

                       DMENTRADA.TImpNfeTMP.Edit;
                       DMENTRADA.TImpNfeTMP.FieldByName('VALORVENDA').AsFloat := (Valor_custo + Valor_custo * ((StrToFloat(EdPercentual.text)) / 100));
                       //Angelo - 13/05/2015 - Adicionado percentual para venda no atacado
                       if (StrToFloat(EdPercentualAtac.text) > 0) then
                       begin
                           DMENTRADA.TImpNfeTMP.FieldByName('VALORVENDAAT').AsFloat := (Valor_custo + Valor_custo * ((StrToFloat(EdPercentualAtac.text)) / 100));
                       end
                       else
                       begin//Se não houver entrada do usuário, então se baseia no reajuste de varejo
                           DMENTRADA.TImpNfeTMP.FieldByName('VALORVENDAAT').AsFloat := (Valor_custo + Valor_custo * ((StrToFloat(EdPercentual.text)) / 100));
                       end;
                       DMENTRADA.TImpNfeTMP.Post;
                   end;

                   DMENTRADA.TImpNfeTMP.Next;
               End;
           End;
           DMENTRADA.IBT.CommitRetaining;
       Except
           DMENTRADA.IBT.RollbackRetaining;
       End;
       FiltraSlave;
    End
    Else Begin
        showmessage('Entre com um percentual de reajuste maior que 0');
        EdPercentual.SetFocus;
    End;
End;

//Jônatas 04/10/2013 - função para cadastrar NCM caso ele não exista na tabela NCM
procedure TFImpNfe.AchaNCM(xAchaNCM: String);
begin
    Try
        FiltraTabela(DMESTOQUE.Alx5,'NCM','NCM',xAchaNCM,'');
        If DMESTOQUE.Alx5.IsEmpty
        Then Begin
            DMESTOQUE.Alx4.Close;
            DMESTOQUE.Alx4.SQL.Clear;
            DMESTOQUE.Alx4.SQL.Add('insert into ncm (NCM, DESCRICAO) values (:num_ncm, :desc)');
            DMESTOQUE.Alx4.ParamByName('num_ncm').AsString := xAchaNCM;
            DMESTOQUE.Alx4.ParamByName('desc').AsString := 'NCM importado via XML';
            DMESTOQUE.Alx4.ExecSQL;
            DMESTOQUE.TransacEstoque.CommitRetaining;
        End;
    Except
        DMESTOQUE.TransacEstoque.RollbackRetaining;
    End;
end;

procedure TFImpNfe.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //Edmar - 11/05/2015 - variavel auxiliar para controlar se deve usar o botão cancelar ao fechar o formulário
  if not XConfirmaImp then
    BtnCancelar.Click;
   XConfirmaImp := False;
end;

//Angelo - 19/05/2015 - Filtra a cst de venda e salva na tabela temporária
procedure TFImpNfe.BtCstVendaClick(Sender: TObject);
begin
   //Angelo - 20/05/2015: abre a tela de cst para ser modificado o cst de venda
    FiltraTabela(DMEstoque.TCST, 'cst', 'VENDA', '1', '');
    If AbrirForm(TFCadCST, FCadCST, 1) = 'Selected' then
    begin
        EdCSTVenda.Text := DMEstoque.TCST.FieldByName('cod_sit_trib').AsString;
        //Atualiza tabela impnfetmp com o valor da cst de venda
        try
           MDO.Query.Close;
           MDO.Query.SQL.Clear;
           MDO.Query.SQL.Add('UPDATE IMPNFETMP SET IMPNFETMP.CST = :CST ');
           MDO.Query.SQL.Add('WHERE IMPNFETMP.CODPRODFORN = :CODPRODFORN ');
           MDO.Query.ParamByName('CODPRODFORN').AsString := DMENTRADA.TImpNfeTMP.FieldByName('CODPRODFORN').AsString;
           MDO.Query.ParamByName('CST').AsString := EdCstVenda.Text;
           MDO.Query.ExecSQL;
           MDO.Transac.CommitRetaining;
        except
           MDO.Transac.RollbackRetaining;
        end;
    end;
end;

procedure TFImpNfe.DBProdutosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If (shift=[ssCtrl]) and (key = 83)
   Then Begin
     Try
       if not DirectoryExists('C:\MZR\Arquivos\LayoutGrid\') then begin
           ForceDirectories('C:\MZR\Arquivos\LayoutGrid\');
       end;
       DBProdutos.Columns.SaveToFile('C:\MZR\Arquivos\LayoutGrid\impnfe.lgm');
       Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Layout da Grid foi salvo com sucesso!', '', 1, 1, false, 'i');
     Except
           Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Falha na tentativa de salvar o layout da grid!', '', 1, 1, false, 'i');
     End;
   End;
end;

//Edmar - 01/09/2015 - Busca a PK do cst com base no código passado como param.
function TFImpNfe.EncontraCst(XCST: String): Integer;
begin
   Result := 0;
   try
       MDO.QConsulta.Close;
       MDO.QConsulta.SQL.Clear;
       MDO.QConsulta.SQL.Add(' SELECT CST.COD_CST FROM CST WHERE CST.COD_SIT_TRIB = :CST ');
       MDO.QConsulta.ParamByName('CST').AsString := XCST;
       MDO.QConsulta.Open;

       if MDO.QConsulta.FieldByName('COD_CST').AsString <> '' then
           Result := MDO.QConsulta.FieldByName('COD_CST').AsInteger;
   except
       On e : Exception do
       begin
           raise Exception.Create('Não foi possível buscar o CST'+#13#10+E.Message);
       end;
   end;
end;

Function TFImpNfe.CalcularValorRepItens: Boolean;
var
   IPI, FRETE, ST: Real;
begin
   Result := True;
   try
       MDO.Query.Close;
       MDO.Query.SQL.Clear;
       MDO.Query.SQL.Add(' UPDATE IMPNFETMP SET VALORREP = VALORUN + ');
       MDO.Query.SQL.Add(' ( ');
       MDO.Query.SQL.Add('  (VALORUN * (IPI / 100)) + ');
       MDO.Query.SQL.Add('  (VALORUN * (ALIQFRETE / 100)) + ');
       MDO.Query.SQL.Add('      CASE BASESUBST ');
       MDO.Query.SQL.Add('       WHEN 0 THEN 0 ');
       MDO.Query.SQL.Add('       ELSE (VALORUN * (((ICMSSUBST * 100) / BASESUBST) / 100)) ');
       MDO.Query.SQL.Add('      END ');
       MDO.Query.SQL.Add(' ) ');
       MDO.Query.ExecSQL;
       MDO.Transac.CommitRetaining;

       //Result := XVlrUn + (IPI + FRETE + ST);
   except
       Result := False;
   end;
end;

procedure TFImpNfe.btnRecarregaProdutosClick(Sender: TObject);
begin
   //
   FiltraSlave;
end;

procedure TFImpNfe.edValorCustoTotalExit(Sender: TObject);
var
   xTotalUnitario, xCustoUnitario, xRestanteCusto: Real;
begin
   try
       EdVlrCusto.ValueNumeric := edValorCustoTotal.ValueNumeric/EdQtdEmbalagem.ValueNumeric;

       //busca total unitário dos itens
       MDO.QAlx1.Close;
       MDO.QAlx1.SQL.Clear;
       MDO.QAlx1.SQL.Add(' SELECT SUM(IMPNFETMP.VALORUN) TOTALUN ');
       MDO.QAlx1.SQL.Add(' FROM IMPNFETMP ');
       MDO.QAlx1.SQL.Add(' WHERE IMPNFETMP.CODPRODFORN <> :CODIGO ');
       MDO.QAlx1.ParamByName('CODIGO').AsString := XCODPRODFORN;
       MDO.QAlx1.Open;
       xTotalUnitario := MDO.QAlx1.FieldByName('TOTALUN').AsCurrency + EdVlrCusto.ValueNumeric;

       //busca pelo item pra buscar os impostos
       MDO.QAlx1.Close;
       MDO.QAlx1.SQL.Clear;
       MDO.QAlx1.SQL.Add(' SELECT * FROM IMPNFETMP ');
       MDO.QAlx1.SQL.Add(' WHERE IMPNFETMP.CODPRODFORN = :CODIGO ');
       MDO.QAlx1.ParamByName('CODIGO').AsString := XCODPRODFORN;
       MDO.QAlx1.Open;
       
       //calcula o custo básico do item com o novo custo
       xCustoUnitario := ((edValorCustoTotal.ValueNumeric + MDO.QAlx1.FieldByName('ICMSSUBST').AsCurrency + MDO.QAlx1.FieldByName('VALORIPI').AsCurrency) - MDO.QAlx1.FieldByName('VALORDESCONTO').AsCurrency) / EdQtdEmbalagem.ValueNumeric;
       //calcula, se houver, a diferença do custo que sobrou além de ST e IPI 
       xRestanteCusto := ((EdVlrCusto.ValueNumeric / xTotalUnitario) * xDifTotNFCusto)/EdQtdEmbalagem.ValueNumeric;

       EdCustoNfe.ValueNumeric := xCustoUnitario + xRestanteCusto;
   except
       MessageDlg('erro ao calcular', mtWarning, [mbOK], 0);
       EdQtdEmbalagem.SetFocus;
   end;
end;

procedure TFImpNfe.BitBtn2Click(Sender: TObject);
begin
   //DMMACS.Transaction.CommitRetaining;
   DMMACS.TRel.Close;
   DMMACS.TRel.SQL.Clear;
   DMMACS.TRel.SQL.Add(' select * from impnfetmp order by nitem ');
   DMMACS.TRel.Open;
   qrdbcodigo.DataSet := DMMACS.TRel;
   qrdbdescricao.DataSet := DMMACS.TRel;
   qrdbncm.DataSet := DMMACS.TRel;
   qrdbquantidades.DataSet := DMMACS.TRel;
   qrdbvlrunit.DataSet := DMMACS.TRel;
   qrdbvlrtotal.DataSet := DMMACS.TRel;
   qrdbvlrvenda.DataSet := DMMACS.TRel;
   qrdbcst.DataSet := DMMACS.TRel;
   qrdbmarca.DataSet := DMMACS.TRel;
   qrdbcustonfe.DataSet := DMMACS.TRel;
   qrdbdescricaovinculado.DataSet := DMMACS.TRel;
   RelatorioConferencia.Preview;
end;

procedure TFImpNfe.RelatorioConferenciaBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
   txtRelEmitente.Caption := EdNomeForn.Text;
   txtNumeroNfe.Caption := EdNumNfe.Text;
   txtRelValorTotal.Caption := FormatFloat('0.00', EdTotalNfe.ValueNumeric);
end;

Function TFImpNfe.CalculaCustoNFeProdutos: Boolean;
var
   xTotalCustoGeral, xCustoNfe_ValorFinal, xTotalUnitario: Real;
begin   
   xTotalCustoGeral := 0;

   try
       MDO.QConsulta.Close;
       MDO.QConsulta.SQL.Clear;
       MDO.QConsulta.SQL.Add(' SELECT * FROM IMPNFETMP ORDER BY NITEM ');
       MDO.QConsulta.Open;
       MDO.QConsulta.First;
       
       while not MDO.QConsulta.Eof do
       begin
           //busca o custo básico do item = (valor do item + st + IPI) - desconto
           xCustoNfe_ValorFinal := (MDO.QConsulta.FieldByName('VALORTOTAL').AsCurrency + MDO.QConsulta.FieldByName('ICMSSUBST').AsCurrency + MDO.QConsulta.FieldByName('VALORIPI').AsCurrency) - MDO.QConsulta.FieldByName('VALORDESCONTO').AsCurrency;

           //atualiza o item com o custo calculado dividindo pela quantidade comprada
           MDO.Query.Close;
           MDO.Query.SQL.Clear;
           MDO.Query.SQL.Add(' UPDATE IMPNFETMP SET IMPNFETMP.CUSTONFE = :CUSTO_NFE WHERE IMPNFETMP.NITEM = :NITEM ');
           MDO.Query.ParamByName('CUSTO_NFE').AsCurrency := xCustoNfe_ValorFinal / MDO.QConsulta.FieldByName('QUANTIDADE').AsCurrency;
           MDO.Query.ParamByName('NITEM').AsString := MDO.QConsulta.FieldByName('NITEM').AsString;
           MDO.Query.ExecSQL;

           //totaliza o custo total calculado
           xTotalCustoGeral := xTotalCustoGeral + xCustoNfe_ValorFinal;

           MDO.QConsulta.Next;
       end;
       MDO.Transac.CommitRetaining;

       //depois de recuperar o custo do item, verificar o que falta do total da nota
       //se falta é porque deve ter valor de frete, seguro, outras despesas, etc.
       //se faltar distribuir proporcional (com uma tolerancia de 5 centavos pois no calculo pode se perder alguns centavos)
       if (XTotalNFe > xTotalCustoGeral) AND (XTotalNFe - xTotalCustoGeral > 0.05) then
       begin
           //extrai o valor divergente entre o total da nfe e o custo geral calculado
           //esse é o valor que será rateado entre os itens
           xDifTotNFCusto := XTotalNFe - xTotalCustoGeral;

           MDO.QAlx1.Close;
           MDO.QAlx1.SQL.Clear;
           MDO.QAlx1.SQL.Add(' SELECT SUM(IMPNFETMP.VALORUN) TOTALUN FROM IMPNFETMP ');
           MDO.QAlx1.Open;
           xTotalUnitario := MDO.QAlx1.FieldByName('TOTALUN').AsCurrency;

           MDO.QConsulta.Close;
           MDO.QConsulta.SQL.Clear;
           MDO.QConsulta.SQL.Add(' SELECT * FROM IMPNFETMP ORDER BY NITEM ');
           MDO.QConsulta.Open;
           
           MDO.QConsulta.First;
           while not MDO.QConsulta.Eof do
           begin
               //calcula o valor que este item vai receber da diferença de custo
               xCustoNfe_ValorFinal := (MDO.QConsulta.FieldByName('VALORUN').AsCurrency / xTotalUnitario) * xDifTotNFCusto;

               //atualiza o item somando o custo calculado anteriormente com a diferença calculada acima 
               MDO.Query.Close;
               MDO.Query.SQL.Clear;
               MDO.Query.SQL.Add(' UPDATE IMPNFETMP SET IMPNFETMP.CUSTONFE = :CUSTO_NFE WHERE IMPNFETMP.NITEM = :NITEM ');
               MDO.Query.ParamByName('CUSTO_NFE').AsCurrency :=  MDO.QConsulta.FieldByName('CUSTONFE').AsCurrency + (xCustoNfe_ValorFinal / MDO.QConsulta.FieldByName('QUANTIDADE').AsCurrency);
               MDO.Query.ParamByName('NITEM').AsString := MDO.QConsulta.FieldByName('NITEM').AsString;
               MDO.Query.ExecSQL;

               MDO.QConsulta.Next;
           end;
           MDO.Transac.CommitRetaining;
       end
       //se ultrapassar, dar mensagem para o usuário de modo que ele entre em contato com a gente para analisarmos
       else if (xTotalCustoGeral > XTotalNFe) AND (xTotalCustoGeral - XTotalNFe > 0.05) then
       begin
           MessageDlg('O valor do custo ultrapassou o valor total da nota fiscal. Por favor entre em contato com o suporte para analisarmos a situação.', mtInformation, [mbOK], 0);
       end;
   except
       MDO.Transac.RollbackRetaining;
   end;
end;

procedure TFImpNfe.FormShow(Sender: TObject);
begin
   xDifTotNFCusto := 0;
   CalculaCustoNFeProdutos;
end;

End.

