unit UControleSaida;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPadrao, ExtCtrls, ComCtrls, Grids, DBGrids, Menus, Mask,
  ColorMaskEdit, StdCtrls;

type
  TFControleSaida = class(TFPadrao)
    dbItens: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    dbSemControle: TDBGrid;
    pmControlando: TPopupMenu;
    Desmarcaritemparacontroledeposteriorretorno2: TMenuItem;
    Marcaritemparacontroledeposteriorretorno1: TMenuItem;
    Label3: TLabel;
    EdCtrlInt: TEdit;
    Label4: TLabel;
    EDCodFab: TColorMaskEdit;
    Label15: TLabel;
    EDSimilar: TEdit;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    procedure dbItensChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Marcaritemparacontroledeposteriorretorno1Click(
      Sender: TObject);
    procedure Desmarcaritemparacontroledeposteriorretorno2Click(
      Sender: TObject);
    procedure EDSimilarKeyPress(Sender: TObject; var Key: Char);
    procedure EDCodFabKeyPress(Sender: TObject; var Key: Char);
    procedure EdCtrlIntKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
	 //Função para retornar os itens de acordo com suas marcações
	 Function FiltraItens(xControle: String): Boolean;
	 //Função para marcar e desmarcar controle
	 Function MarcaDesmarcaItem(xCodigoItem: Integer; xControle: String): Boolean;
	 //Função para retornar os itens de acordo com suas marcações  e pesquisa
	 Function PesquisaItem(xTipoPesquisa: String; xValorPesquisa: string; xControle: String): Boolean;
  end;

var
  FControleSaida: TFControleSaida;

implementation

uses UDMEstoque, UDMMacs, UMDO;

{$R *.dfm}

