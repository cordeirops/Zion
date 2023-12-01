unit UCadPadraoPes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UCadPadrao, TFlatHintUnit, Grids, DBGrids, StdCtrls, TFlatEditUnit, Buttons,
  jpeg, ExtCtrls, TFlatTabControlUnit, FashionPanel, Mask, DBCtrls, DBColorEdit,
  EditFloat, ColorEditFloat, ComCtrls, DB, Menus, UFrmBusca, DBColorComboBox,
  DrLabel, ShellAPI, xmldom, XMLIntf, msxmldom, XMLDoc, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdHTTP;
VAR
	 XSQLREL: String;

type
  TFCadPadraoPes = class(TFCadPadrao)
    TCPessoa: TFlatTabControl;
    PPrincipal: TPanel;
    PCompletoFisica: TPanel;
    PEspecifico: TPanel;
    PTipoPessoa: TPanel;
    FashionPanel1: TFashionPanel;
    RGTIPO: TRadioGroup;
    BTNOHTIPOPESSOA: TBitBtn;
    PPesFisica: TPanel;
    Label7: TLabel;
    DBCPF: TDBColorEdit;
    Label4: TLabel;
    DBColorEdit1: TDBColorEdit;
    Label5: TLabel;
    DBColorEdit3: TDBColorEdit;
    RGSexo: TRadioGroup;
    Label6: TLabel;
    PPesJuridica: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    DBCnpj: TDBColorEdit;
    DBColorEdit5: TDBColorEdit;
    DBColorEdit6: TDBColorEdit;
    Label12: TLabel;
    DBColorEdit7: TDBColorEdit;
    DBColorEdit8: TDBColorEdit;
    Label13: TLabel;
    DBNOMEPJ: TDBColorEdit;
    DBNOMEPF: TDBColorEdit;
    Label14: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    dbbairro: TDBColorEdit;
    DBColorEdit13: TDBColorEdit;
    Label20: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    TabSheet2: TTabSheet;
    GroupBox3: TGroupBox;
    DBGrid2: TDBGrid;
    RGCivil: TRadioGroup;
    GBLOCALTRABALHO: TGroupBox;
    Label21: TLabel;
    DBColorEdit12: TDBColorEdit;
    Label22: TLabel;
    DBColorEdit15: TDBColorEdit;
    Label23: TLabel;
    DBColorEdit16: TDBColorEdit;
    Label24: TLabel;
    DBColorEdit17: TDBColorEdit;
    Label25: TLabel;
    DBColorEdit18: TDBColorEdit;
    GroupBox5: TGroupBox;
    Label26: TLabel;
    DBColorEdit19: TDBColorEdit;
    Label27: TLabel;
    DBColorEdit20: TDBColorEdit;
    Label28: TLabel;
    DBColorEdit21: TDBColorEdit;
    GroupBox6: TGroupBox;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    DBColorEdit22: TDBColorEdit;
    DBColorEdit23: TDBColorEdit;
    DBColorEdit24: TDBColorEdit;
    DBColorEdit25: TDBColorEdit;
    Label34: TLabel;
    DBCONJUGECPF: TDBColorEdit;
    GroupBox7: TGroupBox;
    Label33: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    DBColorEdit26: TDBColorEdit;
    DBColorEdit28: TDBColorEdit;
    DBColorEdit29: TDBColorEdit;
    PComplementoJURIDICA: TPanel;
    DBDATACAD: TDBColorEdit;
    Label2: TLabel;
    DBINTERNO: TDBColorEdit;
    Label45: TLabel;
    DBCODINTERNOPJ: TDBColorEdit;
    DBNOMESUPER: TDBText;
    Relatorio: TPopupMenu;
    Sinttico1: TMenuItem;
    Label3: TLabel;
    DBColorEdit2: TDBColorEdit;
    Label37: TLabel;
    DBColorEdit9: TDBColorEdit;
    RGORDEM: TRadioGroup;
    FrmBusca1: TFrmBusca;
    FrmRegiao: TFrmBusca;
    FrmNatural: TFrmBusca;
    DBColorEdit47: TDBColorEdit;
    Memo1: TMemo;
    LProximidade: TLabel;
    DBProximidade: TDBColorEdit;
    EdCodigo: TFlatEdit;
    EdCpf: TFlatEdit;
    edDescFone: TFlatEdit;
    edContato: TFlatEdit;
    edNumFone: TFlatEdit;
    Shape1: TShape;
    BtnAddFone: TBitBtn;
    BtnRemFone: TBitBtn;
    Shape2: TShape;
    lbVerMapa: TLabel;
    edDescEmail: TFlatEdit;
    EdEmail: TFlatEdit;
    Shape456: TShape;
    btnAddEmail: TBitBtn;
    Shape7984: TShape;
    btnRemEmail: TBitBtn;
    XMLDocument1: TXMLDocument;
    LBENDNUM: TLabel;
    DBEndNumero: TDBColorEdit;
    AlteraPessoa: TPopupMenu;
    AlteraFisicaJuridica1: TMenuItem;
    IdHTTP1: TIdHTTP;
    Label68: TLabel;
    cbEstrangeiro: TCheckBox;
    PEndereco: TPanel;
    dbgEndereco: TDBGrid;
    cbCepEstado: TComboBox;
    cbCepCidade: TComboBox;
    BitBtn11: TBitBtn;
    spEndereco: TShape;
    DBColorEdit4: TEdit;
    edPesquisaEndereco: TEdit;
    btnfechaendereco: TButton;
    XMLBuscaCEP: TXMLDocument;
    btnDocumentos: TBitBtn;
    mmDocumentos: TPopupMenu;
    Anexardocs1: TMenuItem;
    Abrirpas1: TMenuItem;
    OPD: TOpenDialog;
    lbanexopj: TLabel;
    lbanexopf: TLabel;
    btnanexopj: TButton;
    btnanexopf: TButton;
    eddocpj: TFlatEdit;
    eddocpf: TFlatEdit;
    CBOrgao_Municipal_Estadual: TCheckBox;
    cbOrgao_Federal: TCheckBox;
    lbOrgaoPessoa: TLabel;
    procedure TCPessoaTabChanged(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure PTipoPessoaExit(Sender: TObject);
    procedure BTNOHTIPOPESSOAClick(Sender: TObject);
    procedure BTNOPENClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure RGSexoClick(Sender: TObject);
    procedure BTNMINUSClick(Sender: TObject);
    procedure BtnConsultarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure RGCivilClick(Sender: TObject);
    procedure BtnApagarClick(Sender: TObject);
    procedure DBCONJUGECPFExit(Sender: TObject);
    procedure DBCnpjExit(Sender: TObject);
    procedure DBCPFExit(Sender: TObject);
    procedure DBDATACADKeyPress(Sender: TObject; var Key: Char);
    procedure DBColorEdit19KeyPress(Sender: TObject; var Key: Char);
    procedure DBColorEdit18KeyPress(Sender: TObject; var Key: Char);
    procedure DBColorEdit23KeyPress(Sender: TObject; var Key: Char);
    procedure RGSexoExit(Sender: TObject);
    procedure DBINTERNOExit(Sender: TObject);
    procedure BtnRelatorioClick(Sender: TObject);
    procedure Analtico1Click(Sender: TObject);
    procedure DBColorEdit9Exit(Sender: TObject);
    procedure DBColorEdit1Exit(Sender: TObject);
    procedure RGORDEMClick(Sender: TObject);
    procedure FrmBusca1BTNMINUSClick(Sender: TObject);
    procedure FrmBusca1BTNOPENClick(Sender: TObject);
    procedure FrmBusca1EDCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure DBCODINTERNOPJExit(Sender: TObject);
    procedure Sinttico1Click(Sender: TObject);
    procedure FrmRegiaoEDCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure FrmRegiaoBTNOPENClick(Sender: TObject);
    procedure FrmRegiaoBTNMINUSClick(Sender: TObject);
    procedure FrmNaturalEDCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure FrmNaturalBTNOPENClick(Sender: TObject);
    procedure FrmNaturalBTNMINUSClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBCLASSExit(Sender: TObject);
    procedure DBCLASSKeyPress(Sender: TObject; var Key: Char);
    procedure EdCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCpfKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edDescFoneEnter(Sender: TObject);
    procedure edDescFoneExit(Sender: TObject);
    procedure edContatoEnter(Sender: TObject);
    procedure edContatoExit(Sender: TObject);
    procedure edNumFoneEnter(Sender: TObject);
    procedure edNumFoneExit(Sender: TObject);
    procedure BtnAddFoneClick(Sender: TObject);
    procedure BtnRemFoneClick(Sender: TObject);
    procedure lbVerMapaClick(Sender: TObject);
    procedure edDescEmailEnter(Sender: TObject);
    procedure edDescEmailExit(Sender: TObject);
    procedure EdEmailEnter(Sender: TObject);
    procedure EdEmailExit(Sender: TObject);
    procedure btnAddEmailClick(Sender: TObject);
    procedure btnRemEmailClick(Sender: TObject);
    procedure DBGridCadastroPadraoDblClick(Sender: TObject);
    procedure DBGridCadastroPadraoKeyPress(Sender: TObject; var Key: Char);
    procedure EdNomeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdNomeKeyPress(Sender: TObject; var Key: Char);
    procedure DBColorEdit13KeyPress(Sender: TObject; var Key: Char);
    procedure DBEndNumeroKeyPress(Sender: TObject; var Key: Char);
    procedure DBGridCadastroPadraoDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure DBGridCadastroPadraoTitleClick(Column: TColumn);
    procedure AlteraFisicaJuridica1Click(Sender: TObject);
    procedure Label68Click(Sender: TObject);
    procedure DBColorEdit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgEnderecoDblClick(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edPesquisaEnderecoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnfechaenderecoClick(Sender: TObject);
    procedure btnDocumentosClick(Sender: TObject);
    procedure Anexardocs1Click(Sender: TObject);
    procedure Abrirpas1Click(Sender: TObject);
    procedure btnanexopfClick(Sender: TObject);
    procedure btnanexopjClick(Sender: TObject);
    procedure CBOrgao_Municipal_EstadualClick(Sender: TObject);
    procedure cbOrgao_FederalClick(Sender: TObject);
  private
    { Private declarations }
    Function SelectPessoa(CODPESSOA:INTEGER): Boolean;
    // - 10/02/2009:   atualiza lista de fones pertencentes a pessoa
    procedure AtualizaTelefone;
    procedure LimpaCampoTelefone;
    procedure AtualizaEmail;
    procedure LimpaCampoEmail;
    // - 10/02/2009: verifica se e-mail é valido
    function VerificaEmail(email: string): boolean;
    //Função utilizada para popular a grid de ruas de acordo com a cidade e uf passada
    Function IniciaEnderecos(xCidade: String; xUf: String):Boolean;
    //Função utilizada para selecionar cidade e uf de acordo com cidade selecionada no formulário
    Function SelecionaCidadeUf(xCodCidade: Integer):Boolean;
    //Função utilizada para popular a grid de ruas de acordo com a cidade e uf passada
    Function CopiaEnderecoCepRua:Boolean;

  public
    { Public declarations }
    XControle :Boolean;
    procedure transportadora(transp :Integer);
    Function AlternarFisicaJuridica: Boolean;
    procedure AbrirPastaPessoa(xCodigoPessoa: Integer);
    procedure AnexarArquivoPessoa(xCodigoPessoa: Integer);
    //Função utilizada para Alerar os dados de pessoa fisica para juridica ou de juridica para fisica    

    //Paulo 20/10/2010 - 157: Buscando o cep na net
	 procedure BuscaCEP(XCEP:String);
  end;

var
  FCadPadraoPes: TFCadPadraoPes;
  PESSOAFISICA: Boolean; // Define qual é o tipo da pessoa em consulta física ou jurídica
  XCOD_PESSOA, XCOD_PESSOAFisJur, XCOD_PK: Integer;//Armazena o valor das chaves primárias Pessoa, Pessoa Física ou Jurídica e a chave da tabela Principal
  XCOD_REGIAO, XCOD_CIDADE, XCOD_NATURAL, XCOD_TRANSP: Integer;
  XCONTROLE: Boolean;//DJ - 11/12/2009: Controle em Altera pessoa fisica, se verdadeiro entao esta ocorrendo uma alteracao.
  XTIPOPESSOA: String;
  xCidade, xUf: String; //variaveis utilizadas na pesquisa por rua
  TSConsulta: TStringList;
implementation

uses UDMPessoa, Alxor32, UCadCidade, AlxMessage,UDMMacs, UMenu,
  UDMGEOGRAFIA, URelPadraoPes, UCadRegiao, UFORNECEDOR, UPadrao, UMDO;

{$R *.DFM}


//Função utilizada para Alerar os dados de pessoa fisica para juridica ou de juridica para fisica
Function TFCadPadraoPes.AlternarFisicaJuridica: Boolean;
var
   XAux,XTABAUX: String;
   XCOD_AUX: Integer;
begin
  inherited;
   //Dj 11/12/2009: Testa se o usuario esta certo de que quer fazer a operação
	if(MessageBox(0, 'Deseja alternar entre pessoa física e juridica?', 'Atenção', MB_ICONWARNING or MB_YESNO)=ID_YES)then
	 //DJ 11/12/2009: Verifica se view esta vázia
    If Xtab=False
    Then Begin
        if XView.IsEmpty
        Then Begin
            Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'Não existem dados a serem consultados ou alterados!', '', 1, 1, False, 'a');
            Exit;
        End;
    End
    Else Begin
        if XTabela.IsEmpty
        Then Begin
            Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'Não existem dados a serem consultados ou alterados!', '', 1, 1, False, 'a');
            Exit;
        End;
    End;

    //DJ 11/12/2009: Testa se o cadastro se refera a uma pessoa fisica
    DMPESSOA.TALX1.Close;
    DMPESSOA.TALX1.SQL.Clear;
    DMPessoa.TALX1.SQL.Add('select * from pessoaf where pessoaf.COD_PESSOA = :COD_PESSOA');
    DMPessoa.TALX1.ParamByName('COD_PESSOA').AsInteger := XView.FieldByName('COD_PESSOA').AsInteger;
    DMPessoa.TALX1.Open;

    //DJ 11/12/2009: Se cadastro igual a pessoa fisica, entao define o registro como tal, senão carrega tabela pessoa juridica
    if(DMPessoa.TALX1.FieldByName('COD_PESSOA').AsInteger <> 0)then
    Begin
   	XTIPOPESSOA := 'F';
       XTABAUX:='pessoaf';
    End
    Else
    begin
   	XTIPOPESSOA := 'J';
   	DMPESSOA.TALX1.Close;
	    DMPESSOA.TALX1.SQL.Clear;
   	DMPessoa.TALX1.SQL.Add('select * from pessoaj where pessoaj.COD_PESSOA = :COD_PESSOA');
   	DMPessoa.TALX1.ParamByName('COD_PESSOA').AsInteger := XView.FieldByName('COD_PESSOA').AsInteger;
   	DMPessoa.TALX1.Open;
       XTABAUX:='pessoaj';
	 end;

    //DJ 11/12/2009: Importa dados de pessoa
    DMPESSOA.TALX.Close;
    DMPESSOA.TALX.SQL.Clear;
    DMPessoa.TALX.SQL.Add('select * from pessoa where pessoa.COD_PESSOA = :COD_PESSOA');
    DMPessoa.TALX.ParamByName('COD_PESSOA').AsInteger := DMPessoa.TALX1.FieldByName('COD_PESSOA').AsInteger;
    DMPessoa.TALX.Open;

    if(XTIPOPESSOA = 'F')then
    Begin
    	XCOD_AUX:=InserReg(DMPESSOA.TPessoaJ, 'PESSOAJ', 'COD_PESSOAJ');
       DMPESSOA.TPessoaJ.FieldByName('COD_PESSOA').AsInteger:=DMPESSOA.TALX.FieldByName('COD_PESSOA').AsInteger;
       DMPESSOA.TPessoaJ.FieldByName('COD_PESSOAJ').AsInteger:=XCOD_AUX;
       DMPESSOA.TPessoaJ.Post;
    End
    Else
    Begin
    	XCOD_AUX:=InserReg(DMPESSOA.TPessoaF, 'PESSOAF', 'COD_PESSOAF');
       DMPESSOA.TPessoaF.FieldByName('COD_PESSOA').AsInteger:=DMPESSOA.TALX.FieldByName('COD_PESSOA').AsInteger;
       DMPESSOA.TPessoaF.FieldByName('COD_PESSOAF').AsInteger:=XCOD_AUX;
       DMPESSOA.TPessoaF.Post;
    End;

    DMPESSOA.TALX1.Close;
    DMPESSOA.TALX1.SQL.Clear;
    DMPESSOA.TALX1.SQl.Add('delete from '+XTABAUX+' where cod_pessoa = :cod_pessoa');
    DMPESSOA.TALX1.ParamByName('COD_PESSOA').AsString:=DMPESSOA.TALX.FieldByName('COD_PESSOA').AsString;
    DMPESSOA.TALX1.ExecSQL;
    DMPESSOA.TransacPessoa.CommitRetaining;

    BtnConsultar.Click;
