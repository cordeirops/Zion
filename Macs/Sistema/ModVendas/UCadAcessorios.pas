unit UCadAcessorios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPadrao, Buttons, ExtCtrls, StdCtrls, Grids, DBGrids, EditFloat;

type
  TFCadAcessorios = class(TFPadrao)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    EdDescricaoAcessorio: TEdit;
    BtnInsertServ: TBitBtn;
    BtnDeleteServ: TBitBtn;
    DBGrid8: TDBGrid;
    BtnSelecionar: TBitBtn;
    EdCodigoAcessorio: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    EdEstoque: TFloatEdit;
    procedure BtnInsertServClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BtnSelecionarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnDeleteServClick(Sender: TObject);
    procedure EdDescricaoAcessorioKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    //Filtra todos os Acess�rios cadastrados
    Function  FiltraAcessorios: Boolean;
  end;
var
  FCadAcessorios: TFCadAcessorios;
  XCOD_SIMILAR, XCOD_ESTOQUE: Integer;

implementation

uses UMDO, Alxor32, UDMEstoque, UMenu, UDMMacs, DB, AlxMessage;

{$R *.dfm}

//Filtra todos os acess�rios cadastrados
Function TFCadAcessorios.FiltraAcessorios: Boolean;
Begin
	Try
       DMESTOQUE.TransacEstoque.CommitRetaining;
       DMESTOQUE.Alx4.Close;
       DMESTOQUE.Alx4.SQL.Clear;
       DMESTOQUE.Alx4.SQL.Add(' Select estoque.cod_estoque, estoque.estfisico, subproduto.cod_subproduto, subproduto.contrint, subproduto.descricao From SubProduto ');
       DMESTOQUE.Alx4.SQL.Add(' left join estoque ON subproduto.cod_subproduto = estoque.cod_subprod ');
       DMESTOQUE.Alx4.SQL.Add(' where subproduto.usoconsumo='+#39+'5'+#39 );
       DMESTOQUE.Alx4.Open;
   Except

   End;
End;

procedure TFCadAcessorios.BtnInsertServClick(Sender: TObject);
Var
   Flag, XCodProdutosAcessorios, CodigoPk: Integer;
begin
  inherited;
   //**************
   //** PRODUTOS **
   //**************
   //Antes de inserir o acessorio iremos tratar o PRODUTO ou GRADE ACESSORIOS
   If FiltraTabela(DMESTOQUE.TProduto, 'PRODUTO', 'DESCRICAO', 'ACESS�RIOS', '')=True
   Then Begin
   	//Se Encontrou produto cadastrado pega codigo deste produto
       XCodProdutosAcessorios:=DMESTOQUE.TProduto.FieldByName('cod_produto').AsInteger;
   End
   Else Begin
   	//Se produto n�o cadastrado, Insere novo produto como ACESSORIO
       //Gera Chave Prim�ria de subproduto
       Flag:=0;
       While Flag=0 Do
       Begin
           CodigoPk:=Inserir(DMESTOQUE.Alx, 'PRODUTO', 'cod_produto');
           //Verifica se o c�digo para a pk j� n�o se encontra cadastrado
           If CodigoPk>0
           Then Begin
               If SelectRegistro('PRODUTO', 'cod_produto', IntToStr(CodigoPk))=True
               Then Begin
                   Inserir(DMESTOQUE.Alx, 'PRODUTO', 'cod_produto');
               End
               Else Begin
                   Flag:=1;
               End;
           End;
       End;
       XCodProdutosAcessorios:=CodigoPk;
       //Insere novo produto
       MdoQueryClear;
       MDO.Query.Close;
       MDO.Query.SQL.Add('    insert into produto(cod_produto, descricao, Cod_grupoprod, cod_subgrupoprod) ');
       MDO.Query.SQL.Add('                    values(:cod_produto, :descricao, :cod_grupoprod, :cod_subgrupoprod) ');
       MDO.Query.ParamByName('cod_produto').AsInteger:=XCodProdutosAcessorios;
       MDO.Query.ParambyName('descricao').AsString:='ACESS�RIOS';
       MDO.Query.ParambyName('Cod_grupoprod').AsInteger:=DMESTOQUE.TGrupo.FieldByName('cod_grupoprod').AsInteger;
       MDO.Query.ParamByName('cod_subgrupoprod').AsInteger:=DMESTOQUE.TSubgru.FieldByName('cod_subgrupoprod').AsInteger;
       MDO.Query.ExecSQL;
   End;
   //******************
   //** SUB PRODUTOS **
   //******************
  	//Gera Chave Prim�ria de subproduto
	Flag:=0;
   While Flag=0 Do
   Begin
       CodigoPk:=Inserir(DMESTOQUE.Alx, 'SUBPRODUTO', 'cod_subproduto');
       //Verifica se o c�digo para a pk j� n�o se encontra cadastrado
       If CodigoPk>0
       Then Begin
           If SelectRegistro('SUBPRODUTO', 'cod_subproduto', IntToStr(CodigoPk))=True
           Then Begin
               Inserir(DMESTOQUE.Alx, 'SUBPRODUTO', 'cod_subproduto');
           End
           Else Begin
               Flag:=1;
           End;
       End;
   End;
	XCOD_SIMILAR:=CodigoPk;
   //Insere registro em subproduto
   MdoQueryClear;
   MDO.Query.Close;
   MDO.Query.SQL.Add('  insert into subproduto(COD_SUBPRODUTO, DESCRICAO, USOCONSUMO, contrint, cod_produto) ');
   MDO.Query.SQL.Add('                values(:COD_SUBPRODUTO, :DESCRICAO, :USOCONSUMO, :contrint, :cod_produto) ');
   MDO.Query.ParamByName('COD_SUBPRODUTO').AsInteger:=XCOD_SIMILAR;
   MDO.Query.ParambyName('DESCRICAO').AsString:=EdDescricaoAcessorio.Text;
   MDO.Query.ParambyName('contrint').AsString:=EdCodigoAcessorio.Text;
   MDO.Query.ParamByName('USOCONSUMO').AsString:='5';
   MDO.Query.ParamByName('cod_produto').AsInteger:=XCodProdutosAcessorios;
   MDO.Query.ExecSQL;

   //*************
   //** ESTOQUE **
   //*************
  	//Gera Chave Prim�ria de estoque
	Flag:=0;
   While Flag=0 Do
   Begin
       CodigoPk:=Inserir(DMESTOQUE.Alx, 'ESTOQUE', 'COD_ESTOQUE');
       //Verifica se o c�digo para a pk j� n�o se encontra cadastrado
       If CodigoPk>0
       Then Begin
           If SelectRegistro('ESTOQUE', 'COD_ESTOQUE', IntToStr(CodigoPk))=True
           Then Begin
               Inserir(DMESTOQUE.Alx, 'ESTOQUE', 'COD_ESTOQUE');
           End
           Else Begin
               Flag:=1;
           End;
       End;
   End;
	XCOD_ESTOQUE:=CodigoPk;
   //Insere registro em subproduto
   MdoQueryClear;
   MDO.Query.Close;
   MDO.Query.SQL.Add('  insert into ESTOQUE(COD_ESTOQUE, cod_subprod, estini, estfisico, cod_loja) ');
   MDO.Query.SQL.Add('                values(:COD_ESTOQUE, :cod_subprod, :estini, :estfisico, :cod_loja) ');
   MDO.Query.ParamByName('COD_ESTOQUE').AsInteger:=XCOD_ESTOQUE;
   MDO.Query.ParambyName('cod_subprod').AsInteger:=XCOD_SIMILAR;
   MDO.Query.ParambyName('estini').AsCurrency:=0;
   MDO.Query.ParambyName('estfisico').AsCurrency:=0;
   MDO.Query.ParambyName('cod_loja').AsString:=FMenu.LCODLOJA.Caption;
   MDO.Query.ExecSQL;
   MDO.Transac.CommitRetaining;
   DMMACS.TLoja.Edit;
	  DMMACS.TLoja.FieldByName('PROXCTRINT').AsString:=INCSTRNUM(1, DMMACS.TLoja.FieldByName('PROXCTRINT').AsString);
   DMMACS.TLoja.Post;
   DMMACS.Transaction.CommitRetaining;
   EdCodigoAcessorio.Text:=DMMACS.TLoja.FieldByName('PROXCTRINT').AsString;
   FiltraAcessorios;
end;

procedure TFCadAcessorios.FormActivate(Sender: TObject);
begin
  inherited;
   EdCodigoAcessorio.Text:=DMMACS.TLoja.FieldByName('PROXCTRINT').AsString;
   FiltraAcessorios;
   //Controla o aparecimento do bot�o selecionar
   If BtnSelecionar.Visible=True
   Then Begin
   	BtnSelecionar.Visible:=True;
   End
   Else Begin
   	BtnSelecionar.Visible:=False;
   End;
end;

procedure TFCadAcessorios.BtnSelecionarClick(Sender: TObject);
begin
//  inherited;
    FMenu.SelectedForm:=True;
    //ANGELO - 19/06/2015 - O ACESS�RIO � SELECIONADO NO BOT�O DE INSER��O
    //FMenu.XCodSlave:=DMESTOQUE.Alx4.FieldByName('cod_estoque').AsInteger;
    Close;
end;

procedure TFCadAcessorios.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
    //bot�o selecionar
    If Key=vk_f9 Then
	    If BtnSelecionar.Visible=True Then//verifica se o bot�o esta visivel
   	 	 BtnSelecionar.Click;
end;

procedure TFCadAcessorios.BtnDeleteServClick(Sender: TObject);
Var
	XResultadoPesquisa: Boolean;
begin
  inherited;
  	 XResultadoPesquisa:=False;
    If Mensagem('CONFIRMA��O DO USU�RIO', 'Deseja Realmente Apagar o Acess�rio '+#13+ DMESTOQUE.Alx4.FieldByName('DESCRICAO').AsString+ '?' , '', 2, 3, False, 'c')= 2
    Then Begin
    	 //Pesquisa em OS
    	If FiltraTabela(DMMACS.TALX, 'itprodord', 'cod_estoque', DMESTOQUE.Alx4.FieldByName('cod_estoque').AsString, '' )=True Then
           XResultadoPesquisa:=True;
    	 //Pesquisa em PV
    	If FiltraTabela(DMMACS.TALX, 'itenspedven', 'cod_estoque', DMESTOQUE.Alx4.FieldByName('cod_estoque').AsString, '' )=True Then
           XResultadoPesquisa:=True;
    	 //Pesquisa em Saidas Para Corre��o
    	If FiltraTabela(DMMACS.TALX, 'lancsai', 'cod_estoque', DMESTOQUE.Alx4.FieldByName('cod_estoque').AsString, '' )=True Then
           XResultadoPesquisa:=True;
    	 //Pesquisa em Pedido de compra
    	If FiltraTabela(DMMACS.TALX, 'itenspedc', 'cod_estoque', DMESTOQUE.Alx4.FieldByName('cod_estoque').AsString, '' )=True Then
           XResultadoPesquisa:=True;
    	 //Pesquisa em Entradas Para corre��o
    	If FiltraTabela(DMMACS.TALX, 'lancent', 'cod_estoque',DMESTOQUE.Alx4.FieldByName('cod_estoque').AsString, '' )=True Then
           XResultadoPesquisa:=True;

       If XResultadoPesquisa=False
       Then Begin
       	//SE N�O ENCONTROU DEPENDENCIAS DO PRODUTO/ACESS�RIO

            //Apaga Subprouto
            MdoQueryClear;
            MDO.Query.SQL.Add(' Delete from subproduto Where subproduto.cod_subproduto=:codigo ');
            MDO.Query.ParamByName('codigo').AsInteger:=DMESTOQUE.Alx4.FieldByName('cod_subproduto').AsInteger;
            MDO.Query.ExecSQL;
            //Apaga Estoque
            MdoQueryClear;
            MDO.Query.SQL.Add(' Delete from estoque Where Estoque.cod_estoque=:codigo ');
            MDO.Query.ParamByName('codigo').AsInteger:=DMESTOQUE.Alx4.FieldByName('cod_estoque').AsInteger;
            MDO.Query.ExecSQL;
            MDO.Transac.CommitRetaining;
            FiltraAcessorios;
       End
       Else Begin
       	MessageDlg('Este Acess�rio j� foi usado em outro momento e n�o pode mais ser apagado!', mtWarning, [mbOK], 0);
       End;
    End;
end;

procedure TFCadAcessorios.EdDescricaoAcessorioKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  If Key=Vk_ESCAPE Then
  Begin
    FiltraAcessorios;
    Exit;
  End;
  //REALIZA BUSCA DE ACESS�RIOS COM O VALOR DIGITADO
  if (EdDescricaoAcessorio.Text <> '') Then
  Begin
    DMEstoque.Alx4.Close;
    DMEstoque.Alx4.SQL.Clear;
    DMEstoque.Alx4.SQL.Add('SELECT * FROM VWSIMILAR LEFT JOIN SUBPRODUTO ON (VWSIMILAR.COD_SUBPRODUTO = SUBPRODUTO.COD_SUBPRODUTO) ');
    DMEstoque.Alx4.SQL.Add('WHERE SUBPRODUTO.USOCONSUMO=:COD_USOCONSUMO AND UPPER(SUBPRODUTO.DESCRICAO) LIKE ('+#39+'%'+Uppercase(EdDescricaoAcessorio.Text)+'%'+#39+') ');
    DMEstoque.Alx4.ParamByName('COD_USOCONSUMO').AsString := '5';
    DMEStoque.Alx4.SQL.Text;
    DMEStoque.Alx4.Open;
  End Else
  //REFAZ A LISTA COM TODOS OS ACESS�RIOS
  if (EdDescricaoAcessorio.Text = '') Then
  Begin
		 FiltraAcessorios;
  End;
end;

end.