//Função para marcar e desmarcar controle
Function TFControleSaida.MarcaDesmarcaItem(xCodigoItem: Integer; xControle: String): Boolean;
Begin
	Try
   	MDO.Query.Close;
   	MDO.Query.SQL.Clear;
		MDO.Query.SQL.Add(' Update itenspedven set itenspedven.controleretorno = '+#39+xControle+#39+' Where itenspedven.cod_itenspedven=:CodigoVenda ');
   	MDO.Query.ParamByName('CodigoVenda').AsInteger := xCodigoItem;
   	MDO.Query.ExecSQL;
		MDO.Transac.CommitRetaining;
       dbItens.OnChange(Self);
	Except
	End;
End;
//Função para retornar os itens de acordo com suas marcações  e pesquisa
Function TFControleSaida.PesquisaItem(xTipoPesquisa: String; xValorPesquisa: String; xControle: String): Boolean;
Begin
	Try
    	//INSERE COMANDOS PARA FILTRAR
       DMESTOQUE.TSlave.Close;
       DMESTOQUE.TSlave.SQL.Clear;
       DMESTOQUE.TSlave.SQL.Add(' Select itenspedven.cod_itenspedven, lote.numero, itenspedven.cod_lote, itenspedven.cod_pedven, itenspedven.cod_estoque,  itenspedven.qtdeprod,  itenspedven.QTD4CASAS, ItensPedVen.ValorTotal, itenspedven.vlricmssubs, ItensPedVen.COMISSAO, ');
       DMESTOQUE.TSlave.SQL.Add(' itenspedven.aliqicms, itenspedven.vlricms, itenspedven.controleretorno, cst.cod_sit_trib as CST, itenspedven.cfop, itenspedven.vlripi, subproduto.ncm, itenspedven.numpedcompranfe, itenspedven.numitempedcompranfe, ');
       DMESTOQUE.TSlave.SQL.Add(' itenspedven.descpro, itenspedven.DESCNF as DESCONTONF, itenspedven.qtddev AS QTDDEV, itenspedven.cod_funcionario, itenspedven.qtdemb, itenspedven.unidemb, itenspedven.qtdnaemb, pessoa.nome, ');
       DMESTOQUE.TSlave.SQL.Add(' itenspedven.valunit,  subproduto.contrint, subproduto.codprodfabr,  subproduto.descricao, subproduto.marca, subproduto.' + DMMACS.TLoja.FieldByName('CODPRODREL1').AsString + ' AS CONTRINT, itenspedven.data, itenspedven.operacao ');
       DMESTOQUE.TSlave.SQL.Add(' From itenspedven left Join estoque on itenspedven.cod_estoque = estoque.cod_estoque ');
       DMESTOQUE.TSlave.SQL.Add(' Left Join subproduto on subproduto.cod_subproduto = estoque.cod_subprod ');
       DMESTOQUE.TSlave.SQL.Add('  left join cst on itenspedven.cod_cst = cst.cod_cst ');
       DMESTOQUE.TSlave.SQL.Add(' left join lote on itenspedven.cod_lote = lote.cod_lote ');
       DMESTOQUE.TSlave.SQL.Add(' Left Join funcionario on funcionario.cod_func = itenspedven.cod_funcionario ');
       DMESTOQUE.TSlave.SQL.Add(' Left Join pessoa on funcionario.cod_pessoa = pessoa.COD_PESSOA ');
       DMESTOQUE.TSlave.SQL.Add(' Where (itenspedven.cod_pedven <> -1)');
		If xControle= 'SEM CONTROLE'
		Then Begin
       	DMESTOQUE.TSlave.SQL.Add(' AND ((itenspedven.controleretorno = ''SEM CONTROLE'') or (itenspedven.controleretorno  is null))');
		End;
		If xControle= 'CONTROLANDO'
		Then Begin
       	DMESTOQUE.TSlave.SQL.Add(' and (itenspedven.controleretorno = ''CONTROLANDO'')');
		End;
		If xControle= 'RETORNADO'
		Then Begin
       	DMESTOQUE.TSlave.SQL.Add(' and (itenspedven.controleretorno = ''RETORNADO'')');
		End;
		if (xTipoPesquisa<>'') and (xValorPesquisa<>'')
		Then Begin
       	DMESTOQUE.TSlave.SQL.Add(' and (subproduto.'+xTipoPesquisa+' like '+#39+'%'+xValorPesquisa+'%'+#39+')');
		end;
       DMESTOQUE.TSlave.SQL.Add('order by itenspedven.cod_itenspedven desc');
       DMESTOQUE.TSlave.SQL.Text;
       DMESTOQUE.TSlave.Open;
	Except
	End;
End;
//Função para retornar os itens de acordo com suas marcações
Function TFControleSaida.FiltraItens(xControle: String): Boolean;
Begin
	Try
    	//INSERE COMANDOS PARA FILTRAR
       DMESTOQUE.TSlave.Close;
       DMESTOQUE.TSlave.SQL.Clear;
       DMESTOQUE.TSlave.SQL.Add(' Select itenspedven.cod_itenspedven, lote.numero, itenspedven.cod_lote, itenspedven.cod_pedven, itenspedven.cod_estoque,  itenspedven.qtdeprod,  itenspedven.QTD4CASAS, ItensPedVen.ValorTotal, itenspedven.vlricmssubs, ItensPedVen.COMISSAO, ');
       DMESTOQUE.TSlave.SQL.Add(' itenspedven.aliqicms, itenspedven.vlricms, itenspedven.controleretorno, cst.cod_sit_trib as CST, itenspedven.cfop, itenspedven.vlripi, subproduto.ncm, itenspedven.numpedcompranfe, itenspedven.numitempedcompranfe, ');
       DMESTOQUE.TSlave.SQL.Add(' itenspedven.descpro, itenspedven.DESCNF as DESCONTONF, itenspedven.qtddev AS QTDDEV, itenspedven.cod_funcionario, itenspedven.qtdemb, itenspedven.unidemb, itenspedven.qtdnaemb, pessoa.nome, ');
       DMESTOQUE.TSlave.SQL.Add(' itenspedven.valunit, subproduto.contrint, subproduto.codprodfabr, subproduto.descricao, subproduto.marca, subproduto.' + DMMACS.TLoja.FieldByName('CODPRODREL1').AsString + ' AS CONTRINT, itenspedven.data, itenspedven.operacao ');
       DMESTOQUE.TSlave.SQL.Add(' From itenspedven left Join estoque on itenspedven.cod_estoque = estoque.cod_estoque ');
       DMESTOQUE.TSlave.SQL.Add(' Left Join subproduto on subproduto.cod_subproduto = estoque.cod_subprod ');
       DMESTOQUE.TSlave.SQL.Add('  left join cst on itenspedven.cod_cst = cst.cod_cst ');
       DMESTOQUE.TSlave.SQL.Add(' left join lote on itenspedven.cod_lote = lote.cod_lote ');
       DMESTOQUE.TSlave.SQL.Add(' Left Join funcionario on funcionario.cod_func = itenspedven.cod_funcionario ');
       DMESTOQUE.TSlave.SQL.Add(' Left Join pessoa on funcionario.cod_pessoa = pessoa.COD_PESSOA ');
       DMESTOQUE.TSlave.SQL.Add(' Where (itenspedven.cod_pedven <> -1)');
		If xControle= 'SEM CONTROLE'
		Then Begin
       	DMESTOQUE.TSlave.SQL.Add(' AND ((itenspedven.controleretorno = ''SEM CONTROLE'') or (itenspedven.controleretorno  is null))');
		End;
		If xControle= 'CONTROLANDO'
		Then Begin
       	DMESTOQUE.TSlave.SQL.Add(' and (itenspedven.controleretorno = ''CONTROLANDO'')');
		End;
		If xControle= 'RETORNADO'
		Then Begin
       	DMESTOQUE.TSlave.SQL.Add(' and (itenspedven.controleretorno = ''RETORNADO'')');
		End;
       DMESTOQUE.TSlave.SQL.Add('order by itenspedven.cod_itenspedven desc');
       DMESTOQUE.TSlave.Open;
	Except
	End;
End;
procedure TFControleSaida.dbItensChange(Sender: TObject);
begin
  inherited;
	if dbItens.ActivePageIndex=0 Then
       FiltraItens('CONTROLANDO');
	if dbItens.ActivePageIndex=1 Then
       FiltraItens('RETORNADO');
	if dbItens.ActivePageIndex=2 Then
       FiltraItens('SEM CONTROLE');
end;

procedure TFControleSaida.FormActivate(Sender: TObject);
begin
  inherited;
   dbItens.ActivePageIndex:=0;
	FiltraItens('CONTROLANDO');
end;

procedure TFControleSaida.Marcaritemparacontroledeposteriorretorno1Click(
  Sender: TObject);
begin
  inherited;
	Try
       MarcaDesmarcaItem(DMESTOQUE.TSlave.FieldByName('cod_itenspedven').AsInteger, 'CONTROLANDO');
   Except;
	End;
end;

procedure TFControleSaida.Desmarcaritemparacontroledeposteriorretorno2Click(
  Sender: TObject);
begin
  inherited;
	Try
       MarcaDesmarcaItem(DMESTOQUE.TSlave.FieldByName('cod_itenspedven').AsInteger, 'RETORNADO');
   Except;
	End;
end;

procedure TFControleSaida.EDSimilarKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	If Key = #13
	Then Begin
       If dbItens.ActivePageIndex=0 Then
       	PesquisaItem('descricao', EDSimilar.text, 'CONTROLANDO');
       If dbItens.ActivePageIndex=1 Then
       	PesquisaItem('descricao', EDSimilar.text, 'RETORNADO');
       If dbItens.ActivePageIndex=2 Then
       	PesquisaItem('descricao', EDSimilar.text, 'SEM CONTROLE');
	End;
	if Key = #27
	Then Begin
       dbItens.OnChange(sender);
	End;
end;

procedure TFControleSaida.EDCodFabKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
	If Key = #13
	Then Begin
       If dbItens.ActivePageIndex=0 Then
       	PesquisaItem('codprodfabr', EDCodFab.text, 'CONTROLANDO');
       If dbItens.ActivePageIndex=1 Then
       	PesquisaItem('codprodfabr', EDCodFab.text, 'RETORNADO');
       If dbItens.ActivePageIndex=2 Then
       	PesquisaItem('codprodfabr', EDCodFab.text, 'SEM CONTROLE');
	End;
	if Key = #27
	Then Begin
       dbItens.OnChange(sender);
	End;
end;

procedure TFControleSaida.EdCtrlIntKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	If Key = #13
	Then Begin
       If dbItens.ActivePageIndex=0 Then
       	PesquisaItem('contrint', EdCtrlInt.text, 'CONTROLANDO');
       If dbItens.ActivePageIndex=1 Then
       	PesquisaItem('contrint', EdCtrlInt.text, 'RETORNADO');
       If dbItens.ActivePageIndex=2 Then
       	PesquisaItem('contrint', EdCtrlInt.text, 'SEM CONTROLE');
	End;
	if Key = #27
	Then Begin
       dbItens.OnChange(sender);
	End;
end;

end.
