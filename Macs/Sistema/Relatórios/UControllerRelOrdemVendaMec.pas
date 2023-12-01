unit UControllerRelOrdemVendaMec;

interface

Uses
  Alxor32
  ,SysUtils
  ,Variants
  ,Classes
  ,Dialogs
  ,frxClass
  ,frxDBSet
  ,frxDesgn
  ,frxExportPDF
  ,FR_DSet
  ,FR_DBSet
  ,UMenu
  ,UDMMACS
  ,UDMServ;

Type
  TRelatorioOrdemServico=Class
  private
    frxRelatorio: TfrxReport;
    frxDBOrdem: TfrxDBDataset;
    frxDBItProdOrd: TfrxDBDataset;
    frxDBDespAdic: TfrxDBDataset;
    frxDBLoja: TfrxDBDataset;
    frxPDF: TfrxPDFExport;

    objDono: TComponent;
    iixCOD_ORDEM: integer;
    procedure PrepararDadosRelatorio;
    procedure PrepararDadosProdutos;
    procedure PrepararDadosServicos;
  public
    constructor Create(parDono: TComponent);
    destructor Destroy;

    procedure ImprimirComprovanteMeiaPagina(parCOD_ORDEM: integer);
    procedure ImprimirComprovantePaginaInteira(parCOD_ORDEM: integer);
    procedure ImprimirLaudoPaginaInteira(parCOD_ORDEM: integer);    
    procedure ImprimirCupomNaoFiscal(parCOD_ORDEM: integer);
  end;

implementation

{ TRelatorioOrdemServico }

constructor TRelatorioOrdemServico.Create(parDono: TComponent);
begin
  objDono := parDono;

  frxRelatorio := TfrxReport.Create(parDono);
  with frxRelatorio do
  begin
    Version := '4.15.6';
    DotMatrixReport := False;
    IniFile := '\Software\Fast Reports';
    PreviewOptions.Buttons := [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick];
    PreviewOptions.Zoom := 1.000000000000000000;
    PrintOptions.Printer := 'Default';
    PrintOptions.PrintOnSheet := 0;
  end;

 frxPDF := TfrxPDFExport.Create(ParDono);
 with frxPDF do
 begin
    UseFileCache := True;
    ShowProgress := True;
    OverwritePrompt := False;
    DataOnly := False;
    OpenAfterExport := True;
    PrintOptimized := False;
    Outline := False;
    Background := False;
    HTMLTags := True;
    Quality := 95;
    Author := 'MRZ Zion';
    Subject := 'FastReport PDF export';
    ProtectionFlags := [ePrint, eModify, eCopy, eAnnot];
    HideToolbar := False;
    HideMenubar := False;
    HideWindowUI := False;
    FitWindow := False;
    CenterWindow := False;
    PrintScaling := False;
    CheckboxAsShape := False;
  end;

  frxDBOrdem := TfrxDBDataset.Create(parDono);
  with frxDBOrdem do
  begin
    UserName := 'DBOrdem';
    CloseDataSource := False;
    BCDToCurrency := False;
  end;

  frxDBItProdOrd := TfrxDBDataset.Create(parDono);
  with frxDBItProdOrd do
  begin
    UserName := 'DBItProdOrd';
    CloseDataSource := False;
    BCDToCurrency := False;
  end;

  frxDBDespAdic := TfrxDBDataset.Create(parDono);
  with frxDBDespAdic do
  begin
    UserName := 'DBDespAdic';
    CloseDataSource := False;
    BCDToCurrency := False;
  end;

  frxDBLoja := TfrxDBDataset.Create(parDono);
  with frxDBLoja do
  begin
    UserName := 'DBLoja';
    CloseDataSource := False;
    BCDToCurrency := False;
  end;

  with frxRelatorio do
  begin
    DataSets.Add(frxDBOrdem);
    DataSets.Add(frxDBItProdOrd);
    DataSets.Add(frxDBDespAdic);
    DataSets.Add(frxDBLoja);
  end;

end;

destructor TRelatorioOrdemServico.Destroy;
begin
  if (frxRelatorio <> nil) then
  begin
    frxRelatorio.DataSets.Clear;

    FreeAndNil(frxDBOrdem);
    FreeAndNil(frxDBItProdOrd);
    FreeAndNil(frxDBDespAdic);
    FreeAndNil(frxDBLoja);

    FreeAndNil(frxPDF);

    FreeAndNil(frxRelatorio);
  end;
