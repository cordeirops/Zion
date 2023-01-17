unit ULicita;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UCadPadrao, ExtCtrls, TFlatHintUnit, Grids, DBGrids, StdCtrls,
  TFlatEditUnit, Buttons, jpeg, EditFloat, ColorEditFloat, Mask, DBCtrls,
  DBColorEdit, UFrmBusca, ImgList, ColorMaskEdit, ComCtrls, Menus, FR_DSet,
  FR_DBSet, FR_Class, DrLabel;

type
  TFLicita = class(TFCadPadrao)
    Label2: TLabel;
    DBNumPed: TDBColorEdit;
    Label3: TLabel;
    EdValorPed: TColorEditFloat;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    EdCodCli: TEdit;
    PPesCad: TPanel;
    DBNomeCli: TDBColorEdit;
    DBCPF: TDBColorEdit;
    Label5: TLabel;
    EdCPF: TEdit;
    EdNomeCli: TEdit;
    Label6: TLabel;
    LUZOPEN: TShape;
    BtnProcPess: TBitBtn;
    FrmVendedor: TFrmBusca;
    FrmFormPag1: TFrmBusca;
    Label14: TLabel;
    DBOBS: TDBMemo;
    Label1: TLabel;
    DBDTABERT: TDBColorEdit;
    Label7: TLabel;
    DBHRABERT: TDBColorEdit;
    Label8: TLabel;
    DBDTPREV: TDBColorEdit;
    Label40: TLabel;
    EdDesc: TColorEditFloat;
    PCProdServ: TPageControl;
    TabSheet1: TTabSheet;
    Shape6: TShape;
    GroupBox5: TGroupBox;
    DbgProduto: TDBGrid;
    Panel2: TPanel;
    LProduto: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    LMarcaProd: TLabel;
    LLocal: TLabel;
    PCodFab: TPanel;
    Label10: TLabel;
    EDCodFab: TColorMaskEdit;
    PCodComposto: TPanel;
    Label16: TLabel;
    EDCodComposto: TColorMaskEdit;
    PCodInterno: TPanel;
    Label17: TLabel;
    EDCodInterno: TColorEditFloat;
    BtnProcProd: TBitBtn;
    BtnInsertProd: TBitBtn;
    BtnDeleteProd: TBitBtn;
    EdVlrComp: TColorEditFloat;
    EdVlrRep: TColorEditFloat;
    EdAcrec: TColorEditFloat;
    EdVlrFinal: TColorEditFloat;
    PBPCodBarra: TPanel;
    Label15: TLabel;
    EDCodBarra: TEdit;
    BtnEscolheProc: TBitBtn;
    ImageList1: TImageList;
    EdNumOrc: TFlatEdit;
    MEscolheProc: TPopupMenu;
    ControleInterno1: TMenuItem;
    CdFab1: TMenuItem;
    C1: TMenuItem;
    FSRel: TfrReport;
    FSDSRel: TfrDBDataSet;
    FSDSServ: TfrDBDataSet;
    FSDSDesp: TfrDBDataSet;
    PmRelatorio: TPopupMenu;
    CompdeAbertura1: TMenuItem;
    Label9: TLabel;
    EdQuantidade: TColorEditFloat;
    Label11: TLabel;
    EdNumItem: TEdit;
    procedure FormActivate(Sender: TObject);
    procedure EdNumOrcKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure EdNomeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnApagarClick(Sender: TObject);
    procedure BtnConsultarClick(Sender: TObject);
    procedure EdCodCliKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodCliExit(Sender: TObject);
    procedure DBNomeCliKeyPress(Sender: TObject; var Key: Char);
    procedure BtnProcPessClick(Sender: TObject);
    procedure FrmVendedorBTNOPENClick(Sender: TObject);
    procedure FrmVendedorEDCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FrmFormPag1BTNOPENClick(Sender: TObject);
    procedure FrmFormPag1EDCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FrmFormPag1BTNMINUSClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure EdDescTProdExit(Sender: TObject);
    procedure EdtotalProdExit(Sender: TObject);
    procedure EdDescTServExit(Sender: TObject);
    procedure EdTotalservExit(Sender: TObject);
    procedure EDCodInternoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EDCodCompostoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EDCodFabKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EDCodBarraKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnEscolheProcClick(Sender: TObject);
    procedure BtnInsertProdClick(Sender: TObject);
    procedure BtnProcProdClick(Sender: TObject);
    procedure ControleInterno1Click(Sender: TObject);
    procedure CdFab1Click(Sender: TObject);
    procedure C1Click(Sender: TObject);
    procedure BtnDeleteProdClick(Sender: TObject);
    procedure BtnDeleteServClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BtnRelatorioClick(Sender: TObject);
    procedure CompdeAbertura1Click(Sender: TObject);
    procedure EdQuantidadeExit(Sender: TObject);
    procedure EdVlrFinalExit(Sender: TObject);
    procedure EdValorPedExit(Sender: TObject);
    procedure EdDescExit(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
  private
    { Private declarations }
    //Limpa as labels de seleção de produto
    Procedure LimpaLabels;
	 Procedure LimpaLabelsPROD;	 //Limpa as labels de seleção de produto
	 Procedure EscreveLabelsPROD; //Filtra as tabelas e escreve em edits e labels as informações dos produtos selecionado

	 //Filtra Tabela Slave e calcula total
	 Procedure FiltraSlave;

  public
    { Public declarations }
  end;

var
  Flicita: TFlicita;
  XCodFormPag, XCodVendedor, XCodPessoa, XCodMoeda, XCodSlave: Integer;
  XCodPedido, Estado: String;
  XLIBDESCPROD: Boolean;//Variável que controla se foi liberado um desconto superior ao cadastrado para o produto  
  XVLRTOTAL, XVLRTPROD, XVLRTSERV: REAL;// ARMARZENA VALOR TOTAL DO PEDIDO
  XCOD_ITPROD, XCOD_ITSERV, XCOD_ITDESP: INTEGER;
  XNUMITEM: String;

implementation

uses UDMMacs, UDMSaida, UMenu, Alxor32, UDmServ, UDMEstoque, UDMPessoa,
  AlxMessage, UDMFinanc, UCliente, UFuncionario, UFormPag, USenha, UProduto,
  UServico, UDMGEOGRAFIA;

{$R *.DFM}

//Filtra as tabelas e escreve em edits e labels as informações dos produtos selecionado
Procedure TFlicita.EscreveLabelsPROD;
Begin
	//Filtra tabela de subproduto de acordo com o produto selecionada em fproduto
	If FiltraTabela(DMEstoque.TSubProd, 'SUBPRODUTO', 'COD_SUBPRODUTO', DMEstoque.WSimilar.FieldByName('COD_SUBPRODUTO').AsString, '')=False Then
		Exit;

   //Filtra tabela de estoque de acordo com o produto selecionada em fproduto
	If FiltraTabela(DMEstoque.TEstoque, 'ESTOQUE', 'COD_ESTOQUE', DMEstoque.WSimilar.FieldByName('COD_ESTOQUE').AsString, '')=False Then
   	Exit;

	//Passa os valores do produto selecionado para as labels
   LProduto.Caption:=DMEstoque.TSubProd.FieldByName('DESCRICAO').AsString;
   LMarcaPROD.Caption:=DMEstoque.TSubProd.FieldByName('Marca').asstring;
   LLocal.Caption:=DMEstoque.TSubProd.FieldByName('LOCALESTANTE').asstring;
	EdVlrComp.ValueNumeric:=DMEstoque.TEstoque.FieldByName('VLRUNITCOMP').AsCurrency;
	EdVlrRep.ValueNumeric:=DMEstoque.TEstoque.FieldByName('VALREP').AsCurrency/DMEstoque.TEstoque.FieldByName('COEFDIV').AsCurrency;
   EdVlrComp.Refresh;
   EdVlrRep.Refresh;
   EdNumItem.Text:=XNUMITEM;
End;
//Limpa as labels de seleção de produto
Procedure TFlicita.LimpaLabelsPROD;
Begin
   EDCodBarra.Clear;
   EDCodInterno.Clear;
   EDCodComposto.Clear;
   EDCodFab.Clear;
   EdVlrComp.Clear;
   EdVlrRep.Clear;
   EdAcrec.Clear;
   EdVlrFinal.Clear;
   LProduto.Caption:='';
   LMarcaPROD.Caption:='';
End;
//Filtra Tabela Slave e calcula totalProcedure TFlicita.FiltraSlave;
//Filtra Tabela Slave e calcula total
Procedure TFlicita.FiltraSlave;
Begin
	//TRABALHA COM PRODUTOS DA ORDEM
   //CALCULA TOTAL
	DMESTOQUE.TSlave.Close;
	DMESTOQUE.TSlave.SQL.Clear;
	DMESTOQUE.TSlave.SQL.Add('Select Sum(ITPRODLICITA.VLRFINAL) as TOTAL From ITPRODLICITA');
	DMESTOQUE.TSlave.SQL.Add('Where ITPRODLICITA.COD_LICITA = :CODORDEM ');
	DMESTOQUE.TSlave.ParamByName('CODORDEM').AsString:=XCodPedido;
	DMESTOQUE.TSlave.Open;
   //informa total de produtos

   XVLRTPROD:=DMESTOQUE.TSlave.FieldByName('TOTAL').AsCurrency;
  	//INSERE COMANDOS PARA FILTRAR
	DMESTOQUE.TSlave.Close;
	DMESTOQUE.TSlave.SQL.Clear;

	DMESTOQUE.TSlave.SQL.Add(' Select itprodlicita.cod_itprodlicita, unidade.desc_unid AS UNIDADE, itprodlicita.cod_licita, itprodlicita.cod_estoque,  itprodlicita.qtd, itprodlicita.NUMITEM, itprodlicita.vlrfinal AS TOTAL, ');
   DMESTOQUE.TSlave.sql.Add(' subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL1').AsString+' AS PRIMCOD, ');
	DMESTOQUE.TSlave.SQL.Add(' itprodlicita.desconto, itprodlicita.vlrcompra, itprodlicita.vlrrep, subproduto.descricao, subproduto.marca ');
	DMESTOQUE.TSlave.SQL.Add(' from itprodlicita ');
	DMESTOQUE.TSlave.SQL.Add(' left join estoque on itprodlicita.cod_estoque = estoque.cod_estoque ');
	DMESTOQUE.TSlave.SQL.Add(' left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto ');
	DMESTOQUE.TSlave.SQL.Add(' left join unidade on subproduto.cod_unidvenda = unidade.cod_unidade ');
	DMESTOQUE.TSlave.SQL.Add(' where itprodlicita.cod_licita=:CODLICITA ');
	DMESTOQUE.TSlave.ParamByName('CODLICITA').AsString:=XCodPedido;
	DMESTOQUE.TSlave.Open;

 	//ATRIBUI TOTAL VENDIDO SEM DESCONTO À VARIAVEL
   XVLRTOTAL:=XVLRTPROD;

   //ATRIBUI VALOR TOTAL
   EdValorPed.ValueNumeric:=XVLRTOTAL;
	CalcPercent(0, XVLRTOTAL-EdValorPed.ValueNumeric, XVLRTOTAL , 'D');
   EdDesc.ValueNumeric:=AlxPercento;
