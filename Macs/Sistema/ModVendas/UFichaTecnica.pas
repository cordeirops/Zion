unit UFichaTecnica;

      ////////////////////////////////////////////////////////////////////////////////////////////
      //EDMAR - 09/10/2014 - FICHA TÉCNICA PARA PRODUÇÃO A PEDIDO DA SPOTLIGHT (SOLICITAÇÃO 230)//
      ////////////////////////////////////////////////////////////////////////////////////////////

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadPadrao, Buttons, Grids, DBGrids, StdCtrls, TFlatEditUnit,
  ExtCtrls, TFlatButtonUnit, Alxor32, UDMEstoque, AlxMessage, AppEvnts,
  Menus;

type
	TNovoGrid = class(TStringGrid)
   public
    procedure MoveColumn(FromIndex, ToIndex: LongInt); 
    procedure MoveRow(FromIndex, ToIndex: LongInt);
   end;

   TSetor = class
   private
     xCodigoSetor: Integer;
     xDescricaoSetor: String;
   end;

   TComponente = class
   private
     xCodigoComponente: Integer;
     xCodigoItem: Integer;
     xDescricaoComponente: String;
     xValorUnitario: Real;
     XValorTotal: Real;
     xQtde: String;
   end;
   
  TFFichaTecnica = class(TFCadPadrao)
    edProduto: TFlatEdit;
    edQtde: TFlatEdit;
    pComponentes: TPanel;
    Label2: TLabel;
    edPesquisaComponente: TFlatEdit;
    Label3: TLabel;
    gridComponentes: TDBGrid;
    btnComponente: TButton;
    btnSetor: TButton;
    pSetor: TPanel;
    edSetor: TFlatEdit;
    gridSetor: TDBGrid;
    Label1: TLabel;
    pCadSetor: TPanel;
    Label4: TLabel;
    btnGravaSetor: TButton;
    btnCancelarSetor: TButton;
    edDescricaoSetor: TFlatEdit;
    gridSetComp: TStringGrid;
    Panel2: TPanel;
    Label5: TLabel;
    btnFechaSetor: TSpeedButton;
    ApplicationEvents: TApplicationEvents;
    PopupMenu: TPopupMenu;
    btnTeste: TMenuItem;
    pNewQtde: TPanel;
    Label6: TLabel;
    edNovaQuantidade: TFlatEdit;
    Label7: TLabel;
    procedure btnComponenteClick(Sender: TObject);
    procedure btnSetorClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure edSetorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnGravaSetorClick(Sender: TObject);
    procedure btnCancelarSetorClick(Sender: TObject);
    procedure gridSetorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edPesquisaComponenteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure gridSetCompKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure gridSetCompDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure btnFechaSetorClick(Sender: TObject);
    procedure gridComponentesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edPesquisaComponenteExit(Sender: TObject);
    procedure edSetorExit(Sender: TObject);
    procedure PopupMenuPopup(Sender: TObject);
    procedure gridSetCompClick(Sender: TObject);
    procedure gridSetCompDblClick(Sender: TObject);
    procedure edNovaQuantidadeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    posicaoSetor: Array of Integer;
    procedure FiltraComponentes;
    procedure FiltraSetor;
    procedure InsereGridSetor;
    procedure InsereGridComponente;
    procedure LimpaGrid;
    function BuscaFichaTecnicaProdutos:Boolean;
    function BuscaSetor(xPosicao: Integer):TSetor;
    procedure FiltraGridPrincipal;
  public
    { Public declarations }
    XCodEstoque: Integer;
    xCodFichaTecnica: Integer;
    xEditando: Boolean;
    XValorUnitario, XValorTotal: Real;
    XCodSetorDrag, XCodComponenteDrag: Integer;
    XDescricaoSetorDrag, XDescricaoComponenteDrag: String;
    //Edmar - 08/12/2014 - Armazena o codigo do componente que está alterando a quantidade
    xCodCompNewQtde: Integer;
  end;

var
  FFichaTecnica: TFFichaTecnica;

implementation

uses DB, UProduto, Math, IBQuery;

{$R *.dfm}

procedure TFFichaTecnica.btnComponenteClick(Sender: TObject);
begin
  inherited;
  //Edmar - 09/10/2014 - Ao clicar no botão mostra o painel de componente
  //e deixa a grid com foco
	pComponentes.Visible := True;
   pComponentes.BringToFront;
   gridComponentes.SetFocus;
   //e esconde o painel de setor
   pSetor.Visible := False;
   pSetor.SendToBack;
end;

procedure TFFichaTecnica.btnSetorClick(Sender: TObject);
begin
  inherited;
  //Edmar - 09/10/2014 - Ao clicar no botão mostra o painel de setor
  //e deixa a grid com foco
	pSetor.Visible := True;
   pSetor.BringToFront;
   gridSetor.SetFocus;
   //e esconde o painel de componentes
   pComponentes.Visible := False;
   pComponentes.SendToBack;
end;

procedure TFFichaTecnica.FiltraComponentes;
begin
	//Edmar - 09/10/2014 - Busca o codigo do estoque e a descrição do produto
   //caso ele seja uma componente
	DMESTOQUE.Alx.Close;
   DMESTOQUE.Alx.SQL.Clear;
   DMESTOQUE.Alx.SQL.Add(' select estoque.cod_estoque, estoque.VLRCOMPSD as valunit, subproduto.descricao from estoque ');
   DMESTOQUE.Alx.SQL.Add(' left join subproduto on subproduto.cod_subproduto = estoque.cod_subprod ');
   DMESTOQUE.Alx.SQL.Add(' where subproduto.componente = ''1'' order by descricao ');
   DMESTOQUE.Alx.Open;
