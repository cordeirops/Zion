unit URelMovBancoPeriodo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPadraoRelatorio, Grids, DBGrids, ExtCtrls, QRCtrls, QuickRpt,
  FR_DSet, FR_DBSet, FR_Class, StdCtrls, Buttons, DrLabel, jpeg, Mask;

type
  TFRelMovBancoPeriodo = class(TFPadraoRelatorio)
    QRMovCaixaPer: TQuickRep;
    QRBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText3: TQRDBText;
    QRShape1: TQRShape;
    QRDBRichText1: TQRDBRichText;
    QRDBText2: TQRDBText;
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
    RGTipo: TRadioGroup;
    DBGrid2: TDBGrid;
    Label6: TLabel;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    Label7: TLabel;
    frDBDataSet1: TfrDBDataSet;
    frReport1: TfrReport;
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
    QRLabel23: TQRLabel;
    QRLabel12: TQRLabel;
    QRBand8: TQRBand;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    Saidas: TQRDBText;
    QRBand9: TQRBand;
    QRShape7: TQRShape;
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
    QRBand10: TQRBand;
    QRShape8: TQRShape;
    qrlsaldofechaud: TQRLabel;
    qrlentradasaud: TQRLabel;
    qrlsaidasaud: TQRLabel;
    QRDBText14: TQRDBText;
    GroupBox5: TGroupBox;
    Label2: TLabel;
    Label4: TLabel;
    EdDataIni: TMaskEdit;
    EdDataFim: TMaskEdit;
    QRDBText15: TQRDBText;
    QRLabel15: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText18: TQRDBText;
    GroupBox6: TGroupBox;
    cbEntradas: TCheckBox;
    cbSaidas: TCheckBox;
    procedure FormActivate(Sender: TObject);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure BtnVisualizarClick(Sender: TObject);
    procedure QRBand9BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand8BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand4BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRMovCaixaPerAuditBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRMovCaixaPerBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
    Procedure SelectCaixas;
	 Procedure SelectPeriodo;
	 Procedure ImpRelMovPeriodo;    
  public

    { Public declarations }

  end;

var
  FRelMovBancoPeriodo: TFRelMovBancoPeriodo;
  XTOTENT, XTOTSAI: Real;  

implementation

uses UDMEstoque, UDMMacs, UDMCaixa, UMenu, Alxorprn, Alxor32, AlxMessage;

{$R *.dfm}