End;
Function TFCadPadraoPes.SelectPessoa(CODPESSOA: Integer): Boolean;
Var
    Flag:Integer;
    XEncontraPessoa: Integer;//Variavel utilizada para descobrir se encontrou pessoa fisica ou juridica
Begin
    Flag:=0;
    XEncontraPessoa:=0;
    //Localiza em pessoa de acordo com xtabela
    If FiltraTabela(DMPESSOA.TPessoa, 'PESSOA', 'COD_PESSOA', IntToStr(CODPESSOA), '') = True
    Then Begin
        XCOD_PESSOA:=DMPESSOA.TPessoa.FieldByName('COD_PESSOA').AsInteger;
        DBColorEdit4.Text:=DMPESSOA.TPessoa.FieldByName('ENDERECO').AsString;
        //Localiza Cidade
	     If FiltraTabela(DMGEOGRAFIA.WCidade, 'VWCIDADE', 'COD_CIDADE', DMPESSOA.TPessoa.FieldByName('COD_CIDADE').AsString,'' ) = True
        Then Begin
            XCod_Cidade:=DMGEOGRAFIA.WCidade.FieldByName('COD_CIDADE').AsInteger;
            FrmBusca1.EdDescricao.Text:=DMGEOGRAFIA.WCidade.FieldByName('UF').AsString+'-'+DMGEOGRAFIA.WCidade.FieldByName('NOME').AsString;
            FrmBusca1.EDCodigo.Text:=DMGEOGRAFIA.WCidade.FieldByName('COD_CIDADE').AsString;
        End
        Else Begin
            XCod_Cidade:=-1;
            FrmBusca1.EdDescricao.Text:='';
            FrmBusca1.EDCodigo.Text:='';
        End;
        //Localiza Naturalidade
	     If FiltraTabela(DMGEOGRAFIA.WCidade, 'VWCIDADE', 'COD_CIDADE', DMPESSOA.TPessoa.FieldByName('COD_NATURAL').AsString,'' ) = True
        Then Begin
            XCOD_NATURAL:=DMGEOGRAFIA.WCidade.FieldByName('COD_CIDADE').AsInteger;
            FrmNatural.EdDescricao.Text:=DMGEOGRAFIA.WCidade.FieldByName('UF').AsString+'-'+DMGEOGRAFIA.WCidade.FieldByName('NOME').AsString;
            FrmNatural.EDCodigo.Text:=DMGEOGRAFIA.WCidade.FieldByName('COD_CIDADE').AsString;
        End
        Else Begin
            XCOD_NATURAL:=-1;
            FrmNatural.EdDescricao.Text:='';
            FrmNatural.EDCodigo.Text:='';
        End;
        //Localiza Região
	     If FiltraTabela(DMGEOGRAFIA.TRegiao, 'REGIAO', 'COD_REGIAO', DMPESSOA.TPessoa.FieldByName('COD_REGIAO').AsString,'' ) = True
        Then Begin
            XCod_Regiao:=DMPESSOA.TPessoa.FieldByName('COD_REGIAO').AsInteger;
            FrmRegiao.EdDescricao.Text:=DMGEOGRAFIA.TRegiao.FieldByName('DESCRICAO').AsString;
            FrmRegiao.EDCodigo.Text:=DMGEOGRAFIA.TREGIAO.FieldByName('COD_REGIAO').AsString;
        End
        Else Begin
            XCod_Regiao:=-1;
            FrmRegiao.EdDescricao.Text:='';
            FrmRegiao.EDCodigo.Text:='';
        End;

        // localiza pessoa FÍSICA de acordo com PESSOA
        If FiltraTabela(DMPESSOA.TPessoaF, 'PESSOAF', 'COD_PESSOA', DMPESSOA.TPessoa.FieldByName('COD_PESSOA').AsString, '') = True
        Then Begin
	         XCOD_PESSOAFisJur:=DMPESSOA.TPessoaF.FieldByName('COD_PESSOAF').AsInteger;
            PESSOAFISICA:=True;
            PPesFisica.Visible:=true;
            PPesFisica.BringToFront;
            RGTIPO.ItemIndex:=0;
            //Atribui Sexo
            If DMPESSOA.TPessoaF.FieldByName('SEXO').AsString='M' Then
                RGSexo.ItemIndex:=0
            Else
                RGSexo.ItemIndex:=1;

            If DMPESSOA.TPessoaF.FieldByName('SEXO').AsString='' Then
                RGSexo.ItemIndex:=-1;

            //atribui estado civil
            If DMPESSOA.TPessoaf.FieldByName('ESTADO_CIVIL').AsString = 'Casado      ' Then
                RGCivil.ItemIndex:=0;
            If DMPESSOA.TPessoaf.FieldByName('ESTADO_CIVIL').AsString = 'Solteiro    ' Then
                RGCivil.ItemIndex:=1;
            If DMPESSOA.TPessoaf.FieldByName('ESTADO_CIVIL').AsString = 'Viúvo       ' Then
                RGCivil.ItemIndex:=2;
            If DMPESSOA.TPessoaf.FieldByName('ESTADO_CIVIL').AsString = 'Desquitado  ' Then
                RGCivil.ItemIndex:=3;
            Flag:=1;
            XEncontraPessoa:=1;
        End;

        // localiza pessoa Juridica de acordo com PESSOA
        If FiltraTabela(DMPESSOA.TPessoaJ, 'PESSOAJ', 'COD_PESSOA', DMPESSOA.TPessoa.FieldByName('COD_PESSOA').AsString, '') = True
        Then Begin
	         XCOD_PESSOAFisJur:=DMPESSOA.TPessoaJ.FieldByName('COD_PESSOAJ').AsInteger;
            PESSOAFISICA:=False;
            PPesJuridica.Visible:=true;
            PPesJuridica.BringToFront;
            RGTIPO.ItemIndex:=1;
            Flag:=1;
            XEncontraPessoa:=1;
        End;
        If XEncontraPessoa=0
        Then Begin
        	If Mensagem('INFORMAÇÃO AO USUÁRIO', 'O Sistema precisa saber se a pessoa a ser trabalhada é física ou jurídica.'+#13+'Pressione SIM para pessoa física e NÃO para pessoa jurídica', '', 2, 2, False, 'c') =2
          	Then Begin
              	XCOD_PESSOAFisJur:=InserReg(DMPESSOA.TPessoaF, 'PESSOAF', 'COD_PESSOAF');//Insere registro
              	DMPESSOA.TPessoaF.FieldByName('COD_PESSOAF').AsInteger:=XCOD_PESSOAFisJur;
              	DMPESSOA.TPessoaF.FieldByName('COD_PESSOA').AsString:=DMPESSOA.TPessoa.FieldByName('COD_PESSOA').AsString;//Passa o valor de cod_pessoa
              	PESSOAFISICA:=True;
              	PPesFisica.Visible:=true;
              	PPesFisica.BringToFront;
              	RGTIPO.ItemIndex:=0;
              	Flag:=1;
              	XEncontraPessoa:=1;
          	End
          	Else Begin
          		XCOD_PESSOAFisJur:=InserReg(DMPESSOA.TPessoaJ, 'PESSOAJ', 'COD_PESSOAJ');
              	DMPESSOA.TPessoaJ.FieldByName('COD_PESSOAJ').AsInteger:=XCOD_PESSOAFisJur;
              	DMPESSOA.TPessoaJ.FieldByName('COD_PESSOA').AsString:=DMPESSOA.TPessoa.FieldByName('COD_PESSOA').AsString;
          		PESSOAFISICA:=False;
              	PPesJuridica.Visible:=true;
              	PPesJuridica.BringToFront;
              	RGTIPO.ItemIndex:=1;
		 	End;
          	Flag:=1;
          	XEncontraPessoa:=1;
         End;
     End;
    If Flag=1 Then
    Result:=True;
End;
procedure TFCadPadraoPes.TCPessoaTabChanged(Sender: TObject);
begin
  inherited;
    If PTipoPessoa.Visible=false
    Then Begin
        If TCPessoa.ActiveTab=0
        Then Begin
            PPrincipal.Visible:=true;
            PPrincipal.BringToFront;
          End;
        If TCPessoa.ActiveTab=1
        Then Begin
            If PESSOAFISICA=True
            Then Begin
                PCompletoFisica.Visible:=true;
                PCompletoFisica.BringToFront;
            End
            Else Begin
                PComplementoJURIDICA.Visible:=true;
                PComplementoJURIDICA.BringToFront;
            End;
        End;
        If TCPessoa.ActiveTab=2
        Then Begin
            PEspecifico.Visible:=true;
            PEspecifico.BringToFront;
        End;

    End;
end;

procedure TFCadPadraoPes.BtnNovoClick(Sender: TObject);
begin
  inherited;
    //Seleciona o dataSet para a label superior indicar o nome
	 DBNOMESUPER.Visible:=False;
    PEndereco.Visible:=False;

    TCPessoa.ActiveTab:=0;

    //Deixa os paineis invisiveis
    PPrincipal.Visible:=False;
    PCompletoFisica.Visible:=False;
    PEspecifico.Visible:=False;
    PPrincipal.BringToFront;

    //LIMPA COMPONENTES DE PROCURA
    XCod_Cidade:=-1;
    FrmBusca1.EDCodigo.Text:='';
    FrmBusca1.EdDescricao.Text:='';

	 XCOD_NATURAL:=-1;
    FrmNatural.EDCodigo.Text:='';
    FrmNatural.EdDescricao.Text:='';

    XCod_Regiao:=-1;
    FrmRegiao.EDCodigo.Text:='';
    FrmRegiao.EdDescricao.Text:='';

    CBOrgao_Municipal_Estadual.Checked := False;
    cbOrgao_Federal.Checked := False;

    PTipoPessoa.Visible:=True;
    PTipoPessoa.BringToFront;
    BTNOHTIPOPESSOA.SetFocus;
    Try
	 	XCOD_PK:=InserReg(XTabela, XSQLTABELA, XPkTabela);
    Except
    	MessageDlg('Falha 515: ao gerar código.', mtWarning, [mbOK], 0);
    End;
    //Seleciona Telefones para nova pessoa
    DMPESSOA.TTelefone.Close;
    DMPESSOA.TTelefone.SQL.Clear;
    DMPESSOA.TTelefone.SQL.Add('Select * from telefone Where Cod_Pessoa=:CODPESSOA');
    DMPESSOA.TTelefone.ParamByName('CODPESSOA').AsString:='-1';//INFORMA  -1 PARA COMO NOVA PESSOA NÃO EXISTE E-MAIL E TELEFONE CADASTRADO
    DMPESSOA.TTelefone.Open;

    //Seleciona E-mails para nova pessoa
    DMPESSOA.TEmail.Close;
    DMPESSOA.TEmail.SQL.Clear;
    DMPESSOA.TEmail.SQL.Add('Select * from EMAIL Where Cod_Pessoa=:CODPESSOA');
    DMPESSOA.TEmail.ParamByName('CODPESSOA').AsString:='-1';//INFORMA  -1 PARA COMO NOVA PESSOA NÃO EXISTE E-MAIL E TELEFONE CADASTRADO
    DMPESSOA.TEmail.Open;
    DBDATACAD.Text:=DateToStr(DAte());
    //CALCULA VALOR PARA CÓDIGO INTERNO
    XTabela.Edit;
    XTabela.FieldByName('COD_INTERNO').AsString:=InttoStr(XCOD_PK);
    Xtabela.Post;
    DBColorEdit4.Text:='';

    LimpaCampoTelefone;
    LimpaCampoEmail; 
end;

procedure TFCadPadraoPes.PTipoPessoaExit(Sender: TObject);
begin
  inherited;
    If PTipoPessoa.Visible=True Then
        RGTIPO.SetFocus;
end;

procedure TFCadPadraoPes.BTNOHTIPOPESSOAClick(Sender: TObject);
begin
  inherited;
    PPrincipal.Visible:=True;
    PPrincipal.BringToFront;
    PTipoPessoa.Visible:=False;
	 XCOD_PESSOA:=InserReg(DMPESSOA.TPessoa, 'PESSOA', 'COD_PESSOA');

    //Localiza Cidade da empresa e joga para pessoa
    If FiltraTabela(DMMACS.TEmpresa, 'EMPRESA', 'COD_EMPRESA', FMenu.LCODEMPRESA.Caption ,'' ) = True
    Then Begin
        //Localiza Cidade
	     If FiltraTabela(DMGEOGRAFIA.WCidade, 'VWCIDADE', 'COD_CIDADE', DMMACS.TEmpresa.FieldByName('COD_CIDADE').AsString,'' ) = True
        Then Begin
            XCod_Cidade:=DMGEOGRAFIA.WCidade.FieldByName('COD_CIDADE').AsInteger;
            DMPESSOA.TPessoa.FieldByName('COD_CIDADE').AsInteger:=DMGEOGRAFIA.WCidade.FieldByName('COD_CIDADE').AsInteger;
            FrmBusca1.EdDescricao.Text:=DMGEOGRAFIA.WCidade.FieldByName('UF').AsString+'-'+DMGEOGRAFIA.WCidade.FieldByName('NOME').AsString;
            FrmBusca1.EDCodigo.Text:=DMGEOGRAFIA.WCidade.FieldByName('COD_CIDADE').AsString;
        End
        Else Begin
            XCod_Cidade:=-1;
            FrmBusca1.EdDescricao.Text:='';
            FrmBusca1.EDCodigo.Text:='';
        End;
    End;


    //REGISTRA DATA DE CADASTRO DA PESSOA
    DMPESSOA.TPessoa.FieldByName('DATA_INI').AsString:=DateToStr(Date());
    Case RGTIPO.ItemIndex of
        0: Begin
        	 Try
                XCOD_PESSOAFisJur:=InserReg(DMPESSOA.TPessoaF, 'PESSOAF', 'COD_PESSOAF');//Insere registro
                DMPESSOA.TPessoaF.FieldByName('COD_PESSOAF').AsInteger:=XCOD_PESSOAFisJur;
                DMPESSOA.TPessoaF.FieldByName('COD_PESSOA').AsInteger:=XCOD_PESSOA;//Passa o valor de cod_pessoa
                DMPESSOA.TPessoaF.Post;
                DMPESSOA.TPessoaF.Edit;
            Except
				 MessageDlg('Erro: PF581 - Erro ao gerar dados de pessoa fisica. Feche o sistema e tente novamente', mtWarning, [mbOK], 0);
                Exit;
            End;
            PPesFisica.Visible:=True;
            PPesFisica.BringToFront;
            PESSOAFISICA:=tRUE;
            DBINTERNO.SetFocus;
           End;
        1: Begin
        	 Try
        	 	 XCOD_PESSOAFisJur:=InserReg(DMPESSOA.TPessoaJ, 'PESSOAJ', 'COD_PESSOAJ');
            	 DMPESSOA.TPessoaJ.FieldByName('COD_PESSOAJ').AsInteger:=XCOD_PESSOAFisJur;
            	 DMPESSOA.TPessoaJ.FieldByName('COD_PESSOA').AsInteger:=XCOD_PESSOA;
                DMPESSOA.TPessoaJ.Post;
                DMPESSOA.TPessoaJ.Edit;
            Except
				 MessageDlg('Erro: PJ599 - Erro ao gerar dados de pessoa juridica. Feche o sistema e tente novamente', mtWarning, [mbOK], 0);
                Exit;
            End;
            PPesJuridica.Visible:=True;
            PPesJuridica.BringToFront;
            PESSOAFISICA:=False;
            DBCODINTERNOPJ.SetFocus;
           End;
    End;  
    //Seleciona o dataSet para a label superior indicar o nome
	 DBNOMESUPER.Visible:=TRUE;
end;

procedure TFCadPadraoPes.BTNOPENClick(Sender: TObject);
begin
  inherited;
    If AbrirForm(TFCadCidade, FCadCidade, 1)='Selected'
    Then Begin

        DMPESSOA.TPessoa.Edit;

        DMPESSOA.TPessoa.FieldByName('COD_CIDADE').AsString:=DMGEOGRAFIA.WCidade.FieldByName('COD_CIDADE').AsString;
        Frmbusca1.EdDescricao.Text:=DMGEOGRAFIA.WCidade.FieldByName('UF').AsString+'-'+DMGEOGRAFIA.WCidade.FieldByName('UF').AsString;
        Frmbusca1.EDCodigo.text:=DMGEOGRAFIA.WCidade.FieldByName('COD_CIDADE').AsString;
    End;
end;

procedure TFCadPadraoPes.BtnGravarClick(Sender: TObject);
begin
     FMenu.XPreSel := True;
     FMenu.XFieldPesqPreSel := 'COD_INTERNO';
     FMenu.XCodPesqPresSel := DMPESSOA.TCliente.FieldByName('COD_INTERNO').AsString;

     If DBINTERNO.Text=''
     Then Begin
	     Mensagem('INFORMAÇÃO AO USUÁRIO', 'Por Favor, informe o Código Interno ele é muito importante para o controle!', '', 1, 1, False, 'i');
   	 DBINTERNO.SetFocus;
        Exit;
     End;

    iF PESSOAFISICA=tRUE
    Then Begin
	  	 If ((XSQLTABELA='CLIENTE') AND (DMMACS.TLoja.FieldByName('CONTCPFCNPJCLI').AsString='1')) OR ((XSQLTABELA='FORNECEDOR') AND (DMMACS.TLoja.FieldByName('CONTCPFCNPJFOR').AsString='1')) OR (XSQLTABELA='FUNCIONARIO')
		 Then Begin//se alguma das condições acima for verdadeira, o sistema deverá efetuar o controle de cpf/cnpj, caso contrário não!
	        //Verifica CPF

           If Not ValidCPF(DBCPF.Text)
           Then Begin
               Mensagem('INFORMAÇÃO AO USUÁRIO', 'O CPF Informado não passou pelo teste de validação!', '', 1, 1, False, 'i');
               DBCPF.SetFocus;
               If (DMMACS.TLoja.FieldByName('atividade').AsString <> 'PETSHOP')Then
                   Exit;
            End;

        End;
        //Verifica nome
        IF DMPESSOA.TPessoa.FieldByName('NOME').AsString=''
        Then Begin
            Mensagem('INFORMAÇÃO AO USUÁRIO', 'É necessário informar o nome!', '', 1, 1, False, 'i');
            DBNOMEPF.SetFocus;
            Exit;
        End;
        //As duas linhas de comando abaixo são necessarias para gravarmos os dados de pessoa fisica
        DMPESSOA.TPessoaF.Edit;
        DMPESSOA.TPessoaF.Post;
    End
    Else Begin
	  	 If ((XSQLTABELA='CLIENTE') AND (DMMACS.TLoja.FieldByName('CONTCPFCNPJCLI').AsString='1')) OR ((XSQLTABELA='FORNECEDOR') AND (DMMACS.TLoja.FieldByName('CONTCPFCNPJFOR').AsString='1')) OR (XSQLTABELA='FUNCIONARIO')
		 Then Begin//se alguma das condições acima for verdadeira, o sistema deverá efetuar o controle de cpf/cnpj, caso contrário não!
	        //Verifica CNPJ
	        If Not ValidaCGC(DBCnpj.Text)
	        Then Begin
	            Mensagem('INFORMAÇÃO AO USUÁRIO', 'O CNPJ Informado não passou pelo teste de validação!', '', 1, 1, False, 'i');
	            DBCnpj.SetFocus;
	            Exit;
	        End;
        End;
        //Verifica Razao
        IF DMPESSOA.TPessoaJ.FieldByName('RAZAO_SOCIAL').AsString=''
        Then Begin
            Mensagem('INFORMAÇÃO AO USUÁRIO', 'É necessário informar a razão social!', '', 1, 1, False, 'i');
            DBNOMEPJ.SetFocus;
            Exit;
        End;
        //As duas linhas abaixo são necessariar para gravar os dados de pessoa juridica
        DMPESSOA.TPessoaJ.Edit;
        DMPESSOA.TPessoaJ.Post;
    End;

    Try
        if DMPESSOA.TPessoa.FieldByName('COD_CIDADE').AsInteger <> XCOD_CIDADE then
        begin
           if Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'A cidade do usuário foi alterada. Confirma essa alteração?', '', 2, 3, False, 'C') <> 2 then
               Exit
           else begin
               Registra(
                   'PESSOA',
                   'ALTERAÇÃO CIDADE',
                   DateToStr(Date()),
                   'ALTERADA CIDADE ' + DMPESSOA.TPessoa.FieldByName('COD_CIDADE').AsString + ' PARA ' + IntToStr(XCOD_CIDADE),
                   'NOME ' + DMPESSOA.TPessoa.FieldByName('NOME').AsString
               );               
           end;
        end;
        
        //GRAVA DADOS DE PESSOA
        DMPESSOA.TPESSOA.Edit;
        DMPESSOA.TPessoa.FieldByName('COD_CIDADE').AsInteger:=XCOD_CIDADE;
        DMPESSOA.TPessoa.FieldByName('COD_REGIAO').AsInteger:=XCOD_REGIAO;
        DMPESSOA.TPessoa.FieldByName('COD_NATURAL').AsInteger:=XCOD_NATURAL;
        DMPESSOA.TPessoa.FieldByName('COD_TRANSPORTADORA').AsInteger:=XCOD_TRANSP;
        DMPESSOA.TPessoa.FieldByName('ENDERECO').AsString:=DBColorEdit4.Text;
        //Edmar - 30/03/2015 - Se o check box de pessoa estrangeiro estiver marcado
        if cbEstrangeiro.Checked then//sinaliza conforme o caso
        	DMPESSOA.TPessoa.FieldByName('ESTRANGEIRO').AsString := 'S'
        else
        	DMPESSOA.TPessoa.FieldByName('ESTRANGEIRO').AsString := 'N';

        if PESSOAFISICA then
        	DMPESSOA.TPessoa.FieldByName('CAMINHODOCS').AsString := eddocpf.Text
        else
        	DMPESSOA.TPessoa.FieldByName('CAMINHODOCS').AsString := eddocpj.Text;        
        DMPESSOA.TPESSOA.Post;


        //GRAVA Tabela Principal
        XTabela.Edit;
        XTabela.FieldByName('COD_PESSOA').AsInteger:=XCOD_PESSOA;
        XTabela.Post;


        //CONFIRMA TRANZAÇÕES
        DMPESSOA.TransacPessoa.CommitRetaining;
    Except
    	MessageDlg('Erro: P686 - Ocorreram problemas ao gravar os dados de pessoas. Tente consultar as informações', mtWarning, [mbOK], 0);
       DMPESSOA.TransacPessoa.RollbackRetaining;
    End;
    //inherite de cadastro padrão;
    inherited;