end;

procedure TFFichaTecnica.FormActivate(Sender: TObject);
begin
  inherited;
	Caption:='Ficha Técnica';  
  	//Edmar - 14/10/2014 - Verifica se o produto selecionado já possui ficha técnica
   if not BuscaFichaTecnicaProdutos then//se não possuir, dá um novo
		BtnNovoClick(sender);
       
   FiltraSetor;
   FiltraComponentes;
   
   if not FiltraTabela(DMESTOQUE.TEstoque, 'ESTOQUE', 'COD_ESTOQUE', IntToStr(XCodEstoque), '') then
   	Exit;

   if not FiltraTabela(DMESTOQUE.TSubProd, 'SUBPRODUTO', 'COD_SUBPRODUTO', DMESTOQUE.TEstoque.FieldByName('COD_SUBPROD').AsString, '') then
   	Exit;

   //Edmar - 09/10/2014 - Atribui o codigo do estoque para uma variavel auxiliar
   //e seta a descrição do produto no campo
   XCodEstoque := DMESTOQUE.TEstoque.FieldByName('COD_ESTOQUE').AsInteger;
   edProduto.Text := DMESTOQUE.TSubProd.FieldByName('DESCRICAO').AsString;
   XValorUnitario := DMESTOQUE.TEstoque.FieldByName('VALUNIT').AsCurrency;
   XValorTotal := 0;
   edQtde.Text := '1';

   XCodComponenteDrag := -1;
   XCodSetorDrag := -1;
   //deixa o foco na grid de setor para evitar que o usuário clique duas vezes
   //se ele clicar apenas uma vez a grid ainda não vai estar com foco. tendo em vista
   //que o botão direito na grid, para selecionar o componente ou o setor, só é ativado
   //quando a grid está em foco
   gridSetor.SetFocus;

   //atribui tamanhos as colunas da grid geral
   gridSetComp.ColWidths[0] := 270;
   gridSetComp.ColWidths[1] := 50;
   gridSetComp.ColWidths[2] := 100;
   gridSetComp.ColWidths[3] := 100;

   xCodCompNewQtde := -1;
end;

procedure TFFichaTecnica.edSetorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   //Edmar - 09/10/2014 - busca o setor pela sua descrição
   DMESTOQUE.TSetorProducao.Locate('DESCRICAO', edSetor.Text, [loCaseInsensitive, loPartialKey]);
     
  	//Edmar - 09/10/2014 - Se apertou F2 no campo de setor
	if Key = VK_F2 then
   begin//mostra o painel para cadastro do setor
     pCadSetor.Visible := True;
     pCadSetor.BringToFront;
     edDescricaoSetor.SetFocus;

     Exit;
   end;

  	if Key = VK_ESCAPE then
  		edSetor.Text := '';
end;

procedure TFFichaTecnica.btnGravaSetorClick(Sender: TObject);
var
	xCodSetor: Integer;
begin
  inherited;
  try
  	 //Edmar - 09/10/2014 - Insere o registro de SETORPRODUCAO para o cadastro de Setor
    xCodSetor := InserReg(DMESTOQUE.TSetorProducao, 'setorproducao', 'cod_setorproducao');
    DMESTOQUE.TSetorProducao.FieldByName('COD_SETORPRODUCAO').AsInteger := xCodSetor;
    DMESTOQUE.TSetorProducao.FieldByName('DESCRICAO').AsString := edDescricaoSetor.Text;
    DMESTOQUE.TSetorProducao.Post;

    DMESTOQUE.TransacEstoque.CommitRetaining;
    btnCancelarSetorClick(sender);
  except
    on E : Exception do
    begin
  		ShowMessage('Ocorreu um problema ao salvar o setor '+e.Message);
       DMESTOQUE.TransacEstoque.RollbackRetaining;
    end;
  end;
  edDescricaoSetor.Text := '';
  FiltraSetor;
end;

procedure TFFichaTecnica.btnCancelarSetorClick(Sender: TObject);
begin
  inherited;
	pCadSetor.Visible := False;
   pCadSetor.SendToBack;
end;

procedure TFFichaTecnica.FiltraSetor;
begin
  //Edmar - 09/10/2014 - Busca todos os setores
  DMESTOQUE.TSetorProducao.Close;
  DMESTOQUE.TSetorProducao.SQL.Clear;
  DMESTOQUE.TSetorProducao.SQL.Add('SELECT * FROM SETORPRODUCAO ORDER BY DESCRICAO');
  DMESTOQUE.TSetorProducao.Open;
end;

