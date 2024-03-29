unit ULancamentoEstoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadPadrao, Grids, DBGrids, StdCtrls, Buttons, TFlatEditUnit,
  ExtCtrls, EditFloat, Mask, DBCtrls, DBColorEdit, ColorMaskEdit,
  ColorEditFloat;

type
  TFLancamentoEstoque = class(TFCadPadrao)
    Label28: TLabel;
    Label1: TLabel;
    LPesquisa: TLabel;
    Label30: TLabel;
    edControleInterno: TEdit;
    edCodFabricante: TEdit;
    EDPesquisa: TEdit;
    btnprocprod: TBitBtn;
    PListaProdutos: TPanel;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    Label16: TLabel;
    EdQuantidade: TColorEditFloat;
    EDNumNota: TColorEditFloat;
    EDMotivacao: TColorEditFloat;
    btnEntradas: TBitBtn;
    btnSaidas: TBitBtn;
    RGTipo: TRadioGroup;
    PMostraProdutoSelecionado: TPanel;
    LProduto: TLabel;
    LEstoque: TLabel;
    DBGLancamentos: TDBGrid;
    procedure BtnConsultarClick(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure edControleInternoKeyPress(Sender: TObject; var Key: Char);
    procedure edCodFabricanteKeyPress(Sender: TObject; var Key: Char);
    procedure EDPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure btnprocprodClick(Sender: TObject);
    procedure btnEntradasClick(Sender: TObject);
    procedure btnSaidasClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure EdQuantidadeExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Function LimpaComponentes: Boolean;
    Function InsereLancamento: Boolean;
    Function SelectProd(Xcampo: String; Xvalor: String):Boolean;
    Function EscreveLabel: Boolean;
  end;

var
  FLancamentoEstoque: TFLancamentoEstoque;
  XCOD_ESTOQUE, xCod_PK: Integer;//Chave Primaria para controle de estoque
  xTipoLancamento: String;

implementation

uses UDMEstoque, UMenu, UMDO, DB, UDMMacs, Alxor32, UProduto, UDMEntrada, 
  UDMSaida;

{$R *.dfm}


Function TFLancamentoEstoque.EscreveLabel: Boolean;
Begin
   Try
       MDO.QConsulta.Close;
       MDO.QConsulta.SQL.Clear;
       MDO.QConsulta.SQL.Add(' Select * from vwsimilar where vwsimilar.cod_estoque = :CodEstoque ');
       MDO.QConsulta.ParamByName('CodEstoque').AsInteger := XCOD_ESTOQUE;
       MDO.QConsulta.Open;

       PMostraProdutoSelecionado.Visible:=True;
       PMostraProdutoSelecionado.BringToFront;

       If Not MDO.QConsulta.IsEmpty
       Then Begin
           XCOD_ESTOQUE := MDO.QConsulta.FieldByName('COD_ESTOQUE').AsInteger;
           LProduto.Caption:= 'Controle Interno:  ' + MDO.QConsulta.FieldByName('contrint').AsString +
                               ' Produto: ' +  MDO.QConsulta.FieldByName('descricao').AsString +
                               ' Marca: ' +  MDO.QConsulta.FieldByName('marca').AsString;
           LEstoque.Caption:= 'Estoque: ' + FormatFloat('0.0000', MDO.QConsulta.FieldByName('estfisico').AsCurrency);
       End
       Else Begin
           XCOD_ESTOQUE := -1;
           LProduto.Caption := 'Produto n�o localizado';
           LEstoque.Caption := '';
       End;
   Except
   End;
End;

//recupera um produto em alxproduto de acordo com os campos passados
Function TFLancamentoEstoque.SelectProd(Xcampo: String; Xvalor: String):Boolean;
Begin
	//prepara e informa nova sql
	DMEstoque.Alx.Close;
   DMEstoque.Alx.SQL.Clear;
   DMEstoque.Alx.SQL.Add(' SELECT produto.cod_produto, subproduto.codcomposto, produto.descricao as PRODUTO, estoque.estfisico, ');
   DMEstoque.Alx.SQL.Add(' subproduto.cod_subproduto, subproduto.codbarra, subproduto.descricao as DESCRICAO, grupoprod.descricao as GRUPO, ');
   DMEstoque.Alx.SQL.Add(' subgrupoprod.descricao as SUBGRUPO, subproduto.fabricante, subproduto.marca, ');
   DMEstoque.Alx.SQL.Add(' estoque.cod_loja, estoque.cod_estoque ');
   DMEstoque.Alx.SQL.Add(' FROM SUBPRODUTO left join produto on subproduto.cod_produto = produto.cod_produto ');
   DMEstoque.Alx.SQL.Add(' left Join estoque on subproduto.cod_subproduto = estoque.cod_subprod ');
   DMEstoque.Alx.SQL.Add(' left join grupoprod on grupoprod.cod_grupoprod = produto.cod_grupoprod ');
   DMEstoque.Alx.SQL.Add(' left join subgrupoprod on produto.cod_subgrupoprod = subgrupoprod.cod_subgrupoprod ');
   DMEstoque.Alx.SQL.Add(' LEFT JOIN CODIGOBARRA ON CODIGOBARRA.COD_ESTOQUE = ESTOQUE.COD_ESTOQUE ');
   DMEstoque.Alx.SQL.Add(' Where (estoque.cod_loja = :CODLOJA) ');
   DMEstoque.Alx.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;

   //caso seja pedido para selecionar produtos pelo c�digo d o fabricante, � passado novo parametro
   If Xcampo='CODPRODFABR'
   Then Begin
	   DMEstoque.Alx.SQL.Add(' AND (upper(SUBPRODUTO.CODPRODFABR) = upper('+#39+edCodFabricante.Text+#39+')) ');
	End;

   //caso seja pedido para selecionar produtos pelo c�digo Interno, � passado novo parametro
   If Xcampo='COD_INTERNO'
   Then Begin
	   DMEstoque.Alx.SQL.Add('And (SUBPRODUTO.CONTRINT=:CODINTERNO) ');
	   DMEstoque.Alx.ParamByName('CODINTERNO').AsString:=edControleInterno.Text;
	End;

   If Xcampo='NOME'
   Then Begin
	   DMEstoque.Alx.SQL.Add(' And (upper(SUBPRODUTO.DESCRICAO) like upper('+#39+EDPesquisa.Text+'%'+#39+'))  ');
	End;

   DMEstoque.Alx.SQL.Text;
   DMEstoque.Alx.Open;
   XCOD_ESTOQUE:=DMESTOQUE.Alx.FieldByName('COD_ESTOQUE').AsInteger;
   //Verifica e passa o resultado se encontrou ou n�o algum produto
   If not DMEstoque.Alx.IsEmpty
   Then Begin
   	Result:=True;
       EscreveLabel;
   End
   Else Begin
       LimpaComponentes;
       Result:=False;
   End;
End;

Function TFLancamentoEstoque.InsereLancamento: Boolean;
Var
	XEstPed, XEstFisico, XEstReserv, xMediaCustos: Real;
   XCOD_ESTLOTE: Integer;
Begin
   Try

	    //realiza valida��es ao produto selecionado
	    If (XCOD_ESTOQUE = -1)
       Then Begin
           MessageDlg('� necess�rio que se informe o produto a ter estoque corrigido', mtWarning, [mbOK], 0);
           edControleInterno.SetFocus;
           Exit;
       End;

	    //realiza valida��es quanto a quantidade lan�ada
	    If (EdQuantidade.ValueNumeric <= 0)
       Then Begin
           MessageDlg('� necess�rio que se informe uma quantidade superior a "0"!', mtWarning, [mbOK], 0);
           EdQuantidade.SetFocus;
           Exit;
       End;

       MDO.Transac.CommitRetaining;

       MDO.QConsulta.Close;
       MDO.QConsulta.SQL.Clear;

       MDO.Query.close;
       MDO.Query.SQL.Clear;

       If xTipoLancamento = 'ENTRADA'
       Then Begin
           MDO.QConsulta.SQL.Add('select max(lancent.cod_lanent)  as PK  from lancent');
           MDO.Query.SQL.Add('INSERT INTO LANCENT (COD_LANENT, ');
       end
       Else Begin
           MDO.QConsulta.SQL.Add('select max(lancsai.cod_lancsai) as PK from lancsai');
           MDO.Query.SQL.Add('INSERT INTO LANCSAI (cod_lancsai,  ');
       End;

       MDO.QConsulta.Open;
       If MDO.QConsulta.IsEmpty Then
           xCod_PK:=1
       Else
           xCod_PK := MDO.QConsulta.FieldByName('PK').AsInteger + 1;

       MDO.Query.SQL.Add('  COD_ESTOQUE, COD_LOJA, COD_USUARIO, NUMNOTA, MOTIVO, ');
       MDO.Query.SQL.Add('  DT_LANCAMENTO, DT_ESTOQUE, QUANTIDADE, QTDANT, COD_LOTE, QTD4CASAS) ');
       MDO.Query.SQL.Add('VALUES (:COD_LANCAMENTO, ');
       MDO.Query.SQL.Add('  :COD_ESTOQUE, :COD_LOJA, :COD_USUARIO, :NUMNOTA, :MOTIVO, ');
       MDO.Query.SQL.Add('  :DT_LANCAMENTO, :DT_ESTOQUE, :QUANTIDADE, :QTDANT, :COD_LOTE, :QTD4CASAS) ');
       MDO.Query.ParamByName('COD_LANCAMENTO').AsInteger := xCod_PK;
       MDO.Query.ParamByName('COD_ESTOQUE').AsInteger := XCOD_ESTOQUE;
       MDO.Query.ParamByName('COD_LOJA').AsString := FMenu.LCODLOJA.Caption;
       MDO.Query.ParamByName('COD_USUARIO').AsString := FMenu.LCODUSUARIO.Caption;
       MDO.Query.ParamByName('NUMNOTA').AsString := EDNumNota.Text;
       MDO.Query.ParamByName('MOTIVO').AsString := EDMotivacao.text;
       MDO.Query.ParamByName('DT_LANCAMENTO').AsString := DateToStr(Date());
       MDO.Query.ParamByName('DT_ESTOQUE').AsString :=  DateToStr(Date());
       MDO.Query.ParamByName('QUANTIDADE').AsCurrency := EdQuantidade.ValueNumeric;
       MDO.Query.ParamByName('QTDANT').AsCurrency := EdQuantidade.ValueNumeric;
       MDO.Query.ParamByName('COD_LOTE').AsInteger := -1;
       MDO.Query.ParamByName('QTD4CASAS').AsString:=EdQuantidade.Text;
       MDO.Query.ExecSQL;

       MDO.Transac.CommitRetaining;
       {

       //ou o valor de compra do Produto quando n�o existir custos ativos
       MDO.QConsulta.Close;
       MDO.QConsulta.SQL.Clear;
       MDO.QConsulta.SQL.Add(' SELECT (SUM(VALORUNITARIOCUSTO) / COUNT(cod_custoestoqueempresa)) AS MEDIACUSTO ');
       MDO.QConsulta.SQL.Add(' FROM CUSTOESTOQUEEMPRESA ');
       MDO.QConsulta.SQL.Add(' WHERE (ATIVO = ''1'') AND (QUANTIDADEDISPONIVELVENDA > 0) ');
       MDO.QConsulta.SQL.Add(' AND (COD_ESTOQUE = :COD_ESTOQUE) ');
       MDO.QConsulta.ParamByName('COD_ESTOQUE').AsInteger := XCOD_ESTOQUE;
       MDO.QConsulta.Open;
       if (MDO.QConsulta.FieldByName('MEDIACUSTO').AsString = '') then
           //quando n�o existe custos disponiveis, buscamos o proprio valor de compra do produto
           xMediaCustos := DMEstoque.TEstoque.FieldByName('VLRUNITCOMP').AsCurrency
       else
           xMediaCustos := MDO.QConsulta.FieldByName('MEDIACUSTO').AsCurrency;

       InserirItemCustoProduto(XCOD_ESTOQUE, -1, xMediaCustos, StrToFloat(EdQuantidade.TEXT), Date(), 'LANCEST');

       LiberaDados;
       }
   Except
       MDO.Transac.RollbackRetaining;
       MessageDlg('O Sistema encontrou problemas ao tentar salvar as informa��es. se o problema persistir reinicie o sistema.', mtError, [mbOK], 0);
       BtnCancelar.Click;
   End;
End;

Function TFLancamentoEstoque.LimpaComponentes: Boolean;
Begin
   Try
       XCOD_ESTOQUE := -1;
       edControleInterno.Text := '';
       edCodFabricante.Text := '';
       EDPesquisa.Text := '';
       EdQuantidade.Text := '1';
       EDNumNota.Text := '';
       EDMotivacao.Text := '';
       //RGTipo.ItemIndex := 0;
       PMostraProdutoSelecionado.Visible := False;
   Except
   End;

End;

procedure TFLancamentoEstoque.BtnConsultarClick(Sender: TObject);
begin
  inherited;
   LimpaComponentes;
   edControleInterno.SetFocus;
end;

procedure TFLancamentoEstoque.BtnNovoClick(Sender: TObject);
begin
  inherited;
   LimpaComponentes;
   edControleInterno.SetFocus;
end;

procedure TFLancamentoEstoque.BtnGravarClick(Sender: TObject);
begin
  inherited;
   If RGTipo.ItemIndex = 0 Then
       xTipoLancamento := 'ENTRADA'
   Else
       xTipoLancamento := 'SAIDA';

   InsereLancamento;

   btnEntradas.Click;
end;

procedure TFLancamentoEstoque.edControleInternoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
   If Key=#13
   Then Begin
		If SelectProd('COD_INTERNO', edControleInterno.Text)=False Then
       	edControleInterno.SetFocus
       Else
           RGTipo.SetFocus;
   End;
end;

procedure TFLancamentoEstoque.edCodFabricanteKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
   If Key=#13
   Then Begin
		If SelectProd('CODPRODFABR', edCodFabricante.Text)=False Then
       	edCodFabricante.SetFocus
       Else
           RGTipo.SetFocus;
   End;
end;

procedure TFLancamentoEstoque.EDPesquisaKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
   If Key=#13
   Then Begin
		If SelectProd('NOME', edCodFabricante.Text)=False Then
       	EDPesquisa.SetFocus
       Else
           RGTipo.SetFocus;
   End;
end;

procedure TFLancamentoEstoque.btnprocprodClick(Sender: TObject);
begin
  inherited;
   if AbrirForm(TFProduto, FProduto, 1) = 'Selected' then
   begin
       //Depois de selecionado escreve nas labels o produto
       XCOD_ESTOQUE := DMEstoque.WSimilar.FieldByName('COD_ESTOQUE').AsInteger;
       EscreveLabel;
   end
   else begin
       LimpaComponentes;
  end;
end;

procedure TFLancamentoEstoque.btnEntradasClick(Sender: TObject);
begin
  inherited;
   btnEntradas.Enabled := False;
   btnSaidas.Enabled := True;
   RGTipo.ItemIndex := 0;

   DMENTRADA.WLancEnt.Close;
   DMENTRADA.WLancEnt.SQL.Clear;
   DMENTRADA.WLancEnt.SQL.Add(' select * from vwlancent order by vwlancent.dt_lancamento desc ');
   DMENTRADA.WLancEnt.Open;

   DBGLancamentos.DataSource := DMENTRADA.DWLancEnt;

end;

procedure TFLancamentoEstoque.btnSaidasClick(Sender: TObject);
begin
  inherited;
   btnSaidas.Enabled := False;
   btnEntradas.Enabled := True;
   RGTipo.ItemIndex := 1;   

   DMSAIDA.WLancSai.Close;
   DMSAIDA.WLancSai.SQL.Clear;
   DMSAIDA.WLancSai.SQL.Add(' select * from vwlancsai order by vwlancsai.dt_lancamento desc ');
   DMSAIDA.WLancSai.Open;

   DBGLancamentos.DataSource := DMSAIDA.DWLancSai;

end;

procedure TFLancamentoEstoque.FormActivate(Sender: TObject);
begin
  inherited;
   btnEntradas.Click;
end;

procedure TFLancamentoEstoque.EdQuantidadeExit(Sender: TObject);
begin
  inherited;
end;
//TESTAR BASTANTE
end.

