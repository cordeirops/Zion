unit UCtasPagar;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UPadraoContas, TFlatHintUnit, Grids, DBGrids, StdCtrls,
  TFlatTabControlUnit, Buttons, jpeg, ExtCtrls, Mask, ColorMaskEdit,
  DBCtrls, DBColorComboBox, DBColorEdit, EditFloat, ColorEditFloat,
  Qrctrls, QuickRpt, Menus, UFrmBusca, IBEvents, FR_DSet, FR_DBSet,
  FR_Class, DrLabel, XP_Button, TFlatButtonUnit, cxTextEdit,
  cxControls, cxContainer, cxEdit, cxGroupBox, cxRadioGroup, ComCtrls,
  ACBrBoleto, ACBrBoletoFCFR, ACBrBase, frxClass, frxDBSet;

type
  TFCtaPagar = class(TFPadraoContas)
    PPrevisao: TPanel;
    DBGPrevisao: TDBGrid;
    GroupBox19: TGroupBox;
    EdLancPrev: TColorMaskEdit;
    GroupBox20: TGroupBox;
    EdVencPrev: TColorMaskEdit;
    GroupBox21: TGroupBox;
    EdPessoaPrev: TColorMaskEdit;
    GroupBox22: TGroupBox;
    EdDocumentoPrev: TColorMaskEdit;
    EdTotalPrevisto: TFloatEdit;
    GroupBox23: TGroupBox;
    GroupBox24: TGroupBox;
    EdBoletoPrev: TColorMaskEdit;
    GroupBox25: TGroupBox;
    EdFiscPrev: TColorMaskEdit;
    CBREFERENTE: TComboBox;
    CBREFERENTEANO: TComboBox;
    RGCTipo: TRadioGroup;
    Fornecedores: TMenuItem;
    Mensal: TMenuItem;
    Data: TMenuItem;
    PagamentodePreviso: TMenuItem;
    RelatrioCtasRateio: TMenuItem;
    RelCtasPagarFornecedor: TMenuItem;
    RelaodosPagamentos: TMenuItem;
    frRecibo: TfrReport;
    Recibo1: TMenuItem;
    Recibo: TPopupMenu;
    Recibo2: TMenuItem;
    N1: TMenuItem;
    DesmarcarTodas1: TMenuItem;
    Filtrarcontasmarcadas1: TMenuItem;
    AgruparContasSelecionadas1: TMenuItem;
    Label34: TLabel;
    DBFiscal: TDBColorEdit;
    Label2: TLabel;
    DBBoleto: TDBColorEdit;
    CtasapagarVencidas1: TMenuItem;
    BtnFaturaContas: TBitBtn;
    RelContasdeLanamento1: TMenuItem;
    RelatriodeLanamentoGrfico1: TMenuItem;
    RelatriodeLanamentosemContaTexto1: TMenuItem;
    FlatButton1: TFlatButton;
    ImpReciboCp: TPopupMenu;
    ImprimirRecibo1: TMenuItem;
    QrReciboP: TQuickRep;
    QRBand1: TQRBand;
    QRShape81: TQRShape;
    QRShape82: TQRShape;
    QRShape83: TQRShape;
    QRShape84: TQRShape;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRShape85: TQRShape;
    QRLabel21: TQRLabel;
    QRShape86: TQRShape;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRDBText17: TQRDBText;
    QRLabel33: TQRLabel;
    QRDBText18: TQRDBText;
    QRLabel100: TQRLabel;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRLabel102: TQRLabel;
    QRDBText22: TQRDBText;
    QRLabel103: TQRLabel;
    QRLabel104: TQRLabel;
    QRDBText30: TQRDBText;
    QRDBText44: TQRDBText;
    QRLabel105: TQRLabel;
    QRLabel106: TQRLabel;
    QRDBText70: TQRDBText;
    QRDtLocal: TQRLabel;
    QRDBText71: TQRDBText;
    QrHr: TQRLabel;
    QRLabel111: TQRLabel;
    QRDBText72: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText73: TQRDBText;
    QRDBText74: TQRDBText;
    QRUfPag: TQRLabel;
    RecibocomProdutos1: TMenuItem;
    FrxRel: TfrxReport;
    DB_master_data: TfrxDBDataset;
    RecibocomDadosdoProduto1: TMenuItem;
    VincularConta1: TMenuItem;
    EdRazaoSocial: TColorMaskEdit;
    Label3: TLabel;
    Label19: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnBaixarClick(Sender: TObject);
    procedure BtnApagarClick(Sender: TObject);
    procedure BtnConsultarClick(Sender: TObject);
    procedure BtnRelatorioClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Clientes2Click(Sender: TObject);
    procedure TCConsultContasTabChanged(Sender: TObject);
    procedure CBREFERENTEKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CBREFERENTEKeyPress(Sender: TObject; var Key: Char);
    procedure EDLANCAMENTOKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdDocumentoPrevKeyPress(Sender: TObject; var Key: Char);
    procedure EdBoletoPrevKeyPress(Sender: TObject; var Key: Char);
    procedure EdBoletoPrevKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdFiscPrevKeyPress(Sender: TObject; var Key: Char);
    procedure EdLancPrevKeyPress(Sender: TObject; var Key: Char);
    procedure EdVencPrevKeyPress(Sender: TObject; var Key: Char);
    procedure EdPessoaPrevKeyPress(Sender: TObject; var Key: Char);
    procedure EdCod_InternoKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBGridCadastroPadraoDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure DBGridCadastroPadraoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGBAIXADASDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGBAIXADASKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGPrevisaoDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGPrevisaoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGMestreDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGMestreKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGSLAVEKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGSLAVEDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FornecedoresClick(Sender: TObject);
    procedure MensalClick(Sender: TObject);
    procedure DataClick(Sender: TObject);
    procedure RelaodosPagamentosClick(Sender: TObject);
    procedure RelCtasPagarFornecedorClick(Sender: TObject);
    procedure RelatrioCtasRateioClick(Sender: TObject);
    procedure PagamentodePrevisoClick(Sender: TObject);
    procedure Recibo1Click(Sender: TObject);
    procedure Recibo2Click(Sender: TObject);
    procedure DBGridCadastroPadraoDblClick(Sender: TObject);
    procedure DesmarcarTodas1Click(Sender: TObject);
    procedure Filtrarcontasmarcadas1Click(Sender: TObject);
    procedure AgruparContasSelecionadas1Click(Sender: TObject);
	 //Função que agrupa todas as contas selecionadas em um
	 Function AgrupaContas: Boolean;
    procedure AtualizaForm;
    procedure CtasapagarVencidas1Click(Sender: TObject);
    procedure BtnFaturaContasClick(Sender: TObject);
    procedure RelContasdeLanamento1Click(Sender: TObject);
    procedure RelContasdeLanamentoGrfico1Click(Sender: TObject);
    procedure FlatButton1Click(Sender: TObject);
    procedure ImprimirRecibo1Click(Sender: TObject);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure RecibocomProdutos1Click(Sender: TObject);
    procedure RecibocomDadosdoProduto1Click(Sender: TObject);
    procedure VincularConta1Click(Sender: TObject);
    procedure DBHISTORICOExit(Sender: TObject);
    procedure DBGrid3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdRazaoSocialKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdRazaoSocialKeyPress(Sender: TObject; var Key: Char);

  private
    { Private declarations }
    procedure ImprimirReciboCp(CODCTA: Integer);
    function VerificaCtaPagarVinculada(XCtaPagar: Integer): Boolean;
    function VerificaVinculo(XCodGerador: Integer; XTipoGerador: String): Boolean;
  public
    { Public declarations }
    TIPOREL: String;
    TIPOAUX: String;
    CODCTA: INTEGER;
  end;

var
  FCtaPagar: TFCtaPagar;

implementation

uses UDMFinanc, UMenu, UDMPessoa, Alxor32, Alxorprn, UDMConta, URelCtaPR, Math,
  UPadrao, AlxMessage, UDMMacs, DB, UFaturaContas, UDMEstoque, UMDO,
  UPedCompra, UDMEntrada, UDmServ, UDMSaida, USenha;

{$R *.DFM}

//Função que agrupa todas as contas selecionadas em um
Function TFCtaPagar.AgrupaContas: Boolean;
Var
	XTotal: Real;
   XCodParcelaAltera: Integer;
   XHistAlt: String;