procedure TFFichaTecnica.gridSetorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  	//Edmar - 09/10/2014 - Ao acionar o delete do teclado
   //remove o setor correspondente com confirmação do usuário
	if Key = VK_DELETE then
   begin
    if Mensagem(' C O N F I R M A Ç Ã O ', 'Deseja remover o setor '+DMESTOQUE.TSetorProducao.FieldByName('DESCRICAO').AsString+'?', '', 2, 3, false, 'C') = 2 then
    begin

        //Matheus - 05/02/2016 - Faz um select count para saber se possui algum item de alguma ficha técnica ligado ao setor que está sendo excluido
        DMESTOQUE.Alx3.Close;
        DMESTOQUE.Alx3.SQL.Clear;
        DMESTOQUE.Alx3.SQL.Add('SELECT COUNT(ITEMFICHATECNICA.COD_SETORPRODUCAO)');
        DMESTOQUE.Alx3.SQL.Add('FROM ITEMFICHATECNICA');
        DMESTOQUE.Alx3.SQL.Add('WHERE ITEMFICHATECNICA.COD_SETORPRODUCAO = :ID');
        DMESTOQUE.Alx3.ParamByName('ID').AsInteger := DMESTOQUE.TSetorProducao.FieldByName('COD_SETORPRODUCAO').AsInteger;
        DMESTOQUE.Alx3.Open;


        //Matheus - 05/02/2016 - Caso o contador for diferente de zero, ele não permite excluir o item
        if(DMESTOQUE.Alx3.FieldByName('count').AsInteger <> 0) then begin
          Mensagem(' A T E N Ç Ã O!!!!', 'O Setor não pode ser removido por possuir itens ligados a ele, remova os itens de todas as fichas técnicas ligados ao setor para remove-lo', '   ', 1, 1, false, 'A');
          Exit;
        end;

        try
       	   DMESTOQUE.Alx1.Close;
           DMESTOQUE.Alx1.SQL.Clear;
           DMESTOQUE.Alx1.SQL.Add('DELETE FROM SETORPRODUCAO WHERE COD_SETORPRODUCAO = :ID');
           DMESTOQUE.Alx1.ParamByName('ID').AsInteger := DMESTOQUE.TSetorProducao.FieldByName('COD_SETORPRODUCAO').AsInteger;
           DMESTOQUE.Alx1.ExecSQL;

           //Matheus - 05/02/2016 - Realiza a exclusão dos itens ligados ao setor excluído de todas as fichas técnicas 
           DMESTOQUE.Alx2.Close;
           DMESTOQUE.Alx2.SQL.Clear;
           DMESTOQUE.Alx2.SQL.Add('DELETE FROM ITEMFICHATECNICA');
           DMESTOQUE.Alx2.SQL.Add('where not exists(select * from setorproducao where setorproducao.cod_setorproducao = itemfichatecnica.cod_setorproducao)');
           DMESTOQUE.Alx2.ExecSQL;

           DMESTOQUE.TransacEstoque.CommitRetaining;
        except
           on E : Exception do
             begin
              Mensagem(' A L E R T A ', 'Ocorreu um problema ao remover o setor '+E.Message, '', 1, 1, False, 'A');
               	DMESTOQUE.TransacEstoque.RollbackRetaining;
              end;
           end;
      end;
      FiltraSetor;
   end;

   //Edmar - 16/10/2014 - esc zera as variaveis e deixa o mouse no estado padrão
   if Key = VK_ESCAPE then
   begin
   	XCodSetorDrag := -1;
       XCodComponenteDrag := -1;
		Screen.Cursor := crDefault;
   end;
end;

procedure TFFichaTecnica.edPesquisaComponenteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
	//localiza o componente pela descrição
  	DMESTOQUE.Alx.Locate('DESCRICAO', edPesquisaComponente.Text, [loCaseInsensitive, loPartialKey]);
   
   //esc limpa o campo de busca
  	if Key = VK_ESCAPE then
   	edPesquisaComponente.Text := '';

	//F2 abre a tela de produto caso queira editar um componente
   //ou selecionar por ali
	if Key = VK_F2 then
   begin
		if AbrirForm(TFProduto, FProduto, 1) = 'Selected' then
       begin
       	//Edmar - 16/10/2014 - depois de selecionado, verifica se o produto selecionado é um componente
       	if FiltraTabela(DMESTOQUE.TSubProd, 'SUBPRODUTO', 'COD_SUBPRODUTO', DMESTOQUE.WSimilar.FieldByName('COD_SUBPRODUTO').AsString, 'AND (COMPONENTE = ''1'')') then
           begin
     			Screen.Cursor := crHandPoint;
     			XCodComponenteDrag := DMESTOQUE.WSimilar.FieldByName('COD_ESTOQUE').AsInteger;
     			XDescricaoComponenteDrag := DMESTOQUE.WSimilar.FieldByName('DESCRICAO').AsString;

     			XCodSetorDrag := -1;
           end
           else
           	Mensagem(' A T E N Ç Ã O ', 'O produto selecionado não é um componente. Por favor verifique.', '', 1, 1, False, 'A');

           gridSetComp.SetFocus;
           FiltraComponentes;
       end;
   end;       
end;

procedure TFFichaTecnica.InsereGridSetor;
var
	 xObjSetor: TSetor;
   xI: Integer;
   xAchou: Boolean;
