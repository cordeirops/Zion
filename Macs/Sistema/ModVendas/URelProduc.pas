unit URelProduc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UPadraoRelatorio, FR_DSet, FR_DBSet, FR_Class, ExtCtrls, TFlatHintUnit,
  StdCtrls, Buttons, jpeg, UFrmBusca, Mask, ColorMaskEdit, Qrctrls,
  QuickRpt, DrLabel;

type
  TFRelProduc = class(TFPadraoRelatorio)
    QrFchTec: TQuickRep;
    QRBand3: TQRBand;
    QRDBText6: TQRDBText;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape6: TQRShape;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel15: TQRLabel;
    QRSubDetail3: TQRSubDetail;
    QRDBText7: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRSubDetail4: TQRSubDetail;
    QRDBText25: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRBand4: TQRBand;
    QRLabel37: TQRLabel;
    QRBand5: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRShape5: TQRShape;
    QrLQtdM: TQRLabel;
    QrlVlrM: TQRLabel;
    QRBand6: TQRBand;
    QRLabel16: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRShape2: TQRShape;
    QRLabel6: TQRLabel;
    QrLQtdP: TQRLabel;
    QrlVlrP: TQRLabel;
    QRBand7: TQRBand;
    QRSysData3: TQRSysData;
    QRSysData4: TQRSysData;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRSubDetail1: TQRSubDetail;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRBand1: TQRBand;
    QRShape1: TQRShape;
    QrLQtdD: TQRLabel;
    QrLVlrD: TQRLabel;
    QRBand2: TQRBand;
    QRLVLRTOT: TQRLabel;
    QRLVLRUNIT: TQRLabel;
    QrFchProd: TQuickRep;
    QRBand8: TQRBand;
    QRDBText1: TQRDBText;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel32: TQRLabel;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    QRDBText29: TQRDBText;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRSubDetail2: TQRSubDetail;
    QRDBText30: TQRDBText;
    QRDBText31: TQRDBText;
    QRDBText32: TQRDBText;
    QRDBText33: TQRDBText;
    QRDBText34: TQRDBText;
    QRDBText35: TQRDBText;
    QRSubDetail5: TQRSubDetail;
    QRDBText36: TQRDBText;
    QRDBText37: TQRDBText;
    QRDBText38: TQRDBText;
    QRDBText39: TQRDBText;
    QRDBText40: TQRDBText;
    QRDBText41: TQRDBText;
    QRDBText42: TQRDBText;
    QRBand9: TQRBand;
    QRLabel43: TQRLabel;
    QRBand10: TQRBand;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRShape10: TQRShape;
    QrlQtdMP: TQRLabel;
    QrlVlrMP: TQRLabel;
    QRBand11: TQRBand;
    QRLabel51: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    QRLabel56: TQRLabel;
    QRLabel57: TQRLabel;
    QRLabel58: TQRLabel;
    QRShape11: TQRShape;
    QrlQtdPP: TQRLabel;
    QrlVlrPP: TQRLabel;
    QRBand12: TQRBand;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRLabel62: TQRLabel;
    QRLabel63: TQRLabel;
    QRLabel64: TQRLabel;
    QRDBText43: TQRDBText;
    QRDBText44: TQRDBText;
    QRSubDetail6: TQRSubDetail;
    QRDBText45: TQRDBText;
    QRDBText46: TQRDBText;
    QRDBText47: TQRDBText;
    QRDBText48: TQRDBText;
    QRBand13: TQRBand;
    QRShape12: TQRShape;
    QrlQtdDP: TQRLabel;
    QrlVlrDP: TQRLabel;
    QRBand14: TQRBand;
    QrlVlrTotP: TQRLabel;
    QrlVlrUnitP: TQRLabel;
    QRDBRichText1: TQRDBRichText;
    QRLabel49: TQRLabel;
    QRDBText49: TQRDBText;
    QrlVlrTotProduto: TQRLabel;
    PData: TPanel;
    Label1: TLabel;
    Label4: TLabel;
    EDData1: TColorMaskEdit;
    EdData2: TColorMaskEdit;
    FrmSubProduto1: TFrmBusca;
    FrmSubProduto2: TFrmBusca;
    RBSEMVALOR: TRadioButton;
    RBCOMVALOR: TRadioButton;
    procedure FormActivate(Sender: TObject);
    procedure FrmSubProduto1BTNMINUSClick(Sender: TObject);
    procedure FrmSubProduto1BTNOPENClick(Sender: TObject);
    procedure FrmSubProduto2BTNMINUSClick(Sender: TObject);
    procedure FrmSubProduto2BTNOPENClick(Sender: TObject);
    procedure FrmSubProduto1EDCodigoKeyPress(Sender: TObject;
      var Key: Char);
    procedure FrmSubProduto2EDCodigoKeyPress(Sender: TObject;
      var Key: Char);
    procedure BtnVisualizarClick(Sender: TObject);
    procedure QRBand3AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRSubDetail3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand6BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail4BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand5BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand8AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRSubDetail2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand11BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail5BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail6BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand13BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand14BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand10BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
                      
