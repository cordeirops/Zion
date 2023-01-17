unit URelMovCaixa;

interface


uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPadraoRelatorio, FR_DSet, FR_DBSet, FR_Class, ExtCtrls,
  StdCtrls, Buttons, jpeg, Grids, DBGrids, Mask, QRCtrls, QuickRpt, DrLabel;

type
  TFRelMovCaixa = class(TFPadraoRelatorio)
    QRMovCaixaPer: TQuickRep;
    QRBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText3: TQRDBText;
    QRShape1: TQRShape;
    QRDBRichText1: TQRDBRichText;
    QRBand2: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRShape3: TQRShape;
    QRBand3: TQRBand;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    LOper: TQRLabel;
    QRBand4: TQRBand;
    QRShape2: TQRShape;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText7: TQRDBText;
    LEntradas: TQRLabel;
    LSaidas: TQRLabel;
    LSaldo: TQRLabel;
    QRBand7: TQRBand;
    QRShape6: TQRShape;
    QRDBText2: TQRDBText;
    Label1: TLabel;
    Label6: TLabel;
    DBGrid2: TDBGrid;
    Label7: TLabel;
    DBGrid1: TDBGrid;
    RGTipo: TRadioGroup;
    QRMovCaixaPerAudit: TQuickRep;
    QRBand5: TQRBand;
    QRDBText9: TQRDBText;
    QRLabel9: TQRLabel;
    QRDBText10: TQRDBText;
    QRShape4: TQRShape;
    QRDBRichText2: TQRDBRichText;
    QRDBText11: TQRDBText;
    QRBand6: TQRBand;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRShape5: TQRShape;
    QRBand8: TQRBand;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    Saidas: TQRDBText;
    QRBand9: TQRBand;
    QRShape7: TQRShape;
    qrlsaldoaud: TQRDBText;
    QRBand10: TQRBand;
    QRShape8: TQRShape;
    QRLabel23: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRDBText17: TQRDBText;
    qrlResponsavel: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel27: TQRLabel;
    qrlentradasaud: TQRLabel;
    qrlsaidasaud: TQRLabel;
    qrlsaldofechaud: TQRLabel;
    QRLabel15: TQRLabel;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    LCheque: TQRLabel;
    LOutro: TQRLabel;
    LOutro1: TQRLabel;
    LCheque1: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    BitBtn1: TBitBtn;
    PCaixa: TPanel;
    DBGCaixa: TDBGrid;
    BtnSelecionar: TBitBtn;
    BtnCancCaixa: TBitBtn;
    QRDBText18: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel13: TQRLabel;
    LCartao: TQRLabel;
    QRLabel22: TQRLabel;
    LCartao1: TQRLabel;
    QRCARTAO: TQuickRep;
    QRBand11: TQRBand;
    QRDBText16: TQRDBText;
    QRLabel28: TQRLabel;
    QRDBText19: TQRDBText;
    QRShape9: TQRShape;
    QRDBRichText3: TQRDBRichText;
    QRDBText20: TQRDBText;
    QRBand12: TQRBand;
    QRLabel29: TQRLabel;
    QRLabel32: TQRLabel;
    QRShape10: TQRShape;
    QRLabel34: TQRLabel;
    QRBand13: TQRBand;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRBand14: TQRBand;
    QRShape11: TQRShape;
    QRBand15: TQRBand;
    QRShape12: TQRShape;
    QRDBText26: TQRDBText;
    QRLabel35: TQRLabel;
    QRLabel44: TQRLabel;
    QRDBText23: TQRDBText;
    CartaoEntradas: TQRDBText;
    QRLabel33: TQRLabel;
    qrTotCR: TQRLabel;
    qrTotDB: TQRLabel;
    QRLabel37: TQRLabel;
    qrTotalGeral: TQRLabel;
    QRLabel49: TQRLabel;
    QRDBText24: TQRDBText;
    QRCARTAOAUD: TQuickRep;
    QRBand16: TQRBand;
    QRDBText25: TQRDBText;
    QRLabel36: TQRLabel;
    QRDBText27: TQRDBText;
    QRShape13: TQRShape;
    QRDBRichText4: TQRDBRichText;
    QRDBText28: TQRDBText;
    QRBand17: TQRBand;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRShape14: TQRShape;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRBand18: TQRBand;
    QRDBText29: TQRDBText;
    QRDBText30: TQRDBText;
    QRDBText31: TQRDBText;
    CartaoEntradasAud: TQRDBText;
    QRDBText33: TQRDBText;
    QRBand19: TQRBand;
    QRShape15: TQRShape;
    QRLabel45: TQRLabel;
    QrTotCrAud: TQRLabel;
    QrTotDbAud: TQRLabel;
    QRLabel48: TQRLabel;
    QrTotGeralAud: TQRLabel;
    QRBand20: TQRBand;
    QRShape16: TQRShape;
    QRDBText34: TQRDBText;
    qrResponsavelCartao: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel50: TQRLabel;
    QRDBText35: TQRDBText;
    QRLabel51: TQRLabel;
    QRLabel52: TQRLabel;
    procedure FormActivate(Sender: TObject);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure BtnVisualizarClick(Sender: TObject);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand4BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRMovCaixaPerBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRMovCaixaPerAuditBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand8BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand9BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure BitBtn1Click(Sender: TObject);
    procedure BtnSelecionarClick(Sender: TObject);
    procedure BtnCancCaixaClick(Sender: TObject);
  private
    { Private declarations }
    Procedure SelectCaixas;
    Procedure SelectPeriodo;
    Procedure ImpRelMovPeriodo;
    Procedure ImpRelMovPeriodoCartao;    
  public
    { Public declarations }
  end;