begin
	xAchou := False;
   //Edmar - 15/10/2014 - Percorre a grid verificando se o setor já foi escrito
   for xI := 0 to gridSetComp.RowCount - 1 do
   begin
       if gridSetComp.Cells[0, xI] = gridSetor.Fields[1].AsString then
       	xAchou := True;//e alimenta a variavel caso positivo
   end;

	//Edmar - 15/10/2014 - Se achou dá uma mensagem para o usuário
   if xAchou then
   begin
		Mensagem(' A T E N Ç Ã O ', 'O Setor '+gridSetor.Fields[1].AsString+' já foi inserido na grid, portanto não será possível reescrevê-lo. Por favor verifique.', '', 1, 1, False, 'A');
       Exit;
   end;

   //Edmar - 13/10/2014 - Monta objeto de setor para insersão
	 xObjSetor := TSetor.Create;
   xObjSetor.xCodigoSetor := XCodSetorDrag;
   xObjSetor.xDescricaoSetor := XDescricaoSetorDrag;
   
  	//escreve o setor na informação
    gridSetComp.Objects[0, gridSetComp.RowCount-1] := xObjSetor;
  	gridSetComp.Cells[0, gridSetComp.RowCount-1] := xObjSetor.xDescricaoSetor;
   
   //aumenta o tamanho do vetor
	 SetLength(posicaoSetor, Length(posicaoSetor)+1);
   //adiciona a posição que foi adicionado o setor na grid
   //em um vetor de int para posterior consulta
   posicaoSetor[Length(posicaoSetor)-1] := gridSetComp.RowCount-1;
   //incrementa a quantidade de setores no array
   //qtdeSetor := qtdeSetor + 1;
   //Edmar - 10/10/2014 - Adiciona mais uma linha na grid
   gridSetComp.RowCount := gridSetComp.RowCount + 1;
	//Edmar - 16/10/2014 - seta o foco para o setor
   gridSetor.SetFocus;
end;

procedure TFFichaTecnica.InsereGridComponente;
var
	xCalc: Real;
   xLinha, xI, xCodItemFicha, xCodSetor: Integer;
   xPosVetor: Integer;//Armazena a posição real do setor
   xAchou: boolean;
   xControle: Integer;
   xQtde: String;
   xObjComponente: TComponente;
begin
   if Length(posicaoSetor) <= 0 then
   begin
   	Mensagem(' A T E N Ç Ã O ', 'Para inserir um Componente é preciso incluir um Setor antes.', '', 1, 1, False, 'A');
   	Exit;
   end;

	//Edmar - 15/10/2014 - Armazena a linha que foi deixado o componente
   xLinha := gridSetComp.Row;

   xPosVetor := -1;

  	xAchou := False;

   //Edmar - 10/10/2014 - Percorre o vetor verificando onde o setor está incluido
   for xI := 0 to Length(posicaoSetor) - 1 do
   begin
   	//se linha for maior que a posição atual
		if (xLinha >= posicaoSetor[xI]) then
       begin
       	//verifica se não é a ultima posição do vetor
       	if Length(posicaoSetor) = xI + 1 then
           begin
           	//se for final de vetor, usa a mesma posição buscado anteriormente
       		if (xLinha < posicaoSetor[xI]) then
               begin
               	xAchou := True;
                   xPosVetor := posicaoSetor[xI];
               end;
           end
           else
              //se não for final de vetor, verifica com uma posição a mais do vetor
			   if (xLinha < posicaoSetor[xI + 1]) then
              begin
					xAchou := True;
                   xPosVetor := posicaoSetor[xI];
              end;
       end;
   end;

  	xCodItemFicha := InserReg(DMESTOQUE.TItemFichaTecnica, 'ITEMFICHATECNICA', 'COD_ITEMFICHATECNICA');//insere registro na tabela itenfichatecnica

   //Edmar - 13/10/2014 - Monta objeto de componente para inserção
   xObjComponente := TComponente.Create;
   xObjComponente.xCodigoComponente := XCodComponenteDrag;
   xObjComponente.xDescricaoComponente := XDescricaoComponenteDrag;
   xObjComponente.xCodigoItem := xCodItemFicha;
   xObjComponente.xValorUnitario := XValorUnitario;


   If InputQuery('', 'Informe a quantidade que será usado desse item.', xQtde) then
   begin
   	if xQtde = '' then
       begin
			Mensagem(' A T E N Ç Ã O ', 'Para inserir um componente é necessário informar sua quantidade.', '', 1, 1, false, 'A');
           Exit;
       end
       else
			xObjComponente.xQtde := xQtde;       
   end
   else//se cancelou, finaliza o processo
   	Exit;

   xObjComponente.XValorTotal := (StrToCurr(xQtde)*XValorUnitario);

   if xPosVetor = -1 then
		xCodSetor := BuscaSetor(-1).xCodigoSetor
   else//passa como parametro a posição que se encontra o setor
		xCodSetor := BuscaSetor(xPosVetor).xCodigoSetor;

   // salva as informações do item
   DMESTOQUE.TItemFichaTecnica.FieldByName('COD_ITEMFICHATECNICA').AsInteger := xCodItemFicha;
   DMESTOQUE.TItemFichaTecnica.FieldByName('COD_ESTOQUE').AsInteger := xObjComponente.xCodigoComponente;
   DMESTOQUE.TItemFichaTecnica.FieldByName('COD_SETORPRODUCAO').AsInteger := xCodSetor;
   DMESTOQUE.TItemFichaTecnica.FieldByName('COD_FICHATECNICA').AsInteger := xCodFichaTecnica;
   DMESTOQUE.TItemFichaTecnica.FieldByName('QUANTIDADE').AsString := xObjComponente.xQtde;


   DMESTOQUE.TItemFichaTecnica.Post;

   FiltraGridPrincipal;

   //Edmar - 16/10/2014 - Deixa o foco para a grid de componente
   gridComponentes.SetFocus; 
