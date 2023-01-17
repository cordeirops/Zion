unit UOrcamentoMac;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadPadrao, Buttons, Grids, DBGrids, StdCtrls, TFlatEditUnit,
  ExtCtrls, UFrmBusca, Mask, ColorMaskEdit, EditFloat, ColorEditFloat,
  ComCtrls, cxControls, cxContainer, cxEdit, cxGroupBox, DBCtrls,
  DBColorEdit, AppEvnts, FR_Class, frxClass, frxDBSet, FR_DSet, FR_DBSet,
  Menus;

type
  TFOrcamentoMac = class(TFCadPadrao)
    FrmCliente: TFrmBusca;
    FrmPlaca: TFrmBusca;
    lbNumFrota: TLabel;
    EdObsFinanceira: TEdit;
    LTextoBusca: TLabel;
    FrmFormaPag: TFrmBusca;
    EDContatoCliente: TEdit;
    PageControl1: TPageControl;
    TabSheet4: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    lbEstoque: TLabel;
    lbSaldoEstoque: TLabel;
    lbProduto: TLabel;
    LbLocal: TLabel;
    LPesquisa: TLabel;
    PListaProdutos: TPanel;
    DBGrid1: TDBGrid;
    ColorMaskEdit1: TColorMaskEdit;
    EDCodProd: TColorMaskEdit;
    BTNAddProd: TBitBtn;
    EDQtde: TColorEditFloat;
    EDDescProd: TColorEditFloat;
    EDValorUnit: TColorEditFloat;
    EDValorTotal: TColorEditFloat;
    BtnInserirProd: TBitBtn;
    BtnRemoverProd: TBitBtn;
    cxGroupBox3: TcxGroupBox;
    DBGridProdutos: TDBGrid;
    TabSheet5: TTabSheet;
    Label60: TLabel;
    Label64: TLabel;
    Label14: TLabel;
    Label61: TLabel;
    Label63: TLabel;
    EDDescricaoServ: TEdit;
    EDValorTotalServ: TColorEditFloat;
    BtnInserirServ: TBitBtn;
    BtnRemoverServ: TBitBtn;
    EDValorServ: TColorEditFloat;
    EDQtdeServ: TColorEditFloat;
    EDDescontoServ: TColorEditFloat;
    cxGroupBox4: TcxGroupBox;
    DBGridServ: TDBGrid;
    Label7: TLabel;
    EDDescricao: TEdit;
    Label28: TLabel;
    Label30: TLabel;
    EdValorOrc: TColorEditFloat;
    EDNumOrc: TEdit;
    Label31: TLabel;
    EdTotDesp: TColorEditFloat;
    EdDescTProd: TColorEditFloat;
    Label42: TLabel;
    EdtotalProd: TColorEditFloat;
    Label32: TLabel;
    EdDescTServ: TColorEditFloat;
    Label41: TLabel;
    EDTotalServ: TColorEditFloat;
    Label33: TLabel;
    EdDescTOrc: TColorEditFloat;
    Label40: TLabel;
    EdTotalOrc: TColorEditFloat;
    Label34: TLabel;
    EdDataAbertura: TFlatEdit;
    EDNumeroOrcMec: TFlatEdit;
    DbServicoClassificacao: TDBLookupComboBox;
    Label29: TLabel;
    BTNMINUS: TBitBtn;
    BTNOPEN: TBitBtn;
    ApplicationEvents1: TApplicationEvents;
    FrmEquipe: TFrmBusca;
    frxOrcMacCliente: TfrxDBDataset;
    frxOrcMacFunc: TfrxDBDataset;
    FrxOrcMacCidade: TfrxDBDataset;
    FrxOrcMacEmpresa: TfrxDBDataset;
    FrxOrcMacLoja: TfrxDBDataset;
    frxOrcamentoMac: TfrxDBDataset;
    FrxRelOrcamentoMac: TfrxReport;
    FrxOrcMacServico: TfrxDBDataset;
    CbMostrarOrcamentosexportados: TCheckBox;
    PopupMenu1: TPopupMenu;
    MarcarcomoExportado1: TMenuItem;
    DesmarcarcomoExportado1: TMenuItem;
    TabSheet1: TTabSheet;
    mObservacoes: TMemo;
    Label5: TLabel;
    procedure FrmBusca1BTNOPENClick(Sender: TObject);
    procedure FrmBusca2BTNOPENClick(Sender: TObject);
    procedure FrmFormaPagBTNOPENClick(Sender: TObject);
    procedure FrmClienteEDCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FrmFormaPagEDCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FrmPlacaEDCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure DBGridCadastroPadraoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure BtnConsultarClick(Sender: TObject);
    procedure BTNAddProdClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnApagarClick(Sender: TObject);
    procedure EDCodProdKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnInserirProdClick(Sender: TObject);
    procedure EDQtdeExit(Sender: TObject);
    procedure EDQtdeKeyPress(Sender: TObject; var Key: Char);
    procedure EDValorTotalKeyPress(Sender: TObject; var Key: Char);
    procedure EDValorTotalExit(Sender: TObject);
    procedure EDDescProdExit(Sender: TObject);
    procedure EDDescProdKeyPress(Sender: TObject; var Key: Char);
    procedure BtnRemoverProdClick(Sender: TObject);
    procedure BtnInserirServClick(Sender: TObject);
    procedure EDValorServExit(Sender: TObject);
    procedure EDValorServKeyPress(Sender: TObject; var Key: Char);
    procedure EDQtdeServExit(Sender: TObject);
    procedure EDQtdeServKeyPress(Sender: TObject; var Key: Char);
    procedure EDDescontoServExit(Sender: TObject);
    procedure EDDescontoServKeyPress(Sender: TObject; var Key: Char);
    procedure EDDescricaoServKeyPress(Sender: TObject; var Key: Char);
    procedure BtnRemoverServClick(Sender: TObject);
    procedure EdDescTProdExit(Sender: TObject);
    procedure EdDescTServExit(Sender: TObject);
    procedure EDCodProdKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EDDescricaoKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure EdNomeEnter(Sender: TObject);
    procedure EdNomeExit(Sender: TObject);
    procedure EdNomeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EDNumeroOrcEnter(Sender: TObject);
    procedure EDNumeroOrcKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdDataAberturaEnter(Sender: TObject);
    procedure EdDataAberturaExit(Sender: TObject);
    procedure EDNumeroOrcExit(Sender: TObject);
    procedure EDNumeroOrcMecEnter(Sender: TObject);
    procedure EDNumeroOrcMecExit(Sender: TObject);
    procedure EDNumeroOrcMecKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdDataAberturaKeyPress(Sender: TObject; var Key: Char);
    procedure EDCodProdEnter(Sender: TObject);
    procedure BTNOPENClick(Sender: TObject);
    procedure BTNMINUSClick(Sender: TObject);
    //Edmar - 10/07/2014 - insere classificação para o serviço
    Procedure InsereClassificacaoServico;
    procedure ApplicationEvents1Message(var Msg: tagMSG;
      var Handled: Boolean);
    procedure FrmEquipeBTNOPENClick(Sender: TObject);
    procedure FrmEquipeEDCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure FrmEquipeEDCodigoExit(Sender: TObject);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FrmPlacaEDCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure BtnRelatorioClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CbMostrarOrcamentosexportadosClick(Sender: TObject);
    procedure MarcarcomoExportado1Click(Sender: TObject);
    procedure DesmarcarcomoExportado1Click(Sender: TObject);

  private
    { Private declarations }

    //FILTRA OS REGISTROS DE PRODUTOS E SERVIÇOS PERTENCENTES A ORDEM
   Procedure FiltraSlave;
    //pesquisa codigo do equipamento
    Procedure PesquisaCodigoEquipamento(codigo:String;cliente:boolean);
    //Filtra as tabelas e escreve em edits e labels as informações dos produtos selecionado
    Procedure EscreveLabelsPROD;
    //Retorna os valores filtrados em edits e labels do produto removido
    Procedure EscreveLabelsPRODRemover;
    //Limpa os campos e labels do produto.
    Procedure LimpaCamposPROD;
    //limpar campos do servico.
    Procedure LimpaCamposSERV;
    //limpa campos
    function LimparCampos:boolean;
    function ValidaCampos:boolean;
    function ValidaCamposItensProd:boolean;
    function ValidaCamposItensServ:boolean;
    //efetua desonto dos produtos e serviços
    Function EfetuaDesconto(OrigemDesconto: String; TipoDesconto: String): Boolean;
    //pesquisa codigo equipe
    Procedure PesquisaCodigoEquipe(codigo: String);
    //Edmar - 29/07/2014 - usado para refiltra serviços do orçamento
    Procedure FiltraClassificaoServico;
    //Edmar - 29/07/2014 - usado para refiltra produtos do orçamento
    Procedure FiltraProdutos;
  public
    { Public declarations }
  end;

var
  FOrcamentoMac: TFOrcamentoMac;
   xCodOrcamento : Integer;
   xCodCliente : Integer;
   xCodEquipamento : Integer;
   xCodFormaPag : Integer;
   xCodEstoque : Integer;
   xCodItemProd : Integer;
   xCodItemServ : Integer;
   xCodDespesas : Integer;
   xCodSubProduto, XCOD_SERVICOCLASSIFICACAO: Integer;
   xOrc, XCodTmpEstoque : String;
   XPESPROD, XTipoProc  : Integer; //pesquisa pelo codigo
   //filtra slave
   XVLRUNITVISTA, XVLRTVISTA, XVLRTOTAL, XVLRTPROD, XVLRTSERV: REAL;// ARMARZENA VALOR TOTAL DO PEDIDO
   XCONTROLECONSULTA: Boolean; //DJ 02/12/2009: Indica se esta acontecendo uma consulta
   xIndustria, xAtacadista: Boolean;
implementation

uses UDMPessoa, UDMMacs, UMenu, UCliente, Alxor32, UCadEquipamento,
  UFormPag, UDMFinanc, UDMEstoque, UMDO, UDMSaida, AlxMessage, DB,
  UProduto, UDMEntrada, UDmServ, UServico, UCadEquipe, UDMGEOGRAFIA,UDMFAST;

{$R *.dfm}
// 07/05/2012 - Mauro - função limpar campos
function TFOrcamentoMac.LimparCampos: boolean;
begin
      FrmCliente.EDCodigo.Text:='';
      FrmCliente.EdDescricao.Text:='';
      FrmPlaca.EDCodigo.Text:='';
      FrmPlaca.EdDescricao.Text:='';
      FrmFormaPag.EDCodigo.Text:='';
      FrmFormaPag.EdDescricao.Text:='';
      EdObsFinanceira.Text:='';
      EDContatoCliente.Text:='';
      EDDescricao.Text:='';
      lbNumFrota.Caption:='';
      mObservacoes.Lines.Text:='';
end;
function TFOrcamentoMac.ValidaCampos : boolean;
begin
    Result:=true;
    if EDDescricao.Text=''
    then begin
      Mensagem('OPÇÃO BLOQUEADA', 'Insira uma descrição para o Orçamento.', '', 1, 1, False, 'a');
      EDDescricao.SetFocus;
      Result := false;
    end;
    if FrmFormaPag.EdDescricao.Text=''
    then begin
      Mensagem('OPÇÃO BLOQUEADA', 'Selecione uma forma de pagamento.', '', 1, 1, False, 'a');
      FrmFormaPag.EDCodigo.SetFocus;
      Result := false;
    end;
end;
function TFOrcamentoMac.ValidaCamposItensProd:boolean;
begin
    Result:=true;
    //Valida se foi encontrado algum produto
   If (lbProduto.Caption='') or (lbProduto.Caption='PRODUTO NÃO ENCONTRADO')
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Selecione um Produto antes de Inserir.', '', 1, 1, False, 'a');
		EDCodProd.SetFocus;
    Result:=false;
    Exit;
    end;


   //Valida quanto ao valor unitario do produto
   If EDValorUnit.ValueNumeric<=0
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'O Produto não pode ser inserido a lista com o Valor Unitário igual ou inferior a 0 (zero).', '', 1, 1, False, 'a');
		EDValorUnit.SetFocus;
    Result:=false;
    Exit;
   End;
   //Valida quanto ao valor total do produto
   If EDValorTotal.ValueNumeric<=0
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'O produto não pode ser inserido a lista com o Valor Total igual ou inferior a 0 (zero).', '', 1, 1, False, 'a');
		EDValorTotal.SetFocus;
    Result:=false;
    Exit;
   End;
end;

function TFOrcamentoMac.ValidaCamposItensServ:boolean;
begin
    Result:=true;
     //Valida se foi encontrado algum produto
   If EDDescricaoServ.Text=''
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Insira uma descrição de serviço.', '', 1, 1, False, 'a');
		EDDescricaoServ.SetFocus;
    Result:=false;
    Exit;
    end;
   //Valida quanto ao valor total do produto
   If EDValorServ.ValueNumeric<=0
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'O produto não pode ser inserido a lista com o Valor igual ou inferior a 0 (zero).', '', 1, 1, False, 'a');
		EDValorServ.SetFocus;
    Result:=false;
    Exit;
   End;

   //validacao verifica se quantidade maior que 0
   If EDQtdeServ.ValueNumeric<=0
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'O Serviço não pode ser inserido a lista com quantidade inferior a 1 (um).', '', 1, 1, False, 'a');
		EDQtdeServ.SetFocus;
    Result:=false;
    Exit;
   End;


