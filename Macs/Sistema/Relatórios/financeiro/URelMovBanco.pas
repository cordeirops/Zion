unit URelMovBanco;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UPadrao, TFlatHintUnit, Buttons, StdCtrls, jpeg, ExtCtrls, Mask,
  ColorMaskEdit, FR_DSet, FR_DBSet, FR_Class, DBCtrls, UFrmBusca, DrLabel;

type
  TFRelMovBanco = class(TFPadrao)
    FSRel: TfrReport;
    FDSCaixa: TfrDBDataSet;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    LDATA: TLabel;
    EDDATA1: TColorMaskEdit;
    EDDATA2: TColorMaskEdit;
    RGSELECAO: TRadioGroup;
    DBCTACOR: TDBLookupComboBox;
    FrmConta: TFrmBusca;
    GroupBox2: TGroupBox;
    GroupBox4: TGroupBox;
    BtnVisualizar: TBitBtn;
    GroupBox5: TGroupBox;
    BtnCancelar: TBitBtn;
    procedure BtnVisualizarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure RGSELECAOClick(Sender: TObject);
    procedure FrmContaBTNMINUSClick(Sender: TObject);
    procedure FrmContaBTNOPENClick(Sender: TObject);
    procedure FrmContaEDCodigoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelMovBanco: TFRelMovBanco;
  XCONTA: Integer;

implementation

uses UDMFinanc, UDmBanco, AlxMessage, UDMMacs, UMenu, Alxor32, UDMConta,
  UConsPlncta;

{$R *.DFM}

procedure TFRelMovBanco.BtnVisualizarClick(Sender: TObject);
VAR
	TIPOSELEC: STRING;
