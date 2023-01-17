unit UAgencia;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UCadPadraoDesc, TFlatHintUnit, Grids, DBGrids,
  TFlatEditUnit, StdCtrls, Buttons, Mask, DBCtrls, DBColorEdit, jpeg,
  ExtCtrls, DB, ComCtrls, UFrmBusca, DrLabel;

type
  TFCadAgencia = class(TFCadPadraoDesc)
    Label13: TLabel;
    DBNOMEPJ: TDBColorEdit;
    Label15: TLabel;
    DBColorEdit2: TDBColorEdit;
    Label14: TLabel;
    DBColorEdit4: TDBColorEdit;
    Label17: TLabel;
    DBColorEdit13: TDBColorEdit;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    TabSheet2: TTabSheet;
    GroupBox3: TGroupBox;
    DBGrid2: TDBGrid;
    FrmBuscaBanco: TFrmBusca;
    FrmBusca1: TFrmBusca;
    procedure FormActivate(Sender: TObject);
    procedure BtnConsultarClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure FrmBuscaBTNMINUSClick(Sender: TObject);
    procedure FrmBuscaEDCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure FrmBusca1BTNMINUSClick(Sender: TObject);
    procedure FrmBuscaBTNOPENClick(Sender: TObject);
    procedure FrmBusca1BTNOPENClick(Sender: TObject);
    procedure FrmBusca1EDCodigoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadAgencia: TFCadAgencia;

implementation

uses AlxMessage, Alxor32, Ubanco, UCadCidade, UDmBanco, UDMPessoa, UDMGEOGRAFIA,
  UDMMacs;

{$R *.DFM}

procedure TFCadAgencia.FormActivate(Sender: TObject);
begin
  inherited;
  XTabela:=DMBANCO.TAgencia ;
  XCampo:='NOME';
  XTransaction:=DMBANCO.IBT;
  XPkTabela:='COD_AGENCIA';
  XTab:=False;
  XDescricao:= 'A Agência';
  XView:=DMBANCO.WAgencia;
  XSQLVIEW:='VWAGENCIA';
  XLiberaDados:='';
  XSQLTABELA:='AGENCIA';
  DBGridCadastroPadrao.DataSource:=DMBANCO.DWAgencia;
end;

procedure TFCadAgencia.BtnConsultarClick(Sender: TObject);
begin
    //Localiza TAgencia de WAgencia
    If FiltraTabela(DMBANCO.TAgencia, 'AGENCIA', 'COD_AGENCIA', DMBANCO.WAgencia.FieldByName('COD_AGENCIA').AsString, '') = True
  	 Then Begin
  	 	inherited;
    End
    Else Begin
       Mensagem('OPÇÃO BLOQUEADA!', 'Ocorreu um problema ao juntar todas as informações da agencia. Tente reiniciar o sistema, se o mesmo problema ocorrer entre em contato com o suporte técnico.', '', 1, 1, False, 'i');
       Exit;
    End;

    //Localiza Cidade
    If FiltraTabela(DMPESSOA.TPessoa, 'PESSOA', 'COD_PESSOA', DMBANCO.WAgencia.FieldByName('COD_PESSOA').AsString, '') = True
  	 Then Begin
    	If FiltraTabela(DMGEOGRAFIA.WCidade, 'VWCIDADE', 'COD_CIDADE', DMPESSOA.TPessoa.FieldByName('COD_CIDADE').AsString, '') = True
  	 	Then Begin
       	FrmBusca1.EDCodigo.Text:=DMGEOGRAFIA.WCidade.FieldByName('COD_CIDADE').AsString;
       	FrmBusca1.EdDescricao.Text:=DMGEOGRAFIA.WCidade.FieldByName('NOME').AsString;
       End
       Else Begin
       	FrmBusca1.EDCodigo.Text:='';
       	FrmBusca1.EdDescricao.Text:='';
       End;
    End
    Else Begin
       FrmBusca1.EDCodigo.Text:='';
       FrmBusca1.EdDescricao.Text:='';
    End;

    //Localiza Pessoa E pessoaj
    If FiltraTabela(DMPESSOA.TPessoa, 'PESSOA', 'COD_PESSOA', DMBANCO.WAgencia.FieldByName('COD_PESSOA').AsString, '') = True
    Then Begin
		FiltraTabela(DMPESSOA.TPessoaJ, 'PESSOAJ', 'COD_PESSOA', DMPESSOA.TPessoa.FieldByName('COD_PESSOA').AsString, '');
    End
    Else Begin
       Mensagem('OPÇÃO BLOQUEADA!', 'Ocorreu um problema ao juntar todas as informações da agencia. Tente reiniciar o sistema, se o mesmo problema ocorrer entre em contato com o suporte técnico.', '', 1, 1, False, 'i');
       Exit;
    End;

    //Localiza Banco
    If FiltraTabela(DMBANCO.TBanco, 'BANCO', 'COD_BANC', DMBANCO.WAgencia.FieldByName('COD_BANC').AsString, '') = True
  	 Then Begin
       FrmBuscaBanco.EDCodigo.Text:=DMBANCO.TBanco.FieldByName('NUMBANCO').AsString;
       FrmBuscaBanco.EdDescricao.Text:=DMBANCO.TBanco.FieldByName('DESCBANCO').AsString;
    End
    Else Begin
       Mensagem('OPÇÃO BLOQUEADA!', 'Ocorreu um problema ao juntar todas as informações da agencia. Tente reiniciar o sistema, se o mesmo problema ocorrer entre em contato com o suporte técnico.', '', 1, 1, False, 'i');
       Exit;
    End;

	 //seleciona telefones/e-mails para pessoa
    SelectPesMail;

    DMPESSOA.TPessoaJ.Edit;
    DMPESSOA.TPessoa.Edit;