end;

procedure TRelatorioOrdemServico.PrepararDadosRelatorio;
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
  DMServ.TAlx1.SQL.Add('  ordem.descprod, ');
  DMServ.TAlx1.SQL.Add('  ordem.descserv, ');
  DMServ.TAlx1.SQL.Add('  VWORDEM.formapag as FormaPagamento, ');
  DMServ.TAlx1.SQL.Add('  VWFUNCIONARIO.nome as vendedor, ');
  DMServ.TAlx1.SQL.Add('  ORDEM.Cod_Ordem, ');
  DMServ.TAlx1.SQL.Add('  ORDEM.totdesp as ValorTotalDespesa, ');
  DMServ.TAlx1.SQL.Add('  VWCLIENTE.endereco, ');
  DMServ.TAlx1.SQL.Add('  VWCLIENTE.cpfcnpj, ');
  DMServ.TAlx1.SQL.Add('  VWCLIENTE.bairro, ');
  DMServ.TAlx1.SQL.Add('  VWCLIENTE.cidade, ');
  DMServ.TAlx1.SQL.Add('  VWCLIENTE.uf_estado, ');
  DMServ.TAlx1.SQL.Add('  VWCLIENTE.telrel, ');
  DMServ.TAlx1.SQL.Add('  ORDEM.hrabert, ');
  DMServ.TAlx1.SQL.Add('  ORDEM.hrentrega, ');
  DMServ.TAlx1.SQL.Add('  EMPRESA.endereco, ');
  DMServ.TAlx1.SQL.Add('  EMPRESA.cnpj, ');
  DMServ.TAlx1.SQL.Add('  EMPRESA.bairro, ');
  DMServ.TAlx1.SQL.Add('  EMPRESA.fone, ');
  DMServ.TAlx1.SQL.Add('  ORDEM.totkm, ');
  DMServ.TAlx1.SQL.Add('  EQUIPAMENTO.COR, ');
  DMServ.TAlx1.SQL.Add('  EQUIPAMENTO.CHASSI, ');
  DMServ.TAlx1.SQL.Add('  EQUIPAMENTO.ANO, ');    
  DMServ.TAlx1.SQL.Add('  ORDEM.obsordem, ');  
  DMServ.TAlx1.SQL.Add('  ORDEM.observacao, ');
  DMServ.TAlx1.SQL.Add('  ORDEM.PROBREC AS PROBLEMA, ');
  DMServ.TAlx1.SQL.Add('  ORDEM.SOLUCAO ');
  DMServ.TAlx1.SQL.Add('FROM VWORDEM ');
  DMServ.TAlx1.SQL.Add('left JOIN ORDEM ON VWORDEM.cod_ordem = ORDEM.cod_ordem ');
  DMServ.TAlx1.SQL.Add('LEFT JOIN EQUIPAMENTO on VWORDEM.cod_equipamento = EQUIPAMENTO.cod_equipamento');
  DMServ.TAlx1.SQL.Add('LEFT JOIN VWCLIENTE ON VWORDEM.cod_cliente = VWCLIENTE.cod_cliente ');
  DMServ.TAlx1.SQL.Add('LEFT JOIN VWFUNCIONARIO ON VWORDEM.cod_funcionario = VWFUNCIONARIO.cod_func');
  DMServ.TAlx1.SQL.Add('LEFT JOIN DOCFISORD ON VWORDEM.cod_ordem = DOCFISORD.cod_ordem');
  DMServ.TAlx1.SQL.Add('INNER JOIN LOJA on ORDEM.cod_loja = LOJA.cod_loja');
  DMServ.TAlx1.SQL.Add('INNER JOIN EMPRESA on LOJA.cod_empresa = EMPRESA.cod_empresa');
  DMServ.TAlx1.SQL.Add('WHERE VWORDEM.cod_ordem = :COD_ORDEM');
  DMServ.TAlx1.ParamByName('COD_ORDEM').AsInteger := iixCod_Ordem;

  PrepararDadosProdutos;
  PrepararDadosServicos;
  {
  //Grava dados do filtro
  FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
  DMMACS.TLoja.Edit;
  DMMACS.TLoja.FieldByName('TMP1').AsString:='Ordem de compra número: ' + IntToStr(iixCOD_ORDEM);
  DMMACS.TLoja.Post;
  DMMACS.Transaction.CommitRetaining;
  }
  frxDBOrdem.DataSource := DMServ.DSAlx1;
  frxDBItProdOrd.DataSource := DMServ.DSAlx2;
  frxDBDespAdic.DataSource := DMServ.DSTalx3;
  frxDBLoja.DataSource := DMMACS.DSLoja;

