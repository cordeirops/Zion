unit UListaNfe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, FR_Class, FR_DSet, FR_DBSet,
  QRCtrls, QuickRpt, QRExport;

type
  TFListaNfe = class(TForm)
    CBMesIni: TComboBox;
    Label52: TLabel;
    Label51: TLabel;
    Label53: TLabel;
    CBMesFim: TComboBox;
    EdAno: TEdit;
    Label54: TLabel;
    GroupBox4: TGroupBox;
    Label55: TLabel;
    Label56: TLabel;
    EdNumIni: TEdit;
    EdNumFim: TEdit;
    Shape7: TShape;
    Shape8: TShape;
    Label49: TLabel;
    Image1: TImage;
    Shape9: TShape;
    FRNfe: TfrDBDataSet;
    FrListaNfe: TfrReport;
    BtFecha: TButton;
    Shape1: TShape;
    BtListar: TBitBtn;
    MListagem: TMemo;
    QRCartaCorrecao: TQuickRep;
    QRBand1: TQRBand;
    QRShape43: TQRShape;
    QRLabel62: TQRLabel;
    QRLabel63: TQRLabel;
    QRLabel64: TQRLabel;
    QRLabel65: TQRLabel;
    QRLabel66: TQRLabel;
    QRLbData: TQRLabel;
    QRLabel67: TQRLabel;
    QRLabel68: TQRLabel;
    QRLabel69: TQRLabel;
    QRLabel70: TQRLabel;
    QRLbCidade: TQRLabel;
    QRBand2: TQRBand;
    QRLabel71: TQRLabel;
    QRLabel72: TQRLabel;
    QRLabel73: TQRLabel;
    QRLabel74: TQRLabel;
    QRLabel75: TQRLabel;
    QRLabel76: TQRLabel;
    QRLabel77: TQRLabel;
    QRLabel78: TQRLabel;
    QRLbBaseCalc: TQRLabel;
    QRLabel79: TQRLabel;
    QRLbIcms: TQRLabel;
    QRLabel80: TQRLabel;
    QRLabel81: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRLbEndereco: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel82: TQRLabel;
    QRLabel83: TQRLabel;
    QRLbCidadeAss: TQRLabel;
    QRLabel84: TQRLabel;
    QRLabel85: TQRLabel;
    QRLabel86: TQRLabel;
    QRLabel87: TQRLabel;
    QRLabel88: TQRLabel;
    QRLabel89: TQRLabel;
    CbTipoDoc: TComboBox;
    Label1: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure BtListarClick(Sender: TObject);
    procedure BtFechaClick(Sender: TObject);
    procedure Shape1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Shape7MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    //Paulo 08/03/2012: Gera carta de correção
    procedure GeraCartaCorrecao(XNUMINI, XNUMFIM: Integer);
  end;

var
  FListaNfe: TFListaNfe;
  XnumIni, XnumFim: Integer;

implementation

uses UMzrNfe, UMenu, UDMMacs, Alxorprn, Alxor32, UOrdemMec, UDMEstoque, DB;

{$R *.dfm}

procedure TFListaNfe.FormActivate(Sender: TObject);
var
	XData: String;
