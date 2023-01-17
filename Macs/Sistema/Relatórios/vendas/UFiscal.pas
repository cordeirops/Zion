unit UFiscal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPadrao, Buttons, StdCtrls, DrLabel, jpeg, ExtCtrls, Mask,
  DBCtrls, ComCtrls, UFrmBusca, EditFloat, ColorEditFloat, DBColorEdit,
  ColorMaskEdit, abfControls;

type
  TFFiscal = class(TFPadrao)
    Panel1: TPanel;
    BtnGravar: TBitBtn;
    BtnCancelar: TBitBtn;
    Panel4: TPanel;
    FrmCfop: TFrmBusca;
    LTextoBusca: TLabel;
    EdDtEmissao: TDateTimePicker;
    EdDtEntSai: TDateTimePicker;
    Label2: TLabel;
    Label3: TLabel;
    EdHora: TDateTimePicker;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    EdBaseICMS: TColorEditFloat;
    EdVlrICMS: TColorEditFloat;
    EdBaseICMSSubs: TColorEditFloat;
    EdVlrICMSSubs: TColorEditFloat;
    EdVlrSeguro: TColorEditFloat;
    EdOutrasDesp: TColorEditFloat;
    EdVlrProd: TColorEditFloat;
    EdVlrIPI: TColorEditFloat;
    EdVlrNota: TColorEditFloat;
    GroupBox2: TGroupBox;
    CBFreteComp: TCheckBox;
    FrmTransp: TFrmBusca;
    Label8: TLabel;
    EdVlrFrete: TColorEditFloat;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label43: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    RBEmitente: TRadioButton;
    RBDestinatario: TRadioButton;
    Label20: TLabel;
    Label21: TLabel;
    EdQuantidade: TColorEditFloat;
    EdPesoBruto: TColorEditFloat;
    EdPesoLiquido: TColorEditFloat;
    EdEspecie: TColorMaskEdit;
    EDMarca: TColorMaskEdit;
    EdNumero: TColorMaskEdit;
    EDPlacaVeiculo: TColorMaskEdit;
    EdUf: TColorMaskEdit;
    Label22: TLabel;
    EDVLRICMSISENTO: TColorEditFloat;
    Label23: TLabel;
    BtnRecalculoFiscal: TBitBtn;
    Shape1: TShape;
    DBText1: TDBText;
    Shape3: TShape;
    Shape5: TShape;
    Shape6: TShape;
    EDVlrISS: TColorEditFloat;
    Label24: TLabel;
    EDVlrTotServ: TColorEditFloat;
    Label25: TLabel;
    Label1: TLabel;
    EDANTT: TColorMaskEdit;
    cbCFOPProdutos: TCheckBox;
    btnPreVisDANFE: TBitBtn;
    Label26: TLabel;
    Label27: TLabel;
    MDadosAd01: TMemo;
    MDadosAd02: TMemo;
    MDadosAd03: TMemo;
    MReservFisco01: TMemo;
    MReservFisco02: TMemo;
    MReservFisco03: TMemo;
    MDadosAd04: TMemo;
    procedure FormActivate(Sender: TObject);
    procedure FrmBusca1BTNOPENClick(Sender: TObject);
    procedure FrmCfopBTNMINUSClick(Sender: TObject);
    procedure FrmCfopEDCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FrmTranspBTNOPENClick(Sender: TObject);
    procedure FrmTranspEDCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnGravarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CBFreteCompClick(Sender: TObject);
    procedure BtnRecalculoFiscalClick(Sender: TObject);
    procedure FrmTranspBTNMINUSClick(Sender: TObject);
    procedure EDPlacaVeiculoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EDPlacaVeiculoKeyPress(Sender: TObject; var Key: Char);
    procedure EdUfKeyPress(Sender: TObject; var Key: Char);
    procedure EDANTTKeyPress(Sender: TObject; var Key: Char);
    procedure cbCFOPProdutosClick(Sender: TObject);
    procedure btnPreVisDANFEClick(Sender: TObject);
    procedure FrmCfopExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    XCOD_FISCAL: Integer;// Armazena a pk
  	 XCOD_CFOP: Integer;// Código do CFOP
  	 XCOD_TRANSP: Integer;//Código transportadora
  	 XTipo: String;//Define qual o tipo da operacao VENDA UO COMPRA
    XSTATE: STRING;    
  end;

var
  FFiscal: TFFiscal;

implementation

uses UDMEstoque, UCadCFOP, UDMPessoa, UFORNECEDOR, Alxorprn, Alxor32, DB,
  UDMMacs, Math, UDMSaida, UDMEntrada, AlxMessage, UMenu, UPedVenda,
  UDmServ, UDMGEOGRAFIA, UMzrNfe;

{$R *.dfm}

procedure TFFiscal.FormActivate(Sender: TObject);
begin
  inherited;
	FFiscal.MDadosAd02.Lines.Text:='';  
   FrmCfop.EdDescricao.Height:=19;
   EdHora.Time:=Time();
	If XTipo='OS'
   Then Begin
       MDadosAd02.Enabled:=True;
       MDadosAd03.Enabled:=True;
       MDadosAd04.Enabled:=True;
   End
   Else Begin
       MDadosAd02.Enabled:=False;
       MDadosAd03.Enabled:=False;
       MDadosAd04.Enabled:=False;
   End;

end;

procedure TFFiscal.FrmBusca1BTNOPENClick(Sender: TObject);
begin
  inherited;
	If AbrirForm(TFCADCFOP, FCADCFOP, 1)='Selected'
   Then Begin
		XCOD_CFOP:=DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
       FrmCfop.EDCodigo.Text:=DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
       FrmCfop.EdDescricao.Text:=DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
       FrmCfop.Repaint;
   End;                                                                
end;

procedure TFFiscal.FrmCfopBTNMINUSClick(Sender: TObject);
begin
  inherited;
	XCOD_CFOP:=-1;
   FrmCfop.EDCodigo.Text:='';
   FrmCfop.EdDescricao.Text:='';
end;