var
  FRelMovCaixa: TFRelMovCaixa;
  xGerador: String;
  XEntCh, XSaidaCh, XEntCard, XSaidaCard, XTOTCARTAO: Real;
  XSaidaOut, XEntOut, XTOTENT, XTOTSAI, XTOTCHEQUE, XTOTOUTRO: Real;
  xTotCartaoCr, xTotCartaoDb: Real;

implementation

uses UDMCaixa, UDMEstoque, UMenu, AlxMessage, DB, UDMMacs, Alxor32,
  UDMFinanc, UMDO;

{$R *.dfm}

Procedure TFRelMovCaixa.ImpRelMovPeriodo;
Begin
	xGerador := 'MOVPERIODO';
	DMMACS.TLoja.Edit;
   DMMACS.TLoja.FieldByName('TMP1').AsString:='Movimento do Caixa: '+DMESTOQUE.Alx.FieldByName('DESCRICAO').AsString+#13+'Período : '+DMESTOQUE.Alx1.FieldByName('DTABERTURA').AsString+' - '+DMESTOQUE.Alx1.FieldByName('DTFECHA').AsString+#13+'Saldo Inicial: '+FormatFloat('0.00', DMESTOQUE.Alx1.FieldByName('SALDOINI').AsCurrency)+' - Saldo Final: '+FormatFloat('0.00', DMESTOQUE.Alx1.FieldByName('SALDOFIN').AsCurrency);
   DMMACS.TLoja.FieldByName('TMP2').AsString:='Financeiro/Relatórios/Caixa/Por Período';
   DMMACS.TLoja.Post;
   DMMACS.Transaction.CommitRetaining;
	//ZERA VARIAVEIS
   XTOTENT:=0;
   XTOTSAI:=0;
   DMCAIXA.TRel.Close;
   DMCAIXA.TRel.SQL.Clear;
   DMCAIXA.TRel.SQL.Add('SELECT * FROM LANCAIXA WHERE LANCAIXA.COD_ABCAIXA=:CODABCAIXA  order by lancaixa.cod_lanc');
   DMCAIXA.TRel.ParamByName('CODABCAIXA').AsInteger:=DMESTOQUE.Alx1.FieldByName('COD_ABCAIXA').AsInteger;
   DMCAIXA.TRel.Open;
   If Not DMCAIXA.TRel.IsEmpty
   Then Begin
   	If RGTipo.ItemIndex=0 Then
       	QRMovCaixaPer.Preview
       Else
       	QRMovCaixaPerAudit.Preview;
   End
   else Begin
       Mensagem('ATENÇÃO', 'Relatório Retornou Vazio !', '', 1, 1, False, 'a');
   End;
End;

Procedure TFRelMovCaixa.SelectCaixas;
Begin
   DMESTOQUE.Alx.Close;
   DMESTOQUE.Alx.SQL.Clear;
   DMESTOQUE.Alx.SQL.Add('SELECT * FROM CAIXA');
   DMESTOQUE.Alx.Open;
