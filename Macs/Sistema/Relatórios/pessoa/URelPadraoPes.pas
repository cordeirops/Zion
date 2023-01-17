unit URelPadraoPes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UPadraoRelatorio, FR_Class, TFlatHintUnit, StdCtrls, Buttons, jpeg,
  ExtCtrls, TFlatTabControlUnit, UFrmBusca, FR_DSet, FR_DBSet, QuickRpt,
  Qrctrls, Grids, DBGrids, DrLabel;

type
  TFRelPadraoPes = class(TFPadraoRelatorio)
    QrFichaCli: TQuickRep;
    QRBand1: TQRBand;
    QrLogo: TQRImage;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRShape1: TQRShape;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape7: TQRShape;
    QRShape2: TQRShape;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRShape12: TQRShape;
    QRLabel17: TQRLabel;
    QRShape13: TQRShape;
    QRLabel18: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRDBText1: TQRDBText;
    QRShape16: TQRShape;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel24: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    LFone: TQRLabel;
    LEstado: TQRLabel;
    Lcidade: TQRLabel;
    LEMAIL: TQRLabel;
    RGInformacao: TRadioGroup;
    FrmCidade: TFrmBusca;
    FrmRegiao: TFrmBusca;
    FrmVend: TFrmBusca;
    PIntervalo: TPanel;
    FrmPessoa1: TFrmBusca;
    FrmPessoa2: TFrmBusca;
    RGFiltragem: TRadioGroup;
    GroupBox6: TGroupBox;
    RBTodosCli: TRadioButton;
    RBSCPC: TRadioButton;
    RBForaSCPC: TRadioButton;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRLabel25: TQRLabel;
    QRDBText15: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRShape19: TQRShape;
    QRLabel26: TQRLabel;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRLabel27: TQRLabel;
    QRShape22: TQRShape;
    QRDBText19: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel19: TQRLabel;
    QRDBText8: TQRDBText;
    QrFichaCli2: TQuickRep;
    QRBand2: TQRBand;
    QRShape6: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRLabel28: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRShape27: TQRShape;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRShape32: TQRShape;
    QRLabel39: TQRLabel;
    QRShape33: TQRShape;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    QRDBText9: TQRDBText;
    QRShape36: TQRShape;
    QRDBText12: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRLabel45: TQRLabel;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    LFone2: TQRLabel;
    LEstado2: TQRLabel;
    Lcidade2: TQRLabel;
    LEMAIL2: TQRLabel;
    QRShape37: TQRShape;
    QRShape38: TQRShape;
    QRLabel50: TQRLabel;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    QRDBText29: TQRDBText;
    QRDBText30: TQRDBText;
    QRLabel51: TQRLabel;
    QRShape42: TQRShape;
    QRDBText31: TQRDBText;
    QRLabel53: TQRLabel;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    QRLabel56: TQRLabel;
    QRLabel57: TQRLabel;
    QRDBText32: TQRDBText;
    QRLabel58: TQRLabel;
    procedure FrmPessoa1BTNMINUSClick(Sender: TObject);
    procedure FrmPessoa2BTNMINUSClick(Sender: TObject);
    procedure FrmPessoa1BTNOPENClick(Sender: TObject);
    procedure FrmPessoa1EDCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure FrmPessoa2EDCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure BtnVisualizarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FrmPessoa2BTNOPENClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FrmBusca1EDCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure FrmCidadeBTNOPENClick(Sender: TObject);
    procedure FrmCidadeBTNMINUSClick(Sender: TObject);
    procedure FrmBusca2EDCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure FrmBusca2BTNOPENClick(Sender: TObject);
    procedure FrmBusca2BTNMINUSClick(Sender: TObject);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QrFichaCliBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure FrmVendEDCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure FrmVendBTNOPENKeyPress(Sender: TObject; var Key: Char);
    procedure FrmVendBTNMINUSClick(Sender: TObject);
    procedure FrmVendBTNOPENClick(Sender: TObject);
    procedure FrmRegiaoBTNMINUSClick(Sender: TObject);
    procedure FrmRegiaoBTNOPENClick(Sender: TObject);
    procedure FrmCidadeEDCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure FrmRegiaoEDCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);

  private
    { Private declarations }
    Procedure PrepImp; //Prepara sql de relatório para impressaão
    Procedure ImpDev; //Procedure utilizada para imprimir lista de devedores
    Procedure ImpRelDadosFunc; //Procedure para imprimir relatorio geral do funcionario
  public
    { Public declarations }
  end;

var
  FRelPadraoPes: TFRelPadraoPes;
  XPessoaIni, XPessoaFim: String;
  XCod_Cidade, XCod_Vend, XCod_Regiao: Integer;


implementation

uses UDMPessoa, UCliente, UFuncionario, UFORNECEDOR, Alxor32, UDMMacs,
  AlxMessage, UCadPadraoPes, UMenu, UDMGEOGRAFIA, UCadCidade, UCadRegiao,
  UPadrao, DB;

{$R *.DFM}

Procedure TFRelPadraoPes.ImpDev; //Procedure utilizada para imprimir lista de devedores
Var
	XJuncao: String;
Begin
	//PREPARA INFORMAÇÃO DE RESTRIÇÕES PARA RELATÓRIO
   FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
   DMMACS.TLoja.Edit;
   DMMACS.TLoja.FieldByName('TMP1').AsString:=FrmPessoa1.EdDescricao.Text+' - '+FrmPessoa2.EdDescricao.Text+#13+'Cid.:'+FrmCidade.EdDescricao.Text+' - Reg.:'+FrmRegiao.EdDescricao.Text;
   DMMACS.TLoja.Post;
   DMMACS.Transaction.CommitRetaining;
   FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');

   //PREPARA SQL
   DMPESSOA.TRel.Close;
   DMPESSOA.TRel.SQL.Clear;

   XJuncao:=' Where ';

   DMPESSOA.TRel.SQL.Add(' Select vwcliente.cpfcnpj, vwcliente.nome, vwcliente.cod_cidade, vwcliente.cod_interno, vwcliente.endereco, vwcliente.bairro, vwcliente.cidade, vwcliente.telrel, ');
   DMPESSOA.TRel.SQL.Add('        vwclientecob.cod_interno as cod_internoc, vwclientecob.nome as nomec, vwclientecob.cpfcnpj as cpfcnpjc, vwclientecob.endereco as enderecoc, vwclientecob.bairro as bairroc, vwclientecob.cidade as cidadec, vwclientecob.telrel as telrelc ');
   DMPESSOA.TRel.SQL.Add('  from vwclientecob ');
   DMPESSOA.TRel.SQL.Add('  left join clientecob on vwclientecob.cod_clientecob = clientecob.cod_clientecob ');
   DMPESSOA.TRel.SQL.Add('  left join devcli on vwclientecob.cod_clientecob = devcli.cod_clientecob ');
   DMPESSOA.TRel.SQL.Add('  left join vwcliente on devcli.cod_devedor = vwcliente.cod_cliente ');
   DMPESSOA.TRel.SQL.Add('  left join cliente on vwcliente.cod_cliente = cliente.cod_cliente ');

   If (FrmPessoa1.EdDescricao.Text<>'') And (FrmPessoa2.EdDescricao.Text<>'')
   Then Begin
   	DMPESSOA.TRel.SQL.Add(XJuncao+' ((vwcliente.nome between :nome1) and (:nome2)) ');
   	DMPESSOA.TRel.ParamByName('nome1').AsString:=FrmPessoa1.EdDescricao.Text;
   	DMPESSOA.TRel.ParamByName('nome2').AsString:=FrmPessoa2.EdDescricao.Text;
   	XJuncao:=' and ';
   End;

   If (FrmCidade.EdDescricao.Text<>'')
   Then Begin
   	DMPESSOA.TRel.SQL.Add(XJuncao+' (vwcliente.cod_cidade:COD_CIDADE) ');
   	DMPESSOA.TRel.ParamByName('COD_CIDADE').AsInteger:=XCOD_CIDADE;
   	XJuncao:=' and ';
   End;

    // serão selecionados todos os clientes, independente se estiver no SCPC ou nao
    If RBTodosCli.Checked
    Then Begin
         DMPESSOA.TRel.SQL.Add(XJuncao+' ((cliente.scpc = 1) or (cliente.scpc = 0) or (CLIENTE.SCPC IS NULL)) ');
         XJuncao:=' and ';
    End;
    // seleciona somente os clientes q estiverem no scpc
    If RBSCPC.Checked
    Then Begin
         DMPESSOA.TRel.SQL.Add(XJuncao+' (cliente.scpc = 1) ');
         XJuncao := ' and ';
    End;
    // clientes nao incluso no SCPC
    If RBForaSCPC.Checked
    Then Begin
         DMPESSOA.TRel.SQL.Add(XJuncao+' (cliente.scpc = 0) or (cliente.scpc is null)');
         XJuncao := ' and ';
    End;

   DMPESSOA.TRel.SQL.Add(' Order by vwcliente.nome, vwclientecob.nome ');
   DMPESSOA.TRel.Open;
   FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfDevedoresCli.frf');
	FSRel.ShowReport;   