Begin
	Try
       //seleciona as parcelas de acordo com a marcação da view
       DMCONTA.TParcCp.Close;
       DMCONTA.TParcCp.SQL.Clear;
       DMCONTA.TParcCp.SQL.Add('select * from parcelacp where parcelacp.mark='+#39+'X'+#39);
       DMCONTA.TParcCp.Open;
       //o sistema irá percorrer todas as parcelas totalizando os valores
       DMCONTA.TParcCp.First;
       XTotal:=0;
       XHistAlt:='';
       While not DMCONTA.TParcCp.Eof do
       Begin
           XTotal:=XTotal+DMCONTA.TParcCp.FieldByName('VALOR').AsCurrency;
           Registra('AGRUPA CP', 'AGRUPAR', DateToStr(DATE()), 'Agrupou:' + DMCONTA.TParcCP.FieldByName('NUMPARC').asstring + ' Venc.: '+DMCONTA.TParcCP.FieldByName('DTVENC').asstring+ ' Valor: '+DMCONTA.TParcCP.FieldByName('VALOR').asstring, '');
           XHistAlt:=XHistAlt+', '+DMCONTA.TParcCR.FieldByName('NUMPARC').asstring;
			DMCONTA.TParcCP.Next;
       End;

       //edita a primeira parcela funcionando ela como a agrupadora
       DMCONTA.TParcCP.First;
       XCodParcelaAltera:=DMCONTA.TParcCP.FieldByName('cod_parcelacP').AsInteger;
       DMCONTA.TParcCP.Edit;
       DMCONTA.TParcCP.FieldByName('VALOR').AsCurrency:=XTotal;
       DMCONTA.TParcCP.FieldByName('HISTORICO').AsString:='Agrupados: '+XHistAlt+'-'+DMCONTA.TParcCP.FieldByName('HISTORICO').AsString;
       DMCONTA.TParcCP.Post;
		MessageDlg('AS CONTAS FORAM AGRUPADAS NO DOCUMENTO '+DMCONTA.TParcCP.FieldByName('NUMPARC').Asstring, mtInformation, [mbOK], 0);
       //apaga as demais tabelas
       //seleciona as parcelas de acordo com a marcação da view
       DMCONTA.TParcCP.Close;
       DMCONTA.TParcCP.SQL.Clear;
       DMCONTA.TParcCP.SQL.Add('delete from parcelacP where (parcelacP.mark='+#39+'X'+#39+') and (parcelacP.cod_parcelacP<>:codigo)');
       DMCONTA.TParcCP.ParamByName('codigo').AsInteger:=XCodParcelaAltera;
       DMCONTA.TParcCP.ExecSQL;
       //limpa as marcações antigas
       DMCONTA.TParcCP.Close;
       DMCONTA.TParcCP.SQL.Clear;
       DMCONTA.TParcCP.SQL.Add(' update parcelacP set parcelacP.mark='+#39+#39);
       DMCONTA.TParcCP.ExecSQL;
       DMCONTA.IBT.CommitRetaining;
       Try
           DMCONTA.TCtaP.Close;
           DMCONTA.TCtaP.SQL.Clear;
           DMCONTA.TCtaP.SQL.Add('update ctaPAGAR set ctapagar.cod_gerador=-1, ctapagar.tipogerador='+#39+#39+'  WHERE ctapagar.cod_ctapagar=:codigo');
           DMCONTA.TCtaP.ExecSQL;
           DMCONTA.IBT.CommitRetaining;
       Except
       End;
       Result:=True;
	Except
       Result:=False;
   End
End;

procedure TFCtaPagar.FormActivate(Sender: TObject);
begin
  inherited;
	Caption:='Cadastro de Contas a Pagar' ;  
   XTipoPR:='P';
   XSQLTABELA:='CTAPAGAR';
   If XPREVISAO=True Then
       Caption:='Contas a Pagar de Provisão'
   Else
       Caption:='Contas a Pagar';
   If PCADASTRO.Visible=False
   Then Begin
    TCConsultContas.OnTabChanged(Sender);
    //LINKA DB GRIDS
    DBGridCadastroPadrao.DataSource:=DMCONTA.DWParP;
    DBGMestre.DataSource:=DMCONTA.DWCTAP;
    DBGSLAVE.DataSource:=DMCONTA.DWParP;
    DBGBAIXADAS.DataSource:=DMCONTA.DWParP;
    DBGPrevisao.DataSource:=DMCONTA.DWParP;
   End;

   If FileExists('C:\MZR\Arquivos\LayoutGrid\ParcelasctasPagar.lgm') Then
       DBGrid3.Columns.LoadFromFile('C:\MZR\Arquivos\LayoutGrid\ParcelasctasPagar.lgm');

   // - 20/04/2009: verificar se arquivo de layout foi salvo anteriormente
   If FileExists('C:\MZR\Arquivos\LayoutGrid\ctasPagar.lgm') Then
       DBGridCadastroPadrao.Columns.LoadFromFile('C:\MZR\Arquivos\LayoutGrid\ctasPagar.lgm');

   If FileExists('C:\MZR\Arquivos\LayoutGrid\ctasPagarBaixadas.lgm') Then
       DBGBAIXADAS.Columns.LoadFromFile('C:\MZR\Arquivos\LayoutGrid\ctasPagarBaixadas.lgm');

   If FileExists('C:\MZR\Arquivos\LayoutGrid\ctasPagarPrevisao.lgm') Then
       DBGPrevisao.Columns.LoadFromFile('C:\MZR\Arquivos\LayoutGrid\ctasPagarPrevisao.lgm');

   If FileExists('C:\MZR\Arquivos\LayoutGrid\ctasPagarMestre.lgm') Then
       DBGMestre.Columns.LoadFromFile('C:\MZR\Arquivos\LayoutGrid\ctasPagarMestre.lgm');

   If FileExists('C:\MZR\Arquivos\LayoutGrid\ctasPagarSlave.lgm') Then
       DBGSLAVE.Columns.LoadFromFile('C:\MZR\Arquivos\LayoutGrid\ctasPagarSlave.lgm');

   FrmCliFor.LTextoBusca.Visible:=True;
   FrmConta.LTextoBusca.Visible:=True;
   frmFormPag.LTextoBusca.Visible:=True;
	FrmCliFor.Refresh;
   FrmConta.Refresh;
   frmFormPag.Refresh;
end;

procedure TFCtaPagar.FormShow(Sender: TObject);
begin
  inherited;
    XTabela:=DMCONTA.TCtaP;
    XTabREf:=DMCONTA.TParcCP;
    XView:=DMCONTA.WCtaP;
    XViewRef:=DMCONTA.WParP;
    XPK:='COD_CTAPAGAR';
    XTipoPR:='P';
    XSQLTABELA:='CTAPAGAR';
    XTransaction:=DMCONTA.IBT;
end;

procedure TFCtaPagar.BtnNovoClick(Sender: TObject);
begin
  //EFETUA CONTROLE DE ACESSO
  If ControlAccess('CAD_CP', 'M')=False Then
  		Exit;

  inherited;

end;

procedure TFCtaPagar.BtnBaixarClick(Sender: TObject);
var
	xCodCtaCp: Integer;
begin
	//Edmar - 21/10/2014 - Armazena o codigo da parcela para impressão do recibo
	xCodCtaCp := DMCONTA.WParP.FieldByName('COD_PARCELACP').AsInteger;
   
  	//EFETUA CONTROLE DE ACESSO
  	If ControlAccess('BAIXA_CP', 'M')=False Then
  		Exit;
  	inherited;
 	If FMenu.TIPOAUX='IMPRECIBO' then
   begin
   	try
   		ImprimirReciboCp(xCodCtaCp);
       except
       	On E : Exception do
           	ShowMessage(E.Message);
       end;
 	End;
end;

procedure TFCtaPagar.BtnApagarClick(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('ALTEXC_CP', 'M')=False Then
  		Exit;

  inherited;

end;

procedure TFCtaPagar.BtnConsultarClick(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('ALTEXC_CP', 'M')=False Then
  		Exit;

  inherited;

  // RESERVA, PROMOÇÃO OU CONDOMINIO
  If DMCONTA.TParcCP.FieldByName('TIPO').AsInteger=1 Then
       RGCTipo .ItemIndex := 0;//NORMAL
  If DMCONTA.TParcCP.FieldByName('TIPO').AsInteger=2 Then
       RGCTipo .ItemIndex := 1;// RESERVA
  If DMCONTA.TParcCP.FieldByName('TIPO').AsInteger=3 Then
       RGCTipo .ItemIndex := 2;//PROMOÇÃO
  If DMCONTA.TParcCP.FieldByName('TIPO').AsInteger=4 Then
       RGCTipo .ItemIndex := 3;//CONDOMINIO



end;

procedure TFCtaPagar.BitBtn3Click(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('CANCELBAIXA_CP', 'M')=False Then
  		Exit;

  inherited;

end;

procedure TFCtaPagar.Clientes2Click(Sender: TObject);
begin
//  inherited;
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RCTAPAGAR', 'M')=False Then
  		Exit;

   FMenu.TIPOREL:='RELCTAPFOR';
   AbrirForm(TFRelCTAPR, FRelCTAPR, 0);
end;

procedure TFCtaPagar.TCConsultContasTabChanged(Sender: TObject);
begin
   PPrevisao.Visible:=False;
  inherited;
   If TCConsultContas.ActiveTab=3
   Then Begin
       PPrevisao.Enabled:=True;
       PPrevisao.Visible:=True;
       BtnFiltrar.Visible := False;
       PPrevisao.BringToFront;
       SelectParcela(3);
       EdTotalPrevisto.ValueNumeric:=EdTotIndividual.ValueNumeric;
   End;
end;

procedure TFCtaPagar.CBREFERENTEKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
    If Key=VK_Down Then
        XViewRef.Next;
    If Key=VK_Up Then
        XViewRef.Prior;
end;

procedure TFCtaPagar.CBREFERENTEKeyPress(Sender: TObject; var Key: Char);
Var
	XData1, XData2, XMes: String;
begin
  inherited;
    If key=#13
    Then Begin
    	XViewRef.Close;
       XViewRef.SQL.Clear;
       XViewRef.SQL.Add('Select * From VWparCP ');
   	XViewRef.SQL.Add('Where (COD_LOJA = :CODLOJA) ');
   	XViewRef.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
		XViewRef.SQL.Add(' And (Fech <> '+#39+'S'+#39+') ');
       XViewRef.SQL.Add(' And (PREVISAO ='+#39+'1'+#39+') ');

  	 	If CBREFERENTE.Text='Janeiro' Then
       	XMes:='01';
  	 	If CBREFERENTE.Text='Fevereiro' Then
       	XMes:='02';
  	 	If CBREFERENTE.Text='Março' Then
       	XMes:='03';
  	 	If CBREFERENTE.Text='Abril' Then
       	XMes:='04';
  	 	If CBREFERENTE.Text='Maio' Then
       	XMes:='05';
  	 	If CBREFERENTE.Text='Junho' Then
       	XMes:='06';
  	 	If CBREFERENTE.Text='Julho' Then
       	XMes:='07';
  	 	If CBREFERENTE.Text='Agosto' Then
       	XMes:='08';
  	 	If CBREFERENTE.Text='Setembro' Then
       	XMes:='09';
  	 	If CBREFERENTE.Text='Outubro' Then
       	XMes:='10';
  	 	If CBREFERENTE.Text='Novembro' Then
       	XMes:='11';
  	 	If CBREFERENTE.Text='Dezembro' Then
       	XMes:='12';

    	If CBREFERENTE.Text<>'Todos'
    	Then Begin
       	XData2:=IntToStr(UltDiaMes(StrToInt(xmes), StrToInt('20'+CBREFERENTEANO.Text)))+'/'+XMes+'/20'+CBREFERENTEANO.Text;
       	XData1:='01/'+XMes+'/20'+CBREFERENTEANO.Text;
       	XViewRef.SQL.Add(' And ( DTVENC Between :Data1 and :Data2) ORDER BY DTVENC, NOME');
		   	XViewRef.ParamByName('Data1').AsString:=XData1;
		   	XViewRef.ParamByName('Data2').AsString:=XData2;
       End;
       XViewRef.SQL.Text;
       XViewRef.Open;
    End;

    If Key=#27
    Then Begin
       XViewRef.Close;
       XViewRef.SQL.Clear;
       XViewRef.SQL.Add('Select * From VWparCP ');
   	XViewRef.SQL.Add('Where (COD_LOJA = :CODLOJA) ');
   	XViewRef.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
		XViewRef.SQL.Add(' And (Fech <> '+#39+'S'+#39+') ');
       XViewRef.SQL.Add(' And (PREVISAO ='+#39+'1'+#39+') ORDER BY DTVENC');
       XViewRef.SQL.Text;
       XViewRef.Open;
    End;

end;

procedure TFCtaPagar.EDLANCAMENTOKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
    If Key=VK_Down Then
        XViewRef.Next;
    If Key=VK_Up Then
        XViewRef.Prior;
end;

procedure TFCtaPagar.EdDocumentoPrevKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
    If key=#13
    Then Begin
      EdNumParc.Text:=EdDocumentoPrev.Text;
	   FiltraParcelaEdit('NUMPARC');
    End;
    If Key=#27 Then
	   FiltraParcelaEdit('ONUMPARC');
end;

procedure TFCtaPagar.EdBoletoPrevKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
    If key=#13
    Then Begin
      EdNumBoleto.Text:=EdBoletoPrev.Text;
	   FiltraParcelaEdit('NUMBOLETO');
    End;
    If Key=#27 Then
	   FiltraParcelaEdit('ONUMBOLETO');
end;

procedure TFCtaPagar.EdBoletoPrevKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
    If Key=VK_Down Then
        XViewRef.Next;
    If Key=VK_Up Then
        XViewRef.Prior;
end;

procedure TFCtaPagar.EdFiscPrevKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
    If key=#13
    Then Begin
      EdNumFiscal.Text:=EdFiscPrev.Text;
	   FiltraParcelaEdit('NUMFISCAL');
    End;
    If Key=#27 Then
	   FiltraParcelaEdit('ONUMFISCAL');
end;

procedure TFCtaPagar.EdLancPrevKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
    If key=#13
    Then Begin
      EDLANCAMENTO.Text:=EdLancPrev.Text;
	   FiltraParcelaEdit('DTLANC');
    End;
    If Key=#27 Then
	   FiltraParcelaEdit('ODTLANC');
end;

procedure TFCtaPagar.EdVencPrevKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
    If key=#13
    Then Begin
      EdVencimento.Text:=EdVencPrev.Text;
	   FiltraParcelaEdit('DTVENC');
    End;
    If Key=#27 Then
	   FiltraParcelaEdit('ODTVENC');
end;

procedure TFCtaPagar.EdPessoaPrevKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
    If key=#13
    Then Begin
      EDFornecedor.Text:=EdPessoaPrev.Text;
	   FiltraParcelaEdit('PESSOA');
    End;
    If Key=#27 Then
	   FiltraParcelaEdit('OPESSOA');
end;

procedure TFCtaPagar.EdCod_InternoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
    If key=#13
    Then Begin
      EDFornecedor.Text:=EdFornecBaixa.Text;
	   FiltraParcelaEdit('CODIGO');
    End;
    If Key=#27 Then
	   FiltraParcelaEdit('OCODIGO');
end;


//grava o tipo de conta para o shopping
procedure TFCtaPagar.BitBtn1Click(Sender: TObject);
begin
  //inherited;
    DMCONTA.TParcCP.Edit;
    if RGCTipo.ItemIndex=0
    then begin
        DMCONTA.TParcCP.FieldByName('TIPO').AsInteger:=1; //NORMAL
    end;
    if RGCTipo.ItemIndex=1
    then begin
        DMCONTA.TParcCP.FieldByName('TIPO').AsInteger:=2; //RESERVA
    end;
    if RGCTipo.ItemIndex=2
    then begin
        DMCONTA.TParcCP.FieldByName('TIPO').AsInteger:=3; //PROMOÇÃO
    end;
    if RGCTipo.ItemIndex=3
    then begin
        DMCONTA.TParcCP.FieldByName('TIPO').AsInteger:=4; //CONDOMINIO
    end;

    DMCONTA.TParcCP.Post;
    DMCONTA.IBT.CommitRetaining;   

   PConsultParc.Visible:=False;
   PCONSULTA.Visible:=True;
   PCONSULTA.BringToFront;
   TCConsultContas.OnTabChanged(Sender);

   try
   	//Edmar - 02/10/2014 - Filtra a grid com os mesmos parametros de pesquisa
       //usado anteriormente em alguma pesquisa
       XViewRef.Close;
       XViewRef.SQL.Clear;
       XViewRef.SQL.Add(XSqlFiltro);
       XViewRef.Open;

       //Filtra também o somatório
       DMFINANC.TAlx.Close;
       DMFINANC.TAlx.SQL.Clear;
       DMFINANC.TAlx.SQL.Add(XSQLFILTROSOMA);
       DMFINANC.TAlx.Open;
		EdTotIndividual.ValueNumeric:=DMFINANC.TAlx.FieldByName('TOTAL').AsCurrency;
   except

   end;   

end;

procedure TFCtaPagar.DBGridCadastroPadraoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if State = [] then
  begin
    if DMCONTA.WParP.Recno mod 2 = 1 then
      DBGridCadastroPadrao.Canvas.Brush.Color := $00EEEEEE
   else
      DBGridCadastroPadrao.Canvas.Brush.Color := clWhite;
  end;
  If DMCONTA.WParP.FieldByName('MARK').AsString='X'  Then
      DBGridCadastroPadrao.Canvas.Brush.Color := clMaroon;

  DBGridCadastroPadrao.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFCtaPagar.DBGridCadastroPadraoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  If (shift=[ssCtrl]) and (key = 83)
   Then Begin
     Try
       if not DirectoryExists('C:\MZR\Arquivos\LayoutGrid\') then begin
           ForceDirectories('C:\MZR\Arquivos\LayoutGrid\');
       end;
       DBGridCadastroPadrao.Columns.SaveToFile('C:\MZR\Arquivos\LayoutGrid\ctasPagar.lgm');
       Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Layout da Grid foi salvo com sucesso!', '', 1, 1, false, 'i');
     Except
           Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Falha na tentativa de salvar o layout da grid!', '', 1, 1, false, 'i');
     End;
   End;
end;

procedure TFCtaPagar.DBGBAIXADASDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  // GRID ZEBRADA
  if State = [] then
  begin
    if DMCONTA.WParP.Recno mod 2 = 1 then
      DBGBAIXADAS.Canvas.Brush.Color := $00EEEEEE
   else
      DBGBAIXADAS.Canvas.Brush.Color := clWhite;
  end;
  DBGBAIXADAS.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFCtaPagar.DBGBAIXADASKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  // CTRl+S salvar layout grid
  If (shift=[ssCtrl]) and (key = 83)
   Then Begin
     Try
       if not DirectoryExists('C:\MZR\Arquivos\LayoutGrid\') then begin
           ForceDirectories('C:\MZR\Arquivos\LayoutGrid\');
       end;
       DBGBAIXADAS.Columns.SaveToFile('C:\MZR\Arquivos\LayoutGrid\ctasPagarBaixadas.lgm');
       Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Layout da Grid foi salvo com sucesso!', '', 1, 1, false, 'i');
     Except
           Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Falha na tentativa de salvar o layout da grid!', '', 1, 1, false, 'i');
     End;
   End;
end;

procedure TFCtaPagar.DBGPrevisaoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  // GRID ZEBRADA
  if State = [] then
  begin
    if DMCONTA.WParP.Recno mod 2 = 1 then
      DBGPrevisao.Canvas.Brush.Color := $00EEEEEE
   else
      DBGPrevisao.Canvas.Brush.Color := clWhite;
  end;
  DBGPrevisao.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFCtaPagar.DBGPrevisaoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  // CTRl+S salvar layout grid
  If (shift=[ssCtrl]) and (key = 83)
   Then Begin
     Try
       if not DirectoryExists('C:\MZR\Arquivos\LayoutGrid\') then begin
           ForceDirectories('C:\MZR\Arquivos\LayoutGrid\');
       end;
       DBGPrevisao.Columns.SaveToFile('C:\MZR\Arquivos\LayoutGrid\ctasPagarPrevisao.lgm');
       Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Layout da Grid foi salvo com sucesso!', '', 1, 1, false, 'i');
     Except
           Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Falha na tentativa de salvar o layout da grid!', '', 1, 1, false, 'i');
     End;
   End;
end;

procedure TFCtaPagar.DBGMestreDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
   // GRID ZEBRADA
  if State = [] then
  begin
    if DMCONTA.TCtaP.Recno mod 2 = 1 then
      DBGMestre.Canvas.Brush.Color := $00EEEEEE
   else
      DBGMestre.Canvas.Brush.Color := clWhite;
  end;
  DBGMestre.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFCtaPagar.DBGMestreKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  // CTRl+S salvar layout grid
  If (shift=[ssCtrl]) and (key = 83)
   Then Begin
     Try
       if not DirectoryExists('C:\MZR\Arquivos\LayoutGrid\') then begin
           ForceDirectories('C:\MZR\Arquivos\LayoutGrid\');
       end;
       DBGMestre.Columns.SaveToFile('C:\MZR\Arquivos\LayoutGrid\ctasPagarMestre.lgm');
       Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Layout da Grid foi salvo com sucesso!', '', 1, 1, false, 'i');
     Except
           Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Falha na tentativa de salvar o layout da grid!', '', 1, 1, false, 'i');
     End;
   End;
end;

procedure TFCtaPagar.DBGSLAVEKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  // CTRl+S salvar layout grid
  If (shift=[ssCtrl]) and (key = 83)
   Then Begin
     Try
       if not DirectoryExists('C:\MZR\Arquivos\LayoutGrid\') then begin
           ForceDirectories('C:\MZR\Arquivos\LayoutGrid\');
       end;
       DBGSLAVE.Columns.SaveToFile('C:\MZR\Arquivos\LayoutGrid\ctasPagarSlave.lgm');
       Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Layout da Grid foi salvo com sucesso!', '', 1, 1, false, 'i');
     Except
           Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Falha na tentativa de salvar o layout da grid!', '', 1, 1, false, 'i');
     End;
   End;
end;

procedure TFCtaPagar.DBGSLAVEDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  // GRID ZEBRADA
  if State = [] then
  begin
    if DMCONTA.WParP.Recno mod 2 = 1 then
      DBGSLAVE.Canvas.Brush.Color := $00EEEEEE
   else
      DBGSLAVE.Canvas.Brush.Color := clWhite;
  end;
  DBGSLAVE.DefaultDrawColumnCell(Rect, DataCol, Column, State)
end;

// jonathan - Dia 28/04/2009 - inclusao para chamado 297

procedure TFCtaPagar.BtnRelatorioClick(Sender: TObject);
begin
   //revela menu de relatórios
   PMREL.Popup(BtnRelatorio.Left+BtnRelatorio.Width+9, BtnRelatorio.Top+187);
end;

procedure TFCtaPagar.FornecedoresClick(Sender: TObject);
begin
 	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RCTAPAGAR', 'M')=False Then
  		Exit;
   FMenu.TIPOAUX:='CP';
   FMenu.TIPOREL:='RELCTAPFOR';
   AbrirForm(TFRelCTAPR, FRelCTAPR, 0);
end;

procedure TFCtaPagar.MensalClick(Sender: TObject);
begin
  {	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RCTAPAGAR', 'M')=False Then
  		Exit;
   FMenu.TIPOAUX:='CP';
   FMenu.TIPOREL:='RELCTAPMENS';
   AbrirForm(TFRelCTAPR, FRelCTAPR, 0);}

   ShowMessage('     RELATÓRIO DESATIVADO DO SISTEMA!     ');
end;

procedure TFCtaPagar.DataClick(Sender: TObject);
begin
  //EFETUA CONTROLE DE ACESSO
   If ControlAccess('RCTAPAGAR', 'M')=False Then
  		Exit;
   FMenu.TIPOAUX:='CP';
   FMenu.TIPOREL:='RELCTAPDATA';
   AbrirForm(TFRelCTAPR, FRelCTAPR, 0);
end;

procedure TFCtaPagar.RelaodosPagamentosClick(Sender: TObject);
begin
  //EFETUA CONTROLE DE ACESSO
   If ControlAccess('RCTAPAGAR', 'M')=False Then
  		Exit;
   FMenu.TIPOAUX:='CP';
   FMenu.TIPOREL:='RELCTAPDOC_REC';
   AbrirForm(TFRelCTAPR, FRelCTAPR, 0);
end;

procedure TFCtaPagar.RelCtasPagarFornecedorClick(Sender: TObject);
begin
   FMenu.TIPOREL:='RELCTA_FORNECEDOR';
   AbrirForm(TFRelCTAPR, FRelCTAPR, 0);
end;

procedure TFCtaPagar.RelatrioCtasRateioClick(Sender: TObject);
begin
  //EFETUA CONTROLE DE ACESSO
   If ControlAccess('RCTAPAGAR', 'M')=False Then
  		Exit;
   FMenu.TIPOAUX:='CP';
   FMenu.TIPOREL:='REL_CTARATEIO';
   AbrirForm(TFRelCTAPR, FRelCTAPR, 0);
end;

procedure TFCtaPagar.PagamentodePrevisoClick(Sender: TObject);
begin
 //EFETUA CONTROLE DE ACESSO
   If ControlAccess('CAD_CP', 'M')=False Then
  		Exit;
	 TIPOAUX:='PREVISAO';
    TIPOREL:='RELCTAP_PREVI';
    AbrirForm(TFRelCtaPR, FRelCtaPR, 0);
end;

procedure TFCtaPagar.Recibo1Click(Sender: TObject);
begin
  inherited;
	//FILTRA LOJA PARA VERIFICAR O TIPO DE IMPRESSÃO
   FiltraTabela(DMMacs.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
	//PREPARA SQL
	   DMFinanc.TRel.Close;
	   DMFinanc.TRel.SQL.Clear;
	   DMFinanc.TRel.SQL.Add('SELECT parcelacp.dtvenc AS VENCIMENTO, parcelacp.numparc, parcelacp.valor, parcelacp.valext, ');
	   DMFinanc.TRel.SQL.Add('pessoa.bairro, pessoa.cep, Pessoa.Telrel, pessoa.cpfcnpj, pessoa.endnumero, pessoa.endereco, pessoa.nome, ');
	   DMFinanc.TRel.SQL.Add('CtaPagar.NumDoc, CtaPagar.DTLanc, cidade.nome, estado.uf_estado ');
	   DMFinanc.TRel.SQL.Add('FROM parcelacp join ctapagar ON parcelacp.cod_ctapagar = ctapagar.cod_ctapagar ');
	   DMFinanc.TRel.SQL.Add('JOIN fornecedor on fornecedor.cod_fornec = ctapagar.cod_fornec ');
	   DMFinanc.TRel.SQL.Add('join pessoa ON pessoa.cod_pessoa = fornecedor.cod_pessoa ');
	   DMFinanc.TRel.SQL.Add('left join cidade on cidade.cod_cidade = pessoa.cod_cidade ');
	   DMFinanc.TRel.SQL.Add('left join estado ON estado.cod_estado = cidade.cod_estado ');
	   DMFinanc.TRel.SQL.Add('Where parcelacp.COD_PARCELACP=:CODCTAPAGAR ');
      DMFINANC.TRel.ParamByName('CODCTAPAGAR').AsInteger:=DMCONTA.WParP.FieldByName('COD_PARCELACP').AsInteger;
	   DMFinanc.TRel.Open;
      FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfReciboPagar.frf');
      FSRel.ShowReport;
end;


procedure TFCtaPagar.Recibo2Click(Sender: TObject);
begin
  inherited;
   //FILTRA LOJA PARA VERIFICAR O TIPO DE IMPRESSÃO
   FiltraTabela(DMMacs.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
	//PREPARA SQL
	   DMFinanc.TRel.Close;
	   DMFinanc.TRel.SQL.Clear;
	   DMFinanc.TRel.SQL.Add('SELECT parcelacp.valext, parcelacp.dtvenc AS VENCIMENTO, parcelacp.numparc, parcelacp.valor, ');
	   DMFinanc.TRel.SQL.Add('pessoa.bairro, pessoa.cep, Pessoa.Telrel, pessoa.cpfcnpj, pessoa.endnumero, pessoa.endereco, pessoa.nome, ');
	   DMFinanc.TRel.SQL.Add('CtaPagar.NumDoc, CtaPagar.DTLanc, cidade.nome, estado.uf_estado ');
	   DMFinanc.TRel.SQL.Add('FROM parcelacp join ctapagar ON parcelacp.cod_ctapagar = ctapagar.cod_ctapagar ');
	   DMFinanc.TRel.SQL.Add('JOIN fornecedor on fornecedor.cod_fornec = ctapagar.cod_fornec ');
	   DMFinanc.TRel.SQL.Add('join pessoa ON pessoa.cod_pessoa = fornecedor.cod_pessoa ');
	   DMFinanc.TRel.SQL.Add('left join cidade on cidade.cod_cidade = pessoa.cod_cidade ');
	   DMFinanc.TRel.SQL.Add('left join estado ON estado.cod_estado = cidade.cod_estado ');
	   DMFinanc.TRel.SQL.Add('Where parcelacp.COD_PARCELACP=:CODCTAPAGAR ');
      DMFINANC.TRel.ParamByName('CODCTAPAGAR').AsInteger:=DMCONTA.WParP.FieldByName('COD_PARCELACP').AsInteger;
	   DMFinanc.TRel.Open;
      FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfReciboPagar.frf');
      FSRel.ShowReport;
end;

procedure TFCtaPagar.DBGridCadastroPadraoDblClick(Sender: TObject);
begin
  inherited;
	//selecionar a parcela para ser marcada
   If FiltraTabela(DMconta.TParcCP, 'PARCELACP', 'COD_PARCELACP', XViewRef.FieldByName('COD_PARCELACP').AsString, '')
   Then Begin
       DMCONTA.TParcCP.Edit;
       If DMCONTA.TParcCP.FieldByName('MARK').AsString='X' Then
       	DMCONTA.TParcCP.FieldByName('MARK').AsString:=''
       Else
       	DMCONTA.TParcCP.FieldByName('MARK').AsString:='X';
       DMCONTA.TParcCP.Post;
       DMCONTA.IBT.CommitRetaining;
    	TCConsultContas.OnTabChanged(Sender);
   End;  
end;

procedure TFCtaPagar.DesmarcarTodas1Click(Sender: TObject);
begin
  inherited;
    if Mensagem('CONFIRMACAO','Desmarcar todas as parcelas selecionadas?','',2,3,false,'C')=2
    then begin
       DMFINANC.TAlx.Close;
       DMFINANC.TAlx.SQL.Clear;
       DMFINANC.TAlx.SQL.Add(' update parcelacp set parcelacp.mark='+#39+#39);
       DMFINANC.TAlx.ExecSQL;
       DMFINANC.Transaction.CommitRetaining;
    	TCConsultContas.OnTabChanged(Sender);
    End;
end;

procedure TFCtaPagar.Filtrarcontasmarcadas1Click(Sender: TObject);
begin
  inherited;
	//seleciona todas as contas marcadas
   DMCONTA.WParp.Close;
   DMCONTA.WParp.SQL.Clear;
   DMCONTA.WParp.SQL.Add('Select * From VWparCp  Where (VWparCp.COD_LOJA = :CODLOJA)  And (VWparCp.Fech <> '+#39+'S'+#39+')   And (VWparCp.MARK = '+#39+'X'+#39+')');
   DMCONTA.WParp.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
   DMCONTA.WParp.Open;
end;

procedure TFCtaPagar.AgruparContasSelecionadas1Click(Sender: TObject);
Var
	XCliente, XFlag: Integer;
begin
  inherited;
	//seleciona todas as contas marcadas
   DMCONTA.WParP.Close;
   DMCONTA.WParP.SQL.Clear;
   DMCONTA.WParP.SQL.Add('Select * From VWparCP  Where (VWparCP.COD_LOJA = :CODLOJA)  And (VWparCP.Fech <> '+#39+'S'+#39+')   And (VWparCP.MARK = '+#39+'X'+#39+')');
   DMCONTA.WParP.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
   DMCONTA.WParP.Open;
   Xcliente:=DMCONTA.WParP.FieldByName('COD_FORNEC').AsInteger;
   XFlag:=0;
   DMCONTA.WParP.First;
   While not DMCONTA.WParP.Eof do
   Begin
       If XCliente<>DMCONTA.WParP.FieldByName('COD_FORNEC').AsInteger Then
           XFlag:=1;
       DMCONTA.WParP.Next;
   End;
   If XFlag=1
   Then Begin
   	MessageDlg('Para agrupar as contas, elas devem pertencer a um mesmo fornecedor.', mtWarning, [mbOK], 0);
   End
   Else Begin
		MessageDlg('Ao agrupar as contas marcadas, elas serão apagadas e uma nova conta será criada totalizando as contas. '+#13+#10+'A conta gerada não possuirá um relacionamento com a compra, sendo assim, comandos executados nas compras'+#13+#10+'que geraram estas contas provavelmente não serão refletidas na conta agrupada', mtWarning, [mbOK], 0);
       if Mensagem('C O N F I R M A Ç Ã O','Deseja realmente agrupar as contas?','',2,3,false,'c')=2
       then begin
           AgrupaContas;
    		TCConsultContas.OnTabChanged(Sender);
       End;
   End;
end;
procedure TFCtaPagar.AtualizaForm;
begin
	Refresh;

end;

procedure TFCtaPagar.CtasapagarVencidas1Click(Sender: TObject);
begin
  inherited;
      FMenu.TIPOREL:='RELCTAVENCIDAPAGAR';
      AbrirForm(TFRelCTAPR, FRelCTAPR, 0);
end;

procedure TFCtaPagar.BtnFaturaContasClick(Sender: TObject);
begin
  //inherited;
   xTipo := 'CP';
   FFaturaContas.ConsultaClienteMark('NORMAL');
	If xFlagCons = 1 then
		AbrirForm(TFFaturaContas, FFaturaContas , 0)
   Else
   	Mensagem('    A T E N Ç Ã O   ','Não existem parcelas marcadas para faturamento.','',1,1,false,'I');

   OnActivate(Self);
end;



procedure TFCtaPagar.RelContasdeLanamento1Click(Sender: TObject);
begin
  inherited;
  FMenu.TIPOREL:='CTALANCAMENTO';
  AbrirForm(TFRelCTAPR, FRelCTAPR, 0);
end;

procedure TFCtaPagar.RelContasdeLanamentoGrfico1Click(Sender: TObject);
begin
  inherited;
  FMenu.TIPOREL:='CTALANCAMENTOGRAF';
  AbrirForm(TFRelCTAPR, FRelCTAPR, 0);
end;
procedure TFCtaPagar.FlatButton1Click(Sender: TObject);
begin
  inherited;
  EdVencimento.Text := '01/01/1900';
  edvencimento2.Text := DateToStr(Date());
  edvencimento2.SetFocus;
  keybd_event(VK_RETURN, 1, 0, 0);
end;

procedure TFCtaPagar.ImprimirRecibo1Click(Sender: TObject);
begin
  inherited;
  	try
  		ImprimirReciboCp(DMCONTA.WParP.FieldByName('COD_PARCELACP').AsInteger);
  	except
   	on e : Exception do
    		ShowMessage(e.Message);
  	end;
end;

procedure TFCtaPagar.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
VAR
  Data: Integer;
  Mes:String;
  Year, Month, Day:word;  
begin
  inherited;
    Try
    Data := DayOfWeek(Date());{Volta um número inteiro que representa o dia da semana}
    DecodeDate(Date(), Year, Month, Day);
    Case Month of
        1:Mes:='Janeiro';
        2:Mes:='Fevereiro';
        3:Mes:='Março';
        4:Mes:='Abril';
        5:Mes:='Maio';
        6:Mes:='Junho';
        7:Mes:='Julho';
        8:Mes:='Agosto';
        9:Mes:='Setembro';
        10:Mes:='Outubro';
        11:Mes:='Novembro';
        12:Mes:='Dezembro';
    End;
    Except                                    
    end;

	 QRUfPag.Caption := DMMACS.TALX.FieldByName('uf_estado').AsString;

    If FiltraTabela(DMMACS.TALX, 'CIDADE', 'COD_CIDADE', DMMACS.TEmpresa.FieldByName('COD_CIDADE').AsString, '') Then
    	QRDtLocal.Caption:=DMMACS.TALX.FieldByName('NOME').AsString+', '+ IntToStr(Day)+' de '+Mes + ' de '+IntToStr(Year)
    Else
     	QRDtLocal.Caption:=IntToStr(Day)+' de '+Mes + ' de '+IntToStr(Year);
       
    FMenu.Extenso.Numero:=FormatFloat('0.00', DMFINANC.TAlx.FieldByName('VALORPG').AsCurrency);;
    QRLabel105.Caption:=UpperCase(FMenu.Extenso.Extenso);
    QrHr.Caption:=TimeToStr(Time());
end;

procedure TFCtaPagar.ImprimirReciboCp(CODCTA: Integer);
begin
	try
      	DMFinanc.TAlx.Close;
      	DMFinanc.TAlx.SQL.Clear;
      	DMFinanc.TAlx.SQL.Add(' select distinct(parcelacp.cod_parcelacp), parcelacp.dtvenc VENCIMENTO, parcelacp.valorpg, parcelacp.numparc, parcelacp.valext, parcelacp.valor, ');
      	DMFinanc.TAlx.SQL.Add(' pessoa.bairro, pessoa.cep, pessoa.telrel, pessoa.cpfcnpj, pessoa.endnumero, pessoa.endereco, pessoa.nome, parcelacp.historico, ');
      	DMFinanc.TAlx.SQL.Add(' ctapagar.numdoc, ctapagar.dtlanc, cidade.nome CIDADE, estado.uf_estado, parcelacp.dtdebito DEBITO from parcelacp ');
      	DMFinanc.TAlx.SQL.Add(' left join ctapagar on ctapagar.cod_ctapagar = parcelacp.cod_ctapagar ');
      	DMFinanc.TAlx.SQL.Add(' left join fornecedor on fornecedor.cod_fornec = ctapagar.cod_fornec ');
      	DMFinanc.TAlx.SQL.Add(' left join pessoa on pessoa.cod_pessoa = fornecedor.cod_pessoa ');
      	DMFinanc.TAlx.SQL.Add(' left join cidade on cidade.cod_cidade = pessoa.cod_cidade ');
      	DMFinanc.TAlx.SQL.Add(' left join estado on estado.cod_estado = cidade.cod_estado ');
      	DMFinanc.TAlx.SQL.Add(' where parcelacp.cod_parcelacp = :CODPARCCP ');
      	DMFinanc.TAlx.ParamByName('CODPARCCP').AsInteger := CODCTA;
  		DMFinanc.TAlx.Open;

  		DMMACS.Transaction.CommitRetaining;
  		DMMACS.TALX.Close;
  		DMMACS.TALX.SQL.Clear;
  		DMMACS.TALX.SQL.Add(' select empresa.endereco, cidade.nome CIDADE, estado.uf_estado from empresa ');
  		DMMACS.TALX.SQL.Add(' left join Cidade on cidade.cod_cidade = empresa.cod_cidade ');
  		DMMACS.TALX.SQL.Add(' left join Estado on Estado.cod_estado = cidade.cod_estado ');
  		DMMACS.TALX.SQL.Add(' where empresa.cod_empresa = :CODEMP ');
  		DMMACS.TALX.ParamByName('CODEMP').AsString := FMenu.LCODEMPRESA.Caption;
  		DMMACS.TALX.Open;

  		QrReciboP.Preview;
  	except
   	On E : Exception do
      		Raise Exception.Create('SELECT IMPRECIBO (1151): '+e.Message);
   end;
end;

procedure TFCtaPagar.RecibocomProdutos1Click(Sender: TObject);
begin
  inherited;
  	DMESTOQUE.TRel.Close;
   DMESTOQUE.TRel.SQL.Clear;

   //Edmar - 25/05/2015 - Cria o SQL verificando se a parcela em questão possui valor pago diferente do valor real da conta
   DMESTOQUE.Alx.Close;
   DMESTOQUE.Alx.SQL.Clear;
   DMESTOQUE.Alx.SQL.Add(' SELECT PARCELACP.VALORPG FROM PARCELACP WHERE (PARCELACP.COD_PARCELACP = :PARCELA) AND (PARCELACP.VALOR <> PARCELACP.VALORPG) ');
   DMESTOQUE.Alx.ParamByName('PARCELA').AsInteger := DMCONTA.WParP.FieldByName('COD_PARCELACP').AsInteger;
   DMESTOQUE.Alx.Open;

   if not DMESTOQUE.Alx.IsEmpty then
   begin
       FMenu.Extenso.Numero := DMESTOQUE.Alx.FieldByName('VALORPG').AsString;

       try
           MDO.Query.Close;
           MDO.Query.SQL.Clear;
           MDO.Query.SQL.Add(' DELETE FROM TMP ');
           MDO.Query.ExecSQL;

           MDO.Transac.CommitRetaining;
       except
           MDO.Transac.RollbackRetaining;
       end;

       try
           MDO.Query.Close;
           MDO.Query.SQL.Clear;
           MDO.Query.SQL.Add(' INSERT INTO TMP (TMP.COD_TMP, TMP.DESC500) VALUES (:PARCELA, :EXTENSO) ');
           MDO.Query.ParamByName('PARCELA').AsInteger := DMCONTA.WParP.FieldByName('COD_PARCELACP').AsInteger;
           MDO.Query.ParamByName('EXTENSO').AsString  := FMenu.Extenso.Extenso;
           MDO.Query.ExecSQL;

           MDO.Transac.CommitRetaining;
       except
           MDO.Transac.RollbackRetaining;
       end;
       
       DMESTOQUE.TRel.SQL.Add(' SELECT PESSOA.NOME, PESSOA.CPFCNPJ, PESSOA.ENDERECO RUA_FORNEC, PESSOA.ENDNUMERO NUM_FORNEC, CIDADE.NOME CIDADE, ESTADO.UF_ESTADO UF, ');
       DMESTOQUE.TRel.SQL.Add(' PARCELACP.NUMPARC, EMPRESA.RAZAO_SOCIAL EMPRESA, EMPRESA.ENDERECO RUA_EMP, EMPRESA.NUMERO NUM_EMP, TMP.DESC500 EXTENSO, ');
       DMESTOQUE.TRel.SQL.Add(' VWSIMILAR.DESCRICAO PRODUTO, PARCELACP.HISTORICO, PARCELACP.VALORPG VALOR ');
       DMESTOQUE.TRel.SQL.Add(' FROM PARCELACP ');
       DMESTOQUE.TRel.SQL.Add(' LEFT JOIN EMPRESA ON EMPRESA.COD_EMPRESA IS NOT NULL ');
       DMESTOQUE.TRel.SQL.Add(' LEFT JOIN CIDADE ON CIDADE.COD_CIDADE = EMPRESA.COD_CIDADE ');
       DMESTOQUE.TRel.SQL.Add(' LEFT JOIN ESTADO ON ESTADO.COD_ESTADO = CIDADE.COD_ESTADO ');
       DMESTOQUE.TRel.SQL.Add(' LEFT JOIN TMP ON TMP.COD_TMP = PARCELACP.COD_PARCELACP ');
       DMESTOQUE.TRel.SQL.Add(' LEFT JOIN CTAPAGAR ON CTAPAGAR.COD_CTAPAGAR = PARCELACP.COD_CTAPAGAR ');
       DMESTOQUE.TRel.SQL.Add(' LEFT JOIN FORNECEDOR ON FORNECEDOR.COD_FORNEC = CTAPAGAR.COD_FORNEC ');
       DMESTOQUE.TRel.SQL.Add(' LEFT JOIN PESSOA ON PESSOA.COD_PESSOA = FORNECEDOR.COD_PESSOA ');
       DMESTOQUE.TRel.SQL.Add(' LEFT JOIN PEDCOMPRA ON PEDCOMPRA.COD_PEDCOMP = CTAPAGAR.COD_GERADOR AND CTAPAGAR.TIPOGERADOR = ''PEDCOMPRA'' ');
       DMESTOQUE.TRel.SQL.Add(' LEFT JOIN ITENSPEDC ON ITENSPEDC.COD_PEDCOMPRA = PEDCOMPRA.COD_PEDCOMP ');
       DMESTOQUE.TRel.SQL.Add(' LEFT JOIN VWSIMILAR ON VWSIMILAR.COD_ESTOQUE = ITENSPEDC.COD_ESTOQUE ');
       DMESTOQUE.TRel.SQL.Add(' WHERE (PARCELACP.COD_PARCELACP = :PARCELA) ');
       DMESTOQUE.TRel.SQL.Add(' ORDER BY VWSIMILAR.DESCRICAO ');
   end
   else begin
       {MESTOQUE.TRel.SQL.Add(' SELECT PESSOA.NOME, PESSOA.CPFCNPJ, PESSOA.ENDERECO RUA_FORNEC, PESSOA.ENDNUMERO NUM_FORNEC, CIDADE.NOME CIDADE, ESTADO.UF_ESTADO UF, ');
       DMESTOQUE.TRel.SQL.Add(' PARCELACP.NUMPARC, EMPRESA.RAZAO_SOCIAL EMPRESA, EMPRESA.ENDERECO RUA_EMP, EMPRESA.NUMERO NUM_EMP, PARCELACP.VALEXT EXTENSO, ');
       DMESTOQUE.TRel.SQL.Add(' VWSIMILAR.DESCRICAO PRODUTO, PARCELACP.HISTORICO, PARCELACP.VALOR ');
       DMESTOQUE.TRel.SQL.Add(' FROM PARCELACP ');
       DMESTOQUE.TRel.SQL.Add(' LEFT JOIN EMPRESA ON EMPRESA.COD_EMPRESA IS NOT NULL ');
       DMESTOQUE.TRel.SQL.Add(' LEFT JOIN CIDADE ON CIDADE.COD_CIDADE = EMPRESA.COD_CIDADE ');
       DMESTOQUE.TRel.SQL.Add(' LEFT JOIN ESTADO ON ESTADO.COD_ESTADO = CIDADE.COD_ESTADO ');
       DMESTOQUE.TRel.SQL.Add(' LEFT JOIN CTAPAGAR ON CTAPAGAR.COD_CTAPAGAR = PARCELACP.COD_CTAPAGAR ');
       DMESTOQUE.TRel.SQL.Add(' LEFT JOIN FORNECEDOR ON FORNECEDOR.COD_FORNEC = CTAPAGAR.COD_FORNEC ');
       DMESTOQUE.TRel.SQL.Add(' LEFT JOIN PESSOA ON PESSOA.COD_PESSOA = FORNECEDOR.COD_PESSOA ');
       DMESTOQUE.TRel.SQL.Add(' LEFT JOIN PEDCOMPRA ON PEDCOMPRA.COD_PEDCOMP = CTAPAGAR.COD_GERADOR AND CTAPAGAR.TIPOGERADOR = ''PEDCOMPRA'' ');
       DMESTOQUE.TRel.SQL.Add(' LEFT JOIN ITENSPEDC ON ITENSPEDC.COD_PEDCOMPRA = PEDCOMPRA.COD_PEDCOMP ');
       DMESTOQUE.TRel.SQL.Add(' LEFT JOIN VWSIMILAR ON VWSIMILAR.COD_ESTOQUE = ITENSPEDC.COD_ESTOQUE ');
       DMESTOQUE.TRel.SQL.Add(' WHERE (PARCELACP.COD_PARCELACP = :PARCELA) ');
       DMESTOQUE.TRel.SQL.Add(' ORDER BY VWSIMILAR.DESCRICAO ');}

       DMESTOQUE.TRel.SQL.Add(' SELECT EMPRESA.RAZAO_SOCIAL, EMPRESA.CNPJ, EMPRESA.FANTASIA, EMPRESA.ENDERECO RUA_EMP, EMPRESA.NUMERO NUM_EMP, CIDADE.NOME CIDADE, ESTADO.UF_ESTADO UF, ');
       DMESTOQUE.TRel.SQL.Add(' PARCELACP.NUMPARC, PESSOA.NOME CLIENTE, PESSOA.ENDERECO RUA_CLI, PESSOA.ENDNUMERO NUM_CLI, PARCELACP.VALEXT EXTENSO, ');
       DMESTOQUE.TRel.SQL.Add(' VWSIMILAR.DESCRICAO PRODUTO, PARCELACP.HISTORICO, PARCELACP.VALOR ');
       DMESTOQUE.TRel.SQL.Add(' FROM PARCELACP ');
       DMESTOQUE.TRel.SQL.Add(' LEFT JOIN EMPRESA ON EMPRESA.COD_EMPRESA IS NOT NULL ');
       DMESTOQUE.TRel.SQL.Add(' LEFT JOIN CIDADE ON CIDADE.COD_CIDADE = EMPRESA.COD_CIDADE ');
       DMESTOQUE.TRel.SQL.Add(' LEFT JOIN ESTADO ON ESTADO.COD_ESTADO = CIDADE.COD_ESTADO ');
       DMESTOQUE.TRel.SQL.Add(' LEFT JOIN CTAPAGAR ON CTAPAGAR.COD_CTAPAGAR = PARCELACP.COD_CTAPAGAR ');
       DMESTOQUE.TRel.SQL.Add(' LEFT JOIN FORNECEDOR ON FORNECEDOR.COD_FORNEC = CTAPAGAR.COD_FORNEC ');
       DMESTOQUE.TRel.SQL.Add(' LEFT JOIN PESSOA ON PESSOA.COD_PESSOA = FORNECEDOR.COD_PESSOA ');
       DMESTOQUE.TRel.SQL.Add(' LEFT JOIN PEDCOMPRA ON PEDCOMPRA.COD_PEDCOMP = CTAPAGAR.COD_GERADOR AND CTAPAGAR.TIPOGERADOR = ''PEDCOMPRA'' ');
       DMESTOQUE.TRel.SQL.Add(' LEFT JOIN ITENSPEDC ON ITENSPEDC.COD_PEDCOMPRA = PEDCOMPRA.COD_PEDCOMP ');
       DMESTOQUE.TRel.SQL.Add(' LEFT JOIN VWSIMILAR ON VWSIMILAR.COD_ESTOQUE = ITENSPEDC.COD_ESTOQUE ');
       DMESTOQUE.TRel.SQL.Add(' WHERE (PARCELACP.COD_PARCELACP = :PARCELA) ');
       DMESTOQUE.TRel.SQL.Add(' ORDER BY VWSIMILAR.DESCRICAO ');
   end;

   DMESTOQUE.TRel.ParamByName('PARCELA').AsInteger := DMCONTA.WParP.FieldByName('COD_PARCELACP').AsInteger;
   DMESTOQUE.TRel.Open;

   DB_master_data.DataSource := DMESTOQUE.DRel;

	FrxRel.LoadFromFile('C:\MZR\MACS\Rel\FrfReciboProdCtaP.fr3');
   
   if FileExists(ExtractFilePath(Application.ExeName)+'logorecibo.bmp') AND (FrxRel.FindObject('LogoRec') <> nil) then
		TfrxPictureView(FrxRel.FindObject('LogoRec')).Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'logorecibo.bmp');
       
   FrxRel.ShowReport();
end;

procedure TFCtaPagar.RecibocomDadosdoProduto1Click(Sender: TObject);
begin
	RecibocomProdutos1Click(Sender);
end;

procedure TFCtaPagar.VincularConta1Click(Sender: TObject);
var
   XCodCtaPagar: Integer;
begin
  inherited;
   //
   if not ControlAccess('SOMENTE_ADMINISTRADOR', 'M') then
       Exit;
       
   try
       //Edmar - 26/08/2015 - Verifica se a conta a receber seleciona
       //já não possui algum pedido ou ordem vinculado
       XCodCtaPagar := XViewRef.FieldByName('COD_CTAPAGAR').AsInteger;
       //se achou cancela processamento
       if VerificaCtaPagarVinculada(XCodCtaPagar) then
           Exit;

       if AbrirForm(TFPedCompra, FPedCompra, 1) = 'Selected' then
       begin
           //verifica se o pedido de venda selecionado já não está vinculado a alguma conta a receber
           if VerificaVinculo(DMENTRADA.WPedc.FieldByName('COD_PEDCOMP').AsInteger, 'PEDCOMPRA') then
           begin
               Mensagem(' OPÇÃO BLOQUEADA ', 'O Pedido de Venda número '+DMENTRADA.WPedc.FieldByName('NUMPED').AsString+' já se encontra vinculado a Conta a Pagar número '+DMCONTA.TCtaP.FieldByName('NUMDOC').AsString+'.', '', 1, 1, False, 'A');
               Exit;
           end;
           
           //se não foi encontrado nenhum vinculo entre o pedido e a conta a receber
           //pede confirmação do usuário, pede senha, atualiza a conta a receber e salva na tabela registro
           if Mensagem(' C O N F I R M A Ç Ã O ', 'Depois do pedido ser atrelado, a operação não poderá mais ser desfeita. Deseja continuar?', '', 2, 3, False, 'C') = 2 then
           begin
       	    AbrirForm(TFSENHA, FSENHA, 0);

               if XAlxResult then
               begin
                   try
                       //vincula o pedido a conta a receber
                       MDO.Query.Close;
                       MDO.Query.SQL.Clear;
                       MDO.Query.SQL.Add(' UPDATE CTAPAGAR SET CTAPAGAR.COD_GERADOR = :COD_PC, CTAPAGAR.TIPOGERADOR = :TIPO WHERE CTAPAGAR.COD_CTAPAGAR = :COD_CTAPAGAR ');
                       MDO.Query.ParamByName('COD_PC').AsInteger := DMENTRADA.WPedc.FieldByName('COD_PEDCOMP').AsInteger;
                       MDO.Query.ParamByName('TIPO').AsString := 'PEDCOMPRA';
                       MDO.Query.ParamByName('COD_CTAPAGAR').AsInteger := XCodCtaPagar;
                       MDO.Query.ExecSQL;

                       MDO.Transac.CommitRetaining;

                       Registra('CONTAS A PAGAR',
                           'VINCULO PED/CTA_PAG',
                           DateToStr(Date()),
                           'PEDIDO DE COMPRA VINCULADO POR '+FMenu.EdUsuario.Text,
                           'P.C: '+DMENTRADA.WPedc.FieldByName('NUMPED').AsString+'/CTAP: '+DMCONTA.TCtaR.FieldByName('NUMDOC').AsString);

                       Mensagem(' INFORMAÇÃO ', 'Vínculo realizado com sucesso!', '', 1, 1, False, 'I');                           
                   except
                       MDO.Transac.RollbackRetaining;                   
                       ShowMessage('Não foi possível vincular o Pedido de Venda a Conta a Receber.');
                   end;
               end;               
           end;           
       end;
   except

   end;
end;

function TFCtaPagar.VerificaCtaPagarVinculada(XCtaPagar: Integer): Boolean;
var
   XTextoAuxiliar: String;
begin
   Result := False;
   try
       FiltraTabela(DMCONTA.TCtaP, 'CTAPAGAR', 'COD_CTAPAGAR', IntToStr(XCtaPagar), '');

       if (DMCONTA.TCtaP.FieldByName('COD_GERADOR').AsString <> '') then
       begin
           XTextoAuxiliar := '';
           if DMCONTA.TCtaP.FieldByName('TIPOGERADOR').AsString = 'PEDCOMPRA' then
           begin
               if FiltraTabela(DMENTRADA.WPedc, 'VWPEDC', 'COD_PEDCOMP', DMCONTA.TCtaP.FieldByName('COD_GERADOR').AsString, '') then
                   XTextoAuxiliar := ' já está vinculada ao Pedido número '+DMENTRADA.WPedc.FieldByName('NUMPED').AsString+' do cliente '+DMENTRADA.WPedc.FieldByName('NOME').AsString+' e';
           end;

           Result := True;
           Mensagem(' OPÇÃO BLOQUEADA ', 'A Conta a Pagar'+XTextoAuxiliar+' não poderá ser vinculada novamente.', '', 1, 1, false, 'A');
       end
       else
           Result := False;       
   except
       on e : Exception do
       begin
           Result := True;
           Raise Exception.Create(e.Message);
       end;
   end;
end;

function TFCtaPagar.VerificaVinculo(XCodGerador: Integer;
  XTipoGerador: String): Boolean;
begin
   try
       Result := False;
       if FiltraTabela(DMCONTA.TCtaP, 'CTAPAGAR', 'COD_GERADOR', IntToStr(XCodGerador), ' AND TIPOGERADOR = '+QuotedStr(XTipoGerador)) then
           Result := True;
   except
       On e : Exception do
       begin
           Result := True;
           Raise Exception.Create(e.Message);
       end;
   end;
end;

procedure TFCtaPagar.DBHISTORICOExit(Sender: TObject);
begin
  inherited;
	If DBHISTORICO.Text='' Then
       DBHISTORICO.Text:=FrmConta.EdDescricao.Text;
end;

procedure TFCtaPagar.DBGrid3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  If (shift=[ssCtrl]) and (key = 83)
   Then Begin
     Try
       if not DirectoryExists('C:\MZR\Arquivos\LayoutGrid\') then begin
           ForceDirectories('C:\MZR\Arquivos\LayoutGrid\');
       end;
       DBGrid3.Columns.SaveToFile('C:\MZR\Arquivos\LayoutGrid\ParcelasctasPagar.lgm');
       Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Layout da Grid foi salvo com sucesso!', '', 1, 1, false, 'i');
     Except
           Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Falha na tentativa de salvar o layout da grid!', '', 1, 1, false, 'i');
     End;
   End;
end;

procedure TFCtaPagar.EdRazaoSocialKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
    If Key=VK_Down Then
        XViewRef.Next;
    If Key=VK_Up Then
        XViewRef.Prior;
end;

procedure TFCtaPagar.EdRazaoSocialKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
    If key=#13
	 Then Begin
      EDFornecedor.Text:=EdRazaoSocial.Text;
	   FiltraParcelaEdit('RAZAO');
    End;
    If Key=#27
	 Then Begin
      EDFornecedor.Text:='';
	   FiltraParcelaEdit('ORAZAO');
	 End;
end;

end.