end;

{ TNovoGrid }
//Edmar - 10/10/2014 - Tipode TNovoGrid criado para herdar e implementar
//os metodos MoveColumn e MoveRow que são responsáveis em organizar as linhas
//e/ou colunas da grid
procedure TNovoGrid.MoveColumn(FromIndex, ToIndex: Integer);
begin
inherited;
//
end;

procedure TNovoGrid.MoveRow(FromIndex, ToIndex: Integer);
begin
inherited;
//
end;

procedure TFFichaTecnica.gridSetCompKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
	xDe, xAte, xI: Integer;
begin
  inherited;
  	//Edmasr - 08/12/2014 - Ao clicar ENTER, abre o painel para alterar a quantidade do produto
	if Key = VK_RETURN then
   begin
   	//Edmar - 08/12/204 - Se entrou nessa condição, quer dizer que deu duplo click em um componente e não num setor
     	if (gridSetComp.Cells[0, gridSetComp.Row] <> '') AND (gridSetComp.Cells[1, gridSetComp.Row] <> '') then
     	begin
         	xCodCompNewQtde := TComponente(gridSetComp.Objects[0, gridSetComp.Row]).xCodigoItem;

         	pNewQtde.Visible := True;
         	pNewQtde.BringToFront;
       	edNovaQuantidade.SetFocus;
     	end;
   end;


	if Key = VK_DELETE then
	begin
   	//Edmar - 15/10/2014 - Caso entre nessa condição, o usuário decidiu remover um setor
      	if (gridSetComp.Cells[0, gridSetComp.Row] <> '') AND (gridSetComp.Cells[1, gridSetComp.Row] = '') then
       begin
			if Mensagem(' C O N F I R M A Ç Ã O ', 'Ao excluir um setor, todos os componentes atrelados a ele também serão excluídos. Deseja confirmar essa operação?',
           	'', 2, 3, false, 'C') = 2 then
           begin
				DMESTOQUE.Alx5.Close;
               DMESTOQUE.Alx5.SQL.Clear;
               DMESTOQUE.Alx5.SQL.Add('DELETE FROM ITEMFICHATECNICA WHERE (ITEMFICHATECNICA.COD_SETORPRODUCAO = :SETOR) AND (ITEMFICHATECNICA.COD_FICHATECNICA = :FICHA)');
               DMESTOQUE.Alx5.ParamByName('SETOR').AsInteger := TSetor(gridSetComp.Objects[0, gridSetComp.Row]).xCodigoSetor;
               DMESTOQUE.Alx5.ParamByName('FICHA').AsInteger := xCodFichaTecnica;

               try
                   DMESTOQUE.Alx5.ExecSQL;
                   DMESTOQUE.TransacEstoque.CommitRetaining;
               except
                   On E : Exception do
                   begin
                       ShowMessage('Não foi possivel remover o Setor '+E.Message);
                       DMESTOQUE.TransacEstoque.RollbackRetaining;
                   end;
               end;

				FiltraGridPrincipal;              
           end;
       end
       else begin//senão, é um componente normal
           if Mensagem(' C O N F I R M A Ç Ã O ', 'Deseja realmente remover esse item?', '', 2, 3, false, 'C') = 2 then
           begin
               if gridSetComp.Row <> gridSetComp.RowCount - 1 then
               begin
                   DMESTOQUE.Alx5.Close;
                   DMESTOQUE.Alx5.SQL.Clear;
                   DMESTOQUE.Alx5.SQL.Add('DELETE FROM ITEMFICHATECNICA WHERE ITEMFICHATECNICA.COD_ITEMFICHATECNICA = :COD');
                   DMESTOQUE.Alx5.ParamByName('COD').AsInteger := TComponente(gridSetComp.Objects[0, gridSetComp.Row]).xCodigoItem;

                   try
                       DMESTOQUE.Alx5.ExecSQL;
                       DMESTOQUE.TransacEstoque.CommitRetaining;
                   except
                       On E : Exception do
                       begin
                           ShowMessage('Não foi possivel remover o Item '+E.Message);
                           DMESTOQUE.TransacEstoque.RollbackRetaining;
                       end;
                   end;

                   gridSetComp.Cells[0, gridSetComp.Row] := '';
                   gridSetComp.Cells[1, gridSetComp.Row] := '';
                   TNovoGrid(gridSetComp).MoveRow(gridSetComp.Row, gridSetComp.RowCount);
                   gridSetComp.RowCount := gridSetComp.RowCount - 1;
               end;
           end;
       end;

	end;
end; 
procedure TFFichaTecnica.BtnNovoClick(Sender: TObject);
begin
  inherited;
  	try
  	 //Edmar - 09/10/2014 - Insere o registro de SETORPRODUCAO para o cadastro de Setor
    xCodFichaTecnica := InserReg(DMESTOQUE.TFichaTecnica, 'FICHATECNICA', 'COD_SETOR');
    DMESTOQUE.TFichaTecnica.FieldByName('COD_SETOR').AsInteger := xCodFichaTecnica;
    DMESTOQUE.TFichaTecnica.FieldByName('COD_ESTOQUE').AsInteger := XCodEstoque;
    DMESTOQUE.TFichaTecnica.Post;

    //DMESTOQUE.TransacEstoque.CommitRetaining;
    xEditando := False;
   except
   	on e : Exception do
       begin
       	ShowMessage('Ocorreu um problema ao gerar chave da ficha técnica '+e.Message);
           DMESTOQUE.TransacEstoque.RollbackRetaining;
       end;
   end;
	LimpaGrid;   