begin
   IF RGSELECAO. ItemIndex=0 THEN
       TIPOSELEC:='Movimentados';
   IF RGSELECAO. ItemIndex=1 THEN
       TIPOSELEC:='Não Movimentados';
   IF RGSELECAO. ItemIndex=2 THEN
       TIPOSELEC:='Vencidos';

	//PREPARA INFORMAÇÃO DE RESTRIÇÕES PARA RELATÓRIO
   FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');   
   DMMACS.TLoja.Edit;
   DMMACS.TLoja.FieldByName('TMP1').AsString:='Dt. Ini.: '+EdData1.Text+' / Dt. Fin.: '+EdData2.Text+#13+ 'Tipo: '+TIPOSELEC+' - Conta: '+ FrmConta.EdDescricao.Text;
   DMMACS.TLoja.FieldByName('TMP2').AsString:='Financeiro/Relatórios/Movimentações';   
   DMMACS.TLoja.Post;
   DMMACS.Transaction.CommitRetaining;
   FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
  inherited;
  	If DBCTACOR.Text=''
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Informe uma Cta corrente para o relatório!', '', 1, 1, False, 'i');
       DBCTACOR.SetFocus;
       Exit;
   End;
   //INICIA PROCESSO DE INSERÇÃO DE SQL
   DMFINANC.TRel.Close;
   DMFINANC.TRel.SQL.Clear;
   DMFINANC.TRel.SQL.Add(' SELECT movbanco.dtlanc, movbanco.historico, movbanco.dtmov, movbanco.valor, movbanco.tipoop, ');
	DMFINANC.TRel.SQL.Add(' movbanco.cobranca, movbanco.dtvenc, movbanco.numcheque FROM movbanco ');
	DMFINANC.TRel.SQL.Add(' Where (movbanco.cod_ctacor=:CODCTA) ');
   //FILTRA PELO CÓDIGO DA CTA
	DMFINANC.TRel.ParamByName('CODCTA').AsString:=DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsString;
 	//FILTRA PELA conta
  	If (XCONTA<>-1)
  	Then Begin
		DMFINANC.TRel.SQL.Add(' AND (MOVBANCO.COD_PLNCTA=:CODPLANO)');
		DMFINANC.TRel.ParamByName('CODPLANO').AsInteger:=XCONTA;
  	End;

   If RGSELECAO.ItemIndex=0
   Then Begin
   	//FILTRA PELA DATA DE MOVIMENTAÇÃO
   	If (EDDATA1.Text<>'  /  /    ') AND (EDDATA2.Text<>'  /  /    ')
   	Then Begin
			DMFINANC.TRel.SQL.Add(' AND ((MOVBANCO.DTMOV>=:DATA1) And (MOVBANCO.DTMOV<=:DATA2))');
			DMFINANC.TRel.ParamByName('DATA1').AsDate:=StrToDAte(EdData1.Text);
			DMFINANC.TRel.ParamByName('DATA2').AsDate:=StrToDAte(EdData2.Text);
   	End;
   End;
   If RGSELECAO.ItemIndex=1
   Then Begin
   	//FILTRA PELA DATA DE VENCIMENTO
   	If (EDDATA1.Text<>'  /  /    ') AND (EDDATA2.Text<>'  /  /    ')
   	Then Begin
			DMFINANC.TRel.SQL.Add(' AND ((MOVBANCO.DTVENC>=:DATA1) And (MOVBANCO.DTVENC<=:DATA2))');
			DMFINANC.TRel.ParamByName('DATA1').AsDate:=StrToDAte(EdData1.Text);
			DMFINANC.TRel.ParamByName('DATA2').AsDate:=StrToDAte(EdData2.Text);
   	End;
   End;
   If RGSELECAO.ItemIndex=2
   Then Begin
   	//FILTRA PELA DATA DE VENCIMENTO
   	If (EDDATA1.Text<>'  /  /    ') AND (EDDATA2.Text<>'  /  /    ')
   	Then Begin
			DMFINANC.TRel.SQL.Add(' AND ((MOVBANCO.DTVENC>=:DATA1) And (MOVBANCO.DTVENC<=:DATA2))');
			DMFINANC.TRel.ParamByName('DATA1').AsDate:=StrToDAte(EdData1.Text);
			DMFINANC.TRel.ParamByName('DATA2').AsDate:=StrToDAte(EdData2.Text);
   	End;
   End;

   //FILTRA REGISTRO MOVIMENTADOS
   If RGSELECAO.ItemIndex=0
   Then Begin
		DMFINANC.TRel.SQL.Add(' AND (movbanco.fech='+#39+'S'+#39+')');
   End;
   //FILTRA REGISTRO NÃO MOVIMENTADOS
   If RGSELECAO.ItemIndex=1
   Then Begin
		DMFINANC.TRel.SQL.Add(' AND (movbanco.fech<>'+#39+'S'+#39+')');
   End;
   //FILTRA REGISTRO NÃO MOVIMENTADOS E VENCIDOS
   If RGSELECAO.ItemIndex=2
   Then Begin
		DMFINANC.TRel.SQL.Add(' AND (movbanco.fech<>'+#39+'S'+#39+') ');
		DMFINANC.TRel.SQL.Add(' AND (MOVBANCO.DTVENC<=:DTVENC) ');
       DMFINANC.TRel.ParamByName('DTVENC').AsDate:=DATE();
   End;
   DMFINANC.TRel.SQL.Add(' order by movbanco.cod_movbanco');
   DMFINANC.TRel.SQL.Text;
   DMFINANC.TRel.Open;
	FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfMovBanco.frf');
   FSRel.ShowReport;
end;

procedure TFRelMovBanco.FormActivate(Sender: TObject);
begin
  inherited;
  	FDSCaixa.DataSource:=DMFINANC.DRel;
   DBCTACOR.ListSource:=DMBANCO.DWCtaCor;
   DBCTACOR.DataField:='DESCBANCO; NUMCTACOR';
	XCONTA:=-1;   
end;

procedure TFRelMovBanco.BtnCancelarClick(Sender: TObject);
begin
  inherited;
   BtnFecha.Click;
end;

procedure TFRelMovBanco.RGSELECAOClick(Sender: TObject);
begin
  inherited;
	If RGSELECAO.ItemIndex=0
   Then Begin
       LDATA.Caption:='DATA DE MOVIMENTAÇÃO';
   End
   Else Begin
       LDATA.Caption:='DATA DE VENCIMENTO';
   End;
end;

procedure TFRelMovBanco.FrmContaBTNMINUSClick(Sender: TObject);
begin
  inherited;
   //Codigo da tabela local =0
   XConta:=-1;
   FrmConta.EDCodigo.Text:='';
   FrmConta.EdDescricao.Text:='';
	FrmConta.Repaint;   
end;

procedure TFRelMovBanco.FrmContaBTNOPENClick(Sender: TObject);
begin
  inherited;
   // armazena o tipo do plano de conta que vai ser filtrado. Se for "C" buscará apenas contas de creditos, e se for "D" irá selecionar apenas contas de despesa. Estando sem valor, o formulario vai trazer todas as contas
   XTIPO_CONTA := '';

	//LIBERA TODAS OS ESTADOS PARA CONSUTA
	filtraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_FILIAL', '', ' (COD_FILIAL = '+FMenu.LCODEMPRESA.Caption+') AND (TIPO='+#39+'N'+#39+') ORDER BY CLASSIFICACAO');

   If AbrirForm(TFConsPlnCta, FConsPlnCta, 1)='Selected'
   Then Begin
      	XConta:=DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger;
      	FrmConta.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
      	FrmConta.EDCodigo.text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
		FrmConta.Repaint;       
   End;
end;

procedure TFRelMovBanco.FrmContaEDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	If Key = #13
   Then Begin
 		If FrmConta.EDCodigo.Text<>''
       Then Begin
			//LIBERA TODAS OS ESTADOS PARA CONSUTA
			If filtraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_FILIAL', '', ' (COD_FILIAL = '+FMenu.LCODEMPRESA.Caption+') AND (TIPO='+#39+'N'+#39+') And (CLASSIFICACAO='+#39+FrmConta.EDCodigo.Text+#39+ ')')=True
			Then Begin
		      	XConta:=DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger;
		      	FrmConta.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
		      	FrmConta.EDCodigo.text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
	        End
	        Else Begin
		      	XConta:=-1;
		      	FrmConta.EdDescricao.Text:='';
		      	FrmConta.EDCodigo.text:='';
           End;
	    End
       Else Begin
	      	XConta:=0;
	      	FrmConta.EdDescricao.Text:='';
	      	FrmConta.EDCodigo.text:='';
       End;
       FrmConta.Repaint;
   End;
end;

end.