End;

//Prepara sql de relatório para impressaão
Procedure TFRelPadraoPes.PrepImp;
Var
	XJuncao: String;
Begin
	//PREPARA INFORMAÇÃO DE RESTRIÇÕES PARA RELATÓRIO
   FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
   DMMACS.TLoja.Edit;
   DMMACS.TLoja.FieldByName('TMP1').AsString:= 'Pessoa Ini.: ' + FrmPessoa1.EdDescricao.Text+' - Pessoa Final: '+FrmPessoa2.EdDescricao.Text+#13+'Cid.:'+FrmCidade.EdDescricao.Text+' - Reg.:'+FrmRegiao.EdDescricao.Text;
	//PREPARA O TITULO DO RELATÓRIO
   If (FMenu.TIPOREL<>'RELFICHOT') AND (FMenu.TIPOREL<>'RELFUNCGERAL')
   Then Begin
	   DMMACS.TEmpresa.Edit;
	   IF XSqlRel='VWCLIENTE' THEN
		   DMMACS.TLOJA.FieldByName('TMP2').AsString:='Relatório de clientes';
	   IF XSqlRel='VWFUNCIONARIO' THEN
		   DMMACS.TLOJA.FieldByName('TMP2').AsString:='Relatório de Funcionarios';
	   IF XSqlRel='VWFORNEC' THEN
		   DMMACS.TLOJA.FieldByName('TMP2').AsString:='Relatório de Fornecedores';
   End;
   DMMACS.TLoja.Post;
   DMMACS.Transaction.CommitRetaining;
   FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');

   //PREPARA SQL
   DMPESSOA.TRel.Close;
   DMPESSOA.TRel.SQL.Clear;

   XJuncao:=' Where ';
   //
   If FMenu.TIPOREL='RELFUNCGERAL'
   Then Begin

     DMPESSOA.TRel.Close;
     DMPESSOA.TRel.SQL.Clear;
     DMPESSOA.TRel.SQL.Add(' select pessoa.nome, pessoa.endereco, pessoa.endnumero ,pessoa.telrel, pessoa.cep,');
     DMPESSOA.TRel.SQL.Add(' pessoaf.rg, pessoa.cpfcnpj, funcionario.data_admis, cargo.descricao, pessoa.dtnasc');
     DMPESSOA.TRel.SQL.Add(' from vwfuncionario');
     DMPESSOA.TRel.SQL.Add(' left join funcionario on vwfuncionario.cod_func = funcionario.cod_func');
     DMPESSOA.TRel.SQL.Add(' left join pessoa on funcionario.cod_pessoa = pessoa.cod_pessoa');
     DMPESSOA.TRel.SQL.Add(' left join pessoaf on pessoa.cod_pessoa = pessoaf.cod_pessoa');
     DMPESSOA.TRel.SQL.Add(' left join funcargo on funcionario.cod_func = funcargo.cod_funcionario');
     DMPESSOA.TRel.SQL.Add(' left join cargo on funcargo.cod_cargo = cargo.cod_cargo');
     DMPESSOA.TRel.SQL.Add(' where (funcionario.ATIVO<>'+#39+'1'+#39+')'+' or (funcionario.ATIVO='+#39+'0'+#39+')');
     If (FrmPessoa1.EdDescricao.Text<>'') And (FrmPessoa2.EdDescricao.Text<>'')
		   Then Begin
			  DMPESSOA.TRel.SQL.Add(' and (pessoa.nome between :nome1 and :nome2) ');
			  DMPESSOA.TRel.ParamByName('nome1').AsString:=FrmPessoa1.EdDescricao.Text;
        DMPESSOA.TRel.ParamByName('nome2').AsString:=FrmPessoa2.EdDescricao.Text;

     End;

        DMPESSOA.TRel.SQL.Add(' Order by pessoa.nome ');
        DMPESSOA.TRel.SQL.Text;
        DMPESSOA.TRel.Open;

        DMPESSOA.TRel.Open;
        FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfFuncionarioGeral.frf');
     //FSRel.ShowReport;
     Exit;
   End;
   //
   If FMenu.TIPOREL='RELFICHOT'
   Then Begin
		   DMPESSOA.TRel.SQL.Add(' select pedvenda.numped, pessoa.endnumero, pessoa.endnumero, pedvenda.dtpedven, pedvenda.cpfcnpj, pedvenda.nomecli, pedvenda.valor, ');
		   DMPESSOA.TRel.SQL.Add(' itenspedven.qtdeprod, itenspedven.descpro, itenspedven.valunit, itenspedven.valortotal, ');
		   DMPESSOA.TRel.SQL.Add(' subproduto.cod_interno, subproduto.descricao, subproduto.codprodfabr, subproduto.fabricante, subproduto.marca, ');
		   DMPESSOA.TRel.SQL.Add(' servot.adicao, servot.alturalod, servot.alturaloe, servot.alturapod, servot.alturapoe, ');
		   DMPESSOA.TRel.SQL.Add(' servot.cilindlod, servot.cilindloe, servot.cilindpod, servot.cilindpoe, servot.dnplod, ');
		   DMPESSOA.TRel.SQL.Add(' servot.dnploe, servot.dnppod, servot.dnppoe, servot.eixolod, servot.eixoloe, servot.eixopod, ');
		   DMPESSOA.TRel.SQL.Add(' servot.eixopoe, servot.esferlod, servot.esferloe, servot.esferpod, servot.esferpoe ');
		   DMPESSOA.TRel.SQL.Add(' from servot ');
		   DMPESSOA.TRel.SQL.Add(' left join pedvenda ON servot.cod_pedido=pedvenda.cod_pedvenda ');
		   DMPESSOA.TRel.SQL.Add(' left join itenspedven on itenspedven.cod_pedven = pedvenda.cod_pedvenda ');
		   DMPESSOA.TRel.SQL.Add(' left join estoque ON estoque.cod_estoque=itenspedven.cod_estoque ');
		   DMPESSOA.TRel.SQL.Add(' Left join subproduto ON subproduto.cod_subproduto = estoque.cod_subprod ');
		   DMPESSOA.TRel.SQL.Add(' left join cliente on cliente.cod_cliente=pedvenda.cod_cliente ');
		   DMPESSOA.TRel.SQL.Add(' left join pessoa ON pessoa.cod_pessoa = cliente.cod_pessoa ');

		   If (FrmPessoa1.EdDescricao.Text<>'') And (FrmPessoa2.EdDescricao.Text<>'')
		   Then Begin
			   DMPESSOA.TRel.SQL.Add(XJuncao+' ((pessoa.nome between :nome1) and (:nome2)) ');
			   DMPESSOA.TRel.ParamByName('nome1').AsString:=FrmPessoa1.EdDescricao.Text;
			   DMPESSOA.TRel.ParamByName('nome2').AsString:=FrmPessoa2.EdDescricao.Text;
              XJuncao:=' and ';
		   End;
		   If (FrmCidade.EdDescricao.Text<>'')
		   Then Begin
			   DMPESSOA.TRel.SQL.Add(XJuncao+' (PESSOA.COD_CIDADE:COD_CIDADE) ');
			   DMPESSOA.TRel.ParamByName('COD_CIDADE').AsInteger:=XCOD_CIDADE;
              XJuncao:=' and ';
		   End;

		   If (FrmRegiao.EdDescricao.Text<>'')
		   Then Begin
			   DMPESSOA.TRel.SQL.Add(XJuncao+' (PESSOA.COD_REGIAO:COD_REGIAO) ');
			   DMPESSOA.TRel.ParamByName('COD_REGIAO').AsInteger:=XCOD_REGIAO;
              XJuncao:=' and ';
		   End;

		   case RGFiltragem.ItemIndex of
				1: DMPESSOA.TRel.SQL.Add(XJuncao+' ((CLIENTE.SEPARAR<>'+#39+'1'+#39+') or (Cliente.Separar is null))');
				2: DMPESSOA.TRel.SQL.Add(XJuncao+' (CLIENTE.SEPARAR='+#39+'1'+#39+') ');
		   End;

		   DMPESSOA.TRel.SQL.Add(' Order by pessoa.nome ');
          DMPESSOA.TRel.SQL.Text;
          DMPESSOA.TRel.Open;
		   FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfFichOtica.frf');
   End;
   If (FMenu.TIPOREL<>'RELFICHOT') AND (FMenu.TIPOREL<>'RELCLIFICH')
   Then Begin
      XJuncao:=' Where ';
	   IF (XSqlRel='VWCLIENTE'){ AND (RGInformacao.ItemIndex=1)}
      THEN BEGIN
		   DMPESSOA.TRel.SQL.Add('  select cliente.cod_cliente, pessoa.endnumero, cliente.cod_interno, cliente.data_cad, cliente.lim_cred, pessoa.telrel AS FONE, ');
		   DMPESSOA.TRel.SQL.Add('   pessoa.bairro, pessoa.cep, pessoa.cpfcnpj, pessoa.dtnasc, pessoa.endnumero, pessoa.endereco, pessoa.nome, ');
		   DMPESSOA.TRel.SQL.Add('   vwcidade.nome AS cidade, vwcidade.uf, pessoaj.insc_est as IE ');
		   DMPESSOA.TRel.SQL.Add('   from vwcliente ');
		   DMPESSOA.TRel.SQL.Add('   left join cliente on vwcliente.cod_cliente = cliente.cod_cliente ');
		   DMPESSOA.TRel.SQL.Add('   left join pessoa ON cliente.cod_pessoa = pessoa.cod_pessoa ');
		   DMPESSOA.TRel.SQL.Add('   left join vwcidade ON vwcidade.cod_cidade = pessoa.cod_cidade ');
		   DMPESSOA.TRel.SQL.Add('   left join pessoaj on pessoa.cod_pessoa = pessoaj.cod_pessoa ');
		   If (FrmPessoa1.EdDescricao.Text<>'') And (FrmPessoa2.EdDescricao.Text<>'')
		   Then Begin
			   DMPESSOA.TRel.SQL.Add(XJuncao+' (pessoa.nome between (:nome1) and (:nome2)) ');
			   DMPESSOA.TRel.ParamByName('nome1').AsString:=FrmPessoa1.EdDescricao.Text;
			   DMPESSOA.TRel.ParamByName('nome2').AsString:=FrmPessoa2.EdDescricao.Text;
              XJuncao:=' and ';
		   End;
		   If (FrmCidade.EdDescricao.Text<>'')
		   Then Begin
			   DMPESSOA.TRel.SQL.Add(XJuncao+' (PESSOA.COD_CIDADE=:COD_CIDADE) ');
			   DMPESSOA.TRel.ParamByName('COD_CIDADE').AsInteger:=XCOD_CIDADE;
              XJuncao:=' and ';
		   End;
		   If (FrmRegiao.EdDescricao.Text<>'')
		   Then Begin
			   DMPESSOA.TRel.SQL.Add(XJuncao+' (PESSOA.COD_REGIAO=:COD_REGIAO) ');
			   DMPESSOA.TRel.ParamByName('COD_REGIAO').AsInteger:=XCOD_REGIAO;
              XJuncao:=' and ';
		   End;

		   If (FrmVend.EdDescricao.Text<>'')
		   Then Begin
			   DMPESSOA.TRel.SQL.Add(XJuncao+' (CLIENTE.COD_VENDEDOR=:COD_VEND) ');
			   DMPESSOA.TRel.ParamByName('COD_VEND').AsInteger:=XCod_Vend;
              XJuncao:=' and ';
		   End;
		   If RGFiltragem.ItemIndex=1
          Then Begin
				DMPESSOA.TRel.SQL.Add(XJuncao+' ((CLIENTE.SEPARAR<>'+#39+'1'+#39+') or (Cliente.Separar is null))');
               XJuncao:=' and ';
          End;
		   If RGFiltragem.ItemIndex=2
          Then Begin
				DMPESSOA.TRel.SQL.Add(XJuncao+' (CLIENTE.SEPARAR='+#39+'1'+#39+') ');
               XJuncao:=' and ';
          End;

          // seleciona somente os clientes q estiverem no scpc
          If RBSCPC.Checked
          Then Begin
               DMPESSOA.TRel.SQL.Add(XJuncao+' (cliente.scpc = 1) ');
               XJuncao := ' and ';
          End; 
          // clientes nao incluso no SCPC
          If RBForaSCPC.Checked
          Then Begin
               DMPESSOA.TRel.SQL.Add(XJuncao+' (cliente.scpc = 0) or (cliente.scpc is null)');
               XJuncao := ' and ';
          End;

		   DMPESSOA.TRel.SQL.Add(' AND ((vwcliente.ativo<>0) or (vwcliente.ativo is null))   Order by pessoa.nome ');
          DMPESSOA.TRel.SQL.Text;
          DMPESSOA.TRel.Open;
		   FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfAnaliticoPes.frf');
      END
      ELSE BEGIN
	   		If (FrmPessoa1.EdDescricao.Text<>'') And (FrmPessoa2.EdDescricao.Text<>'')
	   		Then Begin
		   		DMPESSOA.TRel.SQL.Add('Select * from '+XSqlRel+' where nome between :nome1 and :nome2 order by nome');
		   		DMPESSOA.TRel.ParamByName('nome1').AsString:=FrmPessoa1.EdDescricao.Text;
		   		DMPESSOA.TRel.ParamByName('nome2').AsString:=FrmPessoa2.EdDescricao.Text;
	   		End
	   		Else Begin
              If  XSQLREL='VWFORNEC'
              Then Begin
		   		DMPESSOA.TRel.SQL.Add('  SELECT fornecedor.cod_fornec, pessoa.endnumero, fornecedor.cod_interno, pessoa.cod_pessoa, ');
		   		DMPESSOA.TRel.SQL.Add('  pessoa.nome, pessoa.telrel as FONE, pessoa.endnumero, pessoa.endereco, pessoa.bairro, pessoa.cpfcnpj, ');
		   		DMPESSOA.TRel.SQL.Add('  cidade.cod_cidade, cidade.nome AS CIDADE');
		   		DMPESSOA.TRel.SQL.Add('  FROM fornecedor JOIN PESSOA ON fornecedor.cod_pessoa = pessoa.cod_pessoa ');
		   		DMPESSOA.TRel.SQL.Add('  left join  cidade ON pessoa.cod_cidade = cidade.cod_cidade ');
              End
              Else Begin
                   DMPESSOA.TRel.SQL.Add('Select * From '+XSQLREL);
              End;
	   		End;
      END;
	End;
   If FMenu.TIPOREL='RELCLIFICH'
   Then Begin
		   XJuncao:=' Where ';
          {Edmar - 17/03/2015 - SQL alterada para trazer apenas informações que vão ser usadas no relatório
   	   DMPESSOA.TRel.SQL.Clear;
		   DMPESSOA.TRel.SQL.Add(' Select * From Cliente ');
		   DMPESSOA.TRel.SQL.Add(' left join pessoa on cliente.cod_pessoa = pessoa.cod_pessoa ');
		   DMPESSOA.TRel.SQL.Add(' left join pessoaf on pessoa.cod_pessoa = pessoaf.cod_pessoa ');
          DMPESSOA.TRel.SQL.Add(' left join pessoaj on pessoa.cod_pessoa = pessoaj.cod_pessoa ');//Jônatas 07/10/2013 - incluído junção com pessoa jurídica
          }
          DMPESSOA.TRel.SQL.Add(' SELECT PESSOA.COD_PESSOA,   vwcliente.telrel, VWCLIENTE.NOME, VWCLIENTE.ENDERECO, VWCLIENTE.ENDNUMERO, ');
          DMPESSOA.TRel.SQL.Add(' VWCLIENTE.BAIRRO, CLIENTE.ENDENTRAGA, VWCLIENTE.CIDADE, VWCLIENTE.UF_ESTADO, ');
          DMPESSOA.TRel.SQL.Add(' PESSOA.CEP, PESSOAJ.INSC_EST, PESSOA.CPFCNPJ, PESSOAF.RG, CLIENTE.CREDENCIAL, ');
          DMPESSOA.TRel.SQL.Add(' PESSOA.DTNASC, CLIENTE.RAMOATIV, CLIENTE.INFOCOM, CLIENTE.BENS, PESSOA.COD_CIDADE FROM VWCLIENTE ');
          DMPESSOA.TRel.SQL.Add(' LEFT JOIN CLIENTE ON VWCLIENTE.COD_CLIENTE = CLIENTE.COD_CLIENTE ');
          DMPESSOA.TRel.SQL.Add(' LEFT JOIN PESSOA ON CLIENTE.COD_PESSOA = PESSOA.COD_PESSOA ');
          DMPESSOA.TRel.SQL.Add(' LEFT JOIN PESSOAF ON PESSOAF.COD_PESSOA = PESSOA.COD_PESSOA ');
          DMPESSOA.TRel.SQL.Add(' LEFT JOIN PESSOAJ ON PESSOAJ.COD_PESSOA = PESSOA.COD_PESSOA ');
          
		   If (FrmPessoa1.EdDescricao.Text<>'') And (FrmPessoa2.EdDescricao.Text<>'')
		   Then Begin
			   DMPESSOA.TRel.SQL.Add(XJuncao+' (pessoa.nome between :nome1 and :nome2) ');
			   DMPESSOA.TRel.ParamByName('nome1').AsString:=FrmPessoa1.EdDescricao.Text;
			   DMPESSOA.TRel.ParamByName('nome2').AsString:=FrmPessoa2.EdDescricao.Text;
              XJuncao:=' and ';
		   End;

		   If (FrmCidade.EdDescricao.Text<>'')
		   Then Begin
			   DMPESSOA.TRel.SQL.Add(XJuncao+' (PESSOA.COD_CIDADE = :COD_CIDADE) ');
			   DMPESSOA.TRel.ParamByName('COD_CIDADE').AsInteger:=XCOD_CIDADE;
              XJuncao:=' and ';
		   End;

		   If (FrmRegiao.EdDescricao.Text<>'')
		   Then Begin
			   DMPESSOA.TRel.SQL.Add(XJuncao+' (PESSOA.COD_REGIAO = :COD_REGIAO) ');
			   DMPESSOA.TRel.ParamByName('COD_REGIAO').AsInteger:=XCOD_REGIAO;
              XJuncao:=' and ';
		   End;
		   case RGFiltragem.ItemIndex of
				1: DMPESSOA.TRel.SQL.Add(XJuncao+' ((CLIENTE.SEPARAR<>'+#39+'1'+#39+') or (Cliente.Separar is null))');
				2: DMPESSOA.TRel.SQL.Add(XJuncao+' (CLIENTE.SEPARAR='+#39+'1'+#39+') ');
		   End;

          // serão selecionados todos os clientes, independente se estiver no SCPC ou nao
          If RBTodosCli.Checked
          Then Begin
   			DMPESSOA.TRel.SQL.Add(XJuncao+' ((cliente.scpc = ''1'') or (cliente.scpc = ''0'') or (CLIENTE.SCPC IS NULL)) ');
   			XJuncao:=' and ';
          End;
          // seleciona somente os clientes q estiverem no scpc
          If RBSCPC.Checked
          Then Begin
               DMPESSOA.TRel.SQL.Add(XJuncao+' (cliente.scpc = ''1'') ');
               XJuncao := ' and ';
          End;
          // clientes nao incluso no SCPC
          If RBForaSCPC.Checked
          Then Begin
               DMPESSOA.TRel.SQL.Add(XJuncao+' (cliente.scpc = ''0'') or (cliente.scpc is null)');
               XJuncao := ' and ';
          End;

		   DMPESSOA.TRel.SQL.Add(' AND ((cliente.ativo <> ''0'') or (cliente.ativo is null)) Order by pessoa.nome ');
          DMPESSOA.TRel.SQL.Text;
          DMPESSOA.TREL.Open;
          DMPESSOA.TRel.First;
          If Not DMPESSOA.TRel.IsEmpty
          Then Begin
               QrFichaCli.Preview;
          End;
          Exit;
   End;

   DMPESSOA.TRel.SQL.Text;
   DMPESSOA.TRel.Open;
End;

procedure TFRelPadraoPes.FrmPessoa1BTNMINUSClick(Sender: TObject);
begin
  inherited;
   //LIMPA PRIMEIRO FILTRO
   FrmPessoa1.EDCodigo.Text:='';
   FrmPessoa1.EdDescricao.Text:='';
   XPessoaIni:='';
  	FrmPessoa1.Repaint;
end;

procedure TFRelPadraoPes.FrmPessoa2BTNMINUSClick(Sender: TObject);
begin
  inherited;
   //LIMPA SEGUNDO FILTRO
   FrmPessoa2.EDCodigo.Text:='';
   FrmPessoa2.EdDescricao.Text:='';
   XPessoaFim:='';
   FrmPessoa2.Repaint;   
end;

procedure TFRelPadraoPes.FrmPessoa1BTNOPENClick(Sender: TObject);
begin
  inherited;
	 //LIBERA TODAS AS PESSOAS PARA CONSUTA
    If XSQLREL='VWCLIENTE'
    Then Begin
		 filtraTabela(DMPESSOA.WCliente, 'VWCLIENTE', '', '', '  Order By NOME');
	     If AbrirForm(TFCLIENTE, FCLIENTE, 1)='Selected'
	     Then Begin
	        XPessoaIni:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
	        FrmPessoa1.EdDescricao.Text:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
	        FrmPessoa1.EDCodigo.text:=DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString;
       	FrmPessoa1.Repaint;
	     End;
    End;
    If XSQLREL='VWFUNCIONARIO'
    Then Begin
		 filtraTabela(DMPESSOA.VWFuncionario, 'VWFUNCIONARIO', '', '', '  Order By NOME');
	     If AbrirForm(TFFUNCIONARIO, FFUNCIONARIO, 1)='Selected'
	     Then Begin
	        XPessoaIni:=DMPESSOA.VWFuncionario.FieldByName('NOME').AsString;
	        FrmPessoa1.EdDescricao.Text:=DMPESSOA.VWFuncionario.FieldByName('NOME').AsString;
	        FrmPessoa1.EDCodigo.text:=DMPESSOA.VWFuncionario.FieldByName('COD_INTERNO').AsString;
       	FrmPessoa1.Repaint;
	     End;
    End;
    If XSQLREL='VWFORNEC'
    Then Begin
		 filtraTabela(DMPESSOA.WFornecedor, 'VWFORNEC', '', '', '  Order By NOME');
	     If AbrirForm(TFFORNECEDOR, FFORNECEDOR, 1)='Selected'
	     Then Begin
	        XPessoaIni:=DMPESSOA.WFornecedor.FieldByName('NOME').AsString;
	        FrmPessoa1.EdDescricao.Text:=DMPESSOA.WFornecedor.FieldByName('NOME').AsString;
	        FrmPessoa1.EDCodigo.text:=DMPESSOA.WFornecedor.FieldByName('COD_INTERNO').AsString;
       	FrmPessoa1.Repaint;
	     End;
    End;
end;

procedure TFRelPadraoPes.FrmPessoa1EDCodigoKeyPress(Sender: TObject;
  var Key: Char);
Var
	Flag: Integer;
begin
  inherited;
	If Key = #13
   Then Begin
	  	Flag:=0;
   	If FrmPessoa1.EDCodigo.Text<>''
       Then Begin
  		    //LIBERA TODAS AS PESSOAS PARA CONSUTA
		    If XSQLREL='VWCLIENTE'
		    Then Begin
			     If filtraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_CLIENTE', '', ' (COD_CLIENTE = '+#39+FrmPessoa1.EDCodigo.Text+#39+')')=True
			     Then Begin
			        XPessoaIni:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
			        FrmPessoa1.EdDescricao.Text:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
			        FrmPessoa1.EDCodigo.text:=DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString;
                   Flag:=1;
			     End;
		    End;
		    If XSQLREL='VWFUNCIONARIO'
		    Then Begin
           	 If filtraTabela(DMPESSOA.VWFuncionario, 'VWFUNCIONARIO', 'COD_FUNC', '', ' (COD_FUNC = '+#39+FrmPessoa1.EDCodigo.Text+#39+')')=True
			     Then Begin
			        XPessoaIni:=DMPESSOA.VWFuncionario.FieldByName('NOME').AsString;
			        FrmPessoa1.EdDescricao.Text:=DMPESSOA.VWFuncionario.FieldByName('NOME').AsString;
			        FrmPessoa1.EDCodigo.text:=DMPESSOA.VWFuncionario.FieldByName('COD_INTERNO').AsString;
                   Flag:=1;
			     End;
		    End;
		    If XSQLREL='VWFORNEC'
		    Then Begin
				 IF filtraTabela(DMPESSOA.WFornecedor, 'VWFORNEC', 'COD_FORNEC', '', ' (COD_FORNEC = '+#39+FrmPessoa1.EDCodigo.Text+#39+')')=True
			     Then Begin
			        XPessoaIni:=DMPESSOA.WFornecedor.FieldByName('NOME').AsString;
			        FrmPessoa1.EdDescricao.Text:=DMPESSOA.WFornecedor.FieldByName('NOME').AsString;
			        FrmPessoa1.EDCodigo.text:=DMPESSOA.WFornecedor.FieldByName('COD_INTERNO').AsString;
                   Flag:=1;
			     End;
		    End;

           If Flag=0
           Then Begin
               XPessoaIni:='';
		        FrmPessoa1.EdDescricao.Text:='';
		        FrmPessoa1.EDCodigo.text:='';
           End;
       End;
       FrmPessoa1.Repaint;
   End;
end;

procedure TFRelPadraoPes.FrmPessoa2EDCodigoKeyPress(Sender: TObject;
  var Key: Char);
Var
	Flag: Integer;
begin
  inherited;
	If Key = #13
   Then Begin
	  	Flag:=0;
   	If FrmPessoa2.EDCodigo.Text<>''
       Then Begin
  		    //LIBERA TODAS AS PESSOAS PARA CONSUTA
		    If XSQLREL='VWCLIENTE'
		    Then Begin
			     If filtraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_CLIENTE', '', ' (COD_CLIENTE = '+#39+FrmPessoa2.EDCodigo.Text+#39+')')=True
			     Then Begin
			        XPessoaFim:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
			        FrmPessoa2.EdDescricao.Text:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
			        FrmPessoa2.EDCodigo.text:=DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString;
                   Flag:=1;
			     End;
		    End;
		    If XSQLREL='VWFUNCIONARIO'
		    Then Begin
           	 If filtraTabela(DMPESSOA.VWFuncionario, 'VWFUNCIONARIO', 'COD_FUNC', '', ' (COD_FUNC = '+#39+FrmPessoa2.EDCodigo.Text+#39+')')=True
			     Then Begin
			        XPessoaFim:=DMPESSOA.VWFuncionario.FieldByName('NOME').AsString;
			        FrmPessoa2.EdDescricao.Text:=DMPESSOA.VWFuncionario.FieldByName('NOME').AsString;
			        FrmPessoa2.EDCodigo.text:=DMPESSOA.VWFuncionario.FieldByName('COD_INTERNO').AsString;
                   Flag:=1;
			     End;
		    End;
		    If XSQLREL='VWFORNEC'
		    Then Begin
				 IF filtraTabela(DMPESSOA.WFornecedor, 'VWFORNEC', 'COD_FORNEC', '', ' (COD_FORNEC = '+#39+FrmPessoa2.EDCodigo.Text+#39+')')=True
			     Then Begin
			        XPessoaFim:=DMPESSOA.WFornecedor.FieldByName('NOME').AsString;
			        FrmPessoa2.EdDescricao.Text:=DMPESSOA.WFornecedor.FieldByName('NOME').AsString;
			        FrmPessoa2.EDCodigo.text:=DMPESSOA.WFornecedor.FieldByName('COD_INTERNO').AsString;
                   Flag:=1;
			     End;
		    End;

           If Flag=0
           Then Begin
               XPessoaFim:='';
		        FrmPessoa2.EdDescricao.Text:='';
		        FrmPessoa2.EDCodigo.text:='';
           End;
       End;
     	FrmPessoa2.Repaint;
   End;
end;

procedure TFRelPadraoPes.BtnVisualizarClick(Sender: TObject);
begin
  inherited;
  	If FMenu.TIPOREL='RELCLIENTECOB' Then
		impdev;
  	If FMenu.TIPOREL<>'RELCLIENTECOB'
   Then Begin
   	PrepImp;
   	If DMPESSOA.TRel.IsEmpty
   	Then Begin
			Mensagem('INFORMAÇÃO AO USUÁRIO', 'Não existem dados a serem impressos!', '', 1, 1, False, 'i');
   	End
   	Else Begin
	    	If (FMenu.TIPOREL<>'RELFICHOT')  AND (FMenu.TIPOREL<>'RELCLIFICH') AND (RGInformacao.ItemIndex=0) AND (FMenu.TIPOREL<>'RELFUNCGERAL')Then
   			FSRel.LoadFromFile('C:\MZR\MACS\Rel\Frfsintpes.frf');
   		FSRel.ShowReport;
   	End;
   End;
end;



procedure TFRelPadraoPes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   DMMACS.TEmpresa.Cancel;
  inherited;
end;

procedure TFRelPadraoPes.FrmPessoa2BTNOPENClick(Sender: TObject);
begin
  inherited;
	 //LIBERA TODAS AS PESSOAS PARA CONSUTA
    If XSQLREL='VWCLIENTE'
    Then Begin
		 filtraTabela(DMPESSOA.WCliente, 'VWCLIENTE', '', '', ' ORDER BY NOME DESCENDING');
	     If AbrirForm(TFCLIENTE, FCLIENTE, 1)='Selected'
	     Then Begin
	        XPessoaFIM:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
	        FrmPessoa2.EdDescricao.Text:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
	        FrmPessoa2.EDCodigo.text:=DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString;
           FrmPessoa2.Repaint;
	     End;
    End;
    If XSQLREL='VWFUNCIONARIO'
    Then Begin
		 filtraTabela(DMPESSOA.VWFuncionario, 'VWFUNCIONARIO', '', '', ' ORDER BY NOME  NOME DESCENDING');
	     If AbrirForm(TFFUNCIONARIO, FFUNCIONARIO, 1)='Selected'
	     Then Begin
	        XPessoaFIM:=DMPESSOA.VWFuncionario.FieldByName('NOME').AsString;
	        FrmPessoa2.EdDescricao.Text:=DMPESSOA.VWFuncionario.FieldByName('NOME').AsString;
	        FrmPessoa2.EDCodigo.text:=DMPESSOA.VWFuncionario.FieldByName('COD_INTERNO').AsString;
           FrmPessoa2.Repaint;
	     End;
    End;
    If XSQLREL='VWFORNEC'
    Then Begin
		 filtraTabela(DMPESSOA.WFornecedor, 'VWFORNEC', '', '', ' ORDER BY NOME  NOME DESCENDING');
	     If AbrirForm(TFFORNECEDOR, FFORNECEDOR, 1)='Selected'
	     Then Begin
	        XPessoaFIM:=DMPESSOA.WFornecedor.FieldByName('NOME').AsString;
	        FrmPessoa2.EdDescricao.Text:=DMPESSOA.WFornecedor.FieldByName('NOME').AsString;
	        FrmPessoa2.EDCodigo.text:=DMPESSOA.WFornecedor.FieldByName('COD_INTERNO').AsString;
           FrmPessoa2.Repaint;
	     End;
    End;
end;

procedure TFRelPadraoPes.FormActivate(Sender: TObject);
begin
  inherited;
   RBTodosCli.Checked := true ;
   FrmVend.Visible:=false;
   FSDSRel.DataSource:=DMPESSOA.DSRel;
   RGFiltragem.Visible:=True;
	//PREPARA O CAPTION DO FORMULÁRIO
   If FMenu.TIPOREL='RELFICHOT'
   Then Begin//preparando impressão para relatório de fichas oticas
	      Caption:='Relatório de Fichas Óticas por clientes';
	      FrmPessoa1.LTextoBusca.Caption:='Cliente Inicial:';
	      FrmPessoa2.LTextoBusca.Caption:='Cliente Final:';
   End;
   If FMenu.TIPOREL='RELCLIENTECOB'
   Then Begin//preparando impressão para relatório de fichas oticas
	      Caption:='Relatório de Devedores por clientes';
	      FrmPessoa1.LTextoBusca.Caption:='Cliente Inicial:';
	      FrmPessoa2.LTextoBusca.Caption:='Cliente Final:';
   End;
   If FMenu.TIPOREL='RELFUNCGERAL'
	   Then Begin
	      Caption:='Relatório Geral de Funcionários';
	      FrmPessoa1.LTextoBusca.Caption:='Funcionário Inicial:';
	      FrmPessoa2.LTextoBusca.Caption:='Funcionário Final:';
        FrmRegiao.Visible:=False;
        FrmVend.Visible:=False;
        FrmCidade.Visible:=False;
        RGFiltragem.Visible:=False;
        RBSCPC.Visible:=False;
        GroupBox6.Visible:=False;
        RGInformacao.Visible:=False;
   End;
   IF XSqlRel='VWCLIENTE'
	   Then Begin
		  FrmVend.Visible:=True;
      FrmVend.BringToFront;
	      Caption:='Relatório de Clientes';
	      FrmPessoa1.LTextoBusca.Caption:='Cliente Inicial:';
	      FrmPessoa2.LTextoBusca.Caption:='Cliente Final:';
	   End;

   If (FMenu.TIPOREL<>'RELFICHOT') And (FMenu.TIPOREL='RELCLIENTECOB')
   Then Begin//preparando relatório para pessoas padrões
	   IF XSqlRel='VWCLIENTE'
	   Then Begin
		  FrmVend.Visible:=True;
         FrmVend.BringToFront;
	      Caption:='Relatório de Clientes';
	      FrmPessoa1.LTextoBusca.Caption:='Cliente Inicial:';
	      FrmPessoa2.LTextoBusca.Caption:='Cliente Final:';
	   End;
	   If XSqlRel='VWFUNCIONARIO'
	   Then Begin
	      Caption:='Relatório de Funcionários';
	      FrmPessoa1.LTextoBusca.Caption:='Funcionário Inicial:';
	      FrmPessoa2.LTextoBusca.Caption:='Funcionário Final:';
         RGFiltragem.Visible:=False;
	   End;
	   If XSqlRel='VWFORNEC'
	   Then Begin
	      Caption:='Relatório de Fornecedores';
	      FrmPessoa1.LTextoBusca.Caption:='Fornecedor Inicial:';
	      FrmPessoa2.LTextoBusca.Caption:='Fornecedor Final:';
         RGFiltragem.Visible:=False;
	   End;

   End;
end;

procedure TFRelPadraoPes.FrmBusca1EDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	If Key = #13
   Then Begin
   	If FrmCidade.EDCodigo.Text<>''
       Then Begin
	       If SelectRegistro('VWCIDADE', 'COD_CIDADE', FrmCidade.EDCodigo.Text) = True
	       Then Begin //Slecionou o registro procurado
				XCOD_CIDADE:=DMMACS.TSelect.FieldByName('COD_CIDADE').AsInteger;
           	FrmCidade.EDCodigo.text:=DMMACS.TSelect.FieldByName('COD_CIDADE').AsString;
           	FrmCidade.EdDescricao.Text:=DMMACS.TSelect.FieldByName('UF').AsString+'-'+DMMACS.TSelect.FieldByName('NOME').AsString;
          End
          Else Begin
				XCOD_CIDADE:=-1;
           	FrmCidade.EDCodigo.Text:='';
           	FrmCidade.EdDescricao.Text:='';
          End;
       End
       Else Begin
     		XCOD_CIDADE:=-1;
         	FrmCidade.EDCodigo.Text:='';
          	FrmCidade.EdDescricao.Text:='';
       End;
   End;

end;

procedure TFRelPadraoPes.FrmCidadeBTNOPENClick(Sender: TObject);
begin
  inherited;
	//LIBERA TODAS OS ESTADOS PARA CONSUTA
	filtraTabela(DMGEOGRAFIA.WCidade, 'VWCIDADE', '', '', ' Order by NOME');
    If AbrirForm(TFCadCidade, FCadCidade, 1)='Selected'
    Then Begin
        XCOD_CIDADE:=DMGEOGRAFIA.WCidade.FieldByName('COD_CIDADE').AsInteger;
        FrmCidade.EdDescricao.Text:=DMGEOGRAFIA.WCidade.FieldByName('UF').AsString+'-'+DMGEOGRAFIA.WCidade.FieldByName('NOME').AsString;
        FrmCidade.EDCodigo.text:=DMGEOGRAFIA.WCidade.FieldByName('COD_CIDADE').AsString;
        FrmCidade.Repaint;
    End
    Else Begin
        XCOD_CIDADE:=-1;
        FrmCidade.EdDescricao.Text:='';
        FrmCidade.EDCodigo.text:='';
        FrmCidade.Repaint;
    End;
end;

procedure TFRelPadraoPes.FrmCidadeBTNMINUSClick(Sender: TObject);
begin
  inherited;
   //Codigo da tabela local =0
   XCOD_CIDADE:=-1;
   FrmCidade.EDCodigo.Text:='';
   FrmCidade.EdDescricao.Text:='';
   FrmCidade.Repaint;   
end;

procedure TFRelPadraoPes.FrmBusca2EDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	If Key = #13
   Then Begin
   	If FrmRegiao.EDCodigo.Text<>''
       Then Begin
	       If SelectRegistro('REGIAO', 'COD_REGIAO', FrmRegiao.EDCodigo.Text) = True
	       Then Begin //Slecionou o registro procurado
          		xcod_regiao:=DMMACS.TSelect.FieldByName('COD_REGIAO').AsInteger;
           	FrmRegiao.EDCodigo.text:=DMMACS.TSelect.FieldByName('COD_REGIAO').AsString;
           	FrmRegiao.EdDescricao.Text:=DMMACS.TSelect.FieldByName('DESCRICAO').AsString;
          End
          Else Begin
	       		XCOD_REGIAO:=-1;
           	FrmRegiao.EDCodigo.Text:='';
           	FrmRegiao.EdDescricao.Text:='';
          End;
       End
       Else Begin
     		XCOD_REGIAO:=-1;
         	FrmRegiao.EDCodigo.Text:='';
          	FrmRegiao.EdDescricao.Text:='';
       End;
   End;
end;

procedure TFRelPadraoPes.FrmBusca2BTNOPENClick(Sender: TObject);
begin
  inherited;
	//LIBERA TODAS OS ESTADOS PARA CONSUTA
	filtraTabela(DMGEOGRAFIA.TRegiao, 'REGIAO', '', '', ' Order by DESCRICAO');

    If AbrirForm(TFCadRegiao, FCadRegiao, 1)='Selected'
    Then Begin
        XCOD_REGIAO:=DMGEOGRAFIA.TREGIAO.FieldByName('COD_REGIAO').AsInteger;
        FrmRegiao.EdDescricao.Text:=DMGEOGRAFIA.TREGIAO.FieldByName('DESCRICAO').AsString;
        FrmRegiao.EDCodigo.text:=DMGEOGRAFIA.TREGIAO.FieldByName('COD_REGIAO').AsString;
    End
    Else Begin
        XCOD_REGIAO:=-1;
        FrmRegiao.EdDescricao.Text:='';
        FrmRegiao.EDCodigo.text:='';
    End;
end;

procedure TFRelPadraoPes.FrmBusca2BTNMINUSClick(Sender: TObject);
begin
  inherited;
   //Codigo da tabela local =0
   XCOD_REGIAO:=-1;
   FrmRegiao.EDCodigo.Text:='';
   FrmRegiao.EdDescricao.Text:='';
end;

procedure TFRelPadraoPes.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
  Var
  	N1, N2, N3: String;
begin
  inherited;
   //SELECIONE TELEFONE
   LCidade.Caption:='';
  	N1:='';
   N2:='';
   N3:='';
   DMPESSOA.TALX1.close;
   DMPESSOA.TALX1.sql.Clear;
   DMPESSOA.TALX1.SQL.Add('Select * from telefone Where telefone.cod_pessoa=:CODPESSOA');
   DMPESSOA.TALX1.ParamByName('CODPESSOA').AsString:=DMPESSOA.TRel.FieldByName('COD_PESSOA').AsString;
   DMPESSOA.TALX1.Open;
	N1:=DMPESSOA.TALX1.FieldByName('NUMERO').AsString;
   DMPESSOA.TALX1.Next;
   If N1<>DMPESSOA.TALX1.FieldByName('NUMERO').AsString Then
		N2:=' / '+DMPESSOA.TALX1.FieldByName('NUMERO').AsString;
   DMPESSOA.TALX1.Next;
   If (N2<>DMPESSOA.TALX1.FieldByName('NUMERO').AsString) AND (N1<>DMPESSOA.TALX1.FieldByName('NUMERO').AsString) Then
		N3:=' / '+DMPESSOA.TALX1.FieldByName('NUMERO').AsString;
   LFone.Caption:=N1+N2+N3;
	//SELECIONE CIDADE
   LEstado.Caption:='';
   DMPESSOA.TALX1.close;
   DMPESSOA.TALX1.sql.Clear;
   DMPESSOA.TALX1.SQL.Add('select * FROM vwcidade Where vwcidade.cod_cidade=:CODCIDADE');
   DMPESSOA.TALX1.ParamByName('CODCIDADE').AsString:=DMPESSOA.TRel.FieldByName('COD_CIDADE').AsString;
   DMPESSOA.TALX1.Open;
   LCidade.Caption:=DMPESSOA.TALX1.FieldByName('NOME').AsString;
   LEstado.Caption:=DMPESSOA.TALX1.FieldByName('UF').AsString;

   DMPESSOA.TALX1.close;
   DMPESSOA.TALX1.sql.Clear;
   DMPESSOA.TALX1.SQL.Add('Select * from email Where email.cod_pessoa=:CODPESSOA');
   DMPESSOA.TALX1.ParamByName('CODPESSOA').AsString:=DMPESSOA.TRel.FieldByName('COD_PESSOA').AsString;
   DMPESSOA.TALX1.Open;
   LEMAIL.Caption:=DMPESSOA.TALX1.FieldByName('EMAIL').AsString;
end;

procedure TFRelPadraoPes.QrFichaCliBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  inherited;
   QrLogo.Picture.LoadFromFile(DMMACS.TLoja.FieldByName('CAMIMGLOGO').AsString);
end;

procedure TFRelPadraoPes.FrmVendEDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	If Key = #13
   Then Begin
   	If FrmVend.EdDescricao.Text<>''
       Then Begin
	       If SelectRegistro('VWFORNEC', 'COD_FORNEC', FrmVend.EDCodigo.Text) = True
	       Then Begin //Slecionou o registro procurado
				XCod_Vend:=DMMACS.TSelect.FieldByName('COD_FORNEC').AsInteger;
           	FrmVend.EDCodigo.text:=DMMACS.TSelect.FieldByName('COD_FORNEC').AsString;
           	FrmCidade.EdDescricao.Text:=DMMACS.TSelect.FieldByName('NOME').AsString;
          End
          Else Begin
				XCod_Vend:=-1;
           	FrmVend.EDCodigo.text:='';
           	FrmCidade.EdDescricao.Text:='';
          End;
       End
       Else Begin
       	XCod_Vend:=-1;
       	FrmVend.EDCodigo.text:='';
       	FrmCidade.EdDescricao.Text:='';
       End;
   End;
end;       
procedure TFRelPadraoPes.FrmVendBTNOPENKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  	//LIBERA TODOS OS VENDEDORES PARA CONSUTA
	filtraTabela(DMPESSOA.VWFuncionario, 'VWFUNCIONARIO', '', '', '');
   If AbrirForm(TFFuncionario, FFuncionario, 1)='Selected'
   Then Begin
   	XCod_Vend:=DMPESSOA.VWFuncionario.FieldByName('COD_FUNC').AsInteger;
      	FrmVend.EdDescricao.Text:=DMPESSOA.VWFuncionario.FieldByName('NOME').AsString;
      	FrmVend.EDCodigo.text:=DMPESSOA.VWFuncionario.FieldByName('COD_INTERNO').AsString;
   End;
end;

procedure TFRelPadraoPes.FrmVendBTNMINUSClick(Sender: TObject);
begin
  inherited;
   //limpa VENDEDOR inicial
   XCod_Vend:=-1;
   FrmVend.EDCodigo.Text:='';
   FrmVend.EdDescricao.Text:='';
   FrmVend.Repaint;
end;

procedure TFRelPadraoPes.FrmVendBTNOPENClick(Sender: TObject);
begin
  inherited;
  	//LIBERA TODOS OS VENDEDORES PARA CONSUTA
	filtraTabela(DMPESSOA.VWFuncionario, 'VWFUNCIONARIO', '', '', '');
   If AbrirForm(TFFuncionario, FFuncionario, 1)='Selected'
   Then Begin
   	XCod_Vend:=DMPESSOA.VWFuncionario.FieldByName('COD_FUNC').AsInteger;
      	FrmVend.EdDescricao.Text:=DMPESSOA.VWFuncionario.FieldByName('NOME').AsString;
      	FrmVend.EDCodigo.text:=DMPESSOA.VWFuncionario.FieldByName('COD_INTERNO').AsString;
       FrmVend.Repaint;
   End;
   XSQLREL:='VWCLIENTE';
end;

procedure TFRelPadraoPes.FrmRegiaoBTNMINUSClick(Sender: TObject);
begin
  inherited;
    FrmRegiao.EDCodigo.Text := '';
    FrmRegiao.EdDescricao.Text := '';
    FrmRegiao.Repaint;
end;

procedure TFRelPadraoPes.FrmRegiaoBTNOPENClick(Sender: TObject);
begin
  inherited;
	filtraTabela(DMGEOGRAFIA.TRegiao , 'Regiao', '', '', ' Order by descricao');
    If AbrirForm(TFCadRegiao, FCadRegiao, 1)='Selected'
    Then Begin
       XCod_Regiao := DMGEOGRAFIA.TRegiao.FieldByName('Cod_regiao').AsInteger;
       FrmRegiao.EDCodigo.Text := DMGEOGRAFIA.TRegiao.FieldByName('Cod_regiao').AsString;
       FrmRegiao.EdDescricao.Text := DMGEOGRAFIA.TRegiao.FieldByName('descricao').AsString;
       FrmRegiao.Repaint;
    End
    Else Begin
        XCod_Regiao := -1;
        FrmRegiao.EDCodigo.Text := '';
        FrmRegiao.EdDescricao.Text := '';
        FrmRegiao.Repaint;
    End;
end;

procedure TFRelPadraoPes.FrmCidadeEDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  FrmCidade.EDCodigoKeyPress(Sender, Key);

end;

procedure TFRelPadraoPes.FrmRegiaoEDCodigoKeyPress(Sender: TObject;
  var Key: Char);     
begin
  inherited;
  FrmRegiao.EDCodigoKeyPress(Sender, Key);

end;

procedure TFRelPadraoPes.ImpRelDadosFunc;
begin

   PrepImp;
end;
procedure TFRelPadraoPes.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
  Var
  	N1, N2, N3: String;
begin
  inherited;
   //SELECIONE TELEFONE
   LCidade2.Caption:='';
  	N1:='';
   N2:='';
   N3:='';
   DMPESSOA.TALX1.close;
   DMPESSOA.TALX1.sql.Clear;
   DMPESSOA.TALX1.SQL.Add('Select * from telefone Where telefone.cod_pessoa=:CODPESSOA');
   DMPESSOA.TALX1.ParamByName('CODPESSOA').AsString:=DMPESSOA.TRel.FieldByName('COD_PESSOA').AsString;
   DMPESSOA.TALX1.Open;
	N1:=DMPESSOA.TALX1.FieldByName('NUMERO').AsString;
   DMPESSOA.TALX1.Next;
   If N1<>DMPESSOA.TALX1.FieldByName('NUMERO').AsString Then
		N2:=' / '+DMPESSOA.TALX1.FieldByName('NUMERO').AsString;
   DMPESSOA.TALX1.Next;
   If (N2<>DMPESSOA.TALX1.FieldByName('NUMERO').AsString) AND (N1<>DMPESSOA.TALX1.FieldByName('NUMERO').AsString) Then
		N3:=' / '+DMPESSOA.TALX1.FieldByName('NUMERO').AsString;
   LFone2.Caption:=N1+N2+N3;
	//SELECIONE CIDADE
   LEstado2.Caption:='';
   DMPESSOA.TALX1.close;
   DMPESSOA.TALX1.sql.Clear;
   DMPESSOA.TALX1.SQL.Add('select * FROM vwcidade Where vwcidade.cod_cidade=:CODCIDADE');
   DMPESSOA.TALX1.ParamByName('CODCIDADE').AsString:=DMPESSOA.TRel.FieldByName('COD_CIDADE').AsString;
   DMPESSOA.TALX1.Open;
   LCidade2.Caption:=DMPESSOA.TALX1.FieldByName('NOME').AsString;
   LEstado2.Caption:=DMPESSOA.TALX1.FieldByName('UF').AsString;

   DMPESSOA.TALX1.close;
   DMPESSOA.TALX1.sql.Clear;
   DMPESSOA.TALX1.SQL.Add('Select * from email Where email.cod_pessoa=:CODPESSOA');
   DMPESSOA.TALX1.ParamByName('CODPESSOA').AsString:=DMPESSOA.TRel.FieldByName('COD_PESSOA').AsString;
   DMPESSOA.TALX1.Open;
   LEMAIL2.Caption:=DMPESSOA.TALX1.FieldByName('EMAIL').AsString;


end;

end.