End;

Procedure TFRelMovCaixa.SelectPeriodo;
Begin
   DMESTOQUE.Alx1.Close;
   DMESTOQUE.Alx1.SQL.Clear;
   DMESTOQUE.Alx1.SQL.Add('Select * from abcaixa Where abcaixa.cod_caixa=:CODCAIXA ORDER BY  abcaixa.fechado, abcaixa.dtfecha desc');
   DMESTOQUE.Alx1.ParamByName('CODCAIXA').AsString:=DMESTOQUE.Alx.FieldByName('COD_CAIXA').AsString;
   DMESTOQUE.Alx1.Open;
End;

procedure TFRelMovCaixa.FormActivate(Sender: TObject);
begin
  inherited;
	 Caption:='Rel. Movimento de Caixa';  
   PCaixa.Visible:=false;
   PCaixa.SendToBack;
	SelectCaixas;
   SelectPeriodo;
end;

procedure TFRelMovCaixa.DBGrid2CellClick(Column: TColumn);
begin
  inherited;
   SelectPeriodo;
end;

procedure TFRelMovCaixa.BtnVisualizarClick(Sender: TObject);
begin
  inherited;
	If FMenu.TIPOREL='RCAIXAPERIODO' Then
   begin
       ImpRelMovPeriodo;
		ImpRelMovPeriodoCartao;       
   end;
end;

procedure TFRelMovCaixa.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
	if xGerador = 'MOVPERIODOCARTAO' then
   begin
		if DMCAIXA.TRel.FieldByName('COBRANCA').AsString='C - Cartão' then
       begin
       	CartaoEntradas.Left := 625;
           CartaoEntradasAud.Left := 625;
           xTotCartaoCr := xTotCartaoCr + StrToCurr(FormatFloat('0.00', DMCAIXA.TRel.FieldByName('VALOR').AsCurrency));
       end
       else
       begin
			 CartaoEntradas.Left := 685;
            CartaoEntradasAud.Left := 685;
            xTotCartaoDb := xTotCartaoDb + StrToCurr(FormatFloat('0.00', DMCAIXA.TRel.FieldByName('VALOR').AsCurrency));            
       end;
       XTOTENT := XTOTENT + DMCAIXA.TRel.FieldByName('VALOR').AsCurrency;
   end
   else
   begin
       If DMCAIXA.TRel.FieldByName('TIPCAI').AsString='E'
       Then Begin
    //       Entradas.Visible:=True;
    //       Saidas.Visible:=False;
           Saidas.Left:=505;
           XTOTENT:=XTOTENT+DMCAIXA.TRel.FieldByName('VALOR').AsCurrency;
           LOper.Caption:='+';
       End
       Else Begin
    //       Entradas.Visible:=False;
    //       Saidas.Visible:=True;
           Saidas.Left:=595;
           XTOTSAI:=XTOTSAI+DMCAIXA.TRel.FieldByName('VALOR').AsCurrency;
           LOper.Caption:='-';
       End;
       IF (DMCAIXA.TRel.FieldByName('TIPO').AsString='CHEQUE') OR (DMCAIXA.TRel.FieldByName('TIPO').AsString='Cheque')
       then begin
           if DMCAIXA.TRel.FieldByName('ESTRU').AsString = '1' then
           begin
               if DMCAIXA.TRel.FieldByName('TIPCAI').AsString='E' then
                   XEntCh:=XEntCh+DMCAIXA.TRel.FieldByName('VALOR').AsCurrency
               else
                   XSaidaCh:=XSaidaCh+DMCAIXA.TRel.FieldByName('VALOR').AsCurrency;
           end;

       end
       else begin
           if (DMCAIXA.TRel.FieldByName('TIPO').AsString='CARTÃO') OR (DMCAIXA.TRel.FieldByName('TIPO').AsString='Cartão')
           then begin
               if DMCAIXA.TRel.FieldByName('ESTRU').AsString = '1' then
               begin
                   if DMCAIXA.TRel.FieldByName('TIPCAI').AsString='E' then
                      XEntCard:=XEntCard+DMCAIXA.TRel.FieldByName('VALOR').AsCurrency
                   else
                      XSaidaCard:=XSaidaCard+DMCAIXA.TRel.FieldByName('VALOR').AsCurrency;
               end;

           end
           else begin
               if DMCAIXA.TRel.FieldByName('TIPCAI').AsString='E' then
                  XEntOut:=XEntOut+DMCAIXA.TRel.FieldByName('VALOR').AsCurrency
               else
                  XSaidaOut:=XSaidaOut+DMCAIXA.TRel.FieldByName('VALOR').AsCurrency;
           end;
       end;
   end;
