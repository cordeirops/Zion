unit UDevolucao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPadrao, Buttons, ExtCtrls, StdCtrls, EditFloat, Grids, DBGrids;

type
  TFDevolucao = class(TFPadrao)
    EdCodigoDevol: TEdit;
    EdDescDevol: TEdit;
    lbcodigobusca: TLabel;
    lbdescricaobusca: TLabel;
    DGItensDevolucao: TDBGrid;
    qt: TLabel;
    EdDevQuant: TFloatEdit;
    vl: TLabel;
    EdDevVlrUnit: TFloatEdit;
    vl1: TLabel;
    EdDevVlrTot: TFloatEdit;
    EdDevAliqIIcms: TFloatEdit;
    vl2: TLabel;
    vl3: TLabel;
    EdDevBaseIcms: TFloatEdit;
    EdDevVlrIcms: TFloatEdit;
    vl4: TLabel;
    EdDevIpi: TFloatEdit;
    vl8: TLabel;
    EdDevAliqIpi: TFloatEdit;
    vl7: TLabel;
    EdDevVlrSubst: TFloatEdit;
    vl6: TLabel;
    EdDevBaseSubst: TFloatEdit;
    vl5: TLabel;
    btnAdicionarDevolvido: TBitBtn;
    btnRemoverDevolvido: TBitBtn;
    DGDevolvidos: TDBGrid;
    btnDevolverItens: TBitBtn;
    btnCancelarDevolucao: TBitBtn;
    btnDevolucaoCompleta: TBitBtn;
    lbCst: TLabel;
    Label1: TLabel;
    edCst: TEdit;
    lbDescCst: TLabel;
    Label2: TLabel;
    EdDevAliqST: TFloatEdit;
    procedure EdCodigoDevolKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdDescDevolKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdDevQuantExit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DGItensDevolucaoCellClick(Column: TColumn);
    procedure btnAdicionarDevolvidoClick(Sender: TObject);
    procedure btnRemoverDevolvidoClick(Sender: TObject);
    procedure btnDevolverItensClick(Sender: TObject);
    procedure btnCancelarDevolucaoClick(Sender: TObject);
    procedure btnDevolucaoCompletaClick(Sender: TObject);
    procedure DGItensDevolucaoDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure edCstKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  	 //Edmar - 12/03/2015 - procedimento auxiliar para filtras os itens que podem ser devolvidos
    procedure FiltraItensDevolucao(xEntidade: String; xParam: String);
  	 //Edmar - 12/03/2015 - procedimento auxiliar pra filtrar os itens incluidos para devolução
    procedure FiltraItensDevolvidos;
    procedure CalculaValoresItem;
    procedure DesmarcaItemDevolvido;
  public
    { Public declarations }
  end;

var
  FDevolucao: TFDevolucao;
  xXValorPedidoDevolvido: Real;

implementation

uses UDMMacs, UPedCompra, UPedVenda, UCadPadrao, UDMEntrada,
  	  UDMSaida, UDMEstoque, UMDO, UMenu, Alxor32, DB, UCadCST;

{$R *.dfm}

{ TFDevolucao }

