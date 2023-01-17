unit UCadCFOP;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UCadPadraoDesc, TFlatHintUnit, Mask, DBCtrls, DBColorEdit,
  Grids, DBGrids, StdCtrls, Buttons, TFlatEditUnit, jpeg, ExtCtrls,
  DBColorComboBox, UFrmBusca, DrLabel;

type
  TFCadCFOP = class(TFCadPadraoDesc)
    Label3: TLabel;
    DBCFOP: TDBColorEdit;
    Label2: TLabel;
    DBColorComboBox1: TDBColorComboBox;
    Label4: TLabel;
    DBColorComboBox2: TDBColorComboBox;
    FrmBusca1: TFrmBusca;
    EdCfop: TFlatEdit;
    cbNCI: TCheckBox;
    DBMemo1: TDBMemo;
    Label1: TLabel;
    CBDevolucao: TCheckBox;
    procedure FormActivate(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure DBCFOPKeyPress(Sender: TObject; var Key: Char);
    procedure BtnGravarClick(Sender: TObject);

    Function Diginum(xkey:char): Char;
    procedure FrmBusca1BTNMINUSClick(Sender: TObject);
    procedure FrmBusca1BTNOPENClick(Sender: TObject);
    procedure FrmBusca1EDCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure BtnConsultarClick(Sender: TObject);
    procedure BtnApagarClick(Sender: TObject);
    procedure EdCfopKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdNomeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;


var
  FCadCFOP: TFCadCFOP;

implementation

uses AlxMessage, Alxor32, UDMEstoque, UDMConta, UConsPlncta, UMenu,
  UDMMacs, UCadPadrao;

{$R *.DFM}

// Procedimento para que as edites recebam somente valores númericos;
Function TFCadCFOP.Diginum(xkey:char): Char;
begin
    if not (xKey in['0'..'9',#8]) Then
        Result:=#0
    Else
        Result:=xkey;
end;

procedure TFCadCFOP.FormActivate(Sender: TObject);
begin
  inherited;
    XTabela:=DMEstoque.TCFOP;
    XCampo:='DESCRICAO';
    XPkTabela:='COD_CFOP';
    XTransaction:=DMEstoque.TransacEstoque;
    XTab:=True;
    XDescricao:='a C.F.O.P';
    XSQLTABELA:='CFOP';
    XLiberaDados:='';
    LiberaDados;
end;

procedure TFCadCFOP.BtnNovoClick(Sender: TObject);
begin
  inherited;
    DBCFOP.SetFocus;
    //Limpa edits
    FrmBusca1.EDCodigo.Text:='';
    FrmBusca1.EdDescricao.Text:='';
    cbNCI.Checked := False;
end;

procedure TFCadCFOP.DBCFOPKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
    Key:=diginum(key);
end;

procedure TFCadCFOP.BtnGravarClick(Sender: TObject);
begin
    If DBCFOP.Text = ''Then
    begin
       Mensagem('INFORMAÇÃO AO USUÁRIO', 'o campo "CÓDIGO DA C.F.O.P"deve conter dados.', '', 1, 1, False, 'I');
       DBCFOP.SetFocus;
       exit;
    end;
    If DBDESC.Text = ''Then
    begin
       Mensagem('INFORMAÇÃO AO USUÁRIO', 'o campo "DESCRIÇÃO DA C.F.O.P"deve conter dados.', '', 1, 1, False, 'I');
       DBDESC.SetFocus;
       exit;
    end;
    If VerifExitVal('CFOP', 'COD_CFOP', DBPRIMEIRO.TEXT, 'CFOP', DBCFOP.Text)=True
    Then Begin
        Mensagem('INFORMAÇÃO AO USUÁRIO', 'A CFOP que informaou já se encontra cadastrada. Terá que informar novo valor!', '', 1, 1, False, 'i');
        DBCFOP.SetFocus;
        EXIT;
    End;
    // - 03/04/2009: se checkBox for marcado p/ nao calcular imposto
    If cbNCI.Checked
    Then Begin
  	   XTabela.Edit;
      XTabela.FieldByName('NCI').AsString := '1';
      XTabela.Post;
    End
    Else Begin
      XTabela.Edit;
      XTabela.FieldByName('NCI').AsString := '0';
      XTabela.Post;
    End;

    If CBDevolucao.Checked
    Then Begin
  	   XTabela.Edit;
      XTabela.FieldByName('DEVOLUCAO').AsString := '1';
      XTabela.Post;
    End
    Else Begin
      XTabela.Edit;
      XTabela.FieldByName('DEVOLUCAO').AsString := '0';
      XTabela.Post;
    End;

    inherited;
end;

procedure TFCadCFOP.FrmBusca1BTNMINUSClick(Sender: TObject);
begin
  inherited;
   //Codigo da tabela local =0
   XTabela.Edit;
   XTabela.FieldByName('COD_PLNCTAFIL').AsString:='';

   Frmbusca1.EDCodigo.Text:='';
   Frmbusca1.EdDescricao.Text:='';
end;

procedure TFCadCFOP.FrmBusca1BTNOPENClick(Sender: TObject);
begin
  inherited;
	//LIBERA TODAS OS ESTADOS PARA CONSUTA
	filtraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_FILIAL', FMenu.LCODEMPRESA.Caption, '');

    If AbrirForm(TFConsPlnCta, FConsPlnCta, 1)='Selected'
    Then Begin
        DMESTOQUE.TCFOP.FieldByName('COD_PLNCTAFIL').AsInteger:=DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger;
        Frmbusca1.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
        Frmbusca1.EDCodigo.text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
    End;
end;

procedure TFCadCFOP.FrmBusca1EDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	If Key = #13
   Then Begin
   	If Frmbusca1.EDCodigo.Text<>''
       Then Begin
	       If SelectRegistro('PLNCTA', 'CLASSIFICACAO', Frmbusca1.EDCodigo.Text) = True
	       Then Begin //Slecionou o registro procurado
          		Xtabela.Edit;
	       		XTabela.FieldByName('COD_PLNCTAFIL').AsInteger:=DMMACS.TSelect.FieldByName('COD_PLNCTA').AsInteger;
           	Frmbusca1.EDCodigo.text:=DMMACS.TSelect.FieldByName('CLASSIFICACAO').AsString;
           	Frmbusca1.EdDescricao.Text:=DMMACS.TSelect.FieldByName('DESCRICAO').AsString;
          End
          Else Begin
           	XTabela.Edit;
       		XTabela.FieldByName('COD_PLNCTAFIL').AsString:='';
           	Frmbusca1.EDCodigo.Text:='';
           	Frmbusca1.EdDescricao.Text:='';
          End;
       End
       Else Begin
          	XTabela.Edit;
      		XTabela.FieldByName('COD_PLNCTAFIL').AsString:='';
          	Frmbusca1.EDCodigo.Text:='';
          	Frmbusca1.EdDescricao.Text:='';
       End;
   End;
end;

procedure TFCadCFOP.BtnConsultarClick(Sender: TObject);
begin
  inherited;
	//Localiza Plano de contas
{   SelectRegistro('PLNCTA', 'COD_PLNCTA', DMESTOQUE.TCFOP.FieldByName('COD_PLNCTAFIL').AsString);
   FrmBusca1.EDCodigo.Text:=DMMACS.TSelect.FieldByName('CLASSIFICACAO').AsString;
   FrmBusca1.EdDescricao.Text:=DMMACS.TSelect.FieldByName('DESCRICAO').AsString;}   
   // - 03/04/2009: marca se empresa nao calcula imposto


    If XTabela.FieldByName('NCI').AsString = '1' Then
       cbNCI.Checked := True
    Else
       cbNCI.Checked := False;

end;

procedure TFCadCFOP.BtnApagarClick(Sender: TObject);
begin
     If CheckRelation('COD_CFOP', DMEstoque.TCFOP.FieldByName('COD_CFOP').AsString, ['DOCFIS'], 1)=False Then
        inherited
     Else
         Mensagem('INFORMAÇÃO AO USUÁRIO', 'Esta CFOP já se encontra vinculada a um Documento e não pode ser apagada!', '', 1, 1, True, 'i');
end;

procedure TFCadCFOP.EdCfopKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	If Key=VK_RETURN
   Then Begin//pressionado enter, consultar
		FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'COD_CFOP', '', ' upper(cfop.CFOP) like upper('+#39+EdCfop.Text+#39+') ORDER BY CFOP ');
   End;
	If Key=VK_ESCAPE
   Then Begin//pressionado enter, consultar
       DMESTOQUE.TCFOP.Close;
       DMESTOQUE.TCFOP.SQL.Clear;
       DMESTOQUE.TCFOP.SQL.Add('select * from cfop order by CFOP');
       DMESTOQUE.TCFOP.Open;
   End;
end;

procedure TFCadCFOP.EdNomeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	If Key=VK_ESCAPE
   Then Begin//pressionado enter, consultar
       DMESTOQUE.TCFOP.Close;
       DMESTOQUE.TCFOP.SQL.Clear;
       DMESTOQUE.TCFOP.SQL.Add('select * from cfop order by descricao');
       DMESTOQUE.TCFOP.Open;
   End;
end;

end.