end;

procedure TFRelMovCaixa.QRBand4BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
	if xGerador = 'MOVPERIODOCARTAO' then
   begin  
   	if RGTipo.ItemIndex = 0 Then//normal
       begin
       	qrTotCR.Caption := FormatFloat('0.00', xTotCartaoCr);
       	qrTotDB.Caption := FormatFloat('0.00', xTotCartaoDb);
       end
       else
       begin//auditado
			QrTotCrAud.Caption := FormatFloat('0.00', xTotCartaoCr);
       	QrTotDbAud.Caption := FormatFloat('0.00', xTotCartaoDb);
       end;
     	qrTotalGeral.Caption := FormatFloat('0.00', XTOTENT);
     	QrTotGeralAud.Caption := FormatFloat('0.00', XTOTENT);
   end
   else
   begin
       LEntradas.Caption:=FormatFloat('0.00', XTOTENT);
       LSaidas.Caption:=FormatFloat('0.00', XTOTSAI);
       LSaldo.Caption:=FormatFloat('0.00', ((XTOTENT-XTOTSAI)+DMESTOQUE.Alx1.FieldByName('SALDOINI').AsCurrency));
       //Paulo 13/09/2011: Calcula o total de outros
       XTOTOUTRO:=XEntOut - XSaidaOut;
       LOutro.Caption:=FormatFloat('0.00', XTOTOUTRO);
       //Paulo 13/09/2011: Calcula o total de cheque
       XTOTCHEQUE:=XEntCh - XSaidaCh;
       LCheque.Caption:=FormatFloat('0.00',XTOTCHEQUE );
       //Paulo 13/09/2011: Calcula o total de cartão
       XTOTCARTAO:=XEntCard - XSaidaCard;
       LCartao.Caption:=FormatFloat('0.00',XTOTCARTAO );
   end;
end;

procedure TFRelMovCaixa.QRMovCaixaPerBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  inherited;
   XTOTENT:=0;
   XTOTSAI:=0;
   XTOTCHEQUE:=0;
   XTOTOUTRO:=0;
   XTOTCARTAO:=0;
   XEntOut:=0;
   XSaidaOut:=0;
   XEntCh:=0;
   XSaidaCh:=0;
   XEntCard:=0;
   XSaidaCard:=0;
   xTotCartaoCr:=0;
   xTotCartaoDb:=0;
end;

procedure TFRelMovCaixa.QRMovCaixaPerAuditBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  inherited;
   XTOTENT:=0;
   XTOTSAI:=0;
   qrlentradasaud.Caption:=FormatFloat('0.00', XTOTENT);
   qrlsaidasaud.Caption:=FormatFloat('0.00', XTOTSAI);
   qrlsaldofechaud.Caption:=FormatFloat('0.00', ((XTOTENT-XTOTSAI)+DMESTOQUE.Alx1.FieldByName('SALDOINI').AsCurrency));
   qrlResponsavel.Caption:=FMenu.EdUsuario.Text;
   XTOTCHEQUE:=0;
   XTOTOUTRO:=0;
   XEntOut:=0;
   XSaidaOut:=0;
   XEntCh:=0;
   XSaidaCh:=0;
   XEntCard:=0;
   XSaidaCard:=0;
end;

procedure TFRelMovCaixa.QRBand8BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
	If DMCAIXA.TRel.FieldByName('TIPCAI').AsString='E'
   Then Begin
//       Entradas.Visible:=True;
//       Saidas.Visible:=False;
       Saidas.Left:=505;
       XTOTENT:=XTOTENT+DMCAIXA.TRel.FieldByName('VALOR').AsCurrency;
   End
   Else Begin