procedure TFDevolucao.FiltraItensDevolucao(xEntidade, xParam: String);
begin
	try
   	if FMenu.XTABELA_DEVOLUCAO = 'PEDVENDA' then
       begin
           //Edmar - 18/03/2015 - Adiciona SQL para filtrar os itens que ainda podem ser devolvidos
           DMESTOQUE.TSlave.Close;
           DMESTOQUE.TSlave.SQL.Clear;
           DMESTOQUE.TSlave.SQL.Add(' SELECT ITENSPEDVEN.COD_ITENSPEDVEN PK_ITEM, ITENSPEDVEN.CFOP, ITENSPEDVEN.COD_PEDVEN, ITENSPEDVEN.COD_ESTOQUE, ');
           DMESTOQUE.TSlave.SQL.Add(' ITENSPEDVEN.COD_UNIDADE, ITENSPEDVEN.QTDEPROD, ITENSPEDVEN.VALORTOTAL, ITENSPEDVEN.DESCPRO, ITENSPEDVEN.VALUNIT, ');
           DMESTOQUE.TSlave.SQL.Add(' ITENSPEDVEN.ALIQICMS, ITENSPEDVEN.BASEICMS, ITENSPEDVEN.VLRICMS, ITENSPEDVEN.BASEICMSSUBS, ITENSPEDVEN.VLRICMSSUBS, ');
           DMESTOQUE.TSlave.SQL.Add(' ITENSPEDVEN.ALIQIPI, ITENSPEDVEN.VLRIPI, CST.COD_SIT_TRIB AS CST, VWSIMILAR.DESCRICAO, VWSIMILAR.MARCA, ITENSPEDVEN.IT_DEV, ');
           DMESTOQUE.TSlave.SQL.Add(' SUBPRODUTO.'+ DMMACS.TLoja.FieldByName('CODPRODREL1').AsString + ' AS CODIGO1, CST.COD_CST, CST.DESCRICAO DESC_CST FROM ITENSPEDVEN ');
           DMESTOQUE.TSlave.SQL.Add(' LEFT JOIN VWSIMILAR ON ITENSPEDVEN.COD_ESTOQUE = VWSIMILAR.COD_ESTOQUE ');
           DMESTOQUE.TSlave.SQL.Add(' LEFT JOIN SUBPRODUTO ON VWSIMILAR.COD_SUBPRODUTO = SUBPRODUTO.COD_SUBPRODUTO ');           
           DMESTOQUE.TSlave.SQL.Add(' LEFT JOIN CST ON ITENSPEDVEN.COD_CST = CST.COD_CST ');
           DMESTOQUE.TSlave.SQL.Add(' WHERE (ITENSPEDVEN.COD_PEDVEN = :CODIGO) ');
       end;
       
       if FMenu.XTABELA_DEVOLUCAO = 'PEDCOMPRA' then
       begin
           //INSERE COMANDOS PARA FILTRAR
           DMESTOQUE.TSlave.Close;
           DMESTOQUE.TSlave.SQL.Clear;
           DMESTOQUE.TSlave.SQL.Add(' SELECT ITENSPEDC.COD_ITENSPEDC PK_ITEM, ITENSPEDC.CFOP, ITENSPEDC.COD_LOTE, ITENSPEDC.COD_PEDCOMPRA, ITENSPEDC.COD_ESTOQUE, ');
           DMESTOQUE.TSlave.SQL.Add(' ITENSPEDC.COD_UNIDADE, ITENSPEDC.QTDEPROD, ITENSPEDC.QTDEST, ITENSPEDC.VALORTOTAL, ITENSPEDC.BASEICMSSUBS, CST.DESCRICAO DESC_CST, ');
           DMESTOQUE.TSlave.SQL.Add(' ITENSPEDC.DESCPRO, ITENSPEDC.VALUNIT, ITENSPEDC.ALIQICMS, ITENSPEDC.VLRICMS, ITENSPEDC.BASEICMS, ITENSPEDC.ALIQIPI, ');
           DMESTOQUE.TSlave.SQL.Add(' ITENSPEDC.VLRICMSSUBS, ITENSPEDC.ALIQIPI, ITENSPEDC.VLRIPI, CST.COD_SIT_TRIB AS CST, ITENSPEDC.IT_DEV, CST.COD_CST, ');
           DMESTOQUE.TSlave.SQL.Add(' VWSIMILAR.DESCRICAO, VWSIMILAR.MARCA, SUBPRODUTO.'+ DMMACS.TLoja.FieldByName('CODPRODREL1').AsString + ' AS CODIGO1 FROM ITENSPEDC ');
           DMESTOQUE.TSlave.SQL.Add(' LEFT JOIN VWSIMILAR ON ITENSPEDC.COD_ESTOQUE = VWSIMILAR.COD_ESTOQUE ');
           DMESTOQUE.TSlave.SQL.Add(' LEFT JOIN SUBPRODUTO ON VWSIMILAR.COD_SUBPRODUTO = SUBPRODUTO.COD_SUBPRODUTO ');           
           DMESTOQUE.TSlave.SQL.Add(' LEFT JOIN CST ON ITENSPEDC.COD_CST = CST.COD_CST ');
           DMESTOQUE.TSlave.SQL.Add(' WHERE (ITENSPEDC.COD_PEDCOMPRA = :CODIGO) ');
       end;

       if FMenu.XTABELA_DEVOLUCAO = 'ORDEM' then
       begin
       	DMESTOQUE.TSlave.Close;
           DMESTOQUE.TSlave.SQL.Clear;
           DMESTOQUE.TSlave.SQL.Add(' SELECT ITPRODORD.COD_ITPRODORD PK_ITEM, ITPRODORD.CFOP, ITPRODORD.COD_ORDEM, ITPRODORD.COD_ESTOQUE, CST.COD_SIT_TRIB CST, ITPRODORD.DESCONTO DESCPRO, ');
           DMESTOQUE.TSlave.SQL.Add(' VWSIMILAR.DESCRICAO, VWSIMILAR.MARCA, SUBPRODUTO.'+ DMMACS.TLoja.FieldByName('CODPRODREL1').AsString + ' CODIGO1, ITPRODORD.QTD QTDEPROD, ITPRODORD.VLRUNIT VALUNIT, ITPRODORD.TOTAL VALORTOTAL, ');
           DMESTOQUE.TSlave.SQL.Add(' ITPRODORD.BASEICMSSUBS, ITPRODORD.VLRICMSSUBS, ITPRODORD.BASEICMS, ITPRODORD.ALIQICMS, ITPRODORD.VLRICMS, ITPRODORD.IT_DEV, ');
           DMESTOQUE.TSlave.SQL.Add(' ITPRODORD.ALIQIPI, ITPRODORD.VLRIPI, CST.COD_CST, CST.DESCRICAO DESC_CST FROM ITPRODORD ');
           DMESTOQUE.TSlave.SQL.Add(' LEFT JOIN VWSIMILAR ON ITPRODORD.COD_ESTOQUE = VWSIMILAR.COD_ESTOQUE ');
           DMESTOQUE.TSlave.SQL.Add(' LEFT JOIN SUBPRODUTO ON VWSIMILAR.COD_SUBPRODUTO = SUBPRODUTO.COD_SUBPRODUTO ');           
           DMESTOQUE.TSlave.SQL.Add(' LEFT JOIN CST ON ITPRODORD.COD_CST = CST.COD_CST ');
           DMESTOQUE.TSlave.SQL.Add(' WHERE (ITPRODORD.COD_ORDEM = :CODIGO) ');

       end;

       //se entidade não for vazia, significa que foi buscado por algo nos campos de codigo ou descrição
       if xEntidade <> '' then
       begin
           if xEntidade = 'CODIGO' then
               DMESTOQUE.TSlave.SQL.Add(' AND (UPPER(SUBPRODUTO.'+ DMMACS.TLoja.FieldByName('CODPRODREL1').AsString+') LIKE UPPER(:PARAM)) ')
           else
               DMESTOQUE.TSlave.SQL.Add(' AND (UPPER(VWSIMILAR.DESCRICAO) LIKE UPPER(:PARAM)) ');

           DMESTOQUE.TSlave.ParamByName('PARAM').AsString := xParam+'%';
       end;

       DMESTOQUE.TSlave.ParamByName('CODIGO').AsString := FMenu.XCOD_PK_DEVOLVIDO;
       DMESTOQUE.TSlave.Open;
   except
   	MessageDlg('Não foi possível filtrar os Itens a serem devolvidos.', mtWarning, [mbOK], 0);
   end;