end;

procedure TFCadAgencia.BtnGravarClick(Sender: TObject);
begin
	//valida Nº da Agencia
	If DBDESC.Text=''
   Then Begin
       Mensagem('OPÇÃO BLOQUEADA', 'É Necessário informar o Nº da Agencia!', '', 1, 1, False, 'i');
       DBDESC.SetFocus;
       Exit;
   End;
	//valida Banco
	If FrmBuscaBanco.EDCodigo.Text=''
   Then Begin
       Mensagem('OPÇÃO BLOQUEADA', 'É Necessário informar o Banco!', '', 1, 1, False, 'i');
       FrmBuscaBanco.EDCodigo.SetFocus;
       Exit;
   End;
	//valida Nome Fantasia
	If DBNOMEPJ.Text=''
   Then Begin
       Mensagem('OPÇÃO BLOQUEADA', 'É Necessário informar a Agência!', '', 1, 1, False, 'i');
       DBNOMEPJ.SetFocus;
       Exit;
   End;

   //GRAVA DADOS DE PESSOA
	DMPESSOA.TPessoa.EDIT;
   DMPESSOA.TPESSOA.Post;
   DMPESSOA.TPESSOA.ApplyUpdates;
   //GRAVA DADOS DE PESSOA JURIDICA
   DMPESSOA.TPessoaJ.Edit;
   DMPESSOA.TPESSOAJ.Post;
   DMPESSOA.TPESSOAJ.ApplyUpdates;

   //GRAVA TELEFONES E E-MAILS DIGITADOS
   DMPESSOA.TTelefone.ApplyUpdates;
   DMPESSOA.TEmail.ApplyUpdates;

   DMPESSOA.TransacPessoa.CommitRetaining;

   DMBANCO.TAgencia.EDIT;

   inherited;

   DMBANCO.WAgencia.Close;
   DMBANCO.WAgencia.Open;

end;

procedure TFCadAgencia.BtnNovoClick(Sender: TObject);
begin
    inherited;
    //INSERE REGISTRO EM PESSOA
	 InserReg(DMPESSOA.TPessoa, 'PESSOA', 'COD_PESSOA');
    //INSERE REGISTRO EM PESSOAJ
	 InserReg(DMPESSOA.TPessoaJ, 'PESSOAJ', 'COD_PESSOAJ');
    DMPESSOA.TPessoaJ.FieldByName('COD_PESSOA').AsInteger:=DMPESSOA.TPessoa.FieldByName('COD_PESSOA').AsInteger;
    XTabela.FieldByName('COD_PESSOA').AsInteger:=DMPESSOA.TPessoa.FieldByName('COD_PESSOA').AsInteger;

	 SelectPesMail;//SELECIONA EMAIL E TELEFONES

    //LIMPA EDITS DE BUSCA
    FrmBuscaBanco.EDCodigo.Text:='';
    FrmBuscaBanco.EdDescricao.Text:='';
    FrmBusca1.EDCodigo.Text:='';
    FrmBusca1.EdDescricao.Text:='';
end;

procedure TFCadAgencia.FrmBuscaBTNMINUSClick(Sender: TObject);
begin
  inherited;
   //Codigo da tabela local =01
   XTabela.Edit;
   XTabela.FieldByName('COD_BANCO').AsString:='';

   FrmBuscaBanco.EDCodigo.Text:='';
   FrmBuscaBanco.EdDescricao.Text:='';

end;