//       Entradas.Visible:=False;
//       Saidas.Visible:=True;
       Saidas.Left:=595;
       XTOTSAI:=XTOTSAI+DMCAIXA.TRel.FieldByName('VALOR').AsCurrency;
   End;
   IF (DMCAIXA.TRel.FieldByName('TIPO').AsString='CHEQUE') OR (DMCAIXA.TRel.FieldByName('TIPO').AsString='Cheque')
   then begin
       if DMCAIXA.TRel.FieldByName('ESTRU').AsString = '1' then
       begin
           if DMCAIXA.TRel.FieldByName('TIPCAI').AsString='E' then
               XEntCh:=XEntCh+DMCAIXA.TRel.FieldByName('VALOR').AsCurrency
           else
               XSaidaCh:=XSaidaCh+DMCAIXA.TRel.FieldByName('VALOR').AsCurrency;
       end;

   end
   else begin
       if (DMCAIXA.TRel.FieldByName('TIPO').AsString='CARTÃO') OR (DMCAIXA.TRel.FieldByName('TIPO').AsString='Cartão')
       then begin
           if DMCAIXA.TRel.FieldByName('ESTRU').AsString = '1' then
           begin
               if DMCAIXA.TRel.FieldByName('TIPCAI').AsString='E' then
                  XEntCard:=XEntCard+DMCAIXA.TRel.FieldByName('VALOR').AsCurrency
               else
                  XSaidaCard:=XSaidaCard+DMCAIXA.TRel.FieldByName('VALOR').AsCurrency;
           end;

       end
       else begin
           if DMCAIXA.TRel.FieldByName('TIPCAI').AsString='E' then
              XEntOut:=XEntOut+DMCAIXA.TRel.FieldByName('VALOR').AsCurrency
           else
              XSaidaOut:=XSaidaOut+DMCAIXA.TRel.FieldByName('VALOR').AsCurrency;
       end;
   end;
end;

procedure TFRelMovCaixa.QRBand9BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
   qrlentradasaud.Caption:=FormatFloat('0.00', XTOTENT);
   qrlsaidasaud.Caption:=FormatFloat('0.00', XTOTSAI);
   qrlsaldofechaud.Caption:=FormatFloat('0.00', ((XTOTENT-XTOTSAI)+DMESTOQUE.Alx1.FieldByName('SALDOINI').AsCurrency));
   //Paulo 13/09/2011: Calcula o total de outros
   XTOTOUTRO:=XEntOut - XSaidaOut;
   LOutro1.Caption:=FormatFloat('0.00', XTOTOUTRO);
   //Paulo 13/09/2011: Calcula o total de cheque
   XTOTCHEQUE:=XEntCh - XSaidaCh;
   LCheque1.Caption:=FormatFloat('0.00',XTOTCHEQUE );
   //Paulo 13/09/2011: Calcula o total de cartão
   XTOTCARTAO:=XEntCard - XSaidaCard;
   LCartao1.Caption:=FormatFloat('0.00',XTOTCARTAO );
end;

procedure TFRelMovCaixa.BitBtn1Click(Sender: TObject);
begin
  inherited;
   // - 18/05/2009: transferência de cheques de um caixa para outro
   DMCAIXA.TCaixa.Close;
   DMCAIXA.TCaixa.SQL.Clear;
   DMCAIXA.TCaixa.SQL.Add('select * from caixa where caixa.cod_caixa <> :COD');
   DMCAIXA.TCaixa.ParamByName('COD').AsInteger:=DMESTOQUE.Alx.fieldByName('COD_CAIXA').AsInteger;
   DMCAIXA.TCaixa.Open;

   PCaixa.Visible:=True;
   PCaixa.BringToFront;
end;

procedure TFRelMovCaixa.BtnSelecionarClick(Sender: TObject);
var
   xCod_abcaixa, xCod, XCOD_CONTABANCO, XCodLancCaixa :Integer;
   xvalor :Real;
   xHistorico, xCodAbCaixaLogado, xCodCaixaLogado:String;