end;

procedure TFFichaTecnica.BtnGravarClick(Sender: TObject);
begin
	try
   	DMESTOQUE.TransacEstoque.CommitRetaining;
   except
   	on E : Exception do
       begin
       	ShowMessage('Ocorreu um problema ao gravar a Ficha Técnica '+E.Message);
           DMESTOQUE.TransacEstoque.RollbackRetaining;
       end;
   end;
   If MessageDlg('Atualizar o valor de custo do produto acabado?', mtWarning, [mbYes, mbNo], 0)=MrYes Then
		AtualizaValorCustoProduto_BaseProdutoAcabado(XCodEstoque);
   Close;
end;

procedure TFFichaTecnica.LimpaGrid;
begin
	//
	gridSetComp.RowCount := gridSetComp.RowCount - gridSetComp.RowCount;
	gridSetComp.Cells[0, 0] := '';
	gridSetComp.Cells[1, 0] := '';
  gridSetComp.Cells[2, 0] := '';
  gridSetComp.Cells[3, 0] := '';
end;

procedure TFFichaTecnica.BtnCancelarClick(Sender: TObject);
begin
	Try
       DMESTOQUE.TransacEstoque.RollbackRetaining;
		Close;
	Except
   End;
end;

function TFFichaTecnica.BuscaFichaTecnicaProdutos: Boolean;
var
	xI, xControle: Integer;
   xAchou: Boolean;
   xSetor: TSetor;
   xComponente: TComponente;
begin
  try
     Result := False;
     //Edmar - 14/10/2014 - Busca se o produto selecionado já possui uma ficha tecnica
     DMESTOQUE.Alx1.Close;
     DMESTOQUE.Alx1.SQL.Clear;
     DMESTOQUE.Alx1.SQL.Add('SELECT * FROM FICHATECNICA WHERE FICHATECNICA.COD_ESTOQUE = :ESTOQUE');
     DMESTOQUE.Alx1.ParamByName('ESTOQUE').AsInteger := XCodEstoque;
     DMESTOQUE.Alx1.Open;

     xCodFichaTecnica := DMESTOQUE.Alx1.FieldByName('COD_SETOR').AsInteger;

     //se possui, busca o restante das informações e preenche os campos
     if not DMESTOQUE.Alx1.IsEmpty then
     begin
         	xSetor := TSetor.Create;
         	xComponente := TComponente.Create;

         	DMESTOQUE.Alx2.Close;
         	DMESTOQUE.Alx2.SQL.Clear;
         	DMESTOQUE.Alx2.SQL.Add(' SELECT SETORPRODUCAO.COD_SETORPRODUCAO, SETORPRODUCAO.DESCRICAO SETOR, ESTOQUE.COD_ESTOQUE, ESTOQUE.VALUNIT, SUBPRODUTO.DESCRICAO ITEM, ITEMFICHATECNICA.QUANTIDADE, ITEMFICHATECNICA.COD_ITEMFICHATECNICA  FROM FICHATECNICA ');
         	DMESTOQUE.Alx2.SQL.Add(' LEFT JOIN ITEMFICHATECNICA ON ITEMFICHATECNICA.COD_FICHATECNICA = FICHATECNICA.COD_SETOR ');
         	DMESTOQUE.Alx2.SQL.Add(' LEFT JOIN SETORPRODUCAO ON SETORPRODUCAO.COD_SETORPRODUCAO = ITEMFICHATECNICA.COD_SETORPRODUCAO ');
         	DMESTOQUE.Alx2.SQL.Add(' LEFT JOIN ESTOQUE ON ESTOQUE.COD_ESTOQUE = ITEMFICHATECNICA.COD_ESTOQUE ');
         	DMESTOQUE.Alx2.SQL.Add(' LEFT JOIN SUBPRODUTO ON SUBPRODUTO.COD_SUBPRODUTO  = ESTOQUE.COD_SUBPROD ');
         	DMESTOQUE.Alx2.SQL.Add(' WHERE (FICHATECNICA.COD_SETOR = :FICHA) AND (SETORPRODUCAO.DESCRICAO IS NOT NULL)');
         	DMESTOQUE.Alx2.SQL.Add(' ORDER BY SETOR, ITEM ');
         	DMESTOQUE.Alx2.ParamByName('FICHA').AsInteger := xCodFichaTecnica;//DMESTOQUE.Alx1.FieldByName('COD_SETOR').AsInteger;

         	DMESTOQUE.Alx2.Open;

         	DMESTOQUE.Alx2.First;

         	if not DMESTOQUE.Alx2.IsEmpty then
         	begin
             xControle := 0;

             while not DMESTOQUE.Alx2.Eof do
             begin
                 xAchou := False;

                 //Edmar - 14/10/2014 - Percorre o vetor de setores verificando
                 //se o setor já foi escrito
                 for xI := 0 to Length(posicaoSetor) - 1 do
                 begin
                   xSetor := BuscaSetor(posicaoSetor[xI]);
                   if xSetor.xDescricaoSetor = DMESTOQUE.Alx2.FieldByName('SETOR').AsString then
                       xAchou := True;
                 end;

                 //instancia e popula o objeto de componente
                 xComponente := TComponente.Create;
                 xComponente.xCodigoComponente := DMESTOQUE.Alx2.FieldByName('COD_ESTOQUE').AsInteger;
                 xComponente.xCodigoItem := DMESTOQUE.Alx2.FieldByName('COD_ITEMFICHATECNICA').AsInteger;
                 xComponente.xDescricaoComponente := DMESTOQUE.Alx2.FieldByName('ITEM').AsString;
                 xComponente.xQtde := DMESTOQUE.Alx2.FieldByName('QUANTIDADE').AsString;
                 xComponente.xValorUnitario := DMESTOQUE.Alx2.FieldByName('VALUNIT').AsCurrency;
                 xComponente.XValorTotal := (StrToCurr(xComponente.xQtde)*xComponente.xValorUnitario);

                 if not xAchou then
                 begin
                   //Edmar - 14/10/2014 - se o setor ainda não foi escrito popula o objeto de setor
                   xSetor.xCodigoSetor := DMESTOQUE.Alx2.FieldByName('COD_SETORPRODUCAO').AsInteger;
                   xSetor.xDescricaoSetor := DMESTOQUE.Alx2.FieldByName('SETOR').AsString;

                   //adiciona na grid primeiro o setor
                   gridSetComp.Objects[0, xControle] := xSetor;
                   gridSetComp.Cells[0, xControle] := xSetor.xDescricaoSetor;

                   xControle := xControle + 1;

                   //depois adiciona o componente
                   gridSetComp.Objects[0, xControle] := xComponente;
                   gridSetComp.Cells[0, xControle] := xComponente.xDescricaoComponente;
                   gridSetComp.Cells[1, xControle] := xComponente.xQtde;
                   gridSetComp.Cells[2, xControle] := CurrToStr(xComponente.xValorUnitario);
                   gridSetComp.Cells[3, xControle] := CurrToStr(xComponente.XValorTotal);

                   //aumenta o tamanho do vetor
                   //SetLength(posicaoSetor, qtdeSetor + 1);
                   SetLength(posicaoSetor, Length(posicaoSetor)+1);
                   //adiciona a posição que foi adicionado o setor na grid
                   //em um vetor de int para posterior consulta
                   posicaoSetor[(Length(posicaoSetor)-1)] := xControle - 1;