var
  FRelProduc: TFRelProduc;
  XSUBPROD1, XSUBPROD2: String;
  XTOTUNIT, XVLRTOT, XVIUNIT, XVITOT: Real;//Acumulador para relatório
implementation

uses UMenu, UDMEstoque, UProduto, Alxor32;

{$R *.DFM}

procedure TFRelProduc.FormActivate(Sender: TObject);
begin
  inherited;
   EDData1.Clear;
   EdData2.Clear ;

	If FMenu.TIPOREL='FCHTEC'
   Then Begin
       Caption:='Relatório de Ficha Técnica';
       PData.Visible:=False;
       RBCOMVALOR.Visible:=true;
       RBSEMVALOR.Visible:=true;
   End
   Else Begin
       Caption:='Relatório de Ficha de Produção';
       PData.Visible:=True;
       RBCOMVALOR.Visible:=false;
       RBSEMVALOR.Visible:=false;
   End;
end;

procedure TFRelProduc.FrmSubProduto1BTNMINUSClick(Sender: TObject);
begin
  inherited;
	XSUBPROD1:='0';
   FrmSubProduto1.EDCodigo.TEXT:='';
   FrmSubProduto1.EdDescricao.TEXT:='';
   FrmSubProduto1.Repaint;   
end;

procedure TFRelProduc.FrmSubProduto1BTNOPENClick(Sender: TObject);
begin
  inherited;
	filtraTabela(DMESTOQUE.WSimilar, 'VWSIMILAR', '', '', ' WHERE COD_LOJA='+FMenu.LCODLOJA.Caption+' ORDER BY COD_INTERNO');

   If AbrirForm(TFProduto, FProduto, 1)='Selected'
   Then Begin
	   XSUBPROD1:=DMESTOQUE.WSIMILAR.FieldByName('DESCRICAO').AsString;
      FrmSubProduto1.EdDescricao.Text:=DMESTOQUE.WSimilar.FieldByName('DESCRICAO').AsString;
      FrmSubProduto1.EDCodigo.text:=DMESTOQUE.WSimilar.FieldByName('COD_INTERNO').AsString;
      FrmSubProduto1.Repaint;      
   End;
end;

procedure TFRelProduc.FrmSubProduto2BTNMINUSClick(Sender: TObject);
begin
  inherited;
	XSUBPROD2:='0';
   FrmSubProduto2.EDCodigo.TEXT:='';
   FrmSubProduto2.EdDescricao.TEXT:='';
   FrmSubProduto2.Repaint;   
end;

procedure TFRelProduc.FrmSubProduto2BTNOPENClick(Sender: TObject);
begin
  inherited;
	filtraTabela(DMESTOQUE.WSimilar, 'VWSIMILAR', '', '', ' WHERE COD_LOJA='+FMenu.LCODLOJA.Caption+' ORDER BY COD_INTERNO');
   If AbrirForm(TFProduto, FProduto, 1)='Selected'
   Then Begin
	   XSUBPROD2:=DMESTOQUE.WSIMILAR.FieldByName('DESCRICAO').AsString;
      FrmSubProduto2.EdDescricao.Text:=DMESTOQUE.WSimilar.FieldByName('DESCRICAO').AsString;
      FrmSubProduto2.EDCodigo.text:=DMESTOQUE.WSimilar.FieldByName('COD_INTERNO').AsString;
      FrmSubProduto2.Repaint;      
   End;
