program Macs;

{%ToDo 'Macs.todo'}

uses
  Forms,
  QGraphics,
  DIALOGS,
  DB,
  sysutils,
  Windows,
  UMenu in 'UMenu.pas' {FMenu},
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
  UPadraoRelatorio in 'Relat�rios\UPadraoRelatorio.pas' {FPadraoRelatorio},
  URelCaixa in 'Relat�rios\Financeiro\URelCaixa.pas' {FRelCaixa},
  URelPadraoPes in 'Relat�rios\Pessoa\URelPadraoPes.pas' {FRelPadraoPes},
  URelCtaPR in 'Financeiro\URelCtaPR.pas' {FRelCtaPR},
  FcadPadraRodaPe in 'FcadPadraRodaPe.pas' {FCadPadraoRodaPe},
  UMovBanco in 'Financeiro\UMovBanco.pas' {FMovBanco},
  URelPadraoped in 'Relat�rios\Vendas\URelPadraoped.pas' {FRelPadraoPed},
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
  UFchTec in 'ModVendas\UFchTec.pas' {FFchTecProd},
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
  UEstrutResult in 'Relat�rios\Financeiro\UEstrutResult.pas' {FRelEstrutResult},
  UOrcamento in 'ModVendas\UOrcamento.pas' {FOrcamento},
  UMensagem in 'UMensagem.pas' {FMensagem},
  UConsProduto in 'ModVendas\UConsProduto.pas' {FConsProduto},
  URelData in 'Relat�rios\URelData.pas' {FRelData},
  URelMovCaixa in 'Relat�rios\Financeiro\URelMovCaixa.pas' {FRelMovCaixa},
  UExpImp in 'UExpImp.pas' {FExpImp},
  ULogoff1 in 'ULogoff1.pas' {FLogoff1},
  UFiscal in 'ModVendas\UFiscal.pas' {FFiscal},
  UConfigNF in 'UConfigNF.pas' {FConfigNF},
  URelCtasSetor in 'Relat�rios\Financeiro\URelCtasSetor.pas' {FRelCtasSetor},
  URelGraficoLine in 'Relat�rios\Financeiro\URelGraficoLine.pas' {FRelGraficoLine},
  ULicita in 'ModVendas\ULicita.pas' {FLicita},
  URelGraficoLine03 in 'Relat�rios\Financeiro\URelGraficoLine03.pas' {FRelGraficoLine03},
  UBaixaMult in 'Financeiro\UBaixaMult.pas' {FBaixaMult},
  UFaturaPedidos in 'ModVendas\UFaturaPedidos.pas' {FFaturaPedidos},
  UnitDeclaracoes in '..\..\Kernel\Units\UnitDeclaracoes.pas',
  UResumoMov in 'Financeiro\UResumoMov.pas' {FResumoMov},
  UConfigEtqProd02 in 'ModVendas\UConfigEtqProd02.pas' {FConfigEtq02},
  URelMovBancoPeriodo in 'Relat�rios\Financeiro\URelMovBancoPeriodo.pas' {FRelMovBancoPeriodo},
  UConfigDup in 'Relat�rios\Financeiro\UConfigDup.pas' {FConfigDup},
  URelClienteData in 'Relat�rios\URelClienteData.pas' {FRelClienteData},
  UCtrlEntrega in 'ModVendas\UCtrlEntrega.pas' {FCtrlEntrega},
  UCtasReceberLote in 'Financeiro\UCtasReceberLote.pas' {FCtasReceberLote},
  UConfigCheq in 'Relat�rios\Financeiro\UConfigCheq.pas' {FConfCheque},
  UCadOferta in 'ModVendas\UCadOferta.pas' {FCadOferta},
  UDMExporta in 'UDMExporta.pas' {DMEXPORTA: TDataModule},
  UCadEquipe in 'ModPessoa\UCadEquipe.pas' {FCadEquipe},
  URelEquipamento in 'ModVendas\URelEquipamento.pas' {FRelEquipamento},
  URelEquipe in 'Relat�rios\Vendas\URelEquipe.pas' {FRelEquipe},
  UPrecoServ in 'ModVendas\UPrecoServ.pas' {FPrecoServ},
  UAtualizaValores in 'ModVendas\UAtualizaValores.pas' {FAtualizaValores},
  URelProdCli in 'Relat�rios\vendas\URelProdCli.pas' {FRelProdCli},
  URelatorioPreview in 'Relat�rios\URelatorioPreview.pas' {FrmPreview},
  URelatorioPrint in 'Relat�rios\URelatorioPrint.pas' {FrmPrint},
  UDMRel in 'Relat�rios\UDMRel.pas' {DMRel: TDataModule},
  URelEstoque in 'ModVendas\URelEstoque.pas' {FRelEstoque},
  URelComissaoProd in 'Relat�rios\estoque\URelComissaoProd.pas' {FRelComissaoProd},
  UValidacaoNFe in 'UValidacaoNFe.pas',
  TDadosNFe in 'TDadosNFe.pas',
  UOrdemMec in 'ModVendas\UOrdemMec.pas' {FOrdemMec},
  UInfoClienteEquip in 'ModPessoa\UInfoClienteEquip.pas' {FInfoClienteEquip: TFrame},
  URelMecanica in 'Relat�rios\URelMecanica.pas' {FRelMecanica},
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
  UEmailSuporte in 'UEmailSuporte.pas' {FEmailSuporte},
  UImpSintegra in 'UImpSintegra.pas' {FImpSintegra},
  UMzrNfe in 'UMzrNfe.pas' {FMzrNfe},
  UCadProduto in 'ModVendas\UCadProduto.pas' {FCadProduto},
  UNcm in 'ModVendas\UNcm.pas' {FCadNcm},
  UNovidades in 'UNovidades.pas' {FNovidades},
  UListaNfe in 'UListaNfe.pas' {FListaNfe},
  URelPeriodoFiscal in 'Relat�rios\URelPeriodoFiscal.pas' {FRelPeriodoFiscal},
  NFe_Util_2G_TLB in 'C:\Program Files\Borland\Delphi7\Imports\NFe_Util_2G_TLB.pas',
  URelLancContas in 'Relat�rios\financeiro\URelLancContas.pas' {FRelLancContas},
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
  URelChequeEmit in 'Relat�rios\URelChequeEmit.pas' {FRelChequeEmit},
  UAtualizaBanco in 'UAtualizaBanco.pas' {FAtualizaBanco},
  UDMAtualizaBanco in 'UDMAtualizaBanco.pas' {DMUpBanco: TDataModule},
  UFServico in 'UFServico.pas' {FfServico},
  NFSe_Util_TLB in 'C:\Arquivos de programas\Borland\Delphi7\Imports\NFSe_Util_TLB.pas',
  UMzrNFSe in 'UMzrNFSe.pas' {FMzrNFSe};

