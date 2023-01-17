unit URelOrdem;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UPadraoRelatorio, FR_DSet, FR_DBSet, FR_Class, TFlatHintUnit, StdCtrls,
  Buttons, jpeg, ExtCtrls, UFrmBusca, Mask, QuickRpt, Qrctrls, Grids,
  DBGrids, DrLabel, DB, IBCustomDataSet, IBQuery;

type
  TFRelOrdem = class(TFPadraoRelatorio)
    QrOrdem: TQuickRep;
    QRBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRBand2: TQRBand;
    QRLabel3: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRBand4: TQRBand;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRBand5: TQRBand;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLTOTORD: TQRLabel;
    QRTOTPROD: TQRLabel;
    QRTOTSERV: TQRLabel;
    QrFichaOrd: TQuickRep;
    QRBand6: TQRBand;
    QRDBText29: TQRDBText;
    QRDBText30: TQRDBText;
    QRDBText32: TQRDBText;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRShape3: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRSubDetail3: TQRSubDetail;
    QRDBText37: TQRDBText;
    QRDBText38: TQRDBText;
    QRDBText39: TQRDBText;
    QRDBText40: TQRDBText;
    QRDBText41: TQRDBText;
    QRDBText42: TQRDBText;
    QRDBText43: TQRDBText;
    QRDBText44: TQRDBText;
    QRDBText45: TQRDBText;
    QRDBText46: TQRDBText;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    QRSubDetail4: TQRSubDetail;
    QRDBText47: TQRDBText;
    QRDBText48: TQRDBText;
    QRDBText49: TQRDBText;
    QRDBText50: TQRDBText;
    QRDBText51: TQRDBText;
    QRDBText52: TQRDBText;
    QRDBText53: TQRDBText;
    QRDBText54: TQRDBText;
    QRLabel51: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    QRLabel56: TQRLabel;
    QRLabel57: TQRLabel;
    QRLabel58: TQRLabel;
    QRBand9: TQRBand;
    QRShape8: TQRShape;
    QRDBText55: TQRDBText;
    QRLabel59: TQRLabel;
    QRLabel60: TQRLabel;
    QRLabel61: TQRLabel;
    QRDBText58: TQRDBText;
    QRDBText57: TQRDBText;
    QRDBText56: TQRDBText;
    QRDBText59: TQRDBText;
    QRLabel62: TQRLabel;
    QRLabel63: TQRLabel;
    QRDBText60: TQRDBText;
    QRLabel64: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRLabel32: TQRLabel;
    QRDBText23: TQRDBText;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRDBText31: TQRDBText;
    QRDBText33: TQRDBText;
    QRDBText34: TQRDBText;
    QRLabel40: TQRLabel;
    QRLabel65: TQRLabel;
    QRDBText35: TQRDBText;
    QRDBText36: TQRDBText;
    QRLabel66: TQRLabel;
    QRLabel67: TQRLabel;
    QRDBText61: TQRDBText;
    QRLabel68: TQRLabel;
    QRDBText62: TQRDBText;
    QRDBText63: TQRDBText;
    QRLabel69: TQRLabel;
    QRLabel70: TQRLabel;
    QRLabel71: TQRLabel;
    QRLabel72: TQRLabel;
    QRDBText64: TQRDBText;
    QRDBText65: TQRDBText;
    QRDBText66: TQRDBText;
    QRLabel73: TQRLabel;
    QRLabel74: TQRLabel;
    QRLabel75: TQRLabel;
    QRDBText67: TQRDBText;
    QRDBText68: TQRDBText;
    QRDBText69: TQRDBText;
    QRLabel76: TQRLabel;
    QRLabel77: TQRLabel;
    QRLabel78: TQRLabel;
    QRLabel79: TQRLabel;
    QRLabel80: TQRLabel;
    QRLabel81: TQRLabel;
    QRLabel82: TQRLabel;
    QRLabel83: TQRLabel;
    QRShape9: TQRShape;
    QRLabel84: TQRLabel;
    QRLabel85: TQRLabel;
    QRLabel86: TQRLabel;
    QRDBText70: TQRDBText;
    QRDBText71: TQRDBText;
    QRDBText72: TQRDBText;
    QRDBText73: TQRDBText;
    QRDBText74: TQRDBText;
    QRDBText75: TQRDBText;
    QRDBText76: TQRDBText;
    QRBand7: TQRBand;
    QRBand10: TQRBand;
    QRShape10: TQRShape;
    QRLabel87: TQRLabel;
    QRDBText77: TQRDBText;
    QRLabel89: TQRLabel;
    QRDBText78: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel90: TQRLabel;
    QRTOTDESP: TQRLabel;
    GroupBox5: TGroupBox;
    Label1: TLabel;
    Label4: TLabel;
    EdDataIni: TMaskEdit;
    EdDataFim: TMaskEdit;
    RGESCOLHA: TRadioGroup;
    RGTIPOREL: TRadioGroup;
    FrmPessoaIni: TFrmBusca;
    FrmPessoaFim: TFrmBusca;
    CBGarantia: TCheckBox;
    Label2: TLabel;
    CBESPECIFICA: TComboBox;
    QRDBText79: TQRDBText;
    QRDBText80: TQRDBText;
    QRDBText81: TQRDBText;
    QRDBText82: TQRDBText;
    QRDBText83: TQRDBText;
    QRDBText84: TQRDBText;
    QRDBText85: TQRDBText;
    QRSubDetail10: TQRSubDetail;
    QRSubDetail12: TQRSubDetail;
    QRShape11: TQRShape;
    QRSubDetail2: TQRSubDetail;
    QRShape12: TQRShape;
    QRDBText86: TQRDBText;
    QrRELOSANALITICO01: TQuickRep;
    QRBand3: TQRBand;
    QRDBText87: TQRDBText;
    QRLabel88: TQRLabel;
    QRSysData3: TQRSysData;
    QRSysData4: TQRSysData;
    QRSysData5: TQRSysData;
    QRLabel91: TQRLabel;
    MFiltroOrdem: TQRRichText;
    QRShape13: TQRShape;
    QrRELOSANALITICO01_Ordem: TQRBand;
    QRLabel92: TQRLabel;
    QRDBText88: TQRDBText;
    QRLabel93: TQRLabel;
    QRDBText89: TQRDBText;
    QRLabel94: TQRLabel;
    QRDBText90: TQRDBText;
    QRLabel95: TQRLabel;
    QRDBText91: TQRDBText;
    QRLabel96: TQRLabel;
    QRDBText92: TQRDBText;
    QRLabel97: TQRLabel;
    QRDBText93: TQRDBText;
    QRSubDetail5: TQRSubDetail;
    QRDBText97: TQRDBText;
    QRDBText94: TQRDBText;
    QRDBText95: TQRDBText;
    QRDBText96: TQRDBText;
    QRDBText98: TQRDBText;
    LinhaCabecalho: TQRShape;
    QRSubDetail6: TQRSubDetail;
    QRDBText99: TQRDBText;
    QRDBText100: TQRDBText;
    QRDBText101: TQRDBText;
    QRDBText102: TQRDBText;
    QRDBText103: TQRDBText;
    BandaTituloServico: TQRBand;
    QRLabel103: TQRLabel;
    QRLabel104: TQRLabel;
    QRLabel105: TQRLabel;
    QRLabel106: TQRLabel;
    QRLabel107: TQRLabel;
    QRBand8: TQRBand;
    QRShape14: TQRShape;
    QRLabel108: TQRLabel;
    QRLabel109: TQRLabel;
    QRLabel110: TQRLabel;
    QRLabel111: TQRLabel;
    ValorTotalOrdem: TQRLabel;
    ValorTotalProdutos: TQRLabel;
    ValorTotalServico: TQRLabel;
    BandaTituloProdutos: TQRBand;
    QRLabel98: TQRLabel;
    QRLabel99: TQRLabel;
    QRLabel100: TQRLabel;
    QRLabel101: TQRLabel;
    QRLabel102: TQRLabel;
    FSDSRel1: TfrDBDataSet;
    RGPagto: TRadioGroup;
    RGTipoServ: TRadioGroup;
    procedure BtnVisualizarClick(Sender: TObject);
    procedure FrmPessoaIniEDCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FrmPessoaFimEDCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FrmPessoaIniBTNOPENClick(Sender: TObject);
    procedure FrmPessoaFimBTNOPENClick(Sender: TObject);
    procedure FrmPessoaIniBTNMINUSClick(Sender: TObject);
    procedure FrmPessoaFimBTNMINUSClick(Sender: TObject);
    procedure BtnImprimirClick(Sender: TObject);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QrOrdemBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand5BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormActivate(Sender: TObject);
    procedure FrmPessoaIniEDCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure FrmPessoaFimEDCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QrRELOSANALITICO01_OrdemBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QrRELOSANALITICO01BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QrRELOSANALITICO01_OrdemAfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand8BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
	 Procedure PrepImp;//Procedure que prepara sql para Impressão
  public
    { Public declarations }
    //Procedure que prepara sql para Impressão
    Procedure ImpRelAnaliticoServicos;

  end;