begin
  inherited;
   //Edmar - 18/07/2014 - Armazena temporariamente o codigo do abcaixa e do caixa logado para retornar corretamente
   //quando a operação for finalizada
   xCodAbCaixaLogado := FMenu.LABCAIXA.Caption;
	xCodCaixaLogado := FMenu.LCODCAIXA.Caption;

   If DMCAIXA.TCaixa.FieldByName('COD_CAIXA').AsString = xCodCaixaLogado
   Then Begin
       MessageDlg('O caixa de destino selecionado é o mesmo caixa de origem.'+#13+#10+'A transferência foi cancelada.', mtWarning, [mbOK], 0);
       Exit;
   End;

   DMCAIXA.TAlx.Close;
   DMCAIXA.TAlx.SQL.Clear;
   DMCAIXA.TAlx.SQL.Add('SELECT * FROM ABCAIXA WHERE (COD_CAIXA=:CODCAIXA) AND (FECHADO='+#39+'N'+#39+')');
   DMCAIXA.TAlx.ParamByName('CODCAIXA').AsString:=DMCAIXA.TCaixa.FieldByName('COD_caixa').AsString;
   DMCAIXA.TAlx.Open;

   If DMCAIXA.TAlx.IsEmpty
   Then Begin
       Mensagem('  I N F O R M A Ç Ã O  ', 'Este caixa encontra-se fechado!', '', 1,1, false, 'I');
   End
   else begin
        XCOD_CONTABANCO:=DMCAIXA.TAlx.FieldByName('COD_ABCAIXA').AsInteger;

        DMCAIXA.TAlx.Close;
        DMCAIXA.TAlx.SQL.Clear;
        DMCAIXA.TAlx.SQL.Add(' SELECT LANCAIXA.* FROM LANCAIXA ');
        DMCAIXA.TAlx.SQL.Add(' LEFT JOIN ABCAIXA ON LANCAIXA.COD_ABCAIXA = ABCAIXA.COD_ABCAIXA ');
        DMCAIXA.TAlx.SQL.Add(' WHERE (LANCAIXA.TIPO = ''CHEQUE'') AND (ABCAIXA.COD_CAIXA = :CAIXA) AND (ABCAIXA.FECHADO = ''N'') ');
        DMCAIXA.TAlx.ParamByName('CAIXA').AsString := FMenu.LCODCAIXA.Caption;
        DMCAIXA.TAlx.Open;
        DMCAIXA.TAlx.First;

        if DMCAIXA.TAlx.IsEmpty then
        begin
        	Mensagem(' I N F O R M A Ç Õ E S ', 'O caixa não possuí cheques para serem transferidos.', '', 1, 1, False, 'I');
           PCaixa.Visible := False;
           PCaixa.SendToBack;
           Exit;
        end;

        while not DMCAIXA.TAlx.Eof do
        begin
        	 XCodLancCaixa:=(DMCAIXA.TAlx.FieldByName('COD_GERADOR').AsInteger);

            DMFINANC.TAlx.Close;
            DMFINANC.TAlx.SQL.Clear;
            DMFINANC.TAlx.SQL.Add(' SELECT * FROM MOVBANCO ');
            DMFINANC.TAlx.SQL.Add(' LEFT JOIN CHEQUEREC ON MOVBANCO.COD_MOVBANCO = CHEQUEREC.COD_MOVBANCO ');
            DMFINANC.TAlx.SQL.Add(' WHERE (CHEQUEREC.COD_CHEQUEREC = :CODCHEQUE)');
            DMFINANC.TAlx.ParamByName('CODCHEQUE').AsInteger:= XCodLancCaixa;
            DMFINANC.TAlx.Open;

            If DMFINANC.TAlx.FieldByName('FECH').AsString = 'S'
            Then Begin
               Mensagem('  I N F O R M A Ç Ã O  ', 'O cheque '+DMFINANC.TAlx.FieldByName('NUMCHEQUE').AsString+' já foi movimentado e não poderá ser transferido de caixa!', '', 1,1, false, 'I');
            End
            else begin
               MDO.Query.Close;
               MDO.Query.SQL.Clear;
               MDO.Query.SQL.Add('update lancaixa set lancaixa.cod_abcaixa =:CODABCAIXA ');
               MDO.Query.SQL.Add('where lancaixa.cod_lanc = '+(DMCAIXA.TAlx.FieldByName('COD_LANC').AsString));
               MDO.Query.ParamByName('CODABCAIXA').AsInteger:=XCOD_CONTABANCO;
               MDO.Query.ExecSQL;
            end;
            DMCAIXA.TAlx.Next;
        end;

        try
        	MDO.Transac.CommitRetaining;

        	Mensagem('  I N F O R M A Ç Ã O  ', 'Cheque transferido com sucesso!', '', 1,1, false, 'I');
        except
        	MDO.Transac.RollbackRetaining;
        end;
        //
        DMCAIXA.TLanCaixa.Close;
        DMCAIXA.TLanCaixa.SQL.Clear;
        DMCAIXA.TLanCaixa.SQL.Add('select * from lancaixa');
        DMCAIXA.TLanCaixa.Open;
        //
        DMCAIXA.WLancCaixa.Close;
        DMCAIXA.WLancCaixa.SQL.Clear;
        DMCAIXA.WLancCaixa.SQL.Add('select * from vwlancaixa');
        DMCAIXA.WLancCaixa.SQL.Add('where vwlancaixa.cod_abcaixa = :COD');
        DMCAIXA.WLancCaixa.SQL.Add('ORDER BY COD_LANC DESC');
        DMCAIXA.WLancCaixa.ParamByName('COD').AsString:=FMenu.LABCAIXA.Caption;
        DMCAIXA.WLancCaixa.Open;
        //
        PCaixa.Visible:=False;
        PCaixa.SendToBack;
   end;
end;

procedure TFRelMovCaixa.BtnCancCaixaClick(Sender: TObject);
begin
  inherited;
   PCaixa.Visible:=False;
   PCaixa.SendToBack;
end;

procedure TFRelMovCaixa.ImpRelMovPeriodoCartao;
begin
	xGerador := 'MOVPERIODOCARTAO';
	DMMACS.TLoja.Edit;
   DMMACS.TLoja.FieldByName('TMP1').AsString:='Movimento do Caixa: '+DMESTOQUE.Alx.FieldByName('DESCRICAO').AsString+#13+'Período : '+DMESTOQUE.Alx1.FieldByName('DTABERTURA').AsString+' - '+DMESTOQUE.Alx1.FieldByName('DTFECHA').AsString+#13+'Saldo Inicial: '+FormatFloat('0.00', DMESTOQUE.Alx1.FieldByName('SALDOINI').AsCurrency)+' - Saldo Final: '+FormatFloat('0.00', DMESTOQUE.Alx1.FieldByName('SALDOFIN').AsCurrency);
   DMMACS.TLoja.FieldByName('TMP2').AsString:='Financeiro/Relatórios/Caixa/Por Período';
   DMMACS.TLoja.Post;
   DMMACS.Transaction.CommitRetaining;
	//ZERA VARIAVEIS
   XTOTENT:=0;
   XTOTSAI:=0;
   DMCAIXA.TRel.Close;
   DMCAIXA.TRel.SQL.Clear;
   DMCAIXA.TRel.SQL.Add('select parcelacr.numparc, parcelacr.historico, parcelacr.valor, parcelacr.COBRANCA, parcelacr.dtref, pessoa.nome from parcelacr ');
   DMCAIXA.TRel.SQL.Add(' left join ctareceber on ctareceber.cod_ctareceber = parcelacr.cod_ctareceber ');
   DMCAIXA.TRel.SQL.Add(' left join cliente on cliente.cod_cliente = ctareceber.cod_cliente ');
   DMCAIXA.TRel.SQL.Add(' left join pessoa on pessoa.cod_pessoa = cliente.cod_pessoa ');
   DMCAIXA.TRel.SQL.Add(' where (parcelacr.cod_abcaixa = :codabcaixa) and ');
   DMCAIXA.TRel.SQL.Add(' ((parcelacr.cobranca = ''C - Cartão'') or (parcelacr.cobranca = ''D - Cartão'')) order by parcelacr.dtref');
   DMCAIXA.TRel.ParamByName('codabcaixa').AsInteger := DMESTOQUE.Alx1.FieldByName('COD_ABCAIXA').AsInteger;
   DMCAIXA.TRel.Open;
   DMCAIXA.TRel.First;
	if not DMCAIXA.TRel.IsEmpty then
   begin
   	//Edmar - 10/04/2014 - teste se é o relatório auditado ou não
       if RGTipo.ItemIndex = 0 Then
		   	QRCARTAO.Preview
       else
       begin
       	qrResponsavelCartao.Caption := FMenu.EdUsuario.Text;
       	QRCARTAOAUD.Preview;
       end;
   end
   else                                                                         
		Mensagem('   A T E N Ç Ã O   ', 'O relatório de cartões retornou vazio', '', 1, 1, False, 'a');
end;

end.