end;

procedure TFCadPadraoPes.RGSexoClick(Sender: TObject);
begin
  inherited;
    //Grava Sexo
    DMPESSOA.TPessoaF.Edit;

    If RGSexo.ItemIndex=0 Then
        DMPESSOA.TPessoaF.FieldByName('SEXO').AsString:='M'
    Else
        DMPESSOA.TPessoaF.FieldByName('SEXO').AsString:='F';
end;

procedure TFCadPadraoPes.transportadora(transp :Integer);
begin
    XCOD_TRANSP:=transp;
end;

procedure TFCadPadraoPes.BTNMINUSClick(Sender: TObject);
begin
  inherited;
    //se a tabela não estiver em edição
    DMPESSOA.TPessoa.Edit;

    DMPESSOA.TPessoa.FieldByName('COD_CIDADE').AsString:='';
    Frmbusca1.EdDescricao.Text:='';
    Frmbusca1.EDCodigo.text:='';
end;

procedure TFCadPadraoPes.BtnConsultarClick(Sender: TObject);
Var
    DETALHES: String;
begin
  inherited;
    //Verifica se view esta vázia
    if XView.IsEmpty Then
        Exit;
    PEndereco.Visible:=False;
    XCOD_PESSOA:=Xview.FieldByName('COD_PESSOA').AsInteger;
    //Localiza em CLIENTE de acordo com a view
    If FiltraTabela(XTabela, XSQLTABELA, XPkTabela, Xview.FieldByName(XPkTabela).AsString, '')=True
    Then Begin
        //todas as referencias necessárias não foram encontradas CLIENTE X PESSOA X PESSOAF/PESSOAJ
        If SelectPessoa(Xview.FieldByName('COD_PESSOA').Value)=False
        Then Begin
            DETALHES:='Para melhor distribuição, agilidade de processamento e trafego de rede. ';
            DETALHES:=DETALHES+'as informações são divididas e alocadas em tabelas separadas, quando é realizado uma consulta as tabelas que possuem referencias são reagrupadas, neste caso uma destas tabelas não pode ser encontrada';
            Mensagem('INFORMAÇÃO AO USUÁRIO', 'Alguns dados digitados anteriormente referente a pessoa em consulta, podem ter se perdido.', DETALHES, 1, 1, True, 'i');
        End;
    End;

    //Ativas paineis para consulta ou alteração;
    TCPessoa.ActiveTab:=0;
    PPrincipal.Visible:=true;
    PPrincipal.BringToFront;
    PTipoPessoa.Visible:=False;
    SelectPesMail;

    //Edmar - 31/03/2015 - Verifica se a pessoa é estrangeira e faz a marcação
    if DMPESSOA.TPessoa.FieldByName('ESTRANGEIRO').AsString = 'S' then
       cbEstrangeiro.Checked := True
    else
       cbEstrangeiro.Checked := False;

    if PESSOAFISICA then
    	eddocpf.Text := DMPESSOA.TPessoa.FieldByName('CAMINHODOCS').AsString
    else
    	eddocpj.Text := DMPESSOA.TPessoa.FieldByName('CAMINHODOCS').AsString;

    //inicia as tabelas em edição;
    XTabela.Edit;

    //Seleciona o dataSet para a label superior indicar o nome
	 DBNOMESUPER.DataSource:=DMPESSOA.DSPessoa;

    LimpaCampoTelefone;
    AtualizaTelefone;
    LimpaCampoEmail;
    AtualizaEmail;

    If PESSOAFISICA = False
    Then Begin
       if DMPESSOA.TPessoaJ.FieldByName('ORGAO_MUNICIPAL_ESTADUAL').AsString = 'S' then
           CBOrgao_Municipal_Estadual.Checked := True
       else
           CBOrgao_Municipal_Estadual.Checked := False;
       if DMPESSOA.TPessoaJ.FieldByName('ORGAO_FEDERAL').AsString = 'S' then
           cbOrgao_Federal.Checked := True
       else
           cbOrgao_Federal.Checked := False;
    End; 