{$R *.RES}

VAR
 	 XVERSION: String;
    XVERSNOVIDADES: String;
    XDTVERSION: String;
    XDESCVERS: String;
	 XPATHEXE: String;
    XFLAG: Integer;//Controla conexao de banco se flag=1 o sistema ir� utilizar conexao sem necessidade da TRILL
begin
   Application.Initialize;
	//SETA FORMATO DE DATA PARA O SISTEMA
	Application.UpdateFormatSettings := false;
	ShortDateFormat := 'dd/mm/yyyy';
   
   //TESTE
   XVERSION:= '4.8.21_3';
   XVERSNOVIDADES:='4304';
   XDTVERSION:='01/12';
   XDESCVERS:='';

   Application.Title := 'ZION';
  	Application.CreateForm(TFMenu, FMenu);
  FSplash.LVERSAO.Caption:=XVERSION;
   FMenu.XVersaoNovidades:=XVERSNOVIDADES;
   FMenu.LVersao.Caption:=XVERSION;
   FMenu.LVersao.Hint:=XDTVERSION;
   FMenu.LVersao2.Caption:=XVERSION;
   FMenu.LVersao2.Hint:=XDTVERSION;
   FSplash.Show;
   FSplash.Update;

   //CRIA DMMACS
   FSplash.LArquivos.Caption:='Carregando Configura��es';
   Try
       Application.CreateForm(TDMMACS, DMMACS);
   Except
   On E:Exception do
   Begin
   	MessageDlg('Erro ao abrir DMMacs: '+E.Message, mtError, [mbOK], 0);
       Application.Terminate;
   end;
   End;

   // PASSO 1 DE CONEX�O
   //SE FOR ENCONTRADO UM DBMACS.GDB NO MESMO ENDERE�O DO EXEC O SIS SE CONECTAR� A ELES
   XFLAG:=0;

   XPATHEXE:=ExtractFilePath(Application.ExeName);
   IF FileExists(XPATHEXE+'DBMACS.GDB')
   Then Begin
		XFLAG:=1;
		FMenu.XTRILL:=XPATHEXE+'DBMACS.GDB';
   End;

  	//PASSO 2 DE CONEXAO
  	//SE FOR NECESS�RIO UTILIZAR - SE DA TRILL QUE DEVE ESTAR NO MESMO LOCAL DO EXE
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
			//Mostra todas as bases de dados cadastradas e v�lidas
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

   		//agora mostra somente os registros v�lidos onde foram encontrado bases
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

  //PASSO 03 - Se ainda n�o ocorreu uma conex�o, � configurado um acesso por xml
  If FMenu.XTRILL=''
  Then Begin
  		FMenu.XTRILL:=RecuperaCaminhoBancoXml;
  		XFLAG:=1;
  End;

  If (DMMACS.BASE.RecordCount<>0) or (XFLAG=1)
  Then Begin
     //CRIA DMMACS
     FSplash.LArquivos.Caption:='Carregando Configura��es';
     //reconecta macs
     ConectBd(DMMacs);
     //CRIA MENU e DMPessoa

     FSplash.LArquivos.Caption:='Carregando M�dulo de Pessoas';
     Application.CreateForm(TDMPESSOA, DMPESSOA);
     ConectBd(DMPessoa);
     FSplash.ImgBarra.Width:=FSplash.ImgBarra.Width+11;
     FSplash.ImgBarra.Update;
     FSplash.Update;
     //CRIA MDO
     Application.CreateForm(TMDO, MDO);
     ConectBd(MDO);

     //CRIA DMGEOGRAFIA
     FSplash.LArquivos.Caption:='Carregando M�dulo Geogr�fico';
     Application.CreateForm(TDMGeografia, DMGeografia);
     ConectBd(DMGeografia);
     FSplash.ImgBarra.Width:=FSplash.ImgBarra.Width+11;
     FSplash.ImgBarra.Update;
     FSplash.Update;

     //CRIA DMbancos
     FSplash.LArquivos.Caption:='Carregando M�dulo Financeiro';
     Application.CreateForm(TDMBanco, DMBanco);
     Application.CreateForm(TDMFINANC, DMFINANC);
     ConectBd(DMBANCO);
     ConectBd(DMFINANC);

     FSplash.ImgBarra.Width:=FSplash.ImgBarra.Width+11;
     FSplash.ImgBarra.Update;
     FSplash.Update;

     //CRIA DMcaixa
     FSplash.LArquivos.Caption:='Carregando M�dulo de Caixa';
     Application.CreateForm(TDMCaixa, DMCaixa);
     ConectBd(DMCaixa);
     FSplash.ImgBarra.Width:=FSplash.ImgBarra.Width+11;
     FSplash.ImgBarra.Update;
     FSplash.Update;

     //CRIA DMconta
     FSplash.LArquivos.Caption:='Carregando Contas';
     Application.CreateForm(TDMConta, DMConta);
     ConectBd(DMConta);
     FSplash.ImgBarra.Width:=FSplash.ImgBarra.Width+11;
     FSplash.ImgBarra.Update;
     FSplash.Update;

     //CRIA DMEstoque
     FSplash.LArquivos.Caption:='Carregando M�dulo de Estoque';
     Application.CreateForm(TDMEstoque, DMEstoque);
     ConectBd(DMEstoque);
     FSplash.ImgBarra.Width:=FSplash.ImgBarra.Width+17;
     FSplash.ImgBarra.Update;
     FSplash.Update;

     //CRIA DMSERVICO
     FSplash.LArquivos.Caption:='Carregando M�dulo de Servi�os';
     Application.CreateForm(TDMSERV, DMSERV);
     ConectBd(DMSERV);



     FSplash.ImgBarra.Width:=FSplash.ImgBarra.Width+11;
     FSplash.ImgBarra.Update;
     FSplash.Update;

     //CRIA DMEXPORTA
     FSplash.LArquivos.Caption:='Carregando M�dulo de Exporta��es';
     Application.CreateForm(TDMExporta, DMExporta);

     //CRIA DMEntrada
     FSplash.LArquivos.Caption:='Carregando M�dulos de Entradas';
     Application.CreateForm(TDMEntrada, DMEntrada);
     ConectBd(DMEntrada);

 	  FSplash.ImgBarra.Width:=FSplash.ImgBarra.Width+11;
     FSplash.ImgBarra.Update;
     FSplash.Update;

     //CRIA DMSaida
     FSplash.LArquivos.Caption:='Carregando M�dulo de Sa�das';
     Application.CreateForm(TDMSaida, DMSaida);
     Application.CreateForm(TDMFISCAL, DMFiscal);
     ConectBd(DMSaida);

     ConectBd(DMFISCAL);
     FSplash.ImgBarra.Width:=FSplash.ImgBarra.Width+11;
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
