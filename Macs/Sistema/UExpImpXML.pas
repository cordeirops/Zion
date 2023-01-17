unit UExpImpXML;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPadrao, Buttons, StdCtrls, DrLabel, jpeg, ExtCtrls, ComCtrls,
  DBCtrls, Grids, DBGrids, cxControls, cxContainer, cxEdit, cxGroupBox, cxRadioGroup, IBQuery, Db,
  xmldom, XMLIntf, msxmldom, XMLDoc,  IBCustomDataSet, IBUpdateSQL,  IBDatabase,
  Xmlxform, UDadosXML, ShellApi, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ClipBrd;

type
  TFExpImpXML = class(TFPadrao)
    PagePrincipal: TPageControl;
    TabSheet1: TTabSheet;
    PageExportacao: TPageControl;
    TabVenda: TTabSheet;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    rgFiltro: TcxRadioGroup;
    xmlExporta: TXMLDocument;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1DBColumn1: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn2: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn3: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn4: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn5: TcxGridDBColumn;
    TabSheet2: TTabSheet;
    PageImportacao: TPageControl;
    tbPedidoVenda: TTabSheet;
    edUrl: TEdit;
    Label1: TLabel;
    PImportaPV: TPanel;
    edNomeCliente: TEdit;
    edPagamento: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    SpeedButton1: TSpeedButton;
    edTotalProdutos: TEdit;
    Label5: TLabel;
    gbProdutos: TGroupBox;
    edDescricaoProduto: TEdit;
    edValorDesconto: TEdit;
    edQntProduto: TEdit;
    edValorUnitario: TEdit;
    edValorTotal: TEdit;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Label10: TLabel;
    edValorTotalVenda: TEdit;
    btnImportarPedVenda: TBitBtn;
    btnExportar: TBitBtn;
    btnAbrir: TBitBtn;
    btnProcurar: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure rgFiltroClick(Sender: TObject);
    procedure btnExportaraClick(Sender: TObject);
    procedure btnProcurarASClick(Sender: TObject);
    procedure btnAbriraClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure btnImportarPedVendaClick(Sender: TObject);
  private
    { Private declarations }
    procedure AtualizaPedidos;
    procedure LimpaPVCampos(cabecalho,produtos:Boolean);
    procedure IniciaPV;
    procedure AtualizaProdutosPV;
    procedure FimPV;

  public
    { Public declarations }
    function GravaArquivo(conteudo,caminho: string): boolean;
  end;

var
  FExpImpXML: TFExpImpXML;
  xmlImp: TXMLDocument;
  PosProd:Integer;
  Pedido:TPedVenda;

implementation

uses UDMSaida, Alxor32, Alxorprn, UDMPessoa, UDMGEOGRAFIA, UDMFinanc,
  UDMEstoque, UValidacaoNFe, AlxMessage, UDMMacs;

{$R *.dfm}

procedure TFExpImpXML.FormActivate(Sender: TObject);
begin
  inherited;
	Caption:='Exporta Importa XML';  
  PagePrincipal.ActivePageIndex := 0;
  PageExportacao.ActivePageIndex := 0;
  cxGrid1DBTableView1.DataController.DataSource := DMSAIDA.DWPedV;
  //DBPedVenda.DataSource := DMSAIDA.DWPedV;
  AtualizaPedidos;
  FimPV;
end;

procedure TFExpImpXML.AtualizaPedidos;
Begin

     If rgFiltro.ItemIndex = 0 Then
        FiltraTabela(DMSAIDA.WPedV, 'VWPEDV', 'SITUACAO', 'ABERTO', '')
     Else
         FiltraTabela(DMSAIDA.WPedV, 'VWPEDV', 'SITUACAO', 'FECHADO', '');

End;

procedure TFExpImpXML.rgFiltroClick(Sender: TObject);
begin
  inherited;
  AtualizaPedidos;
end;

procedure TFExpImpXML.btnExportaraClick(Sender: TObject);
var
   pedido :TPedVenda;
   Itens : Array of TItemVenda;
   i,j :Integer;
   texto :WideString;
