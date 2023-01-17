Unit UFServico;

Interface

Uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, UPadrao, Buttons, ExtCtrls, StdCtrls, Grids, DBGrids, ComCtrls,
    Mask, ColorMaskEdit, EditFloat, IBQuery, ColorEditFloat, FashionPanel;

Type
    TFfServico = Class(TFPadrao)
        Panel1: TPanel;
        Shape35: TShape;
        Shape33: TShape;
        Shape31: TShape;
        Shape1: TShape;
        LNomePessoa: TLabel;
        Label1: TLabel;
        Shape2: TShape;
        LCpfCnpj: TLabel;
        Shape3: TShape;
        LMunicipio: TLabel;
        LUF: TLabel;
        Shape4: TShape;
        LInscEstadual: TLabel;
        Shape5: TShape;
        Label2: TLabel;
        Shape6: TShape;
        Label3: TLabel;
        Shape7: TShape;
        Label4: TLabel;
        Label6: TLabel;
        Label26: TLabel;
        Shape32: TShape;
        Label27: TLabel;
        Label30: TLabel;
        LTributacao: TLabel;
        Shape37: TShape;
        LPeriodoFiscal: TLabel;
        Shape39: TShape;
        LCodIbge: TLabel;
        PErro: TPanel;
        FashionPanel1: TFashionPanel;
        SpeedButton1: TSpeedButton;
        MErros: TMemo;
        EdNumeroFiscal: TColorEditFloat;
        BtnProcuraPessoa: TBitBtn;
        EdDtEmissao: TColorMaskEdit;
        EdDtsaidaEntrada: TColorMaskEdit;
        EdHoraSaida: TColorMaskEdit;
        EdTotalServicos: TColorEditFloat;
        EdTotalNotaFiscal: TColorEditFloat;
        BitBtn2: TBitBtn;
        BitBtn3: TBitBtn;
        BtnImprimir: TButton;
        BtnAlterarPeriodo: TBitBtn;
        PageControl1: TPageControl;
        TabSheet10: TTabSheet;
        DbGridServicos: TDBGrid;
        CbRetIss: TComboBox;
        Shape13: TShape;
        Shape14: TShape;
        EdVlrOutrasDesp: TShape;
        Label11: TLabel;
        Label5: TLabel;
        Label7: TLabel;
        EdCofins: TColorEditFloat;
        EdISS: TColorEditFloat;
        EdPis: TColorEditFloat;
        PFalha: TPanel;
        ShErro: TShape;
        EdErro: TEdit;
        PServico: TPanel;
        FashionPanel2: TFashionPanel;
        SpeedButton2: TSpeedButton;
        DBGrid1: TDBGrid;
        Procedure FormActivate(Sender: TObject);
        Procedure BitBtn3Click(Sender: TObject);
        Procedure DbGridServicosDblClick(Sender: TObject);
        Procedure DBGrid1DblClick(Sender: TObject);
        Procedure EdErroChange(Sender: TObject);
    private
    { Private declarations }
    //Paulo 13/04/2012: Faz todas as validações necessárias
        Function Validacao: Boolean;
    //Paulo 13/04/2012: Função para validar dados fiscais da empresa
        Function ValidaDadosEmpresa: boolean;
    //Função Utilizada para registrar no memo de falhas os erros e falhas na validação
        Function RegistraFalha(Texto: String): Boolean;
    //Função para inicializar variáveis
        Function InicializaVar: Boolean;
    //Função utilizada para devolver o proximo numero da nota fiscal de saida que seja valido
        Function NfProxnumero: Integer;
    //Paulo 15/04/2012: Função utilizada para devolver o proximo numero da nota fiscal de saida que seja valido
        Function NfProxnumeroNF: Integer;
    //Paulo 14/04/2012: Função utilizada para escrever Pessoa (Cliente)
        Function EscrevePessoa: Boolean;
    //Paulo 15/04/2012: Função para validar os serviços
        Function ValidaDespadic: Boolean;
    //Paulo 15/04/2012: Função utilizada para escrever todos os serviços da nota
        Function EscreveServicos: Boolean;
    //Paulo 16/04/2012: Função utilizada para calcular os valores da nota
        Function EscreveValores: Boolean;
    //Função utilizada para localizar o codigo (chave primaria) do periodo para lançar os documentos fiscais
        Function BuscaPeriodoFiscal: Boolean;
    public
    { Public declarations }
    End;

