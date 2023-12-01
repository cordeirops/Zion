unit URelOrdemServMec;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPadrao, ExtCtrls, StdCtrls, Mask, UFrmBusca, Buttons, DateUtils,
  frxClass, frxDBSet, frxDesgn, frxExportPDF, FR_DSet, FR_DBSet;

type
  TFRelOrdemMecanica = class(TFPadrao)
    gbbPeriodoAbertura: TGroupBox;
    lblDtInicialAbe: TLabel;
    lblDtFinalAbe: TLabel;
    EdDataIniAbe: TMaskEdit;
    EdDataFimAbe: TMaskEdit;
    gbbPeriodoFechamento: TGroupBox;
    lblDtInicialFec: TLabel;
    lblDtFinalFec: TLabel;
    EdDataIniFec: TMaskEdit;
    EdDataFimFec: TMaskEdit;
    gbbPesquisarPor: TGroupBox;
    cbbAbertas: TCheckBox;
    cbbCanceladas: TCheckBox;
    cbbFechadas: TCheckBox;
    cbbTodas: TCheckBox;
    FrmBuscaCliente: TFrmBusca;
    FrmBuscaVendedor: TFrmBusca;
    gbbOrdenacao: TGroupBox;
    gbbAcoes: TGroupBox;
    GroupBox3: TGroupBox;
    BtnImprimir: TBitBtn;
    GroupBox4: TGroupBox;
    BtnGerarPdf: TBitBtn;
    GroupBox5: TGroupBox;
    BtnCancelar: TBitBtn;
    rbbCadastro: TRadioButton;
    rbbAlfabetica: TRadioButton;
    rbbNrOrdem: TRadioButton;
    rbbDtAbertura: TRadioButton;
    rbbDtFechamento: TRadioButton;
    frxRelatorio: TfrxReport;
    frxDesigner1: TfrxDesigner;
    frxDBOrdem: TfrxDBDataset;
    frxDBItProdOrd: TfrxDBDataset;
    frxDBDespAdic: TfrxDBDataset;
    frxDBLoja: TfrxDBDataset;
    frxPDF: TfrxPDFExport;
    procedure BtnCancelarClick(Sender: TObject);
    procedure FrmBuscaClienteBTNOPENClick(Sender: TObject);
    procedure FrmBuscaVendedorBTNOPENClick(Sender: TObject);
    procedure FrmBuscaClienteEDCodigoKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure FrmBuscaVendedorEDCodigoKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure BtnImprimirClick(Sender: TObject);
    procedure EdDataExit(Sender: TObject);
    procedure cbbTodasClick(Sender: TObject);
    procedure cbbOutrasClick(Sender: TObject);
    procedure EdDataChange(Sender: TObject);
    procedure BtnGerarPdfClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FrmBuscaClienteBTNMINUSClick(Sender: TObject);
    procedure FrmBuscaVendedorBTNMINUSClick(Sender: TObject);
    procedure EdDataKeyPress(Sender: TObject; var Key: Char);
  private
    XFiltro: string;
    procedure LimparConsultaVendedor;
    procedure LimparConsultaCliente;
    procedure ExecutarRelatorio;
    procedure PrepararDadosCabecalho;
    procedure PrepararDadosProdutos;
    procedure PrepararDadosServicos;
    procedure ExportaRelatorio;
    function ValidarTela: boolean;
    procedure PrepararRelatorio;
    function ValidarData(parDataInicial, parDataFinal, parNomeDataInicial,
      parNomeDataFinal: string): boolean;
    { Private declarations }

  public
    { Public declarations }
  end;

Const
  cSituacaoAberta = #39 + 'ABERTO' + #39;
  cSituacaoFechada = #39 + 'FECHADO' + #39;
  cSituacaoCancelada = #39 + 'CANCELADO' + #39;

var
  FRelOrdemMecanica: TFRelOrdemMecanica;
  XCodCliente: integer;
  XCodVendedor: integer;
  
implementation

uses UDMPessoa, UCliente, uMenu,
Alxor32, UDMMacs, UDmServ, UFuncionario, TFlatEditUnit;


{$R *.dfm}