end;
//Edmar - 18/03/2015 - Filtra os itens já incluidos para devolução
procedure TFDevolucao.FiltraItensDevolvidos;
begin
	try
   	if FMenu.XTABELA_DEVOLUCAO = 'PEDVENDA' then
       begin
           DMESTOQUE.Alx.Close;
           DMESTOQUE.Alx.SQL.Clear;
           DMESTOQUE.Alx.SQL.Add(' SELECT ITENSPEDVEN.COD_ITENSPEDVEN PK_ITEM, ITENSPEDVEN.CFOP, ITENSPEDVEN.COD_PEDVEN, ITENSPEDVEN.COD_ESTOQUE, ITENSPEDVEN.COD_UNIDADE, ');
           DMESTOQUE.Alx.SQL.Add(' TMP.VLR1 AS QTDEPROD, TMP.VLR3 VALORTOTAL, ITENSPEDVEN.DESCPRO, TMP.VLR2 VALUNIT, TMP.VLR9 ALIQICMS, TMP.VLR4 VLRICMS, ');
           DMESTOQUE.Alx.SQL.Add(' TMP.VLR7 BASEICMS, TMP.VLR8 BASESUBST, TMP.VLR5 VLRSUBSTITUICAO, TMP.VLR10 ALIQIPI, TMP.VLR6 VLRIPI, CST.COD_SIT_TRIB CST, ');
           DMESTOQUE.Alx.SQL.Add(' VWSIMILAR.DESCRICAO, VWSIMILAR.MARCA, SUBPRODUTO.'+DMMACS.TLoja.FieldByName('CODPRODREL1').AsString+' AS CODIGO1 FROM TMP ');
           DMESTOQUE.Alx.SQL.Add(' LEFT JOIN ITENSPEDVEN ON TMP.INT1 = ITENSPEDVEN.COD_ITENSPEDVEN ');
           DMESTOQUE.Alx.SQL.Add(' LEFT JOIN VWSIMILAR ON ITENSPEDVEN.COD_ESTOQUE = VWSIMILAR.COD_ESTOQUE ');
           DMESTOQUE.Alx.SQL.Add(' LEFT JOIN SUBPRODUTO ON VWSIMILAR.COD_SUBPRODUTO = SUBPRODUTO.COD_SUBPRODUTO ');           
           DMESTOQUE.Alx.SQL.Add(' LEFT JOIN CST ON TMP.DESC2 = CST.COD_CST ');
           DMESTOQUE.Alx.Open;
       end;

       if FMenu.XTABELA_DEVOLUCAO = 'PEDCOMPRA' then
       begin
           DMESTOQUE.Alx.Close;
           DMESTOQUE.Alx.SQL.Clear;
           DMESTOQUE.Alx.SQL.Add('  SELECT ITENSPEDC.COD_ITENSPEDC PK_ITEM, ITENSPEDC.CFOP, ITENSPEDC.COD_LOTE, ITENSPEDC.COD_PEDCOMPRA, ITENSPEDC.COD_ESTOQUE, ITENSPEDC.COD_UNIDADE, ');
           DMESTOQUE.Alx.SQL.Add('  TMP.VLR1 AS QTDEPROD, ITENSPEDC.QTDEST, TMP.VLR3 AS  VALORTOTAL, ITENSPEDC.DESCPRO, TMP.VLR2 AS VALUNIT, ');
           DMESTOQUE.Alx.SQL.Add('  ITENSPEDC.ALIQICMS, TMP.VLR4 AS VLRICMS, TMP.VLR7 AS BASEICMS, TMP.VLR8 AS BASESUBST, TMP.VLR5 AS VLRSUBSTITUICAO, ITENSPEDC.ALIQIPI, TMP.VLR6 AS VLRIPI, CST.COD_SIT_TRIB AS CST, ');
           DMESTOQUE.Alx.SQL.Add('  SUBPRODUTO.DESCRICAO, SUBPRODUTO.MARCA,  SUBPRODUTO.'+DMMACS.TLoja.FieldByName('CODPRODREL1').AsString+' AS CODIGO1 ');
           DMESTOQUE.Alx.SQL.Add('  FROM TMP ');
           DMESTOQUE.Alx.SQL.Add('  LEFT JOIN ITENSPEDC ON TMP.INT1 = ITENSPEDC.COD_ITENSPEDC ');
           DMESTOQUE.Alx.SQL.Add('  LEFT JOIN ESTOQUE ON ITENSPEDC.COD_ESTOQUE = ESTOQUE.COD_ESTOQUE ');
           DMESTOQUE.Alx.SQL.Add('  LEFT JOIN CST ON TMP.DESC2 = CST.COD_CST ');
           DMESTOQUE.Alx.SQL.Add('  LEFT JOIN SUBPRODUTO ON SUBPRODUTO.COD_SUBPRODUTO = ESTOQUE.COD_SUBPROD ');
           DMESTOQUE.Alx.Open;
       end;

       if FMenu.XTABELA_DEVOLUCAO = 'ORDEM' then
       begin
       	DMESTOQUE.Alx.Close;
           DMESTOQUE.Alx.SQL.Clear;
           DMESTOQUE.Alx.SQL.Add(' SELECT ITPRODORD.COD_ITPRODORD PK_ITEM, ITPRODORD.CFOP, ITPRODORD.COD_ORDEM, ITPRODORD.COD_ESTOQUE, CST.COD_SIT_TRIB CST, ');
           DMESTOQUE.Alx.SQL.Add(' VWSIMILAR.DESCRICAO, VWSIMILAR.MARCA, SUBPRODUTO.'+DMMACS.TLoja.FieldByName('CODPRODREL1').AsString+' CODIGO1, TMP.VLR1 QTDEPROD, TMP.VLR2 VALUNIT, TMP.VLR3 VALORTOTAL, ');
           DMESTOQUE.Alx.SQL.Add(' TMP.VLR9 ALIQICMS, TMP.VLR4 VLRICMS, TMP.VLR7 BASEICMS, TMP.VLR8 BASESUBST, TMP.VLR5 VLRSUBSTITUICAO, TMP.VLR10 ALIQIPI, TMP.VLR6 VLRIPI ');
           DMESTOQUE.Alx.SQL.Add(' FROM TMP ');
           DMESTOQUE.Alx.SQL.Add(' LEFT JOIN ITPRODORD ON TMP.INT1 = ITPRODORD.COD_ITPRODORD ');
           DMESTOQUE.Alx.SQL.Add(' LEFT JOIN VWSIMILAR ON ITPRODORD.COD_ESTOQUE = VWSIMILAR.COD_ESTOQUE ');
           DMESTOQUE.Alx.SQL.Add(' LEFT JOIN SUBPRODUTO ON VWSIMILAR.COD_SUBPRODUTO = SUBPRODUTO.COD_SUBPRODUTO ');
           DMESTOQUE.Alx.SQL.Add(' LEFT JOIN CST ON TMP.DESC2 = CST.COD_CST ');
           DMESTOQUE.Alx.Open;
       end;
   except
   	MessageDlg('Não foi possível atualizar os itens devolvidos.', mtWarning, [mbOK], 0);
   end;