End;

//Limpa as labels de seleção de produto
Procedure TFlicita.LimpaLabels;
Begin
   EDCodBarra.Text:='';
   EDCodInterno.Text:='';
   EDCodComposto.Text:='';
   LProduto.Caption:='';
   LMarcaProd.Caption:='';
   LLocal.Caption:='';
End;

procedure TFlicita.FormActivate(Sender: TObject);
begin
  inherited;
	XTabela:=DMSAIDA.TLicita;
	XCampo:='NUMLICITA';
   XPkTabela:='COD_LICITA';
   XTransaction:=DMSAIDA.IBT;
   XTab:=True;
   XDescricao:=' a licitação ';
   XSQLTABELA:='LICITA';
   XLiberaDados:=' WHERE COD_LOJA='+FMenu.LCODLOJA.Caption+' ORDER BY NUMLICITA DESC, NOMECLI';
   LiberaDados;
   //SETA DBS
   DBGridCadastroPadrao.DataSource:=DMSAIDA.DLicita;
   DBNumPed.DataSource:=DMSAIDA.DLicita;
   DBNumPed.DataField:='NUMLICITA';
   DBDTABERT.DataSource:=DMSAIDA.DLicita;
   DBDTABERT.DataField:='DTABERT';
   DBHRABERT.DataSource:=DMSAIDA.DLicita;
   DBHRABERT.DataField:='HRABERT';
   DBDTPREV.DataSource:=DMSAIDA.DLicita;
   DBDTPREV.DataField:='DTVALIDADE';

   DBOBS.DataSource:=DMSAIDA.DLicita;
   DBOBS.DataField:='OBS';
   DbgProduto.DataSource:=DMESTOQUE.DSSlave;

   //Filtra tabela de loja para buscar apenas a loja em abertura do sistema
	FiltraTabela(DMMacs.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
   //VERIFICA QUAL O COMPONENTE DE BUSCA DE PRODUTO DEVE APARECER
	//PRIMEIRO DESABILITA TODOS
	PCodFab.Visible:=False;
  	PCodFab.Enabled:=False;
	PCodInterno.Visible:=False;
	PCodInterno.Enabled:=False;
   PCodComposto.Visible:=False;
   PCodComposto.Enabled:=False;
   IF DMMacs.Tloja.FieldByName('CAMPOPESQITEMPED').AsString = 'CI'
   THEN BEGIN
  		PCodInterno.Visible:=True;
  		PCodInterno.Enabled:=True;
       PCodInterno.BringToFront;
   END;
   IF DMMacs.Tloja.FieldByName('CAMPOPESQITEMPED').AsString = 'CC'
   THEN BEGIN
       PCodComposto.Visible:=True;
       PCodComposto.Enabled:=True;
       PCodComposto.BringToFront;
	End;
   IF DMMacs.Tloja.FieldByName('CAMPOPESQITEMPED').AsString = 'CF'
   THEN BEGIN
  		PCodFab.Visible:=True;
  		PCodFab.Enabled:=True;
       PCodFab.BringToFront;
   End;
   //Limpa as Labels de Seleção de Produto
   LimpaLabels;

   //Seleciona apenas pedidos pertencentes a loja
   LiberaDados;
   XNUMITEM:='01';
end;

procedure TFlicita.EdNumOrcKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	Try
		If Key=VK_RETURN
   	Then Begin//pressionado enter, consultar
			FiltraTabela(XView, XSQLVIEW, 'NUMORC', '',   '(upper(NUMORC) like upper('+#39+EdNumOrc.Text+'%'+#39+')) ORDER BY NUMORC');
       End;
       If Key=VK_ESCAPE
       Then Begin //pressionado esc, liberar
           LiberaDados;
       End;
   Except
   End;

end;

procedure TFlicita.FormShow(Sender: TObject);
begin
  inherited;
	//Xtabela e Xcampo os nome padrões devem ser atribuidos ao show do form,
	XTabela:= DMSAIDA.TLicita;
	XCampo:= 'NOMECLI';
   XPkTabela:= 'COD_LICITA';
   XTransaction:=DMSAIDA.IBT;
   XTab:=TRUE;
   XDescricao:= ' a licitação ';
   XSQLTABELA:= 'LICITA';
   XLiberaDados:=' WHERE COD_LOJA = '+FMenu.LCODLOJA.Caption+' Order by NUMLICITA DESC';//, SITUACAO, NUMPED
   LiberaDados;
end;

procedure TFlicita.EdNomeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//  inherited;
	Try
		If Key=VK_RETURN
   	Then Begin//pressionado enter, consultar
			FiltraTabela(XView, XSQLVIEW, XCampo, '',   '(upper(NOMECLI) like upper('+#39+EdNome.Text+'%'+#39+')) ORDER BY NOMECLI');
       End;
       If Key=VK_ESCAPE
       Then Begin //pressionado esc, liberar
           LiberaDados;
       End;
   Except
   End;

end;

procedure TFlicita.BtnNovoClick(Sender: TObject);
Var
   CODPEDIDO:Integer;
begin
  inherited;
	//Limpa edits
   EdCodCli.Text:='';
   EdNomeCli.Text:='';
   EdCPF.Text:='';
   FrmFormPag1.EDCodigo.Text:='';
   FrmFormPag1.EdDescricao.Text:='';
   FrmVendedor.EDCodigo.Text:='';
   FrmVendedor.EdDescricao.Text:='';
   //inicia campos de PK
   XCODPKMESTRE:=-1;
   XCodFormPag:=-1;
   XCodVendedor:=-1;
   XCodPessoa:=-1;
   XCodMoeda:=-1;
   XCodSlave:=-1;

   CODPEDIDO:=InserReg(XTabela, XSQLTABELA, XPkTabela);
   XTabela.FieldByName(XPkTabela).AsInteger:=CODPEDIDO;
   XCodPedido:=XTabela.FieldByName(XPkTabela).AsString;

   //cancela o botão "X" de fechar para que o usuário possa apenas gravar ou cancelar
   BtnFecha.Visible:=False;

   Estado:='INSERT';

	//filtra tabela de empresa
	If FiltraTabela(DMMacs.TEmpresa,  'EMPRESA', 'COD_EMPRESA', FMenu.LCODEMPRESA.Caption, '') = True
   Then Begin//se localizou a empresa
       If DMMacs.TEmpresa.FieldByName('PROXLICITA').AsString='' Then
           XTabela.FieldByName('NUMLICITA').AsString:='1'
       Else
           XTabela.FieldByName('NUMLICITA').AsString:=DMMacs.TEmpresa.FieldByName('PROXORC').AsString;

       XCodPessoa:=DMMACS.TLoja.fieldByName('COD_CONSUMIDOR').AsInteger;
       PPesCad.Visible:=True;
       PPesCad.BringToFront;
       EdNomeCli.Text:='CONSUMIDOR';
       If FiltraTabela(DMPESSOA.WCliente,  'VWCLIENTE', 'COD_CLIENTE', IntToStr(XCodPessoa), '') = True Then
           EdCodCli.Text:=DMPESSOA.WCliente.fieldByName('COD_INTERNO').AsString;

       XTabela.FieldByName('DTABERT').AsDateTime:=DATE();
       XTabela.FieldByName('HRABERT').AsDateTime:=Time();
       XTabela.Post;
       DMSAIDA.IBT.CommitRetaining;
       FiltraTabela(DMSAIDA.TPedV, 'PEDVENDA', 'COD_PEDVENDA', IntToStr(CODPEDIDO), '');
       XTabela.Edit;
   End;
   //ATUALIZA O NUM DO licita PARA Q OUTROS TERMINAIS PEGUEM O NUM CORRETO
   //Altera Nº proxima ORÇAMENTO
   DMMacs.TEmpresa.EDIT;
   Try
      	DMMacs.TEmpresa.FieldByName('PROXLICITA').AsString:=IntToStr(StrToInt(DMMacs.TEmpresa.FieldByName('PROXLICITA').AsString)+1)
   Except
   End;
   Try
   	DMMacs.TEmpresa.Post;
       DMMacs.Transaction.CommitRetaining;
   Except
   	Mensagem('ATENÇÃO', 'Não foi possível atualizar o Nº da proxima licitação. Por favor atualize manualmente!', '', 1, 1, False, 'a');
   End;
   XTabela.FieldByName('DTABERT').AsDateTime:=DATE();
   XTabela.FieldByName('HRABERT').AsDateTime:=Time();
   //Seleciona somente os registros corretos
   FiltraSlave;
   PPesCad.Visible:=False;
   PCProdServ.Repaint;
   PCProdServ.Refresh;
   DBNumPed.SetFocus;
end;

procedure TFlicita.BtnApagarClick(Sender: TObject);
begin
  inherited;
	If Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Deseja realmente apagar a licitação'+#13+'Nº '+XTabela.FieldByName('NUMLICITA').AsString+'?'  , '', 2, 3, False, 'c')= 2
   Then Begin
		FiltraTabela(XTabela, XSqlTabela, 'COD_licita', XTabela.FieldByName('COD_licita').AsString, '');
		XCodPedido:=XTabela.FieldByName('COD_licita').AsString;
      	//APAGA ORÇAMENTO E ITENS DO licita
  		Try
       	//Apaga itens de produto do Orçamento
	       	DMEstoque.Alx.Close;
           DMEstoque.Alx.SQL.Clear;
      		DMEstoque.Alx.SQL.Add('DELETE FROM ITPRODLICITA WHERE COD_licita=:CODPEDIDO');
      		DMEstoque.Alx.ParamByName('CODPEDIDO').AsString:=XTabela.FieldByName('COD_licita').AsString;
           DMESTOQUE.Alx.ExecSQL;

       	//Apaga Orçamento
	       	DMEstoque.Alx.Close;
           DMEstoque.Alx.SQL.Clear;
      		DMEstoque.Alx.SQL.Add('DELETE FROM licita WHERE COD_licita=:CODPEDIDO');
      		DMEstoque.Alx.ParamByName('CODPEDIDO').AsString:=XTabela.FieldByName('COD_licita').AsString;
           DMESTOQUE.Alx.ExecSQL;

      		//REGISTRA COMANDO DO USUARIO
      		Registra('LICITACAO', 'APAGAR', XTabela.FieldByName('DTABERT').AsString, 'Nº '+XTABELA.FieldByName('NUMLICITA').AsString, 'Valor: '+XTABELA.FieldByName('VLRTOTAL').AsString);
          	//Confirma Tranzaçào
          	DMEstoque.TransacEstoque.CommitRetaining;
           //atualiza view
          	LiberaDados;
       Except
       	//caso não conseguiu executar as tranzações acima retorna as informações anteriores
           DMEstoque.TransacEstoque.RollbackRetaining
   	End;
   End;
end;

procedure TFlicita.BtnConsultarClick(Sender: TObject);
begin
	inherited;

   XTabela.Edit;
   ESTADO:='EDIT';

   //cancela o botão "X" de fechar para que o usuário possa apenas gravar ou cancelar
   BtnFecha.Visible:=False;

	//Filtra tabela de licita de acordo com o registro selecionado na view
   //Atribui codigo do orçamento para que não haja percas
   XCodPedido:=XTabela.FieldByName('COD_licita').AsString;
   //cliente
   If (XTabela.FieldByName('COD_CLIENTE').AsString<>'') AND (XTabela.FieldByName('COD_CLIENTE').AsString<>'-1')
   Then Begin//Se foi informado um cliente cadastrado vai buscar na tabela
   	FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_CLIENTE', XTabela.FieldByName('COD_CLIENTE').AsString, '');
   	XCodPessoa:=DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;
   	EdCodCli.Text:=DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString;
   	EdNomeCli.Text:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
   	EdCPF.Text:=DMPESSOA.WCliente.FieldByName('CPFCNPJ').AsString;
   	PPesCad.Visible:=False;
   End
   Else Begin //se o cliente foi cadastrado na hora
   	EdNomeCli.Text:=XTabela.FieldByName('NOMECLI').AsString;
   	EdCPF.Text:=XTabela.FieldByName('CPFCNPJ').AsString;
   	PPesCad.Visible:=True;
   	PPesCad.BringToFront;
   End;

   //FORMA DE PAGAMENTO
   XCodFormPag:=XTabela.FieldByName('COD_FORMPAG').AsInteger;
   If FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'COD_FORMPAG', XTabela.FieldByName('COD_FORMPAG').AsString, '')=True
   Then Begin
      XCodFormPag:=DMFINANC.TFormPag.FieldByName('COD_FORMPAG').AsInteger;
      FrmFormPag1.EDCodigo.Text:=DMFINANC.TFormPag.FieldByName('COD_FORMPAG').AsString;
      FrmFormPag1.EdDescricao.Text:=DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString;
   End
   Else Begin
      XCodFormPag:=-1;
      FrmFormPag1.EDCodigo.Text:='';
      FrmFormPag1.EdDescricao.Text:='';
   End;
   //VENDEDOR
   If FiltraTabela(DMPESSOA.VWFuncionario, 'VWFUNCIONARIO', 'COD_FUNC', XTabela.FieldByName('COD_VENDEDOR').AsString, '')=True
   Then Begin
      XCodVendedor:=DMPESSOA.VWFuncionario.FieldByName('COD_FUNC').AsInteger;
      FrmVendedor.EDCodigo.Text:=DMPESSOA.VWFuncionario.FieldByName('COD_INTERNO').AsString;
      FrmVendedor.EdDescricao.Text:=DMPESSOA.VWFuncionario.FieldByName('NOME').AsString;
   End
   Else Begin
      XCODVENDEDOR:=-1;
      FrmVendedor.EDCodigo.Text:='';
      FrmVendedor.EdDescricao.Text:='';
   End;

   //seleciona items da ordem
   FiltraSlave;

   //VERIFICA QUAL O COMPONENTE DE BUSCA DE PRODUTO DEVE APARECER
   IF DMMacs.Tloja.FieldByName('CAMPOPESQITEMPED').AsString = 'CI'
   THEN BEGIN
      PCodInterno.Visible:=True;
      PCodInterno.BringToFront;
   END;
   IF DMMacs.Tloja.FieldByName('CAMPOPESQITEMPED').AsString = 'CC'
   THEN BEGIN
      PCodComposto.Visible:=True;
      PCodComposto.BringToFront;
   End;
   IF DMMacs.Tloja.FieldByName('CAMPOPESQITEMPED').AsString = 'CF'
   THEN BEGIN
      PCodFab.Visible:=True;
      PCodFab.BringToFront;
   End;
   PCProdServ.Repaint;
   PCProdServ.Refresh;   
end;
procedure TFlicita.EdCodCliKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	If Key = VK_return
   Then Begin
   	If FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_INTERNO', '', ' COD_INTERNO='+#39+EdCodCli.Text+#39)=True
   	Then Begin//CASO CONSEGUIU SELECIONAR CLIENTE
           XCodPessoa:=DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;
           EdNomeCli.Text:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
           EdCPF.Text:=DMPESSOA.WCliente.FieldByName('CPFCNPJ').AsString;
   	End
   	Else Begin//CASO NÃO CONSEGUIU SELECIONAR CLIENTE
           XCodPessoa:=-1;
           EdCodCli.Text:='';
           EdCPF.Text:='';
           EdNomeCli.Text:='';
   	End;
   End;
end;

procedure TFlicita.EdCodCliExit(Sender: TObject);
begin
  inherited;
   LUZOPEN.Visible:=False;
   //Verifica se o cliente é do tipo consumidor
   If XCodPessoa=DMMACS.TLoja.FieldByName('COD_CONSUMIDOR').AsInteger
   Then Begin
       PPesCad.Visible:=True;
       PPesCad.BringToFront;
       PPesCad.Enabled:=True;
       If DBNomeCli.Text=''
       Then Begin
          XTabela.FieldByName('NOMECLI').AsString:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
          DBNomeCli.SetFocus;
       End;
   End;
end;

procedure TFlicita.DBNomeCliKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
	If Key=#13
   Then Begin
   	If FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'NOME', '', ' (upper(NOME) like upper('+#39+DBNomeCli.Text+'%'+#39+'))')=True
   	Then Begin//CASO CONSEGUIU SELECIONAR CLIENTE
           XCodPessoa:=DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;
           EdNomeCli.Text:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
           EdCPF.Text:=DMPESSOA.WCliente.FieldByName('CPFCNPJ').AsString;
           EdCodCli.Text:=DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString;
           PPesCad.Visible:=FALSE;
           EdCodCli.SetFocus;
   	End
   	Else Begin//CASO NÃO CONSEGUIU SELECIONAR CLIENTE
           Mensagem('A T E N Ç Ã O', 'Cliente não encontrado!', '', 1, 1, False, 'i');
           XCodPessoa:=-1;
           EdCPF.Text:='';
   	End;
   End;
end;

procedure TFlicita.BtnProcPessClick(Sender: TObject);
begin
  inherited;
	//se realmente estiver trabalhando com vendas e não com compras
   PPesCad.Visible:=False;
   FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', '', '', ' ORDER BY NOME');//LIBERA TODOS OS REGISTROS PARA CONSULTA
   If AbrirForm(TFCliente, FCliente, 1)='Selected'
   Then Begin
        XCodPessoa:=DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;
        If FiltraTabela(DMPESSOA.TCliente, 'CLIENTE', 'COD_CLIENTE', IntToStr(XCODPESSOA), '')=True
        Then Begin
           If DMPESSOA.TCliente.FieldByName('ATUALIZAR').AsString='1' Then
               Mensagem('Mzr Sistemas - INFORMAÇÃO', 'As informações deste cliente devem ser atualizadas!', '', 1, 1, false, 'i');
        End;
        //VEERIFICA SE DIAS DE INTERVALO MAIOR QUE ZERO, SE IGUAL OU MENOR A ZERO O SISTEMA NÃO DEVE FAZER CONTROLE
        If DMMACS.TLoja.FieldByName('DIASBLOQCLI').AsInteger<>0
        Then Begin
           If VerificBloqCli(IntToStr(XCodPessoa))=True Then
               Mensagem('C R É D I T O   B L O Q U E A D O', 'Cliente possui Crédito Bloqueado. Por atrasos de '+DIASATRASO+'/'+IntToStr(StrToInt(DIASATRASO)-DMMACS.TLoja.FieldByNAme('DIASBLOQCLI').AsInteger)+' dias em suas contas!', '', 1, 1, false, 'i');
        End;
        EdCPF.Text:=DMPESSOA.WCliente.FieldByName('CPFCNPJ').AsString;
        EdNomeCli.Text:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
        EdCodCli.Text:=DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString;
   End;
end;

procedure TFlicita.FrmVendedorBTNOPENClick(Sender: TObject);
begin
  inherited;
	FiltraTabela(DMPESSOA.VWFuncionario, 'VWFUNCIONARIO', '', '', ' ORDER BY NOME');//LIBERA TODOS OS REGISTROS PARA CONSULTA
   If AbrirForm(TFFuncionario, FFuncionario, 1)='Selected'
   Then Begin
       XCOD_VENDEDOR:=DMPESSOA.VWFuncionario.FieldByName('COD_FUNC').AsInteger;
 		FrmVendedor.EDCodigo.Text:=DMPESSOA.VWFuncionario.FieldByName('COD_INTERNO').AsString;
       FrmVendedor.EdDescricao.Text:=DMPESSOA.VWFuncionario.FieldByName('NOME').AsString;
   End
   Else Begin
       XCOD_VENDEDOR:=-1;
 		FrmVendedor.EDCodigo.Text:='';
       FrmVendedor.EdDescricao.Text:='';
   End;
end;

procedure TFlicita.FrmVendedorEDCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
	If Key = VK_return
   Then Begin
      	If FiltraTabela(DMPESSOA.VWFuncionario, 'VWFUNCIONARIO', 'COD_INTERNO', '', ' COD_INTERNO='+#39+FrmVendedor.EDCodigo.Text+#39)=True
       Then Begin//CASO CONSEGUIU SELECIONAR CLIENTE
        	XCOD_VENDEDOR:=DMPESSOA.VWFuncionario.FieldByName('COD_FUNC').AsInteger;
           FrmVendedor.EdDescricao.Text:=DMPESSOA.VWFuncionario.FieldByName('NOME').AsString;
	        FrmVendedor.EDCodigo.Text:=DMPESSOA.VWFuncionario.FieldByName('COD_INTERNO').AsString;
       End
       Else Begin//CASO NÃO CONSEGUIU SELECIONAR CLIENTE
        	XCOD_VENDEDOR:=-1;
           FrmVendedor.EdDescricao.Text:='';
	        FrmVendedor.EDCodigo.Text:='';
       End;
   End;
end;

procedure TFlicita.FrmFormPag1BTNOPENClick(Sender: TObject);
begin
  inherited;
	If AbrirForm(TFFormPag, FFormPag, 1)='Selected'
   Then Begin
		XCodFormPag:=DMFinanc.TFormPag.FieldByName('COD_FORMPAG').AsInteger;

       FrmFormPag1.EDCodigo.Text:=DMFinanc.TFormPag.FieldByName('COD_FORMPAG').AsString;
       FrmFormPag1.EdDescricao.Text:=DMFinanc.TFormPag.FieldByName('DESCRICAO').AsString;
   End;
end;

procedure TFlicita.FrmFormPag1EDCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
	If Key=VK_RETURN
   Then Begin
       if FrmFormPag1.EDCodigo.Text<>''
       Then Begin
       	//seleciona a forma de pagamento
           If FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'COD_FORMPAG', FrmFormPag1.EDCodigo.Text, '')
           Then Begin
		       XCodFormPag:=DMFINANC.TFormPag.FieldByName('COD_FORMPAG').AsInteger;
              FrmFormPag1.EDCodigo.Text:=DMFINANC.TFormPag.FieldByName('COD_FORMPAG').AsString;
              FrmFormPag1.EdDescricao.Text:=DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString;
           End
           Else Begin
		       XCodFormPag:=-1;
              FrmFormPag1.EDCodigo.Text:='';
              FrmFormPag1.EdDescricao.Text:='';
           End;
       End;
   End;
end;

procedure TFlicita.FrmFormPag1BTNMINUSClick(Sender: TObject);
begin
  inherited;
	XCodFormPag:=-1;
   FrmFormPag1.EDCodigo.Text:='';
	FrmFormPag1.EdDescricao.Text:='';
end;

procedure TFlicita.BtnGravarClick(Sender: TObject);
begin
//  inherited;
	//VALIDA CAMPOS NECESSÁRIOS
   If XCodFormPag=-1
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Por Favor. Informe a forma de pagamento para o Orçamento!', '', 1, 1, False, 'a');
       FrmFormPag1.EDCodigo.SetFocus;
       Exit;
   End;

   XTabela.Edit;

   //INFORMA CODIGO DO USUARIO
   XTabela.FieldByName('COD_USUARIO').AsInteger:=StrToInt(FMenu.LCODUSUARIO.Caption);
   //INFORMA CODIGO DO CLIENTE
   XTabela.FieldByName('COD_CLIENTE').AsInteger:=XCodPessoa;
   If PPesCad.Visible=FALSE
   Then Begin
       XTabela.FieldByName('NOMECLI').AsString:=EdNomeCli.Text;
       XTabela.FieldByName('CPFCNPJ').AsString:=EdCPF.Text;
   End;

   //INFORMA CODIGO DO VENDEDOR
   XTabela.FieldByName('COD_VENDEDOR').AsInteger:=XCOD_VENDEDOR;
   //INFORMA CODIGO DA LOJA
   XTabela.FieldByName('COD_LOJA').AsString:=FMenu.LCODLOJA.Caption;
   //INFORMA FORMA DE PAGAMENTO
   XTabela.FieldByName('COD_FORMPAG').AsInteger:=XCodFormPag;

   //INICIA PROCESSO PARA GRAVAR TABELAS

   //GRAVA TOTAIS
   XTabela.FieldByName('VLRTOTAL').AsCurrency:=EdValorPed.ValueNumeric;
   //grava tabela slave
   Try
      XTabela.Post;
      XTransaction.CommitRetaining;
   Except
	   XTransaction.RollbackRetaining;
	End;

   //Atualiza View da tela de Consulta
   LiberaDados;
   PCadastro.Visible:=False;
   PConsulta.Visible:=true;
   PConsulta.BringToFront;
   EdNome.SetFocus;
   //habilita o botão "X" de fechar para que o usuário possa fechar a tela
   BtnFecha.Visible:=True;
end;

procedure TFlicita.EdDescTProdExit(Sender: TObject);
begin
  inherited;
   FiltraSlave;
end;

procedure TFlicita.EdtotalProdExit(Sender: TObject);
begin
  inherited;
   //ATRIBUI VALOR TOTAL DA ORDEM E DESCONTO
   EdValorPed.ValueNumeric:=XVLRTOTAL;
	CalcPercent(0, (XVLRTOTAL) - (EdValorPed.ValueNumeric), (XVLRTOTAL) , 'D');
   EdDesc.ValueNumeric:=AlxPercento;

end;

procedure TFlicita.EdDescTServExit(Sender: TObject);
begin
  inherited;
	FiltraSlave;
end;

procedure TFlicita.EdTotalservExit(Sender: TObject);
begin
  inherited;
   //ATRIBUI VALOR TOTAL DA ORDEM E DESCONTO
	CalcPercent(0, (XVLRTOTAL) - (EdValorPed.ValueNumeric), (XVLRTOTAL) , 'D');
   EdDesc.ValueNumeric:=AlxPercento;
end;

procedure TFlicita.EDCodInternoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	If Key=VK_Return
   Then Begin
		If FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'CONTRINT', EDCodInterno.Text, '')=True
       Then Begin
			EscreveLabelsPROD;
       End
       Else Begin
           LimpaLabelsPROD;
           LProduto.Caption:='PRODUTO NÃO ENCONTRADO';
       End;
   End;
end;

procedure TFlicita.EDCodCompostoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	If Key=VK_Return
   Then Begin
		FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'CODCOMPOSTO', EDCodComposto.Text, '');
		EscreveLabelsPROD;
   End;