procedure TFCadAgencia.FrmBuscaEDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	If Key = #13
   Then Begin
   	If FrmBuscaBanco.EDCodigo.Text<>''
       Then Begin
	       If FiltraTabela(DMBANCO.TBanco, 'BANCO', 'NUMBANCO', FrmBuscaBanco.EDCodigo.Text, '') = True
	       Then Begin //Slecionou o registro procurado
          		DMBANCO.TAgencia.FieldByName('COD_BANCO').AsInteger:=DMBANCO.TBanco.FieldByName('COD_BANC').AsInteger;
          		FrmBuscaBanco.EdDescricao.Text:=DMBANCO.TBanco.FieldByName('DESCBANCO').AsString;
          		FrmBuscaBanco.EDCodigo.text:=DMBANCO.TBanco.FieldByName('NUMBANCO').AsString;          End
          Else Begin
           	XTabela.Edit;
       		XTabela.FieldByName('COD_BANCO').AsString:='';
           	FrmBuscaBanco.EDCodigo.Text:='';
           	FrmBuscaBanco.EdDescricao.Text:='';
          End;
       End
       Else Begin
          	XTabela.Edit;
      		XTabela.FieldByName('COD_BANCO').AsString:='';
          	FrmBuscaBanco.EDCodigo.Text:='';
          	FrmBuscaBanco.EdDescricao.Text:='';
       End;
   End;
end;

procedure TFCadAgencia.FrmBusca1BTNMINUSClick(Sender: TObject);
begin
  inherited;
   //Codigo da tabela local =01
   XTabela.Edit;
   XTabela.FieldByName('COD_CIDADE').AsString:='';

   Frmbusca1.EDCodigo.Text:='';
   Frmbusca1.EdDescricao.Text:='';
end;

procedure TFCadAgencia.FrmBuscaBTNOPENClick(Sender: TObject);
begin
  inherited;
	 //LIBERA TODAS OS BANCOS PARA CONSUTA
	 filtraTabela(DMBANCO.TBanco, 'BANCO', '', '', '');

    If AbrirForm(TFCadBanco, FCadBanco, 1)='Selected'
    Then Begin
        DMBANCO.TAgencia.FieldByName('COD_BANCO').AsInteger:=DMBANCO.TBanco.FieldByName('COD_BANC').AsInteger;
        FrmBuscaBanco.EdDescricao.Text:=DMBANCO.TBanco.FieldByName('DESCBANCO').AsString;
        FrmBuscaBanco.EDCodigo.text:=DMBANCO.TBanco.FieldByName('NUMBANCO').AsString;
    End;
end;

procedure TFCadAgencia.FrmBusca1BTNOPENClick(Sender: TObject);
begin
  inherited;
	 //LIBERA TODAS OS BANCOS PARA CONSUTA
	 filtraTabela(DMGEOGRAFIA.TCidade, 'CIDADE', '', '', '');

    If AbrirForm(TFCADCIDADE, FCADCIDADE, 1)='Selected'
    Then Begin
      	 DMPESSOA.TPessoa.Edit;
        DMPESSOA.TPessoa.FieldByName('COD_CIDADE').AsInteger:=DMGEOGRAFIA.WCidade.FieldByName('COD_CIDADE').AsInteger;
        Frmbusca1.EdDescricao.Text:=DMGEOGRAFIA.WCidade.FieldByName('NOME').AsString;
        Frmbusca1.EDCodigo.text:=DMGEOGRAFIA.WCidade.FieldByName('COD_CIDADE').AsString;
    End;

end;

procedure TFCadAgencia.FrmBusca1EDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	If Key = #13
   Then Begin
   	If Frmbusca1.EDCodigo.Text<>''
       Then Begin
	       If SelectRegistro('CIDADE', 'COD_CIDADE', Frmbusca1.EDCodigo.Text) = True
	       Then Begin //Slecionou o registro procurado
           	DMPESSOA.TPessoa.Edit;
		        DMPESSOA.TPessoa.FieldByName('COD_CIDADE').AsInteger:=DMMACS.TSelect.FieldByName('COD_CIDADE').AsInteger;
       		Frmbusca1.EdDescricao.Text:=DMMACS.TSelect.FieldByName('NOME').AsString;
        		Frmbusca1.EDCodigo.text:=DMMACS.TSelect.FieldByName('COD_CIDADE').AsString;
          End
          Else Begin
           	DMPESSOA.TPessoa.Edit;
       		DMPESSOA.TPessoa.FieldByName('COD_CIDADE').AsString:='';
           	Frmbusca1.EDCodigo.Text:='';
           	Frmbusca1.EdDescricao.Text:='';
          End;
       End
       Else Begin
          	XTabela.Edit;
      		XTabela.FieldByName('COD_CIDADE').AsString:='';
          	Frmbusca1.EDCodigo.Text:='';
          	Frmbusca1.EdDescricao.Text:='';
       End;
   End;                 
end;

end.