end;

procedure TFDevolucao.EdCodigoDevolKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	//Edmar - 12/03/2015 - Busca o produto a ser devolvido pelo codigo do fabricante
   if Key = VK_RETURN then
   	FiltraItensDevolucao('CODIGO', EdCodigoDevol.Text);

   if Key = VK_ESCAPE then
   begin
   	FiltraItensDevolucao('', '');
       EdCodigoDevol.Text := '';       
   end;
end;

procedure TFDevolucao.EdDescDevolKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	//Edmar - 12/03/2015 - Busca o produto a ser devolvido pela descrição
   if Key = VK_RETURN then
   	FiltraItensDevolucao('DESCRICAO', EdDescDevol.Text);

   if Key = VK_ESCAPE then
   begin
   	FiltraItensDevolucao('', '');
       EdDescDevol.Text := '';
   end;
end;

procedure TFDevolucao.CalculaValoresItem;
var
	xBaseCalculoDev: Real;
begin
	//Edmar - 13/03/2015 - calcula o valor total do item
   xBaseCalculoDev := EdDevVlrUnit.ValueNumeric * EdDevQuant.ValueNumeric;
   EdDevVlrTot.ValueNumeric := xBaseCalculoDev;

   //Edmar - 13/03/2015 - Se for maior que zero realiza o calculo do icms
   if EdDevAliqIIcms.ValueNumeric > 0 then
   begin
   	EdDevBaseIcms.ValueNumeric := xBaseCalculoDev;
       EdDevVlrIcms.ValueNumeric := (xBaseCalculoDev * (EdDevAliqIIcms.ValueInteger / 100));
   end
   else begin
   	if EdDevAliqIIcms.ValueNumeric = 0 then
       begin
   		EdDevBaseIcms.ValueNumeric := 0;
       	EdDevVlrIcms.ValueNumeric := 0;
       end;
   end;

   //se for maior que zero realiza o calculo do ipi
   if EdDevAliqIpi.ValueNumeric > 0 then
   	EdDevIpi.ValueNumeric := (xBaseCalculoDev * (EdDevAliqIpi.ValueInteger / 100))
   else begin
   	if EdDevAliqIpi.ValueNumeric = 0 then
       	EdDevIpi.ValueNumeric := 0;
   end;
end;
                                                                
procedure TFDevolucao.EdDevQuantExit(Sender: TObject);
begin
  inherited;
	CalculaValoresItem;
end;

procedure TFDevolucao.FormActivate(Sender: TObject);
begin
	Caption:='Devoluções';
	FiltraItensDevolucao('', '');

   DMMACS.TALX.Close;
   DMMACS.TALX.SQL.Clear;
   DMMACS.TALX.SQL.Add(' DELETE FROM TMP ');
   DMMACS.TALX.ExecSQL;
   DMMACS.Transaction.CommitRetaining;
   
   FiltraItensDevolvidos;

   //busca pelos dados do pedido original para buscar seu valor total
   MDO.Query.Close;
   MDO.Query.SQL.Clear;
   if FMenu.XTABELA_DEVOLUCAO = 'PEDVENDA' then
   	MDO.Query.SQL.Add(' SELECT VWPEDV.VALOR FROM VWPEDV WHERE VWPEDV.COD_PEDVENDA = :CODIGO ');

   if FMenu.XTABELA_DEVOLUCAO = 'PEDCOMPRA' then
   	MDO.Query.SQL.Add(' SELECT VWPEDC.VALOR FROM VWPEDC WHERE VWPEDC.COD_PEDCOMP = :CODIGO ');

   if FMenu.XTABELA_DEVOLUCAO = 'ORDEM' then
   	MDO.Query.SQL.Add(' SELECT VWORDEM.TOTAL VALOR FROM VWORDEM WHERE VWORDEM.COD_ORDEM = :CODIGO ');
              
   MDO.Query.ParamByName('CODIGO').AsString := FMenu.XCOD_PK_DEVOLVIDO;
   MDO.Query.Open;

	xXValorPedidoDevolvido := MDO.Query.FieldByName('VALOR').AsCurrency;

   DGItensDevolucaoCellClick(nil);