begin
	 Caption:='Listagem de NFe';
   Shape1.Visible:=true;
   shape1.BringToFront;
   BtFecha.Visible:=False;
   BtFecha.SendToBack;

   //Limpa Campos
   CBMesIni.Text:='';
   CBMesFim.Text:='';
   EdAno.Text:='';
   EdNumIni.Text:='';
   EdNumFim.Text:='';
   MListagem.Lines.Clear;

	CBMesIni.Items.Add('Janeiro');
   CBMesIni.Items.Add('Fevereiro');
   CBMesIni.Items.Add('Março');
   CBMesIni.Items.Add('Abril');
   CBMesIni.Items.Add('Maio');
   CBMesIni.Items.Add('Junho');
   CBMesIni.Items.Add('Julho');
   CBMesIni.Items.Add('Agosto');
   CBMesIni.Items.Add('Setembro');
   CBMesIni.Items.Add('Outubro');
   CBMesIni.Items.Add('Novembro');
   CBMesIni.Items.Add('Dezembro');

   CBMesFim.Items.Add('Janeiro');
   CBMesFim.Items.Add('Fevereiro');
   CBMesFim.Items.Add('Março');
   CBMesFim.Items.Add('Abril');
   CBMesFim.Items.Add('Maio');
   CBMesFim.Items.Add('Junho');
   CBMesFim.Items.Add('Julho');
   CBMesFim.Items.Add('Agosto');
   CBMesFim.Items.Add('Setembro');
   CBMesFim.Items.Add('Outubro');
   CBMesFim.Items.Add('Novembro');
   CBMesFim.Items.Add('Dezembro');

   //Paulo 14/09/2010: Mostrar o mês corrente no combo box do mês
   XData :=DateToStr(Date);
   XData:=(Copy(XData,4,2));
   if(XData = '01')then
   begin
   	CBMesIni.Text:='Janeiro';
       CBMesFim.Text:='Janeiro';
   end;
   if(XData = '02')then
   begin
   	CBMesIni.Text:='Fevereiro';
       CBMesFim.Text:='Fevereiro';
   end;
   if(XData = '03')then
   begin
   	CBMesIni.Text:='Março';
       CBMesFim.Text:='Março';
   end;
   if(XData = '04')then
   begin
   	CBMesIni.Text:='Abril';
       CBMesFim.Text:='Abril';
   end;
   if(XData = '05')then
   begin
   	CBMesIni.Text:='Maio';
       CBMesFim.Text:='Maio';
   end;
   if(XData = '06')then
   begin
   	CBMesIni.Text:='Junho';
       CBMesFim.Text:='Junho';
   end;
   if(XData = '07')then
   begin
   	CBMesIni.Text:='Julho';
       CBMesFim.Text:='Julho';
   end;
   if(XData = '08')then
   begin
   	CBMesIni.Text:='Agosto';
       CBMesFim.Text:='Agosto';
   end;
   if(XData = '09')then
   begin
   	CBMesIni.Text:='Setembro';
       CBMesFim.Text:='Setembro';
   end;
   if(XData = '10')then
   begin
   	CBMesIni.Text:='Outubro';
       CBMesFim.Text:='Outubro';
   end;
   if(XData = '11')then
   begin
   	CBMesIni.Text:='Novembro';
       CBMesFim.Text:='Novembro';
   end;
   if(XData = '12')then
   begin
   	CBMesIni.Text:='Dezembro';
       CBMesFim.Text:='Dezembro';
   end;

   //Edit de ano trazer o ano corrente
   XData :=DateToStr(Date);
   XData:=(Copy(XData,7,4));
   EdAno.Text:=XData;

end;

procedure TFListaNfe.BtListarClick(Sender: TObject);
var
 XMesIni, XMesFim: String;

