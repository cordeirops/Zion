unit UCadCST;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UCadPadraoDesc, TFlatHintUnit, Mask, DBCtrls, DBColorEdit,
  Grids, DBGrids, StdCtrls, Buttons, TFlatEditUnit, jpeg, ExtCtrls, DrLabel;

type
  TFCadCST = class(TFCadPadraoDesc)
    Label2: TLabel;
    DBCODCST: TDBColorEdit;
    Label1: TLabel;
    DBColorEdit1: TDBColorEdit;
    CBSubstituicao: TCheckBox;
    CbReducao: TCheckBox;
    CBVenda: TCheckBox;
    CbIsenta: TCheckBox;
    CbIcmsOperPropria: TCheckBox;
    CbCreditoIcms: TCheckBox;
    EdCodigoCst: TFlatEdit;
    cbDiferencial: TCheckBox;
    procedure FormActivate(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure DBCODCSTKeyPress(Sender: TObject; var Key: Char);
    procedure BtnGravarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnConsultarClick(Sender: TObject);
    procedure EdNomeEnter(Sender: TObject);
    procedure EdCodigoCstEnter(Sender: TObject);
    procedure EdCodigoCstKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnRelatorioClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadCST: TFCadCST;

implementation

uses AlxMessage, Alxor32, UDMEstoque, UMenu, UCadPadrao, UDMMacs;

{$R *.DFM}

procedure TFCadCST.FormActivate(Sender: TObject);
begin
  inherited;
	 Caption:='C.S.T./C.S.O.S.N.' ;
    XTabela:=DMEstoque.TCST;
    XCampo:='DESCRICAO';
    XPkTabela:='COD_CST';
    XTransaction:=DMEstoque.TransacEstoque;
    XTab:=True;
    XDescricao:='a Situação Tributária';
    XSQLTABELA:='CST';
    XLiberaDados:='';
    If FMenu.EdUSUARIO.Text='SYSTEM LORD'
    Then Begin
       BtnNovo.Enabled:=True;
       BtnApagar.Enabled:=True;
       BtnConsultar.Enabled:=True;
    End
    Else Begin
       BtnNovo.Enabled:=False;
       BtnApagar.Enabled:=False;
       BtnConsultar.Enabled:=False;
    End;
    DBGridCadastroPadrao.DataSource:=DMESTOQUE.DSCST;
end;

procedure TFCadCST.BtnNovoClick(Sender: TObject);
begin
  inherited;
    DBCODCST.SetFocus;
    CBSubstituicao.Checked:=False;
    CbCreditoIcms.Checked:=False;
end;

procedure TFCadCST.DBCODCSTKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
// Valida a entrada de dados, permitindo somente a entrada de valores núméricos entre 0 e 9 e a tecla backspace;
    If not(key in['0'..'9',#8]) Then
        Key:=#0;
end;

procedure TFCadCST.BtnGravarClick(Sender: TObject);
begin
        //Não permite que seja gravado no banco de dados, se não existir dados na DBEdit do Códgo de Situaçào Tributária;
       If DBCODCST.Text = ''
       Then Begin
            Mensagem('INFORMAÇÃO AO USUÁRIO', 'O campo "CÓDIGO DE SITUAÇÃO TRIBUTÁRIA", deve conter dados para que a operação seja finalizada', '', 1, 1, False, 'I');
            DBCODCST.SetFocus;
            Exit;
       End;

        //Não permite que seja gravado no banco de dados, se não existir dados na DBEdit do Descrição de Situaçào Tributária;
        If DBDESC.Text = ''
        Then Begin
            Mensagem('INFORMAÇÃO AO USUÁRIO', 'O campo "DESCRIÇÃO DA SITUAÇÃO TRIBUTÁRIA", deve conter dados para que a operação seja finalizada', '', 1, 1, False, 'I');
            DBDesc.SetFocus;
            Exit;
        End;

        If CBSubstituicao.Checked=True Then
           DMESTOQUE.TCST.FieldByName('SUBSTITUICAO').AsString:='1'
        Else
           DMESTOQUE.TCST.FieldByName('SUBSTITUICAO').AsString:='0';

        If CbIcmsOperPropria.Checked=True Then
           DMESTOQUE.TCST.FieldByName('ICMSOP').AsString:='1'
        Else
           DMESTOQUE.TCST.FieldByName('ICMSOP').AsString:='0';

        if cbDiferencial.Checked then
           DMESTOQUE.TCST.FieldByName('DIFERENCIAL_ALIQ').AsString := '1'
        else
           DMESTOQUE.TCST.FieldByName('DIFERENCIAL_ALIQ').AsString := '0';

        If CbReducao.Checked=True Then
           DMESTOQUE.TCST.FieldByName('REDUCAO').AsString:='1'
        Else
           DMESTOQUE.TCST.FieldByName('REDUCAO').AsString:='0';

        If CBVenda.Checked=True Then
           DMESTOQUE.TCST.FieldByName('VENDA').AsString:='1'
        Else
           DMESTOQUE.TCST.FieldByName('VENDA').AsString:='0';

        //Paulo 31/03/2011: marca se o cst é isento ou não
        If CbIsenta.Checked=True Then
           DMESTOQUE.TCST.FieldByName('ISENTA').AsString:='1'
        Else
           DMESTOQUE.TCST.FieldByName('ISENTA').AsString:='0';
        //Alex 27/06/2014: Permite c´redito de icms
        If CbCreditoIcms.Checked=True Then
           DMESTOQUE.TCST.FieldByName('APROVEITACREDITO').AsString:='1'
        Else
           DMESTOQUE.TCST.FieldByName('APROVEITACREDITO').AsString:='0';   
      inherited;

end;
procedure TFCadCST.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	If FMenu.EdUsuario.Text<>'SYSTEM LORD'
   Then Begin
		If (Key=VK_F4) OR (Key=VK_F8) OR (Key=VK_F6) Then
       	Exit;
   End;
  inherited;

end;

procedure TFCadCST.BtnConsultarClick(Sender: TObject);
begin
  inherited;
	If DMESTOQUE.TCST.FieldByName('SUBSTITUICAO').AsString='1' Then
   	CBSubstituicao.Checked:=True
	Else
       CBSubstituicao.Checked:=False;
	If DMESTOQUE.TCST.FieldByName('ICMSOP').AsString='1' Then
   	CbIcmsOperPropria.Checked:=True
	Else
       CbIcmsOperPropria.Checked:=False;

	If DMESTOQUE.TCST.FieldByName('REDUCAO').AsString='1' Then
   	CbReducao.Checked:=True
	Else
       CbReducao.Checked:=False;

   if DMESTOQUE.TCST.FieldByName('DIFERENCIAL_ALIQ').AsString = '1' then
       cbDiferencial.Checked := true
   else
       cbDiferencial.Checked := false;

   If DMESTOQUE.TCST.FieldByName('VENDA').AsString='1' Then
		CBVenda.Checked:=True
   Else
		CBVenda.Checked:=False;

   //Paulo 31/03/2011: Verifica se o cst é isenta ou não
   If DMESTOQUE.TCST.FieldByName('ISENTA').AsString='1' Then
		CbIsenta.Checked:=True
   Else
		CbIsenta.Checked:=False;

   //Alex 27/06/2014: Verifica de o cst permite crédito
   If DMESTOQUE.TCST.FieldByName('APROVEITACREDITO').AsString='1' Then
		CbCreditoIcms.Checked:=True
   Else
		CbCreditoIcms.Checked:=False;
end;

procedure TFCadCST.EdNomeEnter(Sender: TObject);
begin
  inherited;
    EdNome.SelectAll;
end;

procedure TFCadCST.EdCodigoCstEnter(Sender: TObject);
begin
  inherited;
    EdCodigoCst.SelectAll;
end;

procedure TFCadCST.EdCodigoCstKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	Try
		If Key=VK_RETURN
   	Then Begin//pressionado enter, consultar
		    FiltraTabela(XTabela, XSQLTABELA, 'COD_SIT_TRIB', '', '(upper(COD_SIT_TRIB) like upper('+#39+EdCodigoCst.Text+'%'+#39+')) ORDER BY COD_SIT_TRIB');
       End;
       If Key=VK_ESCAPE
       Then Begin //pressionado esc, liberar
			LiberaDados;
       End;
   Except
   End;
end;

procedure TFCadCST.BtnRelatorioClick(Sender: TObject);
Var
	xCodigCstIcms, xCodigoCstTS: Integer;
	xCodigoNovoCst, Xcontador: Integer;
	xDescNovoCST, XDescCompra: String;
	xDescST, xDescOP, DataCompra: String;
begin
  inherited;
	MessageDlg('Confirmando essa operação, o sistema ajustará todos os Csts ou Csosns dos produtos cadastrados, de acordo com a última compra.', mtWarning, [mbOK], 0);
	If MessageDlg('Deseja realmente continuar com o ajuste?', mtConfirmation, [mbYes, mbNo], 0)=mryes
	Then Begin
       DMMACS.TMP.Close;
       DMMACS.TMP.SQL.Clear;
       DMMACS.TMP.SQL.Add(' delete from tmp ');
       DMMACS.TMP.ExecSQL;
       DMMACS.Transaction.CommitRetaining;
       DMMACS.TMP.Close;
       DMMACS.TMP.SQL.Clear;
       DMMACS.TMP.SQL.Add(' select * from tmp ');
       DMMACS.TMP.Open;

       Xcontador := 0;

		If dmmacs.TLoja.FieldByName('csttrib').AsInteger>0
		Then Begin
           xCodigCstIcms:=dmmacs.TLoja.FieldByName('csttrib').AsInteger;
           If FiltraTabela(DMESTOQUE.TCST, 'cst', 'COD_CST', dmmacs.TLoja.FieldByName('csttrib').AsString, '') Then
				xDescOP := DMESTOQUE.TCST.FieldByName('cod_sit_trib').AsString
		End
		Else Begin
			MessageDlg('Configure em loja o CST / CSOSN  para operações de tributação.', mtWarning, [mbOK], 0);
			Exit;
		End;

		If dmmacs.TLoja.FieldByName('cstsubst').AsInteger>0
		Then Begin
           xCodigoCstTS:=dmmacs.TLoja.FieldByName('cstsubst').AsInteger;
           If FiltraTabela(DMESTOQUE.TCST, 'cst', 'COD_CST', dmmacs.TLoja.FieldByName('cstsubst').AsString, '') Then
				xDescST := DMESTOQUE.TCST.FieldByName('cod_sit_trib').AsString
		End
		Else Begin
			MessageDlg('Configure em loja o CST / CSOSN  para operações de subtituição tributária.', mtWarning, [mbOK], 0);
			Exit;
		End;

		//FILTRA SIMILAR DE ACORDO COM O PRODUTO
   	DMESTOQUE.WSimilar.Close;
   	DMESTOQUE.WSimilar.SQL.Clear;
       DMESTOQUE.WSimilar.SQL.Add('SELECT * FROM VWSIMILAR WHERE (COD_LOJA=:CODLOJA)  and ((ATIVO = ''S'') or (ATIVO is null)) Order By DESCRICAO');
       DMESTOQUE.WSimilar.ParamByName('CODLOJA').Asstring:=FMenu.LCODLOJA.Caption;
   	DMESTOQUE.WSimilar.Open;

		DMESTOQUE.WSimilar.First;
       While not DMESTOQUE.WSimilar.Eof do
		Begin
			DataCompra := '';
			If DMESTOQUE.WSimilar.FieldByName('CONTRINT').AsString = '2' Then
				XDescCompra := '';
			XDescCompra := '';

			//Localizaremos a ultima compra do item
			DMESTOQUE.Alx.Close;
           DMESTOQUE.Alx.SQL.Clear;
			DMESTOQUE.Alx.SQL.Add(' Select itenspedc.cod_itenspedc, itenspedc.cod_estoque, itenspedc.cod_cst, itenspedc.data, cst.cod_sit_trib, itenspedc.cfop from itenspedc ');
			DMESTOQUE.Alx.SQL.Add(' left join cst on itenspedc.cod_cst = cst.cod_cst ');
			DMESTOQUE.Alx.SQL.Add(' where (itenspedc.cod_estoque=:CodigoEstoque) and (cst.cod_sit_trib<>'''') ');
			DMESTOQUE.Alx.SQL.Add(' order by itenspedc.data desc ');
           DMESTOQUE.Alx.ParamByName('CodigoEstoque').AsInteger := DMESTOQUE.WSimilar.FieldByName('cod_estoque').AsInteger;
           DMESTOQUE.Alx.Open;
			If not DMESTOQUE.Alx.IsEmpty
			Then Begin
               Xcontador := Xcontador + 1;
				DataCompra:=DMESTOQUE.Alx.FieldByName('data').AsString;
               XDescCompra := DMESTOQUE.Alx.FieldByName('cod_sit_trib').AsString;
				If FiltraTabela(DMESTOQUE.TCST, 'cst', 'cod_sit_trib', DMESTOQUE.Alx.FieldByName('cod_sit_trib').asstring, '')
				Then Begin
					If DMESTOQUE.TCST.FieldByName('ICMSOP').AsString = '1'
					Then Begin
						xCodigoNovoCst := xCodigCstIcms;
						xDescNovoCST := xDescOP;
					End
					Else Begin
						xCodigoNovoCst := xCodigoCstTS;
						xDescNovoCST := xDescST;
					End;
				End
				Else Begin
               	xCodigoNovoCst:=-10;
                   xDescNovoCST:='CST não cadastrada '+DMESTOQUE.Alx.FieldByName('cod_sit_trib').AsString;
				End;
			End
			Else Begin
               xDescNovoCST:='Sem Compra';
               xCodigoNovoCst := -20;
			End;
			//Repassamos os dados encontrados para a tabela temporária
           DMMACS.TMP.Insert;
           DMMACS.TMP.FieldByName('COD_TMP').AsInteger := DMESTOQUE.WSimilar.FieldByName('cod_estoque').AsInteger;
           DMMACS.TMP.FieldByName('int1').AsInteger := DMESTOQUE.Alx.FieldByName('cod_cst').AsInteger; //Cst da ultima compra
           DMMACS.TMP.FieldByName('int2').AsInteger := xCodigoNovoCst;//Novo Cst de Venda
           DMMACS.TMP.FieldByName('desc1').AsString := xDescNovoCST;//Descrição da nova cst
           DMMACS.TMP.FieldByName('desc2').AsString := DataCompra;//data da compra
           DMMACS.TMP.FieldByName('desc3').AsString := XDescCompra;
			DMMACS.TMP.Post;
           If FiltraTabela(DMESTOQUE.TSubProd, 'SUBPRODUTO', 'cod_subproduto', DMESTOQUE.WSimilar.FieldByName('cod_subproduto').AsString, '') = True
			Then Begin
               DMESTOQUE.TSubProd.Edit;
               DMESTOQUE.TSubProd.FieldByName('COD_CST').AsInteger := xCodigoNovoCst;
               DMESTOQUE.TSubProd.Post;
			End;
           DMESTOQUE.WSimilar.Next;
		End;
       DMMACS.Transaction.CommitRetaining;
       DMESTOQUE.TransacEstoque.CommitRetaining;
		MessageDlg( IntToStr(xcontador) + ' Produtos atualizados', mtWarning, [mbOK], 0);
	End;
end;

end.
