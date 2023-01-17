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
    Label2: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    DBColorEdit3: TDBColorEdit;
    Label12: TLabel;
    DBColorEdit5: TDBColorEdit;
    DBColorEdit6: TDBColorEdit;
    DBColorEdit7: TDBColorEdit;
    Label13: TLabel;
    DBColorEdit8: TDBColorEdit;
    Label14: TLabel;
    Label15: TLabel;
    DBColorEdit10: TDBColorEdit;
    DBColorEdit11: TDBColorEdit;
    Label16: TLabel;
    DBMemo1: TDBMemo;
    Label17: TLabel;
    DBColorEdit9: TDBColorEdit;
    CBPROTESTO: TCheckBox;
    Label18: TLabel;
    DBColorEdit12: TDBColorEdit;
    Label19: TLabel;
    DBColorEdit13: TDBColorEdit;
    CBTIPOBOLETO: TCheckBox;
    procedure FormActivate(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure BtnConsultarClick(Sender: TObject);
    procedure BtnApagarClick(Sender: TObject);
    procedure FrmBusca1BTNMINUSClick(Sender: TObject);
    procedure FrmBusca1BTNOPENClick(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure FrmBusca1EDCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure BtnSelecionarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadCtaCor: TFCadCtaCor;

implementation

uses AlxMessage, Alxor32, UAgencia, UMenu, UDmBanco, UDMGEOGRAFIA, UDMMacs,
  Math, UCadPadrao;

{$R *.DFM}

procedure TFCadCtaCor.FormActivate(Sender: TObject);
begin
  inherited;
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
    DBGridCadastroPadrao.DataSource:=DMBANCO.DWCtaCor;
end;

procedure TFCadCtaCor.BtnGravarClick(Sender: TObject);
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
    If CBPROTESTO.Checked=True Then
       DMBANCO.TCtaCor.FieldByName('PROTAUT').AsString:='1'
    Else
       DMBANCO.TCtaCor.FieldByName('PROTAUT').AsString:='0';
    DMBANCO.TCtaCor.Post;

    //VERIFICA SE JÁ EXISTE UMA CONTA COM O MESMO NUMERO
    If VerifExitVal('CTACOR', 'COD_CTACOR', DBPRIMEIRO.TEXT, 'NUMCTACOR', DBNUMCONTA.TEXT) = TRUE
    THEN BEGIN
        Mensagem('INFORMAÇÃO AO USUÁRIO', 'Já existe um Conta cadastrada com este Número!', '', 1, 1, False, 'a');
        DBNUMCONTA.SetFocus;
        exit;
    End
    Else Begin
        inherited;
        LiberaDados;
    End;
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
        If DMBANCO.WAgencia.Locate('COD_AGENCIA', DMBANCO.TCtaCor.FieldByName('COD_AGENCIA').AsString, [loCaseInsensitive, loPartialKey])
        Then Begin
            FrmBusca1.EdDescricao.Text:=DMBANCO.WAgencia.FieldByName('NOME').AsString;
            FrmBusca1.EDCodigo.Text:=DMBANCO.WAgencia.FieldByName('NUMAGENCIA').AsString;
        End //caso não localize agencia
        Else Begin
            FrmBusca1.EdDescricao.Text:='';
            FrmBusca1.EDCodigo.Text:='';
        End;
    End;
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

   FrmBusca1.BTNOPEN.SetFocus;

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
	If CBTIPOBOLETO.Checked=True Then
       FMenu.XTIPOBOLTO:='R'
   Else
       FMenu.XTIPOBOLTO:='N'
end;

end.