end;

procedure TFRelProduc.FrmSubProduto1EDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	If Key = #13
   Then Begin
   	If FrmSubProduto1.EDCodigo.Text<>''
       Then Begin
	 	   If FiltraTabela(DMESTOQUE.WSIMILAR, 'VWSIMILAR', 'COD_INTERNO', FrmSubProduto1.EDCodigo.Text, '')=True
	       Then Begin //Slecionou o registro procurado
	       		XSUBPROD1:=DMESTOQUE.WSimilar.FieldByName('DESCRICAO').AsString;
           	FrmSubProduto1.EDCodigo.text:=DMESTOQUE.WSimilar.FieldByName('COD_INTERNO').AsString;
           	FrmSubProduto1.EdDescricao.Text:=DMESTOQUE.WSimilar.FieldByName('DESCRICAO').AsString;
          End
          Else Begin
               XSUBPROD1:='0';
           	FrmSubProduto1.EDCodigo.Text:='';
           	FrmSubProduto2.EdDescricao.Text:='';
          End;
       End
       Else Begin
          XSUBPROD1:='0';
          FrmSubProduto1.EDCodigo.Text:='';
          FrmSubProduto1.EdDescricao.Text:='';
       End;
       FrmSubProduto1.Repaint;
   End;
end;

procedure TFRelProduc.FrmSubProduto2EDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	If Key = #13
   Then Begin
   	If FrmSubProduto2.EDCodigo.Text<>''
       Then Begin
	 	   If FiltraTabela(DMESTOQUE.WSIMILAR, 'VWSIMILAR', 'COD_INTERNO', FrmSubProduto2.EDCodigo.Text, '')=True
	       Then Begin //Slecionou o registro procurado
	       		XSUBPROD2:=DMESTOQUE.WSimilar.FieldByName('DESCRICAO').AsString;
           	FrmSubProduto2.EDCodigo.text:=DMESTOQUE.WSimilar.FieldByName('COD_INTERNO').AsString;
           	FrmSubProduto2.EdDescricao.Text:=DMESTOQUE.WSimilar.FieldByName('DESCRICAO').AsString;
          End
          Else Begin
               XSUBPROD2:='0';
           	FrmSubProduto2.EDCodigo.Text:='';
           	FrmSubProduto2.EdDescricao.Text:='';
          End;
       End
       Else Begin
          XSUBPROD2:='0';
          FrmSubProduto2.EDCodigo.Text:='';
          FrmSubProduto2.EdDescricao.Text:='';
       End;
       FrmSubProduto2.Repaint;
   End;
end;

procedure TFRelProduc.BtnVisualizarClick(Sender: TObject);
VAR
   XJUNCAO:STRING;
