Unit USped;

Interface

Uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, UPadrao, Buttons, ExtCtrls, StdCtrls, Alxor32, ComCtrls, Mask,
    DBCtrls, DBColorEdit, AlxMessage, FashionPanel, ShellApi, Grids, DBGrids;

Type
    TFSped = Class(TFPadrao)
        btnGerarSped: TButton;
        PPrincipal: TPanel;
        PCSped: TPageControl;
        TabSheet1: TTabSheet;
        GroupBox2: TGroupBox;
        cbPeriodoFiscal: TDBLookupComboBox;
        DBEdit1: TDBEdit;
        DBEdit2: TDBEdit;
        GroupBox1: TGroupBox;
        cbFinalidade: TComboBox;
        cbLeiaute: TComboBox;
        Label1: TLabel;
        btSair: TButton;
        GroupBox3: TGroupBox;
        Label2: TLabel;
        Label3: TLabel;
        Label5: TLabel;
        Label6: TLabel;
        Label7: TLabel;
        Label8: TLabel;
        Label4: TLabel;
        Label9: TLabel;
        Label14: TLabel;
        Label15: TLabel;
        txtRazaoSocial: TDBColorEdit;
        txtEndereco: TDBColorEdit;
        txtBairro: TDBColorEdit;
        txtCidade: TDBColorEdit;
        txtCEP: TDBColorEdit;
        txtTelefone: TDBColorEdit;
        txtCNPJ: TDBColorEdit;
        txtIE: TDBColorEdit;
        txtNumero: TDBColorEdit;
        DBColorEdit3: TDBColorEdit;
        txtEstado: TDBColorEdit;
        Label10: TLabel;
        GroupBox4: TGroupBox;
        cbPerfil: TComboBox;
        GroupBox5: TGroupBox;
        cbIndicadorTipoAtividade: TComboBox;
        GroupBox7: TGroupBox;
        cbIndicadorMovimento: TComboBox;
        TabSheet2: TTabSheet;
        GroupBox8: TGroupBox;
        PFalha: TPanel;
        ShErro: TShape;
        EdErro: TEdit;
        PErro: TPanel;
        FashionPanel1: TFashionPanel;
        SpeedButton2: TSpeedButton;
        MErros: TMemo;
        PageControl1: TPageControl;
        TabSheet3: TTabSheet;
        TabSheet4: TTabSheet;
        GroupBox9: TGroupBox;
        Label12: TLabel;
        edNome: TEdit;
        Label25: TLabel;
        edCpf: TEdit;
        edCnpj: TEdit;
        Label26: TLabel;
        edCrc: TEdit;
        Label27: TLabel;
        Label28: TLabel;
        edCep: TEdit;
        edEndereco: TEdit;
        Label29: TLabel;
        Label30: TLabel;
        edNumero: TEdit;
        edBairro: TEdit;
        Label31: TLabel;
        edComplemento: TEdit;
        Label32: TLabel;
        edFone: TEdit;
        Label33: TLabel;
        Label34: TLabel;
        edEmail: TEdit;
        Label35: TLabel;
        edFax: TEdit;
        GroupBox10: TGroupBox;
        BtnGravar: TBitBtn;
        edCidade: TEdit;
        BitBtn1: TBitBtn;
        Label13: TLabel;
        Label16: TLabel;
        PDetalhes: TPanel;
        Label17: TLabel;
        Label18: TLabel;
        Label19: TLabel;
        Label20: TLabel;
        ProgressBar1: TProgressBar;
        RichEdit1a: TRichEdit;
        RichEdit1: TMemo;
        btAbrir: TButton;
        btVoltar: TButton;
        GroupBox12: TGroupBox;
        cbIndicadorMovimentoC: TComboBox;
        Label21: TLabel;
        Label11: TLabel;
        GroupBox6: TGroupBox;
        Label24: TLabel;
        cbIndicadorMovimento1: TComboBox;
        cbInventarioEstoque: TCheckBox;
        GroupBox11: TGroupBox;
        edSuframa: TEdit;
        GroupBox13: TGroupBox;
        cbRegistroH990: TCheckBox;
        cbRegistroH010: TCheckBox;
        cbRegistroH005: TCheckBox;
        cbRegistroH001: TCheckBox;
        GroupBox14: TGroupBox;
        cbRegistroC001: TCheckBox;
        cbRegistroC100: TCheckBox;
        cbRegistroC110: TCheckBox;
        cbRegistroC160: TCheckBox;
        cbRegistroC170: TCheckBox;
        cbRegistroC179: TCheckBox;
        cbRegistroC190: TCheckBox;
        cbRegistroC990: TCheckBox;
        Label22: TLabel;
        GroupBox15: TGroupBox;
        cbRegistro0000: TCheckBox;
        cbRegistro0001: TCheckBox;
        cbRegistro0005: TCheckBox;
        cbRegistro0015: TCheckBox;
        cbRegistro0100: TCheckBox;
        cbRegistro0150: TCheckBox;
        cbRegistro0190: TCheckBox;
        cbRegistro0200: TCheckBox;
        cbRegistro0450: TCheckBox;
        cbRegistro0990: TCheckBox;
        GroupBox16: TGroupBox;
        cbRegistro1990: TCheckBox;
        cbRegistro1010: TCheckBox;
        cbRegistro1001: TCheckBox;
        Label23: TLabel;
        Label36: TLabel;
        Label37: TLabel;
        Label38: TLabel;
        cbTodos0: TCheckBox;
        cbTodosC: TCheckBox;
        cbTodosH: TCheckBox;
        cbTodos1: TCheckBox;
        cbBloco9: TCheckBox;
        cbRegistro0400: TCheckBox;
        DBGridCadastroPadrao: TDBGrid;
        DBGrid1: TDBGrid;
        btnGerarTemp: TBitBtn;
        bntGerarNovoSped: TButton;
        Procedure btnGerarSpedClick(Sender: TObject);
        Procedure FormActivate(Sender: TObject);
        Procedure btSairClick(Sender: TObject);
        Procedure EdErroClick(Sender: TObject);
        Procedure SpeedButton2Click(Sender: TObject);
        Procedure BtnGravarClick(Sender: TObject);
        Procedure BitBtn1Click(Sender: TObject);
        Procedure btVoltarClick(Sender: TObject);
        Procedure btAbrirClick(Sender: TObject);
        Procedure FormKeyPress(Sender: TObject; Var Key: Char);
        Procedure cbRegistroC100Click(Sender: TObject);
        Procedure cbTodos0Click(Sender: TObject);
        Procedure cbTodosCClick(Sender: TObject);
        Procedure cbTodosHClick(Sender: TObject);
        Procedure cbTodos1Click(Sender: TObject);
        Procedure btnGerarTempClick(Sender: TObject);
        Procedure bntGerarNovoSpedClick(Sender: TObject);
    private
        { Private declarations }
    public

        //////// MAURO - 25/06/2016 - FUNÇÕES DO PAINEL DE DETALHES/////
        Procedure IniciaPDetalhes(limpar: boolean);
        //MAURO - 26/06/2013 - Função para parar a execução do arquivo
        Function PararExecucao: Boolean;
        Procedure PausePDetalhes(fechar, sped: boolean);
        //procedure AddLogln(memoP:Boolean; Log: string);
        Procedure AddLogln(memoP: Boolean; cont: Integer; Log: String);
        Procedure AddLog(memoP: Boolean; Log: String);
        Function Trata_Sped_Str(conteudo, caminho: String): boolean;
        Function IniciarContRegistros: Boolean;
        /////////////////////////////////////////////////////////
       //MAURO 20/06/2013 - Função para filtrar contabilista
        Function FiltraContabilista: Boolean;
        //MAURO 19/06/2013 - Função para retirar os caracteres de determinada String;
        Function PreparaString(Valor: String): String;
        //MAURO 19/06/2013 - Função para criar arquivo de texto .txt
        Function CriaArquivoTexto: Boolean;
        //MAURO 19/06/2013 - Valida as operações antes de gerar arquivo
        Function ValidaArquivo: Boolean;
        //MAURO 19/06/2013 - Função para registrar as falhas da validação;
        Function RegistraFalha(Texto: String): Boolean;
        //MAURO 17/06/2013 - Função que contem as funções de registros
        Function GerarArquivo: Boolean;
        //Jônatas 11/09/2013 - Função reestruturada que contém as funções de registros
        Function GerarArquivoNovo: Boolean;

        /////////////////////////////////////// BLOCO 0 ////////////////////////////////////////////////////
        //MAURO 17/06/2013 - Imprimir REGISTRO 0000: ABERTURA DO ARQUIVO DIGITAL E IDENTIFICAÇÃO DA ENTIDADE
        Function Registro0000: Boolean;
        //MAURO 18/06/2013 - Imprimir REGISTRO 0001: ABERTURA DO BLOCO 0
        Function Registro0001: Boolean;
        //MAURO 18/06/2013 - Imprimir REGISTRO 0005: DADOS COMPLEMENTARES DA ENTIDADE
        Function Registro0005: Boolean;
        //MAURO 19/06/2013 - Imprimir REGISTRO 0015: DADOS DO CONTRIBUINTE SUBSTITUTO
        Function Registro0015: Boolean;
        //MAURO 19/06/2013 - Imprimir REGISTRO 0100: DADOS DO CONTABILISTA
        Function Registro0100: Boolean;
        //MAURO 20/06/2013 - Imprimir REGISTRO 0150: TABELA DE CADASTRO DO PARTICIPANTE
        Function Registro0150: Boolean;
        //MAURO 25/06/2013 - Imprimir REGISTRO 0190: IDENTIFICAÇÃO DAS UNIDADES DE MEDIDA
        Function Registro0190: Boolean;
        //MAURO 26/06/2013 - Imprimir REGISTRO 0200: TABELA DE IDENTIFICAÇÃO DO ITEM (PRODUTO E SERVIÇOS)
        Function Registro0200: Boolean;
        // ALEX 30/07/2013 - REGISTRO 0400: TABELA DE INFORMAÇÃO COM NATUREZAS DE OPERAÇÃO CONTIDA NAS NOTAS
        Function Registro0400: Boolean;
        //MAURO 26/06/2013 - Imprimir REGISTRO 0450: TABELA DE INFORMAÇÃO COMPLEMENTAR DO DOCUMENTO FISCAL
        Function Registro0450: Boolean;
        //MAURO 26/06/2013 - Imprimir REGISTRO 0990: ENCERRAMENTO DO BLOCO 0
        Function Registro0990: Boolean;

        /////////////////////////////////////// BLOCO B ////////////////////////////////////////////////////
        //Edmar - Imprimir REGISTRO B001: ABERTURA DO BLOCO B
        Function RegistroB001: Boolean;
        //Edmar - Imprimir REGISTRO B990: ENCERRAMENTO DO BLOCO B
        Function RegistroB990: Boolean;

        /////////////////////////////////////// BLOCO C ////////////////////////////////////////////////////
        //MAURO 28/06/2013 - Imprimir REGISTRO C001: ABERTURA DO BLOCO C
        Function RegistroC001: Boolean;
        //MAURO 28/06/2013 - Imprimir REGISTRO C100: NOTA FISCAL (CÓDIGO 01), NOTA FISCAL AVULSA (CÓDIGO 1B), NOTA FISCAL DE PRODUTOR (CÓDIGO 04), NF-e (CÓDIGO 55) e NFC-e (CÓDIGO 65).
        Function RegistroC100: Boolean;
        //ALEX 20/08/2013 - Função para inserir os registros temporiarios do Arquivo C100 no arquivo de xml
        Function C100InsertTmp: Boolean;
        //Jônatas 19/09/2013 - Nova função para Imprimir o registro C100
        Function NovoC100: Boolean;
        //C110: Registro de Informações Complementares
        Function RegistroC110(CodigoGerador: Integer; TipoGerador: String): Boolean;
        //C170: Registro de itens de documento fiscal com exceção de emissão propria
        Function RegistroC170(CodigoGerador: Integer): Boolean;
        //Jônatas 27/08/2013 - Insere Registro Analitico do Documento Fiscal C170 em tabela temporária
        Function C170InsertTmp(CodigoGerador: Integer; TipoGerador: String): Boolean;
        //Jônatas 19/09/2013 - Nova função para Imprimir o registro C170
        Function NovoC170(CodigoGerador: Integer; TipoGerador: String): Boolean;
        //C190: Registro Analitico do Documento Fiscal
        Function RegistroC190(CodigoGerador: Integer): Boolean;
        //C190: Insere Registro Analitico do Documento Fiscal C190 em tabela temporária
        Function C190InsertTmp(CodigoGerador: Integer; TipoGerador: String): Boolean;
        //Jônatas 19/09/2013 - Nova função para Imprimir o registro C190
        Function NovoC190(CodigoGerador: Integer; TipoGerador: String; Modelo: String): Boolean;
        //MAURO 28/06/2013 - Imprimir REGISTRO C990: ENCERRAMENTO DO BLOCO C
        Function RegistroC990: Boolean;

        /////////////////////////////////////// BLOCO D ////////////////////////////////////////////////////
        //MAURO - Imprimir REGISTRO D001: ABERTURA DO BLOCO D
        Function RegistroD001: Boolean;
        //MAURO - Imprimir REGISTRO D990: ENCERRAMENTO DO BLOCO D
        Function RegistroD990: Boolean;

        /////////////////////////////////////// BLOCO E ////////////////////////////////////////////////////
        //MAURO - Imprimir REGISTRO E001: ABERTURA DO BLOCO E
        Function RegistroE001: Boolean;
        //REGISTRO E100: PERIODO DE APURAÇÃO DE ICMS
        Function RegistroE100: Boolean;
        //MAURO - Imprimir REGISTRO E990: ENCERRAMENTO DO BLOCO E
        Function RegistroE990: Boolean;

        /////////////////////////////////////// BLOCO G ////////////////////////////////////////////////////
        //MAURO - Imprimir REGISTRO G001: ABERTURA DO BLOCO G
        Function RegistroG001: Boolean;
        //MAURO - Imprimir REGISTRO G990: ENCERRAMENTO DO BLOCO G
        Function RegistroG990: Boolean;

        /////////////////////////////////////// BLOCO H ////////////////////////////////////////////////////
        //MAURO - Imprimir REGISTRO H001: ABERTURA DO BLOCO H
        Function RegistroH001: Boolean;
        //MAURO - Imprimir REGISTRO H005: TOTAIS DO INVENTÁRIO
        Function RegistroH005: Boolean;
        //MAURO - Imprimir REGISTRO H010: INVENTÁRIO.(itens)
        Function RegistroH010: Boolean;
        //MAURO - Imprimir REGISTRO H990: ENCERRAMENTO DO BLOCO H
        Function RegistroH990: Boolean;

        /////////////////////////////////////// BLOCO K ////////////////////////////////////////////////////
        //Edmar - 10/08/2016 - Abertura do bloco K
        function RegistroK001: Boolean;
        //Edmar - 10/08/2016 - Encerramento do bloco K        
        function RegistroK990: Boolean;

        /////////////////////////////////////// BLOCO 1 ////////////////////////////////////////////////////
        //MAURO - Imprimir REGISTRO 1001: ABERTURA DO BLOCO 1
        Function Registro1001: Boolean;
        //MAURO - Imprimir REGISTRO 1010: OBRIGATORIEDADE DE REGISTROS DO BLOCO 1
        Function Registro1010: Boolean;
        //MAURO - Imprimir REGISTRO 1990: ENCERRAMENTO DO BLOCO 1
        Function Registro1990: Boolean;

        /////////////////////////////////////// BLOCO 9 ////////////////////////////////////////////////////
        //MAURO - Imprimir REGISTRO 9001: ABERTURA DO BLOCO 9
        Function Registro9001: Boolean;
        //MAURO - Imprimir REGISTRO 9900: REGISTROS DO ARQUIVO.
        Function Registro9900: Boolean;
        //MAURO - Imprimir REGISTRO 9990: ENCERRAMENTO DO BLOCO 9
        Function Registro9990: Boolean;
        //MAURO - Imprimir REGISTRO 9999: ENCERRAMENTO DO ARQUIVO DIGITAL.
        Function Registro9999: Boolean;

    End;

Var
    FSped: TFSped;

    //Variáveis

    ALIQ_ICMS: String; //Alíquota de ICMS aplicável ao item nas operações internas
    LogErros, Diretorio, Auxiliar, NomeArquivo, caminho: String;
    xLinha, DT01, Dt02, DTlog1, DTlog2: String;
    xTexto: TextFile;
    ValoresAdicionais, VL_INV, VL_ITEM: Double;
    VL_IPI, IND_EMIT, IND_OPER: String;
    contTotalLinhas, contLinhas, contErros, contNumItem, xCodSped, xCodTMP, xCodMunContab, xCodCidade: Integer;
    controle, pararExec, EncerrarBloco, Registro: Boolean;
    ICOD_SIT, IRegistroC110, IRegistroC160, IRegistroC170, IRegistroC176, IRegistroC179, IRegistroC190: Boolean;
    TOTALPRODNOTA, TOTALNOTA, TOTAL, PORCENTAGEM, VL_OPR: Real;

    //Jônatas 05/09/2013 - Guardam a soma dos valores para comparação posterior
    XC190Vl_Bc_Icms, XC190Vl_Icms, XC190Vl_Bc_Icms_St, XC190Vl_Icms_St, XC190Vl_Ipi, XC190Vl_Doc: Real;
    XC170Vl_Bc_Icms, XC170Vl_Icms, XC170Vl_Bc_Icms_St, XC170Vl_Icms_St: Real;

    ///////////////////////// Contador Registros //////////////////////
    contRegistro0000, contRegistro0001, contRegistro0005, contRegistro0015, contRegistro0100, contRegistro0150, contRegistro0190, contRegistro0200, contRegistro0400, contRegistro0450, contRegistro0990: Integer;
    contRegistroC001, contRegistroC100, contRegistroC110, contRegistroC160, contRegistroC170, contRegistroC179, contRegistroC190, contRegistroC990, contRegistroH001, contRegistroH005: Integer;
    contRegistroH010, contRegistroH990, contRegistro1001, contRegistro1010, contRegistro1990, contRegistro9001, contRegistro9900, contRegistro9990, contRegistroD001, contRegistroD990: Integer;
    contRegistroB001, contRegistroB990, contRegistroK001, contRegistroK990: Integer;
    contRegistroE001, contRegistroE100, contRegistroE990, contRegistroG001, contRegistroG990: Integer;

Implementation

Uses UDMFiscal, UDMMacs, UMenu, UDMGEOGRAFIA, DB, Math, UCadCidade, UMDO,
    UDMEstoque;

{$R *.dfm}

Procedure TFSped.btnGerarSpedClick(Sender: TObject);
Begin
    Inherited;
    Diretorio := 'C:\MZR\Arquivos\Sped';
    MErros.Text := '';
    PErro.Visible := False;
    FiltraTabela(DMMACS.TEmpresa, 'EMPRESA', 'COD_EMPRESA', FMenu.LCODEMPRESA.Caption, '');
    FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
    FiltraTabela(DMGEOGRAFIA.TCidade, 'CIDADE', 'COD_CIDADE', DMMACS.TEmpresa.FieldByName('COD_CIDADE').AsString, '');
    FiltraTabela(DMGEOGRAFIA.TEstado, 'ESTADO', 'COD_ESTADO', DMGEOGRAFIA.TCidade.FieldByName('COD_ESTADO').AsString, '');

    If CriaArquivoTexto = False
        Then Begin
        Mensagem('OPÇÃO BLOQUEADA', 'Falha ao criar arquivo de texto do Sped Fiscal!', '', 1, 1, False, 'i');
        Exit;
    End;

    If ValidaArquivo = False
        Then Begin
        PFalha.Visible := True;
        PFalha.BringToFront;
        CloseFile(xTexto);
        Exit;
    End
    Else Begin
        PFalha.Visible := False;
        PFalha.SendToBack;
    End;

    If GerarArquivo = True
        Then Begin
        Progressbar1.Position := 100;
        ProgressBar1.Refresh;
        AddLogln(true, 0, '***********************************************************************************************');
        AddLogln(true, 0, 'Finalizando...');
        AddLogln(true, 0, 'Sped Fiscal gerado! ');
        AddLogln(true, 0, ' ');
        AddLogln(true, 0, 'Erros ou falhas de validação : ' + IntToStr(contErros));
        AddLogln(true, 0, '***********************************************************************************************');
        btAbrir.Enabled := True;
    End
    Else Begin
        If pararExec = True
            Then Begin
            AddLogln(true, 0, '***********************************************************************************************');
            AddLogln(true, 0, 'Finalizando...');
            AddLogln(true, 0, 'Processo cancelado! ');
            AddLogln(true, 0, ' ');
            AddLogln(true, 0, 'Erros ou falhas de validação : ' + IntToStr(contErros));
            AddLogln(true, 0, '***********************************************************************************************');
            btAbrir.Enabled := True;
        End;
    End;


End;

//MAURO 26/06/2013 - Função para parar a execução do Arquivo

Function TFSped.PararExecucao: Boolean;
Begin
    If pararExec = True
        Then Begin
        If Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'DESEJA REALMENTE PARAR A EXECUÇÃO DO SPED FISCAL? ', '', 2, 3, False, 'C') = 2 Then
            Result := True
        Else
            Result := False;
    End
    Else
        Result := False;
End;


//MAURO 25/06/2013 - Função para iniciar painel de detalhes

Procedure TFSped.IniciaPDetalhes(limpar: boolean);
Begin
    PDetalhes.Left := 24;
    PDetalhes.Top := 63;
    PDetalhes.BringToFront;
    PDetalhes.Visible := True;
    PDetalhes.Repaint;
    btAbrir.Enabled := False;
    RichEdit1.Visible := True;
    ProgressBar1.Position := 0;
    contErros := 0;
    contLinhas := 0;
    contTotalLinhas := 0;
    IniciarContRegistros;
    If limpar
        Then Begin
        RichEdit1.Lines.Clear;
    End;
End;

Function TFSped.Trata_Sped_Str(conteudo, caminho: String): boolean;
Var
    sFile: TextFile;
Begin
    Result := True;

    // - 11/05/2009: verifica se os diretorios dos logs existem
    If Not DirectoryExists(diretorio) Then Begin
        ForceDirectories(diretorio);
    End;
    If Not DirectoryExists(diretorio + '\LOG\') Then Begin
        ForceDirectories(diretorio + '\LOG\');
    End;

    Try
        AssignFile(sFile, caminho);

        If Not fileexists(caminho) Then
        Begin
            rewrite(sFile);
        End;

        Reset(sFile);
        Append(sFile);
        Try
            WriteLn(sFile, conteudo);
        Finally
            CloseFile(sFile);
        End;
    Except
        Result := False
    End;
End;

Procedure TFSped.PausePDetalhes(fechar, sped: boolean);
Begin
    Trata_Sped_Str(RichEdit1.Text, diretorio + 'LOG\LOG' + nomeArquivo + '.txt');

    If fechar
        Then Begin
        PDetalhes.SendToBack;
        PDetalhes.Visible := False;
    End
    Else Begin
        If sped
            Then Begin
            btAbrir.Enabled := True;
            ProgressBar1.Position := 100;
        End
        Else Begin
            btAbrir.Enabled := False;
            ProgressBar1.Position := 0;
        End;
    End;
End;

//procedure TFSped.AddLogln(memoP:Boolean; Log: string);

Procedure TFSped.AddLogln(memoP: Boolean; cont: Integer; Log: String);
Begin
    contErros := ContErros + cont;
    If memoP Then
        RichEdit1.Lines.Add(Log)
End;

Procedure TFSped.AddLog(memoP: Boolean; Log: String);
Begin
    If memoP Then
        RichEdit1.Lines.Text := RichEdit1.Lines.Text + Log

End;

//MAURO 20/06/2013 - Função para filtrar contabilista

Function TFSped.FiltraContabilista: Boolean;
Begin

    If FiltraTabela(DMMACS.TSped, 'SPED', '', '', '') = True
        Then Begin
        edNome.Text := DMMACS.TSped.FieldByName('NOME').AsString;
        edCpf.Text := DMMACS.TSped.FieldByName('CPF').AsString;
        edCrc.Text := DMMACS.TSped.FieldByName('CRC').AsString;
        edCnpj.Text := DMMACS.TSped.FieldByName('CNPJ').AsString;
        edCep.Text := DMMACS.TSped.FieldByName('CEP').AsString;
        edEndereco.Text := DMMACS.TSped.FieldByName('ENDERECO').AsString;
        edNumero.Text := IntToStr(DMMACS.TSped.FieldByName('NUMERO').AsInteger);
        edBairro.Text := DMMACS.TSped.FieldByName('BAIRRO').AsString;
        edComplemento.Text := DMMACS.TSped.FieldByName('COMPLEMENTO').AsString;
        edFone.Text := DMMACS.TSped.FieldByName('FONE').AsString;
        edFax.Text := DMMACS.TSped.FieldByName('FAX').AsString;
        edEmail.Text := DMMACS.TSped.FieldByName('EMAIL').AsString;
        FiltraTabela(DMGEOGRAFIA.TCidade, 'CIDADE', 'COD_IBGE', IntToStr(DMMACS.TSped.FieldByName('COD_MUNICIPIO').AsInteger), '');
        edCidade.Text := DMGEOGRAFIA.TCidade.FieldByName('NOME').AsString;

    End;


End;

//MAURO 19/06/2013 - Função para retirar os caracteres de determinada String;

Function TFSped.PreparaString(Valor: String): String;
Begin
    Valor := TiraCaracter(Valor, '(');
    Valor := TiraCaracter(Valor, ')');
    Valor := TiraCaracter(Valor, '-');
    Valor := TiraCaracter(Valor, ' ');
    Valor := TiraCaracter(Valor, '_');
    Valor := TiraCaracter(Valor, '.');
    Auxiliar := Valor;
End;

//MAURO 19/06/2013 - Função para criar o arquivo de texto .txt

Function TFSped.CriaArquivoTexto: Boolean;
Begin
    Try
        Result := True;

        //MAURO - Verifica se existe a pasta de Sped na pasta Arquivos
        If Not directoryExists(Diretorio) Then
            CreateDir(Diretorio);

        If FileExists(Diretorio + '\SPEDEFDICMSIPI.txt') Then
            DeleteFile(Diretorio + '\SPEDEFDICMSIPI.txt');

        // MAURO 17/06/2013 - Cria arquivo .txt do sped
        AssignFile(XTexto, 'C:\MZR\Arquivos\Sped\SPEDEFDICMSIPI.txt');
{$I-}
        Reset(XTexto);
{$I+}
        If IOResult = 0 Then
            Append(XTexto)
        Else
            Rewrite(XTexto); //Jônatas 28/08/2013 - Não está conseguindo reescrever o arquivo
    Except
        Result := False;
    End;
End;

//MAURO 19/06/2013 - Função para registrar as falhas da validação

Function TFSped.RegistraFalha(Texto: String): Boolean;
Begin
    Result := True;
    Try
        PFalha.Visible := True;
        PFalha.BringToFront;
        EdErro.Visible := True;
        ShErro.Visible := True;
        EdErro.Text := 'Falha Crítica na validação. Arquivo Sped Fiscal inválido. [Para detalhes clique aqui...]';
        MErros.Lines.Add(Texto);
    Except
        Result := False;
    End;
End;

//MAURO 19/06/2013 - Função para validar os registros do arquivo SpedFiscal

Function TFSped.ValidaArquivo: Boolean;
Begin
    Result:=True;
    If (DBEdit1.Text = '') Or (DBEdit2.Text = '')
        Then Begin
        RegistraFalha('Bloco 0 - Registro 0000 - Período fiscal não informado;');
        Result := False;
    End;

    If (cbFinalidade.Text = '')
        Then Begin
        RegistraFalha('Bloco 0 - Registro 0000 - Código de finalidade do arquivo não informado;');
        Result := False;
    End;

    If (cbIndicadorTipoAtividade.Text = '')
        Then Begin
        RegistraFalha('Bloco 0 - Registro 0000 - Indicador de tipo de atividade não informado;');
        Result := False;
    End;

    If (cbPerfil.Text = '')
        Then Begin
        RegistraFalha('Bloco 0 - Registro 0000 - Perfil de apresentação do arquivo fiscal não informado;');
        Result := False;
    End;

    If (cbIndicadorMovimento.Text = '')
        Then Begin
        RegistraFalha('Bloco 0 - Registro 0001 - Indicador de movimento não informado;');
        Result := False;
    End;

    FiltraTabela(DMMACS.TSped, 'SPED', '', '', '');
    If (DMMACS.TSped.IsEmpty) And (cbRegistro0100.Checked = True)
        Then Begin
        RegistraFalha('Bloco 0 - Registro 0100 - Não existe contabilista registrado;');
        Result := False;
    End;

    //BLOCO C - DOCUMENTOS FISCAIS I - MERCADORIAS (ICMS/IPI)
    If (cbIndicadorMovimentoC.Text = '')
        Then Begin
        RegistraFalha('Bloco C - Registro C001 - DOCUMENTOS FISCAIS I - MERCADORIAS (ICMS/IPI) - Indicador de movimento não informado;');
        Result := False;
    End;

    //BLOCO 1: OUTRAS INFORMAÇÕES
    If (cbIndicadorMovimento1.Text = '')
        Then Begin
        RegistraFalha('Bloco H - Registro 1001 - OUTRAS INFORMAÇÕES - Indicador de movimento não informado;');
        Result := False;
    End;


End;

//MAURO 17/06/2013 - Função gerar o arquivo SpedFiscal

Function TFSped.GerarArquivo: Boolean;
Begin
    Result := True;
    IniciaPDetalhes(true);

    //GERA DT INICIAL E FINAL
    Try
        DT01 := DMMACS.TPeriodoFiscal.FieldByName('DTINICIAL').AsString;
        Dt02 := DMMACS.TPeriodoFiscal.FieldByName('DTFINAL').AsString;

        AddLogln(true, 0, '***********************************************************************************************');
        AddLogln(true, 0, '********************************    A R Q U I V O   S P E D   F I S C A L    ********************************');
        AddLogln(true, 0, '---------------------------------------------------------------------------------------------------------------------------');
        AddLogln(true, 0, '------------------------------------------   INICIO LOG: ' + DT01 + ' ' + Dt02 + '   ------------------------------------------');
        AddLogln(true, 0, '---------------------------------------------------------------------------------------------------------------------------');
        AddLogln(true, 0, '');

        AddLogln(true, 0, '**********************************  ENTRE: ' + DT01 + ' - ' + Dt02 + '  **********************************');
        AddLogln(true, 0, '***********************************************************************************************');
        NomeArquivo := FormatDateTime('dd', StrToDate(DT01)) + '_' + FormatDateTime('dd.mm.yyyy', StrToDate(Dt02)) + '_' + FormatDateTime('hh.mm', Time());
    Except
        Mensagem('I N F O R M A Ç Ã O', 'Verifique se o mês e o ano estão corretos!', '', 1, 1, false, 'i');
        PausePDetalhes(false, false);
        Exit;
    End;

    progressbar1.Position := 10;
    Sleep(0050);
    ProgressBar1.Repaint;
    ProgressBar1.StepIt;
    //////////////////////////////////////////////////////////
    //////////////////////////////////////////////////////////
  ///// BLOCO 0: ABERTURA, IDENTIFICAÇÃO E REFERÊNCIAS /////
    //////////////////////////////////////////////////////////
    //////////////////////////////////////////////////////////

    //REGISTRO 0000: ABERTURA DO ARQUIVO DIGITAL E IDENTIFICAÇÃO DA ENTIDADE
    If cbRegistro0000.Checked = True
        Then Begin
        If Registro0000 = False
            Then Begin
            Result := False;
            Exit;
        End;
    End;

    //REGISTRO 0001: ABERTURA DO BLOCO 0
    If cbRegistro0001.Checked = True
        Then Begin
        If Registro0001 = False
            Then Begin
            Result := False;
            Exit;
        End;
    End;

    //REGISTRO 0005: DADOS COMPLEMENTARES DA ENTIDADE
    If cbRegistro0005.Checked = true
        Then Begin
        If Registro0005 = False
            Then Begin
            Result := False;
            Exit;
        End;
    End;

    //REGISTRO 0015: DADOS DO CONTRIBUINTE SUBSTITUTO
    If cbRegistro0015.Checked = true
        Then Begin
        If Registro0015 = False
            Then Begin
            Result := False;
            Exit;
        End;
    End;

    //REGISTRO 0100: DADOS DO CONTABILISTA
    If cbRegistro0100.Checked = true
        Then Begin
        If Registro0100 = False
            Then Begin
            Result := False;
            Exit;
        End;
    End;

    //REGISTRO 0150: TABELA DE CADASTRO DO PARTICIPANTE
    If cbRegistro0150.Checked = true
        Then Begin
        If Registro0150 = False
            Then Begin
            Result := False;
            Exit;
        End;
    End;

    //REGISTRO 0190: ALTERAÇÃO DA TABELA DE CADASTRO DE PARTICIPANTE
    If cbRegistro0190.Checked = True
        Then Begin
        If Registro0190 = False
            Then Begin
            Result := False;
            Exit;
        End;
    End;

    //REGISTRO 0200: TABELA DE IDENTIFICAÇÃO DO ITEM (PRODUTO E SERVIÇOS)
    If cbRegistro0200.Checked = True
        Then Begin
        If Registro0200 = False
            Then Begin
            Result := False;
            Exit;
        End;
    End;

    If cbRegistro0400.Checked = True
        Then Begin
        If Registro0400 = False
            Then Begin
            Result := False;
            Exit;
        End;
    End;

    If cbRegistro0450.Checked = True
        Then Begin
        If Registro0450 = False
            Then Begin
            Result := False;
            Exit;
        End;
    End;

    If cbRegistro0990.Checked = True
        Then Begin
        If Registro0990 = False
            Then Begin
            Result := False;
            Exit;
        End;
    End;

    progressbar1.Position := 20;
    Sleep(0100);
    ProgressBar1.Repaint;
    ProgressBar1.StepIt;



    /////////////////////////////////////////////////////////////////
    /////////////////////////////////////////////////////////////////
  ///// BLOCO C:DOCUMENTOS FISCAIS I - MERCADORIAS (ICMS/IPI) /////
    /////////////////////////////////////////////////////////////////
    /////////////////////////////////////////////////////////////////

    //REGISTRO C001: ABERTURA DO BLOCO C
    If cbRegistroC001.Checked = True
        Then Begin
        If RegistroC001 = False
            Then Begin
            Result := False;
            Exit;
        End;
    End;

    //Se o Indicador de movimento selecionado no registro C001 for 1 = Bloco sem dados informados, encerra o bloco inserindo somente o registro de encerramento do bloco
    If EncerrarBloco = False
        Then Begin
        //REGISTRO C100: REGISTRO C100: NOTA FISCAL (CÓDIGO 01), NOTA FISCAL AVULSA (CÓDIGO 1B), NOTA FISCAL DE PRODUTOR (CÓDIGO 04), NF-e (CÓDIGO 55) e NFC-e (CÓDIGO 65).
        If cbRegistroC100.Checked = True
            Then Begin
            If RegistroC100 = False
                Then Begin
                Result := False;
                Exit;
            End;
        End;
    End;

    //REGISTRO C990: ENCERRAMENTO DO BLOCO C
    If cbRegistroC990.Checked = True
        Then Begin
        If RegistroC990 = False
            Then Begin
            Result := False;
            Exit;
        End;
    End;

    //  progressbar1.Position := 60;
    Sleep(0050);
    ProgressBar1.Repaint;
    ProgressBar1.StepIt;

    /////////////////////////////////////////////////////////////////
    /////////////////////////////////////////////////////////////////
  /////// BLOCO D: DOCUMENTOS FISCAIS II - SERVIÇOS (ICMS). ///////
    /////////////////////////////////////////////////////////////////
    /////////////////////////////////////////////////////////////////

    {*** Bloco não será apresentado, apenas fazer abertura e fechamento do bloco para validação}

    //REGISTRO D001: ABERTURA DO BLOCO D
    If RegistroD001 = False
        Then Begin
        Result := False;
        Exit;
    End;

    //REGISTRO D990: ENCERRAMENTO DO BLOCO D
    If RegistroD990 = False
        Then Begin
        Result := False;
        Exit;
    End;

    /////////////////////////////////////////////////////////////////
    /////////////////////////////////////////////////////////////////
  //////////////// BLOCO E: APURAÇÃO DO ICMS E DO IPI /////////////
    /////////////////////////////////////////////////////////////////
    /////////////////////////////////////////////////////////////////

    {*** Bloco não será apresentado, apenas fazer abertura e fechamento do bloco para validação}

    //REGISTRO E001: ABERTURA DO BLOCO E
    If RegistroE001 = False
        Then Begin
        Result := False;
        Exit;
    End;

    //REGISTRO E100: APURAÇÃO DE ICMS
    contRegistroE100 := 0;
    
    if RegistroE100 = False
    Then Begin
     Result := False;
        Exit;
    End;

    //REGISTRO E990: ENCERRAMENTO DO BLOCO E
    If RegistroE990 = False
        Then Begin
        Result := False;
        Exit;
    End;

    ////////////////////////////////////////////////////////////////////////////////
    ////////////////////////////////////////////////////////////////////////////////
  /// BLOCO G – CONTROLE DO CRÉDITO DE ICMS DO ATIVO PERMANENTE CIAP /////////////
    ////////////////////////////////////////////////////////////////////////////////
    ////////////////////////////////////////////////////////////////////////////////

    {*** Bloco não será apresentado, apenas fazer abertura e fechamento do bloco para validação}

    //REGISTRO G001: ABERTURA DO BLOCO G
    If RegistroG001 = False
        Then Begin
        Result := False;
        Exit;
    End;

    //REGISTRO G990: ENCERRAMENTO DO BLOCO G
    If RegistroG990 = False
        Then Begin
        Result := False;
        Exit;
    End;

    /////////////////////////////////////////////////////////////////
    /////////////////////////////////////////////////////////////////
  /////////////////// BLOCO H: INVENTÁRIO FÍSICO //////////////////
    /////////////////////////////////////////////////////////////////
    /////////////////////////////////////////////////////////////////

    //REGISTRO H001: ABERTURA DO BLOCO H
    If cbRegistroH001.Checked = True
        Then Begin
        If RegistroH001 = False
            Then Begin
            Result := False;
            Exit;
        End;
    End;

    //Se não estiver selecionado para gerar inventário de estoque ou indicador de movimento no registro H001 for 1 = Bloco sem dados informados, encerra o bloco inserindo somente o registro de encerramento do bloco
    If EncerrarBloco = False
        Then Begin

        //REGISTRO H005: TOTAIS DO INVENTÁRIO
        If cbRegistroH005.Checked = True
            Then Begin
            If RegistroH005 = False
                Then Begin
                Result := False;
                Exit;
            End;
        End;

        // REGISTRO H010: INVENTÁRIO
        If cbRegistroH010.Checked = True
            Then Begin
            If RegistroH010 = False
                Then Begin
                Result := False;
                Exit;
            End;
        End;
    End;

    //REGISTRO H990: ENCERRAMENTO DO BLOCO H.
    If cbRegistroH990.Checked = True
        Then Begin
        If RegistroH990 = False
            Then Begin
            Result := False;
            Exit;
        End;
    End;

    progressbar1.Position := 70;
    Sleep(0050);
    ProgressBar1.Repaint;
    ProgressBar1.StepIt;
        
    /////////////////////////////////////////////////////////////////
    /////////////////////////////////////////////////////////////////
  ////////////////// BLOCO 1: OUTRAS INFORMAÇÕES //////////////////
    /////////////////////////////////////////////////////////////////
    /////////////////////////////////////////////////////////////////

    //REGISTRO 1001: ABERTURA DO BLOCO 1
    If cbRegistro1001.Checked = True
        Then Begin
        If Registro1001 = False
            Then Begin
            Result := False;
            Exit;
        End;
    End;

    // REGISTRO 1010: OBRIGATORIEDADE DE REGISTROS DO BLOCO 1
    If cbRegistro1010.Checked = True
        Then Begin
        If Registro1010 = False
            Then Begin
            Result := False;
            Exit;
        End;
    End;

    //REGISTRO 1990: ENCERRAMENTO DO BLOCO 1
    If cbRegistro1990.Checked = True
        Then Begin
        If Registro1990 = False
            Then Begin
            Result := False;
            Exit;
        End;
    End;

    progressbar1.Position := 80;
    Sleep(0050);
    ProgressBar1.Repaint;
    ProgressBar1.StepIt;

    /////////////////////////////////////////////////////////////////
    /////////////////////////////////////////////////////////////////
  ////// BLOCO 9: CONTROLE E ENCERRAMENTO DO ARQUIVO DIGITAL //////
    /////////////////////////////////////////////////////////////////
    /////////////////////////////////////////////////////////////////

    //BLOCO 9: CONTROLE E ENCERRAMENTO DO ARQUIVO DIGITAL
    If cbBloco9.Checked = True
        Then Begin

        //REGISTRO 9001: ABERTURA DO BLOCO 9
        If Registro9001 = False
            Then Begin
            Result := False;
            Exit;
        End;

        //REGISTRO 9900: REGISTROS DO ARQUIVO.
        If Registro9900 = False
            Then Begin
            Result := False;
            Exit;
        End;

        //REGISTRO 9990: ENCERRAMENTO DO BLOCO 9
        If Registro9990 = False
            Then Begin
            Result := False;
            Exit;
        End;

        //REGISTRO 9999: ENCERRAMENTO DO ARQUIVO DIGITAL
        If Registro9999 = False
            Then Begin
            Result := False;
            Exit;
        End;

    End;

    progressbar1.Position := 90;
    Sleep(0050);
    ProgressBar1.Repaint;
    ProgressBar1.StepIt;

    //FIM DOS BLOCOS - Fecha o Arquivo
    CloseFile(xTexto);

End;

//MAURO 17/06/2013 - IMPRIMIR REGISTRO 0000

Function TFSped.Registro0000: Boolean;
Begin
    Try
        AddLogln(true, 0, '---------------------------------------------------------------------------------------------------------------------------');
        AddLogln(true, 0, '[REGISTRO 0000] - ABERTURA DO ARQUIVO DIGITAL E IDENTIFICAÇÃO DA ENTIDADE');
        AddLogln(true, 0, 'Iniciando... ');

        FiltraTabela(DMMACS.TEmpresa, 'EMPRESA', 'COD_EMPRESA', FMenu.LCODEMPRESA.Caption, '');
        FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
        FiltraTabela(DMGEOGRAFIA.TCidade, 'CIDADE', 'COD_CIDADE', DMMACS.TEmpresa.FieldByName('COD_CIDADE').AsString, '');
        FiltraTabela(DMGEOGRAFIA.TEstado, 'ESTADO', 'COD_ESTADO', DMGEOGRAFIA.TCidade.FieldByName('COD_ESTADO').AsString, '');

        contLinhas := 0;
        contLinhas := contLinhas + 1;
        xLinha := '';
        //Imprime Num. Registro
        xLinha := xLinha + ('|0000|');

        //Imprime Versão Leiaute
        If cbLeiaute.Text = '' Then
            AddLogln(true, 1, ' [xxx] - Leiaute não informado;')
        Else
            xLinha := xLinha + (cbLeiaute.Text + '|');

        //Imprime Cód. Finalidade
        If cbFinalidade.Text = '' Then
            AddLogln(true, 1, ' [xxxx] - Código da finalidade do arquivo não informado;')
        Else Begin
            If cbFinalidade.Text = '0 - Remessa do arquivo original' Then
                xLinha := xLinha + ('0|')
            Else
                xLinha := xLinha + ('1|');
        End;

        //Imprime Período Fiscal - Data Inicial
        If DBEdit1.Text = '' Then
            AddLogln(true, 1, ' [xxxx] - Data inicial do período fiscal não informado;')
        Else
            xLinha := xLinha + FormatDateTime('ddmmyyyy', StrToDate(DBEdit1.Text)) + '|';

        //Imprime Período Fiscal - Data Final
        If DBEdit2.Text = '' Then
            AddLogln(true, 1, ' [xxxx] - Data final do período fiscal não informado;')
        Else
            xLinha := xLinha + FormatDateTime('ddmmyyyy', StrToDate(DBEdit2.Text)) + '|';

        //Imprime Nome empresarial da entidade
        If DMMACS.TEmpresa.FieldByName('RAZAO_SOCIAL').AsString = '' Then
            AddLogln(true, 1, ' [xxxx] - Razão social da entidade não informada;')
        Else
            xLinha := xLinha + copy(DMMACS.TEmpresa.FieldByName('RAZAO_SOCIAL').AsString, 0, 100) + '|';

        //Imprime Número de inscrição da entidade no CNPJ.
        xLinha := xLinha + DMMACS.TEmpresa.FieldByName('CNPJ').AsString + '|';

        //Imprime Número de inscrição da entidade no CPF.
        xLinha := xLinha + '|';

        //Imprime Sigla da unidade da federação da entidade.
        If DMGEOGRAFIA.TEstado.FieldByName('UF_ESTADO').AsString = '' Then
            AddLogln(true, 1, ' [xxxx] - Sigla da unidade da federação da entidade não informada;')
        Else
            xLinha := xLinha + DMGEOGRAFIA.TEstado.FieldByName('UF_ESTADO').AsString + '|';

        //Imprimir Inscrição Estadual da entidade.
        If DMMACS.TEmpresa.FieldByName('INSC_EST').AsString = '' Then
            AddLogln(true, 1, ' [xxxx] - Inscrição Estadual da entidade não informada;')
        Else
            xLinha := xLinha + DMMACS.TEmpresa.FieldByName('INSC_EST').AsString + '|';

        //Imprime Código do município do domicílio fiscal da entidade,conforme a tabela IBGE
        If DMGEOGRAFIA.TCidade.FieldByName('COD_IBGE').AsString = '' Then
            AddLogln(true, 1, ' [xxxx] - Código do município do domicílio fiscal da entidade não informado;')
        Else
            xLinha := xLinha + DMGEOGRAFIA.TCidade.FieldByName('COD_IBGE').AsString + '|';

        //Imprime Inscrição Municipal da entidade.
        xLinha := xLinha + DMMACS.TEmpresa.FieldByName('INSC_MUN').AsString + '|';

        //Imprime Inscrição da entidade na SUFRAMA
        xLinha := xLinha + edSuframa.Text + '|';

        //Imprime Perfil de apresentação do arquivo fiscal
        If cbPerfil.Text = '' Then
            AddLogln(true, 1, ' [xxxx] - Perfil de apresentação do arquivo fiscal não informado;')
        Else Begin
            If (cbPerfil.Text = 'A – Perfil A')
                Then Begin
                xLinha := xLinha + ('A|');
            End
            Else
                If (cbPerfil.Text = 'B – Perfil B')
                    Then Begin
                    xLinha := xLinha + ('B|');
                End
                Else
                    xLinha := xLinha + ('C|');
        End;


        //Imprime Indicador de tipo de atividade:
        If cbIndicadorTipoAtividade.Text = '' Then
            AddLogln(true, 1, '[xxxx] - Indicador de tipo de atividade não informado;')
        Else Begin
            If cbIndicadorTipoAtividade.Text = '0 – Industrial ou equiparado a industrial;' Then
                xLinha := xLinha + ('0|')
            Else
                xLinha := xLinha + ('1|');
        End;

        contRegistro0000 := contRegistro0000 + 1;
        Writeln(xTexto, xLinha);
        Result := True;
        AddLogln(true, 0, 'Registro finalizado. ');
        AddLogln(true, 0, '---------------------------------------------------------------------------------------------------------------------------');
    Except
        Result := False;
        AddLogln(true, 0, 'FALHA ');
        AddLogln(true, 0, '---------------------------------------------------------------------------------------------------------------------------');

    End;
End;

//MAURO 18/06/2013 - IMPRIMIR REGISTRO 0001

Function TFSped.Registro0001: Boolean;
Begin
    Try
        AddLogln(true, 0, '[REGISTRO 0001] - ABERTURA DO BLOCO');
        AddLogln(true, 0, 'Iniciando... ');

        contLinhas := contLinhas + 1;
        xLinha := '';
        //Imprime Num. Registro
        xLinha := xLinha + ('|0001|');
        //Imprime Indicador de movimento
        If cbIndicadorMovimento.Text = '' Then
            AddLogln(true, 1, ' [xxxx] - Indicador de movimento do bloco;')
        Else Begin
            If cbIndicadorMovimento.Text = '0- Bloco com dados informados' Then
                xLinha := xLinha + '0|'
            Else
                xLinha := xLinha + '1|';
        End;

        contRegistro0001 := contRegistro0001 + 1;
        Writeln(xTexto, xLinha);
        Result := True;
        AddLogln(true, 0, 'Registro finalizado. ');
        AddLogln(true, 0, '---------------------------------------------------------------------------------------------------------------------------');
    Except
        Result := False;
    End;
End;

//MAURO 18/06/2013 - IMPRIMIR REGISTRO 0005

Function TFSped.Registro0005: Boolean;
Begin
    Try
        AddLogln(true, 0, '[REGISTRO 0005] - DADOS COMPLEMENTARES DA ENTIDADE');
        AddLogln(true, 0, 'Iniciando... ');

        FiltraTabela(DMMACS.TEmpresa, 'EMPRESA', 'COD_EMPRESA', FMenu.LCODEMPRESA.Caption, '');
        FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
        FiltraTabela(DMGEOGRAFIA.TCidade, 'CIDADE', 'COD_CIDADE', DMMACS.TEmpresa.FieldByName('COD_CIDADE').AsString, '');
        FiltraTabela(DMGEOGRAFIA.TEstado, 'ESTADO', 'COD_ESTADO', DMGEOGRAFIA.TCidade.FieldByName('COD_ESTADO').AsString, '');

        contLinhas := contLinhas + 1;
        xLinha := '';
        //Imprime Num. Registro
        xLinha := xLinha + ('|0005|');

        //Imprime Nome de fantasia associado ao nome empresarial
        If DMMACS.TEmpresa.FieldByName('FANTASIA').AsString = '' Then
            AddLogln(true, 1, ' [xxxx] - Nome de fantasia associado ao nome empresarial não informado;')
        Else
            xLinha := xLinha + copy(DMMACS.TEmpresa.FieldByName('FANTASIA').AsString, 0, 60) + '|';

        //Imprime Código de Endereçamento Postal
        If DMMACS.TEmpresa.FieldByName('CEP').AsString = '' Then
            AddLogln(true, 1, ' [xxxx] - Código de Endereçamento Postal não informado;')
        Else
            xLinha := xLinha + copy(DMMACS.TEmpresa.FieldByName('CEP').AsString, 0, 8) + '|';

        //Imprime Logradouro e endereço do imóvel.
        If DMMACS.TEmpresa.FieldByName('ENDERECO').AsString = '' Then
            AddLogln(true, 1, ' [xxxx] - Logradouro e endereço do imóvel não informado;')
        Else
            xLinha := xLinha + copy(DMMACS.TEmpresa.FieldByName('ENDERECO').AsString, 0, 60) + '|';

        //Imprime Número do imóvel.
        xLinha := xLinha + copy(DMMACS.TEmpresa.FieldByName('NUMERO').AsString, 0, 10) + '|';

        //Imprime Dados complementares do endereço.
        xLinha := xLinha + '|';

        //Imprime Bairro em que o imóvel está situado.
        If DMMACS.TEmpresa.FieldByName('BAIRRO').AsString = '' Then
            AddLogln(true, 1, ' [xxxx] - Bairro em que o imóvel está situado não informado;')
        Else
            xLinha := xLinha + copy(DMMACS.TEmpresa.FieldByName('BAIRRO').AsString, 0, 60) + '|';

        //Imprime Número do telefone (DDD+FONE).(045) 9999-99999
        PreparaString(DMMACS.TEmpresa.FieldByName('FONE').AsString);
        xLinha := xLinha + Auxiliar + '|';

        //Imprime Número do fax.
        xLinha := xLinha + '|';

        //Imprime Endereço do correio eletrônico.
        xLinha := xLinha + DMMACS.TEmpresa.FieldByName('WEB_PAGE').AsString + '|';

        contRegistro0005 := contRegistro0005 + 1;
        Writeln(xTexto, xLinha);
        Result := True;
        AddLogln(true, 0, 'Registro finalizado. ');
        AddLogln(true, 0, '---------------------------------------------------------------------------------------------------------------------------');
    Except
        Result := False;
    End;
End;

//MAURO 19/06/2013 - IMPRIMIR REGISTRO 0015

Function TFSped.Registro0015: Boolean;
Begin
    Try
        AddLogln(true, 0, '[REGISTRO 0015] - DADOS DO CONTRIBUINTE SUBSTITUTO');
        AddLogln(true, 0, 'Iniciando... ');

        contLinhas := contLinhas + 1;
        xLinha := '';
        //Imprime Num. Registro
        xLinha := xLinha + ('|0015|');
        //Sigla da unidade da federação do contribuinte substituído.
        xLinha := xLinha + ('PR|');
        //Inscrição Estadual do contribuinte substituto na unidade da federação do contribuinte substituído.
        xLinha := xLinha + DMMACS.TEmpresa.FieldByName('INSC_EST').AsString + '|';

        contRegistro0015 := contRegistro0015 + 1;
        Writeln(xTexto, xLinha);
        Result := True;
        AddLogln(true, 0, 'Registro finalizado. ');
        AddLogln(true, 0, '---------------------------------------------------------------------------------------------------------------------------');
    Except
        Result := False;

    End;
End;

//MAURO 20/06/2013 - IMPRIMIR REGISTRO 0100

Function TFSped.Registro0100: Boolean;
Begin
    Try
        AddLogln(true, 0, '[REGISTRO 0100] - DADOS DO CONTABILISTA');
        AddLogln(true, 0, 'Iniciando... ');

        FiltraTabela(DMMACS.TSped, 'SPED', '', '', '');

        contLinhas := contLinhas + 1;
        xLinha := '';
        //01 - Imprime Num. Registro
        xLinha := xLinha + ('|0100|');

        //02 - Nome do contabilista.
        If DMMACS.TSped.FieldByName('NOME').AsString = ''
        Then Begin
            AddLogln(true, 1, ' [xxxx] - Nome do contabilista não informado;');
            xLinha := xLinha + '|';
        End
        Else
            xLinha := xLinha + Copy(DMMACS.TSped.FieldByName('NOME').AsString, 0, 100) + '|';

        //03 - Número de inscrição do contabilista no CPF
        PreparaString(DMMACS.TSped.FieldByName('CPF').AsString);
        xLinha := xLinha + Copy(Auxiliar, 0, 11) + '|';

        //04 - Número de inscrição do contabilista no Conselho Regional de Contabilidade.
        xLinha := xLinha + Copy(DMMACS.TSped.FieldByName('CRC').AsString, 0, 11) + '|';

        //05 - Número de inscrição do escritório de contabilidade no CNPJ, se houver.
        PreparaString(DMMACS.TSped.FieldByName('CNPJ').AsString);
        xLinha := xLinha + Copy(Auxiliar, 0, 14) + '|';

        //06 - Código de Endereçamento Postal.
        PreparaString(DMMACS.TSped.FieldByName('CEP').AsString);
        xLinha := xLinha + Copy(Auxiliar, 0, 8) + '|';

        //07 - Logradouro e endereço do imóvel
        xLinha := xLinha + Trim(Copy(DMMACS.TSped.FieldByName('ENDERECO').AsString, 0, 60)) + '|';

        //08 - Logradouro e endereço do imóvel
        xLinha := xLinha + Copy(DMMACS.TSped.FieldByName('NUMERO').AsString, 0, 10) + '|';

        //09 - Dados complementares do endereço
        xLinha := xLinha + Trim(Copy(DMMACS.TSped.FieldByName('COMPLEMENTO').AsString, 0, 60)) + '|';

        //10 - Bairro em que o imóvel está situado
        xLinha := xLinha + Trim(Copy(DMMACS.TSped.FieldByName('BAIRRO').AsString, 0, 60)) + '|';

        //11 - Número do telefone (DDD+FONE).
        PreparaString(DMMACS.TSped.FieldByName('FONE').AsString);
        xLinha := xLinha + Copy(Auxiliar, 0, 11) + '|';

        //12 - Número do fax
        PreparaString(DMMACS.TSped.FieldByName('FAX').AsString);
        xLinha := xLinha + Copy(Auxiliar, 0, 11) + '|';

        //13 - Endereço do correio eletrônico
        xLinha := xLinha + DMMACS.TSped.FieldByName('EMAIL').AsString + '|';

        //14 - Código do município, conforme tabela IBGE.
        xLinha := xLinha + Copy(DMMACS.TSped.FieldByName('COD_MUNICIPIO').AsString, 0, 7) + '|';

        contRegistro0100 := contRegistro0100 + 1;
        Writeln(xTexto, xLinha);
        Result := True;
        AddLogln(true, 0, 'Registro finalizado. ');
        AddLogln(true, 0, '---------------------------------------------------------------------------------------------------------------------------');
    Except
        Result := False;

    End;
End;

//MAURO 20/06/2013 - Imprimir o registro 0150

Function TFSped.Registro0150: Boolean;
Begin
    //DESCRIÇÃO DO REGISTRO
    //Não devem ser informados como participantes os CNPJ e CPF apenas citados nos registros C350 e C460.
    //Portanto no Registro 0150 vão ser passados cliente e fornecedores que tiverem notas e onde clientes.consumidor = 'N'
    //Não pode se repitir CNPJ ou CPF
    controle := True;
    Try

        AddLogln(true, 0, '[REGISTRO 0150] - TABELA DE CADASTRO DO PARTICIPANTE');
        AddLogln(true, 0, 'Iniciando... ');

        //LIMPAR DOS DADOS DA TABELA TMP
        Try
            DMMACS.TMP.Close;
            DMMACS.TMP.SQL.Clear;
            DMMACS.TMP.SQL.Add('Delete from TMP');
            DMMACS.TMP.ExecSQL;
            DMMACS.Transaction.CommitRetaining;
            xCodTMP := 0;
        Except
            DMMACS.Transaction.RollbackRetaining;
        End;


        //Se zerou a tabela TMP executar estas operações
        //INSERÇÃO DOS FORNECEDORES DOS PEDIDOS DE COMPRA
        If DMMACS.TMP.IsEmpty
            Then Begin
            //CONSULTAR DADOS DA TABELA VWPEDC
            DMMACS.TALX.Close;
            DMMACS.TALX.SQL.Clear;//Jônatas 19/09/2013 - Alterado de vwpedc para pedcompra
            DMMACS.TALX.SQL.Add('select distinct (vwfornec.cpfcnpj), pessoa.cod_pessoa, vwfornec.nome, vwfornec.endereco, pessoa.endnumero, vwfornec.bairro, cidade.cod_ibge, pessoaj.insc_est');
            DMMACS.TALX.SQL.Add('from pedcompra');
            DMMACS.TALX.SQL.Add('	left join docfis on pedcompra.cod_pedcomp = docfis.cod_pedido');
            DMMACS.TALX.SQL.Add('	left join vwfornec on pedcompra.cod_fornec = vwfornec.cod_fornec');
            DMMACS.TALX.SQL.Add('	left join pessoaj on vwfornec.cod_pessoa = pessoaj.cod_pessoa');
            DMMACS.TALX.SQL.Add('	left join pessoa on vwfornec.cod_pessoa = pessoa.cod_pessoa ');
            DMMACS.TALX.SQL.Add('	left join cidade on vwfornec.cod_cidade = cidade.cod_cidade');
            //Edmar - 08/04/2014 - Incluido condição (docfis.nfechave <> '+ #39 + '' + #39 + ') para retornar apenas pessoas que possuem notas com chave nf
            DMMACS.TALX.SQL.Add('where (cod_periodofiscal=:periodo) AND (docfis.nfechave <> '+ #39 + '' + #39 + ') AND ((pedcompra.situacao = ' + #39 + 'FECHADO' + #39 + ') or (pedcompra.situacao = ' + #39 + 'CANCELADO' + #39 + ')) AND (( pedcompra.fisco = ' + #39 + 'NF' + #39 + ') or (pedcompra.fisco = ' + #39 + 'NFE' + #39 + '))');
            DMMACS.TALX.ParamByName('periodo').AsInteger := DMMACS.TPeriodoFiscal.FieldByName('COD_PERIODOFISCAL').AsInteger;
            DMMACS.TALX.SQL.Add('order by vwfornec.cpfcnpj');
            DMMACS.TALX.Open;

            DMMACS.TALX.First;
            While Not DMMACS.TALX.EOF Do
            Begin
                xCodTMP := xCodTMP + 1;
                MDO.Query.Close;
                MDO.Query.SQL.Clear;
                MDO.Query.SQL.Add('Insert into TMP (cod_tmp, int1, desc1, desc2, desc3, obs) ');
                MDO.Query.SQL.Add('	values(:cod_tmp, :int1, :desc1, :desc2, :desc3, :obs)');
                MDO.Query.ParamByName('cod_tmp').AsInteger := xCodTMP;
                MDO.Query.ParamByName('int1').AsInteger := DMMACS.TALX.FieldByName('cod_pessoa').AsInteger;
                If  DMMACS.TALX.FieldByName('cod_pessoa').AsInteger = 0 Then
                	MessageDlg('teste', mtWarning, [mbOK], 0);
                MDO.Query.ParamByName('desc1').AsString := DMMACS.TALX.FieldByName('cpfcnpj').AsString;
                MDO.Query.ParamByName('desc2').AsString := DMMACS.TALX.FieldByName('cod_ibge').AsString;
                MDO.Query.ParamByName('desc3').AsString := DMMACS.TALX.FieldByName('insc_est').AsString;
                MDO.Query.ParamByName('obs').asString := 'PC';
                MDO.Query.ExecSQL;

                Try
                    MDO.Transac.CommitRetaining;
                    Result := True;
                Except
                    MDO.Transac.RollbackRetaining;
                    Result := False;
                End;

                If Not DMMACS.TAlx.EOF Then
                    DMMACS.TAlx.Next;
            End;

            //INSERÇÃO DOS CLIENTES DOS PEDIDOS DE VENDA
            If Result = True
                Then Begin
                //CONSULTAR DADOS DA TABELA VWPEDV
                DMMACS.TALX.Close;
                DMMACS.TALX.SQL.Clear;
                DMMACS.TALX.SQL.Add('select distinct (vwcliente.cpfcnpj), vwcliente.cod_pessoa, vwcliente.nome, vwcliente.endereco, vwcliente.endnumero, vwcliente.bairro, cidade.cod_ibge, pessoaj.insc_est');
                DMMACS.TALX.SQL.Add('from pedvenda');//Jônatas 25/09/2013 - Trocado vwpedv por pedvenda
                DMMACS.TALX.SQL.Add('	left join docfissaida on pedvenda.cod_pedvenda = docfissaida.cod_pedido');
                DMMACS.TALX.SQL.Add('	left join vwcliente on pedvenda.cod_cliente = vwcliente.cod_cliente');
                DMMACS.TALX.SQL.Add('	left join pessoaj on vwcliente.cod_pessoa = pessoaj.cod_pessoa');
                DMMACS.TALX.SQL.Add('	left join pessoa on vwcliente.cod_pessoa = pessoa.cod_pessoa ');
                DMMACS.TALX.SQL.Add('	left join cidade on vwcliente.cod_cidade = cidade.cod_cidade');//Jônatas 24/09/2013 - Retirado da linha abaixo: AND (cliente.consumidor=' + #39 + 'N' + #39 + ')
                //Edmar - 08/04/2014 - Condição (docfissaida.nfechave <> '+ #39 + '' + #39 + ') incluido para retornar apenas cliente que possuem notas com chave nf
				 //Edmar - 08/04/2014 - Condição (docfissaida.nfestatus <> ''3'') incluido para retornar apenas notas que não estão canceladas
                DMMACS.TALX.SQL.Add('where (cod_periodofiscal=:periodo) AND (docfissaida.nfestatus <> ''3'') AND (docfissaida.nfechave <> '+ #39 + '' + #39 + ') AND ((pedvenda.situacao = ''FECHADO'') OR (pedvenda.situacao = ''CANCELADO'')) AND ((pedvenda.fisco = ''NF'') or (pedvenda.fisco = ''NFE''))');
                DMMACS.TALX.ParamByName('periodo').AsInteger := DMMACS.TPeriodoFiscal.FieldByName('COD_PERIODOFISCAL').AsInteger;
                DMMACS.TALX.SQL.Add('order by vwcliente.cpfcnpj');
                DMMACS.TALX.Open;

                DMMACS.TALX.First;
                While Not DMMACS.TALX.EOF Do
                Begin
                    xCodTMP := xCodTMP + 1;
                    MDO.Query.Close;
                    MDO.Query.SQL.Clear;
                    MDO.Query.SQL.Add('Insert into TMP (cod_tmp, int1, desc1, desc2, desc3, obs) ');
                    MDO.Query.SQL.Add('	values(:cod_tmp, :int1, :desc1, :desc2, :desc3, :obs)');
                    MDO.Query.ParamByName('cod_tmp').AsInteger := xCodTMP;                   
                    MDO.Query.ParamByName('int1').AsInteger := DMMACS.TALX.FieldByName('cod_pessoa').AsInteger;
                    If  DMMACS.TALX.FieldByName('cod_pessoa').AsInteger = 0 Then
                       MessageDlg('teste', mtWarning, [mbOK], 0);
                    MDO.Query.ParamByName('desc1').AsString := DMMACS.TALX.FieldByName('cpfcnpj').AsString;
                    MDO.Query.ParamByName('desc2').AsString := DMMACS.TALX.FieldByName('cod_ibge').AsString;
                    MDO.Query.ParamByName('desc3').AsString := DMMACS.TALX.FieldByName('insc_est').AsString;
                    MDO.Query.ParamByName('obs').asString := 'PV';
                    MDO.Query.ExecSQL;

                    Try
                        MDO.Transac.CommitRetaining;
                        Result := True;
                    Except
                        MDO.Transac.RollbackRetaining;
                        Result := False;
                    End;

                    If Not DMMACS.TAlx.EOF Then
                        DMMACS.TAlx.Next;
                End;

                //INSERÇÃO DOS CLIENTES DAS ORDENS
                If Result = True
                    Then Begin
                    //CONSULTAR DADOS DA TABELA VWORDEM
                    DMMACS.TALX.Close;
                    DMMACS.TALX.SQL.Clear;
                    DMMACS.TALX.SQL.Add('select distinct(vwcliente.cpfcnpj), vwcliente.cod_pessoa, vwcliente.nome, vwcliente.endereco, vwcliente.endnumero, vwcliente.bairro, cidade.cod_ibge, pessoaj.insc_est');
                    DMMACS.TALX.SQL.Add('from ordem');//Jônatas 25/09/2013 - vwordem substituido por ordem
                    DMMACS.TALX.SQL.Add('	left join docfisord on ordem.cod_ordem = docfisord.cod_ordem');
                    DMMACS.TALX.SQL.Add('	left join vwcliente on ordem.cod_cliente = vwcliente.cod_cliente');
                    DMMACS.TALX.SQL.Add('	left join pessoaj on vwcliente.cod_pessoa = pessoaj.cod_pessoa');
                    DMMACS.TALX.SQL.Add('	left join pessoa on vwcliente.cod_pessoa = pessoa.cod_pessoa ');
                    DMMACS.TALX.SQL.Add('	left join cidade on vwcliente.cod_cidade = cidade.cod_cidade');//Jônatas 24/09/2013 - Retirado da linha abaixo: AND (cliente.consumidor=' + #39 + 'N' + #39 + ')
                    //Edmar - 08/04/2014 - Foi inserido a condição (docfisord.nfestatus <> ''3'') para filtrar só cliente que possuem nota fiscais ativas
                    //Incluido tambem a condição (docfisord.nfechave <> '+ #39 + '' + #39 + ') para retornar apenas clientes que possuem ordem com chave nf
                    DMMACS.TALX.SQL.Add('where (docfisord.cod_periodofiscal=:periodo) AND (docfisord.nfechave <> '+ #39 + '' + #39 + ') AND ((ordem.status = ''FECHADO'') OR (ordem.status = ''CANCELADO'')) AND (docfisord.nfestatus <> ''3'') AND (( ordem.fisco = ''NF'') or (ordem.fisco = ''NFE''))');
                    DMMACS.TALX.ParamByName('periodo').AsInteger := DMMACS.TPeriodoFiscal.FieldByName('COD_PERIODOFISCAL').AsInteger;
                    DMMACS.TALX.SQL.Add('order by vwcliente.cpfcnpj');
                    DMMACS.TALX.Open;

                    DMMACS.TALX.First;
                    While Not DMMACS.TALX.EOF Do
                    Begin
                        xCodTMP := xCodTMP + 1;
                        MDO.Query.Close;
                        MDO.Query.SQL.Clear;
                        MDO.Query.SQL.Add('Insert into TMP (cod_tmp, int1, desc1, desc2, desc3, obs) ');
                        MDO.Query.SQL.Add('	values(:cod_tmp, :int1, :desc1, :desc2, :desc3, :obs)');
                        MDO.Query.ParamByName('cod_tmp').AsInteger := xCodTMP;                      
                        MDO.Query.ParamByName('int1').AsInteger := DMMACS.TALX.FieldByName('cod_pessoa').AsInteger;
                		 If  DMMACS.TALX.FieldByName('cod_pessoa').AsInteger = 0 Then
                			MessageDlg('teste', mtWarning, [mbOK], 0);
                        MDO.Query.ParamByName('desc1').AsString := DMMACS.TALX.FieldByName('cpfcnpj').AsString;
                        MDO.Query.ParamByName('desc2').AsString := DMMACS.TALX.FieldByName('cod_ibge').AsString;
                        MDO.Query.ParamByName('desc3').AsString := DMMACS.TALX.FieldByName('insc_est').AsString;
                        MDO.Query.ParamByName('obs').asString := 'ORD';
                        MDO.Query.ExecSQL;

                        Try
                            MDO.Transac.CommitRetaining;
                            Result := True;
                        Except
                            MDO.Transac.RollbackRetaining;
                            Result := False;
                        End;

                        If Not DMMACS.TAlx.EOF Then
                            DMMACS.TAlx.Next;
                    End;
                End;
            End;
        End;

        //FILTRAR O TMP COM OS CLIENTES E FORNECEDORES PARA IMPRIMIR NO REGISTRO
        MDO.QConsulta.Close;
        MDO.QConsulta.SQL.Clear;
        MDO.QConsulta.SQL.Add('select distinct (tmp.desc1) as CPFCNPJ, tmp.int1 as COD_PART, tmp.desc2 as Cod_Mun, tmp.desc3 as Insc_Est, pessoa.nome, pessoa.endereco, pessoa.endnumero, pessoa.bairro');
        MDO.QConsulta.SQL.Add('from tmp');
        MDO.QConsulta.SQL.Add('left join pessoa on tmp.int1 = pessoa.cod_pessoa');
        MDO.QConsulta.SQL.Add('order by tmp.desc1');
        MDO.QConsulta.Open;

        MDO.QConsulta.First;
        While Not (MDO.QConsulta.EOF) And (controle = True) Do
        Begin
            If PararExecucao = True
            Then Begin
                Result := False;
                Exit;
            End;
            contLinhas := contLinhas + 1;
            xLinha := '';
            //Imprime Num. Registro
            xLinha := xLinha + ('|0150|');

            If MDO.QConsulta.FieldByName('COD_PART').AsString='0' Then
				MessageDlg('teste', mtWarning, [mbOK], 0);
            //Código de identificação do participante no arquivo.
            If MDO.QConsulta.FieldByName('COD_PART').AsString = ''
            Then Begin
                AddLogln(true, 1, ' [xxxx] - Código de identificação do participante não informado;');
                controle := False;
            End
            Else
                xLinha := xLinha + Trim(Copy(MDO.QConsulta.FieldByName('COD_PART').AsString, 0, 60)) + '|';

            //Nome pessoal ou empresarial do participante.
            If MDO.QConsulta.FieldByName('NOME').AsString = ''
            Then Begin
                AddLogln(true, 1, ' [xxxx] - Nome pessoal ou empresarial do participante não informado;');
                controle := False;
            End
            Else
                xLinha := xLinha + Trim(Copy(MDO.QConsulta.FieldByName('NOME').AsString, 0, 100)) + '|';

            //Código do país do participante, conforme a tabela indicada no item 3.2.1
            xLinha := xLinha + '01058|';

            //CPF ou CNPJ do participante
            If ValidaCGC(MDO.QConsulta.FieldByName('CPFCNPJ').AsString) = True // Se for CNPJ
            Then Begin
                //CNPJ do participante.
                xLinha := xLinha + Trim(Copy(MDO.QConsulta.FieldByName('CPFCNPJ').AsString, 0, 14)) + '|';
                //CPF do participante
                xLinha := xLinha + '|';
            End
            Else Begin //Se for CPF
                //CNPJ do participante.
                xLinha := xLinha + '|';
                //CPF do participante
                xLinha := xLinha + Trim(Copy(MDO.QConsulta.FieldByName('CPFCNPJ').AsString, 0, 11)) + '|';
            End;

            //Inscrição Estadual do participante
            If Trim(Copy(MDO.QConsulta.FieldByName('Insc_Est').AsString, 0, 14)) = 'ISENTO' Then
                xLinha := xLinha + '|'//Jônatas 08/10/2013 - Não pode ir para o arquivo Sped como ISENTO
            Else
                xLinha := xLinha + Trim(Copy(MDO.QConsulta.FieldByName('Insc_Est').AsString, 0, 14)) + '|';

            //Código do município, conforme a tabela IBGE
            xLinha := xLinha + Trim(Copy(MDO.QConsulta.FieldByName('Cod_Mun').AsString, 0, 7)) + '|';

            //Número de inscrição do participante na SUFRAMA.
            xLinha := xLinha + '|';

            //Logradouro e endereço do imóvel
            If MDO.QConsulta.FieldByName('endereco').AsString = ''
            Then Begin
                AddLogln(true, 1, ' [xxxx] - Logradouro e endereço do imóvel não informado;');
                controle := False;
            End
            Else
                xLinha := xLinha + Trim(Copy(MDO.QConsulta.FieldByName('endereco').AsString, 0, 60)) + '|';

            //Número do imóvel
            xLinha := xLinha + Trim(Copy(MDO.QConsulta.FieldByName('endnumero').AsString, 0, 10)) + '|';

            //Dados complementares do endereço
            xLinha := xLinha + '|';

            //Bairro em que o imóvel está situado
            xLinha := xLinha + Trim(Copy(MDO.QConsulta.FieldByName('bairro').AsString, 0, 60)) + '|';
            If xLinha='|0150|0|01058||51798930978||5003702|||||' Then
            	MessageDlg('Aqui', mtWarning, [mbOK], 0);
            contRegistro0150 := contRegistro0150 + 1;
            Writeln(xTexto, xLinha);
            If Not MDO.QConsulta.EOF Then
                MDO.QConsulta.Next;
        End;

        Result := True;
        AddLogln(true, 0, 'Registro finalizado. ');
        AddLogln(true, 0, '---------------------------------------------------------------------------------------------------------------------------');
    Except
        Result := False;
    End;
End;

//MAURO 20/06/2013 - Imprimir REGISTRO 0190: IDENTIFICAÇÃO DAS UNIDADES DE MEDIDA - TODAS AS UNIDADES ENVOLVIDAS NO SPED DEVEM ESTAR AQUI
Function TFSped.Registro0190: Boolean;
Begin
    controle := True;
    Try
        AddLogln(true, 0, '[REGISTRO 0190] - IDENTIFICAÇÃO DAS UNIDADES DE MEDIDA');
        AddLogln(true, 0, 'Iniciando... ');
        Result := True;
        //LIMPAR DOS DADOS DA TABELA TMP
        Try
            DMMACS.TMP.Close;
            DMMACS.TMP.SQL.Clear;
            DMMACS.TMP.SQL.Add('Delete from TMP');
            DMMACS.TMP.ExecSQL;
            DMMACS.Transaction.CommitRetaining;
            xCodTMP := 0;
        Except
            DMMACS.Transaction.RollbackRetaining;
            Result:=false;
            MessageDlg('Falha ao limpar tabela tmp para registro 0190', mtWarning, [mbOK], 0);
            Exit;
        End;

        //COMPRAS Alex - 17/01/2020: retorna unidades de medida para ITENS COMPRAS
        DMMACS.TALX.Close;
        DMMACS.TALX.SQL.Clear;//Jônatas 26/09/2013 - Consulta alterada por eficiência, vwpedc substituida por pedcompra
        DMMACS.TALX.SQL.Add('select distinct (unidade.sigla_unid), unidade.desc_unid');
        DMMACS.TALX.SQL.Add('from docfis');//vwpedc para docfis
        DMMACS.TALX.SQL.Add('	left join pedcompra on docfis.cod_pedido = pedcompra.cod_pedcomp');
        DMMACS.TALX.SQL.Add('	left join itenspedc on pedcompra.cod_pedcomp = itenspedc.cod_pedcompra');
        DMMACS.TALX.SQL.Add('	left join unidade on itenspedc.cod_unidade = unidade.cod_unidade');
        DMMACS.TALX.SQL.Add('where docfis.cod_periodofiscal=:periodo');
        DMMACS.TALX.ParamByName('periodo').AsInteger := DMMACS.TPeriodoFiscal.FieldByName('COD_PERIODOFISCAL').AsInteger;
        DMMACS.TALX.SQL.Add('order by unidade.sigla_unid');
        DMMACS.TALX.Open;
        If not (DMMACS.TALX.IsEmpty)
        Then Begin
            //Insere em tmp
            DMMACS.TALX.First;
            While Not DMMACS.TALX.EOF Do
            Begin
                xCodTMP := xCodTMP + 1;
                MDO.Query.Close;
                MDO.Query.SQL.Clear;
                MDO.Query.SQL.Add('Insert into TMP (cod_tmp, desc1, desc2, obs) ');
                MDO.Query.SQL.Add('	values(:cod_tmp, :desc1, :desc2, :obs)');
                MDO.Query.ParamByName('cod_tmp').AsInteger := xCodTMP;
                MDO.Query.ParamByName('desc1').AsString := DMMACS.TALX.FieldByName('sigla_unid').AsString;
                MDO.Query.ParamByName('desc2').AsString := DMMACS.TALX.FieldByName('desc_unid').AsString;
                MDO.Query.ParamByName('obs').asString := 'PC';
                MDO.Query.ExecSQL;
                DMMACS.TAlx.Next;
            End;
            Try
               MDO.Transac.CommitRetaining;
            Except
               MDO.Transac.RollbackRetaining;
               Result := False;
               MessageDlg('Falha ao inserir tmp do registro 0190 para compras', mtWarning, [mbOK], 0);
               Exit;
            End;
        End;

        //VENDAS Alex - 17/01/2020: retorna unidades de medida para ITENS DE VENDA
        DMMACS.TALX.Close;
        DMMACS.TALX.SQL.Clear;
        DMMACS.TALX.SQL.Add('select distinct (unidade.sigla_unid), unidade.desc_unid');
        DMMACS.TALX.SQL.Add('from docfissaida');
        DMMACS.TALX.SQL.Add('	left join pedvenda on docfissaida.cod_pedido = pedvenda.cod_pedvenda');
        DMMACS.TALX.SQL.Add('	left join itenspedven on pedvenda.cod_pedvenda = itenspedven.cod_pedven');
        DMMACS.TALX.SQL.Add('	left join unidade on itenspedven.cod_unidade = unidade.cod_unidade');
        DMMACS.TALX.SQL.Add('where docfissaida.cod_periodofiscal =:periodo');
        DMMACS.TALX.ParamByName('periodo').AsInteger := DMMACS.TPeriodoFiscal.FieldByName('COD_PERIODOFISCAL').AsInteger;
        DMMACS.TALX.SQL.Add('order by unidade.sigla_unid');
        DMMACS.TALX.Open;
        If not (DMMACS.TALX.IsEmpty)
        Then Begin
           DMMACS.TALX.First;
           While Not DMMACS.TALX.EOF Do
           Begin
               xCodTMP := xCodTMP + 1;
               MDO.Query.Close;
               MDO.Query.SQL.Clear;
               MDO.Query.SQL.Add('Insert into TMP (cod_tmp, desc1, desc2, obs) ');
               MDO.Query.SQL.Add('	values(:cod_tmp, :desc1, :desc2, :obs)');
               MDO.Query.ParamByName('cod_tmp').AsInteger := xCodTMP;
               MDO.Query.ParamByName('desc1').AsString := DMMACS.TALX.FieldByName('sigla_unid').AsString;
               MDO.Query.ParamByName('desc2').AsString := DMMACS.TALX.FieldByName('desc_unid').AsString;
               MDO.Query.ParamByName('obs').asString := 'PV';
               MDO.Query.ExecSQL;

               Try
                   MDO.Transac.CommitRetaining;
               Except
                   MDO.Transac.RollbackRetaining;
                   Result := False;
                   MessageDlg('Falha ao inserir tmp do registro 0190 para vendas', mtWarning, [mbOK], 0);
                   Exit;
               End;
               DMMACS.TAlx.Next;
           End;
        End;
        //ORDEM DE SERVIÇOS Alex - 17/01/2020: retorna unidades de medida para ITENS DE ORDEM DE SERVIÇOS
        DMMACS.TALX.Close;
        DMMACS.TALX.SQL.Clear;
        DMMACS.TALX.SQL.Add('select distinct (unidade.sigla_unid), unidade.desc_unid');
        DMMACS.TALX.SQL.Add('from docfisord');//de vwordem pra docfisord
        DMMACS.TALX.SQL.Add('	left join ordem on docfisord.cod_ordem = ordem.cod_ordem');
        DMMACS.TALX.SQL.Add('	left join itprodord on ordem.cod_ordem = itprodord.cod_ordem');
        DMMACS.TALX.SQL.Add('	left join estoque on itprodord.cod_estoque = estoque.cod_estoque');
        DMMACS.TALX.SQL.Add('	left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto');
        DMMACS.TALX.SQL.Add('	left join unidade on subproduto.cod_unidvenda = unidade.cod_unidade');
        DMMACS.TALX.SQL.Add('where docfisord.cod_periodofiscal =:periodo and unidade.sigla_unid is not null');//Jônatas 26/09/2013 - Evitar pegar valores nulos
        DMMACS.TALX.ParamByName('periodo').AsInteger := DMMACS.TPeriodoFiscal.FieldByName('COD_PERIODOFISCAL').AsInteger;
        DMMACS.TALX.SQL.Add('order by unidade.sigla_unid');
        DMMACS.TALX.Open;
        If not (DMMACS.TALX.IsEmpty)
        Then Begin
           DMMACS.TALX.First;
           While Not DMMACS.TALX.EOF Do
           Begin
               xCodTMP := xCodTMP + 1;
               MDO.Query.Close;
               MDO.Query.SQL.Clear;
               MDO.Query.SQL.Add('Insert into TMP (cod_tmp, desc1, desc2, obs) ');
               MDO.Query.SQL.Add('	values(:cod_tmp, :desc1, :desc2, :obs)');
               MDO.Query.ParamByName('cod_tmp').AsInteger := xCodTMP;
               MDO.Query.ParamByName('desc1').AsString := DMMACS.TALX.FieldByName('sigla_unid').AsString;
               MDO.Query.ParamByName('desc2').AsString := DMMACS.TALX.FieldByName('desc_unid').AsString;
               MDO.Query.ParamByName('obs').asString := 'ORD';
               MDO.Query.ExecSQL;
               Try
                  MDO.Transac.CommitRetaining;
               Except
                  MDO.Transac.RollbackRetaining;
                  Result := False;
                  MessageDlg('Falha ao inserir tmp do registro 0190 para ordem de serviços', mtWarning, [mbOK], 0);
                  Exit;
               End;
               DMMACS.TAlx.Next;
            End;
        End;

        If cbInventarioEstoque.Checked=true
        Then Begin
           //Alex: 17/01/2020 - Prepara unidades de medida para o caso de inventario de estoque, onde iremos inserir todos os itens
           DMMACS.TALX.Close;
           DMMACS.TALX.SQL.Clear;
           DMMACS.TALX.SQL.Add(' select distinct(unidade.sigla_unid), unidade.desc_unid ');
           DMMACS.TALX.SQL.Add(' FROM estoque ');
           DMMACS.TALX.SQL.Add(' LEFT JOIN subproduto ON estoque.cod_subprod = subproduto.cod_subproduto ');
           DMMACS.TALX.SQL.Add(' LEFT JOIN UNIDADE ON SUBPRODUTO.COD_UNIDVENDA = UNIDADE.COD_UNIDADE ');
           DMMACS.TALX.SQL.Add(' WHERE (ESTOQUE.ESTFISICO > 0) AND (SUBPRODUTO.ATIVO = ''S'') AND (ESTOQUE.VLRUNITCOMP > 0) ');
           DMMACS.TALX.SQL.Add(' ORDER BY unidade.sigla_unid ');
           DMMACS.TALX.Open;

           If not (DMMACS.TALX.IsEmpty)
           Then Begin
               DMMACS.TALX.First;
               While Not DMMACS.TALX.EOF Do
               Begin
                   xCodTMP := xCodTMP + 1;
                   MDO.Query.Close;
                   MDO.Query.SQL.Clear;
                   MDO.Query.SQL.Add('Insert into TMP (cod_tmp, desc1, desc2, obs) ');
                   MDO.Query.SQL.Add('	values(:cod_tmp, :desc1, :desc2, :obs)');
                   MDO.Query.ParamByName('cod_tmp').AsInteger := xCodTMP;
                   MDO.Query.ParamByName('desc1').AsString := DMMACS.TALX.FieldByName('sigla_unid').AsString;
                   MDO.Query.ParamByName('desc2').AsString := DMMACS.TALX.FieldByName('desc_unid').AsString;
                   MDO.Query.ParamByName('obs').asString := 'ORD';
                   MDO.Query.ExecSQL;
                   Try
                       MDO.Transac.CommitRetaining;
                   Except
                       MDO.Transac.RollbackRetaining;
                       Result := False;
                       MessageDlg('Falha ao inserir tmp do registro 0190 para inventario de estoque', mtWarning, [mbOK], 0);
                       Exit;
                   End;
                   DMMACS.TAlx.Next;
               End;
           End;
        End;
        //FILTRAR O TMP COM AS UNIDADES PARA IMPRIMIR NO REGISTRO
        MDO.QConsulta.Close;
        MDO.QConsulta.SQL.Clear;
        MDO.QConsulta.SQL.Add('select distinct (tmp.desc1) as SIGLA_UNID, tmp.desc2 as DESC_UNID');
        MDO.QConsulta.SQL.Add('from tmp');
        MDO.QConsulta.SQL.Add('where tmp.desc1 is not null');//Jônatas 26/09/2013 - Evitar pegar valores inválidos
        MDO.QConsulta.SQL.Add('order by tmp.desc1');
        MDO.QConsulta.Open;

        DMMACS.TALX.First;
        While Not (MDO.QConsulta.EOF) And (controle = True) Do
        Begin
            If ((Trim(MDO.QConsulta.FieldByName('SIGLA_UNID').AsString) <> '') And (Trim(MDO.QConsulta.FieldByName('DESC_UNID').AsString) <> ''))
            Then Begin
                If PararExecucao = True
                Then Begin
                    Result := False;
                    Exit;
                End;

                contLinhas := contLinhas + 1;
                xLinha := '';
                //Imprime Num. Registro
                xLinha := xLinha + ('|0190|');

                //Código da unidade de medida
                xLinha := xLinha + trim(Copy(MDO.QConsulta.FieldByName('SIGLA_UNID').AsString, 0, 6)) + '|';

                //Descrição da unidade de medida
                xLinha := xLinha + Trim(MDO.QConsulta.FieldByName('DESC_UNID').AsString) + '|';

                contRegistro0190 := contRegistro0190 + 1;
                Writeln(xTexto, xLinha);
            End;

            MDO.QConsulta.Next;

        End; 
        Result := True;
        AddLogln(true, 0, 'Registro finalizado. ');
        AddLogln(true, 0, '---------------------------------------------------------------------------------------------------------------------------');
    Except
        Result := False;
    End;
End;

Function TFSped.Registro0200: Boolean;
Begin
    //REGISTRO 0200: TABELA DE IDENTIFICAÇÃO DO ITEM (PRODUTO E SERVIÇOS)
    //Todos os produtos de Ordens, pedidos de compras e venda

    controle := True;
    Try
        AddLogln(true, 0, '[REGISTRO 0200] - TABELA DE IDENTIFICAÇÃO DO ITEM (PRODUTO E SERVIÇOS)');
        AddLogln(true, 0, 'Iniciando... ');

        //LIMPAR DOS DADOS DA TABELA TMP
        Try
            DMMACS.TMP.Close;
            DMMACS.TMP.SQL.Clear;
            DMMACS.TMP.SQL.Add('Delete from TMP');
            DMMACS.TMP.ExecSQL;
            DMMACS.Transaction.CommitRetaining;
            xCodTMP := 0;
        Except
            DMMACS.Transaction.RollbackRetaining;
        End;

        //Se zerou a tabela TMP executar estas operações
        //INSERÇÃO DE PRODUTOS USADOS NOS PEDIDOS DE COMPRA
        If DMMACS.TMP.IsEmpty
            Then Begin
            //CONSULTAR DADOS DA TABELA VWPEDC
            DMMACS.TALX.Close;
            DMMACS.TALX.SQL.Clear;
            //Quando está gerando inventário de estoque, buscamos todos os produtos com estoque positivo
            if cbInventarioEstoque.Checked then
            begin
              {DMMACS.TALX.SQL.Add('select distinct(estoque.cod_estoque), subproduto.descricao, unidade.sigla_unid, ');
               DMMACS.TALX.SQL.Add('subproduto.ncm, cst.icmsop, subproduto.usoconsumo, ncm.cest ');
               DMMACS.TALX.SQL.Add('from estoque ');
               DMMACS.TALX.SQL.Add('inner join subproduto on subproduto.cod_subproduto = estoque.cod_subprod ');
               DMMACS.TALX.SQL.Add('left join unidade on subproduto.cod_unidcompra = unidade.cod_unidade ');
               DMMACS.TALX.SQL.Add('left join cst on subproduto.cod_cst = cst.cod_cst ');
               DMMACS.TALX.SQL.Add('left join ncm on ncm.ncm = subproduto.ncm ');
               DMMACS.TALX.SQL.Add('where (cast(estoque.estfisico as decimal(14,4)) >= 0) AND (subproduto.ativo = ''S'') ');
               DMMACS.TALX.SQL.Add('order by estoque.cod_estoque ');}

               DMMACS.TALX.SQL.Add(' SELECT COD_ESTOQUE, DESCRICAO, SIGLA_UNID, NCM, ICMSOP, USOCONSUMO, CEST ');
               DMMACS.TALX.SQL.Add(' FROM ( ');
               DMMACS.TALX.SQL.Add('     SELECT ESTOQUE.COD_ESTOQUE, SUBPRODUTO.DESCRICAO, UNIDADE.SIGLA_UNID, ');
               DMMACS.TALX.SQL.Add('     SUBPRODUTO.NCM, CST.ICMSOP, SUBPRODUTO.USOCONSUMO, NCM.CEST ');
               DMMACS.TALX.SQL.Add('     FROM ESTOQUE ');
               DMMACS.TALX.SQL.Add('     INNER JOIN SUBPRODUTO ON SUBPRODUTO.COD_SUBPRODUTO = ESTOQUE.COD_SUBPROD ');
               DMMACS.TALX.SQL.Add('     LEFT JOIN UNIDADE ON SUBPRODUTO.COD_UNIDCOMPRA = UNIDADE.COD_UNIDADE ');
               DMMACS.TALX.SQL.Add('     LEFT JOIN CST ON SUBPRODUTO.COD_CST = CST.COD_CST ');
               DMMACS.TALX.SQL.Add('     LEFT JOIN NCM ON NCM.NCM = SUBPRODUTO.NCM ');
               DMMACS.TALX.SQL.Add('     WHERE (CAST(ESTOQUE.ESTFISICO AS DECIMAL(14,4)) > 0) AND (SUBPRODUTO.ATIVO = ''S'') ');
               DMMACS.TALX.SQL.Add('     UNION ');
               DMMACS.TALX.SQL.Add('     SELECT ESTOQUE.COD_ESTOQUE, SUBPRODUTO.DESCRICAO, UNIDADE.SIGLA_UNID, ');
               DMMACS.TALX.SQL.Add('     SUBPRODUTO.NCM, CST.ICMSOP, SUBPRODUTO.USOCONSUMO, NCM.CEST ');
               DMMACS.TALX.SQL.Add('     FROM VWPEDC ');
               DMMACS.TALX.SQL.Add('     LEFT JOIN DOCFIS ON VWPEDC.COD_PEDCOMP = DOCFIS.COD_PEDIDO ');
               DMMACS.TALX.SQL.Add('     LEFT JOIN ITENSPEDC ON VWPEDC.COD_PEDCOMP = ITENSPEDC.COD_PEDCOMPRA ');
               DMMACS.TALX.SQL.Add('     LEFT JOIN ESTOQUE ON ITENSPEDC.COD_ESTOQUE = ESTOQUE.COD_ESTOQUE ');
               DMMACS.TALX.SQL.Add('     LEFT JOIN SUBPRODUTO ON ESTOQUE.COD_SUBPROD = SUBPRODUTO.COD_SUBPRODUTO ');
               DMMACS.TALX.SQL.Add('     LEFT JOIN UNIDADE ON SUBPRODUTO.COD_UNIDCOMPRA = UNIDADE.COD_UNIDADE ');
               DMMACS.TALX.SQL.Add('     LEFT JOIN CST ON SUBPRODUTO.COD_CST = CST.COD_CST ');
               DMMACS.TALX.SQL.Add('     LEFT JOIN NCM ON NCM.NCM = SUBPRODUTO.NCM ');
               DMMACS.TALX.SQL.Add('     WHERE (DOCFIS.COD_PERIODOFISCAL =:periodo) AND (DOCFIS.NFECHAVE <> '''') ');
               DMMACS.TALX.SQL.Add('     AND ((VWPEDC.FISCO = ''NF'') OR (VWPEDC.FISCO = ''NFE'')) ');
               DMMACS.TALX.SQL.Add(' ) ');
               DMMACS.TALX.SQL.Add(' ORDER BY COD_ESTOQUE ');
               DMMACS.TALX.ParamByName('periodo').AsInteger := DMMACS.TPeriodoFiscal.FieldByName('COD_PERIODOFISCAL').AsInteger;
            end
            else begin
               DMMACS.TALX.SQL.Add(' select distinct(estoque.cod_estoque), subproduto.descricao, unidade.sigla_unid, ');
               DMMACS.TALX.SQL.Add(' subproduto.ncm, cst.icmsop, subproduto.usoconsumo, ncm.cest ');
               DMMACS.TALX.SQL.Add(' from vwpedc ');
               DMMACS.TALX.SQL.Add(' left join docfis on vwpedc.cod_pedcomp = docfis.cod_pedido ');
               DMMACS.TALX.SQL.Add(' left join itenspedc on vwpedc.cod_pedcomp = itenspedc.cod_pedcompra ');
               DMMACS.TALX.SQL.Add(' left join estoque on itenspedc.cod_estoque = estoque.cod_estoque ');
               DMMACS.TALX.SQL.Add(' left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto ');
               DMMACS.TALX.SQL.Add(' left join unidade on subproduto.cod_unidcompra = unidade.cod_unidade ');
               DMMACS.TALX.SQL.Add(' left join cst on subproduto.cod_cst = cst.cod_cst ');
               DMMACS.TALX.SQL.Add(' left join ncm on ncm.ncm = subproduto.ncm ');
               DMMACS.TALX.SQL.Add(' where (docfis.cod_periodofiscal =:periodo) AND (docfis.nfechave <> '''') ');
               DMMACS.TALX.SQL.Add(' AND (( vwpedc.fisco = ''NF'') OR (vwpedc.fisco = ''NFE'')) ');
               DMMACS.TALX.ParamByName('periodo').AsInteger := DMMACS.TPeriodoFiscal.FieldByName('COD_PERIODOFISCAL').AsInteger;
               DMMACS.TALX.SQL.Add('order by estoque.cod_estoque');
            end;
            DMMACS.TALX.Open;
            DMMACS.TALX.First;
            While Not DMMACS.TALX.EOF Do
            Begin
                xCodTMP := xCodTMP + 1;
                MDO.Query.Close;
                MDO.Query.SQL.Clear;
                MDO.Query.SQL.Add('Insert into TMP (cod_tmp, int1, int2, int3, desc500, desc1, desc2, desc3, obs ) ');
                MDO.Query.SQL.Add('	values(:cod_tmp, :int1, :int2, :int3, :desc500, :desc1, :desc2, :desc3, :obs)');
                MDO.Query.ParamByName('cod_tmp').AsInteger := xCodTMP;
                MDO.Query.ParamByName('int1').AsInteger := DMMACS.TALX.FieldByName('cod_estoque').AsInteger;
                MDO.Query.ParamByName('int2').AsInteger := DMMACS.TALX.FieldByName('ncm').AsInteger;
                MDO.Query.ParamByName('int3').AsInteger := DMMACS.TALX.FieldByName('icmsop').AsInteger;
                MDO.Query.ParamByName('desc500').AsString := DMMACS.TALX.FieldByName('cest').AsString;
                MDO.Query.ParamByName('desc1').AsString := DMMACS.TALX.FieldByName('descricao').AsString;
                MDO.Query.ParamByName('desc2').AsString := DMMACS.TALX.FieldByName('sigla_unid').AsString;
                MDO.Query.ParamByName('desc3').AsString := DMMACS.TALX.FieldByName('usoconsumo').AsString;
                MDO.Query.ParamByName('obs').asString := 'PC';
                MDO.Query.ExecSQL;
                Try
                    MDO.Transac.CommitRetaining;
                    Result := True;
                Except
                    MDO.Transac.RollbackRetaining;
                    Result := False;
                End;

                If Not DMMACS.TAlx.EOF Then
                    DMMACS.TAlx.Next;
            End;
        End;

        //FILTRAR O TMP COM OS ITENS
        MDO.QConsulta.Close;
        MDO.QConsulta.SQL.Clear;
        MDO.QConsulta.SQL.Add('select distinct (tmp.int1) as COD_ITEM, tmp.int2 as NCM, tmp.desc500 as CEST, tmp.int3 as ICMSOP, tmp.desc1 as DESCRICAO, tmp.desc2 as SIGLA_UNID, tmp.desc3 as USOCONSUMO ');
        MDO.QConsulta.SQL.Add('from tmp');
        MDO.QConsulta.SQL.Add('order by tmp.int1');
        MDO.QConsulta.Open;

        DMMACS.TALX.First;
        While Not (MDO.QConsulta.EOF) And (controle = True) Do
        Begin

            If PararExecucao = True
                Then Begin
                Result := False;
                Exit;
            End;

            contLinhas := contLinhas + 1;
            xLinha := '';
            //01 - Imprime Num. Registro
            xLinha := xLinha + ('|0200|');

            //02 - Código do item
            If MDO.QConsulta.FieldByName('COD_ITEM').AsString = ''
                Then Begin
                AddLogln(true, 1, ' [xxxx] - Código do item não informado');
                controle := False;
            End
            Else 
                xLinha := xLinha + trim(Copy(MDO.QConsulta.FieldByName('COD_ITEM').AsString, 0, 60)) + '|';

            //03 - Descrição do item
            If MDO.QConsulta.FieldByName('DESCRICAO').AsString = ''
                Then Begin
                AddLogln(true, 1, ' [xxxx] - Código do item não informado');
                controle := False;
            End
            Else
                xLinha := xLinha + Trim(MDO.QConsulta.FieldByName('DESCRICAO').AsString) + '|';

            //04 - Representação alfanumérico do código de barra do produto, se houver
            xLinha := xLinha + '0|';

            //05 - Código anterior do item com relação à última informação apresentada.
            xLinha := xLinha + '|';//Jônatas 23/09/2013 - Não preencher. Se houver a informação, esta deve ser prestada no registro 0205.

            //06 - Unidade de medida utilizada na quantificação de estoques.
            If MDO.QConsulta.FieldByName('SIGLA_UNID').AsString = ''
                Then Begin
                AddLogln(true, 1, ' [xxxx] - Unidade de medida utilizada na quantificação de estoques não informada');
                controle := False;
            End
            Else
                xLinha := xLinha + trim(Copy(MDO.QConsulta.FieldByName('SIGLA_UNID').AsString, 0, 6)) + '|';

            //07 - Tipo do item – Atividades Industriais, Comerciais e Serviços
            If MDO.QConsulta.FieldByName('USOCONSUMO').AsString = ''
            Then Begin
				 xLinha := xLinha + '00|'; //Revenda
            End
            Else Begin
                If (MDO.QConsulta.FieldByName('USOCONSUMO').AsString = '1') Then
                    xLinha := xLinha + '07|' //uso consumo
                Else
                    xLinha := xLinha + '00|'; //Revenda
            End;


            //08 - Código da Nomenclatura Comum do Mercosul
            If MDO.QConsulta.FieldByName('NCM').AsString = ''
                Then Begin
                AddLogln(true, 1, ' [xxxx] - Código da unidade de medida não informado');
                controle := False;
            End
            Else
                xLinha := xLinha + trim(Copy(MDO.QConsulta.FieldByName('NCM').AsString, 0, 8)) + '|';

            //09 - Código EX, conforme a TIPI
            xLinha := xLinha + ('000|');
            //10 - Código do gênero do item, conforme a Tabela 4.2.1
            xLinha := xLinha + ('00|');
            //11 - Código do serviço conforme lista do Anexo I da Lei Complementar Federal nº 116/03.
            xLinha := xLinha + ('00.00|');
            //12 - Alíquota de ICMS aplicável ao item nas operações internas
            xLinha := xLinha + ALIQ_ICMS + '|';
            //13 - Código CEST
            xLinha := xLinha + MDO.QConsulta.FieldByName('CEST').AsString + '|';

            contRegistro0200 := contRegistro0200 + 1;
            Writeln(xTexto, xLinha);
            If Not MDO.QConsulta.EOF Then
                MDO.QConsulta.Next;

        End;
        Result := True;
        AddLogln(true, 0, 'Registro finalizado. ');
        AddLogln(true, 0, '---------------------------------------------------------------------------------------------------------------------------');


    Except
        Result := False;
    End;
End;

// ALEX 30/07/2013 - REGISTRO 0400: TABELA DE INFORMAÇÃO COM NATUREZAS DE OPERAÇÃO CONTIDA NAS NOTAS

Function TFSped.Registro0400: Boolean;
Begin
    Result := True;
    Try
        AddLogln(true, 0, '[REGISTRO 0400] - TABELA DE NATUREZA DE OPERAÇÃO)');
        AddLogln(true, 0, 'Iniciando... ');

        //LIMPAR DOS DADOS DA TABELA TMP
        Try
            DMMACS.TMP.Close;
            DMMACS.TMP.SQL.Clear;
            DMMACS.TMP.SQL.Add('Delete from TMP');
            DMMACS.TMP.ExecSQL;
            DMMACS.Transaction.CommitRetaining;
            xCodTMP := 0;
        Except
            DMMACS.Transaction.RollbackRetaining;
        End;

        //Se zerou a tabela TMP executar estas operações
        //INSERÇÃO DOS DADOS ADICIONAIS USADOS NOS PEDIDOS DE COMPRA
        If DMMACS.TMP.IsEmpty
        Then Begin 

            //CONSULTAR DADOS DE PEDIDO DE COMPRA
            {DMMACS.TALX.Close;
            DMMACS.TALX.SQL.Clear;//Jônatas 25/09/2013 - Consulta alterada pois não estava correta
            DMMACS.TALX.SQL.Add(' select distinct(cfop.cfop), cfop.cod_cfop, cfop.descricao from docfis ');
            DMMACS.TALX.SQL.Add(' left join itenspedc on docfis.cod_pedido = itenspedc.cod_pedcompra ');
            DMMACS.TALX.SQL.Add(' left join cfop on itenspedc.cfop = cfop.cfop ');
            DMMACS.TALX.SQL.Add(' Where docfis.cod_periodofiscal=:Periodo and cfop.cfop is not null order by cfop.cfop');//Jônatas 26/09/2013 - Evitar pegar valores nulos
            DMMACS.TALX.ParamByName('periodo').AsInteger := DMMACS.TPeriodoFiscal.FieldByName('COD_PERIODOFISCAL').AsInteger;
            DMMACS.TALX.Open;}

            DMFiscal.SpedC170.First;
            While Not DMFiscal.SpedC170.EOF Do
            Begin

                xCodTMP := xCodTMP + 1;
                MDO.Query.Close;
                MDO.Query.SQL.Clear;
                MDO.Query.SQL.Add('Insert into TMP (cod_tmp, int1, desc1, desc2) ');
                MDO.Query.SQL.Add('	values(:cod_tmp, :int1, :desc1, :desc2)');
                MDO.Query.ParamByName('cod_tmp').AsInteger := xCodTMP;
                MDO.Query.ParamByName('int1').AsInteger := DMFiscal.SpedC170.FieldByName('COD_NAT').AsInteger;
                MDO.Query.ParamByName('desc1').AsString := DMFiscal.SpedC170.FieldByName('DESC_CFOP').AsString;
                MDO.Query.ParamByName('desc2').AsString := DMFiscal.SpedC170.FieldByName('CFOP').AsString;
                MDO.Query.ExecSQL;

                DMFiscal.SpedC170.Next;

            End;

            Try
               MDO.Transac.CommitRetaining;
               Result := True;
            Except
               MDO.Transac.RollbackRetaining;
               Result := False;
            End;

            //Jônatas 25/09/2013 - Precisa ser referenciado em pelo menos um bloco
            
            //CONSULTAR DADOS DE PEDIDO DE VENDA
            {DMMACS.TALX.Close;
            DMMACS.TALX.SQL.Clear;//Jônatas 25/09/2013 - Incluída consulta de venda
            DMMACS.TALX.SQL.Add(' select distinct(cfop.cfop), cfop.cod_cfop, cfop.descricao from docfissaida ');
            DMMACS.TALX.SQL.Add(' left join itenspedven on docfissaida.cod_pedido = itenspedven.cod_pedven ');
            DMMACS.TALX.SQL.Add(' left join cfop on itenspedven.cfop = cfop.cfop ');
            DMMACS.TALX.SQL.Add(' Where docfissaida.cod_periodofiscal=:Periodo order by cfop.cfop');
            DMMACS.TALX.ParamByName('periodo').AsInteger := DMMACS.TPeriodoFiscal.FieldByName('COD_PERIODOFISCAL').AsInteger;
            DMMACS.TALX.Open;

            DMMACS.TALX.First;
            While Not DMMACS.TALX.EOF Do
            Begin

                xCodTMP := xCodTMP + 1;
                MDO.Query.Close;
                MDO.Query.SQL.Clear;
                MDO.Query.SQL.Add('Insert into TMP (cod_tmp, int1, desc1, desc2) ');
                MDO.Query.SQL.Add('	values(:cod_tmp, :int1, :desc1, :desc2)');
                MDO.Query.ParamByName('cod_tmp').AsInteger := xCodTMP;
                MDO.Query.ParamByName('int1').AsInteger := DMMACS.TALX.FieldByName('cod_cfop').AsInteger;
                MDO.Query.ParamByName('desc1').AsString := DMMACS.TALX.FieldByName('descricao').AsString;
                MDO.Query.ParamByName('desc2').AsString := DMMACS.TALX.FieldByName('cfop').AsString;
                MDO.Query.ExecSQL;
                Try
                    MDO.Transac.CommitRetaining;
                    Result := True;
                Except
                    MDO.Transac.RollbackRetaining;
                    Result := False;
                End;

                If Not DMMACS.TAlx.EOF Then
                    DMMACS.TAlx.Next;

            End;}

            //Jônatas 25/09/2013 - Precisa ser referenciado em pelo menos um bloco

            //CONSULTAR ORDENS DE SERVIÇO
            {DMMACS.TALX.Close;
            DMMACS.TALX.SQL.Clear;//Jônatas 25/09/2013 - Incluída consulta de ordens de serviço
            DMMACS.TALX.SQL.Add(' select distinct(cfop.cfop), cfop.cod_cfop, cfop.descricao from docfisord ');
            DMMACS.TALX.SQL.Add(' left join itprodord on docfisord.cod_ordem = itprodord.cod_ordem ');
            DMMACS.TALX.SQL.Add(' left join cfop on itprodord.cfop = cfop.cfop ');
            DMMACS.TALX.SQL.Add(' Where docfisord.cod_periodofiscal=:Periodo order by cfop.cfop');
            DMMACS.TALX.ParamByName('periodo').AsInteger := DMMACS.TPeriodoFiscal.FieldByName('COD_PERIODOFISCAL').AsInteger;
            DMMACS.TALX.Open;

            DMMACS.TALX.First;
            While Not DMMACS.TALX.EOF Do
            Begin

                xCodTMP := xCodTMP + 1;
                MDO.Query.Close;
                MDO.Query.SQL.Clear;
                MDO.Query.SQL.Add('Insert into TMP (cod_tmp, int1, desc1, desc2) ');
                MDO.Query.SQL.Add('	values(:cod_tmp, :int1, :desc1, :desc2)');
                MDO.Query.ParamByName('cod_tmp').AsInteger := xCodTMP;
                MDO.Query.ParamByName('int1').AsInteger := DMMACS.TALX.FieldByName('cod_cfop').AsInteger;
                MDO.Query.ParamByName('desc1').AsString := DMMACS.TALX.FieldByName('descricao').AsString;
                MDO.Query.ParamByName('desc2').AsString := DMMACS.TALX.FieldByName('cfop').AsString;
                MDO.Query.ExecSQL;
                Try
                    MDO.Transac.CommitRetaining;
                    Result := True;
                Except
                    MDO.Transac.RollbackRetaining;
                    Result := False;
                End;

                If Not DMMACS.TAlx.EOF Then
                    DMMACS.TAlx.Next;

            End;}

        End;


        //FILTRAR O TMP COM OS CLIENTES E FORNECEDORES PARA IMPRIMIR NO REGISTRO
        MDO.QConsulta.Close;
        MDO.QConsulta.SQL.Clear;
        MDO.QConsulta.SQL.Add('select distinct(tmp.desc2) CFOP, tmp.int1 COD_CFOP, tmp.desc1 DESCRICAO ');
		 MDO.QConsulta.SQL.Add('from tmp order by tmp.desc2');
        MDO.QConsulta.Open;

        DMMACS.TALX.First;
        While Not (MDO.QConsulta.EOF) And (controle = True) Do
        Begin

            If PararExecucao = True
                Then Begin
                Result := False;
                Exit;
            End;

            contLinhas := contLinhas + 1;
            xLinha := '';
            //Imprime Num. Registro
            xLinha := xLinha + ('|0400|');


            //Código da informação complementar do documento fiscal.
            If MDO.QConsulta.FieldByName('COD_CFOP').AsString = ''
                Then Begin
                AddLogln(true, 1, ' [xxxx] - Código da natureza da operação do documento fiscal não informado');
                controle := False;
            End
            Else
                xLinha := xLinha + trim(Copy(MDO.QConsulta.FieldByName('COD_CFOP').AsString, 0, 10)) + '|' + trim(Copy(MDO.QConsulta.FieldByName('DESCRICAO').AsString, 0, 100)) + '|';

            contRegistro0400 := contRegistro0400 + 1;
            Writeln(xTexto, xLinha);
            If Not MDO.QConsulta.EOF Then
                MDO.QConsulta.Next;
        End;
        Result := True;
        AddLogln(true, 0, 'Registro finalizado. ');
        AddLogln(true, 0, '---------------------------------------------------------------------------------------------------------------------------');
    Except
        Result := False;
    End;
End;

// MAURO 26/06/2013 - REGISTRO 0450: TABELA DE INFORMAÇÃO COMPLEMENTAR DO DOCUMENTO FISCAL

Function TFSped.Registro0450: Boolean;
Var
    Aux1, aux2: String;
Begin
    controle := True;
    Result := True;
    Try
        AddLogln(true, 0, '[REGISTRO 0450] - TABELA DE INFORMAÇÃO COMPLEMENTAR DO DOCUMENTO FISCAL)');
        AddLogln(true, 0, 'Iniciando... ');

        //LIMPAR DOS DADOS DA TABELA TMP
        Try
            DMMACS.TMP.Close;
            DMMACS.TMP.SQL.Clear;
            DMMACS.TMP.SQL.Add('Delete from TMP');
            DMMACS.TMP.ExecSQL;
            DMMACS.Transaction.CommitRetaining;
            xCodTMP := 0;
        Except
            DMMACS.Transaction.RollbackRetaining;
        End;

        //Se zerou a tabela TMP executar estas operações
        //INSERÇÃO DOS DADOS ADICIONAIS USADOS NOS PEDIDOS DE COMPRA
        If DMMACS.TMP.IsEmpty
            Then Begin

            //CONSULTAR DADOS DA TABELA VWPEDC
            DMMACS.TALX.Close;
            DMMACS.TALX.SQL.Clear;
            DMMACS.TALX.SQL.Add(' select docfis.cod_docfisc as COD_INF,docfis.obs ');
            DMMACS.TALX.SQL.Add(' from docfis ');
            DMMACS.TALX.SQL.Add(' left join pedcompra on docfis.cod_pedido = pedcompra.cod_pedcomp ');
            DMMACS.TALX.SQL.Add(' where docfis.cod_periodofiscal =:periodo and docfis.obs is not null ');
            DMMACS.TALX.SQL.Add(' AND (( pedcompra.fisco = ''NF'') OR (pedcompra.fisco = ''NFE'')) and (pedcompra.situacao = ''FECHADO'') ');//Jônatas 30/09/2013 - Adicionado condição para ser equivalente a do c100
            DMMACS.TALX.SQL.Add(' AND ((docfis.nfechave <> '+ #39 + '' + #39 + ') or (docfis.nfechave is not null)) ');
            DMMACS.TALX.ParamByName('periodo').AsInteger := DMMACS.TPeriodoFiscal.FieldByName('COD_PERIODOFISCAL').AsInteger;
            DMMACS.TALX.Open;

            DMMACS.TALX.First;
            While Not DMMACS.TALX.EOF Do
            Begin
                xCodTMP := xCodTMP + 1;
                MDO.Query.Close;
                MDO.Query.SQL.Clear;
                MDO.Query.SQL.Add(' Insert into TMP (cod_tmp, int1, desc500, obs) ');
                MDO.Query.SQL.Add('	values(:cod_tmp, :int1, :desc500, :obs) ');
                MDO.Query.ParamByName('cod_tmp').AsInteger := xCodTMP;
                MDO.Query.ParamByName('int1').AsInteger := DMMACS.TALX.FieldByName('cod_inf').AsInteger;
                MDO.Query.ParamByName('desc500').AsString := Copy(DMMACS.TALX.FieldByname('obs').AsString, 0, 500);//DMMACS.TALX.FieldByName('dados').AsString;//alterado aqui
                MDO.Query.ParamByName('obs').AsString := 'PC';
                MDO.Query.SQL.Text;
                MDO.Query.ExecSQL;
                Try
                    MDO.Transac.CommitRetaining;
                    Result := True;
                Except
                    MDO.Transac.RollbackRetaining;
                    Result := False;
                End;
                If Not DMMACS.TAlx.EOF Then
                    DMMACS.TAlx.Next;

            End;

            //INSERÇÃO DOS DADOS ADICIONAIS USADOS NOS PEDIDOS DE VENDA
            If Result = True
                Then Begin
                //CONSULTAR DADOS DA TABELA VWPEDV
                DMMACS.TALX.Close;
                DMMACS.TALX.SQL.Clear;
                DMMACS.TALX.SQL.Add(' select docfissaida.cod_docfisc as COD_INF,docfissaida.reservfisc01, docfissaida.dadosad01 ');
                DMMACS.TALX.SQL.Add(' from docfissaida ');
                DMMACS.TALX.SQL.Add(' left join pedvenda on docfissaida.cod_pedido = pedvenda.cod_pedvenda ');
                DMMACS.TALX.SQL.Add(' where docfissaida.cod_periodofiscal =:periodo and ((docfissaida.reservfisc01 is not null) or (docfissaida.dadosad01 is not null)) ');
                DMMACS.TALX.SQL.Add(' AND (( pedvenda.fisco = ''NF'') OR (pedvenda.fisco = ''NFE'')) and (pedvenda.situacao = ''FECHADO'') ');//Jônatas 30/09/2013 - Adicionado condição para ser equivalente a do c100
                DMMACS.TALX.SQL.Add(' AND ((docfissaida.nfechave <> '+ #39 + '' + #39 + ') or (docfissaida.nfechave is not null)) ');
                DMMACS.TALX.ParamByName('periodo').AsInteger := DMMACS.TPeriodoFiscal.FieldByName('COD_PERIODOFISCAL').AsInteger;
                DMMACS.TALX.Open;

                DMMACS.TALX.First;
                While Not DMMACS.TALX.EOF Do
                Begin
                    xCodTMP := xCodTMP + 1;
                    MDO.Query.Close;
                    MDO.Query.SQL.Clear;
                    MDO.Query.SQL.Add('Insert into TMP (cod_tmp, int1, desc500, obs) ');
                    MDO.Query.SQL.Add('	values(:cod_tmp, :int1, :desc500, :obs)');
                    MDO.Query.ParamByName('cod_tmp').AsInteger := xCodTMP;
                    MDO.Query.ParamByName('int1').AsInteger := DMMACS.TALX.FieldByName('cod_inf').AsInteger;
                    MDO.Query.ParamByName('desc500').AsString := Trim(Copy(DMMACS.TALX.FieldByname('dadosad01').AsString+DMMACS.TALX.FieldByname('reservfisc01').AsString,0,500));//DMMACS.TALX.FieldByName('dados').AsString;//alterado aqui
                    MDO.Query.ParamByName('obs').asString := 'PV';
                    MDO.Query.ExecSQL;

                    Try
                        MDO.Transac.CommitRetaining;
                        Result := True;
                    Except
                        MDO.Transac.RollbackRetaining;
                        Result := False;
                    End;

                    If Not DMMACS.TAlx.EOF Then
                        DMMACS.TAlx.Next;

                End;

                //INSERÇÃO DOS DADOS ADICIONAIS USADOS NAS ORDENS
                If Result = True
                    Then Begin
                    //CONSULTAR DADOS DA TABELA VWORDEM

                    DMMACS.TALX.Close;
                    DMMACS.TALX.SQL.Clear;
                    DMMACS.TALX.SQL.Add('select docfisord.cod_docfiscord as COD_INF, docfisord.reservfisc01, docfisord.dadosad01');
                    DMMACS.TALX.SQL.Add('from docfisord');
                    DMMACS.TALX.SQL.Add('left join ordem on docfisord.cod_ordem = ordem.cod_ordem');
                    DMMACS.TALX.SQL.Add('where docfisord.cod_periodofiscal =:periodo and ((docfisord.reservfisc01 is not null) or (docfisord.dadosad01 is not null))');
                    DMMACS.TALX.SQL.Add('AND (( ordem.fisco = ''NF'') OR (ordem.fisco = ''NFE'')) and (docfisord.numdocfis is not null) and (ordem.status = ''FECHADO'')');//Jônatas 30/09/2013 - Adicionado condição para ser equivalente a do c100
                    DMMACS.TALX.SQL.Add('AND ((docfisord.nfechave <> '+ #39 + '' + #39 + ') OR (docfisord.nfechave is not null))');
                    DMMACS.TALX.ParamByName('periodo').AsInteger := DMMACS.TPeriodoFiscal.FieldByName('COD_PERIODOFISCAL').AsInteger;
                    DMMACS.TALX.Open;

                    DMMACS.TALX.First;
                    While Not DMMACS.TALX.EOF Do
                    Begin
                           
                        xCodTMP := xCodTMP + 1;
                        MDO.Query.Close;
                        MDO.Query.SQL.Clear;
                        MDO.Query.SQL.Add('Insert into TMP (cod_tmp, int1, desc500, obs) ');
                        MDO.Query.SQL.Add('	values(:cod_tmp, :int1, :desc500, :obs)');
                        MDO.Query.ParamByName('cod_tmp').AsInteger := xCodTMP;
                        MDO.Query.ParamByName('int1').AsInteger := DMMACS.TALX.FieldByName('cod_inf').AsInteger;
                        MDO.Query.ParamByName('desc500').AsString := Trim(Copy(DMMACS.TALX.FieldByname('dadosad01').AsString+DMMACS.TALX.FieldByname('reservfisc01').AsString,0,500));
                        MDO.Query.ParamByName('obs').asString := 'ORD';
                        MDO.Query.ExecSQL;  
                        Try
                            MDO.Transac.CommitRetaining;
                            Result := True;
                        Except
                            MDO.Transac.RollbackRetaining;
                            Result := False;
                        End;

                        If Not DMMACS.TAlx.EOF Then
                            DMMACS.TAlx.Next;
                    End;
                End;
            End;
        End;

        //Edmar - 18/03/2014 - SQL corrigida por buscar o campo errado no banco de dados
        MDO.QConsulta.Close;
        MDO.QConsulta.SQL.Clear;
        MDO.QConsulta.SQL.Add('select tmp.desc500 as ADICIONAL, tmp.int1 as COD_INF, tmp.obs ');
        MDO.QConsulta.SQL.Add('from tmp where tmp.desc500 is not null');//Jônatas 27/09/2013 - Adicionado condição de null
        MDO.QConsulta.SQL.Add('order by tmp.desc500');
        MDO.QConsulta.Open;
        
        //

        MDO.QConsulta.First;
        While Not (MDO.QConsulta.EOF) And (controle = True) Do
        Begin
            If PararExecucao = True
                Then Begin
                Result := False;
                Exit;
            End;
            If trim(MDO.QConsulta.FieldByName('ADICIONAL').AsString) <> ''
            Then Begin
                contLinhas := contLinhas + 1;
                xLinha := '';
                //01 - Imprime Num. Registro
                xLinha := xLinha + ('|0450|');

                //02 - Código da informação complementar do documento fiscal.
                If MDO.QConsulta.FieldByName('obs').AsString = 'ORD' Then
                    xLinha := xLinha + 'O' + trim(Copy(MDO.QConsulta.FieldByName('COD_INF').AsString, 0, 6)) + '|'
                Else begin
                    If MDO.QConsulta.FieldByName('obs').AsString = 'PC' Then
                        xLinha := xLinha + 'C' + trim(Copy(MDO.QConsulta.FieldByName('COD_INF').AsString, 0, 6)) + '|'
                    Else
                        xLinha := xLinha + 'V' + trim(Copy(MDO.QConsulta.FieldByName('COD_INF').AsString, 0, 6)) + '|';
                End;
                //03 - Texto livre da informação complementar existente no documento fiscal
                //Edmar - 18/03/2014 - Instrução corrigida para diminuir o tamanho das informações adicionais e passar na validação
                xLinha := xLinha + Copy(trim(StringReplace(MDO.QConsulta.FieldByName('ADICIONAL').AsString, 'substituição Tributária', 'Subst. Tribut.', [rfReplaceAll, rfIgnoreCase])),0,250) + '|';
                contRegistro0450 := contRegistro0450 + 1;
                Writeln(xTexto, xLinha);
            End;
            If Not MDO.QConsulta.EOF Then
                MDO.QConsulta.Next;
        End;
        Result := True;
        AddLogln(true, 0, 'Registro finalizado. ');
        AddLogln(true, 0, '---------------------------------------------------------------------------------------------------------------------------');
    Except
        Result := False;
    End;
End;
//MAURO 27/06/2013 - Imprimir REGISTRO 0990: ENCERRAMENTO DO BLOCO 0

Function TFSped.Registro0990: Boolean;
Begin
    Try
        AddLogln(true, 0, '[REGISTRO 0990] - ENCERRAMENTO DO BLOCO 0');
        AddLogln(true, 0, 'Iniciando... ');

        contLinhas := contLinhas + 1;
        xLinha := '';
        //Imprime Num. Registro
        xLinha := xLinha + '|0990|';
        //Quantidade total de linhas do Bloco 0
        xlinha := xLinha + IntToStr(contLinhas) + '|';
        contTotalLinhas := contTotalLinhas + contLinhas;

        contRegistro0990 := contRegistro0990 + 1;
        Writeln(xTexto, xLinha);
        Result := True;
        AddLogln(true, 0, 'Registro finalizado. ');
        AddLogln(true, 0, '---------------------------------------------------------------------------------------------------------------------------');
    Except
        Result := False;
    End;

End;


//REGISTRO B001: ABERTURA DO BLOCO B

Function TFSped.RegistroB001: Boolean;
Begin
    //Zera o contador de linhas dos Blocos
    contLinhas := 0;
    VL_INV := 0;
    Try
        AddLogln(true, 0, '---------------------------------------------------------------------------------------------------------------------------');
        AddLogln(true, 0, '[REGISTRO B001] - ABERTURA DO BLOCO B');
        AddLogln(true, 0, 'Iniciando... ');

        contLinhas := contLinhas + 1;
        xLinha := '';
        //Imprime Num. Registro
        xLinha := xLinha + '|B001|';

        //IND_MOV Indicador de movimento: 0- Bloco com dados informados; 1- Bloco sem dados informados
        xlinha := xLinha + '1|';

        contRegistroB001 := contRegistroB001 + 1;
        Writeln(xTexto, xLinha);
        Result := True;
        AddLogln(true, 0, 'Registro finalizado. ');
    Except
        Result := False;
    End;

End;

//MAURO - Imprimir REGISTRO B990: ENCERRAMENTO DO BLOCO B

Function TFSped.RegistroB990: Boolean;
Begin
    Try
        AddLogln(true, 0, '[REGISTRO B990] - ENCERRAMENTO DO BLOCO B');
        AddLogln(true, 0, 'Iniciando... ');

        contLinhas := contLinhas + 1;
        xLinha := '';
        //Imprime Num. Registro
        xLinha := xLinha + '|B990|';
        //Quantidade total de linhas do Bloco 0
        xlinha := xLinha + IntToStr(contLinhas) + '|';
        contTotalLinhas := contTotalLinhas + contLinhas;

        contRegistroB990 := contRegistroB990 + 1;
        Writeln(xTexto, xLinha);
        Result := True;
        AddLogln(true, 0, 'Registro finalizado. ');
        AddLogln(true, 0, '---------------------------------------------------------------------------------------------------------------------------');
    Except
        Result := False;
    End;
End;


//MAURO 27/06/2013 - Imprimir REGISTRO C001: ABERTURA DO BLOCO C

Function TFSped.RegistroC001: Boolean;
Begin
    //Zera o contador de linhas dos Blocos
    contLinhas := 0;
    Try
        AddLogln(true, 0, '---------------------------------------------------------------------------------------------------------------------------');
        AddLogln(true, 0, '[REGISTRO C001] - ABERTURA DO BLOCO C');
        AddLogln(true, 0, 'Iniciando... ');

        contLinhas := contLinhas + 1;
        xLinha := '';
        //Imprime Num. Registro
        xLinha := xLinha + '|C001|';

        //Indicador de movimento
        If cbIndicadorMovimentoC.Text = ''
            Then Begin
            AddLogln(true, 1, ' [xxxx] - Indicador de movimento não informado');
        End
        Else Begin
            If cbIndicadorMovimentoC.Text = '0 - Bloco com dados informados'
                Then Begin
                xlinha := xLinha + '0|';
                EncerrarBloco := False;
            End
            Else Begin
                xlinha := xLinha + '1|';
                EncerrarBloco := True;
            End;
        End;

        contRegistroC001 := contRegistroC001 + 1;
        Writeln(xTexto, xLinha);
        Result := True;
        AddLogln(true, 0, 'Registro finalizado. ');
        AddLogln(true, 0, '---------------------------------------------------------------------------------------------------------------------------');
    Except
        Result := False;
    End;
End;

//C190: Registro Analitico do Documento Fiscal

Function TFSped.RegistroC190(CodigoGerador: Integer): Boolean;
Begin
    Try
        //////////////////////////////////////////////////////////////////////////////////
        // REGISTRO C190: REGISTRO ANALÍTICO DO DOCUMENTO (CÓDIGO 01, 1B, 04 ,55 e 65). //
        //////////////////////////////////////////////////////////////////////////////////
        ValoresAdicionais := 0;
        If MDO.QConsulta.FieldByName('IND_OPER').AsString = 'PC'
            Then Begin
            //Filtra a tabela docfis para fazer a soma dos valores adicionais referente documento fiscal
            DMFiscal.TAlx2.Close;
            DMFiscal.TAlx2.SQL.Clear;
            DMFiscal.TAlx2.SQL.Add('select docfis.cod_docfisc as CODIGO_FISCAL, docfis.vlrfrete as FRETE, docfis.vlrseg as SEGURO, docfis.vlroutros as OUTROS, docfis.vlrtotdocnf as TOTALNOTA, docfis.vlrtotprod as TOTALPRODNOTA');
            DMFiscal.TAlx2.SQL.Add('from docfis');
            DMFiscal.TAlx2.SQL.Add('	left join vwpedc on docfis.cod_pedido = vwpedc.cod_pedcomp');
            DMFiscal.TAlx2.SQL.Add('where (docfis.cod_docfisc=:codigo) AND (( vwpedc.fisco = ' + #39 + 'NF' + #39 + ') OR (vwpedc.fisco = ' + #39 + 'NFE' + #39 + '))');
            DMFiscal.TAlx2.ParamByName('codigo').AsInteger := CodigoGerador;
            DMFiscal.TAlx2.Open;
            TOTALPRODNOTA := DMFiscal.TAlx2.FieldByName('TOTALPRODNOTA').AsCurrency;
            TOTALNOTA := DMFiscal.TAlx2.FieldByName('TOTALNOTA').AsCurrency;
            //valores de fretes, seguros e outras despesas acessórias
            ValoresAdicionais := DMFiscal.TAlx2.FieldByName('FRETE').AsCurrency + DMFiscal.TAlx2.FieldByName('SEGURO').AsCurrency + DMFiscal.TAlx2.FieldByName('OUTROS').AsCurrency;

            //Filtra os itens dos documentos fiscais totalizados e agrupados por CST, CFOP e Alíquota de ICMS
            DMMACS.TALX.Close;
            DMMACS.TALX.SQL.Clear;
            DMMACS.TALX.SQL.Add('select itenspedc.cfop as CFOP, cst.cod_sit_trib as CST_ICMS, itenspedc.aliqicms as ALIQ_ICMS, SUM(itenspedc.baseicms) as VL_BC_ICMS, SUM(itenspedc.valortotal) as TOTAL,');
            DMMACS.TALX.SQL.Add('	SUM(itenspedc.vlricms) as VL_ICMS, SUM(itenspedc.baseicmssubs) as VL_BC_ICMS_ST, SUM(itenspedc.vlricmssubs) as VL_ICMS_ST, SUM(itenspedc.vlripi) as VL_IPI');
            DMMACS.TALX.SQL.Add('from itenspedc');
            DMMACS.TALX.SQL.Add('	left join vwpedc on itenspedc.cod_pedcompra = vwpedc.cod_pedcomp');
            DMMACS.TALX.SQL.Add('	left join docfis on vwpedc.cod_pedcomp = docfis.cod_pedido');
            DMMACS.TALX.SQL.Add('	left join estoque on itenspedc.cod_estoque = estoque.cod_estoque');
            DMMACS.TALX.SQL.Add('	left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto');
            DMMACS.TALX.SQL.Add('	left join cst on subproduto.cod_cst = cst.cod_cst');
            DMMACS.TALX.SQL.Add('where (docfis.cod_docfisc=:codigo) AND (( vwpedc.fisco = ' + #39 + 'NF' + #39 + ') OR (vwpedc.fisco = ' + #39 + 'NFE' + #39 + '))');
            DMMACS.TALX.ParamByName('codigo').AsInteger := CodigoGerador;
            DMMACS.TALX.SQL.Add('GROUP BY itenspedc.aliqicms, itenspedc.cfop, cst.cod_sit_trib ');
            DMMACS.TALX.Open;
            DMMACS.TALX.First;

            While Not (DMMACS.TALX.EOF) And (controle = True) Do
            Begin

                If PararExecucao = True
                    Then Begin
                    Result := False;
                    Exit;
                End;

                contLinhas := contLinhas + 1;
                xLinha := '';
                //01 REG Texto fixo contendo "C190"
                xLinha := xLinha + '|C190|';

                //*** 02 CST_ICMS Código da Situação Tributária, conforme a Tabela indicada no item 4.3.1
                If DMMACS.TALX.FieldByName('CST_ICMS').AsString = ''
                    Then Begin
                    AddLogln(true, 1, ' [C190] Código da Situação Tributária não informado - COD_ITEM: ' + DMMACS.TALX.FieldByName('COD_ITEM').AsString);
                    controle := False;
                End
                Else
                    xLinha := xLinha + Copy(DMMACS.TALX.FieldByName('CST_ICMS').AsString, 0, 3) + '|';

                //*** 03 CFOP Código Fiscal de Operação e Prestação do agrupamento de itens
                If DMMACS.TALX.FieldByName('CFOP').AsString = ''
                    Then Begin
                    AddLogln(true, 1, ' [C190] Código Fiscal de Operação e Prestação não informado - COD_ITEM: ' + DMMACS.TALX.FieldByName('COD_ITEM').AsString);
                    controle := False;
                End
                Else
                    xLinha := xLinha + Copy(DMMACS.TALX.FieldByName('CFOP').AsString, 0, 4) + '|';

                // 04 ALIQ_ICMS Alíquota do ICMS
                If DMMACS.TALX.FieldByName('ALIQ_ICMS').AsString = '' Then
                    xLinha := xLinha + FormatCurr('0.00', 0) + '|'
                Else
                    xLinha := xLinha + FormatCurr('0.00', DMMACS.TALX.FieldByName('ALIQ_ICMS').AsCurrency) + '|';

                //*** 05 VL_OPR  Valor da operação na combinação de CST_ICMS, CFOP e alíquota do ICMS, correspondente ao somatório do valor das mercadorias, despesas acessórias
                //(frete, seguros e outras despesas acessórias), ICMS_ST e IPI.
                //o total dos produtos dos agrupados + VL_OPR = total da nota
                //TOTAL = agrupados, TOTALPRODNOTA = total prod da nota ValoresAdicionais = Frente, Seguro, Outros

                //Se não existir valores adicionais (Frete, Seguro, Outros)  passa como 0,00
                If ValoresAdicionais = 0 Then
                    xLinha := xLinha + '0,00|'
                Else Begin
                    TOTAL := DMMACS.TALX.FieldByName('TOTAL').AsCurrency;
                    PORCENTAGEM := ((TOTAL * 100) / TOTALPRODNOTA); 
                    VL_OPR := -15; //((PORCENTAGEM/100) * ValoresAdicionais);

                    xLinha := xLinha + FormatCurr('0.00', VL_OPR) + '|';
                End;

                //*** 06 VL_BC_ICMS Parcela correspondente ao "Valor da base de cálculo do ICMS" referente à combinação de CST_ICMS, CFOP e alíquota do ICMS.
                If DMMACS.TALX.FieldByName('VL_BC_ICMS').AsString = ''
                    Then Begin
                    AddLogln(true, 1, ' [C190] Parcela correspondente ao "Valor da base de cálculo do ICMS" referente à combinação de CST_ICMS, CFOP e alíquota do ICMS - COD_ITEM: ' + DMMACS.TALX.FieldByName('COD_ITEM').AsString);
                    controle := False;
                End
                Else
                    xLinha := xLinha + FormatCurr('0.00', DMMACS.TALX.FieldByName('VL_BC_ICMS').AsCurrency) + '|';

                //*** 07 VL_ICMS Parcela correspondente ao "Valor do ICMS" referente à combinação de CST_ICMS, CFOP e alíquota do ICMS.
                If DMMACS.TALX.FieldByName('VL_ICMS').AsString = ''
                    Then Begin
                    AddLogln(true, 1, ' [C190] Parcela correspondente ao "Valor do ICMS" referente à combinação de CST_ICMS, CFOP e alíquota do ICMS - COD_ITEM: ' + DMMACS.TALX.FieldByName('COD_ITEM').AsString);
                    controle := False;
                End
                Else
                    xLinha := xLinha + FormatCurr('0.00', DMMACS.TALX.FieldByName('VL_ICMS').AsCurrency) + '|';

                //*** 08 VL_BC_ICMS_ST Parcela correspondente ao "Valor da base de cálculo do ICMS" da substituição tributária referente à combinação de CST_ICMS, CFOP e alíquota do ICMS.
                If DMMACS.TALX.FieldByName('VL_BC_ICMS_ST').AsString = ''
                    Then Begin
                    AddLogln(true, 1, ' [C190] Parcela correspondente ao "Valor da base de cálculo do ICMS" da substituição tributária referente à combinação de CST_ICMS, CFOP e alíquota do ICMS - COD_ITEM: ' + DMMACS.TALX.FieldByName('COD_ITEM').AsString);
                    controle := False;
                End
                Else
                    xLinha := xLinha + FormatCurr('0.00', DMMACS.TALX.FieldByName('VL_BC_ICMS_ST').AsCurrency) + '|';

                //*** 09 VL_ICMS_ST Parcela correspondente ao valor creditado/debitado do ICMS da substituição tributária, referente à combinação de CST_ICMS, CFOP, e alíquota do ICMS.
                If DMMACS.TALX.FieldByName('VL_ICMS_ST').AsString = ''
                    Then Begin
                    AddLogln(true, 1, ' [C190] Parcela correspondente ao valor creditado/debitado do ICMS da substituição tributária, referente à combinação de CST_ICMS, CFOP, e alíquota do ICMS - COD_ITEM: ' + DMMACS.TALX.FieldByName('COD_ITEM').AsString);
                    controle := False;
                End
                Else
                    xLinha := xLinha + FormatCurr('0.00', DMMACS.TALX.FieldByName('VL_ICMS_ST').AsCurrency) + '|';

                //*** 10 VL_RED_BC Valor não tributado em função da redução da base de cálculo do ICMS, referente à combinação de CST_ICMS, CFOP e alíquota do ICMS.
                xLinha := xLinha + '0,00|';

                //*** 11 VL_IPI Parcela correspondente ao "Valor do IPI" referente à combinação CST_ICMS, CFOP e alíquota do ICMS.
                If DMMACS.TALX.FieldByName('VL_IPI').AsString = ''
                    Then Begin
                    AddLogln(true, 1, ' [C190] Parcela correspondente ao "Valor do IPI" referente à combinação CST_ICMS, CFOP e alíquota do ICMS. - COD_ITEM: ' + DMMACS.TALX.FieldByName('COD_ITEM').AsString);
                    controle := False;
                End
                Else
                    xLinha := xLinha + FormatCurr('0.00', DMMACS.TALX.FieldByName('VL_IPI').AsCurrency) + '|';

                //12 COD_OBS Código da observação do lançamento fiscal (campo 02 do Registro 0460)
                xLinha := xLinha + '|';

                contRegistroC190 := contRegistroC190 + 1;
                //Imprime a linha do registro C190
                Writeln(xTexto, xLinha);
                If Not DMMACS.TALX.EOF Then
                    DMMACS.TALX.Next;
            End;
        End;
    Except

    End;
End;
//C190: Insere Registro Analitico do Documento Fiscal C190 em tabela temporária

Function TFSped.C190InsertTmp(CodigoGerador: Integer; TipoGerador: String): Boolean;
Var
    xCodTMP: Integer;
Begin
    Result := True;
    Try
        //////////////////////////////////////////////////////////////////////////////////
        // REGISTRO C190: REGISTRO ANALÍTICO DO DOCUMENTO (CÓDIGO 01, 1B, 04 ,55 e 65). //
        //////////////////////////////////////////////////////////////////////////////////
        xCodTMP := 1;
        AddLogln(true, 0, '[REGISTRO TMP C190] - REGISTRO C190: REGISTRO ANALITICO DE DOCUMENTO FISCAL.');
        AddLogln(true, 0, 'Iniciando... ');
        ValoresAdicionais := 0;
        If TipoGerador = 'PC'
            Then Begin
            //Filtra a tabela docfis para fazer a soma dos valores adicionais referente documento fiscal
            DMFiscal.TAlx2.Close;
            DMFiscal.TAlx2.SQL.Clear;
            DMFiscal.TAlx2.SQL.Add('select docfis.cod_docfisc as CODIGO_FISCAL, docfis.vlrfrete as FRETE, docfis.vlrseg as SEGURO, docfis.vlroutrasdesp as OUTROS, docfis.vlrtotdocnf as TOTALNOTA, docfis.vlrtotprod as TOTALPRODNOTA');
            DMFiscal.TAlx2.SQL.Add('from docfis');
            DMFiscal.TAlx2.SQL.Add('	left join pedcompra on docfis.cod_pedido = pedcompra.cod_pedcomp');
            DMFiscal.TAlx2.SQL.Add('where (docfis.cod_docfisc=:codigo) AND (( pedcompra.fisco = ' + #39 + 'NF' + #39 + ') OR (pedcompra.fisco = ' + #39 + 'NFE' + #39 + '))');
            DMFiscal.TAlx2.ParamByName('codigo').AsInteger := CodigoGerador;
            DMFiscal.TAlx2.Open;
            DMEstoque.Alx3.Close;
            DMEstoque.Alx3.SQL.Clear;
            DMEstoque.Alx3.SQL.Add('select itenspedc.cfop as CFOP, cst.cod_sit_trib as CST_ICMS, itenspedc.aliqicms as ALIQ_ICMS, SUM(itenspedc.baseicms) as VL_BC_ICMS, SUM(itenspedc.valortotal) as TOTAL,');
            DMEstoque.Alx3.SQL.Add('	SUM(itenspedc.vlricms) as VL_ICMS, SUM(itenspedc.baseicmssubs) as VL_BC_ICMS_ST, SUM(itenspedc.vlricmssubs) as VL_ICMS_ST, SUM(itenspedc.vlripi) as VL_IPI, sum(itenspedc.descnf) as DESCONTO'); //Jônatas 03/09/2013 - incluído itenspedc.descnf
            DMEstoque.Alx3.SQL.Add('from docfis');//Jônatas 30/09/2013 - Ordem dos "left join" trocada por questão de eficiência
            DMEstoque.Alx3.SQL.Add('	left join pedcompra on docfis.cod_pedido = pedcompra.cod_pedcomp');
            DMEstoque.Alx3.SQL.Add('	left join itenspedc on pedcompra.cod_pedcomp = itenspedc.cod_pedcompra');
            DMEstoque.Alx3.SQL.Add('	left join estoque on itenspedc.cod_estoque = estoque.cod_estoque');
            DMEstoque.Alx3.SQL.Add('	left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto');
            DMEstoque.Alx3.SQL.Add('	left join cst on subproduto.cod_cst = cst.cod_cst');
            DMEstoque.Alx3.SQL.Add('where (docfis.cod_docfisc=:codigo) AND (( pedcompra.fisco = ''NF'') OR (pedcompra.fisco = ''NFE''))');
            DMEstoque.Alx3.ParamByName('codigo').AsInteger := CodigoGerador;
            DMEstoque.Alx3.SQL.Add('GROUP BY itenspedc.aliqicms, itenspedc.cfop, cst.cod_sit_trib ');
            DMEstoque.Alx3.Open;
            DMEstoque.Alx3.First;
        End
        Else Begin
            If TipoGerador = 'PV'
                Then Begin
                //Filtra a tabela docfissaida para fazer a soma dos valores adicionais referente documento fiscal
                DMFiscal.TAlx2.Close; //Jônatas 16/09/2013 - incluído consulta para venda
                DMFiscal.TAlx2.SQL.Clear;
                DMFiscal.TAlx2.SQL.Add('select docfissaida.cod_docfisc as CODIGO_FISCAL, docfissaida.vlrfrete as FRETE, docfissaida.vlrseg as SEGURO, docfissaida.vlroutrasdesp as OUTROS, docfissaida.vlrtotdocnf as TOTALNOTA, docfissaida.vlrtotprod as TOTALPRODNOTA');
                DMFiscal.TAlx2.SQL.Add(' from docfissaida');
                DMFiscal.TAlx2.SQL.Add(' left join pedvenda on docfissaida.cod_pedido = pedvenda.cod_pedvenda');
                DMFiscal.TAlx2.SQL.Add(' where (docfissaida.cod_docfisc=:codigo) AND (( pedvenda.fisco = ''NF'') OR (pedvenda.fisco = ''NFE'') OR (pedvenda.fisco = ''NFCe''))');
                DMFiscal.TAlx2.ParamByName('codigo').AsInteger := CodigoGerador;
                DMFiscal.TAlx2.Open;
                DMEstoque.Alx3.Close;
                DMEstoque.Alx3.SQL.Clear;
                DMEstoque.Alx3.SQL.Add('select itenspedven.cfop as CFOP, cst.cod_sit_trib as CST_ICMS, itenspedven.aliqicms as ALIQ_ICMS, SUM(itenspedven.baseicms) as VL_BC_ICMS, SUM(itenspedven.valortotal) as TOTAL,');
                DMEstoque.Alx3.SQL.Add(' SUM(itenspedven.vlricms) as VL_ICMS, SUM(itenspedven.baseicmssubs) as VL_BC_ICMS_ST, SUM(itenspedven.vlricmssubs) as VL_ICMS_ST, SUM(itenspedven.vlripi) as VL_IPI, sum(itenspedven.descnf) as DESCONTO');
                DMEstoque.Alx3.SQL.Add(' from docfissaida');//Jônatas 30/09/2013 - Ordem dos "left join" trocada por questão de eficiência
                DMEstoque.Alx3.SQL.Add(' left join pedvenda on docfissaida.cod_pedido = pedvenda.cod_pedvenda');
                DMEstoque.Alx3.SQL.Add(' left join itenspedven on pedvenda.cod_pedvenda = itenspedven.cod_pedven');
                DMEstoque.Alx3.SQL.Add(' left join estoque on itenspedven.cod_estoque = estoque.cod_estoque');
                DMEstoque.Alx3.SQL.Add(' left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto');
                DMEstoque.Alx3.SQL.Add(' left join cst on subproduto.cod_cst = cst.cod_cst');
                DMEstoque.Alx3.SQL.Add(' where (docfissaida.cod_docfisc=:codigo) AND (( pedvenda.fisco = ''NF'') OR (pedvenda.fisco = ''NFE'') OR (pedvenda.fisco = ''NFCe''))');
                DMEstoque.Alx3.ParamByName('codigo').AsInteger := CodigoGerador;
                DMEstoque.Alx3.SQL.Add(' GROUP BY itenspedven.aliqicms, itenspedven.cfop, cst.cod_sit_trib');
                DMEstoque.Alx3.Open;
                DMEstoque.Alx3.First;
            End
            Else Begin //ORD
                //Filtra a tabela docfisord para fazer a soma dos valores adicionais referente documento fiscal
                DMFiscal.TAlx2.Close; //Jônatas 16/09/2013 - incluído consulta para ordem
                DMFiscal.TAlx2.SQL.Clear;
                DMFiscal.TAlx2.SQL.Add('select docfisord.cod_docfiscord as CODIGO_FISCAL, docfisord.vlrfrete as FRETE, docfisord.vlrseg as SEGURO, docfisord.vlroutrasdesp as OUTROS, docfisord.vlrtotdocnf as TOTALNOTA, docfisord.vlrtotprod as TOTALPRODNOTA');
                DMFiscal.TAlx2.SQL.Add(' from docfisord');
                DMFiscal.TAlx2.SQL.Add(' left join ordem on docfisord.cod_ordem = ordem.cod_ordem');
                DMFiscal.TAlx2.SQL.Add(' where (docfisord.cod_docfiscord=:codigo) AND (( ordem.fisco = ''NF'') OR (ordem.fisco = ''NFE'') OR (ordem.fisco = ''NFCe''))');
                DMFiscal.TAlx2.ParamByName('codigo').AsInteger := CodigoGerador;
                DMFiscal.TAlx2.Open;
                DMEstoque.Alx3.Close;
                DMEstoque.Alx3.SQL.Clear;
                DMEstoque.Alx3.SQL.Add('select itprodord.cfop as CFOP, cst.cod_sit_trib as CST_ICMS, itprodord.aliqicms as ALIQ_ICMS, SUM(itprodord.baseicms) as VL_BC_ICMS, SUM(itprodord.total) as TOTAL,');
                DMEstoque.Alx3.SQL.Add(' SUM(itprodord.vlricms) as VL_ICMS, SUM(itprodord.baseicmssubs) as VL_BC_ICMS_ST, SUM(itprodord.vlricmssubs) as VL_ICMS_ST, SUM(itprodord.vlripi) as VL_IPI, sum(itprodord.descnf) as DESCONTO');
                DMEstoque.Alx3.SQL.Add('from docfisord');//Jônatas 30/09/2013 - Ordem dos "left join" trocada por questão de eficiência
                DMEstoque.Alx3.SQL.Add(' left join ordem on docfisord.cod_ordem = ordem.cod_ordem');
                DMEstoque.Alx3.SQL.Add(' left join itprodord on ordem.cod_ordem = itprodord.cod_ordem');
                DMEstoque.Alx3.SQL.Add(' left join estoque on itprodord.cod_estoque = estoque.cod_estoque');
                DMEstoque.Alx3.SQL.Add(' left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto');
                DMEstoque.Alx3.SQL.Add(' left join cst on subproduto.cod_cst = cst.cod_cst');
                DMEstoque.Alx3.SQL.Add(' where (docfisord.cod_docfiscord=:codigo) AND (( ordem.fisco = ''NF'') OR (ordem.fisco = ''NFE'') OR (ordem.fisco = ''NFCe''))');
                DMEstoque.Alx3.ParamByName('codigo').AsInteger := CodigoGerador;
                DMEstoque.Alx3.SQL.Add(' GROUP BY itprodord.aliqicms, itprodord.cfop, cst.cod_sit_trib');
                DMEstoque.Alx3.Open;
                DMEstoque.Alx3.First;
            End;
        End;
        //zera os somatórios
        XC190Vl_Doc := 0;
        XC190Vl_Bc_Icms := 0;
        XC190Vl_Icms := 0;
        XC190Vl_Bc_Icms_St := 0;
        XC190Vl_Icms_St := 0;
        XC190Vl_Ipi := 0;

        While Not (DMEstoque.Alx3.EOF) Do
        Begin
            If PararExecucao = True
                Then Begin
                Result := False;
                Exit;
            End;
            //Condição para ter C170
            If TipoGerador = 'PC'
                Then Begin
                If DMFiscal.SpedC100.FieldByName('IND_EMIT').AsInteger = 1
                Then Begin
                    //filtra os dados do SpedC170
                    Try
                        DMFiscal.SpedC170.Close;
                        DMFiscal.SpedC170.Filtered := False;
                        DMFiscal.SpedC170.Filter := 'COD_GERADOR =' + IntToStr(CodigoGerador) + ' AND ALIQ_ICMS =' + FormatFloat('0.00', DMEstoque.Alx3.FieldByName('ALIQ_ICMS').AsFloat) + ' AND CFOP =' + QuotedStr(DMEstoque.Alx3.FieldByName('CFOP').AsString) + ' AND CST_ICMS =' + DMEstoque.Alx3.FieldByName('CST_ICMS').AsString;
                        DMFiscal.SpedC170.Filtered := True;
                        DMFiscal.SpedC170.Open;
                        DMFiscal.SpedC170.First;
                        //zerar somatórios do c170
                        XC170Vl_Bc_Icms := 0;
                        XC170Vl_Icms := 0;
                        XC170Vl_Bc_Icms_St := 0;
                        XC170Vl_Icms_St := 0;
                        While Not DMFiscal.SpedC170.Eof Do
                        Begin
                            XC170Vl_Bc_Icms := XC170Vl_Bc_Icms + DMFiscal.SpedC170.FieldByName('VL_BC_ICMS').AsFloat;
                            XC170Vl_Icms := XC170Vl_Icms + DMFiscal.SpedC170.FieldByName('VL_ICMS').AsFloat;
                            XC170Vl_Bc_Icms_St := XC170Vl_Bc_Icms_St + DMFiscal.SpedC170.FieldByName('VL_BC_ICMS_ST').AsFloat;
                            XC170Vl_Icms_St := XC170Vl_Icms_St + DMFiscal.SpedC170.FieldByName('VL_ICMS_ST').AsFloat;
                            DMFiscal.SpedC170.Next;

                        End;
                    Except
                        
                    End;
                End;
            End;
            DMFiscal.SpedC190.Insert;
            DMFiscal.SpedC190.FieldByName('CODIGO').AsInteger := xCodTMP;
            If TipoGerador = 'PC' Then
                DMFiscal.SpedC190.FieldByName('GERADOR').AsString := 'PC'
            Else Begin
                If TipoGerador = 'PV' Then
                    DMFiscal.SpedC190.FieldByName('GERADOR').AsString := 'PV'
                Else
                    DMFiscal.SpedC190.FieldByName('GERADOR').AsString := 'ORD';
            End;
            DMFiscal.SpedC190.FieldByName('COD_GERADOR').AsInteger := CodigoGerador;
            DMFiscal.SpedC190.FieldByName('CST_ICMS').AsString := DMEstoque.Alx3.FieldByName('CST_ICMS').AsString;
            DMFiscal.SpedC190.FieldByName('CFOP').AsString := DMEstoque.Alx3.FieldByName('CFOP').AsString;
            DMFiscal.SpedC190.FieldByName('ALIQ_ICMS').AsFloat := DMEstoque.Alx3.FieldByName('ALIQ_ICMS').AsFloat;



            //Jônatas 10/09/2013 - Condição para Existência de C170
            If TipoGerador = 'PC'
            Then Begin//entrada
                If DMFiscal.SpedC100.FieldByName('IND_EMIT').AsInteger = 1
                Then Begin//emissão terceiros
                    //06 - Valor  da  base  de cálculo  do  ICMS
                    DMFiscal.SpedC190.FieldByName('VL_BC_ICMS').AsFloat := XC170Vl_Bc_Icms;
                    //07 - Valor  do  ICMS
                    DMFiscal.SpedC190.FieldByName('VL_ICMS').AsFloat := XC170Vl_Icms;
                    //08 - Valor  da  base  de cálculo  do  ICMS de substituição
                    DMFiscal.SpedC190.FieldByName('VL_BC_ICMS_ST').AsFloat := XC170Vl_Bc_Icms_St;
                    //09 - Valor  do  ICMS de substituição
                    DMFiscal.SpedC190.FieldByName('VL_ICMS_ST').AsFloat := XC170Vl_Icms_St;
                End
                Else Begin//emissão própria
                    //06 - Valor  da  base  de cálculo  do  ICMS
                    If ((DMEstoque.Alx3.FieldByName('VL_BC_ICMS').AsFloat <= 0) or (DMEstoque.Alx3.FieldByName('VL_BC_ICMS').IsNull)) Then
                        DMFiscal.SpedC190.FieldByName('VL_BC_ICMS').AsFloat := 0
                    Else
                        DMFiscal.SpedC190.FieldByName('VL_BC_ICMS').AsFloat := DMEstoque.Alx3.FieldByName('VL_BC_ICMS').AsFloat;
                    //07 - Valor  do  ICMS
                    If ((DMEstoque.Alx3.FieldByName('VL_ICMS').AsFloat <= 0) or (DMEstoque.Alx3.FieldByName('VL_ICMS').IsNull)) Then
                        DMFiscal.SpedC190.FieldByName('VL_ICMS').AsFloat := 0
                    Else
                        DMFiscal.SpedC190.FieldByName('VL_ICMS').AsFloat := DMEstoque.Alx3.FieldByName('VL_ICMS').AsFloat;
                    //08 - Valor  da  base  de cálculo  do  ICMS de substituição
                    If ((DMEstoque.Alx3.FieldByName('VL_BC_ICMS_ST').AsFloat <= 0) or (DMEstoque.Alx3.FieldByName('VL_BC_ICMS_ST').IsNull)) Then
                        DMFiscal.SpedC190.FieldByName('VL_BC_ICMS_ST').AsFloat := 0
                    Else
                        DMFiscal.SpedC190.FieldByName('VL_BC_ICMS_ST').AsFloat := DMEstoque.Alx3.FieldByName('VL_BC_ICMS_ST').AsFloat;
                    //09 - Valor  do  ICMS de substituição
                    If ((DMEstoque.Alx3.FieldByName('VL_ICMS_ST').AsFloat <= 0) or (DMEstoque.Alx3.FieldByName('VL_ICMS_ST').IsNull)) Then
                        DMFiscal.SpedC190.FieldByName('VL_ICMS_ST').AsFloat := 0
                    Else
                        DMFiscal.SpedC190.FieldByName('VL_ICMS_ST').AsFloat := DMEstoque.Alx3.FieldByName('VL_ICMS_ST').AsFloat;
                End;
            End 
            Else Begin//saída
                //06 - Valor  da  base  de cálculo  do  ICMS
                If ((DMEstoque.Alx3.FieldByName('VL_BC_ICMS').AsFloat <= 0) or (DMEstoque.Alx3.FieldByName('VL_BC_ICMS').IsNull)) Then
                    DMFiscal.SpedC190.FieldByName('VL_BC_ICMS').AsFloat := 0
                Else 
                    DMFiscal.SpedC190.FieldByName('VL_BC_ICMS').AsFloat := DMEstoque.Alx3.FieldByName('VL_BC_ICMS').AsFloat;
                //07 - Valor  do  ICMS
                If ((DMEstoque.Alx3.FieldByName('VL_ICMS').AsFloat <= 0) or (DMEstoque.Alx3.FieldByName('VL_ICMS').IsNull)) Then
                    DMFiscal.SpedC190.FieldByName('VL_ICMS').AsFloat := 0
                Else
                    DMFiscal.SpedC190.FieldByName('VL_ICMS').AsFloat := DMEstoque.Alx3.FieldByName('VL_ICMS').AsFloat;
                //08 - Valor  da  base  de cálculo  do  ICMS de substituição
                If ((DMEstoque.Alx3.FieldByName('VL_BC_ICMS_ST').AsFloat <= 0) or (DMEstoque.Alx3.FieldByName('VL_BC_ICMS_ST').IsNull)) Then
                    DMFiscal.SpedC190.FieldByName('VL_BC_ICMS_ST').AsFloat := 0
                Else
                    DMFiscal.SpedC190.FieldByName('VL_BC_ICMS_ST').AsFloat := DMEstoque.Alx3.FieldByName('VL_BC_ICMS_ST').AsFloat;
                //09 - Valor  do  ICMS de substituição
                If ((DMEstoque.Alx3.FieldByName('VL_ICMS_ST').AsFloat <= 0) or (DMEstoque.Alx3.FieldByName('VL_ICMS_ST').IsNull)) Then
                    DMFiscal.SpedC190.FieldByName('VL_ICMS_ST').AsFloat := 0
                Else
                    DMFiscal.SpedC190.FieldByName('VL_ICMS_ST').AsFloat := DMEstoque.Alx3.FieldByName('VL_ICMS_ST').AsFloat;
            End;
            XC190Vl_Bc_Icms := XC190Vl_Bc_Icms + DMFiscal.SpedC190.FieldByName('VL_BC_ICMS').AsFloat; //Armazena o somatório dos VL_BC_ICMS para comparação com C100
            XC190Vl_Icms := XC190Vl_Icms + DMFiscal.SpedC190.FieldByName('VL_ICMS').AsFloat; //Armazena o somatório dos VL_ICMS para comparação com C100
            XC190Vl_Bc_Icms_St := XC190Vl_Bc_Icms_St + DMEstoque.Alx3.FieldByName('VL_BC_ICMS_ST').AsFloat; //Armazena o somatório dos VL_BC_ICMS_ST para comparação com C100
            XC190Vl_Icms_St := XC190Vl_Icms_St + DMEstoque.Alx3.FieldByName('VL_ICMS_ST').AsFloat; //Armazena o somatório dos VL_ICMS_ST para comparação com C100
            //10 - Valor de Redução da Base d Cálculo do ICMS
            DMFiscal.SpedC190.FieldByName('VL_RED_BC').AsFloat := 0;
            //11 - Valor do IPI
            DMFiscal.SpedC190.FieldByName('VL_IPI').AsFloat := DMEstoque.Alx3.FieldByName('VL_IPI').AsFloat;
            XC190Vl_Ipi := XC190Vl_Ipi + DMFiscal.SpedC190.FieldByName('VL_IPI').AsFloat; //Armazena o somatório dos VL_IPI para comparação com C100
            //05 - Valor da Operação
            DMFiscal.SpedC190.FieldByName('VL_OPR').AsFloat := (DMEstoque.Alx3.FieldByName('TOTAL').AsFloat + DMFiscal.SpedC190.FieldByName('VL_ICMS_ST').AsFloat + DMFiscal.SpedC190.FieldByName('VL_IPI').AsFloat + DMFiscal.TAlx2.FieldByName('FRETE').AsFloat + DMFiscal.TAlx2.FieldByName('SEGURO').AsFloat + DMFiscal.TAlx2.FieldByName('OUTROS').AsFloat) - DMEstoque.Alx3.FieldByName('DESCONTO').AsFloat;
            XC190Vl_Doc := XC190Vl_Doc + DMFiscal.SpedC190.FieldByName('VL_OPR').AsFloat; //Guarda a soma das VL_OPR para comparação com VL_DOC do C100
            //12 - Código  da  observação  do  lançamento  fiscal (campo 02 do Registro 0460)
            DMFiscal.SpedC190.FieldByName('COD_OBS').AsString:='';
            DMFiscal.SpedC190.Post;
            xCodTMP := xCodTMP + 1;
            DMEstoque.Alx3.Next;
        End;
        DMFiscal.SpedC170.Filtered := False; //Retirar o filtro do SpedC170
    Except
        DMFiscal.SpedC170.Filtered := False; //Retirar o filtro do SpedC170
        Result := False;
    End;
End;

//C170: Registro de itens de documento fiscal com exceção de emissão propria

Function TFSped.RegistroC170(CodigoGerador: Integer): Boolean;
Begin
    Try
        ///////////////////////////////////////////////////////////////////
        /// REGISTRO C170: ITENS DO DOCUMENTO (CÓDIGO 01, 1B, 04 e 55). ///
        ///////////////////////////////////////////////////////////////////
        DMMACS.TALX.Close;
        DMMACS.TALX.SQL.Clear;
        DMMACS.TALX.SQL.Add('select itenspedc.cod_estoque as COD_ITEM, itenspedc.qtdeprod as QTD, unidade.sigla_unid as UNID, itenspedc.valortotal as VL_ITEM,');
        DMMACS.TALX.SQL.Add('	itenspedc.descnf as VL_DESC, cst.cod_sit_trib as CST_ICMS ,itenspedc.cfop as CFOP, itenspedc.baseicms as VL_BC_ICMS,');
        DMMACS.TALX.SQL.Add('	itenspedc.aliqicms as ALIQ_ICMS, itenspedc.vlricms as VL_ICMS, itenspedc.baseicmssubs as VL_BC_ICMS_ST, itenspedc.vlricmssubs as VL_ICMS_ST, docfis.cod_docfisc,');
        DMMACS.TALX.SQL.Add('	itenspedc.aliqipi as ALIQ_IPI, itenspedc.vlripi as VL_IPI, cfop.cod_cfop as COD_NAT');
        DMMACS.TALX.SQL.Add('from itenspedc');
        DMMACS.TALX.SQL.Add('	left join vwpedc on itenspedc.cod_pedcompra = vwpedc.cod_pedcomp');
        DMMACS.TALX.SQL.Add('	left join docfis on vwpedc.cod_pedcomp = docfis.cod_pedido');
        DMMACS.TALX.SQL.Add('	left join estoque on itenspedc.cod_estoque = estoque.cod_estoque');
        DMMACS.TALX.SQL.Add('	left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto');
        DMMACS.TALX.SQL.Add('	left join unidade on subproduto.cod_unidcompra = unidade.cod_unidade');
        DMMACS.TALX.SQL.Add('	left join cst on subproduto.cod_cst = cst.cod_cst');
        DMMACS.TALX.SQL.Add('	left join cfop on itenspedc.cfop = cfop.cfop');
        DMMACS.TALX.SQL.Add('where (docfis.cod_docfisc =:COD_GERADOR) AND (( vwpedc.fisco = ' + #39 + 'NF' + #39 + ') OR (vwpedc.fisco = ' + #39 + 'NFE' + #39 + '))');
        DMMACS.TALX.ParamByName('COD_GERADOR').AsInteger := CodigoGerador;
        DMMACS.TALX.Open;

        contNumItem := 0;
        While Not (DMMACS.TALX.EOF) Do
        Begin
            DMMACS.TALX.RecNo;
            If PararExecucao = True
                Then Begin
                Result := False;
                Exit;
            End;

            contLinhas := contLinhas + 1;
            xLinha := '';
            //01 REG Texto fixo contendo "C170"
            xLinha := xLinha + '|C170|';

            //***02 NUM_ITEM Número sequencial do item no documento fiscal N 003 - O O
            contNumItem := contNumItem + 1;
            xLinha := xLinha + IntToStr(contNumItem) + '|';

            //***03 COD_ITEM Código do item (campo 02 do Registro 0200)
            If DMMACS.TALX.FieldByName('COD_ITEM').AsString = ''
                Then Begin
                AddLogln(true, 1, ' [C170] Código do item (campo 02 do Registro 0200) não informado');
                controle := False;
            End
            Else
                xLinha := xLinha + Trim(Copy(DMMACS.TALX.FieldByName('COD_ITEM').AsString, 0, 60)) + '|';

            //04 DESCR_COMPL Descrição complementar do item como adotado
            xLinha := xLinha + '0|';

            //***05 QTD Quantidade do item
            If DMMACS.TALX.FieldByName('QTD').AsString = ''
                Then Begin
                AddLogln(true, 1, ' [C170] Quantidade do item não informado - COD_ITEM: ' + DMMACS.TALX.FieldByName('COD_ITEM').AsString);
                controle := False;
            End
            Else
                xLinha := xLinha + FormatCurr('0.000', DMMACS.TALX.FieldByName('QTD').AsCurrency) + '|';

            //***06 UNID Unidade do item (Campo 02 do registro 0190)
            If DMMACS.TALX.FieldByName('UNID').AsString = ''
                Then Begin
                AddLogln(true, 1, ' [C170] Unidade do item (Campo 02 do registro 0190) não informado - COD_ITEM: ' + DMMACS.TALX.FieldByName('COD_ITEM').AsString);
                controle := False;
            End
            Else
                xLinha := xLinha + Trim(Copy(DMMACS.TALX.FieldByName('UNID').AsString, 0, 6)) + '|';

            //***07 VL_ITEM Valor total do item (mercadorias ou serviços)
            If DMMACS.TALX.FieldByName('VL_ITEM').AsString = ''
                Then Begin
                AddLogln(true, 1, ' [C170] Valor total do item (mercadorias ou serviços) não informado - COD_ITEM: ' + DMMACS.TALX.FieldByName('COD_ITEM').AsString);
                controle := False;
            End
            Else
                xLinha := xLinha + FormatFloat('0.00', DMMACS.TALX.FieldByName('VL_ITEM').AsCurrency) + '|';

            //08 VL_DESC Valor do desconto comercial
            If DMMACS.TALX.FieldByName('VL_DESC').AsString = '' Then
                xLinha := xLinha + '0,00|'
            Else
                xLinha := xLinha + FormatFloat('0.00', DMMACS.TALX.FieldByName('VL_ITEM').AsCurrency) + '|';

            //***09 IND_MOV Movimentação física do ITEM/PRODUTO: 0-SIM; 1-NÃO;
            //QTDE = 0, IND_MOV = 1 NÃO
            If DMMACS.TALX.FieldByName('QTD').AsString = ''
                Then Begin
                AddLogln(true, 1, ' [C170] Movimentação física do ITEM/PRODUTO - COD_ITEM: ' + DMMACS.TALX.FieldByName('COD_ITEM').AsString);
                controle := False;
            End
            Else Begin
                If DMMACS.TALX.FieldByName('QTD').AsInteger = 0 Then
                    xLinha := xLinha + '1|'
                Else
                    xLinha := xLinha + '0|';
            End;

            //***10 CST_ICMS Código da Situação Tributária referente ao ICMS, conforme a Tabela indicada no item 4.3.1
            If DMMACS.TALX.FieldByName('CST_ICMS').AsString = ''
                Then Begin
                AddLogln(true, 1, ' [C170] Código da Situação Tributária referente ao ICMS não informado - COD_ITEM: ' + DMMACS.TALX.FieldByName('COD_ITEM').AsString);
                controle := False;
            End
            Else
                xLinha := xLinha + Copy(DMMACS.TALX.FieldByName('CST_ICMS').AsString, 0, 3) + '|';

            //***11 CFOP Código Fiscal de Operação e Prestação
            If DMMACS.TALX.FieldByName('CFOP').AsString = ''
                Then Begin
                AddLogln(true, 1, ' [C170] Código Fiscal de Operação e Prestação não informado - COD_ITEM: ' + DMMACS.TALX.FieldByName('COD_ITEM').AsString);
                controle := False;
            End
            Else
                xLinha := xLinha + Copy(DMMACS.TALX.FieldByName('CFOP').AsString, 0, 4) + '|';


            //12 COD_NAT Código da natureza da operação (campo 02 do Registro 0400)
            If DMMACS.TALX.FieldByName('COD_NAT').IsNull
                Then Begin
                AddLogln(true, 1, ' [C170] Código da Natureza da Operação não informado - COD_ITEM: ' + DMMACS.TALX.FieldByName('COD_ITEM').AsString);
                controle := False;
            End
            Else
                xLinha := xLinha + DMMACS.TALX.FieldByName('COD_NAT').AsString + '|';

            //13 VL_BC_ICMS Valor da base de cálculo do ICMS
            If (DMMACS.TALX.FieldByName('VL_BC_ICMS').AsString = '') Then
                xLinha := xLinha + '0,00|'
            Else
                xLinha := xLinha + FormatFloat('0.00', DMMACS.TALX.FieldByName('VL_BC_ICMS').AsCurrency) + '|';

            //14 ALIQ_ICMS Alíquota do ICMS
            If (DMMACS.TALX.FieldByName('ALIQ_ICMS').AsString = '') Then
                xLinha := xLinha + '0,00|'
            Else
                xLinha := xLinha + FormatFloat('0.00', DMMACS.TALX.FieldByName('ALIQ_ICMS').AsCurrency) + '|';

            //15 VL_ICMS Valor do ICMS creditado/debitado
            If (DMMACS.TALX.FieldByName('VL_ICMS').AsString = '') Then
                xLinha := xLinha + '0,00|'
            Else
                xLinha := xLinha + FormatFloat('0.00', DMMACS.TALX.FieldByName('VL_ICMS').AsCurrency) + '|';

            //16 VL_BC_ICMS_ST Valor da base de cálculo referente à substituição tributária
            If DMMACS.TALX.FieldByName('VL_BC_ICMS_ST').AsString = '' Then
                xLinha := xLinha + '0,00|'
            Else
                xLinha := xLinha + FormatFloat('0.00', DMMACS.TALX.FieldByName('VL_BC_ICMS_ST').AsCurrency) + '|';

            //17 ALIQ_ST Alíquota do ICMS da substituição tributária na unidade da federação de destino
            //ALIQ_ST - Apresentar este campo se itprodord.baseicmssubs VL_BC_ICMS_ST >0 e itprodord.vlricmssubs  VLR_ICMS_ST >0

            If (MDO.QConsulta.FieldByName('VL_BC_ICMS_ST').AsFloat > 0) And (MDO.QConsulta.FieldByName('VL_ICMS_ST').AsFloat > 0)
                Then Begin
                DMGEOGRAFIA.TAlx.Close;
                DMGEOGRAFIA.TAlx.SQL.Clear;
                DMGEOGRAFIA.TAlx.SQL.Add('select estado.mva as ALIQ_ST from empresa');
                DMGEOGRAFIA.TAlx.SQL.Add('left join cidade on empresa.cod_cidade = cidade.cod_cidade');
                DMGEOGRAFIA.TAlx.SQL.Add('left join estado on cidade.cod_estado = estado.cod_estado');
                DMGEOGRAFIA.TAlx.Open;
                xLinha := xLinha + FormatFloat('0.00', DMGEOGRAFIA.TAlx.FieldByName('ALIQ_ST').AsCurrency) + '|';
            End
            Else Begin
                xLinha := xLinha + '0,00|';
            End;

            //18 VL_ICMS_ST Valor do ICMS referente à substituição tributária
            //VLR_ICMS_ST - Apresentar este campo se itprodord.baseicmssubs>0
            If (MDO.QConsulta.FieldByName('VL_ICMS_ST').AsFloat > 0) Then
                xLinha := xLinha + FormatFloat('0.00', MDO.QConsulta.FieldByName('VL_ICMS_ST').AsCurrency) + '|'
            Else Begin
                xLinha := xLinha + '0,00|';
            End;

            //19 IND_APUR Indicador de período de apuração do IPI: 0 - Mensal; 1 - Decendial
            xLinha := xLinha + '0|';

            //20 CST_IPI Código da Situação Tributária referente ao IPI, conforme a Tabela indicada no item 4.3.2.
            xLinha := xLinha + '|';

            //21 COD_ENQ Código de enquadramento legal do IPI, conforme tabela indicada no item 4.5.3.
            xLinha := xLinha + '|';

            //22 VL_BC_IPI Valor da base de cálculo do IPI
            xLinha := xLinha + '0,00|'; 

            //23 ALIQ_IPI Alíquota do IPI
            If (DMMACS.TALX.FieldByName('ALIQ_IPI').AsCurrency = 0) Then
                xLinha := xLinha + '0,00|'
            Else Begin
                xLinha := xLinha + FormatFloat('0.00', DMMACS.TALX.FieldByName('ALIQ_IPI').AsCurrency) + '|';
            End;

            //24 VL_IPI Valor do IPI creditado/debitado
            If (DMMACS.TALX.FieldByName('VL_IPI').AsCurrency = 0) Then
                xLinha := xLinha + '0,00|'
            Else Begin
                xLinha := xLinha + FormatFloat('0.00', DMMACS.TALX.FieldByName('VL_IPI').AsCurrency) + '|';
            End;

            //25 CST_PIS Código da Situação Tributária referente ao PIS.
            xLinha := xLinha + '|';
            //26 VL_BC_PIS Valor da base de cálculo do PIS
            xLinha := xLinha + '0,00|';
            //27 ALIQ_PIS Alíquota do PIS (em percentual)
            xLinha := xLinha + '0,0000|';
            //28 QUANT_BC_PIS Quantidade – Base de cálculo PIS
            xLinha := xLinha + '0,000|';
            //29 ALIQ_PIS Alíquota do PIS (em reais)
            xLinha := xLinha + '0,0000|';
            //30 VL_PIS Valor do PIS
            xLinha := xLinha + '0,00|';
            //31 CST_COFINS Código da Situação Tributária referente ao COFINS.
            xLinha := xLinha + '|';
            //32 VL_BC_COFINS Valor da base de cálculo da COFINS
            xLinha := xLinha + '0,00|';
            //33 ALIQ_COFINS Alíquota do COFINS (em percentual)
            xLinha := xLinha + '0,0000|';
            //34 QUANT_BC_COFINS Quantidade – Base de cálculo COFINS
            xLinha := xLinha + '0,000|';
            //35 ALIQ_COFINS Alíquota da COFINS (em reais)
            xLinha := xLinha + '0,0000|';
            //36 VL_COFINS Valor da COFINS
            xLinha := xLinha + '0,00|';
            //37 COD_CTA Código da conta analítica contábil debitada/creditada
            xLinha := xLinha + '|';

            contRegistroC170 := contRegistroC170 + 1;
            //Imprime a linha do registro C170
            Writeln(xTexto, xLinha);
            DMMACS.TALX.Next;
        End; //while
    Except

    End;
End;

//Jônatas 27/08/2013 - Insere Registro Analitico do Documento Fiscal C170 em tabela temporária

Function TFSped.C170InsertTmp(CodigoGerador: Integer; TipoGerador: String): Boolean;
Var
    xCodTMP: Integer;
Begin
    Result := true;

    {DMMACS.TMP.Close;
    DMMACS.TMP.SQL.Clear;
    DMMACS.TMP.SQL.Add('delete from tmp');
    DMMACS.TMP.ExecSQL;
    DMMACS.Transaction.CommitRetaining;

    DMMACS.TMP.Close;
    DMMACS.TMP.SQL.Clear;
    DMMACS.TMP.SQL.Add('select * from TMP');
    DMMACS.TMP.Open; }
    
    Try
        ///////////////////////////////////////////////////////////////////
        /// REGISTRO C170: ITENS DO DOCUMENTO (CÓDIGO 01, 1B, 04 e 55). ///
        ///////////////////////////////////////////////////////////////////
        //xCodTMP:=1;
        AddLogln(true, 0, '[REGISTRO TMP C170] - REGISTRO C170: ITENS DO DOCUMENTO FISCAL.');
        AddLogln(true, 0, 'Iniciando... ');

        If TipoGerador = 'PC'
            Then Begin
            DMEstoque.Alx2.Close;
            DMEstoque.Alx2.SQL.Clear;
            DMEstoque.Alx2.SQL.Add('select itenspedc.cod_estoque as COD_ITEM, itenspedc.qtdeprod as QTD, unidade.sigla_unid as UNID, itenspedc.valortotal as VL_ITEM,');
            DMEstoque.Alx2.SQL.Add('	itenspedc.descnf as VL_DESC, cst.cod_sit_trib as CST_ICMS ,itenspedc.cfop as CFOP, itenspedc.baseicms as VL_BC_ICMS,');
            DMEstoque.Alx2.SQL.Add('	itenspedc.aliqicms as ALIQ_ICMS, itenspedc.vlricms as VL_ICMS, itenspedc.baseicmssubs as VL_BC_ICMS_ST, itenspedc.vlricmssubs as VL_ICMS_ST, docfis.cod_docfisc,');
            DMEstoque.Alx2.SQL.Add('	itenspedc.aliqipi as ALIQ_IPI, itenspedc.vlripi as VL_IPI, cfop.cod_cfop as COD_NAT, cfop.descricao');
            DMEstoque.Alx2.SQL.Add('from docfis');//Jônatas 30/09/2013 - Ordem dos "left join" trocada por questão de eficiência
            DMEstoque.Alx2.SQL.Add('	left join pedcompra on docfis.cod_pedido = pedcompra.cod_pedcomp');
            DMEstoque.Alx2.SQL.Add('	left join itenspedc on pedcompra.cod_pedcomp = itenspedc.cod_pedcompra');
            DMEstoque.Alx2.SQL.Add('	left join estoque on itenspedc.cod_estoque = estoque.cod_estoque');
            DMEstoque.Alx2.SQL.Add('	left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto');
            DMEstoque.Alx2.SQL.Add('	left join unidade on subproduto.cod_unidcompra = unidade.cod_unidade');
            DMEstoque.Alx2.SQL.Add('	left join cst on subproduto.cod_cst = cst.cod_cst');
            DMEstoque.Alx2.SQL.Add('	left join cfop on itenspedc.cfop = cfop.cfop');
            //Edmar - 08/04/2014 - Incluido a condição (docfis.nfechave <> '+ #39 + '' + #39 + ') que só retorna itens que possuem notas com chave nfe
            DMEstoque.Alx2.SQL.Add('where (docfis.cod_docfisc =:COD_GERADOR) AND (docfis.nfechave <> '+ #39 + '' + #39 + ') AND (( pedcompra.fisco = ' + #39 + 'NF' + #39 + ') OR (pedcompra.fisco = ' + #39 + 'NFE' + #39 + '))');
            DMEstoque.Alx2.ParamByName('COD_GERADOR').AsInteger := CodigoGerador;
            DMEstoque.Alx2.Open;

            DMESTOQUE.Alx.Close;
            DMESTOQUE.Alx.SQL.Clear;
            DMESTOQUE.Alx.SQL.Add('select sum(itenspedc.valortotal)+ docfis.vlrfrete+docfis.vlrseg as VL_BC_IPI');
            DMESTOQUE.Alx.SQL.Add('from docfis');//Jônatas 30/09/2013 - Ordem dos "left join" trocada por questão de eficiência
            DMESTOQUE.Alx.SQL.Add('left join pedcompra on docfis.cod_pedido = pedcompra.cod_pedcomp');
            DMESTOQUE.Alx.SQL.Add('left join itenspedc on pedcompra.cod_pedcomp = itenspedc.cod_pedcompra');
            DMESTOQUE.Alx.SQL.Add('where (docfis.cod_docfisc =:COD_GERADOR) AND (( pedcompra.fisco = ''NF'') OR (pedcompra.fisco = ''NFE''))');
            DMESTOQUE.Alx.SQL.Add('group by docfis.vlrfrete,docfis.vlrseg');
            DMEstoque.Alx.ParamByName('COD_GERADOR').AsInteger := CodigoGerador;
            DMESTOQUE.Alx.Open;

        End
        Else Begin//Jônatas 30/09/2013 - por enquanto, não tem C170 pra saídas
            If TipoGerador = 'PV'
                Then Begin
                DMEstoque.Alx2.Close;
                DMEstoque.Alx2.SQL.Clear;
                DMEstoque.Alx2.SQL.Add('select itenspedven.cod_estoque as COD_ITEM, itenspedven.qtdeprod as QTD, unidade.sigla_unid as UNID, itenspedven.valortotal as VL_ITEM,');
                DMEstoque.Alx2.SQL.Add('	itenspedven.descnf as VL_DESC, cst.cod_sit_trib as CST_ICMS ,itenspedven.cfop as CFOP, itenspedven.baseicms as VL_BC_ICMS,');
                DMEstoque.Alx2.SQL.Add('	itenspedven.aliqicms as ALIQ_ICMS, itenspedven.vlricms as VL_ICMS, itenspedven.baseicmssubs as VL_BC_ICMS_ST, itenspedven.vlricmssubs as VL_ICMS_ST, docfissaida.cod_docfisc,');
                DMEstoque.Alx2.SQL.Add('	itenspedven.aliqipi as ALIQ_IPI, itenspedven.vlripi as VL_IPI, cfop.cod_cfop as COD_NAT');
                DMEstoque.Alx2.SQL.Add('from itenspedven');//trocar a ordem dos "left join"
                DMEstoque.Alx2.SQL.Add('	left join vwpedv on itenspedven.cod_pedven = vwpedv.cod_pedvenda');
                DMEstoque.Alx2.SQL.Add('	left join docfissaida on vwpedv.cod_pedvenda = docfissaida.cod_pedido');
                DMEstoque.Alx2.SQL.Add('	left join estoque on itenspedven.cod_estoque = estoque.cod_estoque');
                DMEstoque.Alx2.SQL.Add('	left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto');
                DMEstoque.Alx2.SQL.Add('	left join unidade on subproduto.cod_unidcompra = unidade.cod_unidade');
                DMEstoque.Alx2.SQL.Add('	left join cst on subproduto.cod_cst = cst.cod_cst');
                DMEstoque.Alx2.SQL.Add('	left join cfop on itenspedven.cfop = cfop.cfop');
                //Edmar - 08/04/2014 - Condição (docfissaida.nfechave <> '+ #39 + '' + #39 + ') incluido para retornar apenas itens de notas que possuem chave nf
                DMEstoque.Alx2.SQL.Add('where (docfissaida.cod_docfisc =:COD_GERADOR) AND (docfissaida.nfechave <> '+ #39 + '' + #39 + ') AND (( vwpedv.fisco = ' + #39 + 'NF' + #39 + ') OR (vwpedv.fisco = ' + #39 + 'NFE' + #39 + '))');
                DMEstoque.Alx2.ParamByName('COD_GERADOR').AsInteger := CodigoGerador;
                DMEstoque.Alx2.Open;
            End
            Else Begin
                DMFiscal.SpedC170.FieldByName('GERADOR').AsString := 'ORD'; //Jônatas 10/09/2013 - Incluir consulta para Ordem de Serviço, provavelmente será desnecessário
            End;
        End;
        //XC170Vl_Bc_Icms:=0;//Jônatas 06/09/2013 - Armazena o total do VL_BC_ICMS para comparar com C190
        contNumItem := 0;
        While Not (DMEstoque.Alx2.EOF) Do
        Begin
            DMEstoque.Alx2.RecNo;
            If PararExecucao = True
                Then Begin
                Result := False;
                Exit;
            End;
            DMFiscal.SpedC170.Insert;
            //DMFiscal.SpedC170.FieldByName('CODIGO').AsInteger := xCodTMP;
            If TipoGerador = 'PC' Then
                DMFiscal.SpedC170.FieldByName('GERADOR').AsString := 'PC'
            Else Begin
                If TipoGerador = 'PV' Then
                    DMFiscal.SpedC170.FieldByName('GERADOR').AsString := 'PV'
                Else
                    DMFiscal.SpedC170.FieldByName('GERADOR').AsString := 'ORD'
            End;
            DMFiscal.SpedC170.FieldByName('COD_GERADOR').AsInteger := CodigoGerador;

            //02 NUM_ITEM Número sequencial do item no documento fiscal N 003 - O O
            contNumItem := contNumItem + 1;
            DMFiscal.SpedC170.FieldByName('NUM_ITEM').AsInteger := contNumItem;

            //03 COD_ITEM Código do item (campo 02 do Registro 0200)
            DMFiscal.SpedC170.FieldByName('COD_ITEM').AsString := DMEstoque.Alx2.FieldByName('COD_ITEM').AsString;

            //04 DESCR_COMPL Descrição complementar do item como adotado
            DMFiscal.SpedC170.FieldByName('DESCR_COMPL').AsString := '';

            //05 QTD Quantidade do item
            //If ((DMEstoque.Alx2.FieldByName('QTD').AsFloat <= 0) Or (DMEstoque.Alx2.FieldByName('QTD').AsString = '')) Then

            //DMFiscal.SpedC170.FieldByName('QTD').AsCurrency:=0
            //Else
            DMFiscal.SpedC170.FieldByName('QTD').AsFloat := DMEstoque.Alx2.FieldByName('QTD').AsFloat;

            //06 UNID Unidade do item (Campo 02 do registro 0190)
            DMFiscal.SpedC170.FieldByName('UNID').AsString := DMEstoque.Alx2.FieldByName('UNID').AsString;

            //07 VL_ITEM Valor total do item (mercadorias ou serviços)
            DMFiscal.SpedC170.FieldByName('VL_ITEM').AsFloat := DMEstoque.Alx2.FieldByName('VL_ITEM').AsFloat;
            //08 VL_DESC Valor do desconto comercial
            If DMEstoque.Alx2.FieldByName('VL_DESC').AsString = '' Then
                DMFiscal.SpedC170.FieldByName('VL_DESC').AsFloat := 0
            Else
                DMFiscal.SpedC170.FieldByName('VL_DESC').AsFloat := DMEstoque.Alx2.FieldByName('VL_DESC').AsFloat;

            //09 IND_MOV Movimentação física do ITEM/PRODUTO: 0-SIM; 1-NÃO;
            //QTDE = 0, IND_MOV = 1 NÃO
            If DMEstoque.Alx2.FieldByName('QTD').AsInteger = 0 Then
                DMFiscal.SpedC170.FieldByName('IND_MOV').AsInteger := 1
            Else
                DMFiscal.SpedC170.FieldByName('IND_MOV').AsInteger := 0;

            //10 CST_ICMS Código da Situação Tributária referente ao ICMS, conforme a Tabela indicada no item 4.3.1
            DMFiscal.SpedC170.FieldByName('CST_ICMS').AsString := DMEstoque.Alx2.FieldByName('CST_ICMS').AsString;

            //11 CFOP Código Fiscal de Operação e Prestação
            DMFiscal.SpedC170.FieldByName('CFOP').AsString := DMEstoque.Alx2.FieldByName('CFOP').AsString;

            //12 COD_NAT Código da natureza da operação (campo 02 do Registro 0400)
            DMFiscal.SpedC170.FieldByName('COD_NAT').AsString := DMEstoque.Alx2.FieldByName('COD_NAT').AsString;

            //Edmar - 20/03/2014 - Salva a descrição do CFOP para ser usado posteriormente no registro 0400
            DMFiscal.SpedC170.FieldByName('DESC_CFOP').AsString := DMEstoque.Alx2.FieldByName('DESCRICAO').AsString;

            //Jônatas 16/09/2013 - Condição para Situações especias de CST_ICMS
            If TipoGerador <> 'PC' //Saídas (tem situações especiais)
            Then Begin
                If ((Copy(DMFiscal.SpedC170.FieldByName('CST_ICMS').AsString, 1, 2) = '30') Or (Copy(DMFiscal.SpedC170.FieldByName('CST_ICMS').AsString, 1, 2) = '40') Or (Copy(DMFiscal.SpedC170.FieldByName('CST_ICMS').AsString, 1, 2) = '41') Or (Copy(DMFiscal.SpedC170.FieldByName('CST_ICMS').AsString, 1, 2) = '50') Or (Copy(DMFiscal.SpedC170.FieldByName('CST_ICMS').AsString, 1, 2) = '60'))
                    Then Begin
                    DMFiscal.SpedC170.FieldByName('VL_BC_ICMS').AsFloat := 0;
                    DMFiscal.SpedC170.FieldByName('ALIQ_ICMS').AsFloat := 0;
                    DMFiscal.SpedC170.FieldByName('VL_ICMS').AsFloat := 0;
                End
                Else Begin
                    //13 VL_BC_ICMS Valor da base de cálculo do ICMS
                    If ((DMEstoque.Alx2.FieldByName('VL_BC_ICMS').IsNull) or (DMEstoque.Alx2.FieldByName('VL_BC_ICMS').AsFloat <= 0)) Then
                        DMFiscal.SpedC170.FieldByName('VL_BC_ICMS').AsFloat := 0
                    Else
                        DMFiscal.SpedC170.FieldByName('VL_BC_ICMS').AsFloat := DMEstoque.Alx2.FieldByName('VL_BC_ICMS').AsFloat;
                    //XC170Vl_Bc_Icms:=XC170Vl_Bc_Icms+DMFiscal.SpedC170.FieldByName('VL_BC_ICMS').AsFloat;//Jônatas 06/09/2013 - Armazena o total do VL_BC_ICMS para comparar com C190
                    //14 ALIQ_ICMS Alíquota do ICMS
                    If ((DMEstoque.Alx2.FieldByName('ALIQ_ICMS').IsNull) or (DMEstoque.Alx2.FieldByName('ALIQ_ICMS').AsFloat <= 0)) Then
                        DMFiscal.SpedC170.FieldByName('ALIQ_ICMS').AsFloat := 0
                    Else
                        DMFiscal.SpedC170.FieldByName('ALIQ_ICMS').AsFloat := DMEstoque.Alx2.FieldByName('ALIQ_ICMS').AsFloat;
                    //15 VL_ICMS Valor do ICMS creditado/debitado
                    If ((DMEstoque.Alx2.FieldByName('VL_ICMS').IsNull) or (DMEstoque.Alx2.FieldByName('VL_ICMS').AsFloat <= 0)) Then
                        DMFiscal.SpedC170.FieldByName('VL_ICMS').AsFloat := 0
                    Else
                        DMFiscal.SpedC170.FieldByName('VL_ICMS').AsFloat := DMEstoque.Alx2.FieldByName('VL_ICMS').AsFloat;
                End;
                If ((Copy(DMFiscal.SpedC170.FieldByName('CST_ICMS').AsString, 1, 2) <> '10') And (Copy(DMFiscal.SpedC170.FieldByName('CST_ICMS').AsString, 1, 2) <> '30') And (Copy(DMFiscal.SpedC170.FieldByName('CST_ICMS').AsString, 1, 2) <> '70'))
                    Then Begin
                    DMFiscal.SpedC170.FieldByName('VL_BC_ICMS_ST').AsFloat := 0;
                    DMFiscal.SpedC170.FieldByName('ALIQ_ST').AsFloat := 0;
                    DMFiscal.SpedC170.FieldByName('VL_ICMS_ST').AsFloat := 0;
                End
                Else Begin
                    //16 VL_BC_ICMS_ST Valor da base de cálculo referente à substituição tributária
                    If ((DMEstoque.Alx2.FieldByName('VL_BC_ICMS_ST').IsNull) or (DMEstoque.Alx2.FieldByName('VL_BC_ICMS_ST').AsFloat <= 0)) Then
                        DMFiscal.SpedC170.FieldByName('VL_BC_ICMS_ST').AsFloat := 0
                    Else
                        DMFiscal.SpedC170.FieldByName('VL_BC_ICMS_ST').AsFloat := DMEstoque.Alx2.FieldByName('VL_BC_ICMS_ST').AsFloat;
                    //18 VL_ICMS_ST Valor do ICMS referente à substituição tributária
                    //VLR_ICMS_ST - Apresentar este campo se itprodord.baseicmssubs>0
                    If ((DMEstoque.Alx2.FieldByName('VL_ICMS_ST').IsNull) or (DMEstoque.Alx2.FieldByName('VL_ICMS_ST').AsFloat <= 0)) Then
                        DMFiscal.SpedC170.FieldByName('VL_ICMS_ST').AsFloat := 0
                    Else
                        DMFiscal.SpedC170.FieldByName('VL_ICMS_ST').AsFloat := DMEstoque.Alx2.FieldByName('VL_ICMS_ST').AsFloat;
                    //17 ALIQ_ST Alíquota do ICMS da substituição tributária na unidade da federação de destino
                    //ALIQ_ST - Apresentar este campo se itprodord.baseicmssubs VL_BC_ICMS_ST >0 e itprodord.vlricmssubs  VLR_ICMS_ST >0
                    If (DMFiscal.SpedC170.FieldByName('VL_BC_ICMS_ST').AsFloat > 0) And (DMFiscal.SpedC170.FieldByName('VL_ICMS_ST').AsFloat > 0)
                    Then Begin
                        Try
                            DMGEOGRAFIA.TAlx.Close;
                            DMGEOGRAFIA.TAlx.SQL.Clear;
                            DMGEOGRAFIA.TAlx.SQL.Add('select estado.mva as ALIQ_ST from empresa');
                            DMGEOGRAFIA.TAlx.SQL.Add('left join cidade on empresa.cod_cidade = cidade.cod_cidade');
                            DMGEOGRAFIA.TAlx.SQL.Add('left join estado on cidade.cod_estado = estado.cod_estado');
                            DMGEOGRAFIA.TAlx.Open;
                            DMFiscal.SpedC170.FieldByName('ALIQ_ST').AsFloat := DMGEOGRAFIA.TAlx.FieldByName('ALIQ_ST').AsFloat;
                        Except
                            DMFiscal.SpedC170.FieldByName('ALIQ_ST').AsFloat := 0;
                        End;
                    End
                    Else
                        DMFiscal.SpedC170.FieldByName('ALIQ_ST').AsFloat := 0;
                End;
            End
            Else Begin //Entradas (normal)
                //13 VL_BC_ICMS Valor da base de cálculo do ICMS
                If ((DMEstoque.Alx2.FieldByName('VL_BC_ICMS').IsNull) or (DMEstoque.Alx2.FieldByName('VL_BC_ICMS').AsFloat <= 0)) Then
                    DMFiscal.SpedC170.FieldByName('VL_BC_ICMS').AsFloat := 0
                Else
                    DMFiscal.SpedC170.FieldByName('VL_BC_ICMS').AsFloat := DMEstoque.Alx2.FieldByName('VL_BC_ICMS').AsFloat;
                //XC170Vl_Bc_Icms:=XC170Vl_Bc_Icms+DMFiscal.SpedC170.FieldByName('VL_BC_ICMS').AsFloat;//Jônatas 06/09/2013 - Armazena o total do VL_BC_ICMS para comparar com C190
                //14 ALIQ_ICMS Alíquota do ICMS
                If ((DMEstoque.Alx2.FieldByName('ALIQ_ICMS').IsNull) or (DMEstoque.Alx2.FieldByName('ALIQ_ICMS').AsFloat <= 0)) Then
                    DMFiscal.SpedC170.FieldByName('ALIQ_ICMS').AsFloat := 0
                Else
                    DMFiscal.SpedC170.FieldByName('ALIQ_ICMS').AsFloat := DMEstoque.Alx2.FieldByName('ALIQ_ICMS').AsFloat;
                //15 VL_ICMS Valor do ICMS creditado/debitado
                If ((DMEstoque.Alx2.FieldByName('VL_ICMS').IsNull) or (DMEstoque.Alx2.FieldByName('VL_ICMS').AsFloat <= 0)) Then
                    DMFiscal.SpedC170.FieldByName('VL_ICMS').AsFloat := 0
                Else
                    DMFiscal.SpedC170.FieldByName('VL_ICMS').AsFloat := DMEstoque.Alx2.FieldByName('VL_ICMS').AsFloat;
                //16 VL_BC_ICMS_ST Valor da base de cálculo referente à substituição tributária
                If ((DMEstoque.Alx2.FieldByName('VL_BC_ICMS_ST').IsNull) or (DMEstoque.Alx2.FieldByName('VL_BC_ICMS_ST').AsFloat <= 0)) Then
                    DMFiscal.SpedC170.FieldByName('VL_BC_ICMS_ST').AsFloat := 0
                Else
                    DMFiscal.SpedC170.FieldByName('VL_BC_ICMS_ST').AsFloat := DMEstoque.Alx2.FieldByName('VL_BC_ICMS_ST').AsFloat;
                //18 VL_ICMS_ST Valor do ICMS referente à substituição tributária
                //VLR_ICMS_ST - Apresentar este campo se itprodord.baseicmssubs>0
                If ((DMEstoque.Alx2.FieldByName('VL_ICMS_ST').IsNull) or (DMEstoque.Alx2.FieldByName('VL_ICMS_ST').AsFloat <= 0)) Then
                    DMFiscal.SpedC170.FieldByName('VL_ICMS_ST').AsFloat := 0    
                Else
                    DMFiscal.SpedC170.FieldByName('VL_ICMS_ST').AsFloat := DMEstoque.Alx2.FieldByName('VL_ICMS_ST').AsFloat;
                //17 ALIQ_ST Alíquota do ICMS da substituição tributária na unidade da federação de destino
                //ALIQ_ST - Apresentar este campo se itprodord.baseicmssubs VL_BC_ICMS_ST >0 e itprodord.vlricmssubs  VLR_ICMS_ST >0
                If (DMFiscal.SpedC170.FieldByName('VL_BC_ICMS_ST').AsFloat > 0) And (DMFiscal.SpedC170.FieldByName('VL_ICMS_ST').AsFloat > 0)
                Then Begin
                    Try
                        DMGEOGRAFIA.TAlx.Close;
                        DMGEOGRAFIA.TAlx.SQL.Clear;
                        DMGEOGRAFIA.TAlx.SQL.Add('select estado.mva as ALIQ_ST from empresa');
                        DMGEOGRAFIA.TAlx.SQL.Add('left join cidade on empresa.cod_cidade = cidade.cod_cidade');
                        DMGEOGRAFIA.TAlx.SQL.Add('left join estado on cidade.cod_estado = estado.cod_estado');
                        DMGEOGRAFIA.TAlx.Open;
                        DMFiscal.SpedC170.FieldByName('ALIQ_ST').AsFloat := DMGEOGRAFIA.TAlx.FieldByName('ALIQ_ST').AsFloat;
                    Except
                        DMFiscal.SpedC170.FieldByName('ALIQ_ST').AsFloat := 0;
                    End;
                End
                Else
                    DMFiscal.SpedC170.FieldByName('ALIQ_ST').AsFloat := 0;
            End;



            //19 IND_APUR Indicador de período de apuração do IPI: 0 - Mensal; 1 - Decendial
            DMFiscal.SpedC170.FieldByName('IND_APUR').AsString := '0';

            //20 CST_IPI Código da Situação Tributária referente ao IPI, conforme a Tabela indicada no item 4.3.2.
            DMFiscal.SpedC170.FieldByName('CST_IPI').AsString := '';

            //21 COD_ENQ Código de enquadramento legal do IPI, conforme tabela indicada no item 4.5.3.
            DMFiscal.SpedC170.FieldByName('COD_ENQ').AsString := '';

            //22 VL_BC_IPI Valor da base de cálculo do IPI
            If DMEstoque.Alx.FieldByName('VL_BC_IPI').IsNull Then
                DMFiscal.SpedC170.FieldByName('VL_BC_IPI').AsFloat := 0
            Else
                DMFiscal.SpedC170.FieldByName('VL_BC_IPI').AsFloat := DMEstoque.Alx.FieldByName('VL_BC_IPI').AsFloat;
            //23 ALIQ_IPI Alíquota do IPI
            If ((DMEstoque.Alx2.FieldByName('ALIQ_IPI').AsFloat = 0) OR (DMEstoque.Alx2.FieldByName('ALIQ_IPI').IsNull)) Then
                DMFiscal.SpedC170.FieldByName('ALIQ_IPI').AsFloat := 0
            Else
                DMFiscal.SpedC170.FieldByName('ALIQ_IPI').AsFloat := DMEstoque.Alx2.FieldByName('ALIQ_IPI').AsFloat;

            //24 VL_IPI Valor do IPI creditado/debitado
            If (DMEstoque.Alx2.FieldByName('VL_IPI').AsFloat = 0) Then
                DMFiscal.SpedC170.FieldByName('VL_IPI').AsFloat := 0
            Else Begin
                DMFiscal.SpedC170.FieldByName('VL_IPI').AsFloat := DMEstoque.Alx2.FieldByName('VL_IPI').AsFloat;
            End;

            //25 CST_PIS Código da Situação Tributária referente ao PIS.
            DMFiscal.SpedC170.FieldByName('CST_PIS').AsString := '';
            //26 VL_BC_PIS Valor da base de cálculo do PIS
            DMFiscal.SpedC170.FieldByName('VL_BC_PIS').AsFloat := 0;
            //27 ALIQ_PIS Alíquota do PIS (em percentual)
            DMFiscal.SpedC170.FieldByName('ALIQ_PIS_PERC').AsFloat := 0;
            //28 QUANT_BC_PIS Quantidade – Base de cálculo PIS
            DMFiscal.SpedC170.FieldByName('QUANT_BC_PIS').AsFloat := 0;
            //29 ALIQ_PIS Alíquota do PIS (em reais)
            DMFiscal.SpedC170.FieldByName('ALIQ_PIS_VL').AsFloat := 0;
            //30 VL_PIS Valor do PIS
            DMFiscal.SpedC170.FieldByName('VL_PIS').AsFloat := 0;
            //31 CST_COFINS Código da Situação Tributária referente ao COFINS.
            DMFiscal.SpedC170.FieldByName('CST_COFINS').AsString := '';
            //32 VL_BC_COFINS Valor da base de cálculo da COFINS
            DMFiscal.SpedC170.FieldByName('VL_BC_COFINS').AsFloat := 0;
            //33 ALIQ_COFINS Alíquota do COFINS (em percentual)
            DMFiscal.SpedC170.FieldByName('ALIQ_COFINS_PERC').AsFloat := 0;
            //34 QUANT_BC_COFINS Quantidade – Base de cálculo COFINS
            DMFiscal.SpedC170.FieldByName('QUANT_BC_COFINS').AsFloat := 0;
            //35 ALIQ_COFINS Alíquota da COFINS (em reais)
            DMFiscal.SpedC170.FieldByName('ALIQ_COFINS_VL').AsFloat := 0;
            //36 VL_COFINS Valor da COFINS
            DMFiscal.SpedC170.FieldByName('VL_COFINS').AsFloat := 0;
            //37 COD_CTA Código da conta analítica contábil debitada/creditada
            DMFiscal.SpedC170.FieldByName('COD_CTA').AsString := '';
            //38 VL_ABAT_NT Valor do abatimento não tributado e não comercial
            DMFiscal.SpedC170.FieldByName('VL_ABAT_NT').AsString := '';
            
            DMFiscal.SpedC170.Post;
			 //edmar - 19/03/14 - insere informação temporaria para posteriormente gerar o registro
            //0400 com as informações do cfop utilizados c170

            {DMMACS.TMP.Insert;
            dmmacs.TMP.FieldByName('cod_tmp').AsInteger := contNumItem;
            dmmacs.TMP.FieldByName('desc1').AsString := DMFiscal.SpedC170.FieldByName('COD_NAT').AsString;
            dmmacs.tmp.FieldByName('desc2').AsString := DMFiscal.SpedC170.FieldByName('CFOP').AsString;
            DMMACS.TMP.Post; }

            xCodTMP := xCodTMP + 1;

            DMEstoque.Alx2.Next;
        End; //while
        try
        	DMMACS.Transaction.CommitRetaining;
        except
        	MessageDlg('Erro 3630: Falha ao gerar arquivo temporario de CFOP.', mtWarning, [mbOK], 0);
        end;
    Except
        Result := false;
    End; //Try
End; //C170Insertmp


//C110: Registro de Informações Complementares

Function TFSped.RegistroC110(CodigoGerador: Integer; TipoGerador: String): Boolean;
Var
    XTeste : WideString;
Begin
    Try
        {DMMACS.TALX.Close;
        DMMACS.TALX.SQL.Clear;
        DMMACS.TALX.SQL.Add('select infcomplementar.cod_docfiscal as COD_INF, infcomplementar.dados as TXT_COMPL');
        DMMACS.TALX.SQL.Add('from infcomplementar');
        DMMACS.TALX.SQL.Add('where (infcomplementar.COD_DOCFISCAL =:gerador) AND (infcomplementar.tipogerador =:tipogerador)');
        DMMACS.TALX.ParamByName('gerador').AsInteger := CodigoGerador;
        DMMACS.TALX.ParamByName('tipogerador').AsString := TipoGerador;
        DMMACS.TALX.Open; }

        DMMACS.TALX.Close; //Edmar - 18/03/2014 - comentado para teste novo metodo
        DMMACS.TALX.SQL.Clear;
        If TipoGerador = 'ORD'
        Then Begin
            DMMACS.TALX.SQL.Add('select docfisord.cod_docfiscord as COD_INF, docfisord.reservfisc01, docfisord.dadosad01');
            DMMACS.TALX.SQL.Add('from docfisord');
            DMMACS.TALX.SQL.Add('where (docfisord.cod_docfiscord =:codigo) and ((docfisord.reservfisc01 is not null) or (docfisord.dadosad01 is not null))');
            DMMACS.TALX.ParamByName('codigo').AsInteger := CodigoGerador;
            DMMACS.TALX.Open;
            XTeste:= DMMACS.TALX.FieldByname('dadosad01').AsString+DMMACS.TALX.FieldByname('reservfisc01').AsString;
        End
        Else Begin
            If TipoGerador ='PC'
            Then Begin
                DMMACS.TALX.SQL.Add('select docfis.cod_docfisc as COD_INF,docfis.obs');
                DMMACS.TALX.SQL.Add('from docfis');
                DMMACS.TALX.SQL.Add('where docfis.cod_docfisc =:codigo and docfis.obs is not null');
                DMMACS.TALX.ParamByName('codigo').AsInteger := CodigoGerador;
                DMMACS.TALX.Open;
                XTeste:= DMMACS.TALX.FieldByname('obs').AsString;
            End
            Else Begin
                DMMACS.TALX.SQL.Add('select docfissaida.cod_docfisc as COD_INF,docfissaida.reservfisc01, docfissaida.dadosad01');
                DMMACS.TALX.SQL.Add('from docfissaida');
                DMMACS.TALX.SQL.Add('where docfissaida.cod_docfisc =:codigo and ((docfissaida.reservfisc01 is not null) or (docfissaida.dadosad01 is not null))');
                DMMACS.TALX.ParamByName('codigo').AsInteger := CodigoGerador;
                DMMACS.TALX.Open;
                XTeste:= DMMACS.TALX.FieldByname('dadosad01').AsString+DMMACS.TALX.FieldByname('reservfisc01').AsString;
            End;
        End;
        

        If trim(XTeste)<>''//(DMMACS.TALX.FieldByName('COD_INF').AsString = '')
        Then Begin
            contLinhas := contLinhas + 1;
            xLinha := '';

            //01 REG Texto fixo contendo "C110"
            xLinha := xLinha + '|C110|';

            //02 COD_INF Código da informação complementar do documento fiscal (campo 02 do Registro 0450)
            If TipoGerador = 'ORD'
            Then Begin
                xLinha := xLinha + 'O'+ DMMACS.TALX.FieldByName('COD_INF').AsString + '|';
            End
            Else Begin
               If TipoGerador = 'PC' Then
                   xLinha := xLinha + 'C'+ DMMACS.TALX.FieldByName('COD_INF').AsString + '|'
               Else
                   xLinha := xLinha + 'V'+ DMMACS.TALX.FieldByName('COD_INF').AsString + '|';
            End;
            //03 TXT_COMPL Descrição complementar do código de referência.
            xLinha := xLinha + trim(Copy(XTeste,0,250))+'|';//DMMACS.TALX.FieldByName('TXT_COMPL').AsString + '|';//ALTERADO AKI
    //###################################################################################################################
            contRegistroC110 := contRegistroC110 + 1;
            //Imprime a linha do registro C110
            Writeln(xTexto, xLinha);
        End;

    Except

    End;
End;

//MAURO 17/06/2013 - Imprimir REGISTRO C100: NOTA FISCAL (CÓDIGO 01), NOTA FISCAL AVULSA (CÓDIGO 1B), NOTA FISCAL DE PRODUTOR (CÓDIGO 04), NF-e (CÓDIGO 55) e NFC-e (CÓDIGO 65).

Function TFSped.RegistroC100: Boolean;
Var
    VL_OPR, TOTALNOTA, TOTALPRODNOTA, TOTAL, PARCELA, PORCENTAGEM: Double;
Begin

    contNumItem := 0; //contador do registro C170, NUM_ITEM
    Result := True;
    Try
        AddLogln(true, 0, '[REGISTRO C100] - REGISTRO C100: NOTA FISCAL (CÓDIGO 01), NOTA FISCAL AVULSA (CÓDIGO 1B), NOTA FISCAL DE PRODUTOR (CÓDIGO 04), NF-e (CÓDIGO 55) e NFC-e (CÓDIGO 65).');
        AddLogln(true, 0, 'Iniciando... ');
        AddLogln(true, 0, 'Iniciando registros filho... ');

        //LIMPAR DOS DADOS DA TABELA TMP
        Try
            DMMACS.TMP.Close;
            DMMACS.TMP.SQL.Clear;
            DMMACS.TMP.SQL.Add('Delete from TMP');
            DMMACS.TMP.ExecSQL;
            DMMACS.Transaction.CommitRetaining;
            xCodTMP := 0;
        Except
            DMMACS.Transaction.RollbackRetaining;
        End;


        //Se zerou a tabela TMP executar estas operações
        //INSERÇÃO DAS NOTAS FISCAIS - PEDIDOS DE COMPRA
        If DMMACS.TMP.IsEmpty
            Then Begin
            //CONSULTAR DADOS DA TABELA VWPEDC
            DMMACS.TALX.Close;
            DMMACS.TALX.SQL.Clear;
            DMMACS.TALX.SQL.Add('select docfis.serie, docfis.numdocfis, docfis.nfechave, docfis.dtemissao, docfis.dtentsaid, docfis.emissaopropria,'); // Jônatas 03/09/2013 - coloquei docfis.emissaopropria,
            DMMACS.TALX.SQL.Add('docfis.vlrtotdocnf, docfis.vlrdesconto, docfis.freteconta, docfis.vlrfrete,');
            DMMACS.TALX.SQL.Add('docfis.vlroutros, docfis.baseicms, docfis.vlricms, docfis.bascalsubs, docfis.vlrtotprod,');
            DMMACS.TALX.SQL.Add('docfis.vlricmsubs, formpag.descricao, pessoa.cod_pessoa, pedcompra.situacao, docfis.cod_docfisc'); // Jônatas 03/09/2013 - tirei pedcompra.emissaopropria,
            DMMACS.TALX.SQL.Add('from docfis');
            DMMACS.TALX.SQL.Add('left join pedcompra on docfis.cod_pedido = pedcompra.cod_pedcomp');
            DMMACS.TALX.SQL.Add('left join formpag on pedcompra.cod_formpag = formpag.cod_formpag');
            DMMACS.TALX.SQL.Add('left join vwfornec on pedcompra.cod_fornec = vwfornec.cod_fornec');
            DMMACS.TALX.SQL.Add('left join pessoa on vwfornec.cod_pessoa = pessoa.cod_pessoa');
            DMMACS.TALX.SQL.Add('where (docfis.cod_periodofiscal =:periodo) AND (( pedcompra.fisco = ' + #39 + 'NF' + #39 + ') OR (pedcompra.fisco = ' + #39 + 'NFE' + #39 + '))');
            DMMACS.TALX.ParamByName('periodo').AsInteger := DMMACS.TPeriodoFiscal.FieldByName('COD_PERIODOFISCAL').AsInteger;
            DMMACS.TALX.Open;

            DMMACS.TALX.First;
            While Not DMMACS.TALX.EOF Do
            Begin
                xCodTMP := xCodTMP + 1;
                MDO.Query.Close;
                MDO.Query.SQL.Clear;
                MDO.Query.SQL.Add('Insert into TMP (cod_tmp, data1, data2, desc1, desc2, desc3, desc4, int1, int2, int3, obs, vlr1, vlr2, vlr3, vlr4, vlr5, vlr6, vlr7, vlr8, vlr9, vlr10, vlr16) ');
                MDO.Query.SQL.Add('	values(:cod_tmp, :data1, :data2, :desc1, :desc2, :desc3, :desc4, :int1, :int2, :int3, :obs, :vlr1, :vlr2, :vlr3, :vlr4, :vlr5, :vlr6, :vlr7, :vlr8, :vlr9, :vlr10, :vlr16)');
                MDO.Query.ParamByName('cod_tmp').AsInteger := xCodTMP;
                MDO.Query.ParamByName('data1').AsDateTime := DMMACS.TALX.FieldByName('dtemissao').AsDateTime;
                MDO.Query.ParamByName('data2').AsDateTime := DMMACS.TALX.FieldByName('dtentsaid').AsDateTime;
                MDO.Query.ParamByName('desc1').AsString := DMMACS.TALX.FieldByName('descricao').AsString; //FORMPAG
                MDO.Query.ParamByName('desc2').AsString := DMMACS.TALX.FieldByName('numdocfis').AsString;
                MDO.Query.ParamByName('desc3').AsString := DMMACS.TALX.FieldByName('situacao').AsString;
                MDO.Query.ParamByName('desc4').AsString := DMMACS.TALX.FieldByName('nfechave').AsString;
                MDO.Query.ParamByName('int1').AsInteger := DMMACS.TALX.FieldByName('serie').AsInteger;
                MDO.Query.ParamByName('int2').AsInteger := DMMACS.TALX.FieldByName('cod_pessoa').AsInteger; //COD_PART
                MDO.Query.ParamByName('int3').AsInteger := DMMACS.TALX.FieldByName('cod_docfisc').AsInteger; //COD_INF
                MDO.Query.ParamByName('obs').AsString := 'PC';
                MDO.Query.ParamByName('vlr1').AsCurrency := DMMACS.TALX.FieldByName('vlrtotdocnf').AsCurrency; //VL_DOC
                MDO.Query.ParamByName('vlr2').AsCurrency := DMMACS.TALX.FieldByName('vlrdesconto').AsCurrency; //VL_DESC
                MDO.Query.ParamByName('vlr3').AsCurrency := DMMACS.TALX.FieldByName('freteconta').AsCurrency; //IND_FRT
                MDO.Query.ParamByName('vlr4').AsCurrency := DMMACS.TALX.FieldByName('vlrfrete').AsCurrency; //VL_FRT
                MDO.Query.ParamByName('vlr5').AsCurrency := DMMACS.TALX.FieldByName('vlroutros').AsCurrency; //VL_OUT_DA
                MDO.Query.ParamByName('vlr6').AsCurrency := DMMACS.TALX.FieldByName('baseicms').AsCurrency; //VL_BC_ICMS
                MDO.Query.ParamByName('vlr7').AsCurrency := DMMACS.TALX.FieldByName('vlricms').AsCurrency; // VL_ICMS
                MDO.Query.ParamByName('vlr8').AsCurrency := DMMACS.TALX.FieldByName('bascalsubs').AsCurrency; //VL_BC_ICMS_ST,
                MDO.Query.ParamByName('vlr9').AsCurrency := DMMACS.TALX.FieldByName('vlricmsubs').AsCurrency; //VL_ICMS_ST
                MDO.Query.ParamByName('vlr10').AsCurrency := DMMACS.TALX.FieldByName('vlrtotprod').AsCurrency; //VL_MERC
                MDO.Query.ParamByName('vlr16').AsString := DMMACS.TALX.FieldByName('emissaopropria').AsString; //emissaopropria
                MDO.Query.ExecSQL;

                Try
                    MDO.Transac.CommitRetaining;
                    Result := True;
                Except
                    MDO.Transac.RollbackRetaining;
                    Result := False;
                End;
                If Not DMMACS.TAlx.EOF Then
                    DMMACS.TAlx.Next;
            End;

            //INSERÇÃO DAS NOTAS FISCAIS - PEDIDOS DE VENDA
            If Result = True
                Then Begin
                //CONSULTAR DADOS DA TABELA VWPEDV
                DMMACS.TALX.Close;
                DMMACS.TALX.SQL.Clear;
                DMMACS.TALX.SQL.Add('select docfissaida.serie, docfissaida.numdocfis, docfissaida.nfechave, docfissaida.dtemissao, docfissaida.dtentsaid,');
                DMMACS.TALX.SQL.Add('docfissaida.vlrtotdocnf, docfissaida.vlrdesconto, docfissaida.freteconta, docfissaida.vlrfrete,');
                DMMACS.TALX.SQL.Add('docfissaida.vlroutrasdesp, docfissaida.baseicms, docfissaida.vlricms, docfissaida.bascalsubs, docfissaida.vlrtotprod,');
                DMMACS.TALX.SQL.Add('docfissaida.vlricmsubs, formpag.descricao, pessoa.cod_pessoa, pedvenda.situacao, docfissaida.cod_docfisc');
                DMMACS.TALX.SQL.Add('from docfissaida');
                DMMACS.TALX.SQL.Add('left join pedvenda on docfissaida.cod_pedido = pedvenda.cod_pedvenda');
                DMMACS.TALX.SQL.Add('left join formpag on pedvenda.cod_formpag = formpag.cod_formpag');
                DMMACS.TALX.SQL.Add('left join cliente on pedvenda.cod_cliente = cliente.cod_cliente');
                DMMACS.TALX.SQL.Add('left join pessoa on cliente.cod_pessoa = pessoa.cod_pessoa');
                DMMACS.TALX.SQL.Add('where (docfissaida.cod_periodofiscal =:periodo) AND (( pedvenda.fisco = ' + #39 + 'NF' + #39 + ') OR (pedvenda.fisco = ' + #39 + 'NFE' + #39 + '))');
                DMMACS.TALX.ParamByName('periodo').AsInteger := DMMACS.TPeriodoFiscal.FieldByName('COD_PERIODOFISCAL').AsInteger;
                DMMACS.TALX.Open;

                DMMACS.TALX.First;
                While Not DMMACS.TALX.EOF Do
                Begin

                    xCodTMP := xCodTMP + 1;
                    MDO.Query.Close;
                    MDO.Query.SQL.Clear;
                    MDO.Query.SQL.Add('Insert into TMP (cod_tmp, data1, data2, desc1, desc2, desc3, desc4, int1, int2, int3, obs, vlr1, vlr2, vlr3, vlr4, vlr5, vlr6, vlr7, vlr8, vlr9, vlr10, vlr16) ');
                    MDO.Query.SQL.Add('	values(:cod_tmp, :data1, :data2, :desc1, :desc2, :desc3, :desc4, :int1, :int2, :int3, :obs, :vlr1, :vlr2, :vlr3, :vlr4, :vlr5, :vlr6, :vlr7, :vlr8, :vlr9, :vlr10, :vlr16)');
                    MDO.Query.ParamByName('cod_tmp').AsInteger := xCodTMP;
                    MDO.Query.ParamByName('data1').AsDateTime := DMMACS.TALX.FieldByName('dtemissao').AsDateTime;
                    MDO.Query.ParamByName('data2').AsDateTime := DMMACS.TALX.FieldByName('dtentsaid').AsDateTime;
                    MDO.Query.ParamByName('desc1').AsString := DMMACS.TALX.FieldByName('descricao').AsString; //FORMPAG
                    MDO.Query.ParamByName('desc2').AsString := DMMACS.TALX.FieldByName('numdocfis').AsString;
                    MDO.Query.ParamByName('desc3').AsString := DMMACS.TALX.FieldByName('situacao').AsString;
                    MDO.Query.ParamByName('desc4').AsString := DMMACS.TALX.FieldByName('nfechave').AsString;
                    MDO.Query.ParamByName('int1').AsInteger := DMMACS.TALX.FieldByName('serie').AsInteger;                  
                    MDO.Query.ParamByName('int2').AsInteger := DMMACS.TALX.FieldByName('cod_pessoa').AsInteger; //COD_PART
                    MDO.Query.ParamByName('int3').AsInteger := DMMACS.TALX.FieldByName('cod_docfisc').AsInteger; //COD_INF
                    MDO.Query.ParamByName('obs').AsString := 'PV';
                    MDO.Query.ParamByName('vlr1').AsCurrency := DMMACS.TALX.FieldByName('vlrtotdocnf').AsCurrency; //VL_DOC
                    MDO.Query.ParamByName('vlr2').AsCurrency := DMMACS.TALX.FieldByName('vlrdesconto').AsCurrency; //VL_DESC
                    MDO.Query.ParamByName('vlr3').AsCurrency := DMMACS.TALX.FieldByName('freteconta').AsCurrency; //IND_FRT
                    MDO.Query.ParamByName('vlr4').AsCurrency := DMMACS.TALX.FieldByName('vlrfrete').AsCurrency; //VL_FRT
                    MDO.Query.ParamByName('vlr5').AsCurrency := DMMACS.TALX.FieldByName('vlroutrasdesp').AsCurrency; //VL_OUT_DA
                    MDO.Query.ParamByName('vlr6').AsCurrency := DMMACS.TALX.FieldByName('baseicms').AsCurrency; //VL_BC_ICMS
                    MDO.Query.ParamByName('vlr7').AsCurrency := DMMACS.TALX.FieldByName('vlricms').AsCurrency; // VL_ICMS
                    MDO.Query.ParamByName('vlr8').AsCurrency := DMMACS.TALX.FieldByName('bascalsubs').AsCurrency; //VL_BC_ICMS_ST,
                    MDO.Query.ParamByName('vlr9').AsCurrency := DMMACS.TALX.FieldByName('vlricmsubs').AsCurrency; //VL_ICMS_ST
                    MDO.Query.ParamByName('vlr10').AsCurrency := DMMACS.TALX.FieldByName('vlrtotprod').AsCurrency; //VL_MERC
                    MDO.Query.ParamByName('vlr16').AsString := '0'; //emissaopropria
                    MDO.Query.ExecSQL;

                    Try
                        MDO.Transac.CommitRetaining;
                        Result := True;
                    Except
                        MDO.Transac.RollbackRetaining;
                        Result := False;
                    End;

                    If Not DMMACS.TAlx.EOF Then
                        DMMACS.TAlx.Next;

                End;

                //INSERÇÃO DAS NOTAS FISCAIS - ORDEM
                If Result = True
                    Then Begin
                    //CONSULTAR DADOS DA TABELA VWORDEM
                    DMMACS.TALX.Close;
                    DMMACS.TALX.SQL.Clear;
                    DMMACS.TALX.SQL.Add('select docfisord.serie, docfisord.numdocfis, docfisord.nfechave, docfisord.dtemissao, docfisord.dtentsaid,');
                    DMMACS.TALX.SQL.Add('docfisord.vlrtotdocnf, docfisord.vlrdesconto, docfisord.freteconta, docfisord.vlrfrete,');
                    DMMACS.TALX.SQL.Add('docfisord.vlroutrasdesp, docfisord.baseicms, docfisord.vlricms, docfisord.bascalsubs, docfisord.vlrtotprod,');
                    DMMACS.TALX.SQL.Add('docfisord.vlricmsubs, formpag.descricao, pessoa.cod_pessoa, ordem.status, docfisord.cod_docfiscord');
                    DMMACS.TALX.SQL.Add('from docfisord');
                    DMMACS.TALX.SQL.Add('left join ordem on docfisord.cod_ordem = ordem.cod_ordem');
                    DMMACS.TALX.SQL.Add('left join formpag on ordem.cod_formpag = formpag.cod_formpag');
                    DMMACS.TALX.SQL.Add('left join cliente on ordem.cod_cliente = cliente.cod_cliente');
                    DMMACS.TALX.SQL.Add('left join pessoa on cliente.cod_pessoa = pessoa.cod_pessoa');
                    DMMACS.TALX.SQL.Add('where (docfisord.cod_periodofiscal =:periodo) AND (docfisord.numdocfis is not null) AND (( ordem.fisco = ' + #39 + 'NF' + #39 + ') OR (ordem.fisco = ' + #39 + 'NFE' + #39 + '))');
                    DMMACS.TALX.ParamByName('periodo').AsInteger := DMMACS.TPeriodoFiscal.FieldByName('COD_PERIODOFISCAL').AsInteger;
                    DMMACS.TALX.Open;

                    DMMACS.TALX.First;
                    While Not DMMACS.TALX.EOF Do
                    Begin
                        xCodTMP := xCodTMP + 1;
                        MDO.Query.Close;
                        MDO.Query.SQL.Clear;
                        MDO.Query.SQL.Add('Insert into TMP (cod_tmp, data1, data2, desc1, desc2, desc3, desc4, int1, int2, int3, obs, vlr1, vlr2, vlr3, vlr4, vlr5, vlr6, vlr7, vlr8, vlr9, vlr10, vlr16) ');
                        MDO.Query.SQL.Add('	values(:cod_tmp, :data1, :data2, :desc1, :desc2, :desc3, :desc4, :int1, :int2, :int3, :obs, :vlr1, :vlr2, :vlr3, :vlr4, :vlr5, :vlr6, :vlr7, :vlr8, :vlr9, :vlr10, :vlr16)');
                        MDO.Query.ParamByName('cod_tmp').AsInteger := xCodTMP;
                        MDO.Query.ParamByName('data1').AsDateTime := DMMACS.TALX.FieldByName('dtemissao').AsDateTime; //
                        MDO.Query.ParamByName('data2').AsDateTime := DMMACS.TALX.FieldByName('dtentsaid').AsDateTime; //DT_E_S
                        MDO.Query.ParamByName('desc1').AsString := DMMACS.TALX.FieldByName('descricao').AsString; //FORMPAG
                        MDO.Query.ParamByName('desc2').AsString := DMMACS.TALX.FieldByName('numdocfis').AsString; //NUM_DOC
                        MDO.Query.ParamByName('desc3').AsString := DMMACS.TALX.FieldByName('status').AsString; // COD_SIT
                        MDO.Query.ParamByName('desc4').AsString := DMMACS.TALX.FieldByName('nfechave').AsString; // CHV_NFE
                        MDO.Query.ParamByName('int1').AsInteger := DMMACS.TALX.FieldByName('serie').AsInteger; //SER                       
                        MDO.Query.ParamByName('int2').AsInteger := DMMACS.TALX.FieldByName('cod_pessoa').AsInteger; //COD_PART
                        MDO.Query.ParamByName('int3').AsInteger := DMMACS.TALX.FieldByName('cod_docfiscord').AsInteger; //COD_INF
                        MDO.Query.ParamByName('obs').AsString := 'ORD'; // IND_OPER
                        MDO.Query.ParamByName('vlr1').AsCurrency := DMMACS.TALX.FieldByName('vlrtotdocnf').AsCurrency; //VL_DOC
                        MDO.Query.ParamByName('vlr2').AsCurrency := DMMACS.TALX.FieldByName('vlrdesconto').AsCurrency; //VL_DESC
                        MDO.Query.ParamByName('vlr3').AsCurrency := DMMACS.TALX.FieldByName('freteconta').AsCurrency; //IND_FRT
                        MDO.Query.ParamByName('vlr4').AsCurrency := DMMACS.TALX.FieldByName('vlrfrete').AsCurrency; //VL_FRT
                        MDO.Query.ParamByName('vlr5').AsCurrency := DMMACS.TALX.FieldByName('vlroutrasdesp').AsCurrency; //VL_OUT_DA
                        MDO.Query.ParamByName('vlr6').AsCurrency := DMMACS.TALX.FieldByName('baseicms').AsCurrency; //VL_BC_ICMS
                        MDO.Query.ParamByName('vlr7').AsCurrency := DMMACS.TALX.FieldByName('vlricms').AsCurrency; // VL_ICMS
                        MDO.Query.ParamByName('vlr8').AsCurrency := DMMACS.TALX.FieldByName('bascalsubs').AsCurrency; //VL_BC_ICMS_ST,
                        MDO.Query.ParamByName('vlr9').AsCurrency := DMMACS.TALX.FieldByName('vlricmsubs').AsCurrency; //VL_ICMS_ST
                        MDO.Query.ParamByName('vlr10').AsCurrency := DMMACS.TALX.FieldByName('vlrtotprod').AsCurrency; //VL_MERC
                        MDO.Query.ParamByName('vlr16').AsString := '0'; //emissaopropria // IND_EMIT
                        MDO.Query.ExecSQL;

                        Try
                            MDO.Transac.CommitRetaining;
                            Result := True;
                        Except
                            MDO.Transac.RollbackRetaining;
                            Result := False;
                        End;

                        If Not DMMACS.TAlx.EOF Then
                            DMMACS.TAlx.Next;
                    End;
                End;
            End;
        End;

        //FILTRAR O TMP COM OS CLIENTES E FORNECEDORES PARA IMPRIMIR NO REGISTRO
        MDO.QConsulta.Close;
        MDO.QConsulta.SQL.Clear;
        MDO.QConsulta.SQL.Add('select tmp.data1 as DT_DOC, tmp.data2 as DT_E_S, tmp.desc1 as IND_PGTO, tmp.desc2 as NUM_DOC, tmp.desc3 as COD_SIT, tmp.desc4 as CHV_NFE,');
        MDO.QConsulta.SQL.Add('tmp.int1 as SER, tmp.int2 as COD_PART, tmp.int3 as COD_INF , tmp.obs as IND_OPER,');
        MDO.QConsulta.SQL.Add('tmp.vlr1 as VL_DOC, tmp.vlr2 as VL_DESC, tmp.vlr3 as IND_FRT, tmp.vlr4 as VL_FRT, tmp.vlr5 as VL_OUT_DA, tmp.vlr6 as VL_BC_ICMS,');
        MDO.QConsulta.SQL.Add('tmp.vlr7 as VL_ICMS, tmp.vlr8 as VL_BC_ICMS_ST, tmp.vlr9 as VL_ICMS_ST, tmp.vlr10 as VL_MERC, tmp.vlr16 as IND_EMIT');
        MDO.QConsulta.SQL.Add('from tmp');
        MDO.QConsulta.SQL.Add('order by tmp.data1');
        MDO.QConsulta.Open;

        DMMACS.TALX.First;
        While Not (MDO.QConsulta.EOF) And (controle = True) Do
        Begin
            contNumItem := 0;
            If PararExecucao = True
                Then Begin
                Result := False;
                Exit;
            End;
            {
            ANOTAÇÕES:
            *** campos obrigatórios
            Se obs = PC e IND_EMIT for 0 ou NULL é terceiros, se IND_EMIT = 1 é emissão própria
            }
            contLinhas := contLinhas + 1;
            xLinha := '';
            //01 REG Imprime Num. Registro
            xLinha := xLinha + '|C100|';

            //*** 02 IND_OPER - Imprime Indicador do tipo de operação: 0- Entrada; 1- Saída
            If MDO.QConsulta.FieldByName('IND_OPER').AsString = ''
                Then Begin
                AddLogln(true, 1, ' [xxxx] Indicador do tipo de operação não informado');
                controle := False;
            End
            Else Begin
                If MDO.QConsulta.FieldByName('IND_OPER').AsString = 'PC'
                    Then Begin
                    xLinha := xLinha + '0|'; //entrada
                    IND_OPER := '0';
                End
                Else Begin
                    xLinha := xLinha + '1|'; //saída
                    IND_OPER := '1';
                End;
            End;

            //*** 03 IND_EMIT - Imprime Indicador do emitente do documento fiscal 0- Emissão própria 1- Terceiros
            //quando no vwpedc o campo EMISSAOPROPRIA = 0 ou null é parar terceiros, então indicador = 1, senão indicador = 0
            If (MDO.QConsulta.FieldByName('IND_OPER').AsString = 'PC') And ((MDO.QConsulta.FieldByName('IND_EMIT').AsString = '0') Or (MDO.QConsulta.FieldByName('IND_EMIT').AsString = ''))
                Then Begin
                xLinha := xLinha + '1|'; //terceiros  (PC e <>1 terceiros - 0 ou null)
                IND_EMIT := '1';
            End
            Else Begin
                xLinha := xLinha + '0|'; // emissão propria
                IND_EMIT := '0';
            End;
            
            //*** 04 COD_PART - Imprime Código do participante (campo 02 do Registro 0150):
            If MDO.QConsulta.FieldByName('COD_PART').AsString = ''
                Then Begin
                AddLogln(true, 1, ' [xxxx] Código do participante (campo 02 do Registro 0150) não informado');
                controle := False;
            End
            Else
                xLinha := xLinha + Trim(Copy(MDO.QConsulta.FieldByName('COD_PART').AsString, 0, 60)) + '|';


            //*** 05 COD_MOD Código do modelo do documento fiscal, conforme a Tabela 4.1.1
            // - sempre será 55 = Nota Fiscal Eletrônica
            xLinha := xLinha + '55|';

            //*** 06 COD_SIT Código da situação do documento fiscal, conforme a Tabela 4.1.2
            //	- campo 6, se o status for fechado = 0, se for cancelado = 02, se for denegado = 4
            If MDO.QConsulta.FieldByName('COD_SIT').AsString = ''
                Then Begin
                AddLogln(true, 1, ' [xxxx] Código da situação do documento fiscal não informado');
                controle := False;
            End
            Else Begin
                If MDO.QConsulta.FieldByName('COD_SIT').AsString = 'CANCELADO'
                    Then Begin
                    xLinha := xLinha + '02|';
                    ICOD_SIT := True;
                End;
                If MDO.QConsulta.FieldByName('COD_SIT').AsString = 'DENEGADO'
                    Then Begin
                    xLinha := xLinha + '04|';
                    ICOD_SIT := True;
                End;
                If MDO.QConsulta.FieldByName('COD_SIT').AsString = 'FECHADO'
                    Then Begin
                    xLinha := xLinha + '00|';
                    ICOD_SIT := False;
                End;
            End;

            //SER Série do documento fiscal
            If MDO.QConsulta.FieldByName('SER').AsString = '' Then
                xLinha := xLinha + '0|'
            Else
                xLinha := xLinha + Trim(Copy(MDO.QConsulta.FieldByName('SER').AsString, 0, 3)) + '|';
                
            //*** 08 NUM_DOC Número do documento fiscal
            If MDO.QConsulta.FieldByName('NUM_DOC').AsString = ''
                Then Begin
                AddLogln(true, 1, ' [xxxx] Número do documento fiscal não informado');
                controle := False;
            End
            Else
                xLinha := xLinha + Trim(Copy(MDO.QConsulta.FieldByName('NUM_DOC').AsString, 0, 9)) + '|';

            //*** 09 CHV_NFE Chave da Nota Fiscal Eletrônica
            If MDO.QConsulta.FieldByName('CHV_NFE').AsString = ''
                Then Begin
                AddLogln(true, 1, ' [xxxx] Chave da Nota Fiscal Eletrônica não informado');
                controle := False;
            End
            Else
                xLinha := xLinha + Trim(Copy(MDO.QConsulta.FieldByName('CHV_NFE').AsString, 0, 44)) + '|';

            // Se ICOD_SIT = True = a situação é denegado/cancelado, portanto não entra os dados a seguir, retorna eles em campo vazio '||'
            If ICOD_SIT = False
                Then Begin

                //***10 DT_DOC Data da emissão do documento fiscal
                If MDO.QConsulta.FieldByName('DT_DOC').AsString = ''
                    Then Begin
                    AddLogln(true, 1, ' [xxxx] Data da emissão do documento fiscal não informado');
                    controle := False;
                End
                Else Begin
                    If (MDO.QConsulta.FieldByName('DT_DOC').AsString < Dt02) Or (MDO.QConsulta.FieldByName('DT_DOC').AsString = Dt02)
                        Then Begin
                        xLinha := xLinha + FormatDateTime('ddmmyyyy', MDO.QConsulta.FieldByName('DT_DOC').AsDateTime) + '|';
                    End
                    Else Begin
                        AddLogln(true, 1, ' [xxxx] Data da emissão do documento fiscal maior que a data final do período do registro 0000');
                        controle := False;
                    End;
                End;

                //11 DT_E_S Data da entrada ou da saída
                If IND_OPER = '1' //saida
                    Then Begin
                    If MDO.QConsulta.FieldByName('DT_E_S').AsString = '' Then
                        xLinha := xLinha + '||'
                    Else
                        xLinha := xLinha + FormatDateTime('ddmmyyyy', MDO.QConsulta.FieldByName('DT_E_S').AsDateTime) + '|';
                End //entradas
                Else Begin
                    If (MDO.QConsulta.FieldByName('DT_E_S').AsString > Dt02)
                        Then Begin
                        AddLogln(true, 1, ' [xxxx] Data da emissão do documento fiscal maior que a data final do período do registro 0000');
                        controle := False;
                    End
                    Else Begin
                        xLinha := xLinha + FormatDateTime('ddmmyyyy', MDO.QConsulta.FieldByName('DT_E_S').AsDateTime) + '|';
                    End;
                End;


                //***12 VL_DOC Valor total do documento fiscal
                If MDO.QConsulta.FieldByName('VL_DOC').AsString = ''
                    Then Begin
                    AddLogln(true, 1, ' [xxxx] Valor total do documento fiscal não informado');
                    controle := False;
                End
                Else
                    xLinha := xLinha + FormatCurr('0.00', MDO.QConsulta.FieldByName('VL_DOC').AsCurrency) + '|';

                //***13 IND_PGTO Indicador do tipo de pagamento: 0- À vista; 1- A prazo; 2 - Outros;
                If MDO.QConsulta.FieldByName('IND_PGTO').AsString = ''
                    Then Begin
                    AddLogln(true, 1, ' [xxxx] Valor total do documento fiscal não informado');
                    controle := False;
                End
                Else Begin
                    If MDO.QConsulta.FieldByName('IND_PGTO').AsString = 'À VISTA' Then
                        xLinha := xLinha + '0|' //à vista
                    Else
                        xLinha := xLinha + '1|'; //prazo
                End;

                //14 VL_DESC Valor total do desconto
                If MDO.QConsulta.FieldByName('VL_DESC').AsString = '' Then
                    xLinha := xLinha + '0,00|'
                Else
                    xLinha := xLinha + FormatCurr('0.00', MDO.QConsulta.FieldByName('VL_DESC').AsCurrency) + '|';

                //15 VL_ABAT_NT Abatimento não tributado e não comercial Ex. desconto ICMS nas remessas para ZFM.
                xLinha := xLinha + '0,00|';

                //16 VL_MERC Valor total das mercadorias e serviços
                If MDO.QConsulta.FieldByName('VL_MERC').AsString = ''
                    Then Begin
                    AddLogln(true, 1, ' [xxxx] Valor total das mercadorias e serviços não informado');
                    controle := False;
                End
                Else
                    xLinha := xLinha + FormatCurr('0.00', MDO.QConsulta.FieldByName('VL_MERC').AsCurrency) + '|';

                //***17 IND_FRT Indicador do tipo do frete
                   //0- Por conta do emitente; 1- Por conta do destinatário/remetente; 2- Por conta de terceiros; 9- Sem cobrança de frete.
                If MDO.QConsulta.FieldByName('IND_FRT').AsString = ''
                    Then Begin
                    AddLogln(true, 1, ' [xxxx] Indicador do tipo do frete não informado');
                    controle := False;
                End
                Else Begin
                    If MDO.QConsulta.FieldByName('IND_FRT').AsString = '0' Then
                        xLinha := xLinha + '0|';
                    If MDO.QConsulta.FieldByName('IND_FRT').AsString = '1' Then
                        xLinha := xLinha + '1|';
                    If MDO.QConsulta.FieldByName('IND_FRT').AsString = '2' Then
                        xLinha := xLinha + '2|';
                    If MDO.QConsulta.FieldByName('IND_FRT').AsString = '9' Then
                        xLinha := xLinha + '9|';
                End;

                //18 VL_FRT Valor do frete indicado no documento fiscal
                If MDO.QConsulta.FieldByName('VL_FRT').AsString = '' Then
                    xLinha := xLinha + '0,00|'
                Else
                    xLinha := xLinha + FormatCurr('0.00', MDO.QConsulta.FieldByName('VL_FRT').AsCurrency) + '|';

                //19 VL_SEG Valor do seguro indicado no documento fiscal
                xLinha := xLinha + '0,00|';

                //20 VL_OUT_DA Valor de outras despesas acessórias
                If MDO.QConsulta.FieldByName('VL_OUT_DA').AsString = '' Then
                    xLinha := xLinha + '0,00|'
                Else
                    xLinha := xLinha + FormatCurr('0.00', MDO.QConsulta.FieldByName('VL_OUT_DA').AsCurrency) + '|';

                //21 VL_BC_ICMS Valor da base de cálculo do ICMS
                If MDO.QConsulta.FieldByName('VL_BC_ICMS').AsString = '' Then
                    xLinha := xLinha + '0,00|'
                Else
                    xLinha := xLinha + FormatCurr('0.00', MDO.QConsulta.FieldByName('VL_BC_ICMS').AsCurrency) + '|';

                //22 VL_ICMS Valor do ICMS
                If MDO.QConsulta.FieldByName('VL_BC_ICMS').AsString = '' Then
                    xLinha := xLinha + '0,00|'
                Else
                    xLinha := xLinha + FormatCurr('0.00', MDO.QConsulta.FieldByName('VL_BC_ICMS').AsCurrency) + '|';

                //23 VL_BC_ICMS_ST Valor da base de cálculo do ICMS substituição tributária
                If MDO.QConsulta.FieldByName('VL_BC_ICMS_ST').AsString = '' Then
                    xLinha := xLinha + '0,00|'
                Else
                    xLinha := xLinha + FormatCurr('0.00', MDO.QConsulta.FieldByName('VL_BC_ICMS_ST').AsCurrency) + '|';

                //24 VL_ICMS_ST Valor do ICMS retido por substituição tributária

                If MDO.QConsulta.FieldByName('VL_ICMS_ST').AsString = '' Then
                    xLinha := xLinha + '0,00|'
                Else
                    xLinha := xLinha + FormatCurr('0.00', MDO.QConsulta.FieldByName('VL_ICMS_ST').AsCurrency) + '|';

                //25 VL_IPI Valor total do IPI
                VL_IPI := CurrToStr(MDO.QConsulta.FieldByName('VL_BC_ICMS_ST').AsCurrency - MDO.QConsulta.FieldByName('VL_ICMS_ST').AsCurrency);
                If VL_IPI = '' Then
                    xLinha := xLinha + '0,00|'
                Else
                    xLinha := xLinha + FormatCurr('0.00', StrToCurr(VL_IPI)) + '|';

                //26 VL_PIS Valor total do PIS
                xLinha := xLinha + '0,00|';

                //27 VL_COFINS Valor total da COFINS
                xLinha := xLinha + '0,00|';

                //28 VL_PIS_ST Valor total do PIS retido por substituição tributária
                xLinha := xLinha + '0,00|';

                //29 VL_COFINS_ST Valor total da COFINS retido por substituição tributária
                xLinha := xLinha + '0,00|';

                contRegistroC100 := contRegistroC100 + 1;
                //Imprime a linha do registro C100
                Writeln(xTexto, xLinha);

                //////////////////////////////////////
                ////////// REGISTROS FILHOS //////////
                //////////////////////////////////////
                //C110: Dados Complementares
                RegistroC110(MDO.QConsulta.FieldByName('COD_INF').AsInteger, MDO.QConsulta.FieldByName('IND_OPER').AsString);
                If MDO.QConsulta.FieldByName('IND_OPER').AsString = 'PC'
                    Then Begin
                    //C170: itend de nfe de entrada
                    RegistroC170(MDO.QConsulta.FieldByName('COD_INF').AsInteger);
                End;
                //C190: Analitico do documento fiscal
                RegistroC190(MDO.QConsulta.FieldByName('COD_INF').AsInteger);

            End //Fim if COD_SIT do Registro C100
            Else Begin //se for COD_SIT = 02 ou 04
                xLinha := xLinha + '||||||||||||||||||||';
                contRegistroC100 := contRegistroC100 + 1;
                //Imprime a linha do registro C100
                Writeln(xTexto, xLinha);
            End;

            MDO.QConsulta.Next;
        End;

        Result := True;

        AddLogln(true, 0, 'Finalizando registros filhos... ');
        AddLogln(true, 0, 'Registro finalizado. ');
        AddLogln(true, 0, '---------------------------------------------------------------------------------------------------------------------------');
    Except
        Result := False;
    End;

End;

//ALEX 20/08/2013 - Função para inserir os registros temporiarios do Arquivo C100 no arquivo de xml

Function TFSped.C100InsertTmp: Boolean;
Var
    xCodTMP, xSerie: Integer;
Begin
    Result := True;
    Try
        xCodTMP := 1;
        //01 - LIMPAR DOS DADOS DA TABELA TMP
        Try
            DMFiscal.SpedC100.EmptyDataSet;
            DMFiscal.SpedC190.EmptyDataSet;
            DMFiscal.SpedC170.EmptyDataSet;
        Except
        End;
        //*******************************************************
        //02 - Selecionando as informações para Pedido de Compra
        //*******************************************************
        DMMACS.TALX.Close;
        DMMACS.TALX.SQL.Clear;
        DMMACS.TALX.SQL.Add('select docfis.serie, docfis.numdocfis, docfis.nfechave, docfis.dtemissao, docfis.dtentsaid, docfis.emissaopropria, '); //Jônatas 30/08/2013 - Inclui docfis.emisaopropria
        DMMACS.TALX.SQL.Add('docfis.vlrtotdocnf, docfis.vlrdesconto, docfis.freteconta, docfis.vlrfrete, docfis.vlrtotipi, ');
        DMMACS.TALX.SQL.Add('docfis.vlroutros, docfis.baseicms, docfis.vlricms, docfis.bascalsubs, docfis.vlrtotprod,');
        DMMACS.TALX.SQL.Add('docfis.vlricmsubs, formpag.descricao, pessoa.cod_pessoa as PESSOA, pedcompra.situacao, docfis.cod_docfisc'); //Jônatas 30/08/2013 - Tirei pedcompra.emisaopropria
        DMMACS.TALX.SQL.Add('from docfis');
        DMMACS.TALX.SQL.Add('left join pedcompra on docfis.cod_pedido = pedcompra.cod_pedcomp');
        DMMACS.TALX.SQL.Add('left join formpag on pedcompra.cod_formpag = formpag.cod_formpag');
        DMMACS.TALX.SQL.Add('left join vwfornec on pedcompra.cod_fornec = vwfornec.cod_fornec');
        DMMACS.TALX.SQL.Add('left join pessoa on vwfornec.cod_pessoa = pessoa.cod_pessoa');//Edmar - 08/04/2014 - Foi inserido a condição (docfis.nfechave <> '+ #39 + '' + #39 + ') para retornar apenas nota que possuem chave de nfe
        DMMACS.TALX.SQL.Add('where (docfis.cod_periodofiscal =:periodo) AND (docfis.nfechave is not null) AND (( pedcompra.fisco = ' + #39 + 'NF' + #39 + ') OR (pedcompra.fisco = ' + #39 + 'NFE' + #39 + '))');
        DMMACS.TALX.ParamByName('periodo').AsInteger := DMMACS.TPeriodoFiscal.FieldByName('COD_PERIODOFISCAL').AsInteger;
        DMMACS.TALX.Open;
        //03 - Insere em Tabela Temporária
        DMMACS.TALX.First;
        While Not DMMACS.TALX.EOF Do
        Begin
            xCodTMP := xCodTMP + 1;
            Try
                DMFiscal.SpedC100.Insert;
                DMFiscal.SpedC100.FieldByName('CODIGO').AsInteger := DMMACS.TALX.FieldByName('cod_docfisc').AsInteger;
                DMFiscal.SpedC100.FieldByName('TP_OPER').AsString := 'PC';//Edmar - 18/03/2014 - Foi reinserido o campo TP_OPER
                //02 - Indice do tipo de operação 0= Entrada 1=Saída
                DMFiscal.SpedC100.FieldByName('IND_OPER').AsInteger := 0;
                //03 - Indicador do tipo do emitente 0=emissão própria 1=terceiros
                If DMMACS.TALX.FieldByName('emissaopropria').AsInteger = 1 Then
                    DMFiscal.SpedC100.FieldByName('IND_EMIT').AsInteger := 0
                Else
                    DMFiscal.SpedC100.FieldByName('IND_EMIT').AsInteger := 1;

                //05 - Código do modelo do documento fiscal
                DMFiscal.SpedC100.FieldByName('COD_MOD').AsInteger := 55; // DMMACS.TALX.FieldByName('numdocfis').AsString;

                //07 - Serie da nota fiscal
                DMFiscal.SpedC100.FieldByName('SER').AsInteger := DMMACS.TALX.FieldByName('serie').AsInteger;
                //08 - Numero da nota fiscal
                DMFiscal.SpedC100.FieldByName('NUM_DOC').AsInteger := DMMACS.TALX.FieldByName('numdocfis').AsInteger;
                //09 - Chave da nota fiscal eletronica
                DMFiscal.SpedC100.FieldByName('CHV_NFE').AsString := DMMACS.TALX.FieldByName('nfechave').AsString;

                //Jônatas 17/09/2013 - Exceção 7 do Registro C100 para notas de terceiros
                If DMFiscal.SpedC100.FieldByName('IND_EMIT').AsInteger = 0
                Then Begin
                    //Código da Situação do documento
                    If DMMACS.TALX.FieldByName('situacao').AsString = 'CANCELADO' Then
                        DMFiscal.SpedC100.FieldByName('COD_SIT').AsString := '02';
                    If DMMACS.TALX.FieldByName('situacao').AsString = 'DENEGADO' Then
                        DMFiscal.SpedC100.FieldByName('COD_SIT').AsString := '04';
                    If DMMACS.TALX.FieldByName('situacao').AsString = 'FECHADO' Then
                        DMFiscal.SpedC100.FieldByName('COD_SIT').AsString := '00';
                End
                Else
                    DMFiscal.SpedC100.FieldByName('COD_SIT').AsString := '08';

                //Jônatas 17/09/2013 - Exceção 4 do Registro C100 para notas em situação especial
                If ((DMFiscal.SpedC100.FieldByName('COD_SIT').AsString = '00') or(DMFiscal.SpedC100.FieldByName('COD_SIT').AsString = '08'))
                Then Begin
                    //Data do documento fiscal
                    DMFiscal.SpedC100.FieldByName('DT_DOC').AsDateTime := DMMACS.TALX.FieldByName('dtemissao').AsDateTime;
                End;

                //Jônatas 17/09/2013 - Exceção 1 do Registro C100 para notas canceladas ou denegadas(23/09/2013 - inculído situação 08 para validação de campos
                If ((DMFiscal.SpedC100.FieldByName('COD_SIT').AsString = '00') or(DMFiscal.SpedC100.FieldByName('COD_SIT').AsString = '08'))
                Then Begin

                    //Registros filhos
                    //If ((DMMACS.TALX.FieldByName('vlricmsubs').AsFloat > 0) And (DMMACS.TALX.FieldByName('emissaopropria').AsInteger = 1)) Then
                        //C170InsertTmp(DMMACS.TALX.FieldByName('cod_docfisc').AsInteger, 'PC');//Emissão própria com Ressarcimento de ICMS em Operações com Substituição Tributária
                    //Else Begin
                    If DMFiscal.SpedC100.FieldByName('IND_EMIT').AsInteger = 1 Then
                        C170InsertTmp(DMMACS.TALX.FieldByName('cod_docfisc').AsInteger, 'PC'); //Emissão de terceiros
                    //End;
                    //Registro C190 obrigatório
                    C190InsertTmp(DMMACS.TALX.FieldByName('cod_docfisc').AsInteger, 'PC');
                    //Jônatas 26/09/2013 - Realocado apra atender a exceção de NFe Denegada (COD_SIT = 04)
                    //04 - Código do Participante
                    DMFiscal.SpedC100.FieldByName('COD_PART').AsString := DMMACS.TALX.FieldByName('PESSOA').AsString; //Jônatas 27/08/2013 - Alterado de 'serie' para 'PESSOA'

                    //11 - Data de Entrada e Saida
                    DMFiscal.SpedC100.FieldByName('DT_E_S').AsDateTime := DMMACS.TALX.FieldByName('dtentsaid').AsDateTime;

                    //12 - Valor total do Documento Fiscal
                    DMFiscal.SpedC100.FieldByName('VL_DOC').AsFloat := XC190Vl_Doc;

                    //13 - Indice da Forma de Pagamento
                    If DMMACS.TALX.FieldByName('descricao').AsString = 'À VISTA' Then
                        DMFiscal.SpedC100.FieldByName('IND_PGTO').AsString := '0' //à vista
                    Else
                        DMFiscal.SpedC100.FieldByName('IND_PGTO').AsString := '1'; //prazo
                    //14 - Valor do Desconto na Nota Fiscal
                    DMFiscal.SpedC100.FieldByName('VL_DESC').AsFloat := DMMACS.TALX.FieldByName('vlrdesconto').AsFloat;
                    //15 - Valor não tributado e não comercial
                    DMFiscal.SpedC100.FieldByName('VL_ABAT_NT').AsFloat := 0;

                    //16 - Valor total das Mercadorias
                    DMFiscal.SpedC100.FieldByName('VL_MERC').AsFloat := DMMACS.TALX.FieldByName('vlrtotprod').AsFloat;

                    //18 - Valor do Frete
                    DMFiscal.SpedC100.FieldByName('VL_FRT').AsFloat := DMMACS.TALX.FieldByName('vlrfrete').AsFloat;
                    If DMFiscal.SpedC100.FieldByName('VL_FRT').AsFloat >0
                    Then Begin
                        //17 - Indice do frete
                        If DMMACS.TALX.FieldByName('freteconta').AsInteger = 1 Then
                            DMFiscal.SpedC100.FieldByName('IND_FRT').AsInteger := 0 //Por conta do emitente
                        Else Begin
                            If DMMACS.TALX.FieldByName('freteconta').AsInteger = 2 Then
                                DMFiscal.SpedC100.FieldByName('IND_FRT').AsInteger := 1; //Por conta do Destinatário
                            //Else
                                //DMFiscal.SpedC100.FieldByName('IND_FRT').AsInteger := 9; //Sem cobrança de frete
                        End;
                    End
                    Else
                        DMFiscal.SpedC100.FieldByName('IND_FRT').AsInteger := 9;//Sem cobrança de frete


                    //19 - Valor do Seguro
                    DMFiscal.SpedC100.FieldByName('VL_SEG').AsFloat := 0;
                    //20 - Valor de Outras Despesas
                    DMFiscal.SpedC100.FieldByName('VL_OUT_DA').AsFloat := DMMACS.TALX.FieldByName('vlroutros').AsFloat;

                    //21 - Valor da base de cálculo Icms
                    DMFiscal.SpedC100.FieldByName('VL_BC_ICMS').AsFloat := XC190Vl_Bc_Icms;
                    //22 - Valor de Icms
                    DMFiscal.SpedC100.FieldByName('VL_ICMS').AsFloat := XC190Vl_Icms;
                    //Base de Calculo de Icms Substituição tributária
                    DMFiscal.SpedC100.FieldByName('VL_BC_ICMS_ST').AsFloat := XC190Vl_Bc_Icms_St;
                                                               
                    //23 - Valor de IcmsSubstituição Tributária
                    DMFiscal.SpedC100.FieldByName('VL_ICMS_ST').AsFloat := XC190Vl_Icms_St;

                    //24 - Valor Total do IPI
                    DMFiscal.SpedC100.FieldByName('VL_IPI').AsFloat := XC190Vl_Ipi;

                    DMFiscal.SpedC100.FieldByName('VL_PIS').AsFloat := 0; //Valor de Pis
                    DMFiscal.SpedC100.FieldByName('VL_COFINS').AsFloat := 0; //Valor de Cofins
                    DMFiscal.SpedC100.FieldByName('VL_PIS_ST').AsFloat := 0; //Valor total do Pis
                    DMFiscal.SpedC100.FieldByName('VL_COFINS_ST').AsFloat := 0; //Valor total do cofins
                End;

                DMFiscal.SpedC100.Post;

            Except
                Result := False;
            End;
            DMMACS.TAlx.Next;
        End;
        //****************************************
        //04 - Filtra dados para Pedidos de venda
        //****************************************
        If Result = True
            Then Begin
            DMMACS.TALX.Close;
            DMMACS.TALX.SQL.Clear;
            DMMACS.TALX.SQL.Add('select docfissaida.serie, docfissaida.numdocfis, docfissaida.nfechave, docfissaida.dtemissao, docfissaida.dtentsaid,');
            DMMACS.TALX.SQL.Add('docfissaida.vlrtotdocnf, docfissaida.vlrdesconto, docfissaida.freteconta, docfissaida.vlrfrete, docfissaida.vlrtotipi,');
            DMMACS.TALX.SQL.Add('docfissaida.vlroutrasdesp, docfissaida.baseicms, docfissaida.vlricms, docfissaida.bascalsubs, docfissaida.vlrtotprod,');
            DMMACS.TALX.SQL.Add('docfissaida.vlricmsubs, formpag.descricao, pessoa.cod_pessoa, pedvenda.situacao, docfissaida.cod_docfisc, docfissaida.modelonf');
            DMMACS.TALX.SQL.Add('from docfissaida');
            DMMACS.TALX.SQL.Add('left join pedvenda on docfissaida.cod_pedido = pedvenda.cod_pedvenda');
            DMMACS.TALX.SQL.Add('left join formpag on pedvenda.cod_formpag = formpag.cod_formpag');
            DMMACS.TALX.SQL.Add('left join cliente on pedvenda.cod_cliente = cliente.cod_cliente');
            DMMACS.TALX.SQL.Add('left join pessoa on cliente.cod_pessoa = pessoa.cod_pessoa');
            DMMACS.TALX.SQL.Add('where (docfissaida.cod_periodofiscal =:periodo) AND (( pedvenda.fisco = ' + #39 + 'NF' + #39 + ') OR (pedvenda.fisco = ' + #39 + 'NFE' + #39 + ')  OR (pedvenda.fisco = ''NFCe''))');
            DMMACS.TALX.ParamByName('periodo').AsInteger := DMMACS.TPeriodoFiscal.FieldByName('COD_PERIODOFISCAL').AsInteger;
            DMMACS.TALX.Open;
            DMMACS.TALX.First;
            While Not DMMACS.TALX.EOF Do
            Begin
                xCodTMP := xCodTMP + 1;
                Try

                    DMFiscal.SpedC100.Insert;
                    DMFiscal.SpedC100.FieldByName('CODIGO').AsInteger := DMMACS.TALX.FieldByName('cod_docfisc').AsInteger;
                    DMFiscal.SpedC100.FieldByName('TP_OPER').AsString := 'PV';//Edmar - 18/03/2014 - Foi reinserido o campo TP_OPER
                    //02 - Indice do tipo de oPeração 0= Entrada 1=Saída
                    DMFiscal.SpedC100.FieldByName('IND_OPER').AsInteger := 1;

                    //03 - Indicador do tipo do emitente 0=emissão própria 1=terceiros
                    DMFiscal.SpedC100.FieldByName('IND_EMIT').AsInteger := 0;

                    DMFiscal.SpedC100.FieldByName('COD_MOD').AsInteger := DMMACS.TALX.FieldByName('modelonf').AsInteger; //Código do modelo do documento fiscal DMMACS.TALX.FieldByName('numdocfis').AsString;
                    //DMFiscal.SpedC100.FieldByName('COD_MOD').AsInteger := 55;
                    DMFiscal.SpedC100.FieldByName('SER').AsInteger := DMMACS.TALX.FieldByName('serie').AsInteger; //Serie da nota fiscal
                    //Numero da nota fiscal
                    DMFiscal.SpedC100.FieldByName('NUM_DOC').AsInteger := DMMACS.TALX.FieldByName('numdocfis').AsInteger;
                    //Chave da nota fiscal eletronica
                    DMFiscal.SpedC100.FieldByName('CHV_NFE').AsString := DMMACS.TALX.FieldByName('nfechave').AsString;
                    //Jônatas 17/09/2013 - Exceção 7 do Registro C100 para notas de terceiros
                    If DMFiscal.SpedC100.FieldByName('IND_EMIT').AsInteger = 0
                    Then Begin
                        //Código da Situação do documento
                        If DMMACS.TALX.FieldByName('situacao').AsString = 'CANCELADO' Then
                            DMFiscal.SpedC100.FieldByName('COD_SIT').AsString := '02';
                        If DMMACS.TALX.FieldByName('situacao').AsString = 'DENEGADO' Then
                            DMFiscal.SpedC100.FieldByName('COD_SIT').AsString := '04';
                        If DMMACS.TALX.FieldByName('situacao').AsString = 'FECHADO' Then
                            DMFiscal.SpedC100.FieldByName('COD_SIT').AsString := '00';
                    End
                    Else
                        DMFiscal.SpedC100.FieldByName('COD_SIT').AsString := '08';

                    //Jônatas 17/09/2013 - Exceção 4 do Registro C100 para notas em situação especial
                    If ((DMFiscal.SpedC100.FieldByName('COD_SIT').AsString = '00') or(DMFiscal.SpedC100.FieldByName('COD_SIT').AsString = '08'))
                    Then Begin
                        //Data do documento fiscal
                        DMFiscal.SpedC100.FieldByName('DT_DOC').AsDateTime := DMMACS.TALX.FieldByName('dtemissao').AsDateTime;
                    End;

                    //Jônatas 17/09/2013 - Exceção 1 do Registro C100 para notas canceladas ou denegadas(23/09/2013 - inculído situação 08 para validação de campos
                    If ((DMFiscal.SpedC100.FieldByName('COD_SIT').AsString = '00') or(DMFiscal.SpedC100.FieldByName('COD_SIT').AsString = '08'))
                    Then Begin

                        //Registro Filho C170
                        {If ((DMMACS.TALX.FieldByName('vlricmsubs').AsFloat > 0) And (DMMACS.TALX.FieldByName('emissaopropria').AsInteger = 1)) Then
                            C170InsertTmp(DMMACS.TALX.FieldByName('cod_docfisc').AsInteger, 'PV')//Emissão própria com Ressarcimento de ICMS em Operações com Substituição Tributária
                        Else Begin //Jônatas 10/09/2013 - Talvez só ter valor em icms de substituição tributária não gere ressarcimento, verificar legislação
                            If DMMACS.TALX.FieldByName('emissaopropria').AsInteger <> 1 Then
                                C170InsertTmp(DMMACS.TALX.FieldByName('cod_docfisc').AsInteger, 'PV');//Emissão de terceiros
                        End;}
                        //Registro C190 obrigatório
                        C190InsertTmp(DMMACS.TALX.FieldByName('cod_docfisc').AsInteger, 'PV');
                        //Jônatas 26/09/2013 - Realocado apra atender a exceção de NFe Denegada (COD_SIT = 04)
                        //04 - Código do participante
                        DMFiscal.SpedC100.FieldByName('COD_PART').AsInteger := DMMACS.TALX.FieldByName('cod_pessoa').AsInteger;

                        //Data do documento fiscal
                        DMFiscal.SpedC100.FieldByName('DT_DOC').AsDateTime := DMMACS.TALX.FieldByName('dtemissao').AsDateTime;
                        //Data de Entrada e Saida
                        DMFiscal.SpedC100.FieldByName('DT_E_S').AsDateTime := DMMACS.TALX.FieldByName('dtentsaid').AsDateTime;
                        //Valor total do Documento Fiscal
                        DMFiscal.SpedC100.FieldByName('VL_DOC').AsFloat := XC190Vl_Doc;

                        //Indice da Forma de Pagamento
                        If DMMACS.TALX.FieldByName('descricao').AsString = 'À VISTA' Then
                            DMFiscal.SpedC100.FieldByName('IND_PGTO').AsString := '0' //à vista
                        Else
                            DMFiscal.SpedC100.FieldByName('IND_PGTO').AsString := '1'; //prazo

                        DMFiscal.SpedC100.FieldByName('VL_DESC').AsCurrency := DMMACS.TALX.FieldByName('vlrdesconto').AsCurrency; //Valor do Desconto na Nota Fiscal
                        DMFiscal.SpedC100.FieldByName('VL_ABAT_NT').AsCurrency := 0; //Valor não tributado e não comercial
                        DMFiscal.SpedC100.FieldByName('VL_MERC').AsCurrency := DMMACS.TALX.FieldByName('vlrtotprod').AsCurrency; //Valor total das Mercadorias
                        //18 - Valor do Frete
                        DMFiscal.SpedC100.FieldByName('VL_FRT').AsFloat := DMMACS.TALX.FieldByName('vlrfrete').AsFloat;
                        If DMFiscal.SpedC100.FieldByName('VL_FRT').AsFloat >0
                        Then Begin
                            //17 - Indice do frete
                            If DMMACS.TALX.FieldByName('freteconta').AsInteger = 1 Then
                                DMFiscal.SpedC100.FieldByName('IND_FRT').AsInteger := 0 //Por conta do emitente
                            Else Begin
                                If DMMACS.TALX.FieldByName('freteconta').AsInteger = 2 Then
                                    DMFiscal.SpedC100.FieldByName('IND_FRT').AsInteger := 1; //Por conta do Destinatário
                                //Else
                                    //DMFiscal.SpedC100.FieldByName('IND_FRT').AsInteger := 9; //Sem cobrança de frete
                            End;
                        End
                        Else
                            DMFiscal.SpedC100.FieldByName('IND_FRT').AsInteger := 9;//Sem cobrança de frete
                        //19 - Valor do Seguro
                        DMFiscal.SpedC100.FieldByName('VL_SEG').AsFloat := 0;
                        //20 - Valor de Outras Despesas
                        DMFiscal.SpedC100.FieldByName('VL_OUT_DA').AsFloat := DMMACS.TALX.FieldByName('vlroutrasdesp').AsFloat;
                        //21 - Valor da base de cálculo Icms
                        DMFiscal.SpedC100.FieldByName('VL_BC_ICMS').AsFloat := XC190Vl_Bc_Icms;
                        //Valor de Icms
                        DMFiscal.SpedC100.FieldByName('VL_ICMS').AsFloat := XC190Vl_Icms;

                        //Base de Calculo de Icms Substituição tributária
                        DMFiscal.SpedC100.FieldByName('VL_BC_ICMS_ST').AsFloat := XC190Vl_Bc_Icms_St;

                        //Valor de IcmsSubstituição Tributária
                        DMFiscal.SpedC100.FieldByName('VL_ICMS_ST').AsFloat := XC190Vl_Icms_St;

                        //Valor Total do IPI
                        DMFiscal.SpedC100.FieldByName('VL_IPI').AsFloat := XC190Vl_Ipi;


                        DMFiscal.SpedC100.FieldByName('VL_PIS').AsCurrency := 0; //Valor de Pis
                        DMFiscal.SpedC100.FieldByName('VL_COFINS').AsCurrency := 0; //Valor de Cofins
                        DMFiscal.SpedC100.FieldByName('VL_PIS_ST').AsCurrency := 0; //Valor total do Pis
                        DMFiscal.SpedC100.FieldByName('VL_COFINS_ST').AsCurrency := 0; //Valor total do cofins
                    End;

                    DMFiscal.SpedC100.Post;
                Except
                    Result := False;
                End;
                DMMACS.TAlx.Next;
            End;
            //****************************************
            //INSERÇÃO DAS NOTAS FISCAIS - ORDEM
            //****************************************
            If Result = True
            Then Begin
                //CONSULTAR DADOS DA TABELA VWORDEM
                DMMACS.TALX.Close;
                DMMACS.TALX.SQL.Clear;
                DMMACS.TALX.SQL.Add('select docfisord.serie, docfisord.numdocfis, docfisord.nfechave, docfisord.dtemissao, docfisord.dtentsaid,');
                DMMACS.TALX.SQL.Add('docfisord.vlrtotdocnf, docfisord.vlrdesconto, docfisord.freteconta, docfisord.vlrfrete,  docfisord.vlrtotipi,');
                DMMACS.TALX.SQL.Add('docfisord.vlroutrasdesp, docfisord.baseicms, docfisord.vlricms, docfisord.bascalsubs, docfisord.vlrtotprod,');
                DMMACS.TALX.SQL.Add('docfisord.vlricmsubs, formpag.descricao, pessoa.cod_pessoa, ordem.status, docfisord.cod_docfiscord, docfisord.modelonf');
                DMMACS.TALX.SQL.Add('from docfisord');
                DMMACS.TALX.SQL.Add('left join ordem on docfisord.cod_ordem = ordem.cod_ordem');
                DMMACS.TALX.SQL.Add('left join formpag on ordem.cod_formpag = formpag.cod_formpag');
                DMMACS.TALX.SQL.Add('left join cliente on ordem.cod_cliente = cliente.cod_cliente');
                DMMACS.TALX.SQL.Add('left join pessoa on cliente.cod_pessoa = pessoa.cod_pessoa');
                DMMACS.TALX.SQL.Add('where (docfisord.cod_periodofiscal =:periodo) AND (docfisord.numdocfis is not null) AND (docfisord.nfechave is not null or docfisord.nfechave <> ' + #39 + '' + #39 + ') AND (( ordem.fisco = ' + #39 + 'NF' + #39 + ') OR (ordem.fisco = ' + #39 + 'NFE' + #39 + ') OR (ordem.fisco = ''NFCe''))');
                DMMACS.TALX.ParamByName('periodo').AsInteger := DMMACS.TPeriodoFiscal.FieldByName('COD_PERIODOFISCAL').AsInteger;
                DMMACS.TALX.Open;
                DMMACS.TALX.First;
                While Not DMMACS.TALX.EOF Do
                Begin
                    xCodTMP := xCodTMP + 1;
                    Try

                        DMFiscal.SpedC100.Insert;
                        DMFiscal.SpedC100.FieldByName('CODIGO').AsInteger := DMMACS.TALX.FieldByName('cod_docfiscord').AsInteger;
                        DMFiscal.SpedC100.FieldByName('TP_OPER').AsString := 'ORD';//Edmar - 18/03/2014 - Foi reinserido o campo TP_OPER
                        //02 - Indice do tipo de oeração 0= Entrada 1=Saída
                        DMFiscal.SpedC100.FieldByName('IND_OPER').AsInteger := 1;
                        //03 - Indicador do tipo do emitente 0=emissão própria 1=terceiros
                        DMFiscal.SpedC100.FieldByName('IND_EMIT').AsInteger := 0;

                        DMFiscal.SpedC100.FieldByName('COD_MOD').AsInteger := DMMACS.TALX.FieldByName('modelonf').AsInteger;
                        //DMFiscal.SpedC100.FieldByName('COD_MOD').AsInteger := 55; //Código do modelo do documento fiscal DMMACS.TALX.FieldByName('numdocfis').AsString;
                        DMFiscal.SpedC100.FieldByName('SER').AsInteger := DMMACS.TALX.FieldByName('serie').AsInteger; //Serie da nota fiscal
                        //Numero da nota fiscal
                        If DMMACS.TALX.FieldByName('numdocfis').AsString<>'' Then
                        	DMFiscal.SpedC100.FieldByName('NUM_DOC').AsString := DMMACS.TALX.FieldByName('numdocfis').AsString
                        Else
        					AddLogln(true, 0, ' [xxxx] Falha ao gerar C100 - Numero de Documento fiscal em branco (Codigo de docfiscord '+DMMACS.TALX.FieldByName('cod_docfiscord').AsString+ ')');
                        //Chave da nota fiscal eletronica
                        DMFiscal.SpedC100.FieldByName('CHV_NFE').AsString := DMMACS.TALX.FieldByName('nfechave').AsString;

                        //Jônatas 17/09/2013 - Exceção 7 do Registro C100 para notas de terceiros
                        If DMFiscal.SpedC100.FieldByName('IND_EMIT').AsInteger = 0
                        Then Begin
                            //Código da Situação do documento
                            If DMMACS.TALX.FieldByName('status').AsString = 'CANCELADO' Then
                                DMFiscal.SpedC100.FieldByName('COD_SIT').AsString := '02';
                            If DMMACS.TALX.FieldByName('status').AsString = 'DENEGADO' Then
                                DMFiscal.SpedC100.FieldByName('COD_SIT').AsString := '04';
                            If DMMACS.TALX.FieldByName('status').AsString = 'FECHADO' Then
                                DMFiscal.SpedC100.FieldByName('COD_SIT').AsString := '00';
                        End
                        Else
                            DMFiscal.SpedC100.FieldByName('COD_SIT').AsString := '08';

                        //Jônatas 17/09/2013 - Exceção 4 do Registro C100 para notas em situação especial
                        If ((DMFiscal.SpedC100.FieldByName('COD_SIT').AsString = '00') or(DMFiscal.SpedC100.FieldByName('COD_SIT').AsString = '08'))
                        Then Begin
                            //Data do documento fiscal
                            DMFiscal.SpedC100.FieldByName('DT_DOC').AsDateTime := DMMACS.TALX.FieldByName('dtemissao').AsDateTime;
                        End;

                        //Jônatas 17/09/2013 - Exceção 1 do Registro C100 para notas canceladas ou denegadas(23/09/2013 - inculído situação 08 para validação de campos
                        If ((DMFiscal.SpedC100.FieldByName('COD_SIT').AsString = '00') or(DMFiscal.SpedC100.FieldByName('COD_SIT').AsString = '08'))
                        Then Begin

                            //Registro Filho C170
                            {If ((DMMACS.TALX.FieldByName('vlricmsubs').AsFloat > 0) And (DMMACS.TALX.FieldByName('emissaopropria').AsInteger = 1)) Then
                                C170InsertTmp(DMMACS.TALX.FieldByName('cod_docfisc').AsInteger, 'ORD')//Emissão própria com Ressarcimento de ICMS em Operações com Substituição Tributária
                            Else Begin //Jônatas 10/09/2013 - Talvez só ter valor em icms de substituição tributária não gere ressarcimento, verificar legislação
                                If DMMACS.TALX.FieldByName('emissaopropria').AsInteger <> 1 Then
                                    C170InsertTmp(DMMACS.TALX.FieldByName('cod_docfisc').AsInteger, 'ORD');//Emissão de terceiros
                            End;}

                            //Registro C190 obrigatório
                            C190InsertTmp(DMMACS.TALX.FieldByName('cod_docfiscord').AsInteger, 'ORD');
                            //Jônatas 26/09/2013 - Realocado apra atender a exceção de NFe Denegada (COD_SIT = 04)
                            //04 - Código do Participante
                            DMFiscal.SpedC100.FieldByName('COD_PART').AsInteger := DMMACS.TALX.FieldByName('cod_pessoa').AsInteger;

                            //Data do documento fiscal
                            DMFiscal.SpedC100.FieldByName('DT_DOC').AsDateTime := DMMACS.TALX.FieldByName('dtemissao').AsDateTime;
                            //Data de Entrada e Saida
                            DMFiscal.SpedC100.FieldByName('DT_E_S').AsDateTime := DMMACS.TALX.FieldByName('dtentsaid').AsDateTime;
                            //Valor total do Documento Fiscal
                            DMFiscal.SpedC100.FieldByName('VL_DOC').AsFloat := XC190Vl_Doc;
                            //Indice da Forma de Pagamento
                            If DMMACS.TALX.FieldByName('descricao').AsString = 'À VISTA' Then
                                DMFiscal.SpedC100.FieldByName('IND_PGTO').AsString := '0' //à vista
                            Else
                                DMFiscal.SpedC100.FieldByName('IND_PGTO').AsString := '1'; //prazo

                            DMFiscal.SpedC100.FieldByName('VL_DESC').AsCurrency := DMMACS.TALX.FieldByName('vlrdesconto').AsCurrency; //Valor do Desconto na Nota Fiscal
                            DMFiscal.SpedC100.FieldByName('VL_ABAT_NT').AsCurrency := 0; //Valor não tributado e não comercial
                            DMFiscal.SpedC100.FieldByName('VL_MERC').AsCurrency := DMMACS.TALX.FieldByName('vlrtotprod').AsCurrency; //Valor total das Mercadorias
                            //18 - Valor do Frete
                            DMFiscal.SpedC100.FieldByName('VL_FRT').AsFloat := DMMACS.TALX.FieldByName('vlrfrete').AsFloat;
                            If DMFiscal.SpedC100.FieldByName('VL_FRT').AsFloat >0
                            Then Begin
                                //17 - Indice do frete
                                If DMMACS.TALX.FieldByName('freteconta').AsInteger = 1 Then
                                    DMFiscal.SpedC100.FieldByName('IND_FRT').AsInteger := 0 //Por conta do emitente
                                Else Begin
                                    If DMMACS.TALX.FieldByName('freteconta').AsInteger = 2 Then
                                        DMFiscal.SpedC100.FieldByName('IND_FRT').AsInteger := 1; //Por conta do Destinatário
                                    //Else
                                        //DMFiscal.SpedC100.FieldByName('IND_FRT').AsInteger := 9; //Sem cobrança de frete
                                End;
                            End
                            Else
                                DMFiscal.SpedC100.FieldByName('IND_FRT').AsInteger := 9;//Sem cobrança de frete
                            //19 - Valor do Seguro
                            DMFiscal.SpedC100.FieldByName('VL_SEG').AsFloat := 0;
                            //20 - Valor de Outras Despesas
                            DMFiscal.SpedC100.FieldByName('VL_OUT_DA').AsFloat := DMMACS.TALX.FieldByName('vlroutrasdesp').AsFloat;
                            //21 - Valor da base de cálculo Icms
                            //Valor da base de cálculo Icms
                            DMFiscal.SpedC100.FieldByName('VL_BC_ICMS').AsFloat := XC190Vl_Bc_Icms;

                            //Valor de Icms
                            DMFiscal.SpedC100.FieldByName('VL_ICMS').AsFloat := XC190Vl_Icms;

                            //Base de Calculo de Icms Substituição tributária
                            DMFiscal.SpedC100.FieldByName('VL_BC_ICMS_ST').AsFloat := XC190Vl_Bc_Icms_St;

                            //Valor de IcmsSubstituição Tributária
                            DMFiscal.SpedC100.FieldByName('VL_ICMS_ST').AsFloat := XC190Vl_Icms_St;

                            //Valor Total do IPI
                            DMFiscal.SpedC100.FieldByName('VL_IPI').AsFloat := XC190Vl_Ipi;


                            DMFiscal.SpedC100.FieldByName('VL_PIS').AsCurrency := 0; //Valor de Pis
                            DMFiscal.SpedC100.FieldByName('VL_COFINS').AsCurrency := 0; //Valor de Cofins
                            DMFiscal.SpedC100.FieldByName('VL_PIS_ST').AsCurrency := 0; //Valor total do Pis
                            DMFiscal.SpedC100.FieldByName('VL_COFINS_ST').AsCurrency := 0; //Valor total do cofins
                        End;

                        DMFiscal.SpedC100.Post;
                    Except
                    	 AddLogln(true, 1, ' [xxxx] Falha ao gerar C100');
                        Result := False;
                    End;
                    DMMACS.TAlx.Next;
                End;
            End;
        End;

        Result := True;
        Try
            //Jônatas 25/09/2013 - Salva os aquivos XML pra evitar sobrecarga de memória ao chamar o GeraNovoSped
            DMFiscal.SpedC100.SaveToFile('C:\MZR\Arquivos\Sped\tmp\C100.xml');
            DMFiscal.SpedC170.SaveToFile('C:\MZR\Arquivos\Sped\tmp\C170.xml');
            DMFiscal.SpedC190.SaveToFile('C:\MZR\Arquivos\Sped\tmp\C190.xml');
        Except
            showmessage('Erro ao salvar os arquivos XML');
            Result := false;
        End;
    Except
        ShowMessage('Erro ao gerar Temporário');
        Result := False;
    End;

End;

//MAURO 27/06/2013 - Imprimir REGISTRO C990: ENCERRAMENTO DO BLOCO C

Function TFSped.RegistroC990: Boolean;
Begin
    Try
        AddLogln(true, 0, '[REGISTRO C990] - ENCERRAMENTO DO BLOCO C');
        AddLogln(true, 0, 'Iniciando... ');

        contLinhas := contLinhas + 1;
        xLinha := '';
        //Imprime Num. Registro
        xLinha := xLinha + '|C990|';
        //Quantidade total de linhas do Bloco 0
        xlinha := xLinha + IntToStr(contLinhas) + '|';
        contTotalLinhas := contTotalLinhas + contLinhas;

        contRegistroC990 := contRegistroC990 + 1;
        Writeln(xTexto, xLinha);
        Result := True;
        AddLogln(true, 0, 'Registro finalizado. ');
        AddLogln(true, 0, '---------------------------------------------------------------------------------------------------------------------------');
    Except
        Result := False;
    End;
End;

//REGISTRO D001: ABERTURA DO BLOCO D

Function TFSped.RegistroD001: Boolean;
Begin
    //Zera o contador de linhas dos Blocos
    contLinhas := 0;
    VL_INV := 0;
    Try
        AddLogln(true, 0, '---------------------------------------------------------------------------------------------------------------------------');
        AddLogln(true, 0, '[REGISTRO D001] - ABERTURA DO BLOCO D');
        AddLogln(true, 0, 'Iniciando... ');

        contLinhas := contLinhas + 1;
        xLinha := '';
        //Imprime Num. Registro
        xLinha := xLinha + '|D001|';

        //IND_MOV Indicador de movimento: 0- Bloco com dados informados; 1- Bloco sem dados informados
        xlinha := xLinha + '1|';

        contRegistroD001 := contRegistroD001 + 1;
        Writeln(xTexto, xLinha);
        Result := True;
        AddLogln(true, 0, 'Registro finalizado. ');
    Except
        Result := False;
    End;

End;

//MAURO - Imprimir REGISTRO D990: ENCERRAMENTO DO BLOCO D

Function TFSped.RegistroD990: Boolean;
Begin
    Try
        AddLogln(true, 0, '[REGISTRO D990] - ENCERRAMENTO DO BLOCO D');
        AddLogln(true, 0, 'Iniciando... ');

        contLinhas := contLinhas + 1;
        xLinha := '';
        //Imprime Num. Registro
        xLinha := xLinha + '|D990|';
        //Quantidade total de linhas do Bloco 0
        xlinha := xLinha + IntToStr(contLinhas) + '|';
        contTotalLinhas := contTotalLinhas + contLinhas;

        contRegistroD990 := contRegistroD990 + 1;
        Writeln(xTexto, xLinha);
        Result := True;
        AddLogln(true, 0, 'Registro finalizado. ');
        AddLogln(true, 0, '---------------------------------------------------------------------------------------------------------------------------');
    Except
        Result := False;
    End;
End;

//REGISTRO E001: ABERTURA DO BLOCO E

Function TFSped.RegistroE001: Boolean;
Begin
    //Zera o contador de linhas dos Blocos
    contLinhas := 0;
    VL_INV := 0;
    Try
        AddLogln(true, 0, '---------------------------------------------------------------------------------------------------------------------------');
        AddLogln(true, 0, '[REGISTRO E001] - ABERTURA DO BLOCO E');
        AddLogln(true, 0, 'Iniciando... ');

        contLinhas := contLinhas + 1;
        xLinha := '';
        //Imprime Num. Registro
        xLinha := xLinha + '|E001|';

        //IND_MOV Indicador de movimento: 0- Bloco com dados informados; 1- Bloco sem dados informados
        xlinha := xLinha + '1|';//SETA QUE HOUVE MOVIMENTO

        contRegistroE001 := contRegistroE001 + 1;
        Writeln(xTexto, xLinha);
        Result := True;
        AddLogln(true, 0, 'Registro finalizado. ');
    Except
        Result := False;
    End;
End;

//REGISTRO E100: PERIODO DE APURAÇÃO DE ICMS

Function TFSped.RegistroE100: Boolean;
Begin
    //Zera o contador de linhas dos Blocos
    VL_INV := 0;
    Try
        AddLogln(true, 0, '---------------------------------------------------------------------------------------------------------------------------');
        AddLogln(true, 0, '[REGISTRO E100] - PERÍODO DE APURAÇÃO DE ICMS');
        AddLogln(true, 0, 'Iniciando... ');

        contLinhas := contLinhas + 1;
        xLinha := '';
        //Imprime Num. Registro
        xLinha := xLinha + '|E100|';

        //DATA DO INTERVALO DE APURAÇÃO
        xlinha := xLinha + FormatDateTime('ddmmyyyy', StrToDate(DBEdit1.Text)) + '|';
        xlinha := xLinha + FormatDateTime('ddmmyyyy', StrToDate(DBEdit2.Text)) + '|';

        contRegistroE100 := contRegistroE100 + 1;
        Writeln(xTexto, xLinha);
        Result := True;
        AddLogln(true, 0, 'Registro finalizado. ');
    Except
        Result := False;
    End;

End;

//MAURO - Imprimir REGISTRO E990: ENCERRAMENTO DO BLOCO E

Function TFSped.RegistroE990: Boolean;
Begin
    Try
        AddLogln(true, 0, '[REGISTRO E990] - ENCERRAMENTO DO BLOCO E');
        AddLogln(true, 0, 'Iniciando... ');

        contLinhas := contLinhas + 1;
        xLinha := '';
        //Imprime Num. Registro
        xLinha := xLinha + '|E990|';
        //Quantidade total de linhas do Bloco 0
        xlinha := xLinha + IntToStr(contLinhas) + '|';
        contTotalLinhas := contTotalLinhas + contLinhas;

        contRegistroE990 := contRegistroE990 + 1;
        Writeln(xTexto, xLinha);
        Result := True;
        AddLogln(true, 0, 'Registro finalizado. ');
        AddLogln(true, 0, '---------------------------------------------------------------------------------------------------------------------------');
    Except
        Result := False;
    End;
End;

//##
//REGISTRO G001: ABERTURA DO BLOCO G

Function TFSped.RegistroG001: Boolean;
Begin
    //Zera o contador de linhas dos Blocos
    contLinhas := 0;
    VL_INV := 0;
    Try
        AddLogln(true, 0, '---------------------------------------------------------------------------------------------------------------------------');
        AddLogln(true, 0, '[REGISTRO G001] - ABERTURA DO BLOCO G');
        AddLogln(true, 0, 'Iniciando... ');

        contLinhas := contLinhas + 1;
        xLinha := '';
        //Imprime Num. Registro
        xLinha := xLinha + '|G001|';

        //IND_MOV Indicador de movimento: 0- Bloco com dados informados; 1- Bloco sem dados informados
        xlinha := xLinha + '1|';

        contRegistroG001 := contRegistroG001 + 1;
        Writeln(xTexto, xLinha);
        Result := True;
        AddLogln(true, 0, 'Registro finalizado. ');
    Except
        Result := False;
    End;

End;

//MAURO - Imprimir REGISTRO G990: ENCERRAMENTO DO BLOCO G

Function TFSped.RegistroG990: Boolean;
Begin
    Try
        AddLogln(true, 0, '[REGISTRO G990] - ENCERRAMENTO DO BLOCO G');
        AddLogln(true, 0, 'Iniciando... ');

        contLinhas := contLinhas + 1;
        xLinha := '';
        //Imprime Num. Registro
        xLinha := xLinha + '|G990|';
        //Quantidade total de linhas do Bloco 0
        xlinha := xLinha + IntToStr(contLinhas) + '|';
        contTotalLinhas := contTotalLinhas + contLinhas;

        contRegistroG990 := contRegistroG990 + 1;
        Writeln(xTexto, xLinha);
        Result := True;
        AddLogln(true, 0, 'Registro finalizado. ');
        AddLogln(true, 0, '---------------------------------------------------------------------------------------------------------------------------');
    Except
        Result := False;
    End;
End;

//REGISTRO H001: ABERTURA DO BLOCO H

Function TFSped.RegistroH001: Boolean;
Begin
    //Zera o contador de linhas dos Blocos
    contLinhas := 0;
    VL_INV := 0;
    Try
        AddLogln(true, 0, '---------------------------------------------------------------------------------------------------------------------------');
        AddLogln(true, 0, '[REGISTRO H001] - ABERTURA DO BLOCO H');
        AddLogln(true, 0, 'Iniciando... ');

        contLinhas := contLinhas + 1;
        xLinha := '';
        //Imprime Num. Registro
        xLinha := xLinha + '|H001|';

        //IND_MOV Indicador de movimento: 0- Bloco com dados informados; 1- Bloco sem dados informados
        If cbInventarioEstoque.Checked = True
            Then Begin
            //'0- Bloco com dados informados'
            xlinha := xLinha + '0|';
            EncerrarBloco := False;
        End
        Else Begin
            //1- Bloco sem dados informados'
            xlinha := xLinha + '1|';
            EncerrarBloco := True;
        End;

        contRegistroH001 := contRegistroH001 + 1;
        Writeln(xTexto, xLinha);
        Result := True;
        AddLogln(true, 0, 'Registro finalizado. ');
    Except
        Result := False;
    End;
End;

//MAURO - Imprimir REGISTRO H005: TOTAIS DO INVENTÁRIO

Function TFSped.RegistroH005: Boolean;
Var
    VL: Currency;
Begin
    Try
        AddLogln(true, 0, '---------------------------------------------------------------------------------------------------------------------------');
        AddLogln(true, 0, '[REGISTRO H005] - TOTAIS DO INVENTÁRIO');
        AddLogln(true, 0, 'Iniciando... ');

        DMMACS.TALX.Close;
        DMMACS.TALX.SQL.Clear;
        DMMACS.TALX.SQL.Add('select distinct (vwsimilar.cod_estoque) as COD_ITEM, vwsimilar.estfisico as QTD, vwsimilar.vlrunitcompra as VL_UNIT');
        DMMACS.TALX.SQL.Add('from vwsimilar');
        DMMACS.TALX.SQL.Add('where (vwsimilar.estfisico > 0) AND ( vwsimilar.ativo = ' + #39 + 'S' + #39 + ')');
        DMMACS.TALX.SQL.Add('order by vwsimilar.cod_estoque');
        DMMACS.TALX.Open;

        While Not (DMMACS.TALX.EOF) Do
        Begin

            VL := DMMACS.TALX.FieldByName('QTD').AsCurrency * DMMACS.TALX.FieldByName('VL_UNIT').AsCurrency;
            VL_INV := VL_INV + VL;

            If Not DMMACS.TALX.EOF Then
                DMMACS.TALX.Next;
        End;

        contLinhas := contLinhas + 1;
        xLinha := '';
        //Imprime Num. Registro
        xLinha := xLinha + '|H005|';

        //***02 DT_INV Data do inventário
        xLinha := xLinha + FormatDateTime('ddmmyyyy', Now) + '|';

        //***03 VL_INV Valor total do estoque
        If VL_INV = 0 Then
            xLinha := xLinha + '0,00|'
        Else
            xLinha := xLinha + FormatCurr('0.00', VL_INV) + '|';

        //***04 MOT_INV Informe o motivo do Inventário:
        //01 – No final no período;
        //02 – Na mudança de forma de tributação da mercadoria (ICMS);
        //03 – Na solicitação da baixa cadastral, paralisação temporária e outras situações;
        //04 – Na alteração de regime de pagamento – condição do contribuinte; 05 – Por determinação dos fiscos.
        xLinha := xLinha + '01|';

        contRegistroH005 := contRegistroH005 + 1;
        Writeln(xTexto, xLinha);
        Result := True;
        AddLogln(true, 0, 'Registro finalizado. ');
    Except
        Result := False;
    End;

End;

//MAURO - Imprimir REGISTRO H010: INVENTÁRIO.(itens)

Function TFSped.RegistroH010: Boolean;
Begin
    Try
        AddLogln(true, 0, '---------------------------------------------------------------------------------------------------------------------------');
        AddLogln(true, 0, '[REGISTRO H010] - INVENTÁRIO');
        AddLogln(true, 0, 'Iniciando... ');

        MDO.QConsulta.Close;
        MDO.QConsulta.SQL.Clear;
        MDO.QConsulta.SQL.Add(' SELECT DISTINCT(ESTOQUE.COD_ESTOQUE) AS COD_ITEM, ESTOQUE.ESTFISICO AS QTD, ');
        MDO.QConsulta.SQL.Add(' ESTOQUE.VLRUNITCOMP AS VL_UNIT, UNIDADE.SIGLA_UNID AS UNID ');
        MDO.QConsulta.SQL.Add(' FROM estoque ');
        MDO.QConsulta.SQL.Add(' LEFT JOIN subproduto ON estoque.cod_subprod = subproduto.cod_subproduto ');
        MDO.QConsulta.SQL.Add(' LEFT JOIN UNIDADE ON SUBPRODUTO.COD_UNIDVENDA = UNIDADE.COD_UNIDADE ');
        MDO.QConsulta.SQL.Add(' WHERE (ESTOQUE.ESTFISICO > 0) AND (SUBPRODUTO.ATIVO = ''S'') AND (ESTOQUE.VLRUNITCOMP > 0) ');
        MDO.QConsulta.SQL.Add(' ORDER BY ESTOQUE.COD_ESTOQUE ');
        MDO.QConsulta.Open;

        VL_INV := 0;
        While Not (MDO.QConsulta.EOF) And (controle = True) Do
        Begin

            If PararExecucao = True
                Then Begin
                Result := False;
                Exit;
            End;

            VL_ITEM := MDO.QConsulta.FieldByName('QTD').AsCurrency * MDO.QConsulta.FieldByName('VL_UNIT').AsCurrency;
            if VL_ITEM > 0 then
            begin
                VL_INV := VL_INV + VL_ITEM;

                contLinhas := contLinhas + 1;
                xLinha := '';
                //Imprime Num. Registro
                xLinha := xLinha + '|H010|';

                //02*** COD_ITEM Código do item (campo 02 do Registro 0200)
                If MDO.QConsulta.FieldByName('COD_ITEM').AsString = ''
                    Then Begin
                    AddLogln(true, 1, ' [xxxx] - Código do item (campo 02 do Registro 0200) não informado - COD_ITEM: ' + MDO.QConsulta.FieldByName('COD_ITEM').AsString);
                    controle := False;
                End
                Else
                    xLinha := xLinha + Copy(MDO.QConsulta.FieldByName('COD_ITEM').AsString, 0, 6) + '|';

                //03*** UNID Unidade do item
                If MDO.QConsulta.FieldByName('UNID').AsString = ''
                    Then Begin
                    AddLogln(true, 1, ' [xxxx] - Unidade do item não informado - COD_ITEM: ' + MDO.QConsulta.FieldByName('COD_ITEM').AsString);
                    controle := False;
                End
                Else
                    xLinha := xLinha + Trim(Copy(MDO.QConsulta.FieldByName('UNID').AsString, 0, 6)) + '|';

                //04*** QTD Quantidade do item
                If MDO.QConsulta.FieldByName('QTD').AsString = ''
                    Then Begin
                    AddLogln(true, 1, ' [xxxx] - Quantidade do item não informado - COD_ITEM: ' + MDO.QConsulta.FieldByName('COD_ITEM').AsString);
                    controle := False;
                End
                Else
                    xLinha := xLinha + FormatCurr('0.000', MDO.QConsulta.FieldByName('QTD').AsCurrency) + '|';

                //05*** VL_UNIT Valor unitário do item
                If MDO.QConsulta.FieldByName('VL_UNIT').AsString = ''
                    Then Begin
                    AddLogln(true, 1, ' [xxxx] - Valor unitário do item não informado - COD_ITEM: ' + MDO.QConsulta.FieldByName('COD_ITEM').AsString);
                    controle := False;
                End
                Else
                    xLinha := xLinha + FormatCurr('0.000000', MDO.QConsulta.FieldByName('VL_UNIT').AsCurrency) + '|';

                //06*** VL_ITEM Valor do item
                If VL_ITEM = 0
                    Then Begin
                    AddLogln(true, 1, ' [xxxx] - Valor do item não informado - COD_ITEM: ' + MDO.QConsulta.FieldByName('COD_ITEM').AsString);
                    controle := False;
                End
                Else
                    xLinha := xLinha + FormatCurr('0.00', VL_ITEM) + '|';

                //07*** IND_PROP Indicador de propriedade/posse do item: 0- Item de propriedade do informante e em seu poder; 1- Item de propriedade do informante em posse de terceiros; 2- Item de propriedade de terceiros em posse do informante
                xLinha := xLinha + '0|';

                //08 COD_PART Código do participante (campo 02 do Registro 0150): - proprietário/possuidor que não seja o informante do arquivo
                xLinha := xLinha + '|';

                //09 TXT_COMPL Descrição complementar.
                xLinha := xLinha + '|';

                //10 COD_CTA Código da conta analítica contábil debitada/creditada
                xLinha := xLinha + '132|';

                //11 VL_ITEM_IR Valor do item para efeitos do Imposto de Renda
                xLinha := xLinha + '|';

                contRegistroH010 := contRegistroH010 + 1;
                Writeln(xTexto, xLinha);
            end;
            If Not MDO.QConsulta.EOF Then
                MDO.QConsulta.Next;
        End;
        Result := True;
        AddLogln(true, 0, 'Registro finalizado. ');
    Except
        Result := False;
    End;

End;

//MAURO - Imprimir REGISTRO H990: ENCERRAMENTO DO BLOCO H.

Function TFSped.RegistroH990: Boolean;
Begin
    Try
        AddLogln(true, 0, '---------------------------------------------------------------------------------------------------------------------------');
        AddLogln(true, 0, '[REGISTRO H990] - ENCERRAMENTO DO BLOCO H');
        AddLogln(true, 0, 'Iniciando... ');

        contLinhas := contLinhas + 1;
        xLinha := '';
        //Imprime Num. Registro
        xLinha := xLinha + '|H990|';
        //Quantidade total de linhas do Bloco 0
        xlinha := xLinha + IntToStr(contLinhas) + '|';
        contTotalLinhas := contTotalLinhas + contLinhas;

        contRegistroH990 := contRegistroH990 + 1;
        Writeln(xTexto, xLinha);
        Result := True;
        AddLogln(true, 0, 'Registro finalizado. ');
        AddLogln(true, 0, '---------------------------------------------------------------------------------------------------------------------------');
    Except
        Result := False;
    End;
End;

function TFSped.RegistroK001: Boolean;
begin
    //Zera o contador de linhas dos Blocos
    contLinhas := 0;
    VL_INV := 0;
    Try
        AddLogln(true, 0, '---------------------------------------------------------------------------------------------------------------------------');
        AddLogln(true, 0, '[REGISTRO K001] - ABERTURA DO BLOCO K');
        AddLogln(true, 0, 'Iniciando... ');

        contLinhas := contLinhas + 1;
        xLinha := '';
        //Imprime Num. Registro
        xLinha := xLinha + '|K001|';
        xlinha := xLinha + '1|';
        EncerrarBloco := True;

        contRegistroK001 := contRegistroK001 + 1;
        Writeln(xTexto, xLinha);
        Result := True;
        AddLogln(true, 0, 'Registro finalizado. ');
    Except
        Result := False;
    End;
end;

function TFSped.RegistroK990: Boolean;
begin
    Try
        AddLogln(true, 0, '---------------------------------------------------------------------------------------------------------------------------');
        AddLogln(true, 0, '[REGISTRO K990] - ENCERRAMENTO DO BLOCO K');
        AddLogln(true, 0, 'Iniciando... ');

        contLinhas := contLinhas + 1;
        xLinha := '';
        //Imprime Num. Registro
        xLinha := xLinha + '|K990|';
        //Quantidade total de linhas do Bloco 0
        xlinha := xLinha + IntToStr(2) + '|';
        contTotalLinhas := contTotalLinhas + contLinhas;

        contRegistroK990 := contRegistroK990 + 1;
        Writeln(xTexto, xLinha);
        Result := True;
        AddLogln(true, 0, 'Registro finalizado. ');
        AddLogln(true, 0, '---------------------------------------------------------------------------------------------------------------------------');
    Except
        Result := False;
    End;
end;

//REGISTRO 1001: ABERTURA DO BLOCO 1

Function TFSped.Registro1001: Boolean;
Begin
    //Zera o contador de linhas dos Blocos
    contLinhas := 0;
    Try
        AddLogln(true, 0, '---------------------------------------------------------------------------------------------------------------------------');
        AddLogln(true, 0, '[REGISTRO 1001] - ABERTURA DO BLOCO 1');
        AddLogln(true, 0, 'Iniciando... ');

        contLinhas := contLinhas + 1;
        xLinha := '';
        //Imprime Num. Registro
        xLinha := xLinha + '|1001|';

        //IND_MOV Indicador de movimento: 0- Bloco com dados informados; 1- Bloco sem dados informados
        If cbIndicadorMovimento1.Text = '' Then
            AddLogln(true, 1, ' [xxxx] - Indicador de movimento do bloco;')
        Else Begin
            If cbIndicadorMovimento1.Text = '0 - Bloco com dados informados' Then
                xLinha := xLinha + '0|'
            Else
                xLinha := xLinha + '1|';
        End;

        contRegistro1001 := contRegistro1001 + 1;
        Writeln(xTexto, xLinha);
        Result := True;
        AddLogln(true, 0, 'Registro finalizado. ');
    Except
        Result := False;
    End;

End;

//MAURO - Imprimir REGISTRO 1010: OBRIGATORIEDADE DE REGISTROS DO BLOCO 1

Function TFSped.Registro1010: Boolean;
Begin
    Try
        AddLogln(true, 0, '---------------------------------------------------------------------------------------------------------------------------');
        AddLogln(true, 0, '[REGISTRO 1010] - OBRIGATORIEDADE DE REGISTROS DO BLOCO 1');
        AddLogln(true, 0, 'Iniciando... ');

        contLinhas := contLinhas + 1;
        xLinha := '';
        //Imprime Num. Registro
        xLinha := xLinha + '|1010|';

        //02 IND_EXP Reg. 1100 - Ocorreu averbação (conclusão) de exportação no período: S – Sim N - Não
        xLinha := xLinha + 'N|';

        //03 IND_CCRF Reg 1200 – Existem informações acerca de créditos de ICMS a serem controlados, definidos pela Sefaz: S – Sim N - Não
        xLinha := xLinha + 'N|';

        //04 IND_COMB Reg. 1300 – É comercio varejista de combustíveis com movimentação e/ou estoque no período: S – Sim N - Não
        xLinha := xLinha + 'N|';

        //05 IND_USINA Reg. 1390 – Usinas de açúcar e/álcool – O estabelecimento é produtor de açúcar e/ou álcool carburante com movimentação e/ou estoque no período: S – Sim N - Não
        xLinha := xLinha + 'N|';

        //06 IND_VA Reg 1400 – Sendo o registro obrigatório em sua Unidade de Federação, existem informações a serem prestadas neste registro: S – Sim; N - Não
        xLinha := xLinha + 'N|';

        //07 IND_EE Reg 1500 - A empresa é distribuidora de energia e ocorreu fornecimento de energia elétrica para consumidores de outra UF: S – Sim; N - Não
        xLinha := xLinha + 'N|';

        //08 IND_CART Reg 1600 - Realizou vendas com Cartão de Crédito ou de débito: S – Sim; N - Não
        xLinha := xLinha + 'N|';

        //09 IND_FORM Reg. 1700 – Foram emitidos documentos fiscais em papel no período em unidade da federação que exija o controle de utilização de documentos fiscais: S – Sim N - Não
        xLinha := xLinha + 'N|';

        //10 IND_AER Reg 1800 – A empresa prestou serviços de transporte aéreo de cargas e de passageiros: S – Sim N - Não
        xLinha := xLinha + 'N|';

        //11 IND_GIAF1 Reg. 1960 - Possui informações GIAF1?: S – Sim N - Não
        xLinha := xLinha + 'N|';

        //12 IND_GIAF3 Reg. 1970 - Possui informações GIAF1?: S – Sim N - Não
        xLinha := xLinha + 'N|';

        //13 IND_GIAF4 Reg. 1980 - Possui informações GIAF1?: S – Sim N - Não
        xLinha := xLinha + 'N|';

        // 14 IND_REST_RESSARC_COMPL_ICMS
        xLinha := xLinha + 'N|';

        contRegistro1010 := contRegistro1010 + 1;
        Writeln(xTexto, xLinha);
        Result := True;
        AddLogln(true, 0, 'Registro finalizado. ');
    Except
        Result := False;
    End;
End;

//MAURO - Imprimir REGISTRO 1990: ENCERRAMENTO DO BLOCO 1

Function TFSped.Registro1990: Boolean;
Begin
    Try
        AddLogln(true, 0, '---------------------------------------------------------------------------------------------------------------------------');
        AddLogln(true, 0, '[REGISTRO 1990] - ENCERRAMENTO DO BLOCO 1');
        AddLogln(true, 0, 'Iniciando... ');

        contLinhas := contLinhas + 1;
        xLinha := '';
        //Imprime Num. Registro
        xLinha := xLinha + '|1990|';
        //Quantidade total de linhas do Bloco 0
        xlinha := xLinha + IntToStr(contLinhas) + '|';
        contTotalLinhas := contTotalLinhas + contLinhas;

        contRegistro1990 := contRegistro1990 + 1;
        Writeln(xTexto, xLinha);
        Result := True;
        AddLogln(true, 0, 'Registro finalizado. ');
        AddLogln(true, 0, '---------------------------------------------------------------------------------------------------------------------------');
    Except
        Result := False;
    End;
End;

//REGISTRO 9001: ABERTURA DO BLOCO 9

Function TFSped.Registro9001: Boolean;
Begin
    //Zera o contador de linhas dos Blocos
    contLinhas := 0;
    Try
        AddLogln(true, 0, '---------------------------------------------------------------------------------------------------------------------------');
        AddLogln(true, 0, '[REGISTRO 9001] - ABERTURA DO BLOCO 9');
        AddLogln(true, 0, 'Iniciando... ');

        contLinhas := contLinhas + 1;
        xLinha := '';
        //Imprime Num. Registro
        xLinha := xLinha + '|9001|';

        //IND_MOV Indicador de movimento: 0- Bloco com dados informados; 1- Bloco sem dados informados
        If cbIndicadorMovimento1.Text = '' Then
            AddLogln(true, 1, ' [xxxx] - Indicador de movimento do bloco;')
        Else Begin
            If cbIndicadorMovimento.Text = '0- Bloco com dados informados' Then
                xLinha := xLinha + '0|'
            Else
                xLinha := xLinha + '1|';
        End;

        contRegistro9001 := contRegistro9001 + 1;
        contTotalLinhas := contTotalLinhas + 1;
        Writeln(xTexto, xLinha);
        Result := True;
        AddLogln(true, 0, 'Registro finalizado. ');
    Except
        Result := False;
    End;

End;

//REGISTRO 9900: REGISTROS DO ARQUIVO.

Function TFSped.Registro9900: Boolean;
Begin
    Try
        AddLogln(true, 0, '---------------------------------------------------------------------------------------------------------------------------');
        AddLogln(true, 0, '[REGISTRO 9900] - REGISTROS DO ARQUIVO');
        AddLogln(true, 0, 'Iniciando... ');

        //***02 REG_BLC Registro que será totalizado no próximo campo.
        //***03 QTD_REG_BLC Total de registros do tipo informado no campo anterior.

        If contRegistro0000 > 0
            Then Begin
            xLinha := '';
            xLinha := xLinha + '|9900|0000|';
            xLinha := xLinha + IntToStr(contRegistro0000) + '|';
            contRegistro9900 := contRegistro9900 + 1;
            contLinhas := contLinhas + 1;
            contTotalLinhas := contTotalLinhas + 1;
            Writeln(xTexto, xLinha);
        End;

        If contRegistro0001 > 0
            Then Begin
            xLinha := '';
            xLinha := xLinha + '|9900|0001|';
            xLinha := xLinha + IntToStr(contRegistro0001) + '|';
            contRegistro9900 := contRegistro9900 + 1;
            contLinhas := contLinhas + 1;
            contTotalLinhas := contTotalLinhas + 1;
            Writeln(xTexto, xLinha);
        End;

        If contRegistro0005 > 0
            Then Begin
            xLinha := '';
            xLinha := xLinha + '|9900|0005|';
            xLinha := xLinha + IntToStr(contRegistro0005) + '|';
            contRegistro9900 := contRegistro9900 + 1;
            contLinhas := contLinhas + 1;
            contTotalLinhas := contTotalLinhas + 1;
            Writeln(xTexto, xLinha);
        End;

        If contRegistro0015 > 0
            Then Begin
            xLinha := '';
            xLinha := xLinha + '|9900|0015|';
            xLinha := xLinha + IntToStr(contRegistro0015) + '|';
            contRegistro9900 := contRegistro9900 + 1;
            contLinhas := contLinhas + 1;
            contTotalLinhas := contTotalLinhas + 1;
            Writeln(xTexto, xLinha);
        End;

        If contRegistro0100 > 0
            Then Begin
            xLinha := '';
            xLinha := xLinha + '|9900|0100|';
            xLinha := xLinha + IntToStr(contRegistro0100) + '|';
            contRegistro9900 := contRegistro9900 + 1;
            contLinhas := contLinhas + 1;
            contTotalLinhas := contTotalLinhas + 1;
            Writeln(xTexto, xLinha);
        End;

        If contRegistro0150 > 0
            Then Begin
            xLinha := '';
            xLinha := xLinha + '|9900|0150|';
            xLinha := xLinha + IntToStr(contRegistro0150) + '|';
            contRegistro9900 := contRegistro9900 + 1;
            contLinhas := contLinhas + 1;
            contTotalLinhas := contTotalLinhas + 1;
            Writeln(xTexto, xLinha);
        End;

        If contRegistro0190 > 0
            Then Begin
            xLinha := '';
            xLinha := xLinha + '|9900|0190|';
            xLinha := xLinha + IntToStr(contRegistro0190) + '|';
            contRegistro9900 := contRegistro9900 + 1;
            contLinhas := contLinhas + 1;
            contTotalLinhas := contTotalLinhas + 1;
            Writeln(xTexto, xLinha);
        End;

        If contRegistro0200 > 0
            Then Begin
            xLinha := '';
            xLinha := xLinha + '|9900|0200|';
            xLinha := xLinha + IntToStr(contRegistro0200) + '|';
            contRegistro9900 := contRegistro9900 + 1;
            contLinhas := contLinhas + 1;
            contTotalLinhas := contTotalLinhas + 1;
            Writeln(xTexto, xLinha);
        End;

        If contRegistro0400 > 0
            Then Begin
            xLinha := '';
            xLinha := xLinha + '|9900|0400|';
            xLinha := xLinha + IntToStr(contRegistro0400) + '|';
            contRegistro9900 := contRegistro9900 + 1;
            contLinhas := contLinhas + 1;
            contTotalLinhas := contTotalLinhas + 1;
            Writeln(xTexto, xLinha);
        End;

        If contRegistro0450 > 0
            Then Begin
            xLinha := '';
            xLinha := xLinha + '|9900|0450|';
            xLinha := xLinha + IntToStr(contRegistro0450) + '|';
            contRegistro9900 := contRegistro9900 + 1;
            contLinhas := contLinhas + 1;
            contTotalLinhas := contTotalLinhas + 1;
            Writeln(xTexto, xLinha);
        End;

        If contRegistro0990 > 0
            Then Begin
            xLinha := '';
            xLinha := xLinha + '|9900|0990|';
            xLinha := xLinha + IntToStr(contRegistro0990) + '|';
            contRegistro9900 := contRegistro9900 + 1;
            contLinhas := contLinhas + 1;
            contTotalLinhas := contTotalLinhas + 1;
            Writeln(xTexto, xLinha);
        End;
        
        //BLOCO B
        If contRegistroB001 > 0
            Then Begin
            xLinha := '';
            xLinha := xLinha + '|9900|B001|';
            xLinha := xLinha + IntToStr(contRegistroB001) + '|';
            contRegistro9900 := contRegistro9900 + 1;
            contLinhas := contLinhas + 1;
            contTotalLinhas := contTotalLinhas + 1;
            Writeln(xTexto, xLinha);
        End;

        If contRegistroB990 > 0
            Then Begin
            xLinha := '';
            xLinha := xLinha + '|9900|B990|';
            xLinha := xLinha + IntToStr(contRegistroB990) + '|';
            contRegistro9900 := contRegistro9900 + 1;
            contLinhas := contLinhas + 1;
            contTotalLinhas := contTotalLinhas + 1;
            Writeln(xTexto, xLinha);
        End;        

        //C
        If contRegistroC001 > 0
            Then Begin
            xLinha := '';
            xLinha := xLinha + '|9900|C001|';
            xLinha := xLinha + IntToStr(contRegistroC001) + '|';
            contRegistro9900 := contRegistro9900 + 1;
            contLinhas := contLinhas + 1;
            contTotalLinhas := contTotalLinhas + 1;
            Writeln(xTexto, xLinha);
        End;

        If contRegistroC100 > 0
            Then Begin
            xLinha := '';
            xLinha := xLinha + '|9900|C100|';
            xLinha := xLinha + IntToStr(contRegistroC100) + '|';
            contRegistro9900 := contRegistro9900 + 1;
            contLinhas := contLinhas + 1;
            contTotalLinhas := contTotalLinhas + 1;
            Writeln(xTexto, xLinha);
        End;

        If contRegistroC110 > 0
            Then Begin
            xLinha := '';
            xLinha := xLinha + '|9900|C110|';
            xLinha := xLinha + IntToStr(contRegistroC110) + '|';
            contRegistro9900 := contRegistro9900 + 1;
            contLinhas := contLinhas + 1;
            contTotalLinhas := contTotalLinhas + 1;
            Writeln(xTexto, xLinha);
        End;

        If contRegistroC160 > 0
            Then Begin
            xLinha := '';
            xLinha := xLinha + '|9900|C160|';
            xLinha := xLinha + IntToStr(contRegistroC160) + '|';
            contRegistro9900 := contRegistro9900 + 1;
            contLinhas := contLinhas + 1;
            contTotalLinhas := contTotalLinhas + 1;
            Writeln(xTexto, xLinha);
        End;

        If contRegistroC170 > 0
            Then Begin
            xLinha := '';
            xLinha := xLinha + '|9900|C170|';
            xLinha := xLinha + IntToStr(contRegistroC170) + '|';
            contRegistro9900 := contRegistro9900 + 1;
            contLinhas := contLinhas + 1;
            contTotalLinhas := contTotalLinhas + 1;
            Writeln(xTexto, xLinha);
        End;

        If contRegistroC179 > 0
            Then Begin
            xLinha := '';
            xLinha := xLinha + '|9900|C179|';
            xLinha := xLinha + IntToStr(contRegistroC179) + '|';
            contRegistro9900 := contRegistro9900 + 1;
            contLinhas := contLinhas + 1;
            contTotalLinhas := contTotalLinhas + 1;
            Writeln(xTexto, xLinha);
        End;

        If contRegistroC190 > 0
            Then Begin
            xLinha := '';
            xLinha := xLinha + '|9900|C190|';
            xLinha := xLinha + IntToStr(contRegistroC190) + '|';
            contRegistro9900 := contRegistro9900 + 1;
            contLinhas := contLinhas + 1;
            contTotalLinhas := contTotalLinhas + 1;
            Writeln(xTexto, xLinha);
        End;

        If contRegistroC990 > 0
            Then Begin
            xLinha := '';
            xLinha := xLinha + '|9900|C990|';
            xLinha := xLinha + IntToStr(contRegistroC990) + '|';
            contRegistro9900 := contRegistro9900 + 1;
            contLinhas := contLinhas + 1;
            contTotalLinhas := contTotalLinhas + 1;
            Writeln(xTexto, xLinha);
        End;

        If contRegistroD001 > 0
            Then Begin
            xLinha := '';
            xLinha := xLinha + '|9900|D001|';
            xLinha := xLinha + IntToStr(contRegistroD001) + '|';
            contRegistro9900 := contRegistro9900 + 1;
            contLinhas := contLinhas + 1;
            contTotalLinhas := contTotalLinhas + 1;
            Writeln(xTexto, xLinha);
        End;

        If contRegistroD990 > 0
            Then Begin
            xLinha := '';
            xLinha := xLinha + '|9900|D990|';
            xLinha := xLinha + IntToStr(contRegistroD990) + '|';
            contRegistro9900 := contRegistro9900 + 1;
            contLinhas := contLinhas + 1;
            contTotalLinhas := contTotalLinhas + 1;
            Writeln(xTexto, xLinha);
        End;

        If contRegistroE001 > 0
            Then Begin
            xLinha := '';
            xLinha := xLinha + '|9900|E001|';
            xLinha := xLinha + IntToStr(contRegistroE001) + '|';
            contRegistro9900 := contRegistro9900 + 1;
            contLinhas := contLinhas + 1;
            contTotalLinhas := contTotalLinhas + 1;
            Writeln(xTexto, xLinha);
        End;

        If contRegistroE100 > 0
            Then Begin
            xLinha := '';
            xLinha := xLinha + '|9900|E100|';
            xLinha := xLinha + IntToStr(contRegistroE100) + '|';
            contRegistro9900 := contRegistro9900 + 1;
            contLinhas := contLinhas + 1;
            contTotalLinhas := contTotalLinhas + 1;
            Writeln(xTexto, xLinha);
        End;

        If contRegistroE990 > 0
            Then Begin
            xLinha := '';
            xLinha := xLinha + '|9900|E990|';
            xLinha := xLinha + IntToStr(contRegistroE990) + '|';
            contRegistro9900 := contRegistro9900 + 1;
            contLinhas := contLinhas + 1;
            contTotalLinhas := contTotalLinhas + 1;
            Writeln(xTexto, xLinha);
        End;

        If contRegistroG001 > 0
            Then Begin
            xLinha := '';
            xLinha := xLinha + '|9900|G001|';
            xLinha := xLinha + IntToStr(contRegistroG001) + '|';
            contRegistro9900 := contRegistro9900 + 1;
            contLinhas := contLinhas + 1;
            contTotalLinhas := contTotalLinhas + 1;
            Writeln(xTexto, xLinha);
        End;

        If contRegistroG990 > 0
            Then Begin
            xLinha := '';
            xLinha := xLinha + '|9900|G990|';
            xLinha := xLinha + IntToStr(contRegistroG990) + '|';
            contRegistro9900 := contRegistro9900 + 1;
            contLinhas := contLinhas + 1;
            contTotalLinhas := contTotalLinhas + 1;
            Writeln(xTexto, xLinha);
        End;

        //H
        If contRegistroH001 > 0
            Then Begin
            xLinha := '';
            xLinha := xLinha + '|9900|H001|';
            xLinha := xLinha + IntToStr(contRegistroH001) + '|';
            contRegistro9900 := contRegistro9900 + 1;
            contLinhas := contLinhas + 1;
            contTotalLinhas := contTotalLinhas + 1;
            Writeln(xTexto, xLinha);
        End;

        If contRegistroH005 > 0
            Then Begin
            xLinha := '';
            xLinha := xLinha + '|9900|H005|';
            xLinha := xLinha + IntToStr(contRegistroH005) + '|';
            contRegistro9900 := contRegistro9900 + 1;
            contLinhas := contLinhas + 1;
            contTotalLinhas := contTotalLinhas + 1;
            Writeln(xTexto, xLinha);
        End;

        If contRegistroH010 > 0
            Then Begin
            xLinha := '';
            xLinha := xLinha + '|9900|H010|';
            xLinha := xLinha + IntToStr(contRegistroH010) + '|';
            contRegistro9900 := contRegistro9900 + 1;
            contLinhas := contLinhas + 1;
            contTotalLinhas := contTotalLinhas + 1;
            Writeln(xTexto, xLinha);
        End;

        If contRegistroH990 > 0
            Then Begin
            xLinha := '';
            xLinha := xLinha + '|9900|H990|';
            xLinha := xLinha + IntToStr(contRegistroH990) + '|';
            contRegistro9900 := contRegistro9900 + 1;
            contLinhas := contLinhas + 1;
            contTotalLinhas := contTotalLinhas + 1;
            Writeln(xTexto, xLinha);
        End;

        If contRegistroK001 > 0
            Then Begin
            xLinha := '';
            xLinha := xLinha + '|9900|K001|';
            xLinha := xLinha + IntToStr(contRegistroK001) + '|';
            contRegistro9900 := contRegistro9900 + 1;
            contLinhas := contLinhas + 1;
            contTotalLinhas := contTotalLinhas + 1;
            Writeln(xTexto, xLinha);
        End;

        If contRegistroK990 > 0
            Then Begin
            xLinha := '';
            xLinha := xLinha + '|9900|K990|';
            xLinha := xLinha + IntToStr(contRegistroK990) + '|';
            contRegistro9900 := contRegistro9900 + 1;
            contLinhas := contLinhas + 1;
            contTotalLinhas := contTotalLinhas + 1;
            Writeln(xTexto, xLinha);
        End;        

        //1

        If contRegistro1001 > 0
            Then Begin
            xLinha := '';
            xLinha := xLinha + '|9900|1001|';
            xLinha := xLinha + IntToStr(contRegistro1001) + '|';
            contRegistro9900 := contRegistro9900 + 1;
            contLinhas := contLinhas + 1;
            contTotalLinhas := contTotalLinhas + 1;
            Writeln(xTexto, xLinha);
        End;

        If contRegistro1010 > 0
            Then Begin
            xLinha := '';
            xLinha := xLinha + '|9900|1010|';
            xLinha := xLinha + IntToStr(contRegistro1010) + '|';
            contRegistro9900 := contRegistro9900 + 1;
            contLinhas := contLinhas + 1;
            contTotalLinhas := contTotalLinhas + 1;
            Writeln(xTexto, xLinha);
        End;

        If contRegistro1990 > 0
            Then Begin
            xLinha := '';
            xLinha := xLinha + '|9900|1990|';
            xLinha := xLinha + IntToStr(contRegistro1990) + '|';
            contRegistro9900 := contRegistro9900 + 1;
            contLinhas := contLinhas + 1;
            contTotalLinhas := contTotalLinhas + 1;
            Writeln(xTexto, xLinha);
        End;

        //9
        If contRegistro9001 > 0
            Then Begin
            xLinha := '';
            xLinha := xLinha + '|9900|9001|';
            xLinha := xLinha + IntToStr(contRegistro9001) + '|';
            contRegistro9900 := contRegistro9900 + 1;
            contLinhas := contLinhas + 1;
            contTotalLinhas := contTotalLinhas + 1;
            Writeln(xTexto, xLinha);
        End;

        //Registro9900
        xLinha := '';
        xLinha := xLinha + '|9900|9900|';
        contRegistro9900 := contRegistro9900 + 3;
        xLinha := xLinha + IntToStr(contRegistro9900) + '|';
        contLinhas := contLinhas + 1;
        contTotalLinhas := contTotalLinhas + 1;
        Writeln(xTexto, xLinha);

        //Registro9990
        xLinha := '';
        xLinha := xLinha + '|9900|9990|';
        xLinha := xLinha + '1|';
        contLinhas := contLinhas + 1;
        contTotalLinhas := contTotalLinhas + 1;
        Writeln(xTexto, xLinha);

        //Registro9999
        xLinha := '';
        xLinha := xLinha + '|9900|9999|';
        xLinha := xLinha + '1|';
        contLinhas := contLinhas + 1;
        contTotalLinhas := contTotalLinhas + 1;
        Writeln(xTexto, xLinha);


        Result := True;
        AddLogln(true, 0, 'Registro finalizado. ');
    Except
        Result := False;
    End;
End;

//REGISTRO 9990: ENCERRAMENTO DO BLOCO 9

Function TFSped.Registro9990: Boolean;
Begin
    Try
        AddLogln(true, 0, '---------------------------------------------------------------------------------------------------------------------------');
        AddLogln(true, 0, '[REGISTRO 9990] - ENCERRAMENTO DO BLOCO 9');
        AddLogln(true, 0, 'Iniciando... ');

        contLinhas := contLinhas + 1;
        // Esse contLinhas abaixo corresponde ao  registro 9999, apesar de não pertencer ao Bloco 9, também deve ser contabilizado nesta soma.
        contLinhas := contLinhas + 1;

        xLinha := '';
        //Imprime Num. Registro
        xLinha := xLinha + '|9990|';

        //***02 QTD_LIN_9 Quantidade total de linhas do Bloco 9.
        xlinha := xLinha + IntToStr(contLinhas) + '|';

        contTotalLinhas := contTotalLinhas + 1;
        Writeln(xTexto, xLinha);
        Result := True;
        AddLogln(true, 0, 'Registro finalizado. ');
    Except
        Result := False;
    End;
End;

//REGISTRO 9999: ENCERRAMENTO DO ARQUIVO DIGITAL.

Function TFSped.Registro9999: Boolean;
Begin
    Try
        AddLogln(true, 0, '---------------------------------------------------------------------------------------------------------------------------');
        AddLogln(true, 0, '[REGISTRO 9990] - ENCERRAMENTO DO ARQUIVO DIGITAL.');
        AddLogln(true, 0, 'Iniciando... ');

        contLinhas := contLinhas + 1;
        xLinha := '';
        //Imprime Num. Registro
        xLinha := xLinha + '|9999|';

        //***02 QTD_LIN Quantidade total de linhas do arquivo digital.
        contTotalLinhas := contTotalLinhas + 1;
        xLinha := xLinha + IntToStr(contTotalLinhas) + '|';

        Writeln(xTexto, xLinha);
        Result := True;
        AddLogln(true, 0, 'Registro finalizado. ');
    Except
        Result := False;
    End;
End;

Procedure TFSped.FormActivate(Sender: TObject);
Begin
    Inherited;
    PFalha.Visible := False;
    PErro.Visible := False;

    FiltraContabilista;
    FiltraTabela(DMMACS.TEmpresa, 'EMPRESA', 'COD_EMPRESA', FMenu.LCODEMPRESA.Caption, '');
    FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
    FiltraTabela(DMGEOGRAFIA.TCidade, 'CIDADE', 'COD_CIDADE', DMMACS.TEmpresa.FieldByName('COD_CIDADE').AsString, '');
    FiltraTabela(DMGEOGRAFIA.TEstado, 'ESTADO', 'COD_ESTADO', DMGEOGRAFIA.TCidade.FieldByName('COD_ESTADO').AsString, '');

    ALIQ_ICMS := FormatFloat('0.00', DMGEOGRAFIA.TEstado.FieldByName('ALIQINTERNA').AsCurrency);

    //MAURO 17/06/2013 -  Filtrar os Períodos Fiscais
    DMMACS.TPeriodoFiscal.Close;
    DMMACS.TPeriodoFiscal.SQL.Clear;
    DMMACS.TPeriodoFiscal.SQL.Add(' Select * from PeriodoFiscal order by  PeriodoFiscal.DtInicial DESC, PeriodoFiscal.Fechado');
    DMMACS.TPeriodoFiscal.Open;
    DMFiscal.SpedC170.close;
    DMFiscal.SpedC170.Open;
End;

Procedure TFSped.btSairClick(Sender: TObject);
Begin
    Inherited;
    Close;
End;

Procedure TFSped.EdErroClick(Sender: TObject);
Begin
    Inherited;
    PErro.Left := 16;
    PErro.Top := 489;
    PErro.Visible := True;
    PErro.BringToFront;
End;

Procedure TFSped.SpeedButton2Click(Sender: TObject);
Begin
    Inherited;
    PErro.Visible := False;
    PErro.SendToBack;
End;

Procedure TFSped.BtnGravarClick(Sender: TObject);
Begin
    Inherited;
    Try
        //   FiltraTabela(DMMACS.TEmpresa, 'EMPRESA', 'COD_EMPRESA', FMenu.LCODEMPRESA.Caption, '');
        FiltraTabela(DMGEOGRAFIA.TCidade, 'CIDADE', 'COD_CIDADE', IntToStr(xCodCidade), '');
        xCodMunContab := DMGEOGRAFIA.TCidade.FieldByName('COD_IBGE').AsInteger;
        FiltraTabela(DMMACS.TSped, 'SPED', '', '', '');
        If DMMACS.TSped.IsEmpty
            Then Begin //NOVO
            xCodSped := DMMACS.TSped.FieldByName('COD_SPED').AsInteger + 1;
            MDO.Query.Close;
            MDO.Query.SQL.Clear;
            MDO.Query.SQL.Add('insert into sped');
            MDO.Query.SQL.Add('		(cod_sped, nome, cpf, crc, cnpj, cep, endereco, numero, complemento, bairro, fone, fax, email, cod_municipio)');
            MDO.Query.SQL.Add('values');
            MDO.Query.SQL.Add('		(:codigo, :nome, :cpf, :crc, :cnpj, :cep, :endereco, :numero, :complemento, :bairro, :fone, :fax, :email, :cod_municipio)');
            MDO.Query.ParamByName('codigo').AsInteger := xCodSped;
            MDO.Query.ParamByName('nome').AsString := edNome.Text;
            MDO.Query.ParamByName('cpf').AsString := edCpf.Text;
            MDO.Query.ParamByName('crc').AsString := edCrc.Text;
            MDO.Query.ParamByName('cnpj').AsString := edCnpj.Text;
            MDO.Query.ParamByName('cep').AsString := edCep.Text;
            MDO.Query.ParamByName('endereco').AsString := edEndereco.Text;
            MDO.Query.ParamByName('numero').AsInteger := StrToInt(edNumero.Text);
            MDO.Query.ParamByName('complemento').AsString := edComplemento.Text;
            MDO.Query.ParamByName('bairro').AsString := edBairro.Text;
            MDO.Query.ParamByName('fone').AsString := edFone.Text;
            MDO.Query.ParamByName('fax').AsString := edFax.Text;
            MDO.Query.ParamByName('email').AsString := edEmail.Text;
            MDO.Query.ParamByName('cod_municipio').AsInteger := xCodMunContab;
            MDO.Query.ExecSQL;
            MDO.Transac.CommitRetaining;

        End
        Else Begin //UPDATE
            xCodSped := DMMACS.TSped.FieldByName('COD_SPED').AsInteger;
            MDO.Query.Close;
            MDO.Query.SQL.Clear;
            MDO.Query.SQL.Add('update sped set sped.nome=:nome, sped.cpf=:cpf, sped.crc=:crc, sped.cnpj=:cnpj, sped.cep=:cep, sped.endereco=:endereco, sped.numero=:numero, ');
            MDO.Query.SQL.Add('		sped.complemento=:complemento, sped.bairro=:bairro, sped.fone=:fone, sped.fax=:fax, sped.email=:email, sped.cod_municipio=:cod_municipio');
            MDO.Query.SQL.Add('where sped.cod_sped=:codigo');
            MDO.Query.ParamByName('codigo').AsInteger := xCodSped;
            MDO.Query.ParamByName('nome').AsString := edNome.Text;
            MDO.Query.ParamByName('cpf').AsString := edCpf.Text;
            MDO.Query.ParamByName('crc').AsString := edCrc.Text;
            MDO.Query.ParamByName('cnpj').AsString := edCnpj.Text;
            MDO.Query.ParamByName('cep').AsString := edCep.Text;
            MDO.Query.ParamByName('endereco').AsString := edEndereco.Text;
            MDO.Query.ParamByName('numero').AsInteger := StrToInt(edNumero.Text);
            MDO.Query.ParamByName('complemento').AsString := edComplemento.Text;
            MDO.Query.ParamByName('bairro').AsString := edBairro.Text;
            MDO.Query.ParamByName('fone').AsString := edFone.Text;
            MDO.Query.ParamByName('fax').AsString := edFax.Text;
            MDO.Query.ParamByName('email').AsString := edEmail.Text;
            MDO.Query.ParamByName('cod_municipio').AsInteger := xCodMunContab;
            MDO.Query.ExecSQL;
            MDO.Transac.CommitRetaining;
        End;

    Except
        MDO.Transac.RollbackRetaining;
    End;
End;

Procedure TFSped.BitBtn1Click(Sender: TObject);
Begin
    Inherited;
    If AbrirForm(TFCadCidade, FCadCidade, 1) = 'Selected'
        Then Begin
        xCodCidade := DMGEOGRAFIA.WCidade.FieldByName('COD_CIDADE').AsInteger;
        edCidade.Text := DMGEOGRAFIA.WCidade.FieldByName('NOME').AsString;
    End
    Else Begin
        xCodCidade := -1;
        edCidade.Text := '';
    End;
End;

Procedure TFSped.btVoltarClick(Sender: TObject);
Begin
    Inherited;
    PDetalhes.SendToBack;
    PDetalhes.Visible := False;
    PCSped.BringToFront;
    PCSped.Visible := True;
End;

Procedure TFSped.btAbrirClick(Sender: TObject);
Begin
    Inherited;
    caminho := diretorio + '\SPEDEFDICMSIPI.txt';
    If (fileExists(caminho))
        Then
        ShellExecute(Handle, Nil, Pchar(caminho), Nil, Nil, SW_SHOWNORMAL)
    Else
        Mensagem('I N F O R M A Ç Ã O', 'Arquivo não encontrado!', '', 1, 1, false, 'i');
End;

Procedure TFSped.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
    //inherited;

    If Key = #27
        Then Begin
        pararExec := True;
    End;
End;

Procedure TFSped.cbRegistroC100Click(Sender: TObject);
Begin
    Inherited;
    If cbRegistroC100.Checked = True
        Then Begin
        cbRegistroC110.Checked := True;
        cbRegistroC160.Checked := True;
        cbRegistroC170.Checked := True;
        cbRegistroC179.Checked := True;
        cbRegistroC190.Checked := True;
    End
    Else Begin
        cbRegistroC110.Checked := False;
        cbRegistroC160.Checked := False;
        cbRegistroC170.Checked := False;
        cbRegistroC179.Checked := False;
        cbRegistroC190.Checked := False;
    End;

End;

Procedure TFSped.cbTodos0Click(Sender: TObject);
Begin
    Inherited;
    If cbTodos0.Checked = True
        Then Begin
        cbRegistro0000.Checked := True;
        cbRegistro0001.Checked := True;
        cbRegistro0005.Checked := True;
        cbRegistro0015.Checked := True;
        cbRegistro0100.Checked := True;
        cbRegistro0150.Checked := True;
        cbRegistro0190.Checked := True;
        cbRegistro0200.Checked := True;
        cbRegistro0450.Checked := True;
        cbRegistro0990.Checked := True;
    End
    Else Begin
        cbRegistro0000.Checked := False;
        cbRegistro0001.Checked := False;
        cbRegistro0005.Checked := False;
        cbRegistro0015.Checked := False;
        cbRegistro0100.Checked := False;
        cbRegistro0150.Checked := False;
        cbRegistro0190.Checked := False;
        cbRegistro0200.Checked := False;
        cbRegistro0450.Checked := False;
        cbRegistro0990.Checked := False;
    End;
End;

Procedure TFSped.cbTodosCClick(Sender: TObject);
Begin
    Inherited;
    If cbTodosC.Checked = True
        Then Begin
        cbRegistroC001.Checked := True;
        cbRegistroC100.Checked := True;
        cbRegistroC110.Checked := True;
        cbRegistroC160.Checked := True;
        cbRegistroC170.Checked := True;
        cbRegistroC179.Checked := True;
        cbRegistroC190.Checked := True;
        cbRegistroC990.Checked := True;
    End
    Else Begin
        cbRegistroC001.Checked := False;
        cbRegistroC100.Checked := False;
        cbRegistroC110.Checked := False;
        cbRegistroC160.Checked := False;
        cbRegistroC170.Checked := False;
        cbRegistroC179.Checked := False;
        cbRegistroC190.Checked := False;
        cbRegistroC990.Checked := False;
    End;
End;

Procedure TFSped.cbTodosHClick(Sender: TObject);
Begin
    Inherited;
    If cbTodosH.Checked = True
        Then Begin
        cbRegistroH001.Checked := True;
        cbRegistroH005.Checked := True;
        cbRegistroH010.Checked := True;
        cbRegistroH990.Checked := True;
    End
    Else Begin
        cbRegistroH001.Checked := False;
        cbRegistroH005.Checked := False;
        cbRegistroH010.Checked := False;
        cbRegistroH990.Checked := False;
    End;
End;

Procedure TFSped.cbTodos1Click(Sender: TObject);
Begin
    Inherited;
    If cbTodos1.Checked = True
        Then Begin
        cbRegistro1001.Checked := True;
        cbRegistro1010.Checked := True;
        cbRegistro1990.Checked := True;
    End
    Else Begin
        cbRegistro1001.Checked := False;
        cbRegistro1010.Checked := False;
        cbRegistro1990.Checked := False;
    End;
End;

Function TFSped.IniciarContRegistros: Boolean;
Begin
    contRegistro0000 := 0;
    contRegistro0001 := 0;
    contRegistro0005 := 0;
    contRegistro0015 := 0;
    contRegistro0100 := 0;
    contRegistro0150 := 0;
    contRegistro0190 := 0;
    contRegistro0200 := 0;
    contRegistro0400 := 0;
    contRegistro0450 := 0;
    contRegistro0990 := 0;
    contRegistroB001 := 0;
    contRegistroB990 := 0;
    contRegistroC001 := 0;
    contRegistroC100 := 0;
    contRegistroC110 := 0;
    contRegistroC160 := 0;
    contRegistroC170 := 0;
    contRegistroC179 := 0;
    contRegistroC190 := 0;
    contRegistroC990 := 0;
    contRegistroH001 := 0;
    contRegistroH005 := 0;
    contRegistroH010 := 0;
    contRegistroH990 := 0;
    contRegistroK001 := 0;
    contRegistroK990 := 0;    
    contRegistro1001 := 0;
    contRegistro1010 := 0;
    contRegistro1990 := 0;
    contRegistro9001 := 0;
    contRegistro9900 := 0;
    contRegistro9990 := 0;
    contRegistroD001 := 0;
    contRegistroD990 := 0;
    contRegistroE001 := 0;
    contRegistroE990 := 0;
    contRegistroG001 := 0;
    contRegistroG990 := 0;

End;

Procedure TFSped.btnGerarTempClick(Sender: TObject);
Begin
    Inherited;
    if (not FileExists('C:\MZR\Arquivos\Sped\tmp\C100.xml')) or
    		(not FileExists('C:\MZR\Arquivos\Sped\tmp\C170.xml')) or
           	(not FileExists('C:\MZR\Arquivos\Sped\tmp\C190.xml')) then
	 	Mensagem('OPÇÃO BLOQUEADA', 'Não é possivel gerar os arquivos temporários. Falta os XMLs no caminho: '+#13+'C:\MZR\Arquivos\Sped\tmp\', '', 1, 1, False, 'I')
    else
    begin
    	C100InsertTmp;
    	MessageDlg('Arquivos Gerados!', mtWarning, [mbOK], 0);
	 end;
End;

//Jônatas 11/09/2013 - GeraSped reestruturado

Procedure TFSped.bntGerarNovoSpedClick(Sender: TObject);
Begin
    Inherited;
    Diretorio := 'C:\MZR\Arquivos\Sped';
    MErros.Text := '';
    PErro.Visible := False;
    FiltraTabela(DMMACS.TEmpresa, 'EMPRESA', 'COD_EMPRESA', FMenu.LCODEMPRESA.Caption, '');
    FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
    FiltraTabela(DMGEOGRAFIA.TCidade, 'CIDADE', 'COD_CIDADE', DMMACS.TEmpresa.FieldByName('COD_CIDADE').AsString, '');
    FiltraTabela(DMGEOGRAFIA.TEstado, 'ESTADO', 'COD_ESTADO', DMGEOGRAFIA.TCidade.FieldByName('COD_ESTADO').AsString, '');

    If CriaArquivoTexto = False
        Then Begin
        Mensagem('OPÇÃO BLOQUEADA', 'Falha ao criar arquivo de texto do Sped Fiscal!', '', 1, 1, False, 'i');
        Exit;
    End;

    If ValidaArquivo = False
        Then Begin
        PFalha.Visible := True;
        PFalha.BringToFront;
        CloseFile(xTexto);
        Exit;
    End
    Else Begin
        PFalha.Visible := False;
        PFalha.SendToBack;
    End;
    If GerarArquivoNovo = True
        Then Begin
        Progressbar1.Position := 100;
        ProgressBar1.Refresh;
        AddLogln(true, 0, '***********************************************************************************************');
        AddLogln(true, 0, 'Finalizando...');
        AddLogln(true, 0, 'Sped Fiscal gerado! ');
        AddLogln(true, 0, ' ');
        AddLogln(true, 0, 'Erros ou falhas de validação : ' + IntToStr(contErros));
        AddLogln(true, 0, '***********************************************************************************************');
        btAbrir.Enabled := True;
        Label18.Caption:='SPED FISCAL GERADO!!!';
        Label17.Caption:='SPED FISCAL GERADO!!!';        
    End
    Else Begin
        If pararExec = True
            Then Begin
            AddLogln(true, 0, '***********************************************************************************************');
            AddLogln(true, 0, 'Finalizando...');
            AddLogln(true, 0, 'Processo cancelado! ');
            AddLogln(true, 0, ' ');
            AddLogln(true, 0, 'Erros ou falhas de validação : ' + IntToStr(contErros));
            AddLogln(true, 0, '***********************************************************************************************');
            btAbrir.Enabled := True;
        End;
    End;



End;
//Jônatas 11/09/2013 - Função reestruturada que contém as funções de registros

Function TFSped.GerarArquivoNovo: Boolean;
Begin
    Result := True;
    IniciaPDetalhes(true);

    //GERA DT INICIAL E FINAL
    Try
        DT01 := DMMACS.TPeriodoFiscal.FieldByName('DTINICIAL').AsString;
        Dt02 := DMMACS.TPeriodoFiscal.FieldByName('DTFINAL').AsString;

        AddLogln(true, 0, '***********************************************************************************************');
        AddLogln(true, 0, '********************************    A R Q U I V O   S P E D   F I S C A L    ********************************');
        AddLogln(true, 0, '---------------------------------------------------------------------------------------------------------------------------');
        AddLogln(true, 0, '------------------------------------------   INICIO LOG: ' + DT01 + ' ' + Dt02 + '   ------------------------------------------');
        AddLogln(true, 0, '---------------------------------------------------------------------------------------------------------------------------');
        AddLogln(true, 0, '');

        AddLogln(true, 0, '**********************************  ENTRE: ' + DT01 + ' - ' + Dt02 + '  **********************************');
        AddLogln(true, 0, '***********************************************************************************************');
        NomeArquivo := FormatDateTime('dd', StrToDate(DT01)) + '_' + FormatDateTime('dd.mm.yyyy', StrToDate(Dt02)) + '_' + FormatDateTime('hh.mm', Time());
    Except
        Mensagem('I N F O R M A Ç Ã O', 'Verifique se o mês e o ano estão corretos!', '', 1, 1, false, 'i');
        PausePDetalhes(false, false);
        Exit;
    End;

    progressbar1.Position := 10;
    Sleep(0050);
    ProgressBar1.Repaint;
    ProgressBar1.StepIt;
    //////////////////////////////////////////////////////////
    //////////////////////////////////////////////////////////
    ///// BLOCO 0: ABERTURA, IDENTIFICAÇÃO E REFERÊNCIAS /////
    //////////////////////////////////////////////////////////
    //////////////////////////////////////////////////////////

    //REGISTRO 0000: ABERTURA DO ARQUIVO DIGITAL E IDENTIFICAÇÃO DA ENTIDADE
    If cbRegistro0000.Checked = True
        Then Begin
        If Registro0000 = False
            Then Begin
            Result := False;
            Exit;
        End;
    End;

    //REGISTRO 0001: ABERTURA DO BLOCO 0
    If cbRegistro0001.Checked = True
        Then Begin
        If Registro0001 = False
            Then Begin
            Result := False;
            Exit;
        End;
    End;

    //REGISTRO 0005: DADOS COMPLEMENTARES DA ENTIDADE
    If cbRegistro0005.Checked = true
        Then Begin
        If Registro0005 = False
            Then Begin
            Result := False;
            Exit;
        End;
    End;

    //REGISTRO 0015: DADOS DO CONTRIBUINTE SUBSTITUTO
    If cbRegistro0015.Checked = true
        Then Begin
        If Registro0015 = False
            Then Begin
            Result := False;
            Exit;
        End;
    End;

    //REGISTRO 0100: DADOS DO CONTABILISTA
    If cbRegistro0100.Checked = true
        Then Begin
        If Registro0100 = False
            Then Begin
            Result := False;
            Exit;
        End;
    End;

    //REGISTRO 0150: TABELA DE CADASTRO DO PARTICIPANTE
    If cbRegistro0150.Checked = true
        Then Begin
        If Registro0150 = False
            Then Begin
            Result := False;
            Exit;
        End;
    End;

    //REGISTRO 0190: ALTERAÇÃO DA TABELA DE CADASTRO DE PARTICIPANTE
    If cbRegistro0190.Checked = True
        Then Begin
        If Registro0190 = False
            Then Begin
            Result := False;
            Exit;
        End;
    End;

    //REGISTRO 0200: TABELA DE IDENTIFICAÇÃO DO ITEM (PRODUTO E SERVIÇOS)

    If cbRegistro0200.Checked = True
        Then Begin
        If Registro0200 = False
            Then Begin
            Result := False;
            Exit;
        End;
    End;
    //REGISTRO 0400: TABELA DE NATUREZA DA OPERAÇÃO/PRESTAÇÃO
    If cbRegistro0400.Checked = True
        Then Begin
        If Registro0400 = False
            Then Begin
            Result := False;
            Exit;
        End;
    End;

    If cbRegistro0450.Checked = True
        Then Begin
        If Registro0450 = False
            Then Begin
            Result := False;
            Exit;
        End;
    End;

    If cbRegistro0990.Checked = True
        Then Begin
        If Registro0990 = False
            Then Begin
            Result := False;
            Exit;
        End;
    End;

    progressbar1.Position := 20;
    Sleep(0100);
    ProgressBar1.Repaint;
    ProgressBar1.StepIt;

    /////////////////////////////////////////////////////////////////
    /////////////////////////////////////////////////////////////////
    /////// BLOCO B: APURAÇÃO ISS (APENAS PARA DISTRITO FEDERAL /////
    /////////////////////////////////////////////////////////////////
    /////////////////////////////////////////////////////////////////

    {*** Bloco não será apresentado, apenas fazer abertura e fechamento do bloco para validação}

    //REGISTRO B001: ABERTURA DO BLOCO B
    If RegistroB001 = False
        Then Begin
        Result := False;
        Exit;
    End;

    //REGISTRO B990: ENCERRAMENTO DO BLOCO B
    If RegistroB990 = False
        Then Begin
        Result := False;
        Exit;
    End;

    /////////////////////////////////////////////////////////////////
    /////////////////////////////////////////////////////////////////
    ///// BLOCO C:DOCUMENTOS FISCAIS I - MERCADORIAS (ICMS/IPI) /////
    /////////////////////////////////////////////////////////////////
    /////////////////////////////////////////////////////////////////

    //REGISTRO C001: ABERTURA DO BLOCO C
    If cbRegistroC001.Checked = True
        Then Begin
        If RegistroC001 = False
            Then Begin
            Result := False;
            Exit;
        End;
    End;

    //Se o Indicador de movimento selecionado no registro C001 for 1 = Bloco sem dados informados, encerra o bloco inserindo somente o registro de encerramento do bloco
    If EncerrarBloco = False
        Then Begin
        //REGISTRO C100: REGISTRO C100: NOTA FISCAL (CÓDIGO 01), NOTA FISCAL AVULSA (CÓDIGO 1B), NOTA FISCAL DE PRODUTOR (CÓDIGO 04), NF-e (CÓDIGO 55) e NFC-e (CÓDIGO 65).
        If cbRegistroC100.Checked = True
            Then Begin
            If NovoC100 = False
                Then Begin
                Result := False;
                Exit;
            End;
        End;
    End;

    //REGISTRO C990: ENCERRAMENTO DO BLOCO C
    If cbRegistroC990.Checked = True
        Then Begin
        If RegistroC990 = False
            Then Begin
            Result := False;
            Exit;
        End;
    End;

    //  progressbar1.Position := 60;
    Sleep(0050);
    ProgressBar1.Repaint;
    ProgressBar1.StepIt;

    /////////////////////////////////////////////////////////////////
    /////////////////////////////////////////////////////////////////
    /////// BLOCO D: DOCUMENTOS FISCAIS II - SERVIÇOS (ICMS). ///////
    /////////////////////////////////////////////////////////////////
    /////////////////////////////////////////////////////////////////

    {*** Bloco não será apresentado, apenas fazer abertura e fechamento do bloco para validação}

    //REGISTRO D001: ABERTURA DO BLOCO D
    If RegistroD001 = False
        Then Begin
        Result := False;
        Exit;
    End;

    //REGISTRO D990: ENCERRAMENTO DO BLOCO D
    If RegistroD990 = False
        Then Begin
        Result := False;
        Exit;
    End;

    /////////////////////////////////////////////////////////////////
    /////////////////////////////////////////////////////////////////
    //////////////// BLOCO E: APURAÇÃO DO ICMS E DO IPI /////////////
    /////////////////////////////////////////////////////////////////
    /////////////////////////////////////////////////////////////////

    {*** Bloco não será apresentado, apenas fazer abertura e fechamento do bloco para validação}

    //REGISTRO E001: ABERTURA DO BLOCO E
    If RegistroE001 = False
        Then Begin
        Result := False;
        Exit;
    End;

    //REGISTRO E100: APURAÇÃO DE ICMS
    contRegistroE100 := 0;

    {if RegistroE100 = False
    Then Begin
     Result := False;
        Exit;
    End;}

    //REGISTRO E990: ENCERRAMENTO DO BLOCO E
    If RegistroE990 = False
        Then Begin
        Result := False;
        Exit;
    End;

    ////////////////////////////////////////////////////////////////////////////////
    ////////////////////////////////////////////////////////////////////////////////
    /// BLOCO G – CONTROLE DO CRÉDITO DE ICMS DO ATIVO PERMANENTE CIAP /////////////
    ////////////////////////////////////////////////////////////////////////////////
    ////////////////////////////////////////////////////////////////////////////////

    {*** Bloco não será apresentado, apenas fazer abertura e fechamento do bloco para validação}

    //REGISTRO G001: ABERTURA DO BLOCO G
    If RegistroG001 = False
        Then Begin
        Result := False;
        Exit;
    End;

    //REGISTRO G990: ENCERRAMENTO DO BLOCO G
    If RegistroG990 = False
        Then Begin
        Result := False;
        Exit;
    End;

    /////////////////////////////////////////////////////////////////
    /////////////////////////////////////////////////////////////////
    /////////////////// BLOCO H: INVENTÁRIO FÍSICO //////////////////
    /////////////////////////////////////////////////////////////////
    /////////////////////////////////////////////////////////////////

    //REGISTRO H001: ABERTURA DO BLOCO H
    If cbRegistroH001.Checked = True
        Then Begin
        If RegistroH001 = False
            Then Begin
            Result := False;
            Exit;
        End;
    End;

    //Se não estiver selecionado para gerar inventário de estoque ou indicador de movimento no registro H001 for 1 = Bloco sem dados informados, encerra o bloco inserindo somente o registro de encerramento do bloco
    If EncerrarBloco = False
        Then Begin

        //REGISTRO H005: TOTAIS DO INVENTÁRIO
        If cbRegistroH005.Checked = True
            Then Begin
            If RegistroH005 = False
                Then Begin
                Result := False;
                Exit;
            End;
        End;

        // REGISTRO H010: INVENTÁRIO
        If cbRegistroH010.Checked = True
            Then Begin
            If RegistroH010 = False
                Then Begin
                Result := False;
                Exit;
            End;
        End;
    End;

    //REGISTRO H990: ENCERRAMENTO DO BLOCO H.
    If cbRegistroH990.Checked = True
        Then Begin
        If RegistroH990 = False
            Then Begin
            Result := False;
            Exit;
        End;
    End;

    progressbar1.Position := 70;
    Sleep(0050);
    ProgressBar1.Repaint;
    ProgressBar1.StepIt;
    
    /////////////////////////////////////////////////////////////////
    /////////////////////////////////////////////////////////////////
    /////////////////////// BLOCO K: PRODUÇÃO ///////////////////////
    /////////////////////////////////////////////////////////////////
    /////////////////////////////////////////////////////////////////
    if not RegistroK001 then
    begin
       Result := False;
       Exit;
    end;

    if not RegistroK990 then
    begin
       Result := False;
       Exit;
    end;

    progressbar1.Position := 70;
    Sleep(0050);
    ProgressBar1.Repaint;
    ProgressBar1.StepIt;

    /////////////////////////////////////////////////////////////////
    /////////////////////////////////////////////////////////////////
    ////////////////// BLOCO 1: OUTRAS INFORMAÇÕES //////////////////
    /////////////////////////////////////////////////////////////////
    /////////////////////////////////////////////////////////////////

    //REGISTRO 1001: ABERTURA DO BLOCO 1
    If cbRegistro1001.Checked = True
        Then Begin
        If Registro1001 = False
            Then Begin
            Result := False;
            Exit;
        End;
    End;

    // REGISTRO 1010: OBRIGATORIEDADE DE REGISTROS DO BLOCO 1
    If cbRegistro1010.Checked = True
        Then Begin
        If Registro1010 = False
            Then Begin
            Result := False;
            Exit;
        End;
    End;

    //REGISTRO 1990: ENCERRAMENTO DO BLOCO 1
    If cbRegistro1990.Checked = True
        Then Begin
        If Registro1990 = False
            Then Begin
            Result := False;
            Exit;
        End;
    End;

    progressbar1.Position := 80;
    Sleep(0050);
    ProgressBar1.Repaint;
    ProgressBar1.StepIt;

    /////////////////////////////////////////////////////////////////
    /////////////////////////////////////////////////////////////////
    ////// BLOCO 9: CONTROLE E ENCERRAMENTO DO ARQUIVO DIGITAL //////
    /////////////////////////////////////////////////////////////////
    /////////////////////////////////////////////////////////////////

    //BLOCO 9: CONTROLE E ENCERRAMENTO DO ARQUIVO DIGITAL
    If cbBloco9.Checked = True
        Then Begin

        //REGISTRO 9001: ABERTURA DO BLOCO 9
        If Registro9001 = False
            Then Begin
            Result := False;
            Exit;
        End;

        //REGISTRO 9900: REGISTROS DO ARQUIVO.
        If Registro9900 = False
            Then Begin
            Result := False;
            Exit;
        End;

        //REGISTRO 9990: ENCERRAMENTO DO BLOCO 9
        If Registro9990 = False
            Then Begin
            Result := False;
            Exit;
        End;

        //REGISTRO 9999: ENCERRAMENTO DO ARQUIVO DIGITAL
        If Registro9999 = False
            Then Begin
            Result := False;
            Exit;
        End;

    End;

    progressbar1.Position := 90;
    Sleep(0050);
    ProgressBar1.Repaint;
    ProgressBar1.StepIt;

    //FIM DOS BLOCOS - Fecha o Arquivo
    CloseFile(xTexto);

End;

Function TFSped.NovoC100: Boolean;
Begin
    Result := True;
    AddLogln(true, 0, '[REGISTRO C100] - REGISTRO C100: NOTA FISCAL (CÓDIGO 01), NOTA FISCAL AVULSA (CÓDIGO 1B), NOTA FISCAL DE PRODUTOR (CÓDIGO 04), NF-e (CÓDIGO 55) e NFC-e (CÓDIGO 65).');
    AddLogln(true, 0, 'Iniciando... ');
    AddLogln(true, 0, 'Iniciando registros filho... ');
    Try
        DMFiscal.SpedC100.LoadFromFile(Diretorio+'\tmp\C100.xml');
        DMFiscal.SpedC190.LoadFromFile(Diretorio+'\tmp\C190.xml');
        DMFiscal.SpedC170.LoadFromFile(Diretorio+'\tmp\C170.xml');
    Except
        showmessage('Erro ao tentar carregar os arquivos xml temporários!');
        AddLogln(true, 1, ' [C100] - Erro ao carregar arquivos XML. (..\tmp\C100.xml; ..\tmp\C170.xml; \tmp\C190.xml)')
    End;
    Try

        DMFiscal.SpedC100.First;
        While Not (DMFiscal.SpedC100.EOF) Do
        Begin
            contNumItem := 0;
            If PararExecucao = True
                Then Begin
                Result := False;
                Exit;
            End;
            
            contLinhas := contLinhas + 1;
            xLinha := '';
            //01 - REG Imprime Num. Registro
            xLinha := xLinha + '|C100|';

            //02 - IND_OPER: Imprime Indicador do tipo de operação
            xLinha := xLinha +DMFiscal.SpedC100.FieldByName('IND_OPER').AsString+'|';

            //03 - IND_EMIT: Imprime Indicador do emitente do documento fiscal 0- Emissão própria 1- Terceiros
            //quando no vwpedc o campo EMISSAOPROPRIA = 0 ou null é parar terceiros, então indicador = 1, senão indicador = 0
            xLinha := xLinha + DMFiscal.SpedC100.FieldByName('IND_EMIT').AsString+'|';
               
            //04 - COD_PART: Imprime Código do participante (campo 02 do Registro 0150):
            if DMFiscal.SpedC100.FieldByName('COD_MOD').AsString = '55' then
               xLinha := xLinha + Trim(Copy(DMFiscal.SpedC100.FieldByName('COD_PART').AsString, 0, 60)) + '|'
            else
               xLinha := xLinha + '|';

            //05 - COD_MOD Código do modelo do documento fiscal, conforme a Tabela 4.1.1
            xLinha := xLinha + DMFiscal.SpedC100.FieldByName('COD_MOD').AsString + '|';

            //06 - COD_SIT Código da situação do documento fiscal, conforme a Tabela 4.1.2
            //	- campo 6, se o status for fechado = 0, se for cancelado = 02, se for denegado = 4
            xLinha := xLinha + DMFiscal.SpedC100.FieldByName('COD_SIT').AsString + '|';

            // 07 - SER Série do documento fiscal
            //xLinha := xLinha + Trim(Copy(DMFiscal.SpedC100.FieldByName('SER').AsString, 0, 3)) + '|';
            xLinha := xLinha + Trim(Copy(DMFiscal.SpedC100.FieldByName('CHV_NFE').AsString, 23, 3)) + '|';

            //08 - NUM_DOC Número do documento fiscal
            xLinha := xLinha + Trim(Copy(DMFiscal.SpedC100.FieldByName('NUM_DOC').AsString, 0, 9)) + '|';

            //09 - CHV_NFE Chave da Nota Fiscal Eletrônica
            xLinha := xLinha + Trim(Copy(DMFiscal.SpedC100.FieldByName('CHV_NFE').AsString, 0, 44)) + '|';

            //Jônatas 17/09/2013 - Exceção 4 do Registro C100 para em situação especial
            If ((DMFiscal.SpedC100.FieldByName('COD_SIT').AsString = '00') or (DMFiscal.SpedC100.FieldByName('COD_SIT').AsString = '08'))
            Then Begin
                //10 - DT_DOC Data da emissão do documento fiscal
                //If ((DMFiscal.SpedC100.FieldByName('DT_DOC').AsDateTime > StrToDateTime(Dt02)) or (DMFiscal.SpedC100.FieldByName('DT_DOC').AsDateTime < StrToDateTime(DT01)))
                //Then //Jônatas 08/10/2013 - Incluir mensagens nas datas para o usuário alterá-las manualmente
                    //AddLogln(true, 1, ' [xxxx] - Data de emissão do documento fora do período fiscal. Código: '+DMFiscal.SpedC100.FieldByName('CODIGO').AsString+' Número: '+DMFiscal.SpedC100.FieldByName('NUM_DOC').AsString);
                xLinha := xLinha + FormatDateTime('ddmmyyyy', DMFiscal.SpedC100.FieldByName('DT_DOC').AsDateTime) + '|';
            End
            Else
                xLinha := xLinha + '|';

            // Se COD_SIT <> 00 = a situação é denegado/cancelado, portanto não entra os dados a seguir, retorna eles em campo vazio '||'
            If ((DMFiscal.SpedC100.FieldByName('COD_SIT').AsString = '00') or (DMFiscal.SpedC100.FieldByName('COD_SIT').AsString = '08'))//Jônatas 24/09/2013 - Incluido 08 para comparação com C170
            Then Begin
                //11 - DT_E_S Data da entrada ou da saída
                {If DMFiscal.SpedC100.FieldByName('DT_E_S').AsDateTime > StrToDateTime(Dt02)
                Then Begin
                    AddLogln(true, 1, ' [xxxx] - Data de Entrada/Saída fora do período fiscal. Código: '+DMFiscal.SpedC100.FieldByName('CODIGO').AsString+' Número: '+DMFiscal.SpedC100.FieldByName('NUM_DOC').AsString);
                    If DMFiscal.SpedC100.FieldByName('DT_E_S').AsDateTime < DMFiscal.SpedC100.FieldByName('DT_DOC').AsDateTime
                    Then Begin//Jônatas 08/10/2013 - Incluir mensagens nas datas para o usuário alterá-las manualmente
                        AddLogln(true, 1, ' [xxxx] - Data de Entrada/Saída menor que a data de emissão do documento. Código: '+DMFiscal.SpedC100.FieldByName('CODIGO').AsString+' Número: '+DMFiscal.SpedC100.FieldByName('NUM_DOC').AsString);
                    End;
                End
                Else Begin
                    If DMFiscal.SpedC100.FieldByName('DT_E_S').AsDateTime < DMFiscal.SpedC100.FieldByName('DT_DOC').AsDateTime
                    Then Begin
                        AddLogln(true, 1, ' [xxxx] - Data de Entrada/Saída menor que a data de emissão do documento. Código: '+DMFiscal.SpedC100.FieldByName('CODIGO').AsString+' Número: '+DMFiscal.SpedC100.FieldByName('NUM_DOC').AsString)
                    End;
                End;}
                xLinha := xLinha + FormatDateTime('ddmmyyyy', DMFiscal.SpedC100.FieldByName('DT_E_S').AsDateTime) + '|';

                //12 - VL_DOC Valor total do documento fiscal
                xLinha := xLinha + FormatFloat('0.00', DMFiscal.SpedC100.FieldByName('VL_DOC').AsFloat) + '|';

                //13 - IND_PGTO Indicador do tipo de pagamento
                xLinha := xLinha + DMFiscal.SpedC100.FieldByName('IND_PGTO').AsString +'|';

                //14 VL_DESC Valor total do desconto
                xLinha := xLinha + FormatFloat('0.00', DMFiscal.SpedC100.FieldByName('VL_DESC').AsFloat) + '|';

                //15 VL_ABAT_NT Abatimento não tributado e não comercial Ex. desconto ICMS nas remessas para ZFM.
                xLinha := xLinha + FormatFloat('0.00', DMFiscal.SpedC100.FieldByName('VL_ABAT_NT').AsFloat) + '|';

                //16 VL_MERC Valor total das mercadorias e serviços
                xLinha := xLinha + FormatFloat('0.00', DMFiscal.SpedC100.FieldByName('VL_MERC').AsFloat) + '|';

                //***17 IND_FRT Indicador do tipo do frete
                xLinha := xLinha + DMFiscal.SpedC100.FieldByName('IND_FRT').AsString +'|';

                //18 VL_FRT Valor do frete indicado no documento fiscal
                xLinha := xLinha + FormatFloat('0.00', DMFiscal.SpedC100.FieldByName('VL_FRT').AsFloat) + '|';

                //19 VL_SEG Valor do seguro indicado no documento fiscal
                xLinha := xLinha + FormatFloat('0.00', DMFiscal.SpedC100.FieldByName('VL_SEG').AsFloat) + '|';

                //20 VL_OUT_DA Valor de outras despesas acessórias
                xLinha := xLinha + FormatFloat('0.00', DMFiscal.SpedC100.FieldByName('VL_OUT_DA').AsFloat) + '|';

                //21 VL_BC_ICMS Valor da base de cálculo do ICMS
                xLinha := xLinha + FormatFloat('0.00', DMFiscal.SpedC100.FieldByName('VL_BC_ICMS').AsFloat) + '|';

                //22 VL_ICMS Valor do ICMS
                xLinha := xLinha + FormatFloat('0.00', DMFiscal.SpedC100.FieldByName('VL_ICMS').AsFloat) + '|';

                //23 VL_BC_ICMS_ST Valor da base de cálculo do ICMS substituição tributária
                if DMFiscal.SpedC100.FieldByName('COD_MOD').AsString = '55' then
                   xLinha := xLinha + FormatCurr('0.00', DMFiscal.SpedC100.FieldByName('VL_BC_ICMS_ST').AsFloat) + '|'
                else
                   xLinha := xLinha + '|';

                //24 VL_ICMS_ST Valor do ICMS retido por substituição tributária
                if DMFiscal.SpedC100.FieldByName('COD_MOD').AsString = '55' then
                   xLinha := xLinha + FormatFloat('0.00', DMFiscal.SpedC100.FieldByName('VL_ICMS_ST').AsFloat) + '|'
                else
                   xLinha := xLinha + '|';

                //25 VL_IPI Valor total do IPI
                if DMFiscal.SpedC100.FieldByName('COD_MOD').AsString = '55' then
                   xLinha := xLinha + FormatFloat('0.00', DMFiscal.SpedC100.FieldByName('VL_IPI').AsFloat) + '|'
                else
                   xLinha := xLinha + '|';

                //26 VL_PIS Valor total do PIS
                if DMFiscal.SpedC100.FieldByName('COD_MOD').AsString = '55' then
                   xLinha := xLinha + '0,00|'
                else
                   xLinha := xLinha + '|';

                //27 VL_COFINS Valor total da COFINS
                if DMFiscal.SpedC100.FieldByName('COD_MOD').AsString = '55' then
                   xLinha := xLinha + '0,00|'
                else
                   xLinha := xLinha + '|';

                //28 VL_PIS_ST Valor total do PIS retido por substituição tributária
                if DMFiscal.SpedC100.FieldByName('COD_MOD').AsString = '55' then
                   xLinha := xLinha + '0,00|'
                else
                   xLinha := xLinha + '|';

                //29 VL_COFINS_ST Valor total da COFINS retido por substituição tributária
                if DMFiscal.SpedC100.FieldByName('COD_MOD').AsString = '55' then
                   xLinha := xLinha + '0,00|'
                else
                   xLinha := xLinha + '|';

                contRegistroC100 := contRegistroC100 + 1;
                //Imprime a linha do registro C100
                Writeln(xTexto, xLinha);
                //////////////////////////////////////
                ////////// REGISTROS FILHOS //////////
                //////////////////////////////////////
                //C110: Dados Complementares
                if DMFiscal.SpedC100.FieldByName('COD_MOD').AsString = '55' then
                begin
                   //Edmar - 18/03/2014 - Foi alterado o parametro do metodo pois o tipo da operação estava retornando 0 e 1 ao inves de PV, PC ou ORD
                   RegistroC110(DMFiscal.SpedC100.FieldByName('CODIGO').AsInteger, DMFiscal.SpedC100.FieldByName('TP_OPER').AsString);
                end;
                //C170: Itens do documento fiscal
                If ((DMFiscal.SpedC100.FieldByName('IND_EMIT').AsInteger = 1) and (DMFiscal.SpedC100.FieldByName('IND_OPER').AsInteger = 0))
                Then Begin
                    NovoC170(DMFiscal.SpedC100.FieldByName('CODIGO').AsInteger, DMFiscal.SpedC100.FieldByName('TP_OPER').AsString);
                End;
                //C190: Analitico do documento fiscal
                //Edmar - 19/03/2014 - Foi alterado o parametro do metodo pois estava passando uma informação incorreta
                NovoC190(DMFiscal.SpedC100.FieldByName('CODIGO').AsInteger, DMFiscal.SpedC100.FieldByName('IND_OPER').AsString, DMFiscal.SpedC100.FieldByName('COD_MOD').AsString);
            End //Fim if COD_SIT do Registro C100
            Else Begin //se for COD_SIT = 02 ou 04
                xLinha := xLinha + '|||||||||||||||||||';
                contRegistroC100 := contRegistroC100 + 1;
                //Imprime a linha do registro C100
                Writeln(xTexto, xLinha);
            End;

            //Remover os filtros dos CDS
            DMFiscal.SpedC170.Filtered := False;
            DMFiscal.SpedC190.Filtered := False;

            DMFiscal.SpedC100.Next;
        End;

        Result := True;

        AddLogln(true, 0, 'Finalizando registros filhos... ');
        AddLogln(true, 0, 'Registro finalizado. ');
        AddLogln(true, 0, '---------------------------------------------------------------------------------------------------------------------------');
    Except
        showmessage('Erro ao tentar gerar registro C100');
    End;
End;

Function TFSped.NovoC170(CodigoGerador: Integer; TipoGerador: String): Boolean;
Begin
    Try
        DMFiscal.SpedC170.Close;
        DMFiscal.SpedC170.Filtered := False;
        DMFiscal.SpedC170.Filter := 'COD_GERADOR =' + IntToSTR(CodigoGerador)+ ' AND GERADOR =' +QuotedStr(TipoGerador);//Jônatas 23/09/2013 - Adicionado o tipo de gerador pois podem haver códigos iguas
        DMFiscal.SpedC170.Filtered := True;
        DMFiscal.SpedC170.Open;
        DMFiscal.SpedC170.RecordCount;
    Except

    End;
    Try
        DMFiscal.SpedC170.First;
        While Not (DMFiscal.SpedC170.EOF) Do
        Begin
            DMFiscal.SpedC170.RecNo;
            If PararExecucao = True
                Then Begin
                Result := False;
                Exit;
            End;

            contLinhas := contLinhas + 1;
            xLinha := '';
            //01 REG Texto fixo contendo "C170"
            xLinha := xLinha + '|C170|';

            //02 NUM_ITEM Número sequencial do item no documento fiscal N 003 - O O
            contNumItem := contNumItem + 1;
            xLinha := xLinha + IntToStr(DMFiscal.SpedC170.FieldByName('NUM_ITEM').AsInteger) + '|';

            //03 COD_ITEM Código do item (campo 02 do Registro 0200)
            xLinha := xLinha + Trim(Copy(DMFiscal.SpedC170.FieldByName('COD_ITEM').AsString, 0, 60)) + '|';

            //04 DESCR_COMPL Descrição complementar do item como adotado
            xLinha := xLinha + DMFiscal.SpedC170.FieldByName('DESCR_COMPL').AsString + '|';

            //05 QTD Quantidade do item
            xLinha := xLinha + FormatFloat('0.00000', DMFiscal.SpedC170.FieldByName('QTD').AsFloat) + '|';

            //06 UNID Unidade do item (Campo 02 do registro 0190)
            xLinha := xLinha + Trim(Copy(DMFiscal.SpedC170.FieldByName('UNID').AsString, 0, 6)) + '|';

            //07 VL_ITEM Valor total do item (mercadorias ou serviços)
            xLinha := xLinha + FormatFloat('0.00', DMFiscal.SpedC170.FieldByName('VL_ITEM').AsFloat) + '|';

            //08 VL_DESC Valor do desconto comercial
            xLinha := xLinha + FormatFloat('0.00', DMFiscal.SpedC170.FieldByName('VL_DESC').AsFloat) + '|';

            //09 IND_MOV Movimentação física do ITEM/PRODUTO: 0-SIM; 1-NÃO;
            //QTDE = 0, IND_MOV = 1 NÃO
            xLinha := xLinha + DMFiscal.SpedC170.FieldByName('IND_MOV').AsString + '|';

            //10 CST_ICMS Código da Situação Tributária referente ao ICMS, conforme a Tabela indicada no item 4.3.1
            xLinha := xLinha + Format('%.*d',[3,DMFiscal.SpedC170.FieldByName('CST_ICMS').AsInteger]) + '|';//Jônatas 23/09/2013 - Coloca zeros antes dos valores, o campo não está pegando todo o conteúdo da string no cds

            //11 CFOP Código Fiscal de Operação e Prestação
            xLinha := xLinha + Copy(DMFiscal.SpedC170.FieldByName('CFOP').AsString, 0, 4) + '|';

            //12 COD_NAT Código da natureza da operação (campo 02 do Registro 0400)
            xLinha := xLinha + DMFiscal.SpedC170.FieldByName('COD_NAT').AsString + '|';

            //13 VL_BC_ICMS Valor da base de cálculo do ICMS
            xLinha := xLinha + FormatFloat('0.00', DMFiscal.SpedC170.FieldByName('VL_BC_ICMS').AsFloat) + '|';

            //14 ALIQ_ICMS Alíquota do ICMS
            xLinha := xLinha + FormatFloat('0.00', DMFiscal.SpedC170.FieldByName('ALIQ_ICMS').AsFloat) + '|';

            //15 VL_ICMS Valor do ICMS creditado/debitado
            xLinha := xLinha + FormatFloat('0.00', DMFiscal.SpedC170.FieldByName('VL_ICMS').AsFloat) + '|';

            //16 VL_BC_ICMS_ST Valor da base de cálculo referente à substituição tributária
            xLinha := xLinha + FormatFloat('0.00', DMFiscal.SpedC170.FieldByName('VL_BC_ICMS_ST').AsFloat) + '|';

            //17 ALIQ_ST Alíquota do ICMS da substituição tributária na unidade da federação de destino
            //ALIQ_ST - Apresentar este campo se itprodord.baseicmssubs VL_BC_ICMS_ST >0 e itprodord.vlricmssubs  VLR_ICMS_ST >0
            xLinha := xLinha + FormatFloat('0.00', DMFiscal.SpedC170.FieldByName('ALIQ_ST').AsFloat) + '|';

            //18 VL_ICMS_ST Valor do ICMS referente à substituição tributária
            //VLR_ICMS_ST - Apresentar este campo se itprodord.baseicmssubs>0
            xLinha := xLinha + FormatFloat('0.00', DMFiscal.SpedC170.FieldByName('VL_ICMS_ST').AsFloat) + '|';

            //19 IND_APUR Indicador de período de apuração do IPI: 0 - Mensal; 1 - Decendial
            xLinha := xLinha + DMFiscal.SpedC170.FieldByName('IND_APUR').AsString + '|';

            //20 CST_IPI Código da Situação Tributária referente ao IPI, conforme a Tabela indicada no item 4.3.2.
            xLinha := xLinha + DMFiscal.SpedC170.FieldByName('CST_IPI').AsString + '|';

            //21 COD_ENQ Código de enquadramento legal do IPI, conforme tabela indicada no item 4.5.3.
            xLinha := xLinha + DMFiscal.SpedC170.FieldByName('COD_ENQ').AsString + '|';

            //22 VL_BC_IPI Valor da base de cálculo do IPI
            xLinha := xLinha + FormatFloat('0.00', DMFiscal.SpedC170.FieldByName('VL_BC_IPI').AsFloat) + '|';

            //23 ALIQ_IPI Alíquota do IPI
            xLinha := xLinha + FormatFloat('0.00', DMFiscal.SpedC170.FieldByName('ALIQ_IPI').AsFloat) + '|';

            //24 VL_IPI Valor do IPI creditado/debitado
            xLinha := xLinha + FormatFloat('0.00', DMFiscal.SpedC170.FieldByName('VL_IPI').AsFloat) + '|';

            //25 CST_PIS Código da Situação Tributária referente ao PIS.
            xLinha := xLinha + DMFiscal.SpedC170.FieldByName('CST_PIS').AsString + '|';
            //26 VL_BC_PIS Valor da base de cálculo do PIS
            xLinha := xLinha +  FormatFloat('0.00', DMFiscal.SpedC170.FieldByName('VL_BC_PIS').AsFloat) + '|';
            //27 ALIQ_PIS Alíquota do PIS (em percentual)
            xLinha := xLinha +  FormatFloat('0.0000', DMFiscal.SpedC170.FieldByName('ALIQ_PIS_PERC').AsFloat) + '|';
            //28 QUANT_BC_PIS Quantidade – Base de cálculo PIS
            xLinha := xLinha +  FormatFloat('0.000', DMFiscal.SpedC170.FieldByName('QUANT_BC_PIS').AsFloat) + '|';
            //29 ALIQ_PIS Alíquota do PIS (em reais)
            xLinha := xLinha +  FormatFloat('0.0000', DMFiscal.SpedC170.FieldByName('ALIQ_PIS_VL').AsFloat) + '|';
            //30 VL_PIS Valor do PIS
            xLinha := xLinha +  FormatFloat('0.00', DMFiscal.SpedC170.FieldByName('VL_PIS').AsFloat) + '|';
            //31 CST_COFINS Código da Situação Tributária referente ao COFINS.
            xLinha := xLinha + DMFiscal.SpedC170.FieldByName('CST_COFINS').AsString + '|';
            //32 VL_BC_COFINS Valor da base de cálculo da COFINS
            xLinha := xLinha +  FormatFloat('0.00', DMFiscal.SpedC170.FieldByName('VL_BC_COFINS').AsFloat) + '|';
            //33 ALIQ_COFINS Alíquota do COFINS (em percentual)
            xLinha := xLinha +  FormatFloat('0.0000', DMFiscal.SpedC170.FieldByName('ALIQ_COFINS_PERC').AsFloat) + '|';
            //34 QUANT_BC_COFINS Quantidade – Base de cálculo COFINS
            xLinha := xLinha +  FormatFloat('0.000', DMFiscal.SpedC170.FieldByName('QUANT_BC_COFINS').AsFloat) + '|';
            //35 ALIQ_COFINS Alíquota da COFINS (em reais)
            xLinha := xLinha +  FormatFloat('0.0000', DMFiscal.SpedC170.FieldByName('ALIQ_COFINS_VL').AsFloat) + '|';
            //36 VL_COFINS Valor da COFINS
            xLinha := xLinha +  FormatFloat('0.00', DMFiscal.SpedC170.FieldByName('VL_COFINS').AsFloat) + '|';
            //37 COD_CTA Código da conta analítica contábil debitada/creditada
            xLinha := xLinha + DMFiscal.SpedC170.FieldByName('COD_CTA').AsString + '|';
            //38 VL_ABAT_NT valor do abatimento não tributado e não comercial
            xLinha := xLinha + DMFiscal.SpedC170.FieldByName('VL_ABAT_NT').AsString + '|';

            contRegistroC170 := contRegistroC170 + 1;
            //Imprime a linha do registro C170
            Writeln(xTexto, xLinha);
            DMFiscal.SpedC170.Next;
        End; //while
    Except
        showmessage('Erro ao gerar registro C170');
    End;
End;

Function TFSped.NovoC190(CodigoGerador: Integer; TipoGerador: String; Modelo: String): Boolean;
Begin
    Try
    	 //Edmar - 17/03/2014 - Código comentado para corrigir informações que não eram retornadas
        {DMFiscal.SpedC190.Close;
        DMFiscal.SpedC190.Filtered := False;
        DMFiscal.SpedC190.Filter := 'COD_GERADOR =' + IntToSTR(CodigoGerador)+ 'AND GERADOR =' +QuotedStr(TipoGerador);//Jônatas 23/09/2013 - Adicionado o tipo de gerador pois podem haver códigos iguas
        DMFiscal.SpedC190.Filtered := True;
        DMFiscal.SpedC190.Open;}
        DMFiscal.SpedC190.Close;
        DMFiscal.SpedC190.Filtered := False;
        //Edmar - 17/03/2014 - verifica qual é o tipo gerador (0: pedido de compra; 1: pedido de venda ou ordem de serviço.)
        if (TipoGerador = '0') then
        	DMFiscal.SpedC190.Filter := 'COD_GERADOR =' + IntToSTR(CodigoGerador)+ 'AND GERADOR = ''PC'''//Jônatas 23/09/2013 - Adicionado o tipo de gerador pois podem haver códigos iguas
        else
        	DMFiscal.SpedC190.Filter := 'COD_GERADOR =' + IntToSTR(CodigoGerador)+ 'AND (GERADOR = ''PV'' OR GERADOR = ''ORD'')';
        DMFiscal.SpedC190.Filtered := True;
        DMFiscal.SpedC190.Open;
    Except

    End;

    Try
        DMFiscal.SpedC190.First;
        While Not (DMFiscal.SpedC190.EOF) Do
        Begin

            If PararExecucao = True
                Then Begin
                Result := False;
                Exit;
            End;

            contLinhas := contLinhas + 1;
            xLinha := '';
            //01 REG Texto fixo contendo "C190"
            xLinha := xLinha + '|C190|';

            //02 CST_ICMS Código da Situação Tributária, conforme a Tabela indicada no item 4.3.1
            xLinha := xLinha + Copy(DMFiscal.SpedC190.FieldByName('CST_ICMS').AsString, 0, 3) + '|';

            //03 CFOP Código Fiscal de Operação e Prestação do agrupamento de itens
            xLinha := xLinha + Copy(DMFiscal.SpedC190.FieldByName('CFOP').AsString, 0, 4) + '|';

            // 04 ALIQ_ICMS Alíquota do ICMS
            xLinha := xLinha + FormatFloat('0.00', DMFiscal.SpedC190.FieldByName('ALIQ_ICMS').AsFloat) + '|';

            //05 VL_OPR  Valor da operação na combinação de CST_ICMS, CFOP e alíquota do ICMS, correspondente ao somatório do valor das mercadorias, despesas acessórias
            xLinha := xLinha + FormatFloat('0.00', DMFiscal.SpedC190.FieldByName('VL_OPR').AsFloat) + '|';

            //06 VL_BC_ICMS Parcela correspondente ao "Valor da base de cálculo do ICMS" referente à combinação de CST_ICMS, CFOP e alíquota do ICMS.
            xLinha := xLinha + FormatFloat('0.00', DMFiscal.SpedC190.FieldByName('VL_BC_ICMS').AsFloat) + '|';

            //07 VL_ICMS Parcela correspondente ao "Valor do ICMS" referente à combinação de CST_ICMS, CFOP e alíquota do ICMS.
            xLinha := xLinha + FormatFloat('0.00', DMFiscal.SpedC190.FieldByName('VL_ICMS').AsFloat) + '|';

            //08 VL_BC_ICMS_ST Parcela correspondente ao "Valor da base de cálculo do ICMS" da substituição tributária referente à combinação de CST_ICMS, CFOP e alíquota do ICMS.
            if Modelo = '55' then
               xLinha := xLinha + FormatFloat('0.00', DMFiscal.SpedC190.FieldByName('VL_BC_ICMS_ST').AsFloat) + '|'
            else
               xLinha := xLinha + '0,00|';

            //09 VL_ICMS_ST Parcela correspondente ao valor creditado/debitado do ICMS da substituição tributária, referente à combinação de CST_ICMS, CFOP, e alíquota do ICMS.
            if Modelo = '55' then
               xLinha := xLinha + FormatFloat('0.00', DMFiscal.SpedC190.FieldByName('VL_ICMS_ST').AsFloat) + '|'
            else
               xLinha := xLinha + '0,00|';

            //10 VL_RED_BC Valor não tributado em função da redução da base de cálculo do ICMS, referente à combinação de CST_ICMS, CFOP e alíquota do ICMS.
            xLinha := xLinha + FormatFloat('0.00', DMFiscal.SpedC190.FieldByName('VL_RED_BC').AsFloat) + '|';

            //11 VL_IPI Parcela correspondente ao "Valor do IPI" referente à combinação CST_ICMS, CFOP e alíquota do ICMS.
            if Modelo = '55' then
               xLinha := xLinha + FormatFloat('0.00', DMFiscal.SpedC190.FieldByName('VL_IPI').AsFloat) + '|'
            else
               xLinha := xLinha + '0,00|';

            //12 COD_OBS Código da observação do lançamento fiscal (campo 02 do Registro 0460)
            If DMFiscal.SpedC190.FieldByName('COD_OBS').AsString = '' Then
                xLinha := xLinha + '|'
            Else
                xLinha := xLinha + DMFiscal.SpedC190.FieldByName('COD_OBS').AsString;

            contRegistroC190 := contRegistroC190 + 1;
            //Imprime a linha do registro C190
            Writeln(xTexto, xLinha);
            DMFiscal.SpedC190.Next;
        End;
    Except
        showmessage('Erro ao gerar C190');
    End;
End;

End.