//                 qtdeSetor := qtdeSetor + 1;

                   gridSetComp.RowCount := gridSetComp.RowCount + 1;
                 end else
                 begin
                   //se o setor já está escrito, apenas escreve o componente na próxima linha
                   gridSetComp.Objects[0, xControle] := xComponente;
                   gridSetComp.Cells[0, xControle] := xComponente.xDescricaoComponente;
                   gridSetComp.Cells[1, xControle] := xComponente.xQtde;
                   gridSetComp.Cells[2, xControle] := CurrToStr(xComponente.xValorUnitario);
                   gridSetComp.Cells[3, xControle] := CurrToStr(xComponente.XValorTotal);
                 end;

                 xControle := xControle + 1;
                 DMESTOQUE.Alx2.Next;
                 gridSetComp.RowCount := gridSetComp.RowCount + 1;
             end;

             //deixa o painel de consulta visivel
             PConsulta.Visible:=False;
             PCadastro.Visible:=TRUE;
             PCadastro.BringToFront;

             Result := True;
         end
         else begin
             try
                 DMESTOQUE.Alx2.Close;
                 DMESTOQUE.Alx2.SQL.Clear;
                 DMESTOQUE.Alx2.SQL.Add('DELETE FROM FICHATECNICA WHERE FICHATECNICA.COD_SETOR = :SETOR');
                 DMESTOQUE.Alx2.ParamByName('SETOR').AsInteger := DMESTOQUE.Alx1.FieldByName('COD_SETOR').AsInteger;
                 DMESTOQUE.Alx2.ExecSQL;
                 DMESTOQUE.TransacEstoque.CommitRetaining;
             except
                 On E : Exception do
                 begin
                     ShowMessage('Ocorreu um problema ao remover a ficha técnica '+E.Message);
                     DMESTOQUE.TransacEstoque.RollbackRetaining;
                 end;
             end;
             Result := False;
         end;
     end;
  except
     On E : Exception do
         ShowMessage('Ocorreu um problema ao inserir os itens da Ficha Técnica '+E.Message);
  end;
end;

function TFFichaTecnica.BuscaSetor(xPosicao: Integer): TSetor;
var
	xRetorno: TSetor;
begin
	xRetorno := TSetor.Create;
	if xPosicao = -1 then
   begin
		xRetorno.xCodigoSetor := TSetor(gridSetComp.Objects[0, posicaoSetor[(Length(posicaoSetor)-1)]]).xCodigoSetor;
   	xRetorno.xDescricaoSetor := TSetor(gridSetComp.Objects[0, posicaoSetor[(Length(posicaoSetor)-1)]]).xDescricaoSetor;
   end
   else begin
		xRetorno.xCodigoSetor := TSetor(gridSetComp.Objects[0, xPosicao]).xCodigoSetor;
   	xRetorno.xDescricaoSetor := TSetor(gridSetComp.Objects[0, xPosicao]).xDescricaoSetor;
   end;

   Result := xRetorno;
end;