begin
  inherited;
  XTOTUNIT:=0;
  XVLRTOT:=0;
  DMESTOQUE.TRFch.Close;
  DMESTOQUE.TRFch.SQL.Clear;
   XJUNCAO:='';
	If FMenu.TIPOREL='FCHTEC'
   Then Begin
		DMESTOQUE.TRFch.SQL.Add('select * from fchtecprod ');
		DMESTOQUE.TRFch.SQL.Add('Left join vwsimilar on fchtecprod.cod_subproduto=vwsimilar.cod_subproduto ');
       XJUNCAO:=' WHERE ';
	End
   Else Begin
		DMESTOQUE.TRFch.SQL.Add('select producao.cod_producao as cod_fchtecprod, vwsimilar.contrint, vwsimilar.codfabricante, vwsimilar.descricao, vwsimilar.marca, ');
		DMESTOQUE.TRFch.SQL.Add('producao.qtd AS PORCAO, producao.dtproduc from producao ');
		DMESTOQUE.TRFch.SQL.Add('Left join fchtecprod on fchtecprod.cod_fchtecprod = producao.cod_fchtecprod ');
		DMESTOQUE.TRFch.SQL.Add('Left join vwsimilar on fchtecprod.cod_subproduto=vwsimilar.cod_subproduto ');
  		DMESTOQUE.TRFch.SQL.Add(' Where (producao.produzido='+#39+'1'+#39+')');
		XJuncao:=' AND ';
	End;
   If (FrmSubProduto1.EdDescricao.Text<>'') And (FrmSubProduto2.EdDescricao.Text<>'')
   Then Begin//haverá seleção por grupo
      DMESTOQUE.TRFch.SQL.Add(XJuncao+ ' (upper(vwsimilar.descricao) between upper(:SUBPROD1) AND upper(:SUBPROD2)) ');
      DMESTOQUE.TRFch.ParamByName('SUBPROD1').AsString:=FrmSubProduto1.EdDescricao.Text;
      DMESTOQUE.TRFch.ParamByName('SUBPROD2').AsString:=FrmSubProduto2.EdDescricao.Text;
		XJuncao:=' AND ';
   End;
   If (EdData1.Text<>'  /  /    ') AND (EdData2.Text<>'  /  /    ')
   Then Begin
      DMESTOQUE.TRFch.SQL.Add(XJuncao+' ((producao.dtproduc>=:DATA1) And (producao.dtproduc<=:DATA2))');
      DMESTOQUE.TRFch.ParamByName('DATA1').AsDate:=StrToDAte(EdData1.Text);
      DMESTOQUE.TRFch.ParamByName('DATA2').AsDate:=StrToDAte(EdData2.Text);
   End;
   DMESTOQUE.TRFch.Open;
	If FMenu.TIPOREL='FCHTEC'
   Then Begin
      if RBSEMVALOR.Checked=true
      then begin
          QRLabel25.Enabled:=false;
          QRLabel33.Enabled:=false;
          QRLabel5.Enabled:=false;
          QRLabel23.Enabled:=false;
          QRLabel31.Enabled:=false;
          QRLabel4.Enabled:=false;
          QRDBText18.Enabled:=false;
          QRDBText23.Enabled:=false;
          QRDBText5.Enabled:=false;
          QRDBText17.Enabled:=false;
          QRDBText22.Enabled:=false;
          QRDBText4.Enabled:=false;
          QrlVlrP.Enabled:=false;
          QrlVlrM.Enabled:=false;
          QrLVlrD.Enabled:=false;
          QRLVLRTOT.Enabled:=false;
      end else
      if RBSEMVALOR.Checked=false
      then begin
          QRLabel25.Enabled:=true;
          QRLabel33.Enabled:=true;
          QRLabel5.Enabled:=true;
          QRLabel23.Enabled:=true;
          QRLabel31.Enabled:=true;
          QRLabel4.Enabled:=true;
          QRDBText18.Enabled:=true;
          QRDBText23.Enabled:=true;
          QRDBText5.Enabled:=true;
          QRDBText17.Enabled:=true;
          QRDBText22.Enabled:=true;
          QRDBText4.Enabled:=true;
          QrlVlrP.Enabled:=true;
          QrlVlrM.Enabled:=true;
          QrLVlrD.Enabled:=true;
          QRLVLRTOT.Enabled:=true;
      end;
   QrFchTec.Preview;
	End
   Else Begin
       QrFchProd.Preview;
   End;
end;

procedure TFRelProduc.QRBand3AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  //FILTRA MATERIA PRIMA
	DMESTOQUE.TRFchP.Close;
	DMESTOQUE.TRFchP.SQL.Clear;
	DMESTOQUE.TRFchP.SQL.Add('Select * from itfchtecprod');
	DMESTOQUE.TRFchP.SQL.Add('left join subproduto on subproduto.cod_subproduto=itfchtecprod.cod_subproduto');
	DMESTOQUE.TRFchP.SQL.Add('where itfchtecprod.cod_fchtecprod=:CODFCHTEC');
	DMESTOQUE.TRFchP.ParamByName('CODFCHTEC').AsInteger:=DMESTOQUE.TRFch.FieldByName('COD_FCHTECPROD').AsInteger;
	DMESTOQUE.TRFchP.SQL.Text;
	DMESTOQUE.TRFchP.Open;
	//FILTRA MAO DE OBRA
	DMESTOQUE.TRFchM.Close;
	DMESTOQUE.TRFchM.SQL.Clear;
	DMESTOQUE.TRFchM.SQL.Add('Select * from itfchtecserv');
	DMESTOQUE.TRFchM.SQL.Add('left join Subservico on subservico.cod_subservico=itfchtecserv.cod_subservico');
	DMESTOQUE.TRFchM.SQL.Add('where itfchtecserv.cod_fchtecprod=:CODFCHTEC');
	DMESTOQUE.TRFchM.ParamByName('CODFCHTEC').AsInteger:=DMESTOQUE.TRFch.FieldByName('COD_FCHTECPROD').AsInteger;
	DMESTOQUE.TRFchM.SQL.Text;
	DMESTOQUE.TRFchM.Open;
   //FILTRA DESPESAS
	DMESTOQUE.TRFchD.Close;
	DMESTOQUE.TRFchD.SQL.Clear;
	DMESTOQUE.TRFchD.SQL.Add('Select * from despadic');
	DMESTOQUE.TRFchD.SQL.Add('where (despadic.gerador='+#39+'FCHTECPROD'+#39+') AND (despadic.cod_gerador=:CODGERADOR)');
	DMESTOQUE.TRFchD.ParamByName('CODGERADOR').AsInteger:=DMESTOQUE.TRFch.FieldByName('COD_FCHTECPROD').AsInteger;
	DMESTOQUE.TRFchD.SQL.Text;
	DMESTOQUE.TRFchD.Open;
	//ZERAA CONADORES PARA O PRODUTO
   XVITOT:=0;
   XVIUNIT:=0;
	XTOTUNIT:=0;
   XVLRTOT:=0;
end;

procedure TFRelProduc.QRSubDetail3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  	//acumula valores para sumário do relatório
   XTOTUNIT:=XTOTUNIT+DMESTOQUE.TRFchP.FieldByName('QTDUTILIZ').AsCurrency;
   XVLRTOT:=XVLRTOT+DMESTOQUE.TRFchP.FieldByName('VLRTOT').AsCurrency;
   XVITOT:=XVITOT+DMESTOQUE.TRFchP.FieldByName('VLRTOT').AsCurrency;
   XVIUNIT:=XVIUNIT+DMESTOQUE.TRFchP.FieldByName('QTDUTILIZ').AsCurrency;
end;

procedure TFRelProduc.QRBand6BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
   //PASSA VALOR AS LABELS
   QrLQtdP.Caption:=FormatFloat('####,##0.00', XVIUNIT);
   QrlVlrP.Caption:=FormatFloat('####,##0.00', XVITOT);
	//ZERAA CONADORES PARA O PRODUTO
   XVITOT:=0;
   XVIUNIT:=0;
end;

procedure TFRelProduc.QRSubDetail4BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  	//acumula valores para sumário do relatório
   XTOTUNIT:=XTOTUNIT+DMESTOQUE.TRFchM.FieldByName('QTDUTILIZ').AsCurrency;
   XVLRTOT:=XVLRTOT+DMESTOQUE.TRFchM.FieldByName('VLRTOT').AsCurrency;
   XVITOT:=XVITOT+DMESTOQUE.TRFchM.FieldByName('VLRTOT').AsCurrency;
   XVIUNIT:=XVIUNIT+DMESTOQUE.TRFchM.FieldByName('QTDUTILIZ').AsCurrency;
end;

procedure TFRelProduc.QRBand5BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
   //PASSA VALOR AS LABELS
   QrLQtdM.Caption:=FormatFloat('####,##0.00', XVIUNIT);
   QrlVlrM.Caption:=FormatFloat('####,##0.00', XVITOT);

	//ZERAA CONADORES PARA O PRODUTO
   XVITOT:=0;
   XVIUNIT:=0;
end;

procedure TFRelProduc.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  	//acumula valores para sumário do relatório
   XTOTUNIT:=XTOTUNIT+DMESTOQUE.TRFchD.FieldByName('QTD').AsCurrency;
   XVLRTOT:=XVLRTOT+DMESTOQUE.TRFchD.FieldByName('VLRTOTFIN').AsCurrency;
   XVITOT:=XVITOT+DMESTOQUE.TRFchD.FieldByName('VLRTOTFIN').AsCurrency;
   XVIUNIT:=XVIUNIT+DMESTOQUE.TRFchD.FieldByName('QTD').AsCurrency;
end;

procedure TFRelProduc.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
   //PASSA VALOR AS LABELS
   QrLQtdD.Caption:=FormatFloat('####,##0.00', XVIUNIT);
   QrlVlrD.Caption:=FormatFloat('####,##0.00', XVITOT);

	//ZERAA CONADORES PARA O PRODUTO
   XVITOT:=0;
   XVIUNIT:=0;
end;

procedure TFRelProduc.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
   QRLVLRUNIT.Caption:=FormatFloat('####,##0.00', XTOTUNIT);
   QRLVLRTOT.Caption:=FormatFloat('####,##0.00', XVLRTOT);
end;

procedure TFRelProduc.QRBand8AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  //FILTRA MATERIA PRIMA
	DMESTOQUE.TRFchP.Close;
	DMESTOQUE.TRFchP.SQL.Clear;
	DMESTOQUE.TRFchP.SQL.Add('Select subproduto.contrint, subproduto.descricao, iprdmat.class, iprdmat.qtd as QTDUTILIZ, ');
	DMESTOQUE.TRFchP.SQL.Add('iprdmat.vlrunit, iprdmat.vlrtot from iprdmat ');
	DMESTOQUE.TRFchP.SQL.Add('left join subproduto on subproduto.cod_subproduto=iprdmat.cod_subproduto ');
	DMESTOQUE.TRFchP.SQL.Add('where iprdmat.cod_producao=:CODFCHTEC');
	DMESTOQUE.TRFchP.ParamByName('CODFCHTEC').AsInteger:=DMESTOQUE.TRFch.FieldByName('COD_FCHTECPROD').AsInteger;
	DMESTOQUE.TRFchP.SQL.Text;
	DMESTOQUE.TRFchP.Open;
	//FILTRA MAO DE OBRA
	DMESTOQUE.TRFchM.Close;
	DMESTOQUE.TRFchM.SQL.Clear;
	DMESTOQUE.TRFchM.SQL.Add(' Select subservico.descricao, iprdmao.class, iprdmao.qtd AS QTDUTILIZ, iprdmao.vlrtot, iprdmao.vlrunit');
	DMESTOQUE.TRFchM.SQL.Add(' from iprdmao ');
	DMESTOQUE.TRFchM.SQL.Add(' left join subservico on subservico.cod_subservico=iprdmao.cod_subservico ');
	DMESTOQUE.TRFchM.SQL.Add('where iprdmao.cod_producao=:CODFCHTEC');
	DMESTOQUE.TRFchM.ParamByName('CODFCHTEC').AsInteger:=DMESTOQUE.TRFch.FieldByName('COD_FCHTECPROD').AsInteger;
	DMESTOQUE.TRFchM.SQL.Text;
	DMESTOQUE.TRFchM.Open;
   //FILTRA DESPESAS
	DMESTOQUE.TRFchD.Close;
	DMESTOQUE.TRFchD.SQL.Clear;
	DMESTOQUE.TRFchD.SQL.Add('Select * from despadic');
	DMESTOQUE.TRFchD.SQL.Add('where (despadic.gerador='+#39+'PRODUCAO'+#39+') AND (despadic.cod_gerador=:CODGERADOR)');
	DMESTOQUE.TRFchD.ParamByName('CODGERADOR').AsInteger:=DMESTOQUE.TRFch.FieldByName('COD_FCHTECPROD').AsInteger;
	DMESTOQUE.TRFchD.SQL.Text;
	DMESTOQUE.TRFchD.Open;
	//ZERAA CONADORES PARA O PRODUTO
   XVITOT:=0;
   XVIUNIT:=0;
end;

procedure TFRelProduc.QRSubDetail2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  	//acumula valores para sumário do relatório
   XTOTUNIT:=XTOTUNIT+DMESTOQUE.TRFchP.FieldByName('QTDUTILIZ').AsCurrency;
   XVLRTOT:=XVLRTOT+DMESTOQUE.TRFchP.FieldByName('VLRTOT').AsCurrency;
   XVITOT:=XVITOT+DMESTOQUE.TRFchP.FieldByName('VLRTOT').AsCurrency;
   XVIUNIT:=XVIUNIT+DMESTOQUE.TRFchP.FieldByName('QTDUTILIZ').AsCurrency;
end;

procedure TFRelProduc.QRBand11BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
   //PASSA VALOR AS LABELS
   QrLQtdPP.Caption:=FormatFloat('####,##0.00', XVIUNIT);
   QrlVlrPP.Caption:=FormatFloat('####,##0.00', XVITOT);
	//ZERAA CONADORES PARA O PRODUTO
   XVITOT:=0;
   XVIUNIT:=0;

end;

procedure TFRelProduc.QRSubDetail5BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  	//acumula valores para sumário do relatório
   XTOTUNIT:=XTOTUNIT+DMESTOQUE.TRFchM.FieldByName('QTDUTILIZ').AsCurrency;
   XVLRTOT:=XVLRTOT++DMESTOQUE.TRFchM.FieldByName('VLRTOT').AsCurrency;
   XVITOT:=XVITOT+DMESTOQUE.TRFchM.FieldByName('VLRTOT').AsCurrency;
   XVIUNIT:=XVIUNIT+DMESTOQUE.TRFchM.FieldByName('QTDUTILIZ').AsCurrency;

end;

procedure TFRelProduc.QRSubDetail6BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  	//acumula valores para sumário do relatório
   XTOTUNIT:=XTOTUNIT+DMESTOQUE.TRFchD.FieldByName('QTD').AsCurrency;
   XVLRTOT:=XVLRTOT++DMESTOQUE.TRFchD.FieldByName('VLRTOTFIN').AsCurrency;
   XVITOT:=XVITOT+DMESTOQUE.TRFchD.FieldByName('VLRTOTFIN').AsCurrency;
   XVIUNIT:=XVIUNIT+DMESTOQUE.TRFchD.FieldByName('QTD').AsCurrency;
end;

procedure TFRelProduc.QRBand13BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
   //PASSA VALOR AS LABELS
   QrLQtdDP.Caption:=FormatFloat('####,##0.00', XVIUNIT);
   QrlVlrDP.Caption:=FormatFloat('####,##0.00', XVITOT);
	QrlVlrTotProduto.Caption:=FormatFloat('####,##0.00', StrToFloat(QrlVlrPP.Caption)+StrToFloat(QrlVlrMP.Caption)+StrToFloat(QrlVlrDP.Caption));
	//ZERAA CONADORES PARA O PRODUTO
   XVITOT:=0;
   XVIUNIT:=0;
end;

procedure TFRelProduc.QRBand14BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
   QRLVLRUNITP.Caption:=FormatFloat('####,##0.00', XTOTUNIT);
   QRLVLRTOTP.Caption:=FormatFloat('####,##0.00', XVLRTOT);
end;

procedure TFRelProduc.QRBand10BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
   //PASSA VALOR AS LABELS
   QrlQtdMP.Caption:=FormatFloat('####,##0.00', XVIUNIT);
   QrlVlrMP.Caption:=FormatFloat('####,##0.00', XVITOT);
	//ZERAA CONADORES PARA O PRODUTO
   XVITOT:=0;
   XVIUNIT:=0;

end;

end.