end;

//Função Para calcular desconto da ordem
Function TFOrcamentoMac.EfetuaDesconto(OrigemDesconto: String; TipoDesconto: String): Boolean;
Begin
	//se nao tiver nenhum desconto zerar o desconto de produto
   If DMESTOQUE.TSlave.IsEmpty Then
		EdDescTProd.ValueNumeric := 0;

   //se nao tiver nenhum desconto zerar o desconto de serviço
   If DMESTOQUE.TDesp.IsEmpty Then
        EdDescTServ.ValueNumeric := 0;

	//CALCULA DESCONTOS
   //SERVICOS
	If (OrigemDesconto='SERVICO') or (OrigemDesconto='GERAL')
   Then Begin
   	IF XVLRTSERV<>0
       Then Begin
           //Efetua desconto somente para serviços
           If TipoDesconto='PERCENTO'
           Then Begin
               EdTotalserv.ValueNumeric:=XVLRTSERV-(EdDescTServ.ValueNumeric*XVLRTSERV)/100
           End
           Else Begin
               EdDescTServ.ValueNumeric:=((XVLRTSERV-EdTotalserv.ValueNumeric)*100)/XVLRTSERV;
           End;
       End
       Else Begin
           EdDescTServ.ValueNumeric:=0;
			EdTotalserv.ValueNumeric:=0;
       End
   End;
   //PRODUTOS
	If (OrigemDesconto='PRODUTO') or (OrigemDesconto='GERAL')
   Then Begin
   	If XVLRTPROD<>0
       Then Begin
           //Efetua desconto somente para serviços
           If TipoDesconto='PERCENTO' Then
               EdtotalProd.ValueNumeric:=XVLRTPROD-(EdDescTProd.ValueNumeric*XVLRTPROD)/100
           Else
               EdDescTProd.ValueNumeric:=((XVLRTPROD-EdtotalProd.ValueNumeric)*100)/XVLRTPROD;
       End
       Else Begin
			EdtotalProd.ValueNumeric:=0;
			EdDescTProd.ValueNumeric:=0
       End;
   End;

   //ATRIBUI VALOR TOTAL DA ORDEM E DESCONTO
   EdValorOrc.ValueNumeric:=EdTotalserv.ValueNumeric+EdtotalProd.ValueNumeric+EdTotDesp.ValueNumeric;
	EdTotalOrc.ValueNumeric:=EdValorOrc.ValueNumeric;
	EdDescTOrc.ValueNumeric:=((XVLRTOTAL-EdValorOrc.ValueNumeric)*100)/XVLRTOTAL;
End;

procedure TFOrcamentoMac.LimpaCamposSERV;
begin
   EDDescricaoServ.Text:='';
   EDValorServ.Text:='0,00';
   EDQtdeServ.Text:='0,00';
   EDDescontoServ.Text:='0,00';
   EDValorTotalServ.Text:='0,00';
   FrmEquipe.EdDescricao.Text := '';
   FrmEquipe.EDCodigo.Text := '';
   DbServicoClassificacao.ListField:='';
   DbServicoClassificacao.ListField:='DESCRICAO';
   XCOD_SERVICOCLASSIFICACAO := -1;
   Try
   	DbServicoClassificacao.KeyValue  := '';
   Except
   End;    
end;

procedure TFOrcamentoMac.FrmBusca1BTNOPENClick(Sender: TObject);
begin
  inherited;
   FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', '', '', ' ORDER BY NOME');//LIBERA TODOS OS REGISTROS PARA CONSULTA
   If AbrirForm(TFCliente, FCliente, 1)='Selected'
   Then Begin
        xCodCliente:=DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;
        FrmCliente.EdDescricao.Text:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
        FrmCliente.EDCodigo.Text:=DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString;
        If not DMPESSOA.TCliente.IsEmpty Then
        Begin
          EdObsFinanceira.Text:=DMPESSOA.TCliente.FieldByName('OBSFINANCEIRA').AsString;
          If FiltraTabela(DMPESSOA.TCliente, 'CLIENTE', 'COD_CLIENTE',IntToStr(xCodCliente), '') then
          Begin
            //ANGELO - 08/06/2015 - VERIFICA SE O CLIENTE É ATACADISTA
            if DMPESSOA.TCliente.FieldByName('ATACADISTA').AsString = '1' then
              xAtacadista := True
            else
              xAtacadista := False;
            //ANGELO - 08/06/2015 - FILTRA BUSCANDO SE O CLIENTE É PESSOA JURÍDICA
            if FiltraTabela(DMPESSOA.TPessoaJ, 'PESSOAJ', 'COD_PESSOA', DMPESSOA.TCliente.FieldByName('COD_PESSOA').AsString, '') then
            begin
              //ANGELO - 08/06/2015 - VERIFICA SE O CLIENTE É DO TIPO INDÚSTRIA
              if DMPESSOA.TPessoaJ.FieldByName('INDUSTRIA').AsString = '1' then
                xIndustria := True
              else
                xIndustria := False;
            end;
          End;
        End
       Else
           EdObsFinanceira.Text:='';
           FrmPlaca.EDCodigo.SetFocus;
   end
   else Begin//caso nao seja selecionado
        xCodCliente:=-1;//-1 nao volta valor selecionado
        FrmCliente.EdDescricao.Text:='';
        FrmCliente.EDCodigo.Text:='';
        EdObsFinanceira.Text:='';
   end;
end;

procedure TFOrcamentoMac.FrmBusca2BTNOPENClick(Sender: TObject);
begin
  inherited;
    If AbrirForm(TFCadEquipamento, FCadEquipamento, 1)='Selected'
   Then Begin
       xCodEquipamento:=DMPESSOA.TEquip.FieldByName('COD_EQUIPAMENTO').AsInteger;
       FrmPlaca.EDCodigo.Text:=DMPESSOA.TEquip.FieldByName('PLACA').AsString;
       FrmPlaca.EdDescricao.Text:=DMPESSOA.TEquip.FieldByName('DESCRICAO').AsString;
       If DMPESSOA.TEquip.FieldByName('NUM_FROTA').AsString <> ''
       Then Begin
            lbNumFrota.Caption := 'Número Frota: ' + DMPESSOA.TEquip.FieldByName('NUM_FROTA').AsString;
       End
       Else Begin
            lbNumFrota.Caption := '';
       End;
      // FrmFormPag1.EDCodigo.SetFocus;

   End
   Else Begin
       if xCodEquipamento=-1
       then begin
         //XCOD_EQUIPAMENTO:=-1;
         FrmPlaca.EDCodigo.Text:='';
         FrmPlaca.EdDescricao.Text:='';
         lbNumFrota.Caption := '';
         FrmPlaca.EDCodigo.SetFocus;
       end;
   End;
   {
   FBEquipPlacaEDCodigoExit(Sender);

   FrmCliente.Repaint;
   FrmEquipe.Repaint;
   FBEquipPlaca.Repaint;
   FrmFormPag1.Repaint;
   lbNumFrota.Repaint;
    }
end;

procedure TFOrcamentoMac.FrmFormaPagBTNOPENClick(Sender: TObject);
begin
  inherited;
  If AbrirForm(TFFormPag, FFormPag, 1)='Selected'
   Then Begin
		xCodFormaPag:=DMFinanc.TFormPag.FieldByName('COD_FORMPAG').AsInteger;
    FrmFormaPag.EDCodigo.Text:=DMFinanc.TFormPag.FieldByName('COD_INTERNO').AsString;
    FrmFormaPag.EdDescricao.Text:=DMFinanc.TFormPag.FieldByName('DESCRICAO').AsString;
   	
   End
   Else Begin
      if xCodFormaPag=-1
      then begin
        FrmFormaPag.EDCodigo.Text:='';
        FrmFormaPag.EdDescricao.Text:='';
      end;
   End;

end;

procedure TFOrcamentoMac.FrmClienteEDCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
     If Key = VK_return
   Then Begin
       If FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_INTERNO', '', ' COD_INTERNO='+#39+FrmCliente.EDCodigo.Text+#39)=True
       Then Begin//CASO CONSEGUIU SELECIONAR CLIENTE
           xCodCliente:=DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;
           FrmCliente.EdDescricao.Text:=DMPESSOA.WCliente.fieldByName('NOME').AsString;
           //FrmCliente.EDCodigo.Hint:= DMPESSOA.WCliente.FieldByName('NOME').AsString;
           FrmCliente.EDCodigo.Text:=DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString;
           //verifica observacao financeira
           If FiltraTabela(DMPESSOA.TCliente, 'CLIENTE', 'COD_CLIENTE', DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsString, '')=True Then
               EdObsFinanceira.Text:=DMPESSOA.TCliente.FieldByName('OBSFINANCEIRA').AsString
           Else
               EdObsFinanceira.Text:='';
               FrmPlaca.EDCodigo.SetFocus;
       End
       Else Begin//CASO NÃO CONSEGUIU SELECIONAR CLIENTE
           xCodCliente:=-1;
           FrmCliente.EdDescricao.Text:='';
           //FrmCliente.EDCodigo.Hint:='';
           FrmCliente.EDCodigo.Text:='';
           EdObsFinanceira.Text:='';
       End;
   End;
end;

   //key down forma de pagamento
procedure TFOrcamentoMac.FrmFormaPagEDCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 inherited;
     If Key = VK_return
     then begin
     If FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'COD_INTERNO', FrmFormaPag.EDCodigo.Text, '')=True
       Then Begin
          xCodFormaPag:=DMFINANC.TFormPag.FieldByName('COD_FORMPAG').AsInteger;
          FrmFormaPag.EDCodigo.Text:=DMFINANC.TFormPag.FieldByName('COD_INTERNO').AsString;
          FrmFormaPag.EdDescricao.Text:=DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString;
       End
       Else Begin
          xCodFormaPag:=-1;
          FrmFormaPag.EDCodigo.Text:='';
          FrmFormaPag.EdDescricao.Text:='';
       End;
     end;
end;