begin
	//PAulo 14/09/2010: Tratamento da tela não deixar passar nada em branco
   if(CBMesIni.text = '')then
   begin
   	MessageBox(0, 'Informe o mês inicial', '', MB_ICONWARNING or MB_OK);
       CBMesIni.SetFocus;
       exit;
   end;
   if(CBMesFim.text = '')then
   begin
   	MessageBox(0, 'Informe o mês final', '', MB_ICONWARNING or MB_OK);
       CBMesFim.SetFocus;
       exit;
   end;
   if(EdAno.text = '')then
   begin
   	MessageBox(0, 'Informe o ano', '', MB_ICONWARNING or MB_OK);
       EdAno.SetFocus;
       exit;
   end;
   if(EdNumIni.text = '')then
   begin
   	MessageBox(0, 'Informe o número inicial', '', MB_ICONWARNING or MB_OK);
       EdNumIni.SetFocus;
       exit;
   end;
   if(EdNumFim.text = '')then
   begin
   	MessageBox(0, 'Informe o número final', '', MB_ICONWARNING or MB_OK);
       EdNumFim.SetFocus;
       exit;
   end;

   //Paulo 14/09/2010: Tratamento para os meses
   if(CBMesIni.Text = 'Janeiro')then
   begin
   	XMesIni:='1';
   end;
   if(CBMesIni.Text = 'Fevereiro')then
   begin
   	XMesIni:='2';
   end;
   if(CBMesIni.Text = 'Março')then
   begin
   	XMesIni:='3';
   end;
   if(CBMesIni.Text = 'Abril')then
   begin
   	XMesIni:='4';
   end;
   if(CBMesIni.Text = 'Maio')then
   begin
   	XMesIni:='5';
   end;
   if(CBMesIni.Text = 'Junho')then
   begin
   	XMesIni:='6';
   end;
   if(CBMesIni.Text = 'Julho')then
   begin
   	XMesIni:='7';
   end;
   if(CBMesIni.Text = 'Agosto')then
   begin
   	XMesIni:='8';
   end;
   if(CBMesIni.Text = 'Setembro')then
   begin
   	XMesIni:='9';
   end;
   if(CBMesIni.Text = 'Outubro')then
   begin
   	XMesIni:='10';
   end;
   if(CBMesIni.Text = 'Novembro')then
   begin
   	XMesIni:='11';
   end;
   if(CBMesIni.Text = 'Dezembro')then
   begin
   	XMesIni:='12';
   end;
   //Para mês fim
   if(CBMesFim.Text = 'Janeiro')then
   begin
   	XMesFim:='1';
   end;
   if(CBMesFim.Text = 'Fevereiro')then
   begin
   	XMesFim:='2';
   end;
   if(CBMesFim.Text = 'Março')then
   begin
   	XMesFim:='3';
   end;
   if(CBMesFim.Text = 'Abril')then
   begin
   	XMesFim:='4';
   end;
   if(CBMesFim.Text = 'Maio')then
   begin
   	XMesFim:='5';
   end;
   if(CBMesFim.Text = 'Junho')then
   begin
   	XMesFim:='6';
   end;
   if(CBMesFim.Text = 'Julho')then
   begin
   	XMesFim:='7';
   end;
   if(CBMesFim.Text = 'Agosto')then
   begin
   	XMesFim:='8';
   end;
   if(CBMesFim.Text = 'Setembro')then
   begin
   	XMesFim:='9';
   end;
   if(CBMesFim.Text = 'Outubro')then
   begin
   	XMesFim:='10';
   end;
   if(CBMesFim.Text = 'Novembro')then
   begin
   	XMesFim:='11';
   end;
   if(CBMesFim.Text = 'Dezembro')then
   begin
   	XMesFim:='12';
   end;
   //Paulo: Apaga a tabela tmp
   DMMACS.TMP.Close;
   DMMACS.TMP.SQL.Clear;
   DMMACS.TMP.SQL.Add('DELETE  FROM TMP');
   DMMACS.TMP.ExecSQL;
   DMMACS.Transaction.CommitRetaining;
   DMMACS.TMP.Close;
   DMMACS.TMP.SQL.Clear;
   DMMACS.TMP.SQL.Add('SELECT * FROM TMP');
   DMMACS.TMP.Open;

   XnumIni:=StrToInt(EdNumIni.Text);
   XnumFim:=StrToInt(EdNumFim.Text);

   //Paulo 08/03/2012:	Imprimir carta de correção
   if XCARTACORRECAO = True then
   begin
       GeraCartaCorrecao(XnumIni, XnumFim);
   end else
   begin
       //Edmar - 31/07/2015 - Verifica qual o tipo de documento que deseja buscar os documentos
       if (CbTipoDoc.ItemIndex = 0) OR (CbTipoDoc.ItemIndex = -1) then//NF-e
          XEmiteNFCe := False
       else//NFC-e
          XEmiteNFCe := True;
           
       FMzrNfe := TFMzrNFe.Create(FMzrNfe);//cria o formulario de transmissão da Nfe
       FMzrNfe.ReturnListaNfe(XMesIni, XMesFim,Copy(EdAno.Text,3,2), XnumIni, XnumFim);
       FMzrNfe.ShowModal;
       
       DMMACS.TRel.Close;
       DMMACS.TRel.SQL.Clear;
       DMMACS.TRel.SQL.Add('SELECT * FROM TMP');
       DMMACS.TRel.Open;
       MListagem.Lines.Clear;
       DMMACS.TRel.First;
       While not DMMACS.TRel.Eof do
       Begin
           MListagem.Lines.Add(DMMACS.TRel.FieldByName('DESC2').AsString+' - '+DMMACS.TRel.FieldByName('INT2').AsString+' - '+DMMACS.TRel.FieldByName('DESC3').AsString+' - '+DMMACS.TRel.FieldByName('DESC1').AsString);
           DMMACS.TRel.Next;
       End;
       //Paulo 14/09/2010: Insere os dados no relatório
       FrListaNfe.LoadFromFile('C:\MZR\MACS\Rel\FrfListaNfe.frf');
       FrListaNfe.ShowReport;
   end;

end;