end;

procedure TFlicita.EDCodFabKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	If Key=VK_Return
   Then Begin
		If FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'CODFABRICANTE', EDCodFab.Text, '')=True
       Then Begin
			EscreveLabelsPROD;
       End
       Else Begin
           LimpaLabelsPROD;
           LProduto.Caption:='PRODUTO NÃO ENCONTRADO';
       End;
   End;
end;

procedure TFlicita.EDCodBarraKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	If Key=VK_Return
   Then Begin
		If FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'CODBARRA', EDCodBarra.Text, '')=True
       Then Begin
			EscreveLabelsPROD;
       End
       Else Begin
           LimpaLabelsPROD;
           LProduto.Caption:='PRODUTO NÃO ENCONTRADO';
       End;
   End;
end;

procedure TFlicita.BtnEscolheProcClick(Sender: TObject);
begin
  inherited;
  	MEscolheProc.Popup(BtnEscolheProc.Width+BtnEscolheProc.Left+60, 320);
end;

procedure TFlicita.BtnInsertProdClick(Sender: TObject);
begin
  inherited;
	//Valida se foi encontrado algum produto
   If LProduto.Caption=''
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Não existe produto a ser adicionado a lista de items do orçamento.', '', 1, 1, False, 'a');
		Panel2.OnEnter(Sender);
	    Exit;
   End;
   //Valida quanto a quantidade
   If EDQuantidade.ValueNumeric<=0
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'O produto não pode ser inserido a lista com quantidade inferior a 1.', '', 1, 1, False, 'a');
		EDQuantidade.SetFocus;
	    Exit;
   End;
   //Valida quanto ao valor total do produto
   If EdVlrFinal.ValueNumeric<=0
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'O produto não pode ser inserido a lista com o valor total igual ou inferiro a 0.', '', 1, 1, False, 'a');
		EdVlrFinal.SetFocus;
	    Exit;
   End;

   //VERIFICA SE JÁ EXISTE ALGUM PRODUTO IGUAL AO CORRENTE INSERIDO A LISTA
   //SE ENCONTRAR PEDIR SE O USUÁRIO DESEJA ALTERAR O LANÇAMENTO.
   DMESTOQUE.TSlave.Close;
   DMESTOQUE.TSlave.SQL.Clear;
	DMESTOQUE.TSlave.SQL.Add(' Select itprodlicita.cod_itprodlicita, unidade.desc_unid AS UNIDADE, itprodlicita.cod_licita, itprodlicita.cod_estoque,  itprodlicita.qtd, itprodlicita.vlrfinal AS TOTAL, ');
   DMESTOQUE.TSlave.sql.Add(' subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL1').AsString+' AS PRIMCOD, ');
	DMESTOQUE.TSlave.SQL.Add(' itprodlicita.desconto, itprodlicita.vlrcompra, itprodlicita.vlrrep, subproduto.descricao, subproduto.marca, SubProduto.CODPRODFABR ');
	DMESTOQUE.TSlave.SQL.Add(' from itprodlicita ');
	DMESTOQUE.TSlave.SQL.Add(' left join estoque on itprodlicita.cod_estoque = estoque.cod_estoque ');
	DMESTOQUE.TSlave.SQL.Add(' left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto ');
	DMESTOQUE.TSlave.SQL.Add(' left join unidade on subproduto.cod_unidvenda = unidade.cod_unidade ');
	DMESTOQUE.TSlave.SQL.Add(' Where (itprodlicita.cod_licita=:CODLICITA) AND (itprodlicita.cod_estoque=:CODESTOQUE) ');
   DMESTOQUE.TSlave.ParamByName('CODLICITA').AsString:=XCodPedido;
   DMESTOQUE.TSlave.ParamByName('CODESTOQUE').AsString:=DMESTOQUE.TEstoque.FieldByName('COD_ESTOQUE').AsString;
   DMESTOQUE.TSlave.Open;
   If Not DMESTOQUE.TSlave.IsEmpty
   Then Begin
		If Mensagem('A T E N Ç Ã O !', 'O sistema encontrou o mesmo produto já lançado a lista. com '+DMESTOQUE.TSlave.FieldByName('QTD').AsString+' qtdes.'+#13+'Deseja alterar este produto já lançado?', '', 2, 3, False, 'c')= 2
       Then Begin
       	//o usuario decidiu alterar o lançamento anterior este é cancelado e o outro é excluido da lista
           BtnDeleteProd.Click;
           exit;
       End
   End;

   //Inserir Produto a lista do pedido
   XCOD_ITPROD:=InserReg(DMSAIDA.TITPL, 'ITPRODLICITA', 'COD_ITPRODLICITA');
   DMSAIDA.TITPL.FieldByName('COD_ITPRODLICITA').AsInteger:=XCOD_ITPROD;
   DMSAIDA.TITPL.FieldByName('COD_LICITA').AsString:=XCodPedido;
   DMSAIDA.TITPL.FieldByName('COD_ESTOQUE').AsInteger:=DMEstoque.WSimilar.FieldByName('COD_ESTOQUE').AsInteger;
   DMSAIDA.TITPL.FieldByName('QTD').AsCurrency:=EDQuantidade.ValueNumeric;
   DMSAIDA.TITPL.FieldByName('DESCONTO').AsCurrency:=EdAcrec.ValueNumeric;
   DMSAIDA.TITPL.FieldByName('VLRCOMPRA').AsCurrency:=EdVlrComp.ValueNumeric;
   DMSAIDA.TITPL.FieldByName('NUMITEM').AsString:=EdNumItem.Text;
   XNUMITEM:=INCSTRNUM(1, EdNumItem.Text);
   DMSAIDA.TITPL.FieldByName('VLRREP').AsCurrency:=DMESTOQUE.TEstoque.FieldByName('VALREP').AsCurrency;
   DMSAIDA.TITPL.FieldByName('VLRFINAL').AsCurrency:=EdVlrFinal.ValueNumeric;
   DMSAIDA.TITPL.FieldByName('VALCUSTO').AsCurrency:=DMESTOQUE.TEstoque.FieldByName('VALCUSTO').AsCurrency;
   DMSAIDA.TITPL.FieldByName('COEFDIV').AsCurrency:=DMESTOQUE.TEstoque.FieldByName('COEFDIV').AsCurrency;
   DMSAIDA.TITPL.FieldByName('VALCOMP').AsCurrency:=DMESTOQUE.TEstoque.FieldByName('vlrunitcomp').AsCurrency*EDQuantidade.ValueNumeric;
   CalcLuc(EdVlrFinal.ValueNumeric, EDDesc.ValueNumeric, EDQuantidade.ValueNumeric);
   If DMSAIDA.TITPL.FieldByName('COEFDIV').AsCurrency<>0 Then
   	DMSAIDA.TITPL.FieldByName('LUCMOE').AsCurrency:=(DMSAIDA.TITPL.FieldByName('VLRREP').AsCurrency/DMSAIDA.TITPL.FieldByName('COEFDIV').AsCurrency)*EDQuantidade.ValueNumeric
   Else
   	DMSAIDA.TITPL.FieldByName('LUCMOE').AsCurrency:=0;
   DMSAIDA.TITPL.FieldByName('LUCREL').AsCurrency:=ALXLUCREAL;
   DMSAIDA.TITPL.FieldByName('LUCPER').AsCurrency:=(DMSAIDA.TITPL.FieldByName('LUCMOE').AsCurrency*100)/DMSAIDA.TITPL.FieldByName('VLRFINAL').AsCurrency;

   //Tenta gravar as informações
   Try
       DMSAIDA.TITPL.Post;
       DMSAIDA.IBT.CommitRetaining;
   Except
       DMSAIDA.IBT.RollbackRetaining;
   End;
	//limpa labels de seleção
   LimpaLabelsPROD;
   //Filtra slaves e calcula total
   FiltraSlave;
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
                   EDCodInterno.Text:='';
		           	EDCodInterno.SetFocus;
	            Except
	            End;
	        End;
			IF DMMacs.Tloja.FieldByName('CAMPOPESQITEMPED').AsString = 'CC'
	        THEN Begin
		       	Try
                   EDCodComposto.Text:='';
		           	EDCodComposto.SetFocus;
	            Except
	            End;
			End;
			IF DMMacs.Tloja.FieldByName('CAMPOPESQITEMPED').AsString = 'CF'
	        THEN Begin
		       	Try
                   EDCodFab.Text:='';
		           	EDCodFab.SetFocus;
	            Except
		        End;
			End;
	    END;
end;

procedure TFlicita.BtnProcProdClick(Sender: TObject);
begin
  inherited;
  	//abre formulario de produto para seleção
	If AbrirForm(TFProduto, FProduto, 1)='Selected'
	Then Begin
   	//Depois de selecionado escreve nas labels o produto
       EscreveLabelsPROD;
   End
   Else Begin
       LimpaLabelsPROD;
       LProduto.Caption:='PRODUTO NÃO ENCONTRADO';
   End;
end;

procedure TFlicita.ControleInterno1Click(Sender: TObject);
begin
  inherited;
   PCodInterno.Visible:=True;
   PCodInterno.BringToFront;
   PCodInterno.Enabled:=True;
   EDCodInterno.SetFocus;
end;

procedure TFlicita.CdFab1Click(Sender: TObject);
begin
  inherited;
   PCodFab.Visible:=True;
   PCodFab.BringToFront;
   PCodFab.Enabled:=True;
   EDCodFab.SetFocus;

end;

procedure TFlicita.C1Click(Sender: TObject);
begin
  inherited;
   PCodComposto.Visible:=True;
   PCodComposto.BringToFront;
   PCodComposto.Enabled:=True;
   EDCodComposto.SetFocus;
end;

procedure TFlicita.BtnDeleteProdClick(Sender: TObject);
begin
  inherited;
   If DMESTOQUE.TSlave.RecordCount<>0
   Then Begin//caso a tabela esteja vasia não pode apagar
	  	//LOCALIZA E APAGA
		FiltraTabela(DMEstoque.TEstoque, 'ESTOQUE', 'COD_ESTOQUE', DMESTOQUE.TSlave.FieldByName('COD_ESTOQUE').AsString, '');
		FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'COD_ESTOQUE', DMEstoque.TSlave.FieldByName('COD_ESTOQUE').AsString, '');
       DMSAIDA.TAlx.Close;
       DMSAIDA.TAlx.SQL.Clear;
       DMSAIDA.TAlx.SQL.Add(' DELETE from ITPRODLICITA WHERE ITPRODLICITA.COD_ITPRODLICITA=:CODITEM');
       DMSAIDA.TAlx.ParamByName('CODITEM').AsString:=DMESTOQUE.TSlave.FieldByName('COD_ITPRODLICITA').AsString;
		DMSAIDA.TAlx.ExecSQL;

 	    //CONFIRMA TRANZAÇÃO
	    Try
		   DMSAIDA.IBT.CommitRetaining;
	    Except
	 	   DMSAIDA.IBT.RollbackRetaining;
	    End;

	 	//VOLTA VALORES AS LABELS
	    EscreveLabelsPROD;
	 	EDQuantidade.ValueNumeric:=DMESTOQUE.TSlave.FieldByName('QTD').Value;
		EdAcrec.ValueNumeric:=DMESTOQUE.TSlave.FieldByName('DESCONTO').AsCurrency;
		EdVlrComp.ValueNumeric:=DMESTOQUE.TSlave.FieldByName('VLRCOMPRA').AsCurrency;
       EdVlrRep.ValueNumeric:=DMESTOQUE.TSlave.FieldByName('VLRREP').AsCurrency;
		EdVlrFinal.ValueNumeric:=DMESTOQUE.TSlave.FieldByName('TOTAL').AsCurrency;
   	EdNumItem.Text:=DMSAIDA.TITPL.FieldByName('NUMITEM').AsString;       
	    //Filtra registros escrsavos
	    FiltraSlave;
   End;