Procedure TFRelMovBancoPeriodo.ImpRelMovPeriodo;
Begin
	DMMACS.TLoja.Edit;
   DMMACS.TLoja.FieldByName('TMP1').AsString:='Movimento Bancário: '+DMESTOQUE.Alx.FieldByName('DESCBANCO').AsString+' - '+DMESTOQUE.Alx.FieldByName('NUMCTACOR').AsString+#13+'Período : '+DMESTOQUE.Alx1.FieldByName('DATA_ABERT').AsString+' - '+DMESTOQUE.Alx1.FieldByName('DTFECH').AsString+#13+'Saldo Inicial: '+FormatFloat('0.00', DMESTOQUE.Alx1.FieldByName('SALDOINI').AsCurrency)+' - Saldo Final: '+FormatFloat('0.00', DMESTOQUE.Alx1.FieldByName('SALDOFIN').AsCurrency);
   DMMACS.TLoja.FieldByName('TMP2').AsString:='Financeiro/Relatórios/Caixa/Por Período';
   DMMACS.TLoja.Post;
   DMMACS.Transaction.CommitRetaining;
	//ZERA VARIAVEIS
   XTOTENT:=0;
   XTOTSAI:=0;
   DMCAIXA.TRel.Close;
   DMCAIXA.TRel.SQL.Clear;
   DMCAIXA.TRel.SQL.Add(' SELECT * FROM MOVBANCO WHERE movbanco.cod_abbanco=:CODABCAIXA ');
   DMCAIXA.TRel.SQL.Add(' and ((movbanco.fech<>'+#39+'N'+#39+') OR (movbanco.fech is null)) ');
   DMCAIXA.TRel.SQL.Add(' and movbanco.estru ='+#39+'1'+#39);
   DMCAIXA.TRel.ParamByName('CODABCAIXA').AsInteger:=DMESTOQUE.Alx1.FieldByName('COD_ABBANCO').AsInteger;

   If (EdDataIni.Text <> '  /  /    ') and (EdDataFim.Text <> '  /  /    ')
   Then Begin
       DMCAIXA.TRel.SQL.Add(' and (movbanco.dtlanc between :data1 and :data2) ');
       DMCAIXA.TRel.ParamByName('data1').AsString := EdDataIni.Text;
       DMCAIXA.TRel.ParamByName('data2').AsString := EdDataFim.Text;
   End;

   //Edmar - 16/01/2015 - Adicionada as condições para buscar entre os lançamentos de entrada e/ou saída
   //caso ele não escolha nenhuma das duas opções, busca tanto entradas quanto saidas
   if NOT (cbSaidas.Checked) and (cbEntradas.Checked) then
   	DMCAIXA.TRel.SQL.Add(' AND (MOVBANCO.TIPOOP = ''ENTRADA'') ');

   if (cbSaidas.Checked) and NOT (cbEntradas.Checked) then
   	DMCAIXA.TRel.SQL.Add(' AND (MOVBANCO.TIPOOP = ''SAIDA'') ');

   DMCAIXA.TRel.SQL.Add(' order by  movbanco.dtvenc ');

   DMCAIXA.TRel.SQL.Text;
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

Procedure TFRelMovBancoPeriodo.SelectPeriodo;
Begin
   DMESTOQUE.Alx1.Close;
   DMESTOQUE.Alx1.SQL.Clear;
   DMESTOQUE.Alx1.SQL.Add('Select * from ABBANCO Where ABBANCO.cod_ctacor=:CODCAIXA ORDER BY  ABBANCO.fechado,  abbanco.dtfech  desc');
   DMESTOQUE.Alx1.ParamByName('CODCAIXA').AsString:=DMESTOQUE.Alx.FieldByName('COD_CTACOR').AsString;
   DMESTOQUE.Alx1.Open;
End;

Procedure TFRelMovBancoPeriodo.SelectCaixas;
Begin
   DMESTOQUE.Alx.Close;
   DMESTOQUE.Alx.SQL.Clear;
   DMESTOQUE.Alx.SQL.Add('SELECT * FROM VWCTACOR');
   DMESTOQUE.Alx.Open;
End;

procedure TFRelMovBancoPeriodo.FormActivate(Sender: TObject);
begin
  inherited;
	 Caption:='Relatório por período';  
	SelectCaixas;
   SelectPeriodo;
end;

procedure TFRelMovBancoPeriodo.DBGrid2CellClick(Column: TColumn);
begin
  inherited;
    SelectPeriodo;
end;

procedure TFRelMovBancoPeriodo.BtnVisualizarClick(Sender: TObject);
begin
  inherited;
	If FMenu.TIPOREL='RMOVBANCOPERIODO' Then
       ImpRelMovPeriodo;
end;

procedure TFRelMovBancoPeriodo.QRBand9BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
   qrlentradasaud.Caption:=FormatFloat('0.00', XTOTENT);
   qrlsaidasaud.Caption:=FormatFloat('0.00', XTOTSAI);
   qrlsaldofechaud.Caption:=FormatFloat('0.00', ((XTOTENT-XTOTSAI)+DMESTOQUE.Alx1.FieldByName('SALDOINI').AsCurrency));
end;

procedure TFRelMovBancoPeriodo.QRBand8BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
	If DMCAIXA.TRel.FieldByName('TIPOOP').AsString='ENTRADA'
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
end;

procedure TFRelMovBancoPeriodo.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
	If DMCAIXA.TRel.FieldByName('TIPOOP').AsString='ENTRADA'
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
end;

procedure TFRelMovBancoPeriodo.QRBand4BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
   LEntradas.Caption:=FormatFloat('0.00', XTOTENT);
   LSaidas.Caption:=FormatFloat('0.00', XTOTSAI);
   LSaldo.Caption:=FormatFloat('0.00', ((XTOTENT-XTOTSAI)+DMESTOQUE.Alx1.FieldByName('SALDOINI').AsCurrency));
end;

procedure TFRelMovBancoPeriodo.QRMovCaixaPerAuditBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  inherited;
   XTOTENT:=0;
   XTOTSAI:=0;
   qrlentradasaud.Caption:=FormatFloat('0.00', XTOTENT);
   qrlsaidasaud.Caption:=FormatFloat('0.00', XTOTSAI);
   qrlsaldofechaud.Caption:=FormatFloat('0.00', ((XTOTENT-XTOTSAI)+DMESTOQUE.Alx1.FieldByName('SALDOINI').AsCurrency));
   qrlResponsavel.Caption:=FMenu.EdUsuario.Text;
end;

procedure TFRelMovBancoPeriodo.QRMovCaixaPerBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  inherited;
   XTOTENT:=0;
   XTOTSAI:=0;
end;

end.
