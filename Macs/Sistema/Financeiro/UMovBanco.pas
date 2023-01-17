unit UMovBanco;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FcadPadraRodaPe, TFlatHintUnit, Grids, DBGrids, StdCtrls, TFlatEditUnit,
  Buttons, jpeg, ExtCtrls, TFlatTabControlUnit, Mask, ColorMaskEdit,
  DBCtrls, UFrmBusca, DBColorEdit, DBColorComboBox, EditFloat, DrLabel,
  Menus, ColorEditFloat;

type
  TFMovBanco = class(TFCadPadraoRodaPe)
    Bevel1: TBevel;
    Label1: TLabel;
    TCLancamentos: TFlatTabControl;
    PNmov: TPanel;
    PAtraso: TPanel;
    PMoviment: TPanel;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    EDDTLanc: TColorMaskEdit;
    EDDTVenc: TColorMaskEdit;
    TCOper: TComboBox;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    Label4: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    FrmConta: TFrmBusca;
    Label11: TLabel;
    DBHistorico: TDBColorEdit;
    DBCobranca: TDBColorComboBox;
    EdTotMov: TFloatEdit;
    RGMOVIMENTO: TRadioGroup;
    BtnBaixar: TBitBtn;
    Label12: TLabel;
    PChequeEmit: TPanel;
    Label13: TLabel;
    DBNUMCHEQUEEMIT: TDBColorEdit;
    PChequeRec: TPanel;
    Label14: TLabel;
    DBNUMCHEQUEREC: TDBColorEdit;
    FrmBuscaBanco: TFrmBusca;
    Label15: TLabel;
    Label16: TLabel;
    EdNumAg: TColorMaskEdit;
    EdNumConta: TColorMaskEdit;
    Label17: TLabel;
    EDPORTADOR: TColorMaskEdit;
    Label18: TLabel;
    EDFONEPORT: TColorMaskEdit;
    PmostraCheque: TPanel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    FRMMOSTRABANCO: TFrmBusca;
    EDMOSTRANUMAG: TColorMaskEdit;
    EDMOSTRANUMCONTA: TColorMaskEdit;
    EDMOSTRAPORTADOR: TColorMaskEdit;
    EDMOSTRAFONE: TColorMaskEdit;
    BitBtn1: TBitBtn;
    Label19: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    PCaixa: TPanel;
    DBGCTA: TDBGrid;
    EdNumCheque: TColorMaskEdit;
    eddtmov: TColorMaskEdit;
    BtnAbreFechaCX: TBitBtn;
    EdSaldo: TFloatEdit;
    PDtMov: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    RelatorioBanco: TPopupMenu;
    Movimentacao: TMenuItem;
    ChequesEmitidos: TMenuItem;
    ChequesRecebidos: TMenuItem;
    SaldodeCtasCorrente: TMenuItem;
    MovimentaoporPeriodo: TMenuItem;
    EdDtMovimento: TMaskEdit;
    edNumeroCartao: TColorMaskEdit;
    EdDtLancamento: TColorMaskEdit;
    EdDtReferencia: TColorMaskEdit;
    EdHoraLancamento: TColorMaskEdit;
    EdDtPrevisaoMov: TColorMaskEdit;
    DBEntrada: TCheckBox;
    DBSaida: TCheckBox;
    EdValor: TColorEditFloat;
    RelatriodeBancosePlanodecontas1: TMenuItem;
    PBanco: TPanel;
    DBGrid4: TDBGrid;
    ControledeSadas1: TMenuItem;
    ControledeEntradas1: TMenuItem;
    BalanoCrditoDbito1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FrmContaBTNMINUSClick(Sender: TObject);
    procedure FrmContaBTNOPENClick(Sender: TObject);
    procedure FrmContaEDCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure BtnGravarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure TCLancamentosTabChanged(Sender: TObject);
    procedure DBGridCadastroPadraoCellClick(Column: TColumn);
    procedure DBGridCadastroPadraoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnApagarClick(Sender: TObject);
    procedure BtnConsultarClick(Sender: TObject);
    procedure TCOperKeyPress(Sender: TObject; var Key: Char);
    procedure EDDTLancKeyPress(Sender: TObject; var Key: Char);
    procedure EDDTVencKeyPress(Sender: TObject; var Key: Char);
    procedure EdNomeKeyPress(Sender: TObject; var Key: Char);
    procedure DBDTVencExit(Sender: TObject);
    procedure BtnBaixarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBCobrancaExit(Sender: TObject);
    procedure FrmBuscaBancoBTNMINUSClick(Sender: TObject);
    procedure FrmBuscaBancoBTNOPENClick(Sender: TObject);
    procedure FrmBuscaBancoEDCodigoKeyPress(Sender: TObject;
      var Key: Char);
    procedure DBOperacaoExit(Sender: TObject);
    procedure DBGrid3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBGCTAKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdNumChequeKeyPress(Sender: TObject; var Key: Char);
    procedure eddtmovKeyPress(Sender: TObject; var Key: Char);
    procedure BtnAbreFechaCXClick(Sender: TObject);
    procedure DBGridCadastroPadraoMouseUp(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure RGMOVIMENTOClick(Sender: TObject);
    procedure DBDTLancExit(Sender: TObject);
    procedure DBGrid4CellClick(Column: TColumn);
    procedure DBGridCadastroPadraoColumnMoved(Sender: TObject; FromIndex,
      ToIndex: Integer);
    procedure DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);

    procedure BtnRelatorioClick(Sender: TObject);
	 procedure MovimentacaoClick(Sender: TObject);
    procedure ChequesEmitidosClick(Sender: TObject);
    procedure ChequesRecebidosClick(Sender: TObject);
    procedure SaldodeCtasCorrenteClick(Sender: TObject);
	 procedure MovimentaoporPeriodoClick(Sender: TObject);
    procedure edNumeroCartaoEnter(Sender: TObject);
    procedure edNumeroCartaoExit(Sender: TObject);
    procedure edNumeroCartaoKeyPress(Sender: TObject; var Key: Char);
    procedure DBEntradaEnter(Sender: TObject);
    procedure DBSaidaEnter(Sender: TObject);
    procedure DBSaidaExit(Sender: TObject);
    procedure DBEntradaExit(Sender: TObject);
    procedure EdDtPrevisaoMovExit(Sender: TObject);
    procedure EdDtLancamentoExit(Sender: TObject);
    procedure EdDtMovimentoExit(Sender: TObject);
    procedure FrmContaBTNOPENEnter(Sender: TObject);
    procedure FrmContaBTNOPENExit(Sender: TObject);
    procedure DBEntradaClick(Sender: TObject);
    procedure DBSaidaClick(Sender: TObject);
    procedure RelatriodeBancosePlanodecontas1Click(Sender: TObject);
    procedure DBGrid4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ControledeSadas1Click(Sender: TObject);
    procedure ControledeEntradas1Click(Sender: TObject);
    procedure BalanoCrditoDbito1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    Procedure Selectmov(Tipo:Integer);//Seleciona movimentoscom o tipo
    Procedure CalcMov;//procedure utilizada para calcular o saldo da movimentação
	 Procedure FiltraMovEdit(TipoCons: String);//Seleciona movimentos de acordo com filtro da edit. se valor em branco passado com o no inicio mostrar todas mas ordenado pelo valor
	 Procedure SelectCaixas;    
  end;

var
  FMovBanco: TFMovBanco;
  XCOD_PLNCTA: Integer;
  XTOT_E, XTOT_S: REAL;
  XCOD_BANCOCHEQUE: Integer;
  XSTATUSCHEQUE: String;
  XSALDO: Real;
  XCOD_CX: INTEGER;
  XCODMOVBANCO, XCODLANCH, XCOD_CONTABANCO: Integer;// Chaves Primarias para lançamento de cheques de transf de banco
  XCODBANCO: Integer;
implementation

uses UDmBanco, UDMConta, UMenu, UConsPlncta, Alxor32, AlxMessage, Ubanco,
  UDMMacs, UDMCaixa, DB, UCadPadrao, URelMovBanco, URelChequeEmit,
  URelData, URelMovBancoPeriodo, Math, URelBancoPlanoContas, UDMEstoque,
  UMDO;

{$R *.DFM}

//procedure utilizada para calcular o saldo da movimentação
Procedure TFMovBanco.CalcMov;
Begin
   EdTotMov.ValueNumeric:=0;
   DMBANCO.WMovB.First;
   While not DMBANCO.WMovB.Eof Do
   Begin
		If DMBANCO.WMovB.FieldByName('TIPOOP').AsString='ENTRADA' Then
           EdTotMov.ValueNumeric:=EdTotMov.ValueNumeric+DMBANCO.WMovB.FieldByName('VALOR').Value
       Else
           EdTotMov.ValueNumeric:=EdTotMov.ValueNumeric-DMBANCO.WMovB.FieldByName('VALOR').Value;

       DMBANCO.WMovB.Next;
   End;