end;

procedure TRelatorioOrdemServico.PrepararDadosProdutos;
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

procedure TRelatorioOrdemServico.PrepararDadosServicos;
begin
  DMServ.TAlx3.Close;
  DMServ.TAlx3.SQL.Clear;
  DMServ.TAlx3.SQL.Add('Select  ');
  DMServ.TAlx3.SQL.Add('  despadic.cod_despadic, ');
  DMServ.TAlx3.SQL.Add('  despadic.despesa as ServicoPrestado, ');

  If DMMACS.TLoja.FieldByName('IMPNOMEEQUIPECOMPORDEM').AsString = '1' Then
       DMServ.TAlx3.SQL.Add('  equipe.descricao as NOMEEQUIPE, ' )
  Else
       DMServ.TAlx3.SQL.Add('  equipe.cod_equipe as NOMEEQUIPE, ' );

  DMServ.TAlx3.SQL.Add('  equipe.cod_equipe as codigoequipe, ');

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


procedure TRelatorioOrdemServico.ImprimirComprovanteMeiaPagina(
  parCOD_ORDEM: integer);
var
  ssxDiretorio: string;
  
begin
   if (parCOD_ORDEM <= 0) then
   begin
       MessageDlg('Codigo da ORDEM DE SERVIÇO não informado! ' + IntToStr(parCOD_ORDEM), mtWarning, [mbOK], 0);
   end
   else begin
       iixCOD_ORDEM := parCOD_ORDEM;

       DMServ.TAlx3.Close;
       DMServ.TAlx3.SQL.Clear;
       DMServ.TAlx3.SQL.Add(' Select itprodord.cod_itprodord From itprodord Where itprodord.cod_ordem = :CODORDEM ');
       DMServ.TAlx3.ParamByName('CODORDEM').AsInteger := parCOD_ORDEM;
       DMServ.TAlx3.Open;
       DMServ.TAlx2.Close;
       DMServ.TAlx2.SQL.Clear;
       DMServ.TAlx2.SQL.Add('  select * from despadic ');
       DMServ.TAlx2.SQL.Add(' where (despadic.cod_gerador= :cod) and (despadic.gerador=' + #39 + 'ORDEM' + #39 + ')');
       DMServ.TAlx2.ParamByName('cod').AsInteger := parCOD_ORDEM;
       DMServ.TAlx2.Open;

       If (DMServ.TAlx3.IsEmpty) and (DMServ.TAlx2.IsEmpty)
       Then Begin
           MessageDlg('A Ordem de Serviço se encontra vazia ', mtWarning, [mbOK], 0);
       End
       Else Begin

           PrepararDadosRelatorio;

           frxRelatorio.LoadFromFile('C:\MZR\MACS\Rel\FrfRelOSComprovanteMeiaPagina.fr3');
           if (DMMACS.TLoja.FieldByName('CAMIMGLOGO').AsString <> '') then
           begin
               ssxDiretorio := DMMACS.TLoja.FieldByName('CAMIMGLOGO').AsString;
               if FileExists(ssxDiretorio) then
               begin
                   TfrxPictureView(frxRelatorio.FindObject('imgLogoTipo')).Picture.LoadFromFile(ssxDiretorio);
               end;
           end;
        
           frxRelatorio.PrepareReport();
           frxRelatorio.ShowPreparedReport;
       End;
   end;
end;

procedure TRelatorioOrdemServico.ImprimirComprovantePaginaInteira(parCOD_ORDEM: integer);
var
  ssxDiretorio: string;
begin
   if (parCOD_ORDEM <= 0) then
   begin
       MessageDlg('Codigo da ORDEM DE SERVIÇO não informado! ' + IntToStr(parCOD_ORDEM), mtWarning, [mbOK], 0);
   end else
   begin
       iixCOD_ORDEM := parCOD_ORDEM;

       DMServ.TAlx3.Close;
       DMServ.TAlx3.SQL.Clear;
       DMServ.TAlx3.SQL.Add(' Select itprodord.cod_itprodord From itprodord Where itprodord.cod_ordem = :CODORDEM order by itprodord.cod_itprodord desc');
       DMServ.TAlx3.ParamByName('CODORDEM').AsInteger := parCOD_ORDEM;
       DMServ.TAlx3.Open;
       DMServ.TAlx2.Close;
       DMServ.TAlx2.SQL.Clear;
       DMServ.TAlx2.SQL.Add('  select * from despadic ');
       DMServ.TAlx2.SQL.Add(' where (despadic.cod_gerador= :cod) and (despadic.gerador=' + #39 + 'ORDEM' + #39 + ')  order by despadic.cod_despadic desc');
       DMServ.TAlx2.ParamByName('cod').AsInteger := parCOD_ORDEM;
       DMServ.TAlx2.Open;

       If (DMServ.TAlx3.IsEmpty) and (DMServ.TAlx2.IsEmpty)
       Then Begin
           MessageDlg('A Ordem de Serviço se encontra vazia ', mtWarning, [mbOK], 0);
       End
       Else Begin
           PrepararDadosRelatorio;

           frxRelatorio.LoadFromFile('C:\MZR\MACS\Rel\FrfRelOSComprovantePaginaInteira.fr3');

           if (DMMACS.TLoja.FieldByName('CAMIMGLOGO').AsString <> '') then
           begin
               ssxDiretorio := DMMACS.TLoja.FieldByName('CAMIMGLOGO').AsString;
               if FileExists(ssxDiretorio) then
               begin
                   TfrxPictureView(frxRelatorio.FindObject('imgLogoTipo')).Picture.LoadFromFile(ssxDiretorio);
               end;
           end;

           frxRelatorio.PrepareReport();
           frxRelatorio.ShowPreparedReport;
       End;
   end;
end;

procedure TRelatorioOrdemServico.ImprimirLaudoPaginaInteira(
  parCOD_ORDEM: integer);
var
  ssxDiretorio: string;
begin
   if (parCOD_ORDEM <= 0) then
   begin
       MessageDlg('Codigo da ORDEM DE SERVIÇO não informado! ' + IntToStr(parCOD_ORDEM), mtWarning, [mbOK], 0);
   end else
   begin
       iixCOD_ORDEM := parCOD_ORDEM;
       PrepararDadosRelatorio;

       //If (not DMServ.TAlx2.IsEmpty) or (not DMServ.TAlx3.IsEmpty)
       //Then Begin
           frxRelatorio.LoadFromFile('C:\MZR\MACS\Rel\FrfRelOSLaudoTecnicoPaginaInteira.fr3');
           //frxRelatorio.DesignReport(True);

           if (DMMACS.TLoja.FieldByName('CAMIMGLOGO').AsString <> '') then
           begin
               ssxDiretorio := DMMACS.TLoja.FieldByName('CAMIMGLOGO').AsString;
               if FileExists(ssxDiretorio) then
               begin
                   TfrxPictureView(frxRelatorio.FindObject('imgLogoTipo')).Picture.LoadFromFile(ssxDiretorio);
               end;
           end;

           frxRelatorio.PrepareReport();
           frxRelatorio.ShowPreparedReport;
       //End;
   end;
end;

procedure TRelatorioOrdemServico.ImprimirCupomNaoFiscal(
  parCOD_ORDEM: integer);
begin
  if (parCOD_ORDEM <= 0) then
  begin
    MessageDlg('Codigo da ORDEM DE SERVIÇO não informado! ' + IntToStr(parCOD_ORDEM), mtWarning, [mbOK], 0);
  end else
  begin
    iixCOD_ORDEM := parCOD_ORDEM;
    PrepararDadosRelatorio;
    frxRelatorio.LoadFromFile('C:\MZR\MACS\Rel\FrfRelOSComprovanteCupom.fr3');
    //frxRelatorio.DesignReport(True);
    frxRelatorio.PrepareReport();
    frxRelatorio.ShowPreparedReport;
  end;

end;

end.