end;

procedure TFDevolucao.DGItensDevolucaoCellClick(Column: TColumn);
begin
    if not DMESTOQUE.TSlave.IsEmpty then
    begin
        EdDevQuant.ValueNumeric := DMESTOQUE.TSlave.FieldByName('qtdeprod').AsCurrency;
        EdDevVlrUnit.ValueNumeric := DMESTOQUE.TSlave.FieldByName('valortotal').AsCurrency / EdDevQuant.ValueNumeric;
        EdDevVlrTot.ValueNumeric := DMESTOQUE.TSlave.FieldByName('valortotal').AsCurrency;
        EdDevAliqIIcms.ValueNumeric := DMESTOQUE.TSlave.FieldByName('aliqicms').AsCurrency; //Aliquota Icms
        EdDevBaseIcms.ValueNumeric := DMESTOQUE.TSlave.FieldByName('baseicms').AsCurrency; ; //Base Icms OP
        EdDevVlrIcms.ValueNumeric := DMESTOQUE.TSlave.FieldByName('vlricms').AsCurrency;
        EdDevBaseSubst.ValueNumeric := DMESTOQUE.TSlave.FieldByName('baseicmssubs').AsCurrency; //Base Substituição
        EdDevVlrSubst.ValueNumeric := DMESTOQUE.TSlave.FieldByName('vlricmssubs').AsCurrency;
        EdDevAliqIpi.ValueNumeric := DMESTOQUE.TSlave.FieldByName('aliqipi').AsCurrency; //Aliquota Ipi
        EdDevIpi.ValueNumeric := DMESTOQUE.TSlave.FieldByName('VLRIPI').AsCurrency; //Aliquota Ipi
        lbCst.Caption := DMESTOQUE.TSlave.FieldByName('COD_CST').AsString;
        edCst.Text := DMESTOQUE.TSlave.FieldByName('CST').AsString;
        lbDescCst.Caption := DMESTOQUE.TSlave.FieldByName('DESC_CST').AsString;
    end;
end;

procedure TFDevolucao.btnAdicionarDevolvidoClick(Sender: TObject);
begin
  inherited;
  	if DMESTOQUE.TSlave.FieldByName('IT_DEV').AsString = 'DVL' then
   begin
		if MessageDlg('O item '+DMESTOQUE.TSlave.FieldByName('DESCRICAO').AsString+' já foi devolvido. Deseja devolvê-lo novamente?', mtConfirmation, [mbYes, mbNo], 0) = MrNo then
       	Exit;
   end;

   if (lbCst.Caption = '0') OR (lbCst.Caption = '') then
   begin
   	MessageDlg('Por favor informe o CST do item.', mtWarning, [mbOK], 0);
   	Exit;
   end;
   
	if MessageDlg('Deseja realmente devolver o item '+DMESTOQUE.TSlave.FieldByName('DESCRICAO').AsString+'?', mtConfirmation, [mbYes, mbNo], 0) = MrYes then
   begin
   	DMMACS.TMP.Close;
       DMMACS.TMP.SQL.Clear;
       DMMACS.TMP.SQL.Add(' SELECT * FROM TMP ');
       DMMACS.TMP.Open;
       
       try
           DMMACS.TMP.Insert;
           DMMACS.TMP.FieldByName('COD_TMP').AsInteger := XCod_tmp;
           DMMACS.TMP.FieldByName('INT1').AsInteger    := DMESTOQUE.TSlave.FieldByName('PK_ITEM').AsInteger;
           DMMACS.TMP.FieldByName('DESC2').AsString    := lbCst.Caption;
           DMMACS.TMP.FieldByName('VLR1').AsCurrency   := EdDevQuant.ValueNumeric; //quantidade
           DMMACS.TMP.FieldByName('VLR2').AsCurrency   := EdDevVlrUnit.ValueNumeric; //Valor Unitario
           DMMACS.TMP.FieldByName('VLR3').AsCurrency   := EdDevVlrTot.ValueNumeric; //Valor Total
           DMMACS.TMP.FieldByName('VLR4').AsCurrency   := EdDevVlrIcms.ValueNumeric; //Valor Icms
           DMMACS.TMP.FieldByName('VLR5').AsCurrency   := EdDevVlrSubst.ValueNumeric; //Valor Substituicao Tributaria
           DMMACS.TMP.FieldByName('VLR6').AsCurrency   := EdDevIpi.ValueNumeric; //Valor IPI
           DMMACS.TMP.FieldByName('VLR7').AsCurrency   := EdDevBaseIcms.ValueNumeric; //Base Icms OP
           DMMACS.TMP.FieldByName('VLR8').AsCurrency   := EdDevBaseSubst.ValueNumeric; //Base Substituição
           DMMACS.TMP.FieldByName('VLR9').AsCurrency   := EdDevAliqIIcms.ValueNumeric; //Aliquota Icms
           DMMACS.TMP.FieldByName('VLR10').AsCurrency  := EdDevAliqIpi.ValueNumeric; //Aliquota Ipi
           DMMACS.TMP.FieldByName('VLR11').AsCurrency  := (EdDevVlrTot.ValueNumeric / xXValorPedidoDevolvido) * 100;
           DMMACS.TMP.FieldByName('VLR12').AsCurrency  := EdDevAliqST.ValueNumeric;
           DMMACS.TMP.Post;
			
           DMMACS.Transaction.CommitRetaining;
       except
           MessageDlg('Não foi possível incluir o item devolvido. Reinicie o sistema e tente novamente.', mtWarning, [mbOK], 0);
           DMMACS.Transaction.RollbackRetaining;
           Exit;
       end;

       try
           if FMenu.XTABELA_DEVOLUCAO = 'PEDVENDA' then
           begin
               //Edmar - 13/03/2015 - Atualiza o item de venda para não incluir o mesmo novamente na lista de devolução
               MDO.Query.Close;
               MDO.Query.SQL.Clear;
               MDO.Query.SQL.Add(' UPDATE ITENSPEDVEN SET ITENSPEDVEN.IT_DEV = ''DVL'' WHERE ITENSPEDVEN.COD_ITENSPEDVEN = :CODIGO  ');
           end;

           if FMenu.XTABELA_DEVOLUCAO = 'PEDCOMPRA' then
           begin
               //Edmar - 13/03/2015 - Atualiza o item de compra para não incluir o mesmo novamente na lista de devolução
               MDO.Query.Close;
               MDO.Query.SQL.Clear;
               MDO.Query.SQL.Add(' UPDATE ITENSPEDC SET ITENSPEDC.IT_DEV = ''DVL'' WHERE ITENSPEDC.COD_ITENSPEDC = :CODIGO ');
           end;

           if FMenu.XTABELA_DEVOLUCAO = 'ORDEM' then
           begin
               //Edmar - 20/03/2015 - Atualiza o item da ordem para não incluir o mesmo novamente na lista de devolução
               MDO.Query.Close;
               MDO.Query.SQL.Clear;
               MDO.Query.SQL.Add(' UPDATE ITPRODORD SET ITPRODORD.IT_DEV = ''DVL'' WHERE ITPRODORD.COD_ITPRODORD = :CODIGO ');
           end;

           MDO.Query.ParamByName('CODIGO').AsInteger := DMESTOQUE.TSlave.FieldByName('PK_ITEM').AsInteger;
           MDO.Query.ExecSQL;
           MDO.Transac.CommitRetaining;
       except
           MDO.Transac.RollbackRetaining;
       end;

       //limpa os edits
       EdDevQuant.Text := '0,00';
       EdDevVlrUnit.Text := '0,00';
       EdDevVlrTot.Text := '0,00';
       EdDevAliqIIcms.Text := '0,00';
       EdDevBaseIcms.Text := '0,00';
       EdDevVlrIcms.Text := '0,00';
       EdDevBaseSubst.Text := '0,00';
       EdDevVlrSubst.Text := '0,00';
       EdDevAliqIpi.Text := '0,00';
       EdDevIpi.Text := '0,00';
       EdDevAliqST.Text := '0,00';
       lbCst.Caption := '0';
       lbDescCst.Caption := '';
       edCst.Text := '';

       FiltraItensDevolvidos;
       FiltraItensDevolucao('', '');
       DGItensDevolucaoCellClick(nil);
   end;