procedure TFFiscal.FrmCfopEDCodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	If Key=VK_RETURN
   Then Begin
       if FrmCfop.EDCodigo.Text<>''
       Then Begin
           If FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'CFOP', FrmCfop.EDCodigo.Text, '')
           Then Begin
              XCOD_CFOP:=DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
              FrmCfop.EDCodigo.Text:=DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
              FrmCfop.EdDescricao.Text:=DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
           End
           Else Begin
              XCOD_CFOP:=-1;
              FrmCfop.EDCodigo.Text:='';
              FrmCfop.EdDescricao.Text:='';
           End;
       End;
   End;
end;

procedure TFFiscal.FrmTranspBTNOPENClick(Sender: TObject);
begin
  inherited;
  	FiltraTabela(DMPESSOA.WFornecedor, 'VWFORNEC', '', '', ' ORDER BY NOME');//LIBERA TODOS OS REGISTROS PARA CONSULTA
   If AbrirForm(TFFornecedor, FFornecedor, 1)='Selected'
   Then Begin
   	XCOD_TRANSP:=DMPESSOA.WFornecedor.FieldByName('COD_FORNEC').AsInteger;
       FrmTransp.EdDescricao.Text:=DMPESSOA.WFornecedor.FieldByName('NOME').AsString;
       FrmTransp.EDCodigo.Text:=DMPESSOA.WFornecedor.FieldByName('COD_INTERNO').AsString;
   End;
end;