end;

procedure TFCadPadraoPes.BtnCancelarClick(Sender: TObject);
begin
  inherited;
    DMPESSOA.TPessoaJ.CanceL;
    DMPESSOA.TPessoaJ.CancelUpdates;

    DMPESSOA.TPessoaF.CanceL;
    DMPESSOA.TPessoaF.CancelUpdates;

    DMPESSOA.TPessoa.CanceL;
    DMPESSOA.TPessoa.CancelUpdates;

    XTabela.CanceL;
    XTabela.CancelUpdates;

    XTransaction.CommitRetaining;
end;

procedure TFCadPadraoPes.RGCivilClick(Sender: TObject);
begin
  inherited;
    //Grava Estado Civil
    DMPESSOA.TPessoaF.Edit;

    Case RGCivil.ItemIndex of
        0: DMPESSOA.TPessoaF.FieldByName('ESTADO_CIVIL').AsString:='Casado';
        1: DMPESSOA.TPessoaF.FieldByName('ESTADO_CIVIL').AsString:='Solteiro';
        2: DMPESSOA.TPessoaF.FieldByName('ESTADO_CIVIL').AsString:='Viúvo';
        3: DMPESSOA.TPessoaF.FieldByName('ESTADO_CIVIL').AsString:='Desquitado';
    End;

end;

procedure TFCadPadraoPes.BtnApagarClick(Sender: TObject);
Var
   Flag: integer;
begin
    inherited;
    //variavel para controle de apagara ou nao pessoa referenciada a classe mestre. se não houver referencias em outras classes mestres deve ser apagado
    Flag:=0;

    If XTab=True //se utilizando tabela
    Then Begin
        //Verifica se tabela esta vázia
        if XTabela.IsEmpty Then
            Exit;
    End
    Else Begin
        //Verifica se view esta vázia
        if XView.IsEmpty Then
            Exit;
    End;

    //confirmação para apagar xtabela e suas referidas pessoa
    If Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Deseja realmente apagar '+ XDescricao+ #13+XView.FieldbyName(XCampo).AsString+ '?' , '', 2, 3, False, 'c')=2
    Then Begin
        Try
            If XTab=False
            Then Begin
                //Localiza em XTabela de acordo com xview
                If FiltraTabela(XTabela, XSQLTABELA, XPkTabela, XView.FieldByName(XPkTabela).AsString, '')=True
                Then Begin  
                    //Localiza em pessoa de acordo com xtabela
		             If FiltraTabela(DMPESSOA.TPessoa, 'PESSOA', 'COD_PESSOA', XView.FieldByName('COD_PESSOA').AsString, '')=True
                    Then Begin
                        //check de relação com outras tabelas mestre (Cliente, Funcionários, etc) se tiver mantém pessoa cadastrada
                        If XSQLTABELA='CLIENTE' Then
                        begin
                           If CheckRelationPes(DMPESSOA.TPessoa.FieldByName('COD_PESSOA').AsString, [DMPESSOA.TFuncionario, DMPESSOA.TFornecedor], 2)= False Then
                              Flag:=1;
                        end;
                        
                        If XSQLTABELA='FUNCIONARIO' Then
                        begin
                           If CheckRelationPes(DMPESSOA.TPessoa.FieldByName('COD_PESSOA').AsString, [DMPESSOA.TCLIENTE, DMPESSOA.TFornecedor], 2)= False Then
                              Flag:=1;
                        end;
                        
                        If XSQLTABELA='FORNECEDOR' Then
                        begin
							If CheckRelationPes(DMPESSOA.TPessoa.FieldByName('COD_PESSOA').AsString, [DMPESSOA.TFuncionario, DMPESSOA.TCliente], 2)= False Then
                              Flag:=1;

                            //Edmar - 15/04/2014 - SQL que retorna referencia do pedido de compra para um fornecedor
                            DMPESSOA.TALX.Close;
                            DMPESSOA.TALX.SQL.Clear;
                            DMPESSOA.TALX.SQL.Add('select pedcompra.cod_pedcomp from pedcompra ');
                            DMPESSOA.TALX.SQL.Add('where pedcompra.cod_fornec = :codPessoa ');
                            DMPESSOA.TALX.ParamByName('codPessoa').AsInteger:= XView.FieldByName('cod_fornec').AsInteger;
                            DMPESSOA.TALX.Open;

                        	//Edmar - 15/04/2014 - Se encontrou algum registro quer dizer que existe alguma referencia
                        	//e não pode apagar
                            if not DMPESSOA.TALX.IsEmpty then
                        		Flag := 0;
   					 end;
                        
                        //se não encontro referencias pode apagar
                        If Flag=1
                        Then Begin
	                         XTabela.Delete;
                            // localiza pessoa FÍSICA de acordo com PESSOA
                            If FiltraTabela(DMPESSOA.TPessoaF, 'PESSOAF', 'COD_PESSOA', DMPESSOA.TPessoa.FieldByName('COD_PESSOA').AsString, '')=True
                            Then
                                DMPESSOA.TPessoaF.Delete;
                            // localiza pessoa juridica de acordo com PESSOA
                            If FiltraTabela(DMPESSOA.TPessoaJ, 'PESSOAJ', 'COD_PESSOA', DMPESSOA.TPessoa.FieldByName('COD_PESSOA').AsString, '')=True
                            Then
                                DMPESSOA.TPessoaJ.Delete;

                            DMPESSOA.TPessoa.Delete;
                        End;
                    End;
                End;
            End;
            LiberaDados;
            DMPESSOA.TransacPessoa.CommitRetaining;
        Except;
        End;
    End;
end;

procedure TFCadPadraoPes.DBCONJUGECPFExit(Sender: TObject);
begin
  inherited;
    If DBCONJUGECPF.text=DBCPF.Text
    Then Begin
        Mensagem('INFORMAÇÃO AO USUÁRIO', 'O CPF do conjuge não pode ser o mesmo do cliente!', '', 1, 1, False, 'i');
        DBCONJUGECPF.SetFocus;
        Exit;
    End;
    If DBCONJUGECPF.Text<>'' Then
        If Not ValidCPF(DBCONJUGECPF.Text) Then
            Mensagem('INFORMAÇÃO AO USUÁRIO', 'O CPF Informado não passou pelo teste de validação!', '', 1, 1, False, 'i');
end;

procedure TFCadPadraoPes.DBCnpjExit(Sender: TObject);
begin
  inherited;
	If (XSQLTABELA='CLIENTE') OR (XSQLTABELA='FORNECEDOR') OR (XSQLTABELA='FUNCIONARIO')
   Then Begin
		//se alguma das condições acima for verdadeira, o sistema deverá efetuar o controle de cpf/cnpj, caso contrário não!
	    //Verifica CNPJ
	    If (DBCnpj.Text<>'') AND not (cbEstrangeiro.Checked) Then
	        If Not ValidaCGC(DBCnpj.Text) Then
	            Mensagem('INFORMAÇÃO AO USUÁRIO', 'O CNPJ Informado não passou pelo teste de validação!', '', 1, 1, False, 'i');
	End;

	If ((XSQLTABELA='CLIENTE') OR (XSQLTABELA='FUNCIONARIO') or (XSQLTABELA='FORNECEDOR'))
	Then Begin

	    //Verifica Se já Existe uma pessoa de xtabela com este CPF
	    DMPESSOA.TALX.Close;
	    DMPESSOA.TALX.SQL.Clear;
	    DMPESSOA.TALX.SQL.Add('SELECT * FROM '+XSQLTABELA+ ', PESSOA WHERE (PESSOA.CPFCNPJ= :CPFCNPJ) AND ('+XSQLTABELA+'.COD_PESSOA=PESSOA.COD_PESSOA) AND ('+XSQLTABELA+'.'+XPkTabela+'<>:VALORPK)');
	    DMPESSOA.TALX.ParamByName('CPFCNPJ').AsString:=DBCnpj.Text;
	    DMPESSOA.TALX.ParamByName('VALORPK').AsString:=XTabela.FieldByName(XPkTabela).AsString;
	    DMPESSOA.TALX.Open;

	    If Not DMPESSOA.TALX.IsEmpty
	    Then Begin
	        If Mensagem('INFORMAÇÃO AO USUÁRIO', XDescricao+ ' portador deste CNPJ já se encontra cadastrado. Deseja alterar ou ativar o Portador do CNPJ digitado?', '', 2, 2, False, 'c')=2
	        Then Begin
 				 If FiltraTabela(XView, XSQLVIEW, 'CPFCNPJ', DBCnpj.Text,  '')=True
                Then Begin
                   BtnConsultar.Click;
                   Exit;
                End
                Else Begin
				 	Mensagem('A T E N Ç Ã O', ' Portador do CPF Não encontrado!', '', 1, 1, False, 'a');
	             	BtnCancelar.Click;
	             	Exit;
                End;
	        End
	        Else Begin
	             BtnCancelar.Click;
	             Exit;
	        End;
	    End;
	    //Verifica a existencia de uma pessoa já Cadastrada
	    DMPESSOA.TALX.Close;
	    DMPESSOA.TALX.SQL.Clear;
	    DMPESSOA.TALX.SQL.Add('Select * from pessoa  Where CPFCNPJ=:CNPJ');
	    DMPESSOA.TALX.ParamByName('CNPJ').AsString:=DBCNPJ.Text;
	    DMPESSOA.TALX.Open;

	    //se a tabela não estiver vazia significa que já existe uma pessoa cadastrada
	    If not DMPESSOA.TALX.IsEmpty
	    Then Begin
	        // Cancela Operações em andamento
	        DMPESSOA.TPessoaJ.CanceL;
	        DMPESSOA.TPessoaJ.CancelUpdates;
	        DMPESSOA.TPessoaJ.Edit;

	        DMPESSOA.TPessoa.CanceL;
	        DMPESSOA.TPessoa.CancelUpdates;
	        DMPESSOA.TPessoa.Edit;

	        //localiza pessoa portadora do CNPJ e edita
	        If SelectPessoa(DMPESSOA.TALX.fieldByName('COD_PESSOA').Value)=False
	        Then Begin
	            Mensagem('INFORMAÇÃO AO USUÁRIO', 'Não foi possivel integrar dados. As tabelas se perderam, tente mais tarde!', '', 1, 1, False, 'a');
	            DMPESSOA.TransacPessoa.RollbackRetaining;
	        End;
	    End;
   END;
end;

procedure TFCadPadraoPes.DBCPFExit(Sender: TObject);
begin
  inherited;
  	 If (XSQLTABELA='CLIENTE') OR (XSQLTABELA='FORNECEDOR') OR (XSQLTABELA='FUNCIONARIO')
	 Then Begin//se alguma das condições acima for verdadeira, o sistema deverá efetuar o controle de cpf/cnpj, caso contrário não!
    	//Verifica CPF
	    If (DBCPF.Text <> '') AND not (cbEstrangeiro.Checked) Then
	        If Not ValidCPF(DBCPF.Text) Then
	            Mensagem('INFORMAÇÃO AO USUÁRIO', 'O CPF Informado não passou pelo teste de validação!', '', 1, 1, False, 'i');
	 End;
  	 If ((XSQLTABELA='CLIENTE') OR (XSQLTABELA='FUNCIONARIO')  OR (XSQLTABELA='FORNECEDOR'))
	 Then Begin
	    //Verifica Se já Existe uma pessoa de xtabela com este CPF
	    DMPESSOA.TALX.Close;
	    DMPESSOA.TALX.SQL.Clear;
	    DMPESSOA.TALX.SQL.Add('SELECT * FROM '+XSQLTABELA+ ', PESSOA WHERE (PESSOA.CPFCNPJ= :CPFCNPJ) AND ('+XSQLTABELA+'.COD_PESSOA=PESSOA.COD_PESSOA) AND ('+XSQLTABELA+'.'+XPkTabela+'<>:VALORPK)');
	    DMPESSOA.TALX.ParamByName('CPFCNPJ').AsString:=DBCPF.Text;
	    DMPESSOA.TALX.ParamByName('VALORPK').AsString:=XTabela.FieldByName(XPkTabela).AsString;
	    DMPESSOA.TALX.Open;

	    If Not DMPESSOA.TALX.IsEmpty
	    Then Begin
	        If Mensagem('INFORMAÇÃO AO USUÁRIO', XDescricao+ ' portador deste CPF já se encontra cadastrado. Deseja alterar ou ativar o Portador do CPF digitado?', '', 2, 2, False, 'c')=2
	        Then Begin
 				 If FiltraTabela(XView, XSQLVIEW, 'CPFCNPJ', DBCPF.Text,  '')=True
                Then Begin
                   BtnConsultar.Click;
                   Exit;
                End
                Else Begin
				 	Mensagem('A T E N Ç Ã O', ' Portador do CPF Não encontrado!', '', 1, 1, False, 'a');
	             	BtnCancelar.Click;
	             	Exit;
                End;
	        End
	        Else Begin
	             BtnCancelar.Click;
	             Exit;
	        End;
	    End;

	    //Verifica a existencia de uma pessoa já Cadastrada
	    DMPESSOA.TALX.Close;
	    DMPESSOA.TALX.SQL.Clear;
	    DMPESSOA.TALX.SQL.Add('Select * from pessoa  Where CPFCNPJ=:CPF');
	    DMPESSOA.TALX.ParamByName('CPF').AsString:=DBCPF.Text;
	    DMPESSOA.TALX.Open;

	    //se a tabela não estiver vazia significa que já existe uma pessoa cadastrada
	    If not DMPESSOA.TALX.IsEmpty
	    Then Begin
	        // Cancela Operações em andamento
	        DMPESSOA.TPessoaF.CanceL;
	        DMPESSOA.TPessoaF.CancelUpdates;
	        DMPESSOA.TPessoaF.Edit;

	        DMPESSOA.TPessoa.CanceL;
	        DMPESSOA.TPessoa.CancelUpdates;
	        DMPESSOA.TPessoa.Edit;

	        //localiza pessoa portadora do cpf e edita
	        If SelectPessoa(DMPESSOA.TALX.fieldByName('COD_PESSOA').Value)=False
	        Then Begin
	            Mensagem('INFORMAÇÃO AO USUÁRIO', 'Não foi possivel integrar dados. As tabelas se perderam, tente mais tarde!', '', 1, 1, False, 'a');
	            DMPESSOA.TransacPessoa.RollbackRetaining;
	        End;
	    End;
    END;