end;

procedure TFDevolucao.btnRemoverDevolvidoClick(Sender: TObject);
begin
	try
   	if FMenu.XTABELA_DEVOLUCAO = 'PEDVENDA' then
       begin
       	//Edmar - 12/03/2015 - Atualiza o item como não devolvido
           MDO.Query.Close;
           MDO.Query.SQL.Clear;
           MDO.Query.SQL.Add(' UPDATE ITENSPEDVEN SET ITENSPEDVEN.IT_DEV = '''' WHERE ITENSPEDVEN.COD_ITENSPEDVEN = :CODIGO ');
       end;

       if FMenu.XTABELA_DEVOLUCAO = 'PEDCOMPRA' then
       begin
       	//Edmar - 12/03/2015 - Atualiza o item como não devolvido
           MDO.Query.Close;
           MDO.Query.SQL.Clear;
           MDO.Query.SQL.Add(' UPDATE ITENSPEDC SET ITENSPEDC.IT_DEV = '''' WHERE ITENSPEDC.COD_ITENSPEDC = :CODIGO ');
       end;

       if FMenu.XTABELA_DEVOLUCAO = 'ORDEM' then
       begin
       	//Edmar - 12/03/2015 - Atualiza o item como não devolvido
           MDO.Query.Close;
           MDO.Query.SQL.Clear;
           MDO.Query.SQL.Add(' UPDATE ITPRODORD SET ITPRODORD.IT_DEV = '''' WHERE ITPRODORD.COD_ITPRODORD = :CODIGO ');
       end;
       
       MDO.Query.ParamByName('CODIGO').AsInteger := DMESTOQUE.Alx.FieldByName('PK_ITEM').AsInteger;
       MDO.Query.ExecSQL;
       
       //remove o item devolvido da tabela TMP
   	MDO.QAlx1.Close;
       MDO.QAlx1.SQL.Clear;
       MDO.QAlx1.SQL.Add(' DELETE FROM TMP WHERE TMP.INT1 = :CODIGO ');
       MDO.QAlx1.ParamByName('CODIGO').AsInteger := DMESTOQUE.Alx.FieldByName('PK_ITEM').AsInteger;
		MDO.QAlx1.ExecSQL;       

       MDO.Transac.CommitRetaining;
       
       FiltraItensDevolucao('', '');
       FiltraItensDevolvidos;
       DGItensDevolucaoCellClick(nil);       
    except
       MDO.Transac.RollbackRetaining;
    end;
end;

procedure TFDevolucao.btnDevolverItensClick(Sender: TObject);
begin
    If MessageDlg('Deseja realmente efetuar devolução destas mercadorias?', mtConfirmation, [mbYes, mbNo], 0) = mryes then
    begin
        if (FMenu.XTABELA_DEVOLUCAO = 'PEDVENDA') OR (FMenu.XTABELA_DEVOLUCAO = 'ORDEM') then
        begin
       	//EFETUA CONTROLE DE ACESSO
        	if ControlAccess('CADPEDCOMP', 'M') = False Then
           	Exit;

       	FMenu.XRemessaGarantia := False;
       	FMenu.XSimplesRemessa := False;
       	FMenu.XDevolucao := True;
       	FMenu.XLancAutoDev := True; //DEVERÁ ACESSAR A TELA DE DEVOLUÇÕES COM LANÇAMENTO AUTOMATICO
   		FMenu.XOutrosEnt := True;
   		FMenu.XNotaEntrada := True;

       	AbrirForm(TFPedCompra , FPedCompra, 0);
        end
        else begin
        	//EFETUA CONTROLE DE ACESSO
        	If ControlAccess('PEDVENDA', 'M') = False Then
           	Exit;

        	FMenu.XRemessaGarantia := False;
           FMenu.XSimplesRemessa := False;
           FMenu.XDevolucao := True;
           FMenu.XLancAutoDev := True; //DEVERÁ ACESSAR A TELA DE DEVOLUÇÕES COM LANÇAMENTO AUTOMATICO
           AbrirForm(TFPEDVENDA, FPEDVENDA, 0);
        end;
        
        Close;
    End;
end;

procedure TFDevolucao.btnCancelarDevolucaoClick(Sender: TObject);
begin
  	EdDescDevol.Text := '';
   EdCodigoDevol.Text := '';
	DesmarcaItemDevolvido;

   Close;
end;

procedure TFDevolucao.DesmarcaItemDevolvido;
begin
	DMESTOQUE.Alx.Close;
   DMESTOQUE.Alx.SQL.Clear;
   DMESTOQUE.Alx.SQL.Add(' SELECT * FROM TMP ');
   DMESTOQUE.Alx.Open;
   DMESTOQUE.Alx.First;

   //Edmar - 18/03/2015 - Percorre os itens inseridos no TMP e desmarca-os como devolvido
   while not DMESTOQUE.Alx.Eof do
   begin
   	try
   		MDO.Query.Close;
           MDO.Query.SQL.Clear;
           
           if FMenu.XTABELA_DEVOLUCAO = 'PEDVENDA' then
           	MDO.Query.SQL.Add(' UPDATE ITENSPEDVEN SET ITENSPEDVEN.IT_DEV = '''' WHERE ITENSPEDVEN.COD_ITENSPEDVEN = :CODIGO ');

			if FMenu.XTABELA_DEVOLUCAO = 'PEDCOMPRA' then
               MDO.Query.SQL.Add(' UPDATE ITENSPEDC SET ITENSPEDC.IT_DEV = '''' WHERE ITENSPEDC.COD_ITENSPEDC = :CODIGO ');

			if FMenu.XTABELA_DEVOLUCAO = 'ORDEM' then
               MDO.Query.SQL.Add(' UPDATE ITPRODORD SET ITPRODORD.IT_DEV = '''' WHERE ITPRODORD.COD_ITPRODORD = :CODIGO ');

       	MDO.Query.ParamByName('CODIGO').AsInteger := DMESTOQUE.Alx.FieldByName('INT1').AsInteger;
           MDO.Query.ExecSQL;
       except

       end;

   	DMESTOQUE.Alx.Next;
   end;

   try
   	MDO.Transac.CommitRetaining;
   except
   	MDO.Transac.RollbackRetaining;
   end;