procedure TFFiscal.FrmTranspEDCodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  	If FiltraTabela(DMPESSOA.WFornecedor, 'VWFORNEC', 'COD_FORNEC', '', ' COD_INTERNO='+#39+FrmTransp.EDCodigo.Text+#39)=True
   Then Begin
   	XCOD_TRANSP:=DMPESSOA.WFornecedor.FieldByName('COD_FORNEC').AsInteger;
       FrmTransp.EdDescricao.Text:=DMPESSOA.WFornecedor.FieldByName('NOME').AsString;
   End
   Else Begin
   	XCOD_TRANSP:=-1;
       FrmTransp.EdDescricao.Text:='';
   End;
end;

procedure TFFiscal.BtnGravarClick(Sender: TObject);
begin
  inherited;
   FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
  	If FrmCfop.EdDescricao.Text=''
   Then Begin
		Mensagem('ATENÇÃO', 'Informe o Código de Operação fiscal (CFOP)!', '', 1, 1, False, 'A');
       FrmCfop.BTNOPEN.SetFocus;
       exit;
   End;

  if (EdBaseICMSSubs.ValueNumeric > 0) and (EdVlrICMSSubs.ValueNumeric = 0)
  then begin
      Mensagem('ATENÇÃO', 'Informe o Valor de ICMS de Substituição Tributária!', '', 1, 1, False, 'A');
      EdVlrICMSSubs.SetFocus;
      exit;
  end;

  if (EdBaseICMSSubs.ValueNumeric = 0) and (EdVlrICMSSubs.ValueNumeric > 0)
  then begin
      Mensagem('ATENÇÃO', 'Informe a Base de ICMS de Substituição Tributária!', '', 1, 1, False, 'A');
      EdBaseICMSSubs.SetFocus;
      exit;
  end;

  If Length(EDPlacaVeiculo.Text) > 0
  Then Begin
       If Length(EDPlacaVeiculo.Text) < 8
       Then Begin
            Mensagem('ATENÇÃO', 'Informe uma placa válida!', '', 1, 1, False, 'A');
            EDPlacaVeiculo.SetFocus;
            Exit;
       End;

       If Length(EdUf.Text) <> 2
       Then Begin
            Mensagem('ATENÇÃO', 'Informe uma UF válida!', '', 1, 1, False, 'A');
            EdUf.SetFocus;
            Exit;
       End;
   End;

   If EdDtEmissao.Date<01/01/2009
   Then Begin
   	MessageDlg('Verifique a Data de emissão', mtWarning, [mbOK], 0);
       EdDtEmissao.SetFocus;
       Exit;
   End;
   If EdDtEntSai.Date<01/01/2009
   Then Begin
   	MessageDlg('Verifique a Data de Entrada/Saida', mtWarning, [mbOK], 0);
       EdDtEntSai.SetFocus;
       Exit;
   End;
	If XTipo='VENDA'
   Then Begin
       FiltraTabela(DMSAIDA.TFiscPV, 'docfissaida', 'cod_docfisc', IntToStr(XCOD_FISCAL), '');
    {   If XSTATE<>'EDIT' Then
            XCOD_FISCAL:=InserReg(DMSAIDA.TFiscPV, 'docfissaida', 'cod_docfisc')
       Else}
       DMSAIDA.TFiscPV.Edit;
       DMSAIDA.TFiscPV.FieldByName('COD_DOCFISC').AsInteger:=XCOD_FISCAL;
       DMSAIDA.TFiscPV.FieldByName('COD_CFOP').AsInteger:=XCOD_CFOP;
       DMSAIDA.TFiscPV.FieldByName('DTEMISSAO').AsDateTime:=EdDtEmissao.Date;
       DMSAIDA.TFiscPV.FieldByName('DTENTSAID').AsDateTime:=EdDtEntSai.Date;
       DMSAIDA.TFiscPV.FieldByName('HORASAID').AsDateTime:=EdHora.Time;
       DMSAIDA.TFiscPV.FieldByName('BASEICMS').AsCurrency:=EdBaseICMS.ValueNumeric;
       DMSAIDA.TFiscPV.FieldByName('VLRICMS').AsCurrency:=EdVlrICMS.ValueNumeric;
       DMSAIDA.TFiscPV.FieldByName('BASCALSUBS').AsCurrency:=EdBaseICMSSubs.ValueNumeric;
       DMSAIDA.TFiscPV.FieldByName('VLRICMSUBS').AsCurrency:=EdVlrICMSSubs.ValueNumeric;
       DMSAIDA.TFiscPV.FieldByName('VLRSEG').AsCurrency:=EdVlrSeguro.ValueNumeric;
       DMSAIDA.TFiscPV.FieldByName('VLRTOTIPI').AsCurrency:=EdVlrIPI.ValueNumeric;
       DMSAIDA.TFiscPV.FieldByName('VLROUTRASDESP').AsCurrency:=EdOutrasDesp.ValueNumeric;
       DMSAIDA.TFiscPV.FieldByName('VLRTOTPROD').AsCurrency:=EdVlrProd.ValueNumeric;
       DMSAIDA.TFiscPV.FieldByName('VLRTOTDOCNF').AsCurrency:=EdVlrNota.ValueNumeric;
       DMSAIDA.TFiscPV.FieldByName('VLRISENTOICMS').AsCurrency:=EDVLRICMSISENTO.ValueNumeric;
       If CBFreteComp.Checked=True Then
           DMSAIDA.TFiscPV.FieldByName('FRETECOMP').AsString:='1'
       Else
           DMSAIDA.TFiscPV.FieldByName('FRETECOMP').AsString:='2';
       DMSAIDA.TFiscPV.FieldByName('VLRFRETE').AsCurrency:=EdVlrFrete.ValueNumeric;
       DMSAIDA.TFiscPV.FieldByName('COD_TRANSP').AsCurrency:=XCOD_TRANSP;
       DMSAIDA.TFiscPV.FieldByName('QUANTFRETE').AsCurrency:=EdQuantidade.ValueNumeric;
       DMSAIDA.TFiscPV.FieldByName('ESPECIEFRETE').AsString:=EdEspecie.Text;
       DMSAIDA.TFiscPV.FieldByName('MARCAFRETE').AsString:=EdMarca.Text;
       DMSAIDA.TFiscPV.FieldByName('NUMCONHEC').AsString:=EdNumero.Text;
       DMSAIDA.TFiscPV.FieldByName('PLACA').AsString:=EDPlacaVeiculo.Text;
       DMSAIDA.TFiscPV.FieldByName('UFPLACA').AsString:=EdUf.Text;
       DMSAIDA.TFiscPV.FieldByName('PESOBRUTO').AsCurrency:=EdPesoBruto.ValueNumeric;
       DMSAIDA.TFiscPV.FieldByName('PESOLIQ').AsCurrency:=EdPesoLiquido.ValueNumeric;
       DMSAIDA.TFiscPV.FieldByName('SERIE').AsString:='55';
       DMSAIDA.TFiscPV.FieldByName('MODELONF').AsString:=DMMACS.TLoja.FieldByName('MODELONF').AsString;
       DMSAIDA.TFiscPV.FieldByName('OBS').AsString:=FFiscal.MDadosAd01.Lines.Text;
       DMSAIDA.TFiscPV.FieldByName('ANTT').AsString:=FFiscal.EDANTT.Text;
       DMSAIDA.TFiscPV.FieldByName('GERARDADOSADIC').AsString:='1';
       If RBEmitente.Checked=True Then
           DMSAIDA.TFiscPV.FieldByName('FRETECONTA').AsString:='1';
       If RBDestinatario.Checked=True Then
           DMSAIDA.TFiscPV.FieldByName('FRETECONTA').AsString:='2';
       DMSAIDA.TFiscPV.Post;
       DMSAIDA.IBT.CommitRetaining;
   End;
	If XTipo='COMPRA'
   Then Begin
       DMENTRADA.TFiscPC.Edit;
       DMENTRADA.TFiscPC.FieldByName('COD_DOCFISC').AsInteger:=XCOD_FISCAL;
       DMENTRADA.TFiscPC.FieldByName('COD_CFOP').AsInteger:=XCOD_CFOP;
       DMENTRADA.TFiscPC.FieldByName('DTEMISSAO').AsString:=DateToStr(EdDtEmissao.Date);
       DMENTRADA.TFiscPC.FieldByName('DTENTSAID').AsString:=DateToStr(EdDtEntSai.Date);
       DMENTRADA.TFiscPC.FieldByName('HORASAID').AsDateTime:=EdHora.Time;
       DMENTRADA.TFiscPC.FieldByName('BASEICMS').AsCurrency:=EdBaseICMS.ValueNumeric;
       DMENTRADA.TFiscPC.FieldByName('VLRICMS').AsCurrency:=EdVlrICMS.ValueNumeric;
       DMENTRADA.TFiscPC.FieldByName('BASCALSUBS').AsCurrency:=EdBaseICMSSubs.ValueNumeric;
       DMENTRADA.TFiscPC.FieldByName('VLRICMSUBS').AsCurrency:=EdVlrICMSSubs.ValueNumeric;
       DMENTRADA.TFiscPC.FieldByName('VLRSEG').AsCurrency:=EdVlrSeguro.ValueNumeric;
       DMENTRADA.TFiscPC.FieldByName('VLRTOTIPI').AsCurrency:=EdVlrIPI.ValueNumeric;
       DMENTRADA.TFiscPC.FieldByName('VLROUTRASDESP').AsCurrency:=EdOutrasDesp.ValueNumeric;
       DMENTRADA.TFiscPC.FieldByName('VLRTOTPROD').AsCurrency:=EdVlrProd.ValueNumeric;
       DMENTRADA.TFiscPC.FieldByName('VLRTOTDOCNF').AsCurrency:=EdVlrNota.ValueNumeric;
       DMENTRADA.TFiscPC.FieldByName('VLRISENTOICMS').AsCurrency:=EDVLRICMSISENTO.ValueNumeric;
       DMENTRADA.TFiscPC.FieldByName('SERIE').AsString:='1';
       DMENTRADA.TFiscPC.FieldByName('MODELONF').AsString:=DMMACS.TLoja.FieldByName('MODELONF').AsString;
//       DMENTRADA.TFiscPC.FieldByName('OBS').AsString:=FFiscal.MAdicionais.Lines.Text;
       If CBFreteComp.Checked=True Then
       	DMENTRADA.TFiscPC.FieldByName('FRETECOMP').AsString:='1'
       Else
       	DMENTRADA.TFiscPC.FieldByName('FRETECOMP').AsString:='0';
       DMENTRADA.TFiscPC.FieldByName('VLRFRETE').AsCurrency:=EdVlrFrete.ValueNumeric;
       DMENTRADA.TFiscPC.FieldByName('COD_TRANSP').AsCurrency:=XCOD_TRANSP;
       DMENTRADA.TFiscPC.FieldByName('QUANTFRETE').AsCurrency:=EdQuantidade.ValueNumeric;
       DMENTRADA.TFiscPC.FieldByName('ESPECIEFRETE').AsString:=EdEspecie.Text;
       DMENTRADA.TFiscPC.FieldByName('MARCAFRETE').AsString:=EdMarca.Text;
       DMENTRADA.TFiscPC.FieldByName('NUMCONHEC').AsString:=EdNumero.Text;
       DMENTRADA.TFiscPC.FieldByName('PLACA').AsString:=EDPlacaVeiculo.Text;
       DMENTRADA.TFiscPC.FieldByName('UFPLACA').AsString:=EdUf.Text;
       DMENTRADA.TFiscPC.FieldByName('PESOBRUTO').AsCurrency:=EdPesoBruto.ValueNumeric;
       DMENTRADA.TFiscPC.FieldByName('PESOLIQ').AsCurrency:=EdPesoLiquido.ValueNumeric;
       If RBEmitente.Checked=True Then
       	DMENTRADA.TFiscPC.FieldByName('FRETECONTA').AsString:='1';
       If RBDestinatario.Checked=True Then
       	DMENTRADA.TFiscPC.FieldByName('FRETECONTA').AsString:='2';
       DMENTRADA.TFiscPC.Edit;
       DMENTRADA.TFiscPC.Post;
       DMENTRADA.IBT.CommitRetaining;
   End;
   If XTipo='OS'
      Then Begin
       FiltraTabela(DMServ.TFiscOrd, 'docfisord', 'cod_ordem', DMServ.TOrd.fieldByName('cod_ordem').AsString, '');
       DMServ.TFiscOrd.Edit;
       DMServ.TFiscOrd.FieldByName('COD_CFOP').AsInteger:=XCOD_CFOP;
       DMServ.TFiscOrd.FieldByName('DTEMISSAO').AsDateTime:=EdDtEmissao.Date;
       DMServ.TFiscOrd.FieldByName('DTENTSAID').AsDateTime:=EdDtEntSai.Date;
       DMServ.TFiscOrd.FieldByName('HORASAID').AsDateTime:=EdHora.Time;
       DMServ.TFiscOrd.FieldByName('BASEICMS').AsCurrency:=EdBaseICMS.ValueNumeric;
       DMServ.TFiscOrd.FieldByName('VLRICMS').AsCurrency:=EdVlrICMS.ValueNumeric;
       DMServ.TFiscOrd.FieldByName('BASCALSUBS').AsCurrency:=EdBaseICMSSubs.ValueNumeric;
       DMServ.TFiscOrd.FieldByName('VLRICMSUBS').AsCurrency:=EdVlrICMSSubs.ValueNumeric;
       DMServ.TFiscOrd.FieldByName('VLRSEG').AsCurrency:=EdVlrSeguro.ValueNumeric;
       DMServ.TFiscOrd.FieldByName('VLRTOTIPI').AsCurrency:=EdVlrIPI.ValueNumeric;
       DMServ.TFiscOrd.FieldByName('VLROUTRASDESP').AsCurrency:=EdOutrasDesp.ValueNumeric;
       DMServ.TFiscOrd.FieldByName('VLRTOTPROD').AsCurrency:=EdVlrProd.ValueNumeric;
       DMServ.TFiscOrd.FieldByName('VLRTOTDOCNF').AsCurrency:=EdVlrNota.ValueNumeric;
       DMServ.TFiscOrd.FieldByName('VLRISENTOICMS').AsCurrency:=EDVLRICMSISENTO.ValueNumeric;
       If CBFreteComp.Checked=True Then
       	DMServ.TFiscOrd.FieldByName('FRETECOMP').AsString:='1'
       Else
       	DMServ.TFiscOrd.FieldByName('FRETECOMP').AsString:='2';
       DMServ.TFiscOrd.FieldByName('VLRFRETE').AsCurrency:=EdVlrFrete.ValueNumeric;
       DMServ.TFiscOrd.FieldByName('COD_TRANSP').AsCurrency:=XCOD_TRANSP;
       DMServ.TFiscOrd.FieldByName('QUANTFRETE').AsCurrency:=EdQuantidade.ValueNumeric;
       DMServ.TFiscOrd.FieldByName('ESPECIEFRETE').AsString:=EdEspecie.Text;
       DMServ.TFiscOrd.FieldByName('MARCAFRETE').AsString:=EdMarca.Text;
       DMServ.TFiscOrd.FieldByName('NUMCONHEC').AsString:=EdNumero.Text;
       DMServ.TFiscOrd.FieldByName('PLACA').AsString:=EDPlacaVeiculo.Text;
       DMServ.TFiscOrd.FieldByName('UFPLACA').AsString:=EdUf.Text;
       DMServ.TFiscOrd.FieldByName('PESOBRUTO').AsCurrency:=EdPesoBruto.ValueNumeric;
       DMServ.TFiscOrd.FieldByName('PESOLIQ').AsCurrency:=EdPesoLiquido.ValueNumeric;
       DMServ.TFiscOrd.FieldByName('SERIE').AsString:='55';
       DMServ.TFiscOrd.FieldByName('MODELONF').AsString:=DMMACS.TLoja.FieldByName('MODELONF').AsString;
//       DMServ.TFiscOrd.FieldByName('OBS').AsString:=FFiscal.MAdicionais.Lines.Text;
		DMServ.TFiscOrd.FieldByName('DADOSAD01').AsString:=FFiscal.MDadosAd01.Lines.Text;
		DMServ.TFiscOrd.FieldByName('DADOSAD02').AsString:=FFiscal.MDadosAd02.Lines.Text;
		DMServ.TFiscOrd.FieldByName('DADOSAD03').AsString:=FFiscal.MDadosAd03.Lines.Text;
		DMServ.TFiscOrd.FieldByName('DADOSAD04').AsString:=FFiscal.MDadosAd04.Lines.Text;
		DMServ.TFiscOrd.FieldByName('RESERVFISC01').AsString:=FFiscal.MReservFisco01.Lines.Text;
		DMServ.TFiscOrd.FieldByName('RESERVFISC02').AsString:=FFiscal.MReservFisco02.Lines.Text;
		DMServ.TFiscOrd.FieldByName('RESERVFISC03').AsString:=FFiscal.MReservFisco03.Lines.Text;

       If RBEmitente.Checked=True Then
       	DMServ.TFiscOrd.FieldByName('FRETECONTA').AsString:='1';
       If RBDestinatario.Checked=True Then
       	DMServ.TFiscOrd.FieldByName('FRETECONTA').AsString:='2';

       DMServ.TFiscOrd.FieldByName('VLRTOTISS').AsCurrency:=EDVlrISS.ValueNumeric;

       DMServ.TFiscOrd.Post;
       DMServ.IBT.CommitRetaining;
   End;
   FMenu.XFRETETRANSP:=EdVlrFrete.ValueNumeric;
   If CBFreteComp.Checked=True Then
   	FMenu.XFRETETRANSPCOMPOEM:=True
   Else
   	FMenu.XFRETETRANSPCOMPOEM:=False;
   Close;
end;

procedure TFFiscal.BtnCancelarClick(Sender: TObject);
begin
  inherited;
   If XTipo='VENDA'
   Then Begin
       DMSAIDA.TFiscPV.Cancel;
       DMSAIDA.IBT.RollbackRetaining;
   End;
   If XTipo='COMPRA'
   Then Begin
       DMENTRADA.TFiscPC.Cancel;
       DMENTRADA.IBT.RollbackRetaining;
   End;
   If XTipo='ORDEM'
   Then Begin
       DMServ.TFiscOrd.Cancel;
       DMServ.IBT.RollbackRetaining;
   End;

   Close;
end;

procedure TFFiscal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	If Key=VK_F5
   Then Begin
       BtnGravar.Click;
   End;
	If Key=VK_F7
   Then Begin
       BtnCancelar.Click;
   End; 
end;
procedure TFFiscal.CBFreteCompClick(Sender: TObject);
begin
  inherited;
	If CBFreteComp.Checked=True
   Then Begin
       EdVlrNota.ValueNumeric:=EdVlrNota.ValueNumeric+EdVlrFrete.ValueNumeric;
   End
   Else Begin
       EdVlrNota.ValueNumeric:=EdVlrNota.ValueNumeric-EdVlrFrete.ValueNumeric;
   End;

   If XTipo = 'VENDA'
  Then Begin
       DMSAIDA.TFiscPV.Edit;
       If CBFreteComp.Checked=True Then
           DMSAIDA.TFiscPV.FieldByName('FRETECOMP').AsString:='1'
       Else
           DMSAIDA.TFiscPV.FieldByName('FRETECOMP').AsString:='2';
       DMSAIDA.TFiscPV.Post;
  End;

  If XTipo = 'COMPRA'
  Then Begin
       DMENTRADA.TFiscPC.Edit;
      If CBFreteComp.Checked=True Then
       	DMENTRADA.TFiscPC.FieldByName('FRETECOMP').AsString:='1'
       Else
       	DMENTRADA.TFiscPC.FieldByName('FRETECOMP').AsString:='0';
       DMENTRADA.TFiscPC.Post;
  End;
end;

procedure TFFiscal.BtnRecalculoFiscalClick(Sender: TObject);
Var
   XCodigoPed: Integer;
begin
  inherited;
      If XTipo='VENDA'
      Then Begin
           XCodigoPed:=DMSAIDA.TFiscPV.FieldByName('COD_PEDIDO').AsInteger;
           DMSAIDA.TFiscPV.Edit;
           DMSAIDA.TFiscPV.FieldByName('VLRSEG').AsCurrency:=EdVlrSeguro.ValueNumeric;
           DMSAIDA.TFiscPV.FieldByName('VLROUTRASDESP').AsCurrency:=EdOutrasDesp.ValueNumeric;
           // - 13/04/2009:   se groupBox estiver marcado, não gerar automaticamente dados adicionais
           //If gbDadosAdicionais.CheckBoxChecked
           //Then
               //DMSAIDA.TFiscPV.FieldByName('GERARDADOSADIC').AsString := '1'
           //Else
               //DMSAIDA.TFiscPV.FieldByName('GERARDADOSADIC').AsString := '0';
           DMSAIDA.TFiscPV.Post;
           DMSAIDA.IBT.CommitRetaining;
           RecalcFiscal('PV', XCodigoPed);
           //repassa valores do recalculo para as edits
           FFiscal.EdBaseICMS.ValueNumeric:=DMSAIDA.TFiscPV.FieldByName('BASEICMS').AsCurrency;
           FFiscal.EdVlrICMS.ValueNumeric:=DMSAIDA.TFiscPV.FieldByName('VLRICMS').AsCurrency;
           FFiscal.EdBaseICMSSubs.ValueNumeric:=DMSAIDA.TFiscPV.FieldByName('BASCALSUBS').AsCurrency;
           FFiscal.EdVlrICMSSubs.ValueNumeric:=DMSAIDA.TFiscPV.FieldByName('VLRICMSUBS').AsCurrency;
           FFiscal.EdVlrIPI.ValueNumeric:=DMSAIDA.TFiscPV.FieldByName('VLRTOTIPI').AsCurrency;
           //FFiscal.EdVlrProd.ValueNumeric:=DMSAIDA.TFiscPV.FieldByName('VLRTOTPROD').AsCurrency;
           FFiscal.EdVlrNota.ValueNumeric:=DMSAIDA.TFiscPV.FieldByName('VLRTOTDOCNF').AsCurrency;
           // - 13/04/2009: se estiver marcado para gerar automaticamente dados adicionais 
           If DMSAIDA.TFiscPV.FieldByName('GERARDADOSADIC').AsString <> '1'
           Then Begin
//               FFiscal.MAdicionais.Lines.Text := DMSAIDA.TFiscPV.FieldByName('OBS').AsString;
           End;

      End;

      If XTipo='COMPRA'
      Then Begin
           DMENTRADA.TFiscPC.Edit;
           DMENTRADA.TFiscPC.FieldByName('vlricmsubs').AsCurrency:=EdVlrICMSSubs.ValueNumeric;
           DMENTRADA.TFiscPC.FieldByName('VLRTOTDOCNF').AsCurrency:=DMENTRADA.TFiscPC.FieldByName('vlrtotprod').AsCurrency+DMENTRADA.TFiscPC.FieldByName('vlricmsubs').AsCurrency++DMENTRADA.TFiscPC.FieldByName('vlrtotipi').AsCurrency;
           EdVlrNota.ValueNumeric:=DMENTRADA.TFiscPC.FieldByName('VLRTOTDOCNF').AsCurrency;
           DMENTRADA.TFiscPC.Post;

           DMENTRADA.IBT.CommitRetaining;
      End;

      // - 13/03/2009: add recalc fiscal para ordens de serviço q não tinha!!
      If XTipo='OS'
      Then Begin

           XCodigoPed:=DMServ.TFiscOrd.FieldByName('COD_ORDEM').AsInteger;
           DMServ.TFiscOrd.Edit;
           DMServ.TFiscOrd.FieldByName('COD_CFOP').AsInteger:=XCOD_CFOP;
           DMServ.TFiscOrd.FieldByName('DTEMISSAO').AsDateTime:=EdDtEmissao.Date;
           DMServ.TFiscOrd.FieldByName('DTENTSAID').AsDateTime:=EdDtEntSai.Date;
           DMServ.TFiscOrd.FieldByName('HORASAID').AsDateTime:=EdHora.Time;
           DMServ.TFiscOrd.FieldByName('BASEICMS').AsCurrency:=EdBaseICMS.ValueNumeric;
           DMServ.TFiscOrd.FieldByName('VLRICMS').AsCurrency:=EdVlrICMS.ValueNumeric;
           DMServ.TFiscOrd.FieldByName('BASCALSUBS').AsCurrency:=EdBaseICMSSubs.ValueNumeric;
           DMServ.TFiscOrd.FieldByName('VLRICMSUBS').AsCurrency:=EdVlrICMSSubs.ValueNumeric;
           DMServ.TFiscOrd.FieldByName('VLRSEG').AsCurrency:=EdVlrSeguro.ValueNumeric;
           DMServ.TFiscOrd.FieldByName('VLRTOTIPI').AsCurrency:=EdVlrIPI.ValueNumeric;
           DMServ.TFiscOrd.FieldByName('VLROUTRASDESP').AsCurrency:=EdOutrasDesp.ValueNumeric;
           DMServ.TFiscOrd.FieldByName('VLRTOTPROD').AsCurrency:=EdVlrProd.ValueNumeric;
           DMServ.TFiscOrd.FieldByName('VLRTOTDOCNF').AsCurrency:=EdVlrNota.ValueNumeric;
           DMServ.TFiscOrd.FieldByName('VLRISENTOICMS').AsCurrency:=EDVLRICMSISENTO.ValueNumeric;
           If CBFreteComp.Checked=True Then
               DMServ.TFiscOrd.FieldByName('FRETECOMP').AsString:='1'
           Else
               DMServ.TFiscOrd.FieldByName('FRETECOMP').AsString:='2';
           DMServ.TFiscOrd.FieldByName('VLRFRETE').AsCurrency:=EdVlrFrete.ValueNumeric;
           DMServ.TFiscOrd.FieldByName('COD_TRANSP').AsCurrency:=XCOD_TRANSP;
           DMServ.TFiscOrd.FieldByName('QUANTFRETE').AsCurrency:=EdQuantidade.ValueNumeric;
           DMServ.TFiscOrd.FieldByName('ESPECIEFRETE').AsString:=EdEspecie.Text;
           DMServ.TFiscOrd.FieldByName('MARCAFRETE').AsString:=EdMarca.Text;
           DMServ.TFiscOrd.FieldByName('NUMCONHEC').AsString:=EdNumero.Text;
           DMServ.TFiscOrd.FieldByName('PLACA').AsString:=EDPlacaVeiculo.Text;
           DMServ.TFiscOrd.FieldByName('UFPLACA').AsString:=EdUf.Text;
           DMServ.TFiscOrd.FieldByName('PESOBRUTO').AsCurrency:=EdPesoBruto.ValueNumeric;
           DMServ.TFiscOrd.FieldByName('PESOLIQ').AsCurrency:=EdPesoLiquido.ValueNumeric;
           DMServ.TFiscOrd.FieldByName('SERIE').AsString:='55';
           DMServ.TFiscOrd.FieldByName('MODELONF').AsString:=DMMACS.TLoja.FieldByName('MODELONF').AsString;
//           DMServ.TFiscOrd.FieldByName('OBS').AsString:=FFiscal.MAdicionais.Lines.Text;
           If RBEmitente.Checked=True Then
               DMServ.TFiscOrd.FieldByName('FRETECONTA').AsString:='1';
           If RBDestinatario.Checked=True Then
               DMServ.TFiscOrd.FieldByName('FRETECONTA').AsString:='2';

           DMServ.TFiscOrd.FieldByName('VLRTOTISS').AsCurrency:=EDVlrISS.ValueNumeric;
           DMServ.TFiscOrd.FieldByName('VLRSEG').AsCurrency:=EdVlrSeguro.ValueNumeric;
           DMServ.TFiscOrd.FieldByName('VLROUTRASDESP').AsCurrency:=EdOutrasDesp.ValueNumeric;
           DMServ.TFiscOrd.Post;
           DMServ.IBT.CommitRetaining;

           RecalcFiscal('OS', XCodigoPed);

           //repassa valores do recalculo para as edits
           FiltraTabela(DMServ.TFiscOrd, 'docfisord', 'cod_ordem', IntToStr(XCodigoPed), '');

           EdBaseICMS.ValueNumeric:=DMServ.TFiscOrd.FieldByName('BASEICMS').AsCurrency;
           EdVlrICMS.ValueNumeric:=DMServ.TFiscOrd.FieldByName('VLRICMS').AsCurrency;
           EdBaseICMSSubs.ValueNumeric:=DMServ.TFiscOrd.FieldByName('BASCALSUBS').AsCurrency;
           EdVlrICMSSubs.ValueNumeric:=DMServ.TFiscOrd.FieldByName('VLRICMSUBS').AsCurrency;
           EdVlrIPI.ValueNumeric:=DMServ.TFiscOrd.FieldByName('VLRTOTIPI').AsCurrency;
           EdVlrProd.ValueNumeric:=DMServ.TFiscOrd.FieldByName('VLRTOTPROD').AsCurrency;
           EdVlrNota.ValueNumeric:=DMServ.TFiscOrd.FieldByName('VLRTOTDOCNF').AsCurrency;
           EDVLRICMSISENTO.ValueNumeric:=DMServ.TFiscOrd.FieldByName('VLRISENTOICMS').AsCurrency;
           EDVlrISS.ValueNumeric := DMServ.TFiscOrd.FieldByName('VLRTOTISS').AsCurrency;

           EDVlrTotServ.ValueNumeric := DMServ.TFiscOrd.FieldByName('VLRTOTSERV').AsCurrency;

      End;
end;

procedure TFFiscal.FrmTranspBTNMINUSClick(Sender: TObject);
begin
  inherited;
  FrmTransp.BTNMINUSClick(Sender);

end;

procedure TFFiscal.EDPlacaVeiculoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (EDPlacaVeiculo.SelLength > 0) And NOT (KEY = 8) and not (KEY = 13) and not (KEY = 27) then
   begin
       EDPlacaVeiculo.Text := '';
   end;

   if (Length(EDPlacaVeiculo.Text)= 3) AND NOT (KEY = 8) then BEGIN
       EDPlacaVeiculo.Text := EDPlacaVeiculo.Text+'-';
       EDPlacaVeiculo.SelStart := 4;
   END;
end;

procedure TFFiscal.EDPlacaVeiculoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in ['a'..'z','A'..'Z', '0'..'9', #8, #13,#27])
   then
       Key := #0
   else begin    // ['A'..'Z','a'..'z'
       if  Length(EDPlacaVeiculo.Text) < 4 then
           if not (key in ['a'..'z','A'..'Z', #8, #13,#27]) then
               Key := #0;

       if ( Length(EDPlacaVeiculo.Text) > 3 ) then
           if not (key in ['0'..'9', #8, #13,#27]) then
               Key := #0
   end;
end;

procedure TFFiscal.EdUfKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in ['a'..'z','A'..'Z', #8, #13,#27])
   then
       Key := #0;
end;

procedure TFFiscal.EDANTTKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9', #8, #13,#27])
   then
       Key := #0;
end;

procedure TFFiscal.cbCFOPProdutosClick(Sender: TObject);
begin
  inherited;
  If XTipo='VENDA'
  Then Begin
       DMSAIDA.TFiscPV.Edit;
       If cbCFOPProdutos.Checked
       Then
           DMSAIDA.TFiscPV.FieldByName('CFOPPEDIDO').AsString := '1'
       Else
           DMSAIDA.TFiscPV.FieldByName('CFOPPEDIDO').AsString := '0';
       DMSAIDA.TFiscPV.Post;
  End
end;

procedure TFFiscal.btnPreVisDANFEClick(Sender: TObject);
begin
  inherited;

  // FILTRA CIDADE
      FiltraTabela(DMGEOGRAFIA.WCidade,'VWCIDADE', 'COD_CIDADE', DMMACS.TEmpresa.FieldByName('COD_CIDADE').AsString, '');

      DMESTOQUE.Alx.Close;
      DMESTOQUE.Alx.SQL.Clear;
      DMESTOQUE.Alx.SQL.Add('select itenspedven.cod_estoque, itenspedven.valortotal, itenspedven.qtdeprod, itenspedven.valunit, itenspedven.cfop,');
      DMESTOQUE.Alx.SQL.Add('estoque.cod_subprod, subproduto.descricao,lote.numero,');
      DMESTOQUE.Alx.SQL.Add('subproduto.'+ DMMACS.TLoja.FieldByName('CODPRODREL1').AsString +' as contrint, subproduto.cod_cst, subproduto.cod_unidvenda, subproduto.ncm, subproduto.marca, cst.cod_sit_trib,');
      DMESTOQUE.Alx.SQL.Add('unidade.sigla_unid, pedvenda.numped, itenspedven.tipolista, itenspedven.IPNPMC, itenspedven.DESCPRO, itenspedven.BASEICMS, itenspedven.VLRICMS , itenspedven.BASEICMSSUBS, itenspedven.VLRICMSSUBS , itenspedven.MVADESTINO');
      DMESTOQUE.Alx.SQL.Add('from itenspedven');
      DMESTOQUE.Alx.SQL.Add('left join estoque on itenspedven.cod_estoque = estoque.cod_estoque');
      DMESTOQUE.Alx.SQL.Add('left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto');
      DMESTOQUE.Alx.SQL.Add('left join cst on subproduto.cod_cst = cst.cod_cst');
      DMESTOQUE.Alx.SQL.Add('left join unidade on subproduto.cod_unidvenda = unidade.cod_unidade');
      DMESTOQUE.Alx.SQL.Add('left join pedvenda on itenspedven.cod_pedven = pedvenda.cod_pedvenda');
      DMESTOQUE.Alx.SQL.Add('left join lote on itenspedven.cod_lote = lote.cod_lote');
      DMESTOQUE.Alx.SQL.Add('where pedvenda.cod_pedvenda = :COD');
      DMESTOQUE.Alx.ParamByName('COD').AsInteger := DMSAIDA.TFiscPV.FieldByName('COD_PEDIDO').AsInteger;
      DMESTOQUE.Alx.Open;


      DMESTOQUE.Alx1.Close;
      DMESTOQUE.Alx1.SQL.Clear;
      DMESTOQUE.Alx1.SQL.Add('SELECT pedvenda.cod_pedvenda, pedvenda.cod_cliente, pedvenda.dtpedven, pedvenda.numped, pedvenda.valor, pedvenda.dtfech,');
      DMESTOQUE.Alx1.SQL.Add('cliente.cod_pessoa, cliente.cod_interno as CODCLI, pessoa.nome as nomedes, pessoa.cpfcnpj, pessoa.bairro, pessoa.cep, pessoa.endereco, pessoa.endnumero');
      DMESTOQUE.Alx1.SQL.Add('pessoa.telrel, pessoa.cod_cidade, cidade.nome as NOMECIDADE, cidade.cod_estado, estado.uf_estado,');
      DMESTOQUE.Alx1.SQL.Add('docfissaida.baseicms, docfissaida.vlricms, docfissaida.bascalsubs, docfissaida.vlricmsubs, docfissaida.vlrtotprod,');
      DMESTOQUE.Alx1.SQL.Add('docfissaida.vlrfrete, docfissaida.vlrseg, docfissaida.vlroutrasdesp, docfissaida.vlrtotipi, docfissaida.vlrtotdocnf,');
      DMESTOQUE.Alx1.SQL.Add('docfissaida.numdocfis, docfissaida.nfechave, docfissaida.nfeserie, cfop.descricao as descricaocfop, cfop.cfop, docfissaida.obs, docfissaida.obs2,');
      DMESTOQUE.Alx1.SQL.Add('docfissaida.freteconta, docfissaida.placa, docfissaida.ufplaca, docfissaida.quantfrete, docfissaida.especiefrete, docfissaida.marcafrete, docfissaida.pesobruto, docfissaida.pesoliq, docfissaida.cod_transp, docfissaida.NUMCONHEC, docfissaida.antt');
      DMESTOQUE.Alx1.SQL.Add('FROM PEDVENDA');
      DMESTOQUE.Alx1.SQL.Add('left join cliente on pedvenda.cod_cliente = cliente.cod_cliente');
      DMESTOQUE.Alx1.SQL.Add('left join pessoa on cliente.cod_pessoa = pessoa.cod_pessoa');
      DMESTOQUE.Alx1.SQL.Add('left join cidade on pessoa.cod_cidade = cidade.cod_cidade');
      DMESTOQUE.Alx1.SQL.Add('left join estado on cidade.cod_estado = estado.cod_estado');
      DMESTOQUE.Alx1.SQL.Add('left join docfissaida on pedvenda.cod_pedvenda = docfissaida.cod_pedido');
      DMESTOQUE.Alx1.SQL.Add('left join cfop on docfissaida.cod_cfop = cfop.cod_cfop');
      DMESTOQUE.Alx1.SQL.Add('where pedvenda.cod_pedvenda = :COD');
      DMESTOQUE.Alx1.ParamByName('COD').AsInteger := DMSAIDA.TFiscPV.FieldByName('COD_PEDIDO').AsInteger;
      DMESTOQUE.Alx1.Open;

      // - 13/04/2009: dados de transporte
     DMESTOQUE.Alx2.Close;
     DMESTOQUE.Alx2.sql.Clear;
     DMESTOQUE.Alx2.SQL.Add('select pessoa.nome, pessoa.cpfcnpj, pessoa.endnumero , pessoa.endereco, cidade.nome as nomecidade, estado.uf_estado as uf, pessoaj.insc_est');
     DMESTOQUE.Alx2.SQL.Add('from fornecedor');
     DMESTOQUE.Alx2.SQL.Add('left join pessoa on fornecedor.cod_pessoa = pessoa.cod_pessoa');
     DMESTOQUE.Alx2.SQL.Add('left join cidade on pessoa.cod_cidade = cidade.cod_cidade');
     DMESTOQUE.Alx2.SQL.Add('left join estado on cidade.cod_estado = estado.cod_estado');
     DMESTOQUE.Alx2.SQL.Add('left join pessoaj on pessoa.cod_pessoa = pessoaj.cod_pessoa');
     DMESTOQUE.Alx2.SQL.Add('left join docfissaida on fornecedor.cod_fornec = docfissaida.cod_transp');
     DMESTOQUE.Alx2.SQL.Add('where docfissaida.cod_pedido = :CODGERADOR');
     DMESTOQUE.Alx2.ParamByName('CODGERADOR').AsInteger := DMESTOQUE.Alx1.FieldByName('cod_pedvenda').AsInteger;
     DMESTOQUE.Alx2.Open;


      FiltraTabela(DMMacs.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
      FiltraTabela(DMPESSOA.TPessoaJ, 'PESSOAJ', 'COD_PESSOA', DMESTOQUE.Alx1.FieldByName('COD_PESSOA').AsString, '');

     FMzrNfe := FMzrNfe.Create(FMzrNfe);

      // - 21/05/2009: se a empresa não for sementes (Tolemed!)
     If (DMMACS.TLoja.FieldByName('ATIVIDADE').AsString<>'SEMENTES') Then
          FMzrNfe.FSDanfe.LoadFromFile('C:\MZR\MACS\Rel\FrfDANFE.frf')
     Else
         FMzrNfe.FSDanfe.LoadFromFile('C:\MZR\MACS\Rel\FrfDANFE2.frf');

     FMzrNfe.FSDanfe.ShowReport;

     FMzrNfe := nil;
end;

procedure TFFiscal.FrmCfopExit(Sender: TObject);
begin
  inherited;
	If XTipo='OS'
   Then Begin
       If MDadosAd03.Text='' Then
           MDadosAd03.Lines.Text:=DMESTOQUE.TCFOP.FieldByName('TXTCFOP').AsString;
   End
   Else Begin
       If MDadosAd01.Text='' Then
           MDadosAd01.Lines.Text:=DMESTOQUE.TCFOP.FieldByName('TXTCFOP').AsString;
   End; 
end;

end.
