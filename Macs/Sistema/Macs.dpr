program Macs;

uses
  Forms,
  QGraphics,
  DIALOGS,
  DB,
  sysutils,
  Windows,
  UMenu in 'UMenu.pas' {X},
  UPadrao in 'UPadrao.pas' {FPadrao},
  UMessage in '..\..\Kernel\Message\UMessage.pas' {FMessage},
  USPlash in 'USPlash.pas' {FSplash},
  ULogoff in 'ULogoff.pas' {FLogoff},
  UDMMacs in 'UDMMacs.pas' {DMMACS: TDataModule},
  UDMCaixa in 'Financeiro\UDMCaixa.pas' {DMCAIXA: TDataModule},
  Alxor32 in '..\..\Kernel\Units\Alxor32.pas',
  AlxMessage in '..\..\Kernel\Message\AlxMessage.pas',
  UGerenciador in 'UGerenciador.pas',
  UPadraoRodaPe in 'UPadraoRodaPe.pas' {FPadraoRodaPe},
  UDMGEOGRAFIA in 'ModPessoa\UDMGEOGRAFIA.pas' {DMGEOGRAFIA: TDataModule},
  UDmBanco in 'Financeiro\UDmBanco.pas' {DMBANCO: TDataModule},
  UDMConta in 'Financeiro\UDMConta.pas' {DMCONTA: TDataModule},
  UDMEntrada in 'ModVendas\UDMEntrada.pas' {DMENTRADA: TDataModule},
  UDMSaida in 'ModVendas\UDMSaida.pas' {DMSAIDA: TDataModule},
  UCadPadrao in 'UCadPadrao.pas' {FCadPadrao},
  UCadPadraoDesc in 'UCadPadraoDesc.pas' {FCadPadraoDesc},
  Ubanco in 'Financeiro\Ubanco.pas' {FCadBanco},
  UDMPessoa in 'ModPessoa\UDMPessoa.pas' {DMPESSOA: TDataModule},
  UDMFinanc in 'Financeiro\UDMFinanc.pas' {DMFINANC: TDataModule},
  UDesligar in 'UDesligar.pas' {FDesliga},
  UCadRegiao in 'ModPessoa\UCadRegiao.pas' {FCadRegiao},
  UCadEstado in 'ModPessoa\UCadEstado.pas' {FCadEstado},
  UFrmBusca in 'UFrmBusca.pas' {FrmBusca: TFrame},
  UCadCidade in 'ModPessoa\UCadCidade.pas' {FCadCidade},
  UCadLoja in 'UCadLoja.pas' {FCadLoja},
  UConfigLoja in 'UConfigLoja.pas' {FConfigLoja},
  UCadEmpresa in 'UCadEmpresa.pas' {FCadEmpresa},
  UAgencia in 'Financeiro\UAgencia.pas' {FCadAgencia},
  UCtaCor in 'Financeiro\UCtaCor.pas' {FCadCtaCor},
  UcadCargo in 'ModPessoa\UcadCargo.pas' {FCadCargo},
  UDMEstoque in 'ModVendas\UDMEstoque.pas' {DMESTOQUE: TDataModule},
  UCadCST in 'ModVendas\UCadCST.pas' {FCadCST},
  UCadGrupo in 'ModVendas\UCadGrupo.pas' {FCadGrupo},
  UCadMoeda in 'Financeiro\UCadMoeda.pas' {FCadMoeda},
  UCadSubgrupo in 'ModVendas\UCadSubgrupo.pas' {FCadSubgrupo},
  UCadUnidade in 'ModVendas\UCadUnidade.pas' {FCadUnidade},
  UFormPag in 'Financeiro\UFormPag.pas' {FFormPag},
  UConsPlncta in 'Financeiro\UConsPlncta.pas' {FConsPlnCta},
  UCadCFOP in 'ModVendas\UCadCFOP.pas' {FCadCFOP},
  UCadCaixa in 'Financeiro\UCadCaixa.pas' {FCadCaixa},
  UCadPadraoPes in 'ModPessoa\UCadPadraoPes.pas' {FCadPadraoPes},
  UCliente in 'ModPessoa\UCliente.pas' {FCliente},
  UFORNECEDOR in 'ModPessoa\UFORNECEDOR.pas' {FFornecedor},
  UFuncionario in 'ModPessoa\UFuncionario.pas' {FFuncionario},
  UCadUsuario in 'ModPessoa\UCadUsuario.pas' {FCadUsuario},
  UPlanoAcesso in 'UPlanoAcesso.pas' {FPlanoAcesso},
  UProduto in 'ModVendas\UProduto.pas' {FProduto},
  UPedidoPadrao in 'ModVendas\UPedidoPadrao.pas' {FPedidoPadrao},
  UPedCompra in 'ModVendas\UPedCompra.pas' {FPedCompra},
  UPedVenda in 'ModVendas\UPedVenda.pas' {FPedVenda},
  ULancEstPadrao in 'ModVendas\ULancEstPadrao.pas' {FLancEstPadrao},
  ULancSai in 'ModVendas\ULancSai.pas' {FLancSai},
  ULancEnt in 'ModVendas\ULancEnt.pas' {FLancEnt},
  UAbCaixa in 'Financeiro\UAbCaixa.pas' {FABCaixa},
  ULancCaixa in 'Financeiro\ULancCaixa.pas' {FLancCaixa},
  UFechaCaixa in 'Financeiro\UFechaCaixa.pas' {FFechaCaixa},
  UPadraoContas in 'Financeiro\UPadraoContas.pas' {FPadraoContas},
  UCtaReceber in 'Financeiro\UCtaReceber.pas' {FCtaReceber},
  UCtasPagar in 'Financeiro\UCtasPagar.pas' {FCtaPagar},
  UPadraoBaixarContas in 'Financeiro\UPadraoBaixarContas.pas' {FPadraoBaixaContas},
  UBaixaContaPagar in 'Financeiro\UBaixaContaPagar.pas' {FBaixaContaPagar},
  UBaixaContaReceber in 'Financeiro\UBaixaContaReceber.pas' {FBaixaContaReceber},
  UPadraoRelatorio in 'Relatórios\UPadraoRelatorio.pas' {FPadraoRelatorio},
  URelCaixa in 'Relatórios\Financeiro\URelCaixa.pas' {FRelCaixa},
  URelPadraoPes in 'Relatórios\Pessoa\URelPadraoPes.pas' {FRelPadraoPes},
  URelCtaPR in 'Financeiro\URelCtaPR.pas' {FRelCtaPR},
  FcadPadraRodaPe in 'FcadPadraRodaPe.pas' {FCadPadraoRodaPe},
  UMovBanco in 'Financeiro\UMovBanco.pas' {FMovBanco},
  URelPadraoped in 'Relatórios\Vendas\URelPadraoped.pas' {FRelPadraoPed},
  URelEtiqEstoque in 'ModVendas\URelEtiqEstoque.pas' {FRelEtiqEstoque},
  Alxorprn in '..\..\Kernel\Units\Alxorprn.pas',
  ULanCHPadrao in 'Financeiro\ULanCHPadrao.pas' {FLanCHPadrao},
  ULanCHEntr in 'Financeiro\ULanCHEntr.pas' {FLanCHEntr},
  ULanCHSaida in 'Financeiro\ULanCHSaida.pas' {FLanCHSaida},
  UServico in 'ModVendas\UServico.pas' {FServico},
  UCadEquipamento in 'ModPessoa\UCadEquipamento.pas' {FCadEquipamento},
  UOrdem in 'ModVendas\UOrdem.pas' {FOrdem},
  UAcessBase in 'UAcessBase.pas' {FAcessBase},
  UTroca in 'ModVendas\UTroca.pas' {FTroca},
  USenha in 'USenha.pas' {FSenha},
  UComissionados in 'ModVendas\UComissionados.pas' {FComissao},
  URelMovBanco in 'Financeiro\URelMovBanco.pas' {FRelMovBanco},
  UConfigEtqProd in 'ModVendas\UConfigEtqProd.pas' {FConfigEtqProd},
  URelOrdem in 'ModVendas\URelOrdem.pas' {FRelOrdem},
  URelComissao in 'ModVendas\URelComissao.pas' {FRelComissao},
  URelProduc in 'ModVendas\URelProduc.pas' {FRelProduc},
  URelComissPedC in 'ModVendas\URelComissPedC.pas' {FRelComisPedC},
  UDmServ in 'ModVendas\UDmServ.pas' {DMServ: TDataModule},
  UConvertUnid in 'ModVendas\UConvertUnid.pas' {FConvertUnid},
  UEcf in 'UEcf.pas' {FECF},
  UGeraSintegra in 'UGeraSintegra.pas' {FGeraSintegra},
  UDMFiscal in 'UDMFiscal.pas' {DMFiscal: TDataModule},
  UCadReducaoZ in 'UCadReducaoZ.pas' {FCadReducaoZ},
  UEstrutResult in 'Relatórios\Financeiro\UEstrutResult.pas' {FRelEstrutResult},
  UOrcamento in 'ModVendas\UOrcamento.pas' {FOrcamento},
  UMensagem in 'UMensagem.pas' {FMensagem},
  UConsProduto in 'ModVendas\UConsProduto.pas' {FConsProduto},
  URelData in 'Relatórios\URelData.pas' {FRelData},
  URelMovCaixa in 'Relatórios\Financeiro\URelMovCaixa.pas' {FRelMovCaixa},
  UExpImp in 'UExpImp.pas' {FExpImp},
  ULogoff1 in 'ULogoff1.pas' {FLogoff1},
  UFiscal in 'ModVendas\UFiscal.pas' {FFiscal},
  UConfigNF in 'UConfigNF.pas' {FConfigNF},
  URelCtasSetor in 'Relatórios\Financeiro\URelCtasSetor.pas' {FRelCtasSetor},
  URelGraficoLine in 'Relatórios\Financeiro\URelGraficoLine.pas' {FRelGraficoLine},
  ULicita in 'ModVendas\ULicita.pas' {FLicita},
  URelGraficoLine03 in 'Relatórios\Financeiro\URelGraficoLine03.pas' {FRelGraficoLine03},
  UBaixaMult in 'Financeiro\UBaixaMult.pas' {FBaixaMult},
  UFaturaPedidos in 'ModVendas\UFaturaPedidos.pas' {FFaturaPedidos},
  UnitDeclaracoes in '..\..\Kernel\Units\UnitDeclaracoes.pas',
  UResumoMov in 'Financeiro\UResumoMov.pas' {FResumoMov},
  UConfigEtqProd02 in 'ModVendas\UConfigEtqProd02.pas' {FConfigEtq02},
  URelMovBancoPeriodo in 'Relatórios\Financeiro\URelMovBancoPeriodo.pas' {FRelMovBancoPeriodo},
  UConfigDup in 'Relatórios\Financeiro\UConfigDup.pas' {FConfigDup},
  URelClienteData in 'Relatórios\URelClienteData.pas' {FRelClienteData},
  UCtrlEntrega in 'ModVendas\UCtrlEntrega.pas' {FCtrlEntrega},
  UCtasReceberLote in 'Financeiro\UCtasReceberLote.pas' {FCtasReceberLote},
  UConfigCheq in 'Relatórios\Financeiro\UConfigCheq.pas' {FConfCheque},
  UCadOferta in 'ModVendas\UCadOferta.pas' {FCadOferta},
  UDMExporta in 'UDMExporta.pas' {DMEXPORTA: TDataModule},
  UCadEquipe in 'ModPessoa\UCadEquipe.pas' {FCadEquipe},
  URelEquipamento in 'ModVendas\URelEquipamento.pas' {FRelEquipamento},
  URelEquipe in 'Relatórios\Vendas\URelEquipe.pas' {FRelEquipe},
  UPrecoServ in 'ModVendas\UPrecoServ.pas' {FPrecoServ},
  UAtualizaValores in 'ModVendas\UAtualizaValores.pas' {FAtualizaValores},
  URelProdCli in 'Relatórios\vendas\URelProdCli.pas' {FRelProdCli},
  URelatorioPreview in 'Relatórios\URelatorioPreview.pas' {FrmPreview},
  URelatorioPrint in 'Relatórios\URelatorioPrint.pas' {FrmPrint},
  UDMRel in 'Relatórios\UDMRel.pas' {DMRel: TDataModule},
  URelEstoque in 'ModVendas\URelEstoque.pas' {FRelEstoque},
  URelComissaoProd in 'Relatórios\estoque\URelComissaoProd.pas' {FRelComissaoProd},
  UValidacaoNFe in 'UValidacaoNFe.pas',
  TDadosNFe in 'TDadosNFe.pas',
  UOrdemMec in 'ModVendas\UOrdemMec.pas' {FOrdemMec},
  UInfoClienteEquip in 'ModPessoa\UInfoClienteEquip.pas' {FInfoClienteEquip: TFrame},
  URelMecanica in 'Relatórios\URelMecanica.pas' {FRelMecanica},
  UCadPlaca in 'ModPessoa\UCadPlaca.pas' {FCadPlaca: TFrame},
  UExpImpXML in 'UExpImpXML.pas' {FExpImpXML},
  UDadosXML in 'UDadosXML.pas',
  UAuditoria in 'UAuditoria.pas' {FAuditoria},
  UInfData in '..\..\Kernel\Message\UInfData.pas',
  UFechaConta in 'Financeiro\UFechaConta.pas' {FFechaConta},
  UPadraoFiscal in 'UPadraoFiscal.pas' {FPadraoFiscal},
  UFiscalEntradas in 'UFiscalEntradas.pas' {FFiscalEntradas},
  UFiscalSaidas in 'UFiscalSaidas.pas' {FFiscalSaidas},
  UFiscalOrdem in 'UFiscalOrdem.pas' {FFiscalOrdem},
  UFrmAtalho in 'UFrmAtalho.pas' {FrmAtalho: TFrame},
  UPeriodoFiscal in 'UPeriodoFiscal.pas' {FPeriodoFiscal},
  UImpSintegra in 'UImpSintegra.pas' {FImpSintegra},
  UMzrNfe in 'UMzrNfe.pas' {FMzrNfe},
  UCadProduto in 'ModVendas\UCadProduto.pas' {FCadProduto},
  UNcm in 'ModVendas\UNcm.pas' {FCadNcm},
  UNovidades in 'UNovidades.pas' {FNovidades},
  UListaNfe in 'UListaNfe.pas' {FListaNfe},
  URelPeriodoFiscal in 'Relatórios\URelPeriodoFiscal.pas' {FRelPeriodoFiscal},
  URelLancContas in 'Relatórios\financeiro\URelLancContas.pas' {FRelLancContas},
  UConsPedVenda in 'ModVendas\UConsPedVenda.pas' {FConsultaPedVenda},
  UOrdemDesp in 'ModVendas\UOrdemDesp.pas' {FOrdemDesp},
  UExportaDominio in 'UExportaDominio.pas' {FExportaDominio},
  UOrdemPet in 'ModVendas\UOrdemPet.pas' {FOrdemPet},
  UFreqVendas in 'Financeiro\UFreqVendas.pas' {FFreqVenda},
  UOrdemLoca in 'ModVendas\UOrdemLoca.pas' {FOrdemLoca},
  UcadServico in 'ModVendas\UcadServico.pas' {FCadServico},
  UMDO in 'UMDO.pas' {MDO: TDataModule},
  UOrdemRetifica in 'ModVendas\UOrdemRetifica.pas' {FOrdemRetifica},
  UImpNfe in 'UImpNfe.pas' {FImpNfe},
  UCadAcessorios in 'ModVendas\UCadAcessorios.pas' {FCadAcessorios},
  URelChequeEmit in 'Relatórios\URelChequeEmit.pas' {FRelChequeEmit},
  UAtualizaBanco in 'UAtualizaBanco.pas' {FAtualizaBanco},
  UDMAtualizaBanco in 'UDMAtualizaBanco.pas' {DMUpBanco: TDataModule},
  UFServico in 'UFServico.pas' {FfServico},
  UMzrNFSe in 'UMzrNFSe.pas' {FMzrNFSe},
  UOrcamentoMac in 'ModVendas\UOrcamentoMac.pas' {FOrcamentoMac},
  URelOrdemLocaMensal in 'Relatórios\URelOrdemLocaMensal.pas' {FOrdemLocaMensal},
  UCartaCorrecaoEletronica in 'UCartaCorrecaoEletronica.pas' {FCartaCorrecaoeletronica},
  UOrdemGrafica in 'UOrdemGrafica.pas' {FOrdemGrafica},
  UGeradorXML in 'UGeradorXML.pas' {FGeradorXML},
  UCartao in 'Financeiro\UCartao.pas' {FCadCartao},
  UFaturaContas in 'Financeiro\UFaturaContas.pas' {FFaturaContas},
  UOrdemManutencao in 'ModVendas\UOrdemManutencao.pas' {FOrdemManutencao},
  USped in 'USped.pas' {FSped},
  URelGraficoPizza in 'Relatórios\URelGraficoPizza.pas' {FRelGraficoPizza},
  UEscolhaServico in 'UEscolhaServico.pas' {FEscolhaServico},
  UNumeroNfse in 'UNumeroNfse.pas' {FNumeroNfse},
  UExpedicao in 'ModVendas\UExpedicao.pas',
  URelDestinatario in 'Relatórios\URelDestinatario.pas' {FRelDestinatario},
  ULancTroco in 'Financeiro\ULancTroco.pas' {FLancTroco},
  UOrcamento3 in 'ModVendas\UOrcamento3.pas' {FOrcamento3},
  UDMFAST in 'Relatórios\UDMFAST.pas' {DMFAST: TDataModule},
  USolicitarCompra in 'ModVendas\USolicitarCompra.pas' {FSolicitarCompra},
  UFichaTecnica in 'ModVendas\UFichaTecnica.pas' {FFichaTecnica},
  UDevolucao in 'UDevolucao.pas' {FDevolucao},
  URelBancoPlanoContas in 'Relatórios\financeiro\URelBancoPlanoContas.pas' {FRelBancoPlanoContas},
  URelGeralMovimentacoesFinanceiras in 'Relatórios\URelGeralMovimentacoesFinanceiras.pas' {FRelGeralMovimentacoesFinanceiras},
  URelProdutos in 'Relatórios\estoque\URelProdutos.pas' {FRelProdutos},
  URelHistVenda in 'Relatórios\estoque\URelHistVenda.pas' {FRelHistVenda},
  UFaturaOrdemMensal in 'Financeiro\UFaturaOrdemMensal.pas' {FFaturaOrdemMensal},
  UOrdemProduc in 'ModVendas\UOrdemProduc.pas' {FOrdemProduc},
  UOrdemAsistenciaTecnica in 'ModVendas\UOrdemAsistenciaTecnica.pas' {FOrdemAssitenciaTecnica},
  UExpVenda in 'ModVendas\UExpVenda.pas' {FExpVenda},
  URecorrenciaOs in 'ModVendas\URecorrenciaOs.pas' {FRecorrenciaOs},
  Validacoes in '..\..\Kernel\Units\Validacoes.pas',
  FResultadoValidacoes in '..\..\Kernel\Units\FResultadoValidacoes.pas' {FResultadoValidacoesTestes},
  UAjuda in 'UAjuda.pas' {FAjuda},
  NFSe_Util_TLB in '..\..\..\..\Program Files (x86)\Borland\Delphi7\Imports\NFSe_Util_TLB.pas',
  URelProdutosNcm in 'Relatórios\estoque\URelProdutosNcm.pas' {FRelProdutosNcm},
  UCredDev in 'ModVendas\UCredDev.pas' {FCredDev},
  UPagamento in 'Financeiro\UPagamento.pas' {FPagamento},
  UControleSaida in 'ModVendas\UControleSaida.pas' {FControleSaida},
  UContagemEstoque in 'UContagemEstoque.pas' {FContagemEstoque},
  UAntecipaCR in 'Financeiro\UAntecipaCR.pas' {FAntecipaCR},
  NFe_Util_2G_TLB in '..\..\..\..\Program Files (x86)\Borland\Delphi7\Imports\NFe_Util_2G_TLB.pas',
  URelServicosPet in 'ModVendas\URelServicosPet.pas' {FRelServicosPet};