end;

procedure TFlicita.BtnDeleteServClick(Sender: TObject);
begin
  inherited;
   If DMESTOQUE.TSlaveServ.RecordCount<>0
   Then Begin//caso a tabela esteja vasia não pode apagar
	  	//LOCALIZA E FILTRA registro CORRESPONDENTE
		FiltraTabela(DMSERV.WSubServ, 'VWSUBSERVICO', 'COD_SUBSERVICO', DMESTOQUE.TSlaveServ.FieldByName('COD_SERVICO').AsString, '');
		FiltraTabela(DMSAIDA.TItServOrc, 'ITSERVORC', 'COD_ITSERVORC', DMESTOQUE.TSlaveServ.FieldByName('COD_ITSERVORC').AsString, '');

       DMSAIDA.TAlx.Close;
       DMSAIDA.TAlx.SQL.Clear;
       DMSAIDA.TAlx.SQL.Add(' DELETE from itservorc WHERE itservorc.cod_itservorc=:CODITEM');
       DMSAIDA.TAlx.ParamByName('CODITEM').AsString:=DMESTOQUE.TSlaveServ.FieldByName('COD_ITSERVORC').AsString;
		DMSAIDA.TAlx.ExecSQL;

 	    //CONFIRMA TRANZAÇÃO
	    Try
		   XTransaction.CommitRetaining;
	    Except
	 	   XTransaction.RollbackRetaining;
	    End;

	    //Filtra registros escrsavos
	    FiltraSlave;
   End;
