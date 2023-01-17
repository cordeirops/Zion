unit UCtaCor;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UCadPadraoDesc, TFlatHintUnit, Mask, DBCtrls, DBColorEdit, Grids,
  DBGrids, StdCtrls, Buttons, TFlatEditUnit, jpeg, ExtCtrls, UFrmBusca,
  db, DrLabel{, MDOCustomDataSet, MDOQuery};

type
  TFCadCtaCor = class(TFCadPadraoDesc)
    DBNUMCONTA: TDBColorEdit;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit2: TDBEdit;
    DBColorEdit4: TDBColorEdit;
    Label8: TLabel;
    FrmBusca1: TFrmBusca;
    DBColorEdit1: TDBColorEdit;
    Label1: TLabel;
    DBColorEdit2: TDBColorEdit;
    Label14: TLabel;
    DBMemo1: TDBMemo;
    CBCobreBemX: TCheckBox;
    PCobrebem: TPanel;
    EdLicencaCobreBem: TEdit;
    BTNOPEN: TBitBtn;
    Label20: TLabel;
    OD: TOpenDialog;
    CBNovoLayoutSicoob: TCheckBox;
    pCaminhoRemessa: TPanel;
    Label22: TLabel;
    edCaminhoRemessa: TEdit;
    btnCaminhoRemessa: TBitBtn;
    SD: TSaveDialog;
    GroupBox3: TGroupBox;
    pProtesto: TPanel;
    CBPROTESTO: TCheckBox;
    pDiasProtesto: TPanel;
    Label17: TLabel;
    DBColorEdit9: TDBColorEdit;
    DBColorEdit15: TDBColorEdit;
    Label24: TLabel;
    GroupBox4: TGroupBox;
    Label25: TLabel;
    DBColorEdit16: TDBColorEdit;
    Label26: TLabel;
    DBColorEdit17: TDBColorEdit;
    DBColorEdit18: TDBColorEdit;
    Label27: TLabel;
    Label28: TLabel;
    DBColorEdit19: TDBColorEdit;
    DBColorEdit20: TDBColorEdit;
    Label29: TLabel;
    DBColorEdit21: TDBColorEdit;
    Label30: TLabel;
    DBColorEdit22: TDBColorEdit;
    Label31: TLabel;
    DBColorEdit23: TDBColorEdit;
    Label32: TLabel;
    GroupBox6: TGroupBox;
    Label2: TLabel;
    Label21: TLabel;
    DBColorEdit24: TDBColorEdit;
    DBColorEdit25: TDBColorEdit;
    cbCobBancoob: TCheckBox;
    cbCobBancoBrasil: TCheckBox;
    GroupBox2: TGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    DBCPFCNPJ: TDBColorEdit;
    DBColorEdit5: TDBColorEdit;
    CBINATIVO: TCheckBox;
    procedure FormActivate(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure BtnConsultarClick(Sender: TObject);
    procedure BtnApagarClick(Sender: TObject);
    procedure FrmBusca1BTNMINUSClick(Sender: TObject);
    procedure FrmBusca1BTNOPENClick(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure FrmBusca1EDCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure BtnSelecionarClick(Sender: TObject);
    procedure CBCobreBemXClick(Sender: TObject);
    procedure BTNOPENClick(Sender: TObject);
    procedure btnCaminhoRemessaClick(Sender: TObject);
    procedure CBPROTESTOClick(Sender: TObject);
    procedure DBCPFCNPJExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadCtaCor: TFCadCtaCor;

implementation

uses AlxMessage, Alxor32, UAgencia, UMenu, UDmBanco, UDMGEOGRAFIA, UDMMacs,
  Math, UCadPadrao, StrUtils;

{$R *.DFM}

procedure TFCadCtaCor.FormActivate(Sender: TObject);
begin
  inherited;
	 Caption:='Cta. Corrente' ;  
    XTabela:=DMBANCO.TCtaCor;
    XCampo:= 'NUMCTACOR';
    XTransaction:=DMBANCO.IBT;
    XPkTabela:='COD_CTACOR';
    XTab:=False;
    XView:=DMBANCO.WCTACOR;
    XDescricao:= 'A Conta Corrente';
    XSQLTABELA:='CTACOR';
    XSQLVIEW:='VWCTACOR';
    XLiberaDados:='';
    CBCobreBemX.Visible:=True;
    CBCobreBemX.BringToFront;
    CBCobreBemX.Repaint;
    DBGridCadastroPadrao.DataSource:=DMBANCO.DWCtaCor;
end;

procedure TFCadCtaCor.BtnGravarClick(Sender: TObject);
VAR
	xCaminhoArquivo, xNomeArquivo,xTmp: String;
   i, k: Integer;
begin
    If FrmBusca1.EDCodigo.Text=''
    Then Begin
        Mensagem('INFORMAÇÃO AO USUÁRIO', 'Por favor informe a agência!', '', 1, 1, False, 'a');
        FrmBusca1.BTNOPEN.SetFocus;
        exit;
    End;
    If DBNUMCONTA.Text=''
    Then Begin
        Mensagem('INFORMAÇÃO AO USUÁRIO', 'Por favor informe o Número da Conta!', '', 1, 1, False, 'a');
        DBNUMCONTA.SetFocus;
        exit;
    End;

    DMBANCO.TCtaCor.Edit;
    //define o tipo de impressão de boleto
    If CBCobreBemX.Checked=True Then
       DMBANCO.TCtaCor.FieldByName('USACOBREBEMX').AsString:='1'
    Else
       DMBANCO.TCtaCor.FieldByName('USACOBREBEMX').AsString:='0';

    If CBINATIVO.Checked=True Then
       DMBANCO.TCtaCor.FieldByName('INATIVO').AsString:='1'
    Else
       DMBANCO.TCtaCor.FieldByName('INATIVO').AsString:='0';

    //define se a conta corrente utiliza o novo lay out do sicoob
    If CBNovoLayoutSicoob.Checked=True Then
       DMBANCO.TCtaCor.FieldByName('NOVOLAYOUT').AsString:='1'
    Else
       DMBANCO.TCtaCor.FieldByName('NOVOLAYOUT').AsString:='0';

{    if cbBltRegistrados.Checked then
    	DMBANCO.TCtaCor.FieldByName('BLT_REGISTRADO').AsString := '1'
    else
    	DMBANCO.TCtaCor.FieldByName('BLT_REGISTRADO').AsString := '0';}

    if cbCobBancoBrasil.Checked then
       DMBANCO.TCtaCor.FieldByName('COBRANCA_BB').AsString := '1'
    else
       DMBANCO.TCtaCor.FieldByName('COBRANCA_BB').AsString := '0';

    if cbCobBancoob.Checked then
       DMBANCO.TCtaCor.FieldByName('COBRANCA_BANCOOB').AsString := '1'
    else
       DMBANCO.TCtaCor.FieldByName('COBRANCA_BANCOOB').AsString := '0';       

	 xNomeArquivo := '';
    xCaminhoArquivo := '';
    
    //Edmar - 26/08/2014 - Rotina para pegar o nome do arquivo a ser salvo
	 for i := Length(edCaminhoRemessa.Text) downto 0 do
    begin
    	xTmp := Copy(edCaminhoRemessa.Text, i, 1);       
       if xTmp = '\' then//Edmar - 26/08/2014 - se encontrou barra, quer dizer
       begin//que terminou de buscar o nome do arquivo

       	//Edmar - 26/08/2014 - Agora busca o caminho completo que deverá ser salvo
           for k := i downto 1 do
           	xCaminhoArquivo := xCaminhoArquivo + Copy(edCaminhoRemessa.Text, k, 1);
               
			Break;
       end
		else//Edmar - 26/08/2014 - Concatena o nome do arquivo
    		xNomeArquivo := xNomeArquivo + xTmp;
    end;

    //Edmar - 26/08/2014 - Reverte o caminho e o nome do arquivo para salvar
    DMBANCO.TCtaCor.FieldByName('NOME_REMESSA').AsString := '';//ReverseString(xNomeArquivo);
    DMBANCO.TCtaCor.FieldByName('CAMINHO_REMESSA').AsString := ReverseString(xCaminhoArquivo);

    DMBANCO.TCtaCor.FieldByName('LICENSACOBREBEM').AsString:=EdLicencaCobreBem.Text;

    //define se havera protesto ou não
    If CBPROTESTO.Checked=True Then
       DMBANCO.TCtaCor.FieldByName('PROTAUT').AsString:='1'
    Else
       DMBANCO.TCtaCor.FieldByName('PROTAUT').AsString:='0';
    DMBANCO.TCtaCor.Post;
    DMBANCO.IBT.CommitRetaining;

    inherited;
    LiberaDados;  
end;

procedure TFCadCtaCor.BtnConsultarClick(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('CADCTACORRENTE', 'M')=False Then
  		Exit;

  inherited;
    If FiltraTabela(DMBANCO.TCtaCor, 'CTACOR', 'COD_CTACOR', DMBANCO.WCTACOR.FieldByName('COD_CTACOR').AsString,'')=True
    Then Begin
        // localiza agencia
        //If DMBANCO.WAgencia.Locate('COD_AGENCIA', DMBANCO.TCtaCor.FieldByName('COD_AGENCIA').AsString, [loCaseInsensitive, loPartialKey])
        //Edmar - 28/07/2014 - Alterado a pesquisa da agencia que com o locate ele não localizava a agencia
        if FiltraTabela(DMBANCO.WAgencia, 'VWAGENCIA', 'COD_AGENCIA', DMBANCO.TCtaCor.FieldByName('COD_AGENCIA').AsString, '') 
        Then Begin
            FrmBusca1.EdDescricao.Text:=DMBANCO.WAgencia.FieldByName('NOME').AsString;
            FrmBusca1.EDCodigo.Text:=DMBANCO.WAgencia.FieldByName('NUMAGENCIA').AsString;
        End //caso não localize agencia
        Else Begin
            FrmBusca1.EdDescricao.Text:='';
            FrmBusca1.EDCodigo.Text:='';
        End;
    End;
    //define o tipo de impressão de boleto
    If DMBANCO.TCtaCor.FieldByName('USACOBREBEMX').AsString='1'
    Then Begin
       CBCobreBemX.Checked:=True;
       EdLicencaCobreBem.Text:=DMBANCO.TCtaCor.FieldByName('LICENSACOBREBEM').AsString;
    End
    Else Begin
       CBCobreBemX.Checked:=False;
		EdLicencaCobreBem.Text:='';
    End;
    If DMBANCO.TCtaCor.FieldByName('INATIVO').AsString='1' Then
       CBINATIVO.Checked:=true
    Else
       CBINATIVO.Checked:=False;
       

    edCaminhoRemessa.Text := DMBANCO.TCtaCor.FieldByName('CAMINHO_REMESSA').AsString+DMBANCO.TCtaCor.FieldByName('NOME_REMESSA').AsString;
    //define se a conta corrente utiliza o novo lay out do sicoob
    If DMBANCO.TCtaCor.FieldByName('NOVOLAYOUT').AsString='1'  Then
       CBNovoLayoutSicoob.Checked:=True
    Else
       CBNovoLayoutSicoob.Checked:=False;

    if DMBANCO.TCtaCor.FieldByName('COBRANCA_BB').AsString = '1' then
       cbCobBancoBrasil.Checked := True
    else
       cbCobBancoBrasil.Checked := False;

    if DMBANCO.TCtaCor.FieldByName('COBRANCA_BANCOOB').AsString = '1' then
       cbCobBancoob.Checked := True
    else
       cbCobBancoob.Checked := False;
              
    {If DMBANCO.TCtaCor.FieldByName('BLT_REGISTRADO').AsString='1'  Then
       cbBltRegistrados.Checked:=True
    Else
       cbBltRegistrados.Checked:=False;}

    //define se havera protesto ou não
    //define o tipo de impressão de boleto
    If DMBANCO.TCtaCor.FieldByName('PROTAUT').AsString='1' Then
       CBPROTESTO.Checked:=True
    Else
       CBPROTESTO.Checked:=False;    
end;

procedure TFCadCtaCor.BtnApagarClick(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('CADCTACORRENTE', 'M')=False Then
  		Exit;

   If CheckRelation('COD_CTACOR', DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsString, ['MOVBANCO'], 1)=True
   Then Begin
       Mensagem('OPÇÃO BLOQUEADA', 'Esta Conta Corrente não pode ser apagada, ela contém referências com outras tabelas!', 'Veririque a existência de lançamentos em movimentações bancárias', 1, 1, True, 'I');
       Exit;
   End;

  inherited;
   { TODO -oALEX : Implementar verificação de referência entre conta corrente e outras movimentação }
end;

procedure TFCadCtaCor.FrmBusca1BTNMINUSClick(Sender: TObject);
begin
  inherited;
   //Codigo da tabela local =0
   XTabela.Edit;
   XTabela.FieldByName('COD_AGENCIA').AsString:='';

   Frmbusca1.EDCodigo.Text:='';
   Frmbusca1.EdDescricao.Text:='';
end;

procedure TFCadCtaCor.FrmBusca1BTNOPENClick(Sender: TObject);
begin
  inherited;
	//LIBERA TODAS OS ESTADOS PARA CONSUTA
	filtraTabela(DMBANCO.WAgencia, 'VWAGENCIA', '', '', '');

    If AbrirForm(TFCadAGENCIA, FCadAGENCIA, 1)='Selected'
    Then Begin
    	 Xtabela.Edit;
        DMBANCO.TCtaCor.FieldByName('COD_AGENCIA').AsInteger:=DMBANCO.WAgencia.FieldByName('COD_AGENCIA').AsInteger;
        Frmbusca1.EdDescricao.Text:=DMBANCO.WAgencia.FieldByName('NOME').AsString;
        Frmbusca1.EDCodigo.text:=DMBANCO.WAgencia.FieldByName('NUMAGENCIA').AsString;
    End;
end;
procedure TFCadCtaCor.BtnNovoClick(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('CADCTACORRENTE', 'M')=False Then
  		Exit;

  inherited;
   //Limpa Edits
   FrmBusca1.EdDescricao.Text:='';
   FrmBusca1.EDCodigo.Text:='';

   CBCobreBemX.Checked:=False;
   EdLicencaCobreBem.Text:='';
   edCaminhoRemessa.Text:='';

   FrmBusca1.BTNOPEN.SetFocus;
   //cbBltRegistrados.Checked := False;
end;

procedure TFCadCtaCor.FrmBusca1EDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	If Key = #13
   Then Begin
   	If Frmbusca1.EDCodigo.Text<>''
       Then Begin
	       If SelectRegistro('VWAGENCIA', 'NUMAGENCIA', Frmbusca1.EDCodigo.Text) = True
	       Then Begin //Slecionou o registro procurado
          		Xtabela.Edit;
	       		XTabela.FieldByName('COD_AGENCIA').AsInteger:=DMMACS.TSelect.FieldByName('COD_AGENCIA').AsInteger;
           	Frmbusca1.EDCodigo.text:=DMMACS.TSelect.FieldByName('NUMAGENCIA').AsString;
           	Frmbusca1.EdDescricao.Text:=DMMACS.TSelect.FieldByName('NOME').AsString;
          End
          Else Begin
           	XTabela.Edit;
       		XTabela.FieldByName('COD_AGENCIA').AsString:='';
           	Frmbusca1.EDCodigo.Text:='';
           	Frmbusca1.EdDescricao.Text:='';
          End;
       End
       Else Begin
          	XTabela.Edit;
      		XTabela.FieldByName('COD_AGENCIA').AsString:='';
          	Frmbusca1.EDCodigo.Text:='';
          	Frmbusca1.EdDescricao.Text:='';
       End;
   End;
end;
procedure TFCadCtaCor.BtnSelecionarClick(Sender: TObject);
begin
  inherited;
	{If CBTIPOBOLETO.Checked=True Then
       FMenu.XTIPOBOLTO:='R'
   Else
       FMenu.XTIPOBOLTO:='N'}
end;

procedure TFCadCtaCor.CBCobreBemXClick(Sender: TObject);
begin
  inherited;
	If CBCobreBemX.Checked=True Then
       PCobrebem.Visible:=True
   Else
       PCobrebem.Visible:=False;
end;

procedure TFCadCtaCor.BTNOPENClick(Sender: TObject);
begin
  inherited;
   OD.InitialDir:='C:\MZR\';
   If OD.Execute Then
       EdLicencaCobreBem.Text:=OD.FileName;
end;

procedure TFCadCtaCor.btnCaminhoRemessaClick(Sender: TObject);
var
	xTmp: String;
begin
  inherited;
  	SD.Filter := '.txt';
   SD.InitialDir := 'C:\MZR\';
   SD.FileName := 'REMESSA';
   
   If SD.Execute Then
		edCaminhoRemessa.Text := SD.FileName;
end;

procedure TFCadCtaCor.CBPROTESTOClick(Sender: TObject);
begin
  inherited;
	if CBPROTESTO.Checked then
   	pDiasProtesto.Visible := True
   else
   	pDiasProtesto.Visible := False;
end;

procedure TFCadCtaCor.DBCPFCNPJExit(Sender: TObject);
var
   xValidado: Boolean;
begin
  inherited;
   if DBCPFCNPJ.Text <> '' then
   begin
       xValidado := True;

       if not ValidaCGC(DBCPFCNPJ.Text) then
       begin
           if not ValidCPF(DBCPFCNPJ.Text) then
               xValidado := False;
       end;

       if not xValidado then
       begin
           MessageDlg('CPF/CNPJ não é válido', mtWarning, [mbOK], 0);
           DBCPFCNPJ.SetFocus;
       end;
   end;
end;

end.

