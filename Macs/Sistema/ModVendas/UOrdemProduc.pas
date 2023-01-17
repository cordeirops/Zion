unit UOrdemProduc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPadrao, Buttons, ExtCtrls, StdCtrls, Mask, TFlatEditUnit,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxControls, cxContainer, cxEdit,
  cxGroupBox, Grids, DBGrids, ComCtrls, DBCtrls, DBColorEdit, cxCheckBox,
  UFrmBusca, EditFloat, ColorEditFloat, ColorMaskEdit, frxClass, frxDBSet,
  frxExportPDF, Menus, IBQuery;

type
  TFOrdemProduc = class(TFPadrao)
    PConsulta: TPanel;
    PExp: TPanel;
    LBCONEXAO: TLabel;
    PBExport: TProgressBar;
    DBGridConsulta: TDBGrid;
    PBotoesConsulta: TPanel;
    BtnNovo: TBitBtn;
    BtnApagar: TBitBtn;
    BtnConsultar: TBitBtn;
    BtnRelatorio: TBitBtn;
    BtnFiltrar: TBitBtn;
    BtnFechaPed: TBitBtn;
    cxGroupBox1: TcxGroupBox;
    CBFILTRO: TcxComboBox;
    GBPLACA: TcxGroupBox;
    EDNum: TFlatEdit;
    EDCliente1: TFlatEdit;
    EdMaxRegistro: TFlatEdit;
    cxGroupBox5: TcxGroupBox;
    Label33: TLabel;
    Label35: TLabel;
    edDtInicial: TMaskEdit;
    edDtFinal: TMaskEdit;
    RadioGroup1: TRadioGroup;
    rbAbertura: TRadioButton;
    rbFechamento: TRadioButton;
    PCadastro: TPanel;
    PTOPCADASTRO: TPanel;
    Shape9: TShape;
    Shape10: TShape;
    Shape12: TShape;
    BtnGravar: TBitBtn;
    BtnCancelar: TBitBtn;
    BtnDadosAdic: TBitBtn;
    BitBtn1: TBitBtn;
    GBPRINCIPALCADASTRO: TcxGroupBox;
    LBox: TLabel;
    Label1: TLabel;
    Label5: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    PageControl1: TPageControl;
    tabProduto: TTabSheet;
    Label18: TLabel;
    LPesquisa: TLabel;
    cxGroupBox3: TcxGroupBox;
    DBGrid2: TDBGrid;
    edPesquisaRapida: TColorMaskEdit;
    BtnProcProd: TBitBtn;
    EDQuantidade: TColorEditFloat;
    BtnInsertProd: TBitBtn;
    BtnDeleteProd: TBitBtn;
    FrmCliente: TFrmBusca;
    MObs: TMemo;
    EdObsFinanceira: TEdit;
    EdData: TColorMaskEdit;
    EdContatoCliente: TColorMaskEdit;
    DBNumOrd: TDBColorEdit;
    EdDtPrevisao: TColorMaskEdit;
    EdProduto: TColorMaskEdit;
    LEstoque: TColorMaskEdit;
    BtnCancelamentos: TBitBtn;
    btnOrcamento: TBitBtn;
    frxFichaTecnica: TfrxReport;
    frxDbItens: TfrxDBDataset;
    frxDbProduto: TfrxDBDataset;
    frxDbInfoEmpresa: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    frxDbCliente: TfrxDBDataset;
    PopupMenu1: TPopupMenu;
    GeralProduto1: TMenuItem;
    tabComponente: TTabSheet;
    BitBtn2: TBitBtn;
    edPesqComponente: TColorMaskEdit;
    lPesquisaComp: TLabel;
    edQtdeComp: TColorEditFloat;
    Label6: TLabel;
    edComponente: TColorMaskEdit;
    edEstoqueComp: TColorMaskEdit;
    btnInsereComponente: TBitBtn;
    btnRemoveComponente: TBitBtn;
    cxGroupBox2: TcxGroupBox;
    DBGrid3: TDBGrid;
    PListaProdutos: TPanel;
    DbGridProdutos: TDBGrid;
    pListaComponente: TPanel;
    dbGridComponentes: TDBGrid;
    procedure FormActivate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure FrmClienteBTNOPENClick(Sender: TObject);
    procedure edPesquisaRapidaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edPesquisaRapidaKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DbGridProdutosKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DbGridProdutosCellClick(Column: TColumn);
    procedure DbGridProdutosDblClick(Sender: TObject);
    procedure BtnInsertProdClick(Sender: TObject);
    procedure BtnDeleteProdClick(Sender: TObject);
    procedure FrmClienteEDCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnConsultarClick(Sender: TObject);
    procedure BtnProcProdClick(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure EDCliente1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EDNumKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edDtFinalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edDtInicialKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EDNumEnter(Sender: TObject);
    procedure EDCliente1Enter(Sender: TObject);
    procedure BtnFechaPedClick(Sender: TObject);
    procedure BtnCancelamentosClick(Sender: TObject);
    procedure btnOrcamentoClick(Sender: TObject);
    procedure DBGridConsultaDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure EDNumExit(Sender: TObject);
    procedure EDCliente1Exit(Sender: TObject);
    procedure CBFILTROClick(Sender: TObject);
    procedure CBFILTROExit(Sender: TObject);
    procedure BtnRelatorioClick(Sender: TObject);
    procedure DBGridConsultaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GeralProduto1Click(Sender: TObject);
    procedure edPesqComponenteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edPesqComponenteKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edPesqComponenteClick(Sender: TObject);
    procedure edPesquisaRapidaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
	 //Função utilizada para filtrar os dados da OS
	 Procedure AtualizaGridConsulta(FILTRO: String);
	 Procedure FiltraSlave; //FILTRA OS REGISTROS DE PRODUTOS E SERVIÇOS PERTENCENTES A ORDEM
	 Procedure LimpaCampos; //Procedure para limpar campos principais
	 //Função utilizada para retornar o numero corrente para o pedido e incremantar na empresa
	 Function RetornaNumPed: Integer;
    //
    Procedure LimpaLabels;
    Procedure EscreveLabels;
    //Edmar - 20/10/2014 - Filtra a GRID de ORDEM pela data (abertura ou fechamento)
    procedure FiltraOrdemData(xDataInicial, xDataFinal, xSituacao:String);
    //20/10/2014 - Função responsável por efetuar a leitura do campo que limita a quantidade de registros a serem visualizados na ordem de serviços
    Function LerMaxRegistroXmlConfig: Boolean;
    //20/10/2014 - Função responsável por efetuar a gravação do campo que limita a quantidade de registros a serem visualizados na ordem de serviços
    Function GravaMaxRegistroXmlConfig: Boolean;
    //Edmar - 28/10/2014 - Lança estoque para correção
    Function LancaEstoqueCorrecao(xOperacao, xTipo: Char; xQtde:Real; xCodEstoque: Integer): Boolean;
    Procedure BaixaEstoqueComponente(xQuery: TIBQuery; XQtde: Real);
    Procedure AumentaEstoqueComponente(xQuery: TIBQuery; XQtde: Real);
  public
    { Public declarations }
  end;

var
	FOrdemProduc: TFOrdemProduc;
  	XCOD_ORDEM, XCOD_CLIENTE, XCOD_ITPROD, XCOD_USUARIO, XCOD_ESTOQUE: Integer;
  	XNumOrdem, XEstado: String;

implementation

uses UDMMacs, UDmServ, UMenu, UDMPessoa, USenha, Alxor32, AlxMessage,
  UDMFinanc, UMDO, UDMEstoque, DB, UCliente, UProduto, UFichaTecnica,
  UOrcamento3, UDMSaida, UDmFast, UDMEntrada;

{$R *.dfm}

//Procedure para limpar campos principais
Procedure TFOrdemProduc.LimpaCampos;
Begin
	XCOD_ORDEM := -1;
   XCOD_CLIENTE := -1;
   FrmCliente.EDCodigo.Text := '';
   FrmCliente.EdDescricao.Text := '';
   EdContatoCliente.Text := '';
   EdObsFinanceira.Text := '';
   EdData.Clear;
   EdDtPrevisao.Clear;
   MObs.Lines.Clear;
End;

//Função utilizada para filtrar os dados da OS
Procedure TFOrdemProduc.AtualizaGridConsulta(FILTRO: String);
Begin
    DMServ.WOrdem.Close;
    DMServ.WOrdem.SQL.Clear;
    If (EdMaxRegistro.Text<>'') and (EdMaxRegistro.Text<>'0') Then
    	DMServ.WOrdem.SQL.Add('select   FIRST '+EdMaxRegistro.Text+' * from VWORDEM')
    Else
    	DMServ.WOrdem.SQL.Add('select  * from VWORDEM');
    DMServ.WOrdem.SQL.Add(' WHERE (vwordem.COD_LOJA=' + FMenu.LCODLOJA.Caption + ')');
    DMServ.WOrdem.SQL.Add(' AND (vwordem.COD_ORDEM IS NOT NULL) ');
    //FILTRO PARA EDIT'S
    If FILTRO = 'NUMERO'
    Then Begin
	 	DMServ.WOrdem.SQL.Add(' AND ( vwordem.numero = ' + #39 + TRIM(EDNum.Text) + #39+' )');
    End
    Else Begin
    	If FILTRO = 'CLIENTE' Then
       	DMServ.WOrdem.SQL.Add(' AND(upper (VWordem.cliente)) like (upper (' + #39 + TRIM(EDCliente1.Text) + '%' + #39 + '))')
       Else
           FILTRO := '';
    End;
    //FILTRO COMBO
    if FILTRO = '' then
    begin
        if CBFILTRO.Text = 'ABERTAS' Then
            DMServ.WOrdem.SQL.Add(' AND (vwordem.STATUS=' + #39 + 'ABERTO' + #39 + ')')
        Else
            If CBFILTRO.Text = 'FECHADAS' Then
                DMServ.WOrdem.SQL.Add(' AND (vwordem.STATUS=' + #39 + 'FECHADO' + #39 + ')')
            Else
                If CBFILTRO.Text = 'TERMINADAS' Then
                    DMServ.WOrdem.SQL.Add(' AND (vwordem.STATUS=' + #39 + 'TERMINADO' + #39 + ')')
                Else
                    If CBFILTRO.Text = 'NFE2' Then
                        DMServ.WOrdem.SQL.Add(' AND (vwordem.FISCO=' + #39 + 'NFE2' + #39 + ')')
                    Else
                        If CBFILTRO.Text = 'CANCELADO' Then
                            DMServ.WOrdem.SQL.Add(' AND (vwordem.STATUS=' + #39 + 'CANCELADO' + #39 + ')');
    end;

    DMServ.WOrdem.SQL.Add(' ORDER BY vwordem.NUMERO, vwordem.STATUS DESC, vwordem.BOX, vwordem.DTABERT DESC');
    DMServ.WOrdem.Open;
End;

procedure TFOrdemProduc.FormActivate(Sender: TObject);
begin
  inherited;
	Caption:='Ordem de Serviço' ;
   PConsulta.Visible := True;
   PConsulta.BringToFront;
	PCadastro.Visible := False;
   PCadastro.SendToBack;
   EdProduto.Height:=24;
   LEstoque.Height:=24;
   //SETA DBS
   DBGridConsulta.DataSource := DMSERV.DWOrdem;
   AtualizaGridConsulta('');

	// BUSCA OS DADOS DA TABELA USUARIO PARA SELECIONAR O FUNCIONARIO VENDEDOR
   if FMenu.LCODUSUARIO.Caption = '111522' then
   begin
   	XCod_usuario := -1;
   end
   else begin
   	FiltraTabela(DMMACS.TUsuario, 'USUARIO', 'CODUSUARIO', FMenu.LCODUSUARIO.Caption, '');
       FiltraTabela(DMPESSOA.TFuncionario, 'FUNCIONARIO', 'COD_FUNC', DMMACS.TUsuario.FieldByname('COD_FUNCIONARIO').AsString, '');
       try
       	xcod_usuario := DMPESSOA.TFuncionario.FieldByname('cod_func').AsInteger;
       except
       	xcod_usuario := -1;
       end;
   end;
    
	if FileExists('C:\MZR\Arquivos\LayoutGrid\OrdemProc.lgm') then
   	DBGridConsulta.Columns.LoadFromFile('C:\MZR\Arquivos\LayoutGrid\OrdemProc.lgm');
end;

procedure TFOrdemProduc.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
    If PConsulta.Visible = True
    Then Begin
        If (Key = VK_Down) Then
            DMServ.WOrdem.Next;
        If (Key = VK_Up) Then
            DMServ.WOrdem.Prior;
    End;
    //botão GRAVAR
    If Key = vk_f5 Then
        If PCadastro.Visible Then
            BtnGravar.Click;

    //botão CANCELAR
    If Key = vk_f7 Then
        If PCadastro.Visible Then
            BtnCancelar.Click;

    // CTRL + D -> eh o comando para desbloquear a ordem de servico caso tenha ocorrido algum problema
    // qdo estava sendo consultada e caiu energia, ou foi pressionado F4 (por exemplo) e nao passou pelo
    // botão GRAVAR ou CANCELAR que liberar a ordem
    If (shift = [ssCtrl]) And (key = 68)
    Then Begin
    	// faz o filtro na tabela para verificar se ela esta realmente bloqueada
       FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', DMServ.WOrdem.FieldByname('cod_ordem').AsString, '');
       // se ela nao estiver bloqueada eh exibida a msg e finalizada a operação
       If DMServ.TOrd.FieldByName('EDIT').AsString = '1'
       Then Begin
       	If Mensagem('   A T E N Ç Ã O   ', 'Deseja desbloquear a Ordem nº ' + DMServ.WOrdem.FieldByName('numero').AsString + ' ?', '', 2, 3, false, 'A') = 2
           Then Begin
           	// abre formulario de senha
               AbrirForm(TFSenha, FSenha, 0);
               // caso tenha informado os dados do administrador correto, a OS eh liberada
               If XAlxResult = true
               Then Begin
               	// liberando a ordem para consulta
                   DMServ.TOrd.Edit;
                   DMServ.TOrd.FieldByName('EDIT').AsString := '0';
                   DMServ.TOrd.Post;
                   DMServ.IBT.CommitRetaining;
               End;
           End;
       End;
    End;
    //controle de botões
    //botão novo
    If Key = vk_f4 Then
        If PConsulta.Visible Then
            BtnNovo.Click;
    //botão apagar
    If Key = vk_f8 Then
        If PConsulta.Visible Then
            BtnApagar.Click;
    //botão consultar
    If Key = vk_f6 Then
        If PConsulta.Visible Then
            BtnConsultar.Click;
    //FOCUS EM LOCALIZAR
    If (Key = vk_f2) and  (PConsulta.Visible)
    Then Begin
        AtualizaGridConsulta('ORIGEM');
        EDCliente1.SetFocus;
 	 End;

    if (Key = vk_f2) and  (PCadastro.Visible) then
    begin
    	if PageControl1.ActivePage = tabProduto then
			edPesquisaRapida.SetFocus
       else
			edPesqComponente.SetFocus;       
 	 end;
end;

//Função utilizada para retornar o numero corrente para o pedido e incremantar na empresa
Function TFOrdemProduc.RetornaNumPed: Integer;
Var
    XFlag: Integer;
Begin
    Result := -1;
    XFlag := -1;
    try
    	MDO.Query.Close;
       MDO.Query.SQL.Clear;
       MDO.Query.SQL.Add('SELECT EMPRESA.PROX_OS FROM EMPRESA WHERE EMPRESA.COD_EMPRESA = :COD_EMP');
       MDO.Query.ParamByName('COD_EMP').AsString := FMenu.LCODEMPRESA.Caption;
       MDO.Query.Open;
       if MDO.Query.FieldByName('PROX_OS').AsString = '' then
       	XNumOrdem := '1'
       else
       	XNumOrdem := MDO.Query.FieldByName('PROX_OS').AsString;
       While XFlag = -1 Do
       Begin
       	If FiltraTabela(DMMACS.TALX, 'VWORDEM', 'numero', XNumOrdem, '') = True then
               XNumOrdem := IntToStr((StrToInt(XNumOrdem) + 1))
           else
           	XFlag := 1;
       End;
       MDO.Query.Close;
       MDO.Query.SQL.Clear;
       MDO.Query.SQL.Add('UPDATE EMPRESA SET EMPRESA.PROX_OS = :NUMOS WHERE EMPRESA.COD_EMPRESA = :COD_EMP');
       MDO.Query.ParamByName('NUMOS').AsString := IntToStr(StrToInt(XNumOrdem) + 1);
       MDO.Query.ParamByName('COD_EMP').AsString := FMenu.LCODEMPRESA.Caption;
       try
       	MDO.Query.ExecSQL;
           MDO.Transac.CommitRetaining;
       except
           MDO.Transac.RollbackRetaining;
       end;

       Result := StrToInt(XNumOrdem);
    except
       Result := StrToInt(XNumOrdem);
    end;
End;

//FILTRA OS REGISTROS DE PRODUTOS E SERVIÇOS PERTENCENTES A ORDEM
Procedure TFOrdemProduc.FiltraSlave;
Begin
   //INSERE COMANDOS PARA FILTRAR
    DMESTOQUE.TSlave.Close;
    DMESTOQUE.TSlave.SQL.Clear;
    DMESTOQUE.TSlave.SQL.Add('Select itprodord.cod_itprodord, unidade.sigla_unid as UNIDADE, itprodord.cod_ordem, itprodord.cod_estoque,  itprodord.numreq, itprodord.qtd, itprodord.qtdRET, itprodord.total, ');
    DMESTOQUE.TSlave.SQL.Add('itprodord.desconto, itprodord.data, itprodord.cod_funcionario, itprodord.vlrunit, subproduto.contrint, subproduto.descricao, subproduto.marca, SubProduto.CODPRODFABR, itprodord.operacao,');
    DMESTOQUE.TSlave.SQL.Add(' itprodord.baseicms, itprodord.vlricms, itprodord.aliqicms, cst.cod_sit_trib, itprodord.descnf as DESCONTONF, ');
    DMESTOQUE.TSlave.sql.Add('subproduto.' + DMMACS.TLoja.FieldByName('CODPRODREL1').AsString + ' AS PRIMCOD, subproduto.' + DMMACS.TLoja.FieldByName('CODPRODREL2').AsString + ' AS SEGCOD ');
    DMESTOQUE.TSlave.SQL.Add('From itprodord left Join estoque on itprodord.cod_estoque = estoque.cod_estoque ');
    DMESTOQUE.TSlave.SQL.Add('Left Join subproduto on estoque.cod_subprod = subproduto.cod_subproduto ');
    DMESTOQUE.TSlave.SQL.Add('left join cst ON itprodord.cod_cst = cst.cod_cst ');
    DMESTOQUE.TSlave.SQL.Add('Left Join unidade on subproduto.cod_unidvenda = unidade.cod_unidade ');
    DMESTOQUE.TSlave.SQL.Add('Where (itprodord.cod_ordem = :CODORDEM) AND ((ITPRODORD.OPERACAO <> ''COMP'') OR (ITPRODORD.OPERACAO IS NULL))	');
    DMESTOQUE.TSlave.ParamByName('CODORDEM').AsInteger := XCOD_ORDEM;
    DMESTOQUE.TSlave.SQL.Add('order by itprodord.cod_itprodord desc');
    DMESTOQUE.TSlave.Open;

    //Filtra os componentes incluidos na ordem de produção
    DMESTOQUE.Alx5.Close;
    DMESTOQUE.Alx5.SQL.Clear;
    DMESTOQUE.Alx5.SQL.Add(' SELECT ITPRODORD.COD_ITPRODORD, ITPRODORD.COD_ESTOQUE, SUBPRODUTO.CONTRINT, SUBPRODUTO.CODPRODFABR, ITPRODORD.QTD, SUBPRODUTO.DESCRICAO, ');
    DMESTOQUE.Alx5.SQL.Add(' ITPRODORD.DESCONTO, ITPRODORD.VLRUNIT, ITPRODORD.TOTAL FROM ITPRODORD ');
    DMESTOQUE.Alx5.SQL.Add(' LEFT JOIN ESTOQUE ON ESTOQUE.COD_ESTOQUE = ITPRODORD.COD_ESTOQUE ');
    DMESTOQUE.Alx5.SQL.Add(' LEFT JOIN SUBPRODUTO ON SUBPRODUTO.COD_SUBPRODUTO = ESTOQUE.COD_SUBPROD ');
    DMESTOQUE.Alx5.SQL.Add(' WHERE (ITPRODORD.OPERACAO = ''COMP'') AND (ITPRODORD.COD_ORDEM = :ORDEM) ');
    DMESTOQUE.Alx5.SQL.Add(' ORDER BY ITPRODORD.COD_ITPRODORD DESC ');
    DMESTOQUE.Alx5.ParamByName('ORDEM').AsInteger := XCOD_ORDEM;
    DMESTOQUE.Alx5.Open;
End;

procedure TFOrdemProduc.BtnNovoClick(Sender: TObject);
begin
  inherited;
	DMMACS.Transaction.CommitRetaining;
   FiltraTabela(DMMACS.TEmpresa, 'empresa', '', '', '');
   //EFETUA CONTROLE DE ACESSO
   If ControlAccess('ABRIRORD', 'M') = False Then
		Exit;

   // limpa todos os campos
   LimpaCampos;
   LimpaLabels;
   
   // INICIALIZANDO VARIAVEL
   XCOD_ORDEM := -1;
   XCOD_CLIENTE := -1;
   XCOD_ITPROD := -1;

   // GERA NUMERO DA ORDEM
   XNumOrdem := IntToStr(RetornaNumPed);
   DBNumOrd.Text := XNumOrdem;
   //Edmar - 17/10/2014 - Atribui data atual ao campo
   EdData.Text := DateToStr(Date());

   Try
		DMServ.TOrd.Insert;
       XCOD_ORDEM := DMServ.TOrd.FieldByName('COD_ORDEM').AsInteger;
       DMServ.TOrd.FieldByName('COD_ORDEM').AsInteger := XCOD_ORDEM;
       XCODPKMESTRE := DMServ.TOrd.FieldByName('COD_ORDEM').AsInteger;
       DMServ.TOrd.FieldByName('NUMERO').AsString := XNumOrdem;
       DMServ.TOrd.FieldByName('DTABERT').AsDateTime := Date();
       DMServ.TOrd.FieldByName('HRABERT').AsDateTime := Time();
       DMServ.TOrd.FieldByName('STATUS').AsString := 'ABERTO';
       DMServ.TOrd.FieldByName('COD_LOJA').AsString := FMenu.LCODLOJA.Caption;
       DMServ.TOrd.FieldByName('LOCALAT').AsString := '';
       DMServ.TOrd.FieldByName('EDIT').AsString := '1';
       DMServ.TOrd.Post;
       DMServ.IBT.CommitRetaining;
    Except
        MessageDlg('A Ordem não foi inserida no banco', mtWarning, [mbOK], 0);
        PConsulta.Visible := False;
        PCadastro.Visible := True;
        PCadastro.BringToFront;
    End;
    
    // - 19/03/2009: verificar se OS foi inserida
    If FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', IntToStr(XCODPKMESTRE), '') = False
	 Then Begin
        Mensagem('Mzr Sistemas - INFORMAÇÃO', 'A Ordem inserida foi perdida.' + #13 + 'Para evitar outras falhas Reinicie o sistema.', '', 1, 1, false, 'i');
        Exit;
    End;

    //Seleciona somente os registros corretos
    FiltraSlave;
    XEstado := 'INSERT'; //Define como estado de inserção
   
   //MOSTRAR PAINEL DE CADASTRO
   PCadastro.Visible := True;
   PCadastro.BringToFront;
   PConsulta.Visible := False;
	PConsulta.SendToBack;
   PageControl1.ActivePageIndex := 0;
   FrmCliente.EDCodigo.SetFocus;
   FrmCliente.Repaint;
end;

procedure TFOrdemProduc.BtnCancelarClick(Sender: TObject);
begin
  inherited;
  FiltraSlave;
  BtnGravar.Click;
end;

procedure TFOrdemProduc.BtnGravarClick(Sender: TObject);
var
	XFlagControlNumero: Integer;
begin
  inherited;
    try
       //CONTROLE DA NUMERAÇÃO DA ORDEM DE PRODUÇÃO
       XFlagControlNumero := 1;
       While XFlagControlNumero = 1 Do
       Begin
           if FiltraTabela(DMServ.WOrdem, 'VWORDEM', 'NUMERO', '', ' (NUMERO =' + #39 + DBNumOrd.Text + #39 + ') AND (VWORDEM.cod_ordem <> ' + IntToStr(XCOD_ORDEM) + ') ') = True then
           begin
               //caso já exista o mesmo numero em outro pedido incrementamos mais um numero de acordo com a tabela empresa e continuamos loop para teste
                DBNumOrd.Text := IntToStr(RetornaNumPed);
                MessageDlg('O Número anteriormente informado para a O.P. já existia em banco.' + #13 + #10 + 'O Sistema alterou automaticamente para ' + DBNumOrd.Text, mtWarning, [mbOK], 0)
           end
           else
           begin
               try
                   //Testamos o numero do edit para garantir que é um numero
                   StrToInt(DBNumOrd.Text);
                   if XNumOrdem <> DBNumOrd.Text Then
                       MessageDlg('O Número anteriormente informado para a O.P. já existia em banco.' + #13 + #10 + 'O Sistema alterou automaticamente para ' + DBNumOrd.Text, mtWarning, [mbOK], 0)
               except
               	MessageDlg('O número da Ordem de Produção aceita apenas números. Por favor verifique!', mtWarning, [mbOK], 0);
               	Exit;
               end;

               XFlagControlNumero := 0;
           end;
       end;

       if DMESTOQUE.TSlave.IsEmpty AND DMESTOQUE.Alx5.IsEmpty then
       begin
           if Mensagem('   A T E N Ç Ã O   ', 'A Ordem de Produção atual não possui produtos inclusos. Deseja apagá-la ?', '', 2, 3, false, 'A') = 2 then
           begin
              //Apaga ORDEM
               FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', IntToStr(XCOD_ORDEM), '');
               Registra('ORDEM', 'APAGAR/CANCELAR', DMServ.TOrd.FieldByName('DTABERT').AsString, 'Nº ' + DMServ.TOrd.FieldByName('NUMERO').AsString, 'Valor: ' + DMServ.TOrd.FieldByName('TOTORD').AsString);
               DMServ.TOrd.Delete;

               //Confirma Transação
               DMSERV.IBT.CommitRetaining;

               //atualiza vew
               AtualizaGridConsulta('ORIGEM');

               PCadastro.Visible:=False;
               PConsulta.Visible:=true;
               PConsulta.BringToFront;
               XEstado := '';

               Exit;
           end;
       end;

       if XCOD_CLIENTE = -1 then
       begin
           Mensagem(' A T E N Ç Ã O ', 'Para salvar a Ordem de Produção é preciso selecionar um cliente', '', 1, 1, False, 'A');
           FrmCliente.BTNOPEN.SetFocus;

           Exit;
       end;

       DMServ.TOrd.Edit;
       DMServ.TOrd.FieldByName('COD_CLIENTE').AsInteger := XCOD_CLIENTE;
       DMServ.TOrd.FieldByName('NUMERO').AsString := DBNumOrd.Text;

       //Edmar - 20/10/2014 - Verifica se as datas foram informadas
		if EdData.Text = '  /  /    ' then
       	DMServ.TOrd.FieldByName('DTPREV').AsDateTime := Date()
       else
       	DMServ.TOrd.FieldByName('DTPREV').AsString := EdData.Text;
       
       if EdDtPrevisao.Text = '  /  /    ' then
       	DMServ.TOrd.FieldByName('DTPREV').AsString := ''
       else
       	DMServ.TOrd.FieldByName('DTPREV').AsString := EdDtPrevisao.Text;
      	//
       
       DMServ.TOrd.FieldByName('CONTATO').AsString := EdContatoCliente.Text;
       DMServ.TOrd.FieldByName('OBSERVACAO').AsString := MObs.Text;
       DMServ.TOrd.FieldByName('EDIT').AsString := '0';
       DMServ.TOrd.Post;
       DMServ.IBT.CommitRetaining;   
    except
       On E : Exception do
       begin
           Mensagem(' A T E N Ç Ã O ', 'Não foi possível gravar a Ordem de Produção '+E.Message, '', 1, 1, False, 'A');
           DMServ.IBT.RollbackRetaining;
       end;
    end;
  	//Edmar - 17/10/2014 - Volta para a dela de consulta
  	PCadastro.Visible := False;
   PCadastro.SendToBack;
  	PConsulta.Visible := True;
  	PConsulta.BringToFront;
	AtualizaGridConsulta('');
end;

procedure TFOrdemProduc.FrmClienteBTNOPENClick(Sender: TObject);
begin
  inherited;
  	//FrmCliente.BTNOPENClick(Sender);
	FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', '', '', ' ORDER BY NOME'); //LIBERA TODOS OS REGISTROS PARA CONSULTA
   if AbrirForm(TFCliente, FCliente, 1) = 'Selected' then
   begin
   	XCOD_CLIENTE := DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;
   	FrmCliente.EDCodigo.Text := DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString;
       FrmCliente.EdDescricao.Text := DMPESSOA.WCliente.FieldByName('NOME').AsString;
       
       //Edmar - 17/10/2014 - Filtra apenas o cliente buscando a observação financeira se houver
       DMPESSOA.TCliente.Close;
       DMPESSOA.TCliente.SQL.Clear;
       DMPESSOA.TCliente.SQL.Add(' SELECT * FROM CLIENTE WHERE CLIENTE.COD_CLIENTE = :CODIGO ');
       DMPESSOA.TCliente.ParamByName('CODIGO').AsInteger := DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;
       DMPESSOA.TCliente.SQL.Text;
       DMPESSOA.TCliente.Open;

       If Not DMPESSOA.TCliente.IsEmpty Then
       	EdObsFinanceira.Text := DMPESSOA.TCliente.FieldByName('OBSFINANCEIRA').AsString
       Else
       	EdObsFinanceira.Text := '';
   end;
end;

procedure TFOrdemProduc.edPesquisaRapidaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
	If Key = Vk_Down then
  	begin
      	DMESTOQUE.WSimilar.Next;

      	XCOD_ESTOQUE := StrToInt(DbGridProdutos.Columns[0].Field.Text);
  	end;


  	If Key = Vk_UP then
  	begin
   	DMESTOQUE.WSimilar.Prior;

      	XCOD_ESTOQUE := StrToInt(DbGridProdutos.Columns[0].Field.Text);
  	end;

  	if Key=Vk_F2 then
   begin
   	DMESTOQUE.WSimilar.Close;
       DMESTOQUE.WSimilar.SQL.Clear;
       DMESTOQUE.WSimilar.SQL.Add(' SELECT * FROM VWSIMILAR where (vwsimilar.descricao like upper(' + #39 + edPesquisaRapida.Text + '%' + #39 + '))  AND (VWSIMILAR.ATIVO=' + #39 + 'S' + #39 + ')');
       DMESTOQUE.WSimilar.Open;

       if not DMESTOQUE.WSimilar.IsEmpty then
       begin
       	XCOD_ESTOQUE := StrToInt(DbGridProdutos.Columns[0].Field.Text);

           if PageControl1.ActivePage = tabProduto then
       		EDQuantidade.Text := '1,00'
           else
       		edQtdeComp.Text := '1,00';
       end;
  	end;
end;

procedure TFOrdemProduc.edPesquisaRapidaKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
	xPesqDescricao, xPesqCtrlInt, xPesqCodFab: Boolean;//Edmar - 17/10/2014 - Variaveis para controle das pesquisas
begin
  inherited;
  	if Key <> VK_F2 then
   begin
		PListaProdutos.Visible := True;
   	PListaProdutos.BringToFront;
   end;
     
	if (Key = VK_UP) OR (Key = VK_DOWN) then
  		Exit;
       
	//Edmar - 17/10/2014 - ESC refiltra a grid, esconde o painel e limpa as labels
   if Key = VK_ESCAPE then
   begin
       DMESTOQUE.WSimilar.Close;
       DMESTOQUE.WSimilar.SQL.Clear;
       DMESTOQUE.WSimilar.SQL.Add('SELECT * FROM VWSIMILAR WHERE (VWSIMILAR.ATIVO=' + #39 + 'S' + #39 + ')');
       DMESTOQUE.WSimilar.Open;

       LimpaLabels;
       {
       PListaProdutos.Visible := False;
       PListaProdutos.SendToBack;
       }
       edPesquisaRapida.Text := '';
       LPesquisa.Caption := 'Pesquisa: ';
       
       Exit;       
   end;

   //Edmar - 17/10/2014 - Se o campo estiver vazio, esconde o painel
   if edPesquisaRapida.Text = '' then
   begin
       PListaProdutos.Visible := False;
       PListaProdutos.SendToBack;
       LPesquisa.Caption := 'Pesquisa: ';
   end;

   //Edmar - 17/10/2014 - Ao clicar enter, filtra novamente buscando o produto
   // para escrever as informações
   if Key = VK_RETURN then
   begin
       EscreveLabels;
       {
       PListaProdutos.Visible := False;
       PListaProdutos.SendToBack;
       }
       edPesquisaRapida.Text := '';
       EDQuantidade.Text := '1,00';

       //filtra a grid de similar
       edPesquisaRapidaClick(sender);
       
       Exit;
   end;

   //Edmar - 17/10/2014 - Primeiro tenta localizar um produto pela descrição
   if DMESTOQUE.WSimilar.Locate('DESCRICAO', edPesquisaRapida.Text, [loCaseInsensitive, loPartialKey]) then
   begin
   	//se achar ordena os produto pela descrição
       //e alimenta as variavel global com o código do estoque
   	if not xPesqDescricao then
       begin
       	DMESTOQUE.WSimilar.Close;
       	DMESTOQUE.WSimilar.SQL.Clear;
       	DMESTOQUE.WSimilar.SQL.Add('SELECT * FROM VWSIMILAR WHERE (VWSIMILAR.ATIVO =' + #39 + 'S' + #39 + ') ORDER BY DESCRICAO');
       	DMESTOQUE.WSimilar.Open;

           xPesqDescricao := True;
           xPesqCodFab := False;
           xPesqCtrlInt := False;

			DMESTOQUE.WSimilar.Locate('DESCRICAO', edPesquisaRapida.Text, [loCaseInsensitive, loPartialKey]);
       end;

       LPesquisa.Caption := 'Descrição: ';
       XCOD_ESTOQUE := StrToInt(DbGridProdutos.Columns[0].Field.Text);

       Exit;
   end;

   //caso não achar pela descrição faz o mesmo processo com o controle interno e com o código do fabricante
   if DMESTOQUE.WSimilar.Locate('CONTRINT', edPesquisaRapida.Text, [loCaseInsensitive, loPartialKey]) then
   begin
   	if not xPesqCtrlInt then
       begin
       	DMESTOQUE.WSimilar.Close;
       	DMESTOQUE.WSimilar.SQL.Clear;
       	DMESTOQUE.WSimilar.SQL.Add('SELECT * FROM VWSIMILAR WHERE (VWSIMILAR.ATIVO =' + #39 + 'S' + #39 + ') ORDER BY CONTRINT');
       	DMESTOQUE.WSimilar.Open;

           xPesqCtrlInt := True;
           xPesqDescricao := False;
           xPesqCodFab := False;

			DMESTOQUE.WSimilar.Locate('CONTRINT', edPesquisaRapida.Text, [loCaseInsensitive, loPartialKey]);
       end;
   
       LPesquisa.Caption := 'Ctrl. Interno:';
       XCOD_ESTOQUE := StrToInt(DbGridProdutos.Columns[0].Field.Text);

       Exit;
   end;

   if DMESTOQUE.WSimilar.Locate('CODFABRICANTE', edPesquisaRapida.Text, [loCaseInsensitive, loPartialKey]) then
   begin
   	if not xPesqCodFab then
       begin
       	DMESTOQUE.WSimilar.Close;
       	DMESTOQUE.WSimilar.SQL.Clear;
       	DMESTOQUE.WSimilar.SQL.Add('SELECT * FROM VWSIMILAR WHERE (VWSIMILAR.ATIVO =' + #39 + 'S' + #39 + ') ORDER BY CODFABRICANTE');
       	DMESTOQUE.WSimilar.Open;

           xPesqCodFab := True;
           xPesqDescricao := False;
           xPesqCtrlInt := False;

			DMESTOQUE.WSimilar.Locate('CODFABRICANTE', edPesquisaRapida.Text, [loCaseInsensitive, loPartialKey]);
       end;
   
       LPesquisa.Caption := 'Cod. Fabricante: ';
       XCOD_ESTOQUE := StrToInt(DbGridProdutos.Columns[0].Field.Text);

       Exit;
   end;
   
	XCOD_ESTOQUE := StrToInt(DbGridProdutos.Columns[0].Field.Text);
   LPesquisa.Caption := 'Fora de Pesquisa';
end;

procedure TFOrdemProduc.EscreveLabels;
begin
	//Edmar - 17/10/2014 - Busca o produto com base no codigo do estoque e escreve nos seus campos correspondente
   DMESTOQUE.Alx.Close;
   DMESTOQUE.Alx.SQL.Clear;
   DMESTOQUE.Alx.SQL.Add(' SELECT VWSIMILAR.DESCRICAO, VWSIMILAR.ESTFISICO FROM VWSIMILAR WHERE VWSIMILAR.COD_ESTOQUE = :ESTOQUE ');
   DMESTOQUE.Alx.ParamByName('ESTOQUE').AsInteger := XCOD_ESTOQUE;
   DMESTOQUE.Alx.Open;

   //Edmar - 12/01/2015 - verifica qual aba está ativa
   if PageControl1.ActivePage = tabProduto then
   begin//ABA PRODUTO
       if not DMESTOQUE.Alx.IsEmpty then
       begin
           EdProduto.Text := DMESTOQUE.Alx.FieldByName('DESCRICAO').AsString;
           LEstoque.Text := DMESTOQUE.Alx.FieldByName('ESTFISICO').AsString;
           EDQuantidade.Text := '1';

           EDQuantidade.SetFocus;
       end
       else
           EdProduto.Text := 'PRODUTO NÃO ENCONTRADO';
   end
   else begin//ABA COMPONENTES ADICIONAIS
       if not DMESTOQUE.Alx.IsEmpty then
       begin
           edComponente.Text := DMESTOQUE.Alx.FieldByName('DESCRICAO').AsString;
           edEstoqueComp.Text := DMESTOQUE.Alx.FieldByName('ESTFISICO').AsString;
           edQtdeComp.Text := '1';

           edQtdeComp.SetFocus;
       end
       else
           edComponente.Text := 'PRODUTO NÃO ENCONTRADO';
   end;

   //verifica qual aba está ativa para ocultar o painel correto
   if PageControl1.ActivePage = tabProduto then
   begin
   	PListaProdutos.Visible := False;
       PListaProdutos.SendToBack;
   end
   else begin
		pListaComponente.Visible := False;
       pListaComponente.SendToBack;
   end;
end;

procedure TFOrdemProduc.LimpaLabels;
begin
  //Edmar - 17/10/2014 - limpa as labels de produto
  EDQuantidade.Text := '0';
  EdProduto.Text := '';
  LEstoque.Text := '';
  XCOD_ESTOQUE := -1;
  //
  edQtdeComp.Text := '0';
  edComponente.Text := '';
  edEstoqueComp.Text := '';

  //verifica qual aba está ativa para ocultar o painel correto
  if PageControl1.ActivePage = tabProduto then
  begin
     PListaProdutos.Visible := False;
     PListaProdutos.SendToBack;
  end
  else begin
     pListaComponente.Visible := False;
     pListaComponente.SendToBack;
  end;
end;

procedure TFOrdemProduc.DbGridProdutosKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	XCOD_ESTOQUE := StrToInt(DbGridProdutos.Columns[0].Field.Text);
   
  	if Key = VK_RETURN then
   begin
		EscreveLabels;
       PListaProdutos.Visible := False;
       PListaProdutos.SendToBack;
   end;
end;

procedure TFOrdemProduc.DbGridProdutosCellClick(Column: TColumn);
begin
  inherited;
	XCOD_ESTOQUE := StrToInt(DbGridProdutos.Columns[0].Field.Text);
end;

procedure TFOrdemProduc.DbGridProdutosDblClick(Sender: TObject);
begin
  inherited;
	EscreveLabels;
end;

procedure TFOrdemProduc.BtnInsertProdClick(Sender: TObject);
var
	xQtdeTmp: Integer;
begin
  inherited;

	if PageControl1.ActivePage = tabProduto then
   begin
   	//Edmar - 17/10/2014 - Validações básicas
       if EdProduto.Text = '' then
       begin
           Mensagem(' A T E N Ç Ã O ', 'Selecione um Produto antes de inserir.', '', 1, 1, False, 'A');

           edPesquisaRapida.SetFocus;

           Exit;
       end;

       if EDQuantidade.ValueNumeric <= 0 then
       begin
           Mensagem(' A T E N Ç Ã O ', 'Informe a quantidade a ser produzida.', '', 1, 1, False, 'A');

           EDQuantidade.SetFocus;

           Exit;
       end;
  	end
   else begin
   	//Edmar - 17/10/2014 - Validações básicas
       if edComponente.Text = '' then
       begin
           Mensagem(' A T E N Ç Ã O ', 'Selecione um Produto antes de inserir.', '', 1, 1, False, 'A');

           edPesqComponente.SetFocus;

           Exit;
       end;

       if edQtdeComp.ValueNumeric <= 0 then
       begin
           Mensagem(' A T E N Ç Ã O ', 'Informe a quantidade a ser produzida.', '', 1, 1, False, 'A');

           edQtdeComp.SetFocus;

           Exit;
       end;

       //Edmar - 12/01/2015 - Busca o produto selecionado para verificar se o mesmo é um componente
       DMESTOQUE.Alx4.Close;
       DMESTOQUE.Alx4.SQL.Clear;
       DMESTOQUE.Alx4.SQL.Add(' SELECT COUNT(SUBPRODUTO.COD_SUBPRODUTO) FROM ESTOQUE ');
       DMESTOQUE.Alx4.SQL.Add(' LEFT JOIN SUBPRODUTO ON SUBPRODUTO.COD_SUBPRODUTO = ESTOQUE.COD_SUBPROD ');
       DMESTOQUE.Alx4.SQL.Add(' WHERE (ESTOQUE.COD_ESTOQUE = :ESTOQUE) AND (SUBPRODUTO.COMPONENTE = ''1'') ');
       DMESTOQUE.Alx4.ParamByName('ESTOQUE').AsInteger := XCOD_ESTOQUE;
       DMESTOQUE.Alx4.Open;

       if DMESTOQUE.Alx4.FieldByName('COUNT').AsInteger = 0 then
       begin
       	Mensagem(' A T E N Ç Ã O ', 'O produto selecionado não é um componente. Por favor verifique!', '', 1, 1, False, 'A');

           edPesqComponente.SetFocus;

           Exit;
       end;    
   end;

   //verifica se existe o mesmo produto já inserido na grid
   if (DMMACS.TLoja.FieldByName('controlprodlista').AsString = '1') OR (DMMACS.TLoja.FieldByName('controlprodlista').AsString = null) then
   begin
   	DMESTOQUE.TSlave.Close;
       DMESTOQUE.TSlave.SQL.Clear;
       DMESTOQUE.TSlave.SQL.Add(' SELECT ITPRODORD.QTD, COD_ESTOQUE FROM ITPRODORD WHERE (ITPRODORD.COD_ORDEM = :ORDEM) AND (ITPRODORD.COD_ESTOQUE = :ESTOQUE) ');

       if PageControl1.ActivePage = tabProduto then
       	DMESTOQUE.TSlave.SQL.Add(' AND (ITPRODORD.OPERACAO <> ''COMP'') ')
       else
       	DMESTOQUE.TSlave.SQL.Add(' AND (ITPRODORD.OPERACAO = ''COMP'') ');
                  
       DMESTOQUE.TSlave.ParamByName('ORDEM').AsInteger := XCOD_ORDEM;
       DMESTOQUE.TSlave.ParamByName('ESTOQUE').AsInteger := XCOD_ESTOQUE;
       DMESTOQUE.TSlave.Open;

       if not DMESTOQUE.TSlave.IsEmpty then
		begin
       	if Mensagem('A T E N Ç Ã O !', 'O sistema encontrou o mesmo produto já lançado a lista com ' + DMESTOQUE.TSlave.FieldByName('QTD').AsString + ' qtdes.' + #13 + 'Deseja alterar este produto já lançado?', '', 2, 3, False, 'C') = 2 then
           begin
           	//calcula a quantidade final do produto e joga numa variavel temporaria
				xQtdeTmp := DMESTOQUE.TSlave.FieldByName('QTD').AsInteger + EDQuantidade.ValueInteger;
				BtnDeleteProdClick(sender);//remove o produto
               FiltraSlave;//filtra
               //atribui a quantidade calculada antes no campo e deixa com foco
               EDQuantidade.ValueNumeric := xQtdeTmp;
               EDQuantidade.SetFocus;

               Exit;
           end;       	
       end;
   end;
   
   try
       DMServ.TPOrd.Close;
       DMServ.TPOrd.SQL.Clear;
       DMServ.TPOrd.SQL.Add(' INSERT INTO ITPRODORD (ITPRODORD.COD_ESTOQUE, ITPRODORD.COD_ORDEM, ITPRODORD.QTD, ITPRODORD.OPERACAO) VALUES (:ESTOQUE, :ORDEM, :QTD, :OP) ');
       DMServ.TPOrd.ParamByName('ESTOQUE').AsInteger := XCOD_ESTOQUE;
       DMServ.TPOrd.ParamByName('ORDEM').AsInteger := XCOD_ORDEM;

     	if PageControl1.ActivePage = tabComponente then
       begin
       	DMServ.TPOrd.ParamByName('OP').AsString := 'COMP';
	        DMServ.TPOrd.ParamByName('QTD').AsInteger := edQtdeComp.ValueInteger;           
       end
       else begin
       	DMServ.TPOrd.ParamByName('OP').AsString := '';
       	DMServ.TPOrd.ParamByName('QTD').AsInteger := EDQuantidade.ValueInteger;           
       end;

       DMServ.TPOrd.ExecSQL;
       DMServ.IBT.CommitRetaining;
   except
       On E : Exception do
       begin
           Mensagem(' A T E N Ç Ã O ','Não foi possível inserir o Produto na Ordem '+E.Message, '', 1, 1, False, 'E');
           DMServ.IBT.RollbackRetaining;
       end;
   end;
   
  	FiltraSlave;
   LimpaLabels;
   
  	if PageControl1.ActivePage = tabComponente then
   	edPesqComponente.SetFocus
   else
   	edPesquisaRapida.SetFocus;
end;

procedure TFOrdemProduc.BtnDeleteProdClick(Sender: TObject);
begin
  inherited;
  	if (DMESTOQUE.TSlave.RecordCount <> 0) OR (DMESTOQUE.Alx5.RecordCount <> 0) then
   begin
   	DMESTOQUE.Alx1.Close;
       DMESTOQUE.Alx1.SQL.Clear;
       DMESTOQUE.Alx1.SQL.Add('SELECT VWSIMILAR.DESCRICAO, VWSIMILAR.ESTFISICO FROM VWSIMILAR WHERE COD_ESTOQUE = :ESTOQUE ');

       if PageControl1.ActivePage = tabProduto then
       	DMESTOQUE.Alx1.ParamByName('ESTOQUE').AsInteger := DMESTOQUE.TSlave.FieldByName('COD_ESTOQUE').AsInteger
       else
       	DMESTOQUE.Alx1.ParamByName('ESTOQUE').AsInteger := DMESTOQUE.Alx5.FieldByName('COD_ESTOQUE').AsInteger;
           
       DMESTOQUE.Alx1.Open;

       if PageControl1.ActivePage = tabProduto then
       begin
       	EdProduto.Text := DMESTOQUE.Alx1.FieldByName('DESCRICAO').AsString;
           LEstoque.Text := DMESTOQUE.Alx1.FieldByName('ESTFISICO').AsString;
           EDQuantidade.Text := DMESTOQUE.TSlave.FieldByName('QTD').AsString;
           //
           XCOD_ITPROD := DMESTOQUE.TSlave.FieldByName('COD_ITPRODORD').AsInteger;
           XCOD_ESTOQUE := DMESTOQUE.TSlave.FieldByName('COD_ESTOQUE').AsInteger;
       end
       else begin
       	edComponente.Text := DMESTOQUE.Alx1.FieldByName('DESCRICAO').AsString;
           edEstoqueComp.Text := DMESTOQUE.Alx1.FieldByName('ESTFISICO').AsString;
           edQtdeComp.Text := DMESTOQUE.Alx5.FieldByName('QTD').AsString;
           //
			XCOD_ITPROD := DMESTOQUE.Alx5.FieldByName('COD_ITPRODORD').AsInteger;
           XCOD_ESTOQUE := DMESTOQUE.Alx5.FieldByName('COD_ESTOQUE').AsInteger;
       end;

       
       try
       	DMServ.TPOrd.Close;
       	DMServ.TPOrd.SQL.Clear;
       	DMServ.TPOrd.SQL.Add(' DELETE FROM ITPRODORD WHERE ITPRODORD.COD_ITPRODORD = :ITORD ');
       	DMServ.TPOrd.ParamByName('ITORD').AsInteger := XCOD_ITPROD;
           DMServ.TPOrd.ExecSQL;
           DMServ.IBT.CommitRetaining;
       except
       	On E : Exception do
           begin
           	ShowMessage('Ocorreu um erro ao tentar remover o Item '+E.Message);
       		DMServ.IBT.RollbackRetaining;
           end;
       end;
   end;
   FiltraSlave;
end;

procedure TFOrdemProduc.FrmClienteEDCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
	if Key = VK_RETURN then
   begin
   	if FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_INTERNO', FrmCliente.EDCodigo.Text, '') then
       begin
       	XCOD_CLIENTE := DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;
       	FrmCliente.EDCodigo.Text := DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString;
           FrmCliente.EdDescricao.Text := DMPESSOA.WCliente.FieldByName('NOME').AsString;

           //Edmar - 17/10/2014 - Filtra apenas o cliente buscando a observação financeira se houver
           DMPESSOA.TCliente.Close;
           DMPESSOA.TCliente.SQL.Clear;
           DMPESSOA.TCliente.SQL.Add(' SELECT * FROM CLIENTE WHERE CLIENTE.COD_CLIENTE = :CODIGO ');
           DMPESSOA.TCliente.ParamByName('CODIGO').AsInteger := DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;
           DMPESSOA.TCliente.SQL.Text;
           DMPESSOA.TCliente.Open;

           If Not DMPESSOA.TCliente.IsEmpty Then
               EdObsFinanceira.Text := DMPESSOA.TCliente.FieldByName('OBSFINANCEIRA').AsString
           Else
               EdObsFinanceira.Text := '';
       end;
   end;

   if Key = VK_ESCAPE then
   begin
   	XCOD_CLIENTE := -1;
     	FrmCliente.EDCodigo.Text := '';
       FrmCliente.EdDescricao.Text := '';
       EdObsFinanceira.Text := '';       
	end;
end;

procedure TFOrdemProduc.BtnConsultarClick(Sender: TObject);
begin
  	try
       LimpaCampos;
       LimpaLabels;

       // repassando valor do codigo da ordem para variavel
       XCOD_ORDEM := DMServ.WOrdem.FieldByname('cod_ordem').AsInteger;
       XNumOrdem := DMServ.WOrdem.FieldByname('NUMERO').AsString;
       // BUSCANDO DADOS DA ORDEM
       FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', IntToStr(XCOD_ORDEM), '');

       if DMSERV.TOrd.FieldByName('STATUS').Asstring = 'FECHADO' Then Begin
           Mensagem('    A T E N Ç Ã O   ', 'A ORDEM JÁ FOI FECHADA.', '', 1, 1, false, 'I');
           AtualizaGridConsulta('ORIGEM');
           Exit;
       end;

       if DMSERV.TOrd.IsEmpty Then Begin
           Mensagem('    A T E N Ç Ã O   ', 'A ORDEM JÁ FOI REMOVIDA.', '', 1, 1, false, 'I');
           AtualizaGridConsulta('ORIGEM');
           Exit;
       end;

       // caso o campo tiver valendo 1 eh pq a ordem jah esta sendo usada
       if DMServ.TOrd.FieldByName('EDIT').AsString = '1' then
       begin
           Mensagem('    A T E N Ç Ã O   ', 'A ORDEM ESTÁ SENDO USADA NO MOMENTO.' + #13 + 'Use Ctrl+D para destravar', '', 1, 1, False, 'I');
           AtualizaGridConsulta('ORIGEM');
           Exit;
       end
       else begin
           DMServ.TAlx1.Close;
           DMServ.TAlx1.SQL.Clear;
           DMServ.TAlx1.SQL.Add('update ordem set ordem.edit = :EDITAR');
           DMServ.TAlx1.SQL.Add('where ordem.cod_ordem = :COD');
           DMServ.TAlx1.ParamByName('EDITAR').AsInteger := 1;
           DMServ.TAlx1.ParamByName('COD').AsInteger := XCOD_ORDEM;
           DMServ.TAlx1.ExecSQL;
           DMServ.IBT.CommitRetaining;
       end;
       //Edmar - 20/10/2014 - Filtra buscando o cliente da os
		FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_CLIENTE', DMServ.TOrd.FieldByName('COD_CLIENTE').AsString, ' ORDER BY NOME ');

		if DMPESSOA.WCliente.IsEmpty then
       	Mensagem(' A T E N Ç Ã O ', 'Não foi localizado um Cliente para a ORDEM consultada.', '', 1, 1, False, 'I')
		else
       begin
       	XCOD_CLIENTE := DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;
       	FrmCliente.EDCodigo.Text := DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString;
           FrmCliente.EdDescricao.Text := DMPESSOA.WCliente.FieldByName('NOME').AsString;

       	//Edmar - 20/10/2014 - Filtra apenas o cliente buscando a observação financeira se houver
       	DMPESSOA.TCliente.Close;
       	DMPESSOA.TCliente.SQL.Clear;
       	DMPESSOA.TCliente.SQL.Add(' SELECT * FROM CLIENTE WHERE CLIENTE.COD_CLIENTE = :CODIGO ');
       	DMPESSOA.TCliente.ParamByName('CODIGO').AsInteger := DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;
       	DMPESSOA.TCliente.SQL.Text;
       	DMPESSOA.TCliente.Open;

       	if not DMPESSOA.TCliente.IsEmpty Then
       		EdObsFinanceira.Text := DMPESSOA.TCliente.FieldByName('OBSFINANCEIRA').AsString
       	else
				EdObsFinanceira.Text := '';
       end;

       EdContatoCliente.Text := DMServ.TOrd.FieldByName('CONTATO').AsString;
       MObs.Text := DMServ.TOrd.FieldByName('OBSERVACAO').AsString;
       EdData.Text := DMServ.TOrd.FieldByName('DTABERT').AsString;
       EdDtPrevisao.Text := DMServ.TOrd.FieldByName('DTPREV').AsString;

       FiltraSlave;       
   except
   	On E : Exception do
       begin
			Mensagem(' A T E N Ç Ã O ', 'Ocorreu um problema ao consultar a ORDEM '+E.Message, '', 1, 1, False, 'E');
           DMServ.IBT.RollbackRetaining;
       end;
   end;
   
   //MOSTRAR PAINEL DE CADASTRO
   PCadastro.Visible := True;
   PCadastro.BringToFront;
   PConsulta.Visible := False;
   PConsulta.SendToBack;
   PageControl1.ActivePageIndex := 0;
   FrmCliente.EDCodigo.SetFocus;
   FrmCliente.Repaint;
end;

procedure TFOrdemProduc.BtnProcProdClick(Sender: TObject);
begin
  inherited;
  	//set no fmenu soh pro focus ficar na descrição
   FMenu.TIPOAUX := 'PEDVENDA';
   //abre formulario de produto para seleção
	if AbrirForm(TFProduto, FProduto, 1) = 'Selected' then
   begin
   	XCOD_ESTOQUE := DMESTOQUE.WSimilar.FieldByName('COD_ESTOQUE').AsInteger;
       
       EscreveLabels;
       PListaProdutos.Visible := False;
       PListaProdutos.SendToBack;
       edPesquisaRapida.Text := '';
       EDQuantidade.Text := '1,00';

       //filtra a grid de similar
       edPesquisaRapidaClick(sender);
   end
   else begin
       LimpaLabels;
       EdProduto.Text := 'PRODUTO NÃO ENCONTRADO';
	end;
end;

procedure TFOrdemProduc.DBGrid2DblClick(Sender: TObject);
begin
  inherited;
  	//Edmar - 20/10/2014 - Cria o formulario de solicitação e compra
   FFichaTecnica := TFFichaTecnica.Create(FFichaTecnica);
   //Salva temporario o código do estoque para consulta no formulário de solicitação de compra
   FFichaTecnica.XCodEstoque := DMESTOQUE.TSlave.FieldByName('COD_ESTOQUE').AsInteger;
	FFichaTecnica.ShowModal; 
end;

procedure TFOrdemProduc.EDCliente1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  	//enter
	if Key = VK_RETURN then
   begin
       AtualizaGridConsulta('CLIENTE');

		EdCliente1.SelectAll;
   end;

   //esc
   if Key = VK_ESCAPE then
   begin
       AtualizaGridConsulta('');

       EDCliente1.Text := '';
   end;                      
end;

procedure TFOrdemProduc.EDNumKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  	//enter
	if Key = VK_RETURN then
   begin
       AtualizaGridConsulta('NUMERO');

		EDNum.SelectAll;
   end;

   //esc
   if Key = VK_ESCAPE then
   begin
       AtualizaGridConsulta('');

       EDNum.Text := '';
   end;
end;

procedure TFOrdemProduc.edDtFinalKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	if key = vk_return then
   begin
   	//Edmar - 20/10/2014 - Teste se foi informado as duas datas
   	if (edDtInicial.Text <> '  /  /    ') and (edDtFinal.Text <> '  /  /    ') then
       begin
       	//Edmar - 20/10/2014 - Verifica se pesquisa por data de abertura ou de fechamento
           //e passa a informação correspondente
       	if(rbAbertura.Checked) then
           	FiltraOrdemData(edDtInicial.Text, edDtFinal.Text, 'ABERT')
           else
           	FiltraOrdemData(edDtInicial.Text, edDtFinal.Text, 'FECH')
       end;
  	end
   else
   if key = vk_escape then
       AtualizaGridConsulta('');
end;

procedure TFOrdemProduc.edDtInicialKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	if key = vk_return then
   begin
   	//Edmar - 20/10/2014 - Teste se foi informado as duas datas
   	if (edDtInicial.Text <> '  /  /    ') and (edDtFinal.Text <> '  /  /    ') then
       begin
       	//Edmar - 20/10/2014 - Verifica se pesquisa por data de abertura ou de fechamento
           //e passa a informação correspondente
       	if(rbAbertura.Checked) then
           	FiltraOrdemData(edDtInicial.Text, edDtFinal.Text, 'ABERT')
           else
           	FiltraOrdemData(edDtInicial.Text, edDtFinal.Text, 'FECH')
       end;
  	end
   else
   if key = vk_escape then
       AtualizaGridConsulta('');
end;

procedure TFOrdemProduc.FiltraOrdemData(xDataInicial, xDataFinal, xSituacao:String);
begin
	DMServ.WOrdem.Close;
   DMServ.WOrdem.SQL.Clear;
   DMServ.WOrdem.SQL.Add('SELECT * FROM VWORDEM');

   //Edmar - 07/04/2014 - Condições diferentes para diferentes situações
   if xSituacao = 'ABERT' then
   begin
   	DMServ.WOrdem.SQL.Add('where vwordem.dtabert between :dtIni and :dtFin');
       DMServ.WOrdem.SQL.Add('order by dtabert');
   end
   else
   begin
		DMServ.WOrdem.SQL.Add('where vwordem.dtfech between :dtIni and :dtFin');
       DMServ.WOrdem.SQL.Add('order by dtfech');
   end;

   DMServ.WOrdem.ParamByName('dtIni').AsString := xDataInicial;
   DMServ.WOrdem.ParamByName('dtFin').AsString := xDataFinal;

   //Edmar - 07/04/2014 - Libera dados
   DMServ.WOrdem.Open;
end;

procedure TFOrdemProduc.EDNumEnter(Sender: TObject);
begin
  inherited;
	if EDNum.Text = 'Número' then
   	EDNum.Text := '';
end;

procedure TFOrdemProduc.EDCliente1Enter(Sender: TObject);
begin
  inherited;
	if EDCliente1.Text = 'CLIENTE' then
   	EDCliente1.Text := '';
end;

//Função responsável por efetuar a leitura do campo que limita a quantidade de registros a serem visualizados na ordem de serviços
Function TFOrdemProduc.LerMaxRegistroXmlConfig: Boolean;
Begin
	Try
       Result:=True;
       //Edmar - 11/09/2014 - Busca o usuario logado no sistema
		FiltraTabela(DMMACS.TUsuario, 'USUARIO', 'CODUSUARIO', FMenu.LCODUSUARIO.Caption, '');
       //Edmar - 11/09/2014 - Se o usuario tem salvo o numero de registro que serão mostrados na OS
       //coloca o seu valor correspondente
       if DMMACS.TUsuario.FieldByName('MAXREGISTROOS').AsString <> '' then
       	EdMaxRegistro.Text := DMMACS.TUsuario.FieldByName('MAXREGISTROOS').AsString
       else//Edmar - 11/09/2014 - Senão, joga valor 50 como padrão
			EdMaxRegistro.Text := '50';
   Except
   	Result:=False;
   End;
End;

//Função responsável por efetuar a gravação do campo que limita a quantidade de registros a serem visualizados na ordem de serviços
Function TFOrdemProduc.GravaMaxRegistroXmlConfig: Boolean;
Begin
	Try
       Result:=True;
       //Edmar - 11/09/2014 - Monta SQL para atualizar o numero de registro do usuario
       DMMACS.TALX.Close;
       DMMACS.TALX.SQL.Clear;
       DMMACS.TALX.SQL.Add(' UPDATE USUARIO SET USUARIO.MAXREGISTROOS = :MAXREG WHERE USUARIO.CODUSUARIO = :USUARIO ');
       DMMACS.TALX.ParamByName('MAXREG').AsString := EdMaxRegistro.Text;
       DMMACS.TALX.ParamByName('USUARIO').AsString := FMenu.LCODUSUARIO.Caption;

       DMMACS.TALX.ExecSQL;
       DMMACS.Transaction.CommitRetaining;
   Except
   	Result:=False;
       DMMACS.Transaction.RollbackRetaining;
   End;
End;

procedure TFOrdemProduc.BtnFechaPedClick(Sender: TObject);
begin
  inherited;
   //Edmar - 20/10/2014 - Inicia o processo de fechamento da ordem

   //Valida se foi localizado a ordem
   if not FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', DMServ.WOrdem.FieldByName('COD_ORDEM').AsString, '') then
   begin
       Mensagem('A T E N Ç Ã O', 'Não foi localizado nenhuma Ordem para ser fechada', '', 1, 1, False, 'A');

       Exit;
   end;

   //Edmar - 20/10/2014 - Valida se a ordem já não está fechada
   if DMServ.TOrd.FieldByName('STATUS').AsString = 'FECHADO' then
   begin
       Mensagem('A T E N Ç Ã O', 'A Ordem selecionada já se encontra fechada!', '', 1, 1, False, 'I');

       Exit;
   end;

   if Mensagem('C O N F I R M A Ç Ã O', 'Deseja realmente fechar a Ordem '+DMServ.WOrdem.FieldByName('NUMERO').AsString+'?', '', 2, 3, False, 'C') = 2 then
   begin
   	try
       	//try except geral
           XCOD_ORDEM := DMServ.TOrd.FieldByName('COD_ORDEM').AsInteger;

           //Edmar - 20/10/2014 - Atualiza a ORDEM como fechada
           DMServ.TOrd.Edit;
           DMServ.TOrd.FieldByName('STATUS').AsString := 'FECHADO';
           DMServ.TOrd.FieldByName('DTFECH').AsDateTime := Date();
           DMServ.TOrd.Post;

           //busca os itens da ordem
           DMESTOQUE.TSlave.Close;
           DMESTOQUE.TSlave.SQL.Clear;
           DMESTOQUE.TSlave.SQL.Add(' SELECT ITPRODORD.COD_ITPRODORD, ITPRODORD.COD_ESTOQUE, ITPRODORD.QTD, ITPRODORD.OPERACAO FROM ITPRODORD WHERE ITPRODORD.COD_ORDEM = :ORDEM ');
           DMESTOQUE.TSlave.ParamByName('ORDEM').AsInteger := XCOD_ORDEM;
           DMESTOQUE.TSlave.Open;
           DMESTOQUE.TSlave.First;

           //verifica se foi encontrado itens
           if not DMESTOQUE.TSlave.IsEmpty then
           begin
               while not DMESTOQUE.TSlave.Eof do
               begin
               	if DMESTOQUE.TSlave.FieldByName('OPERACAO').AsString <> 'COMP' then
                   begin//Edmar - 12/01/2015 - Se o produto em questão não for um componente
                   	//executa, o processo normalmente
                       
                   	//Edmar - 20/10/2014 - Atualiza o estoque aumentando a quantidade do produto com base no que foi produzido
                       MDO.Query.Close;
                       MDO.Query.SQL.Clear;
                       MDO.Query.SQL.Add(' UPDATE ESTOQUE SET ESTOQUE.ESTFISICO = ESTOQUE.ESTFISICO +'+DMESTOQUE.TSlave.FieldByName('QTD').AsString+' WHERE ESTOQUE.COD_ESTOQUE = :ESTOQUE ');
                       MDO.Query.ParamByName('ESTOQUE').AsInteger := DMESTOQUE.TSlave.FieldByName('COD_ESTOQUE').AsInteger;
                       MDO.Query.ExecSQL;

                       //Edmar - 28/10/2014 - Chama função que lança o estoque para correção
                       LancaEstoqueCorrecao('E', 'F', DMESTOQUE.TSlave.FieldByName('QTD').AsFloat, DMESTOQUE.TSlave.FieldByName('COD_ESTOQUE').AsInteger);
                           
                       //Edmar - 20/10/2014 - Depois busca os itens na ficha tecnica com base no produto recém atualizado
                       DMESTOQUE.Alx1.Close;
                       DMESTOQUE.Alx1.SQL.Clear;
                       DMESTOQUE.Alx1.SQL.Add(' SELECT ITEMFICHATECNICA.COD_ESTOQUE, ITEMFICHATECNICA.QUANTIDADE FROM FICHATECNICA ');
                       DMESTOQUE.Alx1.SQL.Add(' LEFT JOIN ITEMFICHATECNICA ON ITEMFICHATECNICA.COD_FICHATECNICA = FICHATECNICA.COD_SETOR ');
                       DMESTOQUE.Alx1.SQL.Add(' WHERE FICHATECNICA.COD_ESTOQUE = :ESTOQUE ');
                       DMESTOQUE.Alx1.ParamByName('ESTOQUE').AsInteger := DMESTOQUE.TSlave.FieldByName('COD_ESTOQUE').AsInteger;
                       DMESTOQUE.Alx1.Open;
                       DMESTOQUE.Alx1.First;                        

                       //while diminuindo a quantidade dos itens usados para a fabricação do item anterior
                       while not DMESTOQUE.Alx1.Eof do
                       begin                           
                           //Edmar - 04/02/2015 - Baixa o estoque do componente
                           BaixaEstoqueComponente(DMESTOQUE.Alx1, DMESTOQUE.TSlave.FieldByName('QTD').AsFloat);

                           //busca os componentes do componente e chama a função novamente, se houver
                           DMESTOQUE.Alx2.Close;
                           DMESTOQUE.Alx2.SQL.Clear;
                           DMESTOQUE.Alx2.SQL.Add(' SELECT ITEMFICHATECNICA.COD_ESTOQUE, ITEMFICHATECNICA.QUANTIDADE FROM FICHATECNICA ');
                           DMESTOQUE.Alx2.SQL.Add(' LEFT JOIN ITEMFICHATECNICA ON ITEMFICHATECNICA.COD_FICHATECNICA = FICHATECNICA.COD_SETOR ');
                           DMESTOQUE.Alx2.SQL.Add(' WHERE FICHATECNICA.COD_ESTOQUE = :ESTOQUE ');
                           DMESTOQUE.Alx2.ParamByName('ESTOQUE').AsInteger := DMESTOQUE.Alx1.FieldByName('COD_ESTOQUE').AsInteger;
                           DMESTOQUE.Alx2.Open;
                           DMESTOQUE.Alx2.First;

							while not DMESTOQUE.Alx2.Eof do
                           begin
                           	//Qtd do produto pai * a quantidade necessário para produzir o componente
                               //deste modo ele vai baixar a quantidade correta do produto produzido levando em consideração
                               //a quantidade produzida do produto pai e do componente usado para a fabricação do mesmo
                               BaixaEstoqueComponente(DMESTOQUE.Alx2, DMESTOQUE.TSlave.FieldByName('QTD').AsFloat * DMESTOQUE.Alx1.FieldByName('QUANTIDADE').AsFloat);

                           	DMESTOQUE.Alx2.Next;
                           end;

                           DMESTOQUE.Alx1.Next;//next do componente necessário para produzir o produto
                       end;                   	
                   end
                   else begin
                   	//Caso seja um componente, busca ele novamente e diminui o mesmo no estoque
                       DMESTOQUE.Alx1.Close;
                       DMESTOQUE.Alx1.SQL.Clear;
                       DMESTOQUE.Alx1.SQL.Add(' SELECT ITPRODORD.COD_ESTOQUE, ITPRODORD.QTD, ITPRODORD.OPERACAO FROM ITPRODORD WHERE ITPRODORD.COD_ITPRODORD = :ITEM ');
                       DMESTOQUE.Alx1.ParamByName('ITEM').AsInteger := DMESTOQUE.TSlave.FieldByName('COD_ITPRODORD').AsInteger;
                       DMESTOQUE.Alx1.Open;

                       //Edmar - 12/01/2015 - Atualiza o estoque do componente adicional
                       MDO.Query.Close;
                       MDO.Query.SQL.Clear;
                       MDO.Query.SQL.Add(' UPDATE ESTOQUE SET ESTOQUE.ESTFISICO = ESTOQUE.ESTFISICO - '+ DMESTOQUE.Alx1.FieldByName('QTD').AsString +' WHERE ESTOQUE.COD_ESTOQUE = :ESTOQUE ');
                       MDO.Query.ParamByName('ESTOQUE').AsInteger := DMESTOQUE.Alx1.FieldByName('COD_ESTOQUE').AsInteger;
                       MDO.Query.ExecSQL;

                       LancaEstoqueCorrecao('S', 'F', DMESTOQUE.Alx1.FieldByName('QTD').AsFloat, DMESTOQUE.Alx1.FieldByName('COD_ESTOQUE').AsInteger);

                       //Edmar - 20/10/2014 - Depois busca os itens na ficha tecnica com base no produto recém atualizado
                       DMESTOQUE.Alx1.Close;
                       DMESTOQUE.Alx1.SQL.Clear;
                       DMESTOQUE.Alx1.SQL.Add(' SELECT ITEMFICHATECNICA.COD_ESTOQUE, ITEMFICHATECNICA.QUANTIDADE FROM FICHATECNICA ');
                       DMESTOQUE.Alx1.SQL.Add(' LEFT JOIN ITEMFICHATECNICA ON ITEMFICHATECNICA.COD_FICHATECNICA = FICHATECNICA.COD_SETOR ');
                       DMESTOQUE.Alx1.SQL.Add(' WHERE FICHATECNICA.COD_ESTOQUE = :ESTOQUE ');
                       DMESTOQUE.Alx1.ParamByName('ESTOQUE').AsInteger := DMESTOQUE.TSlave.FieldByName('COD_ESTOQUE').AsInteger;
                       DMESTOQUE.Alx1.Open;
                       DMESTOQUE.Alx1.First;                        

                       //while diminuindo a quantidade dos itens usados para a fabricação do item anterior
                       while not DMESTOQUE.Alx1.Eof do
                       begin                           
                           //Edmar - 04/02/2015 - Baixa o estoque do componente
                           BaixaEstoqueComponente(DMESTOQUE.Alx1, DMESTOQUE.TSlave.FieldByName('QTD').AsFloat);

                           DMESTOQUE.Alx1.Next;
                       end;
                   end;

                   DMESTOQUE.TSlave.Next;//next dos produtos da ordem de produção
               end;

               //comita as informações atualizadas acima
               try//try except exclusivo para os commits
                   DMServ.IBT.CommitRetaining;
                   DMESTOQUE.TransacEstoque.CommitRetaining;
                   MDO.Transac.CommitRetaining;
                   DMENTRADA.IBT.CommitRetaining;
                   DMSAIDA.IBT.CommitRetaining;
               except
                   On E : Exception do
                   begin
                       ShowMessage('Ocorreu um erro ao fechar a Ordem de Produção e/ou atualizar o Estoque do Item. O processo será desfeito. '+#13+E.Message);
                       DMServ.IBT.RollbackRetaining;
                       DMESTOQUE.TransacEstoque.RollbackRetaining;
                       MDO.Transac.RollbackRetaining;
                       DMENTRADA.IBT.RollbackRetaining;
                       DMSAIDA.IBT.RollbackRetaining;
                   end;
               end;

               Mensagem(' I N F O R M A Ç Ã O ', 'Ordem de Produção fechada com sucesso!', '', 1, 1, False, 'I');
           end
           else
               Mensagem(' I N F O R M A Ç Ã O ', 'Não foi localizado Itens na Ordem para atualizar o estoque', '', 1, 1, False, 'I');
       except//try except geral
       	On E : Exception do
           begin
           	ShowMessage('Ocorreu um erro durante o processamento. Todo o processo foi abortado. '+#13+E.Message);
               DMServ.IBT.RollbackRetaining;
               DMESTOQUE.TransacEstoque.RollbackRetaining;
               MDO.Transac.RollbackRetaining;
               DMENTRADA.IBT.RollbackRetaining;
               DMSAIDA.IBT.RollbackRetaining;
           end;
       end;
      	AtualizaGridConsulta('');           
   end;
end;

//Edmar - 04/02/2015 - xQuery é a query principal dos componentes
procedure TFOrdemProduc.BaixaEstoqueComponente(xQuery: TIBQuery; XQtde: Real);
Var
	xQtdBaixar: Real;
begin
	try
		try
                xQtdBaixar:= xQuery.FieldByName('QUANTIDADE').AsFloat * XQtde;
                MDO.Query.Close;
                MDO.Query.SQL.Clear;
                MDO.Query.SQL.Add(' UPDATE ESTOQUE SET ESTOQUE.ESTFISICO = ESTOQUE.ESTFISICO - '+FloatToStr(xQtdBaixar)+' WHERE ESTOQUE.COD_ESTOQUE = :ESTOQUE ');
                MDO.Query.ParamByName('ESTOQUE').AsInteger := xQuery.FieldByName('COD_ESTOQUE').AsInteger;
                MDO.Query.ExecSQL;

                LancaEstoqueCorrecao('S', 'F', (xQuery.FieldByName('QUANTIDADE').AsFloat * XQtde), xQuery.FieldByName('COD_ESTOQUE').AsInteger);
		Except
			MessageDlg('Ocorreu um erro ao atualizar o estoque de um componente. Será necessário atualizar o estoque manualmente.', mtWarning, [mbOK], 0);
		end;
   except
   	On E : Exception do
       begin
       	Raise Exception.Create(e.Message);
       end;
   end;
end;


procedure TFOrdemProduc.AumentaEstoqueComponente(xQuery: TIBQuery; XQtde: Real);
begin
	try
   	MDO.Query.Close;
       MDO.Query.SQL.Clear;
       MDO.Query.SQL.Add(' UPDATE ESTOQUE SET ESTOQUE.ESTFISICO = ESTOQUE.ESTFISICO + (:QTDNEC * :QTDPROD) WHERE ESTOQUE.COD_ESTOQUE = :ESTOQUE ');
       //QUANTIDADE NECESSÁRIA PARA PRODUZIR O ITEM
       MDO.Query.ParamByName('QTDNEC').AsFloat := xQuery.FieldByName('QUANTIDADE').AsFloat;
       //QUANTIDADE PRODUZIDA DO ITEM
       MDO.Query.ParamByName('QTDPROD').AsFloat := XQtde;
       MDO.Query.ParamByName('ESTOQUE').AsInteger := xQuery.FieldByName('COD_ESTOQUE').AsInteger;
       MDO.Query.ExecSQL;
       
       //Edmar - 04/02/2015 - Chama função que lança o estoque para correção
       LancaEstoqueCorrecao('E', 'C', (xQuery.FieldByName('QUANTIDADE').AsFloat * XQtde), xQuery.FieldByName('COD_ESTOQUE').AsInteger);
   except
   	On E : Exception do
       begin
       	Raise Exception.Create(e.Message);
       end;
   end;
end;   

procedure TFOrdemProduc.BtnCancelamentosClick(Sender: TObject);
begin
  inherited;
   //Edmar - 20/10/2014 - Inicia o processo de cancelamento do fechamento da ordem

   //Valida se foi localizado a ordem
   if not FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', DMServ.WOrdem.FieldByName('COD_ORDEM').AsString, '') then
   begin
       Mensagem('A T E N Ç Ã O', 'Não foi localizado nenhuma Ordem para cancelar o fechamento.', '', 1, 1, False, 'A');

       Exit;
   end;

   //Edmar - 20/10/2014 - Valida se a ordem já não está ABERTA
   if DMServ.TOrd.FieldByName('STATUS').AsString = 'ABERTO' then
   begin
       Mensagem('A T E N Ç Ã O', 'A Ordem selecionada já se encontra aberta', '', 1, 1, False, 'A');

       Exit;
   end;

   if Mensagem('C O N F I R M A Ç Ã O', 'Deseja realmente cancelar o fechamendo da Ordem '+DMServ.WOrdem.FieldByName('NUMERO').AsString+'?', '', 2, 3, False, 'C') = 2 then
   begin
   	try//try except geral
           XCOD_ORDEM := DMServ.TOrd.FieldByName('COD_ORDEM').AsInteger;

           //Edmar - 20/10/2014 - Atualiza a ORDEM como fechada
           DMServ.TOrd.Edit;
           DMServ.TOrd.FieldByName('STATUS').AsString := 'ABERTO';
           DMServ.TOrd.FieldByName('EDIT').AsString := '0';           
           DMServ.TOrd.Post;

           //busca os itens da ordem
           DMESTOQUE.TSlave.Close;
           DMESTOQUE.TSlave.SQL.Clear;
           DMESTOQUE.TSlave.SQL.Add(' SELECT ITPRODORD.COD_ITPRODORD, ITPRODORD.COD_ESTOQUE, ITPRODORD.QTD, ITPRODORD.OPERACAO FROM ITPRODORD WHERE ITPRODORD.COD_ORDEM = :ORDEM ');
           DMESTOQUE.TSlave.ParamByName('ORDEM').AsInteger := XCOD_ORDEM;
           DMESTOQUE.TSlave.Open;
           DMESTOQUE.TSlave.First;

           //verifica se foi encontrado itens
           if not DMESTOQUE.TSlave.IsEmpty then
           begin
               while not DMESTOQUE.TSlave.Eof do
               begin
               	if DMESTOQUE.TSlave.FieldByName('OPERACAO').AsString <> 'COMP' then
                   begin//Edmar - 12/01/2015 - Se o produto em questão não for um componente
                   	//executa, o processo normalmente
                   	//Edmar - 20/10/2014 - Atualiza o estoque retornando a quantidade do produto com base no que foi produzido
                       DMESTOQUE.Alx.Close;
                       DMESTOQUE.Alx.SQL.Clear;
                       DMESTOQUE.Alx.SQL.Add(' UPDATE ESTOQUE SET ESTOQUE.ESTFISICO = ESTOQUE.ESTFISICO - :QTDPROD WHERE ESTOQUE.COD_ESTOQUE = :ESTOQUE ');
                       DMESTOQUE.Alx.ParamByName('QTDPROD').AsFloat := DMESTOQUE.TSlave.FieldByName('QTD').AsFloat;
                       DMESTOQUE.Alx.ParamByName('ESTOQUE').AsInteger := DMESTOQUE.TSlave.FieldByName('COD_ESTOQUE').AsInteger;
                       DMESTOQUE.Alx.ExecSQL;

                       //Edmar - 28/10/2014 - Chama função que lança o estoque para correção
                       LancaEstoqueCorrecao('S', 'C', DMESTOQUE.TSlave.FieldByName('QTD').AsFloat, DMESTOQUE.TSlave.FieldByName('COD_ESTOQUE').AsInteger);                   

                       //Edmar - 20/10/2014 - Depois busca os itens na ficha tecnica com base no produto recém atualizado
                       DMESTOQUE.Alx1.Close;
                       DMESTOQUE.Alx1.SQL.Clear;
                       DMESTOQUE.Alx1.SQL.Add(' SELECT ITEMFICHATECNICA.COD_ESTOQUE, ITEMFICHATECNICA.QUANTIDADE FROM FICHATECNICA ');
                       DMESTOQUE.Alx1.SQL.Add(' LEFT JOIN ITEMFICHATECNICA ON ITEMFICHATECNICA.COD_FICHATECNICA = FICHATECNICA.COD_SETOR ');
                       DMESTOQUE.Alx1.SQL.Add(' WHERE FICHATECNICA.COD_ESTOQUE = :ESTOQUE ');
                       DMESTOQUE.Alx1.ParamByName('ESTOQUE').AsInteger := DMESTOQUE.TSlave.FieldByName('COD_ESTOQUE').AsInteger;
                       DMESTOQUE.Alx1.Open;

                       //while aumentando a quantidade dos itens usados para a fabricação do item anterior
                       while not DMESTOQUE.Alx1.Eof do
                       begin
                           //Edmar - 04/02/2015 - chama função que retorna o estoque baixado do componente
                           AumentaEstoqueComponente(DMESTOQUE.Alx1, DMESTOQUE.TSlave.FieldByName('QTD').AsFloat);

                           //busca os componentes do componente e chama a função novamente, se houver
                           DMESTOQUE.Alx2.Close;
                           DMESTOQUE.Alx2.SQL.Clear;
                           DMESTOQUE.Alx2.SQL.Add(' SELECT ITEMFICHATECNICA.COD_ESTOQUE, ITEMFICHATECNICA.QUANTIDADE FROM FICHATECNICA ');
                           DMESTOQUE.Alx2.SQL.Add(' LEFT JOIN ITEMFICHATECNICA ON ITEMFICHATECNICA.COD_FICHATECNICA = FICHATECNICA.COD_SETOR ');
                           DMESTOQUE.Alx2.SQL.Add(' WHERE FICHATECNICA.COD_ESTOQUE = :ESTOQUE ');
                           DMESTOQUE.Alx2.ParamByName('ESTOQUE').AsInteger := DMESTOQUE.Alx1.FieldByName('COD_ESTOQUE').AsInteger;
                           DMESTOQUE.Alx2.Open;
                           DMESTOQUE.Alx2.First;

							while not DMESTOQUE.Alx2.Eof do
                           begin
                           	//Qtd do produto pai * a quantidade necessário para produzir o componente
                               //deste modo ele vai retornar a quantidade correta do produto produzido levando em consideração
                               //a quantidade produzida do produto pai e do componente usado para a fabricação do mesmo                           
                               AumentaEstoqueComponente(DMESTOQUE.Alx2, DMESTOQUE.TSlave.FieldByName('QTD').AsFloat * DMESTOQUE.Alx1.FieldByName('QUANTIDADE').AsFloat);

                           	DMESTOQUE.Alx2.Next;
                           end;
                           
                           DMESTOQUE.Alx1.Next;//next do componente necessário para produzir o produto
                       end;                         
                   end
                   else begin
						//Caso seja um componente, busca ele novamente e diminui o mesmo no estoque
                       DMESTOQUE.Alx1.Close;
                       DMESTOQUE.Alx1.SQL.Clear;
                       DMESTOQUE.Alx1.SQL.Add(' SELECT ITPRODORD.COD_ESTOQUE, ITPRODORD.QTD, ITPRODORD.OPERACAO FROM ITPRODORD WHERE ITPRODORD.COD_ITPRODORD = :ITEM ');
                       DMESTOQUE.Alx1.ParamByName('ITEM').AsInteger := DMESTOQUE.TSlave.FieldByName('COD_ITPRODORD').AsInteger;
                       DMESTOQUE.Alx1.Open;

                       //Edmar - 12/01/2015 - Atualiza o estoque do componente adicional
                       MDO.Query.Close;
                       MDO.Query.SQL.Clear;
                       MDO.Query.SQL.Add(' UPDATE ESTOQUE SET ESTOQUE.ESTFISICO = ESTOQUE.ESTFISICO + :QTDPROD WHERE ESTOQUE.COD_ESTOQUE = :ESTOQUE ');
                       MDO.Query.ParamByName('QTDPROD').AsFloat := DMESTOQUE.Alx1.FieldByName('QTD').AsFloat;
                       MDO.Query.ParamByName('ESTOQUE').AsInteger := DMESTOQUE.Alx1.FieldByName('COD_ESTOQUE').AsInteger;
                       MDO.Query.ExecSQL;

                       LancaEstoqueCorrecao('E', 'C', DMESTOQUE.Alx1.FieldByName('QTD').AsFloat, DMESTOQUE.Alx1.FieldByName('COD_ESTOQUE').AsInteger);

                       /////////////////////////////////////////////////////////////////////////

                       //Edmar - 20/10/2014 - Depois busca os itens na ficha tecnica com base no produto recém atualizado
                       DMESTOQUE.Alx1.Close;
                       DMESTOQUE.Alx1.SQL.Clear;
                       DMESTOQUE.Alx1.SQL.Add(' SELECT ITEMFICHATECNICA.COD_ESTOQUE, ITEMFICHATECNICA.QUANTIDADE FROM FICHATECNICA ');
                       DMESTOQUE.Alx1.SQL.Add(' LEFT JOIN ITEMFICHATECNICA ON ITEMFICHATECNICA.COD_FICHATECNICA = FICHATECNICA.COD_SETOR ');
                       DMESTOQUE.Alx1.SQL.Add(' WHERE FICHATECNICA.COD_ESTOQUE = :ESTOQUE ');
                       DMESTOQUE.Alx1.ParamByName('ESTOQUE').AsInteger := DMESTOQUE.TSlave.FieldByName('COD_ESTOQUE').AsInteger;
                       DMESTOQUE.Alx1.Open;
                       DMESTOQUE.Alx1.First;                        

                       //while diminuindo a quantidade dos itens usados para a fabricação do item anterior
                       while not DMESTOQUE.Alx1.Eof do
                       begin                           
                           //Edmar - 04/02/2015 - Baixa o estoque do componente
                           AumentaEstoqueComponente(DMESTOQUE.Alx1, DMESTOQUE.TSlave.FieldByName('QTD').AsFloat);

                           DMESTOQUE.Alx1.Next;
                       end;
                   end;
                   
                   DMESTOQUE.TSlave.Next;//next dos produtos da ordem de produção
               end;

               //comita as informações atualizadas acima
               try//try except exclusivo para os commits
                   DMServ.IBT.CommitRetaining;
                   DMESTOQUE.TransacEstoque.CommitRetaining;
                   MDO.Transac.CommitRetaining;
                   DMSAIDA.IBT.CommitRetaining;
                   DMENTRADA.IBT.CommitRetaining;
               except
                   On E : Exception do
                   begin
                       ShowMessage('Ocorreu um erro ao cancelar o fechamento da Ordem de Produção e/ou atualizar o Estoque do Item. O processo será desfeito. '+#13+E.Message);
                       DMServ.IBT.RollbackRetaining;
                       DMESTOQUE.TransacEstoque.RollbackRetaining;
                       MDO.Transac.RollbackRetaining;
                       DMSAIDA.IBT.RollbackRetaining;
                       DMENTRADA.IBT.RollbackRetaining;
                   end;
               end;

               BtnConsultarClick(sender);
           end
           else
               Mensagem(' I N F O R M A Ç Ã O ', 'Não foi localizado Itens na Ordem para atualizar o estoque', '', 1, 1, False, 'I');
       except//try except geral
       	On E : Exception do
           begin
           	ShowMessage('Ocorreu um erro durante o processamento. Todo o processo foi abortado. '+#13+E.Message);
               DMServ.IBT.RollbackRetaining;
               DMESTOQUE.TransacEstoque.RollbackRetaining;
               MDO.Transac.RollbackRetaining;
               DMSAIDA.IBT.RollbackRetaining;
               DMENTRADA.IBT.RollbackRetaining;
           end;
       end;
      	AtualizaGridConsulta('');
	end;
end;

procedure TFOrdemProduc.btnOrcamentoClick(Sender: TObject);
begin
  inherited;
	if AbrirForm(TFOrcamento3, FOrcamento3, 1) = 'Selected'  then
   begin
   	if Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Deseja realmente importar o orçamento' + #13 + 'Nº ' + DMSAIDA.WOrc.FieldByName('NUMORC').AsString + '?', '', 2, 3, False, 'c') = 2
      	then Begin
       	//Filtra Orçamento referente
      		if FiltraTabela(DMSAIDA.TOrc, 'ORCAMENTO', 'COD_ORCAMENTO', DMSAIDA.WOrc.FieldByNAme('COD_ORCAMENTO').AsString, '') = True
      		then Begin
           	//Edmar - 20/10/2014 - Verifica se o orçamento já não foi importado antes
      			if FiltraTabela(DMServ.Alx, 'ORDEM', 'NUMORC', DMSAIDA.TOrc.FieldByName('NUMORC').AsString, '') then
      			begin
      				Mensagem(' INFORMAÇÃO ', 'Esse orçamento já foi importado anteriormente (OS Nº '+DMServ.Alx.FieldByName('NUMERO').AsString+'). Por favor, remova a OS referente a esse orçamento e tente novamente!', '', 1, 1, False, 'A');
      				Exit;
      			end;
   		end;

           // limpa todos os campos
           LimpaCampos;
           LimpaLabels;

           // INICIALIZANDO VARIAVEL
           XCOD_ORDEM := -1;
           XCOD_CLIENTE := -1;
           XCOD_ITPROD := -1;

           // GERA NUMERO DA ORDEM
           XNumOrdem := IntToStr(RetornaNumPed);
           DBNumOrd.Text := XNumOrdem;
           //Edmar - 17/10/2014 - Atribui data atual ao campo
           EdData.Text := DateToStr(Date());

           Try
               DMServ.TOrd.Insert;
               XCOD_ORDEM := DMServ.TOrd.FieldByName('COD_ORDEM').AsInteger;
               DMServ.TOrd.FieldByName('COD_ORDEM').AsInteger := XCOD_ORDEM;
               XCODPKMESTRE := DMServ.TOrd.FieldByName('COD_ORDEM').AsInteger;
               DMServ.TOrd.FieldByName('NUMERO').AsString := XNumOrdem;
               DMServ.TOrd.FieldByName('DTABERT').AsDateTime := Date();
               DMServ.TOrd.FieldByName('HRABERT').AsDateTime := Time();
               DMServ.TOrd.FieldByName('STATUS').AsString := 'ABERTO';
               DMServ.TOrd.FieldByName('COD_LOJA').AsString := FMenu.LCODLOJA.Caption;
               DMServ.TOrd.FieldByName('LOCALAT').AsString := '';
               DMServ.TOrd.FieldByName('EDIT').AsString := '1';
				DMServ.TOrd.FieldByName('NUMORC').AsInteger := DMSAIDA.TOrc.FieldByName('NUMORC').AsInteger;
				DMServ.TOrd.FieldByName('OBSERVACAO').AsString := DMSAIDA.TOrc.FieldByName('OBS').AsString;
               DMServ.TOrd.FieldByName('COD_CLIENTE').AsInteger := DMSAIDA.TOrc.FieldByName('COD_CLIENTE').AsInteger;
               DMServ.TOrd.Post;
               DMServ.IBT.CommitRetaining;
            Except
                MessageDlg('A Ordem não foi inserida no banco', mtWarning, [mbOK], 0);
                PConsulta.Visible := False;
                PCadastro.Visible := True;
                PCadastro.BringToFront;
            End;

            // - 19/03/2009: verificar se OS foi inserida
            If FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', IntToStr(XCODPKMESTRE), '') = False
            Then Begin
                Mensagem('Mzr Sistemas - INFORMAÇÃO', 'A Ordem inserida foi perdida.' + #13 + 'Para evitar outras falhas Reinicie o sistema.', '', 1, 1, false, 'i');
                Exit;
            End;

            DMESTOQUE.TSlave.Close;
            DMESTOQUE.TSlave.SQL.Clear;
            DMESTOQUE.TSlave.SQL.Add(' SELECT ITPRODORC.COD_ESTOQUE, ITPRODORC.QTD FROM ITPRODORC WHERE ITPRODORC.COD_ORCAMENTO = :ORCAMENTO ');
            DMESTOQUE.TSlave.ParamByName('ORCAMENTO').AsInteger := DMSAIDA.TOrc.FieldByName('COD_ORCAMENTO').AsInteger;
            DMESTOQUE.TSlave.Open;
            DMESTOQUE.TSlave.First;

            while not DMESTOQUE.TSlave.Eof do
            begin
               try
                   DMServ.TPOrd.Close;
                   DMServ.TPOrd.SQL.Clear;
                   DMServ.TPOrd.SQL.Add(' INSERT INTO ITPRODORD (ITPRODORD.COD_ESTOQUE, ITPRODORD.COD_ORDEM, ITPRODORD.QTD) VALUES (:ESTOQUE, :ORDEM, :QTD) ');
                   DMServ.TPOrd.ParamByName('ESTOQUE').AsInteger := DMESTOQUE.TSlave.FieldByName('COD_ESTOQUE').AsInteger;
                   DMServ.TPOrd.ParamByName('ORDEM').AsInteger := XCOD_ORDEM;
                   DMServ.TPOrd.ParamByName('QTD').AsInteger := DMESTOQUE.TSlave.FieldByName('QTD').AsInteger;
                   DMServ.TPOrd.ExecSQL;
                   DMServ.IBT.CommitRetaining;
               except
                   On E : Exception do
                   begin
                       Mensagem(' A T E N Ç Ã O ','Não foi possível inserir o Produto na Ordem '+#13+E.Message, '', 1, 1, False, 'E');
                       DMServ.IBT.RollbackRetaining;
                   end;
               end;
            	DMESTOQUE.TSlave.Next;
            end;

            FiltraSlave;

            DBNumOrd.Text := DMServ.TOrd.FieldByName('NUMERO').AsString;
            MObs.Text := DMServ.TOrd.FieldByName('OBSERVACAO').AsString;
            EdData.Text := DateToStr(Date());

            FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_CLIENTE', DMServ.TOrd.FieldByName('COD_CLIENTE').AsString, '');
            XCOD_CLIENTE := DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;
            FrmCliente.EDCodigo.Text := DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString;
            FrmCliente.EdDescricao.Text := DMPESSOA.WCliente.FieldByName('NOME').AsString;

            FiltraTabela(DMPESSOA.TCliente, 'CLIENTE', 'COD_CLIENTE', DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsString, '');
            EdObsFinanceira.Text := DMPESSOA.TCliente.FieldByName('OBSFINANCEIRA').AsString;

            //MOSTRAR PAINEL DE CADASTRO
            PCadastro.Visible := True;
            PCadastro.BringToFront;
            PageControl1.ActivePageIndex := 0;
            FrmCliente.EDCodigo.SetFocus;
            FrmCliente.Repaint;
       end;
   end;
end;

procedure TFOrdemProduc.DBGridConsultaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
	if (DMServ.WOrdem.FieldByName('STATUS').AsString = 'ABERTO') then
   begin
     DBGridConsulta.Canvas.Font.Color := clRed;
     DBGridConsulta.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  	end
   else
   begin
     DBGridConsulta.Canvas.Font.Color := clBlack;
     DBGridConsulta.DefaultDrawColumnCell(Rect, DataCol, Column, State);
   end;
end;

procedure TFOrdemProduc.EDNumExit(Sender: TObject);
begin
  inherited;
	if EDNum.Text = '' then
   	EDNum.Text := 'Número';

end;

procedure TFOrdemProduc.EDCliente1Exit(Sender: TObject);
begin
  inherited;
	if EDCliente1.Text = '' then
   	EDCliente1.Text := 'CLIENTE';
end;

procedure TFOrdemProduc.CBFILTROClick(Sender: TObject);
begin
  inherited;
	AtualizaGridConsulta('');
end;

procedure TFOrdemProduc.CBFILTROExit(Sender: TObject);
begin
  inherited;
	AtualizaGridConsulta('');
end;

procedure TFOrdemProduc.BtnRelatorioClick(Sender: TObject);
var
	xCodFichaTecnicas: String;//Edmar - 24/10/2014 - Armazena os códigos das fichas tecnicas usadas na ordem
begin
  	inherited;
   //Edmar - 24/10/2014 - Filtra buscando os dados da empresa para o cabeçalho
	DMFAST.QAlx.Close;
   DMFAST.QAlx.SQL.Clear;
   DMFAST.QAlx.SQL.Add(' SELECT LOJA.LOGOEMPRESA, EMPRESA.RAZAO_SOCIAL, EMPRESA.ENDERECO, EMPRESA.NUMERO, EMPRESA.BAIRRO, VWCIDADE.NOME CIDADE, VWCIDADE.UF, EMPRESA.FONE ');
   DMFAST.QAlx.SQL.Add(' FROM EMPRESA ');
   DMFAST.QAlx.SQL.Add(' LEFT JOIN LOJA ON LOJA.COD_EMPRESA = EMPRESA.COD_EMPRESA ');
   DMFAST.QAlx.SQL.Add(' LEFT JOIN VWCIDADE ON VWCIDADE.COD_CIDADE = EMPRESA.COD_CIDADE ');
   DMFAST.QAlx.SQL.Add(' WHERE LOJA.COD_LOJA = :LOJA ');
   DMFAST.QAlx.ParamByName('LOJA').AsString := FMenu.LCODLOJA.Caption;
   DMFAST.QAlx.Open;

   //filtra buscando as fichas tecnicas da ordem
	DMFAST.QAlx1.Close;
   DMFAST.QAlx1.SQL.Clear;
   DMFAST.QAlx1.SQL.Add(' SELECT FICHATECNICA.COD_SETOR, SUBPRODUTO.DESCRICAO, ORDEM.NUMERO FROM ORDEM ');
   DMFAST.QAlx1.SQL.Add(' LEFT JOIN ITPRODORD ON ITPRODORD.COD_ORDEM = ORDEM.COD_ORDEM ');
   DMFAST.QAlx1.SQL.Add(' LEFT JOIN ESTOQUE ON ESTOQUE.COD_ESTOQUE = ITPRODORD.COD_ESTOQUE ');
   DMFAST.QAlx1.SQL.Add(' LEFT JOIN SUBPRODUTO ON SUBPRODUTO.COD_SUBPRODUTO = ESTOQUE.COD_SUBPROD ');
   DMFAST.QAlx1.SQL.Add(' LEFT JOIN FICHATECNICA ON FICHATECNICA.COD_ESTOQUE = ESTOQUE.COD_ESTOQUE ');
   DMFAST.QAlx1.SQL.Add(' WHERE ORDEM.COD_ORDEM = :ORDEM ');
   DMFAST.QAlx1.SQL.Add(' ORDER BY FICHATECNICA.COD_SETOR ');
   DMFAST.QAlx1.ParamByName('ORDEM').AsInteger := DMServ.WOrdem.FieldByName('COD_ORDEM').AsInteger;
   DMFAST.QAlx1.Open;
   DMFAST.QAlx1.First;

   xCodFichaTecnicas := '';

   while not DMFAST.QAlx1.Eof do
   begin//percorre as fichas encontradas e joga o codigo da mesma para uma variavel auxiliar
       xCodFichaTecnicas := xCodFichaTecnicas+ DMFAST.QAlx1.FieldByName('COD_SETOR').AsString+', ';

   	DMFAST.QAlx1.Next;
   end;

   //Edmar - 24/10/2014 - Tira a virgula no final da string
	xCodFichaTecnicas := Copy(xCodFichaTecnicas, 0, Length(xCodFichaTecnicas )-2);

   if xCodFichaTecnicas <> '' then
   begin
       //Edmar - 05/11/2014 - Filtra as informações do cliente
       DMFAST.QAlx2.Close;
       DMFAST.QAlx2.SQL.Clear;
       DMFAST.QAlx2.SQL.Add(' SELECT VWCLIENTE.NOME, VWCLIENTE.COD_INTERNO, VWCLIENTE.CPFCNPJ FROM VWCLIENTE ');
       DMFAST.QAlx2.SQL.Add(' WHERE VWCLIENTE.COD_CLIENTE = :CLIENTE ');
       DMFAST.QAlx2.ParamByName('CLIENTE').AsInteger := DMServ.WOrdem.FieldByName('COD_CLIENTE').AsInteger;
       DMFAST.QAlx2.Open;

       //sql mestre que busca todos os dados da ordem referente a produção
       //NOME DO SETOR, DESCRIÇÃO DO PRODUTO E A DESCRIÇÃO DE SEUS COMPONENTES, CONTROLE INTERNO E QUANTIDADE DO COMPONENTE
       DMFAST.QAlx1.First;
       DMFAST.QItRel.Close;
       DMFAST.QItRel.SQL.Clear;
       DMFAST.QItRel.SQL.Add(' SELECT SETORPRODUCAO.COD_SETORPRODUCAO, VWSIMILAR.COD_ESTOQUE COD_PRODUTO_FCH, VWSIMILAR.CONTRINT CTRL_PRODUTO, VWSIMILAR.DESCRICAO PRODUTO, ITPRODORD.QTD QTD_PROD, ');
       DMFAST.QItRel.SQL.Add(' SETORPRODUCAO.DESCRICAO SETOR, SUBPRODUTO.CONTRINT CTRL_COMPONENTE, SUBPRODUTO.DESCRICAO COMPONENTE, ITEMFICHATECNICA.QUANTIDADE QTDE_COMP ');
       DMFAST.QItRel.SQL.Add(' FROM VWSIMILAR ');
       DMFAST.QItRel.SQL.Add(' LEFT JOIN FICHATECNICA ON FICHATECNICA.COD_ESTOQUE = VWSIMILAR.COD_ESTOQUE ');
       DMFAST.QItRel.SQL.Add(' LEFT JOIN ITEMFICHATECNICA ON ITEMFICHATECNICA.COD_FICHATECNICA = FICHATECNICA.COD_SETOR ');
       DMFAST.QItRel.SQL.Add(' LEFT JOIN ITPRODORD ON ITPRODORD.COD_ESTOQUE = VWSIMILAR.COD_ESTOQUE ');
       DMFAST.QItRel.SQL.Add(' LEFT JOIN ORDEM ON ORDEM.COD_ORDEM = ITPRODORD.COD_ORDEM ');
       DMFAST.QItRel.SQL.Add(' LEFT JOIN SETORPRODUCAO ON SETORPRODUCAO.COD_SETORPRODUCAO = ITEMFICHATECNICA.COD_SETORPRODUCAO ');
       DMFAST.QItRel.SQL.Add(' LEFT JOIN ESTOQUE ON ESTOQUE.COD_ESTOQUE = ITEMFICHATECNICA.COD_ESTOQUE ');
       DMFAST.QItRel.SQL.Add(' LEFT JOIN SUBPRODUTO ON SUBPRODUTO.COD_SUBPRODUTO = ESTOQUE.COD_SUBPROD ');
       DMFAST.QItRel.SQL.Add(' WHERE (FICHATECNICA.COD_SETOR IN ('+xCodFichaTecnicas+') ) AND (ORDEM.COD_ORDEM = :ORDEM) ');
       DMFAST.QItRel.SQL.Add(' ORDER BY SETOR, FICHATECNICA.COD_SETOR, PRODUTO, COMPONENTE ');
       DMFAST.QItRel.ParamByName('ORDEM').AsInteger := DMServ.WOrdem.FieldByName('COD_ORDEM').AsInteger;

       DMFAST.QItRel.SQL.Text;
       DMFAST.QItRel.Open;

       //atribui as query para os dataset
       frxDbInfoEmpresa.DataSet := DMFAST.QAlx;
       frxDbProduto.DataSet := DMFAST.QAlx1;
       frxDbCliente.DataSet := DMFAST.QAlx2;
       frxDbItens.DataSet := DMFAST.QItRel;

       frxFichaTecnica.LoadFromFile('C:\MZR\Macs\Rel\FrfCompFichaTecnica.fr3');
       frxFichaTecnica.ShowReport();
   end
   else
   	Mensagem(' I N F O R M A Ç Ã O ', 'A Ordem de Produção '+DMServ.WOrdem.FieldByName('NUMERO').AsString+' não possui item para produção.', '', 1, 1, False, 'I');
end;

procedure TFOrdemProduc.DBGridConsultaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  //Edmar - 28/10/2014 - salva o layout da grid
	If (shift = [ssCtrl]) And (key = 83)
	Then Begin
		Try
			If Not DirectoryExists('C:\MZR\Arquivos\LayoutGrid\') Then Begin
                ForceDirectories('C:\MZR\Arquivos\LayoutGrid\');
			End;
           DBGridConsulta.Columns.SaveToFile('C:\MZR\Arquivos\LayoutGrid\OrdemProc.lgm');
           Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Layout da Grid foi salvo com sucesso!', '', 1, 1, false, 'i');
        Except
            Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Falha na tentativa de salvar o layout da grid!', '', 1, 1, false, 'i');
        End;
    End;
end;

function TFOrdemProduc.LancaEstoqueCorrecao(xOperacao, xTipo: Char;
  xQtde:Real; xCodEstoque: Integer): Boolean;
var
	xCodLanc:Integer;
   xQtdeAnterior: Real;
begin
	try
   	//SQL para buscar qual é o atual estoque fisico do produto
   	DMESTOQUE.Alx.Close;
   	DMESTOQUE.Alx.SQL.Clear;
   	DMESTOQUE.Alx.SQL.Add('SELECT ESTOQUE.ESTFISICO EST FROM ESTOQUE WHERE ESTOQUE.COD_ESTOQUE = :ESTOQUE');
   	DMESTOQUE.Alx.ParamByName('ESTOQUE').AsInteger := xCodEstoque;
   	DMESTOQUE.Alx.Open;
       
		//se a operação foi saida para correção
       if xOperacao = 'S' then//soma o estoque fisico a quantidade de saida para buscar o estoque anterior
   		xQtdeAnterior := DMESTOQUE.Alx.FieldByName('EST').AsCurrency + xQtde
       else//caso contrario, subtrai
	        //CASO O ESTOQUE SEJA 0, DEIXA ESTE VALOR COMO ESTOQUE ANTERIOR
       	if DMESTOQUE.Alx.FieldByName('EST').AsCurrency = 0 then
				xQtdeAnterior := 0
           else
   			xQtdeAnterior := DMESTOQUE.Alx.FieldByName('EST').AsCurrency - xQtde;

		if xOperacao = 'E' then
   	begin//Edmar - 28/10/2014 - lançamento para estoque de entrada de produto
   		xCodLanc := InserReg(DMENTRADA.TLancEnt, 'LANCENT', 'COD_LANENT');
       	DMENTRADA.TLancEnt.FieldByName('COD_LANENT').AsInteger := xCodLanc;
       	DMENTRADA.TLancEnt.FieldByName('COD_ESTOQUE').AsInteger := xCodEstoque;
       	DMENTRADA.TLancEnt.FieldByName('COD_LOJA').AsString := FMenu.LCODLOJA.Caption;
       	DMENTRADA.TLancEnt.FieldByName('COD_USUARIO').AsString := FMenu.LCODUSUARIO.Caption;
           //se tipo for F quer dizer que está fechando a ordem de produção
           //e muda o texto
           if xTipo = 'F' then
       		DMENTRADA.TLancEnt.FieldByName('MOTIVO').AsString := 'Lançamento de Correção de Estoque Fech. O.P. '+DMServ.WOrdem.FieldByName('NUMERO').AsString
           else//senão está cancelando o fechamento
       		DMENTRADA.TLancEnt.FieldByName('MOTIVO').AsString := 'Lançamento de Correção de Estoque Canc. Fech. O.P. '+DMServ.WOrdem.FieldByName('NUMERO').AsString;

       	DMENTRADA.TLancEnt.FieldByName('DT_LANCAMENTO').AsDateTime := Date();
       	DMENTRADA.TLancEnt.FieldByName('DT_ESTOQUE').AsDateTime := Date();
       	DMENTRADA.TLancEnt.FieldByName('QUANTIDADE').AsCurrency := xQtde;
       	DMENTRADA.TLancEnt.FieldByName('QTDANT').AsCurrency := xQtdeAnterior;

       	DMENTRADA.TLancEnt.Post;
   	end
   	else
   	begin//lançamento para estoque de saída de produto
   		xCodLanc := InserReg(DMSAIDA.TLancSai, 'LANCSAI', 'COD_LANCSAI');
       	DMSAIDA.TLancSai.FieldByName('COD_LANCSAI').AsInteger := xCodLanc;
   		DMSAIDA.TLancSai.FieldByName('COD_ESTOQUE').AsInteger := xCodEstoque;
       	DMSAIDA.TLancSai.FieldByName('COD_LOJA').AsString := FMenu.LCODLOJA.Caption;
       	DMSAIDA.TLancSai.FieldByName('COD_USUARIO').AsString := FMenu.LCODUSUARIO.Caption;
           //se tipo for F quer dizer que está fechando a ordem de produção
           //e muda o texto
           if xTipo = 'F' then
       		DMSAIDA.TLancSai.FieldByName('MOTIVO').AsString := 'Lançamento de Correção de Estoque Fech. da O.P. '+DMServ.WOrdem.FieldByName('NUMERO').AsString
           else//senão está cancelando o fechamento
       		DMSAIDA.TLancSai.FieldByName('MOTIVO').AsString := 'Lançamento de Correção de Estoque Canc. Fech. da O.P. '+DMServ.WOrdem.FieldByName('NUMERO').AsString;

       	DMSAIDA.TLancSai.FieldByName('DT_LANCAMENTO').AsDateTime := Date();
       	DMSAIDA.TLancSai.FieldByName('DT_ESTOQUE').AsDateTime := Date();
       	DMSAIDA.TLancSai.FieldByName('QUANTIDADE').AsCurrency := xQtde;
       	DMSAIDA.TLancSai.FieldByName('QTDANT').AsCurrency := xQtdeAnterior;

       	DMSAIDA.TLancSai.Post;
   	end;
	except
   	On E : Exception do
       begin
       	Raise Exception.Create(E.Message);
       end;
   end;
end;

procedure TFOrdemProduc.GeralProduto1Click(Sender: TObject);
var
	xCodFichaTecnicas: String;//Edmar - 24/10/2014 - Armazena os códigos das fichas tecnicas usadas na ordem
begin
  inherited;
   //Edmar - 24/10/2014 - Filtra buscando os dados da empresa para o cabeçalho
	DMFAST.QAlx.Close;
   DMFAST.QAlx.SQL.Clear;
   DMFAST.QAlx.SQL.Add(' SELECT LOJA.LOGOEMPRESA, EMPRESA.RAZAO_SOCIAL, EMPRESA.ENDERECO, EMPRESA.NUMERO, EMPRESA.BAIRRO, VWCIDADE.NOME CIDADE, VWCIDADE.UF, EMPRESA.FONE ');
   DMFAST.QAlx.SQL.Add(' FROM EMPRESA ');
   DMFAST.QAlx.SQL.Add(' LEFT JOIN LOJA ON LOJA.COD_EMPRESA = EMPRESA.COD_EMPRESA ');
   DMFAST.QAlx.SQL.Add(' LEFT JOIN VWCIDADE ON VWCIDADE.COD_CIDADE = EMPRESA.COD_CIDADE ');
   DMFAST.QAlx.SQL.Add(' WHERE LOJA.COD_LOJA = :LOJA ');
   DMFAST.QAlx.ParamByName('LOJA').AsString := FMenu.LCODLOJA.Caption;
   DMFAST.QAlx.Open;

   //sql mestre que busca todos os dados da ordem referente a produção
   //NOME DO SETOR, DESCRIÇÃO DO PRODUTO E A DESCRIÇÃO DE SEUS COMPONENTES, CONTROLE INTERNO E QUANTIDADE DO COMPONENTE
   DMFAST.QItRel.Close;
   DMFAST.QItRel.SQL.Clear;
   DMFAST.QItRel.SQL.Add('  SELECT ordem.numero, ordem.dtprev, ordem.dtabert, vwsimilar.contrint, vwsimilar.descricao, itprodord.qtd ');
   DMFAST.QItRel.SQL.Add('   FROM itprodord ');
   DMFAST.QItRel.SQL.Add('   left join ordem on itprodord.cod_ordem = ordem.cod_ordem ');
   DMFAST.QItRel.SQL.Add('   left join vwsimilar on itprodord.cod_estoque = vwsimilar.cod_estoque ');
   DMFAST.QItRel.SQL.Add('   WHERE  (ORDEM.COD_ORDEM = :ORDEM) ');
   DMFAST.QItRel.ParamByName('ORDEM').AsInteger := DMServ.WOrdem.FieldByName('COD_ORDEM').AsInteger;
   DMFAST.QItRel.SQL.Text;
   DMFAST.QItRel.Open;
   
   If not DMFAST.QItRel.IsEmpty
   Then Begin
    	//Edmar - 05/11/2014 - Filtra as informações do cliente
       DMFAST.QAlx2.Close;
       DMFAST.QAlx2.SQL.Clear;
       DMFAST.QAlx2.SQL.Add(' SELECT VWCLIENTE.NOME, VWCLIENTE.COD_INTERNO, VWCLIENTE.CPFCNPJ FROM VWCLIENTE ');
       DMFAST.QAlx2.SQL.Add(' WHERE VWCLIENTE.COD_CLIENTE = :CLIENTE ');
       DMFAST.QAlx2.ParamByName('CLIENTE').AsInteger := DMServ.WOrdem.FieldByName('COD_CLIENTE').AsInteger;
       DMFAST.QAlx2.Open;
       
       //atribui as query para os dataset
       frxDbInfoEmpresa.DataSet := DMFAST.QAlx;
       frxDbItens.DataSet := DMFAST.QItRel;
       frxDbCliente.DataSet := DMFAST.QAlx2;
       frxDbProduto.DataSet := DMFAST.QAlx1;

       frxFichaTecnica.LoadFromFile('C:\MZR\Macs\Rel\FrfOrdemProduc_GeralProdutos.fr3');
       frxFichaTecnica.ShowReport();
   end
   else
   	Mensagem(' I N F O R M A Ç Ã O ', 'A Ordem de Produção '+DMServ.WOrdem.FieldByName('NUMERO').AsString+' não possui item para produção.', '', 1, 1, False, 'I');

end;

procedure TFOrdemProduc.edPesqComponenteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
	If Key = Vk_Down then
  	begin
      	DMESTOQUE.WSimilar.Next;

      	XCOD_ESTOQUE := StrToInt(dbGridComponentes.Columns[0].Field.Text);
  	end;


  	If Key = Vk_UP then
  	begin
   	DMESTOQUE.WSimilar.Prior;

      	XCOD_ESTOQUE := StrToInt(dbGridComponentes.Columns[0].Field.Text);
  	end;

  	if Key=Vk_F2 then
   begin
   	DMESTOQUE.WSimilar.Close;
       DMESTOQUE.WSimilar.SQL.Clear;
       DMESTOQUE.WSimilar.SQL.Add(' SELECT VWSIMILAR.* FROM VWSIMILAR ');
       DMESTOQUE.WSimilar.SQL.Add(' LEFT JOIN SUBPRODUTO ON SUBPRODUTO.COD_SUBPRODUTO = VWSIMILAR.COD_SUBPRODUTO ');
       DMESTOQUE.WSimilar.SQL.Add(' WHERE (VWSIMILAR.DESCRICAO LIKE UPPER(' + #39 + edPesqComponente.Text + '%' + #39 + ')) ');
       DMESTOQUE.WSimilar.SQL.Add(' (VWSIMILAR.ATIVO = ''S'') AND (SUBPRODUTO.COMPONENTE = ''1'') ORDER BY VWSIMILAR.DESCRICAO ');
       DMESTOQUE.WSimilar.Open;

       if not DMESTOQUE.WSimilar.IsEmpty then
       begin
       	XCOD_ESTOQUE := StrToInt(dbGridComponentes.Columns[0].Field.Text);

     		edQtdeComp.Text := '1,00';
       end;
  	end;
end;

procedure TFOrdemProduc.edPesqComponenteKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
	xPesqDescricao, xPesqCtrlInt, xPesqCodFab: Boolean;//Edmar - 12/01/2015 - Variaveis para controle das pesquisas
begin
  inherited;
  	if Key <> VK_F2 then
   begin
		pListaComponente.Visible := True;
   	pListaComponente.BringToFront;
   end;
     
	if (Key = VK_UP) OR (Key = VK_DOWN) then
  		Exit;
       
	//Edmar - 17/10/2014 - ESC refiltra a grid, esconde o painel e limpa as labels
   if Key = VK_ESCAPE then
   begin
		edPesqComponenteClick(sender);

       LimpaLabels;

       {
       pListaComponente.Visible := False;
       pListaComponente.SendToBack;
       }
       edPesqComponente.Text := '';
       lPesquisaComp.Caption := 'Pesquisa: ';
       
       Exit;       
   end;

   //Edmar - 17/10/2014 - Se o campo estiver vazio, esconde o painel
   if edPesqComponente.Text = '' then
   begin
       pListaComponente.Visible := False;
       pListaComponente.SendToBack;
       lPesquisaComp.Caption := 'Pesquisa: ';
   end;

   //Edmar - 17/10/2014 - Ao clicar enter, filtra novamente buscando o produto
   // para escrever as informações
   if Key = VK_RETURN then
   begin
       EscreveLabels;
       {
       pListaComponente.Visible := False;
       pListaComponente.SendToBack;
       }
       edPesqComponente.Text := '';
       edQtdeComp.Text := '1,00';

       //filtra a grid de similar
       edPesqComponenteClick(sender);
       
       Exit;
   end;

   //Edmar - 17/10/2014 - Primeiro tenta localizar um produto pela descrição
   if DMESTOQUE.WSimilar.Locate('DESCRICAO', edPesqComponente.Text, [loCaseInsensitive, loPartialKey]) then
   begin
   	//se achar ordena os produto pela descrição
       //e alimenta as variavel global com o código do estoque
   	if not xPesqDescricao then
       begin
       	DMESTOQUE.WSimilar.Close;
       	DMESTOQUE.WSimilar.SQL.Clear;
           DMESTOQUE.WSimilar.SQL.Add(' SELECT VWSIMILAR.* FROM VWSIMILAR ');
           DMESTOQUE.WSimilar.SQL.Add(' LEFT JOIN SUBPRODUTO ON SUBPRODUTO.COD_SUBPRODUTO = VWSIMILAR.COD_SUBPRODUTO ');
           DMESTOQUE.WSimilar.SQL.Add(' WHERE (VWSIMILAR.ATIVO = ''S'') AND (SUBPRODUTO.COMPONENTE = ''1'') ORDER BY VWSIMILAR.DESCRICAO ');
       	DMESTOQUE.WSimilar.Open;

           xPesqDescricao := True;
           xPesqCodFab := False;
           xPesqCtrlInt := False;

			DMESTOQUE.WSimilar.Locate('DESCRICAO', edPesqComponente.Text, [loCaseInsensitive, loPartialKey]);
       end;

       lPesquisaComp.Caption := 'Descrição: ';
       XCOD_ESTOQUE := StrToInt(dbGridComponentes.Columns[0].Field.Text);

       Exit;
   end;

   //caso não achar pela descrição faz o mesmo processo com o controle interno e com o código do fabricante
   if DMESTOQUE.WSimilar.Locate('CONTRINT', edPesqComponente.Text, [loCaseInsensitive, loPartialKey]) then
   begin
   	if not xPesqCtrlInt then
       begin
       	DMESTOQUE.WSimilar.Close;
       	DMESTOQUE.WSimilar.SQL.Clear;
           DMESTOQUE.WSimilar.SQL.Add(' SELECT VWSIMILAR.* FROM VWSIMILAR ');
           DMESTOQUE.WSimilar.SQL.Add(' LEFT JOIN SUBPRODUTO ON SUBPRODUTO.COD_SUBPRODUTO = VWSIMILAR.COD_SUBPRODUTO ');
           DMESTOQUE.WSimilar.SQL.Add(' WHERE (VWSIMILAR.ATIVO = ''S'') AND (SUBPRODUTO.COMPONENTE = ''1'') ORDER BY VWSIMILAR.CONTRINT ');
       	DMESTOQUE.WSimilar.Open;

           xPesqCtrlInt := True;
           xPesqDescricao := False;
           xPesqCodFab := False;

			DMESTOQUE.WSimilar.Locate('CONTRINT', edPesqComponente.Text, [loCaseInsensitive, loPartialKey]);
       end;
   
       lPesquisaComp.Caption := 'Ctrl. Interno:';
       XCOD_ESTOQUE := StrToInt(dbGridComponentes.Columns[0].Field.Text);

       Exit;
   end;

   if DMESTOQUE.WSimilar.Locate('CODFABRICANTE', edPesqComponente.Text, [loCaseInsensitive, loPartialKey]) then
   begin
   	if not xPesqCodFab then
       begin
       	DMESTOQUE.WSimilar.Close;
       	DMESTOQUE.WSimilar.SQL.Clear;
           DMESTOQUE.WSimilar.SQL.Add(' SELECT VWSIMILAR.* FROM VWSIMILAR ');
           DMESTOQUE.WSimilar.SQL.Add(' LEFT JOIN SUBPRODUTO ON SUBPRODUTO.COD_SUBPRODUTO = VWSIMILAR.COD_SUBPRODUTO ');
           DMESTOQUE.WSimilar.SQL.Add(' WHERE (VWSIMILAR.ATIVO = ''S'') AND (SUBPRODUTO.COMPONENTE = ''1'') ORDER BY VWSIMILAR.CODFABRICANTE ');
       	DMESTOQUE.WSimilar.Open;

           xPesqCodFab := True;
           xPesqDescricao := False;
           xPesqCtrlInt := False;

			DMESTOQUE.WSimilar.Locate('CODFABRICANTE', edPesqComponente.Text, [loCaseInsensitive, loPartialKey]);
       end;
   
       lPesquisaComp.Caption := 'Cod. Fabricante: ';
       XCOD_ESTOQUE := StrToInt(dbGridComponentes.Columns[0].Field.Text);

       Exit;
   end;
   
	XCOD_ESTOQUE := StrToInt(dbGridComponentes.Columns[0].Field.Text);
   lPesquisaComp.Caption := 'Fora de Pesquisa';
end;

procedure TFOrdemProduc.edPesqComponenteClick(Sender: TObject);
begin
  inherited;
  	//Edmar - 12/01/2015 - Ao entrar no edit, busca apenas os componentes cadastrado no sistema
	DMESTOQUE.WSimilar.Close;
   DMESTOQUE.WSimilar.SQL.Clear;
   DMESTOQUE.WSimilar.SQL.Add(' SELECT VWSIMILAR.* FROM VWSIMILAR ');
   DMESTOQUE.WSimilar.SQL.Add(' LEFT JOIN SUBPRODUTO ON SUBPRODUTO.COD_SUBPRODUTO = VWSIMILAR.COD_SUBPRODUTO ');
   DMESTOQUE.WSimilar.SQL.Add(' WHERE (VWSIMILAR.ATIVO = ''S'') AND (SUBPRODUTO.COMPONENTE = ''1'') ORDER BY VWSIMILAR.DESCRICAO ');
   DMESTOQUE.WSimilar.Open;
end;

procedure TFOrdemProduc.edPesquisaRapidaClick(Sender: TObject);
begin
  inherited;
	DMESTOQUE.WSimilar.Close;
   DMESTOQUE.WSimilar.SQL.Clear;
   DMESTOQUE.WSimilar.SQL.Add('SELECT * FROM VWSIMILAR WHERE (VWSIMILAR.ATIVO = ''S'') ORDER BY DESCRICAO');
   DMESTOQUE.WSimilar.Open;
end;



procedure TFOrdemProduc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
	{If PCadastro.Visible=true
   Then Begin
   	MessageDlg('Use o botão gravar ou cancelar!', mtWarning, [mbOK], 0);
       Action:=caNone;
       Exit;
   End;}
	//Edmar - 05/05/2015 - se estiver cadastrando ou consultando um item, chamo o evento do botão cancelar
	if PCadastro.Visible = True then
   begin
   	BtnCancelar.Click;
       Exit;
   End;   
  inherited;

end;

end.