var
  FRelOrdem: TFRelOrdem;
  XPESSOAINI, XPESSOAFIM: STRING;
  XVENDINI, XVENDFIM: STRING;
  XTOTORD, XTOTPROD, XTOTSERV, XTOTDESP: Real;

implementation

uses UDMEstoque, UMenu, UDMPessoa, UFORNECEDOR, UCliente, UFuncionario,
  Alxor32, UDMMacs, UPadrao;

{$R *.DFM}
//Procedure que prepara sql para Impressão
Procedure TFRelOrdem.ImpRelAnaliticoServicos;
Begin
	DMESTOQUE.TRel.Close;
	DMESTOQUE.TRel.SQL.Clear;
	DMESTOQUE.TRel.sql.Add(' Select ordem.numero, ordem.cod_ordem, vwcliente.cod_interno, pessoa.nome, vwcliente.nome as Cliente, equipamento.descricao As Equipamento, ordem.dtabert, ');
	DMESTOQUE.TRel.sql.Add('        Ordem.totserv, ordem.totprod, ordem.totord, ');
	DMESTOQUE.TRel.sql.Add('        servico.descricao as GRADE, vwsubservico.cod_subservico, vwsubservico.cod_interno, vwsubservico.descricao as NomeServico, itservord.qtd as QtdServico, ');
	DMESTOQUE.TRel.sql.Add('        itservord.vlrunit as VlrUnitServico, itservord.desconto as DescServico, itservord.total as TotalServico ');
	DMESTOQUE.TRel.sql.Add('         from itservord ');
	DMESTOQUE.TRel.sql.Add(' left join ordem on itservord.cod_ordem = ordem.cod_ordem ');
	DMESTOQUE.TRel.sql.Add('  left join vwsubservico on itservord.cod_servico = vwsubservico.cod_subservico ');
	DMESTOQUE.TRel.sql.Add(' left join servico on vwsubservico.cod_servico = servico.cod_servico ');
	DMESTOQUE.TRel.sql.Add(' left join vwcliente on ordem.cod_cliente = vwcliente.cod_cliente ');
	DMESTOQUE.TRel.sql.Add(' Left join pessoa on vwcliente.cod_pessoa = pessoa.cod_pessoa ');
	DMESTOQUE.TRel.sql.Add(' left join equipamento on ordem.cod_equipamento = equipamento.cod_equipamento ');
	DMESTOQUE.TRel.sql.Add(' Where (ordem.cod_loja=:Loja) ');
	DMESTOQUE.TRel.ParamByName('Loja').AsString:=FMenu.LCODLOJA.Caption;
   If (EdDataIni.Text<>'  /  /    ') And (EdDataFim.Text<>'  /  /    ')
   Then Begin//Se as duas datas informadas forem diferentes de "" deve se efetuar a sql entre as datas
       DMESTOQUE.TRel.SQL.Add(' AND (ORDEM.DTABERT Between :Data1 and :Data2) ');
       DMESTOQUE.TRel.ParamByName('Data1').AsString:=EdDataIni.Text;
       DMESTOQUE.TRel.ParamByName('Data2').AsString:=EdDataFim.Text;
   End;
   If (XPessoaIni<>'') and (XPessoaFim<>'')
   Then Begin//se forem informados as duas pessoas a sql deve ser feita entre elas
       DMESTOQUE.TRel.SQL.Add(' AND (PESSOA.NOME Between :PES1 And :PES2)');
       DMESTOQUE.TRel.ParamByName('PES1').AsString:=XPessoaIni;
       DMESTOQUE.TRel.ParamByName('PES2').AsString:=XPessoaFim;
   End;
   If RGESCOLHA.ItemIndex=0
   Then Begin//se for pedido apenas relatório de pendentes
       DMESTOQUE.TRel.SQL.Add(' AND (ORDEM.STATUS='+#39+'ABERTO'+#39+')');
   End;
   If RGESCOLHA.ItemIndex=1
   Then Begin//se realisar relatório apenas de baixados
       DMESTOQUE.TRel.SQL.Add(' AND (ORDEM.STATUS='+#39+'FECHADO'+#39+')');
   End;
   DMESTOQUE.TRel.sql.Add(' order by servico.descricao, vwsubservico.cod_subservico ');
	DMESTOQUE.TRel.Open;
   If Not DMESTOQUE.TRel.IsEmpty
   Then Begin
       FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfRelOSAnaliticoServicos.frf');
       FSRel.ShowReport;
   End
   Else Begin
   	MessageDlg('O Retorno do filtro obteve resultou vazio', mtWarning, [mbOK], 0);
   End;
End;
//Procedure que prepara sql para Impressão
Procedure TFRelOrdem.PrepImp;
VAR
	TIPO: STRING;
Begin
	//PREPARA INFORMAÇÃO DE RESTRIÇÕES PARA RELATÓRIO
   If RGESCOLHA.ItemIndex=0 Then
       TIPO:='Abertas'
   Else
       TIPO:='Fechadas';

   If CBGarantia.Checked=True Then
       TIPO:= TIPO+' / COM GARANTIA'
   Else
       TIPO:= TIPO+' / SEM GARANTIA';

   If RGTipoServ.ItemIndex=0 Then
       TIPO:= TIPO+' / SERVIÇOS PRÓPRIOS'
   Else
       TIPO:= TIPO+' / SERVIÇOS TERCEIROS';

   FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
   DMMACS.TLoja.Edit;
   //Paulo 09/02/2012:Para relatório petshop
   if(FMenu.TIPOREL='RELPEDSINTFOR') and (DMMACS.TLoja.FieldByName('ATIVIDADE').AsString = 'PETSHOP') then
   	DMMACS.TLoja.FieldByName('TMP1').AsString:='Dt. Ini.: '+EdDataIni.Text+' / Dt. Fin.: '+EdDataFim.Text+' - '+FrmPessoaIni.EdDescricao.Text+' - '+FrmPessoaFim.EdDescricao.Text+' - '+'Tipo: '+TIPO
   else
   	DMMACS.TLoja.FieldByName('TMP1').AsString:='Dt. Ini.: '+EdDataIni.Text+' / Dt. Fin.: '+EdDataFim.Text+#13+FrmPessoaIni.EdDescricao.Text+' - '+FrmPessoaFim.EdDescricao.Text+#13+'Tipo: '+TIPO;
   DMMACS.TLoja.Post;
   DMMACS.Transaction.CommitRetaining;
   FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');

   If (RGTIPOREL.ItemIndex=0)
   Then Begin
       DMESTOQUE.TRel.Close;
       DMESTOQUE.TRel.SQL.Clear;
       DMESTOQUE.TRel.sql.Add(' Select ordem.comissao, ordem.desconto, ordem.dtabert, ordem.dtprev, ordem.dtentrega, ');
       DMESTOQUE.TRel.sql.Add(' ordem.numero, ordem.totprod, ordem.totserv, ordem.totord, ordem.totdesp, pessoa.nome AS CLIENTE, vwfuncionario.nome AS VENDEDOR, ');
       DMESTOQUE.TRel.sql.Add(' equipamento.descricao AS EQUIPAMENTO, formpag.descricao AS FORMPAG ');
       DMESTOQUE.TRel.sql.Add(' from ordem left join cliente on ordem.cod_cliente=cliente.cod_cliente ');
       DMESTOQUE.TRel.sql.Add(' left join pessoa on pessoa.cod_pessoa=cliente.cod_pessoa ');
       DMESTOQUE.TRel.sql.Add(' left join equipamento on equipamento.cod_equipamento=ordem.cod_equipamento ');
       DMESTOQUE.TRel.sql.Add(' left join formpag on formpag.cod_formpag=ordem.cod_formpag ');
       DMESTOQUE.TRel.sql.Add(' Left Join funcionario on funcionario.cod_func = ordem.cod_funcionario ');
       DMESTOQUE.TRel.sql.Add(' left join vwfuncionario ON vwfuncionario.cod_func = funcionario.cod_func ');
   End
   Else Begin
       DMESTOQUE.TRel.Close;
       DMESTOQUE.TRel.SQL.Clear;
       DMESTOQUE.TRel.SQL.Add('SELECT ordem.cod_ordem, ordem.comissao, ordem.totord, ordem.totprod, ordem.totserv, ');
       DMESTOQUE.TRel.SQL.Add(' ordem.desconto, ordem.cod_cliente, equipamento.descricao as EQUIPAMENTO, ordem.cod_equipamento, ordem.cod_funcionario, ');
       DMESTOQUE.TRel.SQL.Add('       ordem.cod_vendedor, ordem.dtabert, ordem.dtprev, ordem.numero, ordem.status, ');
       DMESTOQUE.TRel.SQL.Add('       ordem.totord, ordem.totdesp, cliente.cod_interno, pessoa.nome, equipamento.descricao, ORDEM.cod_loja ');
       DMESTOQUE.TRel.SQL.Add('       FROM ordem ');
       DMESTOQUE.TRel.SQL.Add('       Left Join cliente on ordem.cod_cliente=cliente.cod_cliente ');
       DMESTOQUE.TRel.SQL.Add('       left join pessoa on pessoa.cod_pessoa=cliente.cod_pessoa ');
       DMESTOQUE.TRel.SQL.Add('       left join equipamento on ordem.cod_equipamento=equipamento.cod_equipamento ');
   End;

  	If (FMenu.TIPOREL='RELCOMPORDEM')
   Then begin
   	DMESTOQUE.TRel.Close;
   	DMESTOQUE.TRel.SQL.Clear;
   	DMESTOQUE.TRel.sql.Add(' select ordem.cod_ordem, ordem.numero, ordem.localat AS ATENDIMENTO, ordem.totprod, ordem.totserv, ordem.totord, ordem.totdesp, ');
   	DMESTOQUE.TRel.sql.Add(' ordem.dtentrega, ordem.hrentrega, ordem.dtabert, ordem.hrabert, ');
   	DMESTOQUE.TRel.sql.Add(' empresa.fantasia AS EMPRESA, empresa.endereco AS ENDEMPRESA, empresa.bairro as BAIRROEMP, ');
   	DMESTOQUE.TRel.sql.Add(' pessoa.nome AS CLIENTE, pessoa.bairro AS BAIRROCLI, pessoa.endnumero, pessoa.endereco AS ENDCLI, pessoa.cep AS CEP, ');
   	DMESTOQUE.TRel.sql.Add(' pessoa.telrel AS FONECLI, pessoa.cpfcnpj AS CPFCLI, cidade.nome as CIDADES, ');
   	DMESTOQUE.TRel.sql.Add(' equipamento.descricao as EQUIPAMENTO, equipamento.marca, equipamento.kmatual, ');
   	DMESTOQUE.TRel.sql.Add(' equipamento.placa, ordem.nivelcomp, equipamento.modelo, equipamento.ano, ');
   	DMESTOQUE.TRel.sql.Add(' equipamento.chassi, equipamento.motor, equipamento.anomotor, equipamento.chassimotor ');
   	DMESTOQUE.TRel.sql.Add(' from ordem ');
   	DMESTOQUE.TRel.sql.Add(' left join cliente on cliente.cod_cliente=ordem.cod_cliente ');
   	DMESTOQUE.TRel.sql.Add(' left join pessoa on pessoa.cod_pessoa = cliente.cod_pessoa ');
   	DMESTOQUE.TRel.sql.Add(' left join equipamento on equipamento.cod_cliente = cliente.cod_cliente ');
   	DMESTOQUE.TRel.sql.Add(' left join loja on loja.cod_loja=ordem.cod_loja ');
   	DMESTOQUE.TRel.sql.Add(' left join empresa on empresa.cod_empresa = loja.cod_empresa ');
   	DMESTOQUE.TRel.sql.Add(' left join cidade on cidade.cod_cidade = pessoa.cod_cidade ');
   End;

   //Paulo 17/11/2011: Imprimi relatório para ordem petshop
   if(FMenu.TIPOREL='RELPEDSINTFOR') and (DMMACS.TLoja.FieldByName('ATIVIDADE').AsString = 'PETSHOP') then
   begin
       //Paulo 17/11/2011: Seleciona os produtos da Ordem
       DMESTOQUE.TRel.Close;
       DMESTOQUE.TRel.SQL.Clear;
       DMESTOQUE.TRel.sql.Add(' Select ordem.comissao, ordem.desconto, ordem.dtabert, ordem.dtprev, ordem.dtentrega, cliente.cod_interno as codcliente, ');
       DMESTOQUE.TRel.sql.Add(' ordem.numero, ordem.totprod, ordem.totserv, ordem.totord, ordem.totdesp, ordem.cod_cliente, pessoa.nome AS CLIENTE, vwfuncionario.nome AS VENDEDOR, ');
       DMESTOQUE.TRel.sql.Add(' equipamento.descricao AS EQUIPAMENTO, formpag.descricao AS FORMPAG, ');
       DMESTOQUE.TRel.sql.Add('itprodord.cod_itprodord,itprodord.qtd AS QTDPROD, itprodord.vlrunit AS VLRPROD, itprodord.desconto AS DESCPROD, itprodord.total AS TOTALPROD,');
       DMESTOQUE.TRel.sql.Add('itprodord.cod_estoque, estoque.cod_subprod, subproduto.descricao AS PRODUTO, subproduto.contrint ');
       DMESTOQUE.TRel.sql.Add(' from ordem left join cliente on ordem.cod_cliente=cliente.cod_cliente ');
       DMESTOQUE.TRel.sql.Add(' left join pessoa on pessoa.cod_pessoa=cliente.cod_pessoa ');
       DMESTOQUE.TRel.sql.Add(' left join equipamento on equipamento.cod_equipamento=ordem.cod_equipamento ');
       DMESTOQUE.TRel.sql.Add(' left join formpag on formpag.cod_formpag=ordem.cod_formpag ');
       DMESTOQUE.TRel.sql.Add(' Left Join funcionario on funcionario.cod_func = ordem.cod_funcionario ');
       DMESTOQUE.TRel.sql.Add('left join itprodord on ordem.cod_ordem = itprodord.cod_ordem');
       DMESTOQUE.TRel.sql.Add('left join estoque on itprodord.cod_estoque = estoque.cod_estoque');
       DMESTOQUE.TRel.sql.Add('left join subproduto on estoque.cod_subprod  = subproduto.cod_subproduto');
       DMESTOQUE.TRel.sql.Add(' left join vwfuncionario ON vwfuncionario.cod_func = funcionario.cod_func ');
       DMESTOQUE.TRel.SQL.Add(' WHERE (ORDEM.COD_LOJA=:CODLOJA) ');
       If CBGarantia.Checked=True Then
           DMESTOQUE.TRel.SQL.Add(' AND (ORDEM.GARANTIA='+#13+'1'+#13+') ');
       DMESTOQUE.TRel.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
       If (EdDataIni.Text<>'  /  /    ') And (EdDataFim.Text<>'  /  /    ')
       Then Begin//Se as duas datas informadas forem diferentes de "" deve se efetuar a sql entre as datas
           DMESTOQUE.TRel.SQL.Add(' AND (ORDEM.DTABERT Between :Data1 and :Data2) ');
           DMESTOQUE.TRel.ParamByName('Data1').AsString:=EdDataIni.Text;
           DMESTOQUE.TRel.ParamByName('Data2').AsString:=EdDataFim.Text;
       End;
       If (XPessoaIni<>'') and (XPessoaFim<>'')
       Then Begin//se forem informados as duas pessoas a sql deve ser feita entre elas
           DMESTOQUE.TRel.SQL.Add(' AND (PESSOA.NOME Between :PES1 And :PES2)');
           DMESTOQUE.TRel.ParamByName('PES1').AsString:=XPessoaIni;
           DMESTOQUE.TRel.ParamByName('PES2').AsString:=XPessoaFim;
       End;
       If RGESCOLHA.ItemIndex=0
       Then Begin//se for pedido apenas relatório de pendentes
           DMESTOQUE.TRel.SQL.Add(' AND (ORDEM.STATUS='+#39+'ABERTO'+#39+')');
       End;
       If RGESCOLHA.ItemIndex=1
       Then Begin//se realisar relatório apenas de baixados
           DMESTOQUE.TRel.SQL.Add(' AND (ORDEM.STATUS='+#39+'FECHADO'+#39+')');
       End;
       //Paulo 18/11/2011: Realiza somente à vista
       If RGPagto.ItemIndex=1
       Then Begin
           DMESTOQUE.TRel.SQL.Add(' AND (formpag.descricao='+#39+'À VISTA'+#39+')');
       End;
       //Paulo 18/11/2011: Realiza somente à prazo
       If RGPagto.ItemIndex=2
       Then Begin
           DMESTOQUE.TRel.SQL.Add(' AND (formpag.descricao<>'+#39+'À VISTA'+#39+')');
       End;
       DMESTOQUE.TRel.sql.Add(' Order By pessoa.nome, ordem.cod_ordem ');
       DMESTOQUE.TRel.SQL.Text;
       DMESTOQUE.TRel.Open;
       If Not DMESTOQUE.TRel.IsEmpty
       Then Begin
           FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfOrdServ_Sint_Cli_Prod.frf');
           FSRel.ShowReport;
           Exit;
       End
       Else Begin
           MessageDlg('O Retorno do filtro obteve resultou vazio', mtWarning, [mbOK], 0);
       End;
       Exit;
   end;

   //
   If (FMenu.TIPOREL='RELORDEMTERCEIRO')
   Then begin
         DMESTOQUE.TRel.Close;
         DMESTOQUE.TRel.SQL.Clear;
         DMESTOQUE.TRel.sql.Add(' Select ordem.comissao, ordem.desconto, ordem.dtabert, ordem.dtprev, ordem.dtentrega,');
         DMESTOQUE.TRel.sql.Add(' ordem.numero, ordem.totprod, ordem.descserv, ordem.totserv, ordem.totord, ordem.totdesp, pessoa.nome AS CLIENTE, vwfuncionario.nome AS VENDEDOR,');
         DMESTOQUE.TRel.sql.Add(' equipamento.descricao AS EQUIPAMENTO, formpag.descricao AS FORMPAG, despadic.vlrtotfin AS VALSERV, despadic.vlrreal as VALCUSTO, despadic.qtd as QTDSERV, despadic.despesa AS SERVICO');
         DMESTOQUE.TRel.sql.Add(' from ordem left join cliente on ordem.cod_cliente=cliente.cod_cliente ');
         DMESTOQUE.TRel.sql.Add(' left join pessoa on pessoa.cod_pessoa=cliente.cod_pessoa ');
         DMESTOQUE.TRel.sql.Add(' left join equipamento on equipamento.cod_equipamento=ordem.cod_equipamento ');
         DMESTOQUE.TRel.sql.Add(' left join formpag on formpag.cod_formpag=ordem.cod_formpag ');
         DMESTOQUE.TRel.sql.Add(' Left Join funcionario on funcionario.cod_func = ordem.cod_funcionario ');
         DMESTOQUE.TRel.sql.Add(' left join vwfuncionario ON vwfuncionario.cod_func = funcionario.cod_func ');
         DMESTOQUE.TRel.sql.Add('left join despadic on ordem.cod_ordem = despadic.cod_gerador');
         DMESTOQUE.TRel.SQL.Add(' WHERE (ORDEM.COD_LOJA=:CODLOJA) ');
         If CBGarantia.Checked=True Then
             DMESTOQUE.TRel.SQL.Add(' AND (ORDEM.GARANTIA='+#13+'1'+#13+') ');
         DMESTOQUE.TRel.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
         If (EdDataIni.Text<>'  /  /    ') And (EdDataFim.Text<>'  /  /    ')
         Then Begin//Se as duas datas informadas forem diferentes de "" deve se efetuar a sql entre as datas
             DMESTOQUE.TRel.SQL.Add(' AND (ORDEM.DTABERT Between :Data1 and :Data2) ');
             DMESTOQUE.TRel.ParamByName('Data1').AsString:=EdDataIni.Text;
             DMESTOQUE.TRel.ParamByName('Data2').AsString:=EdDataFim.Text;
         End;
         If (XPessoaIni<>'') and (XPessoaFim<>'')
         Then Begin//se forem informados as duas pessoas a sql deve ser feita entre elas
             DMESTOQUE.TRel.SQL.Add(' AND (PESSOA.NOME Between :PES1 And :PES2)');
             DMESTOQUE.TRel.ParamByName('PES1').AsString:=XPessoaIni;
             DMESTOQUE.TRel.ParamByName('PES2').AsString:=XPessoaFim;
         End;
         If RGESCOLHA.ItemIndex=0
         Then Begin//se for pedido apenas relatório de pendentes
             DMESTOQUE.TRel.SQL.Add(' AND (ORDEM.STATUS='+#39+'ABERTO'+#39+')');
         End;
         If RGESCOLHA.ItemIndex=1
         Then Begin//se realisar relatório apenas de baixados
             DMESTOQUE.TRel.SQL.Add(' AND (ORDEM.STATUS='+#39+'FECHADO'+#39+')');
         End;
         //Paulo 24/11/2011: Verifica o tipo de serviço
         If RGTipoServ.ItemIndex=0
         Then Begin
             DMESTOQUE.TRel.SQL.Add(' AND (despadic.unidade='+#39+'0'+#39+' OR despadic.unidade IS NULL)');
         End else
         begin
             DMESTOQUE.TRel.SQL.Add(' AND (despadic.unidade='+#39+'1'+#39+')');
         end;

         DMESTOQUE.TRel.sql.Add(' Order By pessoa.nome ');
         DMESTOQUE.TRel.SQL.Text;
         DMESTOQUE.TRel.Open;
         If Not DMESTOQUE.TRel.IsEmpty
         Then Begin
             FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfOrdServ_Terceiros.frf');
             FSRel.ShowReport;
             Exit;
         End
         Else Begin
             MessageDlg('O Retorno do filtro obteve resultou vazio', mtWarning, [mbOK], 0);
         End;



   end;


   If (FMenu.TIPOREL='RELOSANALITICOSERVAGRUPADO')
   Then begin
       ImpRelAnaliticoServicos;
       Exit;
   	DMESTOQUE.TRel.Close;
   	DMESTOQUE.TRel.SQL.Clear;
   	DMESTOQUE.TRel.sql.Add(' Select ordem.numero, ordem.cod_ordem, vwcliente.cod_interno, pessoa.nome, vwcliente.nome as Cliente, equipamento.descricao As Equipamento, ordem.dtabert, ');
   	DMESTOQUE.TRel.sql.Add('        Ordem.totserv, ordem.totprod, ordem.totord ');
   	DMESTOQUE.TRel.sql.Add('        from ordem ');
   	DMESTOQUE.TRel.sql.Add(' left join vwcliente on ordem.cod_cliente = vwcliente.cod_cliente ');
   	DMESTOQUE.TRel.sql.Add(' Left join pessoa on vwcliente.cod_pessoa = pessoa.cod_pessoa ');
   	DMESTOQUE.TRel.sql.Add(' left join equipamento on ordem.cod_equipamento = equipamento.cod_equipamento Where (ordem.cod_loja=:Loja) ');
       DMESTOQUE.TRel.ParamByName('Loja').AsString:=FMenu.LCODLOJA.Caption;
       If (EdDataIni.Text<>'  /  /    ') And (EdDataFim.Text<>'  /  /    ')
       Then Begin//Se as duas datas informadas forem diferentes de "" deve se efetuar a sql entre as datas
           DMESTOQUE.TRel.SQL.Add(' AND (ORDEM.DTABERT Between :Data1 and :Data2) ');
           DMESTOQUE.TRel.ParamByName('Data1').AsString:=EdDataIni.Text;
           DMESTOQUE.TRel.ParamByName('Data2').AsString:=EdDataFim.Text;
       End;
       If (XPessoaIni<>'') and (XPessoaFim<>'')
       Then Begin//se forem informados as duas pessoas a sql deve ser feita entre elas
           DMESTOQUE.TRel.SQL.Add(' AND (PESSOA.NOME Between :PES1 And :PES2)');
           DMESTOQUE.TRel.ParamByName('PES1').AsString:=XPessoaIni;
           DMESTOQUE.TRel.ParamByName('PES2').AsString:=XPessoaFim;
       End;
       If RGESCOLHA.ItemIndex=0
       Then Begin//se for pedido apenas relatório de pendentes
           DMESTOQUE.TRel.SQL.Add(' AND (ORDEM.STATUS='+#39+'ABERTO'+#39+')');
       End;
       If RGESCOLHA.ItemIndex=1
       Then Begin//se realisar relatório apenas de baixados
           DMESTOQUE.TRel.SQL.Add(' AND (ORDEM.STATUS='+#39+'FECHADO'+#39+')');
       End;
       DMESTOQUE.TRel.sql.Add(' Order By pessoa.nome, ordem.numero ');
       DMESTOQUE.TRel.SQL.Text;
       DMESTOQUE.TRel.Open;
       DMESTOQUE.TRel1.Close;
       DMESTOQUE.TRel1.SQL.Clear;
       DMESTOQUE.TRel1.SQL.Add(' Select vwsimilar.contrint, vwsimilar.descricao as Produto, itprodord.qtd as QtdProduto, itprodord.vlrunit as VlrUnitProduto, itprodord.desconto as DescProduto, itprodord.total as TotalProduto ');
       DMESTOQUE.TRel1.SQL.Add('        from  itprodord ');
       DMESTOQUE.TRel1.SQL.Add(' left join vwsimilar on itprodord.cod_estoque = vwsimilar.cod_estoque ');
       DMESTOQUE.TRel1.SQL.Add(' where itprodord.cod_ordem=:Ordem ');
       DMESTOQUE.TRel1.ParamByName('Ordem').AsInteger:=DMESTOQUE.TRel.FieldByName('COD_ORDEM').AsInteger;
       DMESTOQUE.TRel1.SQL.Text;
       DMESTOQUE.TRel1.Open;
       DMESTOQUE.TRel2.Close;
       DMESTOQUE.TRel2.SQL.Clear;
       DMESTOQUE.TRel2.SQL.Add(' Select vwsubservico.cod_interno, vwsubservico.descricao as NomeServico, itservord.qtd as QtdServico, itservord.vlrunit as VlrUnitServico, itservord.desconto as DescServico, itservord.total as TotalServico ');
       DMESTOQUE.TRel2.SQL.Add('        from  itservord ');
       DMESTOQUE.TRel2.SQL.Add(' left join vwsubservico on itservord.cod_servico = vwsubservico.cod_subservico ');
       DMESTOQUE.TRel2.SQL.Add(' where itservord.cod_ordem=:Ordem ');
       DMESTOQUE.TRel2.ParamByName('Ordem').AsInteger:=DMESTOQUE.TRel.FieldByName('COD_ORDEM').AsInteger;
       DMESTOQUE.TRel2.SQL.Text;
       DMESTOQUE.TRel2.Open;
       QrRELOSANALITICO01.Preview;
   End;

   If (FMenu.TIPOREL='RELOSPRODUTOCLIENTE')
   Then begin
       ///Paulo 27/10/2011: Relatório de ordens agrupados por Clientes e Produtos
       DMESTOQUE.TRel.Close;
       DMESTOQUE.TRel.SQL.Clear;
       DMESTOQUE.TRel.sql.Add('Select ordem.numero, ordem.cod_ordem, vwcliente.cod_interno,vwcliente.cod_cliente ,pessoa.nome, vwcliente.nome as Cliente, equipamento.descricao As Equipamento, ordem.dtabert,');
       DMESTOQUE.TRel.sql.Add('Ordem.totserv, ordem.totprod, ordem.totord,');
       DMESTOQUE.TRel.sql.Add('produto.descricao as GRADE,produto.cod_produto, vwsimilar.cod_subproduto, vwsimilar.contrint, vwsimilar.descricao as NomeSimilar, itprodord.qtd as QtdProd,');
       DMESTOQUE.TRel.sql.Add('itprodord.vlrunit as VlrUnitProd, itprodord.desconto as DescProd, itprodord.total as TotalProd');
       DMESTOQUE.TRel.sql.Add('from itprodord');
       DMESTOQUE.TRel.sql.Add('left join ordem on itprodord.cod_ordem = ordem.cod_ordem');
       DMESTOQUE.TRel.sql.Add('left join estoque on itprodord.cod_estoque = estoque.cod_estoque');
       DMESTOQUE.TRel.sql.Add('left join vwsimilar on estoque.cod_subprod = vwsimilar.cod_subproduto');
       DMESTOQUE.TRel.sql.Add('left join produto on vwsimilar.cod_produto = produto.cod_produto');
       DMESTOQUE.TRel.sql.Add('left join vwcliente on ordem.cod_cliente = vwcliente.cod_cliente');
       DMESTOQUE.TRel.sql.Add('Left join pessoa on vwcliente.cod_pessoa = pessoa.cod_pessoa');
       DMESTOQUE.TRel.sql.Add('left join equipamento on ordem.cod_equipamento = equipamento.cod_equipamento');
       DMESTOQUE.TRel.sql.Add(' Where (ordem.cod_loja=:Loja) ');
       DMESTOQUE.TRel.ParamByName('Loja').AsString:=FMenu.LCODLOJA.Caption;
       If (EdDataIni.Text<>'  /  /    ') And (EdDataFim.Text<>'  /  /    ')
       Then Begin//Se as duas datas informadas forem diferentes de "" deve se efetuar a sql entre as datas
           DMESTOQUE.TRel.SQL.Add(' AND (ORDEM.DTABERT Between :Data1 and :Data2) ');
           DMESTOQUE.TRel.ParamByName('Data1').AsString:=EdDataIni.Text;
           DMESTOQUE.TRel.ParamByName('Data2').AsString:=EdDataFim.Text;
       End;
       If (XPessoaIni<>'') and (XPessoaFim<>'')
       Then Begin//se forem informados as duas pessoas a sql deve ser feita entre elas
           DMESTOQUE.TRel.SQL.Add(' AND (PESSOA.NOME Between :PES1 And :PES2)');
           DMESTOQUE.TRel.ParamByName('PES1').AsString:=XPessoaIni;
           DMESTOQUE.TRel.ParamByName('PES2').AsString:=XPessoaFim;
       End;
       If RGESCOLHA.ItemIndex=0
       Then Begin//se for pedido apenas relatório de pendentes
           DMESTOQUE.TRel.SQL.Add(' AND (ORDEM.STATUS='+#39+'ABERTO'+#39+')');
       End;
       If RGESCOLHA.ItemIndex=1
       Then Begin//se realisar relatório apenas de baixados
           DMESTOQUE.TRel.SQL.Add(' AND (ORDEM.STATUS='+#39+'FECHADO'+#39+')');
       End;
       DMESTOQUE.TRel.sql.Add(' order by vwcliente.cod_cliente, produto.descricao, vwsimilar.descricao ');
       DMESTOQUE.TRel.Open;
       If Not DMESTOQUE.TRel.IsEmpty
       Then Begin
           FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfRelOSProdutosCliente.frf');
           FSRel.ShowReport;
           Exit;
       End
       Else Begin
           MessageDlg('O Retorno do filtro obteve resultou vazio', mtWarning, [mbOK], 0);
       End;
   end;

   If (FMenu.TIPOREL='RELOSSERVICOSCLIENTE')
   Then begin
       ///Paulo 27/10/2011: Relatório de ordens agrupados por clientes e serviços
       DMESTOQUE.TRel.Close;
       DMESTOQUE.TRel.SQL.Clear;
       DMESTOQUE.TRel.sql.Add(' Select ordem.numero, ordem.cod_ordem, vwcliente.cod_interno,vwcliente.cod_cliente, pessoa.nome, vwcliente.nome as Cliente, equipamento.descricao As Equipamento, ordem.dtabert, ');
       DMESTOQUE.TRel.sql.Add('Ordem.totserv, ordem.totprod, ordem.totord, ');
       DMESTOQUE.TRel.sql.Add('servico.descricao as GRADE,servico.cod_servico, vwsubservico.cod_subservico, vwsubservico.cod_interno, vwsubservico.descricao as NomeServico, itservord.qtd as QtdServico, ');
       DMESTOQUE.TRel.sql.Add('itservord.vlrunit as VlrUnitServico, itservord.desconto as DescServico, itservord.total as TotalServico ');
       DMESTOQUE.TRel.sql.Add('from itservord ');
       DMESTOQUE.TRel.sql.Add(' left join ordem on itservord.cod_ordem = ordem.cod_ordem ');
       DMESTOQUE.TRel.sql.Add('left join vwsubservico on itservord.cod_servico = vwsubservico.cod_subservico ');
       DMESTOQUE.TRel.sql.Add(' left join servico on vwsubservico.cod_servico = servico.cod_servico ');
       DMESTOQUE.TRel.sql.Add(' left join vwcliente on ordem.cod_cliente = vwcliente.cod_cliente ');
       DMESTOQUE.TRel.sql.Add(' Left join pessoa on vwcliente.cod_pessoa = pessoa.cod_pessoa ');
       DMESTOQUE.TRel.sql.Add(' left join equipamento on ordem.cod_equipamento = equipamento.cod_equipamento ');
       DMESTOQUE.TRel.sql.Add(' Where (ordem.cod_loja=:Loja) ');
       DMESTOQUE.TRel.ParamByName('Loja').AsString:=FMenu.LCODLOJA.Caption;
       If (EdDataIni.Text<>'  /  /    ') And (EdDataFim.Text<>'  /  /    ')
       Then Begin//Se as duas datas informadas forem diferentes de "" deve se efetuar a sql entre as datas
           DMESTOQUE.TRel.SQL.Add(' AND (ORDEM.DTABERT Between :Data1 and :Data2) ');
           DMESTOQUE.TRel.ParamByName('Data1').AsString:=EdDataIni.Text;
           DMESTOQUE.TRel.ParamByName('Data2').AsString:=EdDataFim.Text;
       End;
       If (XPessoaIni<>'') and (XPessoaFim<>'')
       Then Begin//se forem informados as duas pessoas a sql deve ser feita entre elas
           DMESTOQUE.TRel.SQL.Add(' AND (PESSOA.NOME Between :PES1 And :PES2)');
           DMESTOQUE.TRel.ParamByName('PES1').AsString:=XPessoaIni;
           DMESTOQUE.TRel.ParamByName('PES2').AsString:=XPessoaFim;
       End;
       If RGESCOLHA.ItemIndex=0
       Then Begin//se for pedido apenas relatório de pendentes
           DMESTOQUE.TRel.SQL.Add(' AND (ORDEM.STATUS='+#39+'ABERTO'+#39+')');
       End;
       If RGESCOLHA.ItemIndex=1
       Then Begin//se realisar relatório apenas de baixados
           DMESTOQUE.TRel.SQL.Add(' AND (ORDEM.STATUS='+#39+'FECHADO'+#39+')');
       End;
       DMESTOQUE.TRel.sql.Add(' order by vwcliente.cod_cliente, servico.descricao, vwsubservico.cod_subservico ');
       DMESTOQUE.TRel.Open;
       If Not DMESTOQUE.TRel.IsEmpty
       Then Begin
           FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfRelOSServicosCliente.frf');
           FSRel.ShowReport;
           Exit;
       End
       Else Begin
           MessageDlg('O Retorno do filtro obteve resultou vazio', mtWarning, [mbOK], 0);
       End;
   end;

   If (FMenu.TIPOREL='RELOSANALITICOPRODAGRUPADO')
   Then begin
       ///Paulo 27/10/2011: Relatório de serviços ordenados por produtos
       DMESTOQUE.TRel.Close;
       DMESTOQUE.TRel.SQL.Clear;
       DMESTOQUE.TRel.sql.Add('Select ordem.numero, ordem.cod_ordem, vwcliente.cod_interno,vwcliente.cod_cliente ,pessoa.nome, vwcliente.nome as Cliente, equipamento.descricao As Equipamento, ordem.dtabert,');
       DMESTOQUE.TRel.sql.Add('Ordem.totserv, ordem.totprod, ordem.totord,');
       DMESTOQUE.TRel.sql.Add('produto.descricao as GRADE,produto.cod_produto, vwsimilar.cod_subproduto, vwsimilar.contrint, vwsimilar.descricao as NomeSimilar, itprodord.qtd as QtdProd,');
       DMESTOQUE.TRel.sql.Add('itprodord.vlrunit as VlrUnitProd, itprodord.desconto as DescProd, itprodord.total as TotalProd');
       DMESTOQUE.TRel.sql.Add('from itprodord');
       DMESTOQUE.TRel.sql.Add('left join ordem on itprodord.cod_ordem = ordem.cod_ordem');
       DMESTOQUE.TRel.sql.Add('left join estoque on itprodord.cod_estoque = estoque.cod_estoque');
       DMESTOQUE.TRel.sql.Add('left join vwsimilar on estoque.cod_subprod = vwsimilar.cod_subproduto');
       DMESTOQUE.TRel.sql.Add('left join produto on vwsimilar.cod_produto = produto.cod_produto');
       DMESTOQUE.TRel.sql.Add('left join vwcliente on ordem.cod_cliente = vwcliente.cod_cliente');
       DMESTOQUE.TRel.sql.Add('Left join pessoa on vwcliente.cod_pessoa = pessoa.cod_pessoa');
       DMESTOQUE.TRel.sql.Add('left join equipamento on ordem.cod_equipamento = equipamento.cod_equipamento');
       DMESTOQUE.TRel.sql.Add(' Where (ordem.cod_loja=:Loja) ');
       DMESTOQUE.TRel.ParamByName('Loja').AsString:=FMenu.LCODLOJA.Caption;
       If (EdDataIni.Text<>'  /  /    ') And (EdDataFim.Text<>'  /  /    ')
       Then Begin//Se as duas datas informadas forem diferentes de "" deve se efetuar a sql entre as datas
           DMESTOQUE.TRel.SQL.Add(' AND (ORDEM.DTABERT Between :Data1 and :Data2) ');
           DMESTOQUE.TRel.ParamByName('Data1').AsString:=EdDataIni.Text;
           DMESTOQUE.TRel.ParamByName('Data2').AsString:=EdDataFim.Text;
       End;
       If (XPessoaIni<>'') and (XPessoaFim<>'')
       Then Begin//se forem informados as duas pessoas a sql deve ser feita entre elas
           DMESTOQUE.TRel.SQL.Add(' AND (PESSOA.NOME Between :PES1 And :PES2)');
           DMESTOQUE.TRel.ParamByName('PES1').AsString:=XPessoaIni;
           DMESTOQUE.TRel.ParamByName('PES2').AsString:=XPessoaFim;
       End;
       If RGESCOLHA.ItemIndex=0
       Then Begin//se for pedido apenas relatório de pendentes
           DMESTOQUE.TRel.SQL.Add(' AND (ORDEM.STATUS='+#39+'ABERTO'+#39+')');
       End;
       If RGESCOLHA.ItemIndex=1
       Then Begin//se realisar relatório apenas de baixados
           DMESTOQUE.TRel.SQL.Add(' AND (ORDEM.STATUS='+#39+'FECHADO'+#39+')');
       End;
       DMESTOQUE.TRel.sql.Add(' order by produto.descricao, vwsimilar.descricao ');
       DMESTOQUE.TRel.Open;
       If Not DMESTOQUE.TRel.IsEmpty
       Then Begin
           FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfRelOSAnaliticoProdutos.frf');
           FSRel.ShowReport;
           Exit;
       End
       Else Begin
           MessageDlg('O Retorno do filtro obteve resultou vazio', mtWarning, [mbOK], 0);
       End;
   end

   Else Begin
       DMESTOQUE.TRel.SQL.Add(' WHERE (ORDEM.COD_LOJA=:CODLOJA) ');
       If CBGarantia.Checked=True Then
           DMESTOQUE.TRel.SQL.Add(' AND (ORDEM.GARANTIA='+#13+'1'+#13+') ');
       DMESTOQUE.TRel.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
       If (EdDataIni.Text<>'  /  /    ') And (EdDataFim.Text<>'  /  /    ')
       Then Begin//Se as duas datas informadas forem diferentes de "" deve se efetuar a sql entre as datas
           DMESTOQUE.TRel.SQL.Add(' AND (ORDEM.DTABERT Between :Data1 and :Data2) ');
           DMESTOQUE.TRel.ParamByName('Data1').AsString:=EdDataIni.Text;
           DMESTOQUE.TRel.ParamByName('Data2').AsString:=EdDataFim.Text;
       End;
       If (XPessoaIni<>'') and (XPessoaFim<>'')
       Then Begin//se forem informados as duas pessoas a sql deve ser feita entre elas
           DMESTOQUE.TRel.SQL.Add(' AND (PESSOA.NOME Between :PES1 And :PES2)');
           DMESTOQUE.TRel.ParamByName('PES1').AsString:=XPessoaIni;
           DMESTOQUE.TRel.ParamByName('PES2').AsString:=XPessoaFim;
       End;
       If RGESCOLHA.ItemIndex=0
       Then Begin//se for pedido apenas relatório de pendentes
           DMESTOQUE.TRel.SQL.Add(' AND (ORDEM.STATUS='+#39+'ABERTO'+#39+')');
       End;
       If RGESCOLHA.ItemIndex=1
       Then Begin//se realisar relatório apenas de baixados
           DMESTOQUE.TRel.SQL.Add(' AND (ORDEM.STATUS='+#39+'FECHADO'+#39+')');
       End;
       DMESTOQUE.TRel.sql.Add(' Order By pessoa.nome ');
       DMESTOQUE.TRel.SQL.Text;
       DMESTOQUE.TRel.Open;

       If (FMenu.TIPOREL='RELCOMPORDEM')
       Then Begin
           QrFichaOrd.Preview;
       End;
       If (FMenu.TIPOREL<>'RELCOMPORDEM')
       Then Begin
           If (RGTIPOREL.ItemIndex=0) And (FMenu.TIPOREL<>'RELCOMPORDEM') And (CBESPECIFICA.Text='NORMAL')
           Then Begin
               FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfOrdServ_Sint_Cli.frf');
               FSRel.ShowReport;
           end
           Else Begin
               If CBESPECIFICA.Text='SIMPLIFICADO'
               Then Begin
                   FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfOrdServ_Simplificado.frf');
                   FSRel.ShowReport;
               End
               Else Begin
                   QrOrdem.Preview;
               End;
           End;
       End;
   End;
End;
procedure TFRelOrdem.BtnVisualizarClick(Sender: TObject);
begin
  inherited;
  	If (FMenu.TIPOREL<>'RELCOMPORDEM') and (FMenu.TIPOREL<>'RELOSANALITICOSERVAGRUPADO') and (FMenu.TIPOREL<>'RELOSANALITICOPRODAGRUPADO')and (FMenu.TIPOREL<>'RELOSPRODUTOCLIENTE')and (FMenu.TIPOREL<>'RELOSSERVICOSCLIENTE')and(FMenu.TIPOREL<>'RELORDEMTERCEIRO')
   Then Begin
       If FMenu.TIPOREL <> 'ANALITICOCLI'
       Then Begin
           If FMenu.TIPOREL='RELPEDCLI'
           Then Begin
             If RGTIPOREL.ItemIndex=0 Then
                 FMenu.TIPOREL:='RELPEDSINTCLI'
             Else
                 FMenu.TIPOREL:='RELPEDANALCLI';
           End
           Else Begin
             If RGTIPOREL.ItemIndex=0 Then
                 FMenu.TIPOREL:='RELPEDSINTFOR'
             Else
                 FMenu.TIPOREL:='RELPEDANALFOR';
           End;
       End;
   End;
   PrepImp;
end;

procedure TFRelOrdem.FrmPessoaIniEDCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
	If Key = VK_return
   Then Begin
		If (FMenu.TIPOREL='RELPEDCLI') OR (FMenu.TIPOREL='RELORDEM')
       Then Begin//trabalhando com vendas
       	If FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_INTERNO', FrmPessoaIni.EDCodigo.Text, '')=True
           Then Begin//CASO CONSEGUIU SELECIONAR CLIENTE
	        	XPESSOAINI:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
	            FrmPessoaIni.EdDescricao.Text:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
           End
	        Else Begin//CASO NÃO CONSEGUIU SELECIONAR CLIENTE
               XPESSOAINI:='';
               FrmPessoaIni.EdDescricao.Text:='';
	            FrmPessoaIni.EDCodigo.Text:='';
           End;
       End
       Else Begin
       	If FiltraTabela(DMPESSOA.WFornecedor, 'VWFORNEC', 'COD_INTERNO',FrmPessoaIni.EDCodigo.Text, '')=True
           Then Begin
	        	XPESSOAINI:=DMPESSOA.WFornecedor.FieldByName('COD_FORNEC').AsString;
	            FrmPessoaIni.EdDescricao.Text:=DMPESSOA.WFornecedor.FieldByName('NOME').AsString;
           End
           Else Begin
               XPESSOAINI:='';
               FrmPessoaIni.EdDescricao.Text:='';
	            FrmPessoaIni.EDCodigo.Text:='';
           End;
       End;
       FrmPessoaIni.Repaint;       
   End;

end;

procedure TFRelOrdem.FrmPessoaFimEDCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
	If Key = VK_return
   Then Begin
		If (FMenu.TIPOREL='RELPEDCLI') OR (FMenu.TIPOREL='RELORDEM')
       Then Begin//trabalhando com vendas
       	If FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_INTERNO', FrmPessoaIni.EDCodigo.Text, '')=True
           Then Begin//CASO CONSEGUIU SELECIONAR CLIENTE
	        	XPESSOAFIM:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
	            FrmPessoaFim.EdDescricao.Text:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
           End
	        Else Begin//CASO NÃO CONSEGUIU SELECIONAR CLIENTE
               XPESSOAFIM:='';
               FrmPessoaFim.EdDescricao.Text:='';
	            FrmPessoaFim.EDCodigo.Text:='';
           End;
       End
       Else Begin
       	If FiltraTabela(DMPESSOA.WFornecedor, 'VWFORNEC', 'COD_INTERNO',FrmPessoaIni.EDCodigo.Text, '')=True
           Then Begin
	        	XPESSOAFIM:=DMPESSOA.WFornecedor.FieldByName('COD_FORNEC').AsString;
	            FrmPessoaFim.EdDescricao.Text:=DMPESSOA.WFornecedor.FieldByName('NOME').AsString;
           End
           Else Begin
               XPESSOAFIM:='';
               FrmPessoaFim.EdDescricao.Text:='';
	            FrmPessoaFim.EDCodigo.Text:='';
           End;
       End;
       FrmPessoaFim.Repaint;
   End;
end;

procedure TFRelOrdem.FrmPessoaIniBTNOPENClick(Sender: TObject);
begin
  inherited;
  	//LIBERA TODOS OS CLIENTES PARA CONSUTA
  	filtraTabela(DMPESSOA.WCliente, 'VWCLIENTE', '', '', '');
  	If AbrirForm(TFCliente, FCliente, 1)='Selected'
	Then Begin
       XPessoaIni:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
       FrmPessoaIni.EdDescricao.Text:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
       FrmPessoaIni.EDCodigo.text:=DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString;
       FrmPessoaIni.Repaint;
	End;
end;

procedure TFRelOrdem.FrmPessoaFimBTNOPENClick(Sender: TObject);
begin
  inherited;
  	//LIBERA TODOS OS CLIENTES PARA CONSUTA
  	filtraTabela(DMPESSOA.WCliente, 'VWCLIENTE', '', '', '');
  	If AbrirForm(TFCliente, FCliente, 1)='Selected'
  	Then Begin
       XPessoaFim:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
       FrmPessoaFim.EdDescricao.Text:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
       FrmPessoaFim.EDCodigo.text:=DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString;
       FrmPessoaFim.Repaint;       
	End;
end;

procedure TFRelOrdem.FrmPessoaIniBTNMINUSClick(Sender: TObject);
begin
  inherited;
   //limpa pessoa inicial
   XPessoaIni:='';
   FrmPessoaIni.EDCodigo.Text:='';
   FrmPessoaini.EdDescricao.Text:='';
   FrmPessoaIni.Repaint;   
end;

procedure TFRelOrdem.FrmPessoaFimBTNMINUSClick(Sender: TObject);
begin
  inherited;
   //limpa pessoa inicial
   XPessoaFim:='';
   FrmPessoaFim.EDCodigo.Text:='';
   FrmPessoaFim.EdDescricao.Text:='';
   FrmPessoaFim.Repaint;   
end;

procedure TFRelOrdem.BtnImprimirClick(Sender: TObject);
begin
//  inherited;
//QrFichaOrd.Preview;

end;
procedure TFRelOrdem.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
   DMESTOQUE.TRel1.Close;
   DMESTOQUE.TRel1.SQL.Clear;
   DMESTOQUE.TRel1.SQL.Add('select subproduto.descricao As PRODUTO, subproduto.marca, itprodord.data, ');
   DMESTOQUE.TRel1.SQL.Add('itprodord.desconto, itprodord.lucmoe, itprodord.lucper, itprodord.numreq, ');
   DMESTOQUE.TRel1.SQL.Add('itprodord.qtd, itprodord.total, itprodord.vlrunit from ');
   DMESTOQUE.TRel1.SQL.Add('itprodord left join estoque on estoque.cod_estoque = itprodord.cod_estoque ');
   DMESTOQUE.TRel1.SQL.Add('left join subproduto on subproduto.cod_subproduto = estoque.cod_subprod ');
   DMESTOQUE.TRel1.SQL.Add('where itprodord.cod_ordem=:CODORD ');
   DMESTOQUE.TRel1.ParamByName('CODORD').AsInteger:=DMESTOQUE.TRel.FieldByName('COD_ORDEM').AsInteger;
   DMESTOQUE.TRel1.SQL.Text;
   DMESTOQUE.TRel1.Open;

   DMESTOQUE.TRel2.Close;
   DMESTOQUE.TRel2.SQL.Clear;
   DMESTOQUE.TRel2.SQL.Add(' select itservord.data, itservord.cod_servico, ');
   DMESTOQUE.TRel2.SQL.Add(' itservord.desconto, itservord.lucmoe, itservord.lucper, ');
   DMESTOQUE.TRel2.SQL.Add(' itservord.qtd, itservord.total, itservord.vlrunit, ');
   DMESTOQUE.TRel2.SQL.Add(' subservico.descricao As servico, subservico.cod_servico ');
   DMESTOQUE.TRel2.SQL.Add(' from itservord left join subservico on itservord.cod_servico = subservico.cod_subservico');
   DMESTOQUE.TRel2.SQL.Add(' where itservord.cod_ordem=:CODORD ');
   DMESTOQUE.TRel2.ParamByName('CODORD').AsInteger:=DMESTOQUE.TRel.FieldByName('COD_ORDEM').AsInteger;
   DMESTOQUE.TRel2.Open;

   DMESTOQUE.TRel3.Close;
   DMESTOQUE.TRel3.SQL.Clear;
   DMESTOQUE.TRel3.SQL.Add('select * from despadic where despadic.cod_gerador = :codigo');
   DMESTOQUE.TRel3.ParamByName('codigo').AsInteger := DMESTOQUE.TRel.FieldByName('COD_ORDEM').AsInteger;
   DMESTOQUE.TRel3.Open;

   //SOMA OS TOTAIS
   XTOTORD:=XTOTORD+DMESTOQUE.TRel.FieldByName('TOTORD').AsCurrency;
	XTOTPROD:=XTOTPROD+DMESTOQUE.TRel.FieldByName('TOTPROD').AsCurrency;
   XTOTSERV:=XTOTSERV+DMESTOQUE.TRel.FieldByName('TOTSERV').AsCurrency;
   XTOTDESP:=XTOTDESP+DMESTOQUE.TRel.FieldByName('TOTDESP').AsCurrency;

end;

procedure TFRelOrdem.QrOrdemBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  inherited;
   XTOTORD:=0;
   XTOTSERV:=0;
   XTOTPROD:=0;
   XTOTDESP := 0;
end;

procedure TFRelOrdem.QRBand5BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
   QRTOTPROD.Caption:=FormatFloat('####,##0.00', XTOTPROD);
   QRTOTSERV.Caption:=FormatFloat('####,##0.00', XTOTSERV);
   QRLTOTORD.Caption:=FormatFloat('####,##0.00', XTOTORD);
   QRTOTDESP.Caption:=FormatFloat('####,##0.00', XTOTDESP);   
end;

procedure TFRelOrdem.FormActivate(Sender: TObject);
begin
  inherited;
  	FSDSRel.DataSource:=DMESTOQUE.DRel;
   // se foi escolhido o menu para "Relatorio analitico" então as alternativas dos relatorios são "apagadas"
   If FMenu.TIPOREL = 'ANALITICOCLI'
   Then Begin
       RGTIPOREL.Visible := false;
       RGTIPOREL.SendToBack;
   End;
   if(FMenu.TIPOREL='RELORDEM')and (DMMACS.TLoja.FieldByName('ATIVIDADE').AsString = 'PETSHOP')then
   begin
       RGPagto.Visible:=true;
       RGPagto.BringToFront;
   end else
   begin
       RGPagto.Visible:=false;
       RGPagto.SendToBack;
   end;

   //Paulo 24/11/2011:Relatorio de ordens de terceiros mostra o rdgrupo de tipo de serviços
   If (FMenu.TIPOREL='RELORDEMTERCEIRO')then
   begin
       RGTipoServ.Visible:=true;
       RGTipoServ.BringToFront;
   end else
   begin
       RGTipoServ.Visible:=false;
       RGTipoServ.SendToBack;
   end;

   If (FMenu.TIPOREL = 'RELOSANALITICOSERVAGRUPADO') OR (FMenu.TIPOREL = 'RELOSANALITICOPRODAGRUPADO')OR (FMenu.TIPOREL ='RELOSPRODUTOCLIENTE')OR(FMenu.TIPOREL='RELOSSERVICOSCLIENTE')
   Then Begin
       RGTIPOREL.Visible:=False;
       Label2.Visible:=False;
       CBESPECIFICA.Visible:=False;
       CBGarantia.Visible:=False;
       If FMenu.TIPOREL = 'RELOSANALITICOSERVAGRUPADO' then
           LDescTitulo.Caption:='Relatório de Serviços Agrupados';
       if FMenu.TIPOREL = 'RELOSANALITICOPRODAGRUPADO' then
           LDescTitulo.Caption:='Relatório de Produtos Agrupados';
       if FMenu.TIPOREL ='RELOSPRODUTOCLIENTE' then
           LDescTitulo.Caption:='Relatório de Produtos por Cliente';
       if FMenu.TIPOREL='RELOSSERVICOSCLIENTE' then
           LDescTitulo.Caption:='Relatório de Serviços por Cliente';

   End;
end;

procedure TFRelOrdem.FrmPessoaIniEDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  If Key = #13
   Then Begin
       If FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_INTERNO', '', ' COD_INTERNO='+#39+FrmPessoaIni.EDCodigo.Text+#39)=True
       Then Begin//CASO CONSEGUIU SELECIONAR CLIENTE
           XPessoaIni:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
           FrmPessoaIni.EdDescricao.Text:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
           FrmPessoaIni.EDCodigo.text:=DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString;
           FrmPessoaIni.Repaint;
       End
       Else Begin//CASO NÃO CONSEGUIU SELECIONAR CLIENTE
           XPessoaIni:='';
           FrmPessoaIni.EdDescricao.Text:='';
           FrmPessoaIni.EDCodigo.text:='';
           FrmPessoaIni.Repaint;
       End;
   End;

end;

procedure TFRelOrdem.FrmPessoaFimEDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  If Key = #13
   Then Begin
       If FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_INTERNO', '', ' COD_INTERNO='+#39+FrmPessoaFim.EDCodigo.Text+#39)=True
       Then Begin//CASO CONSEGUIU SELECIONAR CLIENTE
           XPESSOAFIM:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
           FrmPessoaFim.EdDescricao.Text:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
           FrmPessoaFim.EDCodigo.text:=DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString;
           FrmPessoaFim.Repaint;
       End
       Else Begin//CASO NÃO CONSEGUIU SELECIONAR CLIENTE
           XPESSOAFIM:='';
           FrmPessoaFim.EdDescricao.Text:='';
           FrmPessoaFim.EDCodigo.text:='';
           FrmPessoaFim.Repaint;
       End;
   End; 
end;

procedure TFRelOrdem.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
   MFiltroOrdem.Lines.Text:=DMMACS.TLoja.FieldByName('TMP2').AsString;
end;

procedure TFRelOrdem.QrRELOSANALITICO01_OrdemBeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
   DMESTOQUE.TRel1.Close;
   DMESTOQUE.TRel1.SQL.Clear;
   DMESTOQUE.TRel1.SQL.Add(' Select vwsimilar.contrint, vwsimilar.descricao as Produto, itprodord.qtd as QtdProduto, itprodord.vlrunit as VlrUnitProduto, itprodord.desconto as DescProduto, itprodord.total as TotalProduto ');
   DMESTOQUE.TRel1.SQL.Add('        from  itprodord ');
   DMESTOQUE.TRel1.SQL.Add(' left join vwsimilar on itprodord.cod_estoque = vwsimilar.cod_estoque ');
   DMESTOQUE.TRel1.SQL.Add(' where itprodord.cod_ordem=:Ordem ');
   DMESTOQUE.TRel1.ParamByName('Ordem').AsInteger:=DMESTOQUE.TRel.FieldByName('COD_ORDEM').AsInteger;
   DMESTOQUE.TRel1.SQL.Text;
   DMESTOQUE.TRel1.Open;
   DMESTOQUE.TRel2.Close;
   DMESTOQUE.TRel2.SQL.Clear;
   DMESTOQUE.TRel2.SQL.Add(' Select vwsubservico.cod_interno, vwsubservico.descricao as NomeServico, itservord.qtd as QtdServico, itservord.vlrunit as VlrUnitServico, itservord.desconto as DescServico, itservord.total as TotalServico ');
   DMESTOQUE.TRel2.SQL.Add('        from  itservord ');
   DMESTOQUE.TRel2.SQL.Add(' left join vwsubservico on itservord.cod_servico = vwsubservico.cod_subservico ');
   DMESTOQUE.TRel2.SQL.Add(' where itservord.cod_ordem=:Ordem ');
   DMESTOQUE.TRel2.ParamByName('Ordem').AsInteger:=DMESTOQUE.TRel.FieldByName('COD_ORDEM').AsInteger;
   DMESTOQUE.TRel2.SQL.Text;
   DMESTOQUE.TRel2.Open;
end;

procedure TFRelOrdem.QrRELOSANALITICO01BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  inherited;
   LinhaCabecalho.Width:=0;
   XTOTORD:=0;
   XTOTPROD:=0;
   XTOTSERV:=0;
end;

procedure TFRelOrdem.QrRELOSANALITICO01_OrdemAfterPrint(
  Sender: TQRCustomBand; BandPrinted: Boolean);
begin
  inherited;
   LinhaCabecalho.Width:=713;
   XTOTORD:=XTOTORD+DMESTOQUE.TRel.FieldByName('TOTORD').AsCurrency;
   XTOTPROD:=XTOTPROD+DMESTOQUE.TRel.FieldByName('TOTPROD').AsCurrency;
   XTOTSERV:=XTOTSERV+DMESTOQUE.TRel.FieldByName('TOTSERV').AsCurrency;
end;

procedure TFRelOrdem.QRBand8BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
   ValorTotalOrdem.Caption:=FormatFloat('0.00', XTOTORD);
   ValorTotalProdutos.Caption:=FormatFloat('0.00', XTOTPROD);
   ValorTotalServico.Caption:=FormatFloat('0.00', XTOTSERV);
end;

End.