end;

procedure TFlicita.BitBtn4Click(Sender: TObject);
begin
  inherited;
   If Not DMESTOQUE.TDesp.IsEmpty
   Then Begin
   	DMESTOQUE.TDesp.Delete;
   	DMESTOQUE.TransacEstoque.CommitRetaining;
   	FiltraSlave;
   End;
end;

procedure TFlicita.BtnRelatorioClick(Sender: TObject);
begin
  inherited;
	PmRelatorio.Popup(Left+PConsulta.left+Painel.left+ BtnRelatorio.Left, top+PConsulta.Top+Painel.top+BtnRelatorio.Top+BtnRelatorio.Height);
end;

procedure TFlicita.CompdeAbertura1Click(Sender: TObject);
begin
  inherited;
   //EFETUA CONTROLE DE ACESSO
{   If ControlAccess('RELABERTORD', 'M')=False Then
  		Exit;}

   //FILTRA EMPRESA PARA IMPRIMIR CABEÇALHO
   If FiltraTabela(DMMACS.TEmpresa, 'EMPRESA', 'COD_EMPRESA', FMenu.LCODEMPRESA.Caption, '')=False Then
   	Exit;

   //FILTRA CLIENTE PARA ENCONTRAR PESSOA
   If FiltraTabela(DMPESSOA.TCliente, 'CLIENTE', 'COD_CLIENTE', DMSAIDA.TLicita.FieldByNAme('COD_CLIENTE').AsString, '')=False Then
		Exit;

   //FILTRA PESSOA PARA IMPRESSÃO DE CLIENTE
   If FiltraTabela(DMPESSOA.TPessoa, 'PESSOA', 'COD_PESSOA', DMPESSOA.TCliente.FieldByNAme('COD_PESSOA').AsString, '')=False Then
   	Exit;

   //FILTRA CIDADE DO CLIENTE
   FiltraTabela(DMGEOGRAFIA.TCidade, 'CIDADE', 'COD_CIDADE', DMPESSOA.TPessoa.FieldByNAme('COD_CIDADE').AsString, '');

   //FILTRA TELEFONE PARA IMPRESSÃO DE CLIENTE
   FiltraTabela(DMPESSOA.TALX, 'TELEFONE', 'COD_PESSOA', DMPESSOA.TPessoa.FieldByNAme('COD_PESSOA').AsString, '');

   XCodPedido:=DMSAIDA.TLicita.fieldbyname('COD_licita').AsString;
   //FILTRA PRODUTOS, SERVIÇOS E DESPESAS
	FiltraSlave;

	FSRel.LoadFromFile('C:\MZR\MACS\Rel\Frflicita.frf');
	FSRel.ShowReport;