End;
//Seleciona movimentos de acordo com filtro da edit. se valor em branco passado com o no inicio mostrar todas mas ordenado pelo valor
Procedure TFMovBanco.FiltraMovEdit(TipoCons: String);
Begin

   //**PREPARA VIEW PRINCIPAL
   XView.Close;
   XView.SQL.Clear;
   XView.SQL.Add('Select * From VWMOVBANCO ');

   //filtra para CONTA
   XView.SQL.Add('Where (COD_CTACOR = :CODCTACOR) ');
   XView.ParamByName('CODCTACOR').AsString:=DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsString;

   //filtra para contas não movimentadas
   If PNmov.Visible=True
   Then  //filtra contas em aberto
	   XView.SQL.Add(' And (Fech = '+#39+'N'+#39+') ');
   If PAtraso.Visible=True
   Then Begin //filtra contas Não movimentadas e em atraso
	   XView.SQL.Add(' AND (VWMOVBANCO.FECH='+#39+'N'+#39+') AND (VWMOVBANCO.DTVENC<=:DTVENC)');
      DMBANCO.WMovB.ParamByName('DTVENC').AsDate:=Date();
   End;
   //filtra para contas movimentadas
   If PMoviment.Visible=True
   Then  //filtra contas em aberto
	   XView.SQL.Add(' And (Fech = '+#39+'S'+#39+') ');

   //Continua sql com os valores para consulta
   If TipoCons='OPERACAO'
   Then Begin//filtrar pela operação e ordenar
       XView.SQL.Add(' And (TIPOOP = '+#39+TCOper.Text+#39+') ORDER BY TIPOOP, DTVENC, HISTORICO');
   End;
   If TipoCons='OOPERACAO'
   Then Begin//ordena pelo valor
       XView.SQL.Add(' ORDER BY TIPOOP, DTVENC, HISTORICO');
   End;

   If TipoCons='DTLANC'
   Then Begin//filtrar pelo DTLANC Data de Lançamento  do movimento e ordenar
       XView.SQL.Add(' And (DTLANC = :DTLANC) ORDER BY DTLANC, DTVENC, HISTORICO');
       XView.ParamByName('DTLANC').AsDate:=StrToDate(EDDTLanc.TEXT);
   End;
   If TipoCons='ODTLANC'
   Then Begin//ordena pela dt
       XView.SQL.Add(' ORDER BY DTLANC, DTVENC, HISTORICO');
   End;
   If TipoCons='DTVENC'
   Then Begin//filtrar pelo DTVENC Data de Vencimento do movimento e ordenar
       XView.SQL.Add(' And (DTVENC = :DTVENC) ORDER BY DTVENC, DTLANC, HISTORICO');
       XView.ParamByName('DTVENC').AsDate:=StrToDate(EDDTVenc.TEXT);
   End;
   If TipoCons='ODTVENC'
   Then Begin//ordena pelo valor
       XView.SQL.Add(' ORDER BY DTVENC, DTLANC, HISTORICO');
   End;

   If TipoCons='DTMOV'
   Then Begin//filtrar pelo DTLANC Data de Lançamento  do movimento e ordenar
       XView.SQL.Add(' And (DTMOV = :DTLANC) ORDER BY DTMOV, DTLANC, DTVENC, HISTORICO');
       XView.ParamByName('DTLANC').AsDate:=StrToDate(eddtmov.TEXT);
   End;
   If TipoCons='ODTMOV'
   Then Begin//ordena pela dt
       XView.SQL.Add(' ORDER BY DTMOV, DTLANC, DTVENC, HISTORICO');
   End;

   If TipoCons='HISTORICO'
   Then Begin//filtrar pelo historico e ordena
       XView.SQL.Add(' And (upper(HISTORICO) like upper('+#39+EdNome.Text+'%'+#39+')) ORDER BY HISTORICO, DTVENC, DTLANC');
   End;
   If TipoCons='OHISTORICO'
   Then Begin//ordena pelo valor
       XView.SQL.Add(' ORDER BY HISTORICO, DTVENC, DTLANC');
   End;

   If TipoCons='NCHEQUE'
   Then Begin//filtrar pelo historico e ordena
       XView.SQL.Add(' And (upper(NUMCHEQUE) like upper('+#39+EdNumCheque.Text+'%'+#39+')) ORDER BY NUMCHEQUE, DTVENC, DTLANC');
   End;
   If TipoCons='ONCHEQUE'
   Then Begin//ordena pelo valor
       XView.SQL.Add(' ORDER BY NUMCHEQUE, DTVENC, DTLANC');
   End;

   If TipoCons='NCARTAO'
   Then Begin//filtrar pelo historico e ordena
       XView.SQL.Add(' And HISTORICO like (''%Nº Cartão: '+edNumeroCartao.Text+'%'+#39+') ORDER BY HISTORICO, DTVENC, DTLANC');
   End;

   If TipoCons='ONCARTAO'
   Then Begin//ordena pelo valor
       XView.SQL.Add(' ORDER BY HISTORICO, DTVENC, DTLANC');
   End;

   //abre sql com filtro
   XView.Sql.Text;
   XView.Open;
   //calcula saldo de movimento
	CalcMov;
End;

//Seleciona movimentoscom o tipo
Procedure TFMOVBANCO.Selectmov(Tipo:Integer);
Begin
    // - 19/02/2009: se houver cidade pre-selecionado fazer busca
  //if FMenu.XPreSel
 // then begin
     // DMBANCO.WCtaCor.Locate(FMenu.XFieldPesqPreSel,FMenu.XCodPesqPresSel, []);
  //end;

    Try
        EdTotMov.ValueNumeric:=0;
		 EdSaldo.ValueNumeric:=XSaldoCta;
        XTOT_E:=0;
        XTOT_S:=0;
        //Seleciona todas as parcelas para loja
        If Tipo=0
        Then Begin
            If FiltraTabela(DMBANCO.WMovB, 'VWMOVBANCO', 'COD_MOVBANCO', '', ' (COD_CTACOR = '+#39+DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsString+#39+') AND (FECH='+#39+'N'+#39+')  AND ((	VER<>'+#39+'1'+#39+') OR (VER IS NULL)) Order By VWMOVBANCO.COD_MOVBANCO DESC')
            Then Begin
				 //TOTALIZA MOVIMENTOS DE ENTRADA
	             DMBANCO.TAlx.Close;
	             DMBANCO.TAlx.SQL.Clear;
	             DMBANCO.TAlx.SQL.Add('SELECT SUM(VWMOVBANCO.VALOR) AS TOTAL FROM VWMOVBANCO WHERE (COD_CTACOR = '+#39+DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsString+#39+') AND (TIPOOP='+#39+'ENTRADA'+#39+') AND (FECH='+#39+'N'+#39+')  AND ((VER<>'+#39+'1'+#39+') OR (VER IS NULL)) ');
	 			 DMBANCO.TAlx.Open;
	             If DMBANCO.TAlx.FieldByName('TOTAL').AsString='' Then
	             	XTOT_E:=0
	             Else
	             	XTOT_E:=DMBANCO.TAlx.FieldByName('TOTAL').Value;

				 //TOTALIZA MOVIMENTOS DE SAIDA
	             DMBANCO.TAlx.Close;
	             DMBANCO.TAlx.SQL.Clear;
	             DMBANCO.TAlx.SQL.Add('SELECT SUM(VWMOVBANCO.VALOR) AS TOTAL FROM VWMOVBANCO WHERE (COD_CTACOR = '+#39+DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsString+#39+') AND (TIPOOP='+#39+'SAIDA'+#39+') AND (FECH='+#39+'N'+#39+')  AND ((VER<>'+#39+'1'+#39+') OR (VER IS NULL)) ');
	 			 DMBANCO.TAlx.Open;
	             If DMBANCO.TAlx.FieldByName('TOTAL').AsString='' Then
	             	XTOT_S:=0
	             Else
	             	XTOT_S:=DMBANCO.TAlx.FieldByName('TOTAL').Value;
            End;
			 EdSaldo.ValueNumeric:=XSaldoCta;
   		 EdTotMov.ValueNumeric:=(XTOT_E-XTOT_S);
        End;
        If Tipo=1
        Then Begin
            DMBANCO.WMovB.Close;
            DMBANCO.WMovB.SQL.Clear;
            DMBANCO.WMovB.SQL.Add('SELECT * FROM VWMOVBANCO WHERE (vwMOVBANCO.COD_CTACOR=:CODCTACOR) AND (VWMOVBANCO.FECH='+#39+'N'+#39+') AND (VWMOVBANCO.DTVENC<=:DTVENC)  AND ((VER<>'+#39+'1'+#39+') OR (VER IS NULL))   Order By VWMOVBANCO.COD_MOVBANCO DESC');
            DMBANCO.WMovB.ParamByName('CODCTACOR').AsString:=DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsString;
            DMBANCO.WMovB.ParamByName('DTVENC').AsDate:=Date();
            DMBANCO.WMovB.SQL.Text;
            DMBANCO.WMovB.Open;
            if not DMBANCO.WMovB.IsEmpty
            Then Begin
				 //TOTALIZA MOVIMENTOS DE ENTRADA
	             DMBANCO.TAlx.Close;
	             DMBANCO.TAlx.SQL.Clear;
            	 DMBANCO.TAlx.SQL.Add('SELECT SUM(VWMOVBANCO.VALOR) AS TOTAL FROM VWMOVBANCO WHERE (vwMOVBANCO.COD_CTACOR=:CODCTACOR) AND (VWMOVBANCO.FECH='+#39+'N'+#39+') AND (TIPOOP='+#39+'ENTRADA'+#39+')  AND (VWMOVBANCO.DTVENC<=:DTVENC)  AND ((VER<>'+#39+'1'+#39+') OR (VER IS NULL)) ');
            	 DMBANCO.TAlx.ParamByName('CODCTACOR').AsString:=DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsString;
            	 DMBANCO.TAlx.ParamByName('DTVENC').AsDate:=Date();
	 			 DMBANCO.TAlx.Open;
	             If DMBANCO.TAlx.FieldByName('TOTAL').AsString='' Then
	             	XTOT_E:=0
	             Else
	             	XTOT_E:=DMBANCO.TAlx.FieldByName('TOTAL').Value;

				 //TOTALIZA MOVIMENTOS DE SAIDA
	             DMBANCO.TAlx.Close;
	             DMBANCO.TAlx.SQL.Clear;
            	 DMBANCO.TAlx.SQL.Add('SELECT SUM(VWMOVBANCO.VALOR) AS TOTAL FROM VWMOVBANCO WHERE (vwMOVBANCO.COD_CTACOR=:CODCTACOR) AND (VWMOVBANCO.FECH='+#39+'N'+#39+') AND (TIPOOP='+#39+'SAIDA'+#39+')  AND (VWMOVBANCO.DTVENC<=:DTVENC)  AND ((VER<>'+#39+'1'+#39+') OR (VER IS NULL)) ');
            	 DMBANCO.TAlx.ParamByName('CODCTACOR').AsString:=DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsString;
            	 DMBANCO.TAlx.ParamByName('DTVENC').AsDate:=Date();
	 			 DMBANCO.TAlx.Open;
	             If DMBANCO.TAlx.FieldByName('TOTAL').AsString='' Then
	             	XTOT_S:=0
	             Else
	             	XTOT_S:=DMBANCO.TAlx.FieldByName('TOTAL').Value;
            End;
			 EdSaldo.ValueNumeric:=XSaldoCta;
   		 EdTotMov.ValueNumeric:=(XTOT_E-XTOT_S);
        End;
        If Tipo=2
        Then Begin
	         //EdTotMov.ValueNumeric:=DMBANCO.WCtaCor.FieldByNAme('Saldo').AsCurrency;
            If FiltraTabela(DMBANCO.WMovB, 'VWMOVBANCO', 'COD_MOVBANCO', '', ' (COD_CTACOR = '+#39+DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsString+#39+') AND (FECH='+#39+'S'+#39+')  AND ((VER<>'+#39+'1'+#39+') OR (VER IS NULL)) AND (COD_ABBANCO='+#39+FMenu.LABBANCO.Caption+#39+')    Order By VWMOVBANCO.COD_MOVBANCO DESC')
            Then Begin
				 //TOTALIZA MOVIMENTOS DE ENTRADA
	             DMBANCO.TAlx.Close;
	             DMBANCO.TAlx.SQL.Clear;
	             DMBANCO.TAlx.SQL.Add(' SELECT SUM(VWMOVBANCO.VALOR) AS TOTAL FROM VWMOVBANCO WHERE (COD_CTACOR = '+#39+DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsString+#39+') AND (TIPOOP='+#39+'ENTRADA'+#39+')   AND (FECH='+#39+'S'+#39+')   AND ((VER<>'+#39+'1'+#39+') OR (VER IS NULL))  AND (COD_ABBANCO='+#39+FMenu.LABBANCO.Caption+#39+')');
	 			 DMBANCO.TAlx.Open;
	             If DMBANCO.TAlx.FieldByName('TOTAL').AsString='' Then
	             	XTOT_E:=0
	             Else
	             	XTOT_E:=DMBANCO.TAlx.FieldByName('TOTAL').Value;

				 //TOTALIZA MOVIMENTOS DE SAIDA
	             DMBANCO.TAlx.Close;
	             DMBANCO.TAlx.SQL.Clear;
	             DMBANCO.TAlx.SQL.Add('SELECT SUM(VWMOVBANCO.VALOR) AS TOTAL FROM VWMOVBANCO WHERE (COD_CTACOR = '+#39+DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsString+#39+') AND (TIPOOP='+#39+'SAIDA'+#39+')   AND (FECH='+#39+'S'+#39+')  AND ((VER<>'+#39+'1'+#39+') OR (VER IS NULL))  AND (COD_ABBANCO='+#39+FMenu.LABBANCO.Caption+#39+')');
	 			 DMBANCO.TAlx.Open;
	             If DMBANCO.TAlx.FieldByName('TOTAL').AsString='' Then
	             	XTOT_S:=0
	             Else
	             	XTOT_S:=DMBANCO.TAlx.FieldByName('TOTAL').Value;
            End;
        End;
		 EdSaldo.ValueNumeric:=XSaldoCta;
   	 EdTotMov.ValueNumeric:=(XTOT_E-XTOT_S)+EdSaldo.ValueNumeric;
    except
    End;
    If DMBANCO.VerifAbBanco = True Then
       BtnAbreFechaCX.Caption:='Fechar Banco'
    Else
       BtnAbreFechaCX.Caption:='Abrir Banco';
   If DMBANCO.VerifAbBanco = True Then
       BtnAbreFechaCX.Caption:='Fechar Banco'
   Else
       BtnAbreFechaCX.Caption:='Abrir Banco';

End;

procedure TFMovBanco.FormShow(Sender: TObject);
begin
  inherited;
    XTabela:=DMBANCO.TMovBanco;
    XView:=DMBANCO.WMovB;
    XSQLTABELA:='MOVBANCO';
    XTransaction:=DMBANCO.IBT;
	 XCampo:='HISTORICO';
    XPkTabela:='COD_MOVBANCO';
	 XTab:=False;
  	 XDescricao:= 'O Lançamento';
	 XLiberaDados:='';
    XSQLVIEW:='VWMOVBANCO';
    EDDTLanc.SetFocus;
    XSTATUSCHEQUE:='INSERT';
end;

procedure TFMovBanco.FormActivate(Sender: TObject);
begin
  inherited;
	Caption:='Movimentação bancária'  ;
   DBGridCadastroPadrao.DataSource:=DMBANCO.DWCtaCor;
   FiltraTabela(DMBANCO.WCtaCor, 'VWCTACOR', 'COD_CTACOR',  '', '(cod_ctacor > 0) and ((inativo=''0'') or (inativo is null)) ');
   If DMBANCO.WCtaCor.IsEmpty
   Then Begin
		MessageDlg('Nenhuma Conta Corrente foi cadastrada!', mtWarning, [mbOK], 0);
       Close;
       Exit;
   End;

   TCLancamentos.ActiveTab:=2;

   // JAH ATRELA Á VARIAVEL O CODIGO DO BANCO
   Selectmov(TCLancamentos.ActiveTab);
   XCODBANCO:= DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger;

   // - 19/02/2009: se houver ctacor pre-selecionado fazer busca
   if FMenu.XPreSel
   then begin
   	if FMenu.XFieldPesqPreSel = 'COD_CTACOR' then
       	DMBANCO.WCtaCor.Locate(FMenu.XFieldPesqPreSel,FMenu.XCodPesqPresSel, []);
  	end;
  	FMenu.LimpaPreSelecao;
   // - 20/04/2009: verificar se arquivo de layout foi salvo anteriormente
   If FileExists('C:\MZR\Arquivos\LayoutGrid\movBanco1.lgm')
   Then
       DBGrid1.Columns.LoadFromFile('C:\MZR\Arquivos\LayoutGrid\movBanco1.lgm');
   If FileExists('C:\MZR\Arquivos\LayoutGrid\movBanco2.lgm')
   Then
       DBGrid2.Columns.LoadFromFile('C:\MZR\Arquivos\LayoutGrid\movBanco2.lgm');
   If FileExists('C:\MZR\Arquivos\LayoutGrid\movBanco3.lgm')
   Then
       DBGrid3.Columns.LoadFromFile('C:\MZR\Arquivos\LayoutGrid\movBanco3.lgm');
end;

procedure TFMovBanco.FrmContaBTNMINUSClick(Sender: TObject);
begin
  inherited;
   //Codigo da tabela local =0
   XCOD_PLNCTA:=0;
   FrmConta.EDCodigo.Text:='';
   FrmConta.EdDescricao.Text:='';

end;

procedure TFMovBanco.FrmContaBTNOPENClick(Sender: TObject);
Var
	Oper: Char;
begin
  inherited;
   Oper:=' ';
   //verifica o tipo do operador para selecionar contas
   If DBEntrada.Checked=True
   Then Begin
       Oper:='C';
       // armazena o tipo do plano de conta que vai ser filtrado. Se for "C" buscará apenas contas de creditos, e se for "D" irá selecionar apenas contas de despesa. Estando sem valor, o formulario vai trazer todas as contas
       XTIPO_CONTA := 'C';
   End;
   If DBSaida.Checked=True
   Then Begin
       Oper:='D';
       // armazena o tipo do plano de conta que vai ser filtrado. Se for "C" buscará apenas contas de creditos, e se for "D" irá selecionar apenas contas de despesa. Estando sem valor, o formulario vai trazer todas as contas
       XTIPO_CONTA := 'D';
   End;
	//LIBERA TODAS OS ESTADOS PARA CONSUTA
	filtraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_FILIAL', '', ' (COD_FILIAL = '+FMenu.LCODEMPRESA.Caption+') AND (NATUREZA = '+#39+Oper+#39+') AND (TIPO='+#39+'N'+#39+') ORDER BY CLASSIFICACAO');

   If AbrirForm(TFConsPlnCta, FConsPlnCta, 1)='Selected'
   Then Begin
      	XCOD_PLNCTA:=DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger;
      	FrmConta.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
      	FrmConta.EDCodigo.text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
   End; 
end;

procedure TFMovBanco.FrmContaEDCodigoKeyPress(Sender: TObject;
  var Key: Char);
Var
	Oper:Char;
begin
  inherited;
	If Key = #13
   Then Begin
   	Oper:=' ';
   	//verifica o tipo do operador para selecionar contas
   	If DBEntrada.Checked=True Then
       	Oper:='C';
   	If DBSaida.Checked=True Then
       	Oper:='D';
 		If FrmConta.EDCodigo.Text<>''
       Then Begin
			//LIBERA TODAS OS ESTADOS PARA CONSUTA
			If filtraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_FILIAL', '', ' (COD_FILIAL = '+FMenu.LCODEMPRESA.Caption+') AND (NATUREZA = '+#39+Oper+#39+') AND (TIPO='+#39+'N'+#39+') And (CLASSIFICACAO='+#39+FrmConta.EDCodigo.Text+#39+ ')')=True
			Then Begin
		      	XCOD_PLNCTA:=DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger;
		      	FrmConta.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
		      	FrmConta.EDCodigo.text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
	        End
	        Else Begin
		      	XCOD_PLNCTA:=0;
		      	FrmConta.EdDescricao.Text:='';
		      	FrmConta.EDCodigo.text:='';
           End;
	    End
       Else Begin
	      	XCOD_PLNCTA:=0;
	      	FrmConta.EdDescricao.Text:='';
	      	FrmConta.EDCodigo.text:='';
       End;
   End;
end;
procedure TFMovBanco.BtnGravarClick(Sender: TObject);
Var
	XCod_MovBancoChq, XCod_ChequeRecChq: Integer;
begin
	BtnGravar.SetFocus;
	If EdValor.ValueNumeric<=0
   Then Begin
   	Mensagem('OPÇÃO BLOQUEADA', 'É necessário informar o valor da movimentação', '', 1, 1, False, 'i');
		EdValor.SetFocus;
      	Exit;
	End;
   If EdDtPrevisaoMov.text='  /  /    '
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'É necessário informar a data de previsão para movimentação', '', 1, 1, False, 'i');
		EdDtPrevisaoMov.SetFocus;
      	Exit;
	End;
	If (DBEntrada.Checked=False) and (DBSaida.Checked=False)
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'É necessário informar o tipo de operação do movimento', '', 1, 1, False, 'i');
		DBEntrada.SetFocus;
       Exit;
	End;
	If DBCobranca.text=''
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'É necessário informar o tipo de cobrança utilizada na movimentação', '', 1, 1, False, 'i');
		DBCobranca.SetFocus;
       Exit;
	End;
	If DBHistorico.text=''
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'É necessário informar o histórico para movimentação', '', 1, 1, False, 'i');
		DBHistorico.SetFocus;
       Exit;
   End;
	If FrmConta.EDCodigo.text=''
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'É necessário informar uma conta do plano para movimentação', '', 1, 1, False, 'i');
		FrmConta.EDCodigo.SetFocus;
       Exit;
   End;
	If FrmConta.EDCodigo.text=''
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'É necessário informar uma conta do plano para movimentação', '', 1, 1, False, 'i');
		FrmConta.EDCodigo.SetFocus;
       Exit;
   End;
   //VERIFICA SE A FORMA DE COBRANCA É EM CHEQUE E SE O NUMERO FOI DIGITADO
   If (DBCobranca.Text='CHEQUE') AND (DMBANCO.TMovBanco.FieldByName('NUMCHEQUE').AsString='')
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Quando a forma de cobrança é cheque, se faz necessário informar o Nº do cheque', '', 1, 1, False, 'i');
		DBCobranca.SetFocus;
       Exit;
   End;
   //VERIFICA SE ESTA SENDO LANÇADO UM CHEQUE A RECEBER
   If (DBCobranca.Text='CHEQUE') AND (DBEntrada.Checked=True)
   Then Begin
		//ESTA SENDO EFETUADO O LANCAMENTO DE UM CHEQUE A RECEBER
       //REALIZA VALIDAÇÕES
   	//VERIFICA SE A FOI INFORMADO AGENCIA
   	If (EdNumAg.Text='')
   	Then Begin
			Mensagem('OPÇÃO BLOQUEADA', 'Por favor informe o Nº da agência referente ao cheque', '', 1, 1, False, 'i');
			EdNumAg.SetFocus;
       	Exit;
   	End;
   	//VERIFICA SE A FOI INFORMADO a CONTA
   	If (EdNumConta.Text='')
   	Then Begin
			Mensagem('OPÇÃO BLOQUEADA', 'Por favor informe o Nº da conta referente ao cheque', '', 1, 1, False, 'i');
			EdNumConta.SetFocus;
       	Exit;
   	End;
   	//VERIFICA SE A FOI INFORMADO O BANCO
   	If (XCOD_BANCOCHEQUE=-1)
   	Then Begin
			Mensagem('OPÇÃO BLOQUEADA', 'Por favor informe o banco referente ao cheque', '', 1, 1, False, 'i');
			FrmBuscaBanco.EDCodigo.SetFocus;
       	Exit;
   	End;
       If LanCHRec(XSTATUSCHEQUE, XCOD_BANCOCHEQUE, XCODPKMESTRE, EdNumAg.Text, EdNumConta.Text, EDPORTADOR.Text, EDFONEPORT.Text)=False
       Then Begin
			Mensagem('OPÇÃO BLOQUEADA', 'Não foi possivel efetuar o lançamento do cheque.'+#13+'Tente fazer este lançamento mais tarde.', '', 1, 1, False, 'i');
       	Exit;
       End;
   end;
   If DBCobranca.Text='Cheque'
   Then Begin
       //VERIFICA SE O NUMERO DO CHEQUE INFORMADO JÁ NÃO FOI LANÇADO
       DMMACS.TSelect.Close;
       DMMACS.TSelect.SQL.Clear;
       DMMACS.TSelect.SQL.Add('Select * from MOVBANCO Where (NUMCHEQUE=:NUMCH) AND (COD_MOVBANCO<>:CODMOV)');
       DMMACS.TSelect.ParamByName('NUMCH').AsString:=DBNUMCHEQUEEMIT.Text;
       DMMACS.TSelect.ParamByName('CODMOV').AsInteger:=XCODPKMESTRE;
       DMMACS.TSelect.Open;
       If NOT DMMACS.TSelect.IsEmpty
       Then Begin
           Mensagem('OPÇÃO BLOQUEADA', 'O Nº do cheque informado já foi lançado em movimentos anteriores.', '', 1, 1, False, 'i');
           If PChequeEmit.Visible=True Then
               DBNUMCHEQUEEMIT.SetFocus;
           Exit;
       End;
   End;

   //VERIFICA SE ESTA SENDO LANÇADO UM CHEQUE EMITIDO E REALIZA O CONTROLE DO NUMERO DO CHEQUE EM CTA CORRENTE
   If (DBCobranca.Text='CHEQUE') AND (DBSaida.Checked=True)
   Then Begin
       DMBANCO.TCtaCor.Edit;
		   DMBANCO.TCtaCor.FieldByName('PROXCHEQUE').AsString:=INCSTRNUM(1, DBNUMCHEQUEEMIT.Text);
       DMBANCO.TCtaCor.Post;
       DMBANCO.TCtaCor.ApplyUpdates;
   End;
   Try
   	If DMBANCO.VerifAbBanco=False
   	Then Begin
   		Mensagem('OPÇÃO BLOQUEADA', 'B A N C O    F E C H A D O !', '', 1, 1, False, 'i');
   		Exit;
   	End;

      XCod_MovBancoChq:=XTabela.FieldByName('COD_MOVBANCO').AsInteger;
      XTabela.edit;
	   XTabela.FieldByName('COD_PLNCTA').AsInteger:=XCOD_PLNCTA;
      if EdDtMovimento.Text <> '  /  /    ' Then
           XTabela.FieldByName('DTMOV').AsString:=EdDtMovimento.Text;
      if EdDtLancamento.Text <> '  /  /    ' Then
  	   		XTabela.FieldByName('DTLANC').AsString:=EdDtLancamento.Text;
      if EdDtPrevisaoMov.Text <> '  /  /    ' Then
	   		XTabela.FieldByName('DTVENC').AsString:=EdDtPrevisaoMov.Text;
      if EdDtReferencia.Text <> '  /  /    ' Then
	   		XTabela.FieldByName('DTREF').AsString:=EdDtReferencia.Text;;
      if EdHoraLancamento.Text <> '  :  ' Then
	   		XTabela.FieldByName('HORALANC').AsString:=EdHoraLancamento.Text;
	   XTabela.FieldByName('COD_ABBANCO').AsString:=FMenu.LABBANCO.Caption;
	   XTabela.FieldByName('ESTRU').AsString:='1';
	   XTabela.FieldByName('COBRANCA').AsString:=DBCobranca.Text;      
	   XTabela.FieldByName('VALORPROD').AsCurrency:=XTabela.FieldByName('VALOR').AsCurrency;
      If RGMOVIMENTO.ItemIndex=0
      Then Begin
	   		XTabela.FieldByName('FECH').AsString:='S';
	   End
      Else Begin
	   		XTabela.FieldByName('FECH').AsString:='N';
	   End;
	   XTabela.FieldByName('COD_CTACOR').AsInteger:=DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger;
	   XTabela.FieldByName('COD_USUARIO').AsString:=FMenu.LCODUSUARIO.Caption;
	   XTabela.FieldByName('VALOR').AsCurrency:=EdValor.ValueNumeric;
      If DBEntrada.Checked=TRUE Then
	   		XTabela.FieldByName('TIPOOP').AsString:='ENTRADA'
      Else
	   		XTabela.FieldByName('TIPOOP').AsString:='SAIDA';
      If RGMOVIMENTO.ItemIndex=0
      Then Begin
	   		XTabela.FieldByName('FECH').AsString:='S';
      		If EdDtMovimento.Text <> '  /  /    ' Then
	   			XTabela.FieldByName('DTMOV').AsString:=EdDtMovimento.Text;
      End
      Else Begin
	   		XTabela.FieldByName('FECH').AsString:='N';
      End;
	   XTabela.FieldByName('HISTORICO').AsString:=DBHistorico.Text;
      XTabela.Post;
      //VERIFICA SE É LANÇAMENTO DE TRANSFERENCIA
      If XTabela.FieldByName('COBRANCA').AsString='T. CAIXA'
      Then Begin
	   		If LanCaixa (-1, DateToStr(Date()), XCOD_PLNCTA, 'Transf. Banco -> Caixa - '+XTabela.FIELDBYNAME('HISTORICO').AsString, XTabela.FieldByName('VALOR').AsCurrency, 'BANCO',  XTabela.FieldByName('COD_MOVBANCO').AsInteger, 'Carteira', 'E', '', XTabela.FieldByName('DTLANC').AsDateTime, '1')=True
       	Then Begin
               DMCAIXA.IBT.CommitRetaining;
           	DMBANCO.IBT.CommitRetaining;
       	End
       	Else Begin
           	DMBANCO.IBT.RollbackRetaining;
           	DMCAIXA.IBT.RollbackRetaining;
       	End;
    	End
    	Else Begin
          //VERIFICA SE É LANÇAMENTO DE TRANSFERENCIA
          If XTabela.FieldByName('COBRANCA').AsString='T. BANCO'
          Then Begin
               If LanBanco(XCOD_CONTABANCO, DMMACS.TLoja.FieldByName('PLNCTATRANSFBANCO').AsInteger, DBHISTORICO.Text, EdValor.ValueNumeric , 'BC', XCODPKMESTRE, 'ENTRADA', StrToInt(FMenu.LCODUSUARIO.Caption), 'DEP. AUTO', 'S', DateToStr(Date()), '', DateToStr(Date()), '1', EdDtReferencia.Text)=True
               Then Begin
                   MDO.Transac.CommitRetaining;
               End
               Else Begin
                   MDO.Transac.RollbackRetaining;
               End;            
           End;
          	DMBANCO.IBT.CommitRetaining;
    	End;
      	//
       //------------------------------------------
     	//----------INICIO-------------------
       // - 22/06/2009: VERIFICA SE FOI PAGAMENTO EM CARTÃO
           If (XTabela.FieldByName('COBRANCA').AsString = 'PEDVENDA') AND (XTabela.FieldByName('TIPOGERADOR').AsString = 'CTRCARTAO')
           Then Begin
               // - 22/06/2009: VERICANDO CONTA A RECEBER
               If FiltraTabela(DMCONTA.TParcCR, 'PARCELACR', 'COD_PARCELACR', DMBANCO.TMovBanco.FieldByName('COD_GERADOR').AsString , '')=True
               Then Begin
                   If RGMOVIMENTO.ItemIndex = 0
                   Then Begin
                      DMCONTA.TParcCR.Edit;
                      DMCONTA.TParcCR.FieldByName('FECH').AsString:='S';
                      DMCONTA.TParcCR.FieldByName('VALORPG').AsCurrency := XTabela.FieldByName('VALOR').AsCurrency;
                      If EdDtMovimento.Text <> '  /  /    '
                      Then Begin
                           DMCONTA.TParcCR.FieldByName('DTDEBITO').AsString := EdDtMovimento.Text;
                      End
                      Else Begin
                          DMCONTA.TParcCR.FieldByName('DTDEBITO').AsDateTime := Date();
                      End;
                   End
                   Else Begin
                      DMCONTA.TParcCR.Edit;
                      DMCONTA.TParcCR.FieldByName('FECH').AsString:='N';
                   End;
                Try
                  DMCONTA.TParcCR.Post;
                  DMCONTA.TParcCR.ApplyUpdates;
                  DMCONTA.IBT.CommitRetaining;
                Except
                  DMCONTA.IBT.RollbackRetaining;
                End;
               End;

               FiltraTabela(DMBANCO.WCtaCor, 'vwctacor', '', '', '');
               DMBANCO.wctacor.First;

               // LAÇO PARA PASSAR POR TODAS AS CONTAS CORRENTES E SELECIONAR A QUE FOR IGUAL A VARIAVEL
               while (not DMBANCO.WCtaCor.Eof) and (DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger <> XCODBANCO) do
               begin
                   DMBANCO.WCtaCor.Next;
               end;
               Selectmov(TCLancamentos.ActiveTab);

           End;

     //------------------------------------------
     //----------FIM-------------------

      //VERIFICA SE É LANÇAMENTO DE TRANSFERENCIA
      If XTabela.FieldByName('COBRANCA').AsString='T. CX CHQ'
      Then Begin
      		//SELECIONA OS REGISTROS DA MOVIMENTAÇÃO QUE GEROU OS LANÇAMENTOS P/ PEGAR OS VALORES DE BANCO
			    DMBANCO.TAlx.Close;
           DMBANCO.TAlx.SQL.Clear;
           DMBANCO.TAlx.SQL.Add(' Select * from movbanco left join vwctacor on movbanco.cod_ctacor=vwctacor.cod_ctacor ');
           DMBANCO.TAlx.SQL.Add(' left join vwagencia on vwctacor.cod_agencia = vwagencia.cod_agencia ');
           DMBANCO.TAlx.SQL.Add(' where movbanco.cod_movbanco=:CODMOVBANCO ');
           DMBANCO.TAlx.ParamByName('CODMOVBANCO').AsInteger:=XCod_MovBancoChq;
           DMBANCO.TAlx.Open;
           If Not DMBANCO.TAlx.IsEmpty
           Then Begin
  	 			//INSERE NOVO CAMPO EM LANCHEQUEREC
    			XCODLANCH:=InserReg(DMBANCO.TChequeRec, 'CHEQUEREC', 'COD_CHEQUEREC');
    			XCod_ChequeRecChq:=InserReg(DMBANCO.TChequeRec, 'CHEQUEREC', 'COD_CHEQUEREC');
   			DMBANCO.TChequeRec.FieldByName('COD_CHEQUEREC').AsInteger:=XCod_ChequeRecChq;
   			DMBANCO.TChequeRec.FieldByName('COD_BANCO').AsInteger:=DMBANCO.TAlx.FieldByName('COD_BANC').AsInteger;
   			DMBANCO.TChequeRec.FieldByName('COD_MOVBANCO').AsInteger:=DMBANCO.TAlx.FieldByName('COD_MOVBANCO').AsInteger{XCODPKMESTRE};
   			DMBANCO.TChequeRec.FieldByName('NUMAGENCIA').AsString:=DMBANCO.TAlx.FieldByName('NUMAGENCIA').AsString;
   			DMBANCO.TChequeRec.FieldByName('NUMCONTA').AsString:=DMBANCO.TAlx.FieldByName('NUMCTACOR').AsString;
   			DMBANCO.TChequeRec.FieldByName('EMITENTE').AsString:='PRÓPRIO';
				LanCaixa (-1, DateToStr(Date()),  DMBANCO.TAlx.FieldByName('COD_PLNCTA').AsInteger, 'T. BANCO CHQ:'+DMBANCO.TAlx.FieldByName('NUMCHEQUE').AsString, DMBANCO.TAlx.FieldByName('VALOR').AsCurrency, 'LCHR', XCod_ChequeRecChq, 'CHEQUE', 'E', 'CH'+DMBANCO.TAlx.FieldByName('NUMCHEQUE').AsString, DATE(), '1');
   			Try
       			DMBANCO.TChequeRec.Post;
   			Except
					Mensagem('OPÇÃO BLOQUEADA', 'Ocorreu um problema ao tentar gravar as informaçõs. reinicie o sistema e tente novamente', '', 1, 1, False, 'i');
       			DMBANCO.IBT.RollbackRetaining;
   			End;
           End
           Else Begin
				      MessageDlg('O Cheque não foi lançado!', mtWarning, [mbOK], 0);
           End;
      End;     
  	   FiltraTabela(DMBANCO.WMovB, 'VWMOVBANCO', 'COD_CTACOR', DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsString, '');
	   Selectmov(TCLancamentos.ActiveTab);
   Except
      XTransaction.RollbackRetaining;
   End;
   inherited;

   FiltraTabela(DMBANCO.WCtaCor, 'VWCTACOR', 'COD_CTACOR',  '', 'cod_ctacor > 0');

   // - 19/02/2009: se houver ctacor pre-selecionado fazer busca
  if FMenu.XPreSel
  then begin
     if FMenu.XFieldPesqPreSel = 'COD_CTACOR' then
        DMBANCO.WCtaCor.Locate(FMenu.XFieldPesqPreSel,FMenu.XCodPesqPresSel, []);
  end;
  FMenu.LimpaPreSelecao;
end;

procedure TFMovBanco.BtnCancelarClick(Sender: TObject);
begin
   XTabela.Cancel;
   XTabela.CancelUpdates;
   XTransaction.RollbackRetaining;
   inherited;
end;

procedure TFMovBanco.BtnNovoClick(Sender: TObject);
begin
   // - 19/02/2009:  inicio
  	FMenu.XPreSel := True;
  	FMenu.XFieldPesqPreSel := 'COD_CTACOR';
  	FMenu.XCodPesqPresSel := DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsString;
  	// - 19/02/2009:  fim
  
	If DMBANCO.VerifAbBanco=False Then
	   BtnAbreFechaCX.Click;
	If not DMBANCO.WCtaCor.IsEmpty
   Then Begin
       //Gera novo registro e recupera o código
       DMMACS.Transaction.CommitRetaining;
       DMMACS.TALX.Close;
       DMMACS.TALX.SQL.Clear;
       DMMACS.TALX.SQL.Add('  select gen_id(GEN_MOVBANCO_ID, 0) as codigo from rdb$database ');
       DMMACS.TALX.Open;
       XCODPKMESTRE := DMMACS.TALX.FieldByName('codigo').AsInteger;
   	DMBANCO.TMovBanco.Insert;
       DMBANCO.TMovBanco.Post;
       //Gera novo registro e recupera o código
       DMBANCO.IBT.CommitRetaining;
  		EdHoraLancamento.Text:=TimeToStr(Time());
       EdDtLancamento.Text:=DateToStr(Date());
       EdDtReferencia.Text:=DateToStr(Date());
       EdDtPrevisaoMov.Text:=DateToStr(Date());
       EdDtMovimento.Text:=DateToStr(Date());       
       DBCobranca.Text:='OUTROS';
       RGMOVIMENTO.ItemIndex:=0;   
  		inherited;
       XSTATUSCHEQUE:='INSERT';
       EdNumAg.Text:='';
       EdNumConta.Text:='';
       EDPORTADOR.Text:='';
       EDFONEPORT.Text:='';
       FrmConta.EDCodigo.text:='';
       FrmConta.EdDescricao.text:='';
  		EdValor.SetFocus;
       XCOD_BANCOCHEQUE:=-1;
       PChequeEmit.Visible:=False;
       PChequeRec.Visible:=False;
       PChequeEmit.Enabled:=False;
       PChequeRec.Enabled:=False;
   End
   Else Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Antes de realizar qualquer movimentação deve-se cadastrar uma conta corrente', '', 1, 1, False, 'i');
   End;
end;

procedure TFMovBanco.TCLancamentosTabChanged(Sender: TObject);
begin
  inherited;
    PNmov.Visible:=False;
    PAtraso.Visible:=False;
    PMoviment.Visible:=False;
    Selectmov(2);
    XSALDO:=EdTotMov.ValueNumeric;
    case TCLancamentos.ActiveTab Of
        0: Begin//NÃO MOVIMENTADAS
            PNmov.Visible:=true;
            PNmov.BringToFront;
            Selectmov(0);
           End;
        1: Begin//EM ATRASO
            PAtraso.Visible:=true;
            PAtraso.BringToFront;
            Selectmov(1);
           End;
        2: Begin//MOVIMENTADAS
            PMoviment.Visible:=true;
            PMoviment.BringToFront;
            Selectmov(2);
           End;
    End;
    EDDTLanc.SetFocus;
end;

procedure TFMovBanco.DBGridCadastroPadraoCellClick(Column: TColumn);
begin
  inherited;
  // - 19/02/2009:    inicio
  FMenu.XPreSel := True;
  FMenu.XFieldPesqPreSel := 'COD_CTACOR';
  FMenu.XCodPesqPresSel := DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsString;
  // - 19/02/2009: fim
  Selectmov(TCLancamentos.ActiveTab);
  XCODBANCO:= DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger;
end;

procedure TFMovBanco.DBGridCadastroPadraoKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  // - 19/02/2009:  inicio
  FMenu.XPreSel := True;
  FMenu.XFieldPesqPreSel := 'COD_CTACOR';
  FMenu.XCodPesqPresSel := DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsString;
  // - 19/02/2009:  fim

   //Selectmov(TCLancamentos.ActiveTab);
end;

procedure TFMovBanco.BtnApagarClick(Sender: TObject);
begin
   // - 19/02/2009:  inicio
  FMenu.XPreSel := True;
  FMenu.XFieldPesqPreSel := 'COD_CTACOR';
  FMenu.XCodPesqPresSel := DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsString;
  // - 19/02/2009:  fim

  inherited;
  	If not XView.IsEmpty
   Then Begin
		If Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Deseja realmente apagar o lançamento '+#13+DMBANCO.WMovB.FieldByName('HISTORICO').AsString+' ?', '', 2, 3, False, 'c')=2
 	    Then Begin
	  		If FiltraTabela(DMBANCO.TMovBanco, 'MOVBANCO', 'COD_MOVBANCO', DMBANCO.WMovB.FieldByName('COD_MOVBANCO').AsString, '')=True
	        Then Begin
           	If DMBANCO.TMovBanco.FieldByName('COBRANCA').AsString='T. CAIXA'
               Then Begin // Se for lançamento de transferência  para o cx, o lançamento lá em cx deve ser apagado também
                    If FiltraTabela(DMCAIXA.TLanCaixa, 'LANCAIXA', 'TIPOGERADOR', '', ' (TIPOGERADOR='+#39+'BANCO'+#39+') AND (COD_GERADOR='+#39+DMBANCO.TMovBanco.FieldByName('COD_MOVBANCO').AsString+#39+')')=True
                    Then Begin
                    	Try
							//Apaga LANCAMENTO EM CX
                           Registra('LANC. CAIXA', 'APAG/BANCO',  DMCAIXA.TLanCaixa.FieldByName('DTLANC').AsString, DMCAIXA.TLanCaixa.FieldByName('HISTORICO').AsString, 'Valor: '+DMCAIXA.TLanCaixa.FieldByName('VALOR').AsString);
                           DMCAIXA.TLanCaixa.Delete;
                           //REGISTRA COMANDO DO USUARIO
                           Registra('MOV. BANCO', 'APAGAR',  DMBANCO.TMovBanco.FieldByName('DTLANC').AsString, DMBANCO.TMovBanco.FieldByName('HISTORICO').AsString, 'Valor: '+DMBANCO.TMovBanco.FieldByName('VALOR').AsString);
                   		DMBANCO.TMovBanco.Delete;
                  	 		DMBANCO.IBT.CommitRetaining;
                           DMCAIXA.IBT.CommitRetaining
                       Except
                       	Mensagem('OPÇÃO BLOQUEADA', 'Ocorreram problemas e esta operação foi cancelada!'+#13+'Entre em contato com a equipe de suporte técnico', '', 1, 1, False, 'i');
                       End;
                    End
                    Else Begin
                       //REGISTRA COMANDO DO USUARIO
                       Registra('MOV. BANCO', 'APAGAR',  DMBANCO.TMovBanco.FieldByName('DTLANC').AsString, DMBANCO.TMovBanco.FieldByName('HISTORICO').AsString, 'Valor: '+DMBANCO.TMovBanco.FieldByName('VALOR').AsString);
                 		DMBANCO.TMovBanco.Delete;
              	 		DMBANCO.IBT.CommitRetaining;
                       DMCAIXA.IBT.CommitRetaining;
					 	Mensagem('A T E N Ç Ã O !', 'O Lançamento de Caixa referente a este lançamento não foi encontrado. Verifique manualmente!'+#13+'O lançamento em banco foi apagado!', '', 1, 1, False, 'i');
                    End;
               End
               Else Begin
                   //REGISTRA COMANDO DO USUARIO
                   Registra('MOV. BANCO', 'APAGAR',  DMBANCO.TMovBanco.FieldByName('DTLANC').AsString, DMBANCO.TMovBanco.FieldByName('HISTORICO').AsString, 'Valor: '+DMBANCO.TMovBanco.FieldByName('VALOR').AsString);
	           		DMBANCO.TMovBanco.Delete;
	           		DMBANCO.IBT.CommitRetaining;
               End;
           End;
       End;
	End;
	Selectmov(TCLancamentos.ActiveTab);   
end;

procedure TFMovBanco.BtnConsultarClick(Sender: TObject);
begin
   // - 19/02/2009:  inicio
  FMenu.XPreSel := True;
  FMenu.XFieldPesqPreSel := 'COD_CTACOR';
  FMenu.XCodPesqPresSel := DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsString;
  // - 19/02/2009:  fim

	If not XView.IsEmpty
   Then Begin
		If FiltraTabela(DMBANCO.TMovBanco, 'MOVBANCO', 'COD_MOVBANCO', DMBANCO.WMovB.FieldByName('COD_MOVBANCO').AsString, '')=True
       Then Begin
        	//LANÇAMENTOS DE TRANSFERENCIA NÃO PODEM SER ALTERADOS PARA NÃO HAVER CONFUSÃO COM OUTROS CONTRALANÇAMENTOS
			If (DMBANCO.TMovBanco.FieldByName('COBRANCA').AsString='T. CAIXA') or (DMBANCO.TMovBanco.FieldByName('COBRANCA').AsString='T. CX CHQ')
           Then Begin
				Mensagem('OPÇÃO BLOQUEADA', 'Lançamentos de Transferência não podem ser alterados!', '', 1, 1, False, 'i');
               Exit;
           End;

           XCODPKMESTRE:=XTabela.FieldByName('COD_MOVBANCO').AsInteger;
			//FILTRA CONTA E PASSA VALORES
			If filtraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_PLNCTA', XTabela.FieldByName('COD_PLNCTA').AsString, '')=True
			Then Begin
		      	XCOD_PLNCTA:=DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger;
		      	FrmConta.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
		      	FrmConta.EDCodigo.text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
	        End
	        Else Begin
		      	XCOD_PLNCTA:=0;
		      	FrmConta.EdDescricao.Text:='';
		      	FrmConta.EDCodigo.text:='';
           End;
           PChequeEmit.Visible:=False;
           PChequeEmit.Enabled:=False;
           PChequeRec.Visible:=False;
           PChequeRec.Enabled:=False;
   		iF (DMBANCO.WMovB.FieldByName('TIPOOP').AsString='ENTRADA') AND (DMBANCO.WMovB.FieldByName('COBRANCA').AsString='CHEQUE')
   		Then Begin
               XSTATUSCHEQUE:='CONSULTA';
           	//FILTRA NA TABELA O LANÇAMENTO EM CHEQUE
           	If FiltraTabela(DMBANCO.TChequeRec, 'CHEQUEREC', 'COD_MOVBANCO', DMBANCO.WMovB.FieldByName('COD_MOVBANCO').AsString, '')=True
           	Then Begin
           		//FILTRA NA TABELA DE BANCO SUA REFERENCIA EM CHEQUE
           		If FiltraTabela(DMBANCO.TBanco, 'BANCO', 'COD_BANC', DMBANCO.TChequeRec.FieldByName('COD_BANCO').AsString, '')=True
           		Then Begin
                       XCOD_BANCOCHEQUE:=DMBANCO.TBanco.FieldByName('COD_BANC').AsInteger;
                   	FrmBuscaBanco.EDCodigo.Text:=DMBANCO.TBanco.FieldByName('NUMBANCO').AsString;
                   	FrmBuscaBanco.EdDescricao.Text:=DMBANCO.TBanco.FieldByName('DESCBANCO').AsString;
   				End
                   Else Begin
                       XCOD_BANCOCHEQUE:=-1;
                   	FrmBuscaBanco.EDCodigo.Text:='';
                   	FrmBuscaBanco.EdDescricao.Text:='';
                   End;
               	EdNumAg.Text:=DMBANCO.TChequeRec.FieldByName('NUMAGENCIA').AsString;
               	EdNumConta.Text:=DMBANCO.TChequeRec.FieldByName('NUMCONTA').AsString;
               	EDPORTADOR.Text:=DMBANCO.TChequeRec.FieldByName('EMITENTE').AsString;
               	EDFONEPORT.Text:=DMBANCO.TChequeRec.FieldByName('FONE').AsString;
               	PChequeRec.Visible:=True;
               	PChequeRec.Enabled:=TRUE;
               	PChequeRec.BringToFront;
           	End;
           End
       	Else Begin
           	PmostraCheque.Visible:=False;
           	PmostraCheque.Enabled:=False;
       	End;
   		iF (DMBANCO.WMovB.FieldByName('TIPOOP').AsString='SAIDA') AND (DMBANCO.WMovB.FieldByName('COBRANCA').AsString='CHEQUE')
   		Then Begin
               PChequeEmit.Visible:=True;
               PChequeEmit.BringToFront;
               PChequeEmit.Enabled:=True;
			End;

           EdDtMovimento.Text:=XTabela.FieldByName('DTMOV').AsString;
           EdDtLancamento.Text:=XTabela.FieldByName('DTLANC').AsString;
           EdDtPrevisaoMov.Text:=XTabela.FieldByName('DTVENC').AsString;
           EdHoraLancamento.Text:=XTabela.FieldByName('HORALANC').AsString;
           DBCobranca.Text:=XTabela.FieldByName('COBRANCA').AsString;
           EdValor.ValueNumeric:=XTabela.FieldByName('VALOR').AsCurrency;
           DBHistorico.Text:=XTabela.FieldByName('HISTORICO').AsString;
           If XTabela.FieldByName('TIPOOP').AsString='ENTRADA' Then
           	DBEntrada.Checked:=True;
           If XTabela.FieldByName('TIPOOP').AsString='SAIDA' Then
           	DBSaida.Checked:=True;

          // - 22/06/2009: verifica se ja foi movimentado
          If XTabela.FieldByName('FECH').AsString = 'S'
          Then Begin
            RGMOVIMENTO.ItemIndex := 0;
            EdDtMovimento.Text := XTabela.FieldByName('DTMOV').AsString;
          End
          Else Begin
            RGMOVIMENTO.ItemIndex := 1;
          End;

   		inherited;
       End;
   End;
end;

procedure TFMovBanco.TCOperKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
    If key=#13 Then
	   FiltraMovEdit('OPERACAO');
    If Key=#27 Then
	   FiltraMovEdit('OOPERACAO')
end;

procedure TFMovBanco.EDDTLancKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
    If key=#13 Then
	   FiltraMovEdit('DTLANC');
    If Key=#27 Then
	   FiltraMovEdit('ODTLANC')
end;

procedure TFMovBanco.EDDTVencKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
    If key=#13 Then
	   FiltraMovEdit('DTVENC');
    If Key=#27 Then
	   FiltraMovEdit('OOPERACAO')
end;

procedure TFMovBanco.EdNomeKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
    If key=#13 Then
	   FiltraMovEdit('HISTORICO');
    If Key=#27 Then
	   FiltraMovEdit('OHISTORICO')

end;

procedure TFMovBanco.DBDTVencExit(Sender: TObject);
begin
  inherited;
   //Verifica se a data de vencimento é maior que a de hoje para já lançar como conta não movimentada no radio group
  	If EdDtPrevisaoMov.Text<>'  /  /    '
   Then Begin
		If StrToDate(EdDtPrevisaoMov.Text)<=Date()
       Then Begin
	       RGMOVIMENTO.ItemIndex:=0;
	       EdDtPrevisaoMov.Text:=DateToStr(Date());
       End
	    Else Begin
	       RGMOVIMENTO.ItemIndex:=1;
       End;
   End;
   //controla visualização de componentes referentes a escolha e visualização da cta corrente
	If (DMBANCO.TMovBanco.FieldByName('COBRANCA').AsString='T. CX CHQ')
   Then Begin
       DBSaida.Checked:=False;
       DMCONTA.TAlx.CLOSE;
       DMCONTA.TAlx.SQL.Clear;
       DMCONTA.TAlx.SQL.Add(' select * from abcaixa left join caixa on abcaixa.cod_caixa = caixa.cod_caixa ');
       DMCONTA.TAlx.SQL.Add(' Where (abcaixa.fechado<>'+#39+'S'+#39+' ) AND (caixa.cod_loja=:COD_LOJA) ');
       DMCONTA.TAlx.ParamByName('COD_LOJA').AsString:=FMenu.LCODLOJA.Caption;
       DMCONTA.TAlx.Open;
		If DMCONTA.TAlx.IsEmpty
       Then Begin
			Mensagem('OPÇÃO BLOQUEADA', 'Não pode haver uma transferência para caixa! Não existe caixa aberto ou cadastrado para seleção.', '', 1, 1, False, 'i');
			DBCobranca.SetFocus;
           Exit;
       End
       Else Begin
           RGMOVIMENTO.ItemIndex:=1;
//           RGMOVIMENTO.Enabled:=False;
       	PCaixa.Enabled:=True;
       	PCaixa.Visible:=TRUE;
       	PCaixa.BringToFront;

       	FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_PLNCTA', DMMACS.TLoja.FieldByName('PLNCTATRANSFCAIXA').AsString, '');
	      	XCOD_PLNCTA:=DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger;
	      	FrmConta.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
	      	FrmConta.EDCodigo.text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;


           DBGCTA.DataSource:=DMCONTA.DAlx;
       	DBGCTA.SetFocus;
       End;
   End;
end;

procedure TFMovBanco.BtnBaixarClick(Sender: TObject);
begin
  inherited;
  	If (not XView.IsEmpty) And (XView.FieldByName('FECH').AsString='N')
   Then Begin
		If Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Deseja realmente efetuar a movimentação do lançamento '+#13+DMBANCO.WMovB.FieldByName('HISTORICO').AsString+' ?', '', 2, 3, False, 'c')=2
 	    Then Begin
           // buscando registro no banco de dados
           If FiltraTabela(DMBANCO.TMovBanco, 'MOVBANCO', 'COD_MOVBANCO', DMBANCO.WMovB.FieldByName('COD_MOVBANCO').AsString, '')=True
           Then Begin
               If DMBANCO.VerifAbBanco=False
               Then Begin
                   Mensagem('OPÇÃO BLOQUEADA', 'Banco fechado. O cheque não será movimentado.', '', 1, 1, False, 'i');
                   Exit;
               End;
           End;

           // faz essa comparação porque pode ter sido gerado a partir do pedido de venda com pagamento em cartão
           If (DMBANCO.TMovBanco.FieldByName('COBRANCA').AsString = 'PEDVENDA') AND (DMBANCO.TMovBanco.FieldByName('TIPOGERADOR').AsString = 'CTRCARTAO')
           Then Begin
               // buscando registro no banco de dados
               FiltraTabela(DMBANCO.TMovBanco, 'MOVBANCO', 'COD_MOVBANCO', DMBANCO.WMovB.FieldByName('COD_MOVBANCO').AsString, '');

               // fazendo movimentação bancaria
               DMBANCO.TMovBanco.Edit;
               DMBANCO.TMovBanco.FieldByName('FECH').AsString:='S';
               DMBANCO.TMovBanco.FieldByName('DTMOV').AsDateTime := MsgInfoData('Informe a data de movimentação:', Date(), 0, 0, True);
               DMBANCO.TMovBanco.FieldByName('COD_ABBANCO').AsString:=FMenu.LABBANCO.Caption;
               DMBANCO.TMovBanco.Post;

               // FECHANDO PARCELA A RECEBER
               If FiltraTabela(DMCONTA.TParcCR, 'PARCELACR', 'COD_PARCELACR', DMBANCO.TMovBanco.FieldByName('COD_GERADOR').AsString , '')=True
               Then Begin
                  DMCONTA.TParcCR.Edit;
                  DMCONTA.TParcCR.FieldByName('FECH').AsString:='S';
                  DMCONTA.TParcCR.FieldByName('VALORPG').AsCurrency := DMCONTA.TParcCR.FieldByName('VALOR').AsCurrency;
                  DMCONTA.TParcCR.FieldByName('DTDEBITO').AsDateTime := DMBANCO.TMovBanco.FieldByName('DTMOV').AsDateTime;//DateToStr(Date());
                  DMCONTA.TParcCR.Post;
                  DMCONTA.TParcCR.ApplyUpdates;
                  DMCONTA.IBT.CommitRetaining;
               End;

               FiltraTabela(DMBANCO.WCtaCor, 'vwctacor', '', '', '');
               DMBANCO.wctacor.First;

               // LAÇO PARA PASSAR POR TODAS AS CONTAS CORRENTES E SELECIONAR A QUE FOR IGUAL A VARIAVEL
               while (not DMBANCO.WCtaCor.Eof) and (DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger <> XCODBANCO) do
               begin
                   DMBANCO.WCtaCor.Next;
               end;
               Selectmov(TCLancamentos.ActiveTab);

           End
           Else Begin
               If FiltraTabela(DMBANCO.TMovBanco, 'MOVBANCO', 'COD_MOVBANCO', DMBANCO.WMovB.FieldByName('COD_MOVBANCO').AsString, '')=True
               Then Begin
                   If FiltraTabela(DMBANCO.WCtaCor, 'VWCTACOR', 'COD_CTACOR', DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsString, '')=True
                   Then Begin
                       If DMBANCO.VerifAbBanco=False
                       Then Begin
                           Mensagem('OPÇÃO BLOQUEADA', 'B A N C O    F E C H A D O !', '', 1, 1, False, 'i');
                           Exit;
                       End;
                   End
                   Else Begin
                       Mensagem('OPÇÃO BLOQUEADA', 'C O N T A   C O R R E N T E   N Ã O   E N C O N T R A D A !', '', 1, 1, False, 'i');
                       Exit;
                   End;
                  DMBANCO.TMovBanco.Edit;
                  DMBANCO.TMovBanco.FieldByName('FECH').AsString := 'S';
                  DMBANCO.TMovBanco.FieldByName('DTMOV').AsDateTime := MsgInfoData('Informe a data de movimentação:', Date(), 0, 0, True);
                  DMBANCO.TMovBanco.FieldByName('COD_ABBANCO').AsString:=FMenu.LABBANCO.Caption;
                  DMBANCO.TMovBanco.Post;
                  DMBANCO.TMovBanco.ApplyUpdates;
                  IF (DMBANCO.TMovBanco.FieldByName('TIPOGERADOR').AsString='CTAPCH') or (DMBANCO.TMovBanco.FieldByName('TIPOGERADOR').AsString='CTPCARTAO') // CTACARTAO eh uma conta a pagar gerada com pagamento em "cartão"
                  Then Begin
                       If FiltraTabela(DMCONTA.TParcCP, 'PARCELACP', 'COD_PARCELACP', DMBANCO.TMovBanco.FieldByName('COD_GERADOR').AsString , '')=True
                       Then Begin
                          DMCONTA.TParcCP.Edit;
                          DMCONTA.TParcCP.FieldByName('FECH').AsString:='S';
                          //Edmar - 19/01/2015 - Trocado de onde busca o valor. deve-ser assumir que o valor pago é o valor do cheque emitido
                          DMCONTA.TParcCP.FieldByName('VALORPG').AsCurrency := DMBANCO.TMovBanco.FieldByName('VALOR').AsCurrency; //DMCONTA.TParcCP.FieldByName('VALOR').AsCurrency; 
                          DMCONTA.TParcCP.FieldByName('DTDEBITO').AsDateTime := DMBANCO.TMovBanco.FieldByName('DTMOV').AsDateTime; //DateToStr(Date());
                          DMCONTA.TParcCP.Post;
                          DMCONTA.TParcCP.ApplyUpdates;
                          DMCONTA.IBT.CommitRetaining;
                       End;
                  End;
                  DMBANCO.IBT.CommitRetaining;
                  FiltraTabela(DMBANCO.WCtaCor, 'vwctacor', '', '', '');
                  DMBANCO.wctacor.First;

                  // LAÇO PARA PASSAR POR TODAS AS CONTAS CORRENTES E SELECIONAR A QUE FOR IGUAL A VARIAVEL
                  while (not DMBANCO.WCtaCor.Eof) and (DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger <> XCODBANCO) do
                  begin
                       DMBANCO.WCtaCor.Next;
                  end;
                  Selectmov(TCLancamentos.ActiveTab);
               End;
           End;
       End;
	End;

   FiltraTabela(DMBANCO.WCtaCor, 'VWCTACOR', 'COD_CTACOR',  '', 'cod_ctacor > 0');


   // - 19/02/2009: se houver ctacor pre-selecionado fazer busca
  if FMenu.XPreSel
  then begin
     if FMenu.XFieldPesqPreSel = 'COD_CTACOR' then
        DMBANCO.WCtaCor.Locate(FMenu.XFieldPesqPreSel,FMenu.XCodPesqPresSel, []);
  end;
  FMenu.LimpaPreSelecao;
end;

procedure TFMovBanco.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	If Key=VK_F9 Then
       BtnBaixar.Click;
   If key=VK_Escape
   Then Begin
   	If PmostraCheque.Visible=True
       Then Begin
           PmostraCheque.Visible:=False;
           PmostraCheque.Enabled:=False;
       End;
   End
end;

procedure TFMovBanco.DBCobrancaExit(Sender: TObject);
begin
  inherited;
   PChequeEmit.Visible:=False;
   PChequeEmit.Enabled:=False;
   PChequeRec.Visible:=False;
   PChequeEmit.Enabled:=False;
	If (DBCobranca.Text='CHEQUE') OR (DBCobranca.Text='T. CX CHQ')
   Then Begin//forma de movimentação é cheque
		If DBCobranca.Text='T. CX CHQ'
       Then Begin
      		DBSaida.Checked:=True;
//           RGMOVIMENTO.ItemIndex:=1;
//           RGMOVIMENTO.Enabled:=False;
       End;
       If DBEntrada.Checked=True
       Then Begin//como é uma forma de entrada então cai como cheque a receber
           PChequeRec.Visible:=True;
           PChequeRec.Enabled:=True;
           PChequeRec.BringToFront;
       End;
       If DBSaida.Checked=True
       Then Begin//como é saída cai como cheque emitido
           PChequeEmit.Visible:=True;
           PChequeEmit.Enabled:=True;
           PChequeEmit.BringToFront;
           DMBANCO.TMovBanco.FieldByName('NUMCHEQUE').AsString:=DMBANCO.TCtaCor.FieldByName('PROXCHEQUE').AsString;
       End;
       If  (DBEntrada.Checked=False) AND (DBSaida.Checked=False)
       Then Begin//Não foi informado o tipo da operação. O sistema deve pedir antes de abrir algum painel
			If Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Realizar esta movimentação como cheque emitido pela empresa ?', '', 2, 3, False, 'c')=2
       	Then Begin//foi escolhido tipo de saida
           	PChequeEmit.Visible:=True;
	            PChequeEmit.Enabled:=True;
           	PChequeEmit.BringToFront;
               DBSaida.Checked:=True;
	            DMBANCO.TMovBanco.FieldByName('NUMCHEQUE').AsString:=INCSTRNUM(1, DMBANCO.TCtaCor.FieldByName('PROXCHEQUE').AsString);
           End
           Else Begin
	            PChequeRec.Visible:=True;
		        PChequeRec.Enabled:=True;
    	        PChequeRec.BringToFront;
               DBEntrada.Checked:=True;
           End;
       End;

       //VERIFICA FOCU DA DB DE NUM. CHEQUE
       If PChequeEmit.Visible=True Then
           DBNUMCHEQUEEMIT.SetFocus;
       If PChequeRec.Visible=True Then
           DBNUMCHEQUEREC.SetFocus;
   End;
   //controla visualização de componentes referentes a escolha e visualização da cta corrente
	If (DMBANCO.TMovBanco.FieldByName('COBRANCA').AsString='T. CAIXA')
   Then Begin
       DBSaida.Checked:=True;
       DMCONTA.TAlx.CLOSE;
       DMCONTA.TAlx.SQL.Clear;
       DMCONTA.TAlx.SQL.Add(' select * from abcaixa left join caixa on abcaixa.cod_caixa = caixa.cod_caixa ');
       DMCONTA.TAlx.SQL.Add(' Where (abcaixa.fechado<>'+#39+'S'+#39+' ) AND (caixa.cod_loja=:COD_LOJA) ');
       DMCONTA.TAlx.ParamByName('COD_LOJA').AsString:=FMenu.LCODLOJA.Caption;
       DMCONTA.TAlx.Open;
		If DMCONTA.TAlx.IsEmpty
       Then Begin
			Mensagem('OPÇÃO BLOQUEADA', 'Não pode haver uma transferência para caixa! Não existe caixa aberto ou cadastrado para seleção.', '', 1, 1, False, 'i');
			DBCobranca.SetFocus;
           Exit;
       End
       Else Begin
           RGMOVIMENTO.ItemIndex:=0;
           RGMOVIMENTO.Enabled:=False;
       	PCaixa.Enabled:=True;
       	PCaixa.Visible:=TRUE;
       	PCaixa.BringToFront;

       	FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_PLNCTA', DMMACS.TLoja.FieldByName('PLNCTATRANSFCAIXA').AsString, '');
	      	XCOD_PLNCTA:=DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger;
	      	FrmConta.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
	      	FrmConta.EDCodigo.text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;

           DBGCTA.DataSource:=DMCONTA.DAlx;
       	DBGCTA.SetFocus;
       End;
   End
   Else Begin
       If DBCOBRANCA.Text='T. BANCO'
       Then Begin
           SelectCaixas;
           PBanco.Enabled:=True;
           PBanco.Visible:=TRUE;
           PBanco.BringToFront;
           DBGrid4.SetFocus;
       End
       Else Begin
       	PBanco.Visible:=False;
           PCaixa.Enabled:=False;
           RGMOVIMENTO.Enabled:=True;
       End;
   End;
end;

procedure TFMovBanco.FrmBuscaBancoBTNMINUSClick(Sender: TObject);
begin
  inherited;
   //Codigo da tabela local =01
   XCOD_BANCOCHEQUE:=-1;
   FrmBuscaBanco.EDCodigo.Text:='';
   FrmBuscaBanco.EdDescricao.Text:='';

end;

procedure TFMovBanco.FrmBuscaBancoBTNOPENClick(Sender: TObject);
begin
  inherited;
	 //LIBERA TODAS OS BANCOS PARA CONSUTA
	 filtraTabela(DMBANCO.TBanco, 'BANCO', '', '', '');

    If AbrirForm(TFCadBanco, FCadBanco, 1)='Selected'
    Then Begin
        XCOD_BANCOCHEQUE:=DMBANCO.TBanco.FieldByName('COD_BANC').AsInteger;
        FrmBuscaBanco.EdDescricao.Text:=DMBANCO.TBanco.FieldByName('DESCBANCO').AsString;
        FrmBuscaBanco.EDCodigo.text:=DMBANCO.TBanco.FieldByName('NUMBANCO').AsString;
    End;                
end;

procedure TFMovBanco.FrmBuscaBancoEDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	If Key = #13
   Then Begin
   	If FrmBuscaBanco.EDCodigo.Text<>''
       Then Begin
	       If FiltraTabela(DMBANCO.TBanco, 'BANCO', 'NUMBANCO', FrmBuscaBanco.EDCodigo.Text, '') = True
	       Then Begin //Slecionou o registro procurado
          		XCOD_BANCOCHEQUE:=DMBANCO.TBanco.FieldByName('COD_BANC').AsInteger;
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
           XCOD_BANCOCHEQUE:=-1;
          	FrmBuscaBanco.EDCodigo.Text:='';
          	FrmBuscaBanco.EdDescricao.Text:='';
       End;
   End;                         
end;

procedure TFMovBanco.DBOperacaoExit(Sender: TObject);
begin
  inherited;
   //EFETUA CONTROLE DE CHEQUE
	If DBCobranca.Text='CHEQUE'
   Then Begin
	   PChequeRec.Visible:=False;
      PChequeRec.Enabled:=False;
      PChequeEmit.Visible:=False;
      PChequeEmit.Enabled:=False;
      If DBSaida.Checked=true
      Then Begin
      		XCOD_BANCOCHEQUE:=-1;
           PChequeEmit.Visible:=True;
           PChequeEmit.Enabled:=True;
           PChequeEmit.BringToFront;
      End;
      If DBEntrada.Checked=True
      Then Begin
           XCOD_BANCOCHEQUE:=-1;
           PChequeRec.Visible:=True;
           PChequeRec.Enabled:=True;
           PChequeRec.BringToFront;
       End;
   End;
end;

procedure TFMovBanco.DBGrid3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	If Key=VK_SPACE
   Then Begin
   	iF (DMBANCO.WMovB.FieldByName('TIPOOP').AsString='ENTRADA') AND (DMBANCO.WMovB.FieldByName('COBRANCA').AsString='CHEQUE')
   	Then Begin
   		//REVELAR VALORES DE CHEQUE A RECEBER
           //FILTRA NA TABELA O LANÇAMENTO EM CHEQUE
           If FiltraTabela(DMBANCO.TChequeRec, 'CHEQUEREC', 'COD_MOVBANCO', DMBANCO.WMovB.FieldByName('COD_MOVBANCO').AsString, '')=True
           Then Begin
           	//FILTRA NA TABELA DE BANCO SUA REFERENCIA EM CHEQUE
           	If FiltraTabela(DMBANCO.TBanco, 'BANCO', 'COD_BANC', DMBANCO.TChequeRec.FieldByName('COD_BANCO').AsString, '')=True
           	Then Begin
                   FRMMOSTRABANCO.EDCodigo.Text:=DMBANCO.TBanco.FieldByName('NUMBANCO').AsString;
                   FRMMOSTRABANCO.EdDescricao.Text:=DMBANCO.TBanco.FieldByName('DESCBANCO').AsString;
   			End
               Else Begin
                   FRMMOSTRABANCO.EDCodigo.Text:='';
                   FRMMOSTRABANCO.EdDescricao.Text:='';
               End;
               EDMOSTRANUMAG.Text:=DMBANCO.TChequeRec.FieldByName('NUMAGENCIA').AsString;
               EDMOSTRANUMCONTA.Text:=DMBANCO.TChequeRec.FieldByName('NUMCONTA').AsString;
               EDMOSTRAPORTADOR.Text:=DMBANCO.TChequeRec.FieldByName('PORTADOR').AsString;
               EDMOSTRAFONE.Text:=DMBANCO.TChequeRec.FieldByName('FONE').AsString;
               PmostraCheque.Visible:=True;
               PmostraCheque.Enabled:=TRUE;
               PmostraCheque.BringToFront;
           End;
       End
       Else Begin
           PmostraCheque.Visible:=False;
           PmostraCheque.Enabled:=False;
       End;
   End;
   If (shift=[ssCtrl]) and (key = 83)
   Then Begin
     Try
       if not DirectoryExists('C:\MZR\Arquivos\LayoutGrid\') then begin
           ForceDirectories('C:\MZR\Arquivos\LayoutGrid\');
       end;

       If DBGrid1.Focused
       Then
           DBGrid1.Columns.SaveToFile('C:\MZR\Arquivos\LayoutGrid\movBanco1.lgm')
       Else If DBGrid2.Focused
       Then
           DBGrid2.Columns.SaveToFile('C:\MZR\Arquivos\LayoutGrid\movBanco2.lgm')
       Else If DBGrid3.Focused
       Then
           DBGrid3.Columns.SaveToFile('C:\MZR\Arquivos\LayoutGrid\movBanco3.lgm');

       Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Layout da Grid foi salvo com sucesso!', '', 1, 1, false, 'i');

     Except
           Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Falha na tentativa de salvar o layout da grid!', '', 1, 1, false, 'i');
     End;
   End;
end;

procedure TFMovBanco.BitBtn1Click(Sender: TObject);
Var
	XCONTACOR: STRING;
begin
  inherited;
  	If not XView.IsEmpty
   Then Begin
		If Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Deseja realmente acumular os lançamentos em um saldo de acumulados?', '', 2, 3, False, 'c')=2
 	    Then Begin
	  		If FiltraTabela(DMBANCO.TCtaCor, 'CTACOR', 'COD_CTACOR', DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsString, '')=True
	        Then Begin
               XCONTACOR:=DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsString;
              //ACUMULA SALDO
              Try
	           		DMBANCO.TCtaCor.Edit;
	           		DMBANCO.TCtaCor.FieldByName('SALDO').AsCurrency:=EdTotMov.ValueNumeric;
              		DMBANCO.TCtaCor.Post;
			   		//MARCA LANÇAMENTOS PARA NÃO SEREM MAIS VISUALIZADOS
              		DMBANCO.TMovBanco.Close;
              		DMBANCO.TMovBanco.SQL.Clear;
              		DMBANCO.TMovBanco.SQL.Add('UPDATE MOVBANCO SET VER = 1 WHERE (FECH='+#39+'S'+#39+') AND (COD_CTACOR=:CODCTACOR)');
                   DMBANCO.TMovBanco.ParamByName('CODCTACOR').AsString:=DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsString;
              		DMBANCO.TMovBanco.ExecSQL;
	           		DMBANCO.IBT.CommitRetaining;

                   //PAulo 26/10/2010 - 147: faz uma nova consultar para evitar erros posterioermente
                   DMBANCO.TMovBanco.Close;
                   DMBANCO.TMovBanco.SQL.Clear;
                   DMBANCO.TMovBanco.SQL.Add('SELECT * FROM MOVBANCO  WHERE (FECH='+#39+'S'+#39+') AND (COD_CTACOR=:CODCTACOR)');
                   DMBANCO.TMovBanco.ParamByName('CODCTACOR').AsString:=DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsString;
                   DMBANCO.TMovBanco.Open;


			  		FiltraTabela(DMBANCO.WCtaCor, 'VWCTACOR', '', XCONTACOR, '');

                // - 19/02/2009: se houver ctacor pre-selecionado fazer busca
              if FMenu.XPreSel
              then begin
                 if FMenu.XFieldPesqPreSel = 'COD_CTACOR' then
                    DMBANCO.WCtaCor.Locate(FMenu.XFieldPesqPreSel,FMenu.XCodPesqPresSel, []);
              end;
              FMenu.LimpaPreSelecao;

	           		Selectmov(TCLancamentos.ActiveTab);
              Except
	           		DMBANCO.IBT.RollbackRetaining;

			   End;
           End;
       End;
	End;

end;

Procedure TFMovBanco.SelectCaixas;
Begin
   FiltraTabela(DMESTOQUE.Alx, 'VWCTACOR', 'COD_CTACOR',  '', ' (cod_ctacor > 0) and ((inativo=''0'') or (inativo is null)) ');
End;

procedure TFMovBanco.DBGCTAKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	If Key=VK_Return
   Then Begin
   	If Not DMBANCO.WCtaCor.IsEmpty Then//'se banco não estiver vazio
       	XCOD_CX:=DMCONTA.TAlx.FieldByName('COD_ABCAIXA').AsInteger
       Else
           XCOD_CX:=-1;
       PCaixa.Visible:=False;
       PCaixa.Enabled:=False;
       BtnGravar.SetFocus;
   End;  
end;

procedure TFMovBanco.EdNumChequeKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
    If key=#13 Then
	   FiltraMovEdit('NCHEQUE');
    If Key=#27 Then
	   FiltraMovEdit('ONCHEQUE')
end;

procedure TFMovBanco.eddtmovKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
    If key=#13 Then
	   FiltraMovEdit('DTMOV');
    If Key=#27 Then
	   FiltraMovEdit('ODTMOV')
end;

procedure TFMovBanco.BtnAbreFechaCXClick(Sender: TObject);
Var
	XCod_CtaCorrente: Integer;
begin
   TCLancamentos.ActiveTab:=2;
  inherited;
  	if Mensagem(' C O N F I R M A Ç Ã O ', 'Deseja realmente fechar o banco?', '', 2, 3, False, 'C') = 2 then
   begin
       xcod_CtaCorrente:=DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger;
       If DMBANCO.VerifAbBanco=False
       Then Begin
           //Se banco fechado, abrir banco antes de lançar
           InserReg(DMBANCO.TAbBanco, 'ABBANCO', 'COD_ABBANCO');
           DMBANCO.TAbBanco.FieldByName('COD_CTACOR').AsInteger:=DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger;
           DMBANCO.TAbBanco.FieldByName('DATA_ABERT').AsDateTime:=Date();
           DMBANCO.TAbBanco.FieldByName('HORA_ABERTURA').AsString:=TimeToStr(Time());
           DMBANCO.TAbBanco.FieldByName('SALDOINI').AsCurrency:=EdTotMov.ValueNumeric;
           DMBANCO.TAbBanco.FieldByName('SALDOFIN').AsCurrency:=0;
           DMBANCO.TAbBanco.FieldByName('FECHADO').AsString:='N';
           DMBANCO.TAbBanco.FieldByName('COD_USUARIO').AsString:=FMenu.LCODUSUARIO.Caption;
           DMBANCO.TAbBanco.Post;
           DMBANCO.IBT.CommitRetaining;
           If DMBANCO.VerifAbBanco=False
           Then Begin
               MessageDlg('Não foi possivel abrir banco! '+#13+#10+'Tente repetir a operação em um outro momento.', mtWarning, [mbOK], 0);
               Exit;
           End;
       End
       Else Begin
           ///VERIFIK DA NECESSIDADE DE FECHAR E REABRIR BANCO
           DMBANCO.TAlx.Close;
           DMBANCO.TAlx.SQL.Clear;
           DMBANCO.TAlx.SQL.Add('  SELECT * FROM VWMOVBANCO WHERE (COD_CTACOR = :CODCTACOR)  AND (FECH='+#39+'S'+#39+') AND (COD_ABBANCO=:CODABBANCO)  ');
           DMBANCO.TAlx.ParamByName('CODCTACOR').AsInteger:=xcod_CtaCorrente;
           DMBANCO.TAlx.ParamByName('CODABBANCO').AsString:=FMenu.LABBANCO.Caption;
           DMBANCO.TAlx.Open;
           If DMBANCO.TAlx.IsEmpty = True
           Then Begin
               MessageDlg('Não Existem lançamentos para este período. Sendo assim não ha necessidade de fechar banco', mtWarning, [mbOK], 0);
               Exit;
           End;
           //Se banco aberto... fechar e reabrir banco
           DMBANCO.TAbBanco.Edit;
           DMBANCO.TAbBanco.FieldByName('HORA_ABERTURA').AsString:=TimeToStr(Time());
           DMBANCO.TAbBanco.FieldByName('DTFECH').AsString:=DateToStr(Date());
           DMBANCO.TAbBanco.FieldByName('HORAFECH').AsString:=TimeToStr(Time());
           DMBANCO.TAbBanco.FieldByName('SALDOFIN').AsCurrency:=EdTotMov.ValueNumeric;
           DMBANCO.TAbBanco.FieldByName('FECHADO').AsString:='S';
           DMBANCO.TAbBanco.Post;
           FiltraTabela(DMBANCO.TCtaCor, 'CTACOR', 'COD_CTACOR', '', ' (COD_CTACOR = '+#39+DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsString+#39+')');
           DMBANCO.TCtaCor.Edit;
           DMBANCO.TCtaCor.FieldByName('SALDO').AsCurrency:=EdTotMov.ValueNumeric;
           DMBANCO.TCtaCor.Post;
           DMBANCO.IBT.CommitRetaining;
           //BANCO FECHADO
           TCLancamentos.ActiveTab:=2;
           //REABRIR BANCO
           DMBANCO.IBT.CommitRetaining;
           InserReg(DMBANCO.TAbBanco, 'ABBANCO', 'COD_ABBANCO');
           DMBANCO.TAbBanco.FieldByName('COD_CTACOR').AsInteger:=DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger;
           DMBANCO.TAbBanco.FieldByName('DATA_ABERT').AsDateTime:=Date();
           DMBANCO.TAbBanco.FieldByName('HORA_ABERTURA').AsString:=TimeToStr(Time());
           DMBANCO.TAbBanco.FieldByName('SALDOINI').AsCurrency:=DMBANCO.TCtaCor.FieldByName('SALDO').AsCurrency;
           DMBANCO.TAbBanco.FieldByName('SALDOFIN').AsCurrency:=0;
           DMBANCO.TAbBanco.FieldByName('FECHADO').AsString:='N';
           DMBANCO.TAbBanco.FieldByName('COD_USUARIO').AsString:=FMenu.LCODUSUARIO.Caption;
           DMBANCO.TAbBanco.Post;
           DMBANCO.IBT.CommitRetaining;
           If DMBANCO.VerifAbBanco=False
           Then Begin
               MessageDlg('Não foi possivel abrir banco! '+#13+#10+'Tente repetir a operação em um outro momento.', mtWarning, [mbOK], 0);
               Exit;
           End;
       End;
       If DMBANCO.VerifAbBanco = True Then
           BtnAbreFechaCX.Caption:='Fechar Banco'
       Else
           BtnAbreFechaCX.Caption:='Abrir Banco';
       TCLancamentos.ActiveTab:=2;
   end;
end;

procedure TFMovBanco.DBGridCadastroPadraoMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
   // - 19/02/2009:    inicio
   FMenu.XPreSel := True;
  FMenu.XFieldPesqPreSel := 'COD_CTACOR';
  FMenu.XCodPesqPresSel := DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsString;
  // - 19/02/2009: fim

   Selectmov(TCLancamentos.ActiveTab);
end;

procedure TFMovBanco.RGMOVIMENTOClick(Sender: TObject);
begin
  inherited;
   If RGMOVIMENTO.ItemIndex=0
   Then Begin
        PDtMov.Visible:=True;
        PDtMov.BringToFront;
        EdDtPrevisaoMov.Text:=DateToStr(Date());
   End
   Else Begin
       PDtMov.Visible:=False;
   End;
end;

procedure TFMovBanco.DBDTLancExit(Sender: TObject);
begin
  inherited;
	If XTabela.FieldByName('DTREF').AsString='' Then
		XTabela.FieldByName('DTREF').AsString:=XTabela.FieldByName('DTLANC').AsString;
end;

procedure TFMovBanco.DBGrid4CellClick(Column: TColumn);
begin
  inherited;
   Selectmov(TCLancamentos.ActiveTab);
end;

procedure TFMovBanco.DBGridCadastroPadraoColumnMoved(Sender: TObject;
  FromIndex, ToIndex: Integer);
begin
  inherited;
   // - 19/02/2009:  inicio
  FMenu.XPreSel := True;
  FMenu.XFieldPesqPreSel := 'COD_CTACOR';
  FMenu.XCodPesqPresSel := DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsString;
  // - 19/02/2009:  fim

   Selectmov(TCLancamentos.ActiveTab);
end;

procedure TFMovBanco.DBGrid3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if State = [] then
  begin
    if DMBANCO.WMovB.Recno mod 2 = 1 then
      DBGrid3.Canvas.Brush.Color := $00EEEEEE
   else
      DBGrid3.Canvas.Brush.Color := clWhite;
  end;
  DBGrid3.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFMovBanco.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if State = [] then
  begin
    if DMBANCO.WMovB.Recno mod 2 = 1 then
      DBGrid1.Canvas.Brush.Color := $00EEEEEE
   else
      DBGrid1.Canvas.Brush.Color := clWhite;
  end;
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFMovBanco.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if State = [] then
  begin
    if DMBANCO.WMovB.Recno mod 2 = 1 then
      DBGrid2.Canvas.Brush.Color := $00EEEEEE
   else
      DBGrid2.Canvas.Brush.Color := clWhite;
  end;
  DBGrid2.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

	//jonathan - 23/04/2009 - modificado para o chamado 248

procedure TFMovBanco.BtnRelatorioClick(Sender: TObject);
begin
  inherited;
     RelatorioBanco.Popup(BtnRelatorio.Left+BtnRelatorio.Width+40, BtnRelatorio.Top+175);
end;

procedure TFMovBanco.MovimentacaoClick(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RBANCO', 'M')=False Then
  		Exit;
   AbrirForm(TFRelMovBanco, FRelMovBanco, 0);
end;

procedure TFMovBanco.ChequesEmitidosClick(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RBANCO', 'M')=False Then
  		Exit;
   FMenu.TIPOREL:='CHEQUEEMIT';
   AbrirForm(TFRelChequeEmit, FRelChequeEmit, 0);
end;

procedure TFMovBanco.ChequesRecebidosClick(Sender: TObject);
begin
  //EFETUA CONTROLE DE ACESSO
   If ControlAccess('RBANCO', 'M')=False Then
  		Exit;
   FMenu.TIPOREL:='CHEQUEREC';
   AbrirForm(TFRelChequeEmit, FRelChequeEmit, 0);
end;

procedure TFMovBanco.SaldodeCtasCorrenteClick(Sender: TObject);
begin
  //EFETUA CONTROLE DE ACESSO
   If ControlAccess('RBANCO', 'M')=False Then
  		Exit;
   FMenu.TIPOREL:='RELSALDOCTACOR';
   AbrirForm(TFRelData, FRelData, 0);
end;

procedure TFMovBanco.MovimentaoporPeriodoClick(Sender: TObject);
begin
  //EFETUA CONTROLE DE ACESSO
   If ControlAccess('RBANCO', 'M')=False Then
  		Exit;

   FMenu.TIPOREL:='RMOVBANCOPERIODO';
   FMenu.TITULOREL:='Relatório de Movimentações Bancárias por Período';
   AbrirForm(TFRelMovBancoPeriodo, FRelMovBancoPeriodo, 0);
end;

procedure TFMovBanco.edNumeroCartaoEnter(Sender: TObject);
begin
  inherited;
  If edNumeroCartao.Text = 'Nº Cartão'
  Then Begin
      edNumeroCartao.Text := '';
  End;
end;

procedure TFMovBanco.edNumeroCartaoExit(Sender: TObject);
begin
  inherited;
  If Trim(edNumeroCartao.Text) = ''
  Then Begin
      edNumeroCartao.Text := 'Nº Cartão';
  End;
end;

procedure TFMovBanco.edNumeroCartaoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  If key=#13 Then
	   FiltraMovEdit('NCARTAO');
    If Key=#27 Then
	   FiltraMovEdit('ONCARTAO')
end;

procedure TFMovBanco.DBEntradaEnter(Sender: TObject);
begin
  inherited;
   DBEntrada.Font.Style:=[fsBold];
end;

procedure TFMovBanco.DBSaidaEnter(Sender: TObject);
begin
  inherited;
   DBSaida.Font.Style:=[fsBold];
end;

procedure TFMovBanco.DBSaidaExit(Sender: TObject);
begin
  inherited;
   DBSaida.Font.Style:=[];

end;

procedure TFMovBanco.DBEntradaExit(Sender: TObject);
begin
  inherited;
   DBEntrada.Font.Style:=[];
   //EFETUA CONTROLE DE CHEQUE
	If DBCobranca.Text='CHEQUE'
   Then Begin
	   PChequeRec.Visible:=False;
      PChequeRec.Enabled:=False;
      PChequeEmit.Visible:=False;
      PChequeEmit.Enabled:=False;
      XCOD_BANCOCHEQUE:=-1;
      PChequeRec.Visible:=True;
      PChequeRec.Enabled:=True;
      PChequeRec.BringToFront;
   End;
end;

procedure TFMovBanco.EdDtPrevisaoMovExit(Sender: TObject);
begin
  inherited;
   //Verifica se a data de vencimento é maior que a de hoje para já lançar como conta não movimentada no radio group
  	If EdDtPrevisaoMov.Text<>'  /  /    '
   Then Begin
		If StrToDate(EdDtPrevisaoMov.Text)<=Date()
       Then Begin
	       RGMOVIMENTO.ItemIndex:=0;
       End
	    Else Begin
	       RGMOVIMENTO.ItemIndex:=1;
       End;
       EdDtReferencia.Text:=EdDtPrevisaoMov.Text;
       EdDtMovimento.Text:=EdDtPrevisaoMov.Text;
   End;
   //controla visualização de componentes referentes a escolha e visualização da cta corrente
	If (DMBANCO.TMovBanco.FieldByName('COBRANCA').AsString='T. CX CHQ')
   Then Begin
       DBSaida.Checked:=True;
       DMCONTA.TAlx.CLOSE;
       DMCONTA.TAlx.SQL.Clear;
       DMCONTA.TAlx.SQL.Add(' select * from abcaixa left join caixa on abcaixa.cod_caixa = caixa.cod_caixa ');
       DMCONTA.TAlx.SQL.Add(' Where (abcaixa.fechado<>'+#39+'S'+#39+' ) AND (caixa.cod_loja=:COD_LOJA) ');
       DMCONTA.TAlx.ParamByName('COD_LOJA').AsString:=FMenu.LCODLOJA.Caption;
       DMCONTA.TAlx.Open;
		If DMCONTA.TAlx.IsEmpty
       Then Begin
			Mensagem('OPÇÃO BLOQUEADA', 'Não pode haver uma transferência para caixa! Não existe caixa aberto ou cadastrado para seleção.', '', 1, 1, False, 'i');
			DBCobranca.SetFocus;
           Exit;
       End
       Else Begin
           RGMOVIMENTO.ItemIndex:=1;
       	PCaixa.Enabled:=True;
       	PCaixa.Visible:=TRUE;
       	PCaixa.BringToFront;

       	FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_PLNCTA', DMMACS.TLoja.FieldByName('PLNCTATRANSFCAIXA').AsString, '');
	      	XCOD_PLNCTA:=DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger;
	      	FrmConta.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
	      	FrmConta.EDCodigo.text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;


           DBGCTA.DataSource:=DMCONTA.DAlx;
       	DBGCTA.SetFocus;
       End;
   End;

end;

procedure TFMovBanco.EdDtLancamentoExit(Sender: TObject);
begin
  inherited;
	If (EdDtReferencia.Text='  /  /    ') or (EdDtReferencia.Text='  /  /  ') or (EdDtReferencia.Text='') Then
   	EdDtReferencia.Text:=EDDTLanc.Text;
end;

procedure TFMovBanco.EdDtMovimentoExit(Sender: TObject);
begin
  inherited;
   EdDtReferencia.Text:=EdDtMovimento.Text;
end;

procedure TFMovBanco.FrmContaBTNOPENEnter(Sender: TObject);
begin
  inherited;
  FrmConta.BTNOPENEnter(Sender);
  FrmConta.LUZOPEN.Visible:=True;
end;

procedure TFMovBanco.FrmContaBTNOPENExit(Sender: TObject);
begin
  inherited;
  FrmConta.BTNOPENExit(Sender);
  FrmConta.LUZOPEN.Visible:=False;
end;

procedure TFMovBanco.DBEntradaClick(Sender: TObject);
begin
  inherited;
	If DBEntrada.Checked=True
   Then Begin
       DBSaida.Checked:=False;
       //EFETUA CONTROLE DE CHEQUE
       If DBCobranca.Text='CHEQUE'
       Then Begin
          PChequeRec.Visible:=True;
          PChequeRec.Enabled:=True;
          PChequeEmit.Visible:=True;
          PChequeEmit.Enabled:=True;
          XCOD_BANCOCHEQUE:=-1;
          PChequeEmit.Visible:=False;
          PChequeEmit.Enabled:=False;
          PChequeEmit.BringToFront;
       End;
   End
   Else Begin
          PChequeRec.Visible:=False;
          PChequeRec.Enabled:=False;
          PChequeEmit.Visible:=False;
          PChequeEmit.Enabled:=False;
          XCOD_BANCOCHEQUE:=-1;
          PChequeEmit.Visible:=True;
          PChequeEmit.Enabled:=True;
          PChequeEmit.BringToFront;
   End;
end;

procedure TFMovBanco.DBSaidaClick(Sender: TObject);
begin
  inherited;
	If DBSaida.Checked=True Then
       DBEntrada.Checked:=False;
end;

procedure TFMovBanco.RelatriodeBancosePlanodecontas1Click(Sender: TObject);
begin
  inherited;
	FMenu.XTipoRel := 'RELBCPLNCTA';
	AbrirForm(TFRelBancoPlanoContas, FRelBancoPlanoContas, 0);
end;

procedure TFMovBanco.DBGrid4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	If Key=VK_Return
   Then Begin
   	If Not DMESTOQUE.Alx.IsEmpty Then//'se banco não estiver vazio
       	XCOD_CONTABANCO:=DMESTOQUE.Alx.FieldByName('COD_CTACOR').AsInteger
       Else
           XCOD_CONTABANCO:=-1;
       PBanco.Visible:=False;
       PBanco.Enabled:=False;
       BtnGravar.SetFocus;
   End;
end;

procedure TFMovBanco.ControledeSadas1Click(Sender: TObject);
begin
  inherited;
	FMenu.XTipoRel := 'RELCTRLSAIDA';
	AbrirForm(TFRelBancoPlanoContas, FRelBancoPlanoContas, 0);
end;

procedure TFMovBanco.ControledeEntradas1Click(Sender: TObject);
begin
  inherited;
	FMenu.XTipoRel := 'RELCTRLENTRADA';
	AbrirForm(TFRelBancoPlanoContas, FRelBancoPlanoContas, 0);
end;

procedure TFMovBanco.BalanoCrditoDbito1Click(Sender: TObject);
begin
  inherited;
	FMenu.XTipoRel := 'RELBALANCOCREDDEB';
	AbrirForm(TFRelBancoPlanoContas, FRelBancoPlanoContas, 0);
end;

end.
