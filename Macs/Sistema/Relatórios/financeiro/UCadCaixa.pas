unit UCadCaixa;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UCadPadraoDesc, TFlatHintUnit, Mask, DBCtrls, DBColorEdit,
  Grids, DBGrids, StdCtrls, Buttons, TFlatEditUnit, jpeg, ExtCtrls,
  FashionPanel, UFrmBusca, DrLabel, Printers, DB{, MDOCustomDataSet, MDOQuery};

type
  TFCadCaixa = class(TFCadPadraoDesc)
    Label2: TLabel;
    DBNUMCAIXA: TDBColorEdit;
    Label54: TLabel;
    DBCTIPOFISCAL: TDBComboBox;
    PECF: TPanel;
    Label53: TLabel;
    Label52: TLabel;
    DBCPORTAECF: TDBComboBox;
    DBEdit10: TDBEdit;
    PCuponNFisc: TPanel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    TImpressora: TLabel;
    CBImpressora: TDBComboBox;
    LSERVIDOR: TLabel;
    LENDERECO: TLabel;
    DBServidor: TEdit;
    DBEndereco: TEdit;
    cbPergImpNF: TCheckBox;
    DBCBImpThermais: TDBComboBox;
    Label1: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure BtnApagarClick(Sender: TObject);
    procedure DBCTIPOFISCALExit(Sender: TObject);
    procedure DBCTIPOFISCALKeyPress(Sender: TObject; var Key: Char);
    procedure DBCPORTAECFKeyPress(Sender: TObject; var Key: Char);
    procedure DBCTIPOFISCALClick(Sender: TObject);
    procedure CBImpressoraClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnConsultarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadCaixa: TFCadCaixa;
  XCOD_PKFISCAL: INTEGER;// ARMAZENA TEMPORARIAMENTE O CÓDIGO DA PK FISCAL

implementation

uses UMenu, Alxor32, AlxMessage, UDMCaixa, UDMMacs, UPadrao, UCadPadrao,
  Alxorprn;

{$R *.DFM}

procedure TFCadCaixa.FormActivate(Sender: TObject);
begin
  inherited;
  	 //PAulo 05/03/2012: Seta as impressoras instaladas no combobox	
  	 DBCBImpThermais.Items.Clear;
    DBCBImpThermais.Items:=Printer.Printers;
    XTabela:=DMCAIXA.TCaixa;
    XCampo:='Descricao';
    XPkTabela:='COD_CAIXA';
    XTransaction:=DMCAIXA.IBT;
    XTab:=True;
    XDescricao:='o caixa';
    XSQLTABELA:='CAIXA';
    XLiberaDados:=' WHERE COD_LOJA = '+FMenu.LCODLOJA.Caption;
    LiberaDados;
    DBGridCadastroPadrao.DataSource:=DMCAIXA.DCaixa;

    if (DBCTIPOFISCAL.Text = 'ECF') OR (DBCTIPOFISCAL.Text = 'CUPOM')
    Then Begin
       PECF.Visible := true;
       PECF.BringToFront;
       PCuponNFisc.Visible := true;
       PCuponNFisc.BringToFront;
       TImpressora.Visible := true;
       TImpressora.BringToFront;
       CBImpressora.Visible := true;
       CBImpressora.BringToFront;
    End
    Else
    Begin
        TImpressora.Visible := false;
        TImpressora.SendToBack;
        CBImpressora.Visible := false;
        CBImpressora.SendToBack;
    End;
end;