begin

   //EFETUA CONTROLE DE ACESSO
   If ControlAccess('', 'M') = False Then
  		Exit;


     i := 0;
     //SetLength(pedido, 1);
     pedido := TPedVenda.Create;
     pedido := buscaPedVenda(DMSAIDA.WPedV.FieldByName('COD_PEDVENDA').AsString);
     //FiltraTabela(DMSAIDA.TPedV, 'PEDVENDA', 'COD_PEDVENDA', DMSAIDA.WPedV.FieldByName('COD_PEDVENDA').AsString, '');
     If pedido <> nil
     Then Begin
        xmlExporta.Active := False;
        xmlExporta.XML.Clear;
        xmlExporta.XML.Add('<?xml version="1.0" encoding="UTF-8"?>');
        texto := TirarAcentos(false, pedido.ObjectToXML());
        //texto := ValidaAcentos(pedido.ObjectToXML());
        xmlExporta.XML.Add('<root><Pedido>' + texto + '</Pedido></root>');

        SaveDialog1.FileName := 'Pedido '+ DMSAIDA.WPedV.FieldByName('COD_PEDVENDA').AsString;
        If SaveDialog1.Execute
        Then Begin
             //GravaArquivo(xmlExporta.XML.Text, SaveDialog1.FileName + '_1.xml');
             xmlExporta.Active := True;
             xmlExporta.SaveToFile(SaveDialog1.FileName + '.xml');
             //GravaArquivo(xmlExporta.XML.Text, SaveDialog1.FileName + '.xml');

            If Mensagem('A T E N Ç Ã O', 'Deseja abrir o arquivo?' , '', 2, 3, False, 'c')= 2
   		Then Begin
             ShellExecute(Handle, nil, Pchar(SaveDialog1.FileName + '.xml'), nil, nil, SW_SHOWNORMAL);
           End;
        End;
     End;

end;

function TFExpImpXML.GravaArquivo(conteudo,caminho: string): boolean;
var
 sFile: TextFile;
begin
 Result := True;

 try
   AssignFile(sFile, caminho);

   if not fileexists(caminho) then
    begin
     rewrite(sFile);
    end;

   Reset(sFile);
   Append(sFile);
   try
     WriteLn(sFile, conteudo);
   finally
     CloseFile(sFile);
    end; 
 Except
   Result := False
  end;
end;




procedure TFExpImpXML.btnProcurarASClick(Sender: TObject);
begin
  inherited;
  OpenDialog1.FileName := '';
  If OpenDialog1.Execute
  Then Begin
    edUrl.Text := OpenDialog1.FileName;
  End
  Else
    edUrl.Text := '';

end;

procedure TFExpImpXML.btnAbriraClick(Sender: TObject);
var
  xml:IXMLNode;
begin

  try
    Try

      If not FileExists(edUrl.Text)
      Then Begin
        Mensagem('A T E N Ç Ã O', 'Arquivo não encontrado.' , '', 1, 1, False, 'A');
        FimPV;
        Exit;
      End;
        // Cria a variável baseada no TXMLDocument
        xmlImp := TXMLDocument.Create(self);

        xmlImp.Active := False;
        xmlImp.LoadFromFile(edUrl.Text);
        xmlImp.Active := True;

        xml := xmlImp.DocumentElement;
        xml := xml.ChildNodes['Pedido'];

        If xml <> nil
        Then
          Pedido := XmlToPedVenda(xml)
        Else Begin
          Mensagem('A T E N Ç Ã O', 'Arquivo XML inválido.' , '', 1, 1, False, 'A');
          FimPV;
          Exit;
        End;


    Except
      Mensagem('A T E N Ç Ã O', 'Falha na tentativa de abrir o arquivo.' , '', 1, 1, False, 'A');
      FimPV;
      Exit;
    End;

    IniciaPV;
    
 finally
     xmlImp.Free;
 end;
end;

procedure TFExpImpXML.LimpaPVCampos(cabecalho,produtos:Boolean);
Begin
  If cabecalho
  Then Begin
      edNomeCliente.Text := '';
      edPagamento.Text := '';
      edTotalProdutos.Text := '';
      edValorTotalVenda.Text := '';
  End;

  If produtos
  Then Begin
    edDescricaoProduto.Text := '';
    edValorUnitario.Text := '';
    edValorTotal.Text := '';
    edValorDesconto.Text := '';
    edQntProduto.Text := '';
    gbProdutos.Caption := 'Produtos';
  End;

End;