end;

procedure TFDevolucao.btnDevolucaoCompletaClick(Sender: TObject);
begin
  inherited;
	if MessageDlg('Deseja realmente efetuar a devolução total dos itens?', mtConfirmation, [mbYes, mbNo], 0) = mryes then
   begin
   	DMESTOQUE.TSlave.First;

       while not DMESTOQUE.TSlave.Eof do
       begin
       	DMMACS.TMP.Close;
           DMMACS.TMP.SQL.Clear;
           DMMACS.TMP.SQL.Add(' SELECT * FROM TMP ');
           DMMACS.TMP.Open;
           
           try
               DMMACS.TMP.Insert;
               DMMACS.TMP.FieldByName('COD_TMP').AsInteger := XCod_tmp;
               DMMACS.TMP.FieldByName('INT1').AsInteger    := DMESTOQUE.TSlave.FieldByName('PK_ITEM').AsInteger;
               DMMACS.TMP.FieldByName('DESC2').AsString    := lbCst.Caption;
               DMMACS.TMP.FieldByName('VLR1').AsCurrency   := DMESTOQUE.TSlave.FieldByName('qtdeprod').AsCurrency; //quantidade
               DMMACS.TMP.FieldByName('VLR2').AsCurrency   := DMESTOQUE.TSlave.FieldByName('valortotal').AsCurrency / DMESTOQUE.TSlave.FieldByName('qtdeprod').AsCurrency; //Valor Unitario
               DMMACS.TMP.FieldByName('VLR3').AsCurrency   := DMESTOQUE.TSlave.FieldByName('valortotal').AsCurrency; //Valor Total
               DMMACS.TMP.FieldByName('VLR4').AsCurrency   := DMESTOQUE.TSlave.FieldByName('vlricms').AsCurrency; //Valor Icms
               DMMACS.TMP.FieldByName('VLR5').AsCurrency   := DMESTOQUE.TSlave.FieldByName('vlricmssubs').AsCurrency; //Valor Substituicao Tributaria
               DMMACS.TMP.FieldByName('VLR6').AsCurrency   := DMESTOQUE.TSlave.FieldByName('VLRIPI').AsCurrency; //Valor IPI
               DMMACS.TMP.FieldByName('VLR7').AsCurrency   := DMESTOQUE.TSlave.FieldByName('baseicms').AsCurrency; //Base Icms OP
               DMMACS.TMP.FieldByName('VLR8').AsCurrency   := DMESTOQUE.TSlave.FieldByName('baseicmssubs').AsCurrency; //Base Substituição
               DMMACS.TMP.FieldByName('VLR9').AsCurrency   := DMESTOQUE.TSlave.FieldByName('aliqicms').AsCurrency; //Aliquota Icms
               DMMACS.TMP.FieldByName('VLR10').AsCurrency  := DMESTOQUE.TSlave.FieldByName('aliqipi').AsCurrency; //Aliquota Ipi
               DMMACS.TMP.FieldByName('VLR11').AsCurrency  := ((DMESTOQUE.TSlave.FieldByName('valortotal').AsCurrency / DMESTOQUE.TSlave.FieldByName('qtdeprod').AsCurrency) / xXValorPedidoDevolvido) * 100;
               DMMACS.TMP.Post;

               DMMACS.Transaction.CommitRetaining;
           except
               MessageDlg('Não foi possível incluir o item devolvido. Reinicie o sistema e tente novamente.', mtWarning, [mbOK], 0);
               DMMACS.Transaction.RollbackRetaining;
               Exit;
           end;

           DMESTOQUE.TSlave.Next;
       end;

       //ATUALIZA TODOS OS ITENS
       try
           MDO.Query.Close;
       	MDO.Query.SQL.Clear;
           //Edmar - 13/03/2015 - Atualiza o item de venda para não incluir o mesmo novamente na lista de devolução
           if FMenu.XTABELA_DEVOLUCAO = 'PEDVENDA' then
           	MDO.Query.SQL.Add(' UPDATE ITENSPEDVEN SET ITENSPEDVEN.IT_DEV = ''DVL'' WHERE ITENSPEDVEN.COD_PEDVEN = :PEDIDO  ');

			//Edmar - 13/03/2015 - Atualiza o item de compra para não incluir o mesmo novamente na lista de devolução
           if FMenu.XTABELA_DEVOLUCAO = 'PEDCOMPRA' then
               MDO.Query.SQL.Add(' UPDATE ITENSPEDC SET ITENSPEDC.IT_DEV = ''DVL'' WHERE ITENSPEDC.COD_PEDCOMPRA = :PEDIDO ');

           //Edmar - 20/03/2015 - Atualiza o item da ordem para não incluir o mesmo novamente na lista de devolução
           if FMenu.XTABELA_DEVOLUCAO = 'ORDEM' then
               MDO.Query.SQL.Add(' UPDATE ITPRODORD SET ITPRODORD.IT_DEV = ''DVL'' WHERE ITPRODORD.COD_ORDEM = :PEDIDO ');

           MDO.Query.ParamByName('PEDIDO').AsString := FMenu.XCOD_PK_DEVOLVIDO;
           MDO.Query.ExecSQL;
           MDO.Transac.CommitRetaining;
       except
           MDO.Transac.RollbackRetaining;
       end;
       //
       
       //limpa os edits
       EdDevQuant.Text := '0,00';
       EdDevVlrUnit.Text := '0,00';
   	EdDevVlrTot.Text := '0,00';
       EdDevAliqIIcms.Text := '0,00';
       EdDevBaseIcms.Text := '0,00';
       EdDevVlrIcms.Text := '0,00';
       EdDevBaseSubst.Text := '0,00';
       EdDevVlrSubst.Text := '0,00';
       EdDevAliqIpi.Text := '0,00';
       EdDevIpi.Text := '0,00';
       EdDevAliqST.Text := '0,00';       

       FiltraItensDevolvidos;
       FiltraItensDevolucao('', '');
       DGItensDevolucaoCellClick(nil);
   end;