procedure TFCadCaixa.BtnNovoClick(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('CADCX', 'M')=False Then
  		Exit;

  inherited;

  DMCAIXA.TCaixa.FieldByName('COD_caixa').AsInteger:=XCODPKMESTRE;
  DMCAIXA.TCaixa.FieldByName('COD_LOJA').AsCurrency:=StrToInt(FMenu.LCODLOJA.Caption);
  DMCAIXA.TCaixa.FieldByName('COD_USUARIO').Value:=StrToInt(FMenu.LCODUSUARIO.Caption);
  

  TImpressora.Visible := FALSE;
  TImpressora.SendToBack;
  CBImpressora.Visible := FALSE;
  CBImpressora.SendToBack;
  PECF.Visible:=FALSE;
  PECF.SendToBack;
  LSERVIDOR.Visible := false;
  LSERVIDOR.SendToBack;
  LENDERECO.Visible := false;
  LENDERECO.SendToBack;
  DBServidor.Visible := false;
  DBServidor.SendToBack;
  DBEndereco.Visible := false;
  DBEndereco.SendToBack;

end;

procedure TFCadCaixa.BtnGravarClick(Sender: TObject);
begin

   // não permite gravar sem numero de caixa
    If DBNUMCAIXA.Text = ''
    Then Begin
       Mensagem('   ATENÇÃO   ', 'Informe o número do caixa.', '', 1, 1, False, 'A');
       DBNUMCAIXA.SetFocus;
       Exit;
    End;

    If DBDESC.Text = ''
    Then Begin
       Mensagem('   ATENÇÃO   ', 'Informe a descrição do caixa.', '', 1, 1, False, 'A');
       DBDESC.SetFocus;
       Exit;
    End;

    If VerifExitVal('CAIXA', 'COD_CAIXA', DBPRIMEIRO.TEXT, 'NUMCAIXA', DBNUMCAIXA.TEXT) = TRUE
    THEN BEGIN
        Mensagem('INFORMAÇÃO AO USUÁRIO', 'Já existe um Caixa cadastrado com este Número!', '', 1, 1, False, 'a');
        DBNUMCAIXA.SetFocus;
        exit;
    End
    Else Begin
        If DBServidor.Text <> ''
        Then Begin
           DMCAIXA.TCaixa.Edit;
           DMCAIXA.TCaixa.FieldByName('ENDERECO_BD').AsString := DBServidor.Text + ':' + DBEndereco.Text;
        End
        Else Begin
           DMCAIXA.TCaixa.Edit;
           DMCAIXA.TCaixa.FieldByName('ENDERECO_BD').AsString := DBEndereco.Text;
        End;

        If DBCTIPOFISCAL.Text = 'NENHUM'
        Then Begin
           XTabela.FieldByName('PORTACUPOM').AsString := '';
        End;

        // - 12/03/2009:  se  comboBox estiver marcado para emitir NF
        If cbPergImpNF.Checked
        Then begin
             XTabela.FieldByName('EMITNF').AsString := '1';
        End
        Else Begin
             XTabela.FieldByName('EMITNF').AsString := '0';
        End;

        XTabela.Post;
        XTransaction.CommitRetaining;
        
        inherited;

        // SELECIONA TODOS OS DADOS DA TABELA CAIXA
        LiberaDados;
    End;
end;
procedure TFCadCaixa.BtnApagarClick(Sender: TObject);
begin
     If CheckRelation('COD_CAIXA', DMCAIXA.TCaixa.FieldByName('COD_CAIXA').AsString, ['ABCAIXA'], 1)=False Then
        inherited
     Else
         Mensagem('INFORMAÇÃO AO USUÁRIO', 'Este caixa já se encontra vinculado a um lançamento e não pode mais ser apagado!', '', 1, 1, True, 'i');

end;

procedure TFCadCaixa.DBCTIPOFISCALExit(Sender: TObject);
begin
  inherited;
{	If DBCTIPOFISCAL.Text<>'NENHUM'
   Then Begin
       If DBCTIPOFISCAL.Text='CUPOM'
       Then Begin
           PCuponNFisc.Visible:=True;
           PCuponNFisc.BringToFront;
       End;
       PECF.Visible:=True;
       PECF.BringToFront;
       DBCPORTAECF.SetFocus;
   End
   Else Begin
      PECF.Visible:=False;
   end;}
end;

procedure TFCadCaixa.DBCTIPOFISCALKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
   Key:=#0;
end;

procedure TFCadCaixa.DBCPORTAECFKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
	kEY:=#0;
end;

procedure TFCadCaixa.DBCTIPOFISCALClick(Sender: TObject);
begin
  inherited;

   cbPergImpNF.Visible := False; // - 12/03/2009: 

   if (DBCTIPOFISCAL.Text = 'ECF') or (DBCTIPOFISCAL.Text = 'CUPOM')
   then begin
       TImpressora.Visible := true;
       TImpressora.BringToFront;
       CBImpressora.Visible := True;
       CBImpressora.BringToFront;
       CBImpressora.Text := '';

       // - 12/03/2009: o caixa pode emitir ECF e NF
       //                   se for do tipo ECF liberar comboBox 
       if (DBCTIPOFISCAL.Text = 'ECF')
       then begin
           cbPergImpNF.Visible := True;
       end;
   end;
   
   if (DBCTIPOFISCAL.Text = 'NENHUM')
   Then Begin
       TImpressora.Visible := false;
       TImpressora.SendToBack;
       CBImpressora.Visible := false;
       CBImpressora.SendToBack;
       PECF.Visible := false;
       PECF.SendToBack;
       LSERVIDOR.Visible := false;
       LSERVIDOR.SendToBack;
       DBServidor.Visible := false;
       DBServidor.SendToBack;
       LENDERECO.Visible := false;
       LENDERECO.SendToBack;
       DBEndereco.Visible := false;
       DBEndereco.SendToBack;
       DBServidor.Text := '';
       DBEndereco.Text := '';
       CBImpressora.Text := '';
       DBCPORTAECF.Clear;
   End;

end;

procedure TFCadCaixa.CBImpressoraClick(Sender: TObject);
begin
  inherited;
   if (CBImpressora.Text = 'BEMATECH') or (CBImpressora.Text = 'ELGIN') or (CBImpressora.Text = 'SWEDA')
   Then Begin
       PCuponNFisc.Visible:=True;
       PCuponNFisc.BringToFront;
       PECF.Visible := true;
       PECF.BringToFront;
       LSERVIDOR.Visible := true;
       LSERVIDOR.BringToFront;
       LENDERECO.Visible := true;
       LENDERECO.BringToFront;
       DBServidor.Visible := true;
       DBServidor.BringToFront;
       DBEndereco.Visible := true;
       DBEndereco.BringToFront;
       DBServidor.Text := '';
       DBEndereco.Text := '';
   End;

end;

procedure TFCadCaixa.BtnCancelarClick(Sender: TObject);
begin
     TImpressora.Visible := false;
     TImpressora.SendToBack;
     CBImpressora.Visible := false;
     CBImpressora.SendToBack;
     PCuponNFisc.Visible:=false;
     PCuponNFisc.SendToBack;
     PECF.Visible := false;
     PECF.SendToBack;
  inherited;
end;

procedure TFCadCaixa.BtnConsultarClick(Sender: TObject);
VAR
XString: string;
XTamanho: integer;
begin
  inherited;
    DBServidor.Text := DMCAIXA.TCaixa.fieldbyname('endereco_bd').AsString;

    // copia da posição 1 ate o primeiro sinal de ":"
    XString := Copy(DBServidor.Text,1,pos(':',DBServidor.Text));

    // tamanho da copia da string
    XTamanho := length(XString);

    // copia da posicao apos o ":" ate o final da string
    XCampo := copy(DBServidor.Text,XTamanho + 1,length(DBServidor.Text));

    LSERVIDOR.Visible := true;
    LSERVIDOR.BringToFront;
    LENDERECO.Visible := true;
    LENDERECO.BringToFront;
    DBServidor.Visible := true;
    DBServidor.BringToFront;
    DBEndereco.Visible := true;
    DBEndereco.BringToFront;

    // se for localizado o sinal de ":", eh porque existe o servidor no ENDERECO_BD. Assim eh necessario dividir a string para as duas Edit's (Servidor e Endereco do banco)
    If Localiza_palavra(XCampo,':') = true
    Then Begin
       DBServidor.Text := copy(DBServidor.Text,1,pos(':',DBServidor.Text));
       XTamanho := length(DBServidor.Text);
       DBServidor.Text := copy(DBServidor.Text,1,XTamanho-1);
       DBEndereco.Text := copy(XCampo,1,length(XCampo));
    End
    Else Begin
       DBServidor.Text := '';
       DBEndereco.Text := DMCAIXA.TCaixa.fieldbyname('endereco_bd').AsString;
    End;

    if (DBCTIPOFISCAL.Text = 'ECF') OR (DBCTIPOFISCAL.Text = 'CUPOM')
    Then Begin
       PECF.Visible := true;
       PECF.BringToFront;
       PCuponNFisc.Visible := true;
       PCuponNFisc.BringToFront;
       TImpressora.Visible := true;
       TImpressora.BringToFront;
       CBImpressora.Visible := true;
       CBImpressora.BringToFront;
       LSERVIDOR.Visible := true;
       LSERVIDOR.BringToFront;
       DBServidor.Visible := true;
       DBServidor.BringToFront;
       LENDERECO.Visible := true;
       LENDERECO.BringToFront;
       DBEndereco.Visible := true;
       DBEndereco.BringToFront;
       // - 12/03/2009: se campo estiver marcado como true no banco marcar checkBox
       cbPergImpNF.Visible := True;
      If DMCAIXA.TCaixa.fieldbyname('EMITNF').AsString = '1'
      Then Begin
          cbPergImpNF.Checked := True;
      End
      Else Begin
         cbPergImpNF.Checked := False;
      End;
    End
    Else
    Begin
        TImpressora.Visible := false;
        TImpressora.SendToBack;
        CBImpressora.Visible := false;
        CBImpressora.SendToBack;
        LSERVIDOR.Visible := false;
        LSERVIDOR.SendToBack;
        DBServidor.Visible := false;
        DBServidor.SendToBack;
        LENDERECO.Visible := false;
        LENDERECO.SendToBack;
        DBEndereco.Visible := false;
        DBEndereco.SendToBack;
        cbPergImpNF.Visible := False;  // - 12/03/2009:  deixar campo invisible
        cbPergImpNF.Checked := False;  // - 12/03/2009:  não deixar checkado se estiver invisible
    End;


end;

end.