Var
    FfServico: TFfServico;
    XCodCliente, XCod_Pedido: Integer;
    //Variaveis para armazenar temporariamente o nome das tabelas para uso generico
    XTabItemProd, XTabFiscal: TIbQuery;
    XValidado: Boolean;
    XDtIniPeriodo, XDtFimPeriodo: TDate;
    XNomePeriodoFiscal: String;
    XCod_Perido_Fiscal: Integer;
Implementation

Uses UDMMacs, Alxor32, UMenu, UDmServ, UDMCaixa, UDMEstoque, DB, UMzrNfe,
    UMzrNFSe;

{$R *.dfm}


//Paulo 13/04/2012: Função para validar dados fiscais da empresa

Function TFfServico.ValidaDadosEmpresa: boolean;
Begin
    Result := True;
    DMMACS.Transaction.CommitRetaining;
    //FILTRA EMPRESA PARA INICIALIZAR VALORES, EM NENHUM MOMENTO MAIS DEVE SER FILTRADA A LOJA DENTRO DO FISCAL
    If FiltraTabela(DMMACS.TEmpresa, 'EMPRESA', 'COD_EMPRESA', FMenu.LCODEMPRESA.Caption, '') = False
    Then Begin
        RegistraFalha('  Empresa não cadastrada no sistema');
        Result := False;
        Exit;
    End;
    //FILTRA LOJA PARA INICIALIZAR VALORES, EM NENHUM MOMENTO MAIS DEVE SER FILTRADA A LOJA DENTRO DO FISCAL
    If FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '') = False
    Then Begin
        RegistraFalha('Loja não cadastrada no sistema');
        Result := False;
        Exit;
    End;
    //VERIFICA O TIPO DO ENQUADRAMENTO DA EMPRESA
    If DMMACS.TEmpresa.FieldByName('TIPOEMPRESA').AsString = ''
    Then Begin
        RegistraFalha('  Empresa: Tipo da empresa não cadastrado');
        Result := false;
    End
    Else Begin
        //VERIFICA SE A EMPRESA CADASTRADA É OPTANDE DO SIMPLES
        If DMMACS.TEmpresa.FieldByName('TIPOEMPRESANF').AsString = 'SIMPLES' Then
            Fmenu.XTributaEmpresa := 'SIMPLES'
        Else
            Fmenu.XTributaEmpresa := 'NORMAL';


        // - 30/03/2009: se empresa for industria
        If DMMACS.TEmpresa.FieldByName('INDUSTRIA').AsString = '1' Then
           //XEmitIndustria := True
        Else
           //XEmitIndustria := False;
    End;
End;

//Função Utilizada para registrar no memo de falhas os erros e falhas na validação

Function TFfServico.RegistraFalha(Texto: String): Boolean;
Begin
    Result := True;
    Try
        PFalha.Visible := True;
        PFalha.BringToFront;
        EdErro.Visible := True;
        ShErro.Visible := True;
        EdErro.Text := 'Falha Crítica na validação. Nota Fiscal inválida. [Para detalhes clique aqui...]';
        MErros.Lines.Add(Texto);
    Except
        Result := False;
    End;
End;

//Função para inicializar variáveis

Function TFfServico.InicializaVar: Boolean;
Begin
    XCod_Pedido := DMServ.WOrdem.FieldByName('cod_ordem').AsInteger;
    //DETERMINA O PROXIMO NUMERO FISCAL A SER IMPRESSO
    EdNumeroFiscal.Text := IntToStr(NfProxnumero);
    EdNumeroFiscal.Enabled := True;
    XTabItemProd := DMServ.TPOrd;
    XTabFiscal := DMServ.TFiscOrd;
    //Jônatas 10/10/2013 - Incluído busca das datas para os edits
    DMMACS.TALX.Close;
    DMMACS.TALX.SQL.Clear;
    DMMACS.TALX.SQL.Add('  select docfisord.dtentsaid, docfisord.dtemissao from docfisord where docfisord.cod_ordem=:codigo ');
    DMMACS.TALX.ParamByName('codigo').AsInteger := XCod_Pedido;
    DMMACS.TALX.Open;
    EdDtEmissao.Text := FormatDateTime('dd/mm/yyyy',DMMACS.TALX.FieldByName('dtemissao').AsDateTime);
    EdDtsaidaEntrada.Text := FormatDateTime('dd/mm/yyyy',DMMACS.TALX.FieldByName('dtentsaid').AsDateTime);
    PErro.Visible := False;
    PErro.SendToBack;
    If BuscaPeriodoFiscal = False Then
        XValidado := False;

