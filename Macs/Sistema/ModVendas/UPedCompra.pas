Unit UPedCompra;

Interface

Uses
    Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    UPedidoPadrao, TFlatHintUnit, Grids, DBGrids, StdCtrls,
    TFlatEditUnit, Buttons, jpeg, ExtCtrls, EditFloat, ColorEditFloat, Mask,
    DBCtrls, DBColorEdit, FashionPanel, ColorMaskEdit, Qrctrls, QuickRpt,
    UFrmBusca, FR_DSet, FR_DBSet, FR_Class, Menus, DB, TFlatCheckBoxUnit,
    DrLabel, ShellApi, ClipBrd, cxLookAndFeelPainters, cxButtons, cxCheckBox,
    XP_Button, cxTextEdit, cxControls, cxContainer, cxEdit, cxGroupBox,
    cxRadioGroup, ComCtrls, xmldom, XMLIntf, msxmldom, XMLDoc, oxmldom,
  frxClass, frxDBSet;

Type
    TFPedCompra = Class(TFPedidoPadrao)
        Etiquetas1: TMenuItem;
        EtiquetaCdFabricante1: TMenuItem;
        PComisPedC: TPanel;
        DbComis: TDBColorEdit;
        DBColorEdit2: TDBColorEdit;
        BitBtn8: TBitBtn;
        BitBtn9: TBitBtn;
        Label50: TLabel;
        Label42: TLabel;
        BtnTroca: TBitBtn;
        FrmDestinatario: TFrmBusca;
        PMBtnFiscal: TPopupMenu;
        ConsultaNDocFiscal1: TMenuItem;
        AlteraNDocFiscal1: TMenuItem;
        EdNumDoc: TFlatEdit;
        DBColorEdit3: TDBColorEdit;
        Label59: TLabel;
        PM_P_Grid: TPopupMenu;
        Criarnovopedido1: TMenuItem;
        PMNFe: TPopupMenu;
        ImprimirDANFE1: TMenuItem;
        AbrirXML1: TMenuItem;
        AbrirXMLResposta1: TMenuItem;
        CopiarChaveNFe1: TMenuItem;
        ConsultaNFeNacinal1: TMenuItem;
        ConsultaNFePR1: TMenuItem;
        Exportar1: TMenuItem;
        N1: TMenuItem;
        PExp: TPanel;
        LBCONEXAO: TLabel;
        PBExport: TProgressBar;
        N2: TMenuItem;
        EfetuarDevoluo1: TMenuItem;
        DBGridConvert: TDBGrid;
        MnAgrupar: TPopupMenu;
        BitBtn12: TBitBtn;
        BitBtn13: TBitBtn;
        SpeedButton1: TSpeedButton;
        BtnImportaNfe: TBitBtn;
        XMLDocument1: TXMLDocument;
        AgruparItensparaVenda1: TMenuItem;
        N3: TMenuItem;
        NotaFiscalEletrnica1: TMenuItem;
        VisualizarDanfe1: TMenuItem;
        CancelarNfe1: TMenuItem;
        RelatriodeDanfes1: TMenuItem;
        PnLote: TPanel;
        FashionPanel2: TFashionPanel;
        Label65: TLabel;
        Label64: TLabel;
        Label61: TLabel;
        EdQtdBruta: TColorEditFloat;
        EdQuantDescarte: TColorEditFloat;
        EdQtdEntrada: TColorEditFloat;
        Label66: TLabel;
        EdDescarte: TEdit;
        Label68: TLabel;
        EdQtdLote: TColorEditFloat;
        BtnCancelaLote: TBitBtn;
        BtnLoteOk: TBitBtn;
        CBLoteSelecionado: TDBLookupComboBox;
        Label67: TLabel;
        BtnAbreLote: TBitBtn;
        NOTAFISCALELETRNICA2: TMenuItem;
        RecuperarDadosdaNotaFiscalEletrnica1: TMenuItem;
        InutilizarNumeraodaNotaFiscalEletrnica1: TMenuItem;
        VisualizarnoSefaz1: TMenuItem;
        ConsultarStatusNFe1: TMenuItem;
        VerificarServidorSefaz1: TMenuItem;
        N4: TMenuItem;
        ListarNFe1: TMenuItem;
        BtnProdutos: TBitBtn;
        BtnConsumo: TBitBtn;
        FPCLista: TFashionPanel;
        Panel11: TPanel;
        Label121: TLabel;
        Label122: TLabel;
        Label123: TLabel;
        Label124: TLabel;
        Label63: TLabel;
        BtnInsereConsumo: TBitBtn;
        BtExcluiConsumo: TBitBtn;
        EdQtdConsumo: TColorEditFloat;
        EdVlrUnitConsumo: TColorEditFloat;
        EdDescontoConsumo: TColorEditFloat;
        EdTotalConsumo: TColorEditFloat;
        Panel20: TPanel;
        FashionPanel12: TFashionPanel;
        Label140: TLabel;
        Label141: TLabel;
        ColorEditFloat36: TColorEditFloat;
        BitBtn24: TBitBtn;
        Panel21: TPanel;
        Label142: TLabel;
        Label143: TLabel;
        Label144: TLabel;
        ColorMaskEdit2: TColorMaskEdit;
        ColorMaskEdit3: TColorMaskEdit;
        ColorMaskEdit4: TColorMaskEdit;
        Panel22: TPanel;
        DBGrid6: TDBGrid;
        EdDescConsumo: TEdit;
        GroupBox4: TGroupBox;
        Label153: TLabel;
        Label69: TLabel;
        EdCstConsumo: TEdit;
        DBGrid5: TDBGrid;
        lbCstconsumo: TLabel;
        XML1: TMenuItem;
        ReinviarNotaFiscalEletrnica1: TMenuItem;
        SalvareenviarXmlporemail1: TMenuItem;
        CartadeCorreoEletrnica1: TMenuItem;
    VisualizarDanfecomComplementoFiscal1: TMenuItem;
    PmItens: TPopupMenu;
    AlterarFinanceiro1: TMenuItem;
    RelatriodeDestinatrio1: TMenuItem;
    frxRel: TfrxReport;
    AquisiodeSuprimentos: TMenuItem;
    frxEmpresa: TfrxDBDataset;
    frxItens: TfrxDBDataset;
    frxFornecedor: TfrxDBDataset;
    pmCancelamentos: TPopupMenu;
    CancelarFechamento1: TMenuItem;
    CancelarDevoluo1: TMenuItem;
    Panel5: TPanel;
    edrazaosocial: TFlatEdit;
    BitBtn1: TBitBtn;
        Procedure FormShow(Sender: TObject);
        Procedure BtnConsultarClick(Sender: TObject);
        Procedure BtnNovoClick(Sender: TObject);
        Procedure BtnApagarClick(Sender: TObject);
        Procedure BtnFechaPedClick(Sender: TObject);
        Procedure FormActivate(Sender: TObject);
        Procedure Etiquetas1Click(Sender: TObject);
        Procedure DBGrid2DrawDataCell(Sender: TObject; Const Rect: TRect;
            Field: TField; State: TGridDrawState);
        Procedure DBGridCadastroPadraoDrawDataCell(Sender: TObject;
            Const Rect: TRect; Field: TField; State: TGridDrawState);
        Procedure BtnFiltrarClick(Sender: TObject);
        Procedure EtiquetaCdFabricante1Click(Sender: TObject);
        Procedure BitBtn6Click(Sender: TObject);
        Procedure BitBtn9Click(Sender: TObject);
        Procedure BtnTrocaClick(Sender: TObject);

        Procedure frmFormPagBTNOPENClick(Sender: TObject);
        Procedure FrmDestinatarioEDCodigoKeyPress(Sender: TObject;
            Var Key: Char);
        Procedure ConsultaNDocFiscal1Click(Sender: TObject);
        Procedure AlteraNDocFiscal1Click(Sender: TObject);
        Procedure EdNumDocKeyDown(Sender: TObject; Var Key: Word;
            Shift: TShiftState);
        Procedure EDQuantidadeExit(Sender: TObject);
        Procedure PSelectLoteExit(Sender: TObject);
        Procedure EdQtdConvertKeyDown(Sender: TObject; Var Key: Word;
            Shift: TShiftState);
        Procedure EDQuantidadeEnter(Sender: TObject);
        Procedure EDValUnitEnter(Sender: TObject);
        Procedure Panel2Enter(Sender: TObject);
        Procedure BtnInsertProdClick(Sender: TObject);
        Procedure Criarnovopedido1Click(Sender: TObject);
        Procedure FrmDestinatarioBTNMINUSClick(Sender: TObject);
        Procedure EDQuantidadeKeyDown(Sender: TObject; Var Key: Word;
            Shift: TShiftState);
        Procedure EdNumPedClick(Sender: TObject);
        Procedure EdNumPedExit(Sender: TObject);
        Procedure EdNumDocClick(Sender: TObject);
        Procedure EdNumDocExit(Sender: TObject);
        Procedure EdNomeClick(Sender: TObject);
        Procedure EdNomeExit(Sender: TObject);
        Procedure DBGridConvertKeyPress(Sender: TObject; Var Key: Char);
        Procedure DBGridConvertCellClick(Column: TColumn);
        Procedure DBGridConvertExit(Sender: TObject);
        Procedure BtnFiltrarMouseDown(Sender: TObject; Button: TMouseButton;
            Shift: TShiftState; X, Y: Integer);
        Procedure ImprimirDANFE1Click(Sender: TObject);
        Procedure AbrirXML1Click(Sender: TObject);
        Procedure AbrirXMLResposta1Click(Sender: TObject);
        Procedure CopiarChaveNFe1Click(Sender: TObject);
        Procedure ConsultaNFeNacinal1Click(Sender: TObject);
        Procedure ConsultaNFePR1Click(Sender: TObject);
        Procedure DBGrid1DrawColumnCell(Sender: TObject; Const Rect: TRect;
            DataCol: Integer; Column: TColumn; State: TGridDrawState);
        Procedure DBGridCadastroPadraoDrawColumnCell(Sender: TObject;
            Const Rect: TRect; DataCol: Integer; Column: TColumn;
            State: TGridDrawState);
        Procedure DBGridCadastroPadraoDblClick(Sender: TObject);
        Procedure Exportar1Click(Sender: TObject);


    //procedure EDQuantidadeChange(Sender: TObject);
    // exporta os pedidos de compra selecionadas para outro banco, gerando novas ordens com os mesmos produtos, servicos, funcionario, equipe, etc
        Procedure Exporta_Pedido;
    // verifica se o forncedor esta cadastrado no banco, se nao tiver jah cadastra na hora
        Function VerificaForncecedor(Cod_Cliente: integer): integer;
    // Conecta banco de ddos para exportar Ordens
        Function ConectaBancoDados(XEndereco: String): boolean;
    // verifica se existe a cidade do cliente, se nao jah cadastra
        Function VerificaCidade: integer;
    // verifica se existe o estado, se nao tiver jah cadastra, caso cntrario apenas recolhe os dados importantes
        Function VerificaEstado: integer;
    // busca forma de pagamento, se necessario cadastra a nova forma
        Function Forma_Pagamento: integer;
    //Paulo 17/09/2010: Importa dados do Fornecedor da NFE e cadastra caso não esteja cadastrado
        Function ImportaFornecedor(XCNPJ, XRazao, XFAnt, XRua, XNro, XBairro, XCodIBGE, XMunic, XUF, XCep, XFone, XIE: String): WideString;
    //Paulo 17/09/2010: Retorna o código da cidade baseado na NFe
        Function retornaCodCidade(XCodCid, XCidade, XEstado: String): integer;
    //Paulo 20/09/2010: Função que tira o ponto de quantidade
        Function tiraPontoNfe(XValor: String): Real;
    //Paulo 24/09/2010: Função que encontra um pk válida para a tabela
        Function EncontraPK(XTable: String; XCampo: String): integer;
    //Paulo 20/09/2011: Limpa as labels de consumo
        Procedure LimpaLabelsConsumo;
    //Paulo 24/11/2011: Seleciona impostos substituidos dos itens
        Procedure encontraImpostoSubst(XAlxCst: String; cst: String; vBCST: String; pICMSST: String; vICMSST: String; vBCSTRet: String; vICMSRet: String);
    //Paulo 24/11/2011: Seleciona impostos dos itens
        Procedure encontraImposto(XAlxCst: String; cst: String; pIcms: String; vIcms: String; XBaseC: Real);
    //Retorna a uma chave primária valida para a tabela de exportação
        Function RetornaChaveTabelaexortacao(XTabelaRetorno: String): Integer;

        Procedure DBNumPedExit(Sender: TObject);
        Procedure BtnDadosAdicClick(Sender: TObject);
        Procedure EfetuarDevoluo1Click(Sender: TObject);
        Procedure FormKeyDown(Sender: TObject; Var Key: Word;
            Shift: TShiftState);
        Procedure BitBtn12Click(Sender: TObject);
        Procedure BitBtn13Click(Sender: TObject);
        Procedure SpeedButton1Click(Sender: TObject);
        Procedure BtnGravarKeyDown(Sender: TObject; Var Key: Word;
            Shift: TShiftState);
        Procedure BtnCancelarKeyDown(Sender: TObject; Var Key: Word;
            Shift: TShiftState);
        Procedure BtnDadosAdicKeyDown(Sender: TObject; Var Key: Word;
            Shift: TShiftState);
        Procedure DBColorEdit3KeyDown(Sender: TObject; Var Key: Word;
            Shift: TShiftState);
        Procedure EdNumeroPedidoKeyDown(Sender: TObject; Var Key: Word;
            Shift: TShiftState);
        Procedure EdValorPedKeyDown(Sender: TObject; Var Key: Word;
            Shift: TShiftState);
        Procedure EdCodCliKeyDown(Sender: TObject; Var Key: Word;
            Shift: TShiftState);
        Procedure EdCodVendKeyDown(Sender: TObject; Var Key: Word;
            Shift: TShiftState);
        Procedure BtnProcVendKeyDown(Sender: TObject; Var Key: Word;
            Shift: TShiftState);
        Procedure EDCODFORMPAGKeyDown(Sender: TObject; Var Key: Word;
            Shift: TShiftState);
        Procedure BtnProcFormPagKeyDown(Sender: TObject; Var Key: Word;
            Shift: TShiftState);
        Procedure DBDATAKeyDown(Sender: TObject; Var Key: Word;
            Shift: TShiftState);
        Procedure EDDescPedKeyDown(Sender: TObject; Var Key: Word;
            Shift: TShiftState);
        Procedure BtnInsertProdKeyDown(Sender: TObject; Var Key: Word;
            Shift: TShiftState);
        Procedure BtnProcProdKeyDown(Sender: TObject; Var Key: Word;
            Shift: TShiftState);
        Procedure EDCodBarraKeyDown(Sender: TObject; Var Key: Word;
            Shift: TShiftState);
        Procedure EDCodFabKeyDown(Sender: TObject; Var Key: Word;
            Shift: TShiftState);
        Procedure EDValUnitKeyDown(Sender: TObject; Var Key: Word;
            Shift: TShiftState);
        Procedure EDDescKeyDown(Sender: TObject; Var Key: Word;
            Shift: TShiftState);
        Procedure EDTotalKeyDown(Sender: TObject; Var Key: Word;
            Shift: TShiftState);
        Procedure EdImpCSTKeyDown(Sender: TObject; Var Key: Word;
            Shift: TShiftState);
        Procedure EdimpIcmsKeyDown(Sender: TObject; Var Key: Word;
            Shift: TShiftState);
        Procedure EdImpIpiKeyDown(Sender: TObject; Var Key: Word;
            Shift: TShiftState);
        Procedure EdBCIcmsKeyDown(Sender: TObject; Var Key: Word;
            Shift: TShiftState);
        Procedure EdImpVlrIcmsKeyDown(Sender: TObject; Var Key: Word;
            Shift: TShiftState);
        Procedure EdImpVlrIpiKeyDown(Sender: TObject; Var Key: Word;
            Shift: TShiftState);
        Procedure BtnAbrePAliqKeyDown(Sender: TObject; Var Key: Word;
            Shift: TShiftState);
        Procedure EdLocalKeyDown(Sender: TObject; Var Key: Word;
            Shift: TShiftState);
        Procedure BtnDeleteListExit(Sender: TObject);
        Procedure BtnImportaNfeClick(Sender: TObject);
        Procedure DBGrid1DblClick(Sender: TObject);
        Procedure DBGrid1MouseDown(Sender: TObject; Button: TMouseButton;
            Shift: TShiftState; X, Y: Integer);
        Procedure AgruparItensparaVenda1Click(Sender: TObject);
        Procedure VisualizarDanfe1Click(Sender: TObject);
        Procedure CancelarNfe1Click(Sender: TObject);
        Procedure RelatriodeDanfes1Click(Sender: TObject);
        Procedure BtLoteClick(Sender: TObject);
        Procedure EdQtdEntradaEnter(Sender: TObject);
        Procedure PCadastroExit(Sender: TObject);
        Procedure BtnCancelaLoteClick(Sender: TObject);
        Procedure BtnLoteOkClick(Sender: TObject);
        Procedure EdQuantDescarteExit(Sender: TObject);
        Procedure BtnAbreLoteClick(Sender: TObject);
        Procedure CBLoteSelecionadoExit(Sender: TObject);
        Procedure RecuperarDadosdaNotaFiscalEletrnica1Click(Sender: TObject);
        Procedure InutilizarNumeraodaNotaFiscalEletrnica1Click(
            Sender: TObject);
        Procedure VisualizarnoSefaz1Click(Sender: TObject);
        Procedure ConsultarStatusNFe1Click(Sender: TObject);
        Procedure VerificarServidorSefaz1Click(Sender: TObject);
        Procedure ListarNFe1Click(Sender: TObject);
        Procedure Button1Click(Sender: TObject);
        Procedure BtUsoConsumoClick(Sender: TObject);
        Procedure BtnProdutosClick(Sender: TObject);
        Procedure BtnConsumoClick(Sender: TObject);
        Procedure BtnInsereConsumoClick(Sender: TObject);
        Procedure EdQtdConsumoExit(Sender: TObject);
        Procedure EdTotalConsumoExit(Sender: TObject);
        Procedure EdCstConsumoExit(Sender: TObject);
        Procedure BtExcluiConsumoClick(Sender: TObject);
        Procedure SalvareenviarXmlporemail1Click(Sender: TObject);
        Procedure ReinviarNotaFiscalEletrnica1Click(Sender: TObject);
        Procedure CartadeCorreoEletrnica1Click(Sender: TObject);
    procedure VisualizarDanfecomComplementoFiscal1Click(Sender: TObject);
    procedure AlterarFinanceiro1Click(Sender: TObject);
    procedure RelatriodeDestinatrio1Click(Sender: TObject);
    procedure EdImpIpiExit(Sender: TObject);
    procedure EdImpVlrIpiExit(Sender: TObject);
    procedure AquisiodeSuprimentosClick(Sender: TObject);
    procedure CancelarFechamento1Click(Sender: TObject);
    procedure CancelarDevoluo1Click(Sender: TObject);
    procedure edrazaosocialClick(Sender: TObject);
    procedure edrazaosocialExit(Sender: TObject);
    procedure edrazaosocialKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdNomeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnConfPedCompraNfeClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);


    private
    { Private declarations }

    // filtra tabela unidade pela unidade de venda do produto
        Procedure AtualizaQntConvertida;

    // - 15/01/2009: imprimir danfe da nota enviada
        Procedure MostraDanfe(XCOD_PEDIDO: INTEGER);

     // - 27/02/2009: busca siglas das conversões unitarias na TMP
        Procedure convertunid;
    public
    { Public declarations }
    //Jônatas 25/09/2013 - Função que verifica se os CST's estão cadastrados no sistema(retirado de ImpNfe)
    Function ValiCstImportada: Boolean;
    
    End;

Var
    FPedCompra: TFPedCompra;
    xqtdconv: Real; // - 03/03/2009: controla quantidade convertida na vergalhão
    XCstConsumo, XNumfiscNFe, XcodFornecedor, XContador: integer;
    XImportNfe, XFecha, XFlagNfe, XCod_tmp: Integer; //armazena o codigo temporario para a tabela tmp
    XCNPJForn, XNomeForn, XObsItem: String;
    XDescNFe, XFreteNfe, XTotalNFe: Real; //Paulo 21/09/2010:armazena o total da NFe
    XSeguroNfe, XicmsBD: Real; //Jônatas 24/07/2013 - armazena o total gasto com seguro da NFe e a alíquota ICMS da empresa
    XBaseST, XIcmsST, XOutrosNFe, XTotalProd: Real; //Paulo 21/09/2010:armazena o total dos produtos da NFe
    XImpIpi, XVlrIpi, XBcIcms, XImpIcms, XvlrIcms: Real; //Paulo 23/09/2011: armazena impostos do consumo
Implementation

Uses UDMEstoque, UDMEntrada, UMenu, Alxor32, Alxorprn, UDMSaida, UDMMacs,
    AlxMessage, UDMPessoa, UCliente, UCadPadrao, UFiscal, UDMCaixa,
    UPadrao, UValidacaoNFe, UDMGEOGRAFIA, UDmServ, UDMExporta, UDMFinanc,
    UFiscalEntradas, UPedVenda, UConfigLoja, UMzrNfe, UConvertUnid, UCadCFOP,
    UImpNfe, UProduto, URelPeriodoFiscal, ULote, UListaNfe, UCadUsoConsumo,
    UPadraoFiscal, USenha, URelDestinatario, UDMFAST, UMDO, UDevolucao,
  UOrdemMec, UControleSaida;

{$R *.DFM}
//Retorna a uma chave primária valida para a tabela de exportação

Function TFPedCompra.RetornaChaveTabelaexortacao(XTabelaRetorno: String): Integer;
Var
    XFlag: Integer;
    XCdAuxiliar: integer;
Begin
    Try
        DMEXPORTA.IBTExporta.CommitRetaining;
        DMEXPORTA.TCodigo.Close;
        DMEXPORTA.TCodigo.Open;
        XFlag := 0;
       //Passa primeiro codigo de pesquisa
        If XTabelaRetorno = 'FORNECEDOR' Then
            XCdAuxiliar := DMEXPORTA.TCodigo.FieldByName('cod_fornec').AsInteger;
        If XTabelaRetorno = 'PEDIDO' Then
            XCdAuxiliar := DMEXPORTA.TCodigo.FieldByName('cod_pedcomp').AsInteger;
        If XTabelaRetorno = 'PESSOA' Then
            XCdAuxiliar := DMEXPORTA.TCodigo.FieldByName('cod_pessoa').AsInteger;
        If XTabelaRetorno = 'PESSOAF' Then
            XCdAuxiliar := DMEXPORTA.TCodigo.FieldByName('cod_pessoaf').AsInteger;
        If XTabelaRetorno = 'PESSOAJ' Then
            XCdAuxiliar := DMEXPORTA.TCodigo.FieldByName('cod_pessoaj').AsInteger;

        If XTabelaRetorno = 'SUBPRODUTO' Then
            XCdAuxiliar := DMEXPORTA.TCodigo.FieldByName('cod_subgrupoprod').AsInteger;
        If XTabelaRetorno = 'ESTOQUE' Then
            XCdAuxiliar := DMEXPORTA.TCodigo.FieldByName('cod_estoque').AsInteger;
        If XTabelaRetorno = 'PRODUTO' Then
            XCdAuxiliar := DMEXPORTA.TCodigo.FieldByName('cod_produto').AsInteger;
        If XTabelaRetorno = 'GRUPOPROD' Then
            XCdAuxiliar := DMEXPORTA.TCodigo.FieldByName('cod_grupoprod').AsInteger;
        If XTabelaRetorno = 'SUBGRUPOPROD' Then
            XCdAuxiliar := DMEXPORTA.TCodigo.FieldByName('cod_subgrupoprod').AsInteger;
        If XTabelaRetorno = 'CST' Then
            XCdAuxiliar := DMEXPORTA.TCodigo.FieldByName('cod_cst').AsInteger;
        If XTabelaRetorno = 'FORMAPAGAMENTO' Then
            XCdAuxiliar := DMEXPORTA.TCodigo.FieldByName('cod_formpag').AsInteger;

        While XFlag = 0 Do
        Begin
            DMEXPORTA.Alx.Close;
            DMEXPORTA.Alx.SQL.Clear;
            If XTabelaRetorno = 'FORNECEDOR' Then
                DMEXPORTA.Alx.SQL.Add(' Select fornecedor.cod_fornec from fornecedor where fornecedor.cod_fornec=:codigo ');
            If XTabelaRetorno = 'PEDIDO' Then
                DMEXPORTA.Alx.SQL.Add(' Select pedcompra.cod_pedcomp from pedcompra where pedcompra.cod_pedcomp=:codigo ');
            If XTabelaRetorno = 'PESSOA' Then
                DMEXPORTA.Alx.SQL.Add(' Select pessoa.cod_pessoa FROM pessoa where pessoa.cod_pessoa=:codigo ');
            If XTabelaRetorno = 'PESSOAF' Then
                DMEXPORTA.Alx.SQL.Add(' Select pessoaf.cod_pessoaf FROM pessoaf where pessoaf.cod_pessoaf=:codigo ');
            If XTabelaRetorno = 'PESSOAJ' Then
                DMEXPORTA.Alx.SQL.Add(' Select pessoaj.cod_pessoaj FROM pessoaj where pessoaj.cod_pessoaj=:codigo ');
            If XTabelaRetorno = 'SUBPRODUTO' Then
                DMEXPORTA.Alx.SQL.Add(' Select subproduto.cod_subproduto FROM subproduto where subproduto.cod_subproduto=:codigo ');
            If XTabelaRetorno = 'ESTOQUE' Then
                DMEXPORTA.Alx.SQL.Add(' Select estoque.cod_estoque FROM estoque where estoque.cod_estoque=:codigo ');
            If XTabelaRetorno = 'PRODUTO' Then
                DMEXPORTA.Alx.SQL.Add(' Select produto.cod_produto FROM produto where produto.cod_produto=:codigo ');
            If XTabelaRetorno = 'GRUPOPROD' Then
                DMEXPORTA.Alx.SQL.Add(' Select grupoprod.cod_grupoprod FROM grupoprod where grupoprod.cod_grupoprod=:codigo ');
            If XTabelaRetorno = 'SUBGRUPOPROD' Then
                DMEXPORTA.Alx.SQL.Add(' Select subgrupoprod.cod_subgrupoprod FROM subgrupoprod where subgrupoprod.cod_subgrupoprod=:codigo ');
            If XTabelaRetorno = 'CST' Then
                DMEXPORTA.Alx.SQL.Add(' Select cst.cod_cst FROM cst where cst.cod_cst=:codigo ');
            If XTabelaRetorno = 'FORMAPAGAMENTO' Then
                DMEXPORTA.Alx.SQL.Add(' Select formpag.cod_formpag FROM formpag where formpag.cod_formpag=:codigo ');

            DMEXPORTA.Alx.ParamByName('CODIGO').AsInteger := XCdAuxiliar;
            DMEXPORTA.Alx.Open;

            If DMEXPORTA.Alx.IsEmpty
                Then Begin
                XFLAG := 1;
            End
            Else Begin
                XCdAuxiliar := XCdAuxiliar + 1;
            End;
        End;
        Result := XCdAuxiliar;

        Try
            DMEXPORTA.Alx.Close;
            DMEXPORTA.Alx.SQL.Clear;
            If XTabelaRetorno = 'FORNECEDOR' Then
                DMEXPORTA.Alx.SQL.Add(' UPDATE CODIGO SET CODIGO.cod_fornec=:CODIGO');
            If XTabelaRetorno = 'PEDIDO' Then
                DMEXPORTA.Alx.SQL.Add(' UPDATE CODIGO SET CODIGO.cod_pedcomp=:CODIGO');
            If XTabelaRetorno = 'PESSOA' Then
                DMEXPORTA.Alx.SQL.Add(' UPDATE CODIGO SET CODIGO.cod_pessoa=:CODIGO');
            If XTabelaRetorno = 'PESSOAJ' Then
                DMEXPORTA.Alx.SQL.Add(' UPDATE CODIGO SET CODIGO.cod_pessoaj=:CODIGO');
            If XTabelaRetorno = 'SUBPRODUTO' Then
                DMEXPORTA.Alx.SQL.Add(' UPDATE CODIGO SET CODIGO.cod_subgrupoprod=:CODIGO');
            If XTabelaRetorno = 'ESTOQUE' Then
                DMEXPORTA.Alx.SQL.Add(' UPDATE CODIGO SET CODIGO.cod_estoque=:CODIGO');
            If XTabelaRetorno = 'PRODUTO' Then
                DMEXPORTA.Alx.SQL.Add(' UPDATE CODIGO SET CODIGO.cod_produto=:CODIGO');
            If XTabelaRetorno = 'GRUPOPROD' Then
                DMEXPORTA.Alx.SQL.Add(' UPDATE CODIGO SET CODIGO.cod_grupoprod=:CODIGO');
            If XTabelaRetorno = 'SUBGRUPOPROD' Then
                DMEXPORTA.Alx.SQL.Add(' UPDATE CODIGO SET CODIGO.cod_subgrupoprod=:CODIGO');
            If XTabelaRetorno = 'CST' Then
                DMEXPORTA.Alx.SQL.Add(' UPDATE CODIGO SET CODIGO.cod_cst=:CODIGO');
            If XTabelaRetorno = 'FORMAPAGAMENTO' Then
                DMEXPORTA.Alx.SQL.Add(' UPDATE CODIGO SET CODIGO.cod_formpag=:CODIGO');
            DMEXPORTA.Alx.ParamByName('CODIGO').AsInteger := XCdAuxiliar + 1;
            DMEXPORTA.Alx.ExecSQL;
            DMEXPORTA.IBTExporta.CommitRetaining;
        Except
        End;
    Except
        Result := -1;
    End;
End;

// verifica se existe o estado, se nao tiver jah cadastra, caso cntrario apenas recolhe os dados importantes

Function TFPedCompra.VerificaEstado: integer;
Begin
    DMGEOGRAFIA.TEstado.Close;
    DMGEOGRAFIA.TEstado.SQL.Clear;
    DMGEOGRAFIA.TEstado.SQL.Add('select * from estado where estado.cod_estado = :codigo');
    DMGEOGRAFIA.TEstado.ParamByName('codigo').AsInteger := DMGEOGRAFIA.TCidade.FieldByname('COD_ESTADO').AsInteger;
    DMGEOGRAFIA.TEstado.Open;

    DMEXPORTA.TEstado.Close;
    DMEXPORTA.TEstado.SQL.Clear;
    DMEXPORTA.TEstado.SQL.Add('select * from estado where (upper(estado.descricao) = upper(' + #39 + DMGEOGRAFIA.TEstado.FieldByname('descricao').AsString + #39 + '))');
    DMEXPORTA.TEstado.Open;

    If (DMEXPORTA.TEstado.IsEmpty) And (DMGEOGRAFIA.TEstado.FieldByName('descricao').AsString <> '')
        Then Begin
        DMEXPORTA.TCodigo.Close;
        DMEXPORTA.TCodigo.SQL.Clear;
        DMEXPORTA.TCodigo.SQL.Add('select * from codigo');
        DMEXPORTA.TCodigo.Open;

        DMEXPORTA.TEstado.Close;
        DMEXPORTA.TEstado.SQL.Clear;
        DMEXPORTA.TEstado.SQL.Add('insert into estado');
        DMEXPORTA.TEstado.SQL.Add('(COD_ESTADO, DESCRICAO, UF_ESTADO)');
        DMEXPORTA.TEstado.SQL.Add('values');
        DMEXPORTA.TEstado.SQL.Add('(:COD_ESTADO, :DESCRICAO, :UF_ESTADO)');
        DMEXPORTA.TEstado.ParamByName('cod_estado').AsInteger := DMEXPORTA.TCodigo.FieldByname('cod_estado').AsInteger;
        DMEXPORTA.TEstado.ParamByName('descricao').AsString := DMGEOGRAFIA.TEstado.FieldByname('descricao').AsString;
        DMEXPORTA.TEstado.ParamByName('uf_estado').AsString := DMGEOGRAFIA.TEstado.FieldByname('uf_estado').AsString;
        DMEXPORTA.TEstado.ExecSQL;

        DMEXPORTA.TCodigo.Edit;
        DMEXPORTA.TCodigo.FieldByName('cod_estado').AsInteger := DMEXPORTA.TEstado.FieldByName('cod_estado').AsInteger + 1;
        DMEXPORTA.TCodigo.Post;

        DMEXPORTA.IBTExporta.CommitRetaining;

        DMEXPORTA.TEstado.Close;
        DMEXPORTA.TEstado.SQL.Clear;
        DMEXPORTA.TEstado.SQL.Add('select * from estado where (upper(estado.descricao) = upper(' + #39 + DMGEOGRAFIA.TEstado.FieldByname('descricao').AsString + #39 + '))');
        DMEXPORTA.TEstado.Open;
    End;

    Result := DMEXPORTA.TEstado.FieldByname('cod_estado').AsInteger;

End;

// verifica se existe a cidade do cliente, se nao jah cadastra

Function TFPedCompra.VerificaCidade: integer;
Var
    cod_tmp: integer;
Begin

    If DMPESSOA.TPessoa.FieldByname('COD_CIDADE').AsInteger <> -1
        Then Begin

       // seleciona no banco local todos os dados da tabela cidade referente ao codigo da cidade do cliente
        DMGEOGRAFIA.TCidade.Close;
        DMGEOGRAFIA.TCidade.SQL.Clear;
        DMGEOGRAFIA.TCidade.SQL.Add('select * from cidade where cidade.cod_cidade = :codigo');
        DMGEOGRAFIA.TCidade.ParamByName('codigo').AsInteger := DMPESSOA.TPessoa.FieldByname('COD_CIDADE').AsInteger;
        DMGEOGRAFIA.TCidade.Open;

       // verifica no banco de fora se existe a cidade com o mesmo nome
        DMEXPORTA.TCidade.Close;
        DMEXPORTA.TCidade.SQL.Clear;
        DMEXPORTA.TCidade.SQL.Add('select * from cidade where (upper(cidade.nome) = upper(' + #39 + DMGEOGRAFIA.TCidade.FieldByName('nome').AsString + #39 + '))');
        DMEXPORTA.TCidade.Open;

        If DMEXPORTA.TCidade.IsEmpty
            Then Begin
           // DADOS DA TABELA CODIGO PARA BUSCAR O PROXIMO CODIGO DE cidade
            DMEXPORTA.TCodigo.Close;
            DMEXPORTA.TCodigo.SQL.Clear;
            DMEXPORTA.TCodigo.SQL.Add('select * from codigo');
            DMEXPORTA.TCodigo.Open;

            cod_tmp := DMEXPORTA.TCodigo.FieldByname('cod_cidade').AsInteger;
            DMEXPORTA.TCidade.Close;
            DMEXPORTA.TCidade.SQL.Clear;
            DMEXPORTA.TCidade.SQL.Add('insert into cidade');
            DMEXPORTA.TCidade.SQL.Add('(COD_CIDADE, NOME, DDD, COD_ESTADO, COD_IBGE)');
            DMEXPORTA.TCidade.SQL.Add('values');
            DMEXPORTA.TCidade.SQL.Add('(:COD_CIDADE, :NOME, :DDD, :COD_ESTADO, :COD_IBGE)');
            DMEXPORTA.TCidade.ParamByName('cod_cidade').AsInteger := cod_tmp; //InserCodPk(DMEXPORTA.TCodigo, 'CODIGO', 'cod_cidade');
           //DMEXPORTA.TCodigo.FieldByname('cod_cidade').AsInteger;
            DMEXPORTA.TCidade.ParamByName('NOME').AsString := DMGEOGRAFIA.TCidade.FieldByname('NOME').AsString;
            DMEXPORTA.TCidade.ParamByName('DDD').AsString := DMGEOGRAFIA.TCidade.FieldByname('DDD').AsString;
            DMEXPORTA.TCidade.ParamByName('COD_IBGE').AsInteger := DMGEOGRAFIA.TCidade.FieldByname('COD_IBGE').AsInteger;
           // verifica se existe o estado, se nao tiver jah cadastra, caso cntrario apenas recolhe os dados importantes
            DMEXPORTA.TCidade.ParamByName('COD_ESTADO').AsInteger := VerificaEstado;
            DMEXPORTA.TCidade.ExecSQL;

            DMEXPORTA.TCodigo.Edit;
            DMEXPORTA.TCodigo.FieldByName('cod_cidade').AsInteger := cod_tmp + 1;
            DMEXPORTA.TCodigo.Post;

            DMEXPORTA.IBTExporta.CommitRetaining;

            DMEXPORTA.TCidade.Close;
            DMEXPORTA.TCidade.SQL.Clear;
            DMEXPORTA.TCidade.SQL.Add('select * from cidade where (upper(cidade.nome) = upper(' + #39 + DMGEOGRAFIA.TCidade.FieldByName('nome').AsString + #39 + '))');
            DMEXPORTA.TCidade.Open;
        End;

        Result := DMEXPORTA.TCidade.FieldByname('cod_cidade').AsInteger;
    End
    Else Begin
        Result := -1;
    End;
End;

// verifica se o forncedor esta cadastrado no banco, se nao tiver jah cadastra na hora

Function TFPedCompra.VerificaForncecedor(Cod_Cliente: integer): integer;
Var
    XCOD_PESSOA, XCOD_CLIENTE, XCOD_PESSOAF: INTEGER;
Begin
    Try
       // FILTRA A TABELA FORNECEDOR PARA BUSCAR O COD_PESSOA
        If FiltraTabela(DMPESSOA.TFornecedor, 'FORNECEDOR', 'COD_FORNEC', IntToStr(Cod_Cliente), '') = True
            Then Begin
           // FILTRA A TABELA PESSOA P BUSCAR O NOME REFERNTE AO COD_PESSOA REPASSADO PELA TABELA CLIENTE
            FiltraTabela(DMPESSOA.TPessoa, 'PESSOA', 'COD_PESSOA', DMPESSOA.TFornecedor.FieldByname('cod_pessoa').AsString, '');

        End
        Else Begin
            MessageDlg('As Informações completas da pessoa relacionada, não foram encontradas.' + #13 + #10 + 'Entre no cadastro e atualize os dados', mtWarning, [mbOK], 0);
            Exit;
        End;

        If DMPESSOA.TPessoa.FieldByName('cpfcnpj').AsString = ''
            Then Begin
            MessageDlg('O Fornecedor esta sem CPF/CNPJ', mtWarning, [mbOK], 0)
        End
        Else Begin
           // verifica se existe cliente com mesmo CPF/CNPJ
            DMEXPORTA.TPessoa.Close;
            DMEXPORTA.TPessoa.SQL.Clear;
            DMEXPORTA.TPessoa.SQL.Add('select * from pessoa');
            DMEXPORTA.TPessoa.SQL.Add('where (pessoa.cpfcnpj = :cpf)');
            DMEXPORTA.TPessoa.ParamByName('cpf').AsString := DMPESSOA.TPessoa.FieldByName('cpfcnpj').AsString;
            DMEXPORTA.TPessoa.Open;
        End;

       // se encontrar na tabela pessoa devemos apenas alterar
        If Not (DMEXPORTA.TPessoa.IsEmpty)
            Then Begin
            XCOD_PESSOA := DMEXPORTA.TPessoa.FieldByName('COD_PESSOA').AsInteger;
          //Se encontrou pessoa Atualiza as informações
          // atualizar os dados da pessoa
            DMEXPORTA.TPessoa.Close;
            DMEXPORTA.TPessoa.SQL.Clear;
            DMEXPORTA.TPessoa.SQL.Add('update pessoa');
            DMEXPORTA.TPessoa.SQL.Add('set');
            DMEXPORTA.TPessoa.SQL.Add('NOME = :NOME,');
            DMEXPORTA.TPessoa.SQL.Add('ENDERECO = :ENDERECO,');
            DMEXPORTA.TPessoa.SQL.Add('BAIRRO = :BAIRRO,');
            DMEXPORTA.TPessoa.SQL.Add('COD_CIDADE = :COD_CIDADE,');
            DMEXPORTA.TPessoa.SQL.Add('CEP = :CEP,');
            DMEXPORTA.TPessoa.SQL.Add('CPFCNPJ = :CPFCNPJ,');
            DMEXPORTA.TPessoa.SQL.Add('DATA_INI = :DATA_INI,');
            DMEXPORTA.TPessoa.SQL.Add('DTNASC = :DTNASC,');
            DMEXPORTA.TPessoa.SQL.Add('COD_REGIAO = :COD_REGIAO,');
            DMEXPORTA.TPessoa.SQL.Add('COD_NATURAL = :COD_NATURAL,');
            DMEXPORTA.TPessoa.SQL.Add('TELREL = :TELREL,');
            DMEXPORTA.TPessoa.SQL.Add('DIAANIVER = :DIAANIVER,');
            DMEXPORTA.TPessoa.SQL.Add('PROXIMIDADE = :PROXIMIDADE,');
            DMEXPORTA.TPessoa.SQL.Add('VLRCREDITO = :VLRCREDITO');
            DMEXPORTA.TPessoa.SQL.Add('where');
            DMEXPORTA.TPessoa.SQL.Add('COD_PESSOA = :OLD_COD_PESSOA');
            DMEXPORTA.TPessoa.ParamByName('OLD_COD_PESSOA').AsInteger := XCOD_PESSOA;


           // filtrar cliente: Tenta encontrar fornecedor para atualizar
            DMEXPORTA.TFornecedor.Close;
            DMEXPORTA.TFornecedor.SQL.Clear;
            DMEXPORTA.TFornecedor.SQL.Add('select * from fornecedor');
            DMEXPORTA.TFornecedor.SQL.Add('where (fornecedor.cod_pessoa= :codigo)');
            DMEXPORTA.TFornecedor.ParamByName('codigo').AsInteger := XCOD_PESSOA;
            DMEXPORTA.TFornecedor.Open;
            If DMEXPORTA.TFornecedor.IsEmpty
                Then Begin
    //Se não encontrou fornecedor atrelado a pessoa, devemos inserir um fornecedor
                DMEXPORTA.TFornecedor.Close;
                DMEXPORTA.TFornecedor.SQL.Clear;
                DMEXPORTA.TFornecedor.SQL.Add(' insert into FORNECEDOR ');
                DMEXPORTA.TFornecedor.SQL.Add('  (fornecedor.cod_fornec, fornecedor.cod_interno, fornecedor.cod_pessoa, fornecedor.data_cad) ');
                DMEXPORTA.TFornecedor.SQL.Add(' values ');
                DMEXPORTA.TFornecedor.SQL.Add(' (:COD_FORNEC, :COD_INTERNO, :COD_PESSOA, :DATA_CAD) ');
                XCOD_CLIENTE := RetornaChaveTabelaexortacao('FORNECEDOR');
                DMEXPORTA.TFornecedor.ParamByName('COD_FORNEC').AsInteger := XCOD_CLIENTE;
                DMEXPORTA.TFornecedor.ParamByName('COD_PESSOA').AsInteger := XCOD_PESSOA;
                DMEXPORTA.TFornecedor.ParamByName('COD_INTERNO').AsString := DMPESSOA.TFornecedor.FieldByName('cod_interno').AsString;
                DMEXPORTA.TFornecedor.ParamByName('DATA_CAD').AsDate := Date();
                DMEXPORTA.TFornecedor.ExecSQL;
               //add proximo codigo cliente
               //DMEXPORTA.TCodigo.Edit;
               //DMEXPORTA.TCodigo.FieldByname('COD_FORNEC').AsInteger := DMEXPORTA.TCodigo.FieldByname('COD_FORNEC').AsInteger+1;
               //DMEXPORTA.TCodigo.Post;
            End
            Else Begin
                XCOD_CLIENTE := DMEXPORTA.TFornecedor.FieldByName('cod_fornec').AsInteger;
            End;
           //Se ja possuir um fornecedor, não eh necessário alterar nada
        End
        Else Begin
         //Se não encontrou, as informações deve ser inseridas
            // inserir nova pessoa
            DMEXPORTA.TPessoa.Close;
            DMEXPORTA.TPessoa.SQL.Clear;
            DMEXPORTA.TPessoa.SQL.Add('insert into pessoa');
            DMEXPORTA.TPessoa.SQL.Add('(COD_PESSOA, NOME, ENDERECO, BAIRRO, COD_CIDADE, CEP, CPFCNPJ, DATA_INI,');
            DMEXPORTA.TPessoa.SQL.Add('DTNASC, COD_REGIAO, COD_NATURAL, TELREL, DIAANIVER, PROXIMIDADE, VLRCREDITO)');
            DMEXPORTA.TPessoa.SQL.Add('values');
            DMEXPORTA.TPessoa.SQL.Add('(:COD_PESSOA, :NOME, :ENDERECO, :BAIRRO, :COD_CIDADE, :CEP, :CPFCNPJ,');
            DMEXPORTA.TPessoa.SQL.Add(':DATA_INI, :DTNASC, :COD_REGIAO, :COD_NATURAL, :TELREL, :DIAANIVER,');
            DMEXPORTA.TPessoa.SQL.Add(':PROXIMIDADE, :VLRCREDITO)');

            XCOD_PESSOA := RetornaChaveTabelaexortacao('PESSOA');
            DMEXPORTA.TPessoa.ParamByName('COD_PESSOA').AsInteger := XCOD_PESSOA;


            //Se não encontrou fornecedor atrelado a pessoa, devemos inserir um fornecedor
            DMEXPORTA.TFornecedor.Close;
            DMEXPORTA.TFornecedor.SQL.Clear;
            DMEXPORTA.TFornecedor.SQL.Add(' insert into FORNECEDOR ');
            DMEXPORTA.TFornecedor.SQL.Add('  (fornecedor.cod_fornec, fornecedor.cod_interno, fornecedor.cod_pessoa, fornecedor.data_cad) ');
            DMEXPORTA.TFornecedor.SQL.Add(' values ');
            DMEXPORTA.TFornecedor.SQL.Add(' (:COD_FORNEC, :cod_interno, :COD_PESSOA, :DATA_CAD ) ');
            XCOD_CLIENTE := RetornaChaveTabelaexortacao('FORNECEDOR');
            DMEXPORTA.TFornecedor.ParamByName('COD_FORNEC').AsInteger := XCOD_CLIENTE;
            DMEXPORTA.TFornecedor.ParamByName('COD_PESSOA').AsInteger := XCOD_PESSOA;
            DMEXPORTA.TFornecedor.ParamByName('cod_interno').AsString := DMPESSOA.TFornecedor.FieldByName('cod_interno').AsString;
            DMEXPORTA.TFornecedor.ParamByName('DATA_CAD').AsDate := Date();
            DMEXPORTA.TFornecedor.ExecSQL;
        End;

  //PASSAR OS PARAMETROS TANTO EM CASO DE INSERÇÃO COMO DE ALTERAÇÃO
        DMEXPORTA.TPessoa.ParamByName('NOME').AsString := DMPESSOA.TPessoa.FieldByname('nome').AsString;
        DMEXPORTA.TPessoa.ParamByName('ENDERECO').AsString := DMPESSOA.TPessoa.FieldByname('endereco').AsString;
        DMEXPORTA.TPessoa.ParamByName('BAIRRO').AsString := DMPESSOA.TPessoa.FieldByname('bairro').AsString;
       // verifica se existe a cidade do cliente, se nao jah cadastra
        DMEXPORTA.TPessoa.ParamByName('COD_CIDADE').AsInteger := VerificaCidade;
        DMEXPORTA.TPessoa.ParamByName('CEP').AsString := DMPESSOA.TPessoa.FieldByname('CEP').AsString;
        DMEXPORTA.TPessoa.ParamByName('CPFCNPJ').AsString := DMPESSOA.TPessoa.FieldByname('CPFCNPJ').AsString;
        If DMPESSOA.TPessoa.FieldByname('DATA_INI').AsString <> '' Then
            DMEXPORTA.TPessoa.ParamByName('DATA_INI').AsDateTime := DMPESSOA.TPessoa.FieldByname('DATA_INI').AsDateTime;
        DMEXPORTA.TPessoa.ParamByName('TELREL').AsString := DMPESSOA.TPessoa.FieldByname('TELREL').AsString;
        If DMPESSOA.TPessoa.FieldByname('DTNASC').AsString <> '' Then
            DMEXPORTA.TPessoa.ParamByName('DTNASC').AsDateTime := DMPESSOA.TPessoa.FieldByname('DTNASC').AsDateTime;
        DMEXPORTA.TPessoa.ParamByName('COD_REGIAO').AsInteger := DMPESSOA.TPessoa.FieldByname('COD_REGIAO').AsInteger;
        If DMPESSOA.TPessoa.FieldByname('COD_NATURAL').AsString <> '' Then
            DMEXPORTA.TPessoa.ParamByName('COD_NATURAL').AsInteger := DMPESSOA.TPessoa.FieldByname('COD_NATURAL').AsInteger;
        If DMPESSOA.TPessoa.FieldByname('DIAANIVER').AsString <> '' Then
            DMEXPORTA.TPessoa.ParamByName('DIAANIVER').AsInteger := DMPESSOA.TPessoa.FieldByname('DIAANIVER').AsInteger;
        DMEXPORTA.TPessoa.ParamByName('PROXIMIDADE').AsString := DMPESSOA.TPessoa.FieldByname('PROXIMIDADE').AsString;
        DMEXPORTA.TPessoa.ParamByName('VLRCREDITO').AsCurrency := DMPESSOA.TPessoa.FieldByname('VLRCREDITO').AsCurrency;
        DMEXPORTA.TPessoa.ExecSQL;

       // filtra tabela pelo codigo da pessoa     // banco externo
        FiltraTabela(DMEXPORTA.TPessoa, 'PESSOA', 'COD_PESSOA', IntToStr(XCOD_PESSOA), '');

       // selecionando dados da tabela pessoa fisica
        DMPESSOA.TPessoaF.Close;
        DMPESSOA.TPessoaF.SQL.Clear;
        DMPESSOA.TPessoaF.SQL.Add('select * from pessoaf where pessoaf.cod_pessoa = :codigo');
        DMPESSOA.TPessoaF.ParamByName('codigo').AsInteger := DMPESSOA.TPessoa.FieldByname('cod_pessoa').AsInteger;
        DMPESSOA.TPessoaF.Open;

       // seleciona no banco local os dados da pessoa juridica
        DMPESSOA.TPessoaJ.Close;
        DMPESSOA.TPessoaJ.SQL.Clear;
        DMPESSOA.TPessoaJ.SQL.Add('select * from pessoaj where pessoaj.cod_pessoa = :codigo');
        DMPESSOA.TPessoaJ.ParamByName('codigo').AsInteger := DMPESSOA.TPessoa.FieldByname('cod_pessoa').AsInteger;
        DMPESSOA.TPessoaJ.Open;

       // ou seja, se pessoaj está vazio e foi encntrado pessoaf, a pessoa atual estah definida no banco local como pessoaf
        If (DMPESSOA.TPessoaJ.IsEmpty) And (Not DMPESSOA.TPessoaF.IsEmpty)
            Then Begin
            DMEXPORTA.Alx.Close;
            DMEXPORTA.Alx.SQL.Clear;
            DMEXPORTA.Alx.SQL.Add('select * from pessoaF');
           //DMEXPORTA.Alx.SQL.Add('left join pessoa on pessoaF.cod_pessoa = pessoa.cod_pessoa');
            DMEXPORTA.Alx.SQL.Add('where (pessoaF.cod_pessoa = :codigo)');
            DMEXPORTA.Alx.ParamByName('codigo').AsInteger := XCOD_PESSOA;
            DMEXPORTA.Alx.Open;

            If DMEXPORTA.Alx.IsEmpty
                Then Begin

                //inserir pessoa fisica no banco externo
                DMEXPORTA.TPessoaF.Close;
                DMEXPORTA.TPessoaF.SQL.Clear;
                DMEXPORTA.TPessoaF.SQL.Add('insert into pessoaf');
                DMEXPORTA.TPessoaF.SQL.Add('(COD_PESSOAF, COD_PESSOA, ESTADO_CIVIL, SEXO, EMP_TRAB, END_TRAB, BAIRRO_TRAB,');
                DMEXPORTA.TPessoaF.SQL.Add('DATA_ADMIS, CARGO, RG, DATA_EXPED, ORGAO_EXPED, TITULO, NOME_CONJ, DATANASC_CONJ,');
                DMEXPORTA.TPessoaF.SQL.Add('RG_CONJ, CPF_CONJ, EMP_CONJ, NOME_PAI, NOME_MAE, ENDE_FILIACAO)');
                DMEXPORTA.TPessoaF.SQL.Add('values');
                DMEXPORTA.TPessoaF.SQL.Add('(:COD_PESSOAF, :COD_PESSOA, :ESTADO_CIVIL, :SEXO, :EMP_TRAB, :END_TRAB,');
                DMEXPORTA.TPessoaF.SQL.Add(':BAIRRO_TRAB, :DATA_ADMIS, :CARGO, :RG, :DATA_EXPED, :ORGAO_EXPED, :TITULO,');
                DMEXPORTA.TPessoaF.SQL.Add(':NOME_CONJ, :DATANASC_CONJ, :RG_CONJ, :CPF_CONJ, :EMP_CONJ, :NOME_PAI,');
                DMEXPORTA.TPessoaF.SQL.Add(':NOME_MAE, :ENDE_FILIACAO)');

                DMEXPORTA.TPessoaF.ParamByName('COD_PESSOA').AsInteger := XCOD_PESSOA;

                XCOD_PESSOAF := RetornaChaveTabelaexortacao('PESSOAF');
                DMEXPORTA.TPessoaF.ParamByName('COD_PESSOAF').AsInteger := XCOD_PESSOAF;

            End
            Else Begin
              // armazenar codigo da pessoa fisica
                XCOD_PESSOAF := DMEXPORTA.Alx.FieldByName('COD_PESSOAF').AsInteger;
              //update nos dados pessoa fisica
                DMEXPORTA.TPessoaF.Close;
                DMEXPORTA.TPessoaF.SQL.Clear;
                DMEXPORTA.TPessoaF.SQL.Add('update pessoaf set');
                DMEXPORTA.TPessoaF.SQL.Add('ESTADO_CIVIL = :ESTADO_CIVIL,');
                DMEXPORTA.TPessoaF.SQL.Add('SEXO = :SEXO, EMP_TRAB = :EMP_TRAB, END_TRAB = :END_TRAB, BAIRRO_TRAB = :BAIRRO_TRAB,');
                DMEXPORTA.TPessoaF.SQL.Add('DATA_ADMIS = :DATA_ADMIS, CARGO = :CARGO, RG = :RG, DATA_EXPED = :DATA_EXPED,');
                DMEXPORTA.TPessoaF.SQL.Add('ORGAO_EXPED = :ORGAO_EXPED, TITULO = :TITULO, NOME_CONJ = :NOME_CONJ,');
                DMEXPORTA.TPessoaF.SQL.Add('DATANASC_CONJ = :DATANASC_CONJ, RG_CONJ = :RG_CONJ, CPF_CONJ = :CPF_CONJ,');
                DMEXPORTA.TPessoaF.SQL.Add('EMP_CONJ = :EMP_CONJ, NOME_PAI = :NOME_PAI, NOME_MAE = :NOME_MAE, ENDE_FILIACAO = :ENDE_FILIACAO');
                DMEXPORTA.TPessoaF.SQL.Add('where COD_PESSOAF = :OLD_COD_PESSOAF');

                DMEXPORTA.TPessoaF.ParamByName('OLD_COD_PESSOAF').AsInteger := XCOD_PESSOAF;

            End;

           //atualizar dados pessoa fisica
            If DMPESSOA.TPessoaF.FieldByname('ESTADO_CIVIL').AsString <> '' Then
                DMEXPORTA.TPessoaF.ParamByName('ESTADO_CIVIL').AsString := DMPESSOA.TPessoaF.FieldByname('ESTADO_CIVIL').AsString;
            If DMPESSOA.TPessoaF.FieldByname('SEXO').AsString <> '' Then
                DMEXPORTA.TPessoaF.ParamByName('SEXO').AsString := DMPESSOA.TPessoaF.FieldByname('SEXO').AsString;
            If DMPESSOA.TPessoaF.FieldByname('EMP_TRAB').AsString <> '' Then
                DMEXPORTA.TPessoaF.ParamByName('EMP_TRAB').AsString := DMPESSOA.TPessoaF.FieldByname('EMP_TRAB').AsString;
            If DMPESSOA.TPessoaF.FieldByname('END_TRAB').AsString <> '' Then
                DMEXPORTA.TPessoaF.ParamByName('END_TRAB').AsString := DMPESSOA.TPessoaF.FieldByname('END_TRAB').AsString;
            If DMPESSOA.TPessoaF.FieldByname('BAIRRO_TRAB').AsString <> '' Then
                DMEXPORTA.TPessoaF.ParamByName('BAIRRO_TRAB').AsString := DMPESSOA.TPessoaF.FieldByname('BAIRRO_TRAB').AsString;
            If DMPESSOA.TPessoaF.FieldByname('DATA_ADMIS').AsString <> '' Then
                DMEXPORTA.TPessoaF.ParamByName('DATA_ADMIS').AsDateTime := DMPESSOA.TPessoaF.FieldByname('DATA_ADMIS').AsDateTime;
            If DMPESSOA.TPessoaF.FieldByname('CARGO').AsString <> '' Then
                DMEXPORTA.TPessoaF.ParamByName('CARGO').AsString := DMPESSOA.TPessoaF.FieldByname('CARGO').AsString;
            If DMPESSOA.TPessoaF.FieldByname('RG').AsString <> '' Then
                DMEXPORTA.TPessoaF.ParamByName('RG').AsString := DMPESSOA.TPessoaF.FieldByname('RG').AsString;
            If DMPESSOA.TPessoaF.FieldByname('DATA_EXPED').AsString <> '' Then
                DMEXPORTA.TPessoaF.ParamByName('DATA_EXPED').AsDateTime := DMPESSOA.TPessoaF.FieldByname('DATA_EXPED').AsDateTime;
            If DMPESSOA.TPessoaF.FieldByname('ORGAO_EXPED').AsString <> '' Then
                DMEXPORTA.TPessoaF.ParamByName('ORGAO_EXPED').AsString := DMPESSOA.TPessoaF.FieldByname('ORGAO_EXPED').AsString;
            If DMPESSOA.TPessoaF.FieldByname('TITULO').AsString <> '' Then
                DMEXPORTA.TPessoaF.ParamByName('TITULO').AsString := DMPESSOA.TPessoaF.FieldByname('TITULO').AsString;
            If DMPESSOA.TPessoaF.FieldByname('NOME_CONJ').AsString <> '' Then
                DMEXPORTA.TPessoaF.ParamByName('NOME_CONJ').AsString := DMPESSOA.TPessoaF.FieldByname('NOME_CONJ').AsString;
            If DMPESSOA.TPessoaF.FieldByname('DATANASC_CONJ').AsString <> '' Then
                DMEXPORTA.TPessoaF.ParamByName('DATANASC_CONJ').AsDateTime := DMPESSOA.TPessoaF.FieldByname('DATANASC_CONJ').AsDateTime;
            If DMPESSOA.TPessoaF.FieldByname('RG_CONJ').AsString <> '' Then
                DMEXPORTA.TPessoaF.ParamByName('RG_CONJ').AsString := DMPESSOA.TPessoaF.FieldByname('RG_CONJ').AsString;
            If DMPESSOA.TPessoaF.FieldByname('CPF_CONJ').AsString <> '' Then
                DMEXPORTA.TPessoaF.ParamByName('CPF_CONJ').AsString := DMPESSOA.TPessoaF.FieldByname('CPF_CONJ').AsString;
            If DMPESSOA.TPessoaF.FieldByname('EMP_CONJ').AsString <> '' Then
                DMEXPORTA.TPessoaF.ParamByName('EMP_CONJ').AsString := DMPESSOA.TPessoaF.FieldByname('EMP_CONJ').AsString;
            If DMPESSOA.TPessoaF.FieldByname('NOME_PAI').AsString <> '' Then
                DMEXPORTA.TPessoaF.ParamByName('NOME_PAI').AsString := DMPESSOA.TPessoaF.FieldByname('NOME_PAI').AsString;
            If DMPESSOA.TPessoaF.FieldByname('NOME_MAE').AsString <> '' Then
                DMEXPORTA.TPessoaF.ParamByName('NOME_MAE').AsString := DMPESSOA.TPessoaF.FieldByname('NOME_MAE').AsString;
            If DMPESSOA.TPessoaF.FieldByname('ENDE_FILIACAO').AsString <> '' Then
                DMEXPORTA.TPessoaF.ParamByName('ENDE_FILIACAO').AsString := DMPESSOA.TPessoaF.FieldByname('ENDE_FILIACAO').AsString;
           //DMEXPORTA.TPessoaF.ParamByName('DIAANIVERCONJ').AsString := DMPESSOA.TPessoaF.FieldByname('DIAANIVERCONJ').AsString;
            DMEXPORTA.TPessoaF.ExecSQL;

        End
       // caso contrario eh efetuado o cadastro como pessoa juridica no banco externo
        Else Begin
           //FiltraTabela(DMEXPORTA.TPessoa,'PESSOA','CPFCNPJ',DMPESSOA.TPessoa.FieldByName('CPFCNPJ').AsString,'');
            DMEXPORTA.Alx.Close;
            DMEXPORTA.Alx.SQL.Clear;
            DMEXPORTA.Alx.SQL.Add('select * from pessoaj');
            DMEXPORTA.Alx.SQL.Add('where (pessoaj.cod_pessoa = :codigo)');
            DMEXPORTA.Alx.ParamByName('codigo').AsInteger := XCOD_PESSOA;
            DMEXPORTA.Alx.Open;
            If DMEXPORTA.Alx.IsEmpty
                Then Begin
               // INSERIR PESSOA JURIDICA
                DMEXPORTA.TPessoaJ.Close;
                DMEXPORTA.TPessoaJ.SQL.Clear;
                DMEXPORTA.TPessoaJ.SQL.Add('insert into pessoaJ');
                DMEXPORTA.TPessoaJ.SQL.Add('(COD_PESSOAJ, COD_PESSOA, INSC_EST, RAZAO_SOCIAL, INSC_MUN, WEB_PAGE)');
                DMEXPORTA.TPessoaJ.SQL.Add('values');
                DMEXPORTA.TPessoaJ.SQL.Add('(:COD_PESSOAJ, :COD_PESSOA, :INSC_EST, :RAZAO_SOCIAL, :INSC_MUN, :WEB_PAGE)');

                DMEXPORTA.TPessoaJ.ParamByName('COD_PESSOA').AsInteger := XCOD_PESSOA;

                XCOD_PESSOAF := RetornaChaveTabelaexortacao('PESSOAJ');
                DMEXPORTA.TPessoaJ.ParamByName('COD_PESSOAJ').AsInteger := XCOD_PESSOAF;
            End
            Else Begin
               //ARMAZENAR CODIGO SE ENCONTROU
                XCOD_PESSOAF := DMEXPORTA.Alx.FieldByName('COD_PESSOAJ').AsInteger;
                DMEXPORTA.TPessoaJ.Close;
                DMEXPORTA.TPessoaJ.SQL.Clear;
                DMEXPORTA.TPessoaJ.SQL.Add('update pessoaJ set');
                DMEXPORTA.TPessoaJ.SQL.Add('INSC_EST = :INSC_EST,');
                DMEXPORTA.TPessoaJ.SQL.Add('RAZAO_SOCIAL = :RAZAO_SOCIAL,INSC_MUN = :INSC_MUN, WEB_PAGE = :WEB_PAGE');
                DMEXPORTA.TPessoaJ.SQL.Add('where COD_PESSOAJ = :OLD_COD_PESSOAJ');

                DMEXPORTA.TPessoaJ.ParamByName('OLD_COD_PESSOAJ').AsInteger := XCOD_PESSOAF;
            End;

           //ATUALIZAR DADOS
            DMEXPORTA.TPessoaJ.ParamByName('INSC_EST').AsString := DMPESSOA.TPessoaJ.fieldByname('INSC_EST').AsString;
            DMEXPORTA.TPessoaJ.ParamByName('RAZAO_SOCIAL').AsString := DMPESSOA.TPessoaJ.fieldByname('RAZAO_SOCIAL').AsString;
            If DMPESSOA.TPessoaJ.fieldByname('INSC_MUN').AsString <> '' Then
                DMEXPORTA.TPessoaJ.ParamByName('INSC_MUN').AsString := DMPESSOA.TPessoaJ.fieldByname('INSC_MUN').AsString;
            If DMPESSOA.TPessoaJ.fieldByname('WEB_PAGE').AsString <> '' Then
                DMEXPORTA.TPessoaJ.ParamByName('WEB_PAGE').AsString := DMPESSOA.TPessoaJ.fieldByname('WEB_PAGE').AsString;
            DMEXPORTA.TPessoaJ.ExecSQL;

        End;

       // SQL LOCAL PARA BUCAR OS DADOS DO CLIENTE BANCO LOCAL
       //FiltraTabela(DMPESSOA.TCliente,'CLIENTE','COD_CLIENTE',IntToStr(Cod_Cliente),'');//DMServ.TOrd.FieldByName('COD_CLIENTE').AsString,'');

        DMEXPORTA.IBTExporta.CommitRetaining;

        Result := XCOD_CLIENTE;
    Except
        MessageDlg('O Pedido Será Exportada sem fornecedor', mtWarning, [mbOK], 0);
        Result := -1;
    End;
End;


// Conecta banco de ddos para exportar Ordens

Function TFPedCompra.ConectaBancoDados(XEndereco: String): boolean;
Begin
    Try
       // DESCONECTA TABELAS DO BANCO QUE IRA RECEBER AS EXPORTAÇÕES DAS ORDENS DE SERVICO
        DMEXPORTA.TEstoque.Active := false;
        DMEXPORTA.TProduto.Active := false;
        DMEXPORTA.TSubProd.Active := false;
        DMEXPORTA.TGrupo.Active := false;
        DMEXPORTA.TSubgru.Active := false;
        DMEXPORTA.TUnidade.Active := false;
        DMEXPORTA.TCst.Active := false;
        DMEXPORTA.TPedV.Active := false;
        DMEXPORTA.TPedC.Active := False;
        DMEXPORTA.TDocFisc.Active := False;
        DMEXPORTA.TFormPag.Active := false;
        DMEXPORTA.TPessoa.Active := false;
        DMEXPORTA.TFornecedor.Active := false;
        DMEXPORTA.TPessoaF.Active := false;
        DMEXPORTA.TPessoaJ.Active := false;
        DMEXPORTA.TCodigo.Active := false;

        DMEXPORTA.Alx.Active := false;
        DMEXPORTA.Alx2.Active := false;
        DMEXPORTA.Alx3.Active := false;
        DMEXPORTA.Alx4.Active := false;
        DMEXPORTA.Alx5.Active := false;

       // DESCONECTA BANCO E TRANSACTION
        DMExporta.DBExporta.Connected := false;
        DMExporta.IBTExporta.Active := false;

       //  INFORMA O LOCAL, CONECTA BANCO E ATIVA TRANSACTION
        DMExporta.DBExporta.DatabaseName := XEndereco;
        DMExporta.DBExporta.Connected := true;
        DMExporta.IBTExporta.Active := true;

       // ATIVA TABELAS
        DMEXPORTA.TEstoque.Active := true;
        DMEXPORTA.TProduto.Active := true;
        DMEXPORTA.TSubProd.Active := true;
        DMEXPORTA.TGrupo.Active := true;
        DMEXPORTA.TSubgru.Active := true;
        DMEXPORTA.TUnidade.Active := true;
        DMEXPORTA.TCst.Active := true;
        DMEXPORTA.TPedV.Active := true;
        DMEXPORTA.TPedC.Active := True;
        DMEXPORTA.TPedC.Active := True;

        DMEXPORTA.TFormPag.Active := true;

        DMEXPORTA.TFornecedor.Close;
        DMEXPORTA.TFornecedor.SQL.Clear;
        DMEXPORTA.TFornecedor.SQL.Add(' SELECT * FROM FORNECEDOR ');
        DMEXPORTA.TFornecedor.Open;
        DMEXPORTA.TFornecedor.Active := true;

        DMEXPORTA.TPessoa.Close;
        DMEXPORTA.TPessoa.SQL.Clear;
        DMEXPORTA.TPessoa.SQL.Add(' SELECT * FROM PESSOA ');
        DMEXPORTA.TPessoa.Open;
        DMEXPORTA.TPessoa.Active := true;

        DMEXPORTA.TPessoaf.Close;
        DMEXPORTA.TPessoaf.SQL.Clear;
        DMEXPORTA.TPessoaf.SQL.Add(' SELECT * FROM PESSOAf ');
        DMEXPORTA.TPessoaf.Open;
        DMEXPORTA.TPessoaf.Active := true;

        DMEXPORTA.TPessoaj.Close;
        DMEXPORTA.TPessoaj.SQL.Clear;
        DMEXPORTA.TPessoaj.SQL.Add(' SELECT * FROM PESSOAj ');
        DMEXPORTA.TPessoaj.Open;
        DMEXPORTA.TPessoaj.Active := true;


        DMEXPORTA.TCodigo.Active := true;

        DMEXPORTA.Alx.Active := true;
        DMEXPORTA.Alx2.Active := true;
        DMEXPORTA.Alx3.Active := true;
        DMEXPORTA.Alx4.Active := true;
        DMEXPORTA.Alx5.Active := true;

        Result := true;
    Except
        Result := false;
    End;
End;
// busca forma de pagamento, se necessario cadastra a nova forma

Function TFPedCompra.Forma_Pagamento: integer;
Var
    XCOD_AUX: INTEGER;
Begin
    Try
        Result := -1;
       // seleciona no banco o local os dados da tabela forma de pagamento, princialmente a descricao
        FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'COD_FORMPAG', DMENTRADA.TPedC.FieldByName('cod_formpag').AsString, '');

       // verifica se no banco de fora existe a forma de pagemtn o com a mesma descricao
        DMEXPORTA.TFormPag.Close;
        DMEXPORTA.TFormPag.SQL.Clear;
        DMEXPORTA.TFormPag.SQL.Add('select * from formpag where (upper(formpag.descricao) = upper(' + #39 + DMFINANC.TFormPag.FieldByName('descricao').AsString + #39 + '))');
        DMEXPORTA.TFormPag.Open;

        If DMEXPORTA.TFormPag.IsEmpty
            Then Begin
            DMEXPORTA.TFormPag.Close;
            DMEXPORTA.TFormPag.SQL.Clear;
            DMEXPORTA.TFormPag.SQL.Add('insert into formpag');
            DMEXPORTA.TFormPag.SQL.Add('(COD_FORMPAG, COD_LOJA, DESCRICAO, DESCFISC, PRIMPARCELA, INTERVALO,');
            DMEXPORTA.TFormPag.SQL.Add('QUANTPARCELA, JUROAPLIC, MEDIADIAS, TIPO)');
            DMEXPORTA.TFormPag.SQL.Add('values');
            DMEXPORTA.TFormPag.SQL.Add('(:COD_FORMPAG, :COD_LOJA, :DESCRICAO, :DESCFISC, :PRIMPARCELA, :INTERVALO,');
            DMEXPORTA.TFormPag.SQL.Add(':QUANTPARCELA, :JUROAPLIC, :MEDIADIAS, :TIPO)');
            DMEXPORTA.TFormPag.ParamByName('COD_FORMPAG').AsInteger := RetornaChaveTabelaexortacao('FORMAPAGAMENTO');

            XCOD_AUX := DMEXPORTA.TCodigo.FieldByName('cod_formpag').AsInteger;

           // atualizando banco de fora
            DMEXPORTA.TCodigo.Edit;
            DMEXPORTA.TCodigo.FieldByName('cod_formpag').AsInteger := DMEXPORTA.TCodigo.FieldByName('cod_formpag').AsInteger + 1;
            DMEXPORTA.TCodigo.Post;
        End
        Else Begin
           // editando os dados de forma de pagamento
            XCOD_AUX := DMEXPORTA.TFormPag.FieldByName('COD_FORMPAG').AsInteger;

            DMEXPORTA.TFormPag.Close;
            DMEXPORTA.TFormPag.SQL.Clear;
            DMEXPORTA.TFormPag.SQL.Add('update formpag set');
            DMEXPORTA.TFormPag.SQL.Add('COD_LOJA = :COD_LOJA, DESCRICAO = :DESCRICAO,');
            DMEXPORTA.TFormPag.SQL.Add('DESCFISC = :DESCFISC, PRIMPARCELA = :PRIMPARCELA, INTERVALO = :INTERVALO,');
            DMEXPORTA.TFormPag.SQL.Add('QUANTPARCELA = :QUANTPARCELA, JUROAPLIC = :JUROAPLIC, MEDIADIAS = :MEDIADIAS, TIPO = :TIPO');
            DMEXPORTA.TFormPag.SQL.Add('where COD_FORMPAG = :OLD_COD_FORMPAG');

            DMEXPORTA.TFormPag.ParamByName('OLD_COD_FORMPAG').AsInteger := XCOD_AUX;
        End;

        DMEXPORTA.TFormPag.ParamByName('COD_LOJA').AsInteger := DMFINANC.TFormPag.FieldByName('COD_LOJA').AsInteger;
        DMEXPORTA.TFormPag.ParamByName('DESCFISC').AsString := DMFINANC.TFormPag.FieldByName('DESCFISC').AsString;
        DMEXPORTA.TFormPag.ParamByName('DESCRICAO').AsString := DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString;
        DMEXPORTA.TFormPag.ParamByName('INTERVALO').AsInteger := DMFINANC.TFormPag.FieldByName('INTERVALO').AsInteger;
        DMEXPORTA.TFormPag.ParamByName('JUROAPLIC').AsCurrency := DMFINANC.TFormPag.FieldByName('JUROAPLIC').AsCurrency;
        DMEXPORTA.TFormPag.ParamByName('MEDIADIAS').AsInteger := DMFINANC.TFormPag.FieldByName('MEDIADIAS').AsInteger;
        DMEXPORTA.TFormPag.ParamByName('PRIMPARCELA').AsInteger := DMFINANC.TFormPag.FieldByName('PRIMPARCELA').AsInteger;
        DMEXPORTA.TFormPag.ParamByName('QUANTPARCELA').AsInteger := DMFINANC.TFormPag.FieldByName('QUANTPARCELA').AsInteger;
        DMEXPORTA.TFormPag.ParamByName('TIPO').AsString := DMFINANC.TFormPag.FieldByName('TIPO').AsString;
        DMEXPORTA.TFormPag.ExecSQL;
        DMEXPORTA.IBTExporta.CommitRetaining;

        Result := XCOD_AUX;
    Except
        DMEXPORTA.IBTExporta.RollbackRetaining;
        MessageDlg('Falha ao atualizar forma de pagamento.', mtWarning, [mbOK], 0);
    End;
End;

// exporta os pedidos de compra selecionadas para outro banco, gerando novas ordens com os mesmos produtos, servicos, funcionario, equipe, etc

Procedure TFPedCompra.Exporta_Pedido;
Var
    XCOD_ORDEM, XCOD_SUBPRODUTO, XCOD_ESTOQUE, XCOD_PRODUTO, XCOD_GRUPO, XCOD_SUBGRUPO, XCOD_CST, XCOD_AUX, XCOD_DOCFISCAL, XFLAG: INTEGER;
Begin

    Try
   // Conecta banco de ddos para exportar Ordens
        PConsulta.Refresh;
        PExp.Visible := true;
        PExp.BringToFront;
        PBExport.Min := 0;
        PBExport.Max := 100;
        PBExport.Position := 50;
        LBCONEXAO.Caption := 'ESTABELECENDO CONEXÃO COM BANCO ... ';
        PExp.Refresh;
   //01 - CONEXÃO COM O BANCO DE EXPORTAÇÃO
        If ConectaBancoDados(DMMACS.TLoja.FieldByName('EXPORT_OS').AsString) = true
        Then Begin
            PConsulta.Refresh;
            PExp.Visible := true;
            PExp.BringToFront;
            PExp.Refresh;
            PBExport.Position := 100;

       //Caso tenha pendencias no datammodule, elas são cconirmadas ou recusadas
            Try
                DMEXPORTA.IBTExporta.CommitRetaining;
            Except
                DMEXPORTA.IBTExporta.RollbackRetaining;
            End;

            LBCONEXAO.Caption := 'PREPARANDO PEDIDOS PARA SEREM EXPORTADOS ... ';
            PExp.Refresh;

       // se refere ás posições da barra de progressão
            XContador := 0;

       // seleciona no banco local todas as ordens de serviço que fram selecionadas e que ainda nao foram exportadas - banco local
            DMENTRADA.TPedC.Close;
            DMENTRADA.TPedC.SQL.Clear;
            DMENTRADA.TPedC.SQL.Add('select * from pedcompra where (pedcompra.export = ' + #39 + 'X' + #39 + ') ');
            DMENTRADA.TPedC.SQL.Add('and (pedcompra.situacao = ' + #39 + 'ABERTO' + #39 + ')'); //and ((ordem.exportado = ' + #39 + '' + #39 +') or (ordem.exportado is null)) and (ordem.exp = ' + #39 + '#' + #39 + ')');
            DMENTRADA.TPedC.Open;

       // seleciona o numero de produtos na ordem de servico para servir de base para Barra de Progressão
            DMSAIDA.TAlx.Close;
            DMSAIDA.TAlx.SQL.Clear;
            DMSAIDA.TAlx.SQL.Add('select count(itenspedc.cod_itenspedc) as TOTAL_PROD from itenspedc ');
            DMSAIDA.TAlx.SQL.Add('left join pedcompra on itenspedc.cod_pedcompra = pedcompra.cod_pedcomp ');
            DMSAIDA.TAlx.SQL.Add('where ((pedcompra.export = ' + #39 + '' + #39 + ') OR (pedcompra.export IS NULL)) and (pedcompra.export = ' + #39 + 'X' + #39 + ')');
            DMSAIDA.TAlx.Open;
       // dados do componente ProgreeBar
            XContador := 0;
            PBExport.Min := 0;
            PBExport.Max := 0;
       //PBExport.Max := DMSAIDA.TAlx.FieldByname('TOTAL_PROD').AsInteger + DMServ.TAlx1.FieldByname('TOTAL_SERV').AsInteger;

       //PConsulta.Refresh;
       //PExp.Visible := true;
       //PExp.BringToFront;
            DMENTRADA.TPedC.First;
       //PBExport.Max := DMENTRADA.TPedC.RecordCount;
            While Not DMENTRADA.TPedC.Eof Do
            Begin
                PBExport.Max := PBExport.Max + 1;
                DMENTRADA.TPedC.Next;
            End;

            PBExport.Position := XContador;

       // primeiro registro
            DMENTRADA.TPedC.First;

            While Not DMENTRADA.TPedC.Eof Do
            Begin
                XContador := XContador + 1;

                LBCONEXAO.Caption := 'Enviando Ordem (' + IntToStr(XContador) + '/' + IntToStr(PBExport.Max) + ') ... ';
                PBExport.Position := XContador;
                PExp.Refresh;

                XCOD_ORDEM := 0;
                Try
                    DMEXPORTA.IBTExporta.CommitRetaining;
               //02 - Buscamos a chave do pedido de compra
                    XCOD_ORDEM := RetornaChaveTabelaexortacao('PEDIDO');
                    XFLAG := 0;
                    While XFLAG = 0 Do
                    Begin
                        DMEXPORTA.Alx.Close;
                        DMEXPORTA.Alx.SQL.Clear;
                        DMEXPORTA.Alx.SQL.Add(' SELECT * FROM pedcompra where pedcompra.cod_pedcomp=:CODIGO ');
                        DMEXPORTA.Alx.ParamByName('CODIGO').AsInteger := XCOD_ORDEM;
                        DMEXPORTA.Alx.Open;
                        If DMEXPORTA.Alx.IsEmpty Then
                            XFLAG := 1
                        Else
                            XCOD_ORDEM := XCOD_ORDEM + 1;
                    End;
                    DMEXPORTA.Alx.Close;
                    DMEXPORTA.Alx.SQL.Clear;
                    DMEXPORTA.Alx.SQL.Add(' UPDATE CODIGO SET CODIGO.COD_PEDCOMP=:CODIGO');
                    DMEXPORTA.Alx.ParamByName('CODIGO').AsInteger := XCOD_ORDEM + 1;
                    DMEXPORTA.Alx.ExecSQL;
                    DMEXPORTA.IBTExporta.CommitRetaining;
                    DMEXPORTA.TPedC.Insert;
                    DMEXPORTA.TPedC.FieldByName('COD_PEDCOMP').AsInteger := XCOD_ORDEM;
               //03 - Inserimos fornecedor buscando codigo da tabela
                    DMEXPORTA.TPedC.FieldByName('COD_FORNEC').AsInteger := VerificaForncecedor(DMENTRADA.TPedC.FieldByName('COD_FORNEC').AsInteger);
                    DMEXPORTA.TPedC.FieldByName('VALOR').AsCurrency := DMENTRADA.TPedC.FieldByName('VALOR').AsCurrency;
                    DMEXPORTA.TPedC.FieldByName('COD_FORMPAG').AsInteger := Forma_Pagamento;
                    DMEXPORTA.TPedC.FieldByName('DTPEDCOMP').AsString := DMENTRADA.TPedC.FieldByName('DTPEDCOMP').AsString;
                    DMEXPORTA.TPedC.FieldByName('DESCONTO').AsCurrency := DMENTRADA.TPedC.FieldByName('DESCONTO').AsCurrency;
                    DMEXPORTA.TPedC.FieldByName('SITUACAO').AsString := 'ABERTO';
                    DMEXPORTA.TPedC.FieldByName('NUMPED').AsString := DMENTRADA.TPedC.FieldByName('NUMPED').AsString;
                    DMEXPORTA.TPedC.FieldByName('numfiscal').AsString := DMENTRADA.TPedC.FieldByName('numfiscal').AsString;
                    DMEXPORTA.TPedC.FieldByName('DESCMOE').AsCurrency := DMENTRADA.TPedC.FieldByName('DESCMOE').AsCurrency;
                    DMEXPORTA.TPedC.FieldByName('OBS').AsString := DMENTRADA.TPedC.FieldByName('OBS').AsString;
                    DMEXPORTA.TPedC.FieldByName('prazoentr').AsString := DMENTRADA.TPedC.FieldByName('prazoentr').AsString;
                    DMEXPORTA.TPedC.FieldByName('destinatario').AsString := DMENTRADA.TPedC.FieldByName('destinatario').AsString;
                    DMEXPORTA.TPedC.FieldByName('COBRANCA').AsString := DMENTRADA.TPedC.FieldByName('COBRANCA').AsString;
                    DmExporta.TpedC.Post;

               //INSERE DOCUMENTO FISCAL
               //FERIFICA DE O PEDIDO PARA SER EXPORTADO POSSUI DOCUMENTO FISCAL
                    DMENTRADA.TAlx.Close;
                    DMENTRADA.TAlx.SQL.Clear;
                    DMENTRADA.TAlx.SQL.Add(' SELECT * FROM docfis WHERE docfis.cod_pedido=:CODIGO ');
                    DMENTRADA.TAlx.ParamByName('CODIGO').AsInteger := DMENTRADA.TPedC.FieldByName('COD_PEDCOMP').AsInteger;
                    DMENTRADA.TAlx.Open;
                    If Not DMENTRADA.TAlx.IsEmpty
                        Then Begin
                        DMEXPORTA.IBTExporta.CommitRetaining;
                        DMEXPORTA.Alx.Close;
                        DMEXPORTA.Alx.SQL.Clear;
                        DMEXPORTA.Alx.SQL.Add(' SELECT * FROM CODIGO');
                        DMEXPORTA.Alx.Open;
                        XCOD_DOCFISCAL := DMEXPORTA.Alx.FieldByName('cod_docfisc').AsInteger;
                        DMEXPORTA.Alx.Close;
                        DMEXPORTA.Alx.SQL.Clear;
                        DMEXPORTA.Alx.SQL.Add(' UPDATE CODIGO SET CODIGO.cod_docfisc=:CODIGO');
                        DMEXPORTA.Alx.ParamByName('CODIGO').AsInteger := XCOD_ORDEM + 1;
                        DMEXPORTA.Alx.ExecSQL;
                        DMEXPORTA.IBTExporta.CommitRetaining;
                        DMEXPORTA.TDocFisc.Close;
                        DMEXPORTA.TDocFisc.SQL.Clear;
                        DMEXPORTA.TDocFisc.SQL.Add('select * from docfis');
                        DMEXPORTA.TDocFisc.Open;

                        DMEXPORTA.TDocFisc.Insert;
                        DMEXPORTA.TDocFisc.FieldByName('COD_DOCFISC').AsInteger := XCOD_DOCFISCAL;
                        DMEXPORTA.TDocFisc.FieldByName('COD_PEDIDO').AsInteger := XCOD_ORDEM;
                        DMEXPORTA.TDocFisc.FieldByName('NUMDOCFIS').AsString := DMENTRADA.TPedC.FieldByName('numfiscal').AsString;
                        DMEXPORTA.TDocFisc.FieldByName('TIPODOCFIS').AsString := DMENTRADA.TAlx.FieldByName('TIPODOCFIS').AsString;
                        DMEXPORTA.TDocFisc.FieldByName('NUMDOCANT').AsString := DMENTRADA.TAlx.FieldByName('NUMDOCANT').AsString;
                        DMEXPORTA.TDocFisc.FieldByName('SERIE').AsString := '1';
                        DMEXPORTA.TDocFisc.FieldByName('DTEMISSAO').AsString := DMENTRADA.TAlx.FieldByName('DTEMISSAO').AsString;
                        DMEXPORTA.TDocFisc.FieldByName('DTENTSAID').AsString := DMENTRADA.TAlx.FieldByName('DTENTSAID').AsString;
                        DMEXPORTA.TDocFisc.FieldByName('HORASAID').AsString := DMENTRADA.TAlx.FieldByName('HORASAID').AsString;
                        DMEXPORTA.TDocFisc.FieldByName('COD_CFOP').AsString := DMENTRADA.TAlx.FieldByName('COD_CFOP').AsString;
                        DMEXPORTA.TDocFisc.FieldByName('COD_TRANSP').AsString := DMENTRADA.TAlx.FieldByName('COD_TRANSP').AsString;
                        DMEXPORTA.TDocFisc.FieldByName('OBS').AsString := DMENTRADA.TAlx.FieldByName('OBS').AsString;
                        DMEXPORTA.TDocFisc.FieldByName('FRETECONTA').AsString := DMENTRADA.TAlx.FieldByName('FRETECONTA').AsString;
                        DMEXPORTA.TDocFisc.FieldByName('PLACA').AsString := DMENTRADA.TAlx.FieldByName('PLACA').AsString;
                        DMEXPORTA.TDocFisc.FieldByName('UFPLACA').AsString := DMENTRADA.TAlx.FieldByName('UFPLACA').AsString;
                        DMEXPORTA.TDocFisc.FieldByName('CPFPLACA').AsString := DMENTRADA.TAlx.FieldByName('CPFPLACA').AsString;
                        DMEXPORTA.TDocFisc.FieldByName('QUANTFRETE').AsString := DMENTRADA.TAlx.FieldByName('QUANTFRETE').AsString;
                        DMEXPORTA.TDocFisc.FieldByName('ESPECIEFRETE').AsString := DMENTRADA.TAlx.FieldByName('ESPECIEFRETE').AsString;
                        DMEXPORTA.TDocFisc.FieldByName('MARCAFRETE').AsString := DMENTRADA.TAlx.FieldByName('MARCAFRETE').AsString;
                        DMEXPORTA.TDocFisc.FieldByName('PESOBRUTO').AsString := DMENTRADA.TAlx.FieldByName('PESOBRUTO').AsString;
                        DMEXPORTA.TDocFisc.FieldByName('PESOLIQ').AsString := DMENTRADA.TAlx.FieldByName('PESOLIQ').AsString;
                        DMEXPORTA.TDocFisc.FieldByName('COD_COTA').AsString := DMENTRADA.TAlx.FieldByName('COD_COTA').AsString;
                        DMEXPORTA.TDocFisc.FieldByName('NF').AsString := DMENTRADA.TAlx.FieldByName('NF').AsString;
                        DMEXPORTA.TDocFisc.FieldByName('BASEICMS').AsString := DMENTRADA.TAlx.FieldByName('BASEICMS').AsString;
                        DMEXPORTA.TDocFisc.FieldByName('VLRICMS').AsString := DMENTRADA.TAlx.FieldByName('VLRICMS').AsString;
                        DMEXPORTA.TDocFisc.FieldByName('BASCALSUBS').AsString := DMENTRADA.TAlx.FieldByName('BASCALSUBS').AsString;
                        DMEXPORTA.TDocFisc.FieldByName('VLRICMSUBS').AsString := DMENTRADA.TAlx.FieldByName('VLRICMSUBS').AsString;
                        DMEXPORTA.TDocFisc.FieldByName('VLRTOTPROD').AsString := DMENTRADA.TAlx.FieldByName('VLRTOTPROD').AsString;
                        DMEXPORTA.TDocFisc.FieldByName('VLRFRETE').AsString := DMENTRADA.TAlx.FieldByName('VLRFRETE').AsString;
                        DMEXPORTA.TDocFisc.FieldByName('VLRICMSFRETE').AsString := DMENTRADA.TAlx.FieldByName('VLRICMSFRETE').AsString;
                        DMEXPORTA.TDocFisc.FieldByName('VLRSEG').AsString := DMENTRADA.TAlx.FieldByName('VLRSEG').AsString;
                        DMEXPORTA.TDocFisc.FieldByName('VLRTOTIPI').AsString := DMENTRADA.TAlx.FieldByName('VLRTOTIPI').AsString;
                        DMEXPORTA.TDocFisc.FieldByName('VLRTOTICMS').AsString := DMENTRADA.TAlx.FieldByName('VLRTOTICMS').AsString;
                        DMEXPORTA.TDocFisc.FieldByName('VLRTOTDOCNF').AsString := DMENTRADA.TAlx.FieldByName('VLRTOTDOCNF').AsString;
                        DMEXPORTA.TDocFisc.FieldByName('VLROUTROS').AsString := DMENTRADA.TAlx.FieldByName('VLROUTROS').AsString;
                        DMEXPORTA.TDocFisc.FieldByName('FRETECOMP').AsString := DMENTRADA.TAlx.FieldByName('FRETECOMP').AsString;
                        DMEXPORTA.TDocFisc.FieldByName('VLREMB').AsString := DMENTRADA.TAlx.FieldByName('VLREMB').AsString;
                        DMEXPORTA.TDocFisc.FieldByName('TIPOGERADOR').AsString := DMENTRADA.TAlx.FieldByName('TIPOGERADOR').AsString;
                        DMEXPORTA.TDocFisc.FieldByName('NUMCONHEC').AsString := DMENTRADA.TAlx.FieldByName('NUMCONHEC').AsString;
                        DMEXPORTA.TDocFisc.FieldByName('vlroutrasdesp').AsString := DMENTRADA.TAlx.FieldByName('vlroutrasdesp').AsString;
                        DMEXPORTA.TDocFisc.FieldByName('VLRISENTOICMS').AsString := DMENTRADA.TAlx.FieldByName('VLRISENTOICMS').AsString;
                        DMEXPORTA.TDocFisc.FieldByName('MODELONF').AsString := DMENTRADA.TAlx.FieldByName('MODELONF').AsString;
                        DMEXPORTA.TDocFisc.FieldByName('EMPEMIT').AsString := DMENTRADA.TAlx.FieldByName('EMPEMIT').AsString;
                        DMEXPORTA.TDocFisc.FieldByName('NFESERIE').AsString := DMENTRADA.TAlx.FieldByName('NFESERIE').AsString;
                        DMEXPORTA.TDocFisc.FieldByName('NFECHAVE').AsString := DMENTRADA.TAlx.FieldByName('NFECHAVE').AsString;
                        DMEXPORTA.TDocFisc.FieldByName('NFELOTE').AsString := DMENTRADA.TAlx.FieldByName('NFELOTE').AsString;
                        DMEXPORTA.TDocFisc.FieldByName('NFERECIBO').AsString := DMENTRADA.TAlx.FieldByName('NFERECIBO').AsString;
                        DMEXPORTA.TDocFisc.FieldByName('NFEERRO').AsString := DMENTRADA.TAlx.FieldByName('NFEERRO').AsString;
                        DMEXPORTA.TDocFisc.FieldByName('NFEPROTOCOLO').AsString := DMENTRADA.TAlx.FieldByName('NFEPROTOCOLO').AsString;
                        DMEXPORTA.TDocFisc.FieldByName('NFESTATUS').AsString := DMENTRADA.TAlx.FieldByName('NFESTATUS').AsString;
                        DMEXPORTA.TDocFisc.Post;
                    End;
                Except
                    MessageDlg('FALHA AO INSERIR PEDIDO', mtWarning, [mbOK], 0);
                End;
           // ******************************************************************************************************************
           // 04 - seleciona os subprodutos relacionados eo pedido de compra atual - banco local
                DMENTRADA.TItemPC.Close;
                DMENTRADA.TItemPC.SQL.Clear;
                DMENTRADA.TItemPC.SQL.Add('select * from itenspedc where itenspedc.cod_pedcompra = :codigo');
                DMENTRADA.TItemPC.ParamByName('codigo').AsInteger := DMENTRADA.TPedC.FieldByname('cod_pedcomp').AsInteger;
                DMENTRADA.TItemPC.Open;

           // 05 - Insere ou edita os produtos no banco de exportação
                DMENTRADA.TItemPC.First;

           // INSERINDO TODOS OS PRODUTOS NO BANCO DE FORA
                While Not DMENTRADA.TItemPC.Eof Do
                Begin
                    XCOD_PRODUTO := 0;
                    XCOD_SUBPRODUTO := 0;
                    XCOD_AUX := 0;
                    XCOD_ESTOQUE := 0;
                    XCOD_GRUPO := 0;
                    XCOD_SUBGRUPO := 0;
                    XCOD_CST := 0;

               // seleciona os dados da tabela estoque que tenha o mesmo cod_estoque - banco local
                    DMESTOQUE.TEstoque.Close;
                    DMESTOQUE.TEstoque.SQL.Clear;
                    DMESTOQUE.TEstoque.SQL.Add('select * from estoque where estoque.cod_estoque = :codigo');
                    DMESTOQUE.TEstoque.ParamByName('codigo').AsInteger := DMENTRADA.TItemPC.FieldByname('cod_estoque').AsInteger;
                    DMESTOQUE.TEstoque.Open;

               // seleciona dados da tabela subproduto que tenha o mesmo codigo de subproduto que a tabela estoque - banco local
                    DMESTOQUE.TSubProd.Close;
                    DMESTOQUE.TSubProd.SQL.Clear;
                    DMESTOQUE.TSubProd.SQL.Add('select * from subproduto where subproduto.cod_subproduto = :codigo');
                    DMESTOQUE.TSubProd.ParamByName('codigo').AsInteger := DMESTOQUE.TEstoque.FieldByname('cod_subprod').AsInteger;
                    DMESTOQUE.TSubProd.Open;

               // verifica se no banco de fora existe o mesmo subproduto
                    DMEXPORTA.TSubProd.Close;
                    DMEXPORTA.TSubProd.SQL.Clear;
                    DMEXPORTA.TSubProd.SQL.Add('select * from subproduto');
                    DMEXPORTA.TSubProd.SQL.Add('WHERE subproduto.CONTRINT = :codigo');
                    DMEXPORTA.TSubProd.ParamByName('CODIGO').AsString := DMESTOQUE.TSubProd.FieldByName('CONTRINT').AsString;
                    DMEXPORTA.TSubProd.Open;

               // seleciona todos os dados da tabela estoque que tenha o mesmo codigo de subproduto
                    DMEXPORTA.TEstoque.Close;
                    DMEXPORTA.TEstoque.SQL.Clear;
                    DMEXPORTA.TEstoque.SQL.Add('select * from estoque where estoque.cod_subprod = :codigo ');
                    DMEXPORTA.TEstoque.ParamByName('codigo').AsString := DMEXPORTA.TSubProd.FieldByName('cod_subproduto').AsString;
                    DMEXPORTA.TEstoque.Open;

                    Try
                   // se o banco que for receber as exportações nao possuir o subproduto atual, o mesmo eh cadastrado
                        If DMEXPORTA.TSubProd.IsEmpty
                            Then Begin
                            DMEXPORTA.TSubProd.Close;
                            DMEXPORTA.TSubProd.SQL.Clear;
                            DMEXPORTA.TSubProd.SQL.Add('insert into SUBPRODUTO');
                            DMEXPORTA.TSubProd.SQL.Add('(COD_SUBPRODUTO, CODCOMPOSTO, DESCRICAO, CODBARRA, CODPRODFABR, FABRICANTE,');
                            DMEXPORTA.TSubProd.SQL.Add('MARCA, QUANTGARANTIA, TIPOGARANTIA, LOCALESTANTE, ATIVO, IPIPROD, PESOLIQ,');
                            DMEXPORTA.TSubProd.SQL.Add('PESOBRUTO, COD_PRODUTO, COD_INTERNO, MOTIVO, QTDATC, EMBPROD, LOTE,');
                            DMEXPORTA.TSubProd.SQL.Add('PENEIRA, GERMI, PUREZA, ATESTVAL, ATESTGAR, SAFRA, COD_UNIDCOMPRA, COD_UNIDVENDA,');
                            DMEXPORTA.TSubProd.SQL.Add('COD_CST, DTCAD, CODEAN1, CONTRINT, COR, CLASSIFICACAO, DESCCUPOM, NCM,');
                            DMEXPORTA.TSubProd.SQL.Add('OBSFISCAL, COMPOSICAO, ALTURA, LARGURA, ESPECIFICACAO, MARK, BALANCA,');
                            DMEXPORTA.TSubProd.SQL.Add('ANVISA, MINSAUDE)');
                            DMEXPORTA.TSubProd.SQL.Add('values');
                            DMEXPORTA.TSubProd.SQL.Add('(:COD_SUBPRODUTO, :CODCOMPOSTO, :DESCRICAO, :CODBARRA, :CODPRODFABR,');
                            DMEXPORTA.TSubProd.SQL.Add(':FABRICANTE, :MARCA, :QUANTGARANTIA, :TIPOGARANTIA, :LOCALESTANTE, :ATIVO,');
                            DMEXPORTA.TSubProd.SQL.Add(':IPIPROD, :PESOLIQ, :PESOBRUTO, :COD_PRODUTO, :COD_INTERNO, :MOTIVO,');
                            DMEXPORTA.TSubProd.SQL.Add(':QTDATC, :EMBPROD, :LOTE, :PENEIRA, :GERMI, :PUREZA, :ATESTVAL, :ATESTGAR,');
                            DMEXPORTA.TSubProd.SQL.Add(':SAFRA, :COD_UNIDCOMPRA, :COD_UNIDVENDA, :COD_CST, :DTCAD, :CODEAN1,');
                            DMEXPORTA.TSubProd.SQL.Add(':CONTRINT, :COR, :CLASSIFICACAO, :DESCCUPOM, :NCM, :OBSFISCAL, :COMPOSICAO,');
                            DMEXPORTA.TSubProd.SQL.Add(':ALTURA, :LARGURA, :ESPECIFICACAO, :MARK, :BALANCA, :ANVISA, :MINSAUDE)');

                            DMEXPORTA.TSubProd.ParamByName('cod_subproduto').AsInteger := RetornaChaveTabelaexortacao('SUBPRODUTO');
                            XCOD_SUBPRODUTO := DMEXPORTA.TSubProd.ParamByName('cod_subproduto').AsInteger;
                            DMEXPORTA.TEstoque.Close;
                            DMEXPORTA.TEstoque.SQL.Clear;
                            DMEXPORTA.TEstoque.SQL.Add('insert into ESTOQUE');
                            DMEXPORTA.TEstoque.SQL.Add('(COD_ESTOQUE, COD_LOJA, COD_SUBPROD, ULTCOMPRA, ULTVENDA, ESTMAX, ESTMIN,');
                            DMEXPORTA.TEstoque.SQL.Add('ICMS, FRETE, ESTFISICO, ESTRESERV, ESTPED, ESTSALDO, CVVPROAT, CVPPROAT,');
                            DMEXPORTA.TEstoque.SQL.Add('CVVPROVAR, CVPPROVAR, VENDATAP, VENDATAV, VENDVARP, VENDVARV, VALUNIT,');
                            DMEXPORTA.TEstoque.SQL.Add('VALREP, VALCUSTO, AVVPROAT, AVPPROAT, AVVPROVAR, AVPPROVAR, LUCRATIVIDADE,');
                            DMEXPORTA.TEstoque.SQL.Add('COEFDIV, VALOREST, OUTROS, QUANT2, DTCAD, ESTINI, VALCUSDESP, ESTANTCONT,');
                            DMEXPORTA.TEstoque.SQL.Add('CONTAGEM, ESTSIMULADO, VLRUNITCOMP, INDICE, BONIFICACAO, VLRBONIFIC,');
                            DMEXPORTA.TEstoque.SQL.Add('DESCONTO, CLNC, MOD, IMPEXP, IMPREND, CONTSOC, COFINS, PIS, MARGEMSEG,');
                            DMEXPORTA.TEstoque.SQL.Add('PERCMARGSEG, REDUCBASE, VLRCOMPSD, ACRECIMO, ESTCALC, DATAATU, HORAATU,');
                            DMEXPORTA.TEstoque.SQL.Add('PRECOOFERTA, DATAOFERTA, VENCIMENTOOFERTA)');
                            DMEXPORTA.TEstoque.SQL.Add('values');
                            DMEXPORTA.TEstoque.SQL.Add('(:COD_ESTOQUE, :COD_LOJA, :COD_SUBPROD, :ULTCOMPRA, :ULTVENDA, :ESTMAX,');
                            DMEXPORTA.TEstoque.SQL.Add(':ESTMIN, :ICMS, :FRETE, :ESTFISICO, :ESTRESERV, :ESTPED, :ESTSALDO,');
                            DMEXPORTA.TEstoque.SQL.Add(':CVVPROAT, :CVPPROAT, :CVVPROVAR, :CVPPROVAR, :VENDATAP, :VENDATAV,');
                            DMEXPORTA.TEstoque.SQL.Add(':VENDVARP, :VENDVARV, :VALUNIT, :VALREP, :VALCUSTO, :AVVPROAT, :AVPPROAT,');
                            DMEXPORTA.TEstoque.SQL.Add(':AVVPROVAR, :AVPPROVAR, :LUCRATIVIDADE, :COEFDIV, :VALOREST, :OUTROS,');
                            DMEXPORTA.TEstoque.SQL.Add(':QUANT2, :DTCAD, :ESTINI, :VALCUSDESP, :ESTANTCONT, :CONTAGEM, :ESTSIMULADO,');
                            DMEXPORTA.TEstoque.SQL.Add(':VLRUNITCOMP, :INDICE, :BONIFICACAO, :VLRBONIFIC, :DESCONTO, :CLNC,');
                            DMEXPORTA.TEstoque.SQL.Add(':MOD, :IMPEXP, :IMPREND, :CONTSOC, :COFINS, :PIS, :MARGEMSEG, :PERCMARGSEG,');
                            DMEXPORTA.TEstoque.SQL.Add(':REDUCBASE, :VLRCOMPSD, :ACRECIMO, :ESTCALC, :DATAATU, :HORAATU, :PRECOOFERTA,');
                            DMEXPORTA.TEstoque.SQL.Add(':DATAOFERTA, :VENCIMENTOOFERTA)');
                            DMEXPORTA.TEstoque.ParamByName('cod_estoque').AsInteger := RetornaChaveTabelaexortacao('ESTOQUE');
                            XCOD_ESTOQUE := DMEXPORTA.TEstoque.ParamByName('cod_estoque').AsInteger;
                        End
                        Else Begin
                            XCOD_SUBPRODUTO := DMEXPORTA.TSubProd.FieldByname('cod_subproduto').AsInteger;
                            DMEXPORTA.TSubProd.Close;
                            DMEXPORTA.TSubProd.SQL.Clear;
                            DMEXPORTA.TSubProd.SQL.Add('update SUBPRODUTO set');
                            DMEXPORTA.TSubProd.SQL.Add('CODCOMPOSTO = :CODCOMPOSTO, DESCRICAO = :DESCRICAO, CODBARRA = :CODBARRA,');
                            DMEXPORTA.TSubProd.SQL.Add('CODPRODFABR = :CODPRODFABR, FABRICANTE = :FABRICANTE, MARCA = :MARCA, QUANTGARANTIA = :QUANTGARANTIA, TIPOGARANTIA = :TIPOGARANTIA, LOCALESTANTE = :LOCALESTANTE, ATIVO = :ATIVO, IPIPROD = :IPIPROD,');
                            DMEXPORTA.TSubProd.SQL.Add('PESOLIQ = :PESOLIQ, PESOBRUTO = :PESOBRUTO, COD_PRODUTO = :COD_PRODUTO, COD_INTERNO = :COD_INTERNO, MOTIVO = :MOTIVO,');
                            DMEXPORTA.TSubProd.SQL.Add('QTDATC = :QTDATC, EMBPROD = :EMBPROD, LOTE = :LOTE, PENEIRA = :PENEIRA, GERMI = :GERMI, PUREZA = :PUREZA, ATESTVAL = :ATESTVAL,');
                            DMEXPORTA.TSubProd.SQL.Add('ATESTGAR = :ATESTGAR, SAFRA = :SAFRA, COD_UNIDCOMPRA = :COD_UNIDCOMPRA, COD_UNIDVENDA = :COD_UNIDVENDA, COD_CST = :COD_CST, DTCAD = :DTCAD, CODEAN1 = :CODEAN1, CONTRINT = :CONTRINT, COR = :COR,');
                            DMEXPORTA.TSubProd.SQL.Add('CLASSIFICACAO = :CLASSIFICACAO, DESCCUPOM = :DESCCUPOM, NCM = :NCM, OBSFISCAL = :OBSFISCAL, COMPOSICAO = :COMPOSICAO, ALTURA = :ALTURA,');
                            DMEXPORTA.TSubProd.SQL.Add('LARGURA = :LARGURA, ESPECIFICACAO = :ESPECIFICACAO, MARK = :MARK, BALANCA = :BALANCA, ANVISA = :ANVISA, MINSAUDE = :MINSAUDE');
                            DMEXPORTA.TSubProd.SQL.Add('where COD_SUBPRODUTO = :OLD_COD_SUBPRODUTO');
                            DMEXPORTA.TSubProd.ParamByName('OLD_COD_SUBPRODUTO').AsInteger := XCOD_SUBPRODUTO;
                            XCOD_ESTOQUE := DMEXPORTA.TEstoque.FieldByname('cod_estoque').AsInteger;
                            DMEXPORTA.TEstoque.Close;
                            DMEXPORTA.TEstoque.SQL.Clear;
                            DMEXPORTA.TEstoque.SQL.Add('update ESTOQUE set');
                            DMEXPORTA.TEstoque.SQL.Add('COD_LOJA = :COD_LOJA, COD_SUBPROD = :COD_SUBPROD,');
                            DMEXPORTA.TEstoque.SQL.Add('ULTCOMPRA = :ULTCOMPRA, ULTVENDA = :ULTVENDA, ESTMAX = :ESTMAX,');
                            DMEXPORTA.TEstoque.SQL.Add('ESTMIN = :ESTMIN, ICMS = :ICMS, FRETE = :FRETE, ESTFISICO = :ESTFISICO,');
                            DMEXPORTA.TEstoque.SQL.Add('ESTRESERV = :ESTRESERV, ESTPED = :ESTPED,');
                            DMEXPORTA.TEstoque.SQL.Add('ESTSALDO = :ESTSALDO, CVVPROAT = :CVVPROAT, CVPPROAT = :CVPPROAT,');
                            DMEXPORTA.TEstoque.SQL.Add('CVVPROVAR = :CVVPROVAR, CVPPROVAR = :CVPPROVAR,');
                            DMEXPORTA.TEstoque.SQL.Add('VENDATAP = :VENDATAP, VENDATAV = :VENDATAV,');
                            DMEXPORTA.TEstoque.SQL.Add('VENDVARP = :VENDVARP, VENDVARV = :VENDVARV,');
                            DMEXPORTA.TEstoque.SQL.Add('VALUNIT = :VALUNIT, VALREP = :VALREP, VALCUSTO = :VALCUSTO, AVVPROAT = :AVVPROAT,');
                            DMEXPORTA.TEstoque.SQL.Add('AVPPROAT = :AVPPROAT, AVVPROVAR = :AVVPROVAR, AVPPROVAR = :AVPPROVAR,');
                            DMEXPORTA.TEstoque.SQL.Add('LUCRATIVIDADE = :LUCRATIVIDADE, COEFDIV = :COEFDIV, VALOREST = :VALOREST,');
                            DMEXPORTA.TEstoque.SQL.Add('OUTROS = :OUTROS, QUANT2 = :QUANT2, DTCAD = :DTCAD, ESTINI = :ESTINI,');
                            DMEXPORTA.TEstoque.SQL.Add('VALCUSDESP = :VALCUSDESP, ESTANTCONT = :ESTANTCONT, CONTAGEM = :CONTAGEM,');
                            DMEXPORTA.TEstoque.SQL.Add('ESTSIMULADO = :ESTSIMULADO, VLRUNITCOMP = :VLRUNITCOMP, INDICE = :INDICE,');
                            DMEXPORTA.TEstoque.SQL.Add('BONIFICACAO = :BONIFICACAO, VLRBONIFIC = :VLRBONIFIC, DESCONTO = :DESCONTO,');
                            DMEXPORTA.TEstoque.SQL.Add('CLNC = :CLNC, MOD = :MOD, IMPEXP = :IMPEXP,');
                            DMEXPORTA.TEstoque.SQL.Add('IMPREND = :IMPREND, CONTSOC = :CONTSOC, COFINS = :COFINS, PIS = :PIS,');
                            DMEXPORTA.TEstoque.SQL.Add('MARGEMSEG = :MARGEMSEG, PERCMARGSEG = :PERCMARGSEG, REDUCBASE = :REDUCBASE,');
                            DMEXPORTA.TEstoque.SQL.Add('VLRCOMPSD = :VLRCOMPSD, ACRECIMO = :ACRECIMO, ESTCALC = :ESTCALC,');
                            DMEXPORTA.TEstoque.SQL.Add('DATAATU = :DATAATU, HORAATU = :HORAATU, PRECOOFERTA = :PRECOOFERTA,');
                            DMEXPORTA.TEstoque.SQL.Add('DATAOFERTA = :DATAOFERTA,VENCIMENTOOFERTA = :VENCIMENTOOFERTA');
                            DMEXPORTA.TEstoque.SQL.Add('where COD_ESTOQUE = :OLD_COD_ESTOQUE');
                            DMEXPORTA.TEstoque.ParamByName('OLD_COD_ESTOQUE').AsInteger := XCOD_ESTOQUE;
                        End;

                   // seleciona dados da tabela produto que tenha o mesmo codigo que a tabela subproduto - banco local
                        DMESTOQUE.TProduto.Close;
                        DMESTOQUE.TProduto.SQL.Clear;
                        DMESTOQUE.TProduto.SQL.Add('select * from produto where produto.cod_produto = :codigo');
                        DMESTOQUE.TProduto.ParamByName('codigo').AsInteger := DMESTOQUE.TSubProd.FieldByname('cod_produto').AsInteger;
                        DMESTOQUE.TProduto.Open;

                   // seleciona o produto que tenha a mesma descricao que o banco local - banco de fora
                        DMEXPORTA.TProduto.Close;
                        DMEXPORTA.TProduto.SQL.Clear;
                        DMEXPORTA.TProduto.SQL.Add('select * from produto where (upper(produto.descricao) = upper(' + #39 + DMESTOQUE.TProduto.FieldByName('descricao').AsString + #39 + '))');
                        DMEXPORTA.TProduto.Open;

                        If DMEXPORTA.TProduto.IsEmpty
                            Then Begin
                            DMEXPORTA.TProduto.Close;
                            DMEXPORTA.TProduto.SQL.Clear;
                            DMEXPORTA.TProduto.SQL.Add('insert into PRODUTO');
                            DMEXPORTA.TProduto.SQL.Add('(COD_PRODUTO, COD_INTERNO, DESCRICAO, APLICACAO, COD_SUBGRUPOPROD, COD_GRUPOPROD,');
                            DMEXPORTA.TProduto.SQL.Add('COD_CST, COD_LOJA, VENDVISTA, VENDPRAZO, CUSTOVENDA, COMPVISTA, COMPPRAZO,');
                            DMEXPORTA.TProduto.SQL.Add('QTDCOMP, QTDVEND)');
                            DMEXPORTA.TProduto.SQL.Add('values');
                            DMEXPORTA.TProduto.SQL.Add('(:COD_PRODUTO, :COD_INTERNO, :DESCRICAO, :APLICACAO, :COD_SUBGRUPOPROD,');
                            DMEXPORTA.TProduto.SQL.Add(':COD_GRUPOPROD, :COD_CST, :COD_LOJA, :VENDVISTA, :VENDPRAZO, :CUSTOVENDA,');
                            DMEXPORTA.TProduto.SQL.Add(':COMPVISTA, :COMPPRAZO, :QTDCOMP, :QTDVEND)');
                            DMEXPORTA.TProduto.ParamByName('cod_produto').AsInteger := RetornaChaveTabelaexortacao('PRODUTO');
                            XCOD_PRODUTO := DMEXPORTA.TProduto.ParamByName('cod_produto').AsInteger;
                        End
                        Else Begin
                            XCOD_PRODUTO := DMEXPORTA.TProduto.FieldByname('cod_produto').AsInteger;
                            DMEXPORTA.TProduto.Close;
                            DMEXPORTA.TProduto.SQL.Clear;
                            DMEXPORTA.TProduto.SQL.Add('update PRODUTO set');
                            DMEXPORTA.TProduto.SQL.Add('COD_INTERNO = :COD_INTERNO, DESCRICAO = :DESCRICAO, APLICACAO = :APLICACAO, COD_SUBGRUPOPROD = :COD_SUBGRUPOPROD,');
                            DMEXPORTA.TProduto.SQL.Add('COD_GRUPOPROD = :COD_GRUPOPROD, COD_CST = :COD_CST, COD_LOJA = :COD_LOJA,VENDVISTA = :VENDVISTA,');
                            DMEXPORTA.TProduto.SQL.Add('VENDPRAZO = :VENDPRAZO,CUSTOVENDA = :CUSTOVENDA,COMPVISTA = :COMPVISTA,COMPPRAZO = :COMPPRAZO,QTDCOMP = :QTDCOMP,QTDVEND = :QTDVEND');
                            DMEXPORTA.TProduto.SQL.Add('where COD_PRODUTO = :OLD_COD_PRODUTO');

                            DMEXPORTA.TProduto.ParamByName('OLD_COD_PRODUTO').AsInteger := XCOD_PRODUTO;
                        End;

                   // seleciona dados da tabela grupoprod que tenha o mesmo codigo que a tabela produto
                        DMESTOQUE.TGrupo.Close;
                        DMESTOQUE.TGrupo.SQL.Clear;
                        DMESTOQUE.TGrupo.SQL.Add('select * from grupoprod where grupoprod.cod_grupoprod = :codigo');
                        DMESTOQUE.TGrupo.ParamByName('codigo').AsInteger := DMESTOQUE.TProduto.FieldByName('cod_grupoprod').AsInteger;
                        DMESTOQUE.TGrupo.Open;

                   // seleciona dados da tabela grupoprod do banco de fora que tenha a mesma descricao
                        DMEXPORTA.TGrupo.Close;
                        DMEXPORTA.TGrupo.SQL.Clear;
                        DMEXPORTA.TGrupo.SQL.Add('select * from grupoprod where (upper(grupoprod.descricao) = upper(' + #39 + DMESTOQUE.TGrupo.FieldByName('descricao').AsString + #39 + '))');
                        DMEXPORTA.TGrupo.Open;

                        If DMEXPORTA.TGrupo.IsEmpty
                            Then Begin
                            DMEXPORTA.TGrupo.Close;
                            DMEXPORTA.TGrupo.SQL.Clear;
                            DMEXPORTA.TGrupo.SQL.Add('insert into GRUPOPROD');
                            DMEXPORTA.TGrupo.SQL.Add('(COD_GRUPOPROD, DESCRICAO, COD_INTERNO, TIPO)');
                            DMEXPORTA.TGrupo.SQL.Add('values');
                            DMEXPORTA.TGrupo.SQL.Add('(:COD_GRUPOPROD, :DESCRICAO, :COD_INTERNO, :TIPO)');
                            DMEXPORTA.TGrupo.ParamByName('cod_grupoprod').AsInteger := RetornaChaveTabelaexortacao('GRUPOPROD');
                            XCOD_GRUPO := DMEXPORTA.TGrupo.ParamByName('cod_grupoprod').AsInteger;
                        End
                        Else Begin
                            XCOD_GRUPO := DMEXPORTA.TGrupo.FieldByname('cod_grupoprod').AsInteger;
                            DMEXPORTA.TGrupo.Close;
                            DMEXPORTA.TGrupo.SQL.Clear;
                            DMEXPORTA.TGrupo.SQL.Add('update GRUPOPROD set DESCRICAO = :DESCRICAO, COD_INTERNO = :COD_INTERNO, TIPO = :TIPO');
                            DMEXPORTA.TGrupo.SQL.Add('where COD_GRUPOPROD = :OLD_COD_GRUPOPROD');

                            DMEXPORTA.TGrupo.ParamByName('OLD_COD_GRUPOPROD').AsInteger := XCOD_GRUPO;
                        End;

                   // grava na tabela grupoprod do banco de fora os novos dados
                        DMEXPORTA.TGrupo.ParamByName('cod_interno').AsString := DMESTOQUE.TGrupo.FieldByName('cod_interno').AsString;
                        DMEXPORTA.TGrupo.ParamByName('descricao').AsString := DMESTOQUE.TGrupo.FieldByName('descricao').AsString;
                        DMEXPORTA.TGrupo.ParamByName('tipo').AsString := DMESTOQUE.TGrupo.FieldByName('tipo').AsString;
                        DMEXPORTA.TGrupo.ExecSQL;

                   // seleciona no banco de dados local os dados da tabela subgrupoprod
                        DMESTOQUE.TSubgru.Close;
                        DMESTOQUE.TSubgru.SQL.Clear;
                        DMESTOQUE.TSubgru.SQL.Add('select * from subgrupoprod where subgrupoprod.cod_subgrupoprod = :codigo');
                        DMESTOQUE.TSubgru.ParamByName('codigo').AsInteger := DMESTOQUE.TProduto.FieldByname('cod_subgrupoprod').AsInteger;
                        DMESTOQUE.TSubgru.Open;

                   // seleciona dados da tabela subgrupoprod do banco de fora que tenha a mesma descricao
                        DMEXPORTA.TSubgru.Close;
                        DMEXPORTA.TSubgru.SQL.Clear;
                        DMEXPORTA.TSubgru.SQL.Add('select * from subgrupoprod where (upper(subgrupoprod.descricao) = upper(' + #39 + DMESTOQUE.TSubgru.FieldByName('descricao').AsString + #39 + '))');
                        DMEXPORTA.TSubgru.Open;

                        If DMEXPORTA.TSubgru.IsEmpty
                            Then Begin
                            DMEXPORTA.TSubgru.Close;
                            DMEXPORTA.TSubgru.SQL.Clear;
                            DMEXPORTA.TSubgru.SQL.Add('insert into SUBGRUPOPROD');
                            DMEXPORTA.TSubgru.SQL.Add('(COD_SUBGRUPOPROD, DESCRICAO, COD_INTERNO, TIPO)');
                            DMEXPORTA.TSubgru.SQL.Add('values');
                            DMEXPORTA.TSubgru.SQL.Add('(:COD_SUBGRUPOPROD, :DESCRICAO, :COD_INTERNO, :TIPO)');
                            DMEXPORTA.TSubgru.ParamByName('cod_subgrupoprod').AsInteger := RetornaChaveTabelaexortacao('SUBGRUPOPROD');
                            XCOD_SUBGRUPO := DMEXPORTA.TSubgru.ParamByName('cod_subgrupoprod').AsInteger;
                        End
                        Else Begin
                            XCOD_SUBGRUPO := DMEXPORTA.TSubgru.FieldByName('cod_subgrupoprod').AsInteger;

                            DMEXPORTA.TSubgru.Close;
                            DMEXPORTA.TSubgru.SQL.Clear;
                            DMEXPORTA.TSubgru.SQL.Add('update SUBGRUPOPROD set DESCRICAO = :DESCRICAO, COD_INTERNO = :COD_INTERNO, TIPO = :TIPO');
                            DMEXPORTA.TSubgru.SQL.Add('where COD_SUBGRUPOPROD = :OLD_COD_SUBGRUPOPROD');

                            DMEXPORTA.TSubgru.ParamByName('OLD_COD_SUBGRUPOPROD').AsInteger := XCOD_SUBGRUPO;
                        End;

                        DMEXPORTA.TSubgru.ParamByName('descricao').AsString := DMESTOQUE.TSubgru.FieldByname('descricao').AsString;
                        DMEXPORTA.TSubgru.ParamByName('cod_interno').AsString := DMESTOQUE.TSubgru.FieldByname('cod_interno').AsString;
                        DMEXPORTA.TSubgru.ParamByName('tipo').AsString := DMESTOQUE.TSubgru.FieldByname('tipo').AsString;
                        DMEXPORTA.TSubgru.ExecSQL;

                   // seleciona dados da tabela cst local que tenha o mesmo codigo que o subproduto
                        DMESTOQUE.TCST.Close;
                        DMESTOQUE.TCST.SQL.Clear;
                        DMESTOQUE.TCST.SQL.Add('select * from cst where cst.cod_cst = :codigo');
                        DMESTOQUE.TCST.ParamByName('codigo').AsInteger := DMESTOQUE.TSubProd.FieldByName('cod_cst').AsInteger;
                        DMESTOQUE.TCST.Open;

                   // seleciona no banco de fora o CST que tenha a Mesma cod_sit_trib
                        DMEXPORTA.TCst.Close;
                        DMEXPORTA.TCst.SQL.Clear;
                        DMEXPORTA.TCst.SQL.Add('select * from cst where (upper(cst.cod_sit_trib) = upper(' + #39 + DMESTOQUE.TCST.FieldByname('cod_sit_trib').AsString + #39 + '))');
                        DMEXPORTA.TCst.Open;

                        If DMEXPORTA.TCst.IsEmpty
                            Then Begin
                            DMEXPORTA.TCst.Close;
                            DMEXPORTA.TCst.SQL.Clear;
                            DMEXPORTA.TCst.SQL.Add('insert into CST (COD_CST, DESCRICAO, COD_SIT_TRIB, INDICEECF) values (:COD_CST, :DESCRICAO, :COD_SIT_TRIB, :INDICEECF)');
                            DMEXPORTA.TCst.ParamByName('cod_cst').AsInteger := RetornaChaveTabelaexortacao('CST');
                            XCOD_CST := DMEXPORTA.TCst.ParamByName('cod_cst').AsInteger;
                        End
                        Else Begin
                            XCOD_CST := DMEXPORTA.TCst.FieldByName('cod_CST').AsInteger;

                            DMEXPORTA.TCst.Close;
                            DMEXPORTA.TCst.SQL.Clear;
                            DMEXPORTA.TCst.SQL.Add('update CST set DESCRICAO = :DESCRICAO, COD_SIT_TRIB = :COD_SIT_TRIB, INDICEECF = :INDICEECF');
                            DMEXPORTA.TCst.SQL.Add('where COD_CST = :OLD_COD_CST');
                            DMEXPORTA.TCst.ParamByName('OLD_COD_CST').AsInteger := XCOD_CST;
                        End;

                        DMEXPORTA.TCst.ParamByName('cod_sit_trib').AsString := DMESTOQUE.TCST.FieldByname('cod_sit_trib').AsString;
                        DMEXPORTA.TCst.ParamByName('descricao').AsString := DMESTOQUE.TCST.FieldByname('descricao').AsString;
                        DMEXPORTA.TCst.ParamByName('INDICEECF').AsString := DMESTOQUE.TCST.FieldByname('INDICEECF').AsString;
                        DMEXPORTA.TCst.ExecSQL;
                        DMEXPORTA.TProduto.ParamByName('APLICACAO').AsString := DMESTOQUE.TProduto.FieldByName('APLICACAO').AsString;
                        DMEXPORTA.TProduto.ParamByName('COD_CST').AsInteger := XCOD_CST;
                        DMEXPORTA.TProduto.ParamByName('COD_GRUPOPROD').AsInteger := XCOD_GRUPO;
                        DMEXPORTA.TProduto.ParamByName('COD_INTERNO').AsString := DMESTOQUE.TProduto.FieldByName('COD_INTERNO').AsString;
                        DMEXPORTA.TProduto.ParamByName('COD_LOJA').AsInteger := DMESTOQUE.TProduto.FieldByName('COD_LOJA').AsInteger;
                        DMEXPORTA.TProduto.ParamByName('COD_SUBGRUPOPROD').AsInteger := XCOD_SUBGRUPO;
                        DMEXPORTA.TProduto.ParamByName('COMPPRAZO').AsCurrency := DMESTOQUE.TProduto.FieldByName('COMPPRAZO').AsCurrency;
                        DMEXPORTA.TProduto.ParamByName('COMPVISTA').AsCurrency := DMESTOQUE.TProduto.FieldByName('COMPVISTA').AsCurrency;
                        DMEXPORTA.TProduto.ParamByName('CUSTOVENDA').AsCurrency := DMESTOQUE.TProduto.FieldByName('CUSTOVENDA').AsCurrency;
                        DMEXPORTA.TProduto.ParamByName('DESCRICAO').AsString := DMESTOQUE.TProduto.FieldByName('DESCRICAO').AsString;
                        DMEXPORTA.TProduto.ParamByName('QTDCOMP').AsCurrency := DMESTOQUE.TProduto.FieldByName('QTDCOMP').AsCurrency;
                        DMEXPORTA.TProduto.ParamByName('QTDVEND').AsCurrency := DMESTOQUE.TProduto.FieldByName('QTDVEND').AsCurrency;
                        DMEXPORTA.TProduto.ParamByName('VENDPRAZO').AsCurrency := DMESTOQUE.TProduto.FieldByName('VENDPRAZO').AsCurrency;
                        DMEXPORTA.TProduto.ParamByName('VENDVISTA').AsCurrency := DMESTOQUE.TProduto.FieldByName('VENDVISTA').AsCurrency;
                        DMEXPORTA.TProduto.ExecSQL;


                        If XCOD_CST <> DMESTOQUE.TSubProd.FieldByName('cod_cst').AsInteger
                            Then Begin
                         // seleciona dados da tabela cst local que tenha o mesmo codigo que o subproduto
                            DMESTOQUE.TCST.Close;
                            DMESTOQUE.TCST.SQL.Clear;
                            DMESTOQUE.TCST.SQL.Add('select * from cst where cst.cod_cst = :codigo');
                            DMESTOQUE.TCST.ParamByName('codigo').AsInteger := DMESTOQUE.TSubProd.FieldByName('cod_cst').AsInteger;
                            DMESTOQUE.TCST.Open;

                         // seleciona no banco de fora o CST que tenha a Mesma cod_sit_trib
                            DMEXPORTA.TCst.Close;
                            DMEXPORTA.TCst.SQL.Clear;
                            DMEXPORTA.TCst.SQL.Add('select * from cst where (upper(cst.cod_sit_trib) = upper(' + #39 + DMESTOQUE.TCST.FieldByname('cod_sit_trib').AsString + #39 + '))');
                            DMEXPORTA.TCst.Open;

                            If DMEXPORTA.TCst.IsEmpty
                                Then Begin
                                DMEXPORTA.TCst.Close;
                                DMEXPORTA.TCst.SQL.Clear;
                                DMEXPORTA.TCst.SQL.Add('insert into CST (COD_CST, DESCRICAO, COD_SIT_TRIB, INDICEECF) values (:COD_CST, :DESCRICAO, :COD_SIT_TRIB, :INDICEECF)');
                                DMEXPORTA.TCst.ParamByName('cod_cst').AsInteger := RetornaChaveTabelaexortacao('CST');
                                XCOD_CST := DMEXPORTA.TCst.ParamByName('cod_cst').AsInteger;
                            End
                            Else Begin
                                XCOD_CST := DMEXPORTA.TCst.FieldByName('cod_CST').AsInteger;
                                DMEXPORTA.TCst.Close;
                                DMEXPORTA.TCst.SQL.Clear;
                                DMEXPORTA.TCst.SQL.Add('update CST set DESCRICAO = :DESCRICAO, COD_SIT_TRIB = :COD_SIT_TRIB, INDICEECF = :INDICEECF');
                                DMEXPORTA.TCst.SQL.Add('where COD_CST = :OLD_COD_CST');
                                DMEXPORTA.TCst.ParamByName('OLD_COD_CST').AsInteger := XCOD_CST;

                            End;
                            DMEXPORTA.TCst.ParamByName('cod_sit_trib').AsString := DMESTOQUE.TCST.FieldByname('cod_sit_trib').AsString;
                            DMEXPORTA.TCst.ParamByName('descricao').AsString := DMESTOQUE.TCST.FieldByname('descricao').AsString;
                            DMEXPORTA.TCst.ParamByName('INDICEECF').AsString := DMESTOQUE.TCST.FieldByname('INDICEECF').AsString;
                            DMEXPORTA.TCst.ExecSQL;
                        End;
                        DMEXPORTA.TSubProd.ParamByName('COD_CST').AsInteger := XCOD_CST;
                        DMEXPORTA.TSubProd.ParamByName('cod_produto').AsInteger := XCOD_PRODUTO;
                        DMEXPORTA.TSubProd.ParamByName('ALTURA').AsString := DMESTOQUE.TSubProd.FieldByName('ALTURA').AsString;
                        DMEXPORTA.TSubProd.ParamByName('ANVISA').AsString := DMESTOQUE.TSubProd.FieldByName('ANVISA').AsString;
                        DMEXPORTA.TSubProd.ParamByName('ATESTGAR').AsString := DMESTOQUE.TSubProd.FieldByName('ATESTGAR').AsString;
                        DMEXPORTA.TSubProd.ParamByName('ATESTVAL').AsString := DMESTOQUE.TSubProd.FieldByName('ATESTVAL').AsString;
                        DMEXPORTA.TSubProd.ParamByName('ATIVO').AsString := DMESTOQUE.TSubProd.FieldByName('ATIVO').AsString;
                        DMEXPORTA.TSubProd.ParamByName('BALANCA').AsString := DMESTOQUE.TSubProd.FieldByName('BALANCA').AsString;
                        DMEXPORTA.TSubProd.ParamByName('CLASSIFICACAO').AsString := DMESTOQUE.TSubProd.FieldByName('CLASSIFICACAO').AsString;
                        DMEXPORTA.TSubProd.ParamByName('CODBARRA').AsString := DMESTOQUE.TSubProd.FieldByName('CODBARRA').AsString;
                        DMEXPORTA.TSubProd.ParamByName('CODCOMPOSTO').AsString := DMESTOQUE.TSubProd.FieldByName('CODCOMPOSTO').AsString;
                        DMEXPORTA.TSubProd.ParamByName('CODEAN1').AsString := DMESTOQUE.TSubProd.FieldByName('CODEAN1').AsString;
                        DMEXPORTA.TSubProd.ParamByName('CODPRODFABR').AsString := DMESTOQUE.TSubProd.FieldByName('CODPRODFABR').AsString;
                        DMEXPORTA.TSubProd.ParamByName('COD_INTERNO').AsString := DMESTOQUE.TSubProd.FieldByName('COD_INTERNO').AsString;
                   //ALEX - 17/03/2009: O Sistema estava dupliando as unidades por isso as mesmas saiam duplicadas em comprovantes e nas ordens por isso o trecho abaixo foi comentado
                   //ALEX - 17/03/2009: Apos comentar o trecho abaixo as duas linhas de codigo foram inseridas pegando diretamente o codigo
                        DMEXPORTA.TSubProd.ParamByName('COD_UNIDCOMPRA').AsInteger := DMESTOQUE.TSubProd.FieldByName('COD_UNIDCOMPRA').AsInteger;
                        DMEXPORTA.TSubProd.ParamByName('COD_UNIDVENDA').AsInteger := DMESTOQUE.TSubProd.FieldByName('COD_UNIDVENDA').AsInteger;
                        DMEXPORTA.TSubProd.ParamByName('COMPOSICAO').AsString := DMESTOQUE.TSubProd.FieldByName('COMPOSICAO').AsString;
                        DMEXPORTA.TSubProd.ParamByName('CONTRINT').AsString := DMESTOQUE.TSubProd.FieldByName('CONTRINT').AsString;
                        DMEXPORTA.TSubProd.ParamByName('COR').AsString := DMESTOQUE.TSubProd.FieldByName('COR').AsString;
                        DMEXPORTA.TSubProd.ParamByName('DESCCUPOM').AsString := DMESTOQUE.TSubProd.FieldByName('DESCCUPOM').AsString;
                        DMEXPORTA.TSubProd.ParamByName('DESCRICAO').AsString := DMESTOQUE.TSubProd.FieldByName('DESCRICAO').AsString;
                        DMEXPORTA.TSubProd.ParamByName('DTCAD').AsDateTime := DMESTOQUE.TSubProd.FieldByName('DTCAD').AsDateTime;
                        DMEXPORTA.TSubProd.ParamByName('EMBPROD').AsCurrency := DMESTOQUE.TSubProd.FieldByName('EMBPROD').AsCurrency;
                        DMEXPORTA.TSubProd.ParamByName('ESPECIFICACAO').AsString := DMESTOQUE.TSubProd.FieldByName('ESPECIFICACAO').AsString;
                        DMEXPORTA.TSubProd.ParamByName('FABRICANTE').AsString := DMESTOQUE.TSubProd.FieldByName('FABRICANTE').AsString;
                        DMEXPORTA.TSubProd.ParamByName('GERMI').AsCurrency := DMESTOQUE.TSubProd.FieldByName('GERMI').AsCurrency;
                        DMEXPORTA.TSubProd.ParamByName('IPIPROD').AsCurrency := DMESTOQUE.TSubProd.FieldByName('IPIPROD').AsCurrency;
                        DMEXPORTA.TSubProd.ParamByName('LARGURA').AsString := DMESTOQUE.TSubProd.FieldByName('LARGURA').AsString;
                        DMEXPORTA.TSubProd.ParamByName('LOCALESTANTE').AsString := DMESTOQUE.TSubProd.FieldByName('LOCALESTANTE').AsString;
                        DMEXPORTA.TSubProd.ParamByName('LOTE').AsString := DMESTOQUE.TSubProd.FieldByName('LOTE').AsString;
                        DMEXPORTA.TSubProd.ParamByName('MARCA').AsString := DMESTOQUE.TSubProd.FieldByName('MARCA').AsString;
                        DMEXPORTA.TSubProd.ParamByName('MARK').AsString := DMESTOQUE.TSubProd.FieldByName('MARK').AsString;
                        DMEXPORTA.TSubProd.ParamByName('MINSAUDE').AsString := DMESTOQUE.TSubProd.FieldByName('MINSAUDE').AsString;
                        DMEXPORTA.TSubProd.ParamByName('MOTIVO').AsString := DMESTOQUE.TSubProd.FieldByName('MOTIVO').AsString;
                        DMEXPORTA.TSubProd.ParamByName('NCM').AsString := DMESTOQUE.TSubProd.FieldByName('NCM').AsString;
                        DMEXPORTA.TSubProd.ParamByName('OBSFISCAL').AsString := DMESTOQUE.TSubProd.FieldByName('OBSFISCAL').AsString;
                        DMEXPORTA.TSubProd.ParamByName('PENEIRA').AsString := DMESTOQUE.TSubProd.FieldByName('PENEIRA').AsString;
                        DMEXPORTA.TSubProd.ParamByName('PESOBRUTO').AsCurrency := DMESTOQUE.TSubProd.FieldByName('PESOBRUTO').AsCurrency;
                        DMEXPORTA.TSubProd.ParamByName('PESOLIQ').AsCurrency := DMESTOQUE.TSubProd.FieldByName('PESOLIQ').AsCurrency;
                        DMEXPORTA.TSubProd.ParamByName('PUREZA').AsCurrency := DMESTOQUE.TSubProd.FieldByName('PUREZA').AsCurrency;
                        DMEXPORTA.TSubProd.ParamByName('QTDATC').AsCurrency := DMESTOQUE.TSubProd.FieldByName('QTDATC').AsCurrency;
                        DMEXPORTA.TSubProd.ParamByName('QUANTGARANTIA').AsCurrency := DMESTOQUE.TSubProd.FieldByName('QUANTGARANTIA').AsCurrency;
                        DMEXPORTA.TSubProd.ParamByName('SAFRA').AsString := DMESTOQUE.TSubProd.FieldByName('SAFRA').AsString;
                        DMEXPORTA.TSubProd.ParamByName('TIPOGARANTIA').AsString := DMESTOQUE.TSubProd.FieldByName('TIPOGARANTIA').AsString;
                        Try
                            DMEXPORTA.TSubProd.ExecSQL;
                            DMEXPORTA.IBTExporta.CommitRetaining;
                        Except
                            MessageDlg('Falha: 1707', mtWarning, [mbOK], 0);
                            DMEXPORTA.IBTExporta.RollbackRetaining;
                        End;
                   // ATUALIZANDO TABELA ESTOQUE
                        DMEXPORTA.TEstoque.ParamByName('COD_LOJA').AsInteger := DMESTOQUE.TEstoque.FieldByName('COD_LOJA').AsInteger;
                        DMEXPORTA.TEstoque.ParamByName('COD_SUBPROD').AsInteger := XCOD_SUBPRODUTO;
                        DMEXPORTA.TEstoque.ParamByName('ULTCOMPRA').AsDateTime := DMESTOQUE.TEstoque.FieldByName('ULTCOMPRA').AsDateTime;
                        DMEXPORTA.TEstoque.ParamByName('ULTVENDA').AsDateTime := DMESTOQUE.TEstoque.FieldByName('ULTVENDA').AsDateTime;
                        DMEXPORTA.TEstoque.ParamByName('ESTMAX').AsCurrency := DMESTOQUE.TEstoque.FieldByName('ESTMAX').AsCurrency;
                        DMEXPORTA.TEstoque.ParamByName('ESTMIN').AsCurrency := DMESTOQUE.TEstoque.FieldByName('ESTMIN').AsCurrency;
                        DMEXPORTA.TEstoque.ParamByName('ICMS').AsCurrency := DMESTOQUE.TEstoque.FieldByName('ICMS').AsCurrency;
                        DMEXPORTA.TEstoque.ParamByName('FRETE').AsCurrency := DMESTOQUE.TEstoque.FieldByName('FRETE').AsCurrency;
                        DMEXPORTA.TEstoque.ParamByName('ESTFISICO').AsCurrency := DMESTOQUE.TEstoque.FieldByName('ESTFISICO').AsCurrency;
                        DMEXPORTA.TEstoque.ParamByName('ESTRESERV').AsCurrency := DMESTOQUE.TEstoque.FieldByName('ESTRESERV').AsCurrency;
                        DMEXPORTA.TEstoque.ParamByName('ESTPED').AsCurrency := DMESTOQUE.TEstoque.FieldByName('ESTPED').AsCurrency;
                        DMEXPORTA.TEstoque.ParamByName('ESTSALDO').AsCurrency := DMESTOQUE.TEstoque.FieldByName('ESTSALDO').AsCurrency;
                        DMEXPORTA.TEstoque.ParamByName('CVVPROAT').AsCurrency := DMESTOQUE.TEstoque.FieldByName('CVVPROAT').AsCurrency;
                        DMEXPORTA.TEstoque.ParamByName('CVPPROAT').AsCurrency := DMESTOQUE.TEstoque.FieldByName('CVPPROAT').AsCurrency;
                        DMEXPORTA.TEstoque.ParamByName('CVVPROVAR').AsCurrency := DMESTOQUE.TEstoque.FieldByName('CVVPROVAR').AsCurrency;
                        DMEXPORTA.TEstoque.ParamByName('CVPPROVAR').AsCurrency := DMESTOQUE.TEstoque.FieldByName('CVPPROVAR').AsCurrency;
                        DMEXPORTA.TEstoque.ParamByName('VENDATAP').AsCurrency := DMESTOQUE.TEstoque.FieldByName('VENDATAP').AsCurrency;
                        DMEXPORTA.TEstoque.ParamByName('VENDATAV').AsCurrency := DMESTOQUE.TEstoque.FieldByName('VENDATAV').AsCurrency;
                        DMEXPORTA.TEstoque.ParamByName('VENDVARP').AsCurrency := DMESTOQUE.TEstoque.FieldByName('VENDVARP').AsCurrency;
                        DMEXPORTA.TEstoque.ParamByName('VENDVARV').AsCurrency := DMESTOQUE.TEstoque.FieldByName('VENDVARV').AsCurrency;
                        DMEXPORTA.TEstoque.ParamByName('VALUNIT').AsCurrency := DMESTOQUE.TEstoque.FieldByName('VALUNIT').AsCurrency;
                        DMEXPORTA.TEstoque.ParamByName('VALREP').AsCurrency := DMESTOQUE.TEstoque.FieldByName('VALREP').AsCurrency;
                        DMEXPORTA.TEstoque.ParamByName('VALCUSTO').AsCurrency := DMESTOQUE.TEstoque.FieldByName('VALCUSTO').AsCurrency;
                        DMEXPORTA.TEstoque.ParamByName('AVVPROAT').AsCurrency := DMESTOQUE.TEstoque.FieldByName('AVVPROAT').AsCurrency;
                        DMEXPORTA.TEstoque.ParamByName('AVPPROAT').AsCurrency := DMESTOQUE.TEstoque.FieldByName('AVPPROAT').AsCurrency;
                        DMEXPORTA.TEstoque.ParamByName('AVVPROVAR').AsCurrency := DMESTOQUE.TEstoque.FieldByName('AVVPROVAR').AsCurrency;
                        DMEXPORTA.TEstoque.ParamByName('AVPPROVAR').AsCurrency := DMESTOQUE.TEstoque.FieldByName('AVPPROVAR').AsCurrency;
                        DMEXPORTA.TEstoque.ParamByName('LUCRATIVIDADE').AsCurrency := DMESTOQUE.TEstoque.FieldByName('LUCRATIVIDADE').AsCurrency;
                        DMEXPORTA.TEstoque.ParamByName('COEFDIV').AsCurrency := DMESTOQUE.TEstoque.FieldByName('COEFDIV').AsCurrency;
                        DMEXPORTA.TEstoque.ParamByName('VALOREST').AsCurrency := DMESTOQUE.TEstoque.FieldByName('VALOREST').AsCurrency;
                        DMEXPORTA.TEstoque.ParamByName('OUTROS').AsCurrency := DMESTOQUE.TEstoque.FieldByName('OUTROS').AsCurrency;
                        DMEXPORTA.TEstoque.ParamByName('QUANT2').AsCurrency := DMESTOQUE.TEstoque.FieldByName('QUANT2').AsCurrency;
                        DMEXPORTA.TEstoque.ParamByName('DTCAD').AsDateTime := DMESTOQUE.TEstoque.FieldByName('DTCAD').AsDateTime;
                        DMEXPORTA.TEstoque.ParamByName('ESTINI').AsCurrency := DMESTOQUE.TEstoque.FieldByName('ESTINI').AsCurrency;
                        DMEXPORTA.TEstoque.ParamByName('VALCUSDESP').AsCurrency := DMESTOQUE.TEstoque.FieldByName('VALCUSDESP').AsCurrency;
                        DMEXPORTA.TEstoque.ParamByName('ESTANTCONT').AsCurrency := DMESTOQUE.TEstoque.FieldByName('ESTANTCONT').AsCurrency;
                        DMEXPORTA.TEstoque.ParamByName('CONTAGEM').AsCurrency := DMESTOQUE.TEstoque.FieldByName('CONTAGEM').AsCurrency;
                        DMEXPORTA.TEstoque.ParamByName('ESTSIMULADO').AsCurrency := DMESTOQUE.TEstoque.FieldByName('ESTSIMULADO').AsCurrency;
                        DMEXPORTA.TEstoque.ParamByName('VLRUNITCOMP').AsCurrency := DMESTOQUE.TEstoque.FieldByName('VLRUNITCOMP').AsCurrency;
                        DMEXPORTA.TEstoque.ParamByName('INDICE').AsCurrency := DMESTOQUE.TEstoque.FieldByName('INDICE').AsCurrency;
                        DMEXPORTA.TEstoque.ParamByName('BONIFICACAO').AsCurrency := DMESTOQUE.TEstoque.FieldByName('BONIFICACAO').AsCurrency;
                        DMEXPORTA.TEstoque.ParamByName('VLRBONIFIC').AsCurrency := DMESTOQUE.TEstoque.FieldByName('VLRBONIFIC').AsCurrency;
                        DMEXPORTA.TEstoque.ParamByName('DESCONTO').AsCurrency := DMESTOQUE.TEstoque.FieldByName('DESCONTO').AsCurrency;
                        DMEXPORTA.TEstoque.ParamByName('CLNC').AsCurrency := DMESTOQUE.TEstoque.FieldByName('CLNC').AsCurrency;
                        DMEXPORTA.TEstoque.ParamByName('MOD').AsCurrency := DMESTOQUE.TEstoque.FieldByName('MOD').AsCurrency;
                        DMEXPORTA.TEstoque.ParamByName('IMPEXP').AsCurrency := DMESTOQUE.TEstoque.FieldByName('IMPEXP').AsCurrency;
                        DMEXPORTA.TEstoque.ParamByName('IMPREND').AsCurrency := DMESTOQUE.TEstoque.FieldByName('IMPREND').AsCurrency;
                        DMEXPORTA.TEstoque.ParamByName('CONTSOC').AsCurrency := DMESTOQUE.TEstoque.FieldByName('CONTSOC').AsCurrency;
                        DMEXPORTA.TEstoque.ParamByName('COFINS').AsCurrency := DMESTOQUE.TEstoque.FieldByName('COFINS').AsCurrency;
                        DMEXPORTA.TEstoque.ParamByName('PIS').AsCurrency := DMESTOQUE.TEstoque.FieldByName('PIS').AsCurrency;
                        DMEXPORTA.TEstoque.ParamByName('MARGEMSEG').AsCurrency := DMESTOQUE.TEstoque.FieldByName('MARGEMSEG').AsCurrency;
                        DMEXPORTA.TEstoque.ParamByName('PERCMARGSEG').AsCurrency := DMESTOQUE.TEstoque.FieldByName('PERCMARGSEg').AsCurrency;
                        DMEXPORTA.TEstoque.ParamByName('REDUCBASE').AsCurrency := DMESTOQUE.TEstoque.FieldByName('REDUCBASE').AsCurrency;
                        DMEXPORTA.TEstoque.ParamByName('VLRCOMPSD').AsCurrency := DMESTOQUE.TEstoque.FieldByName('VLRCOMPSD').AsCurrency;
                        DMEXPORTA.TEstoque.ParamByName('ACRECIMO').AsCurrency := DMESTOQUE.TEstoque.FieldByName('ACRECIMO').AsCurrency;
                        DMEXPORTA.TEstoque.ParamByName('ESTCALC').AsCurrency := DMESTOQUE.TEstoque.FieldByName('ESTCALC').AsCurrency;
                        DMEXPORTA.TEstoque.ParamByName('DATAATU').AsDateTime := DMESTOQUE.TEstoque.FieldByName('DATAATU').AsDateTime;
                        DMEXPORTA.TEstoque.ParamByName('HORAATU').AsDateTime := DMESTOQUE.TEstoque.FieldByName('HORAATU').AsDateTime;
                        DMEXPORTA.TEstoque.ParamByName('PRECOOFERTA').AsCurrency := DMESTOQUE.TEstoque.FieldByName('PRECOOFERTA').AsCurrency;
                        DMEXPORTA.TEstoque.ParamByName('DATAOFERTA').AsDateTime := DMESTOQUE.TEstoque.FieldByName('DATAOFERTA').AsDateTime;
                        DMEXPORTA.TEstoque.ParamByName('VENCIMENTOOFERTA').AsDateTime := DMESTOQUE.TEstoque.FieldByName('VENCIMENTOOFERTA').AsDateTime;
                        Try
                            DMEXPORTA.TEstoque.ExecSQL;
                            DMEXPORTA.IBTExporta.CommitRetaining;
                        Except
                            DMEXPORTA.IBTExporta.RollbackRetaining;
                            MessageDlg('Falha: 1775', mtWarning, [mbOK], 0);
                        End;
                    Except
                        MessageDlg('FALHA 531', mtWarning, [mbOK], 0);
                    End;

                    Try
                   // CODIGO DE ESTOQUE PARA ITENS DE PRODUTO DA ORDEM
                        DMEXPORTA.TItemPC.Close;
                        DMEXPORTA.TItemPC.SQL.Clear;
                        DMEXPORTA.TItemPC.SQL.Add(' insert into ITENSPEDC (COD_PEDCOMPRA, COD_ESTOQUE, QTDEPROD, VALUNIT, VALORTOTAL, ');
                        DMEXPORTA.TItemPC.SQL.Add(' DATA, DESCPRO, ATUEST, ALIQICMS, VLRIPI, COD_LOTE, BASEICMS, VLRICMS, BASEICMSSUBS, ');
                        DMEXPORTA.TItemPC.SQL.Add(' VLRICMSSUBS, ALIQIPI, COD_UNIDADE) values (:COD_PEDCOMPRA, :COD_ESTOQUE, :QTDEPROD, ');
                        DMEXPORTA.TItemPC.SQL.Add(' :VALUNIT, :VALORTOTAL, :DATA, :DESCPRO, :ATUEST, :ALIQICMS,:VLRIPI, :COD_LOTE, ');
                        DMEXPORTA.TItemPC.SQL.Add(' :BASEICMS, :VLRICMS, :BASEICMSSUBS, :VLRICMSSUBS, :ALIQIPI, :COD_UNIDADE) ');
                        DMEXPORTA.TItemPC.ParamByName('COD_PEDCOMPRA').AsInteger := XCOD_ORDEM;
                        DMEXPORTA.TItemPC.ParamByName('COD_ESTOQUE').AsInteger := XCOD_ESTOQUE;
                        DMEXPORTA.TItemPC.ParamByName('QTDEPROD').AsCurrency := DMENTRADA.TItemPC.FieldByName('QTDEPROD').AsCurrency;
                        DMEXPORTA.TItemPC.ParamByName('VALUNIT').AsCurrency := DMENTRADA.TItemPC.FieldByName('VALUNIT').AsCurrency;
                        DMEXPORTA.TItemPC.ParamByName('VALORTOTAL').AsCurrency := DMENTRADA.TItemPC.FieldByName('VALORTOTAL').AsCurrency;
                        DMEXPORTA.TItemPC.ParamByName('DATA').AsString := DMENTRADA.TItemPC.FieldByName('DATA').AsString;
                        DMEXPORTA.TItemPC.ParamByName('DESCPRO').AsCurrency := DMENTRADA.TItemPC.FieldByName('DESCPRO').AsCurrency;
                        DMEXPORTA.TItemPC.ParamByName('ATUEST').AsString := '1';
                        DMEXPORTA.TItemPC.ParamByName('ALIQICMS').AsCurrency := DMENTRADA.TItemPC.FieldByName('ALIQICMS').AsCurrency;
                        DMEXPORTA.TItemPC.ParamByName('VLRIPI').AsCurrency := DMENTRADA.TItemPC.FieldByName('VLRIPI').AsCurrency;
                        DMEXPORTA.TItemPC.ParamByName('BASEICMS').AsCurrency := DMENTRADA.TItemPC.FieldByName('BASEICMS').AsCurrency;
                        DMEXPORTA.TItemPC.ParamByName('VLRICMS').AsCurrency := DMENTRADA.TItemPC.FieldByName('VLRICMS').AsCurrency;
                        DMEXPORTA.TItemPC.ParamByName('BASEICMSSUBS').AsCurrency := DMENTRADA.TItemPC.FieldByName('BASEICMSSUBS').AsCurrency;
                        DMEXPORTA.TItemPC.ParamByName('VLRICMSSUBS').AsCurrency := DMENTRADA.TItemPC.FieldByName('VLRICMSSUBS').AsCurrency;
                        DMEXPORTA.TItemPC.ParamByName('ALIQIPI').AsCurrency := DMENTRADA.TItemPC.FieldByName('ALIQIPI').AsCurrency;
                        DMEXPORTA.TItemPC.ExecSQL;
                        DMEXPORTA.IBTExporta.CommitRetaining;
                   // atualizando o banco de fora
                   //DMEXPORTA.IBTExporta.CommitRetaining;
                    Except On E: Exception Do
                            MessageDlg('FALHA 532 - ' + E.Message, mtWarning, [mbOK], 0);
                    End;

           // proximo ptoduto da ordem
                    DMENTRADA.TItemPC.Next;
                End;

                LBCONEXAO.Caption := 'Finalizando Transação ... ';
                PExp.Refresh;

       // proxima ordem
                DMENTRADA.TPedC.Next;
            End;


            Try
           // atualizando o banco local para não permitir exportar mais as ordens recem exportadas
                DMServ.TAlx1.Close;
                DMServ.TAlx1.SQL.Clear;
                DMServ.TAlx1.SQL.Add('update pedcompra set pedcompra.export = ' + #39 + '#' + #39);
                DMServ.TAlx1.SQL.Add('where pedcompra.cod_pedcomp = :CODIGO ');
                DMServ.TAlx1.ParamByName('CODIGO').AsInteger := XCOD_ORDEM;
                DMServ.TAlx1.ExecSQL;
           // atualizando o banco local
                DMServ.IBT.CommitRetaining;
            Except On E: Exception Do
                    MessageDlg('FALHA 533 -' + E.Message, mtWarning, [mbOK], 0);
            End;
       // OCULTANDO BARRA DE PROGRESSAO
            PExp.Visible := FALSE;
            PExp.SendToBack;

       //Caso tenha pendencias no datammodule, elas são cconirmadas ou recusadas
            Try
                DMEXPORTA.IBTExporta.CommitRetaining;
            Except
                DMEXPORTA.IBTExporta.RollbackRetaining;
            End;

            Mensagem('INFORMAÇÃO', 'PEDIDO(S) EXPORTADO(S) COM SUCESSO!', '', 1, 1, false, 'i');
        End
        Else Begin
       // OCULTANDO BARRA DE PROGRESSAO
            PExp.Visible := FALSE;
            PExp.SendToBack;
            Mensagem('   A T E N Ç Ã O   ', 'Ocorreu uma falha ao conectar com o Banco de Dados de Exportação.' + #13 + 'Se o problema persistir consulte o Suporte.', '', 1, 1, false, 'A');
            Exit;
        End;

    Except
   // OCULTANDO BARRA DE PROGRESSAO
        PExp.Visible := FALSE;
        PExp.SendToBack;
        DMServ.IBT.RollbackRetaining;
        Mensagem('   A T E N Ç Ã O   ', 'Ocorreu uma falha durante a Exportação dos Dados.' + #13 + 'Se o problema persistir consulte o Suporte.', '', 1, 1, false, 'A');
        Exit;
    End;
    LiberaDados;
End;

Procedure TFPedCompra.FormShow(Sender: TObject);
Begin
    Inherited;
 //Xtabela e Xcampo os nome padrões devem ser atribuidos ao show do form,
    XTabela := DMENTRADA.TPedC;
    XCampo := 'NOME';
    XPkTabela := 'COD_PEDCOMP';
    XpkTabSlave := 'COD_ITENSPEDC';

    XTransaction := DMENTRADA.IBT;

    XView := DMENTRADA.WPedc;
    XTab := FALSE;
    XDescricao := 'O Pedido de compra ';

    XSQLTABELA := 'PEDCOMPRA';
    XSQLVIEW := 'VWPEDC';
    XSQLTabSlave := 'ITENSPEDC';
    XTabSlave := DMENTRADA.TItemPC;
End;

Procedure TFPedCompra.BtnConsultarClick(Sender: TObject);
Begin
 //EFETUA CONTROLE DE ACESSO
    If ControlAccess('ALTPEDCOMP', 'M') = False Then
        Exit;
    Inherited;
    XCod_Destinatario := XTabela.FieldByName('COD_DESTINATARIO').AsInteger;
    FrmDestinatario.EdDescricao.Text := XTabela.FieldByName('DESTINATARIO').AsString;
    If (DMMACS.TLoja.FieldByName('ATIVIDADE').AsString<>'EQUIPE') and (DMMACS.TLoja.FieldByName('ATIVIDADE').AsString<>'MANUTENÇÃO')
    Then Begin
           FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_CLIENTE', IntToStr(XCod_Destinatario), '');
           FrmDestinatario.EDCodigo.Text := DMPESSOA.WCliente.FieldByName('cod_interno').AsString;
    End
    Else Begin
           FiltraTabela(DMServ.WOrdem, 'vwordem', 'cod_ordem', IntToStr(XCod_Destinatario), '');
           FrmDestinatario.EDCodigo.Text := DMServ.WOrdem.FieldByName('numero').AsString;
    End;
    FrmDestinatario.Repaint;
    EDCodBarra.Text := '';
    EDCodInterno.Text := '';
    EDQuantidade.ValueNumeric := 0;
    EDValUnit.ValueNumeric := 0;
    EDDesc.ValueNumeric := 0;
    EDTotal.ValueNumeric := 0;
    LSimilar.Caption := '';
    LMarca.Caption := '';
    LLocal.Caption := '';
    LBonif.Caption := '';
    LCustoTot.Caption := '';


End;

Procedure TFPedCompra.BtnNovoClick(Sender: TObject);
Begin
 //EFETUA CONTROLE DE ACESSO
    If ControlAccess('CADPEDCOMP', 'M') = False Then
        Exit;

    Inherited;
    XCod_Destinatario := -1;
    FrmDestinatario.EdDescricao.Text := '';
    FrmDestinatario.EDCodigo.Text := '';
    FrmDestinatario.Repaint;
    EDCodBarra.Text := '';
    EDCodInterno.Text := '';
    EDQuantidade.ValueNumeric := 0;
    EDValUnit.ValueNumeric := 0;
    EDDesc.ValueNumeric := 0;
    EDTotal.ValueNumeric := 0;
    LSimilar.Caption := '';
    LMarca.Caption := '';
    LLocal.Caption := '';
    LBonif.Caption := '';
    LCustoTot.Caption := '';

    If XFlagNfe <> 1 Then
        DBColorEdit3.SetFocus;

    lbCstconsumo.Caption := '';

End;

Procedure TFPedCompra.BtnApagarClick(Sender: TObject);
Begin
 //EFETUA CONTROLE DE ACESSO
    If ControlAccess('CANCCOMPRA', 'M') = False Then
        Exit;

    Inherited;

End;

Procedure TFPedCompra.BtnFechaPedClick(Sender: TObject);
Begin
 //EFETUA CONTROLE DE ACESSO
    If ControlAccess('EFETUARCOMPRA', 'M') = False Then
        Exit;

    XSQLTABELA := 'PEDCOMPRA';
    XSQLVIEW := 'VWPEDC';
    XSQLTabSlave := 'ITENSPEDC';
    XTabSlave := DMENTRADA.TItemPC;

    If DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NF'
        Then Begin
       //VERIFICA SE O PEDIDO JÁ POSSUE DOC FI
        If FiltraTabela(DMENTRADA.TFiscPC, 'DOCFIS', 'COD_DOCFIS', '', '(cod_pedido=' + #39 + DMENTRADA.WPedc.FieldByName('COD_PEDCOMP').AsString + #39 + ')') = True
            Then Begin
            Inherited;
        End
        Else Begin
            If DMMACS.TLoja.FieldByName('FECHARCOMPRANF').AsString = '1'
                Then Begin
                MessageDlg('Não é permitido fechar o pedido sem gerar NF', mtWarning, [mbOK], 0);
            End
            Else Begin
                Inherited;
            End;
        End;
    End
    Else Begin
        Inherited;
    End;
End;

Procedure TFPedCompra.FormActivate(Sender: TObject);
Begin
    Inherited;
    //Edmar - 08/05/2015 - Se for devolução desativa o botão novo
    if FMenu.XDevolucao then
    	BtnNovo.Enabled := False;
    PQtd4casas.Visible:=False;
	 Caption:='Pedido de Compra';
    DBGridCadastroPadrao.DataSource := DMENTRADA.DWPEDC;
    EdLocal.Visible := True;
    PCadVendedor.Visible := True;
    PCadVendedor.BringToFront;

   //Paulo 23/11/2010: Limpa os campos do painel de lote
    XQtdBruta := 0.00;
    XQtdDescarte := 0.00;
    XQtdEnt := 0.00;
    XMotivoDesc := '';
    XLote := 0;
    PnLote.SendToBack;
    PnLote.Visible := false;

    BtnProdutos.Enabled := False;
    BtnConsumo.Enabled := True;
    FPCLista.Visible := False;
    FPCLista.SendToBack;

    //Edmar - 18/03/2015 - Se for outras entradas e lançamento automatico
    //deve-se criar um novo pedido de compra, inserir os itens que será devolvido
    //e buscar pelo fornecedor
    if (FMenu.XLancAutoDev) AND (FMenu.XOutrosEnt) AND ((FMenu.XDevolucao) or (FMenu.XOutrosEntPropria))then
    begin
    	BtnNovo.Click;

    	DMMACS.TMP.Close;
       DMMACS.TMP.SQL.Clear;
       DMMACS.TMP.SQL.Add(' Select * from tmp ');
       DMMACS.TMP.Open;
       DMMACS.TMP.First;

       while not DMMACS.TMP.Eof do
       begin
       	//Filtra buscando pelo item de venda devolvido
       	if not FiltraTabela(DMSAIDA.TAlx, 'ITENSPEDVEN', 'COD_ITENSPEDVEN', DMMACS.TMP.FieldByName('INT1').AsString, '') then
               if not FiltraTabela(DMSAIDA.TAlx, 'ITPRODORD', 'COD_ITPRODORD', DMMACS.TMP.FieldByName('INT1').AsString, '')
               then Begin
                   MessageDlg('O item do pedido não foi encontrado para ser devolvido: ' + #13 + DMMACS.TMP.FieldByName('INT1').AsString , mtWarning, [mbOK], 0);
               	Exit;
               End;

           //Filtra tabela de estoque de acordo com o produto selecionada em produto
           If FiltraTabela(DMEstoque.TEstoque, 'ESTOQUE', 'COD_ESTOQUE', DMSAIDA.TAlx.FieldByName('COD_ESTOQUE').AsString, '')=False
           then Begin
               MessageDlg('O estoque do item do pedido devolvido não foi encontrado para devolução: ' + #13 + DMSAIDA.TAlx.FieldByName('COD_ESTOQUE').AsString , mtWarning, [mbOK], 0);
               Exit;
           End;
           if not FiltraTabela(DMESTOQUE.WSimilar, 'VWSIMILAR', 'COD_ESTOQUE', DMEstoque.TEstoque.FieldByName('COD_ESTOQUE').AsString, '') 
           Then Begin
               MessageDlg('O WSimilar do item do pedido devolvido não foi encontrado para devolução: ' + #13 + DMEstoque.TEstoque.FieldByName('COD_ESTOQUE').AsString, mtWarning, [mbOK], 0);
           	Exit;
           End;
           //Filtra tabela de subproduto de acordo com o produto selecionada em produto
           If FiltraTabela(DMEstoque.TSubProd, 'SUBPRODUTO', 'COD_SUBPRODUTO', DMEstoque.TEstoque.FieldByName('cod_subprod').AsString, '')=False
           Then Begin
               MessageDlg('O Subproduto do item do pedido devolvido não foi encontrado para devolução: ' + #13 + DMEstoque.TEstoque.FieldByName('cod_subprod').AsString, mtWarning, [mbOK], 0);
               Exit;
           End;
           //Filtra tabela de produto de acordo com o produto selecionada em produto
           //If FiltraTabela(DMEstoque.TProduto, 'PRODUTO', 'COD_PRODUTO', DMEstoque.WSimilar.FieldByName('COD_PRODUTO').AsString, '')=False
           //Then Begin
           //    MessageDlg('O Produto do item do pedido devolvido não foi encontrado para devolução: ' + #13 + DMEstoque.WSimilar.FieldByName('COD_PRODUTO').AsString, mtWarning, [mbOK], 0);
           //    Exit;
           //End;
           // seleciona os dados da loja
           FiltraTabela(DMMACS.TLoja, 'LOJA','COD_LOJA', FMenu.LCODLOJA.Caption,'');               

           try
           	MDO.Query.Close; //18/03/2015:  sql na unha
               MDO.Query.SQL.Clear;
               MDO.Query.SQL.Add(' insert into itenspedc (itenspedc.obs, itenspedc.ALIQICMS, itenspedc.baseicms, itenspedc.VLRICMS, itenspedc.REDUCBASEICMS, ');
               MDO.Query.SQL.Add('                         itenspedc.BASEICMSSUBS, itenspedc.vlricmssubs, itenspedc.ALIQIPI, itenspedc.VLRIPI, ');
               MDO.Query.SQL.Add('                         itenspedc.FRETE, itenspedc.EMBPROD, itenspedc.COD_PEDCOMPRA, itenspedc.COD_CST, itenspedc.DATA, itenspedc.ATUEST, ');
               MDO.Query.SQL.Add('                         itenspedc.qtdest, itenspedc.cod_unidade, itenspedc.cod_estoque, ');
               MDO.Query.SQL.Add('                         itenspedc.qtdeprod, itenspedc.valunit, itenspedc.valortotal, itenspedc.descpro, ');
               MDO.Query.SQL.Add('                     itenspedc.cod_lote, itenspedc.qtdbruta, itenspedc.qtddescarte, itenspedc.motivodescarte, itenspedc.aliq_devolvido) ');
               MDO.Query.SQL.Add('             Values (:obs, :ALIQICMS, :baseicms, :VLRICMS, :REDUCBASEICMS, ');
               MDO.Query.SQL.Add('                         :BASEICMSSUBS, :vlricmssubs, :ALIQIPI, :VLRIPI, ');
               MDO.Query.SQL.Add('                         :FRETE, :EMBPROD, :COD_PEDCOMPRA, :COD_CST, :DATA,  :ATUEST,');
               MDO.Query.SQL.Add('                         :qtdest, :cod_unidade, :cod_estoque, ');
               MDO.Query.SQL.Add('                         :qtdeprod, :valunit, :valortotal, :descpro, ');
               MDO.Query.SQL.Add('                         :cod_lote, :qtdbruta, :qtddescarte, :motivodescarte, :aliq_devolvido) ');

               MDO.Query.ParamByName('OBS').AsString := '';
               MDO.Query.ParamByName('ALIQICMS').AsCurrency := DMMACS.TMP.FieldByName('VLR9').AsCurrency;
               MDO.Query.ParamByName('BASEICMS').AsCurrency := DMMACS.TMP.FieldByName('VLR8').AsCurrency;
               MDO.Query.ParamByName('VLRICMS').AsCurrency  := DMMACS.TMP.FieldByName('VLR4').AsCurrency;
               MDO.Query.ParamByName('REDUCBASEICMS').AsCurrency := 0;
               MDO.Query.ParamByName('BASEICMSSUBS').AsCurrency := 0;
               MDO.Query.ParamByName('VLRICMSSUBS').AsCurrency := DMMACS.TMP.FieldByName('VLR5').AsCurrency;
               MDO.Query.ParamByName('ALIQIPI').AsCurrency := DMMACS.TMP.FieldByName('VLR10').AsCurrency;
               MDO.Query.ParamByName('VLRIPI').AsCurrency := DMMACS.TMP.FieldByName('VLR6').AsCurrency;
               MDO.Query.ParamByName('FRETE').AsCurrency := 0;
               MDO.Query.ParamByName('EMBPROD').AsCurrency := 0;
               MDO.Query.ParamByName('COD_PEDCOMPRA').AsInteger := StrToInt(XCodPedido);
               MDO.Query.ParamByName('COD_CST').AsInteger := DMMACS.TMP.FieldByName('DESC2').AsInteger;
               MDO.Query.ParamByName('COD_ESTOQUE').AsInteger := DMEstoque.TEstoque.FieldByName('COD_ESTOQUE').AsInteger;
               MDO.Query.ParamByName('DATA').AsString := DateToStr(Date());
               
               if (DMMACS.TLoja.FieldByName('ATUALIZAESTOQUEPC').AsString <>'1') Then
               	MDO.Query.ParamByName('ATUEST').AsString:='0'
               else
               	MDO.Query.ParamByName('ATUEST').AsString:='1';

               MDO.Query.ParamByName('QTDEST').AsCurrency := DMMACS.TMP.FieldByName('VLR1').AsCurrency;
               MDO.Query.ParamByName('COD_UNIDADE').AsInteger := DMESTOQUE.TSubProd.FieldByName('COD_UNIDVENDA').AsInteger;
				MDO.Query.ParamByName('QTDEPROD').AsCurrency := DMMACS.TMP.FieldByName('VLR1').AsCurrency;
               MDO.Query.ParamByName('COD_LOTE').AsInteger := 0;
               MDO.Query.ParamByName('QTDBRUTA').AsCurrency := 0;
               MDO.Query.ParamByName('QTDDESCARTE').AsCurrency := 0;
               MDO.Query.ParamByName('MOTIVODESCARTE').AsString := ''; 
               MDO.Query.ParamByName('DESCPRO').AsCurrency := 0;
               MDO.Query.ParamByName('VALUNIT').AsCurrency := DMMACS.TMP.FieldByName('VLR2').AsCurrency;
               MDO.Query.ParamByName('VALORTOTAL').AsCurrency := DMMACS.TMP.FieldByName('VLR3').AsCurrency;
               MDO.Query.ParamByName('aliq_devolvido').AsCurrency := DMMACS.TMP.FieldByName('VLR11').AsCurrency;

               if ((DMMACS.TLoja.FieldByName('NAOATUALIZAESTOQUEPC').AsString <> '1') Or (DMMACS.TLoja.FieldByName('NAOATUALIZAESTOQUEPC').AsString = '')) and (DMMACS.TLoja.FieldByName('ATUALIZAESTOQUEPC').AsString = '1') then
               begin
               	DMESTOQUE.TEstoque.Edit;
                   DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency := DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency + DMMACS.TMP.FieldByName('VLR1').AsCurrency;
                   DMESTOQUE.TEstoque.Post;
                End;
                
                DMESTOQUE.TEstoque.Edit;
                DMEstoque.TEstoque.FieldByName('ATUALIZAR').AsString := '1';
                DMESTOQUE.TEstoque.Post;

                MDO.Query.ExecSQL;

                MDO.Transac.CommitRetaining;
                DMESTOQUE.TransacEstoque.CommitRetaining;
                DMMACS.Transaction.CommitRetaining;
           except
                MDO.Transac.RollbackRetaining;
                DMESTOQUE.TransacEstoque.RollbackRetaining;
                DMMACS.Transaction.RollbackRetaining;

                MessageDlg('Um Item não foi inserido na lista.', mtWarning, [mbOK], 0);
           end;

       	DMMACS.TMP.Next;
       end;
       XCodPedido:=IntToStr(FMenu.XCOD_LANCAIXA);
       XCodPessoa := StrToInt(FMenu.XCOD_CLIENTE_DEVOLUCAO);
       
       //Edmar - 12/03/2015 - Adiciona o fornecedor e o numero do documento fiscal no pedido de compra
       try
       	MDO.Query.Close;
           MDO.Query.SQL.Clear;
           MDO.Query.SQL.Add(' UPDATE PEDCOMPRA SET PEDCOMPRA.COD_FORNEC = :FORNEC, PEDCOMPRA.NUMFISCAL_PV_OS = :NUMFISCAL, ');
           MDO.Query.SQL.Add(' PEDCOMPRA.NUMDEV = :TIPO, PEDCOMPRA.COD_PK_DEV = :PK_PV_DEV ');
           MDO.Query.SQL.Add(' WHERE PEDCOMPRA.COD_PEDCOMP = :CODIGO ');
           MDO.Query.ParamByName('FORNEC').AsString := FMenu.XCOD_CLIENTE_DEVOLUCAO;
           MDO.Query.ParamByName('NUMFISCAL').AsString := FMenu.XNUM_FISCAL_DEVOLUCAO;
           MDO.Query.ParamByName('PK_PV_DEV').AsString := FMenu.XCOD_PK_DEVOLVIDO;
           MDO.Query.ParamByName('TIPO').AsString := 'DEV';
           MDO.Query.ParamByName('CODIGO').AsString := XCodPedido;  
           MDO.Query.ExecSQL;

           MDO.Transac.CommitRetaining;
       except
       	MessageDlg('Não foi possível atualizar o pedido de devolução.', mtWarning, [mbOK], 0);
           MDO.Transac.RollbackRetaining;
       end;

       FiltraTabela(DMPESSOA.WFornecedor, 'VWFORNEC', 'COD_FORNEC', FMenu.XCOD_CLIENTE_DEVOLUCAO, '');
       FiltraClienteDevolucao;

       FiltraSlave;
       //Edmar - 08/05/2015 - Desativa o lançamento automático
       FMenu.XLancAutoDev := False;
    end;

    
   //CASO O SISTEMA ESTEJA FORÇANDO A NF O EDIT COM NUMERO NF DEVE SER DESATIVADO
    DBColorEdit3.ReadOnly := False;
    If DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NF'
        Then Begin
        If DMMACS.TLoja.FieldByName('FECHARCOMPRANF').AsString = '1' Then
            DBColorEdit3.ReadOnly := True;
    End; 

   // - 20/04/2009: verificar se arquivo de layout foi salvo anteriormente
    If FileExists('C:\MZR\Arquivos\LayoutGrid\pedcompra.lgm')
        Then
        DBGridCadastroPadrao.Columns.LoadFromFile('C:\MZR\Arquivos\LayoutGrid\pedcompra.lgm');
   // - 20/04/2009: verificar se arquivo de layout foi salvo anteriormente
    If FileExists('C:\MZR\Arquivos\LayoutGrid\pedcompraProdutos.lgm')
        Then
        DBGrid1.Columns.LoadFromFile('C:\MZR\Arquivos\LayoutGrid\pedcompraProdutos.lgm');

    {//Edmar - 31/03/2015 - Ajusta os edits de pesquisa
    if DMMACS.TLoja.FieldByName('NAOATUALIZAESTOQUEPC').AsString = '1' then
    begin//Baroni
    	EdNome.Visible := false;
       EdNome.Left := 454;
       //
       edrazaosocial.Width := 457;
       edrazaosocial.Left := 200;
    end
    else begin
    	edrazaosocial.Width := 249;
       edrazaosocial.Left := 200;
       //
       EdNome.Width := 203;
		EdNome.Left := 454;
    end;}
End;

Procedure TFPedCompra.Etiquetas1Click(Sender: TObject);
Begin
    Inherited;
 //AS INFORMAÇÕES DEVEM SER RETIRADAS DOS PEDIDOS DE COMPRA
 //INFORMA SQL ADEQUADA A IMPRESSAO DE ETIQUETAS
    DMESTOQUE.TRel.CLOSE;
    DMESTOQUE.TRel.SQL.Clear;
    DMESTOQUE.TRel.SQL.Add(' Select itenspedc.cod_itenspedc, subproduto.COR, produto.descricao AS GRADE, subproduto.codprodfabr AS CODFAB,  estoque.ultcompra as DTCAD,  SUBPRODUTO.especificacao, subproduto.descricao AS DESCR, subproduto.fabricante as FABRICANTE, ');
    DMESTOQUE.TRel.SQL.Add(' estoque.vendvarv as PRECO, subproduto.codbarra AS CODBARRA, SubProduto.Marca as MARCA, subproduto.localestante AS CODCOMPOSTO, itenspedc.qtdeprod As QTD, itenspedc.qtdeexp AS QTDEXPORTADA, subproduto.contrint, ');
    DMESTOQUE.TRel.SQL.Add(' itenspedc.qtdeexp, subproduto.cor, estoque.vendvarp as PRECOPRAZO, subproduto.altura AS ALTURA, subproduto.LARGURA AS LARGURA, subproduto.composicao AS COMPOSICAO ');
    DMESTOQUE.TRel.SQL.Add(' from itenspedc');
    DMESTOQUE.TRel.SQL.Add('  left join estoque ON itenspedc.cod_estoque = estoque.cod_estoque');
    DMESTOQUE.TRel.SQL.Add('  left join subproduto ON estoque.cod_subprod = subproduto.cod_subproduto');
    DMESTOQUE.TRel.SQL.Add('left join produto on subproduto.cod_produto = produto.cod_produto');
    DMESTOQUE.TRel.SQL.Add(' where itenspedc.cod_pedcompra=:CODPEDC');
    DMESTOQUE.TRel.ParamByName('CODPEDC').AsString := DMENTRADA.WPedc.FieldByName('COD_PEDCOMP').AsString;
    DMESTOQUE.TRel.SQL.Add(' order by subproduto.descricao ');
    DMESTOQUE.TRel.SQL.Text;
    DMESTOQUE.TRel.Open;
    If DMMACS.TLoja.FieldByName('ETPERSONAL').AsString = '1'
        Then Begin
        PrnEtiqPerson(True, 0, -1);
    End;
    If DMMACS.TLoja.FieldByName('ETPERSONAL').AsString = '2'
        Then Begin
        PrnEtiqPerson02(True, 0, -1);
    End;
   //Paulo 13/12/2010: Para impressão de etiquetas de ótica
    If DMMACS.TLoja.FieldByName('ETPERSONAL').AsString = '3'
        Then Begin
        PrnEtiqPersonalOtica(True, 0, -1);
    End;

    If DMMACS.TLoja.FieldByName('ETPERSONAL').AsString = '0'
        Then Begin
        If DMMACS.TLoja.FieldByName('TIPOETPROD').AsString = '2X12' Then
            PrnEtiq2X12(True, 0, -1);
        If DMMACS.TLoja.FieldByName('TIPOETPROD').AsString = 'T3C' Then
            PrnEtiqT3C(True, 0, -1);
        If DMMACS.TLoja.FieldByName('TIPOETPROD').AsString = 'Z2C' Then
            PrnEtiqZ2C(True, 0, -1);
        If DMMACS.TLoja.FieldByName('TIPOETPROD').AsString='A1C' Then
            PrnEtiqA1C(True, 0, -1);
    End;
End;

Procedure TFPedCompra.DBGrid2DrawDataCell(Sender: TObject;
    Const Rect: TRect; Field: TField; State: TGridDrawState);
Begin
    Inherited;
{	if DMENTRADA.TPEDC.FieldByName ('SITUACAO').AsString='ABERTO' then
   begin
    DBGrid2.Canvas.Font.Color := clRed;
    DBGrid2.Canvas.Font.Style := [fsBold];
//  		DBGrid2.DefaultDrawDataCell(Rect, TFIELD, State);
  DefaultDrawColumnCell(Rect, 10, 0, State);
       DBGrid2.OnDrawDataCell
   end;}
End;

Procedure TFPedCompra.DBGridCadastroPadraoDrawDataCell(Sender: TObject;
    Const Rect: TRect; Field: TField; State: TGridDrawState);
Begin
//  inherited;
    MessageDlg('OK PEDCOMPRA', mtWarning, [mbOK], 0);

End;

Procedure TFPedCompra.BtnFiltrarClick(Sender: TObject);
Var
    msg: String;
Begin
//  inherited;
    If (XView.FieldByName('SITUACAO').AsString = 'ABERTO')
        Then Begin
        Mensagem('OPÇÃO BLOQUEADA', 'É necessário que o pedido esteja fechado antes da impressão fiscal. Antes de fechar recomendamos que confira todas as informações do pedido.', '', 1, 1, False, 'a');
        Exit;
    End;

   // - 15/01/2009:  CONTROLE DE ACESSO
    If ControlAccess('EMITDOCFISC', 'M') = False Then
        Exit;

   // - 15/01/2009:  INFORMAÇÕES NECESSÁRIAS PARA CONTROLES DE CÁLCULOS FISCAIS
    If FiltraTabela(DMCAIXA.TCaixa, 'CAIXA', 'COD_CAIXA', FMenu.LCODCAIXA.Caption, '') = True
        Then Begin
      // - 15/01/2009:  o caixa em questão para verificar se suas configurações são de Nota Fiscal
        If (DMCAIXA.TCaixa.FieldByName('tipocupom').AsString <> 'NF') And (DMCAIXA.TCaixa.FieldByName('tipocupom').AsString <> 'NFe')
            Then Begin
            Mensagem('OPÇÃO BLOQUEADA', 'O Caixa selecionado não emite Nota Fiscal', '', 1, 1, False, 'a');
        End;
    End;
    If FiltraTabela(DMENTRADA.TPedC, 'PEDCOMPRA', 'cod_pedcomp', XView.FieldByName('cod_pedcomp').AsString, '') = True
        Then Begin
        // - 14/01/2009: ALTERADO PARA SER USADO COM NFE
        If (DMENTRADA.TPedC.FieldByName('FISCO').AsString = 'NF') Or (DMENTRADA.TPedC.FieldByName('FISCO').AsString = 'NFe') And ((XView.FieldByName('NUMDEV').AsString <> '') Or (FMenu.XNotaEntrada = True))
            Then Begin
            If Mensagem('A T E N Ç Ã O', 'Deseja realmente Imprimir Documento Fiscal para o pedido' + #13 + 'Nº ' + XView.FieldByName('NUMPED').AsString + '?', '', 2, 3, False, 'c') = 2
                Then Begin
                If FiltraTabela(DMENTRADA.TFiscPC, 'DOCFIS', 'COD_PEDIDO', XView.FieldByName('COD_PEDCOMP').AsString, '') = True
                    Then Begin
                    If (DMENTRADA.TFiscPC.FieldByName('NFESTATUS').AsString <> '1') And (DMENTRADA.TFiscPC.FieldByName('NFESTATUS').AsString <> '3') And (DMENTRADA.TFiscPC.FieldByName('NFESTATUS').AsString <> '4')
                        Then Begin
                        If FMenu.XNotaEntrada = True
                            Then Begin
                             //Se a nota for de emissão propria deve gerar o documento fiscal
                            FiltraTabela(XView, 'VWPEDC', 'COD_PEDCOMP', XView.FieldByName('COD_PEDCOMP').AsString, '');
                            FMenu.TIPOREL := '';
                            FMenu.TIPOAUX := 'ENTNFPROP';
                            FMenu.XNotaEntrada := True;
                            AbreFiscal;
                        End
                        Else Begin
                              //Paulo 30/08/2010: Abre a tela de fiscal para imprimir o cupom fiscal
                            FiltraTabela(XView, 'VWPEDC', 'COD_PEDCOMP', XView.FieldByName('COD_PEDCOMP').AsString, '');
                            FMenu.TIPOREL := 'RNF';
                            FMenu.TIPOAUX := 'DEVNF';
                            FMenu.XNotaEntrada := True;
                            AbreFiscal;
                        End;
                    End
                    Else Begin
                        Mensagem('OPÇÃO BLOQUEADA', 'A Nota Fiscal do Pedido já foi enviada ou cancelada!', '', 1, 1, False, 'a');
                    End;
                End
                Else Begin
                    If FMenu.XNotaEntrada = True
                        Then Begin
                    //Se a nota for de emissão propria deve gerar o documento fiscal
                        FiltraTabela(XView, 'VWPEDC', 'COD_PEDCOMP', XView.FieldByName('COD_PEDCOMP').AsString, '');
                        FMenu.TIPOREL := '';
                        FMenu.TIPOAUX := 'ENTNFPROP';
                        FMenu.XNotaEntrada := True;
                        AbreFiscal;
                    End
                    Else Begin
                        Mensagem('OPÇÃO BLOQUEADA', 'Documento Fiscal do Pedido não encontrado!', '', 1, 1, False, 'a');
                    End;
                End;
                LiberaDados;
                Exit;
            End;
        End;
    End;
End;

Procedure TFPedCompra.EtiquetaCdFabricante1Click(Sender: TObject);
Begin
    Inherited;
 //AS INFORMAÇÕES DEVEM SER RETIRADAS DOS PEDIDOS DE COMPRA
 //INFORMA SQL ADEQUADA A IMPRESSAO DE ETIQUETAS
    DMESTOQUE.TRel.CLOSE;
    DMESTOQUE.TRel.SQL.Clear;
    DMESTOQUE.TRel.SQL.Add(' Select itenspedc.cod_itenspedc, produto.descricao AS GRADE, subproduto.codprodfabr AS CODFAB,  SUBPRODUTO.especificacao, subproduto.descricao AS DESCR,  subproduto.fabricante as FABRICANTE, itenspedc.qtdeexp, ');
    DMESTOQUE.TRel.SQL.Add(' estoque.vendvarv as PRECO, subproduto.codbarra AS CODBARRA, SubProduto.Marca as MARCA, subproduto.localestante AS CODCOMPOSTO, itenspedc.qtdeprod As QTD, subproduto.contrint, ');
    DMESTOQUE.TRel.SQL.Add(' estoque.vendvarp as PRECOPRAZO, subproduto.cor,  estoque.ultcompra as DTCAD, subproduto.altura AS ALTURA, subproduto.LARGURA AS LARGURA, subproduto.composicao AS COMPOSICAO ');
    DMESTOQUE.TRel.SQL.Add(' from itenspedc ');
    DMESTOQUE.TRel.SQL.Add(' left join estoque ON itenspedc.cod_estoque = estoque.cod_estoque ');
    DMESTOQUE.TRel.SQL.Add(' left join subproduto ON estoque.cod_subprod = subproduto.cod_subproduto ');
    DMESTOQUE.TRel.SQL.Add(' LEFT JOIN PRODUTO ON PRODUTO.COD_PRODUTO = SUBPRODUTO.COD_PRODUTO ');
    DMESTOQUE.TRel.SQL.Add('where itenspedc.cod_pedcompra=:CODPEDC ');
    DMESTOQUE.TRel.ParamByName('CODPEDC').AsString := DMENTRADA.WPedc.FieldByName('COD_PEDCOMP').AsString;
    DMESTOQUE.TRel.SQL.Add(' order by subproduto.descricao ');
    DMESTOQUE.TRel.SQL.Text;
    DMESTOQUE.TRel.Open;
    If DMMACS.TLoja.FieldByName('ETPERSONAL').AsString = '1'
        Then Begin
        PrnEtiqPerson(False, 1, -1);
    End;
    If DMMACS.TLoja.FieldByName('ETPERSONAL').AsString = '2'
        Then Begin
        PrnEtiqPerson02(False, 1, -1);
    End;
    If DMMACS.TLoja.FieldByName('ETPERSONAL').AsString = '0'
        Then Begin
           If DMMACS.TLoja.FieldByName('TIPOETPROD').AsString='2X12' Then
               PrnEtiq2X12(True, 1, -1);
           If DMMACS.TLoja.FieldByName('TIPOETPROD').AsString='T3C' Then
               PrnEtiqT3C(True, 1, -1);
           If DMMACS.TLoja.FieldByName('TIPOETPROD').AsString='Z2C' Then
               PrnEtiqZ2C(True, 1, -1);
           If DMMACS.TLoja.FieldByName('TIPOETPROD').AsString='A1C' Then
               PrnEtiqA1C(True, 1, -1);
    End;

End;


Procedure TFPedCompra.BitBtn6Click(Sender: TObject);
Begin
    Inherited;
    PComisPedC.Visible := False;
End;

Procedure TFPedCompra.BitBtn9Click(Sender: TObject);
Begin
    Inherited;
    PComisPedC.Visible := True;
    PComisPedC.BringToFront;
    DbComis.SetFocus;
End;

Procedure TFPedCompra.BtnTrocaClick(Sender: TObject);
//begin
//	pmCancelamentos.Popup(Left + PConsulta.left + Painel.left + BtnTroca.Left, top + PConsulta.Top + Painel.top + BtnTroca.Top + BtnTroca.Height);
Var
    XCodPedidoTroca: String;
    XCODLANEST: Integer;
    XQTDLOTE: Real;
    XJust, XChave, XProtocolo, XNovoProtocolo: String; // - 15/01/2009:  justificativa, nºchave, nºprotocolo do cancelamento nfe
    XCont: boolean; // - 15/01/2009: controle  nfe
    msg, XNumPedido, msgper: String;
    XNFeNota: Boolean; // - 15/01/2009: se for do tipo NFe estara setado como true
Begin
    Inherited;
    If XView.FieldByName('SITUACAO').AsString = 'CANCELADO'
        Then Begin
        Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'Este  pedido já se encontra Cancelado!', '', 1, 1, False, 'a');
        Exit;
    End;

    If XView.FieldByName('SITUACAO').AsString = 'ABERTO'
        Then Begin
        Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'Este pedido não se encontra fechado! Então você pode clicar em consultar e alterar suas informações', '', 1, 1, False, 'a');
        Exit;
    End;

 //EFETUA CONTROLE DE ACESSO
    If ControlAccess('CANCPEDFECH', 'M') = False Then
        Exit;

    msgper := '';

    If FiltraTabela(DMENTRADA.TFiscPC, 'DOCFIS', 'COD_DOCFIS', '', '(docfis.cod_pedido=' + #39 + XView.FieldByName('COD_PEDCOMP').AsString + #39 + ')') = True
        Then Begin
        If (DMENTRADA.TFiscPC.FieldByName('BASCALSUBS').AsCurrency > 0) And (DMENTRADA.TFiscPC.FieldByName('VLRICMSUBS').AsCurrency > 0)
            Then Begin
            Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'O cáculo referente a média ponderada da substituição tributária já foi cálculada, cancelando o pedido e realizando o fechamento novamente as médias serão calculadas deixandos os dados incosistentes.', '', 1, 1, False, 'a');
        End;
    End;

    If Mensagem('A T E N Ç Ã O', 'Deseja realmente Cancelar o fechamento do pedido' + #13 + 'Nº ' + XView.FieldByName('NUMPED').AsString + '?', '', 2, 3, False, 'c') = 2
        Then Begin
        XCodPedidoTroca := XView.FieldByName('COD_PEDCOMP').AsString;
        If FiltraTabela(DMENTRADA.TPedC, 'PEDCOMPRA', 'COD_PEDCOMP', XCodPedidoTroca, '') = True
            Then Begin

            // - 15/01/2009: SE O PEDIDO FOR DE DEVOLUÇÃO E EM LOJA ESTAR SETADO A CERTIFICACAO É DO TIPO NFE
            If (DMENTRADA.TPedC.FieldByName('FISCO').AsString = 'NFe') //(XView.FieldByName('NUMDEV').AsString <> '') and (DMMACS.TLoja.FieldByName('NFECERTIFICACAO').AsString <> '')
                Then Begin
                XNFeNota := True;
                If FiltraTabela(DMENTRADA.TFiscPC, 'DOCFIS', 'COD_PEDIDO', XCodPedidoTroca, '') = True
                    Then Begin
                    If (DMENTRADA.TFiscPC.FieldByName('NFESTATUS').AsString <> '3')
                        Then Begin
                        If (DMENTRADA.TFiscPC.FieldByName('NFESTATUS').AsString = '1')
                            Then Begin

                            // - 15/01/2009:  verifica se a chave nfe e se é valida
                            XChave := DMENTRADA.TFiscPC.FieldByName('NFECHAVE').AsString;
                            If (Length(XChave) <> 44) Or (XChave = '')
                                Then Begin
                                Mensagem('   A T E N Ç Ã O   ', 'Chave de Acesso da nota não encontrada ou inválida!', '', 1, 1, false, 'I');
                                Exit;
                            End;

                            // - 15/01/2009:  verifica se há um número de protocolo
                            XProtocolo := DMENTRADA.TFiscPC.FieldByName('NFEPROTOCOLO').AsString;
                            If (Length(XProtocolo) <> 15) Or (XProtocolo = '')
                                Then Begin
                                Mensagem('   A T E N Ç Ã O   ', 'Número de protocolo da nota não encontrada ou inválida!', '', 1, 1, false, 'I');
                                Exit;
                            End;

                            // - 15/01/2009:  pede ao usuario justificativa do cancelamento
                            XCont := True;
                            While XCont Do
                            Begin
                                XJust := '';
                                XCont := InputQuery('A t e n ç ã o !', 'INFORME A JUSTIFICATIVA DO CANCELAMENTO:', XJust);
                                If XCont
                                    Then Begin
                                    If Length(XJust) < 15
                                        Then Begin
                                        Mensagem('   A T E N Ç Ã O   ', 'Informe uma justificativa com pelo menos 15 (quinze) caracteres.', '', 1, 1, false, 'I');
                                        XCont := True;
                                    End Else
                                        XCont := False;
                                End Else
                                    Exit; // usuario cancelou
                            End;

                           // - 15/01/2009:   tira caracteres inválidos
                            XJust := ValidaAcentos(XJust);

                            // - 15/01/2009:  lembrar de apagar abaixo (a linha de baixo e essa)
                            //ShowMessage('Numero da chave: '+XChave+'  Numero do protocolo: '+XProtocolo+'   Justificativa: '+XJust);


                            FMzrNfe := TFMzrNfe.Create(FMzrNfe);
                            FMzrNfe := Nil;
                        End
                        Else Begin
                            Mensagem('OPÇÃO BLOQUEADA', 'A Nota Fiscal do Pedido não foi enviada!', '', 1, 1, False, 'a');
                            Exit;
                        End;
                    End
                    Else Begin
                        Mensagem('OPÇÃO BLOQUEADA', 'A Nota Fiscal do Pedido já foi Cancelada', '', 1, 1, False, 'a');
                        Exit;
                    End;
                End
                Else Begin
                    Mensagem('OPÇÃO BLOQUEADA', 'Documento Fiscal do Pedido não encontrado!', '', 1, 1, False, 'a');
                    Exit;
                End
            End
            Else Begin
                XNFeNota := false;
            End;
            If CancelLanPedC(XCodPedidoTroca) = True
                Then Begin //Se foi possível cancelar/estornar todos os lançamentos realizados pelo pedido
                If Not XNFeNota
                    Then Begin
                    DMENTRADA.TPedC.EDIT;
                    DMENTRADA.TPedC.FieldByName('SITUACAO').AsString := 'ABERTO';
                    DMENTRADA.TPedC.FieldByName('FATURADO').AsString := '0';
                    DMENTRADA.TPedC.Post;
                  //REGISTRA COMANDO DO USUARIO
                    Registra('PEDIDO COMPRA', 'CANCELA FECHAMENTO', DMENTRADA.TPedC.FieldByName('DTPEDCOMP').AsString, 'Nº ' + DMENTRADA.TPedC.FieldByName('NUMPED').AsString, 'Valor: ' + DMENTRADA.TPedC.FieldByName('VALOR').AsString);
                    DMENTRADA.IBT.CommitRetaining;
                    If FiltraTabela(XView, XSQLVIEW, XPkTabela, XCodPedidoTroca, '') = True
                        Then Begin
                        BtnConsultar.Click;
                    End;
                End
                Else Begin
                  // - 15/01/2009: se for NFe
                    DMENTRADA.TPedC.EDIT;
                    DMENTRADA.TPedC.FieldByName('SITUACAO').AsString := 'CANCELADO';
                    DMENTRADA.TPedC.Post;
                  //REGISTRA COMANDO DO USUARIO
                    Registra('PEDIDO COMPRA', 'CANCELA FECHAMENTO NFe', DMENTRADA.TPedC.FieldByName('DTPEDCOMP').AsString, 'Nº ' + DMENTRADA.TPedC.FieldByName('NUMPED').AsString, 'Valor: ' + DMENTRADA.TPedC.FieldByName('VALOR').AsString);
                    DMENTRADA.IBT.CommitRetaining;
                    LiberaDados;
                End;

                //Edmar - 07/10/2014 - Verifica se não atualiza estoque direto pelo PC
                if (DMMACS.TLoja.FieldByName('ATUALIZAESTOQUEPC').AsString = '0') then
                begin
                	try
                    //Edmar - 07/10/2014 - Filtra buscando os itens do PC
                    if not FiltraTabela(DMENTRADA.TItemPC, 'ITENSPEDC', 'COD_PEDCOMPRA', DMENTRADA.TPedC.FieldByName('COD_PEDCOMP').AsString, '') then
                    	exit;
                    DMENTRADA.TItemPC.First;

                    while not DMENTRADA.TItemPC.Eof do
                    begin
                    	//Edmar - 07/10/2014 - Filtra buscando o estoque do item em questão
                       if not FiltraTabela(DMESTOQUE.TEstoque, 'ESTOQUE', 'COD_ESTOQUE', DMENTRADA.TItemPC.FieldByName('COD_ESTOQUE').AsString, '') then
                       	Exit;

                       DMESTOQUE.TEstoque.Edit;
                       //Edmar - 07/10/2014 - Se o item possui quantidade de exportação
                       if DMENTRADA.TItemPC.FieldByName('QTDEEXP').AsString <> '' then
                       	//Faz a diferença entr a quantidade real e a exportada e joga no estoque do Produto
							DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency := DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency -
                           	(DMENTRADA.TItemPC.FieldByName('QTDEPROD').AsCurrency - DMENTRADA.TItemPC.FieldByName('QTDEEXP').AsCurrency)
                       else
                    		DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency := DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency - DMENTRADA.TItemPC.FieldByName('QTDEPROD').AsCurrency;
                       DMESTOQUE.TEstoque.Post;

                       //Edmar - 07/10/2014 - Marca o item como estoque não atualizado
                       DMENTRADA.TItemPC.Edit;
                       DMENTRADA.TItemPC.FieldByName('ATUEST').AsString := '0';
                       DMENTRADA.TItemPC.Post;

                       DMENTRADA.TItemPC.Next;
                    end;
                    DMESTOQUE.TransacEstoque.CommitRetaining;
                    DMENTRADA.IBT.CommitRetaining;
                   except
                   	on E : Exception do
                       begin
                         ShowMessage('[2419] Ocorreu um problema ao atualizar o Estoque '+E.Message);
                         DMESTOQUE.TransacEstoque.RollbackRetaining;
                         DMENTRADA.IBT.RollbackRetaining;
                       end;
                   end;
                End;
            End
            Else Begin
                exit;
            End;
        End;
    End;
End;



Procedure TFPedCompra.frmFormPagBTNOPENClick(Sender: TObject);
Begin
    Inherited;
    FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', '', '', ' ORDER BY NOME'); //LIBERA TODOS OS REGISTROS PARA CONSULTA
    FMenu.XPreSel := True;
    FMenu.XFieldPesqPreSel := 'COD_INTERNO';
    FMenu.XCodPesqPresSel := FrmDestinatario.EDCodigo.Text;
    If (DMMACS.TLoja.FieldByName('ATIVIDADE').AsString<>'EQUIPE') and (DMMACS.TLoja.FieldByName('ATIVIDADE').AsString<>'MANUTENÇÃO')
    Then Begin
        If AbrirForm(TFCliente, FCliente, 1) = 'Selected'
        Then Begin
            XCod_Destinatario := DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;
            If FiltraTabela(DMPESSOA.TCliente, 'CLIENTE', 'COD_CLIENTE', IntToStr(XCODPESSOA), '') = True
                Then Begin
                If DMPESSOA.TCliente.FieldByName('ATUALIZAR').AsString = '1' Then
                    Mensagem('Mzr Sistemas - INFORMAÇÃO', 'As informações deste cliente devem ser atualizadas!', '', 1, 1, false, 'i');
            End;
            FrmDestinatario.EdDescricao.Text := DMPESSOA.WCliente.FieldByName('NOME').AsString;
            FrmDestinatario.EDCodigo.Text := DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString;
            xnomedestinatario := DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString;
        End;
    End
    Else Begin
        If AbrirForm(TFordemMec, FordemMec, 1) = 'Selected'
        Then Begin
            XCod_Destinatario := DMServ.WOrdem.FieldByName('COD_ORDEM').AsInteger;
            FrmDestinatario.EdDescricao.Text := DMServ.WOrdem.FieldByName('CLIENTE').AsString;
            FrmDestinatario.EDCodigo.Text := DMServ.WOrdem.FieldByName('NUMERO').AsString;
            xnomedestinatario := DMServ.WOrdem.FieldByName('CLIENTE').AsString;
        End;
    End;
End;

Procedure TFPedCompra.FrmDestinatarioEDCodigoKeyPress(Sender: TObject;
    Var Key: Char);
Begin
    Inherited;
    If Key = #13
        Then Begin
        If FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_INTERNO', '', ' COD_INTERNO=' + #39 + FrmDestinatario.EDCodigo.Text + #39) = True
            Then Begin //CASO CONSEGUIU SELECIONAR CLIENTE
            XCod_Destinatario := DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;
            FrmDestinatario.EdDescricao.Text := DMPESSOA.WCliente.FieldByName('NOME').AsString;
            FrmDestinatario.EDCodigo.Text := DMPESSOA.WCliente.FieldByName('CPFCNPJ').AsString;
            xnomedestinatario := DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString;
        End
        Else Begin
            XCod_Destinatario := -1;
            FrmDestinatario.EdDescricao.Text := '';
            FrmDestinatario.EDCodigo.Text := '';
            xnomedestinatario := '';
        End;
    End;
End;

Procedure TFPedCompra.ConsultaNDocFiscal1Click(Sender: TObject);
Begin
    Inherited;
    FiltraTabela(DMMACS.TEmpresa, 'EMPRESA', 'COD_EMPRESA', FMenu.LCODEMPRESA.Caption, '');
    FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
    FiltraTabela(DMCAIXA.TCaixa, 'CAIXA', 'COD_CAIXA', FMenu.LCODCAIXA.Caption, '');
    If DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NF' Then
        MessageDlg('Nº Próx. NF: ' + DMMACS.TEmpresa.FieldByName('PROX_NF').AsString, mtInformation, [mbOK], 0)
    Else
        MessageDlg('Este recurso esta disponível apenas para Notas Fiscais.', mtWarning, [mbOK], 0);
End;

Procedure TFPedCompra.AlteraNDocFiscal1Click(Sender: TObject);
Var
    NovoNum: String;
    Flag: Integer;
Begin
    Inherited;
    Flag := 0;
    While Flag = 0 Do
    Begin
        If InputQuery('ALTERANDO O Nº DA NF', 'Informe o novo Nº para próxima Nota Fiscal', NovoNum) = True
            Then Begin
            Try
                StrToInt(NovoNum);
               //VERIFICA C JAH EXISTE DOCUMENTO IMPRESSO EM VENDAS
                DMMACS.TALX.Close;
                DMMACS.TALX.SQL.Clear;
                DMMACS.TALX.SQL.Add(' select * from docfissaida ');
                DMMACS.TALX.SQL.Add(' where docfissaida.numdocfis=:CODIGO ');
                DMMACS.TALX.ParamByName('CODIGO').AsString := NovoNum;
                DMMACS.TALX.Open;
                If Not DMMACS.TALX.IsEmpty
                    Then Begin
                    MessageDlg('Este Nº de Documento já foi impresso!!!', mtWarning, [mbOK], 0);
                    Exit;
                End;
               //VERIFICA C JAH EXISTE DOCUMENTO IMPRESSO EM COMPRAS
                DMMACS.TALX.Close;
                DMMACS.TALX.SQL.Clear;
                DMMACS.TALX.SQL.Add(' select * from docfis ');
                DMMACS.TALX.SQL.Add(' where (docfis.numdocfis=:CODIGO)  AND (docfis.empemit=' + #39'1' + #39 + ')  ');
                DMMACS.TALX.ParamByName('CODIGO').AsString := NovoNum;
                DMMACS.TALX.Open;
                If Not DMMACS.TALX.IsEmpty
                    Then Begin
                    MessageDlg('Este Nº de Documento já foi impresso!!!', mtWarning, [mbOK], 0);
                    Exit;
                End;
                Flag := 1;
                FiltraTabela(DMMACS.TEmpresa, 'EMPRESA', 'COD_EMPRESA', FMenu.LCODEMPRESA.Caption, '');
                DMMACS.TEmpresa.Edit;
                DMMACS.TEmpresa.FieldByName('PROX_NF').AsString := NovoNum;
                DMMACS.TEmpresa.Post;
                DMMACS.Transaction.CommitRetaining;
            Except
                MessageDlg('O novo Nº não foi aprovado!' + #13 + #10 + 'Entre com outro valor inteiro.', mtWarning, [mbOK], 0);
            End;
        End
        Else Begin
            Flag := 1;
        End;
    End;
End;

Procedure TFPedCompra.EdNumDocKeyDown(Sender: TObject; Var Key: Word;
    Shift: TShiftState);
Begin
    Inherited;
    Try
        If Key = VK_RETURN
            Then Begin //pressionado enter, consultar
            If XTab = True Then
                FiltraTabela(XTabela, XSQLTABELA, 'NUMFISCAL', '', '(upper(NUMFISCAL) like upper(' + #39 + EdNumDoc.Text + '%' + #39 + ')) ORDER BY NUMFISCAL')
            Else
                FiltraTabela(XView, XSQLVIEW, 'NUMFISCAL', '', '(upper(NUMFISCAL) like upper(' + #39 + EdNumDoc.Text + '%' + #39 + ')) ORDER BY NUMFISCAL');
        End;
        If Key = VK_ESCAPE
            Then Begin //pressionado esc, liberar
            LiberaDados;
        End;
    Except
    End;
End;

// - 27/02/2009: procedure que busca dados de conversão unitária

Procedure TFPedCompra.convertunid;
Var
    x: Integer; // - 27/02/2009: controle pk tmp por causa da conversão unitaria
Begin
// - 27/02/2009: limpa TMP
    DMGEOGRAFIA.TAlx.Close;
    DMGEOGRAFIA.TAlx.SQL.Clear;
    DMGEOGRAFIA.TAlx.SQL.Add('delete from TMP');
    DMGEOGRAFIA.TAlx.ExecSQL;
    DMGEOGRAFIA.IBT.CommitRetaining;
    FiltraTabela(DMMACS.TMP, 'TMP', '', '', '');

    FiltraTabela(DMESTOQUE.TSubProd, 'SUBPRODUTO', 'COD_SUBPRODUTO', DMESTOQUE.TEstoque.FieldByName('COD_SUBPROD').AsString, '');

    DMESTOQUE.Alx.Close;
    DMESTOQUE.Alx.SQL.Clear;
    DMESTOQUE.Alx.SQL.Add('select * from convunid');
    DMESTOQUE.Alx.SQL.Add('left join unidade ON convunid.cod_unident = unidade.cod_unidade');
    DMESTOQUE.Alx.SQL.Add('Where (convunid.cod_unident=:UNIDENT or convunid.cod_unident=:UNIDSAI)');
    DMESTOQUE.Alx.ParamByName('UNIDENT').AsString := DMESTOQUE.TSubProd.FieldByName('COD_UNIDCOMPRA').AsString;
    DMESTOQUE.Alx.ParamByName('UNIDSAI').AsString := DMESTOQUE.TSubProd.FieldByName('COD_UNIDVENDA').AsString;
    DMESTOQUE.Alx.Open;
    DMESTOQUE.Alx.First;

    x := 1;
    While Not DMESTOQUE.Alx.Eof Do
    Begin
        DMMACS.TMP.Insert;
        DMMACS.TMP.FieldByName('DESC1').AsString := DMESTOQUE.Alx.fieldByName('DESC_UNID').AsString;
        DMMACS.TMP.FieldByName('DESC3').AsString := DMESTOQUE.Alx.fieldByName('COD_CONVUNID').AsString;
        DMMACS.TMP.FieldByName('VLR1').AsString := DMESTOQUE.Alx.fieldByName('QTDCONVERT').AsString;
        DMMACS.TMP.FieldByName('VLR2').AsString := DMESTOQUE.Alx.fieldByName('COD_UNIDSAI').AsString;
        DMMACS.TMP.FieldByName('VLR3').AsString := DMESTOQUE.Alx.fieldByName('COD_UNIDADE').AsString;
        DMMACS.TMP.FieldByName('COD_TMP').AsInteger := x;
        x := x + 1;
        DMMACS.TMP.Post;
        DMESTOQUE.Alx.Next;
    End;

    DMMACS.Transaction.CommitRetaining;

    DMESTOQUE.Alx.Close;
    DMESTOQUE.Alx.SQL.Clear;
    DMESTOQUE.Alx.SQL.Add('select * from convunid');
    DMESTOQUE.Alx.SQL.Add('left join unidade ON convunid.cod_unidsai = unidade.cod_unidade');
    DMESTOQUE.Alx.SQL.Add('Where convunid.cod_unidsai=:UNIDSAI');
    DMESTOQUE.Alx.ParamByName('UNIDSAI').AsString := DMESTOQUE.TSubProd.FieldByName('COD_UNIDVENDA').AsString;
    DMESTOQUE.Alx.Open;
    DMESTOQUE.Alx.First;

    FiltraTabela(DMMACS.TMP, 'TMP', '', '', '');

    While Not DMESTOQUE.Alx.Eof Do
    Begin
        If FiltraTabela(DMMACS.TMP, 'TMP', 'DESC3', DMESTOQUE.Alx.FieldByName('COD_CONVUNID').AsString, '') = true
            Then Begin
            DMMACS.TMP.Edit;
            DMMACS.TMP.FieldByName('DESC2').AsString := DMESTOQUE.Alx.fieldByName('DESC_UNID').AsString;
            DMMACS.TMP.Post;
        End;
        DMESTOQUE.Alx.Next;
    End;

    DMMACS.Transaction.CommitRetaining;
    DMMACS.IBTCodigo.CommitRetaining;

    DMESTOQUE.Alx.Close;
    DMESTOQUE.Alx.SQL.Clear;
    DMESTOQUE.Alx.SQL.Add('select tmp.desc1 AS SIGLA_UNID, tmp.desc2 AS SIGLA_UNID1, tmp.desc3 AS COD_CONVUNID, ');
    DMESTOQUE.Alx.SQL.Add('tmp.vlr1 AS QTDCONVERT, tmp.vlr2 AS COD_UNIDSAI, tmp.vlr3 AS COD_UNIDADE from tmp');
    DMESTOQUE.Alx.SQL.Add('where tmp.desc2 <> :DESC');
    DMESTOQUE.Alx.ParamByName('DESC').AsString := '';
    DMESTOQUE.Alx.Open;
    DBGridConvert.DataSource := DMESTOQUE.DSAlx;
End;

Procedure TFPedCompra.EDQuantidadeExit(Sender: TObject);
Var
    key: Char;

Begin
    Inherited;
    If XFocu = 'FQTDCONVERT'
        Then Begin

       // SE EM LOJA ESTIVER CONFIGURADO PARA FAZER CONVERSÕES
        If DMMACS.TLoja.FieldByName('CONVERTUNID').AsString = '1'
            Then Begin

            convertunid;


           // mostrar painel para selecionar conversões
            LEstoque.Visible := false;
            Label21.Visible := false;
            PQtdConvert.Visible := True;
            PQtdConvert.BringToFront;
            PQtdConvert.Repaint;


            If DMESTOQUE.Alx.IsEmpty
                Then Begin
                EdQtdConvert.ValueNumeric := EDQuantidade.ValueNumeric;
                EdQtdConvert.SetFocus;
            End
            Else Begin
                DBGridConvertKeyPress(Self, key);
                DBGridConvert.SetFocus;
            End;

        End
        Else Begin
            EdQtdConvert.ValueNumeric := EDQuantidade.ValueNumeric;
        End;
    End;
    XFocu := '';
End;

Procedure TFPedCompra.PSelectLoteExit(Sender: TObject);
Begin
    Inherited;
    If PQtdConvert.Visible = True Then
        EdQtdConvert.SetFocus;
End;

Procedure TFPedCompra.EdQtdConvertKeyDown(Sender: TObject; Var Key: Word;
    Shift: TShiftState);
Begin
    If Key = VK_RETURN
        Then Begin //pressionado enter, consultar
        If (EdQtdConvert.ValueNumeric > 0) And (Not DMESTOQUE.Alx.IsEmpty)
            Then Begin
            XCodUnidItenProd := DMESTOQUE.Alx.FieldByName('COD_CONVUNID').AsInteger;
            PQtdConvert.Visible := False;
            PAliqCusto.Tag := 1;
            EDValUnit.SetFocus;
            LQtdConvert.Visible := True;
            LQtdConvert.BringToFront;
            LQtdConvert.Caption := EdQtdConvert.Text;
            xqtdconv := EdQtdConvert.ValueNumeric;
        End;
    End;
    If Key = VK_ESCAPE
        Then Begin
        PQtdConvert.Visible := False;
        EDValUnit.SetFocus;
    End;
    Inherited;
    LEstoque.Visible := true;
    Label21.Visible := true;
End;

Procedure TFPedCompra.EDQuantidadeEnter(Sender: TObject);
Begin
    Inherited;
    XFocu := 'FQTDCONVERT';
End;

Procedure TFPedCompra.EDValUnitEnter(Sender: TObject);
Begin
    Inherited;
    PAliqCusto.Tag := 1;
End;

Procedure TFPedCompra.Panel2Enter(Sender: TObject);
Begin
    Inherited;
    LQtdConvert.Caption := '';
End;

Procedure TFPedCompra.BtnInsertProdClick(Sender: TObject);
Begin
    If DMMACS.TLoja.FieldByName('CONVERTUNID').AsString = '1'
        Then Begin
        If xqtdconv <= 0
            Then Begin
            Mensagem('OPÇÃO BLOQUEADA', 'A quantidade convertida não foi informada corretamente.', '', 1, 1, False, 'a');
            convertunid;
            PQtdConvert.Visible := True;
            PQtdConvert.BringToFront;
            EdQtdConvert.SetFocus;
            Exit;
        End;
    End;
    Inherited;
    LQtdConvert.Caption := '';
End;

Procedure TFPedCompra.Criarnovopedido1Click(Sender: TObject);
Begin
    Inherited;
    If Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Deseja realmente gerar novo pedido?' + #13 + 'Pedido base Nº ' + XView.FieldByName('NUMPED').AsString + '?', '', 2, 3, False, 'c') = 2
        Then Begin
    //Seleciona Cabecalho do pedido
        DMESTOQUE.Alx.Close;
        DMESTOQUE.Alx.SQL.Clear;
        DMESTOQUE.Alx.SQL.Add('Select * from pedcompra Where Pedcompra.cod_pedcomp=:Codigo');
        DMESTOQUE.Alx.ParamByName('CODIGO').AsInteger := DMENTRADA.WPedc.FieldByName('cod_pedcomp').AsInteger;
        DMESTOQUE.Alx.Open;
        If Not DMESTOQUE.Alx.IsEmpty
            Then Begin
        //Seleciona Produtos do Pedido
            DMESTOQUE.Alx1.Close;
            DMESTOQUE.Alx1.SQL.Clear;
            DMESTOQUE.Alx1.SQL.Add('Select * from itenspedc Where itenspedc.cod_itenspedc=:codigo');
            DMESTOQUE.Alx1.ParamByName('CODIGO').AsInteger := DMENTRADA.WPedc.FieldByName('cod_pedcomp').AsInteger;
            DMESTOQUE.Alx1.Open;
        End;
  //Aciona novo Pedido
        BtnNovo.Click;
       //Informa Cabeçalho do Pedido
        XTabela.Edit;
        XTabela.FieldByName('COD_FORNEC').AsInteger := DMESTOQUE.Alx.FieldByName('COD_FORNEC').AsInteger;
        XTabela.FieldByName('DTPEDCOMP').AsDateTime := Date();
        DBDATA.Text := DateToStr(Date());
        XTabela.FieldByName('COD_USUARIO').AsInteger := StrToInt(FMenu.LCODUSUARIO.Caption);
        XTabela.FieldByName('COD_FORMPAG').AsInteger := DMESTOQUE.Alx.FieldByName('COD_FORMPAG').AsInteger;
        XTabela.FieldByName('VALOR').AsCurrency := DMESTOQUE.Alx.FieldByName('VALOR').AsCurrency;
        XTabela.FieldByName('OBS').AsString := DMESTOQUE.Alx.FieldByName('OBS').AsString;
        XTabela.FieldByName('PRAZOENTR').AsString := DMESTOQUE.Alx.FieldByName('PRAZOENTR').AsString;
        XTabela.FieldByName('VENDEDOR').AsString := DMESTOQUE.Alx.FieldByName('VENDEDOR').AsString;
        XTabela.FieldByName('DESCONTO').AsString := DMESTOQUE.Alx.FieldByName('DESCONTO').AsString;
        XTabela.FieldByName('COD_DESTINATARIO').AsString := DMESTOQUE.Alx.FieldByName('COD_DESTINATARIO').AsString;
        XTabela.FieldByName('DESTINATARIO').AsString := DMESTOQUE.Alx.FieldByName('DESTINATARIO').AsString;
        XTabela.Post;

       //INSERE OS PRODUTOS
        DMESTOQUE.Alx1.First;
        While Not DMESTOQUE.Alx1.Eof Do
        Begin
     //Inserir Produto a lista do pedido
            XCodSlave := InserReg(XTabSlave, XSQLTabSlave, XpkTabSlave);
            XTabSlave.FieldByName(XpkTabSlave).AsInteger := XCodSlave;
            XTabSlave.FieldByName('cod_pedcompra').AsInteger := XTabela.FieldByName('cod_pedcomp').AsInteger;
            XTabSlave.FieldByName('DATA').AsString := DateToStr(Date());
            XTabSlave.FieldByName('QTDEST').AsCurrency := DMESTOQUE.Alx1.FieldByName('QTDEST').AsCurrency;
            XTabSlave.FieldByName('COD_ESTOQUE').AsInteger := DMESTOQUE.Alx1.FieldByName('COD_ESTOQUE').AsInteger;
            XTabSlave.FieldByName('QTDEPROD').AsCurrency := DMESTOQUE.Alx1.FieldByName('QTDEPROD').AsCurrency;
            XTabSlave.FieldByName('VALUNIT').AsCurrency := DMESTOQUE.Alx1.FieldByName('VALUNIT').AsCurrency;
            XTabSlave.FieldByName('VALORTOTAL').AsCurrency := DMESTOQUE.Alx1.FieldByName('VALORTOTAL').AsCurrency;
            XTabSlave.FieldByName('DESCPRO').AsCurrency := DMESTOQUE.Alx1.FieldByName('DESCPRO').AsCurrency;
            XTabSlave.FieldByName('ALIQICMS').AsCurrency := DMESTOQUE.Alx1.FieldByName('ALIQICMS').AsCurrency;
            XTabSlave.FieldByName('FRETE').AsCurrency := DMESTOQUE.Alx1.FieldByName('FRETE').AsCurrency;
            XTabSlave.FieldByName('EMBPROD').AsCurrency := DMESTOQUE.Alx1.FieldByName('EMBPROD').AsCurrency;
            XTabSlave.FieldByName('VLRIPI').AsCurrency := DMESTOQUE.Alx1.FieldByName('VLRIPI').AsCurrency;
            XTabSlave.FieldByName('COD_LOTE').AsCurrency := DMESTOQUE.Alx1.FieldByName('COD_LOTE').AsCurrency;
            XTabSlave.FieldByName('BASEICMS').AsCurrency := DMESTOQUE.Alx1.FieldByName('BASEICMS').AsCurrency;
            XTabSlave.FieldByName('VLRICMS').AsCurrency := DMESTOQUE.Alx1.FieldByName('VLRICMS').AsCurrency;
            XTabSlave.FieldByName('BASEICMSSUBS').AsCurrency := DMESTOQUE.Alx1.FieldByName('BASEICMSSUBS').AsCurrency;
            XTabSlave.FieldByName('VLRICMSSUBS').AsCurrency := DMESTOQUE.Alx1.FieldByName('VLRICMSSUBS').AsCurrency;
            XTabSlave.FieldByName('ALIQIPI').AsCurrency := DMESTOQUE.Alx1.FieldByName('ALIQIPI').AsCurrency;
            XTabSlave.FieldByName('REDUCBASEICMS').AsCurrency := DMESTOQUE.Alx1.FieldByName('REDUCBASEICMS').AsCurrency;
            XTabela.Edit;
            If DMMacs.TLoja.FieldByName('ATUAESTOQUE').AsString = '1'
                Then Begin //se o estoque deve ser atualizado no pedido executa procedimento
            //atualiza data da ultima compra
                DMESTOQUE.TEstoque.Edit;
                DMEstoque.TEstoque.FieldByName('ULTCOMPRA').AsString := DateToStr(Date());
               //atualiza estoque físico
                If DMEstoque.TEstoque.FieldByName('ESTFISICO').AsString = '' Then
                    DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency := (DMESTOQUE.Alx1.FieldByName('QTDEST').AsCurrency)

                Else
                    DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency := DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency + DMESTOQUE.Alx1.FieldByName('QTDEST').AsCurrency;

                DMEstoque.TEstoque.FieldByName('ATUALIZAR').AsString := '1';
                DMESTOQUE.TEstoque.Post;
                DMESTOQUE.TransacEstoque.CommitRetaining;
            End;
            If DMMACS.TLoja.FieldByName('USAOBSITEMCOMPRA').AsString = '1'
                Then Begin
                XQTDLOTE := DMESTOQUE.Alx1.FieldByName('QTDEST').AsCurrency;
               //se encontrado lote p/ produto alterar a quantidade
                DMESTOQUE.TEstoqueLote.Close;
                DMESTOQUE.TEstoqueLote.SQL.Clear;
                DMESTOQUE.TEstoqueLote.SQL.Add('SELECT * FROM ESTOQUELOTE WHERE ESTOQUELOTE.COD_LOTE=:CODLOTE');
                DMESTOQUE.TEstoqueLote.ParamByName('CODLOTE').AsString := DMESTOQUE.Alx1.FieldByName('COD_LOTE').AsString;
                DMESTOQUE.TEstoqueLote.Open;
                If Not DMESTOQUE.TEstoqueLote.IsEmpty
                    Then Begin
                    XTabSlave.FieldByName('COD_LOTE').AsInteger := DMESTOQUE.Alx1.FieldByName('COD_LOTE').AsInteger;
                    DMESTOQUE.TEstoqueLote.Edit;
                    DMESTOQUE.TEstoqueLote.FieldByName('QUANTIDADE').AsCurrency := DMESTOQUE.TEstoqueLote.FieldByName('QUANTIDADE').AsCurrency + DMESTOQUE.Alx1.FieldByName('QTDEST').AsCurrency;
                    DMESTOQUE.TEstoqueLote.Post;
                End;
            End;
            XTabSlave.Edit;
            XTabSlave.Post;
            DMESTOQUE.Alx1.Next;
        End;
        XTabSlave.Edit;
        XTabSlave.Post;
        XTabela.Edit;
        XTabela.Post;
        XTransaction.CommitRetaining;
        DMESTOQUE.TransacEstoque.CommitRetaining;
  //SELECIONA PEDIDO CRIADO EM VIEW PARA SER ABERTO
        FiltraTabela(DMENTRADA.WPedc, 'vwpedc', 'cod_pedcomp', XTabela.FieldByName('COD_PEDCOMP').AsString, '');
        BtnConsultar.Click;
    End;
End;

Procedure TFPedCompra.FrmDestinatarioBTNMINUSClick(Sender: TObject);
Begin
    Inherited;
    FrmDestinatario.BTNMINUSClick(Sender);
    XCod_Destinatario := -1;
    FrmDestinatario.EdDescricao.Text := '';
    FrmDestinatario.EDCodigo.Text := '';
    xnomedestinatario := '';
End;

Procedure TFPedCompra.EDQuantidadeKeyDown(Sender: TObject; Var Key: Word;
    Shift: TShiftState);
Begin
    Inherited;
    If Key = VK_RIGHT Then
        EDValUnit.SetFocus;
    If Key = VK_LEFT Then
        EDCodFab.SetFocus;
End;

Procedure TFPedCompra.EdNumPedClick(Sender: TObject);
Begin
    Inherited;
   // se na edit nao tiver valor diferente do titulo (Nº Ped), o campo sera limpado
    If EdNumPed.Text = 'Nº Ped'
        Then Begin
        EdNumPed.Text := '';
    End;

End;

Procedure TFPedCompra.EdNumPedExit(Sender: TObject);
Begin
    Inherited;
   // se nao possui valor, o titulo eh retornado
    If EdNumPed.Text = ''
        Then Begin
        EdNumPed.Text := 'Nº Ped';
    End;

End;

Procedure TFPedCompra.EdNumDocClick(Sender: TObject);
Begin
    Inherited;
   // qdo clicar na edit, o campo serah limpado
    If EdNumDoc.Text = 'Nº Doc'
        Then Begin
        EdNumDoc.Text := '';
    End;

End;

Procedure TFPedCompra.EdNumDocExit(Sender: TObject);
Begin
    Inherited;
   // se nao possui valor, eh retomado o titulo
    If EdNumDoc.Text = ''
        Then Begin
        EdNumDoc.Text := 'Nº Doc';
    End;

End;

Procedure TFPedCompra.EdNomeClick(Sender: TObject);
Begin
    Inherited;
   // qdo clicar no campo, ira verificar se tem o msm titulo, se tiver  campo serah limpado
    If EdNome.Text = 'Digite a Fantasia'
        Then Begin
        EdNome.Text := '';
    End;

End;

Procedure TFPedCompra.EdNomeExit(Sender: TObject);
Begin         
   // se nao possuir valor, o titulo eh retomado
    If EdNome.Text = ''
        Then Begin
        EdNome.Text := 'Digite a Fantasia';
    End;
    Inherited;
End;

Procedure TFPedCompra.DBGridConvertKeyPress(Sender: TObject;
    Var Key: Char);
Begin
    AtualizaQntConvertida;
    If Key = #13
        Then Begin
        EdQtdConvert.SetFocus;
    End;
    If Key = #27
        Then Begin
        PQtdConvert.Visible := False;
    End;
End;

Procedure TFPedCompra.AtualizaQntConvertida;
Begin
  // filtra tabela unidade pela unidade de venda do produto
    FiltraTabela(DMESTOQUE.TUnidade, 'UNIDADE', 'COD_UNIDADE', DMESTOQUE.Alx.FieldByName('cod_unidsai').AsString, '');
    If DMESTOQUE.TUnidade.FieldByName('ARREDONDAR').AsString = '1'
        Then Begin
        EdQtdConvert.ValueNumeric := Round(EDQuantidade.ValueNumeric * DMESTOQUE.Alx.FieldByName('QTDCONVERT').Value);
    End
    Else Begin
        EdQtdConvert.ValueNumeric := EDQuantidade.ValueNumeric * DMESTOQUE.Alx.FieldByName('QTDCONVERT').Value;
    End;

    XCodUnidItenProd := DMESTOQUE.Alx.FieldByName('COD_UNIDADE').AsInteger;

End;

Procedure TFPedCompra.DBGridConvertCellClick(Column: TColumn);
Begin
    Inherited;
    AtualizaQntConvertida;
End;

Procedure TFPedCompra.DBGridConvertExit(Sender: TObject);
Begin
    Inherited;
    AtualizaQntConvertida;
//   XCodUnidItenProd:=DMESTOQUE.Alx.fieldByName('SIGLA_UNID').AsInteger;
End;



// - 15/01/2009: imprimir danfe da nota enviada

Procedure TFPedCompra.MostraDanfe(XCOD_PEDIDO: INTEGER);
Begin
    Inherited;

// - 15/01/2009: SETA NA TABELA TMP DESC1 COMO 2 DE ENTRADA PARA APARECER NO RELATORIO DA DANFE
    If Not (XView.FieldByName('NUMDEV').AsString = 'OUT') Then
        FiltraTabela(DMSAIDA.TPedV, 'PEDVENDA', 'NUMPED', XView.FieldByName('NUMDEV').AsString, '');
    FiltraTabela(DMSAIDA.TFiscPV, 'DOCFISSAIDA', 'COD_PEDIDO', DMSAIDA.TPedV.fieldByName('cod_pedvenda').AsString, '');

    DMMACS.TMP.Close;
    DMMACS.TMP.SQL.Clear;
    DMMACS.TMP.SQL.Add('INSERT INTO TMP (TMP.DESC1) VALUES (:DESC)');
    DMMACS.TMP.ParamByName('DESC').AsString := '2';
    DMMACS.TMP.ExecSQL;
    DMMACS.Transaction.CommitRetaining;

    DMMACS.TMP.Close;
    DMMACS.TMP.SQL.Clear;
    DMMACS.TMP.SQL.Add('SELECT * FROM TMP');
    DMMACS.TMP.Open;

      // FILTRA CIDADE
    FiltraTabela(DMGEOGRAFIA.WCidade, 'VWCIDADE', 'COD_CIDADE', DMMACS.TEmpresa.FieldByName('COD_CIDADE').AsString, '');

    DMESTOQUE.Alx.Close;
    DMESTOQUE.Alx.SQL.Clear;
    DMESTOQUE.Alx.SQL.Add('  select itenspedc.cod_estoque, itenspedc.valortotal, itenspedc.qtdeprod, itenspedc.valunit, itenspedc.aliqipi AS aplicarst, itenspedc.cfop, ');
    DMESTOQUE.Alx.SQL.Add('  estoque.cod_subprod, subproduto.descricao, ');
    DMESTOQUE.Alx.SQL.Add('  subproduto.contrint as contrint, subproduto.cod_cst, subproduto.cod_unidvenda, subproduto.ncm, subproduto.marca, cst.cod_sit_trib, ');
    DMESTOQUE.Alx.SQL.Add('  unidade.sigla_unid, pedcompra.numped, itenspedc.aliqicms, itenspedc.aliqipi, itenspedc.vlripi, itenspedc.descpro, ');
    DMESTOQUE.Alx.SQL.Add('  itenspedc.baseicms, itenspedc.vlricms , itenspedc.baseicms, itenspedc.vlricmssubs ');
    DMESTOQUE.Alx.SQL.Add('  from itenspedc ');
    DMESTOQUE.Alx.SQL.Add('  left join estoque on itenspedc.cod_estoque = estoque.cod_estoque ');
    DMESTOQUE.Alx.SQL.Add('  left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto ');
    DMESTOQUE.Alx.SQL.Add('  left join cst on itenspedc.cod_cst = cst.cod_cst ');
    DMESTOQUE.Alx.SQL.Add('  left join unidade on subproduto.cod_unidvenda = unidade.cod_unidade ');
    DMESTOQUE.Alx.SQL.Add('  left join pedcompra on itenspedc.cod_pedcompra = pedcompra.cod_pedcomp ');
    DMESTOQUE.Alx.SQL.Add('  where pedcompra.cod_pedcomp = :COD ');
    DMESTOQUE.Alx.ParamByName('COD').AsInteger := XCOD_PEDIDO;
    DMESTOQUE.Alx.Open;


    DMESTOQUE.Alx1.Close;
    DMESTOQUE.Alx1.SQL.Clear;
    DMESTOQUE.Alx1.SQL.Add('  SELECT pedcompra.cod_pedcomp, pedcompra.cod_fornec, pedcompra.dtpedcomp, pedcompra.numped, pedcompra.valor, pedcompra.dtfech, ');
    DMESTOQUE.Alx1.SQL.Add('  fornecedor.cod_pessoa, fornecedor.cod_interno as CODCLI, pessoa.nome as nomedes, pessoa.cpfcnpj, pessoa.bairro, pessoa.cep, pessoa.endereco, pessoa.endnumero, ');
    DMESTOQUE.Alx1.SQL.Add('  pessoa.telrel, pessoa.cod_cidade, cidade.nome as NOMECIDADE, cidade.cod_estado, estado.uf_estado, ');
    DMESTOQUE.Alx1.SQL.Add('  docfis.baseicms, docfis.vlricms, docfis.bascalsubs, docfis.dtentsaid, docfis.dtemissao, docfis.vlrdesconto, docfis.horasaid, docfis.vlricmsubs, docfis.vlrtotprod, ');
    DMESTOQUE.Alx1.SQL.Add('  docfis.vlrfrete, docfis.vlrseg, docfis.nfeambiente, docfis.vlroutrasdesp, docfis.vlrtotipi, docfis.vlrtotdocnf, ');
    DMESTOQUE.Alx1.SQL.Add('  docfis.numdocfis,docfis.nfestatus, docfis.nfechave, docfis.nfeprotocolo, docfis.nfeserie, cfop.descricao as descricaocfop, cfop.cfop, docfis.obs, ');
    DMESTOQUE.Alx1.SQL.Add('  docfis.freteconta, docfis.placa, docfis.ufplaca, docfis.quantfrete, docfis.especiefrete, docfis.marcafrete, docfis.pesobruto, docfis.pesoliq, docfis.cod_transp, docfis.numconhec ');
    DMESTOQUE.Alx1.SQL.Add('  FROM pedcompra ');
    DMESTOQUE.Alx1.SQL.Add('  left join fornecedor on pedcompra.cod_fornec = fornecedor.cod_fornec ');
    DMESTOQUE.Alx1.SQL.Add('  left join pessoa on fornecedor.cod_pessoa = pessoa.cod_pessoa ');
    DMESTOQUE.Alx1.SQL.Add('  left join cidade on pessoa.cod_cidade = cidade.cod_cidade ');
    DMESTOQUE.Alx1.SQL.Add('  left join estado on cidade.cod_estado = estado.cod_estado ');
    DMESTOQUE.Alx1.SQL.Add('  left join docfis on pedcompra.cod_pedcomp = docfis.cod_pedido ');
    DMESTOQUE.Alx1.SQL.Add('  left join cfop on docfis.cod_cfop = cfop.cod_cfop ');
    DMESTOQUE.Alx1.SQL.Add('  where pedcompra.cod_pedcomp = :COD');
    DMESTOQUE.Alx1.ParamByName('COD').AsInteger := XCOD_PEDIDO;
    DMESTOQUE.Alx1.Open;


      //Paulo 27/10/2010: Seleciona cfop2
    DMESTOQUE.Alx3.Close;
    DMESTOQUE.Alx3.SQL.Clear;
    DMESTOQUE.Alx3.SQL.Add('  SELECT  cfop.descricao as descricaocfop, cfop.cfop, cfop.cfop as cod_unidade, cfop.cfop as sigla_unid ');
    DMESTOQUE.Alx3.SQL.Add('  FROM pedcompra ');
    DMESTOQUE.Alx3.SQL.Add('  left join fornecedor on pedcompra.cod_fornec = fornecedor.cod_fornec ');
    DMESTOQUE.Alx3.SQL.Add('  left join pessoa on fornecedor.cod_pessoa = pessoa.cod_pessoa ');
    DMESTOQUE.Alx3.SQL.Add('  left join cidade on pessoa.cod_cidade = cidade.cod_cidade ');
    DMESTOQUE.Alx3.SQL.Add('  left join estado on cidade.cod_estado = estado.cod_estado ');
    DMESTOQUE.Alx3.SQL.Add('  left join docfis on pedcompra.cod_pedcomp = docfis.cod_pedido ');
    DMESTOQUE.Alx3.SQL.Add('  left join cfop on docfis.cod_cfop2 = cfop.cod_cfop ');
    DMESTOQUE.Alx3.SQL.Add('  where pedcompra.cod_pedcomp = :COD');
    DMESTOQUE.Alx3.ParamByName('COD').AsInteger := XCOD_PEDIDO;
    DMESTOQUE.Alx3.Open;

      //Paulo 27/10/210: dados de transporte
    DMESTOQUE.Alx2.Close;
    DMESTOQUE.Alx2.sql.Clear;
    DMESTOQUE.Alx2.SQL.Add(' select pessoa.nome, pessoa.cpfcnpj, pessoa.endnumero , pessoa.endereco, cidade.nome as nomecidade, estado.uf_estado as uf, pessoaj.insc_est ');
    DMESTOQUE.Alx2.SQL.Add(' from fornecedor ');
    DMESTOQUE.Alx2.SQL.Add(' left join pessoa on fornecedor.cod_pessoa = pessoa.cod_pessoa ');
    DMESTOQUE.Alx2.SQL.Add(' left join cidade on pessoa.cod_cidade = cidade.cod_cidade ');
    DMESTOQUE.Alx2.SQL.Add(' left join estado on cidade.cod_estado = estado.cod_estado ');
    DMESTOQUE.Alx2.SQL.Add(' left join pessoaj on pessoa.cod_pessoa = pessoaj.cod_pessoa ');
    DMESTOQUE.Alx2.SQL.Add(' left join docfis on fornecedor.cod_fornec = docfis.cod_transp ');
    DMESTOQUE.Alx2.SQL.Add(' where docfis.cod_pedido = :CODGERADOR ');
    DMESTOQUE.Alx2.ParamByName('CODGERADOR').AsInteger := XCOD_PEDIDO;
    DMESTOQUE.Alx2.Open;

    FiltraTabela(DMMacs.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');


    DMMACS.TLoja.Edit;
    DMMACS.TLoja.FieldByName('TMP1').AsString := '';
    DMMACS.TLoja.Post;
    DMMACS.Transaction.CommitRetaining;

    FiltraTabela(DMPESSOA.TPessoaJ, 'PESSOAJ', 'COD_PESSOA', DMESTOQUE.Alx1.FieldByName('COD_PESSOA').AsString, '');

    If Fmenu.XTIPOBOLTO='COMPLEMENTO' Then
       FMzrNfe.FSDanfe.LoadFromFile('C:\MZR\MACS\Rel\FrfDANFEdev_ComplementoFiscal.frf')
    Else
    	FMzrNfe.FSDanfe.LoadFromFile('C:\MZR\MACS\Rel\FrfDANFEdev.frf');
    FMzrNfe.FSDanfe.ShowReport;

    DMMACS.TMP.Close;
    DMMACS.TMP.SQL.Clear;
    DMMACS.TMP.SQL.Add('DELETE FROM TMP');
    DMMACS.TMP.ExecSQL;
    DMMACS.Transaction.CommitRetaining;

End;
// - 15/01/2009: verifica se eh nfe e libera popup para o botão fiscal

Procedure TFPedCompra.BtnFiltrarMouseDown(Sender: TObject;
    Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
Begin
    Inherited;
    DMESTOQUE.Alx.Close;
    DMESTOQUE.Alx.SQL.Clear;
    DMESTOQUE.Alx.SQL.Add('select docfis.cod_pedido from docfis');
    DMESTOQUE.Alx.SQL.Add('left join pedcompra on docfis.cod_pedido = pedcompra.cod_pedcomp');
    DMESTOQUE.Alx.SQL.Add('where pedcompra.numped = :COD and docfis.nfestatus = 1');
    DMESTOQUE.Alx.ParamByName('COD').AsString := XView.FieldByName('NUMPED').AsString;
    DMESTOQUE.Alx.Open;

    If DMESTOQUE.Alx.IsEmpty Then Begin
        BtnFiltrar.PopupMenu := Nil;
    End Else Begin
        BtnFiltrar.PopupMenu := PMNFe;
    End;
End;
// - 15/01/2009: click em imprimir danfe popup

Procedure TFPedCompra.ImprimirDANFE1Click(Sender: TObject);
Begin
    Inherited;
    FMzrNfe := TFMzrNfe.Create(FMzrNfe);

    MostraDanfe(XView.FieldByName('COD_PEDCOMP').AsInteger);

    FMzrNfe := Nil;
End;
// - 15/01/2009:  abril xml do pedido

Procedure TFPedCompra.AbrirXML1Click(Sender: TObject);
Var
    caminho: String;
Begin
    Inherited;
    FiltraTabela(DMENTRADA.TFiscPC, 'DOCFIS', 'COD_PEDIDO', XView.FieldByName('COD_PEDCOMP').AsString, '');
    If DMENTRADA.TFiscPC.IsEmpty Then Begin
        Mensagem('   A T E N Ç Ã O   ', 'Não há nenhum XML para o pedido selecionado.', '', 1, 1, false, 'I');
        Exit;
    End;
    FMzrNfe := TFMzrNfe.Create(FMzrNfe);
//    caminho := FNFe.XDir+'enviNFe\'+DMENTRADA.TFiscPC.FieldByName('NFECHAVE').AsString+'-enviNFe.xml';
    If (fileExists(caminho)) Then Begin
        ShellExecute(Handle, Nil, Pchar(caminho), Nil, Nil, SW_SHOWNORMAL);
    End Else Begin
        Mensagem('   A T E N Ç Ã O   ', 'Arquivo XML não encontrado.', '', 1, 1, false, 'I');
    End;
    FMzrNfe := Nil;
End;
// - 15/01/2009: abre xml resposta do pedido

Procedure TFPedCompra.AbrirXMLResposta1Click(Sender: TObject);
Var
    caminho: String;
Begin
    Inherited;
    FiltraTabela(DMENTRADA.TFiscPC, 'DOCFIS', 'COD_PEDIDO', XView.FieldByName('COD_PEDCOMP').AsString, '');
    FMzrNfe := TFMzrNfe.Create(FMzrNfe);
//    caminho := FNFe.XDir+'retPedNFe\'+DMENTRADA.TFiscPC.FieldByName('NFERECIBO').AsString+'-pro-rec.xml';
    If (fileExists(caminho)) Then
        ShellExecute(Handle, Nil, Pchar(caminho), Nil, Nil, SW_SHOWNORMAL);
    FMzrNfe := Nil;
End;

// - 15/01/2009: copia chave nfe do pedido na area de transferencia

Procedure TFPedCompra.CopiarChaveNFe1Click(Sender: TObject);
Begin
    Inherited;
    FiltraTabela(DMENTRADA.TFiscPC, 'DOCFIS', 'COD_PEDIDO', XView.FieldByName('COD_PEDCOMP').AsString, '');

    Clipboard.AsText := DMENTRADA.TFiscPC.FieldByName('NFECHAVE').AsString;
End;

// - 15/01/2009:  copia chave nfe do pedido na area de transferencia E ABRE O SITE NACIONAL DO SEFAZ

Procedure TFPedCompra.ConsultaNFeNacinal1Click(Sender: TObject);
Begin
    Inherited;
    FiltraTabela(DMENTRADA.TFiscPC, 'DOCFIS', 'COD_PEDIDO', XView.FieldByName('COD_PEDCOMP').AsString, '');
    Clipboard.AsText := DMENTRADA.TFiscPC.FieldByName('NFECHAVE').AsString;
    shellexecute(handle, 'open', 'https://www.nfe.fazenda.gov.br/portal/FormularioDePesquisa.aspx?tipoconsulta=completa', Nil, Nil, SW_SHOWNORMAL);
End;

// - 15/01/2009:  copia chave nfe do pedido na area de transferencia E ABRE O SITE DO SEFAZ PR

Procedure TFPedCompra.ConsultaNFePR1Click(Sender: TObject);
Begin
    Inherited;
    FiltraTabela(DMENTRADA.TFiscPC, 'DOCFIS', 'COD_PEDIDO', XView.FieldByName('COD_PEDCOMP').AsString, '');
    Clipboard.AsText := DMENTRADA.TFiscPC.FieldByName('NFECHAVE').AsString;
    shellexecute(handle, 'open', 'http://www.fazenda.pr.gov.br/modules/conteudo/conteudo.php?conteudo=296', Nil, Nil, SW_SHOWNORMAL);
End;

Procedure TFPedCompra.DBGrid1DrawColumnCell(Sender: TObject;
    Const Rect: TRect; DataCol: Integer; Column: TColumn;
    State: TGridDrawState);
Begin
    Inherited;

    If State = [] Then
    Begin
        If DMESTOQUE.TSlave.Recno Mod 2 = 1 Then
            DBGrid1.Canvas.Brush.Color := $00EEEEEE
        Else
            DBGrid1.Canvas.Brush.Color := clWhite;
    End;


    DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);

End;

Procedure TFPedCompra.DBGridCadastroPadraoDrawColumnCell(Sender: TObject;
    Const Rect: TRect; DataCol: Integer; Column: TColumn;
    State: TGridDrawState);
Begin
    Inherited;
    If State = [] Then
    Begin
        If XView.Recno Mod 2 = 1 Then
            DBGridCadastroPadrao.Canvas.Brush.Color := $00EEEEEE
        Else
            DBGridCadastroPadrao.Canvas.Brush.Color := clWhite;
    End;
    DBGridCadastroPadrao.DefaultDrawColumnCell(Rect, DataCol, Column, State);
End;

Procedure TFPedCompra.DBGridCadastroPadraoDblClick(Sender: TObject);
Begin
    Inherited;

   // A ATIVIDADE DA LOJA TEM Q SER IGUAL A EQUIPE
    If DMMACS.TLoja.FieldByName('ATIVIDADE').AsString = 'EQUIPE'
        Then Begin
        If (XView.FieldByName('SITUACAO').AsString <> 'ABERTO')
            Then Begin
            Mensagem('    A T E N Ç Ã O   ', 'O Pedido não está "Aberto".', '', 1, 1, false, 'I');
            Exit;
        End;

        DMENTRADA.TAlx.Close;
        DMENTRADA.TAlx.SQL.Clear;
        DMENTRADA.TAlx.SQL.Add('update PEDCOMPRA set EXPORT = :EXP');

        If XView.FieldByName('EXPORT').AsString = 'X'
            Then Begin
            DMENTRADA.TAlx.ParamByName('EXP').AsString := '';
            DMENTRADA.TAlx.SQL.Add('where EXPORT = ' + #39 + 'X' + #39);
        End
        Else Begin
            DMENTRADA.TAlx.SQL.Add('where COD_PEDCOMP = :OLD_COD_ORDEM');
            DMENTRADA.TAlx.ParamByName('EXP').AsString := 'X';
            DMENTRADA.TAlx.ParamByName('OLD_COD_ORDEM').AsInteger := XView.FieldByName('COD_PEDCOMP').AsInteger;
        End;


        DMENTRADA.TAlx.ExecSQL;
        DMENTRADA.IBT.CommitRetaining;
        ExecutaLiberaDados;
    End;
End;

Procedure TFPedCompra.Exportar1Click(Sender: TObject);
Begin
    Inherited;
   // SELECIONANDO OS PEDIDOS SELECIONADAS E QUE AINDA NAO FORAM EXPORTADAS
    DMENTRADA.TAlx.Close;
    DMENTRADA.TAlx.SQL.Clear;
    DMENTRADA.TAlx.SQL.Add(' select count(pedcompra.cod_pedcomp) as TOTAL from pedcompra where (pedcompra.export = ' + #39 + 'X' + #39 + ')');
    DMENTRADA.TAlx.SQL.Add(' and (pedcompra.situacao = ' + #39 + 'ABERTO' + #39 + ') and (pedcompra.export = ' + #39 + 'X' + #39 + ') ');
    DMENTRADA.TAlx.Open;

   // VERIFICA SE EXISTE NO MINIMO UMA ORDEM FILTRADA
    If DMENTRADA.TAlx.FieldByName('TOTAL').AsInteger > 0
        Then Begin
        If DMENTRADA.TAlx.FieldByName('TOTAL').AsInteger = 1
            Then Begin
           // COMO VAI SER UMA UNICA ORDEM A SER EXPORTADA, EH FEITO ESSA SQL PARA BUSCAR O "NUMERO" QUE SERA EXIBIDO NA MENSAGEM
            DMENTRADA.TPedC.Close;
            DMENTRADA.TPedC.SQL.Clear;
            DMENTRADA.TPedC.SQL.Add(' select * from pedcompra where (pedcompra.export = ' + #39 + 'X' + #39 + ')');
            DMENTRADA.TPedC.Open;
            If Mensagem('Exportação de Pedidos de Compra', 'Deseja realmente exporta O Pedido de Compra Nº' + DMENTRADA.TPedC.FieldByname('numped').AsString + ' ?', '', 2, 3, false, 'I') = 2
                Then Begin
                Exporta_Pedido;
               // exporta as ordens de servico selecionadas para outro banco, gerando novas ordens com os mesmos produtos, servicos, funcionario, equipe, etc
//               Exporta_OrdensServico;
            End
            Else Begin
                Exit;
            End;
        End
        Else Begin
            If Mensagem('Exportação de Pedido de Compra', 'Deseja realmente exportar os ' + DMENTRADA.TPedC.FieldByname('NUMPED').AsString + ' Pedidos de Compra selecionadas ?', '', 2, 2, false, 'I') = 2
                Then Begin
               // exporta as ordens de servico selecionadas para outro banco, gerando novas ordens com os mesmos produtos, servicos, funcionario, equipe, etc
//               Exporta_OrdensServico;
            End
            Else Begin
                Exit;
            End;
        End;
//       AtualizaGridConsulta('ORIGEM');
    End
    Else Begin
        Mensagem('   A T E N Ç Ã O   ', 'Não há Pedidos de Compra aberto para exportação', '', 1, 1, false, 'A');
    End;
End;

Procedure TFPedCompra.DBNumPedExit(Sender: TObject);
Begin
    Inherited;
    DMENTRADA.TAlx.Close;
    DMENTRADA.TAlx.SQL.Clear;
    DMENTRADA.TAlx.SQL.Add(' select * from vwpedc where (vwpedc.numped=:numero) and (vwpedc.cod_pedcomp<>:codigo) ');
    DMENTRADA.TAlx.ParamByName('numero').AsString := EdNumeroPedido.Text;
    DMENTRADA.TAlx.ParamByName('codigo').AsString := XCodPedido;
    DMENTRADA.TAlx.Open;
    If Not DMENTRADA.TAlx.IsEmpty
        Then Begin
        MessageDlg('O Pedido com este número já foi cadastrado.', mtWarning, [mbOK], 0);
    End
End;

Procedure TFPedCompra.BtnDadosAdicClick(Sender: TObject);
Var
    XCodigoRecupera: String;
Begin
 //Salva simulando o pressionamento da tecla gravar
    XExiste := True;
    XCodigoRecupera := XCodPedido;
    BtnGravar.Click();
   //filtra a venda para consulta
    If FiltraTabela(DMENTRADA.WPedc, 'VWPEDC', 'COD_PEDCOMP', XCodigoRecupera, '')
        Then Begin
        BtnConsultar.Click();
        XExiste := False;        
        GeraFiscalPed;
        FiltraSlave;
  		 //Efetua Releitura dos itens caso tenham sido modificados na tela do fiscal
        EdValoIcmsSubstituicao.ValueNumeric := DMENTRADA.TPedC.FieldByName('VLRICMSSUBSTITUICAO').AsCurrency;
        EdValorFrete.ValueNumeric := DMENTRADA.TPedC.FieldByName('VLRFRETE').AsCurrency;
        EdValorOutros.ValueNumeric := DMENTRADA.TPedC.FieldByName('VLROUTROS').AsCurrency;
        EdValorIpi.ValueNumeric := DMENTRADA.TPedC.FieldByName('VLRIPI').AsCurrency;
    End
    Else Begin
        MessageDlg('Não foi possível visualizar o Fiscal. Tente novamente agora', mtWarning, [mbOK], 0);
    End;
    FiltraSlave;
End;

Procedure TFPedCompra.EfetuarDevoluo1Click(Sender: TObject);
Begin
	Inherited;  
   //Edmar - 12/03/2015 - Filtra buscando o fornecedor do pedido
   FiltraTabela(DMPESSOA.WFornecedor, 'VWFORNEC', 'COD_FORNEC', DMENTRADA.WPedc.FieldByName('COD_FORNEC').AsString, '');

   //depois filtra buscando se o fornecedor está cadastrado como cliente
   if not FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_PESSOA', DMPESSOA.WFornecedor.FieldByName('COD_PESSOA').AsString, '') then
   begin
   	//se não estiver, dá uma mensagem para o usuario informando que deve cadastra-lo como cliente antes de devolver
       MessageDlg('O fornecedor '+DMPESSOA.WFornecedor.FieldByName('NOME').AsString+' deve estar cadastrado como cliente para efetuar a devolução da NF-e.', mtWarning, [mbOK], 0);

		Exit;       
   end;
   
   FMenu.XCOD_CLIENTE_DEVOLUCAO := DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsString;
   FMenu.XNUM_FISCAL_DEVOLUCAO := DMENTRADA.WPedc.FieldByName('NUMPED').AsString;
   FMenu.XCOD_PK_DEVOLVIDO := DMENTRADA.WPedc.FieldByName('COD_PEDCOMP').AsString;

   FMenu.XTABELA_DEVOLUCAO := 'PEDCOMPRA';   

   AbrirForm(TFDevolucao , FDevolucao, 0);   
End;

Procedure TFPedCompra.FormKeyDown(Sender: TObject; Var Key: Word;
    Shift: TShiftState);
Begin
    Inherited;
   {If PCadastro.Visible=True
   Then Begin
       if (Key = VK_right) then
       begin
         Key:= 0;
         Perform(CM_DIALOGKEY, VK_TAB, 0);
       end;
       if Key = VK_Left then
       begin
         Key:= 0;
         keybd_event(VK_Shift, 0, 0, 0);
         keybd_event(VK_TAB,0,0,0);
         keybd_event(VK_SHIFT, 0, KEYEVENTF_KEYUP, 0);
       end;
   End; }
    If (shift = [ssCtrl]) And (key = 83)
        Then Begin
        Try
            If Not DirectoryExists('C:\MZR\Arquivos\LayoutGrid\') Then Begin
                ForceDirectories('C:\MZR\Arquivos\LayoutGrid\');
            End;
            DBGridCadastroPadrao.Columns.SaveToFile('C:\MZR\Arquivos\LayoutGrid\pedcompra.lgm');
            DBGrid1.Columns.SaveToFile('C:\MZR\Arquivos\LayoutGrid\pedcompraProdutos.lgm');

            Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Layout da Grid foi salvo com sucesso!', '', 1, 1, false, 'i');
        Except
            Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Falha na tentativa de salvar o layout da grid!', '', 1, 1, false, 'i');
        End;
    End;

   //Paulo 15/07/2010: Função para usar as setas no lugar do tab
   {if not(PConsulta.Visible) then
   begin
      if (Key = VK_RIGHT) then
      begin
          Key:= 0;
      Perform(CM_DIALOGKEY, VK_TAB, 0);
      end;
      if Key = VK_LEFT then
      begin
         Key:= 0;
         keybd_event(VK_Shift, 0, 0, 0);
         keybd_event(VK_TAB,0,0,0);
         keybd_event(VK_SHIFT, 0, KEYEVENTF_KEYUP, 0);
      end;
   end; }
End;

Procedure TFPedCompra.BitBtn12Click(Sender: TObject);
Begin
    Inherited;
    convertunid
End;

Procedure TFPedCompra.BitBtn13Click(Sender: TObject);
Begin
    Inherited;
    AbrirForm(TFConvertUnid, FConvertUnid, 0);
End;

Procedure TFPedCompra.SpeedButton1Click(Sender: TObject);
Begin
    Inherited;
    PQtdConvert.Visible := False;
End;

Procedure TFPedCompra.BtnGravarKeyDown(Sender: TObject; Var Key: Word;
    Shift: TShiftState);
Begin
    Inherited;
    If Key = VK_LEFT Then
        EdValorPed.SetFocus;
    If Key = VK_RIGHT Then
        BtnCancelar.SetFocus;
End;

Procedure TFPedCompra.BtnCancelarKeyDown(Sender: TObject; Var Key: Word;
    Shift: TShiftState);
Begin
    Inherited;
    If Key = VK_LEFT Then
        BtnGravar.SetFocus;
    If Key = VK_RIGHT Then
        BtnDadosAdic.SetFocus;
End;

Procedure TFPedCompra.BtnDadosAdicKeyDown(Sender: TObject; Var Key: Word;
    Shift: TShiftState);
Begin
    Inherited;
    If Key = VK_LEFT Then
        DBColorEdit3.SetFocus;
    If Key = VK_RIGHT Then
        BtnCancelar.SetFocus;
End;

Procedure TFPedCompra.DBColorEdit3KeyDown(Sender: TObject; Var Key: Word;
    Shift: TShiftState);
Begin
    Inherited;
    If Key = VK_RIGHT Then
        EdNumeroPedido.SetFocus;
    If Key = VK_LEFT Then
        BtnDadosAdic.SetFocus;
End;

Procedure TFPedCompra.EdNumeroPedidoKeyDown(Sender: TObject; Var Key: Word;
    Shift: TShiftState);
Begin
    Inherited;
    If Key = VK_RIGHT Then
        EdValorPed.SetFocus;
    If Key = VK_LEFT Then
        DBColorEdit3.SetFocus;
End;

Procedure TFPedCompra.EdValorPedKeyDown(Sender: TObject; Var Key: Word;
    Shift: TShiftState);
Begin
    Inherited;
    If Key = VK_RIGHT Then
        EdCodCli.SetFocus;
    If Key = VK_LEFT Then
        EdValorPed.SetFocus;
End;

Procedure TFPedCompra.EdCodCliKeyDown(Sender: TObject; Var Key: Word;
    Shift: TShiftState);
Begin
    Inherited;
    If Key = VK_RIGHT Then
        EdCodVend.SetFocus;
    If Key = VK_LEFT Then
        EdValorPed.SetFocus;
End;

Procedure TFPedCompra.EdCodVendKeyDown(Sender: TObject; Var Key: Word;
    Shift: TShiftState);
Begin
    Inherited;
    If Key = VK_RIGHT Then
        BtnProcVend.SetFocus;
    If Key = VK_LEFT Then
        EdCodCli.SetFocus;
End;

Procedure TFPedCompra.BtnProcVendKeyDown(Sender: TObject; Var Key: Word;
    Shift: TShiftState);
Begin
    Inherited;
    If Key = VK_RIGHT Then
        EDFORMPAG.SetFocus;
    If Key = VK_LEFT Then
        BtnProcVend.SetFocus;
End;

Procedure TFPedCompra.EDCODFORMPAGKeyDown(Sender: TObject; Var Key: Word;
    Shift: TShiftState);
Begin
    Inherited;
    If Key = VK_RIGHT Then
        BtnProcFormPag.SetFocus;
    If Key = VK_LEFT Then
        BtnProcVend.SetFocus;
End;

Procedure TFPedCompra.BtnProcFormPagKeyDown(Sender: TObject; Var Key: Word;
    Shift: TShiftState);
Begin
    Inherited;
    If Key = VK_RIGHT Then
        DBdata.SetFocus;
    If Key = VK_LEFT Then
        BtnProcFormPag.SetFocus;
End;

Procedure TFPedCompra.DBDATAKeyDown(Sender: TObject; Var Key: Word;
    Shift: TShiftState);
Begin
    Inherited;
   {If Key=VK_RIGHT Then
       EDDescPed.SetFocus;
 If Key=VK_LEFT Then
       BtnProcFormPag.SetFocus;}
End;

Procedure TFPedCompra.EDDescPedKeyDown(Sender: TObject; Var Key: Word;
    Shift: TShiftState);
Begin
    Inherited;
    If Key = VK_RIGHT Then
        EdDescMoeda.SetFocus;
    If Key = VK_LEFT Then
        DBDATA.SetFocus;
End;

Procedure TFPedCompra.BtnInsertProdKeyDown(Sender: TObject; Var Key: Word;
    Shift: TShiftState);
Begin
    Inherited;
    If Key = VK_RIGHT Then
        BtnDeleteList.SetFocus;
    If Key = VK_LEFT Then
        BtnAbrePAliq.SetFocus;
End;

Procedure TFPedCompra.BtnProcProdKeyDown(Sender: TObject; Var Key: Word;
    Shift: TShiftState);
Begin
    Inherited;
    If Key = VK_RIGHT Then
        EDCodBarra.SetFocus;
    If Key = VK_LEFT Then
        BtnDeleteList.SetFocus;
End;

Procedure TFPedCompra.EDCodBarraKeyDown(Sender: TObject; Var Key: Word;
    Shift: TShiftState);
Begin
    Inherited;
    If Key = VK_RIGHT Then
        EDCodFab.SetFocus;
    If Key = VK_LEFT Then
        BtnProcProd.SetFocus;
End;

Procedure TFPedCompra.EDCodFabKeyDown(Sender: TObject; Var Key: Word;
    Shift: TShiftState);
Begin
    Inherited;
    If Key = VK_RIGHT Then
        EDQuantidade.SetFocus;
    If Key = VK_LEFT Then
        EDCodBarra.SetFocus;
End;

Procedure TFPedCompra.EDValUnitKeyDown(Sender: TObject; Var Key: Word;
    Shift: TShiftState);
Begin
    Inherited;
    If Key = VK_RIGHT Then
        EDDesc.SetFocus;
    If Key = VK_LEFT Then
        EDQuantidade.SetFocus;
End;

Procedure TFPedCompra.EDDescKeyDown(Sender: TObject; Var Key: Word;
    Shift: TShiftState);
Begin
    Inherited;
    If Key = VK_RIGHT Then
        EDTotal.SetFocus;
    If Key = VK_LEFT Then
        EDValUnit.SetFocus;
End;

Procedure TFPedCompra.EDTotalKeyDown(Sender: TObject; Var Key: Word;
    Shift: TShiftState);
Begin
    Inherited;
    If Key = VK_RIGHT Then
        EdImpCST.SetFocus;
    If Key = VK_LEFT Then
        EDValUnit.SetFocus;
End;

Procedure TFPedCompra.EdImpCSTKeyDown(Sender: TObject; Var Key: Word;
    Shift: TShiftState);
Begin
    Inherited;
    If Key = VK_RIGHT Then
        EdimpIcms.SetFocus;
    If Key = VK_LEFT Then
        EDTotal.SetFocus;
End;

Procedure TFPedCompra.EdimpIcmsKeyDown(Sender: TObject; Var Key: Word;
    Shift: TShiftState);
Begin
    Inherited;
    If Key = VK_RIGHT Then
        EdImpIpi.SetFocus;
    If Key = VK_LEFT Then
        EdImpCST.SetFocus;
End;

Procedure TFPedCompra.EdImpIpiKeyDown(Sender: TObject; Var Key: Word;
    Shift: TShiftState);
Begin
    Inherited;
    If Key = VK_RIGHT Then
        EdBCIcms.SetFocus;
    If Key = VK_LEFT Then
        EdimpIcms.SetFocus;
End;

Procedure TFPedCompra.EdBCIcmsKeyDown(Sender: TObject; Var Key: Word;
    Shift: TShiftState);
Begin
    Inherited;
    If Key = VK_RIGHT Then
        EdImpVlrIcms.SetFocus;
    If Key = VK_LEFT Then
        EdImpIpi.SetFocus;
End;

Procedure TFPedCompra.EdImpVlrIcmsKeyDown(Sender: TObject; Var Key: Word;
    Shift: TShiftState);
Begin
    Inherited;
    If Key = VK_RIGHT Then
        EdImpVlrIpi.SetFocus;
    If Key = VK_LEFT Then
        EdBCIcms.SetFocus;
End;

Procedure TFPedCompra.EdImpVlrIpiKeyDown(Sender: TObject; Var Key: Word;
    Shift: TShiftState);
Begin
    Inherited;
    If Key = VK_RIGHT Then
        EdLocal.SetFocus;
    If Key = VK_LEFT Then
        EdImpVlrIcms.SetFocus;
End;

Procedure TFPedCompra.BtnAbrePAliqKeyDown(Sender: TObject; Var Key: Word;
    Shift: TShiftState);
Begin
    Inherited;
    If Key = VK_RIGHT Then
        BtnInsertProd.SetFocus;
    If Key = VK_LEFT Then
        EdLocal.SetFocus;
End;

Procedure TFPedCompra.EdLocalKeyDown(Sender: TObject; Var Key: Word;
    Shift: TShiftState);
Begin
    Inherited;
    If Key = VK_RIGHT Then
        BtnAbrePAliq.SetFocus;
    If Key = VK_LEFT Then
        EdImpVlrIcms.SetFocus;
End;

Procedure TFPedCompra.BtnDeleteListExit(Sender: TObject);
Begin
    Inherited;
    BtnProcProd.SetFocus;
End;

//Paulo 14/09/2010: Função verifica se o fornecedor esta cadastrado senão ele cadastra referente a NFe
Function TFPedCompra.ImportaFornecedor(XCNPJ, XRazao, XFAnt, XRua, XNro, XBairro, XCodIBGE, XMunic, XUF, XCep, XFone, XIE: String): WideString;
Var
    XCodAux, XcodPessoa: Integer;
Begin

   //---------------------TABELA PESSOA------------------------------//
     //Verifica se tem alguma coisa na tabela pessoa senão insere uma nova ou apenas atualiza
    If FiltraTabela(DMPESSOA.TALX, 'PESSOA', 'CPFCNPJ', XCNPJ, '') = false Then
    Begin


        XCodAux := InserReg(DMPESSOA.TPessoa, 'PESSOA', 'COD_PESSOA');
        DMPESSOA.TPessoa.FieldByName('COD_PESSOA').AsInteger := XCodAux;
        DMPESSOA.TPessoa.Edit;
         //Paulo 22/09/2010: caso o nome fantasia esteja vazio insere a razão
        If XFAnt = '' Then
            DMPESSOA.TPessoa.FieldByName('NOME').AsString := XRazao
        Else
            DMPESSOA.TPessoa.FieldByName('NOME').AsString := XFAnt;

        DMPESSOA.TPessoa.FieldByName('ENDERECO').AsString := XRua;
        DMPESSOA.TPessoa.FieldByName('BAIRRO').AsString := XBairro;
        DMPESSOA.TPessoa.FieldByName('COD_CIDADE').AsInteger := retornaCodCidade(XCodIBGE, XMunic, XUF);
        DMPESSOA.TPessoa.FieldByName('CEP').AsString := XCep;
        DMPESSOA.TPessoa.FieldByName('TELREL').AsString := XFone;
        DMPESSOA.TPessoa.FieldByName('CPFCNPJ').AsString := XCNPJ;
        DMPESSOA.TPessoa.FieldByName('ENDNUMERO').AsString := Copy(XNro, 0, 10);
        DMPESSOA.TPessoa.Post;
        DMPESSOA.TransacPessoa.CommitRetaining;

    End
    Else Begin
        //Se for encontrado ele atualiza os dados
        DMPESSOA.TALX.Close;
        DMPESSOA.TALX.SQL.Clear;
        DMPESSOA.TALX.SQL.Add('update PESSOA set PESSOA.nome = :NOME, PESSOA.endereco = :ENDERECO, PESSOA.bairro = :BAIRRO,');
        DMPESSOA.TALX.SQL.Add('PESSOA.cod_cidade = :CODCIDADE, PESSOA.cep = :CEP, PESSOA.telrel = :TEL,');
        DMPESSOA.TALX.SQL.Add('PESSOA.endnumero = :ENDNUM  where PESSOA.cpfcnpj = :CNPJ');
        //Paulo 22/09/2010: caso o nome fantasia esteja vazio insere a razão
        If XFAnt = '' Then
            DMPESSOA.TALX.ParamByName('NOME').AsString := XRazao
        Else
            DMPESSOA.TALX.ParamByName('NOME').AsString := XFAnt;

        DMPESSOA.TALX.ParamByName('ENDERECO').AsString := XRua;
        DMPESSOA.TALX.ParamByName('BAIRRO').AsString := XBairro;
        DMPESSOA.TALX.ParamByName('CODCIDADE').AsInteger := retornaCodCidade(XCodIBGE, XMunic, XUF);
        DMPESSOA.TALX.ParamByName('CEP').AsString := XCep;
        DMPESSOA.TALX.ParamByName('TEL').AsString := XFone;
        DMPESSOA.TALX.ParamByName('ENDNUM').AsString := Copy(XNro, 0, 10);
        DMPESSOA.TALX.ParamByName('CNPJ').AsString := XCNPJ;
        DMPESSOA.TALX.ExecSQL;
        DMPESSOA.TransacPessoa.CommitRetaining;
        DMPESSOA.TALX.Open;
    End;
     //---------------------FIM DA TABELA PESSOA------------------------------//

     //---------------------TABELA PESSOA JURIDICA----------------------------//
     //Retorna o código de pessoa
    FiltraTabela(DMPESSOA.TALX, 'PESSOA', 'CPFCNPJ', XCNPJ, '');
    XcodPessoa := DMPESSOA.TALX.FieldByName('cod_pessoa').AsInteger;
    XcodForn := XcodPessoa;
     //Verifica na tabela PESSOAJ se tem alguma coisa se não ter nada insere um novo senão atualiza
    If FiltraTabela(DMPESSOA.TALX, 'PESSOAJ', 'COD_PESSOA', IntToStr(XcodPessoa), '') = false Then
    Begin
        XCodAux := InserReg(DMPESSOA.TPessoaJ, 'PESSOAJ', 'COD_PESSOAJ');
        DMPESSOA.TPessoaJ.FieldByName('COD_PESSOAJ').AsInteger := XCodAux;
        DMPESSOA.TPessoaJ.Edit;
        DMPESSOA.TPessoaJ.FieldByName('COD_PESSOA').AsInteger := XcodPessoa;
        DMPESSOA.TPessoaJ.FieldByName('INSC_EST').AsString := XIE;
        DMPESSOA.TPessoaJ.FieldByName('RAZAO_SOCIAL').AsString := XRazao;
        DMPESSOA.TPessoaJ.Post;
        DMPESSOA.TransacPessoa.CommitRetaining;

    End
    Else Begin
        //se for encontrado ele atualiza os dados
        DMPESSOA.TALX.Close;
        DMPESSOA.TALX.SQL.Clear;
        DMPESSOA.TALX.SQL.Add('update PESSOAJ set PESSOAJ.razao_social = :RAZAO, PESSOAJ.insc_est = :IE');
        DMPESSOA.TALX.SQL.Add('where PESSOAJ.cod_pessoa = :CODPESSOA');
        DMPESSOA.TALX.ParamByName('RAZAO').AsString := XRazao;
        DMPESSOA.TALX.ParamByName('IE').AsString := XIE;
        DMPESSOA.TALX.ExecSQL;
        DMPESSOA.TransacPessoa.CommitRetaining;
        DMPESSOA.TALX.Open;


    End;
     //--------------FIM DA TABELA PESSOA JURIDICA--------------------//

     //-------------------TABELA FORNECEDOR---------------------------//
    If FiltraTabela(DMPESSOA.TALX, 'FORNECEDOR', 'COD_PESSOA', IntToStr(XcodPessoa), '') = false Then
    Begin
        XCodAux := InserReg(DMPESSOA.TFornecedor, 'FORNECEDOR', 'COD_FORNEC');
        DMPESSOA.TFornecedor.FieldByName('COD_FORNEC').AsInteger := XCodAux;
        DMPESSOA.TFornecedor.Edit;
        DMPESSOA.TFornecedor.FieldByName('COD_PESSOA').AsInteger := XcodPessoa;
        DMPESSOA.TFornecedor.FieldByName('COD_INTERNO').AsString := UltCodInt('FORNECEDOR', 'PES');
        DMPESSOA.TFornecedor.FieldByName('DATA_CAD').AsString := DateToStr(Date);
        DMPESSOA.TFornecedor.Post;
        DMPESSOA.TransacPessoa.CommitRetaining;

    End;
     //----------------FIM DA TABELA FORNECEDOR------------------------//
End;

//Paulo 24/09/2010: Função que encontra um pk válida para a tabela

Function TFPedCompra.EncontraPK(XTable: String; XCampo: String): integer;
Var
    XControl: Integer;
Begin
    DMMACS.TCodigo.Close;
    DMMACS.TCodigo.SQL.Clear;
    DMMACS.TCodigo.SQL.Add('select * from codigo');
    DMMACS.TCodigo.Open;
    XControl := 0;
   //Vai testando se existe codigo para o campo necessario, se exite var incrementando ate achar um valor valido
    While (XControl <> 1) Do
    Begin
        DMESTOQUE.Alx1.Close;
        DMESTOQUE.Alx1.SQL.Clear;
        DMESTOQUE.Alx1.SQL.Add('Select * from ' + XTable);
        DMESTOQUE.Alx1.SQL.Add(' where ' + XTable + '.' + XCampo + ' = :parametro');
        DMESTOQUE.Alx1.ParamByName('PARAMETRO').AsInteger := DMMACS.TCodigo.FieldByName(XCampo).AsInteger;
        DMESTOQUE.Alx1.Open;
        If (Not (DMESTOQUE.Alx1.IsEmpty)) Then Begin
            XControl := 0;
            DMMACS.TCodigo.Edit;
            DMMACS.TCodigo.FieldByName(XCampo).AsInteger := DMMACS.TCodigo.FieldByName(XCampo).AsInteger + 1;
            DMMACS.TCodigo.Post;
            DMMACS.Transaction.CommitRetaining;
        End
        Else
            XControl := 1;
    End;
    EncontraPK := DMMACS.TCodigo.FieldByName(XCampo).AsInteger;

End;

//Paulo 17/09/2010: Função para retornar o código da cidade segundo a Nfe e atualizar o cod ibge da tabela

Function TFPedCompra.retornaCodCidade(XCodCid, XCidade, XEstado: String): integer;
Begin
 //Procura a cidade pelo cod ibge senão encontrar ele atualiza a tabela
    If FiltraTabela(DMESTOQUE.Alx, 'CIDADE', 'COD_IBGE', XCodCid, '') = True Then
    Begin
        retornaCodCidade := DMESTOQUE.Alx.FieldByName('COD_CIDADE').AsInteger;
    End
    Else Begin
   //Seleciona a cidade e insere o código do ibge
        If FiltraTabela(DMESTOQUE.Alx, 'CIDADE', 'NOME', XCidade, '') = true Then
        Begin
            FiltraTabela(DMESTOQUE.Alx1, 'ESTADO', 'UF_ESTADO', XEstado, '');
            DMENTRADA.TAlx.Close;
            DMENTRADA.TALX.SQL.Clear;
            DMENTRADA.TALX.SQL.Add('select COD_CIDADE from CIDADE where CIDADE.NOME = :CIDNOME and CIDADE.COD_ESTADO = :CODEST');
            DMENTRADA.TALX.ParamByName('CIDNOME').AsString := DMESTOQUE.Alx.FieldByName('NOME').AsString;
            DMENTRADA.TALX.ParamByName('CODEST').AsString := DMESTOQUE.Alx1.FieldByName('COD_ESTADO').AsString;
            DMENTRADA.TALX.Open;
           //atualiza o código do ibge
            DMGEOGRAFIA.TCidade.Close;
            DMGEOGRAFIA.TCidade.SQL.Clear;
            DMGEOGRAFIA.TCidade.SQL.Add('update CIDADE set CIDADE.COD_IBGE = :CODIBGE, CIDADE.COD_ESTADUAL = :CODEST,CIDADE.SIGLA = :SIGLA');
            DMGEOGRAFIA.TCidade.SQL.Add('where CIDADE.COD_CIDADE = :CODCID');
            DMGEOGRAFIA.TCidade.ParamByName('CODIBGE').AsInteger := StrToInt(XCodCid);
            DMGEOGRAFIA.TCidade.ParamByName('CODEST').AsInteger := StrToInt(XCodCid);
            DMGEOGRAFIA.TCidade.ParamByName('SIGLA').AsString := DMESTOQUE.Alx1.FieldByName('UF_ESTADO').AsString;
            DMGEOGRAFIA.TCidade.ParamByName('CODCID').AsInteger := DMENTRADA.TALX.FieldByName('COD_CIDADE').AsInteger;
            DMGEOGRAFIA.TCidade.ExecSQL;
            DMGEOGRAFIA.IBT.CommitRetaining;
            DMGEOGRAFIA.TCidade.Open;
        End
        Else Begin
           //insere uma nova cidade caso não exixta essa cidade no banco
            FiltraTabela(DMESTOQUE.Alx1, 'ESTADO', 'UF_ESTADO', XEstado, '');

            DMGEOGRAFIA.TCidade.Close;
            DMGEOGRAFIA.TCidade.SQL.Clear;
            DMGEOGRAFIA.TCidade.SQL.Add('insert into CIDADE(COD_CIDADE, NOME, COD_ESTADO, COD_IBGE,COD_ESTADUAL, SIGLA)');
            DMGEOGRAFIA.TCidade.SQL.Add('values(:CODCIDADE, :NOME, :CODESTADO, :CODIBGE,:CODESTADUAL, :SIGLA) ');
            DMGEOGRAFIA.TCidade.ParamByName('CODCIDADE').AsInteger := InserCodPk(DMGEOGRAFIA.TCidade, 'CIDADE', 'COD_CIDADE');
            DMGEOGRAFIA.TCidade.ParamByName('NOME').AsString := XCidade;
            DMGEOGRAFIA.TCidade.ParamByName('CODESTADO').AsInteger := DMESTOQUE.Alx1.FieldByName('COD_ESTADO').AsInteger;
            DMGEOGRAFIA.TCidade.ParamByName('CODIBGE').AsInteger := StrToInt(XCodCid);
            DMGEOGRAFIA.TCidade.ParamByName('CODESTADUAL').AsInteger := StrToInt(XCodCid);
            DMGEOGRAFIA.TCidade.ParamByName('SIGLA').AsString := DMESTOQUE.Alx1.FieldByName('UF_ESTADO').AsString;
            DMGEOGRAFIA.TCidade.ExecSQL;
            DMGEOGRAFIA.IBT.CommitRetaining;
            DMGEOGRAFIA.TCidade.Open;
        End;

        retornaCodCidade := DMENTRADA.TALX.FieldByName('COD_CIDADE').AsInteger;
    End;
End;

//Paulo 20/09/2010: Função que troca o ponto pela virgula
Function TFPedCompra.tiraPontoNfe(XValor: String): Real;
Var
    XalxX, XalxV: String;
    cont, Xalg: integer;
Begin
	If Xvalor<>''
   then Begin
        XalxV := 'x';
        Xalg := 1;
        cont := 1;
        While (XalxV <> '') Do
        Begin
            XalxV := (Copy(XValor, Xalg, 1));
            If (XalxV <> '.') Then
            Begin
                If (cont > 1) Then
                Begin
                    XalxX := XAlxX + XalxV;
                End
                Else Begin
                    XalxX := XalxV;
                End;
            End
            Else Begin
                XalxX := XalxX + ',';

            End;
            cont := cont + 1;
            Xalg := Xalg + 1;
        End;
        Try
           tiraPontoNfe := StrToFloat(XalxX);
        Except
           Result:=0;
        End;
   End
   Else Begin
       Result:=0;
   End;

End;

//Paulo 15/09/2010: Para importação de NFe

Procedure TFPedCompra.BtnImportaNfeClick(Sender: TObject);
Var
    XnodePrim, XnodePai, XnodeLer, XNodeAux: IXMLNode;
    XIdRetorno: WideString;
    XDocNfe: TXMLDocument;
    XOpenNfe: TOpenDialog;
    CODPEDIDO: Integer;
    Xpont, XauxIcms, XalxCodForm, XalxBarra, XAlxCst, xteste, XDescProd: String;
    XBaseC: Real;
    XIcmsFilho, xDtTmp: String;
    XEmpresaSimplesNacional: Boolean;
    xNrFatura, xVlrFatura, xVlrParcela, xDtVencimento, xDia, xVencimento: String;
    xNumItem, xCodImpNfeFinanc, xIntervaloDias: Integer;
    pICMSST, pFCP, vICMSST, vBCST, vICMS: String;
Begin
    Inherited;
    XDocNfe := TXMLDocument.Create(Self);
    XOpenNfe := TOpenDialog.Create(Self);
    XFecha := 0;
    XFlagNfe := 0;

     //Paulo 14/08/2010: Importar NFe
    XOpenNfe.InitialDir := Application.GetNamePath;
    XOpenNfe.Filter := 'procNFE|*.XML';
    XOpenNfe.Title := 'Selecione o arquivo a importar';
    XOpenNfe.Execute;

    If (XOpenNfe.FileName = '') Then exit;


     //Paulo: Carregando o arquivo XML
    XDocNfe.LoadFromFile(XOpenNfe.FileName);
    XDocNfe.Active := True;

     //Jônatas 23/07/2013 - Ler a chave da nota fiscal
    Try
        XNodePrim := XdocNfe.DocumentElement.ChildNodes.FindNode('protNFe');
        XNodePai := XNodePrim.ChildNodes.FindNode('infProt');
        XNodeLer := XNodePai.ChildNodes['chNFe'];
    Except
    	 MessageDlg('Xml inválido - [protNFe], [infProt], [chNFe] não encontrados.', mtWarning, [mbOK], 0);
        exit;
    End;

    FMenu.XChaveNFe := XNodeLer.Text; //Armazenar o valor da chave da NFE
    
     //Lendo os dados da Nfe
    Try
        XnodePrim := XDocNfe.DocumentElement.ChildNodes.FindNode('NFe');
        XnodePai := XnodePrim.ChildNodes.FindNode('infNFe');
        XnodeLer := XnodePai.ChildNodes['ide'];
    Except
        Mensagem('A T E N Ç Ã O ', 'Não poderá ser feita a importação da NFe, arquivo XML fora de padrão de importação', '', 1, 1, false, 'i');
        exit;
    End;

    //XIdRetorno:=(XnodeLer.ChildNodes['cNF'].Text);//Código Sequencial NFe
    XNumNFe := (XnodeLer.ChildNodes['nNF'].Text); //Número da NF
    XDtEmissao := (XnodeLer.ChildNodes['dhEmi'].Text); //Data Emissão
    FMenu.XDTREF := XDtEmissao;
    XDtSaiEnt := (XnodeLer.ChildNodes['dhSaiEnt'].Text); //Jônatas 24/07/2013 - Data de saída/entrada
    ///XIdRetorno:=(XnodeLer.ChildNodes['verProc'].Text);//Descrição da NF

    if XnodeLer.ChildNodes['serie'].Text = '' then
    	FMenu.xSerieNfe := '1'
    else
	    FMenu.xSerieNfe := (XnodeLer.ChildNodes['serie'].Text);//Série da NF
       
     //Lendo os dados do fornecedor
    XnodeLer := XnodePai.ChildNodes['emit'];
     //Endereço do Fornecedor
    XNodeAux := XnodeLer.ChildNodes['enderEmit'];
     //Verifica se tem fornecedor cadastrado se não é cadastrado na hora
    ImportaFornecedor(XnodeLer.ChildNodes['CNPJ'].Text, XnodeLer.ChildNodes['xNome'].Text, XnodeLer.ChildNodes['xFant'].Text,
        XNodeAux.ChildNodes['xLgr'].Text, XNodeAux.ChildNodes['nro'].Text, XNodeAux.ChildNodes['xBairro'].Text,
        XNodeAux.ChildNodes['cMun'].Text, XNodeAux.ChildNodes['xMun'].Text, XNodeAux.ChildNodes['UF'].Text,
        XNodeAux.ChildNodes['CEP'].Text, XNodeAux.ChildNodes['fone'].Text, XnodeLer.ChildNodes['IE'].Text);
      //Jônatas 11/09/2013 - Armazenar o CRT do emitente para verificação dos impostos
    XNodeAux := XnodeLer.ChildNodes['CRT'];

    if XnodeLer.ChildNodes['CRT'].Text <> '3' then
       XEmpresaSimplesNacional := True;
      //--------------------------------------------------------------------------//
      //Paulo 20/09/2010: Inserir Produtos em uma tabela temporária
      //---------------------------------------------------------------------------//
      //Apaga dados da tabela temporaria
    DMENTRADA.TImpNfeTMP.Close;
    DMENTRADA.TImpNfeTMP.SQL.Clear;
    DMENTRADA.TImpNfeTMP.SQL.Add('DELETE FROM IMPNFETMP');
    DMENTRADA.TImpNfeTMP.ExecSQL;

    FiltraTabela(DMMACS.TEmpresa, 'EMPRESA', '', '', '');
      //PAulo 29/09/2010: Verifica qual aliqota ICMS é usada
    XicmsBD := DMMACS.TEmpresa.FieldByName('ICMS').AsCurrency;

    DMENTRADA.IBT.CommitRetaining;
    xnumItem:=0;
      //Leitura dos itens
    XnodeLer := XnodePai.ChildNodes['det'];
    While Not (XNodeAux.ChildNodes.First = Nil) Do
    Begin
        XnodeLer.ChildNodes.FindNode('det');
        XNodeAux := XnodeLer.ChildNodes['prod'];
        If Not (XNodeAux.ChildNodes.First = Nil) Then
        Begin
           //Paulo 20/09/2010: insere os itens em uma tabela temporaria
            DMENTRADA.TImpNfeTMP.Close;
            DMENTRADA.TImpNfeTMP.SQL.Clear;
            DMENTRADA.TImpNfeTMP.SQL.Add(' insert into IMPNFETMP (NITEM, CODPRODFORN,CODBARRA,DESCPROD,NCM,TIPOUNIDADE,MARCA, ');
            DMENTRADA.TImpNfeTMP.SQL.Add(' QUANTIDADE, QTDEMB, VALORUN, VALORTOTAL, VALORDESCONTO, VALOROUTROS, CST, ALIQICMS, VALORICMS, COD_ESTOQUE, STATUS, CODPRODUTO, ');
            DMENTRADA.TImpNfeTMP.SQL.Add(' BASESUBST, ICMSSUBST, VALORBASE, IPI, VALORIPI, VALORPIS, VALORCOFINS, VALORVENDA, CFOP, DESCPRODVINCULADO, valorvendaat, ');
            DMENTRADA.TImpNfeTMP.SQL.Add(' VALORFRETE, ALIQFRETE, ALIQST, ALIQFCP) ');
            DMENTRADA.TImpNfeTMP.SQL.Add(' values(:NITEM, :CODPRODFORN, :CODBARRA, :DESCPROD, :NCM, :TIPOUNIDADE, :MARCA, ');
            DMENTRADA.TImpNfeTMP.SQL.Add(' :QUANTIDADE, :QTDEMB, :VALORUN, :VALORTOTAL, :VALORDESCONTO, :VALOROUTROS, :CST, :ALIQICMS, :VALORICMS, :CODESTOQ, :STATUS, :CODPRODUTO, ');
            DMENTRADA.TImpNfeTMP.SQL.Add(' :BASESUBST, :ICMSSUBST, :VALORBASE, :IPI, :VALORIPI, :VALORPIS, :VALORCOFINS, :VALORVENDA, :CFOP, :DESCVINC, :valorvendaat, ');
            DMENTRADA.TImpNfeTMP.SQL.Add(' :VALORFRETE, :ALIQFRETE, :ALIQST, :ALIQFCP) ');
            xNumItem:=xNumItem+1;
            DMENTRADA.TImpNfeTMP.ParamByName('NITEM').AsInteger := xNumItem;
            DMENTRADA.TImpNfeTMP.ParamByName('CODPRODFORN').AsString := XNodeAux.ChildNodes['cProd'].Text;

            XalxCodForm := XNodeAux.ChildNodes['cProd'].Text;

            XalxBarra := XNodeAux.ChildNodes['cEAN'].Text;

            if XalxBarra = 'SEM GTIN' then
               XalxBarra := '';
               
            DMENTRADA.TImpNfeTMP.ParamByName('CODBARRA').AsString := XalxBarra;

            If (XalxBarra = '') Then
                XalxBarra := '000';
            XDescProd := Copy(XNodeAux.ChildNodes['xProd'].Text, 1, 55);
            DMENTRADA.TImpNfeTMP.ParamByName('DESCPROD').AsString := XDescProd;
            DMENTRADA.TImpNfeTMP.ParamByName('NCM').AsString := XNodeAux.ChildNodes['NCM'].Text;
            //Jônatas 24/09/2013 - Armazena o valor do campo do CFOP
            DMENTRADA.TImpNfeTMP.ParamByName('CFOP').AsString := XNodeAux.ChildNodes['CFOP'].Text;
               {if(Copy(XNodeAux.ChildNodes['uCom'].Text,1,2) = 'KI')then
                  DMENTRADA.TImpNfeTMP.ParamByName('TIPOUNIDADE').AsString:='KIT'
               else
            DMENTRADA.TImpNfeTMP.ParamByName('TIPOUNIDADE').AsString:=Copy(XNodeAux.ChildNodes['uCom'].Text,1,2);}
            DMENTRADA.TImpNfeTMP.ParamByName('TIPOUNIDADE').AsString := 'UN';
            DMENTRADA.TImpNfeTMP.ParamByName('QUANTIDADE').AsFloat := tiraPontoNfe(XNodeAux.ChildNodes['qCom'].Text);
            DMENTRADA.TImpNfeTMP.ParamByName('QTDEMB').AsFloat := 1;
            DMENTRADA.TImpNfeTMP.ParamByName('VALORUN').AsFloat := tiraPontoNfe(XNodeAux.ChildNodes['vUnCom'].Text);
            DMENTRADA.TImpNfeTMP.ParamByName('VALORTOTAL').AsFloat := tiraPontoNfe(XNodeAux.ChildNodes['vProd'].Text);
            DMENTRADA.TImpNfeTMP.ParamByName('VALORDESCONTO').AsFloat := tiraPontoNfe(XNodeAux.ChildNodes['vDesc'].Text);
            DMENTRADA.TImpNfeTMP.ParamByName('VALOROUTROS').AsFloat := tiraPontoNfe(XNodeAux.ChildNodes['vOutro'].Text);
            XBaseC := tiraPontoNfe(XNodeAux.ChildNodes['vProd'].Text);
            
            //Paulo 21/09/2010: verifica se existe esse produto ja cadastrado na tabela codigo barra
            FiltraTabela(DMESTOQUE.Alx4, 'fornecedor', 'cod_pessoa', IntToStr(XcodForn), '');
            XcodFornecedor := DMESTOQUE.Alx4.FieldByName('cod_fornec').AsInteger;

            // Edmar - 16/11/2017 - Extrai o frete
            // vFrete
            // DMENTRADA.TImpNfeTMP.ParamByName('VALORTOTAL').AsFloat :=
            xVlrFrete := tiraPontoNfe(XNodeAux.ChildNodes['vFrete'].Text);
            DMENTRADA.TImpNfeTMP.ParamByName('VALORFRETE').AsFloat := xVlrFrete;
            DMENTRADA.TImpNfeTMP.ParamByName('ALIQFRETE').AsFloat := (100 * XVLRFRETE) / XBaseC;

            //Jônatas 11/09/2013 - Verifica as tags xml e verifica se é do SIMPLES ou é normal
            Try
                XNodeAux := XnodeLer.ChildNodes['imposto'];
                XNodeAux := XNodeAux.ChildNodes['ICMS'];
                XIcmsFilho := XNodeAux.ChildNodes[0].NodeName;
                If ((XIcmsFilho = 'ICMSSN101') Or (XIcmsFilho = 'ICMSSN102') Or (XIcmsFilho = 'ICMSSN201')
                   Or (XIcmsFilho = 'ICMSSN202') Or (XIcmsFilho = 'ICMSSN500') Or (XIcmsFilho = 'ICMSSN900'))
                Then Begin //SIMPLES
                   XNodeAux := XNodeAux.ChildNodes[XIcmsFilho]; //entra na tag de Simples
                   XAlxCst := XNodeAux.ChildNodes['CSOSN'].Text;
                   {if ((XNodeAux.ChildNodes['CSOSN'].Text = '101') Or (XNodeAux.ChildNodes['CSOSN'].Text = '102') Or (XNodeAux.ChildNodes['CSOSN'].Text = '103')) Then
                       encontraImposto(XAlxCst, XNodeAux.ChildNodes['CSOSN'].Text, XNodeAux.ChildNodes['pCredSN'].Text, XNodeAux.ChildNodes['vCredICMSSN'].Text, 0)//Jônatas 02/10/2013 - Para notas do SIMPLES o valor da base de cálculo é 0
                   else begin}
                   
                   encontraImposto(XAlxCst, XNodeAux.ChildNodes['CSOSN'].Text, XNodeAux.ChildNodes['pICMS'].Text, XNodeAux.ChildNodes['vICMS'].Text, XBaseC);
                   encontraImpostoSubst(XAlxCst, XNodeAux.ChildNodes['CSOSN'].Text, XNodeAux.ChildNodes['vBCST'].Text, XNodeAux.ChildNodes['pICMSST'].Text, XNodeAux.ChildNodes['vICMSST'].Text,
                       XNodeAux.ChildNodes['vBCSTRet'].Text, XNodeAux.ChildNodes['vICMSSTRet'].Text);

                       {//Edmar - 10/04/2014 - Corrigido a leitura da tag vBCST (anteriormente vBCSTRet)
                       if ((XNodeAux.ChildNodes['CSOSN'].Text = '201') Or (XNodeAux.ChildNodes['CSOSN'].Text = '202') Or (XNodeAux.ChildNodes['CSOSN'].Text = '203')) Then
                           encontraImpostoSubst(XAlxCst, XNodeAux.ChildNodes['CSOSN'].Text, XNodeAux.ChildNodes['vBCST'].Text, XNodeAux.ChildNodes['vICMSST'].Text)
                       else//Imune; Não tributada pelo Simples Nacional; ICMS cobrado anteriormente por substituição tributária (substituído) ou por antecipação
                           //Jônatas 11/09/2013 - Verificar esses casos
                           encontraImpostoSubst(XAlxCst, XNodeAux.ChildNodes['CSOSN'].Text, XNodeAux.ChildNodes['vBCSTRet'].Text, XNodeAux.ChildNodes['vICMSSTRet'].Text)}
                   {end;}
                End
                Else Begin //NORMAL
                    XNodeAux := XNodeAux.ChildNodes[XIcmsFilho]; //entra na tag de Normal
                    XAlxCst := XNodeAux.ChildNodes['orig'].Text + XNodeAux.ChildNodes['CST'].Text;
                    {If ((XIcmsFilho = 'ICMS00') Or (XIcmsFilho = 'ICMS51') Or (XIcmsFilho = 'ICMS20') Or (XIcmsFilho = 'ICMS40') OR (XIcmsFilho = 'ICMS30'))
                    Then Begin//Imposto normal}
                    encontraImposto(XAlxCst,XNodeAux.ChildNodes['orig'].Text+XNodeAux.ChildNodes['CST'].Text,XNodeAux.ChildNodes['pICMS'].Text,XNodeAux.ChildNodes['vICMS'].Text, XBaseC);
                    {End
                    Else Begin//Imposto com substituição tributária
                        If ((XIcmsFilho = 'ICMS60') Or (XIcmsFilho = 'ICMS10') Or (XIcmsFilho = 'ICMS90') Or (XIcmsFilho = 'ICMS70')  Or (XIcmsFilho = 'ICMSST')) Then}
                    encontraImpostoSubst(XAlxCst, XNodeAux.ChildNodes['orig'].Text+XNodeAux.ChildNodes['CST'].Text,XNodeAux.ChildNodes['vBCST'].Text, XNodeAux.ChildNodes['pICMSST'].Text, XNodeAux.ChildNodes['vICMSST'].Text, '', '');
                    //End;
                End;

                try
                   pFCP := XNodeAux.ChildNodes['pFCP'].Text;
                   DMENTRADA.TImpNfeTMP.ParamByName('ALIQFCP').AsFloat := tiraPontoNfe(pFCP);
                except
                   DMENTRADA.TImpNfeTMP.ParamByName('ALIQFCP').AsFloat := 0.00;
                end;
            Except
                ShowMessage('Erro ao tentar encontrar os impostos');
            End;
            //Para IPI
            XNodeAux := XnodeLer.ChildNodes['imposto'];
            XNodeAux := XNodeAux.ChildNodes['IPI'];
            XNodeAux := XNodeAux.ChildNodes['IPITrib'];

            //PAulo: 29/09/2010: Se não tiver IPI zera os campos
            If (XNodeAux.ChildNodes['pIPI'].Text = '') Then
            Begin
                DMENTRADA.TImpNfeTMP.ParamByName('IPI').AsFloat := 0;
                DMENTRADA.TImpNfeTMP.ParamByName('VALORIPI').AsFloat := 0;
            End
            Else Begin
                DMENTRADA.TImpNfeTMP.ParamByName('IPI').AsFloat := tiraPontoNfe(XNodeAux.ChildNodes['pIPI'].Text);
                DMENTRADA.TImpNfeTMP.ParamByName('VALORIPI').AsFloat := tiraPontoNfe(XNodeAux.ChildNodes['vIPI'].Text);
            End;

            //Para PIS
            XNodeAux := XnodeLer.ChildNodes['imposto'];
            XNodeAux := XNodeAux.ChildNodes['PIS'];
            XNodeAux := XNodeAux.ChildNodes['PISAliq'];

            //Alex: 08/03/2008: Se não tiver PIS zera os campos
            If (XNodeAux.ChildNodes['vPIS'].Text = '') Then
            Begin
                DMENTRADA.TImpNfeTMP.ParamByName('VALORPIS').AsFloat := 0;
            End
            Else Begin
                DMENTRADA.TImpNfeTMP.ParamByName('VALORPIS').AsFloat := tiraPontoNfe(XNodeAux.ChildNodes['vPIS'].Text);
            End;

            //Para COFINS
            XNodeAux := XnodeLer.ChildNodes['imposto'];
            XNodeAux := XNodeAux.ChildNodes['COFINS'];
            XNodeAux := XNodeAux.ChildNodes['COFINSAliq'];

            //Alex - 08/03/2008: Se não tiver COFINS zera os campos
            If (XNodeAux.ChildNodes['vCOFINS'].Text = '') Then
            Begin
                DMENTRADA.TImpNfeTMP.ParamByName('VALORCOFINS').AsFloat := 0;
            End
            Else Begin
                DMENTRADA.TImpNfeTMP.ParamByName('VALORCOFINS').AsFloat := tiraPontoNfe(XNodeAux.ChildNodes['vCOFINS'].Text);
            End;

            //Para SEGURO
            XNodeAux := XnodeLer.ChildNodes['imposto'];
            XNodeAux := XNodeAux.ChildNodes['COFINS'];
            XNodeAux := XNodeAux.ChildNodes['COFINSAliq'];

            //Alex - 08/03/2008: Se não tiver COFINS zera os campos
            If (XNodeAux.ChildNodes['vCOFINS'].Text = '') Then
            Begin
                DMENTRADA.TImpNfeTMP.ParamByName('VALORCOFINS').AsFloat := 0;
            End
            Else Begin
                DMENTRADA.TImpNfeTMP.ParamByName('VALORCOFINS').AsFloat := tiraPontoNfe(XNodeAux.ChildNodes['vCOFINS'].Text);
            End;

            //Jônatas 12/09/2013 - Verifica se existe na tabela codigobarra
            DMESTOQUE.Alx3.Close;
            DMESTOQUE.Alx3.SQL.Clear;
            DMESTOQUE.Alx3.SQL.Add('select codigobarra.cod_estoque, estoque.vendvarv, subproduto.marca, ');
            DMESTOQUE.Alx3.SQL.Add('subproduto.cod_produto, subproduto.descricao, vendatav ');
            DMESTOQUE.Alx3.SQL.Add('from codigobarra');
            DMESTOQUE.Alx3.SQL.Add('inner join estoque on codigobarra.cod_estoque = estoque.cod_estoque');
            DMESTOQUE.Alx3.SQL.Add('inner join subproduto on estoque.cod_subprod = subproduto.cod_subproduto');
            DMESTOQUE.Alx3.SQL.Add('where codigobarra.codbarra = :codbarra and codigobarra.codfornerc = :codforn');
            DMESTOQUE.Alx3.ParamByName('codbarra').AsString := XnodeLer.ChildNodes['prod'].ChildNodes['cProd'].Text;
            DMESTOQUE.Alx3.ParamByName('codforn').AsInteger := DMESTOQUE.Alx4.FieldByName('cod_fornec').AsInteger;
            DMESTOQUE.Alx3.Open;
            if not(DMESTOQUE.Alx3.IsEmpty)then
            begin
                DMENTRADA.TImpNfeTMP.ParamByName('MARCA').AsString := DMESTOQUE.Alx3.FieldByName('MARCA').AsString;            
                DMENTRADA.TImpNfeTMP.ParamByName('CODESTOQ').AsInteger:=DMESTOQUE.Alx3.FieldByName('COD_ESTOQUE').AsInteger;
                //Paulo 23/09/2010:Verifica se a descrição do produto da nota é a mesma que esta cadastrada
                //FiltraTabela(DMESTOQUE.Alx4,'estoque','cod_estoque',IntToStr(DMESTOQUE.Alx3.FieldByName('COD_ESTOQUE').AsInteger),'');
                DMENTRADA.TImpNfeTMP.ParamByName('STATUS').AsString := 'OK';
                DMENTRADA.TImpNfeTMP.ParamByName('CODPRODUTO').AsInteger := DMESTOQUE.Alx3.FieldByName('cod_produto').AsInteger;
                DMENTRADA.TImpNfeTMP.ParamByName('VALORVENDA').AsFloat := DMESTOQUE.Alx3.FieldByName('VENDVARV').AsFloat;
				 //Edmar - 24/07/2014 - Adiciona a descrição do produto vinculado
                DMENTRADA.TImpNfeTMP.ParamByName('DESCVINC').AsString := DMESTOQUE.Alx3.FieldByName('DESCRICAO').AsString;
                DMENTRADA.TImpNfeTMP.ParamByName('valorvendaat').AsCurrency := DMESTOQUE.Alx3.FieldByName('vendatav').AsCurrency;
            End
            Else Begin//Caso não encontre na tabela codigobarra
                //Edmar - 19/06/2015 - Busca se o codigo do fabricante se encontra cadastrado
                //no sistema com algum outro fornecedor, neste caso dá uma mensagem
                DMESTOQUE.Alx3.Close;
                DMESTOQUE.Alx3.SQL.Clear;
                DMESTOQUE.Alx3.SQL.Add(' SELECT * FROM CODIGOBARRA WHERE CODIGOBARRA.CODBARRA = :CODIGO ');
                DMESTOQUE.Alx3.ParamByName('CODIGO').AsString := XnodeLer.ChildNodes['prod'].ChildNodes['cProd'].Text;
                DMESTOQUE.Alx3.Open;

                if not DMESTOQUE.Alx3.IsEmpty then
       			Mensagem('A T E N Ç Ã O ', 'O Produto com Código de Fabricante '+XnodeLer.ChildNodes['prod'].ChildNodes['cProd'].Text+' já se encontra cadastrado no sistema com outro Fornecedor.', '', 1,1, false, 'i');
                
                //Paulo 05/10/2011: verifica se já tem o produto cadastrado, busca primeiro pelo codfabricante
                DMESTOQUE.Alx5.Close;
                DMESTOQUE.Alx5.SQL.Clear;
                DMESTOQUE.Alx5.SQL.Add('select * from subproduto');
                DMESTOQUE.Alx5.SQL.Add(' WHERE subproduto.CODPRODFABR = :CODPRODFABR');
                DMESTOQUE.Alx5.SQL.Add(' OR subproduto.CODBARRA= :CODBARRA'); //Jônatas 13/08/2013 - Alguns codigos são semelhantes, mas sem o uso de pontos. Para maximizar a eficiência, foi adicionado a comparação do ódigo de barras
                DMESTOQUE.Alx5.ParamByName('CODPRODFABR').AsString := XalxCodForm;
                DMESTOQUE.Alx5.ParamByName('CODBARRA').AsString := XalxCodForm;
                DMESTOQUE.Alx5.Open;
                If Not (DMESTOQUE.Alx5.IsEmpty) Then
                Begin
                    FiltraTabela(DMESTOQUE.Alx4, 'estoque', 'cod_subprod', IntToStr(DMESTOQUE.Alx5.FieldByName('COD_SUBPRODUTO').AsInteger), '');
                    DMENTRADA.TImpNfeTMP.ParamByName('STATUS').AsString := 'OK';
                    DMENTRADA.TImpNfeTMP.ParamByName('CODPRODUTO').AsInteger := DMESTOQUE.Alx5.FieldByName('cod_produto').AsInteger;
                    DMENTRADA.TImpNfeTMP.ParamByName('VALORVENDA').AsFloat := DMESTOQUE.Alx4.FieldByName('VENDVARV').AsFloat;
                    DMENTRADA.TImpNfeTMP.ParamByName('CODESTOQ').AsFloat := DMESTOQUE.Alx4.FieldByName('COD_ESTOQUE').AsFloat;
                    DMENTRADA.TImpNfeTMP.ParamByName('MARCA').AsString := DMESTOQUE.Alx5.FieldByName('MARCA').AsString;
                End
                Else Begin
                    DMENTRADA.TImpNfeTMP.ParamByName('STATUS').AsString := 'NCAD';
                    DMENTRADA.TImpNfeTMP.ParamByName('CODESTOQ').AsInteger := 0;
                    DMENTRADA.TImpNfeTMP.ParamByName('CODPRODUTO').AsInteger := 0;
                    DMENTRADA.TImpNfeTMP.ParamByName('VALORVENDA').AsFloat := 000;
                    DMENTRADA.TImpNfeTMP.ParamByName('MARCA').AsString := '';                    
                End;
            End;
            
            DMENTRADA.TImpNfeTMP.ExecSQL;

            XnodeLer := XnodeLer.NextSibling;
        End;
    End;
    DMENTRADA.IBT.CommitRetaining;
    
    //VAlores totais da nota
    XnodeLer := XnodePai.ChildNodes['total'];
    XNodeAux := XnodeLer.ChildNodes['ICMSTot'];
    //XTotalNFe := tiraPontoNfe(XNodeAux.ChildNodes['vProd'].Text);
    XFreteNfe := tiraPontoNfe(XNodeAux.ChildNodes['vFrete'].Text);
    //Jônatas 24/07/2013 - Incluí o valor do seguro
    XSeguroNfe := tiraPontoNfe(XNodeAux.ChildNodes['vSeg'].Text);
    XDescNFe := tiraPontoNfe(XNodeAux.ChildNodes['vDesc'].Text);
    XOutrosNFe := tiraPontoNfe(XNodeAux.ChildNodes['vOutro'].Text);
    //XTotalProd := tiraPontoNfe(XNodeAux.ChildNodes['vNF'].Text);
    XTotalNFe := tiraPontoNfe(XNodeAux.ChildNodes['vNF'].Text);
	 XTotalProd := tiraPontoNfe(XNodeAux.ChildNodes['vProd'].Text);

    if (DMMACS.TLoja.FieldByName('INSERIRFATURA').AsString = '1') then
    begin  
        //Edmar - 03/04/2014 - Deleta tudo da tabela que armazena as importações da fatura
        DMFINANC.TAlx.Close;
        DMFINANC.TAlx.SQL.Clear;
        DMFINANC.TAlx.SQL.Add('delete from impnfefinanc');
        DMFINANC.TAlx.ExecSQL;
        DMFINANC.Transaction.CommitRetaining;

        XnodeLer := XnodePai.ChildNodes['cobr'];//nó pai
        XNodeAux := XnodeLer.ChildNodes['fat'];//nó filho

        xNrFatura := XNodeAux.ChildNodes['nFat'].Text;//nó que será lido
        xVlrFatura := XNodeAux.ChildNodes['vOrig'].Text;//nó que será lido

        XNodeAux := XnodeLer.ChildNodes['dup'];//nó filho

        if (xNrFatura = '0') or (xNrFatura = '') then
			Mensagem('A T E N Ç Ã O ', 'Essa importação não possui fatura, portanto não gerará financeiro.', '', 1, 1, false, 'i');
           
        xCodImpNfeFinanc := 1;

        xDtTmp := XNodeAux.ChildNodes['dVenc'].Text;//Edmar - 07/04/2014 - Data tmp para consulta correta da forma de pagamento
		 xDtTmp := Copy(xDtTmp, 9, 2)+'/'+Copy(xDtTmp , 6, 2)+'/'+Copy(xDtTmp , 1, 4);
        
        try//Edmar - 03/04/2014 - Try para tratar exceção do fim do arquivo
        	While Not (XNodeAux.ChildNodes.First = Nil)  Do
        	begin
        		//Edmar - 02/04/2014 - Recupera valores da fatura
        		xVlrParcela := XNodeAux.ChildNodes['vDup'].Text;//nó que será lido

        		xDtVencimento := XNodeAux.ChildNodes['dVenc'].Text;//nó que será lido

        		xDtVencimento := Copy(xDtVencimento, 9, 2)+'/'+Copy(xDtVencimento , 6, 2)+'/'+Copy(xDtVencimento , 1, 4);

               DMFINANC.TAlx.Close;
               DMFINANC.TAlx.SQL.Clear;
               DMFINANC.TAlx.SQL.Add('insert into impnfefinanc (cod_impnfefinanc, nr_fatura, dt_vencimento, vlr_parcela, vlr_fatura) ');
               DMFINANC.TAlx.SQL.Add(' values (:cod, :nr_fatura, :dt, :vlr_parc, :vlr_fat) ');
               DMFINANC.TAlx.ParamByName('COD').AsInteger := xCodImpNfeFinanc;
               DMFINANC.TAlx.ParamByName('NR_FATURA').AsString := xNrFatura;
               DMFINANC.TAlx.ParamByName('DT').AsDate := StrToDate(xDtVencimento);
               DMFINANC.TAlx.ParamByName('VLR_PARC').AsCurrency := StrToCurr(SubstituiCaracter(xVlrParcela, '.', ','));
               DMFINANC.TAlx.ParamByName('VLR_FAT').AsCurrency := StrToCurr(SubstituiCaracter(xVlrFatura, '.', ','));
               DMFINANC.TAlx.ExecSQL;
//               DMFINANC.TAlx.Transaction.CommitRetaining;
				DMFINANC.Transaction.CommitRetaining;

               xCodImpNfeFinanc := xCodImpNfeFinanc + 1;

           	XNodeAux := XNodeAux.NextSibling;               
    	 	end;
        except
        on E : Exception do
        	
        end;
    end;
    //Paulo 01/11/2010 verifica se ja existe essa nota pra o mesmo fornecedor
    DMENTRADA.TAlx.Close;
    DMENTRADA.TAlx.SQL.Clear;
    DMENTRADA.TAlx.SQL.Add(' select * from vwpedc where (vwpedc.numfiscal=:numero) and (vwpedc.cod_fornec=:codigo) ');
    DMENTRADA.TAlx.ParamByName('numero').AsString := XNumNFe;
    DMENTRADA.TAlx.ParamByName('codigo').AsInteger := XcodFornecedor;
    DMENTRADA.TAlx.Open;
    If Not DMENTRADA.TAlx.IsEmpty
        Then Begin
        Mensagem('A T E N Ç Ã O ', 'Essa nota fiscal (Nr. '+XNumNFe+ ') já se encontra cadastrada no sistema, a importação será abortada. ', '', 1, 1, false, 'i');
        Exit;
    End;
    //Jônatas 25/09/2013 - Chamar a função que valida Verifica se os CST's estão casastrados
    If ValiCstImportada=false Then
        Exit;

    // calcula o valor rep do item da importação
    FImpNfe.CalcularValorRepItens();
    
    AbrirForm(TFImpNfe, FImpNfe, 0);

    If XFecha = 1 Then
        Exit;

    XFlagNfe := 1;

    XNumfiscNFe := StrToInt(XNumNFe); //Jônatas 30/07/2013 - Colocado aqui para melhor aproveitamento de variáveis
     //está sendo usada para garantir a gravação do numero fiscal no banco

    XImportNfe := 1; //Jônatas 30/07/2013 - Colocado aqui para utilizá-la como condição

     //Paulo 28/09/2010: INICIO DO PROCEDIMENTO DE NOVO PEDIDO
    BtnNovoClick(sender);

      //Insere os dados na tela
    DBColorEdit3.Text := XNumNFe;
     //XNumfiscNFe:=StrToInt(XNumNFe);
    DBColorEdit3.Enabled := false;
    EdValorPed.ValueNumeric := XTotalNFe;
    EdNumPed.Text := IntToStr(XNumfiscNFe);
    EdValorFrete.ValueNumeric := XFreteNfe;
    EdCodCli.Text := IntToStr(XcodFornecedor);
    EdCPF.Text := XCNPJForn;
    EdNomeCli.Text := XNomeForn;

	 //Edmar - 07/04/2014 - se retornou // quer dizer que não existe fatura no xml
    // portanto a nota é à vista
	 if (xDtTmp <> '//') and (xDtTmp <> '') then
    begin
        xDia := FormatDateTime('dd', Date());
        xVencimento := FormatDateTime('dd', StrToDateTime(xDtTmp));
        xIntervaloDias := StrToInt(xVencimento) - StrToInt(xDia);

        //Edmar - 03/04/2014 - Busca forma de pagamento compativel
        DMFINANC.TAlx.Close;
        DMFINANC.TAlx.SQL.Clear;
        DMFINANC.TAlx.SQL.Add('select * from formpag where (formpag.primparcela >= :dias) and (formpag.quantparcela = :qtdParc)');
        DMFINANC.TAlx.ParamByName('qtdParc').AsInteger := xCodImpNfeFinanc-1;
        DMFINANC.TAlx.ParamByName('dias').AsInteger := xIntervaloDias;
        DMFINANC.TAlx.Open;
        DMFINANC.TAlx.Last;
    end
    else
        FiltraTabela(DMFINANC.TAlx, 'FORMPAG', 'DESCRICAO', 'À VISTA', '');
        
    EDCODFORMPAG.Text := IntToStr(DMFINANC.TAlx.FieldByName('COD_FORMPAG').AsInteger);
    EDFORMPAG.Text := DMFINANC.TAlx.FieldByName('DESCRICAO').AsString;
    EdDescMoeda.Text := FloatToStr(XDescNFe);
    XCodFormPag := StrToInt(EDCODFORMPAG.Text);

     //Insere os produtos na tela
    FiltraTabela(DMENTRADA.TImpNfeTMP, 'impnfetmp', '', '', '');
    DMENTRADA.TImpNfeTMP.First;
    While Not DMENTRADA.TImpNfeTMP.Eof Do
    Begin
        FiltraTabela(DMESTOQUE.TEstoque, 'ESTOQUE', 'cod_estoque', IntToStr(DMENTRADA.TImpNfeTMP.FieldByName('COD_ESTOQUE').AsInteger), '');
           //FiltraTabela(DMESTOQUE.TSubProd,'SUBPRODUTO','COD_SUBPRODUTO',IntToStr(DMESTOQUE.TEstoque.FieldByName('COD_SUBPROD').AsInteger),'');
        FiltraTabela(DMESTOQUE.WSimilar, 'VWSIMILAR', 'COD_SUBPRODUTO', IntToStr(DMESTOQUE.TEstoque.FieldByName('COD_SUBPROD').AsInteger), '');
        EscreveLabels;
          // LSimilar.Caption:=DMESTOQUE.TSubProd.FieldByName('DESCRICAO').AsString;
        EDCodBarra.Text := DMENTRADA.TImpNfeTMP.FieldByName('CODBARRA').AsString;
          // EDCodInterno.Text:=DMESTOQUE.TSubProd.FieldByName('CONTRINT').AsString;
        EDQuantidade.ValueNumeric := DMENTRADA.TImpNfeTMP.FieldByName('QTDEMB').AsInteger*DMENTRADA.TImpNfeTMP.FieldByName('QUANTIDADE').AsCurrency;
        EDValUnit.ValueNumeric := DMENTRADA.TImpNfeTMP.FieldByName('VALORUN').AsFloat/DMENTRADA.TImpNfeTMP.FieldByName('QTDEMB').AsInteger;
        EDDesc.ValueNumeric := 0;
        EDTotal.ValueNumeric := DMENTRADA.TImpNfeTMP.FieldByName('VALORTOTAL').AsFloat;
        EdImpCST.Text := DMENTRADA.TImpNfeTMP.FieldByName('CST').AsString;
        EdImpCSTExit(Sender);
        If XEmpresaSimplesNacional=True
        Then Begin
        	//Se a empresa é do simples, zera as informações de icms
        	EdimpIcms.ValueNumeric := 0;
        	EdBCIcms.ValueNumeric := 0;
        	EdImpVlrIcms.ValueNumeric := 0;
        End
        Else Begin
         	EdimpIcms.ValueNumeric := DMENTRADA.TImpNfeTMP.FieldByName('ALIQICMS').AsInteger;
         	EdBCIcms.ValueNumeric := DMENTRADA.TImpNfeTMP.FieldByName('VALORBASE').AsFloat;
         	EdImpVlrIcms.ValueNumeric := DMENTRADA.TImpNfeTMP.FieldByName('VALORICMS').AsFloat;
        End;

        EdImpIpi.ValueNumeric := DMENTRADA.TImpNfeTMP.FieldByName('IPI').AsFloat;
        EdImpVlrIpi.ValueNumeric := DMENTRADA.TImpNfeTMP.FieldByName('VALORIPI').AsFloat;
        XBaseST := DMENTRADA.TImpNfeTMP.FieldByName('BASESUBST').AsFloat;
        XIcmsST := DMENTRADA.TImpNfeTMP.FieldByName('ICMSSUBST').AsFloat;
        XVlrIcmsSt := XVlrIcmsSt + XIcmsST;
        EDQuantidadeExit(Sender);
        BtnInsertProdClick(Sender);

        DMENTRADA.TImpNfeTMP.Next;

    End;
     //XImportNfe:=1;//Jônatas 30/07/2013 - Foi colocado antes de chamar o BtnNovoClick, nessa mesma função,
     //para utilizá-la como condição

     //Paulo 21/10/2011: nessa parte eu abre a tela de fiscal
    BtnDadosAdicClick(Sender);
    //BtnGravarClick(Sender);
    //Edmar - 13/03/2019 - Trocando a chamada de gravar pelo cancelar pois o pedido já
    //é gravado na ação do botão BtnDadosAdic. Processo fica mais agil e não duplica os valores em CustoEstoqueEmpresa 
    BtnCancelar.Click();
    BtnFechaPedClick(Sender);

    //Edmar - 11/04/2014 - Linha comentada e transferida para UPedidoPadrao linha 8035
    //XImportNfe := 0;//Jônatas 30/07/2013 - Indica o fim da importação / não é importação XML
End;

//Jônatas 25/09/2013 - Verifica se os CST's estão cadastrados(Removido de ImpNfe)
Function TFPedCompra.ValiCstImportada: Boolean;
Var
    XTexto: String;
Begin
    Result:=true;
    Try
        XTexto := '';
        DMESTOQUE.Alx2.Close;
        DMESTOQUE.Alx2.SQL.Clear;
        DMESTOQUE.Alx2.SQL.Add(' Select distinct(impnfetmp.cst) from impnfetmp ');
        DMESTOQUE.Alx2.SQL.Add(' Where not exists (Select * from cst where cst.cod_sit_trib = impnfetmp.cst) ');
        DMESTOQUE.Alx2.Open;
        DMESTOQUE.Alx2.RecordCount;
        If Not DMESTOQUE.Alx2.IsEmpty
            Then Begin
            DMESTOQUE.Alx2.First;
            While Not DMESTOQUE.Alx2.Eof Do
            Begin
                XTexto := XTexto + DMESTOQUE.Alx2.FieldByName('CST').AsString + ', ';
                DMESTOQUE.Alx2.Next;
            End;
            MessageDlg('É necessário cadastrar as seguintes CSTs antes de realizar as importações:' + #13 + XTexto, mtWarning, [mbOK], 0);
            Result:=false;
        End;
    Except
    End;
End;



//Paulo 24/11/2011: Seleciona impostos substituidos dos itens

Procedure TFPedCompra.encontraImpostoSubst(XAlxCst: String; cst: String; vBCST: String; pICMSST: String; vICMSST: String; vBCSTRet: String; vICMSRet: String);
Begin
    DMENTRADA.TImpNfeTMP.ParamByName('CST').AsString := XAlxCst;

   //Paulo 24/09/2010: Verifica se o cst que esta na nota consta na tabela cst, se não cancela todo o processo de importação
    //Jônatas 11/09/2013 - Alterado para não dar mensagem de erro
   {if(FiltraTabela(DMESTOQUE.Alx,'cst','cod_sit_trib',cst,''))= false then
   begin
       Mensagem('A T E N Ç Ã O ', 'Não foi encontrado nenhum CST referente a NFe, a importação será abortada. ', '', 1,1, false, 'i');
       Exit;
   end;}

    {DMENTRADA.TImpNfeTMP.ParamByName('ALIQICMS').AsFloat := 0;
    DMENTRADA.TImpNfeTMP.ParamByName('VALORICMS').AsFloat := 0;}

   try
       if vBCSTRet <> '' then
           DMENTRADA.TImpNfeTMP.ParamByName('BASESUBST').AsFloat := tiraPontoNfe(vBCSTRet)
       else
           DMENTRADA.TImpNfeTMP.ParamByName('BASESUBST').AsFloat := tiraPontoNfe(vBCST);
   except
       DMENTRADA.TImpNfeTMP.ParamByName('BASESUBST').AsFloat := 0;
   end;

   try
       DMENTRADA.TImpNfeTMP.ParamByName('ALIQST').AsFloat := tiraPontoNfe(pICMSST);
   except
       DMENTRADA.TImpNfeTMP.ParamByName('ALIQST').AsFloat := 0;
   end;   
    
   try
       if vICMSRet <> '' then
           DMENTRADA.TImpNfeTMP.ParamByName('ICMSSUBST').AsFloat := tiraPontoNfe(vICMSRet)
       else
           DMENTRADA.TImpNfeTMP.ParamByName('ICMSSUBST').AsFloat := tiraPontoNfe(vICMSST);
   except
        DMENTRADA.TImpNfeTMP.ParamByName('ICMSSUBST').AsFloat := 0;
   end;
End;

//Paulo 24/11/2011: Seleciona impostos dos itens

Procedure TFPedCompra.encontraImposto(XAlxCst: String; cst: String; pIcms: String; vIcms: String; XBaseC: Real);
Var
    XauxIcms: String;
Begin
    DMENTRADA.TImpNfeTMP.ParamByName('CST').AsString := XAlxCst;

     //Paulo 24/09/2010: Verifica se o cst que esta na nota consta na tabela cst, se não cancela todo o processo de importação
    {	if(FiltraTabela(DMESTOQUE.Alx,'cst','cod_sit_trib',(XNodeAux.ChildNodes['orig'].Text+XNodeAux.ChildNodes['CST'].Text),''))= false then
     begin
         Mensagem('A T E N Ç Ã O ', 'Não foi encontrado nenhum CST referente a NFe, a importação será abortada. ', '', 1,1, false, 'i');
         Exit;
     end; }
    FiltraTabela(DMESTOQUE.Alx, 'cst', 'cod_sit_trib', cst, '');
    XauxIcms := pIcms;
    If XauxIcms <> '' Then
    Begin
         //Paulo 29/09/2010: Se a aliquota da loja for menor que o da nota refaz o calculo
        {If (XicmsBD < tiraPontoNfe(pIcms)) Then
        Begin
            DMENTRADA.TImpNfeTMP.ParamByName('ALIQICMS').AsFloat := XicmsBD;
            DMENTRADA.TImpNfeTMP.ParamByName('VALORICMS').AsFloat := DMENTRADA.TImpNfeTMP.ParamByName('VALORTOTAL').AsFloat * (XicmsBD / 100);
        End
        Else Begin}
       DMENTRADA.TImpNfeTMP.ParamByName('ALIQICMS').AsFloat := tiraPontoNfe(pIcms);
       DMENTRADA.TImpNfeTMP.ParamByName('VALORICMS').AsFloat := tiraPontoNfe(vIcms);
       {End;}
    end
    else begin
       DMENTRADA.TImpNfeTMP.ParamByName('ALIQICMS').AsFloat := 0.00;
       DMENTRADA.TImpNfeTMP.ParamByName('VALORICMS').AsFloat := 0.00;
    end;

    DMENTRADA.TImpNfeTMP.ParamByName('VALORBASE').AsFloat := XBaseC;//BC do ICMS
End;

Procedure TFPedCompra.DBGrid1DblClick(Sender: TObject);
Var Xnumped: integer;
Begin
    Inherited;
      //Paulo 07/10/2010: Marca a linha com um X para selecionar ele pra venda agrupada
    Xnumped := DMESTOQUE.TSlave.FieldByName('COD_ITENSPEDC').AsInteger;
    FiltraTabela(DMENTRADA.TItemPC, 'itenspedc', 'AGRUP', '', 'itenspedc.cod_itenspedc = ' + IntToStr(Xnumped));
    If Not (DMENTRADA.TItemPC.FieldByName('AGRUP').AsString = 'X') Then
    Begin

        DMESTOQUE.Alx.Close;
        DMESTOQUE.Alx.SQL.Clear;
        DMESTOQUE.Alx.SQL.Add('update ITENSPEDC set ITENSPEDC.AGRUP = :AGRUP');
        DMESTOQUE.Alx.SQL.Add('where COD_ITENSPEDC = :CODITENSPEDC');
        DMESTOQUE.Alx.ParamByName('AGRUP').AsString := 'X';
        DMESTOQUE.Alx.ParamByName('CODITENSPEDC').AsInteger := DMESTOQUE.TSlave.FieldByName('COD_ITENSPEDC').AsInteger;
        DMESTOQUE.Alx.ExecSQL;
        DMESTOQUE.TransacEstoque.CommitRetaining;
        DMESTOQUE.Alx.Open;
    End
    Else Begin
        DMESTOQUE.Alx.Close;
        DMESTOQUE.Alx.SQL.Clear;
        DMESTOQUE.Alx.SQL.Add('update ITENSPEDC set ITENSPEDC.AGRUP = :AGRUP');
        DMESTOQUE.Alx.SQL.Add('where COD_ITENSPEDC = :CODITENSPEDC');
        DMESTOQUE.Alx.ParamByName('AGRUP').AsString := '';
        DMESTOQUE.Alx.ParamByName('CODITENSPEDC').AsInteger := DMESTOQUE.TSlave.FieldByName('COD_ITENSPEDC').AsInteger;
        DMESTOQUE.Alx.ExecSQL;
        DMESTOQUE.TransacEstoque.CommitRetaining;
        DMESTOQUE.Alx.Open;
    End;
    FiltraSlave;
End;

Procedure TFPedCompra.DBGrid1MouseDown(Sender: TObject;
    Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
Begin
    Inherited;
  /////Paulo 07/10/2010: abrir o popup
    If Button = mbRight Then
    Begin
        MnAgrupar.Popup(Left + 250, top + 364);
    End;
End;

Procedure TFPedCompra.AgruparItensparaVenda1Click(Sender: TObject);
Begin
    Inherited;
////Paulo:07/10/2010: Para add os itens selecionadod na tabela venda agrupada
    DMMACS.TMP.Close;
    DMMACS.TMP.SQL.Clear;
    DMMACS.TMP.SQL.Add('delete from tmp');
    DMMACS.TMP.ExecSQL;
    DMMACS.Transaction.CommitRetaining;


    DMESTOQUE.TSlave.First;
    While Not DMESTOQUE.TSlave.Eof Do
    Begin
        If DMESTOQUE.TSlave.FieldByName('AGRUP').AsString = 'X' Then
        Begin
              //Paulo :add numa tabela temporária

            DMMACS.TMP.Close;
            DMMACS.TMP.SQL.Clear;
            DMMACS.TMP.SQL.Add('insert into tmp(DESC1,INT1,INT2,INT3)');
            DMMACS.TMP.SQL.Add('values(:DESC, :CODESTOQUE, :CODSUBPROD, :QUANT)');
            DMMACS.TMP.ParamByName('DESC').AsString := DMESTOQUE.TSlave.FieldByName('DESCRICAO').AsString;
            DMMACS.TMP.ParamByName('CODESTOQUE').AsInteger := DMESTOQUE.TSlave.FieldByName('COD_ESTOQUE').AsInteger;
            DMMACS.TMP.ParamByName('CODSUBPROD').AsInteger := DMESTOQUE.TSlave.FieldByName('CODPRODFABR').AsInteger;
            DMMACS.TMP.ParamByName('QUANT').AsInteger := 1;
            DMMACS.TMP.ExecSQL;
            DMMACS.Transaction.CommitRetaining;

        End;

        DMESTOQUE.TSlave.Next;
    End;
     //Paulo 13/10/2010: abre a tela com os itens agrupados
    DMENTRADA.TAlx.Close;
    DMENTRADA.TAlx.SQL.Clear;
    DMENTRADA.TAlx.SQL.Add('SELECT tmp.desc1,tmp.int2,tmp.int3,tmp.int1 FROM TMP');
    DMENTRADA.TAlx.Open;

    PItensVendaAg.Visible := true;
    PItensVendaAg.BringToFront;
     //DBVendAgr.Visible:=True;
     //DBVendAgr.BringToFront;
    GridItenAg.Visible := False;
    GridItenAg.SendToBack;
    BtConfirmar.SetFocus;

     //Label85.Caption:= 'Itens agrupados:';

End;

Procedure TFPedCompra.VisualizarDanfe1Click(Sender: TObject);
Begin
    Inherited;
    FMzrNfe := TFMzrNFe.Create(FMzrNfe); //cria o formulario de transmissão da Nfe
    FMzrNfe.SetInFiscal('', XView.FieldByName('cod_pedcomp').AsInteger, 0, 'PEDC', '', 1, '', '', '', 0, 0, '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    FMzrNfe.DanfeEntradaVisualizar;
    FMzrNfe := Nil;
End;

Procedure TFPedCompra.CancelarNfe1Click(Sender: TObject);
Begin
    Inherited;
    If XView.FieldByName('SITUACAO').AsString = 'CANCELADO'
        Then Begin
        MessageDlg('NFe já cancelada', mtWarning, [mbOK], 0);
    End
    Else Begin
		 if XView.FieldByName('numfiscal').AsString = '' then
        begin
        	MessageDlg('Documento fiscal do Pedido '+XView.FieldByName('NUMPED').AsString+' não foi emitido corretamente.', mtWarning, [mbOK], 0);
           Exit;
        end;

        if Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Deseja realmente cancelar a Nota Fiscal Eletrônica Nº ' + XView.FieldByName('numfiscal').AsString + '?', '', 2, 3, False, 'c') = 2 then
        begin
            {if FiltraTabela(DMENTRADA.TFiscPC , 'DOCFIS', 'COD_PEDIDO', XView.FieldByName('COD_PEDCOMP').AsString, ' AND (MODELONF = ''65'')') then
            	XClienteConsumidorFinal := True
            else }
            XEmiteNFCe := False;            
            FMzrNfe := TFMzrNFe.Create(FMzrNfe); //cria o formulario de transmissão da Nfe
            FMzrNfe.SetInFiscal('', XView.FieldByName('COD_PEDCOMP').AsInteger, XView.FieldByName('COD_FORNEC').AsInteger, 'PEDC', 'CANCELAR', 1, '', '', '', XView.FieldByName('NUMFISCAL').AsInteger, DATE(), '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
            FMzrNfe.ShowModal;
        End;
    End;
End;

Procedure TFPedCompra.RelatriodeDanfes1Click(Sender: TObject);
Begin
    Inherited;
  //Paulo 12/11/2010: Abre o rel periodo fiscal
    XRelDanfe := 'COMPRA';
    AbrirForm(TFRelPeriodoFiscal, FRelPeriodoFiscal, 0);
End;

Procedure TFPedCompra.BtLoteClick(Sender: TObject);
Begin
    Inherited;
    PnLote.BringToFront;
    PnLote.Visible := True;
    PnLote.SetFocus;

    EdQuantDescarte.Text := FloatToStr(XQtdDescarte);
    EdQtdBruta.Text := EDQuantidade.Text;
    EdDescarte.Text := XMotivoDesc;
    EdQtdLote.Text := FloatToStr(XQuantLote);
    EdQtdEntrada.Text := FloatToStr(XQtdEnt);

       //Paulo 23/11/2010: Seleciona os lotes
    DMMACS.TLote.Close;
    DMMACS.TLote.SQL.Clear;
    DMMACS.TLote.SQL.Add('select * from lote where lote.status = ''N'' order by lote.dtabertura');
    DMMACS.TLote.Open;

    EdQuantDescarte.SetFocus;

End;

Procedure TFPedCompra.EdQtdEntradaEnter(Sender: TObject);
Begin
    Inherited;
    EdQtdEntrada.Text := IntToStr(StrToInt(EdQtdBruta.Text) - StrToInt(EdQuantDescarte.Text));
End;

Procedure TFPedCompra.PCadastroExit(Sender: TObject);
Begin
    If (PnLote.Visible = false) Then
        Inherited;

End;

Procedure TFPedCompra.BtnCancelaLoteClick(Sender: TObject);
Begin
    Inherited;
  //Paulo 24/11/2010: Limpa os campos e as variaveis
    XQtdBruta := 0.00;
    XQtdDescarte := 0.00;
    XQtdEnt := 0.00;
    XMotivoDesc := '';
    XLote := 0;
    XQuantLote := 0;

    PnLote.SendToBack;
    PnLote.Visible := false;


End;

Procedure TFPedCompra.BtnLoteOkClick(Sender: TObject);
Begin
    Inherited;

    XLote := DMMACS.TLote.FieldByName('COD_LOTE').AsInteger;
    XQtdBruta := EdQtdBruta.ValueNumeric;
    XQtdDescarte := EdQuantDescarte.ValueNumeric;
    XQtdEnt := EdQtdEntrada.ValueNumeric;
    EDQuantidadeExit(Sender);
    XMotivoDesc := EdDescarte.Text;
    XObsItem := XMotivoDesc;
    EDQuantidade.ValueNumeric := EdQtdEntrada.ValueNumeric;
    PnLote.SendToBack;
    PnLote.Visible := false;
    XQuantLote := EdQtdLote.ValueNumeric;

    EDQuantidadeExit(Sender);


End;

Procedure TFPedCompra.EdQuantDescarteExit(Sender: TObject);
Begin
    Inherited;
    EdQtdEntrada.ValueNumeric := EdQtdBruta.ValueNumeric - EdQuantDescarte.ValueNumeric;
End;

Procedure TFPedCompra.BtnAbreLoteClick(Sender: TObject);
Begin
    Inherited;
    AbrirForm(TFLote, FLote, 0);
End;



Procedure TFPedCompra.CBLoteSelecionadoExit(Sender: TObject);
Begin
    Inherited;
    EdQtdLote.ValueNumeric := RetornaQuantidadeLote(DMMACS.TLote.FieldByName('COD_LOTE').AsInteger, XCOD_ESTOQUE);
End;

Procedure TFPedCompra.RecuperarDadosdaNotaFiscalEletrnica1Click(
    Sender: TObject);
Var
    XChaveNfe: String;
Begin
    Inherited;
       //Paulo 13/05/2011: Recupera os dados da nota fiscal
    If FiltraTabela(DMENTRADA.TFiscPC, 'docfis', 'cod_pedido', IntToStr(XView.FieldByName('COD_PEDCOMP').AsInteger), '') = True
        Then Begin
        If DMENTRADA.TFiscPC.FieldByName('nfestatus').AsInteger = 2
            Then Begin
            If Mensagem('Confirmação do usuário', 'Deseja realmente Retornar os dados para o pedido de Número ' + XView.FieldByName('numped').AsString + '?', '', 2, 3, False, 'c') = 2
                Then Begin
                If InputQuery('Chave de Acesso', 'Informe a Chave de Acesso da NFe para recuperar os Dados', XChaveNfe) = True
                    Then Begin
                    XEmiteNFCe := False;
                    FMzrNfe := TFMzrNFe.Create(FMzrNfe); //cria o formulario de transmissão da Nfe
                       //Function TFMzrNfe.SetInFiscal(NomePeriodo: String; CodigoPedido: Integer; CodigoDestinatario: Integer; tipopedido: String; tipoacao: String; tipoemissao: Integer; Cfop: String; NatOperacao: String; FormPagamento: String; NumFiscal: Integer; DtEmissao: TDate; CodigoIbge: String; Municipio: String; Uf: String; BaseIcms, VlrIcm, VlrIpi, BaseIcmsSt, VlrIcmsSt, VlrProduto, VlrFrete, VlrSeguro, Desconto, VlrOutros, VlrNotaFiscal: Real): Boolean;
                    FMzrNfe.SetInFiscal(XChaveNfe, XView.FieldByName('COD_PEDCOMP').AsInteger, XView.FieldByName('COD_FORNEC').AsInteger, 'PEDC', 'RETORNADADOS', 1, '', '', '', 0, DATE(), '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
                    FMzrNfe.ShowModal;
                End;
            End;

        End
        Else Begin
            MessageDlg('Os dados não podem ser recuperados devido ao fato que o Pedido esta marcado como NFe enviada e homologada' + #13 + #10 + 'NFeStatus = 1 ou 3', mtWarning, [mbOK], 0);
        End;
    End;
End;

Procedure TFPedCompra.InutilizarNumeraodaNotaFiscalEletrnica1Click(
    Sender: TObject);
Begin
    Inherited;
    //Paulo 13/05/2011: Inutilizar numeração da nota fiscal eletrônica
    If Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Deseja realmente Inutilizar Numeração de Nota Fiscal Eletrônica ?', '', 2, 3, False, 'c') = 2
        Then Begin
        FMzrNfe := TFMzrNFe.Create(FMzrNfe); //cria o formulario de transmissão da Nfe
        FMzrNfe.SetInFiscal('', XView.FieldByName('COD_PEDCOMP').AsInteger, XView.FieldByName('COD_FORNEC').AsInteger, 'PEDC', 'INUTILIZAR', 1, '', '', '', XView.FieldByName('numfiscal').AsInteger, DATE(), '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
        FMzrNfe.ShowModal;
    End;
End;

Procedure TFPedCompra.VisualizarnoSefaz1Click(Sender: TObject);
Begin
    Inherited;
    FMzrNfe := TFMzrNFe.Create(FMzrNfe); //cria o formulario de transmissão da Nfe
    FMzrNfe.SetInFiscal('', XView.FieldByName('COD_PEDCOMP').AsInteger, XView.FieldByName('COD_FORNEC').AsInteger, 'PEDC', 'SEFAZ', 1, '', '', '', XView.FieldByName('numfiscal').AsInteger, DATE(), '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    FMzrNfe.ShowModal;
End;

Procedure TFPedCompra.ConsultarStatusNFe1Click(Sender: TObject);
Begin
    Inherited;
    FMzrNfe := TFMzrNFe.Create(FMzrNfe); //cria o formulario de transmissão da Nfe
    FMzrNfe.SetInFiscal('', XView.FieldByName('COD_PEDCOMP').AsInteger, XView.FieldByName('COD_FORNEC').AsInteger, 'PEDC', 'CONSULTAR', 1, '', '', '', XView.FieldByName('numfiscal').AsInteger, DATE(), '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    FMzrNfe.ShowModal;
End;

Procedure TFPedCompra.VerificarServidorSefaz1Click(Sender: TObject);
Begin
    Inherited;
    FMzrNfe := TFMzrNFe.Create(FMzrNfe); //cria o formulario de transmissão da Nfe
    FMzrNfe.SetInFiscal('', 0, 0, 'PEDC', 'STATUSSERV', 1, '', '', '', 0, DATE(), '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    FMzrNfe.ShowModal;

End;

Procedure TFPedCompra.ListarNFe1Click(Sender: TObject);
Begin
    Inherited;
    AbrirForm(TFListaNfe, FListaNfe, 0);
End;

Procedure TFPedCompra.Button1Click(Sender: TObject);
Begin
    Inherited;
    AbrirForm(TFCadUsoConsumo, FCadUsoConsumo, 0);
End;

Procedure TFPedCompra.BtUsoConsumoClick(Sender: TObject);
Begin
    Inherited;
       //Paulo 16/09/2011: abre formulario de produto de consumo
    If AbrirForm(TFCadUsoConsumo, FCadUsoConsumo, 1) = 'Selected'
        Then Begin
        XUsoConsumo := 'Consumo';
        EscreveLabels;
    End
    Else Begin
        LimpaLabels;
        LSimilar.Caption := 'PRODUTO NÃO ENCONTRADO';
    End;
    EDQuantidade.SetFocus;
End;

Procedure TFPedCompra.BtnProdutosClick(Sender: TObject);
Begin
    Inherited;
    BtnProdutos.Enabled := False;
    BtnConsumo.Enabled := True;
    FPLista.Visible := True;
    FPLista.BringToFront;
    XUsoConsumo := '';
End;

Procedure TFPedCompra.BtnConsumoClick(Sender: TObject);
Begin
    Inherited;
    BtnProdutos.Enabled := True;
    BtnConsumo.Enabled := False;
    FPCLista.Visible := True;
    FPCLista.BringToFront;
    FiltraSlave;
    XUsoConsumo := 'Consumo';
End;

//Paulo 20/09/2011: Funcão que adiciona o item de consumo na tabela despadic e itenspedc

Procedure TFPedCompra.BtnInsereConsumoClick(Sender: TObject);
Var
    XCODPKMESTRE, XCOD_ESTOQUE, XCOD_ITDESP: Integer;
Begin
    Inherited;
    If EdDescConsumo.Text = ''
        Then Begin
        Mensagem('OPÇÃO BLOQUEADA', 'Por favor, descreva a despesa.', '', 1, 1, False, 'i');
        EdDescConsumo.SetFocus;
        exit;
    End;

    If EdQtdConsumo.ValueNumeric <= 0
        Then Begin
        Mensagem('OPÇÃO BLOQUEADA', 'Por favor, informe uma quantidade maior que 0 (zero).', '', 1, 1, False, 'i');
        EdQtdConsumo.SetFocus;
        exit;
    End;

    If EdCstConsumo.Text = ''
        Then Begin
        Mensagem('OPÇÃO BLOQUEADA', 'Por favor, informe um CST para o produto', '', 1, 1, False, 'i');
        EdCstConsumo.SetFocus;
        exit;
    End;

    If EdVlrUnitConsumo.ValueNumeric <= 0
        Then Begin
        Mensagem('OPÇÃO BLOQUEADA', 'Por favor, informe um Valor de Custo maior que 0 (zero).', '', 1, 1, False, 'i');
        EdVlrUnitConsumo.SetFocus;
        exit;
    End;

    If EdTotalConsumo.ValueNumeric <= 0
        Then Begin
        Mensagem('OPÇÃO BLOQUEADA', 'Por favor, informe um Valor Cobrado maior que 0 (zero).', '', 1, 1, False, 'i');
        EdTotalConsumo.SetFocus;
        exit;
    End;
    If XCstConsumo <= 0 Then
    Begin
        Mensagem('OPÇÃO BLOQUEADA', 'Por favor, informe um CST válido.', '', 1, 1, False, 'i');
        EdCstConsumo.SetFocus;
        exit;
    End;
       // - 05/05/2009: verifica o codigo despesa pedvenda maior
    DMSAIDA.TAlx.Close;
    DMSAIDA.TAlx.SQL.Clear;
    DMSAIDA.TAlx.SQL.Add('select max(DESPADIC.COD_DESPADIC) as maximo from DESPADIC');
    DMSAIDA.TAlx.Open;

    XCOD_ITDESP := DMSAIDA.TAlx.FieldByName('MAXIMO').AsInteger + 1;

    Try
        DMMACS.TCodigo.Close;
        DMMACS.TCodigo.Open; //é necessário fechar e abrir para atualizar a tabela em caso de transações da rede
           //Atualiza a tabela código
        DMMACS.TCodigo.Edit;
        DMMACS.TCodigo.FieldByName('COD_DESPADIC').AsInteger := XCOD_ITDESP + 1;
        DMMACS.TCodigo.Post;
        DMMACS.IBTCodigo.CommitRetaining;
    Except
        DMMACS.IBTCodigo.RollbackRetaining;
    End;

    DMSAIDA.TAlx.Close; // - 05/05/2009:  sql na unha
    DMSAIDA.TAlx.SQL.Clear;
    DMSAIDA.TAlx.SQL.Add('insert into DESPADIC');
    DMSAIDA.TAlx.SQL.Add('(COD_DESPADIC, COD_GERADOR, GERADOR, DESPESA, QTD, CST, VLRREAL, VLRFINAL,');
    DMSAIDA.TAlx.SQL.Add('LUCMOE, LUCPER, VLRTOTFIN, DESCONTO, MARCA, UNIDADE, COD_EQUIPE, COD_FUNCIONARIO)');
    DMSAIDA.TAlx.SQL.Add('values');
    DMSAIDA.TAlx.SQL.Add('(:COD_DESPADIC, :COD_GERADOR, :GERADOR, :DESPESA, :QTD, :CST ,:VLRREAL, :VLRFINAL,');
    DMSAIDA.TAlx.SQL.Add(':LUCMOE, :LUCPER, :VLRTOTFIN, :DESCONTO, :MARCA, :UNIDADE, :COD_EQUIPE,');
    DMSAIDA.TAlx.SQL.Add(':COD_FUNCIONARIO)');

    DMSAIDA.TAlx.ParamByName('COD_DESPADIC').AsInteger := XCOD_ITDESP;
    DMSAIDA.TAlx.ParamByName('COD_GERADOR').AsInteger := StrToInt(XCodPedido);
    DMSAIDA.TAlx.ParamByName('GERADOR').AsString := 'CONSUMOPC';
    DMSAIDA.TAlx.ParamByName('DESPESA').AsString := EdDescConsumo.Text;
    DMSAIDA.TAlx.ParamByName('DESCONTO').AsCurrency := EdDescontoConsumo.ValueNumeric;
    DMSAIDA.TAlx.ParamByName('MARCA').AsString := '';
    DMSAIDA.TAlx.ParamByName('UNIDADE').AsString := 'UN';
    DMSAIDA.TAlx.ParamByName('QTD').AsCurrency := EdQtdConsumo.ValueNumeric;
    DMSAIDA.TAlx.ParamByName('CST').AsString := EdCstConsumo.Text;
    DMSAIDA.TAlx.ParamByName('VLRREAL').AsCurrency := EdVlrUnitConsumo.ValueNumeric;
    DMSAIDA.TAlx.ParamByName('VLRFINAL').AsCurrency := EdVlrUnitConsumo.ValueNumeric;
    DMSAIDA.TAlx.ParamByName('VLRTOTFIN').AsCurrency := EdTotalConsumo.ValueNumeric;
    DMSAIDA.TAlx.ParamByName('LUCMOE').AsCurrency := EdTotalConsumo.ValueNumeric - (EdVlrUnitConsumo.ValueNumeric * EdQtdConsumo.ValueNumeric);
    DMSAIDA.TAlx.ParamByName('LUCPER').AsCurrency := ((DMSAIDA.TAlx.ParamByName('LUCMOE').AsCurrency * 100) / (EdVlrUnitConsumo.ValueNumeric * EdQtdConsumo.ValueNumeric));
    DMSAIDA.TAlx.ExecSQL;


    DMESTOQUE.Alx1.Close;
    DMESTOQUE.Alx1.SQL.Clear;
    DMESTOQUE.Alx1.SQL.Add('select * from unidade where unidade.sigla_unid = :UNIDADE');
    DMESTOQUE.Alx1.ParamByName('UNIDADE').AsString := 'UN';
    DMESTOQUE.Alx1.Open;
        //Paulo 20/09/2011: Insere os itens de consumo na tabela itenspedc
    XCODPKMESTRE := InserReg(DMENTRADA.TItemPC, 'ITENSPEDC', 'COD_ITENSPEDC');
    DMENTRADA.TItemPC.FieldByName('COD_ITENSPEDC').AsInteger := XCODPKMESTRE;
    DMENTRADA.TItemPC.FieldByName('COD_PEDCOMPRA').AsInteger := StrToInt(XCodPedido);
    DMENTRADA.TItemPC.FieldByName('COD_ESTOQUE').AsInteger := XCOD_ITDESP;
    DMENTRADA.TItemPC.FieldByName('QTDEPROD').AsCurrency := EdQtdConsumo.ValueNumeric;
    DMENTRADA.TItemPC.FieldByName('VALUNIT').AsCurrency := EdVlrUnitConsumo.ValueNumeric;
    DMENTRADA.TItemPC.FieldByName('VALORTOTAL').AsCurrency := EdTotalConsumo.ValueNumeric;
    DMENTRADA.TItemPC.FieldByName('DATA').AsDateTime := (Date());
    DMENTRADA.TItemPC.FieldByName('DESCPRO').AsCurrency := EdDescontoConsumo.ValueNumeric;
    DMENTRADA.TItemPC.FieldByName('COD_UNIDADE').AsInteger := DMESTOQUE.Alx1.FieldByName('COD_UNIDADE').AsInteger;
    DMENTRADA.TItemPC.FieldByName('ALIQICMS').AsCurrency := XImpIcms;
    DMENTRADA.TItemPC.FieldByName('BASEICMS').AsCurrency := XBcIcms;
    DMENTRADA.TItemPC.FieldByName('VLRICMS').AsCurrency := XvlrIcms;
    DMENTRADA.TItemPC.FieldByName('REDUCBASEICMS').AsCurrency := 0;
    DMENTRADA.TItemPC.FieldByName('BASEICMSSUBS').AsCurrency := 0;
    DMENTRADA.TItemPC.FieldByName('VLRICMSSUBS').AsCurrency := 0;
    DMENTRADA.TItemPC.FieldByName('COD_CST').AsInteger := XCstConsumo;
    DMENTRADA.TItemPC.FieldByName('CONSUMO').AsString := '1';

    DMMACS.TCodigo.Edit;
    DMMACS.TCodigo.FieldByName('COD_ITENSPEDC').AsInteger := DMMACS.TCodigo.FieldByName('COD_ITENSPEDC').AsInteger + 1;
    DMMACS.TCodigo.Post;

    Try
        DMENTRADA.TItemPC.Post;
        DMENTRADA.IBT.CommitRetaining;
        DMSAIDA.IBT.CommitRetaining;
    Except
        DMENTRADA.IBT.RollbackRetaining;
        DMSAIDA.IBT.RollbackRetaining;
        Mensagem('Mzr Sistemas - INFORMAÇÃO', 'A despesa inserida foi perdida. Se o problema persistir reinicie o sistema!', '', 1, 1, false, 'i');
    End;
    LimpaLabelsConsumo;
    FiltraSlave;
    EdDescConsumo.SetFocus;
    lbCstconsumo.Caption := '';

End;



//Paulo 20/09/2011: Limpa as labels de consumo

Procedure TFPedCompra.LimpaLabelsConsumo;
Begin
    EdDescConsumo.CLEAR;
    EdQtdConsumo.ValueNumeric := 0;
    EdVlrUnitConsumo.ValueNumeric := 0;
    EdDescontoConsumo.ValueNumeric := 0;
    EdTotalConsumo.ValueNumeric := 0;
    EdCstConsumo.Text := '0';
End;

Procedure TFPedCompra.EdQtdConsumoExit(Sender: TObject);
Begin
    Inherited;
    If (EdQtdConsumo.ValueNumeric <> 0) And (EdVlrUnitConsumo.ValueNumeric <> 0)
        Then Begin
        CalcPercent(EdDescontoConsumo.ValueNumeric, 0, (EdQtdConsumo.ValueNumeric * EdVlrUnitConsumo.ValueNumeric), 'D');
        EdTotalConsumo.ValueNumeric := AlxCalculo;
    End;
End;

Procedure TFPedCompra.EdTotalConsumoExit(Sender: TObject);
Begin
    Inherited;
    CalcPercent(0, (EdQtdConsumo.ValueNumeric * EdVlrUnitConsumo.ValueNumeric) - EdTotalConsumo.ValueNumeric, (EdQtdConsumo.ValueNumeric * EdVlrUnitConsumo.ValueNumeric), 'D');
    EdDescontoConsumo.ValueNumeric := AlxPercento;

    XBcIcms := EdTotalConsumo.ValueNumeric;
    FiltraTabela(DMESTOQUE.TCST, 'CST', 'COD_CST', IntToStr(XCstConsumo), '');

    If DMESTOQUE.TCST.FieldByName('SUBSTITUICAO').AsString <> ''
        Then Begin
        If (DMESTOQUE.TCST.FieldByName('SUBSTITUICAO').AsInteger = 1) Or (DMESTOQUE.TCST.FieldByName('ISENTA').AsString = '1') Then
        Begin
            XBcIcms := 0;
            XImpIcms := 0;
            XvlrIcms := 0;
        End;
    End;
    XvlrIcms := (XBcIcms * XImpIcms) / 100;

End;

Procedure TFPedCompra.EdCstConsumoExit(Sender: TObject);
Begin
    Inherited;
       //Paulo 23/09/2011: Armazena o cst do consumo
    DMESTOQUE.Alx1.Close;
    DMESTOQUE.Alx1.SQL.Clear;
    DMESTOQUE.Alx1.SQL.Add('select cst.cod_cst, cst.descricao from cst where cst.cod_sit_trib = :cst');
    DMESTOQUE.Alx1.ParamByName('CST').AsString := EdCstConsumo.Text;
    DMESTOQUE.Alx1.Open;
    If DMESTOQUE.Alx1.IsEmpty Then
    Begin
        MessageDlg('Erro ao validar o CST informado. Verifique se o CST foi digitado corretamente ou se é um CST válido.', mtWarning, [mbOK], 0);
        XCstConsumo := -1;
        EdCstConsumo.SetFocus;
        lbCstconsumo.Visible := True;
        lbCstconsumo.Caption := 'Nenhum CST selecionado.';
    End
    Else Begin
        XCstConsumo := DMESTOQUE.Alx1.FieldByName('COD_CST').AsInteger;
        lbCstconsumo.Visible := True;
        lbCstconsumo.Caption := DMESTOQUE.Alx1.FieldByName('DESCRICAO').AsString;
    End;

End;

Procedure TFPedCompra.BtExcluiConsumoClick(Sender: TObject);
Begin
    Inherited;
       //Paulo 27/09/2011: Paga o produto de consumo
    DMSAIDA.TAlx.Close;
    DMSAIDA.TAlx.SQL.Clear;
    DMSAIDA.TAlx.SQL.Add('delete from DESPADIC');
    DMSAIDA.TAlx.SQL.Add('where despadic.cod_despadic = :codigo');
    DMSAIDA.TAlx.ParamByName('CODIGO').AsInteger := DMESTOQUE.TDesp.FieldByName('COD_DESPADIC').AsInteger;
    DMSAIDA.TAlx.ExecSQL;
    DMSAIDA.IBT.CommitRetaining;

    DMSAIDA.TAlx.Close;
    DMSAIDA.TAlx.SQL.Clear;
    DMSAIDA.TAlx.SQL.Add('delete from ITENSPEDC');
    DMSAIDA.TAlx.SQL.Add('where itenspedc.cod_estoque = :codigo');
    DMSAIDA.TAlx.SQL.Add('and itenspedc.consumo = :consumo');
    DMSAIDA.TAlx.ParamByName('CODIGO').AsInteger := DMESTOQUE.TDesp.FieldByName('COD_DESPADIC').AsInteger;
    DMSAIDA.TAlx.ParamByName('CONSUMO').AsString := '1';
    DMSAIDA.TAlx.ExecSQL;
    DMSAIDA.IBT.CommitRetaining;



    FiltraSlave;
End;

Procedure TFPedCompra.SalvareenviarXmlporemail1Click(Sender: TObject);
Var
    Xcfop: String;
Begin
    Inherited;
    XSafeXmlDist := True;
       //Paulo 19/04/2011: Gera Nfe distribuição base no pedido selecionado
       //Seta os dados para chamar a função
    FiltraTabela(DMMACS.TPeriodoFiscal, 'PERIODOFISCAL', 'FECHADO', 'N', '');

    DMSAIDA.TAlx.Close;
    DMSAIDA.TAlx.SQL.Clear;
    DMSAIDA.TAlx.SQL.Add(' select pedcompra.cod_fornec, cfop.cfop, cfop.descricao, vwfornec.cod_cidade,email.email, ');
    DMSAIDA.TAlx.SQL.Add(' cidade.cod_ibge, cidade.nome, estado.uf_estado, docfis.cod_cfop, ');
    DMSAIDA.TAlx.SQL.Add(' docfis.cod_cfop1, docfis.cod_cfop2, docfis.nfexml, docfis.MODELONF, ');
    DMSAIDA.TAlx.SQL.Add(' docfis.nferecibo, docfis.nfeambiente, docfis.nfechave, ');
    DMSAIDA.TAlx.SQL.Add(' docfis.numdocfis, docfis.baseicms, docfis.vlricms, ');
    DMSAIDA.TAlx.SQL.Add(' docfis.vlrtotipi, docfis.bascalsubs, docfis.vlricmsubs, ');
    DMSAIDA.TAlx.SQL.Add(' docfis.vlrtotprod, docfis.vlrfrete, docfis.vlrseg, ');
    DMSAIDA.TAlx.SQL.Add(' docfis.vlrdesconto, docfis.vlroutrasdesp, docfis.vlrtotdocnf, docfis.valortotaltributa ');
    DMSAIDA.TAlx.SQL.Add(' from pedcompra ');
    DMSAIDA.TAlx.SQL.Add(' left join vwfornec on pedcompra.cod_fornec = vwfornec.cod_fornec ');
    DMSAIDA.TAlx.SQL.Add(' left join cidade on cidade.cod_cidade = vwfornec.cod_cidade ');
    DMSAIDA.TAlx.SQL.Add(' left join estado on estado.cod_estado = cidade.cod_estado ');
    DMSAIDA.TAlx.SQL.Add(' left join docfis on docfis.cod_pedido = pedcompra.cod_pedcomp ');
    DMSAIDA.TAlx.SQL.Add(' left join cfop on cfop.cod_cfop = docfis.cod_cfop ');
    DMSAIDA.TAlx.SQL.Add(' left Join pessoa on vwfornec.cod_pessoa = pessoa.cod_pessoa ');
    DMSAIDA.TAlx.SQL.Add(' left join email ON pessoa.cod_pessoa = email.cod_pessoa ');
    DMSAIDA.TAlx.SQL.Add(' where pedcompra.cod_pedcomp = :COD_PEDVENDA ');
    DMSAIDA.TAlx.ParamByName('COD_PEDVENDA').AsInteger := XView.FieldByName('cod_pedcomp').AsInteger;
    DMSAIDA.TAlx.Open;

    if DMSAIDA.TAlx.FieldByName('MODELONF').AsString = '65' then
    	XEmiteNFCe := True
    else
    	XEmiteNFCe := False;

       //Paulo 19/04/2011: Filtra o cfop1
    DMESTOQUE.Alx1.Close;
    DMESTOQUE.Alx1.SQL.Clear;
    DMESTOQUE.Alx1.SQL.Add('select cfop.cfop, cfop.descricao from cfop where cfop.cod_cfop = :COD_CFOP');
    DMESTOQUE.Alx1.ParamByName('COD_CFOP').AsInteger := DMSAIDA.TAlx.FieldByName('COD_CFOP1').AsInteger;
    DMESTOQUE.Alx1.Open;

       //Paulo 19/04/2011: Filtra o cfop2
    DMESTOQUE.Alx2.Close;
    DMESTOQUE.Alx2.SQL.Clear;
    DMESTOQUE.Alx2.SQL.Add('select cfop.cfop, cfop.descricao from cfop where cfop.cod_cfop = :COD_CFOP');
    DMESTOQUE.Alx2.ParamByName('COD_CFOP').AsInteger := DMSAIDA.TAlx.FieldByName('COD_CFOP2').AsInteger;
    DMESTOQUE.Alx2.Open;

    Xcfop := DMSAIDA.TAlx.FieldByName('CFOP').AsString + '/' + DMESTOQUE.Alx1.FieldByName('CFOP').AsString + '/' + DMESTOQUE.Alx2.FieldByName('CFOP').AsString;
    XXmlNfe := DMSAIDA.TAlx.FieldByName('NFEXML').AsString;
    XNfeRecibo := DMSAIDA.TAlx.FieldByName('NFERECIBO').AsString;
    XNfeTipoAmbiente := DMSAIDA.TAlx.FieldByName('NFEAMBIENTE').AsInteger;
    XUfLocal := 'PR';
    XNfeChave := DMSAIDA.TAlx.FieldByName('NFECHAVE').AsString;
    XSetInPeriodoFiscal := DMMACS.TPeriodoFiscal.FieldByName('DESCRICAO').AsString;

       //Paulo 22/06/2011: Armazena o email do cliente
    XendEmail := DMSAIDA.TAlx.FieldByName('email').AsString;

    FMzrNfe := TFMzrNFe.Create(FMzrNfe); //cria o formulario de transmissão da Nfe
    FMzrNfe.SetInFiscal(XSetInPeriodoFiscal, XView.FieldByName('COD_PEDCOMP').AsInteger, XView.FieldByName('cod_fornec').AsInteger, 'PEDC', 'EMITIR', 1, Xcfop,
        DMSAIDA.TAlx.FieldByName('DESCRICAO').AsString, XView.FieldByName('FORMPAG').AsString, StrToInt(DMSAIDA.TAlx.FieldByName('NUMDOCFIS').AsString),
        XView.FieldByName('dtpedcomp').AsDateTime, IntToStr(DMSAIDA.TAlx.FieldByName('COD_IBGE').AsInteger), DMSAIDA.TAlx.FieldByName('NOME').AsString,
        DMSAIDA.TAlx.FieldByName('UF_ESTADO').AsString, DMSAIDA.TAlx.FieldByName('BASEICMS').AsFloat, DMSAIDA.TAlx.FieldByName('VLRICMS').AsFloat,
        DMSAIDA.TAlx.FieldByName('VLRTOTIPI').AsFloat, DMSAIDA.TAlx.FieldByName('BASCALSUBS').AsFloat, DMSAIDA.TAlx.FieldByName('VLRICMSUBS').AsFloat,
        DMSAIDA.TAlx.FieldByName('VLRTOTPROD').AsFloat, DMSAIDA.TAlx.FieldByName('VLRFRETE').AsFloat, DMSAIDA.TAlx.FieldByName('VLRSEG').AsFloat,
        DMSAIDA.TAlx.FieldByName('VLRDESCONTO').AsFloat, DMSAIDA.TAlx.FieldByName('VLROUTRASDESP').AsFloat, DMSAIDA.TAlx.FieldByName('VLRTOTDOCNF').AsFloat,
        DMSAIDA.TAlx.FieldByName('valortotaltributa').AsFloat);
    FMzrNfe.ShowModal;
End;

Procedure TFPedCompra.ReinviarNotaFiscalEletrnica1Click(Sender: TObject);
Begin
    Inherited;
    FiltraTabela(DMCAIXA.TCaixa, 'CAIXA', 'COD_CAIXA', FMenu.LCODCAIXA.Caption, '');
    If (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe')
    	OR (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFCe')
       	OR (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe-NFCe')
        Then Begin
        DMENTRADA.TFiscPC.Close;
        DMENTRADA.TFiscPC.SQL.Clear;
        DMENTRADA.TFiscPC.SQL.Add('  Select * from docfis where docfis.cod_pedido=:Codigo ');
        DMENTRADA.TFiscPC.ParamByName('Codigo').AsInteger := XView.FieldByName('COD_PEDCOMP').AsInteger;
        DMENTRADA.TFiscPC.Open;
        If Not DMENTRADA.TFiscPC.IsEmpty
            Then Begin
            If (DMENTRADA.TFiscPC.FieldByName('NFESTATUS').AsInteger = 1) Or (DMENTRADA.TFiscPC.FieldByName('NFESTATUS').AsInteger = 3) Or (DMENTRADA.TFiscPC.FieldByName('NFESTATUS').AsInteger = 4)
                Then Begin
            //Se Documento Fiscal Enviado ou Cancelado
                MessageDlg('Este pedido já gerou uma Nota Fiscal Eletrônica enviada e recebida pelo sefaz. Sendo assim não pode mais ser transmitida.', mtWarning, [mbOK], 0);
                Exit;
            End;
        End;
    End;

    AbrirForm(TFSENHA, FSENHA, 0);
   //repassa resultado da tela de autenticação de senha para as variáveis de controle
    If XAlxResult = True
        Then Begin
        If XView.FieldByName('SITUACAO').AsString = 'ABERTO'
            Then Begin
            Mensagem('OPÇÃO BLOQUEADA', 'É necessário que o pedido esteja fechado antes da impressão fiscal. Antes de fechar recomendamos que confira todas as informações do pedido.', '', 1, 1, False, 'a');
            Exit;
        End;
        If FiltraTabela(DMENTRADA.TPedC, 'pedcompra', 'cod_pedcomp', XView.FieldByName('COD_PEDCOMP').AsString, '') = True
            Then Begin
            If Mensagem('A T E N Ç Ã O', 'Deseja realmente Imprimir Documento Fiscal para o pedido' + #13 + 'Nº ' + XView.FieldByName('NUMPED').AsString + '?', '', 2, 3, False, 'c') = 2
                Then Begin
                FiltraTabela(DMCAIXA.TCaixa, 'CAIXA', 'COD_CAIXA', FMenu.LCODCAIXA.Caption, '');
                If (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NF')
                	OR (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe')
    					OR (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFCe')
       					OR (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe-NFCe')
                    Then Begin
                    FMenu.TIPOREL := 'RNF';
                   //Imprime Nota Fiscal
                    If MessageDlg('Impressora NF Pronta?', mtConfirmation, [mbYes, mbNo], 0) = mryes
                        Then Begin
                        XTipo := 'PEDC'; 
                        FiltraTabela(DMENTRADA.WPedc, 'vwpedc', 'cod_pedcomp', XView.FieldByName('COD_PEDCOMP').AsString, '');
                        If (DMENTRADA.WPedc.FieldByName('FISCO').AsString = 'ECF') Then
                            FMenu.TIPOAUX := 'ECF'
                        Else
                            FMenu.TIPOAUX := 'ENTNFPROP';
                        AbreFiscal;
                    End;
                End;
                ExecutaLiberaDados;
            End;
        End;
    End;
End;

Procedure TFPedCompra.CartadeCorreoEletrnica1Click(Sender: TObject);
Begin
    Inherited;
    IniciaCCe(XView.FieldByName('COD_PEDCOMP').AsInteger, 'COMPRA');
End;

procedure TFPedCompra.VisualizarDanfecomComplementoFiscal1Click(
  Sender: TObject);
begin
  inherited;
  	 Fmenu.XTIPOBOLTO:='COMPLEMENTO';
    FMzrNfe := TFMzrNFe.Create(FMzrNfe); //cria o formulario de transmissão da Nfe
    FMzrNfe.SetInFiscal('', XView.FieldByName('cod_pedcomp').AsInteger, 0, 'PEDC', '', 1, '', '', '', 0, 0, '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    FMzrNfe.DanfeEntradaVisualizar;
    FMzrNfe := Nil;
  	 Fmenu.XTIPOBOLTO:='';
end;

procedure TFPedCompra.AlterarFinanceiro1Click(Sender: TObject);
begin
  inherited;
	FiltraTabela(DMESTOQUE.TEstoque, 'ESTOQUE', 'COD_ESTOQUE', DMESTOQUE.TSlave.FieldByName('COD_ESTOQUE').AsString, '');
	FiltraTabela(DMESTOQUE.TSubProd, 'subproduto', 'cod_subproduto', DMESTOQUE.TEstoque.FieldByName('cod_subprod').AsString, '');
   BtnAbrePAliq.Click;
end;

procedure TFPedCompra.RelatriodeDestinatrio1Click(Sender: TObject);
begin
  inherited;
  AbrirForm(TFRelDestinatario, FRelDestinatario, 0);
end;

procedure TFPedCompra.EdImpIpiExit(Sender: TObject);
begin
	//Edmar - 22/07/2014 - Antes de fazer o calculo, verifica se o ipi é igual a zero
   //e subtrai o valor total ao antigo valor de ipi para corrigir a retirada do acrescimo do ipi
	if (EdImpIpi.ValueNumeric = 0) or (EdImpIpi.ValueNumeric = XImpIpi) then
		EDQuantidadeExit(sender);
       
  inherited;

   XVlrIpi := EdImpVlrIpi.ValueNumeric;
   XImpIpi := EdImpIpi.ValueNumeric;
end;

procedure TFPedCompra.EdImpVlrIpiExit(Sender: TObject);
begin
  inherited;
  if (EdImpVlrIpi.ValueNumeric = 0) or (EdImpVlrIpi.ValueNumeric = XVlrIpi) then
		EDQuantidadeExit(sender);

  CalcPercent(0,  EdImpVlrIpi.ValueNumeric, EDTotal.ValueNumeric, 'D');
  EdImpIpi.ValueNumeric := AlxPercento;

  EdImpIpiExit(sender);
end;

procedure TFPedCompra.AquisiodeSuprimentosClick(Sender: TObject);
begin
  inherited;
	//Edmar - 10/09/2014 - Busca dados da empresa
   DMFAST.QAlx.Close;
   DMFAST.QAlx.SQL.Clear;
   DMFAST.QAlx.SQL.Add(' select empresa.razao_social, empresa.endereco, empresa.numero, empresa.bairro, empresa.cep, cidade.nome CIDADE, estado.uf_estado UF, loja.logoempresa, ');
   DMFAST.QAlx.SQL.Add(' empresa.insc_est, empresa.contato, empresa.cnpj, empresa.fone ');
   DMFAST.QAlx.SQL.Add(' from empresa ');
   DMFAST.QAlx.SQL.Add(' left join cidade on cidade.cod_cidade = empresa.cod_cidade ');
   DMFAST.QAlx.SQL.Add(' left join estado on estado.cod_estado = cidade.cod_estado ');
   DMFAST.QAlx.SQL.Add(' left join loja on loja.cod_empresa = empresa.cod_empresa ');
   DMFAST.QAlx.SQL.Add(' where empresa.cod_empresa = :cod_empresa ');
   DMFAST.QAlx.ParamByName('COD_EMPRESA').AsString := FMenu.LCODEMPRESA.Caption;

   DMFAST.QAlx.Open;

   frxEmpresa.DataSet := DMFAST.QAlx;

   //Edmar - 10/09/2014 - Busca dados do fornecedor
   DMFAST.QAlx1.Close;
   DMFAST.QAlx1.SQL.Clear;
   DMFAST.QAlx1.SQL.Add(' select pessoa.nome RAZAOSOCIAL, pessoa.telrel TELEFONE, formpag.descricao FORMAPAGAMENTO, email.email, pedcompra.dtpedcomp DATA');
   DMFAST.QAlx1.SQL.Add(' from pessoa ');
   DMFAST.QAlx1.SQL.Add(' left join vwfornec on vwfornec.cod_pessoa = pessoa.cod_pessoa ');
   DMFAST.QAlx1.SQL.Add(' left join pedcompra on pedcompra.cod_fornec = vwfornec.cod_fornec ');
   DMFAST.QAlx1.SQL.Add(' left join formpag on formpag.cod_formpag = pedcompra.cod_formpag ');
   DMFAST.QAlx1.SQL.Add(' left join email on email.cod_pessoa = vwfornec.cod_pessoa ');
   DMFAST.QAlx1.SQL.Add(' where pedcompra.cod_pedcomp = :COD_PED ');
   DMFAST.QAlx1.ParamByName('COD_PED').AsInteger := XView.FieldByName('COD_PEDCOMP').AsInteger;

   DMFAST.QAlx1.Open;

   frxFornecedor.DataSet := DMFAST.QAlx1;

   //Edmar - 10/09/2014 - Busca itens do pedido de compra
   DMFAST.QItRel.Close;
   DMFAST.QItRel.SQL.Clear;
   DMFAST.QItRel.SQL.Add(' select itenspedc.qtdeprod QTDE, subproduto.descricao, pedcompra.numped, pedcompra.vendedor, pedcompra.obs, pedcompra.prazoentr');
   DMFAST.QItRel.SQL.Add(' from pedcompra ');
   DMFAST.QItRel.SQL.Add(' left join itenspedc on itenspedc.cod_pedcompra = pedcompra.cod_pedcomp ');
   DMFAST.QItRel.SQL.Add(' left join estoque on estoque.cod_estoque = itenspedc.cod_estoque ');
   DMFAST.QItRel.SQL.Add(' left join subproduto on subproduto.cod_subproduto = estoque.cod_subprod ');
   DMFAST.QItRel.SQL.Add(' where pedcompra.cod_pedcomp = :COD_PED ');
   DMFAST.QItRel.ParamByName('COD_PED').AsInteger := XView.FieldByName('COD_PEDCOMP').AsInteger;

   DMFAST.QItRel.Open;

   frxItens.DataSet := DMFAST.QItRel;

   frxRel.LoadFromFile('C:\MZR\Macs\Rel\FrfAquisicaoProdutos.fr3');

   //Matheus - 05/02/2016 - Caso exista a imagem na pasta Macs, e exista o componente no relatório, a imagem será
   //utilizada dentro do relatório como assinatura
   if ( FileExists('C:\MZR\Macs\assinatura.jpg') AND (frxRel.FindComponent('Picture2')<> nil ) ) then
     TfrxPictureView(frxRel.FindComponent('Picture2')).Picture.LoadFromFile('C:\MZR\Macs\assinatura.jpg');

   frxRel.ShowReport();

end;

procedure TFPedCompra.CancelarFechamento1Click(Sender: TObject);
Var
    XCodPedidoTroca: String;
    XCODLANEST: Integer;
    XQTDLOTE: Real;
    XJust, XChave, XProtocolo, XNovoProtocolo: String; // - 15/01/2009:  justificativa, nºchave, nºprotocolo do cancelamento nfe
    XCont: boolean; // - 15/01/2009: controle  nfe
    msg, XNumPedido, msgper: String;
    XNFeNota: Boolean; // - 15/01/2009: se for do tipo NFe estara setado como true
Begin
    Inherited;
    If XView.FieldByName('SITUACAO').AsString = 'CANCELADO'
        Then Begin
        Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'Este  pedido já se encontra Cancelado!', '', 1, 1, False, 'a');
        Exit;
    End;

    If XView.FieldByName('SITUACAO').AsString <> 'FECHADO'
        Then Begin
        Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'Este pedido não se encontra fechado! Então você pode clicar em consultar e alterar suas informações', '', 1, 1, False, 'a');
        Exit;
    End;

 //EFETUA CONTROLE DE ACESSO
    If ControlAccess('CANCPEDFECH', 'M') = False Then
        Exit;

    msgper := '';

    If FiltraTabela(DMENTRADA.TFiscPC, 'DOCFIS', 'COD_DOCFIS', '', '(docfis.cod_pedido=' + #39 + XView.FieldByName('COD_PEDCOMP').AsString + #39 + ')') = True
        Then Begin
        If (DMENTRADA.TFiscPC.FieldByName('BASCALSUBS').AsCurrency > 0) And (DMENTRADA.TFiscPC.FieldByName('VLRICMSUBS').AsCurrency > 0)
            Then Begin
            Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'O cáculo referente a média ponderada da substituição tributária já foi cálculada, cancelando o pedido e realizando o fechamento novamente as médias serão calculadas deixandos os dados incosistentes.', '', 1, 1, False, 'a');
        End;
    End;

    If Mensagem('A T E N Ç Ã O', 'Deseja realmente Cancelar o fechamento do pedido' + #13 + 'Nº ' + XView.FieldByName('NUMPED').AsString + '?', '', 2, 3, False, 'c') = 2
        Then Begin
        XCodPedidoTroca := XView.FieldByName('COD_PEDCOMP').AsString;
        If FiltraTabela(DMENTRADA.TPedC, 'PEDCOMPRA', 'COD_PEDCOMP', XCodPedidoTroca, '') = True
            Then Begin

            // - 15/01/2009: SE O PEDIDO FOR DE DEVOLUÇÃO E EM LOJA ESTAR SETADO A CERTIFICACAO É DO TIPO NFE
            If (DMENTRADA.TPedC.FieldByName('FISCO').AsString = 'NFe') //(XView.FieldByName('NUMDEV').AsString <> '') and (DMMACS.TLoja.FieldByName('NFECERTIFICACAO').AsString <> '')
                Then Begin
                XNFeNota := True;
                If FiltraTabela(DMENTRADA.TFiscPC, 'DOCFIS', 'COD_PEDIDO', XCodPedidoTroca, '') = True
                    Then Begin
                    If (DMENTRADA.TFiscPC.FieldByName('NFESTATUS').AsString <> '3')
                        Then Begin
                        If (DMENTRADA.TFiscPC.FieldByName('NFESTATUS').AsString = '1')
                            Then Begin

                            // - 15/01/2009:  verifica se a chave nfe e se é valida
                            XChave := DMENTRADA.TFiscPC.FieldByName('NFECHAVE').AsString;
                            If (Length(XChave) <> 44) Or (XChave = '')
                                Then Begin
                                Mensagem('   A T E N Ç Ã O   ', 'Chave de Acesso da nota não encontrada ou inválida!', '', 1, 1, false, 'I');
                                Exit;
                            End;

                            // - 15/01/2009:  verifica se há um número de protocolo
                            XProtocolo := DMENTRADA.TFiscPC.FieldByName('NFEPROTOCOLO').AsString;
                            If (Length(XProtocolo) <> 15) Or (XProtocolo = '')
                                Then Begin
                                Mensagem('   A T E N Ç Ã O   ', 'Número de protocolo da nota não encontrada ou inválida!', '', 1, 1, false, 'I');
                                Exit;
                            End;

                            // - 15/01/2009:  pede ao usuario justificativa do cancelamento
                            XCont := True;
                            While XCont Do
                            Begin
                                XJust := '';
                                XCont := InputQuery('A t e n ç ã o !', 'INFORME A JUSTIFICATIVA DO CANCELAMENTO:', XJust);
                                If XCont
                                    Then Begin
                                    If Length(XJust) < 15
                                        Then Begin
                                        Mensagem('   A T E N Ç Ã O   ', 'Informe uma justificativa com pelo menos 15 (quinze) caracteres.', '', 1, 1, false, 'I');
                                        XCont := True;
                                    End Else
                                        XCont := False;
                                End Else
                                    Exit; // usuario cancelou
                            End;

                           // - 15/01/2009:   tira caracteres inválidos
                            XJust := ValidaAcentos(XJust);

                            // - 15/01/2009:  lembrar de apagar abaixo (a linha de baixo e essa)
                            //ShowMessage('Numero da chave: '+XChave+'  Numero do protocolo: '+XProtocolo+'   Justificativa: '+XJust);


                            FMzrNfe := TFMzrNfe.Create(FMzrNfe);
                            FMzrNfe := Nil;
                        End
                        Else Begin
                            Mensagem('OPÇÃO BLOQUEADA', 'A Nota Fiscal do Pedido não foi enviada!', '', 1, 1, False, 'a');
                            Exit;
                        End;
                    End
                    Else Begin
                        Mensagem('OPÇÃO BLOQUEADA', 'A Nota Fiscal do Pedido já foi Cancelada', '', 1, 1, False, 'a');
                        Exit;
                    End;
                End
                Else Begin
                    Mensagem('OPÇÃO BLOQUEADA', 'Documento Fiscal do Pedido não encontrado!', '', 1, 1, False, 'a');
                    Exit;
                End
            End
            Else Begin
                XNFeNota := false;
            End;
            If CancelLanPedC(XCodPedidoTroca) = True
                Then Begin //Se foi possível cancelar/estornar todos os lançamentos realizados pelo pedido
                If Not XNFeNota
                    Then Begin
                    DMENTRADA.TPedC.EDIT;
                    DMENTRADA.TPedC.FieldByName('SITUACAO').AsString := 'ABERTO';
                    DMENTRADA.TPedC.FieldByName('FATURADO').AsString := '0';
                    DMENTRADA.TPedC.Post;
                  //REGISTRA COMANDO DO USUARIO
                    Registra('PEDIDO COMPRA', 'CANCELA FECHAMENTO', DMENTRADA.TPedC.FieldByName('DTPEDCOMP').AsString, 'Nº ' + DMENTRADA.TPedC.FieldByName('NUMPED').AsString, 'Valor: ' + DMENTRADA.TPedC.FieldByName('VALOR').AsString);
                    DMENTRADA.IBT.CommitRetaining;
                    If FiltraTabela(XView, XSQLVIEW, XPkTabela, XCodPedidoTroca, '') = True
                        Then Begin
                        BtnConsultar.Click;
                    End;
                End
                Else Begin
                  // - 15/01/2009: se for NFe
                    DMENTRADA.TPedC.EDIT;
                    DMENTRADA.TPedC.FieldByName('SITUACAO').AsString := 'CANCELADO';
                    DMENTRADA.TPedC.Post;
                  //REGISTRA COMANDO DO USUARIO
                    Registra('PEDIDO COMPRA', 'CANCELA FECHAMENTO NFe', DMENTRADA.TPedC.FieldByName('DTPEDCOMP').AsString, 'Nº ' + DMENTRADA.TPedC.FieldByName('NUMPED').AsString, 'Valor: ' + DMENTRADA.TPedC.FieldByName('VALOR').AsString);
                    DMENTRADA.IBT.CommitRetaining;
                    LiberaDados;
                End;

                //Edmar - 07/10/2014 - Verifica se não atualiza estoque direto pelo PC
                if (DMMACS.TLoja.FieldByName('ATUALIZAESTOQUEPC').AsString = '0') then
                begin
                	try
                    //Edmar - 07/10/2014 - Filtra buscando os itens do PC
                    if not FiltraTabela(DMENTRADA.TItemPC, 'ITENSPEDC', 'COD_PEDCOMPRA', DMENTRADA.TPedC.FieldByName('COD_PEDCOMP').AsString, '') then
                    	exit;
                    DMENTRADA.TItemPC.First;

                    while not DMENTRADA.TItemPC.Eof do
                    begin
                    	//Edmar - 07/10/2014 - Filtra buscando o estoque do item em questão
                       if not FiltraTabela(DMESTOQUE.TEstoque, 'ESTOQUE', 'COD_ESTOQUE', DMENTRADA.TItemPC.FieldByName('COD_ESTOQUE').AsString, '') then
                       	Exit;

                       DMESTOQUE.TEstoque.Edit;
                       //Edmar - 07/10/2014 - Se o item possui quantidade de exportação
                       if DMENTRADA.TItemPC.FieldByName('QTDEEXP').AsString <> '' then
                       	//Faz a diferença entr a quantidade real e a exportada e joga no estoque do Produto
							DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency := DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency -
                           	(DMENTRADA.TItemPC.FieldByName('QTDEPROD').AsCurrency - DMENTRADA.TItemPC.FieldByName('QTDEEXP').AsCurrency)
                       else
                    		DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency := DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency - DMENTRADA.TItemPC.FieldByName('QTDEPROD').AsCurrency;
                       DMESTOQUE.TEstoque.Post;

                       //Edmar - 07/10/2014 - Marca o item como estoque não atualizado
                       DMENTRADA.TItemPC.Edit;
                       DMENTRADA.TItemPC.FieldByName('ATUEST').AsString := '0';
                       DMENTRADA.TItemPC.Post;

                       DMENTRADA.TItemPC.Next;
                    end;
                    DMESTOQUE.TransacEstoque.CommitRetaining;
                    DMENTRADA.IBT.CommitRetaining;
                   except
                   	on E : Exception do
                       begin
                         ShowMessage('[2419] Ocorreu um problema ao atualizar o Estoque '+E.Message);
                         DMESTOQUE.TransacEstoque.RollbackRetaining;
                         DMENTRADA.IBT.RollbackRetaining;
                       end;
                   end;
                End;
            End
            Else Begin
                exit;
            End;
        End;
    End;   
end;

procedure TFPedCompra.CancelarDevoluo1Click(Sender: TObject);
begin
  inherited;
   If Mensagem(' I N F O R M A Ç Ã O ', 'Ao cancelar a devolução do pedido, o sistema irá apenas retornar os itens para que possam ser devolvidos novamente. Deseja continuar?', '', 2, 3, False, 'c') = 2 then
   begin
  		//Edmar - 14/04/2015 - Efetua o cancelamento do pedido extornando o financeiro e retornando o estoque se preciso
		CancelarFechamento1Click(Sender);

		//Edmar - 14/04/2015 - Após isso, limpar o número da NF-e devolvida e marcar todos os
		//itens do pedido como não devolvido
   	try
           MDO.Query.Close;
           MDO.Query.SQL.Clear;
           MDO.Query.SQL.Add(' UPDATE PEDCOMPRA SET PEDCOMPRA.NUMFISCAL_DEVOLVIDA = '''' WHERE PEDCOMPRA.COD_PEDCOMP = :COD_COMPRA ');
           MDO.Query.ParamByName('COD_COMPRA').AsInteger := XView.FieldByName('COD_PEDCOMP').AsInteger;
           MDO.Query.ExecSQL;

           MDO.QAlx1.Close;
           MDO.QAlx1.SQL.Clear;
           MDO.QAlx1.SQL.Add(' UPDATE ITENSPEDC SET ITENSPEDC.IT_DEV = '''' WHERE ITENSPEDC.COD_PEDCOMPRA = :CODIGO ');
           MDO.QAlx1.ParamByName('CODIGO').AsInteger := XView.FieldByName('COD_PEDCOMP').AsInteger;
           MDO.QAlx1.ExecSQL;

           MDO.Transac.CommitRetaining;

           Mensagem(' I N F O R M A Ç Ã O ', 'Devolução cancelada com sucesso.', '', 1, 1, False, 'I');
   	except
       	MDO.Transac.RollbackRetaining;
       	Mensagem(' I N F O R M A Ç Ã O ', 'Não foi possível cancelar a devolução. Contate o suporte.', '', 1, 1, False, 'I');
   	end;
   end;
end;

procedure TFPedCompra.edrazaosocialClick(Sender: TObject);
begin
  inherited;
   // qdo clicar no campo, ira verificar se tem o msm titulo, se tiver  campo serah limpado
    If edrazaosocial.Text = 'Digite a Razão Social'
        Then Begin
        edrazaosocial.Text := '';
    End;
end;

procedure TFPedCompra.edrazaosocialExit(Sender: TObject);
begin
  inherited;
   // se nao possuir valor, o titulo eh retomado
    If edrazaosocial.Text = ''
        Then Begin
        edrazaosocial.Text := 'Digite a Razão Social';
    End;
end;

procedure TFPedCompra.edrazaosocialKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	try    	
   	if Key = VK_RETURN then
       begin //pressionado enter, consultar
       	if XTab = True Then
               FiltraTabela(XTabela, XSQLTABELA, 'RAZAOSOCIAL', '', '(upper(RAZAOSOCIAL) like upper(' + #39 + edrazaosocial.Text + '%' + #39 + ')) ORDER BY DTPEDCOMP DESC, RAZAOSOCIAL ASC ')
           else
           	FiltraTabela(XView, XSQLVIEW, 'RAZAOSOCIAL', '', '(upper(RAZAOSOCIAL) like upper(' + #39 + edrazaosocial.Text + '%' + #39 + ')) ORDER BY DTPEDCOMP DESC, RAZAOSOCIAL ASC ');
       end;

       if Key = VK_ESCAPE then
       begin
       	ExecutaLiberaDados;
           edrazaosocial.Text := 'Digite a Razão Social';
           edrazaosocial.SelectAll;
       end;
	except
   end;
end;

procedure TFPedCompra.EdNomeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	if Key = VK_ESCAPE then
   begin
   	ExecutaLiberaDados;
       EdNome.Text := 'Digite a Fantasia';
       EdNome.SelectAll;
   end;
end;

procedure TFPedCompra.btnConfPedCompraNfeClick(Sender: TObject);
begin
  inherited;
   // não vamos implementar por enquanto para a compra, mas deixamos
   // o evento já instanciado.
end;

procedure TFPedCompra.BitBtn1Click(Sender: TObject);
begin
  inherited;
   FControleSaida.Show;
end;
End.