end;

procedure TFLicita.EdQuantidadeExit(Sender: TObject);
begin
  inherited;
   EdVlrFinal.ValueNumeric:=(EdVlrRep.ValueNumeric*EdQuantidade.ValueNumeric)+(((EdVlrRep.ValueNumeric*EdQuantidade.ValueNumeric)*EdAcrec.ValueNumeric)/100);
end;

procedure TFLicita.EdVlrFinalExit(Sender: TObject);
begin
  inherited;
	CalcPercent(0, (EDQuantidade.ValueNumeric*EdVlrRep.ValueNumeric)- EdVlrFinal.ValueNumeric, (EDQuantidade.ValueNumeric*EdVlrRep.ValueNumeric), 'A');
	EdAcrec.ValueNumeric:=AlxPercento*-1;
end;

procedure TFLicita.EdValorPedExit(Sender: TObject);
begin
  inherited;
   If XVLRTOTAL<>(EdValorPed.ValueNumeric)
   Then Begin
		CalcPercent(0, XVLRTOTAL-EdValorPed.ValueNumeric, XVLRTOTAL , 'D');
       XTabela.edit;
       XTabela.FieldByName('DESCPROD').AsCurrency:=AlxPercento;
       EdDesc.ValueNumeric:=AlxPercento;
   End
   Else Begin
       FiltraSlave;
       XTabela.edit;
       XTabela.FieldByName('DESCPROD').AsCurrency:=0;
       EdValorPed.ValueNumeric:=XVLRTOTAL;
   End;
