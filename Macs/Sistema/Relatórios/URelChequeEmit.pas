unit URelChequeEmit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UPadrao, StdCtrls, Buttons, DBCtrls, ExtCtrls, Mask, ColorMaskEdit,
  TFlatHintUnit, jpeg, FR_Class, FR_DSet, FR_DBSet, DrLabel, UFrmBusca,
  frxClass, frxDBSet;

type
  TFRelChequeEmit = class(TFPadrao)
    FDSCaixa: TfrDBDataSet;
    FSRel: TfrReport;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    EDDATA1: TColorMaskEdit;
    EDDATA2: TColorMaskEdit;
    RGSELECAO: TRadioGroup;
    DBCTACOR: TDBLookupComboBox;
    GroupBox2: TGroupBox;
    GroupBox4: TGroupBox;
    BtnVisualizar: TBitBtn;
    GroupBox5: TGroupBox;
    BtnCancelar: TBitBtn;
    frDBDataSet1: TfrDBDataSet;
    frCompositeReport1: TfrCompositeReport;
    rgAgrupar: TRadioGroup;
    RGFiltro: TRadioGroup;
    FrmPessoaIni: TFrmBusca;
    FSRel1: TfrxReport;
    frxCheques: TfrxDBDataset;
    procedure FormActivate(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnVisualizarClick(Sender: TObject);
    procedure FrmPessoaIniBTNOPENClick(Sender: TObject);
    procedure FrmPessoaIniBTNMINUSClick(Sender: TObject);
    procedure FrmPessoaIniEDCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelChequeEmit: TFRelChequeEmit;
  XCodCliente : integer;

implementation

uses UDmBanco, UDMFinanc, AlxMessage, UMenu, UDMMacs, Alxor32, UDMPessoa,
  UCliente;

{$R *.DFM}

procedure TFRelChequeEmit.FormActivate(Sender: TObject);
begin
  inherited;
   FDSCaixa.DataSource:=DMFINANC.DRel;
   DBCTACOR.ListSource:=DMBANCO.DWCtaCor;
   DBCTACOR.DataField:='DESCBANCO; NUMCTACOR';
	IF FMenu.TIPOREL='CHEQUEEMIT'
   Then Begin
       Caption:='Relatório de Cheques Emitidos';
       DBCTACOR.Visible:=True;
       rgAgrupar.Visible := False;
	End;
  if FMenu.TIPOREL='RELCHEQUES' then
  begin
    Caption:='Relatório de Cheques';
    DBCTACOR.Visible:=False;
    rgAgrupar.Visible := True;
    rgAgrupar.ItemIndex := 0;
    FrmPessoaIni.Visible := true;
  end
  Else Begin
    Caption:='Relatório de Cheques Recebidos';
    DBCTACOR.Visible:=False;
    rgAgrupar.Visible := True;
    rgAgrupar.ItemIndex := 0;
    FrmPessoaIni.Visible := true;
  End;
end;

procedure TFRelChequeEmit.BtnCancelarClick(Sender: TObject);
begin
  inherited;
	Close;
end;

procedure TFRelChequeEmit.BtnVisualizarClick(Sender: TObject);
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
   DMMACS.TLoja.FieldByName('TMP1').AsString:='Dt. Ini.: '+EdData1.Text+' / Dt. Fin.: '+EdData2.Text+#13+ 'Tipo: '+TIPOSELEC;
   DMMACS.TLoja.Post;
   DMMACS.Transaction.CommitRetaining;
   FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');

   If (DBCTACOR.Text='') AND (FMenu.TIPOREL='CHEQUEEMIT')
   Then Begin
   	Mensagem('OPÇÃO BLOQUEADA', 'Informe uma Cta corrente para o relatório!', '', 1, 1, False, 'i');
       DBCTACOR.SetFocus;
       Exit;
   End;
   {
   Try
     DMMACS.TMP.SQL.Clear;
      DMMACS.TMP.SQL.Add('DELETE FROM TMP');
      DMMACS.TMP.ExecSQL;
      DMMACS.Transaction.CommitRetaining;
   Except
      DMMACS.Transaction.RollbackRetaining;
   End; }

   //INICIA PROCESSO DE INSERÇÃO DE SQL
   DMFINANC.TRel.Close;
   DMFINANC.TRel.SQL.Clear;
   DMMACS.TAlx.Close;
   DMMACS.TAlx.SQL.Clear;
   /////////////////////////////////
  	IF FMenu.TIPOREL='CHEQUEEMIT'
   Then Begin
   	//COMANDOS PARA CHEQUE EMITIDOS
   	DMFINANC.TRel.SQL.Add(' SELECT movbanco.dtlanc, movbanco.historico, movbanco.dtmov, movbanco.valor, movbanco.tipoop, ');
		DMFINANC.TRel.SQL.Add(' movbanco.cobranca, movbanco.dtvenc, movbanco.numcheque FROM movbanco ');
	    DMFINANC.TRel.SQL.Add(' Where (movbanco.cod_ctacor=:CODCTA) AND ((movbanco.tipoop='+#39+'SAIDA'+#39+') AND (movbanco.cobranca='+#39+'CHEQUE'+#39+'))');
		DMFINANC.TRel.ParamByName('CODCTA').AsString:=DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsString;

       DMMACS.TAlx.SQL.Add('SELECT count(movbanco.numcheque) as quantidade, sum(movbanco.valor) as valor from movbanco');
       DMMACS.TAlx.SQL.Add(' Where (movbanco.cod_ctacor=:CODCTA) AND ((movbanco.tipoop='+#39+'SAIDA'+#39+') AND (movbanco.cobranca='+#39+'CHEQUE'+#39+'))');
		DMMACS.TAlx.ParamByName('CODCTA').AsString:=DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsString;

   End;
   if FMenu.TIPOREL='RELCHEQUES' then
   begin
    DMFINANC.TRel.SQL.Add(' SELECT VWCHEQUEREC.NUMCHEQUE, VWCHEQUEREC.VALOR, VWCHEQUEREC.DTLANC, VWCHEQUEREC.FECH, VWCHEQUEREC.DTVENC,');
    DMFINANC.TRel.SQL.Add(' VWCHEQUEREC.HISTORICO, VWCHEQUEREC.EMITENTE, VWCHEQUEREC.DTMOV, VWCHEQUEREC.DESTINO, VWCHEQUEREC.COD_CHEQUEREC');
    DMFINANC.TRel.SQL.Add(' FROM VWCHEQUEREC');
    DMFINANC.TRel.SQL.Add(' WHERE VWCHEQUEREC.COD_CHEQUEREC > 0');

   If (EDDATA1.Text<>'  /  /    ') AND (EDDATA2.Text<>'  /  /    ')
   Then Begin
    {if RGSELECAO.ItemIndex = 0 then
     DMFINANC.TRel.SQL.Add(' AND ((VWCHEQUEREC.DTVENC>=:DATA1) And (VWCHEQUEREC.DTVENC<=:DATA2))'); }

    //if RGSELECAO.ItemIndex = 1 then
     DMFINANC.TRel.SQL.Add(' AND ((VWCHEQUEREC.DTLANC>=:DATA1) And (VWCHEQUEREC.DTLANC<=:DATA2))');

    {if RGSELECAO.ItemIndex = 2 then
     DMFINANC.TRel.SQL.Add(' AND ((VWCHEQUEREC.DTMOV>=:DATA1) And (VWCHEQUEREC.DTMOV<=:DATA2))');}

    DMFINANC.TRel.ParamByName('DATA1').AsDate:=StrToDAte(EdData1.Text);
    DMFINANC.TRel.ParamByName('DATA2').AsDate:=StrToDAte(EdData2.Text);
   end;

   //FILTRA REGISTRO MOVIMENTADOS
   If RGSELECAO.ItemIndex=0 Then
		DMFINANC.TRel.SQL.Add(' AND (VWCHEQUEREC.FECH='+#39+'S'+#39+')');

   //FILTRA REGISTRO NÃO MOVIMENTADOS
   If RGSELECAO.ItemIndex=1 Then
		DMFINANC.TRel.SQL.Add(' AND (VWCHEQUEREC.FECH<>'+#39+'S'+#39+')');

   //FILTRA REGISTRO  VENCIDOS
   If RGSELECAO.ItemIndex=2 Then
   Begin
		DMFINANC.TRel.SQL.Add(' AND (VWCHEQUEREC.FECH<>'+#39+'S'+#39+') ');
		DMFINANC.TRel.SQL.Add(' AND (VWCHEQUEREC.DTVENC<=:DTVENC) ');
    DMFINANC.TRel.ParamByName('DTVENC').AsDate:=DATE();
   End;

   DMFINANC.TRel.SQL.Text;
   DMFINANC.TRel.Open;

   if FrmPessoaIni.EdDescricao.Text <> '' then
    DMFINANC.TRel.SQL.Add(' AND (VWCHEQUEREC.EMITENTE ='+QuotedStr(FrmPessoaIni.EdDescricao.Text)+')');

   frxCheques.DataSource := DMFINANC.DRel;

   if (RGSELECAO.ItemIndex = 1) or (RGSELECAO.ItemIndex = 2) then
   begin
    FSRel1.LoadFromFile('C:\MZR\MACS\Rel\FrfMovChequeNMov.fr3');
    FSRel1.ShowReport;
   end
   else
   begin
    FSRel1.LoadFromFile('C:\MZR\MACS\Rel\FrfMovCheque.fr3');
    FSRel1.ShowReport;
   end;
   Exit; 
   end
   Else Begin
		//COMANDOS PARA CHEQUE RECEBIDO
   	DMFINANC.TRel.SQL.Add(' Select chequerec.emitente, movbanco.valor, banco.descbanco, chequerec.numagencia, ');
   	DMFINANC.TRel.SQL.Add(' chequerec.numconta, movbanco.numcheque, movbanco.dtlanc, movbanco.dtvenc, ');
   	DMFINANC.TRel.SQL.Add(' movbanco.dtmov, movbanco.historico ');

       If rgAgrupar.ItemIndex = 0 Then
          DMFINANC.TRel.SQL.Add(', movbanco.dtmov as padrao, banco.descbanco as padrao2')
       Else
           DMFINANC.TRel.SQL.Add(', banco.descbanco as padrao, movbanco.dtmov as padrao2');

   	DMFINANC.TRel.SQL.Add(' from chequerec ');


   	DMFINANC.TRel.SQL.Add(' Left join movbanco on chequerec.cod_movbanco=movbanco.cod_movbanco ');
   	DMFINANC.TRel.SQL.Add(' left join banco on chequerec.cod_banco=banco.cod_banc ');
   	DMFINANC.TRel.SQL.Add(' Where ((movbanco.tipoop='+#39+'ENTRADA'+#39+') AND (movbanco.cobranca='+#39+'CHEQUE'+#39+'))');

       DMMACS.TAlx.SQL.Add('SELECT count(movbanco.numcheque) as quantidade, sum(movbanco.valor) as valor, chequerec.cod_banco, banco.descbanco ');
       DMMACS.TAlx.SQL.Add(' from chequerec ');
   	DMMACS.TAlx.SQL.Add(' Left join movbanco on chequerec.cod_movbanco=movbanco.cod_movbanco ');
   	DMMACS.TAlx.SQL.Add(' left join banco on chequerec.cod_banco=banco.cod_banc ');
   	DMMACS.TAlx.SQL.Add(' Where ((movbanco.tipoop='+#39+'ENTRADA'+#39+') AND (movbanco.cobranca='+#39+'CHEQUE'+#39+'))');

   End;

   If (EDDATA1.Text<>'  /  /    ') AND (EDDATA2.Text<>'  /  /    ')
   Then Begin
      { if RGFiltro.ItemIndex = 0
       then begin
           DMFINANC.TRel.SQL.Add(' AND ((MOVBANCO.DTVENC>=:DATA1) And (MOVBANCO.DTVENC<=:DATA2))');
           DMMACS.TAlx.SQL.Add(' AND ((MOVBANCO.DTVENC>=:DATA1) And (MOVBANCO.DTVENC<=:DATA2))');
       end;
       if RGFiltro.ItemIndex = 1
       then begin
           DMFINANC.TRel.SQL.Add(' AND ((MOVBANCO.DTLANC>=:DATA1) And (MOVBANCO.DTLANC<=:DATA2))');
           DMMACS.TAlx.SQL.Add(' AND ((MOVBANCO.DTLANC>=:DATA1) And (MOVBANCO.DTLANC<=:DATA2))');
       end;
       if RGFiltro.ItemIndex = 2
       then begin
           DMFINANC.TRel.SQL.Add(' AND ((MOVBANCO.DTMOV>=:DATA1) And (MOVBANCO.DTMOV<=:DATA2))');
           DMMACS.TAlx.SQL.Add(' AND ((MOVBANCO.DTMOV>=:DATA1) And (MOVBANCO.DTMOV<=:DATA2))');
       end;}

       if RGSELECAO.ItemIndex = 0
       then begin
           DMFINANC.TRel.SQL.Add(' AND ((MOVBANCO.DTVENC>=:DATA1) And (MOVBANCO.DTVENC<=:DATA2))');
           DMMACS.TAlx.SQL.Add(' AND ((MOVBANCO.DTVENC>=:DATA1) And (MOVBANCO.DTVENC<=:DATA2))');
       end;
       if RGSELECAO.ItemIndex = 1
       then begin
           DMFINANC.TRel.SQL.Add(' AND ((MOVBANCO.DTLANC>=:DATA1) And (MOVBANCO.DTLANC<=:DATA2))');
           DMMACS.TAlx.SQL.Add(' AND ((MOVBANCO.DTLANC>=:DATA1) And (MOVBANCO.DTLANC<=:DATA2))');
       end;
       if RGSELECAO.ItemIndex = 2
       then begin
           DMFINANC.TRel.SQL.Add(' AND ((MOVBANCO.DTMOV>=:DATA1) And (MOVBANCO.DTMOV<=:DATA2))');
           DMMACS.TAlx.SQL.Add(' AND ((MOVBANCO.DTMOV>=:DATA1) And (MOVBANCO.DTMOV<=:DATA2))');
       end;

       DMFINANC.TRel.ParamByName('DATA1').AsDate:=StrToDAte(EdData1.Text);
       DMFINANC.TRel.ParamByName('DATA2').AsDate:=StrToDAte(EdData2.Text);
       DMMACS.TAlx.ParamByName('DATA1').AsDate:=StrToDAte(EdData1.Text);
       DMMACS.TAlx.ParamByName('DATA2').AsDate:=StrToDAte(EdData2.Text);
   end;

   // - 11/05/20009: abaixo comentado como funcionava
  { If RGSELECAO.ItemIndex=0
   Then Begin
   	//FILTRA PELA DATA DE MOVIMENTAÇÃO
       If (EDDATA1.Text<>'  /  /    ') AND (EDDATA2.Text<>'  /  /    ')
       Then Begin
       	DMFINANC.TRel.SQL.Add(' AND ((MOVBANCO.DTMOV>=:DATA1) And (MOVBANCO.DTMOV<=:DATA2))');
       	DMFINANC.TRel.ParamByName('DATA1').AsDate:=StrToDAte(EdData1.Text);
       	DMFINANC.TRel.ParamByName('DATA2').AsDate:=StrToDAte(EdData2.Text);
           // - 05/05/2009:    igual a de cima soh muda a query
           DMMACS.TAlx.SQL.Add(' AND ((MOVBANCO.DTMOV>=:DATA1) And (MOVBANCO.DTMOV<=:DATA2))');
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
           // - 05/05/2009:    igual a de cima soh muda a query
           DMMACS.TAlx.SQL.Add(' AND ((MOVBANCO.DTVENC>=:DATA1) And (MOVBANCO.DTVENC<=:DATA2))');
			DMMACS.TAlx.ParamByName('DATA1').AsDate:=StrToDAte(EdData1.Text);
			DMMACS.TAlx.ParamByName('DATA2').AsDate:=StrToDAte(EdData2.Text);
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
           // - 05/05/2009:    igual a de cima soh muda a query
           DMMACS.TAlx.SQL.Add(' AND ((MOVBANCO.DTVENC>=:DATA1) And (MOVBANCO.DTVENC<=:DATA2))');
			DMMACS.TAlx.ParamByName('DATA1').AsDate:=StrToDAte(EdData1.Text);
			DMMACS.TAlx.ParamByName('DATA2').AsDate:=StrToDAte(EdData2.Text);
   	End;
   End; }

   //FILTRA REGISTRO MOVIMENTADOS
   If RGSELECAO.ItemIndex=0
   Then Begin
		DMFINANC.TRel.SQL.Add(' AND (movbanco.fech='+#39+'S'+#39+')');

       DMMACS.TAlx.SQL.Add(' AND (movbanco.fech='+#39+'S'+#39+')');
   End;
   //FILTRA REGISTRO NÃO MOVIMENTADOS
   If RGSELECAO.ItemIndex=1
   Then Begin
		DMFINANC.TRel.SQL.Add(' AND (movbanco.fech<>'+#39+'S'+#39+')');

       DMMACS.TAlx.SQL.Add(' AND (movbanco.fech<>'+#39+'S'+#39+')');
   End;
   //FILTRA REGISTRO  VENCIDOS
   If RGSELECAO.ItemIndex=2
   Then Begin
		DMFINANC.TRel.SQL.Add(' AND (movbanco.fech<>'+#39+'S'+#39+') ');
		DMFINANC.TRel.SQL.Add(' AND (MOVBANCO.DTVENC<=:DTVENC) ');
       DMFINANC.TRel.ParamByName('DTVENC').AsDate:=DATE();

       DMMACS.TAlx.SQL.Add(' AND (movbanco.fech<>'+#39+'S'+#39+') ');
		DMMACS.TAlx.SQL.Add(' AND (MOVBANCO.DTVENC<=:DTVENC) ');
       DMMACS.TAlx.ParamByName('DTVENC').AsDate:=DATE();
   End;

   IF ((FMenu.TIPOREL ='CHEQUEEMIT') or (rgAgrupar.ItemIndex = 0))
   Then Begin
        DMFINANC.TRel.SQL.Add(' order by movbanco.dtmov');
   End
   Else Begin
        DMFINANC.TRel.SQL.Add(' order by chequerec.cod_banco, movbanco.dtmov');
   End;

   DMFINANC.TRel.SQL.Text;
   DMFINANC.TRel.Open;

   IF FMenu.TIPOREL <> 'CHEQUEEMIT'
   Then Begin
      DMMACS.TAlx.SQL.Add('group by chequerec.cod_banco, banco.descbanco order by banco.descbanco');
   End;
   DMMACS.TAlx.SQL.Text;
   DMMACS.TAlx.Open;


	IF FMenu.TIPOREL='CHEQUEEMIT' Then
		FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfMovChequeEmit.frf')
   Else
		FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfMovChequeRec.frf');

   FSRel.ShowReport;
end;

procedure TFRelChequeEmit.FrmPessoaIniBTNOPENClick(Sender: TObject);
begin
  inherited;
   filtraTabela(DMPESSOA.WCliente, 'VWCLIENTE', '', '', '');
   If AbrirForm(TFCliente, FCliente, 1)='Selected'
	 Then Begin
     XCodCliente:=DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;
     FrmPessoaIni.EdDescricao.Text:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
     FrmPessoaIni.EDCodigo.text:=DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString;
     FrmPessoaIni.Repaint;
	End;
end;

procedure TFRelChequeEmit.FrmPessoaIniBTNMINUSClick(Sender: TObject);
begin
  inherited;
  XCodCliente := -1;
  FrmPessoaIni.EdDescricao.Text:='';
  FrmPessoaIni.EDCodigo.text:='';
  FrmPessoaIni.Repaint;
end;

procedure TFRelChequeEmit.FrmPessoaIniEDCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  If Key=VK_RETURN
  Then Begin
   If FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_INTERNO', '', ' COD_INTERNO='+#39+FrmPessoaIni.EDCodigo.Text+#39)=True
   Then Begin//CASO CONSEGUIU SELECIONAR CLIENTE
    FrmPessoaIni.EDCodigo.Text := DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString;
    FrmPessoaIni.EdDescricao.Text := DMPESSOA.WCliente.FieldByName('NOME').AsString;
    XCodCliente := DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;
   End
   Else Begin//CASO NÃO CONSEGUIU SELECIONAR CLIENTE
    FrmPessoaIni.EDCodigo.Text := '';
    FrmPessoaIni.EdDescricao.Text := '';
    XCodCliente := -1;
   End;
  End;
end;

end.
