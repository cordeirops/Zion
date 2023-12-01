unit UExpImp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPadrao, ExtCtrls, Buttons, StdCtrls, jpeg, TFlatButtonUnit,
  Mask, TFlatCheckBoxUnit, IBCustomDataSet, IBUpdateSQL, DB, IBQuery,
  IBDatabase, Grids, DBGrids, DrLabel, TFlatEditUnit, ComCtrls, OleCtrls,
  FR_DSet, FR_DBSet, FR_Class;

type
  TFExpImp = class(TFPadrao)
    Open: TOpenDialog;
    DBIE: TIBDatabase;
    TIE: TIBTransaction;
    TAlx: TIBQuery;
    DAlx: TDataSource;
    TPedC: TIBQuery;
    TItemPC: TIBQuery;
    UPedC: TIBUpdateSQL;
    UItemPC: TIBUpdateSQL;
    Alx1: TIBQuery;
    Alx2: TIBQuery;
    Alx3: TIBQuery;
    BtnExp: TFlatButton;
    BtnImp: TFlatButton;
    PImp: TPanel;
    Label1: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    CBImpPedC: TFlatCheckBox;
    EdImpDT1: TMaskEdit;
    EdImpDT2: TMaskEdit;
    EdOrigem: TEdit;
    BitBtn2: TBitBtn;
    BtnBOrigem: TBitBtn;
    EdCodProd: TEdit;
    EdLoja: TEdit;
    EdPedc: TEdit;
    CBImpProduto: TFlatCheckBox;
    PRestProd: TPanel;
    Label12: TLabel;
    CBImpPCtrlInt: TCheckBox;
    CBImpPCodFab: TCheckBox;
    CBImpPCodBarra: TCheckBox;
    CBImpPCahveInterna: TCheckBox;
    Pexp: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label8: TLabel;
    BtnBDestino: TBitBtn;
    EdDT1: TMaskEdit;
    EdDT2: TMaskEdit;
    EdDestino: TEdit;
    BitBtn1: TBitBtn;
    CBPEDCOMPRA: TFlatCheckBox;
    BtnBalanca: TFlatButton;
    PBalanca: TPanel;
    CBTOLEDO: TFlatCheckBox;
    BitBtn3: TBitBtn;
    Panel2: TPanel;
    DataSource1: TDataSource;
    Label13: TLabel;
    FlatEdit1: TFlatEdit;
    CBFILIZOLA: TFlatCheckBox;
    FlatEdit2: TFlatEdit;
    BtnMobile: TFlatButton;
    PMobile: TPanel;
    BBAtualizar: TBitBtn;
    CBCliente: TCheckBox;
    CBProdutos: TCheckBox;
    CBPrazo: TCheckBox;
    CBCabecalhoPed: TCheckBox;
    CBRecadosPed: TCheckBox;
    GBOpcoes: TGroupBox;
    RBExportar: TRadioButton;
    RBImportar: TRadioButton;
    ProgressBar1: TProgressBar;
    BtnReceber: TBitBtn;
    BtnTrabalharArquivos: TBitBtn;
    PErros: TPanel;
    MErros: TMemo;
    BitBtn4: TBitBtn;
    BtnPDV: TFlatButton;
    PPDV: TPanel;
    Label14: TLabel;
    Label15: TLabel;
    BBExportar: TBitBtn;
    BBImportar: TBitBtn;
    DBGrid1: TDBGrid;
    BBLanc: TBitBtn;
    ProgressImpExp: TProgressBar;
    PBMobile: TProgressBar;
    CBExpPendDrive: TFlatCheckBox;
    CBImpPendrive: TFlatCheckBox;
    PBImportacao: TProgressBar;
    CBCADTXT: TFlatCheckBox;
    CBSETORTXT: TFlatCheckBox;
    FlatEdit3: TFlatEdit;
    FsRelExpImp: TfrReport;
    FDSExpImp: TfrDBDataSet;
    FlatButton1: TFlatButton;
    PSinc: TPanel;
    Label16: TLabel;
    FlatButton2: TFlatButton;
    procedure BtnBDestinoClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BtnExpClick(Sender: TObject);
    procedure BtnImpClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BtnBOrigemClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CBImpProdutoClick(Sender: TObject);
    procedure BtnBalancaClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BBAtualizarClick(Sender: TObject);
    procedure BtnMobileClick(Sender: TObject);
    procedure RBExportarClick(Sender: TObject);
    procedure RBImportarClick(Sender: TObject);
    procedure BtnReceberClick(Sender: TObject);
    procedure BtnTrabalharArquivosClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BtnPDVClick(Sender: TObject);
    procedure BBExportarClick(Sender: TObject);
    procedure BBImportarClick(Sender: TObject);
    procedure BBLancClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure CBExpPendDriveClick(Sender: TObject);
    procedure CBImpPendriveClick(Sender: TObject);
    procedure CBFILIZOLAClick(Sender: TObject);
    procedure CBCADTXTClick(Sender: TObject);
    procedure CBSETORTXTClick(Sender: TObject);
    //procedure de impressao de pedidos exportados para a Pamela Confecções
    procedure ImpPedExportados;
    //Alex- 22/04/2009: Atualiza registro referente a subproduto
    procedure Atualizasubproduto(codigo: Integer);

    procedure subproduto;
    procedure Button1Click(Sender: TObject);
    procedure FlatButton1Click(Sender: TObject);
    procedure FlatButton2Click(Sender: TObject);

  private
    { Private declarations }
	 Procedure HabPainel(Painel:Integer);//Trabalha paineis em relação tabcontrol
	 //Importa Pedidos de Compra
	 Procedure ImpPedC;
	 //Importa Produtos
	 Procedure ImpProd;
	 //Insert Produtos
	 Procedure InsertProd;

    //Conecta Base de Dados de Importação e Exportação
	 Function ConectaBD: Boolean;
    // exporta dados do banco para arquivo TXT
    Procedure ExportaDados;
    // importa dados do arquivo TXT para o banco
    procedure ImportaDados;
    // Verifica se existem caixa com o campo Mark X preenchido para continuar os processos de importação e exportação
    Function Consulta_CampoCaixa: boolean;
    // Busca os dados do caixa e exibi na grid PDV
    Procedure Verifica_Caixa;
    // procedure responsavel para chamar a função ExportaProdutosPDV para exportar produtos
    Procedure Exportacao;
    // procedure responsavel para chamar a função ImportaProdutosPDV para importar
    Procedure Importacao;
    // Importa dados dos terminais para o servidor
    Procedure ImportaDadosPDV;
    // Conecta banco de dados
    Function Conecta_BancoDados(XEnderecoBD: string): boolean;
    // procedure responsavel para calcular o valor total do lancaixa de cada caixa
    Function Calcula_LanCaixa: boolean;
   // Exporta dados de produtos do servidor para os terminais
    Procedure ExportaProdutosPDV;
    // função para gerar unidade de compra
    Function UnidCompra: integer;
    // FUNÇÃO PARA GERAR UNIDADE DE VENDA
    Function UnidVenda: integer;

    // desativa todos os check box
    procedure DesativaCheckBox;
    // ativa todos enabled dos checkBox
    procedure AtivaEnabled;

    procedure unidade;
    procedure insercod;

    procedure estoque;
    //Alex- 22/04/2009: Altera registro referente a estoque
    procedure Atualizaestoque(Codigo: Integer);

    procedure produto;
    procedure grupo;
    procedure subgrupo;
    procedure cst;

  public
       //*****************************************
       //*********** EXPORTAÇÃO ******************
       //*****************************************

       // exporta clientes
       Procedure Exporta_Clientes;
       // exporta produtos
       Procedure Exporta_Produtos;
       // exporta formas de pagamento
       Procedure Exporta_FormPag;

          //*****************************************
       //*********** IMPORTAÇÃO ******************
       //*****************************************

       // importa clientes
       Function Importa_Clientes: Boolean;
       // importa pedidos de venda
       Function Importa_PedVenda: Boolean;
       // importa Itens de pedido
       Function Importa_ItensPed: Boolean;
       // importa os recados dos pedidos
       procedure Importa_Recados;
       // Função para localizar o arquivo orionpendrive que determina qual drive é pendrive
       Function Verifpendrive: String;
       // Função para exportar pedidos para o pendrive
       Function ExpPenDrive: Boolean;
       // Função para importar pedidos do pendrive
       Function ImpPenDrive: Boolean;
       // primeiro verifica se encontrou banco
       Function LocalizaBanco: Boolean;
       // função para calcular a comissao de cada produto importado do arquivo TXT do palm
       Function CalculaComissao(VALOR: real; COD_VENDEDOR: integer; FORM_PAG: String): real;

    { Public declarations }
  end;

var
  FExpImp: TFExpImp;
  XLinha: String;
  XTexto: TextFile;
  XTXT: TextFile;
  XContador: integer;
  XCont: integer;
  XString: String;
  XNumPed: integer; // armazena o numero do pedido da tabela loja
  Xcod_pessoa, Xcod_pessoaf, Xcod_pessoaj, XCod_cidade, XCod_Email, XCod_Cliente: integer;

  //- 19/02/2009: abaixo váriáveis para controle da exportação das lojas pamela
  XImpExp: String;//- 19/02/2009:
  xcodformpagupdate : String; //- 19/02/2009:
  xnovocod : String;//- 19/02/2009:
  xcampo : String;//- 19/02/2009:campo para atualizar em codigo
  xcodupdate : String;//- 19/02/2009: guarda valores para update
  xcodsubgrupoupdate : String;//- 19/02/2009:
  xcodgrupoupdate : String;//- 19/02/2009:
  xcodsubprodutoupdate : String;//- 19/02/2009:
  xcodprodutoupdate : String;//- 19/02/2009:
  xcodestoqueupdate : String;//- 19/02/2009:
  xcodunidadeupdate : String;//- 19/02/2009:
  xunidcompra : String;//- 19/02/2009:
  xunidvenda : String;//- 19/02/2009:
  xtbexporta : TIBQuery;//- 19/02/2009: tabela q exporta a informacao
  xtbrecebe : TIBQuery;//- 19/02/2009: tabela que recebe a informacao

implementation

uses UMenu, UDMEntrada, UDMEstoque, AlxMessage, Alxor32, Alxorprn, UDMMacs,
  UDMPessoa, UDMGEOGRAFIA, UDMSaida, UDMFinanc, UDMCaixa, UDMExporta;

{$R *.dfm}

// Função para exportar pedidos paa a pendrive
Function TFExpImp.ExpPenDrive: Boolean;
Begin
{   Result:=True;

   //SQL QUE TRAZ TODAS AS INFORMAÇÕES A SEREM EXPORTADAS
{   DMESTOQUE.Alx.Close;
   DMESTOQUE.Alx.SQL.Clear;
   DMESTOQUE.Alx.SQL.Add(' select * from itenspedc ');
   DMESTOQUE.Alx.SQL.Add(' left join pedcompra on itenspedc.cod_pedcompra = pedcompra.cod_pedcomp ');
   DMESTOQUE.Alx.SQL.Add(' left join estoque on itenspedc.cod_estoque = estoque.cod_estoque ');
   DMESTOQUE.Alx.SQL.Add(' left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto ');
   DMESTOQUE.Alx.SQL.Add(' left join produto on subproduto.cod_subproduto = produto.cod_produto ');
   DMESTOQUE.Alx.SQL.Add(' left join grupoprod on produto.cod_grupoprod = grupoprod.cod_grupoprod ');
   DMESTOQUE.Alx.SQL.Add(' left join subgrupoprod on produto.cod_subgrupoprod = subgrupoprod.cod_subgrupoprod ');
   DMESTOQUE.Alx.SQL.Add(' left join unidade on subproduto.cod_unidcompra = unidade.cod_unidade ');
   DMESTOQUE.Alx.SQL.Add(' Where (pedcompra.export<>'+#39+'S'+#39+') or (pedcompra.export is null) ');
	DMESTOQUE.Alx.Open;         }
{   DMESTOQUE.Alx.Close;
   DMESTOQUE.Alx.SQL.Clear;
   DMESTOQUE.Alx.SQL.Add(' select * from pedcompra ');
   DMESTOQUE.Alx.SQL.Add(' Where (pedcompra.export<>'+#39+'S'+#39+') or (pedcompra.export is null) ');
	DMESTOQUE.Alx.Open;
   If Not DMESTOQUE.Alx.IsEmpty
   Then Begin
   	//caso exista dados a serem exportado o sistema deve marcar o primeiro registro e depois percorrer um a um exportando
       DMESTOQUE.Alx.First;
       While Not DMESTOQUE.Alx.Eof do
       Begin
       	//Inserir novo pedido de compra no Banco da PenDrive
           //PEDCOMPRA
           DMEXPORTA.tpedc.Insert;
           DMEXPORTA.TPedC.FieldByName('COD_PEDCOMP').AsString:=DMESTOQUE.Alx.FieldByName('COD_PEDCOMP').AsString;
           DMEXPORTA.TPedC.FieldByName('DTPEDCOMP').AsString:=DMESTOQUE.Alx.FieldByName('DTPEDCOMP').AsString;
           DMEXPORTA.TPedC.FieldByName('SITUACAO').AsString:='ABERTO';
           DMEXPORTA.TPedC.FieldByName('NUMPED').AsString:=DMESTOQUE.Alx.FieldByName('NUMPED').AsString;
           DMEXPORTA.TPedC.FieldByName('NUMFISCAL').AsString:=DMESTOQUE.Alx.FieldByName('NUMFISCAL').AsString;
           DMEXPORTA.TPedC.FieldByName('COBRANCA').AsString:=DMESTOQUE.Alx.FieldByName('COBRANCA').AsString;

           //FORNECEDOR DA COMPRA

           //fornecedor
           //vendedor
           //usuario
           //valor
           //forma de pagamento

           //Marca pedido Como Exportado
           DMENTRADA.TPedC.Close;
           DMENTRADA.TPedC.SQL.Clear;
           DMENTRADA.TPedC.SQL.Add('Select * from pedcompra where pedcompra.cod_pedcomp= :Codigo');
           DMENTRADA.TPedC.ParamByName('Codigo').AsString:=DMESTOQUE.Alx.FieldByName('cod_pedcomp').AsString;
           DMENTRADA.TPedC.Edit;
           DMENTRADA.TPedC.FieldByName('EXPORT').AsString:='S';
           DMENTRADA.TPedC.Post;

           DMESTOQUE.Alx.Next;
       End;
   End
   Else Begin
		Mensagem('Comunicado!', 'Nenhum item foi importado!', '', 1, 1, false, 'i');
   End}
  //	If Mensagem('Confirmação do usuário', 'Marcar os pedidos de compra como exportados?', '', 2, 3, False, 'c')=2
  // Then Begin
       DMENTRADA.TAlx.Close;
       DMENTRADA.TAlx.SQL.Clear;
       DMENTRADA.TAlx.SQL.Add('select pedcompra.export, pedcompra.numped, pedcompra.cod_fornec, pedcompra.valor, pedcompra.cod_pedcomp, estoque.valunit,');
       DMENTRADA.TAlx.SQL.Add('itenspedc.cod_pedcompra, itenspedc.cod_estoque, itenspedc.qtdeprod, itenspedc.qtdeexp, itenspedc.valortotal, pedcompra.valor,');
       DMENTRADA.TAlx.SQL.Add('itenspedc.valunit, estoque.cod_estoque as CODESTOQUE, estoque.cod_subprod as ESTSUBPROD, subproduto.cod_subproduto, pedcompra.situacao,');
       DMENTRADA.TAlx.SQL.Add('subproduto.descricao, pessoa.cod_pessoa, fornecedor.cod_fornec as CODFORNECEDOR, fornecedor.cod_pessoa, subproduto.marca,');
       DMENTRADA.TAlx.SQL.Add('pessoa.cod_pessoa as CODPESSOA, pessoa.nome, pessoa.telrel, subproduto.contrint, pessoa.telrel, pessoa.cpfcnpj FROM itenspedc');
       DMENTRADA.TAlx.SQL.Add('left join pedcompra on itenspedc.cod_pedcompra = pedcompra.cod_pedcomp');
       DMENTRADA.TAlx.SQL.Add('left join fornecedor on pedcompra.cod_fornec = fornecedor.cod_fornec');
       DMENTRADA.TAlx.SQL.Add('left join pessoa on fornecedor.cod_pessoa = pessoa.cod_pessoa');
       DMENTRADA.TAlx.SQL.Add('left join estoque on itenspedc.cod_estoque = estoque.cod_estoque');
       DMENTRADA.TAlx.SQL.Add('left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto');
       DMENTRADA.TAlx.SQL.Add('where (pedcompra.export <> '+#39+'S'+#39+') or (pedcompra.export is null)');
       DMENTRADA.TAlx.SQL.Add('and (pedcompra.situacao = '+#39+'FECHADO'+#39+')');
       DMENTRADA.TAlx.SQL.Add('ORDER BY pedcompra.numped, subproduto.contrint');
       DMENTRADA.TAlx.Open;
       if Mensagem('INFORMAÇÃO', 'Imprimir relatório de pedidos exportados?', '', 2, 3, False, 'c')=2
       Then begin
           ImpPedExportados;
       end;
       if (xcod_pessoa = 1)
       then begin
         DMENTRADA.TAlx.Close;
         DMENTRADA.TAlx.SQL.Clear;
         DMENTRADA.TAlx.SQL.Add('update pedcompra set pedcompra.export = '+#39+'S'+#39);
         DMENTRADA.TAlx.SQL.Add('where pedcompra.situacao = '+#39+'FECHADO'+#39);
         DMENTRADA.TAlx.ExecSQL;
         DMENTRADA.IBT.CommitRetaining;
         Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'Todos os pedidos de compra foram marcados como exportados!', '', 1, 1, False, 'a');
       end;
   //End;
End;

//imprime relatorio de produtos exportados
procedure TFExpImp.ImpPedExportados;
begin
    if not DMENTRADA.TAlx.IsEmpty
    then begin
      FsRelExpImp.LoadFromFile('C:\MZR\MACS\Rel\FrfProdExportados.frf');
      FsRelExpImp.ShowReport;
      Xcod_pessoa:=1;
     end
     else begin
       Mensagem('INFORMAÇÃO', 'O relatório retornou vazio, pois não há pedidos a serem exportados!', '', 1, 1, false, 'I');
       Xcod_pessoa:=0;
     end;

end;

// Função para localizar o arquivo orionpendrive que determina qual drive é pendrive
Function TFExpImp.Verifpendrive: String;
Begin
	If FileExists('C:/orionpendrive.dat') Then
       Result:='C:/DbMacs.gdb';
	If FileExists('D:/orionpendrive.dat') Then
       Result:='D:/DbMacs.gdb';
	If FileExists('E:/orionpendrive.dat') Then
       Result:='E:/DbMacs.gdb';
	If FileExists('F:/orionpendrive.dat') Then
       Result:='F:/DbMacs.gdb';
	If FileExists('G:/orionpendrive.dat') Then
       Result:='G:/DbMacs.gdb';
	If FileExists('H:/orionpendrive.dat') Then
       Result:='H:/DbMacs.gdb';
	If FileExists('I:/orionpendrive.dat') Then
       Result:='I:/DbMacs.gdb';
	If FileExists('J:/orionpendrive.dat') Then
       Result:='J:/DbMacs.gdb';
	If FileExists('K:/orionpendrive.dat') Then
       Result:='K:/DbMacs.gdb';
	If FileExists('L:/orionpendrive.dat') Then
       Result:='L:/DbMacs.gdb';
	If FileExists('M:/orionpendrive.dat') Then
       Result:='M:/DbMacs.gdb';
	If FileExists('N:/orionpendrive.dat') Then
       Result:='N:/DbMacs.gdb';
	If FileExists('O:/orionpendrive.dat') Then
       Result:='O:/DbMacs.gdb';
	If FileExists('P:/orionpendrive.dat') Then
       Result:='P:/DbMacs.gdb';
	If FileExists('Q:/orionpendrive.dat') Then
       Result:='Q:/DbMacs.gdb';
	If FileExists('R:/orionpendrive.dat') Then
       Result:='R:/DbMacs.gdb';
	If FileExists('R:/orionpendrive.dat') Then
       Result:='R:/DbMacs.gdb';
	If FileExists('S:/orionpendrive.dat') Then
       Result:='S:/DbMacs.gdb';
	If FileExists('T:/orionpendrive.dat') Then
       Result:='T:/DbMacs.gdb';
	If FileExists('U:/orionpendrive.dat') Then
       Result:='U:/DbMacs.gdb';
	If FileExists('V:/orionpendrive.dat') Then
       Result:='V:/DbMacs.gdb';
	If FileExists('W:/orionpendrive.dat') Then
       Result:='W:/DbMacs.gdb';
	If FileExists('X:/orionpendrive.dat') Then
       Result:='X:/DbMacs.gdb';
	If FileExists('Y:/orionpendrive.dat') Then
       Result:='Y:/DbMacs.gdb';
	If FileExists('Z:/orionpendrive.dat') Then
       Result:='Z:/DbMacs.gdb';
End;

// importa dados do arquivo TXT para o banco
procedure TFExpImp.ImportaDados;
begin
   //realiza as importações para todos os vendedores
   DMPESSOA.TFuncionario.Close;
   DMPESSOA.TFuncionario.SQL.Clear;
   DMPESSOA.TFuncionario.SQL.Add(' Select * from funcionario where funcionario.palm=1 ');
   DMPESSOA.TFuncionario.Open;
   If Not DMPESSOA.TFuncionario.IsEmpty
   Then Begin
       MErros.Lines.Clear;
       MErros.Lines.Add('INICIANDO...');

       DMPESSOA.TFuncionario.First;
       While not DMPESSOA.TFuncionario.Eof do
       Begin
       	If DMPESSOA.TFuncionario.FieldByName('NUMPALM').AsString<>''
           Then Begin
		        MErros.Lines.Add('  VENDEDOR: '+DMPESSOA.TFuncionario.FieldByName('NUMPALM').AsString);
               If CBCliente.Checked = true
               Then begin
                   Importa_Clientes;
               end;
               if CBCabecalhoPed.Checked = true
               then begin
                   If Importa_PedVenda = True
                   Then Begin
                       DMSAIDA.IBT.CommitRetaining;

						If Importa_ItensPed=True
                       Then Begin
                           DMMACS.Transaction.CommitRetaining;
                           DMSAIDA.IBT.CommitRetaining;
                           DMFINANC.Transaction.CommitRetaining;
                   		DMESTOQUE.TransacEstoque.CommitRetaining;
                       End
                   	Else Begin
                           DMMACS.Transaction.RollbackRetaining;
                           DMSAIDA.IBT.RollbackRetaining;
                           DMFINANC.Transaction.RollbackRetaining;
                   		DMESTOQUE.TransacEstoque.RollbackRetaining;
                           // deletando arquivo gerado mas que nao foi concluido
                           DeleteFile('C:\MGMOBILE\IMPTXT\' + #39 + DMPESSOA.TFuncionario.FieldByName('NUMPALM').AsString + ' - ' + DateToStr(Date) + #39 + '.TXT');
                       End;
                   End
                   Else Begin
   					MErros.Lines.Add('    ITENS DE PEDIDO NÃO IMPORTADO:');
   					MErros.Lines.Add('      A Falha ao importar Pedido impossibilitou importar itens');
                   End;
               end;
               if CBRecadosPed.Checked = true
               then begin
                   Importa_Recados;
               end;
           End
           Else Begin
				MessageDlg('O Vendedor: ' + DMPESSOA.TFuncionario.FieldByName('COD_INTERNO').AsString+#13+#10+'Precisa ter um Número de Palm Cadastrado', mtWarning, [mbOK], 0);
           End;
           DMPESSOA.TFuncionario.Next;
       End;
       MErros.Lines.Add('FINALIZADO!!!');
       PErros.Visible:=True;
       PErros.BringToFront;
   End
   Else Begin
		MessageDlg('Não existem vendedores cadastrados com Palms nos cadastros', mtInformation, [mbOK], 0);
   End;
end;

// exporta dados do banco para arquivo TXT
Procedure TFExpImp.ExportaDados;
Begin
   If CBCliente.Checked = true
   Then Begin
       Exporta_Clientes;
   End;

   iF CBProdutos.Checked = TRUE
   Then Begin
       Exporta_Produtos;
   End;

   If CBPrazo.Checked = true
   Then Begin
       Exporta_FormPag;
   End;
   MessageDlg('E X P O R T A D O S ! ! ! '+#13+#10+'c:\mgmobile\imptxt', mtWarning, [mbOK], 0);
   //Seo o programa de mgmobile para exportar para palms estiver no lugar correto o sistema irá abrir o programa
   If FileExists('C:\MGMobile\imptxt\VImport.exe') Then
		Winexec('C:\MGMobile\imptxt\VImport.exe', SW_shownormal);
End;

//Insert Produtos
Procedure TFExpImp.InsertProd;
Var
   XINSGRUPO, XINSSUBGRUPO, XINSPRODUTO, XINSESTOQUE, XINSSUBPRODUTO, XINSUNIDADE, XINSCST: Integer;//CODIGO DE PKS E FKS p/ inserção
Begin
               	//INSERE PRODUTO

                   //PROCURA GRUPO
                   DMESTOQUE.Alx1.Close;
                   DMESTOQUE.Alx1.SQL.Clear;
                   DMESTOQUE.Alx1.SQL.Add('select * FROM grupoprod Where grupoprod.descricao=:GRUPO');
                   DMESTOQUE.Alx1.ParamByName('GRUPO').AsString:=Alx1.FieldByName('DESCRICAO2').AsString;
                   DMESTOQUE.Alx1.Open;
                   If DMESTOQUE.Alx1.IsEmpty Then
                       XINSGRUPO:=-1
                   Else
                       XINSGRUPO:=DMESTOQUE.Alx1.FieldByName('COD_GRUPOPROD').AsInteger;

                   //PROCURA SUBGRUPO
                   DMESTOQUE.Alx1.Close;
                   DMESTOQUE.Alx1.SQL.Clear;
                   DMESTOQUE.Alx1.SQL.Add('select * FROM Subgrupoprod Where Subgrupoprod.descricao=:GRUPO');
                   DMESTOQUE.Alx1.ParamByName('GRUPO').AsString:=Alx1.FieldByName('DESCRICAO3').AsString;
                   DMESTOQUE.Alx1.Open;
                   If DMESTOQUE.Alx1.IsEmpty Then
                       XINSSUBGRUPO:=-1
                   Else
                       XINSSUBGRUPO:=DMESTOQUE.Alx1.FieldByName('COD_SUBGRUPOPROD').AsInteger;

                   //PROCURA UNIDADE
                   DMESTOQUE.Alx1.Close;
                   DMESTOQUE.Alx1.SQL.Clear;
                   DMESTOQUE.Alx1.SQL.Add('select * FROM UNIDADE Where UNIDADE.COD_UNIDADE=:UNIDADE');
                   DMESTOQUE.Alx1.ParamByName('UNIDADE').AsString:=Alx1.FieldByName('COD_UNIDCOMPRA').AsString;
                   DMESTOQUE.Alx1.Open;
                   If DMESTOQUE.Alx1.IsEmpty Then
                       XINSUNIDADE:=-1
                   Else
                       XINSUNIDADE:=Alx1.FieldByName('COD_UNIDCOMPRA').AsInteger;

                   //PROCURA CST
                   DMESTOQUE.Alx1.Close;
                   DMESTOQUE.Alx1.SQL.Clear;
                   DMESTOQUE.Alx1.SQL.Add('select * FROM CST Where CST.COD_CST=:CST');
                   DMESTOQUE.Alx1.ParamByName('CST').AsString:=Alx1.FieldByName('COD_CST').AsString;
                   DMESTOQUE.Alx1.Open;
                   If DMESTOQUE.Alx1.IsEmpty Then
                       XINSCST:=-1
                   Else
                       XINSCST:=Alx1.FieldByName('COD_CST').AsInteger;

                   //PROCURA PRODUTO
                   DMESTOQUE.Alx1.Close;
                   DMESTOQUE.Alx1.SQL.Clear;
                   DMESTOQUE.Alx1.SQL.Add('select * FROM PRODUTO Where PRODUTO.descricao=:PRODUTO');
                   DMESTOQUE.Alx1.ParamByName('PRODUTO').AsString:=Alx1.FieldByName('DESCRICAO1').AsString;
                   DMESTOQUE.Alx1.Open;
                   If DMESTOQUE.Alx1.IsEmpty Then
                       XINSPRODUTO:=-1
                   Else
                       XINSPRODUTO:=DMESTOQUE.Alx1.FieldByName('COD_PRODUTO').AsInteger;


                   //INICIA INSERCAO DOS NAO ENCONTRADOS
                   //GRUPO
                   If XINSGRUPO=-1
                   Then Begin
    					XINSGRUPO:=InserReg(DMESTOQUE.TGrupo, 'GRUPOPROD', 'COD_GRUPOPROD');
   					DMESTOQUE.TGrupo.FieldByName('COD_GRUPOPROD').AsInteger:=XINSGRUPO;
   					DMESTOQUE.TGrupo.FieldByName('COD_INTERNO').AsString:=Alx1.FieldByName('COD_INTERNO2').AsString;
   					DMESTOQUE.TGrupo.FieldByName('DESCRICAO').AsString:=Alx1.FieldByName('DESCRICAO2').AsString;
                   	DMESTOQUE.TGrupo.Post;
					End;
                   //UNIDADE
                   If XINSUNIDADE=-1
                   Then Begin
    					XINSUNIDADE:=InserReg(DMESTOQUE.TUnidade, 'UNIDADE', 'COD_UNIDADE');
   					DMESTOQUE.TUnidade.FieldByName('COD_UNIDADE').AsInteger:=XINSUNIDADE;
   					DMESTOQUE.TUnidade.FieldByName('DESC_UNID').AsString:=Alx1.FieldByName('DESC_UNID').AsString;
   					DMESTOQUE.TUnidade.FieldByName('SIGLA_UNID').AsString:=Alx1.FieldByName('SIGLA_UNID').AsString;
                   	DMESTOQUE.TUnidade.Post;
					End;
                   //CST
                   If XINSCST=-1
                   Then Begin
    					XINSCST:=InserReg(DMESTOQUE.TCST, 'CST', 'COD_CST');
   					DMESTOQUE.TCST.FieldByName('COD_CST').AsInteger:=XINSCST;
   					DMESTOQUE.TCST.FieldByName('DESCRICAO').AsString:=Alx1.FieldByName('DESCRICAO4').AsString;
   					DMESTOQUE.TCST.FieldByName('COD_SIT_TRIB').AsString:=Alx1.FieldByName('COD_SIT_TRIB').AsString;
   					DMESTOQUE.TCST.FieldByName('INDICEECF').AsString:=Alx1.FieldByName('INDICEECF').AsString;
                   	DMESTOQUE.TCST.Post;
					End;
                   //SUBGRUPO GRUPO
                   If XINSSUBGRUPO=-1
                   Then Begin
    					XINSSUBGRUPO:=InserReg(DMESTOQUE.TSubgru, 'SUBGRUPOPROD', 'COD_SUBGRUPOPROD');
   					DMESTOQUE.TSubgru.FieldByName('COD_SUBGRUPOPROD').AsInteger:=XINSSUBGRUPO;
   					DMESTOQUE.TSubgru.FieldByName('COD_INTERNO').AsString:=Alx1.FieldByName('COD_INTERNO3').AsString;
   					DMESTOQUE.TSubgru.FieldByName('DESCRICAO').AsString:=Alx1.FieldByName('DESCRICAO3').AsString;
                   	DMESTOQUE.TSubgru.Post;
					End;
                   //PRODUTO
                   If XINSPRODUTO=-1
                   Then Begin
    					XINSPRODUTO:=InserReg(DMESTOQUE.TProduto, 'PRODUTO', 'COD_PRODUTO');
   					DMESTOQUE.TProduto.FieldByName('COD_PRODUTO').AsInteger:=XINSPRODUTO;
   					DMESTOQUE.TProduto.FieldByName('COD_INTERNO').AsString:=Alx1.FieldByName('COD_INTERNO1').AsString;
   					DMESTOQUE.TProduto.FieldByName('DESCRICAO').AsString:=Alx1.FieldByName('DESCRICAO1').AsString;
   					DMESTOQUE.TProduto.FieldByName('APLICACAO').AsString:=Alx1.FieldByName('APLICACAO').AsString;
   					DMESTOQUE.TProduto.FieldByName('COD_GRUPOPROD').AsInteger:=XINSGRUPO;
   					DMESTOQUE.TProduto.FieldByName('COD_SUBGRUPOPROD').AsInteger:=XINSSUBGRUPO;
   					DMESTOQUE.TProduto.FieldByName('COD_CST').AsInteger:=XINSSUBGRUPO;
   					DMESTOQUE.TProduto.FieldByName('COD_LOJA').AsString:=EdLoja.Text;
                   	DMESTOQUE.TProduto.Post;
					End;

                   //INSERE EM SUBPRODUTO
  					XINSSUBPRODUTO:=InserReg(DMESTOQUE.TSubProd, 'SUBPRODUTO', 'COD_SUBPRODUTO');
  					DMESTOQUE.TSubProd.FieldByName('COD_SUBPRODUTO').AsInteger:=XINSSUBPRODUTO;
  					DMESTOQUE.TSubProd.FieldByName('CODCOMPOSTO').AsString:=Alx1.FieldByName('CODCOMPOSTO').AsString;
  					DMESTOQUE.TSubProd.FieldByName('DESCRICAO').AsString:=Alx1.FieldByName('DESCRICAO').AsString;
  					DMESTOQUE.TSubProd.FieldByName('CODBARRA').AsString:=Alx1.FieldByName('CODBARRA').AsString;
  					DMESTOQUE.TSubProd.FieldByName('CODPRODFABR').AsString:=Alx1.FieldByName('CODPRODFABR').AsString;
  					DMESTOQUE.TSubProd.FieldByName('FABRICANTE').AsString:=Alx1.FieldByName('FABRICANTE').AsString;
  					DMESTOQUE.TSubProd.FieldByName('MARCA').AsString:=Alx1.FieldByName('MARCA').AsString;
  					DMESTOQUE.TSubProd.FieldByName('QUANTGARANTIA').AsString:=Alx1.FieldByName('QUANTGARANTIA').AsString;
  					DMESTOQUE.TSubProd.FieldByName('TIPOGARANTIA').AsString:=Alx1.FieldByName('TIPOGARANTIA').AsString;
  					DMESTOQUE.TSubProd.FieldByName('LOCALESTANTE').AsString:=Alx1.FieldByName('LOCALESTANTE').AsString;
  					DMESTOQUE.TSubProd.FieldByName('ATIVO').AsString:=Alx1.FieldByName('ATIVO').AsString;
  					DMESTOQUE.TSubProd.FieldByName('IPIPROD').AsString:=Alx1.FieldByName('IPIPROD').AsString;
  					DMESTOQUE.TSubProd.FieldByName('PESOLIQ').AsString:=Alx1.FieldByName('PESOLIQ').AsString;
  					DMESTOQUE.TSubProd.FieldByName('PESOBRUTO').AsString:=Alx1.FieldByName('PESOBRUTO').AsString;
  					DMESTOQUE.TSubProd.FieldByName('COD_PRODUTO').AsInteger:=XINSPRODUTO;
  					DMESTOQUE.TSubProd.FieldByName('COD_INTERNO').AsString:=Alx1.FieldByName('COD_INTERNO').AsString;
  					DMESTOQUE.TSubProd.FieldByName('MOTIVO').AsString:=Alx1.FieldByName('MOTIVO').AsString;
  					DMESTOQUE.TSubProd.FieldByName('QTDATC').AsString:=Alx1.FieldByName('QTDATC').AsString;
  					DMESTOQUE.TSubProd.FieldByName('EMBPROD').AsString:=Alx1.FieldByName('EMBPROD').AsString;
  					DMESTOQUE.TSubProd.FieldByName('COD_UNIDCOMPRA').AsString:=Alx1.FieldByName('COD_UNIDCOMPRA').AsString;
  					DMESTOQUE.TSubProd.FieldByName('COD_UNIDVENDA').AsString:=Alx1.FieldByName('COD_UNIDVENDA').AsString;
  					DMESTOQUE.TSubProd.FieldByName('COD_CST').AsString:=Alx1.FieldByName('COD_CST').AsString;
  					DMESTOQUE.TSubProd.FieldByName('DTCAD').AsString:=Alx1.FieldByName('DTCAD').AsString;
  					DMESTOQUE.TSubProd.FieldByName('CONTRINT').AsString:=Alx1.FieldByName('CONTRINT').AsString;
  					DMESTOQUE.TSubProd.FieldByName('COR').AsString:=Alx1.FieldByName('COR').AsString;
  					DMESTOQUE.TSubProd.FieldByName('CLASSIFICACAO').AsString:=Alx1.FieldByName('CLASSIFICACAO').AsString;
  					DMESTOQUE.TSubProd.FieldByName('DESCCUPOM').AsString:=Alx1.FieldByName('DESCCUPOM').AsString;
                   DMESTOQUE.TSubProd.Post;

                   //INSERE EM ESTOQUE
  					XINSESTOQUE:=InserReg(DMESTOQUE.TEstoque, 'ESTOQUE', 'COD_ESTOQUE');
  					DMESTOQUE.TEstoque.FieldByName('COD_ESTOQUE').AsInteger:=XINSESTOQUE;
  					DMESTOQUE.TEstoque.FieldByName('COD_LOJA').AsString:=EdLoja.Text;
  					DMESTOQUE.TEstoque.FieldByName('COD_SUBPROD').AsInteger:=XINSSUBPRODUTO;
  					DMESTOQUE.TEstoque.FieldByName('ESTMAX').AsString:=Alx1.FieldByName('ESTMAX').AsString;
  					DMESTOQUE.TEstoque.FieldByName('ESTMIN').AsString:=Alx1.FieldByName('ESTMIN').AsString;
  					DMESTOQUE.TEstoque.FieldByName('ICMS').AsString:=Alx1.FieldByName('ICMS').AsString;
  					DMESTOQUE.TEstoque.FieldByName('FRETE').AsString:=Alx1.FieldByName('FRETE').AsString;
  					DMESTOQUE.TEstoque.FieldByName('CVVPROAT').AsString:=Alx1.FieldByName('CVVPROAT').AsString;
  					DMESTOQUE.TEstoque.FieldByName('CVPPROAT').AsString:=Alx1.FieldByName('CVPPROAT').AsString;
  					DMESTOQUE.TEstoque.FieldByName('CVVPROVAR').AsString:=Alx1.FieldByName('CVVPROVAR').AsString;
  					DMESTOQUE.TEstoque.FieldByName('CVPPROVAR').AsString:=Alx1.FieldByName('CVPPROVAR').AsString;
  					DMESTOQUE.TEstoque.FieldByName('VENDATAP').AsString:=Alx1.FieldByName('VENDATAP').AsString;
  					DMESTOQUE.TEstoque.FieldByName('VENDATAV').AsString:=Alx1.FieldByName('VENDATAV').AsString;
  					DMESTOQUE.TEstoque.FieldByName('VENDVARP').AsString:=Alx1.FieldByName('VENDVARP').AsString;
  					DMESTOQUE.TEstoque.FieldByName('VENDVARV').AsString:=Alx1.FieldByName('VENDVARV').AsString;
  					DMESTOQUE.TEstoque.FieldByName('VALUNIT').AsString:=Alx1.FieldByName('VALUNIT').AsString;
  					DMESTOQUE.TEstoque.FieldByName('VALREP').AsString:=Alx1.FieldByName('VALREP').AsString;
  					DMESTOQUE.TEstoque.FieldByName('VALCUSTO').AsString:=Alx1.FieldByName('VALCUSTO').AsString;
  					DMESTOQUE.TEstoque.FieldByName('AVVPROAT').AsString:=Alx1.FieldByName('AVVPROAT').AsString;
  					DMESTOQUE.TEstoque.FieldByName('AVPPROAT').AsString:=Alx1.FieldByName('AVPPROAT').AsString;
  					DMESTOQUE.TEstoque.FieldByName('AVPPROVAR').AsString:=Alx1.FieldByName('AVPPROVAR').AsString;
  					DMESTOQUE.TEstoque.FieldByName('AVVPROVAR').AsString:=Alx1.FieldByName('AVVPROVAR').AsString;
  					DMESTOQUE.TEstoque.FieldByName('AVPPROVAR').AsString:=Alx1.FieldByName('AVPPROVAR').AsString;
  					DMESTOQUE.TEstoque.FieldByName('LUCRATIVIDADE').AsString:=Alx1.FieldByName('LUCRATIVIDADE').AsString;
  					DMESTOQUE.TEstoque.FieldByName('COEFDIV').AsString:=Alx1.FieldByName('COEFDIV').AsString;
  					DMESTOQUE.TEstoque.FieldByName('OUTROS').AsString:=Alx1.FieldByName('OUTROS').AsString;
  					DMESTOQUE.TEstoque.FieldByName('DTCAD').AsDateTime:=Date();
  					DMESTOQUE.TEstoque.FieldByName('VALCUSDESP').AsString:=Alx1.FieldByName('VALCUSDESP').AsString;
  					DMESTOQUE.TEstoque.FieldByName('VLRUNITCOMP').AsString:=Alx1.FieldByName('VLRUNITCOMP').AsString;
  					DMESTOQUE.TEstoque.FieldByName('INDICE').AsString:=Alx1.FieldByName('INDICE').AsString;
  					DMESTOQUE.TEstoque.FieldByName('BONIFICACAO').AsString:=Alx1.FieldByName('BONIFICACAO').AsString;
  					DMESTOQUE.TEstoque.FieldByName('VLRBONIFIC').AsString:=Alx1.FieldByName('VLRBONIFIC').AsString;
  					DMESTOQUE.TEstoque.FieldByName('DESCONTO').AsString:=Alx1.FieldByName('DESCONTO').AsString;
  					DMESTOQUE.TEstoque.FieldByName('CLNC').AsString:=Alx1.FieldByName('CLNC').AsString;
  					DMESTOQUE.TEstoque.FieldByName('MOD').AsString:=Alx1.FieldByName('MOD').AsString;
  					DMESTOQUE.TEstoque.FieldByName('IMPEXP').AsString:=Alx1.FieldByName('IMPEXP').AsString;
  					DMESTOQUE.TEstoque.FieldByName('IMPREND').AsString:=Alx1.FieldByName('IMPREND').AsString;
  					DMESTOQUE.TEstoque.FieldByName('CONTSOC').AsString:=Alx1.FieldByName('CONTSOC').AsString;
//  					DMESTOQUE.TEstoque.FieldByName('COFINS').AsString:=Alx1.FieldByName('COFINS').AsString;  					DMESTOQUE.TEstoque.FieldByName('').AsString:=Alx1.FieldByName('').AsString;
  					DMESTOQUE.TEstoque.FieldByName('PIS').AsString:=Alx1.FieldByName('PIS').AsString;
  					DMESTOQUE.TEstoque.FieldByName('MARGEMSEG').AsString:=Alx1.FieldByName('MARGEMSEG').AsString;
					DMESTOQUE.TEstoque.FieldByName('PERCMARGSEG').AsString:=Alx1.FieldByName('PERCMARGSEG').AsString;
                     DMESTOQUE.TEstoque.Post;
                     DMEstoque.TransacEstoque.CommitRetaining;
End;

//Conecta Base de Dados de Importação e Exportação
Function TFExpImp.ConectaBD: Boolean;
Var
	I: INTEGER;
Begin
	Try
   	TIE.Active:=False;
   	DBIE.Close;
   	DBIE.DatabaseName:=EdOrigem.Text;
   	DBIE.Open;
   	TIE.Active:=True;
       Result:=True;
       //conecta tabelas
       for I := 0 to ComponentCount -1 do
       Begin
       	If Components[i] is TIBQuery
           then begin
           	If Components[i].Tag<>5
               Then Begin//se o tag for 2 significa que e tabela de destino
               	Try
                   	TIBQuery(Components[i]).active:=True;
                   Except
                   END;
               End;
           end;
       End;
   Except
   End;
End;
//Importa Produtos
Procedure TFExpImp.ImpProd;
Var
	XAux: String;
   XINSGRUPO, XINSSUBGRUPO, XINSPRODUTO, XINSESTOQUE, XINSSUBPRODUTO, XINSUNIDADE, XINSCST: Integer;//CODIGO DE PKS E FKS p/ inserção
Begin
	//Sleciona todos os Subprodutos a serem importados com data
   //de cadastro informada nas edits ou tipo nula
   Alx1.Close;
   Alx1.SQL.Clear;
   Alx1.SQL.Add(' select * from subproduto ');
   Alx1.SQL.Add(' Left Join estoque on subproduto.cod_subproduto=estoque.cod_subprod ');
   Alx1.SQL.Add(' Left join produto on subproduto.cod_produto = produto.cod_produto ');
   Alx1.SQL.Add(' left join grupoprod on produto.cod_grupoprod = grupoprod.cod_grupoprod ');
   Alx1.SQL.Add(' left join subgrupoprod on produto.cod_subgrupoprod = subgrupoprod.cod_subgrupoprod ');
   Alx1.SQL.Add(' left join unidade on subproduto.cod_unidcompra = unidade.cod_unidade ');
   Alx1.SQL.Add(' left join cst on subproduto.cod_cst = cst.cod_cst ');
   If (EdDT1.Text<>'  /  /    ') and (EdDT2.Text<>'  /  /    ')
   Then Begin
      Alx1.SQL.Add(' WHERE (subproduto.dtcad Between :Data1 and :Data2) or (subproduto.dtcad is null)');
	   Alx1.ParamByName('Data1').AsString:=EdImpDT1.Text;
	   Alx1.ParamByName('Data2').AsString:=EdImpDT2.Text;
   End;
   Alx1.SQL.Text;
   Alx1.Open;
   If Not Alx1.IsEmpty
   Then Begin
       //SE TEM PRODUTOS A SER IMPORTADOS
       Alx1.First;
       WHILE NOT Alx1.Eof Do
       Begin
       	//PERCORRE TODOS OS SUBPRODUTOS POSSIVEIS DE IMPORTAÇÃO

           //TENTA ENCONTRAR O MESMO PRODUTO EM BANCO DE DADOS
           DMESTOQUE.Alx.Close;
           DMESTOQUE.Alx.SQL.Clear;
           DMESTOQUE.Alx.SQL.Add('Select * from SubProduto ');
           XAux:=' Where ';
           If CBImpPCtrlInt.Checked=True
           Then Begin
           	DMESTOQUE.Alx.SQL.Add(XAux + ' (subproduto.contrint=:CTRL) ');
				DMESTOQUE.Alx.ParamByName('CTRL').AsString:=Alx1.FieldByName('contrint').AsString;
               XAux:=' AND ';
           End;
           If CBImpPCahveInterna.Checked=True
           Then Begin
           	DMESTOQUE.Alx.SQL.Add(XAux + ' (subproduto.cod_subproduto=:CODSUBPROD) ');
				DMESTOQUE.Alx.ParamByName('CODSUBPROD').AsString:=Alx1.FieldByName('COD_SUBPRODUTO').AsString;
               XAux:=' AND ';
           End;
           If CBImpPCodFab.Checked=True
           Then Begin
           	DMESTOQUE.Alx.SQL.Add(XAux + ' (subproduto.codprodfabr=:CODFABRICANTE) ');
				DMESTOQUE.Alx.ParamByName('CODFABRICANTE').AsString:=Alx1.FieldByName('CODPRODFABR').AsString;
               XAux:=' AND ';
           End;
           If CBImpPCodBarra.Checked=True
           Then Begin
           	DMESTOQUE.Alx.SQL.Add(XAux + ' (subproduto.codbarra=:CODBARRA) ');
				DMESTOQUE.Alx.ParamByName('CODBARRA').AsString:=Alx1.FieldByName('CODBARRA').AsString;
               XAux:=' AND ';
           End;
           //VERIFICA SE JA FOI ENCONTRADO ALGUM PRODUTO IGUAL
           DMESTOQUE.Alx.SQL.Text;
           DMESTOQUE.Alx.Open;
           If DMESTOQUE.Alx.IsEmpty
           Then Begin
				//SE NÃO FOI VERIFICA AINDA SE EXISTE UMA DESCRIÇÃO IGUAL
           	DMESTOQUE.Alx.Close;
           	DMESTOQUE.Alx.SQL.Clear;
           	DMESTOQUE.Alx.SQL.Add('Select * from SubProduto ');
           	DMESTOQUE.Alx.SQL.Add(' Where subproduto.descricao='+#39+Alx1.FieldByName('DESCRICAO').AsString+#39);
				DMESTOQUE.Alx.Open;
               If DMESTOQUE.Alx.IsEmpty
               Then Begin
                   InsertProd;
               End
               Else Begin
        			If Mensagem('Confirmação do Usuário', 'Foi encontrado um produto equivalente:'+#13+'Encontrado: '+DMESTOQUE.Alx.FieldByName('Descricao').AsString+#13+'Importando: '+ Alx1.FieldByName('Descricao').AsString+#13+'Importar mesmo assim?', '', 2, 3, False, 'c')=2
                   Then Begin
                       InsertProd;
                   End;
               End;
           End;
           Alx1.Next;
       End;
   End;
   DMESTOQUE.TransacEstoque.CommitRetaining;
   DMESTOQUE.TransacEstoque.CommitRetaining;
End;

//Importa Pedidos de Compra
Procedure TFExpImp.ImpPedC;
Begin
	 //SELECIONA ITENS DE PEDIDO JUNTO COM PRODUTO
    TItemPC.Close;
    TItemPC.SQL.Clear;
    TItemPC.SQL.Add('  SELECT estoque.cod_estoque, estoque.cod_subprod, estoque.icms, estoque.estmin, ');
    TItemPC.SQL.Add('  itenspedc.frete, estoque.cvvproat, estoque.cvpproat, estoque.cvvprovar, estoque.cvpprovar, ');
    TItemPC.SQL.Add('  estoque.vendatap, estoque.vendatav, estoque.vendvarp, estoque.vendvarv, estoque.valunit, ');
    TItemPC.SQL.Add('  estoque.valrep, estoque.valcusto, estoque.avvproat, estoque.avpproat, estoque.avvprovar, ');
    TItemPC.SQL.Add('  estoque.avpprovar, estoque.lucratividade, estoque.coefdiv, estoque.valorest, estoque.outros, ');
    TItemPC.SQL.Add('  estoque.vlrunitcomp, estoque.indice, estoque.vlrbonific, subproduto.codcomposto, subproduto.descricao, ');
    TItemPC.SQL.Add('  subproduto.codbarra, subproduto.codprodfabr, subproduto.fabricante, subproduto.marca, ');
    TItemPC.SQL.Add('  subproduto.localestante, subproduto.cod_interno, subproduto.qtdatc, subproduto.cod_cst, ');
    TItemPC.SQL.Add('  subproduto.contrint, subproduto.cor, subproduto.classificacao, subproduto.desccupom,  ');
    TItemPC.SQL.Add('  itenspedc.cod_itenspedc, itenspedc.Aliqipi, itenspedc.vlripi, itenspedc.Aliqicms AS ICMSITEM, ');
    TItemPC.SQL.Add('  itenspedc.frete AS FRETEITEM, itenspedc.embprod, itenspedc.data AS DATAITEM, ');
    TItemPC.SQL.Add('  itenspedc.qtdeprod, itenspedc.descpro, itenspedc.valunit, itenspedc.valortotal ');
    TItemPC.SQL.Add('  From itenspedc left join pedcompra on itenspedc.cod_pedcompra = pedcompra.cod_pedcomp ');
    TItemPC.SQL.Add('  left join estoque on estoque.cod_estoque=itenspedc.cod_estoque ');
    TItemPC.SQL.Add('  left join subproduto ON subproduto.cod_subproduto = estoque.cod_subprod ');
    TItemPC.SQL.Add('  left join produto on subproduto.cod_produto = produto.cod_produto ');
    TItemPC.SQL.Add('  left join grupoprod on grupoprod.cod_grupoprod = produto.cod_grupoprod ');
    TItemPC.SQL.Add('  left join subgrupoprod on subgrupoprod.cod_subgrupoprod = produto.cod_subgrupoprod ');
    If (EdDT1.Text<>'  /  /    ') AND (EdDT2.Text<>'  /  /    ')
    Then Begin
   	TItemPC.SQL.Add(' WHERE (PEDCOMPRA.dtpedcomp Between :Data1 and :Data2) ');
		TItemPC.ParamByName('Data1').AsString:=EdImpDT1.Text;
		TItemPC.ParamByName('Data2').AsString:=EdImpDT2.Text;
    End;
    TItemPC.SQL.Text;
    TItemPC.Open;
    If Not TItemPC.IsEmpty
    Then Begin
       TItemPC.First;
       While Not TItemPC.Eof Do
       Begin
    		//INSERE SUBPRODUTO E ESTOQUE
    		DMESTOQUE.WSimilar.Close;
    		DMESTOQUE.WSimilar.SQL.Clear;
    		DMESTOQUE.WSimilar.SQL.Add(' select * FROM vwsimilar WHERE vwsimilar.cod_estoque=:CODESTOQUE ');
           DMESTOQUE.WSimilar.ParamByName('CODESTOQUE').AsString:=TItemPC.FieldByName('COD_ESTOQUE').AsString;
			DMESTOQUE.WSimilar.Open;
           If DMESTOQUE.WSimilar.IsEmpty
           Then Begin //SE VAZIO INSERIR NOVO PRODUTO
           	DMESTOQUE.TEstoque.Insert;
               DMESTOQUE.TSubProd.Insert;
           	DMESTOQUE.TSubProd.FieldByName('COD_PRODUTO').AsString:=EdCodProd.Text;
           End
           Else Begin
           	//SELECIONA ESTOQUE
               DMESTOQUE.TEstoque.Close;
               DMESTOQUE.TEstoque.SQL.Clear;
               DMESTOQUE.TEstoque.SQL.Add(' SELECT * FROM ESTOQUE WHERE ESTOQUE.COD_ESTOQUE=:CODESTOQUE');
           	DMESTOQUE.TEstoque.ParamByName('CODESTOQUE').AsString:=TItemPC.FieldByName('cod_estoque').AsString;
               DMESTOQUE.TEstoque.Open;
               DMESTOQUE.TEstoque.Edit;
               //SELECIONA Subproduto
               DMESTOQUE.TSubProd.Close;
               DMESTOQUE.TSubProd.SQL.Clear;
               DMESTOQUE.TSubProd.SQL.Add(' SELECT * FROM SUBPRODUTO WHERE subproduto.cod_subproduto=:CODSUBPROD');
               DMESTOQUE.TSubProd.ParamByName('CODSUBPROD').AsString:=DMESTOQUE.TEstoque.FieldByName('cod_subprod').AsString;
               DMESTOQUE.TSubProd.Open;
               If Not DMESTOQUE.TSubProd.IsEmpty Then
           		DMESTOQUE.TSubProd.Edit
               Else
                   DMESTOQUE.TSubProd.Insert;
           End;
           //ESTOQUE
           DMESTOQUE.TEstoque.FieldByName('COD_ESTOQUE').AsCurrency:=TItemPC.FieldByName('COD_ESTOQUE').AsCurrency;
           DMESTOQUE.TEstoque.FieldByName('COD_LOJA').AsString:=EdLoja.text;
           DMESTOQUE.TEstoque.FieldByName('COD_SUBPROD').AsCurrency:=TItemPC.FieldByName('COD_SUBPROD').AsCurrency;
           DMESTOQUE.TEstoque.FieldByName('ICMS').AsCurrency:=TItemPC.FieldByName('ICMS').AsCurrency;
           DMESTOQUE.TEstoque.FieldByName('ESTMIN').AsCurrency:=TItemPC.FieldByName('ESTMIN').AsCurrency;
           DMESTOQUE.TEstoque.FieldByName('FRETE').AsCurrency:=TItemPC.FieldByName('FRETE').AsCurrency;
           DMESTOQUE.TEstoque.FieldByName('CVVPROAT').AsCurrency:=TItemPC.FieldByName('CVVPROAT').AsCurrency;
           DMESTOQUE.TEstoque.FieldByName('CVPPROAT').AsCurrency:=TItemPC.FieldByName('CVPPROAT').AsCurrency;
           DMESTOQUE.TEstoque.FieldByName('CVVPROVAR').AsCurrency:=TItemPC.FieldByName('CVVPROVAR').AsCurrency;
           DMESTOQUE.TEstoque.FieldByName('CVPPROVAR').AsCurrency:=TItemPC.FieldByName('CVPPROVAR').AsCurrency;
           DMESTOQUE.TEstoque.FieldByName('VENDATAP').AsCurrency:=TItemPC.FieldByName('VENDATAP').AsCurrency;
           DMESTOQUE.TEstoque.FieldByName('VENDATAV').AsCurrency:=TItemPC.FieldByName('VENDATAV').AsCurrency;
           DMESTOQUE.TEstoque.FieldByName('VENDVARP').AsCurrency:=TItemPC.FieldByName('VENDVARP').AsCurrency;
           DMESTOQUE.TEstoque.FieldByName('VENDVARV').AsCurrency:=TItemPC.FieldByName('VENDVARV').AsCurrency;
           DMESTOQUE.TEstoque.FieldByName('VALUNIT').AsCurrency:=TItemPC.FieldByName('VALUNIT').AsCurrency;
           DMESTOQUE.TEstoque.FieldByName('VLRCOMPSD').AsCurrency:=TItemPC.FieldByName('VALUNIT').AsCurrency;
           DMESTOQUE.TEstoque.FieldByName('VLRUNITCOMP').AsCurrency:=TItemPC.FieldByName('VALUNIT').AsCurrency;
           DMESTOQUE.TEstoque.FieldByName('VALREP').AsCurrency:=TItemPC.FieldByName('VALREP').AsCurrency;
           DMESTOQUE.TEstoque.FieldByName('VALCUSTO').AsCurrency:=TItemPC.FieldByName('VALCUSTO').AsCurrency;
           DMESTOQUE.TEstoque.FieldByName('AVVPROAT').AsCurrency:=TItemPC.FieldByName('AVVPROAT').AsCurrency;
           DMESTOQUE.TEstoque.FieldByName('AVPPROAT').AsCurrency:=TItemPC.FieldByName('AVPPROAT').AsCurrency;
           DMESTOQUE.TEstoque.FieldByName('AVVPROVAR').AsCurrency:=TItemPC.FieldByName('AVVPROVAR').AsCurrency;
           DMESTOQUE.TEstoque.FieldByName('AVPPROVAR').AsCurrency:=TItemPC.FieldByName('AVPPROVAR').AsCurrency;
           DMESTOQUE.TEstoque.FieldByName('LUCRATIVIDADE').AsCurrency:=TItemPC.FieldByName('LUCRATIVIDADE').AsCurrency;
           DMESTOQUE.TEstoque.FieldByName('COEFDIV').AsCurrency:=TItemPC.FieldByName('COEFDIV').AsCurrency;
           DMESTOQUE.TEstoque.FieldByName('VALOREST').AsCurrency:=TItemPC.FieldByName('VALOREST').AsCurrency;
           DMESTOQUE.TEstoque.FieldByName('OUTROS').AsCurrency:=TItemPC.FieldByName('OUTROS').AsCurrency;
           DMESTOQUE.TEstoque.FieldByName('VLRUNITCOMP').AsCurrency:=TItemPC.FieldByName('VLRUNITCOMP').AsCurrency;
           DMESTOQUE.TEstoque.FieldByName('INDICE').AsCurrency:=TItemPC.FieldByName('INDICE').AsCurrency;
           DMESTOQUE.TEstoque.FieldByName('VLRBONIFIC').AsCurrency:=TItemPC.FieldByName('VLRBONIFIC').AsCurrency;
           DMESTOQUE.TEstoque.Post;
			//SUBPRODUTO
           DMESTOQUE.TSubProd.FieldByName('COD_SUBPRODUTO').AsCurrency:=TItemPC.FieldByName('COD_SUBPROD').AsCurrency;
           DMESTOQUE.TSubProd.FieldByName('CODCOMPOSTO').AsString:=TItemPC.FieldByName('CODCOMPOSTO').AsString;
           DMESTOQUE.TSubProd.FieldByName('DESCRICAO').AsString:=TItemPC.FieldByName('DESCRICAO').AsString;
           DMESTOQUE.TSubProd.FieldByName('CODBARRA').AsString:=TItemPC.FieldByName('CODBARRA').AsString;
           DMESTOQUE.TSubProd.FieldByName('CODPRODFABR').AsString:=TItemPC.FieldByName('CODPRODFABR').AsString;
           DMESTOQUE.TSubProd.FieldByName('FABRICANTE').AsString:=TItemPC.FieldByName('FABRICANTE').AsString;
           DMESTOQUE.TSubProd.FieldByName('MARCA').AsString:=TItemPC.FieldByName('MARCA').AsString;
           DMESTOQUE.TSubProd.FieldByName('LOCALESTANTE').AsString:=TItemPC.FieldByName('LOCALESTANTE').AsString;
           DMESTOQUE.TSubProd.FieldByName('COD_INTERNO').AsString:=TItemPC.FieldByName('COD_INTERNO').AsString;
           DMESTOQUE.TSubProd.FieldByName('QTDATC').AsString:=TItemPC.FieldByName('QTDATC').AsString;
           DMESTOQUE.TSubProd.FieldByName('COD_UNIDCOMPRA').AsString:='1';
           DMESTOQUE.TSubProd.FieldByName('COD_UNIDVENDA').AsString:='1';
           DMESTOQUE.TSubProd.FieldByName('COD_CST').AsString:=TItemPC.FieldByName('COD_CST').AsString;
           DMESTOQUE.TSubProd.FieldByName('CONTRINT').AsString:=TItemPC.FieldByName('CONTRINT').AsString;
           DMESTOQUE.TSubProd.FieldByName('COR').AsString:=TItemPC.FieldByName('COR').AsString;
           DMESTOQUE.TSubProd.FieldByName('CLASSIFICACAO').AsString:=TItemPC.FieldByName('CLASSIFICACAO').AsString;
           DMESTOQUE.TSubProd.FieldByName('DESCCUPOM').AsString:=TItemPC.FieldByName('DESCCUPOM').AsString;
           DMESTOQUE.TSubProd.Post;
           DMESTOQUE.TransacEstoque.CommitRetaining;
           DMESTOQUE.TransacEstoque.CommitRetaining;
			//VERIFICA SE JA EXISTE ITENS DE PEDC COM O MESMO CODIGO
           DMENTRADA.TItemPC.Close;
           DMENTRADA.TItemPC.SQL.Clear;
           DMENTRADA.TItemPC.SQL.Add(' select * from itenspedc where itenspedc.cod_itenspedc=:CODITEN ');
			DMENTRADA.TItemPC.ParamByName('CODITEN').AsString:=TItemPC.FieldByName('COD_ITENSPEDC').AsString;
 			DMENTRADA.TItemPC.Open;
           If Not DMENTRADA.TItemPC.IsEmpty
           Then Begin
               XLinha:='PRODUTO: '+TItemPC.FieldByName('CONTRINT').AsString+' QTD: '+TItemPC.FieldByName('QTDEPROD').AsString +' DATA: '+TItemPC.FieldByName('DATAITEM').AsString;
          	    Writeln(XTexto, XLinha);
           End
           Else Begin
      		    //INSERE ITENS PARA O PEDIDO DE COMPRA JA EXISTENTE
               DMENTRADA.TItemPC.Insert;
               DMENTRADA.TItemPC.FieldByName('COD_ITENSPEDC').AsInteger:=TItemPC.FieldByName('cod_itenspedc').AsInteger;
               DMENTRADA.TItemPC.FieldByName('ALIQIPI').AsCurrency:=TItemPC.FieldByName('ALIQIPI').AsCurrency;
               DMENTRADA.TItemPC.FieldByName('VLRIPI').AsCurrency:=TItemPC.FieldByName('VLRIPI').AsCurrency;
               DMENTRADA.TItemPC.FieldByName('ALIQICMS').AsCurrency:=TItemPC.FieldByName('ICMSITEM').AsCurrency;
               DMENTRADA.TItemPC.FieldByName('FRETE').AsCurrency:=TItemPC.FieldByName('FRETEITEM').AsCurrency;
               DMENTRADA.TItemPC.FieldByName('EMBPROD').AsCurrency:=TItemPC.FieldByName('EMBPROD').AsCurrency;
               DMENTRADA.TItemPC.FieldByName('COD_PEDCOMPRA').AsString:=EdPedc.TEXT;
               DMENTRADA.TItemPC.FieldByName('DATA').AsString:=TItemPC.FieldByName('DATAITEM').AsString;
               DMENTRADA.TItemPC.FieldByName('COD_ESTOQUE').AsInteger:=TItemPC.FieldByName('COD_ESTOQUE').AsInteger;
               DMENTRADA.TItemPC.FieldByName('QTDEPROD').AsCurrency:=TItemPC.FieldByName('QTDEPROD').AsCurrency;
               DMENTRADA.TItemPC.FieldByName('DESCPRO').AsCurrency:=TItemPC.FieldByName('DESCPRO').AsCurrency;
               DMENTRADA.TItemPC.FieldByName('VALUNIT').AsCurrency:=TItemPC.FieldByName('VALUNIT').AsCurrency;
               DMENTRADA.TItemPC.FieldByName('VALORTOTAL').AsCurrency:=TItemPC.FieldByName('VALORTOTAL').AsCurrency;
               DMENTRADA.TItemPC.Post;
               //Atualiza estoque
               DMESTOQUE.TEstoque.Close;
               DMESTOQUE.TEstoque.SQL.Clear;
               DMESTOQUE.TEstoque.SQL.Add(' select * from estoque Where estoque.cod_estoque=:CODESTOQUE ');
               DMESTOQUE.TEstoque.ParamByName('CODESTOQUE').AsInteger:=TItemPC.FieldByName('COD_ESTOQUE').AsInteger;
               DMESTOQUE.TEstoque.Open;
               DMENTRADA.IBT.CommitRetaining;
               DMESTOQUE.TransacEstoque.CommitRetaining;
           End;
           TItemPC.Next;
		End;
    End;
End;

Procedure TFExpImp.HabPainel(Painel:Integer);//Trabalha paineis em relação tabcontrol
Begin
	 //desabilita paineis
	 PImp.Visible:=False;
	 Pexp.Visible:=False;
    PBalanca.Visible:=False;
    PMobile.Visible:=False;
	 //DESABILITA BOTÕES
    BtnExp.Color:=$00D1D1D1;
    BtnExp.Font.Color:=clWindowText;
    BtnImp.Color:=$00D1D1D1;
    BtnImp.Font.Color:=clWindowText;
    BtnBalanca.Color:=$00D1D1D1;
    BtnBalanca.Font.Color:=clWindowText;
    BtnMobile.Color:=$00D1D1D1;
    BtnMobile.Font.Color:=clWindowText;
    BtnPDV.Color := $00D1D1D1;
    BtnPDV.Font.Color :=clWindowText;
    Case painel of
        0: Begin
            Pexp.Visible:=TRUE;
            Pexp.BringToFront;
            BtnExp.Color:=$00996633;
            BtnExp.Font.Color:=clWhite;
           end;
        1: Begin
            PImp.Visible:=TRUE;
            PImp.BringToFront;
            BtnImp.Color:=$00996633;
            BtnImp.Font.Color:=clWhite;
           end;
        2: Begin
            PBalanca.Visible:=TRUE;
            PBalanca.BringToFront;
            BtnBalanca.Color:=$00996633;
            BtnBalanca.Font.Color:=clWhite;
           end;
        3: Begin
            PMobile.Visible := true;
            PErros.Visible:=False;
            PMobile.BringToFront;
            BtnMobile.Color:=$00996633;
            BtnMobile.Font.Color:=clWhite;
            BtnReceber.Visible:=False;
            BtnTrabalharArquivos.Visible:=False;
           end;
        4: Begin
            PPDV.Visible := true;
            PPDV.BringToFront;
            BtnPDV.Color:=$00996633;
            BtnPDV.Font.Color:=clWhite;
           end;
        5: Begin
        	 PSinc.Visible := True;
            Psinc.BringToFront;
            FlatButton2.Visible := True;
            Label16.Visible := True;
           end;
    End;
End;
procedure TFExpImp.BtnBDestinoClick(Sender: TObject);
begin
  inherited;
	If Open.Execute then
  	begin
       EdDestino.Text:=Open.FileName;
  	end;
end;

procedure TFExpImp.BitBtn1Click(Sender: TObject);
begin
  inherited;
	If EdDestino.Text=''
   Then Begin
       BtnBDestino.SetFocus;
       MessageDlg('INFORME O BANCO DE DESTINO!', mtWarning, [mbOK], 0);
       EXIT;
   End;
   If UpperCase(EdDestino.Text)=UpperCase(FMenu.XTRILL)
   Then Begin
   	MessageDlg('A T E N Ç Ã O ! ! !'+#13+#10+''+#13+#10+'O BANCO DE DADOS DE DESTINO NÃO PODE SER O MESMO EM USO PELA EMPRESA!', mtWarning, [mbOK], 0);
       BtnBDestino.SetFocus;
       Exit;
   End;
   //If MessageDlg('Continuar a exportação? ', mtConfirmation, [mbYes, mbNo], 0) = mrYes
   If Mensagem('Confirmação do usuário', 'Marcar os pedidos de compra como exportados?', '', 2, 3, False, 'c')=2   
   Then Begin
   	If CBExpPendDrive.Checked=True
       Then Begin
       	If Conecta_BancoDados(EdDestino.Text)=True Then
               ExpPenDrive
           Else
				Mensagem('INFORMAÇÃO AO USUÁRIO', 'A Exportação não será realizada!'+#13+'O Banco de dados para exportação não foi conectado.', '', 1, 1, False, 'i');
  		End;
   End;
end;

procedure TFExpImp.BtnExpClick(Sender: TObject);
begin
  inherited;
   HabPainel(0);
end;

procedure TFExpImp.BtnImpClick(Sender: TObject);
begin
  inherited;
   HabPainel(1);
end;

procedure TFExpImp.FormActivate(Sender: TObject);
begin
  inherited;
	Caption:='Exportação/Importação';  
   HabPainel(0);
   EdDT1.Text:=DateToStr(Date());
   EdDT2.Text:=DateToStr(Date());
   //EdImpDT1.Text:=DateToStr(Date());
  // EdImpDT2.Text:=DateToStr(Date());
   PBMobile.Visible := false;
   PBMobile.SendToBack;
   PBImportacao.Visible := false;
   
end;

procedure TFExpImp.BtnBOrigemClick(Sender: TObject);
begin
  inherited;
	If Open.Execute then
  	begin
       EdOrigem.Text:=Open.FileName;
  	end;
end;

// Função para importar pedidos do pendrive
Function TFExpImp.ImpPenDrive: Boolean;
var
XTotal: real;
XCont: Integer;
begin
   //- 19/02/2009: abaixo foi comentado o código q fazia a exportação da loja pamela porque no panorama
   //- 19/02/2009: não é feito controle de pedidos de compra nem de estoque, então não será necessário
   //- 19/02/2009: exportar os pedidos de compra, apenas os novos produtos cadastrados portanto tem código novo após esta parte

 {  // DADOS DA TABELA PEDIDO DE COMPRA
   DMEXPORTA.Alx.Close;
   DMEXPORTA.Alx.SQL.Clear;
   DMEXPORTA.Alx.SQL.Add('select * from pedcompra');
   DMEXPORTA.Alx.SQL.Add('where ((pedcompra.export <> ' + #39 + 'S' + #39+') or ( pedcompra.export is null))');
   DMEXPORTA.Alx.SQL.Add('and (PEDCOMPRA.SITUACAO = '+ #39 + 'FECHADO' + #39 +')');
   DMEXPORTA.Alx.Open;

   // DADOS DA TABELA PEDCOMPRA para barra de progressao
   DMEXPORTA.Alx2.Close;
   DMEXPORTA.Alx2.SQL.Clear;
   DMEXPORTA.Alx2.SQL.Add('select count(pedcompra.cod_pedcomp) AS CONTADOR from pedcompra');
   DMEXPORTA.Alx2.SQL.Add('where ((pedcompra.export <> ' + #39 + 'S' + #39+') or ( pedcompra.export is null))');
   DMEXPORTA.Alx2.SQL.Add('and (PEDCOMPRA.SITUACAO = '+ #39 + 'FECHADO' + #39 +')');
   DMEXPORTA.Alx2.Open;

   XContador := 0;
   PBImportacao.Min := 0;
   PBImportacao.Max := DMEXPORTA.Alx2.FieldByname('contador').AsInteger;

   // verifica se existe pedidos de compra que nao foram importados do servidor
   If Not DMEXPORTA.Alx.IsEmpty
   Then Begin
       DMEXPORTA.Alx.First;

       // banco local
       DMENTRADA.TPedC.Close;
       DMENTRADA.TPedC.SQL.Clear;
       DMENTRADA.TPedC.SQL.Add('select * from pedcompra');
       DMENTRADA.TPedC.Open;

       PBImportacao.Visible := true;
       PBImportacao.BringToFront;

       // enquanto nao for o final dos pedidos de compra
       While Not DMEXPORTA.Alx.Eof do
       begin

           // posição do progress bar
           PBImportacao.Position := XContador;

           // MAIOR CODIGO DA TABELA PEDCOMPRA
           XCODPKMESTRE := InserReg(DMENTRADA.TPedC,'PEDCOMPRA','COD_PEDCOMP');

           // total do pedido de compra importado
           Xtotal := 0;

           // SELECIONA OS ITENS DO PEDIDO PARA MULTIPLICAR O VALOR UNITARIO * A QTDEEXP
           DMEXPORTA.Alx2.Close;
           DMEXPORTA.Alx2.SQL.Clear;
           DMEXPORTA.Alx2.SQL.Add('SELECT * FROM ITENSPEDC WHERE ITENSPEDC.COD_PEDCOMPRA = :CODIGO');
           DMEXPORTA.Alx2.ParamByName('CODIGO').AsInteger := DMEXPORTA.Alx.FieldByname('cod_pedcomp').AsInteger;
           DMEXPORTA.Alx2.Open;

           If Not DMEXPORTA.Alx2.IsEmpty
           Then Begin
               // passa multiplicando e somando os valores de cada registro para inserir o valor final no pedido de compra
               DMEXPORTA.Alx2.First;
               While Not DMEXPORTA.Alx2.Eof do
               Begin
                   XTotal := XTotal + (DMEXPORTA.Alx2.FieldByname('qtdeexp').AsFloat * DMEXPORTA.Alx2.FieldByname('VALUNIT').AsCurrency);

               DMEXPORTA.Alx2.Next;
               End;
           End;

           // TABELA PEDIDO DE COMPRA
           DMENTRADA.TPedC.FieldByName('vendedor').AsString := DMEXPORTA.Alx.FieldByName('vendedor').AsString;
           DMENTRADA.TPedC.FieldByName('valor').AsCurrency := XTotal;
           DMENTRADA.TPedC.FieldByName('dtpedcomp').AsString := DMEXPORTA.Alx.FieldByName('dtpedcomp').AsString;
           DMENTRADA.TPedC.FieldByName('desconto').AsString := DMEXPORTA.Alx.FieldByName('desconto').AsString;
           DMENTRADA.TPedC.FieldByName('prazoentr').AsString := DMEXPORTA.Alx.FieldByName('prazoentr').AsString;
           DMENTRADA.TPedC.FieldByName('obs').AsString := DMEXPORTA.Alx.FieldByName('obs').AsString;
           DMENTRADA.TPedC.FieldByName('situacao').AsString := 'ABERTO';
           DMENTRADA.TPedC.FieldByName('numped').AsInteger := DMEXPORTA.Alx.FieldByName('numped').AsInteger;
           DMENTRADA.TPedC.FieldByName('vlrpcomis').AsCurrency := DMEXPORTA.Alx.FieldByName('vlrpcomis').AsCurrency;
           DMENTRADA.TPedC.FieldByName('percomis').AsCurrency := DMEXPORTA.Alx.FieldByName('percomis').AsCurrency;
           DMENTRADA.TPedC.FieldByName('dtfech').AsString := DMEXPORTA.Alx.FieldByName('dtfech').AsString;
           DMENTRADA.TPedC.FieldByName('numdev').AsString := DMEXPORTA.Alx.FieldByName('numdev').AsString;
           DMENTRADA.TPedC.FieldByName('fisco').AsString := DMEXPORTA.Alx.FieldByName('fisco').AsString;
           DMENTRADA.TPedC.FieldByName('numfiscal').AsString := DMEXPORTA.Alx.FieldByName('numfiscal').AsString;
           DMENTRADA.TPedC.FieldByName('descmoe').AsString := DMEXPORTA.Alx.FieldByName('descmoe').AsString;
           DMENTRADA.TPedC.FieldByName('cobranca').AsString := DMEXPORTA.Alx.FieldByName('cobranca').AsString;

           // seleciona forma de pagamento da tabela formpag q tenha o mesmo codigo do pedido de compra do servidor
           DMEXPORTA.Alx4.Close;
           DMEXPORTA.Alx4.SQL.Clear;
           DMEXPORTA.Alx4.SQL.Add('select * from formpag');
           DMEXPORTA.Alx4.SQL.Add('where (formpag.cod_formpag = :codigo)');
           DMEXPORTA.Alx4.SQL.Add('and (formpag.descricao <> ' + #39 + '' + #39 + ')');
           DMEXPORTA.Alx4.ParamByName('codigo').AsInteger := DMEXPORTA.Alx.FieldByname('cod_formpag').AsInteger;
           DMEXPORTA.Alx4.Open;

           // seleciona forma de pagamento que tenha a mesma descricao
           DMFINANC.TFormPag.Close;
           DMFINANC.TFormPag.SQL.Clear;
           DMFINANC.TFormPag.SQL.Add('select * from formpag');
           DMFINANC.TFormPag.SQL.Add('where (upper(formpag.descricao) like upper('+#39 + DMEXPORTA.Alx4.FieldByname('descricao').AsString + #39 + '))');
           DMFINANC.TFormPag.SQL.Add('and (formpag.descricao <> ' + #39 + '' + #39 + ')');
           DMFINANC.TFormPag.Open;

           If DMFINANC.TFormPag.IsEmpty
           Then Begin
               // proximo codigo da forma de pagamento
               XAtual := InserReg(DMFINANC.TFormPag,'FORMPAG','COD_FORMPAG');
           End
           Else Begin
               DMFINANC.TFormPag.Edit;
           End;

           // tabela forma de pagamento
           DMFINANC.TFormPag.FieldByName('COD_LOJA').AsString := FMenu.LCODLOJA.Caption;
           DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString := DMEXPORTA.Alx4.FieldByname('descricao').AsString;
           DMFINANC.TFormPag.FieldByName('DESCfisc').AsString := DMEXPORTA.Alx4.FieldByname('descfisc').AsString;
           DMFINANC.TFormPag.FieldByName('primparcela').AsInteger := DMEXPORTA.Alx4.FieldByname('primparcela').AsInteger;
           DMFINANC.TFormPag.FieldByName('intervalo').AsInteger := DMEXPORTA.Alx4.FieldByname('intervalo').AsInteger;
           DMFINANC.TFormPag.FieldByName('quantparcela').AsInteger := DMEXPORTA.Alx4.FieldByname('quantparcela').AsInteger;
           DMFINANC.TFormPag.FieldByName('juroaplic').AsFloat := DMEXPORTA.Alx4.FieldByname('juroaplic').AsFloat;
           DMFINANC.TFormPag.FieldByName('mediadias').AsInteger := DMEXPORTA.Alx4.FieldByname('mediadias').AsInteger;
           DMFINANC.TFormPag.FieldByName('tipo').AsString := DMEXPORTA.Alx4.FieldByname('tipo').AsString;
           DMFINANC.TFormPag.Post;

           // TABELA PEDCOMPRA LOCAL RECEBENDO O CODIGO DA FORMA DE PGTO
           DMENTRADA.TPedC.FieldByName('COD_FORMPAG').AsInteger := DMFINANC.TFormPag.FieldByName('cod_formpag').AsInteger;

           // DADOS DA TABELA FORNECEDOR E PESSOA DO SERVIDOR ONDE AMBOS TENHAM O MESMO CODIGO PESSOA
           DMEXPORTA.Alx3.Close;
           DMEXPORTA.Alx3.SQL.Clear;
           DMEXPORTA.Alx3.SQL.Add('select fornecedor.cod_fornec, fornecedor.cod_pessoa, pessoa.cod_pessoa, pessoa.cpfcnpj, fornecedor.cod_interno, fornecedor.data_cad, fornecedor.tipo_fornec,');
           DMEXPORTA.Alx3.SQL.Add('fornecedor.prazo_entrega, fornecedor.cod_transport, fornecedor.tipo, fornecedor.obs,');
           DMEXPORTA.Alx3.SQL.Add('pessoa.nome, pessoa.endereco, pessoa.bairro, pessoa.cod_cidade, pessoa.cep, pessoa.data_ini, pessoa.dtnasc, pessoa.cod_regiao, pessoa.cod_natural, pessoa.telrel,');
           DMEXPORTA.Alx3.SQL.Add('pessoa.diaaniver, pessoa.proximidade, pessoa.vlrcredito');
           DMEXPORTA.Alx3.SQL.Add('from fornecedor');
           DMEXPORTA.Alx3.SQL.Add('left join pessoa on fornecedor.cod_pessoa = pessoa.cod_pessoa');
           DMEXPORTA.Alx3.SQL.Add('where fornecedor.cod_fornec = :codigo');
           DMEXPORTA.Alx3.ParamByName('codigo').AsInteger := DMEXPORTA.Alx.FieldByname('cod_fornec').AsInteger;
           DMEXPORTA.Alx3.Open;

           // DADOS LOCAL DA TABELA PESSOA QUE TENHA O MESMO CPFCNPJ OU O NOME DA TABELA PESSOA DO SERVIDOR
           DMPESSOA.TALX.Close;
           DMPESSOA.TALX.SQL.Clear;
           DMPESSOA.TALX.SQL.Add('select pessoa.cod_pessoa, pessoa.cpfcnpj, fornecedor.cod_pessoa, fornecedor.cod_fornec from fornecedor ');
           DMPESSOA.TALX.SQL.Add('left join pessoa on fornecedor.cod_pessoa = pessoa.cod_pessoa');
           DMPESSOA.TALX.SQL.Add('where (pessoa.cpfcnpj = :cpfcnpj)');
           DMPESSOA.TALX.ParamByName('cpfcnpj').AsString := DMEXPORTA.Alx3.FieldByname('cpfcnpj').AsString;
           DMPESSOA.TALX.Open;

           // insere fornecedor caso nao exista no banco local
           If DMPESSOA.TALX.IsEmpty
           Then Begin

               // insere novo codigo do fornecedor
               XMov := InserReg(DMPESSOA.TFornecedor,'FORNECEDOR','COD_FORNEC');

               // insere novo codigo de pessoa
               Xcod_pessoa := InserReg(DMPESSOA.TPessoa,'PESSOA','COD_PESSOA');

               // TABELA FORNECEDOR
               DMPESSOA.TFornecedor.FieldByName('cod_pessoa').AsInteger := Xcod_pessoa;
           End
           Else Begin
               FiltraTabela(DMPESSOA.TFornecedor,'FORNECEDOR','COD_FORNEC',DMPESSOA.TALX.FieldByName('cod_fornec').AsString,'');

               DMPESSOA.TFornecedor.Edit;
               DMPESSOA.TPessoa.Edit;

               // TABELA PEDCOMPRA LOCAL
               DMENTRADA.TPedC.FieldByName('cod_fornec').AsInteger := DMPESSOA.TALX.FieldByName('cod_fornec').AsInteger;

           End;

           DMPESSOA.TFornecedor.FieldByName('cod_interno').AsString := DMEXPORTA.Alx3.FieldByname('cod_interno').AsString;
           DMPESSOA.TFornecedor.FieldByName('data_cad').AsString := DMEXPORTA.Alx3.FieldByname('data_cad').AsString;
           DMPESSOA.TFornecedor.FieldByName('tipo_fornec').AsString := DMEXPORTA.Alx3.FieldByname('tipo_fornec').AsString;
           DMPESSOA.TFornecedor.FieldByName('prazo_entrega').AsString := DMEXPORTA.Alx3.FieldByname('prazo_entrega').AsString;
           DMPESSOA.TFornecedor.FieldByName('cod_transport').AsString := DMEXPORTA.Alx3.FieldByname('cod_transport').AsString;
           DMPESSOA.TFornecedor.FieldByName('tipo').AsString := DMEXPORTA.Alx3.FieldByname('tipo').AsString;
           DMPESSOA.TFornecedor.FieldByName('obs').AsString := DMEXPORTA.Alx3.FieldByname('obs').AsString;
           DMPESSOA.TFornecedor.Post;

           // TABELA PEDCOMPRA LOCAL
           DMENTRADA.TPedC.FieldByName('cod_fornec').AsInteger := DMPESSOA.TFornecedor.FieldByName('cod_fornec').AsInteger;
           DMENTRADA.TPedC.Post;

           // TABELA PESSOA
           DMPESSOA.TPessoa.FieldByName('nome').AsString := DMEXPORTA.Alx3.FieldByname('nome').AsString;
           DMPESSOA.TPessoa.FieldByName('endereco').AsString := DMEXPORTA.Alx3.FieldByname('endereco').AsString;
           DMPESSOA.TPessoa.FieldByName('bairro').AsString := DMEXPORTA.Alx3.FieldByname('bairro').AsString;
           DMPESSOA.TPessoa.FieldByName('cod_cidade').AsInteger := DMEXPORTA.Alx3.FieldByname('cod_cidade').AsInteger;
           DMPESSOA.TPessoa.FieldByName('cep').AsString := DMEXPORTA.Alx3.FieldByname('cep').AsString;
           DMPESSOA.TPessoa.FieldByName('cpfcnpj').AsString := DMEXPORTA.Alx3.FieldByname('cpfcnpj').AsString;
           DMPESSOA.TPessoa.FieldByName('data_ini').AsString := DMEXPORTA.Alx3.FieldByname('data_ini').AsString;
           DMPESSOA.TPessoa.FieldByName('dtnasc').AsString := DMEXPORTA.Alx3.FieldByname('dtnasc').AsString;
           DMPESSOA.TPessoa.FieldByName('cod_regiao').AsInteger := DMEXPORTA.Alx3.FieldByname('cod_regiao').AsInteger;
           DMPESSOA.TPessoa.FieldByName('cod_natural').AsInteger := DMEXPORTA.Alx3.FieldByname('cod_natural').AsInteger;
           DMPESSOA.TPessoa.FieldByName('telrel').AsString := DMEXPORTA.Alx3.FieldByname('telrel').AsString;
           DMPESSOA.TPessoa.FieldByName('diaaniver').AsString := DMEXPORTA.Alx3.FieldByname('diaaniver').AsString;
           DMPESSOA.TPessoa.FieldByName('proximidade').AsString := DMEXPORTA.Alx3.FieldByname('proximidade').AsString;
           DMPESSOA.TPessoa.FieldByName('vlrcredito').AsCurrency := DMEXPORTA.Alx3.FieldByname('vlrcredito').AsCurrency;
           DMPESSOA.TPessoa.Post;

           // verifica se na tabela pessoa fisica do servidor existe um codigo de pessoa igual ao cod_pessoa do fornecedor, se existir o fornecedor eh cadastrado como pessoa fisica
           DMEXPORTA.Alx5.Close;
           DMEXPORTA.Alx5.SQL.Clear;
           DMEXPORTA.Alx5.SQL.Add('SELECT * FROM PESSOAF WHERE PESSOAF.COD_PESSOA = :CODIGO');
           DMEXPORTA.Alx5.ParamByName('CODIGO').AsInteger := DMEXPORTA.Alx3.FieldByName('cod_pessoa').AsInteger;
           DMEXPORTA.Alx5.Open;

           // ou seja, se na tabela pessoa fisica do servidor foi encontrado o mesmo codigo de pessoa então eh inserido na tabela pessoa fisica local
           If Not DMEXPORTA.Alx5.IsEmpty
           Then Begin

               // verifica no banco local se existe na tabela pessoa fisica o fornecedor com o mesmo CPFCNPJ, atraves da tabela pessoa. Caso nao tiver insere senao edita
               DMPESSOA.TPessoaF.Close;
               DMPESSOA.TPessoaF.SQL.Clear;
               DMPESSOA.TPessoaF.SQL.Add('select pessoaf.cod_pessoa, pessoaf.cod_pessoaf, pessoa.cod_pessoa, pessoa.cpfcnpj, ');
               DMPESSOA.TPessoaF.SQL.Add('pessoaf.estado_civil, pessoaf.sexo, pessoaf.emp_trab, pessoaf.end_trab, pessoaf.bairro_trab, pessoaf.data_admis, pessoaf.cargo, pessoaf.rg, ');
               DMPESSOA.TPessoaF.SQL.Add('pessoaf.data_exped, pessoaf.orgao_exped, pessoaf.titulo, pessoaf.nome_conj, pessoaf.datanasc_conj,');
               DMPESSOA.TPessoaF.SQL.Add('pessoaf.rg_conj, pessoaf.cpf_conj, pessoaf.emp_conj, pessoaf.nome_pai, pessoaf.nome_mae, pessoaf.ende_filiacao, pessoaf.diaaniverconj');
               DMPESSOA.TPessoaF.SQL.Add('from pessoaf');
               DMPESSOA.TPessoaF.SQL.Add('left join pessoa on pessoaf.cod_pessoa = pessoa.cod_pessoa');
               DMPESSOA.TPessoaF.SQL.Add('where pessoa.cpfcnpj = :CPFCNPJ');
               DMPESSOA.TPessoaF.ParamByName('CPFCNPJ').AsString := DMEXPORTA.Alx3.FieldByName('cpfcnpj').AsString;
               DMPESSOA.TPessoaF.Open;

               If DMPESSOA.TPessoaF.IsEmpty
               Then Begin
                   // codigo maximo da tabela pessoaf
                   Xcod_pessoaf := InserReg(DMPESSOA.TPessoaF,'PESSOAF','COD_PESSOAF');

                   // TABELA PESSOA FISICA
                   DMPESSOA.TPessoaF.FieldByName('cod_pessoa').AsInteger := Xcod_pessoa;
               End
               Else Begin
                   DMPESSOA.TPessoaF.Edit;
               End;

               DMPESSOA.TPessoaF.FieldByName('estado_civil').AsString := DMEXPORTA.Alx5.FieldByname('estado_civil').AsString;
               DMPESSOA.TPessoaF.FieldByName('sexo').AsString := DMEXPORTA.Alx5.FieldByname('sexo').AsString;
               DMPESSOA.TPessoaF.FieldByName('emp_trab').AsString := DMEXPORTA.Alx5.FieldByname('emp_trab').AsString;
               DMPESSOA.TPessoaF.FieldByName('end_trab').AsString := DMEXPORTA.Alx5.FieldByname('end_trab').AsString;
               DMPESSOA.TPessoaF.FieldByName('bairro_trab').AsString := DMEXPORTA.Alx5.FieldByname('bairro_trab').AsString;
               DMPESSOA.TPessoaF.FieldByName('data_admis').AsString := DMEXPORTA.Alx5.FieldByname('data_admis').AsString;
               DMPESSOA.TPessoaF.FieldByName('cargo').AsString := DMEXPORTA.Alx5.FieldByname('cargo').AsString;
               DMPESSOA.TPessoaF.FieldByName('rg').AsString := DMEXPORTA.Alx5.FieldByname('rg').AsString;
               DMPESSOA.TPessoaF.FieldByName('data_exped').AsString := DMEXPORTA.Alx5.FieldByname('data_exped').AsString;
               DMPESSOA.TPessoaF.FieldByName('orgao_exped').AsString := DMEXPORTA.Alx5.FieldByname('orgao_exped').AsString;
               DMPESSOA.TPessoaF.FieldByName('titulo').AsString := DMEXPORTA.Alx5.FieldByname('titulo').AsString;
               DMPESSOA.TPessoaF.FieldByName('nome_conj').AsString := DMEXPORTA.Alx5.FieldByname('nome_conj').AsString;
               DMPESSOA.TPessoaF.FieldByName('datanasc_conj').AsString := DMEXPORTA.Alx5.FieldByname('datanasc_conj').AsString;
               DMPESSOA.TPessoaF.FieldByName('rg_conj').AsString := DMEXPORTA.Alx5.FieldByname('rg_conj').AsString;
               DMPESSOA.TPessoaF.FieldByName('cpf_conj').AsString :=DMEXPORTA.Alx5.FieldByname('cpf_conj').AsString;
               DMPESSOA.TPessoaF.FieldByName('emp_conj').AsString := DMEXPORTA.Alx5.FieldByname('emp_conj').AsString;
               DMPESSOA.TPessoaF.FieldByName('nome_pai').AsString := DMEXPORTA.Alx5.FieldByname('nome_pai').AsString;
               DMPESSOA.TPessoaF.FieldByName('nome_mae').AsString := DMEXPORTA.Alx5.FieldByname('nome_mae').AsString;
               DMPESSOA.TPessoaF.FieldByName('ende_filiacao').AsString := DMEXPORTA.Alx5.FieldByname('ende_filiacao').AsString;
//               DMPESSOA.TPessoaF.FieldByName('diaaniverconj').AsString := DMEXPORTA.Alx5.FieldByname('diaaniverconj').AsString;
               DMPESSOA.TPessoaF.post;
           End
           Else Begin

               // seleciona pessoa juridica com o mesmo cod_pessoa do servidor
               DMEXPORTA.Alx5.Close;
               DMEXPORTA.Alx5.SQL.Clear;
               DMEXPORTA.Alx5.SQL.Add('select * from pessoaj where pessoaj.cod_pessoa = :codigo');
               DMEXPORTA.Alx5.ParamByName('codigo').AsInteger := DMEXPORTA.Alx3.FieldByName('cod_pessoa').AsInteger;
               DMEXPORTA.Alx5.Open;

               // se encontrou pessoa juridica com o mesmo codigo de pessoa, a mesma eh inserida no banco local
               If Not DMEXPORTA.Alx5.IsEmpty
               Then Begin
                   // novo codigo de pessoa juridica
                   Xcod_pessoaj := InserReg(DMPESSOA.TPessoaJ,'PESSOAJ','COD_PESSOAJ');

                   DMPESSOA.TPessoaJ.fieldByName('cod_pessoa').AsInteger := Xcod_pessoa;
                   DMPESSOA.TPessoaJ.fieldByName('insc_est').asString := DMEXPORTA.Alx5.FieldByname('insc_est').AsString;
                   DMPESSOA.TPessoaJ.fieldByName('razao_social').AsString := DMEXPORTA.Alx5.FieldByname('razao_social').AsString;
                   DMPESSOA.TPessoaJ.fieldByName('insc_mun').AsString := DMEXPORTA.Alx5.FieldByname('insc_mun').AsString;
                   DMPESSOA.TPessoaJ.fieldByName('web_page').AsString := DMEXPORTA.Alx5.FieldByname('web_page').AsString;
                   DMPESSOA.TPessoaJ.Post;
               End;
           End;

           // seleciona no servidor os itens do pedido de compra
           DMEXPORTA.Alx2.Close;
           DMEXPORTA.Alx2.SQL.Clear;
           DMEXPORTA.Alx2.SQL.Add('SELECT * FROM ITENSPEDC WHERE ITENSPEDC.COD_PEDCOMPRA = :CODIGO');
           DMEXPORTA.Alx2.ParamByName('CODIGO').AsInteger := DMEXPORTA.Alx.FieldByname('cod_pedcomp').AsInteger;
           DMEXPORTA.Alx2.Open;

           If Not DMEXPORTA.Alx2.IsEmpty
           Then Begin
               // primeiro registro da tabela itenspedc do servidor
               DMEXPORTA.Alx2.First;

               // enquanto nao for o final dos itens de pedido de compra
               while not DMEXPORTA.Alx2.Eof do
               Begin

                   // seleciona dados da tabela estoque do servidor onde cod_estoque seja igual ao do item de compra
                   DMEXPORTA.TEstoque.Close;
                   DMEXPORTA.TEstoque.SQL.Clear;
                   DMEXPORTA.TEstoque.SQL.Add('select * from estoque where estoque.cod_estoque = :codigo');
                   DMEXPORTA.TEstoque.ParamByName('codigo').AsInteger := DMEXPORTA.Alx2.FieldByname('cod_estoque').AsInteger;
                   DMEXPORTA.TEstoque.Open;

                   // seleciona dados da tabela subproduto do servidor onde o codigo de subproduto da tabela estoque seja igual ao cod_subproduto da tabela subproduto
                   DMEXPORTA.TSubProd.Close;
                   DMEXPORTA.TSubProd.SQL.Clear;
                   DMEXPORTA.TSubProd.SQL.Add('select * from subproduto where subproduto.cod_subproduto = :codigo');
                   DMEXPORTA.TSubProd.ParamByName('codigo').AsInteger := DMEXPORTA.TEstoque.FieldByName('cod_subprod').AsInteger;
                   DMEXPORTA.TSubProd.Open;

                   // dados da tabela subproduto local onde a descricao seja igual ao servidor
                   DMESTOQUE.TSubProd.Close;
                   DMESTOQUE.TSubProd.SQL.Clear;
                   DMESTOQUE.TSubProd.SQL.Add('select * from subproduto ');
                   DMESTOQUE.TSubProd.SQL.Add('WHERE subproduto.codprodfabr = :codigo');
                   DMESTOQUE.TSubProd.ParamByName('codigo').AsString := DMEXPORTA.TSubProd.FieldByname('codprodfabr').AsString;
                   DMESTOQUE.TSubProd.Open;

                   If DMESTOQUE.TSubProd.IsEmpty
                   Then Begin
                       InserReg(DMESTOQUE.TSubProd,'SUBPRODUTO','COD_SUBPRODUTO');
                   End
                   Else Begin
                       DMESTOQUE.TSubProd.Edit;
                   End;

                   // seleciona dados da tabela produto do servidor onde o codigo do produto da tabela produto seja igual ao codigo de produto da tabela subproduto
                   DMEXPORTA.TProduto.Close;
                   DMEXPORTA.TProduto.SQL.Clear;
                   DMEXPORTA.TProduto.SQL.Add('select * from produto where produto.cod_produto = :codigo');
                   DMEXPORTA.TProduto.ParamByName('codigo').AsInteger := DMEXPORTA.TSubProd.FieldByname('cod_produto').AsInteger;
                   DMEXPORTA.TProduto.Open;

                   // seleciona no banco local produto que tenha a mesma descricao que o servidor
                   DMESTOQUE.TProduto.Close;
                   DMESTOQUE.TProduto.SQL.Clear;
                   DMESTOQUE.TProduto.SQL.Add('select * from produto where upper(produto.descricao) like upper('+ #39 + DMEXPORTA.TProduto.FieldByname('descricao').AsString + #39 + ')');
                   DMESTOQUE.TProduto.Open;

                   If DMESTOQUE.TProduto.IsEmpty
                   Then Begin
                       InserReg(DMESTOQUE.TProduto,'PRODUTO','COD_PRODUTO');
                   End
                   Else Begin
                       DMESTOQUE.TProduto.Edit;
                   End;

                   // seleciona dados da tabela grupoprod que tenha o mesmo codigo que o produto
                   DMEXPORTA.TGrupo.Close;
                   DMEXPORTA.TGrupo.SQL.Clear;
                   DMEXPORTA.TGrupo.SQL.Add('select * from grupoprod where grupoprod.cod_grupoprod = :codigo');
                   DMEXPORTA.TGrupo.ParamByName('codigo').AsInteger := DMEXPORTA.TProduto.FieldByname('cod_grupoprod').AsInteger;
                   DMEXPORTA.TGrupo.Open;

                   // seleciona dados da tabela grupoprod local onde a descricao seja igual ao servidor
                   DMESTOQUE.TGrupo.Close;
                   DMESTOQUE.TGrupo.SQL.Clear;
                   DMESTOQUE.TGrupo.SQL.Add('select * from grupoprod where upper(grupoprod.descricao) like upper(' + #39 + DMEXPORTA.TGrupo.FieldByname('descricao').AsString + #39 + ')');
                   DMESTOQUE.TGrupo.Open;

                   // insere novo grupo no banco local
                   If DMESTOQUE.TGrupo.IsEmpty
                   Then Begin
                       InserReg(DMESTOQUE.TGrupo,'GRUPOPROD','COD_GRUPOPROD');
                   End
                   Else Begin
                       DMESTOQUE.TGrupo.Edit;
                   End;

                   DMESTOQUE.TGrupo.FieldByName('DESCRICAO').AsString := DMEXPORTA.TGrupo.FieldByName('descricao').AsString;
                   DMESTOQUE.TGrupo.FieldByName('COD_INTERNO').AsString := DMEXPORTA.TGrupo.FieldByName('cod_interno').AsString;
                   DMESTOQUE.TGrupo.FieldByName('TIPO').AsString := DMEXPORTA.TGrupo.FieldByName('tipo').AsString;
                   DMESTOQUE.TGrupo.Post;

                   // seleciona dados da tabela "subgrupoprod" do servifor onde o codigo seja igual ao produto
                   DMEXPORTA.TSubgru.Close;
                   DMEXPORTA.TSubgru.SQL.Clear;
                   DMEXPORTA.TSubgru.SQL.Add('select * from subgrupoprod where subgrupoprod.cod_subgrupoprod = :codigo');
                   DMEXPORTA.TSubgru.ParamByName('codigo').AsInteger := DMEXPORTA.TProduto.FieldByname('cod_subgrupoprod').AsInteger;
                   DMEXPORTA.TSubgru.Open;

                   // seleciona dadoa da tabela "subgrupoprod" onde a descricao seja a mesma que o servidor
                   DMESTOQUE.TSubgru.Close;
                   DMESTOQUE.TSubgru.SQL.Clear;
                   DMESTOQUE.TSubgru.SQL.Add('select * from subgrupoprod where upper(subgrupoprod.descricao) like upper(' + #39 + DMEXPORTA.TSubgru.FieldByname('descricao').AsString + #39 + ')' );
                   DMESTOQUE.TSubgru.Open;

                   // insere novo subgrupo no banco local
                   If DMESTOQUE.TSubgru.IsEmpty
                   Then Begin
                       InserReg(DMESTOQUE.TSubgru,'SUBGRUPOPROD','COD_SUBGRUPOPROD');
                   End
                   Else Begin
                       DMESTOQUE.TSubgru.Edit;
                   End;

                   DMESTOQUE.TSubgru.FieldByName('COD_INTERNO').AsString := DMEXPORTA.TSubgru.FieldByname('cod_interno').AsString;
                   DMESTOQUE.TSubgru.FieldByName('DESCRICAO').AsString := DMEXPORTA.TSubgru.FieldByname('descricao').AsString;
                   DMESTOQUE.TSubgru.FieldByName('TIPO').AsString := DMEXPORTA.TSubgru.FieldByname('tipo').AsString;
                   DMESTOQUE.TSubgru.Post;

                   // DADOS DA TABELA CST QUE TENHA O MESMO CODIGO QUE O PRODUTO POSSUI
                   DMEXPORTA.TCst.Close;
                   DMEXPORTA.TCst.SQL.Clear;
                   DMEXPORTA.TCst.SQL.Add('SELECT * FROM CST WHERE (CST.COD_CST = :CODIGO)');
                   DMEXPORTA.TCst.ParamByName('CODIGO').AsInteger := DMEXPORTA.TSubProd.FieldByname('cod_CST').AsInteger;
                   DMEXPORTA.TCst.Open;

                   // DADOS DA TABELA CST LOCAL QUE TENHA A MESMA DESCRICAO QUE A TABELA CST DO SERVIDOR
                   DMESTOQUE.TCST.Close;
                   DMESTOQUE.TCST.SQL.Clear;
                   DMESTOQUE.TCST.SQL.Add('SELECT * FROM CST WHERE (UPPER(CST.DESCRICAO) LIKE UPPER(' + #39 + DMEXPORTA.TCst.FIELDBYNAME('DESCRICAO').AsString + #39 + '))');
                   DMESTOQUE.TCST.Open;

                   // INSERINDO DADOS NA TABELA CST LOCAL
                   If (DMESTOQUE.TCST.IsEmpty) and (DMEXPORTA.TCst.FieldByName('descricao').AsString <> '')
                   Then Begin
                       InserReg(DMESTOQUE.TCST,'CST','COD_CST');
                   End
                   Else Begin
                       DMESTOQUE.TCST.Edit;
                   End;

                   DMESTOQUE.TCST.FieldByName('DESCRICAO').AsString := DMEXPORTA.TCst.FieldByName('descricao').AsString;
                   DMESTOQUE.TCST.FieldByName('COD_SIT_TRIB').AsString := DMEXPORTA.TCst.FieldByName('COD_SIT_TRIB').AsString;
                   DMESTOQUE.TCST.FieldByName('INDICEECF').AsString := DMEXPORTA.TCst.FieldByName('INDICEECF').AsString;
                   DMESTOQUE.TCST.Post;

                   DMESTOQUE.TProduto.FieldByName('COD_INTERNO').AsString := DMEXPORTA.TProduto.FieldByname('COD_INTERNO').AsString;
                   DMESTOQUE.TProduto.FieldByName('DESCRICAO').AsString := DMEXPORTA.TProduto.FieldByname('DESCRICAO').AsString;
                   DMESTOQUE.TProduto.FieldByName('APLICACAO').AsString := DMEXPORTA.TProduto.FieldByname('APLICACAO').AsString;
                   DMESTOQUE.TProduto.FieldByName('COD_SUBGRUPOPROD').AsString := DMESTOQUE.TSubgru.FieldByName('COD_SUBGRUPOPROD').AsString;
                   DMESTOQUE.TProduto.FieldByName('COD_GRUPOPROD').AsString := DMESTOQUE.TGrupo.FieldByName('COD_GRUPOPROD').AsString;
                   DMESTOQUE.TProduto.FieldByName('COD_LOJA').AsString := FMenu.LCODLOJA.Caption;
                   DMESTOQUE.TProduto.FieldByName('VENDVISTA').AsString := DMEXPORTA.TProduto.FieldByname('VENDVISTA').AsString;
                   DMESTOQUE.TProduto.FieldByName('VENDPRAZO').AsString := DMEXPORTA.TProduto.FieldByname('VENDPRAZO').AsString;
                   DMESTOQUE.TProduto.FieldByName('CUSTOVENDA').AsString := DMEXPORTA.TProduto.FieldByname('CUSTOVENDA').AsString;
                   DMESTOQUE.TProduto.FieldByName('COMPVISTA').AsString := DMEXPORTA.TProduto.FieldByname('COMPVISTA').AsString;
                   DMESTOQUE.TProduto.FieldByName('COMPPRAZO').AsString := DMEXPORTA.TProduto.FieldByname('COMPPRAZO').AsString;
                   DMESTOQUE.TProduto.FieldByName('QTDCOMP').AsString := DMEXPORTA.TProduto.FieldByname('QTDCOMP').AsString;
                   DMESTOQUE.TProduto.FieldByName('QTDVEND').AsString := DMEXPORTA.TProduto.FieldByname('QTDVEND').AsString;
                   DMESTOQUE.TProduto.POST;

                   // SUBPRODUTO
                   DMESTOQUE.TSubProd.FieldByName('CODCOMPOSTO').AsString := DMEXPORTA.TSubProd.FieldByName('CODCOMPOSTO').AsString;
                   DMESTOQUE.TSubProd.FieldByName('DESCRICAO').AsString := DMEXPORTA.TSubProd.FieldByName('DESCRICAO').AsString;
                   DMESTOQUE.TSubProd.FieldByName('CODBARRA').AsString := DMEXPORTA.TSubProd.FieldByName('CODBARRA').AsString;
                   DMESTOQUE.TSubProd.FieldByName('CODPRODFABR').AsString := DMEXPORTA.TSubProd.FieldByName('CODPRODFABR').AsString;
                   DMESTOQUE.TSubProd.FieldByName('FABRICANTE').AsString := DMEXPORTA.TSubProd.FieldByName('FABRICANTE').AsString;
                   DMESTOQUE.TSubProd.FieldByName('MARCA').AsString := DMEXPORTA.TSubProd.FieldByName('MARCA').AsString;
                   DMESTOQUE.TSubProd.FieldByName('QUANTGARANTIA').AsString := DMEXPORTA.TSubProd.FieldByName('QUANTGARANTIA').AsString;
                   DMESTOQUE.TSubProd.FieldByName('TIPOGARANTIA').AsString := DMEXPORTA.TSubProd.FieldByName('TIPOGARANTIA').AsString;
                   DMESTOQUE.TSubProd.FieldByName('LOCALESTANTE').AsString := DMEXPORTA.TSubProd.FieldByName('LOCALESTANTE').AsString;
                   DMESTOQUE.TSubProd.FieldByName('ATIVO').AsString := DMEXPORTA.TSubProd.FieldByName('ATIVO').AsString;
                   DMESTOQUE.TSubProd.FieldByName('IPIPROD').AsString := DMEXPORTA.TSubProd.FieldByName('IPIPROD').AsString;
                   DMESTOQUE.TSubProd.FieldByName('PESOLIQ').AsString := DMEXPORTA.TSubProd.FieldByName('PESOLIQ').AsString;
                   DMESTOQUE.TSubProd.FieldByName('PESOBRUTO').AsString := DMEXPORTA.TSubProd.FieldByName('PESOBRUTO').AsString;

                   DMESTOQUE.TSubProd.FieldByName('COD_PRODUTO').AsString := DMESTOQUE.TProduto.FieldByName('cod_produto').AsString;

                   DMESTOQUE.TSubProd.FieldByName('COD_INTERNO').AsString := DMEXPORTA.TSubProd.FieldByName('COD_INTERNO').AsString;
                   DMESTOQUE.TSubProd.FieldByName('MOTIVO').AsString := DMEXPORTA.TSubProd.FieldByName('MOTIVO').AsString;
                   DMESTOQUE.TSubProd.FieldByName('QTDATC').AsString := DMEXPORTA.TSubProd.FieldByName('QTDATC').AsString;
                   DMESTOQUE.TSubProd.FieldByName('EMBPROD').AsString := DMEXPORTA.TSubProd.FieldByName('EMBPROD').AsString;
                   DMESTOQUE.TSubProd.FieldByName('LOTE').AsString := DMEXPORTA.TSubProd.FieldByName('LOTE').AsString;
                   DMESTOQUE.TSubProd.FieldByName('PENEIRA').AsString := DMEXPORTA.TSubProd.FieldByName('PENEIRA').AsString;
                   DMESTOQUE.TSubProd.FieldByName('GERMI').AsString := DMEXPORTA.TSubProd.FieldByName('GERMI').AsString;
                   DMESTOQUE.TSubProd.FieldByName('PUREZA').AsString := DMEXPORTA.TSubProd.FieldByName('PUREZA').AsString;
                   DMESTOQUE.TSubProd.FieldByName('ATESTVAL').AsString := DMEXPORTA.TSubProd.FieldByName('ATESTVAL').AsString;
                   DMESTOQUE.TSubProd.FieldByName('ATESTGAR').AsString := DMEXPORTA.TSubProd.FieldByName('ATESTGAR').AsString;
                   DMESTOQUE.TSubProd.FieldByName('SAFRA').AsString := DMEXPORTA.TSubProd.FieldByName('SAFRA').AsString;

                   // função para gerar unidade de compra
                   DMESTOQUE.TSubProd.FieldByName('COD_UNIDCOMPRA').AsInteger := UnidCompra;

                   // FUNÇÃO PARA GERAR UNIDADE DE VENDA
                   DMESTOQUE.TSubProd.FieldByName('COD_UNIDVENDA').AsInteger := UnidVenda;

                   DMESTOQUE.TSubProd.FieldByName('COD_CST').AsString := DMESTOQUE.TCST.FieldByName('COD_CST').AsString;
                   DMESTOQUE.TSubProd.FieldByName('DTCAD').AsString := DMEXPORTA.TSubProd.FieldByName('DTCAD').AsString;
                   DMESTOQUE.TSubProd.FieldByName('CODEAN1').AsString := DMEXPORTA.TSubProd.FieldByName('CODEAN1').AsString;
                   DMESTOQUE.TSubProd.FieldByName('CONTRINT').AsString := DMEXPORTA.TSubProd.FieldByName('CONTRINT').AsString;
                   DMESTOQUE.TSubProd.FieldByName('COR').AsString := DMEXPORTA.TSubProd.FieldByName('COR').AsString;
                   DMESTOQUE.TSubProd.FieldByName('CLASSIFICACAO').AsString := DMEXPORTA.TSubProd.FieldByName('CLASSIFICACAO').AsString;
                   DMESTOQUE.TSubProd.FieldByName('DESCCUPOM').AsString := DMEXPORTA.TSubProd.FieldByName('DESCCUPOM').AsString;
                   DMESTOQUE.TSubProd.FieldByName('NCM').AsString := DMEXPORTA.TSubProd.FieldByName('NCM').AsString;
                   DMESTOQUE.TSubProd.FieldByName('OBSFISCAL').AsString := DMEXPORTA.TSubProd.FieldByName('OBSFISCAL').AsString;
                   DMESTOQUE.TSubProd.FieldByName('COMPOSICAO').AsString := DMEXPORTA.TSubProd.FieldByName('COMPOSICAO').AsString;
                   DMESTOQUE.TSubProd.FieldByName('ALTURA').AsString := DMEXPORTA.TSubProd.FieldByName('ALTURA').AsString;
                   DMESTOQUE.TSubProd.FieldByName('LARGURA').AsString := DMEXPORTA.TSubProd.FieldByName('LARGURA').AsString;
                   DMESTOQUE.TSubProd.FieldByName('ESPECIFICACAO').AsString := DMEXPORTA.TSubProd.FieldByName('ESPECIFICACAO').AsString;
                   DMESTOQUE.TSubProd.FieldByName('MARK').AsString := DMEXPORTA.TSubProd.FieldByName('MARK').AsString;
                   DMESTOQUE.TSubProd.FieldByName('BALANCA').AsString := DMEXPORTA.TSubProd.FieldByName('BALANCA').AsString;
                   DMESTOQUE.TSubProd.post;

                   // verifica se na tabela estoque existe registro com o mesmo codigo de subproduto
                   DMESTOQUE.TEstoque.Close;
                   DMESTOQUE.TEstoque.SQL.Clear;
                   DMESTOQUE.TEstoque.SQL.Add('select * from estoque where estoque.cod_subprod = :codigo');
                   DMESTOQUE.TEstoque.ParamByName('codigo').AsInteger := DMESTOQUE.TSubProd.FieldByName('cod_subproduto').AsInteger;
                   DMESTOQUE.TEstoque.Open;

                   If DMESTOQUE.TEstoque.IsEmpty
                   Then Begin
                       // INSERE DADOS NA TABELA ESTOQUE NO BANCO LOCAL
                       InserReg(DMESTOQUE.TEstoque,'ESTOQUE','COD_ESTOQUE');
                   End
                   Else Begin
                       DMESTOQUE.TEstoque.Edit;
                   End;

                   DMESTOQUE.TEstoque.FieldByName('COD_LOJA').AsString := FMenu.LCODLOJA.Caption;
                   DMESTOQUE.TEstoque.FieldByName('COD_SUBPROD').AsString := DMESTOQUE.TSubProd.FieldByName('COD_SUBPRODUTO').AsString;
                   DMESTOQUE.TEstoque.FieldByName('ULTCOMPRA').AsString := DMEXPORTA.TEstoque.FieldByName('ULTCOMPRA').AsString;
                   DMESTOQUE.TEstoque.FieldByName('ULTVENDA').AsString := DMEXPORTA.TEstoque.FieldByName('ULTVENDA').AsString;
                   DMESTOQUE.TEstoque.FieldByName('ESTMAX').AsString := DMEXPORTA.TEstoque.FieldByName('ESTMAX').AsString;
                   DMESTOQUE.TEstoque.FieldByName('ESTMIN').AsString := DMEXPORTA.TEstoque.FieldByName('ESTMIN').AsString;
                   DMESTOQUE.TEstoque.FieldByName('ICMS').AsString := DMEXPORTA.TEstoque.FieldByName('ICMS').AsString;
                   DMESTOQUE.TEstoque.FieldByName('FRETE').AsString := DMEXPORTA.TEstoque.FieldByName('FRETE').AsString;

                   DMESTOQUE.TEstoque.FieldByName('ESTFISICO').AsString := FloatToStr(DMESTOQUE.TEstoque.FieldByName('ESTFISICO').AsFloat + DMEXPORTA.Alx2.FieldByname('qtdeexp').AsFloat);

                   DMESTOQUE.TEstoque.FieldByName('ESTRESERV').AsString := DMEXPORTA.TEstoque.FieldByName('ESTRESERV').AsString;
                   DMESTOQUE.TEstoque.FieldByName('ESTPED').AsString := DMEXPORTA.TEstoque.FieldByName('ESTPED').AsString;
                   DMESTOQUE.TEstoque.FieldByName('ESTSALDO').AsString := DMEXPORTA.TEstoque.FieldByName('ESTSALDO').AsString;
                   DMESTOQUE.TEstoque.FieldByName('CVVPROAT').AsString := DMEXPORTA.TEstoque.FieldByName('CVVPROAT').AsString;
                   DMESTOQUE.TEstoque.FieldByName('CVPPROAT').AsString := DMEXPORTA.TEstoque.FieldByName('CVPPROAT').AsString;
                   DMESTOQUE.TEstoque.FieldByName('CVVPROVAR').AsString := DMEXPORTA.TEstoque.FieldByName('CVVPROVAR').AsString;
                   DMESTOQUE.TEstoque.FieldByName('CVPPROVAR').AsString := DMEXPORTA.TEstoque.FieldByName('CVPPROVAR').AsString;
                   DMESTOQUE.TEstoque.FieldByName('VENDATAP').AsString := DMEXPORTA.TEstoque.FieldByName('VENDATAP').AsString;
                   DMESTOQUE.TEstoque.FieldByName('VENDATAV').AsString := DMEXPORTA.TEstoque.FieldByName('VENDATAV').AsString;
                   DMESTOQUE.TEstoque.FieldByName('VENDVARP').AsString := DMEXPORTA.TEstoque.FieldByName('VENDVARP').AsString;
                   DMESTOQUE.TEstoque.FieldByName('VENDVARV').AsString := DMEXPORTA.TEstoque.FieldByName('VENDVARV').AsString;
                   DMESTOQUE.TEstoque.FieldByName('VALUNIT').AsString := DMEXPORTA.TEstoque.FieldByName('VALUNIT').AsString;
                   DMESTOQUE.TEstoque.FieldByName('VALREP').AsString :=DMEXPORTA.TEstoque.FieldByName('VALREP').AsString;
                   DMESTOQUE.TEstoque.FieldByName('VALCUSTO').AsString := DMEXPORTA.TEstoque.FieldByName('VALCUSTO').AsString;
                   DMESTOQUE.TEstoque.FieldByName('AVVPROAT').AsString := DMEXPORTA.TEstoque.FieldByName('AVVPROAT').AsString;
                   DMESTOQUE.TEstoque.FieldByName('AVPPROAT').AsString := DMEXPORTA.TEstoque.FieldByName('AVPPROAT').AsString;
                   DMESTOQUE.TEstoque.FieldByName('AVVPROVAR').AsString := DMEXPORTA.TEstoque.FieldByName('AVVPROVAR').AsString;
                   DMESTOQUE.TEstoque.FieldByName('AVPPROVAR').AsString := DMEXPORTA.TEstoque.FieldByName('AVPPROVAR').AsString;
                   DMESTOQUE.TEstoque.FieldByName('LUCRATIVIDADE').AsString := DMEXPORTA.TEstoque.FieldByName('LUCRATIVIDADE').AsString;
                   DMESTOQUE.TEstoque.FieldByName('COEFDIV').AsString := DMEXPORTA.TEstoque.FieldByName('COEFDIV').AsString;
                   DMESTOQUE.TEstoque.FieldByName('VALOREST').AsString := DMEXPORTA.TEstoque.FieldByName('VALOREST').AsString;
                   DMESTOQUE.TEstoque.FieldByName('OUTROS').AsString := DMEXPORTA.TEstoque.FieldByName('OUTROS').AsString;
                   DMESTOQUE.TEstoque.FieldByName('QUANT2').AsString := DMEXPORTA.TEstoque.FieldByName('QUANT2').AsString;
                   DMESTOQUE.TEstoque.FieldByName('DTCAD').AsString := DMEXPORTA.TEstoque.FieldByName('DTCAD').AsString;
                   DMESTOQUE.TEstoque.FieldByName('ESTINI').AsString := DMEXPORTA.TEstoque.FieldByName('ESTINI').AsString;
                   DMESTOQUE.TEstoque.FieldByName('VALCUSDESP').AsString := DMEXPORTA.TEstoque.FieldByName('VALCUSDESP').AsString;
                   DMESTOQUE.TEstoque.FieldByName('ESTANTCONT').AsString := DMEXPORTA.TEstoque.FieldByName('ESTANTCONT').AsString;
                   DMESTOQUE.TEstoque.FieldByName('CONTAGEM').AsString := DMEXPORTA.TEstoque.FieldByName('CONTAGEM').AsString;
                   DMESTOQUE.TEstoque.FieldByName('ESTSIMULADO').AsString := DMEXPORTA.TEstoque.FieldByName('ESTSIMULADO').AsString;
                   DMESTOQUE.TEstoque.FieldByName('VLRUNITCOMP').AsString := DMEXPORTA.TEstoque.FieldByName('VLRUNITCOMP').AsString;
                   DMESTOQUE.TEstoque.FieldByName('INDICE').AsString := DMEXPORTA.TEstoque.FieldByName('INDICE').AsString;
                   DMESTOQUE.TEstoque.FieldByName('BONIFICACAO').AsString := DMEXPORTA.TEstoque.FieldByName('BONIFICACAO').AsString;
                   DMESTOQUE.TEstoque.FieldByName('VLRBONIFIC').AsString := DMEXPORTA.TEstoque.FieldByName('VLRBONIFIC').AsString;
                   DMESTOQUE.TEstoque.FieldByName('DESCONTO').AsString := DMEXPORTA.TEstoque.FieldByName('DESCONTO').AsString;
                   DMESTOQUE.TEstoque.FieldByName('CLNC').AsString := DMEXPORTA.TEstoque.FieldByName('CLNC').AsString;
                   DMESTOQUE.TEstoque.FieldByName('MOD').AsString := DMEXPORTA.TEstoque.FieldByName('MOD').AsString;
                   DMESTOQUE.TEstoque.FieldByName('IMPEXP').AsString := DMEXPORTA.TEstoque.FieldByName('IMPEXP').AsString;
                   DMESTOQUE.TEstoque.FieldByName('IMPREND').AsString := DMEXPORTA.TEstoque.FieldByName('IMPREND').AsString;
                   DMESTOQUE.TEstoque.FieldByName('CONTSOC').AsString := DMEXPORTA.TEstoque.FieldByName('CONTSOC').AsString;
                   DMESTOQUE.TEstoque.FieldByName('COFINS').AsString := DMEXPORTA.TEstoque.FieldByName('COFINS').AsString;
                   DMESTOQUE.TEstoque.FieldByName('PIS').AsString := DMEXPORTA.TEstoque.FieldByName('PIS').AsString;
                   DMESTOQUE.TEstoque.FieldByName('MARGEMSEG').AsString := DMEXPORTA.TEstoque.FieldByName('MARGEMSEG').AsString;
                   DMESTOQUE.TEstoque.FieldByName('PERCMARGSEG').AsString := DMEXPORTA.TEstoque.FieldByName('PERCMARGSEG').AsString;
                   DMESTOQUE.TEstoque.FieldByName('REDUCBASE').AsString := DMEXPORTA.TEstoque.FieldByName('REDUCBASE').AsString;
                   DMESTOQUE.TEstoque.FieldByName('VLRCOMPSD').AsString := DMEXPORTA.TEstoque.FieldByName('VLRCOMPSD').AsString;
                   DMESTOQUE.TEstoque.FieldByName('ACRECIMO').AsString := DMEXPORTA.TEstoque.FieldByName('ACRECIMO').AsString;
                   DMESTOQUE.TEstoque.FieldByName('ESTCALC').AsString := DMEXPORTA.TEstoque.FieldByName('ESTCALC').AsString;
                   DMESTOQUE.TEstoque.FieldByName('DATAATU').AsString := DMEXPORTA.TEstoque.FieldByName('DATAATU').AsString;
                   DMESTOQUE.TEstoque.FieldByName('HORAATU').AsString := DMEXPORTA.TEstoque.FieldByName('HORAATU').AsString;
                   DMESTOQUE.TEstoque.FieldByName('PRECOOFERTA').AsString := DMEXPORTA.TEstoque.FieldByName('PRECOOFERTA').AsString;
                   DMESTOQUE.TEstoque.FieldByName('DATAOFERTA').AsString := DMEXPORTA.TEstoque.FieldByName('DATAOFERTA').AsString;
                   DMESTOQUE.TEstoque.FieldByName('VENCIMENTOOFERTA').AsString := DMEXPORTA.TEstoque.FieldByName('VENCIMENTOOFERTA').AsString;
                   DMESTOQUE.TEstoque.POST;

                   // insere proximo codigo do itens pedido de compra
                   XCont := InserReg(DMENTRADA.TItemPC,'ITENSPEDC','COD_ITENSPEDC');

                   // TABELA ITENS PEDIDO DE COMPRA
                   DMENTRADA.TItemPC.FieldByName('COD_PEDCOMPRA').AsInteger := XCODPKMESTRE;
                   DMENTRADA.TItemPC.FieldByName('COD_ESTOQUE').AsString := DMESTOQUE.TEstoque.FieldByname('cod_estoque').AsString;
                   DMENTRADA.TItemPC.FieldByName('QTDEPROD').AsString := DMEXPORTA.Alx2.FieldByname('qtdeexp').AsString;
                   DMENTRADA.TItemPC.FieldByName('VALUNIT').AsString := DMEXPORTA.Alx2.FieldByname('VALUNIT').AsString;
                   DMENTRADA.TItemPC.FieldByName('VALORTOTAL').AsString := FloatToStr(DMEXPORTA.Alx2.FieldByname('qtdeexp').AsFloat * DMEXPORTA.Alx2.FieldByname('VALUNIT').AsCurrency);
                   DMENTRADA.TItemPC.FieldByName('DATA').AsString := DMEXPORTA.Alx2.FieldByname('DATA').AsString;
                   DMENTRADA.TItemPC.FieldByName('DESCPRO').AsString := DMEXPORTA.Alx2.FieldByname('DESCPRO').AsString;
                   DMENTRADA.TItemPC.FieldByName('ATUEST').AsString := DMEXPORTA.Alx2.FieldByname('ATUEST').AsString;
                   DMENTRADA.TItemPC.FieldByName('ALIQICMS').AsString := DMEXPORTA.Alx2.FieldByname('ALIQICMS').AsString;
                   DMENTRADA.TItemPC.FieldByName('FRETE').AsString := DMEXPORTA.Alx2.FieldByname('FRETE').AsString;
                   DMENTRADA.TItemPC.FieldByName('EMBPROD').AsString := DMEXPORTA.Alx2.FieldByname('EMBPROD').AsString;
                   DMENTRADA.TItemPC.FieldByName('VLRIPI').AsString := DMEXPORTA.Alx2.FieldByname('VLRIPI').AsString;
                   DMENTRADA.TItemPC.FieldByName('COD_LOTE').AsString := DMEXPORTA.Alx2.FieldByname('COD_LOTE').AsString;
                   DMENTRADA.TItemPC.FieldByName('BASEICMS').AsString := DMEXPORTA.Alx2.FieldByname('BASEICMS').AsString;
                   DMENTRADA.TItemPC.FieldByName('VLRICMS').AsString := DMEXPORTA.Alx2.FieldByname('VLRICMS').AsString;
                   DMENTRADA.TItemPC.FieldByName('BASEICMSSUBS').AsString := DMEXPORTA.Alx2.FieldByname('BASEICMSSUBS').AsString;
                   DMENTRADA.TItemPC.FieldByName('VLRICMSSUBS').AsString := DMEXPORTA.Alx2.FieldByname('VLRICMSSUBS').AsString;
                   DMENTRADA.TItemPC.FieldByName('ALIQIPI').AsString := DMEXPORTA.Alx2.FieldByname('ALIQIPI').AsString;
                   DMENTRADA.TItemPC.FieldByName('REDUCBASEICMS').AsString := DMEXPORTA.Alx2.FieldByname('REDUCBASEICMS').AsString;
                   DMENTRADA.TItemPC.FieldByName('QTDEST').AsString := DMEXPORTA.Alx2.FieldByname('QTDEST').AsString;
                   DMENTRADA.TItemPC.FieldByName('COD_DEVOLUCAO').AsString := DMEXPORTA.Alx2.FieldByname('COD_DEVOLUCAO').AsString;
                   DMENTRADA.TItemPC.FieldByName('CONTREMESSA').AsString := DMEXPORTA.Alx2.FieldByname('CONTREMESSA').AsString;
                   DMENTRADA.TItemPC.Post;

               // proximo item
               DMEXPORTA.Alx2.Next;
               End;
           End;
       // proximo pedido de compra
       DMEXPORTA.Alx.Next;

       // posicao do progress bar
       XContador := XContador + 1;
       end;

       DMPESSOA.TransacPessoa.CommitRetaining;
       DMFINANC.Transaction.CommitRetaining;
       DMENTRADA.IBT.CommitRetaining;
       DMESTOQUE.TransacEstoque.CommitRetaining;

       // atualizando a tabela pedcompra do servidor para os pedidos recem importados
       DMEXPORTA.TPedC.Close;
       DMEXPORTA.TPedC.SQL.Clear;
       DMEXPORTA.TPedC.SQL.Add('update pedcompra set pedcompra.export = ' + #39 + 'S' + #39);
       DMEXPORTA.TPedC.ExecSQL;

       DMEXPORTA.IBTExporta.CommitRetaining;

       PBImportacao.Visible := false;
       PBImportacao.SendToBack;
   End
   Else Begin
       Mensagem('   A T E N Ç Ã O   ','Não há pedido de compras para serem importados.','',1,1,false,'I');
   End;}


   //- 19/02/2009: acima foi comentado o código q fazia a exportação da loja pamela porque no panorama
   //- 19/02/2009: não é feito controle de pedidos de compra nem de estoque, então não será necessário
   //- 19/02/2009: exportar os pedidos de compra, apenas os novos produtos cadastrados

   //- 19/02/2009: filtra a tabela estoque da pen drive

   FiltraTabela(DMMACS.TLoja, 'LOJA', '', '', '');

   if EdImpDT1.Text = '  /  /    '
   then begin
       Mensagem('   A T E N Ç Ã O   ','Informe a data da ultima exportação.','',1,1,false,'I');
       Exit;
   end
   else begin
       DMEXPORTA.Alx.close;
       DMEXPORTA.Alx.SQL.Clear;
       DMEXPORTA.Alx.SQL.Add('SELECT count(ESTOQUE.cod_estoque) AS QTD FROM estoque');
       DMEXPORTA.Alx.SQL.Add('where estoque.dtcad >= :DATA');
       DMEXPORTA.Alx.ParamByName('DATA').AsDateTime:=StrToDate(EdImpDT1.Text);
       DMEXPORTA.Alx.Open;
       XCont:=DMEXPORTA.Alx.FieldByName('QTD').AsInteger;

       DMEXPORTA.TEstoque.close;
       DMEXPORTA.TEstoque.SQL.Clear;
       DMEXPORTA.TEstoque.SQL.Add('select * from estoque');
       DMEXPORTA.TEstoque.SQL.Add('where estoque.dtcad >= :DATA');
       DMEXPORTA.TEstoque.ParamByName('DATA').AsDateTime:=StrToDate(EdImpDT1.Text);
       DMEXPORTA.TEstoque.Open;

       DMEXPORTA.TEstoque.First;
       if not DMEXPORTA.TEstoque.IsEmpty
       then begin
       while not(DMEXPORTA.TEstoque.Eof)do
           begin
               PComunica.Visible:=True;
               PComunica.BringToFront;
               PComunica.Caption:= 'Aguarde importação: ['+IntToStr(XCont)+']';
               PComunica.Refresh;
               XCont:=XCont-1;
               FiltraTabela(DMEXPORTA.TSubProd, 'subproduto', 'cod_subproduto', DMEXPORTA.TEstoque.FieldByName('cod_subprod').AsString, '');
               if FiltraTabela(DMESTOQUE.TSubProd, 'subproduto', 'contrint', DMEXPORTA.TSubProd.FieldByName('contrint').AsString, '') = false
               then begin

                       //- 19/02/2009: insere produto quando não esta cadastrado
                       xcodunidadeupdate:='';
                       xcodestoqueupdate:='';
                       xcodgrupoupdate:='';
                       xcodsubgrupoupdate:='';
                       xcodprodutoupdate:='';
                       xcodsubprodutoupdate:='';



                       //- 19/02/2009: busca tabela produto de dmexporta
                       FiltraTabela(DMEXPORTA.TProduto, 'produto','cod_produto', DMEXPORTA.TSubProd.FieldByName('cod_produto').AsString, '');
                       //- 19/02/2009: busca subgrupoprod de dmexporta
                       FiltraTabela(DMEXPORTA.TSubgru, 'subgrupoprod', 'cod_subgrupoprod', DMEXPORTA.TProduto.FieldByName('cod_subgrupoprod').AsString, '');
                       //- 19/02/2009: busca subgrupoprod em dmestoque
                       if FiltraTabela(DMESTOQUE.TSubgru, 'subgrupoprod', 'descricao', DMEXPORTA.TSubgru.FieldByName('descricao').AsString, '') = false
                       then begin
                           FiltraTabela(DMMACS.TCodigo, 'codigo', '', '','');
                           xcampo := 'cod_subgrupoprod';
                           xcodsubgrupoupdate := DMMACS.TCodigo.FieldByName('cod_subgrupoprod').AsString;
                           insercod;
                           subgrupo;
                       end
                       else begin
                           xcodsubgrupoupdate:=DMESTOQUE.TSubgru.FieldByName('cod_subgrupoprod').AsString;
                       end;

                       //- 19/02/2009: busca grupoprod de dmexporta
                       FiltraTabela(DMEXPORTA.TGrupo, 'grupoprod', 'cod_grupoprod', DMEXPORTA.TProduto.FieldByName('cod_grupoprod').AsString, '');
                       //- 19/02/2009: busca grupoprod em dmestoque
                       if FiltraTabela(DMESTOQUE.TGrupo, 'grupoprod', 'descricao', DMEXPORTA.TGrupo.FieldByName('descricao').AsString, '') = false
                       then begin
                           FiltraTabela(DMMACS.TCodigo, 'codigo', '', '','');
                           xcampo := 'cod_grupoprod';
                           xcodgrupoupdate := DMMACS.TCodigo.FieldByName('cod_grupoprod').AsString;
                           insercod;
                           grupo;
                       end
                       else begin
                           xcodgrupoupdate:=DMESTOQUE.TGrupo.FieldByName('cod_grupoprod').AsString;
                       end;


                       //- 19/02/2009: insere produto em dmestoque

                       if FiltraTabela(DMESTOQUE.TProduto, 'produto', 'descricao', DMEXPORTA.TProduto.FieldByName('descricao').AsString, '') = false
                       then begin
                            FiltraTabela(DMMACS.TCodigo, 'codigo', '', '','');
                            xcampo := 'cod_produto';
                            xcodprodutoupdate := DMMACS.TCodigo.FieldByName('cod_produto').AsString;
                            insercod;
                            produto;
                       end
                       else begin
                            xcodprodutoupdate := DMESTOQUE.TProduto.fieldByName('descricao').AsString;
                       end;

                       //- 19/02/2009: inicia processo de subproduto
                       //- 19/02/2009: verificando as unidade de compra
                       FiltraTabela(DMEXPORTA.TUnidade, 'unidade', 'cod_unidade', DMEXPORTA.TSubProd.FieldByName('cod_unidcompra').AsString, '');
                       //- 19/02/2009: verifica se existe
                       if FiltraTabela(DMESTOQUE.TUnidade, 'unidade', 'desc_unid', DMEXPORTA.TUnidade.FieldByName('desc_unid').AsString, '') = false
                       then begin
                           FiltraTabela(DMMACS.TCodigo, 'codigo', '', '','');
                           xcampo := 'cod_unidade';
                           xcodunidadeupdate := DMMACS.TCodigo.FieldByName('cod_unidade').AsString;
                           xunidcompra := DMMACS.TCodigo.FieldByName('cod_unidade').AsString;
                           insercod;
                           unidade;
                       end
                       else begin
                            xunidcompra:=DMESTOQUE.TUnidade.FieldByName('cod_unidade').AsString;
                       end;

                       //- 19/02/2009: verificando as unidade de venda
                       FiltraTabela(DMEXPORTA.TUnidade, 'unidade', 'cod_unidade', DMEXPORTA.TSubProd.FieldByName('cod_unidvenda').AsString, '');
                       //- 19/02/2009: verifica se existe
                       if FiltraTabela(DMESTOQUE.TUnidade, 'unidade', 'desc_unid', DMEXPORTA.TUnidade.FieldByName('desc_unid').AsString, '') = false
                       then begin
                           FiltraTabela(DMMACS.TCodigo, 'codigo', '', '','');
                           xcampo := 'cod_unidade';
                           xcodunidadeupdate := DMMACS.TCodigo.FieldByName('cod_unidade').AsString;
                           xunidvenda := DMMACS.TCodigo.FieldByName('cod_unidade').AsString;
                           insercod;
                           unidade;
                       end
                       else begin
                           xunidvenda:=DMESTOQUE.TUnidade.FieldByName('cod_unidade').AsString;
                       end;


                       //- 19/02/2009: insere sub produto em dmestoque
                       FiltraTabela(DMMACS.TCodigo, 'codigo', '', '','');
                       xcampo := 'cod_subproduto';
                       xcodsubprodutoupdate := DMMACS.TCodigo.FieldByName('cod_subproduto').AsString;
                       insercod;
                       subproduto;

                               //- 19/02/2009: insere estoque
                       FiltraTabela(DMMACS.TCodigo, 'codigo', '', '','');
                       xcampo := 'cod_estoque';
                       xcodestoqueupdate := DMMACS.TCodigo.FieldByName('cod_estoque').AsString;
                       insercod;
                       estoque;
               end
               Else Begin
                   //Alex- 22/04/2009: Caso Tenha encontrado o subproduto as informações deven ser atualizadas (Subproduto e estoque)
                   Atualizasubproduto(DMESTOQUE.TSubProd.FieldByName('cod_subproduto').AsInteger);
                   if FiltraTabela(DMESTOQUE.TEstoque, 'estoque', 'cod_subprod', DMEXPORTA.TSubProd.FieldByName('cod_subproduto').AsString, '') = True Then
                       Atualizaestoque(DMESTOQUE.testoque.FieldByName('cod_estoque').Asinteger);

               End;
               DMEXPORTA.TEstoque.Next;
               //- 19/02/2009: comita registro
               DMESTOQUE.TransacEstoque.CommitRetaining;
           end;
       end;
   end;
end;

procedure TFExpImp.insercod;
begin
	DMMACS.TCodigo.Edit;
   DMMACS.TCodigo.FieldByName(xcampo).AsInteger := DMMACS.TCodigo.FieldByName(xcampo).AsInteger + 1;
   DMMACS.TCodigo.Post;
   DMMACS.Transaction.CommitRetaining;
end;

//- 19/02/2009: insere registro referente a subproduto
procedure TFExpImp.subproduto;
VAR
   desc :String;
begin

  Try
     xtbexporta := DMEXPORTA.TSubProd;
     xtbrecebe := DMESTOQUE.TSubProd;


     xtbrecebe.Close;
     xtbrecebe.SQL.Clear;
     xtbrecebe.SQL.Add('insert into SUBPRODUTO');
     xtbrecebe.SQL.Add('(COD_SUBPRODUTO, CODCOMPOSTO, DESCRICAO, CODBARRA, CODPRODFABR, FABRICANTE,');
     xtbrecebe.SQL.Add('MARCA, QUANTGARANTIA, TIPOGARANTIA, LOCALESTANTE, ATIVO, IPIPROD, PESOLIQ,');
     xtbrecebe.SQL.Add('PESOBRUTO, COD_PRODUTO, COD_INTERNO, MOTIVO, QTDATC, EMBPROD, LOTE,');
     xtbrecebe.SQL.Add('PENEIRA, GERMI, PUREZA, ATESTVAL, ATESTGAR, SAFRA, COD_UNIDCOMPRA, COD_UNIDVENDA,');
     xtbrecebe.SQL.Add('COD_CST, DTCAD, CODEAN1, CONTRINT, COR, CLASSIFICACAO, DESCCUPOM, NCM,');
     xtbrecebe.SQL.Add('OBSFISCAL, COMPOSICAO, ALTURA, LARGURA, ESPECIFICACAO, MARK, BALANCA,');
     xtbrecebe.SQL.Add('ANVISA, MINSAUDE, DENSIDADE)');
     xtbrecebe.SQL.Add('values');
     xtbrecebe.SQL.Add('(:COD_SUBPRODUTO, :CODCOMPOSTO, :DESCRICAO, :CODBARRA, :CODPRODFABR,');
     xtbrecebe.SQL.Add(':FABRICANTE, :MARCA, :QUANTGARANTIA, :TIPOGARANTIA, :LOCALESTANTE, :ATIVO,');
     xtbrecebe.SQL.Add(':IPIPROD, :PESOLIQ, :PESOBRUTO, :COD_PRODUTO, :COD_INTERNO, :MOTIVO,');
     xtbrecebe.SQL.Add(':QTDATC, :EMBPROD, :LOTE, :PENEIRA, :GERMI, :PUREZA, :ATESTVAL, :ATESTGAR,');
     xtbrecebe.SQL.Add(':SAFRA, :COD_UNIDCOMPRA, :COD_UNIDVENDA, :COD_CST, :DTCAD, :CODEAN1,');
     xtbrecebe.SQL.Add(':CONTRINT, :COR, :CLASSIFICACAO, :DESCCUPOM, :NCM, :OBSFISCAL, :COMPOSICAO,');
     xtbrecebe.SQL.Add(':ALTURA, :LARGURA, :ESPECIFICACAO, :MARK, :BALANCA, :ANVISA, :MINSAUDE, :DENSIDADE)');

     xtbrecebe.ParamByName('COD_SUBPRODUTO').AsString := xcodsubprodutoupdate;
     xtbrecebe.ParamByName('COD_PRODUTO').AsString := xcodprodutoupdate;
     xtbrecebe.ParamByName('COD_UNIDCOMPRA').AsString := xunidcompra;
     xtbrecebe.ParamByName('COD_UNIDVENDA').AsString := xunidvenda;
     if FiltraTabela(DMESTOQUE.TCST, 'CST', 'cod_sit_trib', DMEXPORTA.TCst.fieldByName('cod_sit_trib').AsString, '')= true
     then begin
        DMESTOQUE.TCST.First;
        xtbrecebe.ParamByName('COD_CST').AsString := DMESTOQUE.TCST.fieldByName('cod_cst').AsString;
     end;

     xtbrecebe.ParamByName('CODCOMPOSTO').AsString := xtbexporta.FieldByName('CODCOMPOSTO').AsString;
     xtbrecebe.ParamByName('DESCRICAO').AsString := xtbexporta.FieldByName('DESCRICAO').AsString;
     xtbrecebe.ParamByName('CODBARRA').AsString := xtbexporta.FieldByName('CODBARRA').AsString;
     xtbrecebe.ParamByName('CODPRODFABR').AsString := xtbexporta.FieldByName('CODPRODFABR').AsString;
     xtbrecebe.ParamByName('FABRICANTE').AsString := xtbexporta.FieldByName('FABRICANTE').AsString;
     xtbrecebe.ParamByName('MARCA').AsString := xtbexporta.FieldByName('MARCA').AsString;
     xtbrecebe.ParamByName('QUANTGARANTIA').AsFloat := xtbexporta.FieldByName('QUANTGARANTIA').AsFloat;
     xtbrecebe.ParamByName('TIPOGARANTIA').AsString := xtbexporta.FieldByName('TIPOGARANTIA').AsString;
     xtbrecebe.ParamByName('LOCALESTANTE').AsString := xtbexporta.FieldByName('LOCALESTANTE').AsString;
     xtbrecebe.ParamByName('ATIVO').AsString := xtbexporta.FieldByName('ATIVO').AsString;
     xtbrecebe.ParamByName('IPIPROD').AsFloat := xtbexporta.FieldByName('IPIPROD').AsFloat;
     xtbrecebe.ParamByName('PESOLIQ').AsFloat := xtbexporta.FieldByName('PESOLIQ').AsFloat;
     xtbrecebe.ParamByName('PESOBRUTO').AsFloat := xtbexporta.FieldByName('PESOBRUTO').AsFloat;
     xtbrecebe.ParamByName('COD_INTERNO').AsString := xtbexporta.FieldByName('COD_INTERNO').AsString;
     xtbrecebe.ParamByName('MOTIVO').AsString := xtbexporta.FieldByName('MOTIVO').AsString;
     xtbrecebe.ParamByName('QTDATC').AsFloat := xtbexporta.FieldByName('QTDATC').AsFloat;
     xtbrecebe.ParamByName('EMBPROD').AsFloat := xtbexporta.FieldByName('EMBPROD').AsFloat;
     xtbrecebe.ParamByName('LOTE').AsString := xtbexporta.FieldByName('LOTE').AsString;
     xtbrecebe.ParamByName('PENEIRA').AsString := xtbexporta.FieldByName('PENEIRA').AsString;
     xtbrecebe.ParamByName('GERMI').AsFloat := xtbexporta.FieldByName('GERMI').AsFloat;
     xtbrecebe.ParamByName('PUREZA').AsFloat := xtbexporta.FieldByName('PUREZA').AsFloat;
     xtbrecebe.ParamByName('ATESTVAL').AsString := xtbexporta.FieldByName('ATESTVAL').AsString;
     xtbrecebe.ParamByName('ATESTGAR').AsString := xtbexporta.FieldByName('ATESTGAR').AsString;
     xtbrecebe.ParamByName('SAFRA').AsString := xtbexporta.FieldByName('SAFRA').AsString;
     xtbrecebe.ParamByName('DTCAD').AsDate := xtbexporta.FieldByName('DTCAD').AsDateTime;
     xtbrecebe.ParamByName('CODEAN1').AsString := xtbexporta.FieldByName('CODEAN1').AsString;
     xtbrecebe.ParamByName('CONTRINT').AsString := xtbexporta.FieldByName('CONTRINT').AsString;
     xtbrecebe.ParamByName('COR').AsString := xtbexporta.FieldByName('COR').AsString;
     xtbrecebe.ParamByName('CLASSIFICACAO').AsString := xtbexporta.FieldByName('CLASSIFICACAO').AsString;
     xtbrecebe.ParamByName('DESCCUPOM').AsString := xtbexporta.FieldByName('DESCCUPOM').AsString;
     xtbrecebe.ParamByName('NCM').AsString := xtbexporta.FieldByName('NCM').AsString;
     xtbrecebe.ParamByName('OBSFISCAL').AsString := xtbexporta.FieldByName('OBSFISCAL').AsString;
     xtbrecebe.ParamByName('COMPOSICAO').AsString := xtbexporta.FieldByName('COMPOSICAO').AsString;
     xtbrecebe.ParamByName('ALTURA').AsString := xtbexporta.FieldByName('ALTURA').AsString;
     xtbrecebe.ParamByName('LARGURA').AsString := xtbexporta.FieldByName('LARGURA').AsString;
     xtbrecebe.ParamByName('ESPECIFICACAO').AsString := xtbexporta.FieldByName('ESPECIFICACAO').AsString;
     xtbrecebe.ParamByName('MARK').AsString := xtbexporta.FieldByName('MARK').AsString;
     xtbrecebe.ParamByName('BALANCA').AsString := xtbexporta.FieldByName('BALANCA').AsString;
     xtbrecebe.ParamByName('ANVISA').AsString := xtbexporta.FieldByName('ANVISA').AsString;
     xtbrecebe.ParamByName('MINSAUDE').AsString := xtbexporta.FieldByName('MINSAUDE').AsString;
     xtbrecebe.ParamByName('DENSIDADE').AsInteger := xtbexporta.FieldByName('DENSIDADE').AsInteger;
     xtbrecebe.ExecSQL;
     DMESTOQUE.TransacEstoque.CommitRetaining;
  Except
     DMESTOQUE.TransacEstoque.RollbackRetaining;
  End;
end;

//Alex- 22/04/2009: Atualiza registro referente a subproduto
procedure TFExpImp.Atualizasubproduto(Codigo: Integer);
begin

     xtbexporta := DMEXPORTA.TSubProd;
     xtbrecebe := DMESTOQUE.TSubProd;


     xtbrecebe.Close;
     xtbrecebe.SQL.Clear;
     xtbrecebe.SQL.Add('update subproduto set ');
     xtbrecebe.SQL.Add('DESCRICAO=:DESCRICAO, CODBARRA=:CODBARRA, CODPRODFABR=:CODPRODFABR, FABRICANTE=:FABRICANTE,');
     xtbrecebe.SQL.Add('MARCA=:MARCA, QUANTGARANTIA=:QUANTGARANTIA, TIPOGARANTIA=:TIPOGARANTIA, LOCALESTANTE=:LOCALESTANTE, ');
     xtbrecebe.SQL.Add(' ATIVO=:ATIVO, IPIPROD=:IPIPROD, PESOLIQ=:PESOLIQ,');
     xtbrecebe.SQL.Add('PESOBRUTO=:PESOBRUTO, MOTIVO=:MOTIVO, QTDATC=:QTDATC, EMBPROD=:EMBPROD, LOTE=:LOTE,');
     xtbrecebe.SQL.Add(' DTCAD=:DTCAD, CODEAN1=:CODEAN1, CONTRINT=:CONTRINT, COR=:COR, CLASSIFICACAO=:CLASSIFICACAO, DESCCUPOM=:DESCCUPOM, NCM=:NCM,');
     xtbrecebe.SQL.Add('OBSFISCAL=:OBSFISCAL, COMPOSICAO=:COMPOSICAO, ALTURA=:ALTURA, LARGURA=:LARGURA, ESPECIFICACAO=:ESPECIFICACAO, MARK=:MARK, BALANCA=:BALANCA,');
     xtbrecebe.SQL.Add('ANVISA=:ANVISA, MINSAUDE=:MINSAUDE, DENSIDADE=:DENSIDADE ');
     xtbrecebe.SQL.Add(' where subproduto.cod_subproduto=:codigo ');
     xtbrecebe.ParamByName('codigo').AsInteger:=codigo;

     xtbrecebe.ParamByName('DESCRICAO').AsString := xtbexporta.FieldByName('DESCRICAO').AsString;
     xtbrecebe.ParamByName('CODBARRA').AsString := xtbexporta.FieldByName('CODBARRA').AsString;
     xtbrecebe.ParamByName('CODPRODFABR').AsString := xtbexporta.FieldByName('CODPRODFABR').AsString;
     xtbrecebe.ParamByName('FABRICANTE').AsString := xtbexporta.FieldByName('FABRICANTE').AsString;
     xtbrecebe.ParamByName('MARCA').AsString := xtbexporta.FieldByName('MARCA').AsString;
     xtbrecebe.ParamByName('QUANTGARANTIA').AsFloat := xtbexporta.FieldByName('QUANTGARANTIA').AsFloat;
     xtbrecebe.ParamByName('TIPOGARANTIA').AsString := xtbexporta.FieldByName('TIPOGARANTIA').AsString;
     xtbrecebe.ParamByName('LOCALESTANTE').AsString := xtbexporta.FieldByName('LOCALESTANTE').AsString;
     xtbrecebe.ParamByName('ATIVO').AsString := xtbexporta.FieldByName('ATIVO').AsString;
     xtbrecebe.ParamByName('IPIPROD').AsFloat := xtbexporta.FieldByName('IPIPROD').AsFloat;
     xtbrecebe.ParamByName('PESOLIQ').AsFloat := xtbexporta.FieldByName('PESOLIQ').AsFloat;
     xtbrecebe.ParamByName('PESOBRUTO').AsFloat := xtbexporta.FieldByName('PESOBRUTO').AsFloat;
     xtbrecebe.ParamByName('MOTIVO').AsString := xtbexporta.FieldByName('MOTIVO').AsString;
     xtbrecebe.ParamByName('QTDATC').AsFloat := xtbexporta.FieldByName('QTDATC').AsFloat;
     xtbrecebe.ParamByName('EMBPROD').AsFloat := xtbexporta.FieldByName('EMBPROD').AsFloat;
     xtbrecebe.ParamByName('LOTE').AsString := xtbexporta.FieldByName('LOTE').AsString;
     xtbrecebe.ParamByName('DTCAD').AsDate := xtbexporta.FieldByName('DTCAD').AsDateTime;
     xtbrecebe.ParamByName('CODEAN1').AsString := xtbexporta.FieldByName('CODEAN1').AsString;
     xtbrecebe.ParamByName('CONTRINT').AsString := xtbexporta.FieldByName('CONTRINT').AsString;
     xtbrecebe.ParamByName('COR').AsString := xtbexporta.FieldByName('COR').AsString;
     xtbrecebe.ParamByName('CLASSIFICACAO').AsString := xtbexporta.FieldByName('CLASSIFICACAO').AsString;
     xtbrecebe.ParamByName('DESCCUPOM').AsString := xtbexporta.FieldByName('DESCCUPOM').AsString;
     xtbrecebe.ParamByName('NCM').AsString := xtbexporta.FieldByName('NCM').AsString;
     xtbrecebe.ParamByName('OBSFISCAL').AsString := xtbexporta.FieldByName('OBSFISCAL').AsString;
     xtbrecebe.ParamByName('COMPOSICAO').AsString := xtbexporta.FieldByName('COMPOSICAO').AsString;
     xtbrecebe.ParamByName('ALTURA').AsString := xtbexporta.FieldByName('ALTURA').AsString;
     xtbrecebe.ParamByName('LARGURA').AsString := xtbexporta.FieldByName('LARGURA').AsString;
     xtbrecebe.ParamByName('ESPECIFICACAO').AsString := xtbexporta.FieldByName('ESPECIFICACAO').AsString;
     xtbrecebe.ParamByName('MARK').AsString := xtbexporta.FieldByName('MARK').AsString;
     xtbrecebe.ParamByName('BALANCA').AsString := xtbexporta.FieldByName('BALANCA').AsString;
     xtbrecebe.ParamByName('ANVISA').AsString := xtbexporta.FieldByName('ANVISA').AsString;
     xtbrecebe.ParamByName('MINSAUDE').AsString := xtbexporta.FieldByName('MINSAUDE').AsString;
     xtbrecebe.ParamByName('DENSIDADE').AsInteger := xtbexporta.FieldByName('DENSIDADE').AsInteger;
     xtbrecebe.ExecSQL;
     DMESTOQUE.TransacEstoque.CommitRetaining;
end;

//- 19/02/2009: insere registro referente a estoque
procedure TFExpImp.estoque;
begin

     xtbexporta := DMEXPORTA.TEstoque;
     xtbrecebe := DMESTOQUE.TEstoque;

     //soma quantidade que foi exportada para o panorama para atualizar o estoque corretamente
    DMEXPORTA.TItemPC.Close;
    DMEXPORTA.TItemPC.SQL.Clear;
    DMEXPORTA.TItemPC.SQL.Add('select sum(itenspedc.qtdeexp) AS QTD');
    DMEXPORTA.TItemPC.SQL.Add('from itenspedc');
    DMEXPORTA.TItemPC.SQL.Add('where itenspedc.data >= :DATA');
    DMEXPORTA.TItemPC.SQL.Add('and itenspedc.cod_estoque = :COD');
    DMEXPORTA.TItemPC.ParamByName('DATA').AsDateTime:=StrToDate(EdImpDT1.Text);
    DMEXPORTA.TItemPC.ParamByName('COD').AsInteger:=xtbexporta.fieldByName('COD_ESTOQUE').AsInteger;
    DMEXPORTA.TItemPC.Open;


     xtbrecebe.Close;
     xtbrecebe.SQL.Clear;
     xtbrecebe.SQL.Add('insert into ESTOQUE');
     xtbrecebe.SQL.Add('(COD_ESTOQUE, COD_LOJA, COD_SUBPROD, ULTCOMPRA, ULTVENDA, ESTMAX, ESTMIN,');
     xtbrecebe.SQL.Add('ICMS, FRETE, ESTRESERV, ESTPED, ESTSALDO, CVVPROAT, CVPPROAT,');
     xtbrecebe.SQL.Add('CVVPROVAR, CVPPROVAR, VENDATAP, VENDATAV, VENDVARP, VENDVARV, VALUNIT,');
     xtbrecebe.SQL.Add('VALREP, VALCUSTO, AVVPROAT, AVPPROAT, AVVPROVAR, AVPPROVAR, LUCRATIVIDADE,');
     xtbrecebe.SQL.Add('COEFDIV, VALOREST, OUTROS, QUANT2, DTCAD, ESTINI, VALCUSDESP, ESTANTCONT,');
     xtbrecebe.SQL.Add('CONTAGEM, ESTSIMULADO, VLRUNITCOMP, INDICE, BONIFICACAO, VLRBONIFIC,');
     xtbrecebe.SQL.Add('DESCONTO, CLNC, MOD, IMPEXP, IMPREND, CONTSOC, COFINS, PIS, MARGEMSEG,');
     xtbrecebe.SQL.Add('PERCMARGSEG, REDUCBASE, VLRCOMPSD, ACRECIMO, ESTCALC, DATAATU, HORAATU,');
     xtbrecebe.SQL.Add('PRECOOFERTA, DATAOFERTA, VENCIMENTOOFERTA)');
     xtbrecebe.SQL.Add('values');
     xtbrecebe.SQL.Add('(:COD_ESTOQUE, :COD_LOJA, :COD_SUBPROD, :ULTCOMPRA, :ULTVENDA, :ESTMAX,');
     xtbrecebe.SQL.Add(':ESTMIN, :ICMS, :FRETE, :ESTRESERV, :ESTPED, :ESTSALDO,');
     xtbrecebe.SQL.Add(':CVVPROAT, :CVPPROAT, :CVVPROVAR, :CVPPROVAR, :VENDATAP, :VENDATAV,');
     xtbrecebe.SQL.Add(':VENDVARP, :VENDVARV, :VALUNIT, :VALREP, :VALCUSTO, :AVVPROAT, :AVPPROAT,');
     xtbrecebe.SQL.Add(':AVVPROVAR, :AVPPROVAR, :LUCRATIVIDADE, :COEFDIV, :VALOREST, :OUTROS,');
     xtbrecebe.SQL.Add(':QUANT2, :DTCAD, :ESTINI, :VALCUSDESP, :ESTANTCONT, :CONTAGEM, :ESTSIMULADO,');
     xtbrecebe.SQL.Add(':VLRUNITCOMP, :INDICE, :BONIFICACAO, :VLRBONIFIC, :DESCONTO, :CLNC,');
     xtbrecebe.SQL.Add(':MOD, :IMPEXP, :IMPREND, :CONTSOC, :COFINS, :PIS, :MARGEMSEG, :PERCMARGSEG,');
     xtbrecebe.SQL.Add(':REDUCBASE, :VLRCOMPSD, :ACRECIMO, :ESTCALC, :DATAATU, :HORAATU, :PRECOOFERTA,');
     xtbrecebe.SQL.Add(':DATAOFERTA, :VENCIMENTOOFERTA)');

     xtbrecebe.ParamByName('COD_ESTOQUE').AsInteger := StrToInt(xcodestoqueupdate);
     xtbrecebe.ParamByName('COD_SUBPROD').AsInteger := StrToInt(xcodsubprodutoupdate);
     xtbrecebe.ParamByName('COD_LOJA').AsInteger := DMMACS.TLoja.FieldByName('COD_LOJA').AsInteger;
     xtbrecebe.ParamByName('ULTCOMPRA').AsDate := xtbexporta.FieldByName('ULTCOMPRA').AsDateTime;
     xtbrecebe.ParamByName('ULTVENDA').AsDate := xtbexporta.FieldByName('ULTVENDA').AsDateTime;
     xtbrecebe.ParamByName('ESTMAX').AsFloat := xtbexporta.FieldByName('ESTMAX').AsFloat;
     xtbrecebe.ParamByName('ESTMIN').AsFloat := xtbexporta.FieldByName('ESTMIN').AsFloat;
     xtbrecebe.ParamByName('ICMS').AsFloat := xtbexporta.FieldByName('ICMS').AsFloat;
     xtbrecebe.ParamByName('FRETE').AsFloat := xtbexporta.FieldByName('FRETE').AsFloat;
     xtbrecebe.ParamByName('ESTRESERV').AsInteger := 0;
     xtbrecebe.ParamByName('ESTPED').AsInteger := 0;
     xtbrecebe.ParamByName('ESTSALDO').AsInteger := DMEXPORTA.TItemPC.FieldByName('QTD').AsInteger;
     xtbrecebe.ParamByName('CVVPROAT').AsFloat := xtbexporta.FieldByName('CVVPROAT').AsFloat;
     xtbrecebe.ParamByName('CVVPROAT').AsFloat := xtbexporta.FieldByName('CVVPROAT').AsFloat;
     xtbrecebe.ParamByName('CVVPROVAR').AsFloat := xtbexporta.FieldByName('CVVPROVAR').AsFloat;
     xtbrecebe.ParamByName('CVPPROVAR').AsFloat := xtbexporta.FieldByName('CVPPROVAR').AsFloat;
     xtbrecebe.ParamByName('VENDATAP').AsFloat := xtbexporta.FieldByName('VENDATAP').AsFloat;
     xtbrecebe.ParamByName('VENDATAV').AsFloat := xtbexporta.FieldByName('VENDATAV').AsFloat;
     xtbrecebe.ParamByName('VENDVARP').AsFloat := xtbexporta.FieldByName('VENDVARP').AsFloat;
     xtbrecebe.ParamByName('VENDVARV').AsFloat := xtbexporta.FieldByName('VENDVARV').AsFloat;
     xtbrecebe.ParamByName('VALUNIT').AsFloat := xtbexporta.FieldByName('VALUNIT').AsFloat;
     xtbrecebe.ParamByName('VALREP').AsFloat := xtbexporta.FieldByName('VALREP').AsFloat;
     xtbrecebe.ParamByName('VALCUSTO').AsFloat := xtbexporta.FieldByName('VALCUSTO').AsFloat;
     xtbrecebe.ParamByName('AVVPROAT').AsFloat := xtbexporta.FieldByName('AVVPROAT').AsFloat;
     xtbrecebe.ParamByName('AVPPROAT').AsFloat := xtbexporta.FieldByName('AVPPROAT').AsFloat;
     xtbrecebe.ParamByName('AVVPROVAR').AsFloat := xtbexporta.FieldByName('AVVPROVAR').AsFloat;
     xtbrecebe.ParamByName('AVPPROVAR').AsFloat := xtbexporta.FieldByName('AVPPROVAR').AsFloat;
     xtbrecebe.ParamByName('LUCRATIVIDADE').AsFloat := xtbexporta.FieldByName('LUCRATIVIDADE').AsFloat;
     xtbrecebe.ParamByName('COEFDIV').AsFloat := xtbexporta.FieldByName('COEFDIV').AsFloat;
     xtbrecebe.ParamByName('VALOREST').AsFloat := xtbexporta.FieldByName('VALOREST').AsFloat;
     xtbrecebe.ParamByName('OUTROS').AsFloat := xtbexporta.FieldByName('OUTROS').AsFloat;
     xtbrecebe.ParamByName('QUANT2').AsFloat := xtbexporta.FieldByName('QUANT2').AsFloat;
     xtbrecebe.ParamByName('DTCAD').AsDate := xtbexporta.FieldByName('DTCAD').AsDateTime;
     xtbrecebe.ParamByName('ESTINI').AsFloat := 0;
     xtbrecebe.ParamByName('VALCUSDESP').AsFloat := xtbexporta.FieldByName('VALCUSDESP').AsFloat;
     xtbrecebe.ParamByName('ESTANTCONT').AsInteger := 0;
     xtbrecebe.ParamByName('CONTAGEM').AsInteger := 0;
     xtbrecebe.ParamByName('ESTSIMULADO').AsInteger := 0;
     xtbrecebe.ParamByName('VLRUNITCOMP').AsFloat := xtbexporta.FieldByName('VLRUNITCOMP').AsFloat;
     xtbrecebe.ParamByName('INDICE').AsFloat := xtbexporta.FieldByName('INDICE').AsFloat;
     xtbrecebe.ParamByName('BONIFICACAO').AsFloat := xtbexporta.FieldByName('BONIFICACAO').AsFloat;
     xtbrecebe.ParamByName('VLRBONIFIC').AsFloat := xtbexporta.FieldByName('VLRBONIFIC').AsFloat;
     xtbrecebe.ParamByName('DESCONTO').AsFloat := xtbexporta.FieldByName('DESCONTO').AsFloat;
     xtbrecebe.ParamByName('CLNC').AsFloat := xtbexporta.FieldByName('CLNC').AsFloat;
     xtbrecebe.ParamByName('MOD').AsFloat := xtbexporta.FieldByName('MOD').AsFloat;
     xtbrecebe.ParamByName('IMPEXP').AsFloat := xtbexporta.FieldByName('IMPEXP').AsFloat;
     xtbrecebe.ParamByName('IMPREND').AsFloat := xtbexporta.FieldByName('IMPREND').AsFloat;
     xtbrecebe.ParamByName('CONTSOC').AsFloat := xtbexporta.FieldByName('CONTSOC').AsFloat;
     xtbrecebe.ParamByName('COFINS').AsFloat := xtbexporta.FieldByName('COFINS').AsFloat;
     xtbrecebe.ParamByName('PIS').AsFloat := xtbexporta.FieldByName('PIS').AsFloat;
     xtbrecebe.ParamByName('MARGEMSEG').AsFloat := xtbexporta.FieldByName('MARGEMSEG').AsFloat;
     xtbrecebe.ParamByName('PERCMARGSEG').AsFloat := xtbexporta.FieldByName('PERCMARGSEG').AsFloat;
     xtbrecebe.ParamByName('REDUCBASE').AsFloat := xtbexporta.FieldByName('REDUCBASE').AsFloat;
     xtbrecebe.ParamByName('VLRCOMPSD').AsFloat := xtbexporta.FieldByName('VLRCOMPSD').AsFloat;
     xtbrecebe.ParamByName('ACRECIMO').AsFloat := xtbexporta.FieldByName('ACRECIMO').AsFloat;
     xtbrecebe.ParamByName('ESTCALC').AsInteger := DMEXPORTA.TItemPC.FieldByName('QTD').AsInteger;
     xtbrecebe.ParamByName('DATAATU').AsDate := xtbexporta.FieldByName('DATAATU').AsDateTime;
     xtbrecebe.ParamByName('HORAATU').AsTime := xtbexporta.FieldByName('HORAATU').AsDateTime;
     xtbrecebe.ParamByName('PRECOOFERTA').AsFloat := xtbexporta.FieldByName('PRECOOFERTA').AsFloat;
     xtbrecebe.ParamByName('DATAOFERTA').AsDate := xtbexporta.FieldByName('DATAOFERTA').AsDateTime;
     xtbrecebe.ParamByName('VENCIMENTOOFERTA').AsDate := xtbexporta.FieldByName('VENCIMENTOOFERTA').AsDateTime;
     xtbrecebe.ExecSQL;
     DMESTOQUE.TransacEstoque.CommitRetaining;
end;

//Alex- 22/04/2009: Altera registro referente a estoque
procedure TFExpImp.Atualizaestoque(Codigo: Integer);
begin

     xtbexporta := DMEXPORTA.TEstoque;
     xtbrecebe := DMESTOQUE.TEstoque;

     xtbrecebe.Close;
     xtbrecebe.SQL.Clear;
     xtbrecebe.SQL.Add('update ESTOQUE set ');
     xtbrecebe.SQL.Add('ULTCOMPRA=:ULTCOMPRA, ESTMAX=:ESTMAX, ESTMIN=:ESTMIN,');
     xtbrecebe.SQL.Add('ICMS=:ICMS, FRETE=:FRETE, CVVPROAT=:CVVPROAT, CVPPROAT=:CVPPROAT,');
     xtbrecebe.SQL.Add('CVVPROVAR=:CVVPROVAR, CVPPROVAR=:CVPPROVAR, VENDATAP=:VENDATAP, VENDATAV=:VENDATAV, VENDVARP=:VENDVARP, VENDVARV=:VENDVARV, VALUNIT=:VALUNIT,');
     xtbrecebe.SQL.Add('VALREP=:VALREP, VALCUSTO=:VALCUSTO, AVVPROAT=:AVVPROAT, AVPPROAT=:AVPPROAT, AVVPROVAR=:AVVPROVAR, AVPPROVAR=:AVPPROVAR, LUCRATIVIDADE=:LUCRATIVIDADE,');
     xtbrecebe.SQL.Add('COEFDIV=:COEFDIV, VALOREST=:VALOREST, OUTROS=:OUTROS, VALCUSDESP=:VALCUSDESP, ');
     xtbrecebe.SQL.Add('VLRUNITCOMP=:VLRUNITCOMP, DATAATU=:DATAATU, HORAATU=:HORAATU ');
     xtbrecebe.SQL.Add(' WHERE ESTOQUE.COD_ESTOQUE=:CODIGO ');
     xtbrecebe.ParamByName('CODIGO').AsInteger:=Codigo;
     xtbrecebe.ParamByName('ULTCOMPRA').AsDate := xtbexporta.FieldByName('ULTCOMPRA').AsDateTime;
     xtbrecebe.ParamByName('ESTMAX').AsFloat := xtbexporta.FieldByName('ESTMAX').AsFloat;
     xtbrecebe.ParamByName('ESTMIN').AsFloat := xtbexporta.FieldByName('ESTMIN').AsFloat;
     xtbrecebe.ParamByName('ICMS').AsFloat := xtbexporta.FieldByName('ICMS').AsFloat;
     xtbrecebe.ParamByName('FRETE').AsFloat := xtbexporta.FieldByName('FRETE').AsFloat;
     xtbrecebe.ParamByName('CVVPROAT').AsFloat := xtbexporta.FieldByName('CVVPROAT').AsFloat;
     xtbrecebe.ParamByName('CVpPROAT').AsFloat := xtbexporta.FieldByName('CVVPROAT').AsFloat;
     xtbrecebe.ParamByName('CVVPROVAR').AsFloat := xtbexporta.FieldByName('CVVPROVAR').AsFloat;
     xtbrecebe.ParamByName('CVPPROVAR').AsFloat := xtbexporta.FieldByName('CVPPROVAR').AsFloat;
     xtbrecebe.ParamByName('VENDATAP').AsFloat := xtbexporta.FieldByName('VENDATAP').AsFloat;
     xtbrecebe.ParamByName('VENDATAV').AsFloat := xtbexporta.FieldByName('VENDATAV').AsFloat;
     xtbrecebe.ParamByName('VENDVARP').AsFloat := xtbexporta.FieldByName('VENDVARP').AsFloat;
     xtbrecebe.ParamByName('VENDVARV').AsFloat := xtbexporta.FieldByName('VENDVARV').AsFloat;
     xtbrecebe.ParamByName('VALUNIT').AsFloat := xtbexporta.FieldByName('VALUNIT').AsFloat;
     xtbrecebe.ParamByName('VALREP').AsFloat := xtbexporta.FieldByName('VALREP').AsFloat;
     xtbrecebe.ParamByName('VALCUSTO').AsFloat := xtbexporta.FieldByName('VALCUSTO').AsFloat;
     xtbrecebe.ParamByName('AVVPROAT').AsFloat := xtbexporta.FieldByName('AVVPROAT').AsFloat;
     xtbrecebe.ParamByName('AVPPROAT').AsFloat := xtbexporta.FieldByName('AVPPROAT').AsFloat;
     xtbrecebe.ParamByName('AVVPROVAR').AsFloat := xtbexporta.FieldByName('AVVPROVAR').AsFloat;
     xtbrecebe.ParamByName('AVPPROVAR').AsFloat := xtbexporta.FieldByName('AVPPROVAR').AsFloat;
     xtbrecebe.ParamByName('LUCRATIVIDADE').AsFloat := xtbexporta.FieldByName('LUCRATIVIDADE').AsFloat;
     xtbrecebe.ParamByName('COEFDIV').AsFloat := xtbexporta.FieldByName('COEFDIV').AsFloat;
     xtbrecebe.ParamByName('VALOREST').AsFloat := xtbexporta.FieldByName('VALOREST').AsFloat;
     xtbrecebe.ParamByName('OUTROS').AsFloat := xtbexporta.FieldByName('OUTROS').AsFloat;
     xtbrecebe.ParamByName('VALCUSDESP').AsFloat := xtbexporta.FieldByName('VALCUSDESP').AsFloat;
     xtbrecebe.ParamByName('VLRUNITCOMP').AsFloat := xtbexporta.FieldByName('VLRUNITCOMP').AsFloat;
     xtbrecebe.ParamByName('DATAATU').AsDate := xtbexporta.FieldByName('DATAATU').AsDateTime;
     xtbrecebe.ParamByName('HORAATU').AsTime := xtbexporta.FieldByName('HORAATU').AsDateTime;
     xtbrecebe.ExecSQL;
     DMESTOQUE.TransacEstoque.CommitRetaining;
end;


//- 19/02/2009: insere registro referente a produto
procedure TFExpImp.produto;
begin

     xtbexporta := DMEXPORTA.TProduto;
     xtbrecebe := DMESTOQUE.TProduto;


     xtbrecebe.Close;
     xtbrecebe.SQL.Clear;
     xtbrecebe.SQL.Add('insert into PRODUTO');
     xtbrecebe.SQL.Add('(COD_PRODUTO, COD_INTERNO, DESCRICAO, APLICACAO, COD_SUBGRUPOPROD, COD_GRUPOPROD,');
     xtbrecebe.SQL.Add('COD_CST, COD_LOJA, VENDVISTA, VENDPRAZO, CUSTOVENDA, COMPVISTA, COMPPRAZO,');
     xtbrecebe.SQL.Add('QTDCOMP, QTDVEND)');
     xtbrecebe.SQL.Add('values');
     xtbrecebe.SQL.Add('(:COD_PRODUTO, :COD_INTERNO, :DESCRICAO, :APLICACAO, :COD_SUBGRUPOPROD,');
     xtbrecebe.SQL.Add(':COD_GRUPOPROD, :COD_CST, :COD_LOJA, :VENDVISTA, :VENDPRAZO, :CUSTOVENDA,');
     xtbrecebe.SQL.Add(':COMPVISTA, :COMPPRAZO, :QTDCOMP, :QTDVEND)');

     xtbrecebe.ParamByName('COD_PRODUTO').AsString := xcodprodutoupdate;
     FiltraTabela(DMMACS.TCodigo, 'codigo', '', '','');
     xtbrecebe.ParamByName('COD_SUBGRUPOPROD').AsInteger := DMMACS.TCodigo.FieldByName('cod_subgrupoprod').AsInteger-1;
     xtbrecebe.ParamByName('COD_GRUPOPROD').AsInteger := DMMACS.TCodigo.FieldByName('cod_grupoprod').AsInteger-1;
     xtbrecebe.ParamByName('COD_INTERNO').AsString := xtbexporta.FieldByName('COD_INTERNO').AsString;
     xtbrecebe.ParamByName('DESCRICAO').AsString := xtbexporta.FieldByName('DESCRICAO').AsString;
     xtbrecebe.ParamByName('APLICACAO').AsString := xtbexporta.FieldByName('APLICACAO').AsString;
     xtbrecebe.ParamByName('COD_CST').AsInteger := xtbexporta.FieldByName('COD_CST').AsInteger;
     xtbrecebe.ParamByName('COD_LOJA').AsInteger := DMMACS.TLoja.FieldByName('COD_LOJA').AsInteger;
     xtbrecebe.ParamByName('VENDVISTA').AsFloat := xtbexporta.FieldByName('VENDVISTA').AsFloat;
     xtbrecebe.ParamByName('VENDPRAZO').AsFloat := xtbexporta.FieldByName('VENDPRAZO').AsFloat;
     xtbrecebe.ParamByName('CUSTOVENDA').AsFloat := xtbexporta.FieldByName('CUSTOVENDA').AsFloat;
     xtbrecebe.ParamByName('COMPVISTA').AsFloat := xtbexporta.FieldByName('COMPVISTA').AsFloat;
     xtbrecebe.ParamByName('COMPPRAZO').AsFloat := xtbexporta.FieldByName('COMPPRAZO').AsFloat;
     xtbrecebe.ParamByName('QTDCOMP').AsFloat := xtbexporta.FieldByName('QTDCOMP').AsFloat;
     xtbrecebe.ParamByName('QTDVEND').AsFloat := xtbexporta.FieldByName('QTDVEND').AsFloat;
     xtbrecebe.ExecSQL;
     DMESTOQUE.TransacEstoque.CommitRetaining;
end;

//- 19/02/2009: insere registro referente a grupo
procedure TFExpImp.grupo;
begin

     xtbexporta := DMEXPORTA.TGrupo;
     xtbrecebe := DMESTOQUE.TGrupo;


     xtbrecebe.Close;
     xtbrecebe.SQL.Clear;
     xtbrecebe.SQL.Add('insert into GRUPOPROD');
     xtbrecebe.SQL.Add('(COD_GRUPOPROD, DESCRICAO, COD_INTERNO, TIPO)');
     xtbrecebe.SQL.Add('values');
     xtbrecebe.SQL.Add('(:COD_GRUPOPROD, :DESCRICAO, :COD_INTERNO, :TIPO)');

     xtbrecebe.ParamByName('COD_GRUPOPROD').AsInteger := xtbexporta.FieldByName('COD_GRUPOPROD').AsInteger;
     xtbrecebe.ParamByName('DESCRICAO').AsString := xtbexporta.FieldByName('DESCRICAO').AsString;
     xtbrecebe.ParamByName('COD_INTERNO').AsString := xtbexporta.FieldByName('COD_INTERNO').AsString;
     xtbrecebe.ParamByName('TIPO').AsString := xtbexporta.FieldByName('TIPO').AsString;
     xtbrecebe.ExecSQL;
     DMESTOQUE.TransacEstoque.CommitRetaining;
end;

//- 19/02/2009: insere registro referente a subgrupo
procedure TFExpImp.subgrupo;
begin

     xtbexporta := DMEXPORTA.TSubgru;
     xtbrecebe := DMESTOQUE.TSubgru;


     xtbrecebe.Close;
     xtbrecebe.SQL.Clear;
     xtbrecebe.SQL.Add('insert into SUBGRUPOPROD');
     xtbrecebe.SQL.Add('(COD_SUBGRUPOPROD, DESCRICAO, COD_INTERNO, TIPO)');
     xtbrecebe.SQL.Add('values');
     xtbrecebe.SQL.Add('(:COD_SUBGRUPOPROD, :DESCRICAO, :COD_INTERNO, :TIPO)');

     xtbrecebe.ParamByName('COD_SUBGRUPOPROD').AsInteger := xtbexporta.FieldByName('COD_SUBGRUPOPROD').AsInteger;
     xtbrecebe.ParamByName('DESCRICAO').AsString := xtbexporta.FieldByName('DESCRICAO').AsString;
     xtbrecebe.ParamByName('COD_INTERNO').AsString := xtbexporta.FieldByName('COD_INTERNO').AsString;
     xtbrecebe.ParamByName('TIPO').AsString := xtbexporta.FieldByName('TIPO').AsString;
     xtbrecebe.ExecSQL;
     DMESTOQUE.TransacEstoque.CommitRetaining;
end;

//- 19/02/2009: insere registro referente a cst
procedure TFExpImp.cst;
begin

     xtbexporta := DMEXPORTA.TCst;
     xtbrecebe := DMESTOQUE.TCST;


     xtbrecebe.Close;
     xtbrecebe.SQL.Clear;
     xtbrecebe.SQL.Add('insert into CST (COD_CST, DESCRICAO, COD_SIT_TRIB, INDICEECF)');
     xtbrecebe.SQL.Add('values');
     xtbrecebe.SQL.Add('(:COD_CST, :DESCRICAO, :COD_SIT_TRIB, :INDICEECF)');

     xtbrecebe.ParamByName('COD_CST').AsInteger := xtbexporta.FieldByName('COD_CST').AsInteger;
     xtbrecebe.ParamByName('DESCRICAO').AsString := xtbexporta.FieldByName('DESCRICAO').AsString;
     xtbrecebe.ParamByName('COD_SIT_TRIB').AsString := xtbexporta.FieldByName('COD_SIT_TRIB').AsString;
     xtbrecebe.ParamByName('INDICEECF').AsString := xtbexporta.FieldByName('INDICEECF').AsString;
     xtbrecebe.ExecSQL;
     DMESTOQUE.TransacEstoque.CommitRetaining;
end;

//- 19/02/2009: insere registro referente a unidade
procedure TFExpImp.unidade;
begin

     xtbexporta := DMEXPORTA.TUnidade;
     xtbrecebe := DMESTOQUE.TUnidade;


     xtbrecebe.Close;
     xtbrecebe.SQL.Clear;
     xtbrecebe.SQL.Add('insert into unidade');
     xtbrecebe.SQL.Add('(COD_UNIDADE, DESC_UNID, SIGLA_UNID, ARREDONDAR)');
     xtbrecebe.SQL.Add('values');
     xtbrecebe.SQL.Add('(:COD_UNIDADE, :DESC_UNID, :SIGLA_UNID, :ARREDONDAR)');

     xtbrecebe.ParamByName('COD_UNIDADE').AsInteger := xtbexporta.FieldByName('COD_UNIDADE').AsInteger;
     xtbrecebe.ParamByName('DESC_UNID').AsString := xtbexporta.FieldByName('DESC_UNID').AsString;
     xtbrecebe.ParamByName('SIGLA_UNID').AsString := xtbexporta.FieldByName('SIGLA_UNID').AsString;
     xtbrecebe.ParamByName('ARREDONDAR').AsString := xtbexporta.FieldByName('ARREDONDAR').AsString;
     xtbrecebe.ExecSQL;
     DMESTOQUE.TransacEstoque.CommitRetaining;
end;


// FUNÇÃO PARA GERAR UNIDADE DE VENDA
Function TFExpImp.UnidVenda: integer;
begin
     // TABELA UNIDADE BANCO DO PENDRIVE
     DMEXPORTA.TUnidade.Close;
     DMEXPORTA.TUnidade.SQL.Clear;
     DMEXPORTA.TUnidade.SQL.Add('SELECT * FROM UNIDADE WHERE UNIDADE.COD_UNIDADE = :CODIGO');
     DMEXPORTA.TUnidade.ParamByName('CODIGO').AsString := DMEXPORTA.TSubProd.FieldByName('COD_UNIDVENDA').AsString;
     DMEXPORTA.TUnidade.Open;

     // BANCO LOCAL TABELA UNIDADE
     DMESTOQUE.TUnidade.Close;
     DMESTOQUE.TUnidade.SQL.Clear;
     DMESTOQUE.TUnidade.SQL.Add('SELECT * FROM UNIDADE WHERE (UPPER (UNIDADE.DESC_UNID)) = (UPPER(' + #39 + DMEXPORTA.TUnidade.FieldByName('desc_unid').AsString + #39 + '))');
     DMESTOQUE.TUnidade.Open;

     If DMESTOQUE.TUnidade.IsEmpty
     Then Begin
         InserReg(DMESTOQUE.TUnidade,'UNIDADE','COD_UNIDADE');

         DMESTOQUE.TUnidade.FieldByName('ARREDONDAR').AsString := DMEXPORTA.TUnidade.FieldByName('ARREDONDAR').AsString;
         DMESTOQUE.TUnidade.FieldByName('DESC_UNID').AsString := DMEXPORTA.TUnidade.FieldByName('DESC_UNID').AsString;
         DMESTOQUE.TUnidade.FieldByName('SIGLA_UNID').AsString := DMEXPORTA.TUnidade.FieldByName('SIGLA_UNID').AsString;
         DMESTOQUE.TUnidade.Post;
     End;

     Result := DMESTOQUE.TUnidade.FieldByName('COD_UNIDADE').AsInteger;
end;

// função para gerar unidade de compra
Function TFExpImp.UnidCompra: integer;
begin
     // TABELA UNIDADE BANCO DO PENDRIVE
     DMEXPORTA.TUnidade.Close;
     DMEXPORTA.TUnidade.SQL.Clear;
     DMEXPORTA.TUnidade.SQL.Add('SELECT * FROM UNIDADE WHERE UNIDADE.COD_UNIDADE = :CODIGO');
     DMEXPORTA.TUnidade.ParamByName('CODIGO').AsString := DMEXPORTA.TSubProd.FieldByName('COD_UNIDCOMPRA').AsString;
     DMEXPORTA.TUnidade.Open;

     // BANCO LOCAL TABELA UNIDADE
     DMESTOQUE.TUnidade.Close;
     DMESTOQUE.TUnidade.SQL.Clear;
     DMESTOQUE.TUnidade.SQL.Add('SELECT * FROM UNIDADE WHERE (UPPER (UNIDADE.DESC_UNID)) = (UPPER(' + #39 + DMEXPORTA.TUnidade.FieldByName('desc_unid').AsString + #39 + '))');
     DMESTOQUE.TUnidade.Open;

     If DMESTOQUE.TUnidade.IsEmpty
     Then Begin
         InserReg(DMESTOQUE.TUnidade,'UNIDADE','COD_UNIDADE');

         DMESTOQUE.TUnidade.FieldByName('ARREDONDAR').AsString := DMEXPORTA.TUnidade.FieldByName('ARREDONDAR').AsString;
         DMESTOQUE.TUnidade.FieldByName('DESC_UNID').AsString := DMEXPORTA.TUnidade.FieldByName('DESC_UNID').AsString;
         DMESTOQUE.TUnidade.FieldByName('SIGLA_UNID').AsString := DMEXPORTA.TUnidade.FieldByName('SIGLA_UNID').AsString;
         DMESTOQUE.TUnidade.Post;
     End;

     Result := DMESTOQUE.TUnidade.FieldByName('COD_UNIDADE').AsInteger;

end;

procedure TFExpImp.BitBtn2Click(Sender: TObject);
begin
  inherited;
	If EdOrigem.Text=''
   Then Begin
       MessageDlg('INFORME O BANCO DE ORIGEM!', mtWarning, [mbOK], 0);
       EXIT;
   End;
   If UpperCase(EdDestino.Text)=UpperCase(FMenu.XTRILL)
   Then Begin
   	MessageDlg('A T E N Ç Ã O ! ! !'+#13+#10+''+#13+#10+'O BANCO DE DADOS DE ORIGEM NÃO PODE SER O MESMO EM USO PELA EMPRESA!', mtWarning, [mbOK], 0);
       BtnBDestino.SetFocus;
       Exit;
   End;
   If CBImpPendrive.Checked=False
   Then Begin
       If EdLoja.Text=''
       Then Begin
           EdLoja.SetFocus;
           MessageDlg('INFORME O CÓDIGO DA LOJA!', mtWarning, [mbOK], 0);
           EXIT;
       End;
       If EdPedc.Text=''
       Then Begin
           EdPedc.SetFocus;
           MessageDlg('INFORME O CÓDIGO DO PEDIDO DE COMPRA!', mtWarning, [mbOK], 0);
           EXIT;
       End;
       If EdCodProd.Text=''
       Then Begin
           EdCodProd.SetFocus;
           MessageDlg('INFORME O CÓDIGO DO PRODUTO!', mtWarning, [mbOK], 0);
           EXIT;
       End;
   End;
   If MessageDlg('Continuar a importação? ', mtConfirmation, [mbYes, mbNo], 0) = mrYes
   Then Begin
   	If CBImpPendrive.Checked=True
       Then Begin
           // função para conectar-se ao banco
           If Conecta_BancoDados(EdOrigem.Text) = true Then
               // função para importar pedido de compra
               ImpPenDrive;
       End
       Else Begin
           If ConectaBD=False
           Then Begin
               MessageDlg('NÃO FOI POSSIVEL FAZER A CONEXÃO COM O BANCO DE ORIGEM!'+#13+#10+'É PROVÁVEL QUE O ENDEREÇO INFORMADO NÃO SEJA VÁLIDO.', mtWarning, [mbOK], 0);
               BtnBOrigem.SetFocus;
               Exit;
           End;
           //Verifica diretorio
           If not DirectoryExists('C:\MZR\Arquivos') then
               ForceDirectories('C:\MZR\Arquivos');

           // Apaga o arquivo com Lista
           If FileExists('C:\MZR\Arquivos\Importação.TXT') then
               DeleteFile('C:\MZR\Arquivos\Importação.TXT');

           //CRIA ARQUIVO TXT PARA LISTA
           AssignFile(XTexto, 'C:\MZR\Arquivos\Importação.TXT');
           {$I-}
           Reset(XTexto);
           {$I+}
           if IOResult = 0 then
               Append(XTexto)
           else
               Rewrite(XTexto);
           Try
               //pedido de compra
               If CBImpPedC.Checked=True
               Then Begin
                   ImpPedC;
               End;
               //Produtos
               If CBImpProduto.Checked=True Then
                   ImpProd;
           finally
               CloseFile(Xtexto);
           End;
           //importação concluida
       End;
       MessageDlg('IMPORTAÇÃO CONCLUÍDA!', mtWarning, [mbOK], 0);
   End;

end;

procedure TFExpImp.FormCreate(Sender: TObject);
begin
//  inherited;

end;

procedure TFExpImp.FormShow(Sender: TObject);
begin
//  inherited;

end;

procedure TFExpImp.CBImpProdutoClick(Sender: TObject);
begin
  inherited;
	If CBImpProduto.Checked=True Then
       PRestProd.Visible:=True
   Else
       PRestProd.Visible:=False;
end;

procedure TFExpImp.BtnBalancaClick(Sender: TObject);
begin
  inherited;
   HabPainel(2);
end;

procedure TFExpImp.BitBtn3Click(Sender: TObject);
Var
  XArqCadtxt, XArqTItens, XArqSetor: TextFile;
  XLinhaCadTXT, XLinhaTXItens, XLinhaSetor: String;
begin
  inherited;
  	If CBFILIZOLA.Checked=True
   Then Begin
       // verifica se o check box do arquivo CADTXT foi selecionado
       If CBCADTXT.Checked = true
       Then Begin
           If FileExists('C:\MZR\Arquivos\CADTXT.TXT') then
               DeleteFile('C:\MZR\Arquivos\CADTXT.TXT');

           AssignFile(XArqCadtxt,'C:\MZR\Arquivos\CADTXT.TXT');
           {$I-}
           Reset(XArqCadtxt);
           {$I+}

           If IOResult = 0 then
               Append(XArqCadtxt)
           Else
               Rewrite(XArqCadtxt);
       End;

       // verifica se o check box do arquivo SETOR foi selecionado
       If CBSETORTXT.Checked = true
       Then Begin
           If FileExists('C:\MZR\Arquivos\SETORTXT.TXT') Then
               DeleteFile('C:\MZR\Arquivos\SETORTXT.TXT');

           AssignFile(XArqSetor,'C:\MZR\Arquivos\SETORTXT.TXT');
           {$I-}
           Reset(XArqSetor);
           {$I+}

           If IOResult = 0 Then
               Append(xarqsetor)
           Else
               Rewrite(XArqSetor);

       End;

   End;
  	If CBTOLEDO.Checked=True
   Then Begin
       If FileExists('C:\MZR\Arquivos\TXITENS.TXT') then
           DeleteFile('C:\MZR\Arquivos\TXITENS.TXT');

       AssignFile(XArqTItens,'C:\MZR\Arquivos\TXITENS.TXT');
       {$I-}
       Reset(XArqTItens);
       {$I+}

       If IOResult = 0 then
           Append(XArqTItens)
       Else
           Rewrite(XArqTItens);
   End;

   // dados para barra de progressão
   DMESTOQUE.Alx1.Close;
   DMESTOQUE.Alx1.SQL.Clear;
   DMESTOQUE.Alx1.SQL.Add('select count(subproduto.cod_subproduto) as TOTAL from subproduto');
   DMESTOQUE.Alx1.SQL.Add(' where (subproduto.balanca='+#39+'P'+#39+') OR (subproduto.balanca='+#39+'U'+#39+') ');
   DMESTOQUE.Alx1.Open;

   ProgressBar1.Position := 0;
   ProgressBar1.Min := 0;
   ProgressBar1.Max := DMESTOQUE.Alx1.FieldByname('total').AsInteger;

   // posição da barra de progressao
   XContador := 1;

   // buscando todos os produtos de balança
   DMESTOQUE.Alx.Close;
   DMESTOQUE.Alx.SQL.Clear;
   DMESTOQUE.Alx.SQL.Add(' select subproduto.contrint, subproduto.desccupom, subproduto.quantgarantia, estoque.vendvarv, estoque.precooferta, subproduto.balanca from subproduto ');
   DMESTOQUE.Alx.SQL.Add(' left join estoque on subproduto.cod_subproduto = estoque.cod_subprod ');
   DMESTOQUE.Alx.SQL.Add(' where (subproduto.balanca='+#39+'P'+#39+') OR (subproduto.balanca='+#39+'U'+#39+') ');
   DMESTOQUE.Alx.Open;
	DMESTOQUE.Alx.First;

   While not DMESTOQUE.Alx.eof do
   Begin

       // BARRA DE PROGRESSAO VISIVEL
       ProgressBar1.Visible := TRUE;
       ProgressBar1.BringToFront;
       ProgressBar1.Top := 300;

   	If CBFILIZOLA.Checked=True
       Then Begin
           // verifica se o check box do arquivo CADTXT foi selecionado
           If CBCADTXT.Checked = true
           Then Begin
               XLinhaCadTXT:='';
               //codigo do produto
               XLinhaCadTXT:=XLinhaCadTXT+Copy(ConcatZero(DMESTOQUE.Alx.FieldByName('contrint').AsString, 6), 1, 6);
               //Tipo Balança
               XLinhaCadTXT:=XLinhaCadTXT+ConcatZero(DMESTOQUE.Alx.FieldByName('balanca').AsString, 1);
               //descricao cupom
               XLinhaCadTXT:=XLinhaCadTXT+Copy(ConcatEspacoDir(DMESTOQUE.Alx.FieldByName('desccupom').AsString, 22), 1, 22);
               //valor
               // primeiro verifica se o campo precooferta possui valor. Caso venha a ter, o valor repassado sera do PrecoOferta, senao o preco a vista
               If DMESTOQUE.Alx.FieldByName('precooferta').AsCurrency <> 0 Then
                   XLinhaCadTXT:=XLinhaCadTXT+ConcatZero(SubstituiCaracter(FormatFloat('0.00', DMESTOQUE.Alx.FieldByName('precooferta').AsCurrency), ',', ''), 7)
               Else
                   XLinhaCadTXT:=XLinhaCadTXT+ConcatZero(SubstituiCaracter(FormatFloat('0.00', DMESTOQUE.Alx.FieldByName('vendvarv').AsCurrency), ',', ''), 7);
               //validade
               XLinhaCadTXT:=XLinhaCadTXT+ConcatZero(DMESTOQUE.Alx.FieldByName('quantgarantia').AsString, 3);
               // grava dados
               Writeln(XArqCadtxt, xLinhaCadTXT);
           End;
           // verifica se foi selecionado o check box SETOR
           If CBSETORTXT.Checked = true
           Then Begin
               XLinhaSetor := '';
               // SETOR
               XLinhaSetor := 'PESAVEIS    ';

               // CONTROLE INTERNO
               XLinhaSetor := XLinhaSetor + Copy(ConcatZero(DMESTOQUE.Alx.FieldByName('contrint').AsString, 6), 1, 6);

               // SEQUENCIA DE NÚMEROS
               XLinhaSetor := XLinhaSetor + ConcatZero(IntToStr(XContador),4) + '000';

               // grava dados
               Writeln(XArqSetor, XLinhaSetor);
           End;
       End;
       If CBTOLEDO.Checked=True
       Then Begin
           XLinhaTXItens:='0102';
           //tipo blança
           If DMESTOQUE.Alx.FieldByName('balanca').AsString='P' Then
	        	XLinhaTXItens:=XLinhaTXItens+'0'
           Else
	        	XLinhaTXItens:=XLinhaTXItens+'1';
           //codigo do produto
           XLinhaTXItens:=XLinhaTXItens+ConcatZero(DMESTOQUE.Alx.FieldByName('contrint').AsString, 6);
           //valor
           XLinhaTXItens:=XLinhaTXItens+ConcatZero(SubstituiCaracter(FormatFloat('0.00', DMESTOQUE.Alx.FieldByName('vendvarv').AsCurrency), ',', ''), 6);
           //validade
           XLinhaTXItens:=XLinhaTXItens+ConcatZero(DMESTOQUE.Alx.FieldByName('quantgarantia').AsString, 3);
           //descricao cupom
           XLinhaTXItens:=XLinhaTXItens+ConcatEspacoDir(DMESTOQUE.Alx.FieldByName('desccupom').AsString, 22);
           // grava dados
           Writeln(XArqTItens, XLinhaTXItens);
       End;

       // POSIÇÃO ATUAL DA BARRA DE PROGRESSAO
       ProgressBar1.Position := XContador;
       XContador := XContador + 1;

       DMESTOQUE.Alx.Next;
   End;
   // VERIFICANDO SE AS VARIAVEIS FORAM USADAS E FECHANDO ARQUIVOS
   If XLinhaCadTXT <> '' Then
       CloseFile(XArqCadtxt);

   If XLinhaTXItens <> '' Then
       CloseFile(XArqTItens);
                  
   If XLinhaSetor <> ''
   Then Begin
       writeln(XArqSetor, '');
       CloseFile(XArqSetor);
   End;

   MessageDlg('Produtos exportados', mtInformation, [mbOK], 0);
   // OCULTAND BARRA DE PROGRESSAO
   ProgressBar1.Visible := FALSE;
   ProgressBar1.SendToBack;
end;

procedure TFExpImp.BBAtualizarClick(Sender: TObject);
begin
  inherited;
   If (RBImportar.Checked = false) and (RBExportar.Checked = false)
   then Begin
       Mensagem(' A T E N Ç Ã O ', 'Selecione uma das opções acima: ' + #13 + #13 + '* Importação' + #13 + '* Exportação' , '', 1, 1, False, 'A');
       Exit;
   End;

   If Mensagem('   A T E N Ç Ã O   ', 'Tem certeza que deseja atualizar a lista de cadastro ?' , '', 2, 3, False, 'C') = 3
   Then Begin
       Exit;
   End
   Else Begin
   	//verifica e cria diretório padrão para exportar e importar os arquivos textos para o mgmobile
       //verifica imptxt (pasta q irá conter os arquivos de exportação do sistema orion para importação para o software de palm)
		if not DirectoryExists('C:\MGMOBILE\IMPTXT') then
  			ForceDirectories('C:\MGMOBILE\IMPTXT');
       //verifica exptxt (pasta q irá conter os arquivos de importação para o sistema orion vindo do software de palm)
		if not DirectoryExists('C:\MGMOBILE\EXPTXT') then
  			ForceDirectories('C:\MGMOBILE\EXPTXT');

       If RBExportar.Checked = true then
           ExportaDados;
       If RBImportar.Checked = true then
           ImportaDados;
   End;
end;

// Exporta clientes
Procedure TFExpImp.Exporta_Clientes;
var
XTipoPessoa: string;
begin
   Try

       PMobile.Refresh;

       XContador := 0;

       DMESTOQUE.Alx.Close;
       DMESTOQUE.Alx.SQL.Clear;
       DMESTOQUE.Alx.SQL.Add('select count(cliente.cod_cliente) as CONTADOR from cliente');
       DMESTOQUE.Alx.Open;

       ProgressBar1.Position := 0;
       ProgressBar1.Min := 0;
       ProgressBar1.Max := DMESTOQUE.Alx.FieldByName('contador').AsInteger;

       DMESTOQUE.TRel.Close;
       DMESTOQUE.TRel.SQL.Clear;
       DMESTOQUE.TRel.SQL.Add(' SELECT cliente.cod_cliente, pessoa.cod_pessoa, cidade.cod_cidade, cidade.nome AS CIDADE, cliente.cod_vendedor, funcionario.cod_func, ');
       DMESTOQUE.TRel.SQL.Add(' regiao.cod_regiao, pessoa.nome AS NOME, pessoaj.razao_social AS RAZAOS,pessoa.endereco, pessoa.cpfcnpj, pessoa.bairro, pessoa.cep, pessoa.telrel, ');
       DMESTOQUE.TRel.SQL.Add(' pessoa.dtnasc, cliente.data_cad, estado.uf_estado, pessoaf.rg, pessoaj.insc_est AS INSCE ');
       DMESTOQUE.TRel.SQL.Add(' FROM cliente ');
       DMESTOQUE.TRel.SQL.Add(' Left Join pessoa on cliente.cod_pessoa = pessoa.cod_pessoa ');
       DMESTOQUE.TRel.SQL.Add(' left join pessoaf on pessoaf.cod_pessoa = pessoa.cod_pessoa ');
       DMESTOQUE.TRel.SQL.Add(' left join pessoaJ on pessoaJ.cod_pessoa = pessoa.cod_pessoa ');
       DMESTOQUE.TRel.SQL.Add(' left join funcionario on funcionario.cod_func = cliente.cod_vendedor ');
       DMESTOQUE.TRel.SQL.Add(' left join cidade on pessoa.cod_cidade = cidade.cod_cidade ');
       DMESTOQUE.TRel.SQL.Add(' left join regiao on regiao.cod_regiao = pessoa.cod_regiao ');
       DMESTOQUE.TRel.SQL.Add(' left join estado on estado.cod_estado = cidade.cod_estaDO');
       DMESTOQUE.TRel.SQL.Add(' Where cliente.ativo='+#39+'1'+#39);
       DMESTOQUE.TRel.Open;

       If FileExists('C:\MGMOBILE\IMPTXT\CADCLI.TXT') then
           DeleteFile('C:\MGMOBILE\IMPTXT\CADCLI.TXT');

       AssignFile(XTexto,'C:\MGMOBILE\IMPTXT\CADCLI.TXT');
       {$I-}
       Reset(XTexto);
       {$I+}

       If IOResult = 0 then
           Append(XTexto)
       Else
           Rewrite(XTexto);


       If not DMESTOQUE.TRel.IsEmpty
       Then Begin

           // move para o primeiro registro
           DMESTOQUE.TRel.First;
           while not DMESTOQUE.TRel.Eof do
           Begin
               XLinha := '';

               ProgressBar1.Visible := true;
               ProgressBar1.BringToFront;
               ProgressBar1.Position := XContador;

               // função que concatena espaço a direita - codigo cliente
               XLinha := XLinha + Copy(ConcatEspacoDir(DMESTOQUE.TRel.FieldByName('Cod_Cliente').AsString,6) + '|', 1, 7);

               // nome do cliente
               If DMESTOQUE.TRel.FieldByName('RAZAOS').AsString<>''
               Then Begin
               	//Pessoa Juridica
                   If Length(DMESTOQUE.TRel.FieldByName('RAZAOS').AsString) < 50
                   Then Begin
                       XLinha := XLinha + ConcatEspacoDir(DMESTOQUE.TRel.FieldByName('RAZAOS').AsString,50) + '|';
                   End
                   Else Begin
                       XString := Copy(DMESTOQUE.TRel.FieldByName('RAZAOS').AsString, 1, 49);
                       XLinha := XLinha + XString + '.' + '|';
                   End;
               End
               Else Begin
                   //pessoa fisica
					If Length(DMESTOQUE.TRel.FieldByName('Nome').AsString) < 50
                   Then Begin
                       XLinha := XLinha + ConcatEspacoDir(DMESTOQUE.TRel.FieldByName('Nome').AsString,50) + '|';
                   End
                   Else Begin
                       XString := Copy(DMESTOQUE.TRel.FieldByName('Nome').AsString, 1, 49);
                       XLinha := XLinha + XString + '.' + '|';
                   End;
               End;


               // endereço
               If Length(DMESTOQUE.TRel.FieldByName('endereco').AsString) < 50
               Then Begin
                   XLinha := XLinha + ConcatEspacoDir(DMESTOQUE.TRel.FieldByName('endereco').AsString,50) + '|';
               End
               Else Begin
                   XString := copy(DMESTOQUE.TRel.FieldByName('endereco').AsString,1,49);
                   XLinha := XLinha + XString + '.' + '|';
               End;

               // bairro
               If Length(DMESTOQUE.TRel.FieldByName('bairro').AsString) < 25
               Then Begin
                   XLinha := XLinha + ConcatEspacoDir(DMESTOQUE.TRel.FieldByName('bairro').AsString,25) + '|';
               End
               Else Begin
                   XString := copy(DMESTOQUE.TRel.FieldByName('bairro').AsString,1,24);
                   XLinha := XLinha + XString + '.' + '|';
               End;

               // cidade
               XLinha := XLinha + Copy(ConcatEspacoDir(DMESTOQUE.TRel.FieldByName('cidade').AsString,30) + '|', 1, 31);

               // sigla estado
               XLinha := XLinha + Copy(ConcatEspacoDir(DMESTOQUE.TRel.FieldByName('uf_estado').AsString,2) + '|', 1, 3);

               // cep
               XLinha := XLinha + Copy(ConcatEspacoDir(DMESTOQUE.TRel.FieldByName('cep').AsString,10) + '|', 1, 11);

               // CPFCNPJ
               XLinha := XLinha + Copy(ConcatEspacoDir(DMESTOQUE.TRel.FieldByName('CPFCNPJ').AsString,18) + '|', 1, 19);

               // seleciona dados de pessoa juridica
               DMESTOQUE.Alx.Close;
       		DMESTOQUE.Alx.SQL.Clear;
       		DMESTOQUE.Alx.sql.Add('select * from pessoaj');
       		DMESTOQUE.Alx.sql.Add('where pessoaj.cod_pessoa= :CODIGO');
       		DMESTOQUE.Alx.ParamByName('CODIGO').AsString := DMESTOQUE.TRel.FieldByName('Cod_pessoa').AsString;
       		DMESTOQUE.Alx.Open;

               If not DMESTOQUE.Alx.IsEmpty
               Then Begin
                   XTipoPessoa := 'J';
                   XLinha := XLinha + Copy(ConcatEspacoDir(DMESTOQUE.Alx.FieldByName('Insc_Est').AsString,16) + '|', 1, 17);
               End
               Else Begin
                   XTipoPessoa := 'F';
                   XLinha := XLinha + Copy(ConcatEspacoDir(DMESTOQUE.TRel.fieldByName('RG').AsString,16) + '|', 1, 17);
               End;

               // telefone
               XString := SubstituiCaracter(DMESTOQUE.TRel.FieldByName('TelRel').AsString,' ','');
               If Length(XString) < 14
               Then Begin
                   XLinha := XLinha + ConcatEspacoDir(XString,14) + '|';
               End
               Else Begin
                   XString := copy(XString,1,14);
                   XLinha := XLinha + XString+ '|';
               End;

               // fax
               XLinha := XLinha + Copy(ConcatEspacoDir('',14) + '|', 1, 15);

               // comprador
               XLinha := XLinha + Copy(ConcatEspacoDir('',35) + '|', 1, 36);

               // data nascimnto
               XLinha := XLinha + Copy(ConcatEspacoDir(DMESTOQUE.TRel.FieldByName('dtnasc').AsString,10) + '|', 1, 11);

               // observação
               XLinha := XLinha + Copy(ConcatEspacoDir('',40) + '|', 1, 41);

               // area
               XLinha := XLinha + Copy(ConcatEspacoDir(DMESTOQUE.TRel.fieldbyname('cod_func').AsString,4) + '|', 1, 5);

               // data cadastro
               XLinha := XLinha +Copy(ConcatEspacoDir(DMESTOQUE.TRel.FieldByName('data_cad').AsString,10) + '|', 1, 11);

               // limite
               XLinha := XLinha + Copy(ConcatEspacoDir('',12) + '|', 1, 13);

               // fundação da empresa
               XLinha := XLinha + Copy(ConcatEspacoDir('',10) + '|', 1, 11);

               // predio
               XLinha := XLinha + 'S' + '|';

               // veiculos
               XLinha := XLinha + ConcatEspacoDir('',2) + '|';

               // referencia
               XLinha := XLinha + ConcatEspacoDir('',20) + '|';

               // nome fantasia referencia
               XLinha := XLinha + ConcatEspacoDir('',20) + '|';

               // fone referencia
               XLinha := XLinha + ConcatEspacoDir('',15) + '|';

               // fone referencia 2
               XLinha := XLinha + ConcatEspacoDir('',15) + '|';

               // banco cliente
               XLinha := XLinha + ConcatEspacoDir('',15) + '|';

               // fone banc cliente
               XLinha := XLinha + ConcatEspacoDir('',15) + '|';

               // tipo de empresa
               XLinha := XLinha + XTipoPessoa + '|';

               // celular
               XLinha := XLinha + ConcatEspacoDir('',14) + '|';

               // analise cliente
               XLinha := XLinha + ConcatEspacoDir('1',11) + '|';

               //Email
               DMESTOQUE.Alx1.Close;
               DMESTOQUE.Alx1.SQL.Clear;
               DMESTOQUE.Alx1.SQL.add('select email.email from email');
               DMESTOQUE.Alx1.sql.Add('where (email.cod_pessoa = :CODIGO) and (email.email <> '+#39+#39+')');
               DMESTOQUE.Alx1.ParamByName('CODIGO').AsString := DMESTOQUE.TRel.FieldByName('Cod_pessoa').AsString;
               DMESTOQUE.Alx1.Open;

               If DMESTOQUE.Alx1.IsEmpty then
                   XLinha := XLinha + ConcatEspacoDir('',40) + '|'
               Else
                   XLinha := XLinha + Copy(ConcatEspacoDir(DMESTOQUE.Alx1.FieldByName('email').AsString,40) + '|', 1, 41);

           // grava dados
           Writeln(XTexto, XLinha);

           XContador := XContador + 1;

           // proximo cliente
           DMESTOQUE.TRel.Next;
           End;
           Mensagem(' A T E N Ç Ã O ', IntToStr(XContador) + ' clientes exportados.', '', 1, 1, False, 'I');
           ProgressBar1.Visible := false;
           ProgressBar1.SendToBack;
           DMESTOQUE.TransacEstoque.CommitRetaining;
       End;
       CloseFile(XTexto);       
   Except
       Mensagem(' A T E N Ç Ã O ', 'Falha na exportação de clientes.', '', 1, 1, False, 'E');
       Exit;
   End;
end;

// exporta produtos
Procedure TFExpImp.Exporta_Produtos;
begin
   Try

       PMobile.Refresh;

       XContador := 0;

       DMESTOQUE.Alx.Close;
       DMESTOQUE.Alx.SQL.Clear;
       DMESTOQUE.Alx.SQL.Add('select count(subproduto.cod_subproduto) as  CONTADOR from subproduto');
       DMESTOQUE.Alx.Open;

       ProgressBar1.Position := 0;
       ProgressBar1.Min := 0;
       ProgressBar1.Max := DMESTOQUE.Alx.FieldByName('contador').AsInteger;

       DMESTOQUE.TRel.Close;
       DMESTOQUE.TRel.SQL.Clear;
       DMESTOQUE.TRel.SQL.Add('select estoque.cod_estoque, subproduto.contrint AS controle, subproduto.cod_subproduto, subproduto.descricao, unidade.sigla_unid, subproduto.embprod,');
       DMESTOQUE.TRel.SQL.Add('estoque.estfisico, estoque.vendvarv, estoque.desconto, estoque.cvvprovar, estoque.margemseg, estoque.vlrbonific as BONIFICACAO');
       DMESTOQUE.TRel.SQL.Add('from estoque');
       DMESTOQUE.TRel.SQL.Add('join subproduto on estoque.cod_subprod = subproduto.cod_subproduto');
       DMESTOQUE.TRel.SQL.Add('left join unidade on subproduto.cod_unidvenda = unidade.cod_unidade');
       DMESTOQUE.TRel.Open;

       If FileExists('C:\MGMOBILE\IMPTXT\CADPRO.TXT') then
           DeleteFile('C:\MGMOBILE\IMPTXT\CADPRO.TXT');

       AssignFile(XTexto,'C:\MGMOBILE\IMPTXT\CADPRO.TXT');
       {$I-}
       Reset(XTexto);
       {$I+}

       If IOResult = 0 then
           Append(XTexto)
       Else
           Rewrite(XTexto);


       If not DMESTOQUE.TRel.IsEmpty
       Then Begin

           // move para o primeiro registro
           DMESTOQUE.TRel.First;

           while not DMESTOQUE.TRel.Eof do
           Begin
               XLinha := '';

               ProgressBar1.Visible := true;
               ProgressBar1.BringToFront;
               ProgressBar1.Position := XContador;

               // codigo do subproduto
               XLinha := XLinha + Copy(ConcatEspacoDir(DMESTOQUE.TRel.FieldByName('controle').AsString,15) + '|',1 , 16);

               // descricao
               If Length(DMESTOQUE.TRel.fieldByName('descricao').AsString) <= 40
               Then Begin
                   XLinha := XLinha + ConcatEspacoDir(DMESTOQUE.TRel.fieldByName('descricao').AsString,40) + '|';
               End
               Else Begin
                   XString := Copy(DMESTOQUE.TRel.fieldByName('descricao').AsString,1,39);
                   XLinha := XLinha + XString + '.' + '|';
               End;

               // unidade
               If Length(DMESTOQUE.TRel.FieldByName('sigla_unid').AsString) <= 3
               Then Begin
                   XLinha := XLinha + ConcatEspacoDir(DMESTOQUE.TRel.FieldByName('sigla_unid').AsString,3) + '|';
               End
               Else Begin
                   XString := copy(DMESTOQUE.TRel.FieldByName('sigla_unid').AsString,1,3);
                   XLinha := XLinha + XString + '|';
               End;

               // embalagem
               If DMESTOQUE.TRel.FieldByName('embprod').AsString <> ''
               Then Begin
                   XLinha := XLinha + ConcatEspacoDir(DMESTOQUE.TRel.FieldByName('embprod').AsString,8) + '|';
               End
               Else Begin
                   XLinha := XLinha + ConcatEspacoDir('0',8) + '|';
               End;

               // qtde
               if DMESTOQUE.TRel.FieldByName('estfisico').AsString <> ''
               Then Begin
                   XLinha := XLinha + ConcatEspacoDir(FormatFloat('0.00',DMESTOQUE.TRel.FieldByName('estfisico').AsCurrency),8) + '|';
               End
               Else Begin
                   XLinha := XLinha + ConcatEspacoDir('0',8) + '|';
               End;

               // preco de venda bruto
               If DMESTOQUE.TRel.FieldByName('vendvarv').AsString <> ''
               Then Begin
                   XLinha := XLinha + ConcatEspacoDir(DMESTOQUE.TRel.FieldByName('vendvarv').AsString,8) + '|';
               End
               Else Begin
                   XLinha := XLinha + ConcatEspacoDir('0',8) + '|';
               End;

               // desconto de venda
               XLinha := XLinha + ConcatEspacoDir(FormatFloat('0,00',(100 - ((DMESTOQUE.TRel.FieldByName('margemseg').AsCurrency * 100)/DMESTOQUE.TRel.FieldByName('vendvarv').AsCurrency))),5) + '|';

               // comissao produto
               If DMESTOQUE.TRel.FieldByName('cvvprovar').AsString <> ''
               Then Begin
                   XLinha := XLinha + ConcatEspacoDir(DMESTOQUE.TRel.FieldByName('cvvprovar').AsString,5) + '|';
               End
               Else Begin
                   XLinha := XLinha + ConcatEspacoDir('0',5) + '|';
               End;

               // qtde comprada do produto
               XLinha := XLinha + ConcatEspacoDir('0',8) + '|';

               // bonificacao como abreviatura
               XLinha := XLinha + ConcatEspacoDir(DMESTOQUE.TRel.FieldByname('BONIFICACAO').AsString,15) + '|';

               // forneceedor
               XLinha := XLInha + '0000' + '|';

               // preco de tabela
               If DMESTOQUE.TRel.FieldByName('vendvarv').AsString <> ''
               Then Begin
                   XLinha := XLinha + ConcatEspacoDir(DMESTOQUE.TRel.FieldByName('vendvarv').AsString,8) + '|';
               End
               Else Begin
                   XLinha := XLinha + ConcatEspacoDir('0',8) + '|';
               End;

               Writeln(xtexto, xlinha);

               XContador := XContador + 1;

               // proximo produto
               DMESTOQUE.TRel.Next;
           End;
           Mensagem(' A T E N Ç Ã O ', IntToStr(XContador) + ' produtos exportados.', '', 1, 1, False, 'I');
           ProgressBar1.Visible := false;
           ProgressBar1.SendToBack;
       End;
       CloseFile(XTexto);
   Except
       Mensagem(' A T E N Ç Ã O ', 'Falha na exportação de produtos.', '', 1, 1, False, 'E');
       Exit;
   End;
end;

// exporta formas de pagamento
Procedure TFExpImp.Exporta_FormPag;
begin
   Try

       PMobile.Refresh;

       XContador := 0;

       DMESTOQUE.Alx.Close;
       DMESTOQUE.Alx.SQL.Clear;
       DMESTOQUE.Alx.SQL.Add('select count(formpag.cod_formpag) as CONTADOR from formpag');
       DMESTOQUE.Alx.Open;

       ProgressBar1.Position := 0;
       ProgressBar1.Min := 0;
       ProgressBar1.Max := DMESTOQUE.Alx.FieldByName('contador').AsInteger;

       DMESTOQUE.TRel.Close;
       DMESTOQUE.TRel.SQL.Clear;
       DMESTOQUE.TRel.SQL.Add('select * from formpag');
       DMESTOQUE.TRel.Open;

       If FileExists('C:\MGMOBILE\IMPTXT\CADTPG.TXT') then
           DeleteFile('C:\MGMOBILE\IMPTXT\CADTPG.TXT');

       AssignFile(XTexto,'C:\MGMOBILE\IMPTXT\CADTPG.TXT');
       {$I-}
       Reset(XTexto);
       {$I+}

       If IOResult = 0 then
           Append(XTexto)
       Else
           Rewrite(XTexto);

       If not DMESTOQUE.TRel.IsEmpty
       Then Begin

           // move para o primiero registro
           DMESTOQUE.TRel.First;

           while not DMESTOQUE.TRel.Eof do
           Begin

               XLinha := '';

               ProgressBar1.Visible := true;
               ProgressBar1.BringToFront;
               ProgressBar1.Position := XContador;

               // codigo da forma de pagamento
               XLinha := XLinha + copy(ConcatEspacoDir(DMESTOQUE.TRel.FieldByName('cod_formpag').AsString,3) + '|', 1, 4);

               // descricao forma pagamento
               If Length(DMESTOQUE.TRel.fieldbyname('descricao').AsString) <= 20
               Then Begin
                   XLinha := XLinha + ConcatEspacoDir(DMESTOQUE.TRel.FieldByName('descricao').AsString,20) + '|';
               End
               Else Begin
                   XString := copy(DMESTOQUE.TRel.fieldbyname('descricao').AsString,1,19);
                   XLinha := XLinha + XString + '.' + '|';
               End;

               // porcentagem de acrescimo
               XLinha := XLinha + Copy(ConcatEspacoDir('',5) + '|', 1, 6);

               // porcentagem de desconto
               XLinha := XLinha + Copy(ConcatEspacoDir('',5) + '|',1, 6);

               Writeln(xtexto, xlinha);

               XContador := XContador + 1;

           // proximo registro
           DMESTOQUE.TRel.Next;

           End;
           Mensagem(' A T E N Ç Ã O ', IntToStr(XContador) + ' formas de pag. exportadas.', '', 1, 1, False, 'I');
           ProgressBar1.Visible := false;
           ProgressBar1.SendToBack;
       End;
       CloseFile(XTexto);       
   Except
       Mensagem(' A T E N Ç Ã O ', 'Falha na exportação de formas de pagamentos.', '', 1, 1, False, 'I');
   End;
end;

// desativa todos os check box
procedure TFExpImp.DesativaCheckBox;
begin
   CBCliente.Checked := false;
   CBProdutos.Checked := false;
   CBPrazo.Checked := false;
   CBCabecalhoPed.Checked := false;
   CBRecadosPed.Checked := false;
end;

// ativa todos enabled dos checkBox
procedure TFExpImp.AtivaEnabled;
begin
   CBCliente.Enabled := true;
   CBProdutos.Enabled := true;
   CBPrazo.Enabled := true;
   CBCabecalhoPed.Enabled := true;
   CBRecadosPed.Enabled := true;

end;





procedure TFExpImp.BtnMobileClick(Sender: TObject);
begin
  inherited;
  
   HabPainel(3);
   // desativa todos os checkbox
   DesativaCheckBox;
   // desativa os radiobuttons
   RBExportar.Checked := false;
   RBImportar.Checked := false;
   // ativa todos enabled dos checkBox
   AtivaEnabled;

end;

procedure TFExpImp.RBExportarClick(Sender: TObject);
begin
  inherited;
  	If RBExportar.Checked=True
   Then Begin
       BtnReceber.Visible:=False;
       BtnTrabalharArquivos.Visible:=False;
   End;
   // desativa todos os checkbox
   DesativaCheckBox;

   // ativa todos enabled dos checkBox
   AtivaEnabled;

   CBCliente.Checked := true;
   CBProdutos.Checked := true;
   CBPrazo.Checked := true;
   CBCabecalhoPed.Enabled := false;
   CBRecadosPed.Enabled := false;
end;

procedure TFExpImp.RBImportarClick(Sender: TObject);
begin
  inherited;
  	If RBImportar.Checked=True
   Then Begin
       BtnReceber.Visible:=True;
       BtnTrabalharArquivos.Visible:=True;
   End;
   // desativa todos os checkbox
   DesativaCheckBox;

   // ativa todos enabled dos checkBox
   AtivaEnabled;

   CBProdutos.Enabled := false;
   CBPrazo.Enabled := false;
   CBCliente.Checked := true;
   CBCabecalhoPed.Checked := true;
   CBRecadosPed.Checked := true;

end;

// importa clientes
Function TFExpImp.Importa_Clientes: Boolean;
var
RG_IE, XTipo_Pes: string;
begin
	Result:=True;
   MErros.Lines.Add('    CLIENTES:');
   If FileExists('C:\MGMOBILE\EXPTXT\'+ DMPESSOA.TFuncionario.FieldByName('NUMPALM').AsString + '\ARQCLI.TXT')
   Then Begin
       Try
       	PMobile.Refresh;

           //CARREGA ARQUIVO TXT DE CLIENTES
           AssignFile(XTexto,'C:\MGMOBILE\EXPTXT\'+ DMPESSOA.TFuncionario.FieldByName('NUMPALM').AsString + '\ARQCLI.TXT');
           {$I-}
           Reset(XTexto);
           {$I+}

           //CARREGA ARQUIVO TXT DE CLIENTES 
           AssignFile(XTXT,'C:\MGMOBILE\EXPTXT\'+ DMPESSOA.TFuncionario.FieldByName('NUMPALM').AsString + '\ARQCLI.TXT');
           {$I-}
           Reset(XTXT);
           {$I+}

           XContador := 0;
           XCont := 0;

           PBMobile.Position := 0;

           // enquanto naum for o final do arquivo, vai contando o numero de linhas para informar ao MAX do progress bar
           While Not Eof(XTXT) do
           Begin
               Readln(xtxt,xlinha);
               XLinha := '';
               XCont := XCont + 1;
           End;

           PBMobile.Min := 0;
           PBMobile.Max := XCont;
           PBMobile.Visible := true;
           PBMobile.BringToFront;

           // INICIA IMPORTAÇÃO
           while not Eof(XTexto) do
           begin
               ReadLN(Xtexto, XLinha);
               PBMobile.Position := XContador;

               // o cpfcnpj nao pode estar em branco e deve ser válido
               If (trim(copy(XLinha,181,18)) <> '')
               Then Begin
                   DMGEOGRAFIA.TAlx.close;
                   DMGEOGRAFIA.TAlx.SQL.Clear;
                   DMGEOGRAFIA.TAlx.SQL.Add(' select * from vwcidade ');
                   DMGEOGRAFIA.TAlx.SQL.Add(' where upper(vwcidade.nome) like('+ #39+'%'+ UpperCase(trim(copy(XLinha,136,20)))+ '%'+#39+') ');
                   DMGEOGRAFIA.TAlx.SQL.Add(' and ');
                   DMGEOGRAFIA.TAlx.SQL.Add(' upper(vwcidade.uf)=upper('+#39+'%'+trim(copy(XLinha,167,2))+'%'+#39+')');
                   DMGEOGRAFIA.TAlx.SQL.Text;
                   DMGEOGRAFIA.TAlx.Open;

                   // a sql nao pode estar vazia assim como o nome da cidade no arquivo nao pode estar nulo
                   If (DMGEOGRAFIA.TAlx.IsEmpty) and ((trim(copy(XLinha,136,20))) <> '')
                   Then Begin

                       // seleciona todos os dados de estado com mesma sigla
                       DMGEOGRAFIA.TEstado.Close;
                       DMGEOGRAFIA.TEstado.SQL.Clear;
                       DMGEOGRAFIA.TEstado.SQL.Add('select * from estado where estado.uf_estado = :estado');
                       DMGEOGRAFIA.TEstado.ParamByName('estado').AsString := UpperCase(trim(copy(XLinha,167,2)));
                       DMGEOGRAFIA.TEstado.Open;

                       // seleciona os dados da cidade
                       DMGEOGRAFIA.TCidade.Close;
                       DMGEOGRAFIA.TCidade.SQL.Clear;
                       DMGEOGRAFIA.TCidade.SQL.Add('select * from cidade where UPPER(cidade.nome) = :cidade');
                       DMGEOGRAFIA.TCidade.ParamByName('cidade').AsString := UpperCase(trim(copy(XLinha,136,20)));
                       DMGEOGRAFIA.TCidade.Open;

                           // se nao existe nenhuma cidade com o msm nome, intaum pode ser inserido
                           If DMGEOGRAFIA.TCidade.IsEmpty
                           Then Begin
                               XCod_cidade:=InserReg(DMGEOGRAFIA.TCidade, 'CIDADE', 'COD_CIDADE');
                               DMGEOGRAFIA.TCidade.FieldByName('cod_cidade').AsInteger := XCod_cidade;
                               DMGEOGRAFIA.TCidade.FieldByName('cod_estado').AsInteger := DMGEOGRAFIA.TEstado.FieldByName('cod_estado').AsInteger;
                               DMGEOGRAFIA.TCidade.FieldByName('nome').AsString := trim(copy(XLinha,136,20));
                               DMGEOGRAFIA.TCidade.Post;
                           End;
                   End;

                   // seleciona todos os dados de pessoa de acordo com cpf/cnpj
                   DMPESSOA.TPessoa.Close;
                   DMPESSOA.TPessoa.SQL.Clear;
                   DMPESSOA.TPessoa.SQL.Add(' select * from pessoa ');
                   DMPESSOA.TPessoa.SQL.Add(' where pessoa.cpfcnpj =:codigo ');
                   DMPESSOA.TPessoa.ParamByName('codigo').AsString := trim(copy(XLinha,181,18));
                   DMPESSOA.TPessoa.Open;

                   // se nao estiver vazio, edit, senao insere
                   If not (DMPESSOA.TPessoa.IsEmpty)
                   Then Begin
                       DMPESSOA.TPessoa.Edit;
                   End
                   Else Begin
                   	//Se não encontrou cliente pelo cpf/cnpj, tenta encontrar pelo proprio codigo
						MErros.Lines.Add('         Verifique cliente e pedidos de: '+trim(copy(XLinha,8,40)));
                       DMPESSOA.TPessoa.Close;
                       DMPESSOA.TPessoa.SQL.Clear;
                       DMPESSOA.TPessoa.SQL.Add(' select * from pessoa ');
                       DMPESSOA.TPessoa.SQL.Add(' left join cliente on pessoa.cod_pessoa = cliente.cod_pessoa ');
                       DMPESSOA.TPessoa.SQL.Add(' where cliente.cod_cliente =:codigo ');
                       DMPESSOA.TPessoa.ParamByName('codigo').AsInteger := StrToInt(Trim(copy(XLinha,1,6)));
                       DMPESSOA.TPessoa.Open;
                       If DMPESSOA.TPessoa.IsEmpty
                       Then Begin
                       	//Se não encontrou cliente mesmo pelo código, o mesmo deve ser inserido
                           Xcod_pessoa := InserReg(DMPESSOA.TPessoa,'PESSOA','COD_PESSOA');
                           DMPESSOA.TPessoa.FieldByName('COD_PESSOA').AsInteger := Xcod_pessoa;
                           DMPESSOA.TPessoa.FieldByName('COD_CIDADE').AsInteger := DMGEOGRAFIA.TCidade.FieldByName('cod_cidade').AsInteger;
                       End
                       Else Begin
                       	//Se encontrou cliente pelo codigo o mesmo deve ser editado
                       	DMPESSOA.TPessoa.Edit;
                       End;
                   End;

                   DMPESSOA.TPessoa.FieldByName('nome').AsString := trim(copy(XLinha,8,40));
                   DMPESSOA.TPessoa.FieldByName('endereco').AsString := trim(copy(XLinha,59,40));
                   DMPESSOA.TPessoa.FieldByName('bairro').AsString := trim(copy(Xlinha,110,15));
                   DMPESSOA.TPessoa.FieldByName('cep').AsString := trim(copy(XLinha,170,9));
                   DMPESSOA.TPessoa.FieldByName('cpfcnpj').AsString := trim(copy(XLinha,181,18));
                   DMPESSOA.TPessoa.FieldByName('telrel').AsString := trim(copy(XLinha,217,14));
                   DMPESSOA.TPessoa.FieldByName('dtnasc').AsString := trim(copy(XLinha,283,10));
                   DMPESSOA.TPessoa.Post;

                   // seleciona todos dados do cliente com o campo COD_CLIENTEPALM igual ao do arquivo
                   DMPESSOA.TCliente.Close;
                   DMPESSOA.TCliente.SQL.Clear;
                   DMPESSOA.TCliente.SQL.Add('select * from cliente');
                   DMPESSOA.TCliente.SQL.Add('where cliente.cod_pessoa = :codigo');
                   DMPESSOA.TCliente.ParamByName('codigo').AsString := DMPESSOA.TPessoa.FieldByName('cod_pessoa').AsString;
                   DMPESSOA.TCliente.Open;

                   If DMPESSOA.TCliente.IsEmpty
                   Then Begin
                       // seleciona o proximo codigo cliente
//                       XCod_Cliente := InserReg(DMPESSOA.TCliente,'CLIENTE','COD_CLIENTE');
                       DMPESSOA.TCliente.Insert;
                       DMPESSOA.TCliente.FieldByName('COD_CLIENTE').AsInteger := StrToInt(Trim(copy(XLinha,1,6)));
                       DMPESSOA.TCliente.FieldByName('COD_CLIENTEPALM').AsString := Trim(copy(XLinha,1,6));
                       DMPESSOA.TCliente.FieldByName('COD_PESSOA').AsString := DMPESSOA.TPessoa.FieldByName('cod_pessoa').AsString;
                   End
                   Else Begin
                       DMPESSOA.TCliente.Edit;
                   End;
                   DMPESSOA.TCliente.FieldByName('cod_vendedor').AsString := trim(copy(XLinha,335,4));
                   DMPESSOA.TCliente.Post;

                   // F ou J, define se eh pessoa fisica ou juridica
                   XTipo_Pes := trim(copy(xlinha,486,1));
                   // RG ou inscrição estadual
                   RG_IE := trim(copy(XLinha, 200,16));

                   If XTipo_Pes = 'J'
                   Then Begin

                       // seleciona todos os dados de pessoa juridica
                       DMPESSOA.TPessoaJ.Close;
                       DMPESSOA.TPessoaJ.SQL.Clear;
                       DMPESSOA.TPessoaJ.sql.Add('select * from pessoaj');
                       DMPESSOA.TPessoaJ.sql.Add('where pessoaj.cod_pessoa= :CODIGO');
                       DMPESSOA.TPessoaJ.ParamByName('CODIGO').AsString := DMPESSOA.TPessoa.FieldByName('Cod_pessoa').AsString;
                       DMPESSOA.TPessoaJ.Open;

                       If not DMPESSOA.TPessoaJ.IsEmpty
                       Then Begin
                           DMPESSOA.TPessoaJ.Edit
                       End
                       Else Begin
                           Xcod_pessoaJ := InserReg(DMPESSOA.TPessoaJ, 'PESSOAJ', 'COD_PESSOAJ');
                           DMPESSOA.TPessoaJ.FieldByName('cod_pessoaj').AsInteger := Xcod_pessoaj;
                           DMPESSOA.TPessoaJ.FieldByName('cod_pessoa').AsInteger := DMPESSOA.TPessoa.FieldByName('Cod_pessoa').AsInteger;
                       End;
                       // o campo insc_est recebe o valor de inscricao estadual
                       DMPESSOA.TPessoaJ.FieldByName('insc_est').AsString := RG_IE;
                       DMPESSOA.TPessoaJ.Post;

                   End
                   Else Begin
                       // seleciona dados de pessoa fisica
                       DMPESSOA.TPessoaF.Close;
                       DMPESSOA.TPessoaF.SQL.Clear;
                       DMPESSOA.TPessoaF.SQL.Add('select * from pessoaf where pessoaf.cod_pessoa = :codigo');
                       DMPESSOA.TPessoaF.ParamByName('codigo').AsInteger := DMPESSOA.TPessoa.FieldByName('Cod_pessoa').AsInteger;
                       DMPESSOA.TPessoaF.Open;

                       // se nao estiver vazio, edita
                       If Not DMPESSOA.TPessoaF.IsEmpty
                       then Begin
                           DMPESSOA.TPessoaF.Edit
                       End
                       Else Begin
                           Xcod_pessoaF := InserReg(DMPESSOA.TPessoaF, 'PESSOAF', 'COD_PESSOAF');
                           DMPESSOA.TPessoaF.FieldByName('cod_pessoaf').AsInteger := Xcod_pessoaf;
                           DMPESSOA.TPessoaF.FieldByName('cod_pessoa').AsString := DMPESSOA.TPessoa.FieldByName('Cod_pessoa').AsString;
                       End;
                           // nesse caso, pessoa fisica recebe o valor da variavel referente ao RG
                           DMPESSOA.TPessoaF.FieldByName('rg').AsString := RG_IE;
                           DMPESSOA.TPessoaF.Post;
                   End;

                   //Email
                   DMPESSOA.TEmail.Close;
                   DMPESSOA.TEmail.SQL.Clear;
                   DMPESSOA.TEmail.SQL.add('select * from email');
                   DMPESSOA.TEmail.sql.Add('where (email.cod_pessoa = :CODIGO)');
                   DMPESSOA.TEmail.ParamByName('CODIGO').AsString := DMPESSOA.TPessoa.FieldByName('Cod_pessoa').AsString;
                   DMPESSOA.TEmail.Open;

                   If DMPESSOA.TEmail.IsEmpty
                   Then Begin
                       XCod_Email := InserReg(DMPESSOA.TEmail, 'EMAIL', 'COD_EMAIL');
                       DMPESSOA.TEmail.FieldByName('cod_email').AsInteger := XCod_Email;
                       DMPESSOA.TEmail.FieldByName('cod_pessoa').AsString := DMPESSOA.TPessoa.FieldByName('Cod_pessoa').AsString;
                   End
                   Else Begin
                       DMPESSOA.TEmail.Edit;
                   End;
                       DMPESSOA.TEmail.FieldByName('email').AsString := copy(XLinha,505,40);
                       DMPESSOA.TEmail.Post;

                   XContador := XContador + 1;
               End;
           end;
           // fecha arquivo
           CloseFile(XTexto);
           CloseFile(XTXT);

           PBMobile.Visible := false;
           PBMobile.SendToBack;
           PMobile.Refresh;
			MErros.Lines.Add('      Importação concluída e confirmada! '+IntToStr(XContador) + ' clientes importados.');
           DMPESSOA.TransacPessoa.CommitRetaining;
           DMGEOGRAFIA.IBT.CommitRetaining;

       Except
           Result:=False;
			MErros.Lines.Add('      Falha ao importar clientes');
       End
   End
   Else Begin
		MErros.Lines.Add('      Sem Clientes para importar: (arquivo de clientes não encontrado)');
   End;

   // atualiza a tabela codigo com os ultimos codigos
   DMMACS.TCodigo.Edit;
   DMMACS.TCodigo.fieldbyname('cod_pessoa').AsInteger := Xcod_pessoa;
   DMMACS.TCodigo.fieldbyname('cod_pessoaf').AsInteger := Xcod_pessoaf;
   DMMACS.TCodigo.fieldbyname('cod_pessoaj').AsInteger := Xcod_pessoaj;
   DMMACS.TCodigo.FieldByName('cod_cidade').AsInteger := XCod_cidade;
   DMMACS.TCodigo.FieldByName('cod_email').AsInteger := XCod_Email;
   DMMACS.TCodigo.Post;
   DMMACS.Transaction.CommitRetaining;
end;
// função para calcular a comissao de cada produto importado do arquivo TXT do palm
function TFExpImp.CalculaComissao(VALOR: real; COD_VENDEDOR: integer;FORM_PAG: String): real;
begin
   // ALTCOMPROD eh a permissao para alterar a comissao do item, nesse caso ele nao esta selecionado
   // COMISSPRODCADPROD eh a permissao para buscar a comissao da tabela de estoque, e nesse caso nao esta liberando
   If (DMMACS.TLoja.FieldByName('ALTCOMPROD').AsString='0') and (DMMACS.TLoja.FieldByName('COMISSPRODCADPROD').AsString = '0')
   Then begin
       If FiltraTabela(DMPESSOA.TFunCargo, 'FUNCARGO', 'COD_FUNCIONARIO', IntToStr(COD_VENDEDOR), '')=True
       Then Begin
           Try
               DMPESSOA.TFunCargo.Last;
               //efetua cargo em cima da forma de pagamentio

               If FORM_PAG ='À VISTA' Then
                   Result := (VALOR * DMPESSOA.TFunCargo.FieldByName('COMISSAO_VVPRO').AsCurrency)/100
               Else
                   Result :=(VALOR * DMPESSOA.TFunCargo.FieldByName('COMISSAO_VPPRO').AsCurrency)/100
           Except
               Mensagem('A T E N Ç Ã O', 'OCORREU UM PROBLEMA AO GERAR COMISSÃO. GUARDE O NUMERO DO PEDIDO E INFORME O OCORRIDO À ASSESSORIA TÉCNICA!', 'O vendedor informado no pedido não foi encontrado em banco de dados, desta forma não pode-se saber sua comissão. Esta será gravada com valor nulo, este ocorrido deve ser informado ao suporte técnico, para ser prontamente corrigido.', 1, 1, True, 'a');
               Result:=0;
           End;
       End;
   End
   Else Begin
       // o valor de comissao vai vir da tabela de estoque
       If DMMACS.TLoja.FieldByName('COMISSPRODCADPROD').AsString = '1'
       Then Begin  
           // filtra estoque para buscar os valores das porcentagens das comissoes
           FiltraTabela(DMESTOQUE.Alx4,'ESTOQUE','COD_ESTOQUE',DMSAIDA.TItemPV.FieldByname('cod_estoque').AsString,'');

           If FORM_PAG = 'À VISTA'
           Then Begin         //1300*4.5/100
               //FORMA DE PAGAMENTO À VISTA É CALCULA COMISSÃO REFERENTE A VISTA
               Result :=( VALOR * DMESTOQUE.Alx4.FieldByName('CVVPROVAR').AsCurrency) /100;
           End
           Else Begin
               //FORMA DE PAGAMENTO À PRAZO É CALCULA COMISSÃO REFERENTE A PRAZO
               Result := ( VALOR * DMESTOQUE.Alx4.FieldByName('CVPPROVAR').AsCurrency) /100;
           End;
       End;
   End;

end;

// importa itens de pedido
Function TFExpImp.Importa_ItensPed: Boolean;
var
XCod_pedvenda, XCod_Itenspedven: integer;
XArquivo: TextFile;
XArq_Item: TextFile;
XNumero: integer; // numero de itens importados
XCont: Integer;  //numero de itens nao importados
XCont_Item: integer; // itens que nao foram importados pq nao possuem nuemro de pedido aberto
XQuantLote: Real; // Variavel utilizada para auxiliar o controle
XFlagLote: Real; // Variavel Utilizada para controlar o lançamento em lote
XQtdeVend : real; // armazena a quantidade de produto que tem no arquivo txt
XQuantString: String;
XCod_Pedido: integer; // eh feito uma comparação de codigo de pedido de venda, se for diferene eh inicializado novamente a variavel que armazena o total do pedido
XItensPedido: TextFile; // arquivo gerado para armazenar produtos não importados por falta de quantidade em estoque
XNumPalm : integer;
begin
	Result:=True;
   MErros.Lines.Add('    ITENS DE PEDIDOS:');
   If FileExists('C:\MGMOBILE\EXPTXT\'+ DMPESSOA.TFuncionario.FieldByName('NUMPALM').AsString + '\ARQIPE.TXT')
   Then Begin
      Try
           PMobile.Refresh;

           XContador := 0;
           XNumero := 0;
           XCont := 0;
           XCont_Item := 0;
           XString := '';

           //CARREGA ARQUIVO TXT DE ARQUIVO DE ITENS DE PEDIDO
           AssignFile(XTexto,'C:\MGMOBILE\EXPTXT\'+ DMPESSOA.TFuncionario.FieldByName('NUMPALM').AsString + '\ARQIPE.TXT');
           {$I-}
           Reset(XTexto);
           {$I+}

           //CARREGA ARQUIVO TXT DE ARQUIVO DE ITENS DE PEDIDO PARA INFORMAR O NUMEO DE LINHAS AO PROGRESS BAR
           AssignFile(XTXT,'C:\MGMOBILE\EXPTXT\'+ DMPESSOA.TFuncionario.FieldByName('NUMPALM').AsString + '\ARQIPE.TXT');
           {$I-}
           Reset(XTXT);
           {$I+}

           // enquanto naum for o final do arquivo, vai contando o numero de linhas para informar ao MAX do progress bar
           While Not Eof(XTXT) do
           Begin
               Readln(xtxt,xlinha);
               XLinha := '';
               XCont := XCont + 1;
           End;

           PBMobile.Min := 0;
           PBMobile.Max := XCont;
           PBMobile.Visible := true;
           PBMobile.BringToFront;

           // armazena o numero do palm para atribuir no nome do arquivo
           XNumPalm := DMPESSOA.TFuncionario.FieldByName('NUMPALM').AsInteger;

           If FileExists('C:\MGMOBILE\IMPTXT\PALM Nº ' + IntToStr(XNumPalm) + ' - ' + SubstituiCaracter(DateToStr(Date),'/','-') + '.TXT') Then
               DeleteFile('C:\MGMOBILE\IMPTXT\PALM Nº ' + IntToStr(XNumPalm) + ' - ' + SubstituiCaracter(DateToStr(Date),'/','-') + '.TXT');

           // gerando arquivo que armazene os produtos não importados
           AssignFile(XItensPedido,'C:\MGMOBILE\IMPTXT\PALM Nº ' + IntToStr(XNumPalm) + ' - ' + SubstituiCaracter(DateToStr(Date),'/','-') + '.TXT');
           {$I-}
           Reset(XItensPedido);
           {$I+}
           If IOResult = 0 then
               Append(XItensPedido)
           Else
               Rewrite(XItensPedido);

           // titulo do arquivo
           XLinha := 'ITENS NÃO IMPORTADOS POR FALTA DE ESTOQUE';
           // repassando as informações de cima para o arquivo que estah sendo gerado para os itens que nao serão importados
           Writeln(XItensPedido,XLinha);
           XLinha := '';
           Writeln(XItensPedido,XLinha);
           XLinha := ConcatEspacoDir('Nº Pedido',15) + ConcatEspacoDir('Cont. Int.',15) + ConcatEspacoDir('Produto',30) + '          ' + 'Qtde.';
           // repassando as informações de cima para o arquivo que estah sendo gerado para os itens que nao serão importados
           Writeln(XItensPedido,XLinha);

           while not eof(XTexto) do
           begin
               // le cada linha do arquivo
               Readln(xtexto, xlinha);

               PBMobile.Position := XContador;

               // seleciona dados do estoque
               DMESTOQUE.WSimilar.Close;
               DMESTOQUE.WSimilar.SQL.Clear;
               DMESTOQUE.WSimilar.SQL.Add(' select * from vwsimilar where (upper(vwsimilar.contrint) = upper(:controle)) ORDER BY CONTRINT ');
               DMESTOQUE.WSimilar.ParamByName('CONTROLE').AsInteger := StrToInt(trim(copy(XLinha,10,15)));
               DMESTOQUE.WSimilar.Open;

               PBMobile.Visible := true;
               PBMobile.BringToFront;

               If not DMESTOQUE.WSimilar.IsEmpty
               Then Begin

                   // seleciona todos os dados de pedido de venda que tenha o mesmo numero de pedido do arquivo
                   DMSAIDA.TPedV.Close;
                   DMSAIDA.TPedV.SQL.Clear;
                   DMSAIDA.TPedV.SQL.Add('select * from pedvenda where (pedvenda.numped_palm = :numero_pedido) And ((pedvenda.mark<>'+#39+'X'+#39+') or (pedvenda.mark is null) ) ORDER by pedvenda.cod_pedvenda desc ');
                   DMSAIDA.TPedV.ParamByName('numero_pedido').AsInteger := StrToInt(trim(copy(XLinha,1,8)));
                   DMSAIDA.TPedV.Open;

                   // se o codigo for diferente os novos itens pertencem a outro pedido
                   If XCod_Pedido <> DMSAIDA.TPedV.FieldByName('COD_PEDVENDA').AsInteger
                   Then Begin
                       XCod_Pedido := DMSAIDA.TPedV.FieldByName('COD_PEDVENDA').AsInteger;
                   End;

                   // o pedido de venda deve estar cadastrado para importar os itens, e se não estiver, os itens nao são importados
                   If Not DMSAIDA.TPedV.IsEmpty
                   Then Begin
                   	//seleciona estoque
                       DMESTOQUE.TEstoque.close;
                       DMESTOQUE.TEstoque.SQL.Clear;
                       DMESTOQUE.TEstoque.SQL.Add(' Select * from Estoque Where Estoque.cod_estoque=:CODESTOQUE ');
                       DMESTOQUE.TEstoque.ParamByName('CODESTOQUE').AsInteger:=DMESTOQUE.WSimilar.FieldByName('COD_ESTOQUE').AsInteger;
                       DMESTOQUE.TEstoque.Open;

                       // seleciona todos os dados dos itens de pedido
                       DMSAIDA.TItemPV.Close;
                       DMSAIDA.TItemPV.SQL.Clear;
                       DMSAIDA.TItemPV.SQL.Add('select * from itenspedven ');
                       DMSAIDA.TItemPV.Open;

                       // quantidade vendida
                       XQuantString:=trim(copy(XLinha,35,8));

                       XFlagLote:=1;
                       While XFlagLote=1 do
                       Begin
                           //Seleciona subproduto para pegar informaçoes necessarias
                           FiltraTabela(DMESTOQUE.TSubProd, 'SUBPRODUTO', 'cod_subproduto', DMESTOQUE.WSimilar.FieldByName('cod_subproduto').AsString, '');

                           // procura o proximo cod_itenspedven
                           XCod_Itenspedven:=InserReg(DMSAIDA.TItemPV, 'ITENSPEDVEN', 'COD_ITENSPEDVEN');
                           DMSAIDA.TItemPV.FieldByName('COD_PEDVEN').AsInteger := DMSAIDA.TPedV.FieldByName('cod_pedvenda').AsInteger;
                           DMSAIDA.TItemPV.FieldByName('cod_itenspedven').AsInteger := XCod_Itenspedven;
                           DMSAIDA.TItemPV.FieldByName('cod_estoque').AsString := DMESTOQUE.WSimilar.FieldByName('cod_estoque').AsString;
                           DMSAIDA.TItemPV.FieldByName('cod_funcionario').AsInteger := DMSAIDA.TPedV.FieldByName('cod_pedvenda').AsInteger;
							DMSAIDA.TItemPV.FieldByName('qtdeprod').AsString:=XQuantString;
                           XQuantLote:=DMSAIDA.TItemPV.FieldByName('qtdeprod').AsCurrency;

                           //////////////////////
                           // CONTROLE DE LOTE //
                           //////////////////////

                           If DMMACS.TLoja.FieldByName('USAOBSITEMCOMPRA').AsString = '1'
                           Then Begin
                           	//SE O SISTEMA DEVE CONTROLAR LOTE
                               DMESTOQUE.TEstoqueLote.Close;
                               DMESTOQUE.TEstoqueLote.SQL.Clear;
                               DMESTOQUE.TEstoqueLote.SQL.Add(' select * from estoquelote where (estoquelote.cod_estoque=:CODIGO) And (estoquelote.quantidade>0) order by estoquelote.quantidade');
                               DMESTOQUE.TEstoqueLote.ParamByName('CODIGO').AsInteger:=DMSAIDA.TItemPV.FieldByName('cod_estoque').AsInteger;
                               DMESTOQUE.TEstoqueLote.Open;
                               If DMESTOQUE.TEstoqueLote.IsEmpty
                               Then Begin
                                   //Se não encontrou lote com estoque superior a zero, tenta encontrar um lote sem estoque
                                   DMESTOQUE.TEstoqueLote.Close;
                                   DMESTOQUE.TEstoqueLote.SQL.Clear;
                                   DMESTOQUE.TEstoqueLote.SQL.Add(' select * from estoquelote where (estoquelote.cod_estoque=:CODIGO) order by  estoquelote.quantidade');
                                   DMESTOQUE.TEstoqueLote.ParamByName('CODIGO').AsInteger:=DMSAIDA.TItemPV.FieldByName('cod_estoque').AsInteger;
                                   DMESTOQUE.TEstoqueLote.Open;
                                   If DMESTOQUE.TEstoqueLote.IsEmpty
                                   Then Begin
                                       MErros.Lines.Add('      LOTE: Produto sem lote: '+DMESTOQUE.TSubProd.FieldByName('contrint').AsString + 'PEDIDO: '+DMSAIDA.TPedV.FieldByName('NUMPED').AsString);
                                   End
                                   Else Begin
                                       MErros.Lines.Add('      LOTE: Produto sem estoque suficiente em lote: '+DMESTOQUE.TSubProd.FieldByName('contrint').AsString);
                                   End;
                               End;
                               // primeiro verifica se existe quantidade de venda no estoque
                               If DMESTOQUE.TEstoque.FieldByName('estfisico').AsCurrency > 0
                               Then Begin

                                   // armazena a quantidade para ser vendida, conforme arquivo txt
                                   XQtdeVend := XQuantLote;

                                   // deve possuir estoque fisico, a quantidade de venda deve ser maior que zero e tem que passar port todos os lotes
                                   While (DMESTOQUE.TEstoque.FieldByName('ESTFISICO').AsCurrency > 0) AND (XQuantLote > 0) AND (Not DMESTOQUE.TEstoqueLote.Eof) do
                                   begin
                                       // a quantidade do lote tem que ser maior que zero
                                       If DMESTOQUE.TEstoqueLote.FieldByName('QUANTIDADE').AsCurrency > 0
                                       Then Begin
                                           // enquanto houver quantidade no lote vai descontando
                                           While (DMESTOQUE.TEstoque.FieldByName('ESTFISICO').AsCurrency > 0) AND (XQuantLote > 0) and (DMESTOQUE.TEstoqueLote.FieldByName('QUANTIDADE').AsCurrency > 0) do
                                           begin
                                               XQuantLote := XQuantLote - 1;

                                               DMESTOQUE.TEstoqueLote.Edit;
                                               DMESTOQUE.TEstoqueLote.FieldByName('QUANTIDADE').AsCurrency := DMESTOQUE.TEstoqueLote.FieldByName('QUANTIDADE').AsCurrency - 1;
                                               DMESTOQUE.TEstoqueLote.Post;
                                           End;
                                       End;

                                   // proximo lote
                                   DMESTOQUE.TEstoqueLote.Next;
                                   end;

                                   XFlagLote:=0;// Libera do laço de controle de lote;

                                   // se ainda sobrou itens a serem descontados devido o estoque nao apresenttar quantidade suficiente, os dados do produto serão enviados para arquivo TXT
                                   If XQuantLote > 0
                                   Then Begin
                                       // BUSCANDO TODAS AS INFORMAÇÕES SOBRE O PRODUTO NÃO IMPORTADO
                                       FiltraTabela(DMESTOQUE.TSubProd,'SUBPRODUTO','COD_SUBPRODUTO',DMESTOQUE.TEstoque.FieldByname('COD_SUBPROD').AsString,'');

                                       // CONTROLE INTERNO + DESCRICAO + QUANTIDADE NÃO IMPORTADA
                                       XString := ConcatEspacoDir(DMSAIDA.TPedV.FieldByName('NUMPED').AsString,15) + ConcatEspacoDir(DMESTOQUE.TSubProd.FieldByName('CONTRINT').AsString,15) + ConcatEspacoDir(Copy(DMESTOQUE.TSubProd.FieldByName('DESCRICAO').AsString,0,30),36) + '      ' +FloatToStr(XQuantLote);

                                       Writeln(XItensPedido,XString);
                                   End;

                                   DMSAIDA.TItemPV.FieldByName('QTDEPROD').AsCurrency := XQtdeVend - XQuantLote;

                                   XQuantString:=FloatToStr(XQuantLote);
                                   DMSAIDA.TItemPV.FieldByName('cod_lote').AsInteger := DMESTOQUE.TEstoqueLote.FieldByName('COD_LOTE').AsInteger;
                               End
                               Else Begin
                                   DMSAIDA.TItemPV.FieldByName('qtdeprod').AsCurrency := 0;

                                   XFlagLote:=0;// Libera do laço de controle de lote;
                                   // BUSCANDO TODAS AS INFORMAÇÕES SOBRE O PRODUTO NÃO IMPORTADO
                                   FiltraTabela(DMESTOQUE.TSubProd,'SUBPRODUTO','COD_SUBPRODUTO',DMESTOQUE.TEstoque.FieldByname('COD_SUBPROD').AsString,'');

                                   // CONTROLE INTERNO + DESCRICAO + QUANTIDADE NÃO IMPORTADA
                                   XString := ConcatEspacoDir(DMSAIDA.TPedV.FieldByName('NUMPED').AsString,15) + ConcatEspacoDir(DMESTOQUE.TSubProd.FieldByName('CONTRINT').AsString,15) + ConcatEspacoDir(Copy(DMESTOQUE.TSubProd.FieldByName('DESCRICAO').AsString,0,30),36) + '      ' + FloatToStr(XQuantLote);

                                   Writeln(XItensPedido,XString);
                               End;
                           End
                           Else Begin
                               XFlagLote:=0;// Libera do laço de controle de lote;
                           End;

                           /////////////////////////////
                           // FIM DE CONTROLE DE LOTE //
                           /////////////////////////////

                           DMSAIDA.TItemPV.FieldByName('descpro').AsString := trim(copy(XLinha,44,6));
                           DMSAIDA.TItemPV.FieldByName('valunit').AsString := trim(copy(XLinha,26,8));
                           DMSAIDA.TItemPV.FieldByName('valortotal').AsCurrency := DMSAIDA.TItemPV.FieldByName('valunit').AsCurrency*DMSAIDA.TItemPV.FieldByName('qtdeprod').AsCurrency;
                           DMSAIDA.TItemPV.FieldByName('atuest').AsString := '1';

                           // busca no pedido de venda o codigo da forma de pagamento
                           FiltraTabela(DMSAIDA.TAlx,'PEDVENDA','COD_PEDVENDA',DMSAIDA.TItemPV.FieldByName('COD_PEDVEN').AsString,'');

                           // descricao da forma de pagamento
                           FiltraTabela(DMFINANC.TFormPag,'FORMPAG','COD_FORMPAG',DMSAIDA.TAlx.FieldByname('cod_formpag').AsString,'');

                           DMSAIDA.TItemPV.FieldByName('COMISSAO').AsCurrency := CalculaComissao(DMSAIDA.TItemPV.FieldByName('valortotal').AsCurrency,DMSAIDA.TItemPV.FieldByName('cod_funcionario').AsInteger,DMFINANC.TFormPag.FieldByName('descricao').AsString);
                           DMSAIDA.TItemPV.FieldByName('OPERACAO').AsString := 'VND';
                           DMSAIDA.TItemPV.FieldByName('VLRVENDBD').AsCurrency := DMESTOQUE.TEstoque.FieldByName('vendvarv').AsCurrency;
                           DMSAIDA.TItemPV.FieldByName('DATA').AsString := DMSAIDA.TPedV.FieldByName('DTPEDVEN').AsString;
                           DMSAIDA.TItemPV.FieldByName('VALCUSTO').AsCurrency:=DMESTOQUE.TEstoque.FieldByName('VALCUSTO').AsCurrency;
                           DMSAIDA.TItemPV.FieldByName('VALREP').AsCurrency:=DMESTOQUE.TEstoque.FieldByName('VALREP').AsCurrency;
                           DMSAIDA.TItemPV.FieldByName('COEFDIV').AsCurrency:=DMESTOQUE.TEstoque.FieldByName('COEFDIV').AsCurrency;
                           DMSAIDA.TItemPV.FieldByName('VALCOMP').AsCurrency:=DMESTOQUE.TEstoque.FieldByName('vlrunitcomp').AsCurrency*DMSAIDA.TItemPV.FieldByName('qtdeprod').AsCurrency;
                           CalcLuc(DMSAIDA.TItemPV.FieldByName('valortotal').AsCurrency, DMSAIDA.TItemPV.FieldByName('descpro').AsCurrency, DMSAIDA.TItemPV.FieldByName('qtdeprod').AsCurrency);
                           If DMSAIDA.TItemPV.FieldByName('COEFDIV').AsCurrency<>0 Then
                               DMSAIDA.TItemPV.FieldByName('LUCMOE').AsCurrency:=(DMSAIDA.TItemPV.FieldByName('VALREP').AsCurrency/DMSAIDA.TItemPV.FieldByName('COEFDIV').AsCurrency) * DMSAIDA.TItemPV.FieldByName('qtdeprod').AsCurrency
                           Else
                               DMSAIDA.TItemPV.FieldByName('LUCMOE').AsCurrency:=0;

                           DMSAIDA.TItemPV.FieldByName('LUCREL').AsCurrency:=ALXLUCREAL;
                           DMSAIDA.TItemPV.FieldByName('ALIQICMS').AsCurrency:=DMESTOQUE.TEstoque.FieldByName('ICMS').AsCurrency;
                           DMSAIDA.TItemPV.FieldByName('BASEICMS').AsCurrency:=DMSAIDA.TItemPV.FieldByName('valortotal').AsCurrency;
                           DMSAIDA.TItemPV.FieldByName('VLRICMS').AsCurrency:=(DMSAIDA.TItemPV.FieldByName('valortotal').AsCurrency*DMSAIDA.TItemPV.FieldByName('ALIQICMS').AsCurrency)/100;
                           DMSAIDA.TItemPV.FieldByName('REDUCBASEICMS').AsCurrency:=0;
                           DMSAIDA.TItemPV.FieldByName('BASEICMSSUBS').AsCurrency:=0;
                           DMSAIDA.TItemPV.FieldByName('VLRICMSSUBS').AsCurrency:=0;
                           DMSAIDA.TItemPV.FieldByName('VLRIPI').AsCurrency:=0;
                           DMSAIDA.TItemPV.Post;
           				XContador := XContador + 1;

                           // SOMANDO O TOTAL DOS ITENS DO PEDIDO ATUAL
                           DMSAIDA.TAlx.Close;
                           DMSAIDA.TAlx.SQL.Clear;
                           DMSAIDA.TAlx.SQL.Add('select sum(itenspedven.valortotal) as TOTAL from itenspedven where itenspedven.cod_pedven = :codigo');
                           DMSAIDA.TAlx.ParamByName('codigo').AsInteger := XCod_Pedido;
                           DMSAIDA.TAlx.Open;

                           // BUSCANDO O PEDIDO DE VENDA PARA ALTERAR O VALOR TOTAL, JAH QUE SE O ESTOQUE NÃO PODE ESTAR NEGATIVO O VALOR DA COMPRA PODE ALTERAR PARA MENOS
                           DMSAIDA.TPedV.Close;
                           DMSAIDA.TPedV.SQL.Clear;
                           DMSAIDA.TPedV.SQL.Add('select * from pedvenda where pedvenda.cod_pedvenda = :codigo');
                           DMSAIDA.TPedV.ParamByName('codigo').AsInteger := XCod_Pedido;
                           DMSAIDA.TPedV.Open;

                           DMSAIDA.TPedV.Edit;
                           DMSAIDA.TPedV.FieldByName('VALOR').AsCurrency := DMSAIDA.TAlx.FieldByName('TOTAL').AsCurrency;
                           DMSAIDA.TPedV.Post;

                       End;

                    End;
               end;
           End;
           DMSAIDA.IBT.CommitRetaining;
           CloseFile(XTexto);
           CloseFile(XTXT);
           CloseFile(XItensPedido);
           PBMobile.Visible := false;
           PBMobile.SendToBack;
           PMobile.Refresh;
			MErros.Lines.Add('      Finalizado!');
			MErros.Lines.Add('        '+IntToStr(XNumero) + ' itens de venda atualizados.');
       Except
       	Result:=False;
       	MErros.Lines.Add('    ITENS NÃO IMPORTADOS:');
       	MErros.Lines.Add('      Falha no processo');
           PMobile.Refresh;
       End;
   End
   Else Begin
   	Result:=False;
       MErros.Lines.Add('    ITENS NÃO IMPORTADOS:');
       MErros.Lines.Add('      O Arquivo de Itens não foi encontrado (ARQIPE.TXT)');
   End;
end;

// importa pedidos de venda
Function TFExpImp.Importa_PedVenda: Boolean;
var
XArquivo: TextFile;
XCont: integer;
XCod_PedVenda: integer;
begin
	Result:=True;
   MErros.Lines.Add('    PEDIDOS:');
   If FileExists('C:\MGMOBILE\EXPTXT\'+ DMPESSOA.TFuncionario.FieldByName('NUMPALM').AsString + '\ARQPED.TXT')
   Then Begin
       Try
       	PMobile.Refresh;

       	XContador := 0;
       	XCont := 0;

           //CARREGA ARQUIVO TXT DE PEDIDOS
           AssignFile(XTexto,'C:\MGMOBILE\EXPTXT\'+ DMPESSOA.TFuncionario.FieldByName('NUMPALM').AsString + '\ARQPED.TXT');
           {$I-}
           Reset(XTexto);
           {$I+}

           //CARREGA ARQUIVO TXT DE ARQUIVO DE ITENS DE PEDIDO PARA INFORMAR O NUMEO DE LINHAS AO PROGRESS BAR
           AssignFile(XTXT,'C:\MGMOBILE\EXPTXT\'+ DMPESSOA.TFuncionario.FieldByName('NUMPALM').AsString + '\ARQPED.TXT');
           {$I-}
           Reset(XTXT);
           {$I+}

			//desmarca todos os pedidos de venda. o Mark será usado para controlar quais os pedidos q devem ter os itens importados se o mark estiver com X então os itens não deve ser importados
			DMSAIDA.TPedV.Close;
           DMSAIDA.TPedV.SQL.Clear;
           DMSAIDA.TPedV.SQL.Add(' update pedvenda set pedvenda.mark='+#39+'X'+#39);
           DMSAIDA.TPedV.ExecSQL;
           DMSAIDA.IBT.CommitRetaining;

           // enquanto naum for o final do arquivo, vai contando o numero de linhas para informar ao MAX do progress bar
           While Not Eof(XTXT) do
           Begin
               Readln(xtxt,xlinha);
               XLinha := '';
               XCont := XCont + 1;
           End;

           PBMobile.Min := 0;
           PBMobile.Max := XCont;
           PBMobile.Visible := true;
           PBMobile.BringToFront;

           XNumPed:=DMMACS.TEmpresa.FieldByName('proxpedvend').AsInteger;

           // enquanto nao for o final do arquivo
           while not Eof(XTexto) do
           Begin
               ReadLN(Xtexto, XLinha);
               //VERIFICA SE O ARQUIVO JA FOI IMPORTADO
               DMSAIDA.TPedV.Close;
               DMSAIDA.TPedV.SQL.Clear;
               DMSAIDA.TPedV.SQL.Add(' Select * from pedvenda ');
               DMSAIDA.TPedV.SQL.Add(' where pedvenda.NUMPED_PALM=:numeropalm ');
               DMSAIDA.TPedV.ParamByName('numeropalm').AsInteger:=StrToInt(trim(copy(XLinha,1,8)));
               DMSAIDA.TPedV.Open;
               If not DMSAIDA.TPedV.IsEmpty
               Then Begin
                   MErros.Lines.Add('      Falha ao importar pedidos');
                   MErros.Lines.Add('         Este arquivo já foi importado: NUM. PALM = '+trim(copy(XLinha,1,8)));
                   DMSAIDA.TPedV.Edit;
                   DMSAIDA.TPedV.FieldByName('MARK').AsString:='X';
                   DMSAIDA.TPedV.Post;
               End
               Else Begin

                   PBMobile.Position := XContador;

                   DMPESSOA.TCliente.Close;
                   DMPESSOA.TCliente.SQL.Clear;
                   DMPESSOA.TCliente.SQL.Add('select * from cliente');
                   DMPESSOA.TCliente.SQL.Add('where cliente.COD_CLIENTE = :codigo');
                   DMPESSOA.TCliente.ParamByName('codigo').AsString := trim(copy(XLinha,21,6));
                   DMPESSOA.TCliente.Open;

                   // primeiro verifica se existe o cliente, se o mesmo nao estiver cadastrado o pedido de venda nao eh importado
                   // pq se for cadastrar esse novo cliente faltarao varios dados de sua empresa
                   If Not DMPESSOA.TCliente.IsEmpty
                   Then Begin

                       // seleciona os dados da pessoa que tenha o mesmo cod_pessoa na tabela cliente
                       DMPESSOA.TPessoa.Close;
                       DMPESSOA.TPessoa.SQL.Clear;
                       DMPESSOA.TPessoa.SQL.Add('select * from pessoa where pessoa.cod_pessoa = :codigo');
                       DMPESSOA.TPessoa.ParamByName('codigo').AsInteger := DMPESSOA.TCliente.FieldByName('cod_pessoa').AsInteger;
                       DMPESSOA.TPessoa.Open;

                       //*********************************************************
                       // NÃO PRECISA INSERIR O COD_PEDIDO, PQ JAH TEM O GENERATOR
                       //*********************************************************

                       //SELECIONA PEDIDO DE VENDA
                       DMSAIDA.TPedV.Close;
                       DMSAIDA.TPedV.SQL.Clear;
                       DMSAIDA.TPedV.SQL.Add('Select * from pedvenda ');
                       DMSAIDA.TPedV.Open;

                       //SELECIONA VENDEDOR
                       DMPESSOA.TFuncionario.Close;
                       DMPESSOA.TFuncionario.SQL.Clear;
                       DMPESSOA.TFuncionario.SQL.Add('  select * from funcionario ');
                       DMPESSOA.TFuncionario.SQL.Add(' where funcionario.numpalm=:NUMPALM ');
                       DMPESSOA.TFuncionario.ParamByName('NUMPALM').AsInteger:=StrToInt(trim(copy(XLinha,49,6)));
                       DMPESSOA.TFuncionario.Open;

                       // procura o proximo cod_pedvenda
                       DMSAIDA.TPedV.Insert;
                       DMSAIDA.TPedV.FieldByName('NUMPED_PALM').AsString := trim(copy(XLinha,1,8));
                       DMSAIDA.TPedV.FieldByName('numped').AsString := IntToStr(XNumPed);
                       DMSAIDA.TPedV.FieldByName('cod_cliente').AsInteger := DMPESSOA.TCliente.FieldByName('cod_cliente').AsInteger;    //StrToInt(trim(copy(XLinha,21,6)));
                       DMSAIDA.TPedV.FieldByName('dtpedven').AsString := trim(copy(XLinha,10,10));
                       DMSAIDA.TPedV.FieldByName('cod_vendedor').AsString := DMPESSOA.TFuncionario.FieldByName('cod_func').AsString;
                       DMSAIDA.TPedV.FieldByName('valor').AsString := trim(copy(XLinha,56,8));
                       DMSAIDA.TPedV.FieldByName('nomecli').AsString := DMPESSOA.TPessoa.FieldByName('nome').AsString;
                       DMSAIDA.TPedV.FieldByName('CPFCNPJ').AsString := DMPESSOA.TPessoa.FieldByName('cpfcnpj').AsString;
                       DMSAIDA.TPedV.FieldByName('SITUACAO').AsString := 'ABERTO';
                       DMSAIDA.TPedV.FieldByName('TIPO').AsString := 'VND';
                       DMSAIDA.TPedV.FieldByName('COD_USUARIO').AsString := FMenu.LCODUSUARIO.Caption;
                       DMSAIDA.TPedV.FieldByName('COD_FORMPAG').AsString := trim(copy(XLinha,69,3));
                       DMSAIDA.TPedV.FieldByName('cobranca').AsString := 'Carteira';
                       DMSAIDA.TPedV.Post;
                       // SEQUENCIA DO NUMERO DO PEDIDO
                       XNumPed := XNumPed + 1;

                   	// contador do numero de atualizações
                   	XContador := XContador + 1;
                   End;
               End;
           End;
           CloseFile(XTexto);
           CloseFile(XTXT);
           PBMobile.Visible := false;
           PBMobile.SendToBack;
           PMobile.Refresh;
           If XContador > 0
           Then Begin
				MErros.Lines.Add('      Finalizado! ');
				MErros.Lines.Add('        '+IntToStr(XContador) + ' pedidos de venda atualizados com sucesso.');
           End;
           DMMACS.TEmpresa.Edit;
           DMMACS.TEmpresa.FieldByName('proxpedvend').AsInteger:=XNumPed+1;
           DMMACS.TEmpresa.Post;
       Except
           PBMobile.Visible := false;
           PBMobile.SendToBack;
           PMobile.Refresh;
           Result:=False;
			MErros.Lines.Add('      Falha ao importar pedidos;');
           Exit;
       End;
   End
   Else Begin
       Result:=False;
 	    MErros.Lines.Add('      SEM PEDIDOS (Arquivo de pedido não encontrado):');
   End;
end;

// procedure importa recados dos pedidos
procedure TFExpImp.Importa_Recados;
VAR
XArquivo: TextFile;
XCont: integer;
begin
   MErros.Lines.Add('    RECADOS:');
   // se existe o arquivo, a variavel eh associada ao mesmo
   If FileExists('C:\MGMOBILE\EXPTXT\'+ DMPESSOA.TFuncionario.FieldByName('NUMPALM').AsString + '\ARQREC.TXT')
   Then Begin
       Try
           PMobile.Refresh;

           XContador := 0;
           XCont := 0;

           //CARREGA ARQUIVO TXT DE RECADOS
           AssignFile(XTexto,'C:\MGMOBILE\EXPTXT\'+ DMPESSOA.TFuncionario.FieldByName('NUMPALM').AsString + '\ARQREC.TXT');
           {$I-}
           Reset(XTexto);
           {$I+}

           // posicao do progress bar
           PBMobile.Position := 0;

           // CARREGA ARQUIVO DE RECADOS PARA INFORMAR O TAMANHO AO PROGRESS BAR
           AssignFile(XTXT,'C:\MGMOBILE\EXPTXT\'+ DMPESSOA.TFuncionario.FieldByName('NUMPALM').AsString + '\ARQREC.TXT');
           {$I-}
           Reset(XTXT);
           {$I+}     

           // enquanto naum for o final do arquivo, vai contando o numero de linhas para informar ao MAX do progress bar
           While Not Eof(XTXT) do
           Begin
               Readln(xtxt,xlinha);
               XLinha := '';
               XCont := XCont + 1;
           End;

           PBMobile.Min := 0;
           PBMobile.Max := XCont;
           PBMobile.Visible := true;
           PBMobile.BringToFront;

           // ENQUANTO NAO FOR O FINAL DO ARQUIVO
           while not Eof(XTexto) do
           begin
               XLinha := '';
               // LE A PROXIMA LINHA
               Readln(xtexto, xlinha);

               PBMobile.Position := XContador;

               // seleciona todos os dados onde o numero do pedido for igual ao numped do arquivo
               DMSAIDA.TPedV.Close;
               DMSAIDA.TPedV.SQL.Clear;
               DMSAIDA.TPedV.SQL.Add('select * from pedvenda where pedvenda.numped = :numero_pedido  ORDER by pedvenda.cod_pedvenda desc ');
               DMSAIDA.TPedV.ParamByName('numero_pedido').AsInteger := StrToInt(trim(copy(XLinha,1,8)));
               DMSAIDA.TPedV.Open;

               // informa o recado
               If DMSAIDA.TPedV.FieldByName('numped').AsString <> ''
               Then Begin
                   DMSAIDA.TPedV.Edit;
                   DMSAIDA.TPedV.FieldByName('obs').AsString := trim(copy(XLinha,10,255));
                   DMSAIDA.TPedV.Post;
                   XContador := XContador + 1;
               End;
           end;
           If XContador > 0
           Then Begin
   			MErros.Lines.Add('      Recados Importados '+inttostr(XContador) + ' recados de pedido importados.');
           End;
           CloseFile(XTXT);
           CloseFile(XTexto);
           PMobile.Refresh;
           PBMobile.Visible := false;
           PBMobile.SendToBack;
           DMSAIDA.IBT.CommitRetaining;
       Except
           PMobile.Refresh;
           PBMobile.Visible := false;
           PBMobile.SendToBack;
           Mensagem(' A T E N Ç Ã O ', 'Falha na importação de recados de pedido.', '', 1, 1, False, 'E');
           Exit;
       End;

   End
   Else Begin
   	MErros.Lines.Add('      Sem Recados para Importar');
   End;
end;

procedure TFExpImp.BtnReceberClick(Sender: TObject);
begin
  inherited;
	If FileExists('C:\MGMobile\explode\explode.exe') Then
		Winexec('C:\MGMobile\explode\explode.exe', SW_shownormal);
end;

procedure TFExpImp.BtnTrabalharArquivosClick(Sender: TObject);
begin
  inherited;
	If FileExists('C:\MGMobile\ftpmonitor\ftpMonitor.exe') Then
		Winexec('C:\MGMobile\ftpmonitor\ftpMonitor.exe', SW_shownormal);
end;

procedure TFExpImp.BitBtn4Click(Sender: TObject);
begin
  inherited;
	PErros.Visible:=False;
end;

procedure TFExpImp.BtnPDVClick(Sender: TObject);
begin
  inherited;
   ProgressImpExp.Visible := false;
   ProgressImpExp.SendToBack;
   // busca os dados do caixa e exibe na grid
   Verifica_Caixa;
   ProgressBar1.Visible := false;
   ProgressBar1.SendToBack;
   HabPainel(4);

end;

procedure TFExpImp.BBExportarClick(Sender: TObject);
begin
  inherited;
   // função para verificar se algum caixa esta selecionado para importação/exportação
   If Consulta_CampoCaixa = true
   Then Begin
       If Mensagem('   E X P O R T A Ç Ã O   ', 'Deseja realmente Exportar os dados ?' , '', 2, 3, False, 'C') = 3
       Then Begin
           // busca os dados do caixa e exibe na grid
           Verifica_Caixa;
           Exit;
       End
       Else Begin
           // PROCEDURE QUE CHAMA A FUNÇÃO EXPORTAPRODUTOSPDV
           Exportacao;
           // busca os dados do caixa e exibe na grid
           Verifica_Caixa;
       End;
   End
   Else Begin
       Mensagem(' A T E N Ç Ã O ', ' Não há nenhum caixa selecionado para importação/exportação. ' , '', 1, 1, False, 'A');
       // busca os dados do caixa e exibe na grid
       Verifica_Caixa;
       Exit;
   End;
end;

procedure TFExpImp.BBImportarClick(Sender: TObject);
begin
  inherited;
   // função para verificar se algum caixa esta selecinado para importação/exportação
   If Consulta_CampoCaixa = true
   Then Begin
       If Mensagem('   I M P O R T A Ç Ã O   ', 'Deseja realmente Importar os dados ?' , '', 2, 3, False, 'C') = 3
       Then Begin
           // busca os dados do caixa e exibe na grid
           Verifica_Caixa;
           Exit;
       End
       Else Begin
           // função responsavel para chamar a função ImportaProdutosPDV para importar
           Importacao;
           // busca os dados do caixa e exibe na grid
           Verifica_Caixa;
       End;
   End
   Else Begin
       Mensagem(' A T E N Ç Ã O ', ' Não há nenhum caixa selecionado para importação/exportação. ' , '', 1, 1, False, 'A');
       // busca os dados do caixa e exibe na grid
       Verifica_Caixa;
       Exit;
   End;

end;

// conecta banco de dados de destino para importar e exportar PDV
Function TFExpImp.Conecta_BancoDados(XEnderecoBD: string): boolean;
begin
   Try
       // DESCONECTA TABELAS DO TERMINAL
       DMEXPORTA.TCodBarra.Active := false;
       DMEXPORTA.TProdutosPDV.Active := false;
       DMEXPORTA.TPedV.Active := false;
       DMEXPORTA.TLanCaixa.Active := false;

       DMEXPORTA.Alx.Active := false;
       DMEXPORTA.Alx2.Active := false;
       DMEXPORTA.Alx3.Active := false;
       DMEXPORTA.Alx4.Active := false;
       DMEXPORTA.Alx5.Active := false;
       DMEXPORTA.TProdutosPDV.Active := False;
       DMEXPORTA.TGrupo.Active := False;
       DMEXPORTA.TSubgru.Active := False;
       DMEXPORTA.TUnidade.Active := False;
       DMEXPORTA.TPedV.Active := False;
       DMEXPORTA.TEstoque.Active := False;
       DMEXPORTA.tpedC.Active := False;
       DMEXPORTA.TItemPC.Active := False;

       // DESCONECTA BANCO E TRANSACTION
       DMExporta.DBExporta.Connected := false;
       DMExporta.IBTExporta.Active := false;

       //  INFORMA O LOCAL, CONECTA BANCO E ATIVA TRANSACTION
       DMExporta.DBExporta.DatabaseName := XEnderecoBD;
       DMExporta.DBExporta.Connected := true;
       DMExporta.IBTExporta.Active := true;

       // ATIVA TABELAS
       DMExporta.TProdutosPDV.Active := true;
       DMEXPORTA.TCodBarra.Active := true;
       DMEXPORTA.TPedV.Active := true;
       DMEXPORTA.TLanCaixa.Active := True;
       DMEXPORTA.TProdutosPDV.Active := True;
       DMEXPORTA.TGrupo.Active := True;
       DMEXPORTA.TSubgru.Active := True;
       DMEXPORTA.TUnidade.Active := True;
       DMEXPORTA.TPedV.Active := True;
       DMEXPORTA.TEstoque.Active := True;
       DMEXPORTA.TPedC.Active := True;
       DMEXPORTA.TItemPC.Active := True;

       DMEXPORTA.Alx.Active := false;
       DMEXPORTA.Alx2.Active := true;
       DMEXPORTA.Alx3.Active := true;
       DMEXPORTA.Alx4.Active := true;
       DMEXPORTA.Alx5.Active := false;

       Result := true;
   Except
       Result:=false;
   End;
end;


// função responsavel para chamar a função ImportaProdutosPDV para importar
Procedure TFExpImp.Importacao;
begin
   ImportaDadosPDV;
end;

// função responsavel para calcular o valor total do lancaixa de cada caixa
Function TFExpImp.Calcula_LanCaixa: boolean;
var
XCod_Lanc, XCod_Abcaixa: integer;
begin

   // seleciona todos os caixa
   DMSAIDA.TAlx.Close;
   DMSAIDA.TAlx.SQL.Clear;
   DMSAIDA.TAlx.SQL.Add('select * from caixa where caixa.mark = '+#39+'X'+#39);
   DMSAIDA.TAlx.Open;

   // ou seja, sai da função se nao tiver mais caixas selecionados
   If DMSAIDA.TAlx.IsEmpty Then
       Exit;

   while not DMSAIDA.TAlx.Eof do
   begin

       // faz conexao do banco de dados referente aos caixas selecionados
       If Conecta_BancoDados(DMSAIDA.TAlx.FieldByName('endereco_BD').AsString) = true
       Then Begin

           // seleciona os dados da tabela lancaixa do terminal
           DMEXPORTA.Alx.Close;
           DMEXPORTA.Alx.SQL.Clear;
           DMEXPORTA.Alx.SQL.Add('select sum(lancaixa.valor) AS TOTAL from lancaixa where (lancaixa.atu = ' + #39 + '0' + #39 + ') or (lancaixa.atu is null)');
           DMEXPORTA.Alx.Open;

           If DMEXPORTA.Alx.FieldByName('TOTAL').AsString = ''
           Then Begin
               Mensagem('A T E N Ç Ã O ', 'No momento não há lançamentos no caixa "' + DMSAIDA.TAlx.FieldByName('descricao').AsString + '" para ser registrado no servidor.', '', 1,1, false, 'A');

               // atualiza o campo MARK e retorna de novo á função para atualizar o proximo caixa que tiver o campo MARK selecionado
               DMGEOGRAFIA.TAlx.Close;
               DMGEOGRAFIA.TAlx.SQL.Clear;
               DMGEOGRAFIA.TAlx.SQL.Add('update caixa set caixa.mark = ' + #39 + '' + #39 + ' where caixa.cod_caixa = ' + #39 + DMSAIDA.TAlx.FieldByName('cod_caixa').AsString + #39);
               DMGEOGRAFIA.TAlx.ExecSQL;
               DMGEOGRAFIA.IBT.CommitRetaining;

               // atualiza a grid
               Verifica_Caixa;

               // chama a função novamente para buscar o procimo caixa
               Calcula_LanCaixa;

               Exit;

           End
           Else Begin

               DMEXPORTA.TLanCaixa.Close;
               DMEXPORTA.TLanCaixa.SQL.Clear;
               DMEXPORTA.TLanCaixa.SQL.Add('select * from lancaixa');
               DMEXPORTA.TLanCaixa.Open;

               // eh obrigatorio ter um codigo de plano de conta para venda a vista, se nao tiver a importação eh cancelada
               If DMEXPORTA.TLanCaixa.FieldByName('cod_plnctafil').AsString = ''
               Then Begin
                   Mensagem('A T E N Ç Ã O ', 'O plano de conta para pagamento á vista não possui codigo definido. Em configuração de loja, informe o campo "Conta para lançamentos de vendas à vista" com seu respectivo código.', '', 1,1, false, 'A');
                   Exit;
               End
               Else Begin
                    //VERIFICA SE O CAIXA ESTA ABERTO
                    If DMCAIXA.VerifAbCaixa=False
                    Then Begin
                        Mensagem('A T E N Ç Ã O ', 'O Caixa do usuário atual não se encontra aberto. Para realizar a maioria das operações financeiras é obrigado que o caixa esteja aberto!', '', 1,1, false, 'a');
                        DMSAIDA.IBT.RollbackRetaining;
                        // atualiza a grid
                        Verifica_Caixa;
                        Exit;
                    End
                    Else Begin

                       // SELECIONA DADOS DA LOJA
                       DMGEOGRAFIA.TAlx.Close;
                       DMGEOGRAFIA.TAlx.SQL.Clear;
                       DMGEOGRAFIA.TAlx.SQL.Add('select * from loja where loja.cod_loja = :codigo');
                       DMGEOGRAFIA.TAlx.ParamByName('codigo').AsString := FMenu.LCODLOJA.Caption;
                       DMGEOGRAFIA.TAlx.Open;

                       // insere nbo banco do servidor os seguintes dados
                       DMCAIXA.TLanCaixa.Insert;
                       XCod_Lanc:=InserReg(DMCAIXA.TLanCaixa, 'LANCAIXA', 'COD_LANC');
                       DMCAIXA.TLanCaixa.FieldByName('COD_LANC').AsInteger:=XCod_Lanc;
                       DMCAIXA.TLanCaixa.FieldByName('cod_abcaixa').AsString := FMenu.LABCAIXA.Caption;
                       DMCAIXA.TLanCaixa.FieldByName('dtlanc').AsString := DateToStr(DATE());
                       DMCAIXA.TLanCaixa.FieldByName('historico').AsString := 'Totalizador do caixa ' + DMSAIDA.TAlx.FieldByName('descricao').AsString + ' realizado ás '+#39+TimeToStr(Time())+#39 + ' do dia ' + #39 + DateToStr(DATE()) + #39;
                       DMCAIXA.TLanCaixa.FieldByName('valor').AsString := DMEXPORTA.Alx.FieldByName('TOTAL').AsString;
                       DMCAIXA.TLanCaixa.FieldByName('tipcai').AsString := 'E';
                       DMCAIXA.TLanCaixa.FieldByName('cod_plnctafil').AsString := DMGEOGRAFIA.TAlx.FieldByName('PLNCTA_VENDVISTA').AsString;
                       DMCAIXA.TLanCaixa.FieldByName('atu').AsString := '1';
                       DMCAIXA.TLanCaixa.Post;
                       DMCAIXA.IBT.CommitRetaining;

                       // atualiza o campo MARK e retorna de novo á função para atualizar o proximo caixa que tiver o campo MARK selecionado
                       DMGEOGRAFIA.TAlx.Close;
                       DMGEOGRAFIA.TAlx.SQL.Clear;
                       DMGEOGRAFIA.TAlx.SQL.Add('update caixa set caixa.mark = ' + #39 + '' + #39 + ' where caixa.cod_caixa = ' + #39 + DMSAIDA.TAlx.FieldByName('cod_caixa').AsString + #39);
                       DMGEOGRAFIA.TAlx.ExecSQL;
                       DMGEOGRAFIA.IBT.CommitRetaining;

                       // atualiza o campo atu do lancaixa. Assim da proxima vez o registro que tiver valor 1 nao eh importado
                       DMEXPORTA.Alx5.Close;
                       DMEXPORTA.Alx5.SQL.Clear;
                       DMEXPORTA.Alx5.SQL.Add('update lancaixa set lancaixa.atu = ' + #39 + '1' + #39 + 'where (lancaixa.atu = ' + #39 + '0' + #39+') or (lancaixa.atu is null)');
                       DMEXPORTA.Alx5.ExecSQL;
                       DMEXPORTA.IBTExporta.CommitRetaining;

                       // atualiza a grid
                       Verifica_Caixa;

                    End;
               End;
           End;    
       End
       Else Begin
           // se houver algum problema na conexao do BD do caixa, exibe essa msg
           Mensagem(' CONEXÃO BANCO DADOS ', 'Falha na conexão do banco de dados do caixa ' + DMSAIDA.TAlx.fieldbyname('descricao').AsString + '.', '', 1, 1, False, 'E');

           // atualiza o campo MARK e retorna de novo á função para atualizar o proximo caixa que tiver o campo MARK selecionado
           DMGEOGRAFIA.TAlx.Close;
           DMGEOGRAFIA.TAlx.SQL.Clear;
           DMGEOGRAFIA.TAlx.SQL.Add('update caixa set caixa.mark = ' + #39 + '' + #39 + ' where caixa.cod_caixa = ' + #39 + DMSAIDA.TAlx.FieldByName('cod_caixa').AsString + #39);
           DMGEOGRAFIA.TAlx.ExecSQL;
           DMGEOGRAFIA.IBT.CommitRetaining;

           // busca os dados do caixa e exibe na grid
           Verifica_Caixa;

           // busca o proximo caixa para calcular lancaixa
           Calcula_LanCaixa;

           Exit;
       End;
   Mensagem(' NOTIFICAÇÃO ', 'Lançamento em caixa do terminal "' + DMSAIDA.TAlx.fieldbyname('descricao').AsString + '" realizado com sucesso.', '', 1, 1, False, 'I');

   // proximo caixa
   DMSAIDA.TAlx.Next;
   End;
end;

// Importa dados dos terminais para o servidor
Procedure TFExpImp.ImportaDadosPDV;
var
XCOD_PEDVENDA, XNumAtu, XItem: integer;
begin

   Try
       // seleciona todos os caixa
       DMCAIXA.TAlx.Close;
       DMCAIXA.TAlx.SQL.Clear;
       DMCAIXA.TAlx.SQL.Add('select * from caixa where caixa.mark = '+#39+'X'+#39);
       DMCAIXA.TAlx.Open;
       DMCAIXA.TAlx.First;
       while not DMCAIXA.TAlx.Eof do
       Begin

           XContador := 0;
           XItem := 0;

           // faz conexao do banco de dados referente aos caixas selecionados
           If Conecta_BancoDados(DMCAIXA.TAlx.FieldByName('endereco_BD').AsString) = true
           Then Begin

               // verifica o total de pedidos que serão importados e este sera o valor maximo do progress bar
               DMEXPORTA.Alx5.Close;
               DMEXPORTA.Alx5.SQL.Clear;
               DMEXPORTA.Alx5.SQL.Add('select count(pedvenda.cod_pedvenda) as contador from pedvenda WHERE (pedvenda.atu=0) OR (pedvenda.atu is null)');
               DMEXPORTA.Alx5.Open;

               // informações do progress bar
               ProgressImpExp.Min :=0;
               ProgressImpExp.Max := DMEXPORTA.Alx5.FieldByName('contador').AsInteger;
               ProgressImpExp.Visible := true;
               ProgressImpExp.BringToFront;
               ProgressImpExp.Position := XContador;

               //Verifica Ultimo Numero de Atualização
               DMEXPORTA.Alx4.Close;
               DMEXPORTA.Alx4.SQL.Clear;
               DMEXPORTA.Alx4.SQL.Add('SELECT max(pedvenda.atu) AS atu FROM pedvenda');
               DMEXPORTA.Alx4.Open;
               If DMEXPORTA.Alx4.FieldByName('atu').AsString='' Then
                   XNumAtu:=1
               Else
                   XNumAtu:=DMEXPORTA.Alx4.FieldByName('atu').AsInteger+1;

               //Seleciona todos os Pedidos de Venda do terminal para importar
               DMEXPORTA.TPedV.Close;
               DMEXPORTA.TPedV.SQL.Clear;
               DMEXPORTA.TPedV.SQL.Add('SELECT * FROM pedvenda WHERE (pedvenda.atu=0) OR (pedvenda.atu is null)');
               DMEXPORTA.TPedV.Open;

               // se nao tiver nenhum pedido de venda para importar eh exibida a msg, atualizado o campo mark e verificado todos os caixa para exibir na grid
               If DMEXPORTA.TPedV.IsEmpty
               Then Begin
                   Mensagem(DMCAIXA.TAlx.FieldByName('descricao').AsString, 'Nesse caixa não há pedidos de venda para importação.', '', 1, 1, False, 'A');

                   // atualiza o campo MARK e retorna de novo á função para atualizar o proximo caixa que tiver o campo MARK selecionado
                   DMGEOGRAFIA.TAlx.Close;
                   DMGEOGRAFIA.TAlx.SQL.Clear;
                   DMGEOGRAFIA.TAlx.SQL.Add('update caixa set caixa.mark = ' + #39 + '' + #39 + ' where caixa.cod_caixa = ' + #39 + DMCAIXA.TAlx.FieldByName('cod_caixa').AsString + #39);
                   DMGEOGRAFIA.TAlx.ExecSQL;
                   DMGEOGRAFIA.IBT.CommitRetaining;

                   ProgressImpExp.Visible := false;
                   ProgressImpExp.SendToBack;

                   // atualiza a grid
                   Verifica_Caixa;

                   // busca o proximo caixa para importacao
                   Importacao;
                   Exit;
               End;

               // primeiro registro
               DMEXPORTA.TPedV.First;

               // enquanto não for o final dos pedidos de venda
               While not DMEXPORTA.TPedV.Eof do
               Begin

                   ProgressImpExp.Position :=  XContador;

                   DMSAIDA.TPedV.Insert;
                   XCOD_PEDVENDA := DMSAIDA.TPedV.FieldByName('COD_PEDVENDA').AsInteger;
                   DMSAIDA.TPedV.FieldByName('NUMPED').AsString := DMEXPORTA.TPedV.FieldByName('NUMPED').AsString;
                   DMSAIDA.TPedV.FieldByName('NOMECLI').AsString := DMEXPORTA.TPedV.FieldByName('NOMECLI').AsString;
                   DMSAIDA.TPedV.FieldByName('COD_CLIENTE').AsString := DMEXPORTA.TPedV.FieldByName('COD_CLIENTE').AsString;
                   DMSAIDA.TPedV.FieldByName('DTPEDVEN').AsString := DMEXPORTA.TPedV.FieldByName('dtpedven').AsString;
                   DMSAIDA.TPedV.FieldByName('COD_USUARIO').AsString := DMEXPORTA.TPedV.FieldByName('COD_USUARIO').AsString;
                   DMSAIDA.TPedV.FieldByName('COD_FORMPAG').AsString := DMEXPORTA.TPedV.FieldByName('COD_FORMPAG').AsString;
                   DMSAIDA.TPedV.FieldByName('VALOR').AsString := DMEXPORTA.TPedV.FieldByName('VALOR').AsString;
                   DMSAIDA.TPedV.FieldByName('DESCONTO').AsString := DMEXPORTA.TPedV.FieldByName('DESCONTO').AsString;
                   DMSAIDA.TPedV.FieldByName('TIPO').AsString := 'VND';
                   DMSAIDA.TPedV.FieldByName('GARANTIA').AsString := '0';
                   DMSAIDA.TPedV.FieldByName('VLRCOMIS').AsInteger := 0;
                   DMSAIDA.TPedV.FieldByName('COD_VENDEDOR').AsString := DMEXPORTA.TPedV.FieldByName('COD_VENDEDOR').AsString;
                   DMSAIDA.TPedV.FieldByName('SITUACAO').AsString := 'FECHADO';
                   DMSAIDA.TPedV.FieldByName('DTFECH').AsString := DMEXPORTA.TPedV.FieldByname('dtfech').AsString;
                   DMSAIDA.TPedV.Post;

                   //Sleciona Itens para importar
                   DMEXPORTA.Alx2.Close;
                   DMEXPORTA.Alx2.sql.Clear;
                   DMEXPORTA.Alx2.SQL.Add(' select * from itenspedven where itenspedven.cod_pedven=:CODPEDIDO ');
                   DMEXPORTA.Alx2.ParamByName('CODPEDIDO').AsInteger:=DMEXPORTA.TPedV.FieldByName('COD_PEDVENDA').AsInteger;
                   DMEXPORTA.Alx2.Open;

                   // primeiro registro
                   DMEXPORTA.Alx2.First;

                   // enquanto não for o final dos itens
                   while not DMEXPORTA.Alx2.Eof do
                   begin

                       XItem := XItem + 1;

                       DMSAIDA.TItemPV.Insert;
                       DMSAIDA.TItemPV.FieldByName('COD_ITENSPEDVEN').AsString := DMEXPORTA.Alx2.FieldByName('COD_ITENSPEDVEN').AsString;
                       DMSAIDA.TItemPV.FieldByName('NUMITEM').AsInteger:= DMEXPORTA.Alx2.FieldByName('NUMITEM').AsInteger;
                       DMSAIDA.TItemPV.FieldByName('COD_PEDVEN').AsInteger:=XCOD_PEDVENDA;
                       DMSAIDA.TItemPV.FieldByName('COD_FUNCIONARIO').AsInteger:= DMEXPORTA.Alx2.FieldByName('COD_FUNCIONARIO').AsInteger;
                       DMSAIDA.TItemPV.FieldByName('DATA').AsString:= DMEXPORTA.Alx2.FieldByName('DATA').AsString;
                       DMSAIDA.TItemPV.FieldByName('VALCUSTO').AsCurrency:= DMEXPORTA.Alx2.FieldByName('VALCUSTO').AsCurrency;
                       DMSAIDA.TItemPV.FieldByName('VALREP').AsCurrency:= DMEXPORTA.Alx2.FieldByName('VALREP').AsCurrency;
                       DMSAIDA.TItemPV.FieldByName('COEFDIV').AsCurrency:= DMEXPORTA.Alx2.FieldByName('COEFDIV').AsCurrency;
                       DMSAIDA.TItemPV.FieldByName('VALCOMP').AsCurrency:= DMEXPORTA.Alx2.FieldByName('VALCOMP').AsCurrency;
                       DMSAIDA.TItemPV.FieldByName('LUCMOE').Value:=0;
                       DMSAIDA.TItemPV.FieldByName('LUCPER').Value:=0;
                       DMSAIDA.TItemPV.FieldByName('COD_ESTOQUE').AsInteger:= DMEXPORTA.Alx2.FieldByName('COD_ESTOQUE').AsInteger;
                       DMSAIDA.TItemPV.FieldByName('QTDEPROD').AsCurrency:= DMEXPORTA.Alx2.FieldByName('QTDEPROD').AsCurrency;
                       DMSAIDA.TItemPV.FieldByName('DESCPRO').Value:=0;
                       DMSAIDA.TItemPV.FieldByName('VALUNIT').AsCurrency:= DMEXPORTA.Alx2.FieldByName('VALUNIT').AsCurrency;
                       DMSAIDA.TItemPV.FieldByName('VLRVENDBD').AsCurrency:= DMEXPORTA.Alx2.FieldByName('VLRVENDBD').AsCurrency;
                       DMSAIDA.TItemPV.FieldByName('VALORTOTAL').AsCurrency:= DMEXPORTA.Alx2.FieldByName('VALORTOTAL').AsCurrency;
                       DMSAIDA.TItemPV.FieldByName('ATUEST').AsString:='1';
                       DMSAIDA.TItemPV.Post;

                       //Seleciona os dados da tabela estoque do servidor
                       DMESTOQUE.TEstoque.Close;
                       DMESTOQUE.TEstoque.SQL.Clear;
                       DMESTOQUE.TEstoque.SQL.Add(' select * from estoque where estoque.cod_estoque=:CODIGO');
                       DMESTOQUE.TEstoque.ParamByName('CODIGO').AsInteger:= DMEXPORTA.Alx2.FieldByName('COD_ESTOQUE').AsInteger;
                       DMESTOQUE.TEstoque.Open;

{                       If DMESTOQUE.TEstoque.FieldByName('cod_estoque').AsString = '2001'
                       Then Begin
                           XNumAtu := XNumAtu + 0;
                       End;}
                   //proximo item
                   DMEXPORTA.Alx2.Next;
                   end;

               // atualiza a tabela pedido de venda do terminal
               DMEXPORTA.TPedV.Edit;
               DMEXPORTA.TPedV.FieldByName('ATU').AsInteger:=XNumAtu;
               DMEXPORTA.TPedV.Post;

               XContador := XContador + 1;

               // proximo pedido de venda
               DMEXPORTA.TPedV.Next;
               End;
           End
           Else Begin
               // se houver algum problema na conexao do BD do caixa, exibe essa msg
               Mensagem(' CONEXÃO BANCO DADOS ', 'Falha na conexão do banco de dados do caixa ' + DMCAIXA.TAlx.fieldbyname('descricao').AsString + '.', '', 1, 1, False, 'E');

               // atualiza o campo MARK e retorna de novo á função para atualizar o proximo caixa que tiver o campo MARK selecionado
               DMGEOGRAFIA.TAlx.Close;
               DMGEOGRAFIA.TAlx.SQL.Clear;
               DMGEOGRAFIA.TAlx.SQL.Add('update caixa set caixa.mark = ' + #39 + '' + #39 + ' where caixa.cod_caixa = ' + #39 + DMCAIXA.TAlx.FieldByName('cod_caixa').AsString + #39);
               DMGEOGRAFIA.TAlx.ExecSQL;
               DMGEOGRAFIA.IBT.CommitRetaining;

               // busca os dados do caixa e exibe na grid
               Verifica_Caixa;

               // busca o proximo caixa para importacao
               Importacao;

               Exit;
           End;

           DMESTOQUE.TransacEstoque.CommitRetaining;
           DMSAIDA.IBT.CommitRetaining;
           DMEXPORTA.IBTExporta.CommitRetaining;

           // ATUALIZA O CAMPO MARK DO CAIXA
           DMGEOGRAFIA.TAlx.Close;
           DMGEOGRAFIA.TAlx.SQL.Clear;
           DMGEOGRAFIA.TAlx.SQL.Add('update caixa set caixa.mark = ' + #39 + '' + #39 + ' where caixa.cod_caixa = ' + #39 + DMCAIXA.TAlx.FieldByName('cod_caixa').AsString + #39);
           DMGEOGRAFIA.TAlx.ExecSQL;
           DMGEOGRAFIA.IBT.CommitRetaining;

           Mensagem(DMCAIXA.TAlx.FieldByName('descricao').AsString, IntToStr(XContador)+ ' pedidos de venda importados' + #13 + #13 + IntToStr(XItem) + ' itens de venda importados' , '', 1, 1, False, 'I');
           ProgressImpExp.Visible := false;
           ProgressImpExp.SendToBack;

       // proximo caixa
       DMCAIXA.TAlx.Next;
       End;
   Except
       Mensagem(' A T E N Ç Ã O ', 'Falha na importação de itens e pedidos de venda do caixa ' + DMCAIXA.TAlx.FieldByName('descricao').AsString + '. A última atualização foi cancelada.', '', 1, 1, False, 'E');
       DMEXPORTA.IBTExporta.RollbackRetaining;
       DMESTOQUE.TransacEstoque.RollbackRetaining;
       DMSAIDA.IBT.RollbackRetaining;
       ProgressImpExp.Visible := FALSE;
       ProgressImpExp.SendToBack;
       Exit;
   End;
end;


procedure TFExpImp.BBLancClick(Sender: TObject);
begin
  inherited;

   // função para verificar se algum caixa esta selecinado para importação/exportação
   If Consulta_CampoCaixa = true
   Then Begin
       If Mensagem('   I M P O R T A Ç Ã O   ', 'Deseja realmente Importar Lançamento em Caixa ?' , '', 2, 3, False, 'C') = 3
       Then Begin
           // busca os dados do caixa e exibe na grid
           Verifica_Caixa;
           Exit;
       End
       Else Begin
           // seleciona todos os caixa
           DMSAIDA.TAlx.Close;
           DMSAIDA.TAlx.SQL.Clear;
           DMSAIDA.TAlx.SQL.Add('select * from caixa where caixa.mark = '+#39+'X'+#39);
           DMSAIDA.TAlx.Open;

           If DMSAIDA.TAlx.IsEmpty
           Then Begin
               Mensagem('A T E N Ç Ã O ', 'Não há nenhum caixa selecionado para importação de Lançamento em Caixa.', '', 1,1, false, 'A');
               Exit;
           End
           Else Begin
               // função para calculo de lançamento em caixa
               Calcula_LanCaixa;
           End;
       End;
   End
   Else Begin
       Mensagem(' A T E N Ç Ã O ', ' Não há nenhum caixa selecionado para importar Lançamento em Caixa. ' , '', 1, 1, False, 'A');
       // busca os dados do caixa e exibe na grid
       Verifica_Caixa;
       Exit;
   End;


end;

// Verifica se existem caixa com o campo Mark X preenchido para continuar os processos de importação e exportação
Function TFExpImp.Consulta_CampoCaixa: boolean;
begin

   DMCAIXA.TAlx.Close;
   DMCAIXA.TAlx.SQL.Clear;
   DMCAIXA.TAlx.SQL.Add('select count(caixa.cod_caixa) AS CONTADOR from caixa where caixa.mark = '+#39+'X'+#39);
   DMCAIXA.TAlx.Open;

   If DMCAIXA.TAlx.FieldByName('CONTADOR').AsInteger > 0 Then
       Result := true
   Else
       Result := false;

end;

// Busca os dados do caixa e exibi na grid PDV
Procedure TFExpImp.Verifica_Caixa;
begin
   // seleciona todos os dados do caixa
   DMCAIXA.TAlx.Close;
   DMCAIXA.TAlx.SQL.Clear;
   DMCAIXA.TAlx.SQL.Add(' select * from caixa where caixa.cod_loja = :codigo');
   DMCAIXA.TAlx.ParamByName('codigo').AsString := FMenu.LCODLOJA.Caption;
   DMCAIXA.TAlx.Open;
end;

// apenas chama a procedure EXPORTAPRODUTOSPDV
Procedure TFExpImp.Exportacao;
begin
   // exporta produtos do servidor para o terminal
   ExportaProdutosPDV;
end;

// Exporta dados de produtos do servidor para os terminais
Procedure TFExpImp.ExportaProdutosPDV;
var
XNovo: integer;
begin

   // seleciona todos os caixa
   DMCAIXA.TAlx.Close;
   DMCAIXA.TAlx.SQL.Clear;
   DMCAIXA.TAlx.SQL.Add('select * from caixa where caixa.mark = '+#39+'X'+#39);
   DMCAIXA.TAlx.Open;

   while not DMCAIXA.TAlx.Eof do
   Begin
       // faz conexao do banco de dados referente aos caixas selecionados
       If Conecta_BancoDados(DMCAIXA.TAlx.FieldByName('endereco_BD').AsString) = true
       Then Begin

           XNovo:=0;
           XAtual := 0;
           XContador := 0;

           // seleciona todos os dados do servidor
           DMSAIDA.TAlx.Close;
           DMSAIDA.TAlx.SQL.Clear;
           DMSAIDA.TAlx.SQL.Add(' select estoque.cod_estoque, SUBPRODUTO.BALANCA, Unidade.sigla_unid, subproduto.descricao, subproduto.codbarra, subproduto.marca, subproduto.ipiprod, ');
           DMSAIDA.TAlx.SQL.Add(' subproduto.qtdatc, subproduto.contrint, estoque.icms, estoque.vendatap, estoque.vendatav, ');
           DMSAIDA.TAlx.SQL.Add(' estoque.vendvarp, estoque.vendvarv, estoque.dataatu, estoque.horaatu, cst.indiceecf, estoque.precooferta ');
           DMSAIDA.TAlx.SQL.Add(' from estoque ');
           DMSAIDA.TAlx.SQL.Add(' left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto ');
           DMSAIDA.TAlx.SQL.Add(' left join cst on subproduto.cod_cst = cst.cod_cst ');
           DMSAIDA.TAlx.SQL.Add(' left join unidade on subproduto.cod_unidvenda = unidade.cod_unidade ');
           If (DMExporta.TProdutosPDV.FieldByName('DATAATU').AsString <> '') and (DMExporta.TProdutosPDV.FieldByName('HORAATU').AsString <> '')
           Then Begin
               DMSAIDA.TAlx.SQL.Add('  where  (estoque.dataatu>:Data) or ((estoque.dataatu=:data) and (estoque.horaatu>:hora))');
               DMSAIDA.TAlx.ParamByName('DATA').AsDate:=StrToDAte(DMExporta.TProdutosPDV.FieldByName('DATAATU').AsString);
               DMSAIDA.TAlx.ParamByName('HORA').AsDateTime:=StrToTime(DMExporta.TProdutosPDV.FieldByName('HORAATU').AsString);
           End;
           DMSAIDA.TAlx.Open;

           // seleciona o numero de produto que serão exportados do servidor e esta qtde será o valor maximo do ProgressBar
           DMGEOGRAFIA.TAlx.Close;
           DMGEOGRAFIA.TAlx.SQL.Clear;
           DMGEOGRAFIA.TAlx.SQL.Add('select count(estoque.cod_estoque) as contador from estoque');
           If DMExporta.TProdutosPDV.FieldByName('DATAATU').AsString <> ''
           Then Begin
               DMGEOGRAFIA.TAlx.SQL.Add('where (estoque.dataatu>:Data) or ((estoque.dataatu=:data) and (estoque.horaatu>:hora))');
               DMGEOGRAFIA.TAlx.ParamByName('DATA').AsDate:=StrToDAte(DMExporta.TProdutosPDV.FieldByName('DATAATU').AsString);
               DMGEOGRAFIA.TAlx.ParamByName('HORA').AsDateTime:=StrToTime(DMExporta.TProdutosPDV.FieldByName('HORAATU').AsString);
           End;
           DMGEOGRAFIA.TAlx.Open;

           // dados do progress bar
           ProgressImpExp.Min := 0;
           ProgressImpExp.Max := DMGEOGRAFIA.TAlx.fieldbyname('contador').AsInteger;
           ProgressImpExp.Position := XContador;
           ProgressImpExp.Visible := true;
           ProgressImpExp.BringToFront;

           // se nao houverem itens para serem exportados referente á condição acima, eh exibida a msg
           If DMSAIDA.TAlx.IsEmpty
           Then Begin
               Mensagem(' A T E N Ç Ã O ', 'O caixa ' + DMCAIXA.TAlx.FieldByName('descricao').AsString + ' já possui todos os produtos atualizados.', '', 1, 1, False, 'I');
               // atualiza o campo MARK e retorna de novo á função para atualizar o proximo caixa que tiver o campo MARK selecionado
               DMGEOGRAFIA.TAlx.Close;
               DMGEOGRAFIA.TAlx.SQL.Clear;
               DMGEOGRAFIA.TAlx.SQL.Add('update caixa set caixa.mark = ' + #39 + '' + #39 + ' where caixa.cod_caixa = ' + #39 + DMCAIXA.TAlx.FieldByName('cod_caixa').AsString + #39);
               DMGEOGRAFIA.TAlx.ExecSQL;
               DMGEOGRAFIA.IBT.CommitRetaining;

               ProgressImpExp.Visible := false;
               ProgressImpExp.SendToBack;

               // atualiza a grid
               Verifica_Caixa;

               // busca o proximo caixa para exportação
               Exportacao;
               Exit;      
           End;

           // primeiro registro
           DMSAIDA.TAlx.First;

           // enquanto não for o final dos registros
           While Not DMSAIDA.TAlx.Eof do
           Begin

               // posição da barra de progressão
               ProgressImpExp.Position := XContador;

               // seleciona todos os produtos PDV do terminal
               DMExporta.TProdutosPDV.Close;
               DMExporta.TProdutosPDV.SQL.Clear;
               DMExporta.TProdutosPDV.SQL.Add('select * from produtospdv');
               DMExporta.TProdutosPDV.SQL.Add('where produtospdv.cod_produtospdv=:Codigo');
               DMExporta.TProdutosPDV.ParamByName('codigo').AsString := DMSAIDA.TAlx.fieldbyname('cod_estoque').AsString;
               DMExporta.TProdutosPDV.Open;

               // se tiver dados, os mesmos serão editados, senão inseridos
               If not DMExporta.TProdutosPDV.IsEmpty
               Then Begin
                   DMExporta.TProdutosPDV.Edit;
                   XAtual := XAtual + 1;
               End
               Else Begin
                   DMExporta.TProdutosPDV.Insert;
                   DMExporta.TProdutosPDV.FieldByName('cod_produtospdv').AsString := DMSAIDA.TAlx.FieldByName('cod_estoque').AsString;
                   XNovo := XNovo + 1;
               End;

               DMExporta.TProdutosPDV.FieldByName('descricao').AsString := DMSAIDA.TAlx.FieldByName('descricao').AsString;
               DMExporta.TProdutosPDV.FieldByName('codbarra').AsString := DMSAIDA.TAlx.FieldByName('codbarra').AsString;
               DMExporta.TProdutosPDV.FieldByName('marca').AsString := DMSAIDA.TAlx.FieldByName('marca').AsString;
               DMExporta.TProdutosPDV.FieldByName('BALANCA').AsString := DMSAIDA.TAlx.FieldByName('BALANCA').AsString;
               DMExporta.TProdutosPDV.FieldByName('ipiprod').AsString := DMSAIDA.TAlx.FieldByName('ipiprod').AsString;
               DMExporta.TProdutosPDV.FieldByName('qtdatac').AsString := DMSAIDA.TAlx.FieldByName('qtdatc').AsString;
               DMExporta.TProdutosPDV.FieldByName('contrint').AsString := DMSAIDA.TAlx.FieldByName('contrint').AsString;
               DMExporta.TProdutosPDV.FieldByName('indiceecf').AsString := DMSAIDA.TAlx.FieldByName('indiceecf').AsString;
               If DMExporta.TProdutosPDV.FieldByName('indiceecf').AsString='' Then
                   DMExporta.TProdutosPDV.FieldByName('indiceecf').AsString:='FF';
               DMExporta.TProdutosPDV.FieldByName('icms').AsString := DMSAIDA.TAlx.FieldByName('icms').AsString;
               DMExporta.TProdutosPDV.FieldByName('vendatap').AsString := DMSAIDA.TAlx.FieldByName('vendatap').AsString;
               DMExporta.TProdutosPDV.FieldByName('vendatav').AsString := DMSAIDA.TAlx.FieldByName('vendatav').AsString;
               DMExporta.TProdutosPDV.FieldByName('vendvarp').AsString := DMSAIDA.TAlx.FieldByName('vendvarp').AsString;
               // se o preco de oferta for maior que 0, o campo VENDVARV recebe valor de oferta
               If DMSAIDA.TAlx.FieldByName('precooferta').AsInteger <> 0
               Then Begin
                   DMExporta.TProdutosPDV.FieldByName('vendvarv').AsString := DMSAIDA.TAlx.FieldByName('precooferta').AsString;
               End
               Else Begin
                   DMExporta.TProdutosPDV.FieldByName('vendvarv').AsString := DMSAIDA.TAlx.FieldByName('vendvarv').AsString;
               End;
               DMExporta.TProdutosPDV.FieldByName('unidade').AsString := DMSAIDA.TAlx.FieldByName('sigla_unid').AsString;
               DMExporta.TProdutosPDV.Post;

               // deleta o codigo de barras do terminal onde o cod_estoque for igual ao servidor
               DMExporta.Alx.Close;
               DMExporta.Alx.SQL.Clear;
               DMExporta.Alx.SQL.Add(' delete from codigobarra WHERE codigobarra.cod_estoque=:CODIGO ');
               DMExporta.Alx.ParamByName('CODIGO').AsString := DMSAIDA.TAlx.FieldByName('cod_estoque').AsString;
               DMExporta.Alx.ExecSQL;

               // seleciona do servidor os codigo de barra que tenha o mesmo cod_estoque
               DMPESSOA.TALX.Close;
               DMPESSOA.TALX.SQL.Clear;
               DMPESSOA.TALX.SQL.Add('select * from codigobarra WHERE codigobarra.cod_estoque=:CODIGO ');
               DMPESSOA.TALX.ParamByName('CODIGO').AsString := DMSAIDA.TAlx.FieldByName('cod_estoque').AsString;
               DMPESSOA.TALX.Open;

               // se tiver registro no servidor
               If not DMPESSOA.TALX.IsEmpty
               Then Begin
                   // primeiro registro
                   DMPESSOA.TALX.First;
                   // enquanto não for o final dos registros
                   While not DMPESSOA.TALX.Eof do
                   Begin
                       DMEXPORTA.TCodBarra.Insert;
                       DMEXPORTA.TCodBarra.FieldByName('cod_estoque').AsString:=DMPESSOA.TALX.FieldByName('cod_estoque').AsString;
                       DMEXPORTA.TCodBarra.FieldByName('codbarra').AsString:=DMPESSOA.TALX.FieldByName('codbarra').AsString;
                       DMEXPORTA.TCodBarra.Post;

                       // proximo registro
                       DMPESSOA.TALX.Next;
                   End;
               End;

           XContador := XContador + 1;
           // proximo registro
           DMSAIDA.TAlx.Next;
           End;
           // qdo termina de exporta, exibe a msg com os seguints dados
           DMEXPORTA.IBTExporta.CommitRetaining;
           Mensagem(DMCAIXA.TAlx.fieldbyname('DESCRICAO').AsString, IntToStr(XNovo)+ ' produtos foram exportados.' + #13 + #13 + IntToStr(XAtual)+ ' produtos atualizados.', '', 1, 1, False, 'I');
           ProgressImpExp.Visible := false;
           ProgressImpExp.SendToBack;

           DMEXPORTA.Alx.Close;
           DMEXPORTA.Alx.SQL.Clear;
           DMEXPORTA.Alx.SQL.Add(' update produtospdv set produtospdv.dataatu=:DATA, produtospdv.horaatu=:HORA ');
           DMEXPORTA.Alx.ParamByName('DATA').AsString := DMSAIDA.TAlx.FieldByName('dataatu').AsString;
           DMEXPORTA.Alx.ParamByName('HORA').AsString := DMSAIDA.TAlx.FieldByName('horaatu').AsString;
           DMEXPORTA.Alx.ExecSQL;

           // ATUALIZA O CAMPO MARK
           DMGEOGRAFIA.TAlx.Close;
           DMGEOGRAFIA.TAlx.SQL.Clear;
           DMGEOGRAFIA.TAlx.SQL.Add('update caixa set caixa.mark = ' + #39 + '' + #39 + ' where caixa.cod_caixa = ' + #39 + DMCAIXA.TAlx.FieldByName('cod_caixa').AsString + #39);
           DMGEOGRAFIA.TAlx.ExecSQL;
           DMGEOGRAFIA.IBT.CommitRetaining;  

       End
       Else Begin
           // se houver algum problema na conexao do BD do caixa, exibe essa msg
           Mensagem(' CONEXÃO BANCO DADOS ', 'Falha na conexão do banco de dados do caixa ' + DMCAIXA.TAlx.fieldbyname('descricao').AsString + '.', '', 1, 1, False, 'E');

           // atualiza o campo MARK e retorna de novo á função para atualizar o proximo caixa que tiver o campo MARK selecionado
           DMGEOGRAFIA.TAlx.Close;
           DMGEOGRAFIA.TAlx.SQL.Clear;
           DMGEOGRAFIA.TAlx.SQL.Add('update caixa set caixa.mark = ' + #39 + '' + #39 + ' where caixa.cod_caixa = ' + #39 + DMCAIXA.TAlx.FieldByName('cod_caixa').AsString + #39);
           DMGEOGRAFIA.TAlx.ExecSQL;
           DMGEOGRAFIA.IBT.CommitRetaining;

           // busca os dados do caixa e exibe na grid
           Verifica_Caixa;

           // busca o proximo caixa para importacao
           Exportacao;    

           Exit;
       End;
   // proximo caixa
   DMCAIXA.TAlx.Next;
   End;     
end;



procedure TFExpImp.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
   // seleciona todos os dados do caixa e atualiza o campo MARK
   DMCAIXA.TCaixa.Close;
   DMCAIXA.TCaixa.SQL.Clear;
   DMCAIXA.TCaixa.SQL.Add('select * from caixa where caixa.cod_caixa = :codigo');
   DMCAIXA.TCaixa.ParamByName('codigo').AsString := DMCAIXA.TAlx.FieldByName('cod_caixa').AsString;
   DMCAIXA.TCaixa.Open;

   DMCAIXA.TCaixa.Edit;
   If DMCAIXA.TCaixa.FieldByName('mark').AsString = 'X' Then
       DMCAIXA.TCaixa.FieldByName('mark').AsString := ''
   Else
       DMCAIXA.TCaixa.FieldByName('mark').AsString := 'X';
   DMCAIXA.TCaixa.Post;
   DMCAIXA.IBT.CommitRetaining;

   // busca os dados do caixa e exibe na grid
   Verifica_Caixa;

end;

procedure TFExpImp.CBExpPendDriveClick(Sender: TObject);
begin
  inherited;
	If CBExpPendDrive.Checked=True
   Then Begin
       EdDestino.Text:=Verifpendrive;
       EdDestino.Enabled:=False;
       CBPEDCOMPRA.Enabled:=False;
       BtnBDestino.Enabled:=False;
       EdDT1.Enabled:=False;
       EdDT2.Enabled:=False;
   End
   Else Begin
       EdDestino.Enabled:=True;
       CBPEDCOMPRA.Enabled:=True;
       BtnBDestino.Enabled:=True;
       EdDT1.Enabled:=True;
       EdDT2.Enabled:=True;
   End;
end;

// primeiro verifica se encontrou banco
Function TFExpImp.LocalizaBanco: Boolean;
begin
   If Verifpendrive <> ''
   Then Begin
   	EdOrigem.Text:=Verifpendrive;
       CBImpPedC.Enabled:=False;
       CBImpProduto.Enabled:=False;
       CBImpPCahveInterna.Enabled:=False;
		CBImpPCtrlInt.Enabled:=False;
		CBImpPCodFab.Enabled:=False;
       CBImpPCodBarra.Enabled:=False;
       EdOrigem.Enabled:=False;
       EdLoja.Enabled:=False;
       EdCodProd.Enabled:=False;
       EdPedc.Enabled:=False;
       EdImpDT1.Enabled:=True;
       EdImpDT2.Enabled:=True;
       BtnBOrigem.Enabled:=False;
   End
   Else Begin
       Mensagem('   A T E N Ç Ã O   ','Não foi possível localizar o Banco de Dados no PenDrive. Por favor, verifique se existe o arquivo.','',1,1,false,'A');
       CBImpPendrive.Checked := false;
   End;
end;

procedure TFExpImp.CBImpPendriveClick(Sender: TObject);
begin
  inherited;
	If CBImpPendrive.Checked=True
   Then Begin
       // localiza banco de dados
       LocalizaBanco;
   End
   Else Begin
       CBImpPedC.Enabled:=True;
       CBImpProduto.Enabled:=True;
       CBImpPCahveInterna.Enabled:=False;
       CBImpPCtrlInt.Enabled:=True;
       CBImpPCodFab.Enabled:=True;
       CBImpPCodBarra.Enabled:=True;
       EdOrigem.Enabled:=True;
       EdLoja.Enabled:=True;
       EdCodProd.Enabled:=True;
       EdPedc.Enabled:=True;
       EdImpDT1.Enabled:=True;
       BtnBOrigem.Enabled:=True;
   End;
end;


procedure TFExpImp.CBFILIZOLAClick(Sender: TObject);
begin
  inherited;
   If CBFILIZOLA.Checked = true
   Then Begin
       CBCADTXT.Checked := true;
       CBSETORTXT.Checked := true;
   End
   Else Begin
       CBCADTXT.Checked := false;
       CBSETORTXT.Checked := false;
   End;

end;

procedure TFExpImp.CBCADTXTClick(Sender: TObject);
begin
  inherited;

   // se o checkbox filizola estiver desativado, então nenhum dos outros dois checkbox poderão ser alterados
   If CBFILIZOLA.Checked = false Then
       CBCADTXT.Checked := false;

end;

procedure TFExpImp.CBSETORTXTClick(Sender: TObject);
begin
  inherited;
   // se o checkbox filizola estiver desativado, então nenhum dos outros dois checkbox poderão ser alterados
   If CBFILIZOLA.Checked = false Then
       CBSETORTXT.Checked := false;
                           

end;

procedure TFExpImp.Button1Click(Sender: TObject);
begin
  TransferenciaFTP;
end;

procedure TFExpImp.FlatButton1Click(Sender: TObject);
begin
  inherited;
 	HabPainel(5);
end;

procedure TFExpImp.FlatButton2Click(Sender: TObject);
begin
	if((MessageBox(0, 'Deseja confirmar a atualização do seu banco de dados?', 'Atenção!', MB_ICONWARNING or MB_YESNO)) = ID_YES) Then Begin
	    if NOT (FileExists('C:\MZR\Arquivos\AtualizaBanco\sincro.txt'))
       Then Begin
          	Label16.Caption:='C:\MZR\Arquivos\AtualizaBanco\sincro.txt não encontrado';
       End
       Else Begin
			TransferenciaFTP;
       End;
   End;
end;

end.