procedure TFExpImpXML.IniciaPV;
Begin
  LimpaPVCampos(true, true);
  PImportaPV.Enabled := True;

  PosProd := 0;

  edNomeCliente.Text := Pedido.NomeCliente;
  edPagamento.Text := Pedido.Pagamento.Descricao;
  edTotalProdutos.Text := IntToStr(Length(Pedido.Itens));
  edValorTotalVenda.Text := FormatFloat('#,##0.00',Pedido.Valor);

  AtualizaProdutosPV;

End;

procedure TFExpImpXML.AtualizaProdutosPV;
Begin
   LimpaPVCampos(false, true);

   If Length(Pedido.Itens) > 0
   Then Begin
    edQntProduto.Text := FloatToStr(Pedido.Itens[PosProd].QtdProd);
    edDescricaoProduto.Text := Pedido.Itens[PosProd].Estoque.SubProduto.Descricao;
    edValorUnitario.Text :=  FormatFloat('#,##0.00',Pedido.Itens[PosProd].ValUnit);
    edValorTotal.Text :=  FormatFloat('#,##0.00',Pedido.Itens[PosProd].ValorTotal);
    edValorDesconto.Text :=  FormatFloat('#,##0.00',Pedido.Itens[PosProd].DescProd);
    gbProdutos.Caption := 'Produtos ' + IntToStr(PosProd + 1) + '/' +IntToStr(Length(Pedido.Itens));
   End;

End;

procedure TFExpImpXML.FimPV;
Begin
  LimpaPVCampos(true, true);
  PImportaPV.Enabled := False;
End;

procedure TFExpImpXML.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  PosProd := 0;
  AtualizaProdutosPV;
end;

procedure TFExpImpXML.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  If PosProd > 0 Then
    PosProd := PosProd - 1;
  AtualizaProdutosPV;
end;

procedure TFExpImpXML.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  If PosProd < (Length(Pedido.Itens)-1) Then
    PosProd := PosProd + 1;
  AtualizaProdutosPV;
end;

procedure TFExpImpXML.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  PosProd := (Length(Pedido.Itens)-1);
  AtualizaProdutosPV;
end;

procedure TFExpImpXML.btnImportarPedVendaClick(Sender: TObject);
var
  NumeroPedido, msgErro :String;
begin
  inherited;

  //EFETUA CONTROLE DE ACESSO
   If ControlAccess('', 'M') = False Then
  		Exit;

  If Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Deseja realmente importar o pedido?', '', 2, 3, False, 'C') <> 2
  Then Begin
    Exit;
  End;

  If verificaPedVenda(Pedido, msgErro, NumeroPedido)
  Then Begin
      Try
        DMESTOQUE.TransacEstoque.CommitRetaining;
        DMGEOGRAFIA.IBT.CommitRetaining;
        DMSAIDA.IBT.CommitRetaining;
        DMPESSOA.TransacPessoa.CommitRetaining;
        DMFINANC.Transaction.CommitRetaining;
        DMMACS.Transaction.CommitRetaining;
        Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Pedido importado com sucesso.'+#13+' Número do pedido: ' + NumeroPedido, '', 1, 1, false, 'i');
      Except
          Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Falha ao tentar gravar as informações do pedido.', '', 1, 1, false, 'i');
          Try
            DMESTOQUE.TransacEstoque.RollbackRetaining;
            DMGEOGRAFIA.IBT.RollbackRetaining;
            DMSAIDA.IBT.RollbackRetaining;
            DMPESSOA.TransacPessoa.RollbackRetaining;
            DMFINANC.Transaction.RollbackRetaining;
            DMMACS.Transaction.RollbackRetaining;
          Except
          End;   
      End;
  End
  Else Begin
      Try
            DMESTOQUE.TransacEstoque.RollbackRetaining;
            DMGEOGRAFIA.IBT.RollbackRetaining;
            DMSAIDA.IBT.RollbackRetaining;
            DMPESSOA.TransacPessoa.RollbackRetaining;
            DMFINANC.Transaction.RollbackRetaining;
            DMMACS.Transaction.RollbackRetaining;
      Except
      End;
      Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Falha ao tentar gravar pedido.'+#13+'Mensagem retorno: ' + msgErro, '', 1, 1, false, 'i');
  End;
end;

end.