//pesquisa codigo equipamento (placas)
procedure TFOrcamentoMac.PesquisaCodigoEquipamento(codigo:String; cliente:boolean);
begin
   // letras maiusculas
   codigo:= Trim(UpperCase(codigo));

   If codigo <> ''
   Then Begin
       DMPESSOA.TEquip.close;
       DMPESSOA.TEquip.SQL.Clear;
       DMPESSOA.TEquip.SQL.Add('select * from equipamento');
       DMPESSOA.TEquip.SQL.Add('where upper(equipamento.placa) like upper ('+#39+codigo+#39+')  AND (EQUIPAMEnTO.ATIVO='+#39+'1'+#39+')');
       DMPESSOA.TEquip.Open;
       DMPESSOA.TEquip.first;

       if not DMPESSOA.TEquip.IsEmpty
       then begin
          xCodEquipamento:=DMPESSOA.TEquip.FieldByName('COD_EQUIPAMENTO').AsInteger;
           FrmPlaca.EdDescricao.Text:=DMPESSOA.TEquip.FieldByName('DESCRICAO').AsString;
           If DMPESSOA.TEquip.FieldByName('NUM_FROTA').AsString <> ''
           Then Begin
                lbNumFrota.Caption := 'Número Frota: ' + DMPESSOA.TEquip.FieldByName('NUM_FROTA').AsString;
           End
           Else Begin
                lbNumFrota.Caption := '';
           End;


           if cliente
           then begin
               // busca o cliente q esta atrelado ao equipamento**
               FiltraTabela(DMPESSOA.WCliente,'VWCLIENTE','COD_CLIENTE',DMPESSOA.TEquip.FieldByname('cod_cliente').AsString,'');

               If Not DMPESSOA.WCliente.IsEmpty
               Then Begin
                 If DMPESSOA.WCliente.FieldByName('ATUALIZAR').AsString='1' Then
                     MessageDlg('AS INFORMAÇÕES DO CLIENTE NECESSITAM SER ATUALIZADAS', mtWarning, [mbOK], 0);

                  xCodCliente := DMPESSOA.WCliente.FieldByname('COD_CLIENTE').AsInteger;
                  FrmCliente.EDCodigo.Text := DMPESSOA.WCliente.FieldByname('cod_interno').AsString;
                  FrmCliente.EdDescricao.Text := DMPESSOA.WCliente.FieldByname('nome').AsString;
                  If FiltraTabela(DMPESSOA.TCliente, 'CLIENTE', 'COD_CLIENTE', DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsString, '')=True Then
                     EdObsFinanceira.Text:=DMPESSOA.TCliente.FieldByName('OBSFINANCEIRA').AsString
                  Else
                     EdObsFinanceira.Text:='';
               End
               Else Begin
                  xCodCliente := -1;
                  FrmCliente.EdDescricao.Text := '';
                  FrmCliente.EDCodigo.Text := '';
                  EdObsFinanceira.Text:='';
               End;
           end;

       end
       Else Begin
          xCodEquipamento := -1;
          FrmPlaca.EdDescricao.Text := '';
          lbNumFrota.Caption := '';
          FrmPlaca.EDCodigo.SelectAll;
       End;

   End;
end;

 // consulta key down placas
procedure TFOrcamentoMac.FrmPlacaEDCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
   if (FrmPlaca.EDCodigo.SelLength > 0) And NOT (KEY = 8) and not (KEY = 13) then
   begin
       FrmPlaca.EDCodigo.Text:= '';
   end;

   if (Length(FrmPlaca.EDCodigo.Text)= 3) AND NOT (KEY = 8) then BEGIN
       FrmPlaca.EDCodigo.Text := FrmPlaca.EDCodigo.Text+'-';
       FrmPlaca.EDCodigo.SelStart := 4;
   END;
   
   if key = 13
   then begin
       If FrmPlaca.EDCodigo.Text <> '' then
           PesquisaCodigoEquipamento(FrmPlaca.EDCodigo.Text, true);
   end;
end;

procedure TFOrcamentoMac.BtnNovoClick(Sender: TObject);
begin
  inherited;
        EDDescricao.SetFocus;
	     PageControl1.ActivePage := TabSheet4;
                
        //07/05/2012 - Mauro - função para limpar todos os campos
        LimparCampos();
        //07/05/2012 - Mauro - inicializa todos os codigo como nao selecionadors
        xCodCliente:=-1;
        xCodEquipamento:=-1;
        xCodFormaPag:=-1;

        try
          //comita para atualizar os dados no banco
          DMMACS.IBTCodigo.CommitRetaining;
          //07/05/2012 - Mauro - pega o codigo adicionando um valor codigo seguinte
          //ORCAMENTO nao tem auto incrementacao no codigo
          xCodOrcamento:=DMMACS.TCodigo.fieldByName('COD_ORCAMENTO').AsInteger;
          DMMACS.TCodigo.Edit;
          DMMACS.TCodigo.FieldByName('COD_ORCAMENTO').AsInteger:=xCodOrcamento+1;
          DMMACS.TCodigo.Post;
          DMMACS.IBTCodigo.CommitRetaining;
        Except
          DMMACS.IBTCodigo.RollbackRetaining;
        end;
          MDO.Query.Close;
          MDO.Query.SQL.Clear;
          MDO.Query.SQL.Add('Insert into orcamento (orcamento.cod_orcamento,orcamento.dtabert, orcamento.hrabert)');
          MDO.Query.SQL.Add('values (:cod_orcamento, :datbert, :hrabert)');
          MDO.Query.ParamByName('cod_orcamento').AsInteger:=xCodOrcamento;
          MDO.Query.ParamByName('datbert').AsDateTime:=Date();
          MDO.Query.ParamByName('hrabert').AsDateTime:=Time();
          MDO.Query.ExecSQL;
          MDO.Transac.CommitRetaining;
          


        //ATUALIZA O NUM DO ORCAMENTO PARA Q OUTROS TERMINAIS PEGUEM O NUM CORRETO
        //Altera Nº proxima ORÇAMENTO
        Try
          DMMACS.IBTCodigo.CommitRetaining;
          EDNumOrc.Text:=DMMACS.TEmpresa.fieldByName('PROXORC').AsString;
          DMMACS.TEmpresa.Edit;
          DMMacs.TEmpresa.FieldByName('PROXORC').AsString:=IntToStr(StrToInt(DMMacs.TEmpresa.FieldByName('PROXORC').AsString)+1);
          DMMACS.TEmpresa.Post;
          DMMACS.IBTCodigo.CommitRetaining;
        Except
          DMMACS.IBTCodigo.RollbackRetaining;
        End;
        FiltraSlave;//
        LiberaDados;
        LimpaCamposPROD;
        LimpaCamposSERV;
        LimparCampos;
end;

procedure TFOrcamentoMac.BtnGravarClick(Sender: TObject);
begin
    if ValidaCampos=true
    then begin
      MDO.Query.Close;
      MDO.Query.SQL.Clear;
      MDO.Query.SQL.Add(' update orcamento set orcamento.cod_cliente=:cod_cliente,orcamento.numorc=:numorc, ');
      MDO.Query.SQL.Add('      orcamento.nomecli=:nomecli, orcamento.cod_formpag=:cod_formpag, ');
      MDO.Query.SQL.Add('      orcamento.cod_equipamento=:cod_equipamento, orcamento.contato=:contato, ');
      MDO.Query.SQL.Add('      orcamento.descricao=:descricao, orcamento.obs=:obs');
      MDO.Query.SQL.Add('where orcamento.cod_orcamento=:cod_orcamento');
      MDO.Query.ParamByName('cod_orcamento').AsInteger:=xCodOrcamento;
      MDO.Query.ParamByName('numorc').AsString:=EDNumOrc.Text;
      MDO.Query.ParamByName('cod_cliente').AsInteger:=xCodCliente;
      MDO.Query.ParamByName('nomecli').AsString:=FrmCliente.EdDescricao.Text;
      MDO.Query.ParamByName('cod_formpag').AsInteger:=xCodFormaPag;
      MDO.Query.ParamByName('cod_equipamento').AsInteger:=xCodEquipamento;
      MDO.Query.ParamByName('contato').AsString:=EDContatoCliente.Text;
      MDO.Query.ParamByName('descricao').AsString:=EDDescricao.Text;
      MDO.Query.ParamByName('obs').AsString:=mObservacoes.Lines.Text;
      MDO.Query.ExecSQL;
      MDO.Transac.CommitRetaining;

      LiberaDados;
       LimpaCamposPROD;
       LimpaCamposSERV;
       LimparCampos;      
      inherited;
    end;
end;

procedure TFOrcamentoMac.DBGridCadastroPadraoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;//Ctrl+S salva o layout
   If (shift=[ssCtrl]) and (key = 83)
   Then Begin
     Try
       if not DirectoryExists('C:\MZR\Arquivos\LayoutGrid\') then begin
           ForceDirectories('C:\MZR\Arquivos\LayoutGrid\');
       end;
       DBGridCadastroPadrao.Columns.SaveToFile('C:\MZR\Arquivos\LayoutGrid\OrcamentoMec.lgm');
       Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Layout da Grid foi salvo com sucesso!', '', 1, 1, false, 'i');
     Except
           Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Falha na tentativa de salvar o layout da grid!', '', 1, 1, false, 'i');
     End;
   End;
end;

procedure TFOrcamentoMac.FormActivate(Sender: TObject);
begin
  inherited;
	 Caption:='Orçamento';  
  FiltraClassificaoServico;

   XTabela:=DMSAIDA.TOrc;
   XCampo:='NUMORC';
   XPkTabela:='COD_ORCAMENTO';
   XTransaction:=DMSAIDA.IBT;
   XView:=DMSAIDA.WOrc;
   XTab:=False;
   XDescricao:=' o orçamento ';
   XSQLTABELA:='ORCAMENTO';
   XSQLVIEW:= 'VWORCAMENTO';
   XLiberaDados:='ORDER BY NUMORC DESC, NOMECLI';
   LiberaDados;
   
   //setando os DataSource das tabelas
   DBGridCadastroPadrao.DataSource:=DMSAIDA.DWOrc;
   DBGridProdutos.DataSource:=DMESTOQUE.DSSlave;
   DBGridServ.DataSource:=DMESTOQUE.DSAlx3;

   If FileExists('C:\MZR\Arquivos\LayoutGrid\OrcamentoMec.lgm') Then
   	DBGridCadastroPadrao.Columns.LoadFromFile('C:\MZR\Arquivos\LayoutGrid\OrcamentoMec.lgm');
end;


procedure TFOrcamentoMac.BtnConsultarClick(Sender: TObject);
begin
  inherited;
   if FiltraTabela(DMSAIDA.TOrc, 'orcamento', 'cod_orcamento', DMSAIDA.WOrc.fieldByName('cod_orcamento').AsString, '')=true
    then begin

     FrmCliente.EDCodigo.Text:=DMSAIDA.TOrc.fieldByName('cod_cliente').AsString;
     FrmCliente.EdDescricao.Text:=DMSAIDA.TOrc.fieldByName('nomecli').AsString;
     FrmFormaPag.EDCodigo.Text:=DMSAIDA.TOrc.fieldByName('cod_formpag').AsString;
     FrmFormaPag.EdDescricao.Text:=DMSAIDA.WOrc.fieldByName('formpag').AsString;
     EDDescricao.Text:=DMSAIDA.TOrc.fieldByName('descricao').AsString;
     EDContatoCliente.Text:=DMSAIDA.TOrc.fieldByName('contato').AsString;
     EdObsFinanceira.Text:=DMSAIDA.TOrc.fieldByName('obs').AsString;
     EDNumOrc.Text:=DMSAIDA.TOrc.fieldByName('numorc').AsString;
     mObservacoes.Lines.Text := DMSAIDA.TOrc.fieldByName('obs').AsString;

     xCodOrcamento:=DMSAIDA.TOrc.fieldByName('cod_orcamento').AsInteger;
     xCodCliente:=DMSAIDA.TOrc.fieldByName('cod_cliente').AsInteger;
     xCodEquipamento:=DMSAIDA.TOrc.fieldByName('cod_equipamento').AsInteger;
     xCodFormaPag:=DMSAIDA.TOrc.fieldByName('cod_formpag').AsInteger;

     FiltraSlave;

    if FiltraTabela(DMPESSOA.TCliente, 'cliente', 'cod_cliente', DMSAIDA.TOrc.fieldByName('cod_cliente').AsString, '')=true
    then begin
       EdObsFinanceira.Text:=DMPESSOA.TCliente.fieldByName('obsfinanceira').AsString;
       //ANGELO - 08/06/2015 - VERIFICA SE O CLIENTE É ATACADISTA
         if DMPESSOA.TCliente.FieldByName('ATACADISTA').AsString = '1' then
           xAtacadista := True
         else
           xAtacadista := False;
         //ANGELO - 08/06/2015 - FILTRA BUSCANDO SE O CLIENTE É PESSOA JURÍDICA
         if FiltraTabela(DMPESSOA.TPessoaJ, 'PESSOAJ', 'COD_PESSOA', DMPESSOA.TCliente.FieldByName('COD_PESSOA').AsString, '') then
         begin
           //ANGELO - 08/06/2015 - VERIFICA SE O CLIENTE É DO TIPO INDÚSTRIA
           if DMPESSOA.TPessoaJ.FieldByName('INDUSTRIA').AsString = '1' then
             xIndustria := True
           else
             xIndustria := False;
         end;           
    end;
    if FiltraTabela(DMPESSOA.TEquip, 'equipamento', 'cod_equipamento', DMSAIDA.TOrc.fieldByName('cod_equipamento').AsString, '')=true
    then begin
        FrmPlaca.EDCodigo.Text:=DMPESSOA.TEquip.fieldByName('placa').AsString;
        FrmPlaca.EdDescricao.Text:=DMPESSOA.TEquip.fieldByName('descricao').AsString;
        lbNumFrota.Caption := 'Número Frota: ' + DMPESSOA.TEquip.FieldByName('NUM_FROTA').AsString;
    end
    end;

    PageControl1.ActivePage := TabSheet4;
    LiberaDados;
    LimpaCamposPROD;
end;

//FILTRASLAVE
//FILTRA OS REGISTROS DE PRODUTOS E SERVIÇOS PERTENCENTES A ORDEM
Procedure TFOrcamentoMac.FiltraSlave;
var
	XDESCMOEDA: real;
Begin
   XVLRTVISTA:=0;
   XVLRUNITVISTA:=0;
   //FrmCliente.Repaint;
   //FrmEquipe.Repaint;
   //FBEquipPlaca.Repaint;
   //FrmFormPag.Repaint;

	//TRABALHA COM PRODUTOS DA ORDEM
   //CALCULA TOTAL
	DMESTOQUE.TSlave.Close;
	DMESTOQUE.TSlave.SQL.Clear;
	DMESTOQUE.TSlave.SQL.Add('Select Sum(ITPRODORC.VLRTOTAL) as VLRTOTAL From ITPRODORC ');
	DMESTOQUE.TSlave.SQL.Add('Where ITPRODORC.COD_ORCAMENTO=:COD_ORCAMENTO ');
	DMESTOQUE.TSlave.ParamByName('COD_ORCAMENTO').AsInteger:=xCodOrcamento;
	DMESTOQUE.TSlave.Open;

	If XCONTROLECONSULTA = False Then
  		EdTotalPROD.ValueNumeric:=DMESTOQUE.TSlave.FieldByName('VLRTOTAL').AsCurrency;
  	XVLRTPROD:=DMESTOQUE.TSlave.FieldByName('VLRTOTAL').AsCurrency;
   
  //INSERE COMANDOS PARA FILTRAR
 	DMESTOQUE.TSlave.Close;
	DMESTOQUE.TSlave.SQL.Clear;
	DMESTOQUE.TSlave.SQL.Add('Select itprodorc.cod_itprodorc, unidade.sigla_unid as UNIDADE, itprodorc.cod_orcamento, itprodorc.cod_estoque, itprodorc.qtd, itprodorc.vlrtotal, ');
	DMESTOQUE.TSlave.SQL.Add('itprodorc.desconto, itprodorc.vlrunit, subproduto.descricao, subproduto.marca, SubProduto.CODPRODFABR,');
   DMESTOQUE.TSlave.sql.Add('subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL1').AsString+' AS PRIMCOD, subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL2').AsString+' AS SEGCOD ');
	DMESTOQUE.TSlave.SQL.Add('From itprodorc left Join estoque on itprodorc.cod_estoque = estoque.cod_estoque ');
	DMESTOQUE.TSlave.SQL.Add('Left Join subproduto on estoque.cod_subprod = subproduto.cod_subproduto ');
	DMESTOQUE.TSlave.SQL.Add('Left Join unidade on subproduto.cod_unidvenda = unidade.cod_unidade ');
	DMESTOQUE.TSlave.SQL.Add('Where itprodorc.cod_orcamento =:COD_ORCAMENTO ');
	DMESTOQUE.TSlave.ParamByName('COD_ORCAMENTO').AsInteger:=xCodOrcamento;
   DMESTOQUE.TSlave.SQL.Add('order by itprodorc.cod_itprodorc desc');
	DMESTOQUE.TSlave.Open;


   //TRABALHANDO COM DESPESAS

   DMESTOQUE.Alx2.Close;
   DMESTOQUE.Alx2.SQL.Clear;
   DMESTOQUE.Alx2.SQL.Add('select Sum(despadic.vlrtotfin) AS VLRTOTFIN From despadic Where (despadic.gerador='+#39+'ORCMEC'+#39+') AND (despadic.cod_gerador=:COD_GERADOR)');
   DMESTOQUE.Alx2.ParamByName('COD_GERADOR').AsInteger:=xCodOrcamento;
   DMESTOQUE.Alx2.Open;
	If XCONTROLECONSULTA = False Then
   	EDTotalServ.ValueNumeric:=DMESTOQUE.Alx2.FieldByName('VLRTOTFIN').AsCurrency;
   XVLRTSERV:=DMESTOQUE.Alx2.FieldByName('VLRTOTFIN').AsCurrency;

   {DMESTOQUE.Alx3.Close;
   DMESTOQUE.Alx3.SQL.Clear;
   DMESTOQUE.Alx3.SQL.Add('select * from despadic');
   DMESTOQUE.Alx3.SQL.Add('left join equipe on despadic.cod_equipe = equipe.cod_equipe');
   DMESTOQUE.Alx3.SQL.Add('where (despadic.cod_gerador= :cod) and (despadic.gerador='+#39+'ORCMEC'+#39+')');
   DMESTOQUE.Alx3.SQL.Add('order by despadic.cod_despadic desc');
   DMESTOQUE.Alx3.ParamByName('cod').AsInteger:=xCodOrcamento;
   DMESTOQUE.Alx3.Open;  }

    DMESTOQUE.Alx3.Close;
    DMESTOQUE.Alx3.SQL.Clear;
    DMESTOQUE.Alx3.SQL.Add(' select * from despadic');
    DMESTOQUE.Alx3.SQL.Add(' left join equipe on despadic.cod_equipe = equipe.cod_equipe');
    DMESTOQUE.Alx3.SQL.Add(' left join vwsubservico on despadic.cod_servico = vwsubservico.cod_subservico ');
    DMESTOQUE.Alx3.SQL.Add(' where (despadic.cod_gerador= :cod) and (despadic.gerador=' + #39 + 'ORCMEC' + #39 + ')');
    DMESTOQUE.Alx3.SQL.Add(' order by despadic.cod_despadic desc');
    DMESTOQUE.Alx3.ParamByName('cod').AsInteger := xCodOrcamento;
    DMESTOQUE.Alx3.Open;   


   //FILTRA DESPESAS
   DMESTOQUE.TDesp.Close;
   DMESTOQUE.TDesp.SQL.Clear;
   DMESTOQUE.TDesp.SQL.Add('select despadic.* ,');
   DMESTOQUE.TDesp.SQL.Add('equipe.cod_equipe, equipe.descricao ');
   DMESTOQUE.TDesp.SQL.Add('From despadic ');
   DMESTOQUE.TDesp.SQL.Add('LEFT JOIN EQUIPE ON DESPADIC.COD_EQUIPE = EQUIPE.COD_EQUIPE');
   DMESTOQUE.TDesp.SQL.Add('Where (despadic.gerador='+#39+'ORCMEC'+#39+') AND (despadic.cod_gerador=:COD_GERADOR)');
	DMESTOQUE.TDesp.ParamByName('COD_GERADOR').AsInteger:=xCodOrcamento;
   DMESTOQUE.TDesp.SQL.Add('order by despadic.cod_despadic desc');
	DMESTOQUE.TDesp.Open;

	XCONTROLECONSULTA := False;
   //ATRIBUI TOTAL VENDIDO SEM DESCONTO À VARIAVEL
   XVLRTOTAL:=XVLRTPROD+XVLRTSERV+EdTotDesp.ValueNumeric;

   EfetuaDesconto('GERAL', 'PERCENTO');
   Exit;
End;

procedure TFOrcamentoMac.BtnCancelarClick(Sender: TObject);
begin
   //inherited;
   //filtra a função slave
   FiltraSlave;
   //10/05/2012 - Mauro - verifica se esta vazio e exclui o orçamento vazio
   if (DMESTOQUE.TSlave.IsEmpty) AND (DMESTOQUE.TSlaveServ.IsEmpty) AND (DMESTOQUE.Alx3.IsEmpty)
   then begin
       If Mensagem('   A T E N Ç Ã O   ','A Ordem de Serviço atual não possui produtos e serviços inclusos. Deseja apagá-la ?','',2,3,false,'A')=2
       Then Begin
           MDO.Query.Close;
           MDO.Query.SQL.Clear;
           MDO.Query.SQL.Add('delete from orcamento');
           MDO.Query.SQL.Add('where orcamento.cod_orcamento=:cod_orcamento');
           MDO.Query.ParamByName('cod_orcamento').AsInteger:=xCodOrcamento;
           MDO.Query.ExecSQL;
           MDO.Transac.CommitRetaining;
           LiberaDados;
           LimpaCamposPROD;
           LimpaCamposSERV;
           LimparCampos;
           inherited;
       end;
   end
   Else Begin
       LimpaCamposPROD;
       LimpaCamposSERV;
       LimparCampos;
       inherited;       
   End;

end;

procedure TFOrcamentoMac.BtnApagarClick(Sender: TObject);
begin
  inherited;
      FiltraTabela(DMSAIDA.TOrc, 'orcamento', 'cod_orcamento', DMSAIDA.WOrc.fieldByName('cod_orcamento').AsString, '');
      xCodOrcamento:=DMSAIDA.WOrc.fieldByName('cod_orcamento').AsInteger;
      FiltraSlave;
      
      If (Not DMESTOQUE.TSlave.IsEmpty) or (Not DMESTOQUE.TDesp.IsEmpty)or (Not DMESTOQUE.TSlaveServ.IsEmpty)
      Then Begin
        Mensagem('OPÇÃO BLOQUEADA', 'ANTES DE REMOVER ESTA ORDEM É NECESSÁRIO REMOVER TODOS OS PRODUTOS E SERVIÇOS DO ORÇAMENTO '+'Nº '+XView.FieldByName('NUMORC').AsString+'.', '', 1, 1, False, 'a');
      end
        else begin
          If Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Deseja realmente apagar o orçamento'+#13+'Nº '+XView.FieldByName('NUMORC').AsString+'?'  , '', 2, 3, False, 'c')= 2
          then begin
          MDO.Query.Close;
          MDO.Query.SQL.Clear;
          MDO.Query.SQL.Add('delete from orcamento');
          MDO.Query.SQL.Add('where orcamento.cod_orcamento=:cod_orcamento');
          MDO.Query.ParamByName('cod_orcamento').AsInteger:=xCodOrcamento;
          MDO.Query.ExecSQL;
          MDO.Transac.CommitRetaining;
          LiberaDados;
          Exit;
        End;
      End;
end;

//16/05/2012 - Mauro - Retorna os valores na labels e edits após remover o produto da tabela
Procedure TFOrcamentoMac.EscreveLabelsPRODRemover;
Begin
      xCodItemProd:=DMESTOQUE.TSlave.fieldByName('cod_itprodorc').AsInteger;
      xCodEstoque:=DMESTOQUE.TSlave.FieldByName('cod_estoque').AsInteger;
      xCodOrcamento:=DMESTOQUE.TSlave.fieldByName('cod_orcamento').AsInteger;
      EDQtde.ValueNumeric:=DMESTOQUE.TSlave.fieldByName('qtd').AsCurrency;
      EDDescProd.ValueNumeric:=DMESTOQUE.TSlave.fieldByName('desconto').AsCurrency;
      EDValorUnit.ValueNumeric:=DMESTOQUE.TSlave.fieldByName('vlrunit').AsCurrency;
      EDValorTotal.ValueNumeric:=DMESTOQUE.TSlave.fieldByName('vlrtotal').AsCurrency;
      lbProduto.Caption:=DMESTOQUE.TSlave.fieldByName('descricao').AsString;

      If DMEstoque.TSlave.FieldByName('Marca').asstring<>'' Then
        lbProduto.Caption:=lbProduto.Caption+'     Marca: '+dMEstoque.TSlave.FieldByName('Marca').asstring;
      If FiltraTabela(DMEstoque.TEstoque, 'ESTOQUE', 'COD_ESTOQUE', DMEstoque.TSlave.FieldByName('COD_ESTOQUE').AsString, '')=False Then
        lbSaldoEstoque.Caption:=FormatFloat('#,###0.000', DMEstoque.TEstoque.FieldByName('ESTSALDO').AsCurrency);
        lbEstoque.Caption:=FormatFloat('#,###0.000', DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency);

         
End;


//Filtra as tabelas e escreve em edits e labels as informações dos produtos selecionado
Procedure TFOrcamentoMac.EscreveLabelsPROD;
Begin
	//Filtra tabela de subproduto de acordo com o produto selecionada em fproduto
	If FiltraTabela(DMEstoque.TSubProd, 'SUBPRODUTO', 'COD_SUBPRODUTO', DMEstoque.WSimilar.FieldByName('COD_SUBPRODUTO').AsString, '')=False Then
		Exit;

   //Filtra tabela de estoque de acordo com o produto selecionada em fproduto
	If FiltraTabela(DMEstoque.TEstoque, 'ESTOQUE', 'COD_ESTOQUE', DMEstoque.WSimilar.FieldByName('COD_ESTOQUE').AsString, '')=False Then
   	Exit;

   // por questao de garantia o codigo de estoque do produto selecionado esta sendo atribuido á variavel pois jah que ela naum eh usada em nenhum outro momento, nao tem a possibilidade de ter seu valor alterado
   xCodEstoque := DMEstoque.WSimilar.FieldByName('COD_ESTOQUE').AsInteger;
    { If (EDQtde.ValueNumeric>=DMEstoque.TSubProd.FieldByName('QTDATC').AsCurrency) And (DMEstoque.TSubProd.FieldByName('QTDATC').AsString<>'')
     //atacado
     Then Begin//caso ocorra esta condição significa que o produto esta com quantidade igual ou superior a de atacado e deve ser vendido em preço de atacado
         If FrmFormaPag.EdDescricao.Text = 'À VISTA'
         Then Begin //A venda esta sendo a vista então o preço de venda deve ser no atacado a vista
             EDValorUnit.Text := FormatCurr('0.00',DMEstoque.TEstoque.FieldByName('vendatav').AsCurrency);
         End
         Else Begin
             EDValorUnit.Text := FormatCurr('0.00',DMEstoque.TEstoque.FieldByName('vendatap').AsCurrency);
         End;
     End

     //varejo
     Else Begin
         If FrmFormaPag.EdDescricao.Text = 'À VISTA'
         Then Begin
             EDValorUnit.Text := FormatCurr('0.00',DMEstoque.WSimilar.FieldByName('VENDVARV').AsCurrency);
         End
         Else Begin
             EDValorUnit.Text := FormatCurr('0.00',DMEstoque.WSimilar.FieldByName('VENDVARP').AsCurrency);

         End;
     End; }
   //ANGELO - 08-06-2015 - CONTROLE AUTOMÁTICO DE VALOR DE VENDA PARA ATACADO, VAREJO E INDÚSTRIA
   if DMMACS.TLoja.FieldByName('TIPOVENDA').AsString = '0' then
   begin
       //ANGELO - 08-06-2015  - SE O CLIENTE FOR DO TIPO INDÚSTRIA
       if xIndustria then
       begin//busca o valor correspondente sendo a prazo ou a vista
           If FrmFormaPag.EdDescricao.Text = 'À VISTA' then
               EDValorUnit.Text := FormatCurr('0.00', DMEstoque.TEstoque.FieldByName('VENDINDV').AsCurrency)
           else
               EDValorUnit.Text := FormatCurr('0.00', DMEstoque.TEstoque.FieldByName('VENDINDP').AsCurrency);
       end
			else
       begin
           if xAtacadista then
           begin
              If FrmFormaPag.EdDescricao.Text = 'À VISTA' then
                 EDValorUnit.Text := FormatCurr('0.00', DMEstoque.TEstoque.FieldByName('VENDATAV').AsCurrency)
              else
                 EDValorUnit.Text := FormatCurr('0.00', DMEstoque.TEstoque.FieldByName('VENDATAP').AsCurrency);
           end
           else
              If FrmFormaPag.EdDescricao.Text = 'À VISTA' then
                 EDValorUnit.Text := FormatCurr('0.00', DMEstoque.TEstoque.FieldByName('VENDVARV').AsCurrency)
              else
                 EDValorUnit.Text := FormatCurr('0.00', DMEstoque.TEstoque.FieldByName('VENDVARP').AsCurrency);
       end;
   end
   else begin
       If (EdQtde.ValueNumeric>=DMEstoque.TSubProd.FieldByName('QTDATC').AsCurrency) And (DMEstoque.TSubProd.FieldByName('QTDATC').AsString<>'')
       Then Begin//caso ocorra esta condição significa que o produto esta com quantidade igual ou superior a de atacado e deve ser vendido em preço de atacado
           EDValorUnit.Text := FormatCurr('0.00',DMEstoque.TEstoque.FieldByName('vendatap').AsCurrency);
       End
       Else Begin
           EDValorUnit.Text :=FormatCurr('0.00',DMEstoque.TEstoque.FieldByName('vendVARP').AsCurrency);
       End;
   end;

 	//Passa os valores do produto selecionado para as labels
   lbProduto.Caption:=DMEstoque.TSubProd.FieldByName('DESCRICAO').AsString;
   If  DMEstoque.TSubProd.FieldByName('Marca').asstring<>'' Then
       lbProduto.Caption:=lbProduto.Caption+'     Marca: '+dMEstoque.TSubProd.FieldByName('Marca').asstring;
	If DMEstoque.TSubProd.FieldByName('LOCALESTANTE').asstring<>'' Then
   LbLocal.Caption:='Estante: '+DMEstoque.TSubProd.FieldByName('LOCALESTANTE').asstring;
   lbEstoque .Caption:=FormatFloat('#,###0.000', DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency);
   lbSaldoEstoque.Caption:=FormatFloat('#,###0.000', DMEstoque.TEstoque.FieldByName('ESTSALDO').AsCurrency);


   //PASSA VALORES PARA O PAINEL DE CONSULTA DE PREÇOS
   {EdVlrAtacadoPrazo.ValueNumeric:=DMESTOQUE.TEstoque.FieldByName('VENDATAP').AsCurrency;
   EdVlrAtacadoVista.ValueNumeric:=DMESTOQUE.TEstoque.FieldByName('VENDATAV').AsCurrency;
   EdVlrVarejoPrazo.ValueNumeric:=DMESTOQUE.TEstoque.FieldByName('VENDVARP').AsCurrency;
   EdVlrVarejoVista.ValueNumeric:=DMESTOQUE.TEstoque.FieldByName('VENDVARV').AsCurrency; }
End;

procedure TFOrcamentoMac.LimpaCamposPROD;
begin

   EDCodProd.Clear;
   EDQtde.Text := '0,00';
   EDValorUnit.Text := '0,00';
   EDDescProd.Text := '0,00';
   EDValorUnit.Text := '0,00';
   EDValorTotal.Text:= '0,00';
   lbEstoque.Caption:='';
   lbSaldoEstoque.Caption:='';
   lbProduto.Caption:='';
   LbLocal.Caption := '';

   //limpa edits do painel de preços
   //EdVlrAtacadoPrazo.text:='0,00';
   //EdVlrAtacadoVista.text:='0,00';
   //EdVlrVarejoPrazo.text:='0,00';
   //EdVlrVarejoVista.text:='0,00';
end;

//ADICIONAR PRODUTO
procedure TFOrcamentoMac.BTNAddProdClick(Sender: TObject);
begin
  inherited;
    if AbrirForm(TFProduto, Fproduto, 1)='Selected'
     then begin
       EscreveLabelsPROD;
       EDCodProd.Text := '';
       EDQtde.Text := '1,00';
       EDQtdeExit(Sender);
       EDQtde.SetFocus;
    end
    else begin
      LimpaCamposPROD;
      lbProduto.Caption:='PRODUTO NÃO ENCONTRADO';

    end;
end;

//key up pesquisa do produto
procedure TFOrcamentoMac.EDCodProdKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
	xPesqDescricao, xPesqCtrlInt, xPesqCodFab: Boolean;
begin
  inherited;
	PListaProdutos.Visible := True;
   PListaProdutos.BringToFront;

   If Key = VK_ESCAPE
   Then Begin
      FiltraProdutos;

      PListaProdutos.Visible := False;
      PListaProdutos.SendToBack;
      EDCodProd.Text := '';
      lPesquisa.Caption := 'Pesquisa:';

      LimpaCamposProd;

      Exit;
   End;

   If EDCodProd.Text = '' then
   begin
   	PListaProdutos.Visible := False;
       PListaProdutos.SendToBack;       
       lPesquisa.Caption := 'Pesquisa:';

       Exit;       
   end;

   If Key = Vk_Return then
   begin
      DMESTOQUE.WSimilar.Close;
      DMESTOQUE.WSimilar.SQL.Clear;
      DMESTOQUE.WSimilar.SQL.Add('select * from vwsimilar where (vwsimilar.cod_estoque=:Codigo) AND  (VWSIMILAR.ATIVO=' + #39 + 'S' + #39 + ')');
      DMESTOQUE.WSimilar.ParamByName('CODIGO').AsString := XCodTmpEstoque;
      DMESTOQUE.WSimilar.Open;

      If Not DMESTOQUE.WSimilar.IsEmpty then
  	   begin
      		EscreveLabelsPROD;
      		PListaProdutos.Visible := False;
	        PListaProdutos.SendToBack;           
      		EDCodProd.Text := '';
      		EDQtde.Text := '1,00';
      end
      else
      		MessageDlg('ATENÇÃO!' + #13 + #10 + 'O produto selecionado não foi escrito', mtWarning, [mbOK], 0);

      FiltraProdutos;
      EDQtde.SetFocus;
      Exit;
   End;

    If Key = Vk_Down then
    begin
        DMESTOQUE.WSimilar.Next;
        XCodTmpEstoque := DBGrid1.Columns[0].Field.Text;

        Exit;
    End;

    if Key = Vk_UP then
    begin
        DMESTOQUE.WSimilar.Prior;
        XCodTmpEstoque := DBGrid1.Columns[0].Field.Text;

        Exit;
    end;

	if DMESTOQUE.WSimilar.Locate('DESCRICAO', EDCodProd.Text, [loCaseInsensitive, loPartialKey]) then
   begin
   	if not xPesqDescricao then
       begin
           DMESTOQUE.WSimilar.Close;
           DMESTOQUE.WSimilar.SQL.Clear;
           DMESTOQUE.WSimilar.SQL.Add('SELECT * FROM VWSIMILAR WHERE (VWSIMILAR.ATIVO =' + #39 + 'S' + #39 + ') ORDER BY DESCRICAO');
           DMESTOQUE.WSimilar.Open;

           xPesqDescricao := True;
           xPesqCtrlInt := False;
           xPesqCodFab := False;

           DMESTOQUE.WSimilar.Locate('DESCRICAO', EDCodProd.Text, [loCaseInsensitive, loPartialKey]);       
       end;
   	lPesquisa.Caption := 'Descrição:';
		XCodTmpEstoque := DBGrid1.Columns[0].Field.Text;

       Exit;
   end;

   if DMESTOQUE.WSimilar.Locate('CODFABRICANTE', EDCodProd.Text, [loCaseInsensitive, loPartialKey]) then
   begin
       if not xPesqCodFab then
		begin
           DMESTOQUE.WSimilar.Close;
           DMESTOQUE.WSimilar.SQL.Clear;
           DMESTOQUE.WSimilar.SQL.Add('SELECT * FROM VWSIMILAR WHERE (VWSIMILAR.ATIVO =' + #39 + 'S' + #39 + ') ORDER BY CODFABRICANTE');
           DMESTOQUE.WSimilar.Open;

           xPesqCodFab := True;
           xPesqCtrlInt := False;
           xPesqDescricao := False;

       	DMESTOQUE.WSimilar.Locate('CODFABRICANTE', EDCodProd.Text, [loCaseInsensitive, loPartialKey]);
       end;

       lPesquisa.Caption := 'Cod. Fabricante:';
       XCodTmpEstoque := DBGrid1.Columns[0].Field.Text;

       Exit;
   end;

   if DMESTOQUE.WSimilar.Locate('CONTRINT', EDCodProd.Text, [loCaseInsensitive, loPartialKey]) then
   begin
   	if not xPesqCtrlInt then
       begin
           DMESTOQUE.WSimilar.Close;
           DMESTOQUE.WSimilar.SQL.Clear;
           DMESTOQUE.WSimilar.SQL.Add('SELECT * FROM VWSIMILAR WHERE (VWSIMILAR.ATIVO =' + #39 + 'S' + #39 + ') ORDER BY CONTRINT');
           DMESTOQUE.WSimilar.Open;

           xPesqCtrlInt := True;
           xPesqCodFab := False;
           xPesqDescricao := False;

       	DMESTOQUE.WSimilar.Locate('CONTRINT', EDCodProd.Text, [loCaseInsensitive, loPartialKey]);
       end;
       
       lPesquisa.Caption := 'Ctrl. Interno:';
       XCodTmpEstoque := DBGrid1.Columns[0].Field.Text;

       Exit;
   end;
   
   XCodTmpEstoque := DBGrid1.Columns[0].Field.Text;
   lPesquisa.Caption := 'Fora de Pesquisa';
end;



//Botao inserir produto
procedure TFOrcamentoMac.BtnInserirProdClick(Sender: TObject);
begin
  inherited;
    //11/05/2012 - Mauro - valida os campos dos itens de produto
   if validaCamposItensProd=true
   then begin
    //11/05/2012 - Mauro - pega o codigo adicionando um codigo seguinte
   //ITENS DO PRODUTO ORCAMENTO nao tem auto incrementacao no codigo
   try
      xCodItemProd:=DMMACS.TCodigo.fieldByName('COD_ITPRODORC').AsInteger;
      DMMACS.TCodigo.Edit;
      DMMACS.TCodigo.FieldByName('COD_ITPRODORC').AsInteger:=xCodItemProd+1;
      DMMACS.TCodigo.Post;
      DMMACS.IBTCodigo.CommitRetaining;
   Except
      DMMACS.IBTCodigo.RollbackRetaining;
   end;
       MDO.Query.Close;
       MDO.Query.SQL.Clear;
       MDO.Query.SQL.Add('insert into itprodorc (itprodorc.cod_itprodorc ,itprodorc.cod_orcamento, itprodorc.cod_estoque ,itprodorc.qtd, itprodorc.desconto, itprodorc.vlrunit, itprodorc.vlrtotal)');
       MDO.Query.SQL.Add('values (:cod_itprodorc, :cod_orcamento, :cod_estoque, :qtd, :desconto , :vlrunit , :vlrtotal)');
       MDO.Query.ParamByName('cod_itprodorc').AsInteger:=xCodItemProd;
       MDO.Query.ParamByName('cod_orcamento').AsInteger:=xCodOrcamento;
       MDO.Query.ParamByName('cod_estoque').AsInteger:=xCodEstoque;
       MDO.Query.ParamByName('qtd').AsCurrency:=EDQtde.ValueNumeric;
       MDO.Query.ParamByName('desconto').AsCurrency:=EDDescProd.ValueNumeric;
       MDO.Query.ParamByName('vlrunit').AsCurrency:=EDValorUnit.ValueNumeric;
       MDO.Query.ParamByName('vlrtotal').AsCurrency:=EDValorTotal.ValueNumeric;

       MDO.Query.ExecSQL;
       MDO.Transac.CommitRetaining;

       DMESTOQUE.TransacEstoque.CommitRetaining;
       FiltraSlave;
       //LiberaDados;
       LimpaCamposPROD;
       LimpaCamposSERV;  
   end;

   EDCodProd.SetFocus;
End;

procedure TFOrcamentoMac.EDQtdeExit(Sender: TObject);
begin
  inherited;
    If (EDQtde.ValueNumeric<>0) And (EDValorUnit.ValueNumeric<>0)
   Then Begin
		CalcPercent(EDDescProd.ValueNumeric, 0, (EDQtde.ValueNumeric*EDValorUnit.ValueNumeric), 'D');
	    EDValorTotal.ValueNumeric:=AlxCalculo;
   End;
end;

procedure TFOrcamentoMac.EDQtdeKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
    if Key = #13 then
      EDDescProd.SetFocus;

end;
//key press valor total
procedure TFOrcamentoMac.EDValorTotalKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
    If Key=#13
   Then Begin
		CalcPercent(0, (EDQtde.ValueNumeric*EDValorUnit.ValueNumeric)- EDValorTotal.ValueNumeric, (EDQtde.ValueNumeric*EDValorUnit.ValueNumeric), 'D');
		EDDescProd.ValueNumeric:=AlxPercento;
    BtnInserirProd.SetFocus;
   End;
end;
//on exit valor total
procedure TFOrcamentoMac.EDValorTotalExit(Sender: TObject);
begin
  inherited;
    //CalcPercent(0, (EDQtde.ValueNumeric*EDValUnit.ValueNumeric)- EdtotalProd.ValueNumeric, (EDQtde.ValueNumeric*EDValorUnit.ValueNumeric), 'D');
	  //EDDescProd.ValueNumeric:=AlxPercento;
end;
//on exit desconto
procedure TFOrcamentoMac.EDDescProdExit(Sender: TObject);
begin
  inherited;
     If (EDQtde.ValueNumeric<>0) And (EDValorUnit.ValueNumeric<>0)
   Then Begin
		CalcPercent(EDDescProd.ValueNumeric, 0, (EDQtde.ValueNumeric*EDValorUnit.ValueNumeric), 'D');
	    EDValorTotal.ValueNumeric:=AlxCalculo;
   End;
end;
//key press desconto
procedure TFOrcamentoMac.EDDescProdKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
    if key = #13
   then begin
       EDDescProd.SetFocus;
       exit;
   end;
   {//EFETUA CONTROLE DE ACESSO
   If ControlAccess('DESCPROD', 'M')=False Then
  		Key:=#0;}
end;

procedure TFOrcamentoMac.BtnRemoverProdClick(Sender: TObject);
begin
  inherited;
    If Mensagem('   A T E N Ç Ã O   ','Deseja realmente apagar o produto ' + DMESTOQUE.TSlave.FieldByname('descricao').AsString + ' ?','',2,3,false,'I')=3
     then begin
      Exit;
    End;

      EscreveLabelsPRODRemover;
      MDO.Query.Close;
      MDO.Query.SQL.Clear;
      MDO.Query.SQL.Add('delete from itprodorc');
      MDO.Query.SQL.Add('where itprodorc.cod_itprodorc=:cod_itprodorc');
      MDo.Query.ParamByName('cod_itprodorc').AsInteger:=xCodItemProd;
      MDO.Query.ExecSQL;
      MDO.Transac.CommitRetaining;

      FiltraSlave;
      LiberaDados;
      Exit;
  
end;
//Botao Inserir servicos
procedure TFOrcamentoMac.BtnInserirServClick(Sender: TObject);
begin
  inherited;
   if ValidaCamposItensServ=true
   then begin
//		 xCodDespesas:= StrToInt(RetornaValorValido('DESPADIC', 'COD_DESPADIC'));
        MDO.Query.Close;
        MDO.Query.SQL.Clear;
        MDO.Query.SQL.Add('insert into despadic (despadic.cod_gerador, despadic.despesa, despadic.desconto, despadic.qtd, despadic.vlrfinal, despadic.vlrtotfin, despadic.gerador, despadic.cod_equipe, cod_servico)');
        MDO.Query.SQL.Add('values (:cod_gerador, :despesa, :desconto, :qtd, :vlrfinal, :vlrtotfin, :gerador, :equipe, :servico)');
  //      MDO.Query.ParamByName('cod_despadic').AsInteger:=xCodDespesas;
        MDO.Query.ParamByName('cod_gerador').AsInteger:=xCodOrcamento;
        MDO.Query.ParamByName('gerador').AsString:='ORCMEC';
        MDO.Query.ParamByName('despesa').AsString:=EDDescricaoServ.Text;
        MDO.Query.ParamByName('desconto').AsCurrency:=EDDescontoServ.ValueNumeric;
        MDO.Query.ParamByName('qtd').AsCurrency:=EDQtdeServ.ValueNumeric;
        MDO.Query.ParamByName('vlrfinal').AsCurrency:=EDValorServ.ValueNumeric;
        MDO.Query.ParamByName('vlrtotfin').AsCurrency:=EDValorTotalServ.ValueNumeric;
        MDO.Query.ParamByName('equipe').AsString := FrmEquipe.EDCodigo.Text;
        MDO.Query.ParamByName('servico').AsInteger := XCOD_SERVICOCLASSIFICACAO;
        MDO.Query.ExecSQL;
        MDO.Transac.CommitRetaining;

        DMESTOQUE.TransacEstoque.CommitRetaining;
        LimpaCamposSERV;
        FiltraClassificaoServico;
        FiltraSlave;
        EfetuaDesconto('GERAL', 'PERCENTO');
	     EDDescricaoServ.SetFocus;        
        Exit;
	end;
end;

procedure TFOrcamentoMac.EDValorServExit(Sender: TObject);
begin
  inherited;
  if EDQtdeServ.ValueNumeric = 0 then
  //EQtdServ.Text := '1,00';
    EDQtdeExit(Sender);
end;

procedure TFOrcamentoMac.EDValorServKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
    if key = #13
    then begin
       EDQtdeServ.Text := '1,00';
       EDQtdeServ.SetFocus;
    end;
end;


procedure TFOrcamentoMac.EDQtdeServExit(Sender: TObject);
begin
  inherited;
    //if (EDQtdeServ.Text = '') or (EDQtdeServ.Text='0,00') or (EDQtdeServ.Text='0')
    //then begin
      //EDQtdeServ.Text:='1,00';
    //end;
    EDValorTotalServ.ValueNumeric:=(EDValorServ.ValueNumeric*EDQtdeServ.ValueNumeric);

end;

procedure TFOrcamentoMac.EDQtdeServKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
    if Key = #13 then
      EDDescontoServ.SetFocus;
end;

procedure TFOrcamentoMac.EDDescontoServExit(Sender: TObject);
begin
  inherited;
   EDValorTotalServ.ValueNumeric:=(EDValorServ.ValueNumeric*EDQtdeServ.ValueNumeric);
   EDValorTotalServ.ValueNumeric:=(EDValorTotalServ.ValueNumeric-((EDValorTotalServ.ValueNumeric/100)*EDDescontoServ.ValueNumeric));
end;

procedure TFOrcamentoMac.EDDescontoServKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
    if key = #13 then begin
       EDValorTotalServ.ValueNumeric:=(EDValorServ.ValueNumeric*EDQtdeServ.ValueNumeric);
       EDValorTotalServ.ValueNumeric:=(EDValorServ.ValueNumeric-((EDValorServ.ValueNumeric/100)*EDDescontoServ.ValueNumeric));
   end;
end;

procedure TFOrcamentoMac.EDDescricaoServKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
    if key = #13 then
       EDValorServ.SetFocus;
end;

procedure TFOrcamentoMac.BtnRemoverServClick(Sender: TObject);
begin
  inherited;
    If Mensagem('   A T E N Ç Ã O   ','Deseja realmente apagar o serviço ' + DMESTOQUE.Alx3.FieldByname('despesa').AsString + ' ?','',2,3,false,'I')=3 then
      Exit;

    xCodDespesas := DMESTOQUE.Alx3.fieldByName('COD_DESPADIC').AsInteger;

    EDDescricaoServ.Text := DMESTOQUE.Alx3.fieldByName('despesa').AsString;
    EDValorServ.ValueNumeric := DMESTOQUE.Alx3.fieldByName('vlrfinal').AsCurrency;
    EDValorTotalServ.ValueNumeric := DMESTOQUE.Alx3.fieldByName('vlrtotfin').AsCurrency;
    EDQtdeServ.ValueNumeric := DMESTOQUE.Alx3.fieldByName('qtd').AsCurrency;
    EDDescontoServ.ValueNumeric := DMESTOQUE.Alx3.fieldByName('desconto').AsCurrency;
	 PesquisaCodigoEquipe(DMESTOQUE.Alx3.FieldByName('COD_EQUIPE').AsString);
    XCOD_SERVICOCLASSIFICACAO := DMESTOQUE.Alx3.FieldByName('COD_SERVICO').AsInteger;
    
    MDO.Query.Close;
    MDO.Query.SQL.Clear;
    MDO.Query.SQL.Add('delete from despadic ');
    MDO.Query.SQL.Add('where despadic.cod_despadic=:cod_despadic');
    MDO.Query.ParamByName('cod_despadic').AsInteger:=xCodDespesas;
    MDO.Query.ExecSQL;
    MDO.Transac.CommitRetaining;

    FiltraClassificaoServico;
    FiltraSlave;
    LiberaDados;
    Exit;
end;

procedure TFOrcamentoMac.EdDescTProdExit(Sender: TObject);
begin
  inherited;
    if (EdtotalProd.ValueNumeric = 0) and (EdDescTProd.ValueNumeric <> 0)
  then begin
       Mensagem('A T E N Ç Ã O !', 'Não há produtos na Ordem para conceder desconto.', '', 1, 1, False, 'a');
       EdDescTProd.ValueNumeric := 0;
       Exit;
  end;
//   FiltraSlave;
   EfetuaDesconto('PRODUTO', 'PERCENTO');
end;

procedure TFOrcamentoMac.EdDescTServExit(Sender: TObject);
begin
  inherited;
   if (EDTotalServ.ValueNumeric = 0) and (EdDescTServ.ValueNumeric <> 0)
  then begin
       Mensagem('A T E N Ç Ã O !', 'Não há serviços na ordem para conceder desconto!', '', 1, 1, False, 'a');
       EdDescTServ.ValueNumeric := 0;
       Exit;
  end;
  //FiltraSlave;
  EfetuaDesconto('SERVICO', 'PERCENTO');
end;
//key down pesquisa produto
procedure TFOrcamentoMac.EDCodProdKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
   str : String;
begin
  inherited;
  If DMMACS.TLoja.FieldByName('PESQINTELPROD').AsString = '0'
  Then Begin
       // ALEX - 21/05/2009: pressionar Ctrl+P chama painel de busca de produtos pelo nome
       If (shift=[ssCtrl]) and (key = 78)
       Then Begin
           If XTipoProc=0
           Then Begin
               XTipoProc:=1;
               PListaProdutos.Visible:=true;
               PListaProdutos.BringToFront;
           End
           Else Begin
               XTipoProc:=0;
               PListaProdutos.Visible:=False;
           End;
       End;
  // End;

   If XTipoProc=1
   Then Begin
       If Key=Vk_Down
       Then Begin
           DMESTOQUE.WSimilar.Next;
       End;
       If Key=Vk_UP
       Then Begin
           DMESTOQUE.WSimilar.Prior;
       End;
   End;

   If Key=VK_Return
   Then Begin
       If XTipoProc=0
       Then Begin
           //TIPO DE BUSCA
           if XPESPROD = 1 then
               str := 'CODBARRA'
           ELSE
           if XPESPROD = 2 then
               str := 'CODFABRICANTE'
           ELSE
           if XPESPROD = 3 then
               str := 'DESCRICAO'
           ELSE
               str := 'CONTRINT';


           //Paulo 12/07/2011: Busca o produto pelo código conforme determinado na config loja
           if DMMacs.Tloja.FieldByName('FOCUITEMOS').AsString ='CI' then
           begin
               If FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'CONTRINT', UpperCase(EDCodProd.Text),'')=True
               Then Begin
                   EscreveLabelsPROD;
                   EDCodProd.Text := '';
                   EDQtde.Text := '1,00';
                   
                  // EDQuantidade.SetFocus;
               End
               Else Begin
                   LimpaCamposPROD;
                   lbProduto.Caption:='PRODUTO NÃO ENCONTRADO';
               end;
           end;
           if DMMacs.Tloja.FieldByName('FOCUITEMOS').AsString ='CF' then
           begin
               If FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'CODFABRICANTE', UpperCase(EDCodProd.Text),'')=True
               Then Begin
                   EscreveLabelsPROD;
                   EDCodProd.Text := '';
                   EDQtde.Text := '1,00';
                  // EDQuantidade.SetFocus;
               End
               Else Begin
                   LimpaCamposProd;
                   lbProduto.Caption:='PRODUTO NÃO ENCONTRADO';
               end;
           end;
           if DMMacs.Tloja.FieldByName('FOCUITEMOS').AsString ='CB' then
           begin
              If FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'CODBARRA', UpperCase(EDCodProd.Text),'')=True
              Then Begin
                   EscreveLabelsPROD;
                   EDCodProd.Text := '';
                   EDQtde.Text := '1,00';
                  // EDQuantidade.SetFocus;
              End
              Else Begin
                   LimpaCamposPROD;
                   lbProduto.Caption:='PRODUTO NÃO ENCONTRADO';
              end;
           End;

           //Paulo 12/07/2011: Se não existe config na loja
           if(DMMacs.Tloja.FieldByName('FOCUITEMOS').AsString = 'NC')then
           begin
               If FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'CONTRINT', UpperCase(EDCodProd.Text),'')=True
               Then Begin
                   EscreveLabelsPROD;
                   EDCodProd.Text := '';
                   EDQtde.Text := '1,00';
                  // EDQuantidade.SetFocus;
               End
               Else Begin
                   If FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'CODFABRICANTE', UpperCase(EDCodProd.Text),'')=True
                   Then Begin
                       EscreveLabelsPROD;
                       EDCodProd.Text := '';
                       EDQtde.Text := '1,00';
                      // EDQuantidade.SetFocus;
                   End
                   Else Begin
                       If FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'CODBARRA', UpperCase(EDCodProd.Text),'')=True
                       Then Begin
                           EscreveLabelsPROD;
                           EDCodProd.Text := '';
                           EDQtde.Text := '1,00';
                        //   EDQuantidade.SetFocus;
                       End
                       Else Begin
                            If FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'DESCRICAO', UpperCase(EDCodProd.Text),'')=True
                             Then Begin
                                 EscreveLabelsPROD;
                                 EDCodProd.Text := '';
                                 EDQtde.Text := '1,00';
                              //   EDQuantidade.SetFocus;
                             End
                             Else begin
                                 LimpaCamposPROD;
                                 lbProduto.Caption:='PRODUTO NÃO ENCONTRADO';
                             end;
                       end;
                   End;
               End;
           end;
       End
       Else Begin
           str:=EDCodProd.Text;
			If str[1]='.'
           Then begin
           	EDCodProd.Text:=TiraCaracterEmPosicao(str,1);
           	FiltraTabela(DMESTOQUE.WSimilar, 'VWSIMILAR', 'COD_LOJA', '', ' (COD_LOJA='+FMenu.LCODLOJA.Caption+') AND (upper(CODFABRICANTE) like upper('+#39+EDCodProd.Text+'%'+#39+')) ORDER BY DESCRICAO');
           End
           Else Begin
           	FiltraTabela(DMESTOQUE.WSimilar, 'VWSIMILAR', 'COD_LOJA', '', ' (COD_LOJA='+FMenu.LCODLOJA.Caption+') AND (upper(DESCRICAO) like upper('+#39+EDCodProd.Text+'%'+#39+')) ORDER BY DESCRICAO');
           End;
       End;
   End;
  end;
end;

procedure TFOrcamentoMac.EDDescricaoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
    if Key = #13 then
      FrmCliente.EDCodigo.SetFocus;
end;

procedure TFOrcamentoMac.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
	XCodTmpEstoque := DBGrid1.Columns[0].Field.Text;
     //Caso este codigo seja alterado, o mesmo codigo em edcodfabkeyup no bloco de tratamento de para ENTER (RETURN) tbm deve ser alterado
   //Refiltra a tabela vwsimilar de acordo com registro escolhido
   DMESTOQUE.WSimilar.Close;
   DMESTOQUE.WSimilar.SQL.Clear;
   DMESTOQUE.WSimilar.SQL.Add('select * from vwsimilar where vwsimilar.cod_estoque=:Codigo');
   DMESTOQUE.WSimilar.ParamByName('CODIGO').AsString:= XCodTmpEstoque;
   DMESTOQUE.WSimilar.Open;
   
   If Not DMESTOQUE.WSimilar.IsEmpty
   Then Begin
       EscreveLabelsPROD;
       PListaProdutos.Visible:=False;
       EDCodProd.Text := '';
       EDQtde.Text := '1,00';
       EDQtde.SetFocus;
   End
   Else Begin
       Mensagem('OPÇÃO BLOQUEADA', ' produto selecionado não foi escrito.', '', 1, 1, False, 'a');
   End;
   FiltraProdutos;
end;


procedure TFOrcamentoMac.EdNomeEnter(Sender: TObject);
begin
  inherited;
    if EdNome.Text = 'Digite o Nome ou Descrição' then
        EdNome.Text := ''
   else
    EdNome.SelectAll;

   EdNome.Font.Color := clBlack;
end;

procedure TFOrcamentoMac.EdNomeExit(Sender: TObject);
begin
  inherited;
     if Trim(EdNome.Text) = '' then begin
        EdNome.Text := 'Digite o Nome ou Descrição';
        EdNome.Font.Color := clGray;
  end;
end;

procedure TFOrcamentoMac.EdNomeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  //  inherited;
	Try
		If Key=VK_RETURN
   	Then Begin//pressionado enter, consultar
			FiltraTabela(XView, XSQLVIEW, XCampo, '',   '(upper(NOMECLI) like upper('+#39+EdNome.Text+'%'+#39+')) ORDER BY NOMECLI, NUMORC ');
       End;
       If Key=VK_ESCAPE
       Then Begin //pressionado esc, liberar
           LiberaDados;
       End;
   Except
   End;
end;

procedure TFOrcamentoMac.EDNumeroOrcEnter(Sender: TObject);
begin
  inherited;
   // if EDNumeroOrc.Text = 'Nº Orçamento' then
       // EDNumeroOrc.Text := ''
   //else
   // EDNumeroOrc.SelectAll;

  // EDNumeroOrc.Font.Color := clBlack;
end;

procedure TFOrcamentoMac.EDNumeroOrcKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
    //Try
		//If Key=VK_RETURN
   	//Then Begin//pressionado enter, consultar
		 //	FiltraTabela(XView, XSQLVIEW, 'NUMORC', '',   '(upper(NUMORC) like upper('+#39+EdNumOrc.Text+'%'+#39+')) ORDER BY NUMORC');
      // End;
      // If Key=VK_ESCAPE
       //Then Begin //pressionado esc, liberar
           //LiberaDados;
      // End;
    //Except
    //End;
end;

procedure TFOrcamentoMac.EdDataAberturaEnter(Sender: TObject);
begin
  inherited;
    if EdDataAbertura.Text = 'Data Abertura' then
        EdDataAbertura.Text := ''
   else
    EdDataAbertura.SelectAll;

   EdDataAbertura.Font.Color := clBlack;
end;

procedure TFOrcamentoMac.EdDataAberturaExit(Sender: TObject);
begin
  inherited;
    if Trim(EdDataAbertura.Text) = '' then begin
        EdDataAbertura.Text := 'Data Abertura';
        EdDataAbertura.Font.Color := clGray;
  end;
end;

procedure TFOrcamentoMac.EDNumeroOrcExit(Sender: TObject);
begin
  inherited;
  //if Trim(EDNumeroOrc.Text) = '' then begin
    // EDNumeroOrc.Text := 'Nº Orçamento';
     //EDNumeroOrc.Font.Color := clGray;
  //end;
end;

procedure TFOrcamentoMac.EDNumeroOrcMecEnter(Sender: TObject);
begin
  inherited;
    if EDNumeroOrcMec.Text = 'Nº Orçamento' then
    EDNumeroOrcMec.Text := ''
   else
    EDNumeroOrcMec.SelectAll;

   EDNumeroOrcMec.Font.Color := clBlack;

end;

procedure TFOrcamentoMac.EDNumeroOrcMecExit(Sender: TObject);
begin
  inherited;
  if Trim(EDNumeroOrcMec.Text) = '' then begin
     EDNumeroOrcMec.Text := 'Nº Orçamento';
     EDNumeroOrcMec.Font.Color := clGray;
  end;
end;

procedure TFOrcamentoMac.EDNumeroOrcMecKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  Try
		If Key=VK_RETURN
   	Then Begin//pressionado enter, consultar
			FiltraTabela(XView, XSQLVIEW, 'NUMORC', '',   '(upper(NUMORC) like upper('+#39+EDNumeroOrcMec.Text+'%'+#39+')) ORDER BY NUMORC');
       End;
    If Key=VK_ESCAPE
    Then Begin //pressionado esc, liberar
      LiberaDados;
    End;
  Except
  End;

end;
procedure TFOrcamentoMac.EdDataAberturaKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
      Try
  if not (Key in[Chr(8)]) then
   begin
       if Length(EdDataAbertura.Text)=2 then
       begin
           EdDataAbertura.Text:=EdDataAbertura.Text+'/';
           EdDataAbertura.SelStart:=3;
       end else if Length(EdDataAbertura.Text)=5 then begin
           EdDataAbertura.Text:=EdDataAbertura.Text+'/';
           EdDataAbertura.SelStart:=6;
       end;
   end;


   if not (Key in['0'..'9',Chr(8),#13,#27]) then Key:= #0
    else if key in[Chr(8),#13,#27] then
    begin
       // eh nois !!
    end
    else if Length(EdDataAbertura.Text) = 0
    then begin
        if key in['4'..'9']
        then begin
            EdDataAbertura.Text := '0';
            EdDataAbertura.SelStart := 2;
        end;

    end
    else if Length(EdDataAbertura.Text) = 1
    then begin
        if EdDataAbertura.Text = '3'
        then begin
            if not (key in['0'..'1']) then key := #0;
        end;
    end
    else if (Length(EdDataAbertura.Text) = 2) or (Length(EdDataAbertura.Text) = 3)
    then begin
        if key in['2'..'9']
        then begin
            EdDataAbertura.Text := EdDataAbertura.Text+'0';
            EdDataAbertura.SelStart := 4;
        end;
    end
    else if (Length(EdDataAbertura.Text) = 4)
    then begin
        if Copy(EdDataAbertura.Text, 4,4) = '1'
        then begin
            if not (key in['0'..'2']) then key := #0;
        end;
    end
    else if (Length(EdDataAbertura.Text) = 5) or (Length(EdDataAbertura.Text) = 6)
    then begin
        if not (key in ['1'..'2']) then key := #0;
    end;


   // if not (Key in['0'..'9',Chr(8),#13,#27]) then Key:= #0;

   if not (Key in[Chr(8)]) then
   begin
       if Length(EdDataAbertura.Text)=2 then
       begin
           EdDataAbertura.Text:=EdDataAbertura.Text+'/';
           EdDataAbertura.SelStart:=3;
       end else if Length(EdDataAbertura.Text)=5 then begin
           EdDataAbertura.Text:=EdDataAbertura.Text+'/';
           EdDataAbertura.SelStart:=6;
       end;
   end;

   if(key = #13)
   then begin
       if Length(Trim(EdDataAbertura.Text))=0 then
       begin
           EdDataAbertura.Text:=DatetoStr(Date());
       end else if Length(Trim(EdDataAbertura.Text))=1 then
       begin
           EdDataAbertura.Text:='0'+EdDataAbertura.Text+Copy(DatetoStr(Date()), 3, 10);
       end else if Length(EdDataAbertura.Text)<=3 then begin
           EdDataAbertura.Text:=EdDataAbertura.Text+Copy(DatetoStr(Date()), 4, 10);
       end else if Length(EdDataAbertura.Text)=4 then begin
           EdDataAbertura.Text:=Copy(EdDataAbertura.Text,1,3)+'0'+Copy(EdDataAbertura.Text,4,4)+Copy(DatetoStr(Date()), 6, 10);
       end else if Length(EdDataAbertura.Text)<=6 then begin
           EdDataAbertura.Text:=EdDataAbertura.Text+Copy(DatetoStr(Date()), 7, 10);
       end else if (Length(EdDataAbertura.Text)>6) and (Length(EdDataAbertura.Text)<10) then begin
           EdDataAbertura.Text:=Copy(EdDataAbertura.Text, 1,6)+Copy(DatetoStr(Date()), 7, 10);
       end;

       XView.Close;
       XView.SQL.Clear;
       XView.SQL.Add('select * from vworcamento where vworcamento.dtabert = :DATA');
       XView.ParamByName('DATA').AsDateTime := StrToDate(EdDataAbertura.Text);
       XView.Open;
       EdDataAbertura.SelectAll;
       //EDDataFim.SetFocus;
   end;

       If (key = #27)
       Then Begin //pressionado esc, liberar
           LiberaDados;
           EdDataAbertura.SelectAll;
       End;

   Except
   End;//fim try
end;//fim key
procedure TFOrcamentoMac.EDCodProdEnter(Sender: TObject);
begin
  inherited;
	FiltraProdutos;
end;

procedure TFOrcamentoMac.BTNOPENClick(Sender: TObject);
begin
  inherited;
	If AbrirForm(TFSERVICO, FSERVICO, 1) <> 'Selected' then
		FiltraClassificaoServico
   else
   	InsereClassificacaoServico;
end;

procedure TFOrcamentoMac.BTNMINUSClick(Sender: TObject);
begin
  inherited;
   if EDDescricaoServ.Text = DbServicoClassificacao.Text then
   	EDDescricaoServ.Text := '';
       
   XCOD_SERVICOCLASSIFICACAO:=-1;
   Try
   	DbServicoClassificacao.KeyValue  := '';
   Except
   End;
   DbServicoClassificacao.ListField:='';
   DbServicoClassificacao.ListField:='DESCRICAO';
end;

procedure TFOrcamentoMac.InsereClassificacaoServico;
begin
    If DbServicoClassificacao.Text <> '' then
    	XCOD_SERVICOCLASSIFICACAO:=DMServ.WSubServ.FieldByName('COD_SUBSERVICO').AsInteger
    Else
    	XCOD_SERVICOCLASSIFICACAO:=-1;

    EDValorServ.ValueNumeric:=DMServ.WSubServ.FieldByName('VLRTOTSUBSERV').AsCurrency;
    EDDescricaoServ.Text := DMServ.WSubServ.FieldByName('DESCRICAO').AsString;
end;

procedure TFOrcamentoMac.ApplicationEvents1Message(var Msg: tagMSG;
  var Handled: Boolean);
begin
  inherited;
  if (Msg.Message = WM_KEYDOWN) AND (Msg.wParam = VK_TAB) then
  begin
  	if DbServicoClassificacao.Focused then
	begin
       InsereClassificacaoServico;
   end;
   
  	PListaProdutos.Visible := False;
   PListaProdutos.SendToBack;
  end;
end;

procedure TFOrcamentoMac.FrmEquipeBTNOPENClick(Sender: TObject);
begin
  inherited;
    FrmEquipe.BTNOPENClick(Sender);
    If AbrirForm(TFCadEquipe, FCadEquipe, 1) = 'Selected'
        Then Begin
        FrmEquipe.EDCodigo.Text := DMPESSOA.TALX1.fieldbyname('Cod_Equipe').AsString;
        FrmEquipe.EdDescricao.Hint := DMPESSOA.TALX1.fieldbyname('descricao').AsString;
        FrmEquipe.EdDescricao.Text := DMPESSOA.TALX1.fieldbyname('descricao').AsString;
        BtnInserirServ.SetFocus;
        //RetornaComissao(DMPESSOA.TALX1.fieldbyname('cod_responsavel').AsInteger);
    End
    Else Begin
        FrmEquipe.EDCodigo.Text := '';
        FrmEquipe.EdDescricao.Hint := '';
        FrmEquipe.EdDescricao.Text := '';
    End;
end;

procedure TFOrcamentoMac.FrmEquipeEDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
    FrmEquipe.EDCodigoKeyPress(Sender, Key);

    If Not (key In ['0'..'9', #8, #13]) Then
        Key := #0;

    If Key = #13
        Then Begin
        If FrmEquipe.EDCodigo.Text <> ''
            Then Begin
            PesquisaCodigoEquipe(FrmEquipe.EDCodigo.Text);
        End;
    End;
end;

procedure TFOrcamentoMac.FrmEquipeEDCodigoExit(Sender: TObject);
begin
  inherited;
    If FrmEquipe.EDCodigo.Text <> ''
        Then Begin
        PesquisaCodigoEquipe(FrmEquipe.EDCodigo.Text);
    End
    Else Begin
        FrmEquipe.EdDescricao.Text := '';
    End;
end;

procedure TFOrcamentoMac.PesquisaCodigoEquipe(codigo: String);
begin
   // letras maiusculas
    codigo := Trim(UpperCase(codigo));

    If codigo <> ''
        Then Begin
       // seleciona equipe que tiver o mesmo codigo
        DMServ.Alx.Close;
        DMServ.Alx.SQL.Clear;
        DMServ.Alx.SQL.Add(' select * from equipe ');
        DMServ.Alx.SQL.Add(' where equipe.cod_equipe = :codigo ');
        DMServ.Alx.ParamByName('codigo').AsString := codigo;
        DMServ.Alx.Open;

        If Not DMServ.Alx.IsEmpty
            Then Begin
            FrmEquipe.EDCodigo.Text :=  DMServ.Alx.FieldByname('cod_equipe').AsString;
            FrmEquipe.EdDescricao.Text := DMServ.Alx.FieldByname('descricao').AsString;
            BtnInserirServ.SetFocus;
        End
        Else Begin
            FrmEquipe.EdDescricao.Text := '';
            FrmEquipe.EDCodigo.SelectAll;
            FrmEquipe.EDCodigo.SetFocus;
        End;
        FrmCliente.Repaint;
        FrmEquipe.Repaint;
        FrmFormaPag.Repaint;
    End;
end;

procedure TFOrcamentoMac.FiltraClassificaoServico;
begin
   DMServ.WSubServ.Close;
   DMServ.WSubServ.SQL.Clear;
   DMServ.WSubServ.SQL.Add('SELECT * FROM VWSUBSERVICO ORDER BY DESCRICAO');
   DMServ.WSubServ.Open;
end;

procedure TFOrcamentoMac.FiltraProdutos;
begin
	DMESTOQUE.WSimilar.Close;
   DMESTOQUE.WSimilar.SQL.Clear;
   DMESTOQUE.WSimilar.SQL.Add('SELECT * FROM VWSIMILAR WHERE (VWSIMILAR.ATIVO =' + #39 + 'S' + #39 + ') ORDER BY DESCRICAO');
   DMESTOQUE.WSimilar.Open;
end;

procedure TFOrcamentoMac.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   If Key = Vk_Return then
   begin
      DMESTOQUE.WSimilar.Close;
      DMESTOQUE.WSimilar.SQL.Clear;
      DMESTOQUE.WSimilar.SQL.Add('select * from vwsimilar where (vwsimilar.cod_estoque=:Codigo) AND  (VWSIMILAR.ATIVO=' + #39 + 'S' + #39 + ')');
      DMESTOQUE.WSimilar.ParamByName('CODIGO').AsString := XCodTmpEstoque;
      DMESTOQUE.WSimilar.Open;

      If Not DMESTOQUE.WSimilar.IsEmpty then
  	   begin
      		EscreveLabelsPROD;
      		PListaProdutos.Visible := False;
	        PListaProdutos.SendToBack;           
      		EDCodProd.Text := '';
      		EDQtde.Text := '1,00';
      end
      else
      		MessageDlg('ATENÇÃO!' + #13 + #10 + 'O produto selecionado não foi escrito', mtWarning, [mbOK], 0);

      FiltraProdutos;
      EDQtde.SetFocus;

      Exit;
   End;

   XCodTmpEstoque := DBGrid1.Columns[0].Field.Text;
end;

procedure TFOrcamentoMac.FrmPlacaEDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  If (DMMACS.TLoja.FieldByName('atividade').AsString <> 'PETSHOP') and (DMMACS.TLoja.FieldByName('atividade').AsString <> 'LOCAÇÃO') Then
  begin
        if not (key in ['a'..'z','A'..'Z', '0'..'9', #8, #13,#27])
       then
           Key := #0
       else begin    // ['A'..'Z','a'..'z'
           if  Length(FrmPlaca.EDCodigo.Text) < 4 then
               if not (key in ['a'..'z','A'..'Z', #8, #13,#27]) then
                   Key := #0;

           if ( Length(FrmPlaca.EDCodigo.Text) > 3 ) then
               if not (key in ['0'..'9', #8, #13,#27]) then
                   Key := #0
       end;
  end;
end;

procedure TFOrcamentoMac.BtnRelatorioClick(Sender: TObject);
begin
  inherited;
  
  DMESTOQUE.Alx.Close;
  DMESTOQUE.Alx.SQL.Clear;
  DMESTOQUE.Alx.SQL.Add('select subproduto.descricao, itprodorc.qtd, pessoa.nome, formpag.descricao as descricaoformpag,subproduto.ncm,  ');
  DMESTOQUE.Alx.SQL.Add('itprodorc.vlrunit, itprodorc.vlrtotal, subproduto.codprodfabr, orcamento.dtabert,orcamento.cod_cliente,orcamento.numorc, orcamento.vlrtotal as vlrtotalorc,  orcamento.icms_st, ');
  DMESTOQUE.Alx.SQL.Add('orcamento.prazo_despacho, orcamento.descricao as descrorc, orcamento.frete,  orcamento.obs, orcamento.solicitante, orcamento.area_solicitante, orcamento.email_solicitante, itprodorc.VLRICMSSUBS, ');
  DMESTOQUE.Alx.SQL.Add('equipamento.descricao as descequip, equipamento.placa, equipamento.kmatual, equipamento.marca, equipamento.modelo ');
  DMESTOQUE.Alx.SQL.Add('from orcamento ');
  DMESTOQUE.Alx.SQL.Add('left join itprodorc on orcamento.cod_orcamento = itprodorc.cod_orcamento ');
  DMESTOQUE.Alx.SQL.Add('left join estoque on estoque.cod_estoque = itprodorc.cod_estoque ');
  DMESTOQUE.Alx.SQL.Add('left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto ');
  DMESTOQUE.Alx.SQL.Add('left join funcionario on funcionario.cod_func = orcamento.cod_vendedor ');
  DMESTOQUE.Alx.SQL.Add('left join pessoa on pessoa.cod_pessoa = funcionario.cod_pessoa ');
  DMESTOQUE.Alx.SQL.Add('left join formpag on formpag.cod_formpag = orcamento.cod_formpag ');
  DMESTOQUE.Alx.SQL.Add('left join equipamento on equipamento.cod_equipamento = orcamento.cod_equipamento ');
  DMESTOQUE.Alx.SQL.Add('WHERE ORCAMENTO.COD_ORCAMENTO= :XORC');
  DMESTOQUE.Alx.ParamByName('XORC').AsInteger := DMSAIDA.WOrc.FieldByName('COD_ORCAMENTO').AsInteger;
  DMESTOQUE.Alx.Open;
  
  //ANGELO - 09/06/2015 - Filtra dados do cliente
  DMESTOQUE.Alx1.Close;
  DMESTOQUE.Alx1.SQL.Clear;
  DMESTOQUE.Alx1.SQL.Add('select * from vwcliente');
  DMESTOQUE.Alx1.SQL.Add('WHERE VWCLIENTE.COD_CLIENTE= :XCORC');
  DMESTOQUE.Alx1.ParamByName('XCORC').AsString:= DMESTOQUE.Alx.FieldByName('cod_cliente').AsString;
  DMESTOQUE.Alx1.Open;

  //Edmar - 24/09/2015 - Busca os serviços do orçamento
  DMESTOQUE.Alx2.Close;
  DMESTOQUE.Alx2.SQL.Clear;
  DMESTOQUE.Alx2.SQL.Add(' SELECT DESPADIC.DESPESA, DESPADIC.VLRFINAL, DESPADIC.QTD, DESPADIC.VLRTOTFIN, DESPADIC.DESCONTO, EQUIPE.DESCRICAO EQUIPE FROM DESPADIC ');
  DMESTOQUE.Alx2.SQL.Add(' LEFT JOIN EQUIPE ON EQUIPE.COD_EQUIPE = DESPADIC.COD_EQUIPE ');
  DMESTOQUE.Alx2.SQL.Add(' WHERE (DESPADIC.GERADOR = ''ORCMEC'') AND (DESPADIC.COD_GERADOR = :CODIGO)');
  DMESTOQUE.Alx2.ParamByName('CODIGO').AsInteger := DMSAIDA.WOrc.FieldByName('COD_ORCAMENTO').AsInteger;
  DMESTOQUE.Alx2.Open;

  //ANGELO - 09/01/2015 - preenche os datasets utilizados
  FiltraTabela(DMMACS.TEmpresa, 'EMPRESA', 'COD_EMPRESA', FMenu.LCODEMPRESA.Caption, '');
  FiltraTabela(DMGEOGRAFIA.WCidade,'VWCIDADE', 'COD_CIDADE', DMMACS.TEmpresa.FieldByName('COD_CIDADE').AsString, '');

  frxOrcamentoMac.DataSet:= DMESTOQUE.Alx;
  frxOrcMacCliente.DataSet:= DMESTOQUE.Alx1;
  frxOrcMacFunc.DataSet:= DMESTOQUE.Alx;
  FrxOrcMacCidade.DataSet:=DMGEOGRAFIA.WCidade;
  FrxOrcMacEmpresa.DataSet:=DMMACS.TEMPRESA;
  FrxOrcMacLoja.DataSet:=DMMACS.TLOJA;
  FrxOrcMacServico.DataSet:=DMESTOQUE.Alx2;
  frxRelOrcamentoMac.LoadFromFile('C:\MZR\Macs\Rel\FrfOrcamento11.fr3');
  frxRelOrcamentoMac.ShowReport();

end;

procedure TFOrcamentoMac.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //inherited;
end;

procedure TFOrcamentoMac.CbMostrarOrcamentosexportadosClick(
  Sender: TObject);
begin
  inherited;
   If CbMostrarOrcamentosexportados.Checked=true
   Then Begin
       XLiberaDados:='ORDER BY NUMORC DESC, NOMECLI';
       LiberaDados;
   End
   Else Begin
       XLiberaDados:=' where ((exporta=0)  or (exporta is null)) ORDER BY NOMECLI ';
       LiberaDados;
   End;
end;

procedure TFOrcamentoMac.MarcarcomoExportado1Click(Sender: TObject);
begin
  inherited;
   If FiltraTabela(DMSAIDA.TOrc, 'ORCAMENTO', 'COD_ORCAMENTO', XView.FieldByName('cod_orcamento').AsString, '')   = True
   Then Begin
       DMSAIDA.TOrc.Edit;
       DMSAIDA.TOrc.FieldByName('EXPORTA').AsString:='1';
       DMSAIDA.TOrc.Post;
       DMSAIDA.IBT.CommitRetaining;
       If CbMostrarOrcamentosexportados.Checked=true
       Then Begin
           XLiberaDados:='ORDER BY NUMORC DESC, NOMECLI';
           LiberaDados;
       End
       Else Begin
           XLiberaDados:=' where ((exporta=0)  or (exporta is null)) ORDER BY NOMECLI ';
           LiberaDados;
       End;
   End;
end;

procedure TFOrcamentoMac.DesmarcarcomoExportado1Click(Sender: TObject);
begin
  inherited;
   If FiltraTabela(DMSAIDA.TOrc, 'ORCAMENTO', 'COD_ORCAMENTO', XView.FieldByName('cod_orcamento').AsString, '')   = True
   Then Begin
       DMSAIDA.TOrc.Edit;
       DMSAIDA.TOrc.FieldByName('EXPORTA').AsString:='0';
       DMSAIDA.TOrc.Post;
       DMSAIDA.IBT.CommitRetaining;
       If CbMostrarOrcamentosexportados.Checked=true
       Then Begin
           XLiberaDados:='ORDER BY NUMORC DESC, NOMECLI';
           LiberaDados;
       End
       Else Begin
           XLiberaDados:=' where ((exporta=0)  or (exporta is null)) ORDER BY NOMECLI ';
           LiberaDados;
       End;
   End;
end;

End.