procedure TFFichaTecnica.gridSetCompDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
  inherited;
	if (gridSetComp.Cells[0, ARow] <> '') AND (gridSetComp.Cells[1, ARow] = '') then
   begin
   	gridSetComp.Canvas.Brush.Color := clMoneyGreen;
   	gridSetComp.Canvas.Font.Color := clBlack;
       gridSetComp.Canvas.Font.Style := [fsBold];
       gridSetComp.Canvas.FillRect(Rect);
       gridSetComp.Canvas.TextOut(Rect.Left+2, Rect.Top+2, gridSetComp.Cells[ACol, ARow]);
   end;
end;

procedure TFFichaTecnica.FiltraGridPrincipal;
var
	xI: Integer;
begin
	for xI := 0 to gridSetComp.RowCount - 1 do
  	begin
  		gridSetComp.Cells[0, xI] := '';
  		gridSetComp.Cells[1, xI] := '';
      gridSetComp.Cells[2, xI] := '';
      gridSetComp.Cells[3, xI] := '';
  	end;

  	gridSetComp.RowCount := 1;
  	SetLength(posicaoSetor, 0);
  	BuscaFichaTecnicaProdutos;
end;

procedure TFFichaTecnica.btnFechaSetorClick(Sender: TObject);
begin
  inherited;
	btnCancelarSetorClick(sender);
end;

//Edmar - 16/10/2014 - Metodo usado para capturar o click do mouse nas linhas da grid
procedure TFFichaTecnica.gridComponentesKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
   if Key = VK_ESCAPE then
   begin
   	XCodSetorDrag := -1;
       XCodComponenteDrag := -1;
		Screen.Cursor := crDefault;
	end;
end;

procedure TFFichaTecnica.edPesquisaComponenteExit(Sender: TObject);
begin
  inherited;
	gridComponentes.SetFocus;
end;

procedure TFFichaTecnica.edSetorExit(Sender: TObject);
begin
  inherited;
	gridSetor.SetFocus;
end;

procedure TFFichaTecnica.PopupMenuPopup(Sender: TObject);
begin
  inherited;
	btnTeste.Visible := False;
	//Verifica qual botão foi acionado e qual grid está ativa
   //e faz diferente tratamento para cada caso
 	if (pComponentes.Visible) then
	begin
     	Screen.Cursor := crHandPoint;
     	XCodComponenteDrag := DMESTOQUE.Alx.FieldByName('COD_ESTOQUE').AsInteger;
     	XDescricaoComponenteDrag := DMESTOQUE.Alx.FieldByName('DESCRICAO').AsString;

     	XCodSetorDrag := -1;
   end;

	if (pSetor.Visible) then
	begin  
   	Screen.Cursor := crHandPoint;
     	XCodSetorDrag := DMESTOQUE.TSetorProducao.FieldByName('COD_SETORPRODUCAO').AsInteger;
     	XDescricaoSetorDrag := DMESTOQUE.TSetorProducao.FieldByName('DESCRICAO').AsString;

     	XCodComponenteDrag := -1;
   end;
end;

procedure TFFichaTecnica.gridSetCompClick(Sender: TObject);
begin
  inherited;
  if XCodSetorDrag <> -1 then
     InsereGridSetor;

  if XCodComponenteDrag <> -1 then
     InsereGridComponente;

  Screen.Cursor := crDefault;
  XCodComponenteDrag := -1;
  XCodSetorDrag := -1;
end;

procedure TFFichaTecnica.gridSetCompDblClick(Sender: TObject);
begin
  inherited;
  	//Edmar - 08/12/204 - Se entrou nessa condição, quer dizer que deu duplo click em um componente e não num setor
	if (gridSetComp.Cells[0, gridSetComp.Row] <> '') AND (gridSetComp.Cells[1, gridSetComp.Row] <> '') then
   begin
   	xCodCompNewQtde := TComponente(gridSetComp.Objects[0, gridSetComp.Row]).xCodigoItem;
       
   	pNewQtde.Visible := True;
       pNewQtde.BringToFront;
       edNovaQuantidade.SetFocus;
   end;
end;

procedure TFFichaTecnica.edNovaQuantidadeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
	if Key = VK_ESCAPE then
   begin
   	pNewQtde.Visible := False;
       pNewQtde.SendToBack;
       xCodCompNewQtde := -1;
       edNovaQuantidade.Text := '';
   end;

   if Key = VK_RETURN then
   begin
   	if FiltraTabela(DMESTOQUE.TItemFichaTecnica, 'ITEMFICHATECNICA', 'COD_ITEMFICHATECNICA', IntToStr(xCodCompNewQtde), '') then
       begin
           DMESTOQUE.TItemFichaTecnica.Edit;
       	DMESTOQUE.TItemFichaTecnica.FieldByName('QUANTIDADE').AsCurrency := StrToCurr(edNovaQuantidade.Text);
       	DMESTOQUE.TItemFichaTecnica.FieldByName('COD_ITEMFICHATECNICA').AsInteger := xCodCompNewQtde;
       	DMESTOQUE.TItemFichaTecnica.Post;

       	FiltraGridPrincipal;
       end;

   	pNewQtde.Visible := False;
       pNewQtde.SendToBack;
       gridSetComp.SetFocus;
       xCodCompNewQtde := -1;
       edNovaQuantidade.Text := '';
   end;
end;

end.