{FExpedicao}

{$R *.RES}

VAR
 	 XVERSION: String;
	 XPATHEXE: String;
    XFLAG: Integer;//Controla conexao de banco se flag=1 o sistema irá utilizar conexao sem necessidade da TRILL
begin
   Application.Initialize;
	//SETA FORMATO DE DATA PARA O SISTEMA
	Application.UpdateFormatSettings := false;
	ShortDateFormat := 'dd/mm/yyyy';
	DecimalSeparator := ',';//Edmar - 16/01/2014 - Deixa padrão o , como separador decimal

   XVERSION:= '22.11.06';

   Application.Title := 'ZION';
   Application.CreateForm(TFMenu, FMenu);
   Application.CreateForm(TFSplash, FSplash);
   Application.CreateForm(TFResultadoValidacoesTestes, FResultadoValidacoesTestes);
   Application.CreateForm(TFRelGeralMovimentacoesFinanceiras, FRelGeralMovimentacoesFinanceiras);
   Application.CreateForm(TFOrcamentoMac, FOrcamentoMac);
   Application.CreateForm(TFPagamento, FPagamento);
   Application.CreateForm(TFControleSaida, FControleSaida);
   Application.CreateForm(TFContagemEstoque, FContagemEstoque);
   Application.CreateForm(TFRelServicosPet, FRelServicosPet);
   FSplash.LVERSAO.Caption:=XVERSION;
   FMenu.Caption:='Versão: '+ XVERSION;
   FSplash.Show;
   FSplash.barra.Position:=0;
   FSplash.Update;

   //CRIA DMMACS
   FSplash.LArquivos.Caption:='Carregando Configurações';
   Try
       Application.CreateForm(TDMMACS, DMMACS);
   Except
   On E:Exception do
   Begin
   	MessageDlg('Erro ao abrir DMMacs: '+E.Message, mtError, [mbOK], 0);
       Application.Terminate;
   end;
   End;

   // PASSO 1 DE CONEXÃO
   //SE FOR ENCONTRADO UM DBMACS.GDB NO MESMO ENDEREÇO DO EXEC O SIS SE CONECTARÁ A ELES
   XFLAG:=0;

   XPATHEXE:=ExtractFilePath(Application.ExeName);
   IF FileExists(XPATHEXE+'DBMACS.GDB')
   Then Begin
		XFLAG:=1;
		FMenu.XTRILL:=XPATHEXE+'DBMACS.GDB';
   End;

  	//PASSO 2 DE CONEXAO
  	//SE FOR NECESSÁRIO UTILIZAR - SE DA TRILL QUE DEVE ESTAR NO MESMO LOCAL DO EXE
  	If XFLAG=0
  	Then Begin
		FMenu.XTRILL:='';
	    XPATHEXE:=ExtractFilePath(Application.ExeName);
  		IF FileExists(XPATHEXE+'TRILL.GDB')
  		Then Begin
       	//TENTA SE CONECTAR AO TRILL QUE DEVE ESTAR NO MESMO LOCAL DO EXE
			Try
       		//Conecta DataBases e Transactions
          		DMMACS.IBTTRILL.Active:=False;
          		DMMACS.DBTrill.Connected:=False;
      			DMMACS.DBTrill.DatabaseName:=XPATHEXE+'TRILL.GDB';
          		DMMACS.DBTrill.Connected:=True;
          		DMMACS.IBTTRILL.Active:=True;
               DMMACS.BASE.Active:=True;
       	Except
           	MessageDlg('Falha trill', mtError, [mbOK], 0);
           End;
	  		FMenu.XCOUNRECORD:=0;
			//Mostra todas as bases de dados cadastradas e válidas
	  		DMMACS.BASE.Close;
	  		DMMACS.BASE.SQL.Clear;
	  		DMMACS.BASE.SQL.Add('SELECT * FROM BASE');
	  		DMMACS.BASE.Open;

	  		While Not DMMACS.BASE.Eof do
	  		Begin
	      		FMenu.XTRILL:=DMMACS.BASE.FIELDBYNAME('ENDFILE').AsString;
	    		IF FileExists(FMenu.XTRILL)
	    		Then Begin
		       		DMMACS.BASE.Edit;
		       		DMMACS.BASE.FieldByName('SHOW').AsString:='1';
		       		DMMACS.BASE.Post;
		           	FMenu.XCOUNRECORD:=FMENU.XCOUNRECORD+1;
	    		End
	    		Else Begin
		       		DMMACS.BASE.Edit;
		       		DMMACS.BASE.FieldByName('SHOW').AsString:='0';
		       		DMMACS.BASE.Post;
	    		End;
		       	DMMACS.BASE.Next;
			End;

   		//agora mostra somente os registros válidos onde foram encontrado bases
			DMMACS.BASE.ApplyUpdates;
		   	DMMACS.IBTTRILL.CommitRetaining;
		   	DMMACS.BASE.Close;
		   	DMMACS.BASE.SQL.Clear;
		   	DMMACS.BASE.SQL.Add('SELECT * FROM BASE where SHOW=1');
		   	DMMACS.BASE.Open;

			//se conter apenas um registro ele pega automaticamente este
		   	If FMENU.XCOUNRECORD=1
		   	Then Begin
		       	FMenu.XTRILL:=DMMACS.BASE.FieldByName('RUMOR').AsString;
		       	FMenu.XSERVER:=DMMACS.BASE.FieldByName('SERVER').AsString;
   			If FMenu.XSERVER<>'' Then
           		FMenu.XTRILL:=FMenu.XSERVER+':'+FMenu.XTRILL;
		       	ConectBd(DMMACS);
		   	End
		   	Else Begin
	    		If DMMACS.BASE.RecordCount<>0
	    		Then Begin
	  				Application.CreateForm(TFAcessBase, FAcessBase);
	  				FAcessBase.ShowModal;
		       	End;
	  		End;
       End;
  End;

  //PASSO 03 - Se ainda não ocorreu uma conexão, é configurado um acesso por xml
  If FMenu.XTRILL=''
  Then Begin
  		FMenu.XTRILL:=RecuperaCaminhoBancoXml;
  		XFLAG:=1;
  End;
  //Incrementa barra de gauge
  FSplash.barra.Position:=FSplash.barra.Position+10;
  If (DMMACS.BASE.RecordCount<>0) or (XFLAG=1)
  Then Begin
     //CRIA DMMACS
     FSplash.LArquivos.Caption:='Carregando Configurações';
     //reconecta macs
     ConectBd(DMMacs);
     //CRIA MENU e DMPessoa
     FSplash.LArquivos.Caption:='Carregando Módulo de Pessoas';
     Application.CreateForm(TDMPESSOA, DMPESSOA);
     ConectBd(DMPessoa);
     FSplash.ImgBarra.Width:=FSplash.ImgBarra.Width+11;
     FSplash.barra.Position:=FSplash.barra.Position+10;
     FSplash.ImgBarra.Update;
     FSplash.Update;

     //CRIA MDO
     Application.CreateForm(TMDO, MDO);
     ConectBd(MDO);
     Application.CreateForm(TDMFAST, DMFAST);
     ConectBd(DMFAST);

     //CRIA DMGEOGRAFIA
     FSplash.LArquivos.Caption:='Carregando Módulo Geográfico';
     Application.CreateForm(TDMGeografia, DMGeografia);
     ConectBd(DMGeografia);
     FSplash.ImgBarra.Width:=FSplash.ImgBarra.Width+11;
     FSplash.barra.Position:=FSplash.barra.Position+10;
     FSplash.ImgBarra.Update;
     FSplash.Update;

     //CRIA DMbancos
     FSplash.LArquivos.Caption:='Carregando Módulo Financeiro';
     Application.CreateForm(TDMBanco, DMBanco);
     Application.CreateForm(TDMFINANC, DMFINANC);
     ConectBd(DMBANCO);

     ConectBd(DMFINANC);

     FSplash.ImgBarra.Width:=FSplash.ImgBarra.Width+11;
     FSplash.barra.Position:=FSplash.barra.Position+10;
     FSplash.ImgBarra.Update;
     FSplash.Update;

     //CRIA DMcaixa
     FSplash.LArquivos.Caption:='Carregando Módulo de Caixa';
     Application.CreateForm(TDMCaixa, DMCaixa);
     ConectBd(DMCaixa);
     FSplash.ImgBarra.Width:=FSplash.ImgBarra.Width+11;
     FSplash.barra.Position:=FSplash.barra.Position+5;
     FSplash.ImgBarra.Update;
     FSplash.Update;

     //CRIA DMconta
     FSplash.LArquivos.Caption:='Carregando Contas';
     Application.CreateForm(TDMConta, DMConta);
     ConectBd(DMConta);
     FSplash.ImgBarra.Width:=FSplash.ImgBarra.Width+11;
     FSplash.barra.Position:=FSplash.barra.Position+5;
     FSplash.ImgBarra.Update;
     FSplash.Update;

     //CRIA DMEstoque
     FSplash.LArquivos.Caption:='Carregando Módulo de Estoque';
     Application.CreateForm(TDMEstoque, DMEstoque);
     ConectBd(DMEstoque);
     FSplash.ImgBarra.Width:=FSplash.ImgBarra.Width+17;
     FSplash.barra.Position:=FSplash.barra.Position+20;
     FSplash.ImgBarra.Update;
     FSplash.Update;

     //CRIA DMSERVICO
     FSplash.LArquivos.Caption:='Carregando Módulo de Serviços';
     Application.CreateForm(TDMSERV, DMSERV);
     ConectBd(DMSERV);

     FSplash.ImgBarra.Width:=FSplash.ImgBarra.Width+11;
     FSplash.barra.Position:=FSplash.barra.Position+10;
     FSplash.ImgBarra.Update;
     FSplash.Update;

     //CRIA DMEXPORTA
     FSplash.LArquivos.Caption:='Carregando Módulo de Exportações';
     Application.CreateForm(TDMExporta, DMExporta);
     //CRIA DMEntrada
     FSplash.LArquivos.Caption:='Carregando Módulos de Entradas';
     Application.CreateForm(TDMEntrada, DMEntrada);
     ConectBd(DMEntrada);



 	  FSplash.ImgBarra.Width:=FSplash.ImgBarra.Width+11;
     FSplash.barra.Position:=FSplash.barra.Position+10;
     FSplash.ImgBarra.Update;
     FSplash.Update;

     //CRIA DMSaida
     FSplash.LArquivos.Caption:='Carregando Módulo de Saídas';
     Application.CreateForm(TDMSaida, DMSaida);
     Application.CreateForm(TDMFISCAL, DMFiscal);
     ConectBd(DMSaida);

     ConectBd(DMFISCAL);
     FSplash.ImgBarra.Width:=FSplash.ImgBarra.Width+11;
     FSplash.barra.Position:=FSplash.barra.Position+10;
     FSplash.Update;
  END;
  //CRIA FGERENCIADOR
  FSplash.LArquivos.Caption:='Carregando Gerenciador do Sistema';
  Application.CreateForm(TFGERENCIADOR, FGERENCIADOR);
  FSplash.ImgBarra.Width:=FSplash.ImgBarra.Width+11;
  FSplash.ImgBarra.Update;
  FSplash.Update;
  FSplash.Release;
  FSplash:=nil;
  Application.Run;
end.