end;

procedure TFLicita.EdDescExit(Sender: TObject);
begin
  inherited;
  	If EDDesc.text<>''
   Then Begin
		CalcPercent(StrToFloat(EDDesc.text) , XVLRTOTAL, XVLRTOTAL, 'D');
   	If AlxValor<>0 Then
			EdValorPed.Text:=FormatFloat('#,##0.00', AlxCalculo)
		Else
			EdValorPed.Text:='0,00';
   End
   Else Begin
       EDDesc.text:='0,00';
       EdValorPed.ValueNumeric:=XVLRTOTAL;
   End;
end;

procedure TFLicita.BtnCancelarClick(Sender: TObject);
begin
   FiltraSlave;
   If DMESTOQUE.TSlave.IsEmpty
   Then Begin
   	//Apaga itens de produto do Orçamento
	    DMEstoque.Alx.Close;
       DMEstoque.Alx.SQL.Clear;
      	DMEstoque.Alx.SQL.Add('DELETE FROM ITPRODLICITA WHERE COD_licita=:CODPEDIDO');
      	DMEstoque.Alx.ParamByName('CODPEDIDO').AsString:=XTabela.FieldByName('COD_licita').AsString;
       DMESTOQUE.Alx.ExecSQL;
       //Apaga Orçamento
	    DMEstoque.Alx.Close;
       DMEstoque.Alx.SQL.Clear;
      	DMEstoque.Alx.SQL.Add('DELETE FROM licita WHERE COD_licita=:CODPEDIDO');
      	DMEstoque.Alx.ParamByName('CODPEDIDO').AsString:=XTabela.FieldByName('COD_licita').AsString;
       DMESTOQUE.Alx.ExecSQL;
       //Confirma Tranzaçào
       DMEstoque.TransacEstoque.CommitRetaining;
       //atualiza view
       LiberaDados;
   End;
  inherited;
end;

end.