end;

procedure TFCadPadraoPes.DBDATACADKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
    If not (Key in ['0'..'9',#8, '/']) Then
        Key := #0;
end;

procedure TFCadPadraoPes.DBColorEdit19KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
    If not (Key in ['0'..'9',#8, '/']) Then
        Key := #0;
end;

procedure TFCadPadraoPes.DBColorEdit18KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
    If not (Key in ['0'..'9',#8, '/']) Then
        Key := #0;
end;

procedure TFCadPadraoPes.DBColorEdit23KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
    If not (Key in ['0'..'9',#8, '/']) Then
        Key := #0;
end;

procedure TFCadPadraoPes.RGSexoExit(Sender: TObject);
begin
     inherited;
     DBNOMEPF.SetFocus;
end;

procedure TFCadPadraoPes.DBINTERNOExit(Sender: TObject);
begin
     inherited;
     If SelectRegistro('EMPRESA', 'COD_EMPRESA', FMenu.LCODEMPRESA.Caption)=True
     Then Begin
          If DMMACS.TSelect.FieldByName('ZEROCODPESSOA').AsString='1' Then
             DBINTERNO.Text:=ConcatZero(IntToStr(StrToInt(DBINTERNO.Text)), DMMACS.TSelect.FieldByName('NCASASZEROPES').AsInteger);
     End;
end;




procedure TFCadPadraoPes.BtnRelatorioClick(Sender: TObject);
begin
  inherited;
	Relatorio.Popup(Left+PConsulta.left+Painel.left+ BtnRelatorio.Left, top+PConsulta.Top+Painel.top+BtnRelatorio.Top+BtnRelatorio.Height);
end;

procedure TFCadPadraoPes.Analtico1Click(Sender: TObject);
begin
  inherited;
  Mensagem('OPÇÃO BLOQUEADA', 'Os Relatórios ainda não foram desenvolvidos!', '', 1, 1, False, 'i');
end;

procedure TFCadPadraoPes.DBColorEdit9Exit(Sender: TObject);
begin
  inherited;
     DBColorEdit13.SetFocus;
end;

procedure TFCadPadraoPes.DBColorEdit1Exit(Sender: TObject);
begin
  inherited;
    RGSexo.SetFocus;
    If DMPESSOA.TPessoaF.FieldByName('SEXO').AsString='F' Then
    	RGSexo.ItemIndex:=1
	 Else
    	RGSexo.ItemIndex:=0;           
end;

procedure TFCadPadraoPes.RGORDEMClick(Sender: TObject);
Var
	XSql: String;
begin
  inherited;
	//Controla a ordenação da view de amostragem
   XView.Close;
   XView.SQL.Clear;
   Case RGORDEM.ItemIndex of
   	0: Begin//controla ordenação por código interno
       	If XSQLTABELA='CLIENTE' Then//realiza ordenação por cliente
	           XView.SQL.Add('Select * From VWCLIENTE WHERE  ((vwcliente.ativo<>0) or (vwcliente.ativo is null)) Order By COD_INTERNO');
       	If XSQLTABELA='FORNECEDOR' Then//realiza ordenação por fornecedor
	           XView.SQL.Add('Select * From VWFORNEC Order By COD_INTERNO');
       	If XSQLTABELA='FUNCIONARIO' Then//realiza ordenação por cliente
	           XView.SQL.Add('Select * From VWFUNCIONARIO Order By COD_INTERNO');
       End;
   	1: Begin//controla ordenação por nome
       	If XSQLTABELA='CLIENTE' Then//realiza ordenação por cliente
	           XView.SQL.Add('Select * From VWCLIENTE WHERE  ((vwcliente.ativo<>0) or (vwcliente.ativo is null))  Order By NOME');
       	If XSQLTABELA='FORNECEDOR' Then//realiza ordenação por fornecedor
	           XView.SQL.Add('Select * From VWFORNEC Order By NOME');
       	If XSQLTABELA='FUNCIONARIO' Then//realiza ordenação por cliente
	           XView.SQL.Add('Select * From VWFUNCIONARIO Order By NOME');
       End;
   	2: Begin//controla ordenação por CPF/CNPJ
       	If XSQLTABELA='CLIENTE' Then//realiza ordenação por cliente
	           XView.SQL.Add('Select * From VWCLIENTE WHERE  ((vwcliente.ativo<>0) or (vwcliente.ativo is null)) Order By CPFCNPJ');
       	If XSQLTABELA='FORNECEDOR' Then//realiza ordenação por fornecedor
	           XView.SQL.Add('Select * From VWFORNEC Order By CPFCNPJ');
       	If XSQLTABELA='FUNCIONARIO' Then//realiza ordenação por cliente
	           XView.SQL.Add('Select * From VWFUNCIONARIO Order By CPFCNPJ');
       End;
   	3: Begin//controla ordenação por CPF/CNPJ
       	If XSQLTABELA='CLIENTE' Then//realiza ordenação por cliente
	           XView.SQL.Add('Select * From VWCLIENTE WHERE  ((vwcliente.ativo<>0) or (vwcliente.ativo is null)) Order By COD_CLIENTE');
       	If XSQLTABELA='FORNECEDOR' Then//realiza ordenação por fornecedor
	           XView.SQL.Add('Select * From VWFORNEC Order By COD_FORNEC');
       	If XSQLTABELA='FUNCIONARIO' Then//realiza ordenação por cliente
	           XView.SQL.Add('Select * From VWFUNCIONARIO Order By COD_FUNC');
       End;
   End;
   XView.Open;
end;

procedure TFCadPadraoPes.FrmBusca1BTNMINUSClick(Sender: TObject);
begin
  inherited;
    //EFETUA CONTROLE DE ACESSO
    If ControlAccess('ALTERACIDADEPESSOA', 'M')=False Then
       Exit;  
   //Codigo da tabela local =0
   XCOD_CIDADE:=-1;
   Frmbusca1.EDCodigo.Text:='';
   Frmbusca1.EdDescricao.Text:='';
end;

procedure TFCadPadraoPes.FrmBusca1BTNOPENClick(Sender: TObject);
begin
  inherited;
    //EFETUA CONTROLE DE ACESSO
    If ControlAccess('ALTERACIDADEPESSOA', 'M')=False Then
       Exit;
	 //LIBERA TODAS OS ESTADOS PARA CONSUTA
	 filtraTabela(DMGEOGRAFIA.WCidade, 'VWCIDADE', '', '', ' Order by NOME');
    FMenu.XPreSel := True;
    FMenu.XFieldPesqPreSel := 'COD_CIDADE';
    FMenu.XCodPesqPresSel := Frmbusca1.EDCodigo.text;

    If AbrirForm(TFCadCidade, FCadCidade, 1)='Selected'
    Then Begin
        XCOD_CIDADE:=DMGEOGRAFIA.WCidade.FieldByName('COD_CIDADE').AsInteger;
        Frmbusca1.EdDescricao.Text:=DMGEOGRAFIA.WCidade.FieldByName('UF').AsString+'-'+DMGEOGRAFIA.WCidade.FieldByName('NOME').AsString;
        Frmbusca1.EDCodigo.text:=DMGEOGRAFIA.WCidade.FieldByName('COD_CIDADE').AsString;
    End
    Else Begin
        XCOD_CIDADE:=-1;
        Frmbusca1.EdDescricao.Text:='';
        Frmbusca1.EDCodigo.text:='';
    End;
end;

procedure TFCadPadraoPes.FrmBusca1EDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	If Key = #13
   Then Begin
       //EFETUA CONTROLE DE ACESSO
       If ControlAccess('ALTERACIDADEPESSOA', 'M')=False Then
           Exit;
   	If Frmbusca1.EDCodigo.Text<>''
       Then Begin
	       If SelectRegistro('VWCIDADE', 'COD_CIDADE', Frmbusca1.EDCodigo.Text) = True
	       Then Begin //Slecionou o registro procurado
				XCOD_CIDADE:=DMMACS.TSelect.FieldByName('COD_CIDADE').AsInteger;
           	Frmbusca1.EDCodigo.text:=DMMACS.TSelect.FieldByName('COD_CIDADE').AsString;
           	Frmbusca1.EdDescricao.Text:=DMMACS.TSelect.FieldByName('UF').AsString+'-'+DMMACS.TSelect.FieldByName('NOME').AsString;
          End
          Else Begin
				XCOD_CIDADE:=-1;
           	Frmbusca1.EDCodigo.Text:='';
           	Frmbusca1.EdDescricao.Text:='';
          End;
       End
       Else Begin
     		XCOD_CIDADE:=-1;
         	Frmbusca1.EDCodigo.Text:='';
          	Frmbusca1.EdDescricao.Text:='';
       End;
   End;
end;
procedure TFCadPadraoPes.DBCODINTERNOPJExit(Sender: TObject);
begin
  inherited;
     If SelectRegistro('EMPRESA', 'COD_EMPRESA', FMenu.LCODEMPRESA.Caption)=True
     Then Begin
          If DMMACS.TSelect.FieldByName('ZEROCODPESSOA').AsString='1' Then
             DBINTERNO.Text:=ConcatZero(IntToStr(StrToInt(DBINTERNO.Text)), DMMACS.TSelect.FieldByName('NCASASZEROPES').AsInteger);
     End;
end;

procedure TFCadPadraoPes.Sinttico1Click(Sender: TObject);
begin
  inherited;
    If XSQLREL='VWCLIENTE' then
    	AbrirForm(TFRelpadraopes, FRelPadraopes, 0);
    if FMenu.TIPOREL='RELFUNCGERAL' then
    	AbrirForm(TFRelpadraopes, FRelPadraopes, 0);
end;

procedure TFCadPadraoPes.FrmRegiaoEDCodigoKeyPress(Sender: TObject;
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

procedure TFCadPadraoPes.FrmRegiaoBTNOPENClick(Sender: TObject);
begin
  inherited;
	//LIBERA TODAS OS ESTADOS PARA CONSUTA
	filtraTabela(DMGEOGRAFIA.TRegiao, 'REGIAO', '', '', ' Order by DESCRICAO');
    FMenu.XPreSel := True;
    FMenu.XFieldPesqPreSel := 'COD_REGIAO';
    FMenu.XCodPesqPresSel := FrmRegiao.EDCodigo.text;
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

procedure TFCadPadraoPes.FrmRegiaoBTNMINUSClick(Sender: TObject);
begin
  inherited;
   //Codigo da tabela local =0
   XCOD_REGIAO:=-1;
   FrmRegiao.EDCodigo.Text:='';
   FrmRegiao.EdDescricao.Text:='';
end;

procedure TFCadPadraoPes.FrmNaturalEDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	If Key = #13
   Then Begin
   	If FrmNatural.EDCodigo.Text<>''
       Then Begin
	       If SelectRegistro('VWCIDADE', 'COD_CIDADE', FrmNatural.EDCodigo.Text) = True
	       Then Begin //Slecionou o registro procurado
				XCOD_NATURAL:=DMMACS.TSelect.FieldByName('COD_CIDADE').AsInteger;
           	FrmNatural.EDCodigo.text:=DMMACS.TSelect.FieldByName('COD_CIDADE').AsString;
           	FrmNatural.EdDescricao.Text:=DMMACS.TSelect.FieldByName('UF').AsString+'-'+DMMACS.TSelect.FieldByName('NOME').AsString;
          End
          Else Begin
				XCOD_NATURAL:=-1;
           	FrmNatural.EDCodigo.Text:='';
           	FrmNatural.EdDescricao.Text:='';
          End;
       End
       Else Begin
     		XCOD_NATURAL:=-1;
         	FrmNatural.EDCodigo.Text:='';
          	FrmNatural.EdDescricao.Text:='';
       End;
   End;

end;

procedure TFCadPadraoPes.FrmNaturalBTNOPENClick(Sender: TObject);
begin
  inherited;
	//LIBERA TODAS OS ESTADOS PARA CONSUTA
	filtraTabela(DMGEOGRAFIA.WCidade, 'VWCIDADE', '', '', ' Order by NOME');
    FMenu.XPreSel := True;
    FMenu.XFieldPesqPreSel := 'COD_CIDADE';
    FMenu.XCodPesqPresSel := FrmNatural.EDCodigo.text;

    If AbrirForm(TFCadCidade, FCadCidade, 1)='Selected'
    Then Begin
        XCOD_NATURAL:=DMGEOGRAFIA.WCidade.FieldByName('COD_CIDADE').AsInteger;
        FrmNatural.EdDescricao.Text:=DMGEOGRAFIA.WCidade.FieldByName('UF').AsString+'-'+DMGEOGRAFIA.WCidade.FieldByName('NOME').AsString;
        FrmNatural.EDCodigo.text:=DMGEOGRAFIA.WCidade.FieldByName('COD_CIDADE').AsString;
    End
    Else Begin
        XCOD_NATURAL:=-1;
        FrmNatural.EdDescricao.Text:='';
        FrmNatural.EDCodigo.text:='';
    End;          
end;

procedure TFCadPadraoPes.FrmNaturalBTNMINUSClick(Sender: TObject);
begin
  inherited;
   XCOD_NATURAL:=-1;
   FrmNatural.EDCodigo.Text:='';
   FrmNatural.EdDescricao.Text:='';
end;

procedure TFCadPadraoPes.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
   DMPESSOA.TPessoa.Edit;
   DMPESSOA.TPessoa.FieldByName('TELREL').AsString:=Copy(DMPESSOA.TTelefone.FieldByName('NUMERO').AsString, 1, 40);
	DMPESSOA.TPessoa.Post;
end;

procedure TFCadPadraoPes.DBCLASSExit(Sender: TObject);
begin
  inherited;
     dbbairro.SetFocus;
end;

procedure TFCadPadraoPes.DBCLASSKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
	Key:=#0;
end;

procedure TFCadPadraoPes.EdCodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	Try
		If Key=VK_RETURN
   	Then Begin//pressionado enter, consultar
  			If XTab=True Then
  				FiltraTabela(XTabela, XSQLTABELA, XCampo, '', '(upper(COD_INTERNO) like upper('+#39+EdCodigo.Text+'%'+#39+')) ORDER BY COD_INTERNO')
    		Else
 				FiltraTabela(XView, XSQLVIEW, XCampo, '',   '(upper(COD_INTERNO) like upper('+#39+EdCodigo.Text+'%'+#39+')) ORDER BY COD_INTERNO');
       End;
       If Key=VK_ESCAPE
       Then Begin //pressionado esc, liberar
           LiberaDados;
       End;
   Except
   End;
end;

procedure TFCadPadraoPes.EdCpfKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	Try
		If Key=VK_RETURN
   	Then Begin//pressionado enter, consultar
  			if XTab = True then
           begin
  				FiltraTabela(XTabela, XSQLTABELA, XCampo, '', '(upper(CPFCNPJ) like upper('+#39+EdCpf.Text+'%'+#39+')) OR (COD_INTERNO LIKE '+#39+EdCpf.Text+'%'+#39+') ORDER BY CPFCNPJ');
           end
    		else begin
               FiltraTabela(XView, XSQLVIEW, XCampo, '',   '(upper(CPFCNPJ) like upper('+#39+EdCpf.Text+'%'+#39+')) OR (COD_INTERNO LIKE '+#39+EdCpf.Text+'%'+#39+') ORDER BY CPFCNPJ');
           end;
       End;
       If Key=VK_ESCAPE
       Then Begin //pressionado esc, liberar
           LiberaDados;
       End;
   Except
   End;
end;

procedure TFCadPadraoPes.edDescFoneEnter(Sender: TObject);
begin
  inherited;
    if edDescFone.Text = 'Descrição'
    then begin
        edDescFone.Text := '';
        edDescFone.Font.Color := clWindowText;
    end;
end;

procedure TFCadPadraoPes.edDescFoneExit(Sender: TObject);
begin
  inherited;
    if Trim(edDescFone.Text) = ''
    then begin
        edDescFone.Text := 'Descrição';
        edDescFone.Font.Color := clGrayText;
    end;
end;

procedure TFCadPadraoPes.edContatoEnter(Sender: TObject);
begin
  inherited;
  if edContato.Text = 'Contato'
    then begin
        edContato.Text := '';
        edContato.Font.Color := clWindowText;
    end;
end;

procedure TFCadPadraoPes.edContatoExit(Sender: TObject);
begin
  inherited;
  if Trim(edContato.Text) = ''
    then begin
        edContato.Text := 'Contato';
        edContato.Font.Color := clGrayText;
    end;
end;

procedure TFCadPadraoPes.edNumFoneEnter(Sender: TObject);
begin
  inherited;
  if edNumFone.Text = 'Número'
    then begin
        edNumFone.Text := '';
        edNumFone.Font.Color := clWindowText;
    end;
end;

procedure TFCadPadraoPes.edNumFoneExit(Sender: TObject);
begin
  inherited;
  if Trim(edNumFone.Text) = ''
    then begin
        edNumFone.Text := 'Número';
        edNumFone.Font.Color := clGrayText;
    end;
end;
// - 10/02/2009: atualiza lista de telefones a partir do codigo_pessoa
procedure TFCadPadraoPes.AtualizaTelefone;
begin
    FiltraTabela(DMPESSOA.TTelefone, 'telefone', 'cod_pessoa', IntToStr(XCOD_PESSOA), '');
end;
procedure TFCadPadraoPes.BtnAddFoneClick(Sender: TObject);
Var
	XCodTelefone, xFlag:Integer;
begin
  inherited;
    if edNumFone.Text = 'Número'
    then begin
        edNumFone.SetFocus;
        Exit;
    end;
    try
    	//busca o codigo do telefone apropriado
		MDO.Transac.CommitRetaining;
       MDO.QConsulta.Close;
       MDO.QConsulta.SQL.Clear;
       MDO.QConsulta.SQL.Add('select * from codigo');
       MDO.QConsulta.Open;
       XCodTelefone:=MDO.QConsulta.FieldByName('COD_TELEFONE').AsInteger;

       xFlag:=-1;
       While xFlag=-1 do
       Begin
           //Verifica se já existe telefone com o mesmo codigo
           MDO.QConsulta.Close;
           MDO.QConsulta.SQL.Clear;
           MDO.QConsulta.SQL.Add(' Select * from telefone where telefone.cod_telefone=:Codigo ');
           MDO.QConsulta.ParamByName('Codigo').AsInteger:=XCodTelefone;
           MDO.QConsulta.Open;
           If not MDO.QConsulta.IsEmpty
           Then Begin
           	xFlag:=-1;
				XCodTelefone:=XCodTelefone+1;
           End
           Else Begin
               xFlag:=0;
           End;
       End;

       MDO.Query.Close;
       MDO.Query.SQL.Clear;
       MDO.Query.SQL.Add('insert into TELEFONE (COD_TELEFONE, COD_PESSOA, DESCRICAO, CONTATO, NUMERO)');
       MDO.Query.SQL.Add('values (:COD_TELEFONE, :COD_PESSOA, :DESCRICAO, :CONTATO, :NUMERO)');
       MDO.Query.ParamByName('COD_TELEFONE').AsInteger := XCodTelefone;
       MDO.Query.ParamByName('COD_PESSOA').AsInteger := XCOD_PESSOA;
    	if (edDescFone.Text <> '') and (edDescFone.Text <> 'Descrição') then
       	MDO.Query.ParamByName('DESCRICAO').AsString := edDescFone.Text;
    	if (edContato.Text <> '') and (edContato.Text <> 'Contato') then
       	MDO.Query.ParamByName('CONTATO').AsString := edContato.Text;
    	if (edNumFone.Text <> '') and (edNumFone.Text <> 'Número') then
       	MDO.Query.ParamByName('NUMERO').AsString := edNumFone.Text;
       MDO.Query.ExecSQL;
       MDO.Transac.CommitRetaining;       
    Except
       MDO.Transac.RollbackRetaining;
       MessageDlg('Não foi possíve inserir o telefone.'+#13+#10+'Erro: 1524', mtWarning, [mbOK], 0);
    End;
    	// - 10/02/2009: incrementa um na tabela telefone

    Try
    	DMMACS.TCodigo.Edit;
    	DMMACS.TCodigo.FieldByName('COD_TELEFONE').AsInteger := XCodTelefone+1;
   	DMMACS.TCodigo.Post;

    	DMMACS.IBTCodigo.CommitRetaining;
    	DMMACS.Transaction.CommitRetaining;
    	DMPESSOA.TransacPessoa.CommitRetaining;
       AtualizaTelefone;
       LimpaCampoTelefone;
       edDescFone.SetFocus;
    Except
        DMMACS.Transaction.RollbackRetaining;
        DMMACS.IBTCodigo.RollbackRetaining;
        DMPESSOA.TransacPessoa.RollbackRetaining;
        Mensagem('A T E N Ç Ã O', ' Falha na tentativa de gravar número de telefone!', '', 1, 1, False, 'a');
        edDescFone.SetFocus;
    end;
end;

// - 10/02/2009: volta estado original os campos telefone
procedure TFCadPadraoPes.LimpaCampoTelefone;
begin
    edDescFone.Text := 'Descrição';
    edDescFone.Font.Color := clGrayText;
    edContato.Text := 'Contato';
    edContato.Font.Color := clGrayText;
    edNumFone.Text := 'Número';
    edNumFone.Font.Color := clGrayText;
end;
procedure TFCadPadraoPes.BtnRemFoneClick(Sender: TObject);
var
    codtmp:integer;
begin
  inherited;
   try
    codtmp := DMPESSOA.TTelefone.FieldByName('COD_TELEFONE').AsInteger;
    edDescFone.SetFocus;
    edDescFone.Text := DMPESSOA.TTelefone.FieldByName('DESCRICAO').AsString;
    edContato.SetFocus;
    edContato.Text := DMPESSOA.TTelefone.FieldByName('CONTATO').AsString;
    edNumFone.SetFocus;
    edNumFone.Text := DMPESSOA.TTelefone.FieldByName('NUMERO').AsString;
    edDescFone.SetFocus;

    DMPESSOA.TTelefone.Close;
    DMPESSOA.TTelefone.SQL.Clear;
    DMPESSOA.TTelefone.SQL.Add('delete from telefone where telefone.cod_telefone =:COD_TELEFONE and telefone.cod_pessoa=:COD_PESSOA');
    DMPESSOA.TTelefone.ParamByName('COD_TELEFONE').AsInteger := codtmp;
    DMPESSOA.TTelefone.ParamByName('COD_PESSOA').AsInteger := XCOD_PESSOA;
    DMPESSOA.TTelefone.ExecSQL;

    DMPESSOA.TransacPessoa.CommitRetaining;

   Except
        DMPESSOA.TransacPessoa.RollbackRetaining;
   end;
   AtualizaTelefone;
   edDescFone.SetFocus;
end;

procedure TFCadPadraoPes.lbVerMapaClick(Sender: TObject);
    var
    link:String;
begin
  inherited;
    link := 'http://maps.google.com/?q=';
    if Trim(DBColorEdit4.Text)<> '' then
        link := link+DBColorEdit4.Text;

    if Trim(FrmBusca1.EDCodigo.Text)<> ''
    then begin
        FiltraTabela(DMGEOGRAFIA.WCidade, 'VWCIDADE', 'COD_CIDADE', FrmBusca1.EDCodigo.Text, '');
        if Trim(DMGEOGRAFIA.WCidade.FieldByName('NOME').AsString)<> '' then
            link := link+', '+DMGEOGRAFIA.WCidade.FieldByName('NOME').AsString+' - '+DMGEOGRAFIA.WCidade.FieldByName('UF').AsString;
    end;
    ShellExecute(Handle, 'open', PAnsiChar(link), '', '', 1);
end;

procedure TFCadPadraoPes.edDescEmailEnter(Sender: TObject);
begin
  inherited;
    if edDescEmail.Text = 'Descrição'
    then begin
        edDescEmail.Text := '';
        edDescEmail.Font.Color := clWindowText;
    end;
end;

procedure TFCadPadraoPes.edDescEmailExit(Sender: TObject);
begin
  inherited;
    if Trim(edDescEmail.Text) = ''
    then begin
        edDescEmail.Text := 'Descrição';
        edDescEmail.Font.Color := clGrayText;
    end;
end;

procedure TFCadPadraoPes.EdEmailEnter(Sender: TObject);
begin
  inherited;
  if EdEmail.Text = 'E-Mail'
    then begin
        EdEmail.Text := '';
        EdEmail.Font.Color := clWindowText;
    end;
end;

procedure TFCadPadraoPes.EdEmailExit(Sender: TObject);
begin
  inherited;
  if Trim(EdEmail.Text) = ''
    then begin
        EdEmail.Text := 'E-Mail';
        EdEmail.Font.Color := clGrayText;
    end;
end;
// - 10/02/2009: atualiza lista de email a partir do codigo_pessoa
procedure TFCadPadraoPes.AtualizaEmail;
begin
    FiltraTabela(DMPESSOA.TEmail, 'email', 'cod_pessoa', IntToStr(XCOD_PESSOA), '');
end;
procedure TFCadPadraoPes.LimpaCampoEmail;
begin
    edDescEmail.Text := 'Descrição';
    edDescEmail.Font.Color := clGrayText;
    EdEmail.Text := 'E-Mail';
    EdEmail.Font.Color := clGrayText;
end;
procedure TFCadPadraoPes.btnAddEmailClick(Sender: TObject);
begin
  inherited;
     // - 10/02/2009: validar e-mail
     if EdEmail.Text = 'E-Mail'
    then begin
        EdEmail.SetFocus;
        Exit;
    end;

    if not VerificaEmail(EdEmail.Text)
    then begin
        If Mensagem('A T E N Ç Ã O ! ! !', 'O e-mail: '+EdEmail.Text+', não é um endereço válido para Internet.'+ #13#10 +
              'Deseja adicionar o endereço mesmo assim ?', '', 2, 3, False, 'c')=3
       Then Begin
            EdEmail.SetFocus;
            EdEmail.SelectAll;
            Exit;
       end;
    end;

   try
    DMMACS.TCodigo.Close;
    DMMACS.TCodigo.SQL.Clear;
    DMMACS.TCodigo.SQL.Add('select * from codigo');
    DMMACS.TCodigo.Open;

    DMPESSOA.TEmail.Close;
    DMPESSOA.TEmail.SQL.Clear;
    DMPESSOA.TEmail.SQL.Add('insert into email (COD_EMAIL, COD_PESSOA, DESCRICAO, EMAIL)');
    DMPESSOA.TEmail.SQL.Add('values (:COD_EMAIL, :COD_PESSOA, :DESCRICAO, :EMAIL)');
    DMPESSOA.TEmail.ParamByName('COD_EMAIL').AsInteger := DMMACS.TCodigo.FieldByName('COD_EMAIL').AsInteger;
    DMPESSOA.TEmail.ParamByName('COD_PESSOA').AsInteger := XCOD_PESSOA;
    if (edDescEmail.Text <> '') and (edDescEmail.Text <> 'Descrição') then
        DMPESSOA.TEmail.ParamByName('DESCRICAO').AsString := edDescEmail.Text;
    if (EdEmail.Text <> '') and (EdEmail.Text <> 'E-Mail') then
        DMPESSOA.TEmail.ParamByName('EMAIL').AsString := EdEmail.Text;           
    DMPESSOA.TEmail.ExecSQL;

    // - 10/02/2009: incrementa um na tabela telefone
    DMMACS.TCodigo.Edit;
    DMMACS.TCodigo.FieldByName('COD_EMAIL').AsInteger := DMMACS.TCodigo.FieldByName('COD_EMAIL').AsInteger+1;
    DMMACS.TCodigo.Post;

    DMMACS.IBTCodigo.CommitRetaining;
    DMMACS.Transaction.CommitRetaining;
    DMPESSOA.TransacPessoa.CommitRetaining;

    AtualizaEmail;
    LimpaCampoEmail;
    edDescEmail.SetFocus;
   Except
        DMMACS.Transaction.RollbackRetaining;
        DMMACS.IBTCodigo.RollbackRetaining;
        DMPESSOA.TransacPessoa.RollbackRetaining;
        Mensagem('A T E N Ç Ã O', ' Falha na tentativa de gravar E-Mail!', '', 1, 1, False, 'a');
        edDescEmail.SetFocus;
   end;
end;

function TFCadPadraoPes.VerificaEmail(email: string): boolean;
const
  atom_chars = [#33..#255] - ['(', ')', '<', '>', '@', ',', ';', ':',
                              '\', '/', '"', '.', '[', ']', #127];
  quoted_string_chars = [#0..#255] - ['"', #13, '\'];
  letters = ['A'..'Z', 'a'..'z'];
  letters_digits = ['0'..'9', 'A'..'Z', 'a'..'z'];
  subdomain_chars = ['-', '0'..'9', 'A'..'Z', 'a'..'z'];
type
  States = (STATE_BEGIN, STATE_ATOM, STATE_QTEXT, STATE_QCHAR,
    STATE_QUOTE, STATE_LOCAL_PERIOD, STATE_EXPECTING_SUBDOMAIN,
    STATE_SUBDOMAIN, STATE_HYPHEN);
var
  State: States;
  i, n, subdomains: integer;
  c: char;
begin
  State := STATE_BEGIN;
  n := Length(email);
  i := 1;
  subdomains := 1;
  while (i <= n) do begin
    c := email[i];
    case State of
    STATE_BEGIN:
      if c in atom_chars then
        State := STATE_ATOM
      else if c = '"' then
        State := STATE_QTEXT
      else
        break;
    STATE_ATOM:
      if c = '@' then
        State := STATE_EXPECTING_SUBDOMAIN
      else if c = '.' then
        State := STATE_LOCAL_PERIOD
      else if not (c in atom_chars) then
        break;
    STATE_QTEXT:
      if c = '\' then
        State := STATE_QCHAR
      else if c = '"' then
        State := STATE_QUOTE
      else if not (c in quoted_string_chars) then
        break;
    STATE_QCHAR:
      State := STATE_QTEXT;
    STATE_QUOTE:
      if c = '@' then
        State := STATE_EXPECTING_SUBDOMAIN
      else if c = '.' then
        State := STATE_LOCAL_PERIOD
      else
        break;
    STATE_LOCAL_PERIOD:
      if c in atom_chars then
        State := STATE_ATOM
      else if c = '"' then
        State := STATE_QTEXT
      else
        break;
    STATE_EXPECTING_SUBDOMAIN:
      if c in letters then
        State := STATE_SUBDOMAIN
      else
        break;
    STATE_SUBDOMAIN:
      if c = '.' then begin
        inc(subdomains);
        State := STATE_EXPECTING_SUBDOMAIN
      end else if c = '-' then
        State := STATE_HYPHEN
      else if not (c in letters_digits) then
        break;
    STATE_HYPHEN:
      if c in letters_digits then
        State := STATE_SUBDOMAIN
      else if c <> '-' then
        break;
    end;
    inc(i);
  end;
  if i <= n then
    Result := False
  else
    Result := (State = STATE_SUBDOMAIN) and (subdomains >= 2);
end;


procedure TFCadPadraoPes.btnRemEmailClick(Sender: TObject);
VAR
    codtmp:integer;
begin
  inherited;
    try
    codtmp := DMPESSOA.TEmail.FieldByName('COD_EMAIL').AsInteger;
    edDescEmail.SetFocus;
    edDescEmail.Text := DMPESSOA.TEmail.FieldByName('DESCRICAO').AsString;
    EdEmail.SetFocus;
    EdEmail.Text:= DMPESSOA.TEmail.FieldByName('email').AsString;

    DMPESSOA.TEmail.Close;
    DMPESSOA.TEmail.SQL.Clear;
    DMPESSOA.TEmail.SQL.Add('delete from email where email.cod_email =:COD_EMAIL and email.cod_pessoa=:COD_PESSOA');
    DMPESSOA.TEmail.ParamByName('COD_EMAIL').AsInteger := codtmp;
    DMPESSOA.TEmail.ParamByName('COD_PESSOA').AsInteger := XCOD_PESSOA;
    DMPESSOA.TEmail.ExecSQL;

    DMPESSOA.TransacPessoa.CommitRetaining;

   Except
        DMPESSOA.TransacPessoa.RollbackRetaining;
   end;
   AtualizaEmail;
   edDescEmail.SetFocus;
end;

procedure TFCadPadraoPes.DBGridCadastroPadraoDblClick(Sender: TObject);
begin
  inherited;
    if BtnSelecionar.Visible = True then
       BtnSelecionarClick(Sender);
end;

procedure TFCadPadraoPes.DBGridCadastroPadraoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
    if key = #13 then
       if BtnSelecionar.Visible = True then
           BtnSelecionarClick(Sender);
end;

procedure TFCadPadraoPes.EdNomeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;

    // - 16/02/2009: controle de pesquisa add % na edit
    If (shift=[ssCtrl]) and (key = vk_space)
    then begin
        if (Copy(EdNome.Text, 1,1) = '%') and (Copy(EdNome.Text, Length(EdNome.Text),Length(EdNome.Text)) = '%')
        then begin
             EdNome.Text := Copy(edNome.Text, 2,Length(EdNome.Text)-2);
             EdNome.SelStart := Length(EdNome.Text);
        end
        else if (Copy(EdNome.Text, 0,1) = '%')
        then begin
            EdNome.Text := edNome.Text +'%';
            EdNome.SelStart := Length(EdNome.Text)-1;
        end
        else if (Copy(EdNome.Text, Length(EdNome.Text),Length(EdNome.Text)) = '%')
        then begin
            EdNome.Text := '%'+Trim(EdNome.Text);
            EdNome.SelStart := Length(EdNome.Text)-1;
        end
        else begin
            EdNome.Text := '%'+Trim(EdNome.Text)+'%';
            EdNome.SelStart := Length(EdNome.Text)-1;
        end;
        Xcontrole:=True;
        key := 0;
    end;
end;

procedure TFCadPadraoPes.EdNomeKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
   if XControle
   then begin
       xcontrole := False;
       key := #0;
   end;
end;


procedure TFCadPadraoPes.DBColorEdit13KeyPress(Sender: TObject;
  var Key: Char);
var
   link: String;

begin
  inherited;
  If key = #13
  Then Begin
       If Length(DBColorEdit13.Text) <> 9
       Then Begin
            Mensagem('ATENÇÃO', 'CEP inválido.', '', 1, 1, False, 'A');
            Exit;
       End;
       PComunica.Visible := True;
       PComunica.BringToFront;
       PComunica.Repaint;

       BuscaCEP(DBColorEdit13.Text);


   end;
      //Trecho comentado por Paulo 20/10/2010
      {
       PComunica.Visible := True;
       PComunica.BringToFront;
       PComunica.Repaint;
       link := 'http://www.buscarcep.com.br/?cep='+StringReplace(DBColorEdit13.Text,'-','',[rfReplaceAll])+'&formato=xml';
      If FMenu.resourceExists(link)
      Then Begin
           Try
             XMLDocument1.Active := False;
             XMLDocument1.LoadFromFile(link);
             XMLDocument1.Active := True;
             If XMLDocument1.ChildNodes['webservicecep'].ChildNodes['resultado'].Text = '1'
             Then Begin
                 If Mensagem('A T E N Ç Ã O', 'CEP Encontrado!' + #13 + XMLDocument1.ChildNodes['webservicecep'].ChildNodes['tipo_logradouro'].Text + ' ' + XMLDocument1.ChildNodes['webservicecep'].ChildNodes['logradouro'].Text + ' - ' + XMLDocument1.ChildNodes['webservicecep'].ChildNodes['bairro'].Text + #13 + XMLDocument1.ChildNodes['webservicecep'].ChildNodes['cidade'].Text + ' - ' + XMLDocument1.ChildNodes['webservicecep'].ChildNodes['uf'].Text + '.' + #13 +'Atualizar informações?', '', 2, 3, False, 'c')= 2
   		      Then Begin
                      //dbbairro.Text := XMLDocument1.ChildNodes['webservicecep'].ChildNodes['bairro'].Text;
                      //DBColorEdit4.Text := XMLDocument1.ChildNodes['webservicecep'].ChildNodes['tipo_logradouro'].Text + ' ' + XMLDocument1.ChildNodes['webservicecep'].ChildNodes['logradouro'].Text;

                      DMPESSOA.TPessoa.Edit;
                      DMPESSOA.TPessoa.FieldByName('ENDERECO').AsString := UpperCase(XMLDocument1.ChildNodes['webservicecep'].ChildNodes['tipo_logradouro'].Text + ' ' + XMLDocument1.ChildNodes['webservicecep'].ChildNodes['logradouro'].Text);
                      DMPESSOA.TPessoa.FieldByName('BAIRRO').AsString := UpperCase(XMLDocument1.ChildNodes['webservicecep'].ChildNodes['bairro'].Text);
                      DMPESSOA.TPessoa.Post;

                      FiltraTabela(DMGEOGRAFIA.WCidade, 'VWCIDADE', 'COD_CIDADE', '' , ' upper(vwcidade.uf) = upper(' + #39 + XMLDocument1.ChildNodes['webservicecep'].ChildNodes['uf'].Text + #39 + ') and UPPER(vwcidade.nome) like Upper(' + #39 + '%' + XMLDocument1.ChildNodes['webservicecep'].ChildNodes['cidade'].Text + #39 + ')');

                      If Length(Trim(DMGEOGRAFIA.WCidade.FieldByName('COD_CIDADE').AsString)) > 0
                      Then Begin
                        If SelectRegistro('VWCIDADE', 'COD_CIDADE', DMGEOGRAFIA.WCidade.FieldByName('COD_CIDADE').AsString) = True
                        Then Begin //Slecionou o registro procurado
                             XCOD_CIDADE:=DMMACS.TSelect.FieldByName('COD_CIDADE').AsInteger;
                             Frmbusca1.EDCodigo.text:=DMMACS.TSelect.FieldByName('COD_CIDADE').AsString;
                             Frmbusca1.EdDescricao.Text:=DMMACS.TSelect.FieldByName('UF').AsString+'-'+DMMACS.TSelect.FieldByName('NOME').AsString;
                        End;
                      End;

                 End;
                 //Mensagem('ATENÇÃO', 'OK.' + XMLDocument1.ChildNodes['webservicecep'].ChildNodes['logradouro'].Text, '', 1, 1, False, 'A');
                 //edtCepResp.Text := XMLDocument1.ChildNodes['webservicecep'].ChildNodes['cep'].Text;
                 //edtUF.Text      := XMLDocument1.ChildNodes['webservicecep'].ChildNodes['uf'].Text;
                 //edtCidade.Text  := XMLDocument1.ChildNodes['webservicecep'].ChildNodes['cidade'].Text;
                 //edtBairro.Text  := XMLDocument1.ChildNodes['webservicecep'].ChildNodes['bairro'].Text;
                 //edtTipoLog.Text := XMLDocument1.ChildNodes['webservicecep'].ChildNodes['tipo_logradouro'].Text;
                 //edtLogradouro.Text := XMLDocument1.ChildNodes['webservicecep'].ChildNodes['logradouro'].Text;
                 //edtResultado.Text  := XMLDocument1.ChildNodes['webservicecep'].ChildNodes['resultado'].Text;
                 //edtResultadoTXT.Text := XMLDocument1.ChildNodes['webservicecep'].ChildNodes['resultado_txt'].Text;
             End
             Else Begin
                  Mensagem('ATENÇÃO', 'Falha na tentativa de busca do CEP.' + #13 + 'Resultado: ' + XMLDocument1.ChildNodes['webservicecep'].ChildNodes['resultado'].Text + ' - ' + XMLDocument1.ChildNodes['webservicecep'].ChildNodes['resultado_txt'].Text, '', 1, 1, False, 'A');
             End;
          Except
                Mensagem('ATENÇÃO', 'Falha na tentativa de busca do CEP.', '', 1, 1, False, 'A');
              //falha na tentativa de verificação
          End;
      End
      Else Begin
           Mensagem('ATENÇÃO', 'Falha na busca. Verifique a conexão.', '', 1, 1, False, 'A');
      End;

      PComunica.Visible := False;
      PComunica.SendToBack;

  End;
  }
end;

procedure TFCadPadraoPes.DBEndNumeroKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9', #8, #13,#27])
   then
       Key := #0;
end;


procedure TFCadPadraoPes.DBGridCadastroPadraoDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
    { If odd(XView.Recno) Then
     Begin
           DBGridCadastroPadrao.Canvas.Brush.color := clCream; // ( por exemplo)
           //DBGridCadastroPadrao.Canvas.FillRect(rect);
       end;
  //end;     }
  // - 28/04/2009: grid zebrada
end;

procedure TFCadPadraoPes.DBGridCadastroPadraoTitleClick(Column: TColumn);
begin
  inherited;
  If Column.FieldName <> '' Then
     XLiberaDados:=' Order by ' + Column.FieldName;

  LiberaDados;
end;

procedure TFCadPadraoPes.AlteraFisicaJuridica1Click(Sender: TObject);
begin
  inherited;
   AlternarFisicaJuridica;
end;

//Paulo 20/10/2010 - 157: Buscando o cep na net
procedure TFCadPadraoPes.BuscaCEP(XCEP:String);
var
	idHTTP: TIdHTTP;
   XListEnd: TStringList;
   XBairro, xCidade: String;
begin
     Try
       	idHTTP:= TIdHTTP.Create(nil);
    		XListEnd:=TStringList.Create;
    		XListEnd.Text:=StringReplace(idHTTP.URL.URLDecode(idHTTP.Get('http://republicavirtual.com.br/web_cep.php?cep='+XCEP+'&formato=query_string')),'&',#13#10,[rfReplaceAll]);
       	If XListEnd.Values['LOGRADOURO']<>''
   		Then Begin
               DBColorEdit4.Text :=  SubtituiCaracter(UpperCase(XListEnd.Values['TIPO_LOGRADOURO']+' '+XListEnd.Values['LOGRADOURO']), '+', ' ');
               XBairro:= SubtituiCaracter(UpperCase(XListEnd.Values['BAIRRO']), '+', ' ');;
           	DMPESSOA.TPessoa.Edit;
           	DMPESSOA.TPessoa.FieldByName('ENDERECO').AsString := DBColorEdit4.Text;
           	DMPESSOA.TPessoa.FieldByName('BAIRRO').AsString := XBairro;
           	DMPESSOA.TPessoa.Post;

           	FiltraTabela(DMGEOGRAFIA.WCidade, 'VWCIDADE', 'COD_CIDADE', '' , ' upper(vwcidade.uf) = upper(' + #39 + XListEnd.Values['UF'] + #39 + ') and UPPER(vwcidade.nome) like Upper(' + #39 + '%' + XListEnd.Values['CIDADE'] + #39 + ')');

           	If Length(Trim(DMGEOGRAFIA.WCidade.FieldByName('COD_CIDADE').AsString)) > 0
           	Then Begin
               	If SelectRegistro('VWCIDADE', 'COD_CIDADE', DMGEOGRAFIA.WCidade.FieldByName('COD_CIDADE').AsString) = True
               	Then Begin //Slecionou o registro procurado
                   	 XCOD_CIDADE:=DMMACS.TSelect.FieldByName('COD_CIDADE').AsInteger;
                    	Frmbusca1.EDCodigo.text:=DMMACS.TSelect.FieldByName('COD_CIDADE').AsString;
                    	Frmbusca1.EdDescricao.Text:=DMMACS.TSelect.FieldByName('UF').AsString+'-'+DMMACS.TSelect.FieldByName('NOME').AsString;
                       DBEndNumero.SetFocus;
                	End;
           	End;
       	end
       	Else Begin
                Mensagem('ATENÇÃO', 'Falha na tentativa de busca do CEP.' + #13 + 'Resultado: ' + XMLDocument1.ChildNodes['webservicecep'].ChildNodes['resultado'].Text + ' - ' + XMLDocument1.ChildNodes['webservicecep'].ChildNodes['resultado_txt'].Text, '', 1, 1, False, 'A');
           End;
       Except
          	Mensagem('ATENÇÃO', 'Falha na tentativa de busca do CEP.', '', 1, 1, False, 'A');

       End;
      PComunica.Visible := False;
      PComunica.SendToBack;
end;
procedure TFCadPadraoPes.Label68Click(Sender: TObject);
begin
  inherited;
  	 //Paulo 20/10/2010 - 157: Buscando o cep na net
    BuscaCEP(DBColorEdit13.Text);
end;
//Função utilizada para selecionar cidade e uf de acordo com cidade selecionada no formulário
Function TFCadPadraoPes.SelecionaCidadeUf(xCodCidade: Integer):Boolean;
Begin
   Try
       DMGEOGRAFIA.WCidade.Close;
       DMGEOGRAFIA.WCidade.SQL.Clear;
       DMGEOGRAFIA.WCidade.SQL.Add(' select * from vwcidade where vwcidade.cod_cidade=:Codigo' );
       DMGEOGRAFIA.WCidade.ParamByName('codigo').AsInteger:=XCOD_CIDADE;
       DMGEOGRAFIA.WCidade.Open;
       If not DMGEOGRAFIA.WCidade.IsEmpty
       Then Begin
           xCidade:=TiraAcentos(DMGEOGRAFIA.WCidade.FieldByName('NOME').AsString);
           xUf:=DMGEOGRAFIA.WCidade.FieldByName('UF').AsString;
           cbCepCidade.Text:=xCidade;
           cbCepEstado.Text:=xUf;
           Result:=True;
       End
       Else Begin
           Result:=False;
       End;
   Except
       Result:=False;
   End;
End;

//Função utilizada para popular a grid de ruas de acordo com a cidade e uf passada
Function TFCadPadraoPes.CopiaEnderecoCepRua:Boolean;
Var
   xPosicaodeCopia: Integer;
Begin
   Try
       If not DMPESSOA.TRua.IsEmpty
       Then Begin
           DBColorEdit13.Text:=Copy(DMPESSOA.TRua.FieldByName('CEP').AsString, 0,5)+'-'+Copy(DMPESSOA.TRua.FieldByName('CEP').AsString, 6,9);
           //XString := Copy(DBServidor.Text,1,pos(':',DBServidor.Text));
           xPosicaodeCopia  :=pos('-',DMPESSOA.TRua.FieldByName('NOME_RUA').AsString)-2;
           If (xPosicaodeCopia<=0) Then
               DBColorEdit4.Text:=UpperCase(DMPESSOA.TRua.FieldByName('NOME_RUA').AsString)
           Else
               DBColorEdit4.Text:=UpperCase(Copy(DMPESSOA.TRua.FieldByName('NOME_RUA').AsString, 0, pos('-',DMPESSOA.TRua.FieldByName('NOME_RUA').AsString)-2));

           dbbairro.Text:=UpperCase(DMPESSOA.TRua.FieldByName('NOME_BAIRRO').AsString);
           //lOCALIZA A CIDADE CORRETA
           DMGEOGRAFIA.WCidade.Close;
           DMGEOGRAFIA.WCidade.SQL.Clear;
           DMGEOGRAFIA.WCidade.SQL.Add(' select * from vwcidade where (upper(vwcidade.NOME)=:NOME) AND (upper(vwcidade.UF)=:UF) ' );
           DMGEOGRAFIA.WCidade.ParamByName('NOME').AsString:=UpperCase(TiraAcentos(DMPESSOA.TRua.FieldByName('NOME_CIDADE').AsString));
           DMGEOGRAFIA.WCidade.ParamByName('UF').AsString:=UpperCase(DMPESSOA.TRua.FieldByName('SIGLA_UF').AsString);
           DMGEOGRAFIA.WCidade.Open;
           If not DMGEOGRAFIA.WCidade.IsEmpty
           Then Begin
              XCOD_CIDADE:=DMGEOGRAFIA.WCidade.FieldByName('COD_CIDADE').AsInteger;
              Frmbusca1.EdDescricao.Text:=UpperCase(DMGEOGRAFIA.WCidade.FieldByName('UF').AsString)+'-'+UpperCase(DMGEOGRAFIA.WCidade.FieldByName('NOME').AsString);
              Frmbusca1.EDCodigo.text:=DMGEOGRAFIA.WCidade.FieldByName('COD_CIDADE').AsString;
           end
           Else Begin
              XCOD_CIDADE:=-1;
              Frmbusca1.EdDescricao.Text:='';
              Frmbusca1.EDCodigo.text:='';
           End;
       End;
       PEndereco.Visible:=false;
   Except
       PEndereco.Visible:=false;   
   End;
End;
//Função utilizada para popular a grid de ruas de acordo com a cidade e uf passada
Function TFCadPadraoPes.IniciaEnderecos(xCidade: String; xUf: String):Boolean;
Begin
   Try
       If (xCidade<>'') and (xUf<>'')
       Then Begin
           DMPESSOA.TRua.Close;
           DMPESSOA.TRua.SQL.Clear;
           DMPESSOA.TRua.SQL.Add(' Select * from cep_rua ');
           DMPESSOA.TRua.SQL.Add(' where upper(cep_rua.nome_cidade)=upper(:Cidade) and (upper(cep_rua.sigla_uf)=upper(:UF))');
           DMPESSOA.TRua.ParamByName('Cidade').AsString:=xCidade;
           DMPESSOA.TRua.ParamByName('UF').AsString:=xUf;
           DMPESSOA.TRua.Open;
           if DMPESSOA.TRua.IsEmpty Then
               Result:=False
           Else
               Result:=true;
       End
       Else Begin
           Result:=False;
       End;
   Except
       Result:=False;
   End;
End;
procedure TFCadPadraoPes.DBColorEdit4KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
   If DBColorEdit4.Text<>''
   Then Begin
       If (PEndereco.Visible = False)
       Then Begin
           If XCOD_CIDADE<0 Then
               exit;
           SelecionaCidadeUf(XCOD_CIDADE);
           If (IniciaEnderecos(xCidade,xUf)=True)
           Then Begin
               PEndereco.Top:=DBColorEdit4.Top+20;
               PEndereco.Left:=12;
               PEndereco.Visible:=True;
               PEndereco.BringToFront;
           End
           Else Begin
               PEndereco.Visible:=False;
           End;
       End
       Else Begin
           DMPESSOA.TRua.Locate('NOME_RUA', DBColorEdit4.Text, [loCaseInsensitive, loPartialKey]);
       End;
   End
   Else Begin
       PEndereco.Visible:=False;
   End;
end;

procedure TFCadPadraoPes.dbgEnderecoDblClick(Sender: TObject);
begin
  inherited;
   CopiaEnderecoCepRua;
   DBEndNumero.SetFocus;
end;

procedure TFCadPadraoPes.BitBtn11Click(Sender: TObject);
begin
  inherited;
           DMPESSOA.TRua.Close;
           DMPESSOA.TRua.SQL.Clear;
           DMPESSOA.TRua.SQL.Add(' Select * from cep_rua ');
           DMPESSOA.TRua.SQL.Add('  where (upper(cep_rua.nome_cidade)=upper(:Cidade) and (upper(cep_rua.sigla_uf)=upper(:UF))) and ((upper(cep_rua.NOME_RUA) like '+#39+'%'+UpperCase(edPesquisaEndereco.Text)+'%'+#39+')) ');
           DMPESSOA.TRua.ParamByName('Cidade').AsString:=xCidade;
           DMPESSOA.TRua.ParamByName('UF').AsString:=xUf;
           DMPESSOA.TRua.Open;
end;

procedure TFCadPadraoPes.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   If (Key=vk_escape) Then
       btnfechaendereco.Click();
   If (Key=VK_F2) and (PCadastro.Visible=true)
   Then Begin
       If (DMPESSOA.DBRUA.Connected=False)
       Then Begin
           MessageDlg('O Arquivo de Ruas e Ceps não foi encontrado!'+#13+#10+'Arquivo: CEPRUA.GDB', mtWarning, [mbOK], 0);
           Exit;
       End;
       If (PEndereco.Visible = False)
       Then Begin
           dbgEndereco.DataSource:=DMPESSOA.DRua;       
           If XCOD_CIDADE<0
           Then Begin
               MessageDlg('Informe uma cidade antes de iniciar pesquisa de endereços!', mtWarning, [mbOK], 0);
               FrmBusca1.EDCodigo.SetFocus;
               exit;
           End;
           SelecionaCidadeUf(XCOD_CIDADE);
           If (IniciaEnderecos(xCidade,xUf)=True)
           Then Begin
               PEndereco.Top:=DBColorEdit4.Top+20;
               PEndereco.Left:=12;
               PEndereco.Visible:=True;
               PEndereco.BringToFront;
               edPesquisaEndereco.SetFocus;
           End
           Else Begin
               PEndereco.Visible:=False;
           End;
       End;
   End
   Else Begin
       PEndereco.Visible:=False;
   End;

end;

procedure TFCadPadraoPes.edPesquisaEnderecoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
   If (Key<>vk_down) and (Key<>vk_up)
   Then Begin
           DMPESSOA.TRua.Locate('NOME_RUA', edPesquisaEndereco.Text, [loCaseInsensitive, loPartialKey]);
   End
   Else Begin
       If Key=vk_down Then
           DMPESSOA.TRua.Next;
       If Key=Vk_up Then
           DMPESSOA.TRua.Prior;
   End;
   If Key=VK_RETURN Then
       dbgEnderecoDblClick(Self);
end;

procedure TFCadPadraoPes.btnfechaenderecoClick(Sender: TObject);
begin
  inherited;
   PEndereco.Visible:=FALSE;
   DBEndNumero.SetFocus;
end;

procedure TFCadPadraoPes.btnDocumentosClick(Sender: TObject);
begin
  inherited;
   mmDocumentos.Popup(Left + PCadastro.Left + btnDocumentos.Left, Top + PCadastro.Top + btnDocumentos.Top + btnDocumentos.Height);
end;

procedure TFCadPadraoPes.Anexardocs1Click(Sender: TObject);
begin
	AnexarArquivoPessoa(XCOD_PESSOA);
end;

procedure TFCadPadraoPes.Abrirpas1Click(Sender: TObject);
begin
  inherited;
	AbrirPastaPessoa(XCOD_PESSOA);
end;

procedure TFCadPadraoPes.AbrirPastaPessoa(xCodigoPessoa: Integer);
begin
	If PastaDocumentosPessoaRecupera(xCodigoPessoa)<>''
   Then Begin
       PastaDocumentosPessoaAbrir(PastaDocumentosPessoaRecupera(xCodigoPessoa));
   End
   Else Begin
		If PastaDocumentosPessoaCriar(xCodigoPessoa)=True
       Then Begin
           If PastaDocumentosPessoaRecupera(xCodigoPessoa)<>''
           Then Begin
               PastaDocumentosPessoaAbrir(PastaDocumentosPessoaRecupera(xCodigoPessoa));
           End;
       End;
   End;
end;

procedure TFCadPadraoPes.AnexarArquivoPessoa(xCodigoPessoa: Integer);
var
	xDestinoPasta: String;
   xOrigemArquivo: String;
begin
  inherited;
   //Primeiro recuperamos a pasta da pessoa
   xDestinoPasta :=  PastaDocumentosPessoaRecupera(xCodigoPessoa);
  	If xDestinoPasta = ''
   Then Begin
		If PastaDocumentosPessoaCriar(xCodigoPessoa)=True
       Then Begin
       	xDestinoPasta :=  PastaDocumentosPessoaRecupera(xCodigoPessoa);
       End;
   End;
   //localiza arquivo de origem
   if OPD.Execute then
   begin
   	xOrigemArquivo := OPD.FileName;
   	PastaDocumentosPessoaAnexar(xOrigemArquivo, Trim(xDestinoPasta));
		PastaDocumentosPessoaAbrir(PastaDocumentosPessoaRecupera(xCodigoPessoa));
   end;
end;

procedure TFCadPadraoPes.btnanexopfClick(Sender: TObject);
begin
  inherited;
  	if OPD.Execute then
		eddocpf.Text := ExtractFilePath(OPD.FileName);
end;

procedure TFCadPadraoPes.btnanexopjClick(Sender: TObject);
begin
  inherited;
  	if OPD.Execute then
   	eddocpj.Text := ExtractFilePath(OPD.FileName);
end;

procedure TFCadPadraoPes.CBOrgao_Municipal_EstadualClick(Sender: TObject);
begin
  inherited;
   DMPESSOA.TPessoaJ.Edit;
   If CBOrgao_Municipal_Estadual.Checked then
       DMPESSOA.TPessoaJ.FieldByName('ORGAO_MUNICIPAL_ESTADUAL').AsString := 'S'
   else
       DMPESSOA.TPessoaJ.FieldByName('ORGAO_MUNICIPAL_ESTADUAL').AsString := 'N';
   DMPESSOA.TPessoaJ.Post;

end;

procedure TFCadPadraoPes.cbOrgao_FederalClick(Sender: TObject);
begin
  inherited;
   DMPESSOA.TPessoaJ.Edit;
   If cbOrgao_Federal.Checked then
       DMPESSOA.TPessoaJ.FieldByName('ORGAO_FEDERAL').AsString := 'S'
   else
       DMPESSOA.TPessoaJ.FieldByName('ORGAO_FEDERAL').AsString := 'N';
   DMPESSOA.TPessoaJ.Post;
end;

end.