procedure TFRelOrdemMecanica.BtnCancelarClick(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TFRelOrdemMecanica.PrepararDadosCabecalho;
var
  XSqlAuxiliar: string;
  XVirgula: string;
  blxDtAbertura: boolean;
  blxDtFechamento: boolean;
  XTipoPesquisa: string;
  XOrdem: string;
begin
  DMServ.TAlx1.Close;
  DMServ.TAlx1.SQL.Clear;
  DMServ.TAlx1.SQL.Add('SELECT  ');
  DMServ.TAlx1.SQL.Add('  VWORDEM.numero, ');
  DMServ.TAlx1.SQL.Add('  VWORDEM.status, ');
  DMServ.TAlx1.SQL.Add('  VWORDEM.cliente, ');
  DMServ.TAlx1.SQL.Add('  VWORDEM.placa, ');
  DMServ.TAlx1.SQL.Add('  VWORDEM.equipamento as veiculoentrada, ');
  DMServ.TAlx1.SQL.Add('  VWORDEM.dtabert, ');
  DMServ.TAlx1.SQL.Add('  VWORDEM.dtfech, ');
  DMServ.TAlx1.SQL.Add('  VWORDEM.numfiscal as NumNFE, ');
  DMServ.TAlx1.SQL.Add('  VWORDEM.numfiscalnfse as NumNfse, ');
  DMServ.TAlx1.SQL.Add('  VWORDEM.total as ValorTotalOrdem, ');
  DMServ.TAlx1.SQL.Add('  ORDEM.totprod as ValorTotalProduto, ');
  DMServ.TAlx1.SQL.Add('  ORDEM.totserv as ValorTotalServico, ');
  DMServ.TAlx1.SQL.Add('  VWORDEM.formapag as FormaPagamento, ');
  DMServ.TAlx1.SQL.Add('  VWFUNCIONARIO.nome as vendedor, ');
  DMServ.TAlx1.SQL.Add('  ORDEM.Cod_Ordem, ');
  DMServ.TAlx1.SQL.Add('  ORDEM.totdesp as ValorTotalDespesa ');
  DMServ.TAlx1.SQL.Add('FROM VWORDEM ');
  DMServ.TAlx1.SQL.Add('INNER JOIN ORDEM ON ORDEM.cod_ordem = VWORDEM.cod_ordem ');
  DMServ.TAlx1.SQL.Add('LEFT JOIN VWCLIENTE ON VWCLIENTE.cod_cliente = VWORDEM.cod_cliente ');
  DMServ.TAlx1.SQL.Add('LEFT JOIN VWFUNCIONARIO ON VWFUNCIONARIO.cod_func = VWORDEM.cod_funcionario ');
  DMServ.TAlx1.SQL.Add('LEFT JOIN DOCFISORD ON DOCFISORD.cod_ordem = VWORDEM.cod_ordem ');
  DMServ.TAlx1.SQL.Add('WHERE (VWORDEM.cod_loja = :CodigoLoja) ');

  //Seta Situação da Ordem de Serviço, quando for todas, não adiciona filtro.
  XSqlAuxiliar := '';
  XVirgula := '';
  XTipoPesquisa := '';
  If (cbbAbertas.Checked) Then
  Begin
    XSqlAuxiliar := cSituacaoAberta;
    XTipoPesquisa := 'Abertas';
    xVirgula := ', ';
  End;

  If (cbbFechadas.Checked) Then
  Begin
    XSqlAuxiliar := XSqlAuxiliar + xVirgula + cSituacaoFechada;
    XTipoPesquisa := XTipoPesquisa + XVirgula + 'Fechadas';
    xVirgula := ', ';
  End;

  If (cbbCanceladas.Checked) Then
  Begin
    XSqlAuxiliar := XSqlAuxiliar + xVirgula + cSituacaoCancelada;
    XTipoPesquisa := XTipoPesquisa + XVirgula + 'Canceladas';
  End;

  If (XTipoPesquisa = '') Then
  Begin
    XTipoPesquisa := 'Todas';
  End;

  If (XSqlAuxiliar <> '') Then
  Begin
    DMServ.TAlx1.SQL.Add(' AND (VWORDEM.status IN (' + XSqlAuxiliar + ')) ');
  End;

  //Seta Data de abertura
  blxDtAbertura := false;
  If (EdDataIniAbe.Text <> '  /  /    ') And (EdDataFimAbe.Text <> '  /  /    ') Then
  Begin
    DMServ.TAlx1.SQL.Add(' AND (VWORDEM.DTABERT Between :Data1 and :Data2) ');
    blxDtAbertura := true;
  End;

  //Seta Data de Fechamento
  blxDtFechamento := false;
  If (EdDataIniFec.Text <> '  /  /    ') And (EdDataFimFec.Text <> '  /  /    ') Then
  Begin
    DMServ.TAlx1.SQL.Add(' AND (VWORDEM.DTFECH Between :Data1 and :Data2) ');
    blxDtFechamento := true;
  End;

  //Seta Cliente
  If (XCodCliente > 0) Then
  Begin
    DMServ.TAlx1.SQL.Add(' AND (VWORDEM.cod_cliente = :Cod_Cliente) ');
  End;

  //Seta Vendedor
  If (XCodVendedor > 0) Then
  Begin
    DMServ.TAlx1.SQL.Add(' AND (VWORDEM.cod_funcionario = :Cod_Func) ');
  End;

  XOrdem := '';
  If (rbbCadastro.Checked) then
  Begin
    DMServ.TAlx1.SQL.Add('ORDER BY VWORDEM.Cod_Ordem ');
    XOrdem := 'Ordenado por Cadastro';
  End Else
  Begin
    If (rbbAlfabetica.Checked) then
    Begin
      DMServ.TAlx1.SQL.Add('ORDER BY VWORDEM.cliente ');
      XOrdem := 'Ordenado por Nome Cliente';
    End Else
    Begin
      If (rbbNrOrdem.Checked) then
      Begin
        DMServ.TAlx1.SQL.Add('ORDER BY VWORDEM.numero ');
        XOrdem := 'Ordenado por Número da Ordem';
      End Else
      Begin
        If (rbbDtAbertura.Checked) then
        Begin
          DMServ.TAlx1.SQL.Add('ORDER BY VWORDEM.dtabert ');
          XOrdem := 'Ordenado por Data Abertura';
        End Else
        Begin
          If (rbbDtFechamento.Checked) then
          Begin
            DMServ.TAlx1.SQL.Add('ORDER BY VWORDEM.dtfech ');
            XOrdem := 'Ordenado por Data Fechamento';
          End;
        End;
      End;
    End;
  End;

  //Seta Loja
  DMServ.TAlx1.ParamByName('CodigoLoja').AsString := FMenu.LCODLOJA.Caption;

  XVirgula := '';
  if (blxDtAbertura) then
  begin
    DMServ.TAlx1.ParamByName('Data1').AsString:=EdDataIniAbe.Text;
    DMServ.TAlx1.ParamByName('Data2').AsString:=EdDataFimAbe.Text;
    XFiltro := 'Abertura (Dt.Ini.: '+EdDataIniAbe.Text+' / Dt. Fin.: '+EdDataFimAbe.Text + ') ';
    XVirgula := ', ';
  end;

  if (blxDtFechamento) then
  begin
    DMServ.TAlx1.ParamByName('Data1').AsString:=EdDataIniFec.Text;
    DMServ.TAlx1.ParamByName('Data2').AsString:=EdDataFimFec.Text;
    XFiltro := XFiltro + XVirgula + 'Fechamento (Dt.Ini.: '+EdDataIniFec.Text+' / Dt. Fin.: '+EdDataFimFec.Text + ') ';
    XVirgula := ', ';
  end;

  //Seta Cliente
  If (XFiltro <> '') then
  Begin
    XVirgula := #13;
  End;
  
  If (XCodCliente > 0) Then
  Begin
    DMServ.TAlx1.ParamByName('Cod_Cliente').AsInteger := XCodCliente;
    XFiltro := XFiltro + XVirgula + 'Cliente: (' + FrmBuscaCliente.EdDescricao.Text + ') ';
  End;

  //Seta Vendedor
  If (XCodVendedor > 0) Then
  Begin
    DMServ.TAlx1.ParamByName('Cod_Func').AsInteger := XCodVendedor;
    XFiltro := XFiltro + XVirgula + 'Vendedor: (' + FrmBuscaCliente.EdDescricao.Text + ') ';
  End;

  If (XTipoPesquisa <> '') Then
  Begin
    XFiltro := XFiltro + XVirgula + 'Situação: (' + XTipoPesquisa + ') ';
  End;

  XFiltro := XFiltro + XVirgula + XOrdem;

  PrepararDadosProdutos;
  PrepararDadosServicos;

  //Grava dados do filtro
  FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
  DMMACS.TLoja.Edit;
  DMMACS.TLoja.FieldByName('TMP1').AsString:=XFiltro;
  DMMACS.TLoja.Post;
  DMMACS.Transaction.CommitRetaining;

end;

procedure TFRelOrdemMecanica.PrepararDadosProdutos;
begin
  DMServ.TAlx2.Close;
  DMServ.TAlx2.SQL.Clear;
  DMServ.TAlx2.SQL.Add('SELECT ');
  DMServ.TAlx2.SQL.Add('  vwsimilar.contrint as codigo, ');
  DMServ.TAlx2.SQL.Add('  vwsimilar.codfabricante as fabricante, ');
  DMServ.TAlx2.SQL.Add('  vwsimilar.descricao as produto, ');
  DMServ.TAlx2.SQL.Add('  vwsimilar.marca, ');
  DMServ.TAlx2.SQL.Add('  itprodord.qtd as quantidade, ');
  DMServ.TAlx2.SQL.Add('  itprodord.vlrunit as valorunitario, ');
  DMServ.TAlx2.SQL.Add('  itprodord.total as valortotal, ');
  DMServ.TAlx2.SQL.Add('  itprodord.Cod_Ordem ');
  DMServ.TAlx2.SQL.Add('FROM itprodord ');
  DMServ.TAlx2.SQL.Add('LEFT JOIN vwsimilar on itprodord.cod_estoque = vwsimilar.cod_estoque ');
  DMServ.TAlx2.SQL.Add('WHERE itprodord.Cod_Ordem = :Cod_Ordem ');
  DMServ.DSAlx2.DataSet := DMServ.TAlx2;
  DMServ.TAlx2.DataSource := DMServ.DSAlx1;
end;

procedure TFRelOrdemMecanica.PrepararDadosServicos;
begin
  DMServ.TAlx3.Close;
  DMServ.TAlx3.SQL.Clear;
  DMServ.TAlx3.SQL.Add('Select  ');
  DMServ.TAlx3.SQL.Add('  despadic.cod_despadic, ');
  DMServ.TAlx3.SQL.Add('  despadic.despesa as ServicoPrestado, ');
  DMServ.TAlx3.SQL.Add('  equipe.cod_equipe as codigoequipe, ');
  DMServ.TAlx3.SQL.Add('  equipe.descricao as NOMEEQUIPE, ' );
  DMServ.TAlx3.SQL.Add('  vwordem.numero, ');
  DMServ.TAlx3.SQL.Add('  despadic.vlrfinal as Valorunitario, ');
  DMServ.TAlx3.SQL.Add('  despadic.qtd AS QUANTIDADE, ');
  DMServ.TAlx3.SQL.Add('  despadic.vlrtotfin AS ValorTOTAL, ');
  DMServ.TAlx3.SQL.Add('  despadic.cod_gerador as Cod_Ordem ');
  DMServ.TAlx3.SQL.Add('from despadic ');
  DMServ.TAlx3.SQL.Add('Left join vwordem on despadic.cod_gerador = vwordem.cod_ordem ');
  DMServ.TAlx3.SQL.Add('Left join equipe  on despadic.cod_equipe  = equipe.cod_equipe ');
  DMServ.TAlx3.SQL.Add('Where (despadic.gerador=''ORDEM'') and (despadic.cod_gerador = :Cod_Ordem) ');
  DMServ.DSTAlx3.DataSet := DMServ.TAlx3;
  DMServ.TAlx3.DataSource := DMServ.DSAlx1;
end;

procedure TFrelOrdemMecanica.PrepararRelatorio;
begin
  frxDBOrdem.DataSource := DMServ.DSAlx1;
  frxDBItProdOrd.DataSource := DMServ.DSAlx2;
  frxDBDespAdic.DataSource := DMServ.DSTalx3;
  frxDBLoja.DataSource := DMMACS.DSLoja;
  frxRelatorio.DataSets.Add(frxDBOrdem);
  frxRelatorio.DataSets.Add(frxDBItProdOrd);
  frxRelatorio.DataSets.Add(frxDBDespAdic);
  frxRelatorio.DataSets.Add(frxDBLoja);
  frxRelatorio.LoadFromFile('C:\MZR\MACS\Rel\FrfRelOrdemVendaMec.fr3');
  frxRelatorio.PrepareReport(True);
end;

procedure TFRelOrdemMecanica.ExecutarRelatorio;
begin
  try
    PComunica.Show;
    PrepararDadosCabecalho;
    DMServ.TAlx1.Open;

    If Not DMServ.TAlx1.IsEmpty
    Then Begin
      PrepararRelatorio;
      //frxRelatorio.DesignReport(True);
      frxRelatorio.ShowReport;
    End
    Else Begin
      MessageDlg('ATENÇÃO, não foi encontrado dados referente aos filtros pesquisados!', mtWarning, [mbOK], 0);
    End;
  finally
    PComunica.Hide;
    DMServ.TAlx1.Close;
  end;
end;

procedure TFRelOrdemMecanica.ExportaRelatorio;
begin
  try
    PComunica.Show;
    PrepararDadosCabecalho;
    DMServ.TAlx1.Open;

    If Not DMServ.TAlx1.IsEmpty
    Then Begin
      PrepararRelatorio;
      frxRelatorio.Export(frxPDF);
    End
    Else Begin
      MessageDlg('ATENÇÃO, não foi encontrado dados referente aos filtros informados!', mtWarning, [mbOK], 0);
    End;
  finally
    PComunica.Hide;
    DMServ.TAlx1.Close;
  end;
end;

procedure TFRelOrdemMecanica.LimparConsultaVendedor;
begin
  xCodVendedor := -1;
  FrmBuscaVendedor.EDCodigo.Text := '';
  FrmBuscaVendedor.EdDescricao.Text := '';
end;

procedure TFRelOrdemMecanica.LimparConsultaCliente;
begin
  XCodCliente:=-1;
  FrmBuscaCliente.EdDescricao.Text:='';
  FrmBuscaCliente.EDCodigo.Text:='';
end;

procedure TFRelOrdemMecanica.FrmBuscaClienteBTNOPENClick(Sender: TObject);
begin
  inherited;
	//LIBERA TODOS OS CLIENTES PARA CONSUTA
	filtraTabela(DMPESSOA.WCliente, 'VWCLIENTE', '', '', '');
 	If AbrirForm(TFCliente, FCliente, 1)='Selected' Then
  Begin
    XCodCliente:=DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsInteger;
    FrmBuscaCliente.EdDescricao.Text:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
    FrmBuscaCliente.EDCodigo.text:=DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString;
    FrmBuscaCliente.Repaint;
	End;
end;

procedure TFRelOrdemMecanica.FrmBuscaVendedorBTNOPENClick(Sender: TObject);
begin
  inherited;
  //LIBERA TODOS OS VENDEDORES PARA CONSUTA
	filtraTabela(DMPESSOA.VWFuncionario, 'VWFUNCIONARIO', '', '', '');
  If AbrirForm(TFFuncionario, FFuncionario, 1)='Selected' Then
  Begin
    xCodVendedor:=DMPESSOA.VWFuncionario.FieldByName('COD_FUNC').AsInteger;
    FrmBuscaVendedor.EDCodigo.Text:=DMPESSOA.VWFuncionario.FieldByName('COD_INTERNO').AsString;
    FrmBuscaVendedor.EdDescricao.text:=DMPESSOA.VWFuncionario.FieldByName('NOME').AsString;
		FrmBuscaVendedor.Repaint;
  End;
end;

procedure TFRelOrdemMecanica.FrmBuscaClienteEDCodigoKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
	If Key = VK_return Then
  Begin
    If (FMenu.TIPOREL='RELORDEMMECANICA') Then
    Begin
      If FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_INTERNO', FrmBuscaCliente.EDCodigo.Text, '')=True Then
      Begin
        XCodCliente:=DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsInteger;
        FrmBuscaCliente.EdDescricao.Text:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
      End Else
      Begin
        LimparConsultaCliente;
      End;
    End;
    FrmBuscaCliente.Repaint;
  End;
end;

procedure TFRelOrdemMecanica.FrmBuscaVendedorEDCodigoKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  If Key=VK_RETURN
  Then Begin
    If FiltraTabela(DMPESSOA.VWFuncionario, 'VWFUNCIONARIO', 'COD_INTERNO', FrmBuscaVendedor.EDCodigo.Text, '')=True Then
    Begin
      xCodVendedor:=DMPESSOA.VWFuncionario.FieldByName('COD_FUNC').AsInteger;
      FrmBuscaVendedor.EDCodigo.Text:=DMPESSOA.VWFuncionario.FieldByName('COD_INTERNO').AsString;
      FrmBuscaVendedor.EdDescricao.text:=DMPESSOA.VWFuncionario.FieldByName('NOME').AsString;
    End Else
    Begin
      LimparConsultaVendedor;
    End;
    FrmBuscaVendedor.Repaint;
  End;
end;

function TFRelOrdemMecanica.ValidarData(parDataInicial, parDataFinal, parNomeDataInicial, parNomeDataFinal: string): boolean;
var
  dtxDataDefault : TDateTime;
  dtxInicial, dtxFinal: TDateTime;
begin
  dtxDataDefault := EncodeDateTime(1980, 01, 01, 0, 0, 0, 0);
  Result := True;
  If ((parDataInicial = '  /  /    ') And (parDataFinal <> '  /  /    ') Or
      (parDataInicial <> '  /  /    ') And (parDataFinal = '  /  /    ')) Then
  Begin
    Result := false;
    MessageDlg('Deve ser prenchido a ' + parNomeDataInicial + ' e ' + parNomeDataFinal+ ', Verifique!', mtWarning, [mbOK], 0);
    Exit;
  End;

  If (parDataInicial <> '  /  /    ') And (parDataFinal <> '  /  /    ') Then
  Begin
    dtxInicial := StrToDateTimeDef(parDataInicial, dtxDataDefault);
    dtxFinal := StrToDateTimeDef(parDataFinal, dtxDataDefault);

    if (dtxInicial = dtxDataDefault) Then
    Begin
      Result := false;
      MessageDlg('Data inicial inválida, por favor, preencha com uma data valida!', mtWarning, [mbOK], 0);
      Exit;
    End;

    if (dtxFinal = dtxDataDefault) Then
    Begin
      Result := false;
      MessageDlg('Data final inválida, por favor, preencha com uma data valida!', mtWarning, [mbOK], 0);
      Exit;
    End;

    if (dtxFinal < dtxInicial) Then
    Begin
      Result := false;
      MessageDlg('Data final não pode ser menor que data inicial, verifique!', mtWarning, [mbOK], 0);
      Exit;
    End;
  End;
end;

function TFRelOrdemMecanica.ValidarTela: boolean;
begin
  XFiltro := '';
  If (EdDataIniAbe.Text = '  /  /    ') And (EdDataFimAbe.Text = '  /  /    ') and (EdDataIniFec.Text = '  /  /    ') And (EdDataFimFec.Text = '  /  /    ') Then
  Begin
    Result := false;
    MessageDlg('Deve ser prenchido pelo menos um conjunto de datas', mtWarning, [mbOK], 0);
    EdDataIniAbe.SetFocus;
    Exit;
  End;

  Result := ValidarData(EdDataIniAbe.Text, EdDataFimAbe.Text, 'Dt.Inicio Abertura', 'Dt.Final Abertura');

  if (Result) Then
  Begin
    Result := ValidarData(EdDataIniFec.Text, EdDataFimFec.Text, 'Dt.Inicio Fechamento', 'Dt.Final Fechamento');
  End;

end;

procedure TFRelOrdemMecanica.BtnImprimirClick(Sender: TObject);
begin
  inherited;
  if ValidarTela then
  begin
    //Executar Relatório
    ExecutarRelatorio;
  end;
end;

procedure TFRelOrdemMecanica.EdDataExit(Sender: TObject);
var
  cont : integer;
  iixDia: integer;
  iixMes: integer;
  iixAno: integer;
  dtxData: TDateTime;
begin
  if (Sender is TMaskEdit) then
  begin
    cont := Length( Trim( (Sender as TMaskEdit).Text ) );
    try
      if (Sender as TMaskEdit).Text = '  /  /    ' then
      begin
        exit;
      end else
      if cont <= 9 then
      begin
        //Tratar a data
        iixDia := StrToIntDef(Copy((Sender as TMaskEdit).Text, 1, 2), 0);
        iixMes := StrToIntDef(Copy((Sender as TMaskEdit).Text, 4, 2), 0);
        iixAno := StrToIntDef(Copy((Sender as TMaskEdit).Text, 7, 4), 0);

        if (iixAno = 0) then
        begin
          iixAno := YearOf(Now);
        end;

        if (iixMes = 0) then
        begin
          iixMes := MonthOf(Now);
        end else
        begin
          if (iixMes > 12) then
          begin
            iixMes := 12;
          end;
        end;

        dtxData := EncodeDateTime(iixAno, iixMes, 1, 0, 0, 0, 0);
        if (DaysInMonth(dtxData) < iixDia) then
        begin
          iixDia := DaysInMonth(dtxData);
        end else
        begin
          if (iixDia = 0) then
          begin
            iixDia := 1;
          end;
        end;
        dtxData := EncodeDateTime(iixAno, iixMes, iixDia, 0, 0, 0, 0);

        (Sender as TMaskEdit).Text := FormatDateTime('dd/MM/yyyy', dtxData);
        exit;
      end else
      begin
        (Sender as TMaskEdit).Text := DateToStr(StrtoDate((Sender as TMaskEdit).Text));
      end;
    except
    on Exception do
      begin
        (Sender as TMaskEdit).SetFocus;
        MessageDlg('Data invalida!', mtWarning, [mbOK], 0);
      end;
    end;
  end;
end;

procedure TFRelOrdemMecanica.cbbTodasClick(Sender: TObject);
begin
  inherited;
  If (cbbTodas.Checked) Then
  Begin
    cbbAbertas.Checked := false;
    cbbCanceladas.Checked := false;
    cbbFechadas.Checked := false;
  End;
end;

procedure TFRelOrdemMecanica.cbbOutrasClick(Sender: TObject);
begin
  inherited;
  If ((Sender as TCheckBox).Checked) Then
  Begin
    cbbTodas.Checked := false;
  End Else
  Begin
    if (not cbbAbertas.Checked and not cbbCanceladas.Checked and not cbbFechadas.Checked) then
    Begin
      cbbTodas.Checked := true;
    End;
  End;
end;

procedure TFRelOrdemMecanica.EdDataChange(Sender: TObject);
begin
  if (Sender is TMaskEdit) then
  begin
    try
      if (Sender as TMaskEdit).Text = '  /  /    ' then
      begin
        (Sender as TMaskEdit).Clear;
        (Sender as TMaskEdit).Modified := false;
      end;
    except
    on Exception do
      (Sender as TMaskEdit).SetFocus;
    end;
  end;
end;

procedure TFRelOrdemMecanica.BtnGerarPdfClick(Sender: TObject);
begin
  inherited;
  if ValidarTela then
  begin
    ExportaRelatorio;
  End;
end;

procedure TFRelOrdemMecanica.FormActivate(Sender: TObject);
var
  dtxData: TDateTime;
begin
  inherited;
  XCodCliente := 0;
  XCodVendedor := 0;
  dtxData := Now;
  EdDataIniFec.Text := FormatDateTime('dd/MM/yyyy', dtxData-30);
  EdDataFimFec.Text := FormatDateTime('dd/MM/yyyy', dtxData);
  EdDataIniFec.SetFocus;
end;

procedure TFRelOrdemMecanica.FrmBuscaClienteBTNMINUSClick(Sender: TObject);
begin
  inherited;
  LimparConsultaCliente;
end;

procedure TFRelOrdemMecanica.FrmBuscaVendedorBTNMINUSClick(
  Sender: TObject);
begin
  inherited;
  LimparConsultaVendedor;
end;

procedure TFRelOrdemMecanica.EdDataKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  If (Key = #27) then
  Begin
    if (Sender is TMaskEdit) then
    begin
      (Sender as TMaskEdit).Clear;
      (Sender as TMaskEdit).Modified := false;
    end;
  End;
end;

end.