end;

procedure TFDevolucao.DGItensDevolucaoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  try
   //Edmar - 11/05/2015 - Se item estiver devolvido
	if Trim(DMESTOQUE.TSlave.FieldByName('IT_DEV').AsString) = 'DVL' then
   	DGItensDevolucao.Canvas.Font.Color := clRed;//pinta a fonte de vermelho

	DGItensDevolucao.Canvas.FillRect(Rect);
	DGItensDevolucao.DefaultDrawDataCell(Rect, DGItensDevolucao.Columns[DataCol].Field, State);
  except
  end;
end;

procedure TFDevolucao.edCstKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	if Key = VK_RETURN then
   begin
   	if FiltraTabela(DMESTOQUE.TCST, 'CST', 'COD_SIT_TRIB', edCst.Text, '') then
       begin
       	lbCst.Caption := DMESTOQUE.TCST.FieldByName('COD_CST').AsString;
        	edCst.Text := DMESTOQUE.TCST.FieldByName('COD_SIT_TRIB').AsString;
           lbDescCst.Caption := DMESTOQUE.TCST.FieldByName('DESCRICAO').AsString;
       end
       else begin
       	lbCst.Caption := '0';
        	edCst.Text := '';
           lbDescCst.Caption := '';
       end;
   end;

   if Key = VK_F2 then
   begin
   	FiltraTabela(DMEstoque.TCST, 'cst', '', '', '');
    	if AbrirForm(TFCadCST, FCadCST, 1)='Selected' then
       begin
       	lbCst.Caption := DMEstoque.TCST.FieldByName('cod_cst').AsString;
        	edCst.Text := DMEstoque.TCST.FieldByName('cod_sit_trib').AsString;
           lbDescCst.Caption := DMESTOQUE.TCST.FieldByName('DESCRICAO').AsString;           
    	end;
   end;
end;

end.