procedure TFListaNfe.BtFechaClick(Sender: TObject);
begin
	Close;
end;

procedure TFListaNfe.Shape1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
	Shape1.Visible:=false;
   shape1.SendToBack;
   BtFecha.Visible:=True;
   BtFecha.BringToFront;
end;

procedure TFListaNfe.Shape7MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
	Shape1.Visible:=true;
   shape1.BringToFront;
   BtFecha.Visible:=False;
   BtFecha.SendToBack;
end;

//Paulo 08/03/2012: Gera carta de correção
procedure TFListaNfe.GeraCartaCorrecao(XNUMINI, XNUMFIM: Integer);
begin
	//Paulo 08/03/2012: Faz sql para buscar as notas selecionadas
   DMMACS.TRel.Close;
   DMMACS.TRel.SQL.Clear;
   DMMACS.TRel.SQL.Add('select distinct docfisord.numdocfisint, pessoa.nome, pessoa.endereco, pessoa.endnumero, vwcliente.cidade, vwcliente.UF_ESTADO,');
   DMMACS.TRel.SQL.Add('estado.descricao AS ESTADO, docfisord.cod_ordem, docfisord.dtemissao');
   DMMACS.TRel.SQL.Add('from docfisord');
   DMMACS.TRel.SQL.Add('left join ordem on docfisord.cod_ordem = ordem.cod_ordem');
   DMMACS.TRel.SQL.Add('left join vwcliente on ordem.cod_cliente = vwcliente.cod_cliente');
   DMMACS.TRel.SQL.Add('left join pessoa on vwcliente.cod_pessoa = pessoa.cod_pessoa');
   DMMACS.TRel.SQL.Add('left join estado on vwcliente.uf_estado = estado.uf_estado');
   DMMACS.TRel.SQL.Add('left join itprodord on docfisord.cod_ordem = itprodord.cod_ordem');
   DMMACS.TRel.SQL.Add('where docfisord.numdocfisint between :NUMINI AND :NUMFIM and (itprodord.cod_cst <> :CST)');
   DMMACS.TRel.SQL.Add('order by docfisord.numdocfisint');
   DMMACS.TRel.ParamByName('NUMINI').AsInteger:= XNUMINI;
   DMMACS.TRel.ParamByName('NUMFIM').AsInteger:= XNUMFIM;
   DMMACS.TRel.ParamByName('CST').AsInteger:=1;
   DMMACS.TRel.Open;
	QRCartaCorrecao.Preview;
   
end;

procedure TFListaNfe.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
       //Paulo 09/03/2012: Soma bases e icms com cst 000
       DMESTOQUE.Alx.close;
       DMESTOQUE.Alx.SQL.Clear;
       DMESTOQUE.Alx.SQL.Add('SELECT SUM(itprodord.baseicms)AS BASEICMS, SUM(itprodord.vlricms)AS VLRICMS');
       DMESTOQUE.Alx.SQL.Add('FROM itprodord');
       DMESTOQUE.Alx.SQL.Add('WHERE itprodord.cod_ordem = :ORDEM AND itprodord.cod_cst = :CODCST');
       DMESTOQUE.Alx.ParamByName('ORDEM').AsInteger:=DMMACS.TRel.FieldByName('COD_ORDEM').AsInteger;
       DMESTOQUE.Alx.ParamByName('CODCST').AsInteger:=1;
       DMESTOQUE.Alx.Open;

		QRLbData.Caption:=FMenu.EdData.Text;
		QRLbEndereco.Caption:=UpperCase(DMMACS.TRel.FieldByName('ENDERECO').AsString +', '+DMMACS.TRel.FieldByName('ENDNUMERO').AsString);
       QRLbCidade.Caption:=UpperCase(DMMACS.TRel.FieldByName('CIDADE').AsString+' - '+DMMACS.TRel.FieldByName('ESTADO').AsString);
       QRLbBaseCalc.Caption:=FormatFloat('#,##0.00',DMESTOQUE.Alx.FieldByName('BASEICMS').AsCurrency);
       QRLbIcms.Caption:=FormatFloat('#,##0.00',DMESTOQUE.Alx.FieldByName('VLRICMS').AsCurrency);
       QRLbCidadeAss.Caption:=UpperCase(DMMACS.TRel.FieldByName('CIDADE').AsString+' - '+DMMACS.TRel.FieldByName('UF_ESTADO').AsString);
end;

end.