End;

//Função utilizada para devolver o proximo numero da nota fiscal de saida que seja valido

Function TFfServico.NfProxnumero: Integer;
Begin
    DMMACS.TALX.Close;
    DMMACS.TALX.SQL.Clear;
    DMMACS.TALX.SQL.Add('  select * from docfisord where docfisord.cod_ordem=:codigo ');
    DMMACS.TALX.ParamByName('codigo').AsInteger := XCod_Pedido;
    DMMACS.TALX.Open;
    If DMMACS.TALX.FieldByName('numdocfis').IsNull Then 
        Result := NfProxnumeroNF //Caso o documento ainda não tenha numeração o sistema busca o próximo
    Else
        Result := DMMACS.TALX.FieldByName('numdocfis').AsInteger; //Respassa o numero atual;
End;

//Paulo 15/04/2012: Função utilizada para devolver o proximo numero da nota fiscal de saida que seja valido

Function TFfServico.NfProxnumeroNF: Integer;
Var
    XMaiorNumOS: Integer;
Begin
    Try
        Result := -1; //Posiciona para Nf numero 01

        XMaiorNumOS := 0;

        DMMACS.TALX.Close;
        DMMACS.TALX.SQL.Clear;
        If ((DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NF') Or (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'ECF')) Then
            //Nota fiscal normal
            DMMACS.TALX.SQL.Add('  select max(docfisord.numdocfisint) as numero from docfisord where (docfisord.nfestatus is null) and (docfisord.tipodocfis=''2'') ');
        If (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe') Then
            //Nota fiscal eletronica
            DMMACS.TALX.SQL.Add(' select max(docfisord.numdocfisint) as numero from docfisord  where (docfisord.tipodocfis=''3'') and ((docfisord.nfestatus=''1'') or (docfisord.nfestatus=''3'')  or (docfisord.nfestatus=''4''))');

        DMMACS.TALX.Open;
        If DMMACS.TALX.FieldByName('numero').AsString <> '' Then
            XMaiorNumOS := DMMACS.TALX.FieldByName('numero').AsInteger
        Else
            XMaiorNumOS := 0;

        Result := XMaiorNumOS;

        //VALIDA SEQUENCIA DE NOTAS
        If Result > 1
        Then Begin
            //ORDEM DE SERVIÇOS
            DMMACS.TALX.Close;
            DMMACS.TALX.SQL.Clear;
            If ((DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NF') Or (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'ECF')) Then
                DMMACS.TALX.SQL.Add(' select docfisord.numdocfisint as numero from docfisord where (docfisord.numdocfisint=:numero) and (docfisord.nfestatus is null) and (docfisord.tipodocfis=''2'')');
            If (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe') Then
                DMMACS.TALX.SQL.Add(' select docfisord.numdocfisint as numero from docfisord where (docfisord.numdocfisint=:numero) and (docfisord.tipodocfis=''3'') ');
            DMMACS.TALX.ParamByName('numero').AsInteger := Result;
            DMMACS.TALX.Open;
        End;
        Result := Result + 1; //Incrementa numeração
    Except
        Result := 1;
    End;
End;

//Paulo 14/04/2012: Função utilizada para escrever Pessoa (Cliente)

Function TFfServico.EscrevePessoa: Boolean;
Begin
    Result := True;
    Try
        //SELECIONA O CLIENTE OU FORNECEDOR DE ACORDO COM O CODIGO DA PESSOA
        DMMACS.TALX.Close;
        DMMACS.TALX.SQL.Clear;
        DMMACS.TALX.SQL.Add(' Select vwcliente.nome, pessoaj.cod_pessoaj, pessoaj.razao_social, vwcliente.cpfcnpj, cliente.CONTRIBICMS, cliente.SUFRAMA, pessoaj.INDUSTRIA, vwcliente.cidade, vwcidade.uf, cidade.cod_ibge,pessoaj.insc_est from vwcliente ');
        DMMACS.TALX.SQL.Add(' left Join pessoa on vwcliente.cod_pessoa = pessoa.cod_pessoa ');
        DMMACS.TALX.SQL.Add(' Left Join pessoaj on pessoa.cod_pessoa=pessoaj.cod_pessoa ');
        DMMACS.TALX.SQL.Add(' Left Join cliente on vwcliente.cod_cliente=cliente.cod_cliente ');
        DMMACS.TALX.SQL.Add(' left join vwcidade ON vwcliente.cod_cidade = vwcidade.cod_cidade');
        DMMACS.TALX.SQL.Add(' left join cidade ON vwcliente.cod_cidade = cidade.cod_cidade');
        DMMACS.TALX.SQL.Add(' Where vwcliente.cod_cliente=:codigo ');
        DMMACS.TALX.ParamByName('codigo').AsInteger := DMServ.WOrdem.FieldByName('COD_CLIENTE').AsInteger;
        DMMACS.TALX.Open;

        XCodCliente := DMServ.WOrdem.FieldByName('COD_CLIENTE').AsInteger;
        If DMMACS.TALX.IsEmpty
        Then Begin
            //Se não encontrou o cliente/fornecedor, passar informações em branco
            LNomePessoa.Caption := 'Cliente não selecionado';
            RegistraFalha('  Cabeçalho: A Nota fiscal precisa de um cliente selecionado');

            LCpfCnpj.Caption := '';
            LUF.Caption := '';
            LMunicipio.Caption := '';
            LInscEstadual.Caption := '';
            LCodIbge.Caption := '';
            Result := False;
        End
        Else Begin
            //VERIFICA SE O CLIENTE/FORNECEDOR É PESSOA FISICA OU PESSOA JURIDICO SE O COD_PESSOAJ RETORNAR NULO SIGNIFICA QUE É PESSOA FISICA
            If DMMACS.TALX.FieldByName('cod_pessoaj').AsInteger <> 0
            Then Begin
                //identificado como pessoa jurídica
                If DMMACS.TALX.FieldByName('razao_social').AsString = ''
                Then Begin
                    //se não foi encontrado razão social para pessoal invalída sistuação
                    LNomePessoa.Caption := 'Razão social em branco';
                    Result := False;
                    RegistraFalha('  Cabeçalho: O Cliente foi identificado como pessoa Jurídica, Porém o mesmo não possui razão social');
                End
                Else Begin
                    //se encontrou pessoa juridica com razão social
                    LNomePessoa.Caption := 'Fantasia: ' + DMMACS.TALX.FieldByName('nome').AsString + #13#10;
                    LNomePessoa.Caption := LNomePessoa.Caption + 'Razão Social: ' + DMMACS.TALX.FieldByName('razao_social').AsString;
                End;
            End
            Else Begin
                If DMMACS.TALX.FieldByName('NOME').AsString = ''
                Then Begin
                    //se não foi encontrado razão social para pessoal invalída sistuação
                    LNomePessoa.Caption := 'Cliente sem nome';
                    Result := False;
                    RegistraFalha('  Cabeçalho: O Cliente foi apresentado sem nome');
                End
                Else Begin
                    LNomePessoa.Caption := DMMACS.TALX.FieldByName('NOME').AsString;
                End;
            End;

            If (Valida_InscEstadual(DMMACS.TALX.FieldByName('insc_est').AsString, DMMACS.TALX.FieldByName('UF').AsString) = False) And (DMMACS.TALX.FieldByName('insc_est').AsString <> '') And (UpperCase(DMMACS.TALX.FieldByName('insc_est').AsString) <> 'ISENTO')
            Then Begin
                LInscEstadual.Caption := 'Insc. Estadual Inválida';
                Result := False;
                If DMMACS.TALX.FieldByName('UF').AsString <> '' Then
                    RegistraFalha('  Cabeçalho: Inscrição Estadual inválida. (A I.E.Self deve ser válida ou em branco)');
            End
            Else Begin
                If DMMACS.TALX.FieldByName('insc_est').AsString = '' Then
                    LInscEstadual.Caption := 'ISENTO'
                Else
                    LInscEstadual.Caption := DMMACS.TALX.FieldByName('insc_est').AsString;
            End;



            If DMMACS.TALX.FieldByName('UF').AsString = ''
            Then Begin
                LUF.Caption := 'UF não selecionado';
                Result := False;
                RegistraFalha('  Cabeçalho: Selecione a Cidade/Estado para a pessoa');
            End
            Else Begin
                LUF.Caption := DMMACS.TALX.FieldByName('UF').AsString;
            End;
            If DMMACS.TALX.FieldByName('CIDADE').AsString = ''
            Then Begin
                LMunicipio.Caption := 'Cidade não selecionada';
                Result := False;
                RegistraFalha('  Cabeçalho: Selecione a Cidade/Estado para a pessoa');
            End
            Else Begin
                LMunicipio.Caption := DMMACS.TALX.FieldByName('CIDADE').AsString;
            End;

            If (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe')
            Then Begin
                If DMMACS.TALX.FieldByName('COD_IBGE').AsString = ''
                Then Begin
                    LCodIbge.Caption := 'IBGE Inv.';
                    Result := False;
                    RegistraFalha('  Cabeçalho: Selecione o código IBGE para a cidade do destino');
                End
                Else Begin
                    LCodIbge.Caption := DMMACS.TALX.FieldByName('COD_IBGE').AsString;
                End;
            End
            Else Begin
                LCodIbge.Caption := '';
            End;
            If DMMACS.TALX.FieldByName('cpfcnpj').AsString = ''
            Then Begin
                LCpfCnpj.Caption := 'CPF/CNPJ Inválido';
                Result := False;
                RegistraFalha('  Cabeçalho: CPF/CNPJ Inválido, verifique no cadastro');
            End
            Else//Jônatas 10/10/2013 - O campo CNPJ não estava sendo impresso, Else incluído
                LCpfCnpj.Caption  := DMMACS.TALX.FieldByName('cpfcnpj').AsString;
        End;
    Except
        Result := False;
    End;
End;

//Paulo 15/04/2012: Função utilizada para escrever todos os serviços da nota

Function TFfServico.EscreveServicos: Boolean;
Begin
    Result := True;
    Try
        DMESTOQUE.TSlave.Close;
        DMESTOQUE.TSlave.SQL.Clear;
        DMESTOQUE.TSlave.SQL.Add('Select despadic.COD_DESPADIC, despadic.despesa as DISCRIMINACAO, despadic.vlrtotfin as TOTAL, despadic.vlrtotfin as BASE,');
        DMESTOQUE.TSlave.SQL.Add('SERVICO_NFSE.num_servico  from despadic');
        DMESTOQUE.TSlave.SQL.Add('left join SERVICO_NFSE on despadic.cod_servico = SERVICO_NFSE.COD_SERVICO');
        DMESTOQUE.TSlave.SQL.Add('Where (despadic.gerador=' + #39 + 'ORDEM' + #39 + ') AND (despadic.cod_gerador=:COD_GERADOR)');
        DMESTOQUE.TSlave.ParamByName('COD_GERADOR').AsInteger := XCod_Pedido;
        DMESTOQUE.TSlave.Open;

        DbGridServicos.DataSource := DMESTOQUE.DSSlave;
    Except
        RegistraFalha('   - Erro ao selecionar os itens de serviços');
        Result := False;
    End;
End;

//Paulo 13/04/2012: Função para validar os serviços

Function TFfServico.ValidaDespadic: Boolean;
Begin
    Result := True;
    Try
       //se em empresa estiver setado o ISS imprimir campos  relacionados
        If (DMMACS.TEmpresa.FieldByName('ISSQN').AsCurrency <= 0)
            Then Begin
            RegistraFalha('  Empresa não configurada com aliquota de ISS');
            Result := False;
            Exit;
        End;

        Try
            DMESTOQUE.Alx.Close;
            DMESTOQUE.Alx.SQL.Clear;
            DMESTOQUE.Alx.SQL.Add('update despadic set despadic.cfop=:cfop, despadic.ALIQISSQN=:ALIQ');
            DMESTOQUE.Alx.SQL.Add('Where (despadic.gerador=' + #39 + 'ORDEM' + #39 + ') AND (despadic.cod_gerador=:COD_GERADOR)');
            DMESTOQUE.Alx.ParamByName('COD_GERADOR').AsInteger := XCod_Pedido;
            DMESTOQUE.Alx.ParamByName('ALIQ').AsCurrency := DMMACS.TEmpresa.FieldByName('ISSQN').AsCurrency;
            DMESTOQUE.Alx.ExecSQL;
            DMESTOQUE.TransacEstoque.CommitRetaining;
           //XAliqIss:=DMMACS.TEmpresa.FieldByName('ISSQN').AsCurrency;

           //Paulo 16/04/2012: escreve os serviços
            If EscreveServicos = False Then
                Result := False;

        Except
            DMESTOQUE.TransacEstoque.RollbackRetaining;
            Result := False;
            RegistraFalha('  Ocorreu falha ao atualizar Aliquotas dos serviços');
        End;
    Except
        RegistraFalha('  - Erro ao validar serviços');
        Result := False;
    End;
End;

//Paulo 16/04/2012: Função utilizada para calcular os valores da nota

Function TFfServico.EscreveValores: Boolean;
Begin
    Result := True;
    Try
        DMESTOQUE.TSlaveServ.Close;
        DMESTOQUE.TSlaveServ.SQL.Clear;
        DMESTOQUE.TSlaveServ.SQL.Add('Select SUM(despadic.vlrtotfin) as TOTAL');
        DMESTOQUE.TSlaveServ.SQL.Add('from despadic');
        DMESTOQUE.TSlaveServ.SQL.Add('Where (despadic.gerador=' + #39 + 'ORDEM' + #39 + ') AND (despadic.cod_gerador=:COD_GERADOR)');
        DMESTOQUE.TSlaveServ.ParamByName('COD_GERADOR').AsInteger := XCod_Pedido;
        DMESTOQUE.TSlaveServ.Open;

        EdTotalServicos.ValueNumeric := DMESTOQUE.TSlaveServ.FieldByName('TOTAL').AsCurrency;
        EdTotalNotaFiscal.ValueNumeric := DMESTOQUE.TSlaveServ.FieldByName('TOTAL').AsCurrency;
    Except
        RegistraFalha('   - Erro ao selecionar os itens de serviços');
        Result := False;
    End;
End;

//Função utilizada para localizar o codigo (chave primaria) do periodo para lançar os documentos fiscais

Function TFfServico.BuscaPeriodoFiscal: Boolean;
Begin
    Result := True;
    LPeriodoFiscal.Caption := 'Período Fiscal Não Definido';
    XNomePeriodoFiscal := '';
    Try
  //Sql para localizar todos os periodos fiscais em aberto
        DMMACS.TPeriodoFiscal.Close;
        DMMACS.TPeriodoFiscal.SQL.Clear;
        DMMACS.TPeriodoFiscal.SQL.Add(' Select * from periodofiscal where (periodofiscal.fechado=''N'')');
        DMMACS.TPeriodoFiscal.Open;
        DMMACS.TPeriodoFiscal.Last;
        If DMMACS.TPeriodoFiscal.RecordCount > 1
        Then Begin
            LPeriodoFiscal.Caption := 'Período Fiscal Não Definido';
            XNomePeriodoFiscal := '';
            Result := False;
            RegistraFalha('   Período Fiscal: Foi encontrado mais de um período fiscal em aberto');
        End
        Else Begin
            If Not DMMACS.TPeriodoFiscal.IsEmpty
            Then Begin
                XCod_Perido_Fiscal := DMMACS.TPeriodoFiscal.FieldByName('COD_PERIODOFISCAL').AsInteger;
                LPeriodoFiscal.Caption := 'Período Fiscal: ' + DMMACS.TPeriodoFiscal.FieldByName('DESCRICAO').AsString;
                XNomePeriodoFiscal := DMMACS.TPeriodoFiscal.FieldByName('DESCRICAO').AsString;
               //Repassa os Intervalos de data
                Try
                    XDtIniPeriodo := DMMACS.TPeriodoFiscal.FieldByName('DTINICIAL').AsDateTime;
                    XDtFimPeriodo := DMMACS.TPeriodoFiscal.FieldByName('DTFINAL').AsDateTime;
                Except
                    Result := False;
                    RegistraFalha('   Período Fiscal: Falha ao identificar o intervalo de datas no período, procure suporte técnico');
                End;
            End
            Else Begin
                LPeriodoFiscal.Caption := 'Período Fiscal Não Definido';
                XNomePeriodoFiscal := '';
                Result := False;
                RegistraFalha('   Período Fiscal: Não foi encontrado período fiscal, inicialize o período fiscal');
            End;
        End;
    Except
        Result := False;
        RegistraFalha('   Período Fiscal: Falha ao inserir a nota fiscal dentro de um período fiscal. Verifique suporte técnico');
    End;
End;

//Paulo 13/04/2012: Faz todas as validações necessárias

Function TFfServico.Validacao: Boolean;
Begin
    Result := True;
 //verifica dados da empresa
    If ValidaDadosEmpresa = False Then
        XValidado := False;

    If InicializaVar = False Then
        XValidado := False;

    If EscrevePessoa = False Then
        XValidado := False;

    If ValidaDespadic = False Then
        XValidado := False;

    If EscreveValores = False Then
        XValidado := False;

End;


Procedure TFfServico.FormActivate(Sender: TObject);
Begin
    Inherited;
    XValidado := True;
    PServico.Visible := False;
    PServico.SendToBack;
    Validacao;
End;

Procedure TFfServico.BitBtn3Click(Sender: TObject);
Begin
    Inherited;
    If XValidado = True
    Then Begin
        Try
            //Paulo 17/04/2012: Salva dados no docfisord
            DMServ.TFiscOrd.Close;
            DMServ.TFiscOrd.SQL.Clear;
            DMServ.TFiscOrd.SQL.Add('  Select * from docfisord where docfisord.cod_ordem=:Codigo ');
            DMServ.TFiscOrd.ParamByName('Codigo').AsInteger := XCod_Pedido;
            DMServ.TFiscOrd.Open;
            If DMServ.TFiscOrd.IsEmpty Then
                InserReg(DMServ.TFiscOrd, 'docfisord', 'cod_docfiscord') //INSERE NOVO DOCUMENTO FISCAL
            Else
                DMServ.TFiscOrd.Edit;

            XTabFiscal.FieldByName('numdocfis').AsString := EdNumeroFiscal.Text;
            XTabFiscal.FieldByName('SERIE').AsString := '1';
            XTabFiscal.FieldByName('NUMDOCANT').AsString := 'NFSE';
            XTabFiscal.FieldByName('numdocfisint').AsString := EdNumeroFiscal.Text;
            XTabFiscal.FieldByName('COD_ORDEM').AsInteger := XCod_Pedido;
            //XTabFiscal.FieldByName('dadosad01').AsString:=RemoveQuebraLinha(TiraAcentos(MDadosAdicionais.Text));
            XTabFiscal.FieldByName('VLRTOTSERV').AsCurrency := EdTotalServicos.ValueNumeric;
            XTabFiscal.FieldByName('VLRTOTISS').AsCurrency := EdISS.ValueNumeric;
            XTabFiscal.FieldByName('VLRTOTDOCNF').AsCurrency := EdTotalNotaFiscal.ValueNumeric;
            XTabFiscal.FieldByName('COD_PERIODOFISCAL').AsInteger := XCod_Perido_Fiscal;
            XTabFiscal.FieldByName('DTEMISSAO').AsString := EdDtEmissao.Text;
            XTabFiscal.FieldByName('DTENTSAID').AsString := EdDtsaidaEntrada.Text;
            XTabFiscal.FieldByName('HORASAID').AsString := EdHoraSaida.Text;
            XTabFiscal.Post;
            DMServ.IBT.CommitRetaining;
        Except

            DMServ.IBT.RollbackRetaining;

        End;
    End;
    FiltraTabela(DMServ.TFiscOrd, 'docfisord', 'cod_ordem', IntToStr(XSetCodigoPedido), '');

    DMServ.TFiscOrd.Close;
    DMServ.TFiscOrd.SQL.Clear;
    DMServ.TFiscOrd.SQL.Add('Select * from docfisord where docfisord.cod_ordem=:Codigo and docfisord.NUMDOCANT=:DOC');
    DMServ.TFiscOrd.ParamByName('Codigo').AsInteger := XCod_Pedido;
    DMServ.TFiscOrd.ParamByName('DOC').AsString := 'NFSE';
    DMServ.TFiscOrd.Open;

    FMzrNFSe := TFMzrNFSe.Create(FMzrNFSe); //cria o formulario de transmissão da Nfe
    XSetCodigoDestinatario := XCodCliente;
    XSetCodigoPedido := XCod_Pedido;
    //FMzrNFSe.Inicia(StrToInt(EdNumeroFiscal.Text), XCodCliente, XCod_Pedido, LPeriodoFiscal.Caption);
    FMzrNFSe.ShowModal


End;

Procedure TFfServico.DbGridServicosDblClick(Sender: TObject);
Begin
    Inherited;
      //Paulo 20/04/2012: Filtra os serviços que a empresa utiliza
    DMESTOQUE.TSlaveServ.Close;
    DMESTOQUE.TSlaveServ.SQL.Clear;
    DMESTOQUE.TSlaveServ.SQL.Add('Select * from SERVICO_NFSE where SERVICO_NFSE.ATIVO=:ATIVO ');
    DMESTOQUE.TSlaveServ.ParamByName('ATIVO').AsString := '1';
    DMESTOQUE.TSlaveServ.Open;

    PServico.Visible := True;
    PServico.BringToFront;
End;

Procedure TFfServico.DBGrid1DblClick(Sender: TObject);
Begin
    Inherited;
    DMESTOQUE.Alx.Close;
    DMESTOQUE.Alx.SQL.Clear;
    DMESTOQUE.Alx.SQL.Add('update despadic set despadic.COD_SERVICO=:SERVICO');
    DMESTOQUE.Alx.SQL.Add('Where(despadic.COD_DESPADIC=:COD_GERADOR)');
    DMESTOQUE.Alx.ParamByName('COD_GERADOR').AsInteger := DMESTOQUE.TSlave.FieldByName('COD_DESPADIC').AsInteger;
    DMESTOQUE.Alx.ParamByName('SERVICO').AsInteger := DMESTOQUE.TSlaveServ.FieldByName('COD_SERVICO').AsInteger;
    DMESTOQUE.Alx.ExecSQL;
    DMESTOQUE.TransacEstoque.CommitRetaining;

    DMESTOQUE.TSlave.Close;
    DMESTOQUE.TSlave.SQL.Clear;
    DMESTOQUE.TSlave.SQL.Add('Select despadic.despesa as DISCRIMINACAO, despadic.vlrtotfin as TOTAL, despadic.vlrtotfin as BASE,');
    DMESTOQUE.TSlave.SQL.Add('SERVICO_NFSE.num_servico  from despadic');
    DMESTOQUE.TSlave.SQL.Add('left join SERVICO_NFSE on despadic.cod_servico = SERVICO_NFSE.COD_SERVICO');
    DMESTOQUE.TSlave.SQL.Add('Where (despadic.gerador=' + #39 + 'ORDEM' + #39 + ') AND (despadic.cod_gerador=:COD_GERADOR)');
    DMESTOQUE.TSlave.ParamByName('COD_GERADOR').AsInteger := XCod_Pedido;
    DMESTOQUE.TSlave.Open;

    PServico.Visible := False;
    PServico.SendToBack;
End;

Procedure TFfServico.EdErroChange(Sender: TObject);
Begin
    Inherited;
    PErro.Visible := True;
    PErro.BringToFront;
End;

End.

