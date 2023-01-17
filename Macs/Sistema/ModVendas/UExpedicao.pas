unit UExpedicao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPadrao, Buttons, ExtCtrls, StdCtrls, Grids, DateUtils, DBGrids,
  TFlatButtonUnit, TFlatRadioButtonUnit, TFlatEditUnit, TFlatTabControlUnit,
  Mask, ColorMaskEdit, Menus, FR_Class, FR_DSet, FR_DBSet;

type
  TFExpedicao = class(TFPadrao)
    Shape1: TShape;
    Calendario: TStringGrid;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;                                    
    Shape2: TShape;
    LMesAtual: TLabel;
    lbData: TLabel;
    edClienteBaixa: TFlatEdit;
    edNumSerieBaixa: TFlatEdit;
    Label6: TLabel;
    Label7: TLabel;
    edDescBaixa: TFlatEdit;
    Label8: TLabel;
    dbGridBaixa: TDBGrid;
    Label9: TLabel;
    btnRetirado: TButton;
    btnRetorno: TButton;
    btnCancRetorno: TButton;
    Label10: TLabel;
    pEquipamentos: TPanel;
    edCodInt: TFlatEdit;
    edDescricao: TFlatEdit;
    edCliente: TFlatEdit;
    rdBtnRetorno: TFlatRadioButton;
    rdBtnRetirada: TFlatRadioButton;
    dbGridRetorno: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    btnFechaPainel: TSpeedButton;
    dbGridRetirada: TDBGrid;
    pHrRetorno: TPanel;
    edHrRetorno: TColorMaskEdit;
    Label11: TLabel;
    edHrRetirada: TColorMaskEdit;
    Label12: TLabel;
    edDtRetorno: TColorMaskEdit;
    Label13: TLabel;
    edDtRetirada: TColorMaskEdit;
    Label14: TLabel;
    btnConfirmaRetorno: TButton;
    PNovo: TPanel;
    BtnRetirada: TBitBtn;
    BtnRetornado: TBitBtn;
    Panel: TPanel;
    LTitulo: TLabel;
    DBGridPadrao: TDBGrid;
    PmComandoOS: TPopupMenu;
    dbGridItens: TDBGrid;
    Label15: TLabel;
    RetirarItens1: TMenuItem;
    RetornarItens1: TMenuItem;
    Label16: TLabel;
    Label17: TLabel;
    edNumero: TEdit;
    edNomeCliente: TEdit;
    Label18: TLabel;
    edIdPatrimonio: TEdit;
    Label19: TLabel;
    edDescPatrimonio: TEdit;
    FSDSacessorios: TfrDBDataSet;
    FSFORMPAG: TfrDBDataSet;
    FSDSEquipamento: TfrDBDataSet;
    FSDSRel: TfrDBDataSet;
    Fsrel: TfrReport;
    btnLiberar: TBitBtn;
    btnAtualizar: TFlatButton;
    procedure FormActivate(Sender: TObject);
    procedure CalendarioDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure CalendarioDblClick(Sender: TObject);
    procedure edClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edCodIntKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edDescricaoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnFechaPainelClick(Sender: TObject);
    procedure edNumSerieBaixaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edDescBaixaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edClienteBaixaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnRetiradoClick(Sender: TObject);
    procedure btnRetornoClick(Sender: TObject);
    procedure btnCancRetornoClick(Sender: TObject);
    procedure edHrRetornoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnConfirmaRetornoClick(Sender: TObject);
    procedure btnLiberarClick(Sender: TObject);
    procedure BtnRetiradaClick(Sender: TObject);
    procedure BtnRetornadoClick(Sender: TObject);
    procedure LiberarOSparaRetirada1Click(Sender: TObject);
	 //Alex - 13/01/2015 - Função para efetuar a liberação de retirada da OS selecionada
	 Function LiberaOS: Boolean;
    procedure DBGridPadraoCellClick(Column: TColumn);
    procedure RetirarItens1Click(Sender: TObject);
    procedure RetornarItens1Click(Sender: TObject);
    procedure edNumeroKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edNomeClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridPadraoDblClick(Sender: TObject);
    procedure edIdPatrimonioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edDescPatrimonioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAtualizaClick(Sender: TObject);
  private
    { Private declarations }
    xNumeroDias, xValorRetorno, xValorTotalRetorno: double;
    PrimeiroDiaMes, xDtRetorno, xDtSaida: TDateTime;
    xHoraSaida, xHoraRetorno, xQtdProd: Integer;
    //Edmar - 18/02/2015 - Variavel auxiliar para controlar se está despachando alguma ordem,
    //seja retirado ou retorno. Caso esta variavel seja verdadeira, não atualiza a grid
    xDespachandoOrdem: Boolean;
    xUltimaPesquisa:string;//Edmar - 03/01/2014 - Pegar a ultima pesquisa para atualizar a tabela
    xFlag:integer;//Edmar - 03/01/2014 - Controlar de onde veio a ultima pesquisa (1 - controle interno; 2 - descricao; 3 - cliente)
	 function AtualizaGridBaixa:boolean;
    //Edmar - 06/01/2014 - Extratifica as datas e horarios do retorno e calcula valor correto.
    function CalculaRetorno: boolean;
    //Edmar - 06/01/2014 - Função usada para popular a grid de esquipamentos para baixa
    function PopulaGridBaixa(xGerador, xValor: string): boolean;
    //Edmar - 06/01/2014 - Função usada para popular a grid de esquipamentos de retirada e retorno
    function PopulaGridEquipamentos(xGerador, xValor, xTipo: string): boolean;
  public
    { Public declarations }
    //Função responsável por popular o calendario de expedição
    Function PopulaCalendario: Boolean;
	 //Procedure Utilizada para desenhar o calendário
	 procedure DesenharCalendario;
	 //Função utilizada para verificar se existe itens a ser retirado em determinado dia 1 = itens para retirada; 2 = itens para retorno; 3 = retirada e retono
	 Function DesenhaGradeItensRetiradaRetorno(Dia: String) : Smallint;
	 //Função para retornar dados de filtro Ordem de Serviços
	 Procedure FiltraOrdem(XSql: String);
    procedure FiltraGrid(xStatus, xTipoFiltro, xFiltro: String);
    //Edmar - 15/01/2015 - Procedimentos auxiliares para inserção e atualização do status da ordem de serviço
    function AtualizaOrdem(xCodOrdem: Integer; xStatus: String): Boolean;
    function AdicionaLogOperacao(xOperacao: String; XORDEM: String): Boolean;
    function AtualizaEstoque(xCodOrdem: Integer; xTipo: String): Boolean;
    Procedure FiltraItens(XFiltro: String; xEntidade: String);
  end;

var
  FExpedicao: TFExpedicao;

implementation

uses UDMEstoque, Math, AlxMessage, UMDO, DB, Alxor32, UDmServ, USenha, UMenu, UDMEntrada,
  UDMMacs, UDMPessoa, UDMGEOGRAFIA, UDMFinanc, UDMConta;

{$R *.dfm}


//Função responsável por popular o calendario de expedição
Function TFExpedicao.PopulaCalendario: Boolean;
var
  i: Integer;
begin
	Try
  		//Monstando o Cabeçalho da Semana ( Seg / Terc / Quart...)
  		with Calendario do
       begin
    		for i := 1 to 7 do
           begin
      			Cells[i-1, 0] := ShortDayNames[i];
    		end;
  		end;
  		//Pega o Primeiro dia do Mes do Date (Pega a Data se estiver 20/01/2009 ai Fica 01/01/2009) entao a variavel PrimeiroDiaMes :=1
  		PrimeiroDiaMes := RecodeDay(Date, 1);
  		DesenharCalendario;
   Except
   End;
End;


procedure TFExpedicao.FormActivate(Sender: TObject);
begin
  inherited;
  	//Alex 08/01/2015 - Comentei o código abaixo para colocar em operação a nova tela de expedição
   {PopulaCalendario;
   edCodInt.SetFocus;
   pEquipamentos.SendToBack;
   pEquipamentos.Visible := false;
   xUltimaPesquisa := '';
   pHrRetorno.Visible := false;
   pHrRetorno.SendToBack;}
   DBGridPadrao.DataSource := DMServ.DSAlx1;
   BtnRetirada.Click;
   PNovo.BringToFront;
end;

//Função utilizada para verificar se existe itens a ser retirado em determinado dia 1 = itens para retirada; 2 = itens para retorno; 3 = retirada e retono
Function TFExpedicao.DesenhaGradeItensRetiradaRetorno(Dia: String) : Smallint;
Var
	Day, Month, Year: Word;
   XDtFiltro: String;
Begin
	Try
       Result:=0;
		DecodeDate(PrimeiroDiaMes, Year, Month, Day);
       Try
       	XDtFiltro:=Dia+'/'+IntToStr(Month)+'/'+IntToStr(Year);
           //Verifica-se itens para retirada
           DMESTOQUE.Alx.Close;
           DMESTOQUE.Alx.SQL.Clear;
           DMESTOQUE.Alx.SQL.Add(' Select itprodord.dtretirada, itprodord.dtretorno, itprodord.qtd, itprodord.qtdret, itprodord.vlrunit, itprodord.total, subproduto.contrint, subproduto.descricao from itprodord ');
           DMESTOQUE.Alx.SQL.Add(' Left join estoque on itprodord.cod_estoque = estoque.cod_estoque ');
           DMESTOQUE.Alx.SQL.Add(' Left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto ');
           DMESTOQUE.Alx.SQL.Add(' Where (itprodord.dtretirada=:Data) and (itprodord.qtdret=-1000) ');
           DMESTOQUE.Alx.ParamByName('Data').AsString:=XDtFiltro;
           DMESTOQUE.Alx.Open;
           If DMESTOQUE.Alx.IsEmpty Then
           	Result:=0
           Else
               Result:=1;
           //Verifica-se itens para retorno
           DMESTOQUE.Alx1.Close;
           DMESTOQUE.Alx1.SQL.Clear;
           DMESTOQUE.Alx1.SQL.Add(' Select itprodord.dtretirada, itprodord.dtretorno, itprodord.qtd, itprodord.qtdret, itprodord.vlrunit, itprodord.total, subproduto.contrint, subproduto.descricao from itprodord ');
           DMESTOQUE.Alx1.SQL.Add(' Left join estoque on itprodord.cod_estoque = estoque.cod_estoque ');
           DMESTOQUE.Alx1.SQL.Add(' Left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto ');
           DMESTOQUE.Alx1.SQL.Add(' Where (itprodord.dtretorno=:Data) and (itprodord.qtdret=-2000) ');
           DMESTOQUE.Alx1.ParamByName('Data').AsString:=XDtFiltro;
           DMESTOQUE.Alx1.Open;
           If not DMESTOQUE.Alx1.IsEmpty Then
               Result:=2;

           //Verifica-se existe item de retorno e de retirada
           If (not DMESTOQUE.Alx.IsEmpty) and (not DMESTOQUE.Alx1.IsEmpty) Then
               Result:=3;  
       Except
           Result:=0;
       End;
   Except

   End;
End;

procedure TFExpedicao.CalendarioDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
var
  DiaGrid : string;
  AlturaGrid, LarguraGrid, TopGrid, LeftGrid : Integer;
  Data : TDateTime;
  TipoRetorno: Smallint;
begin
	with Calendario do
   begin
   	//Limpando o Calendário Para Recria-lo
    	Canvas.Brush.Color := clWhite;
    	Canvas.Pen.Color   := clWhite;
    	Canvas.Font.Style  := [];
    	Canvas.Font.Color  := clBlack;
    	Canvas.FillRect(Rect);
    	DiaGrid := Cells[aCol, aRow];
    	//Senão for Cabeçalho dos Dias da Semana
    	if aRow > 0
    	Then begin
       	If DiaGrid<>''
           Then Begin
      			Data := StrToDate(DiaGrid);
      			DiaGrid := IntToStr(DayOf(Data));
      			//Checa se os Dias São do Mês Selecionado
      			if MonthOf(Data) = MonthOf(PrimeiroDiaMes)
               then begin
        			//Pintando a Data Atual
        			if Data = Date
                   then begin
          				Canvas.Brush.Color := $00FFC794;
                       Canvas.Font.Style  := [fsBold];
          				Canvas.Rectangle(Rect);
        			end;
        			//Pintando Data Selecionada
        			if gdSelected in State
                   then begin
          				Canvas.Brush.Color := $00FFC794;
          				Canvas.Font.Color  := clBlack;
          				Canvas.Font.Style  := [fsBold];
          				Canvas.Rectangle(Rect);
        			end;
					TipoRetorno := DesenhaGradeItensRetiradaRetorno(DiaGrid);//recebe o tipo dos itens encontrados para o dia
        			//para itens de retirada
        			if TipoRetorno = 1
                   then begin
         				Canvas.Brush.Color := $00A4FFA4;
          				Canvas.Font.Color  := clBlack;
          				Canvas.Font.Style  := [fsBold];
          				Canvas.Rectangle(Rect);
        			end;
        			//para itens de retornados
        			if TipoRetorno = 2
                   then begin
          				Canvas.Brush.Color := $0088C4FF;
          				Canvas.Font.Color  := clBlack;
          				Canvas.Font.Style  := [fsBold];
          				Canvas.Rectangle(Rect);
        			end;
        			//Pintando Data com itens a serem retornados
        			if (TipoRetorno = 3)
                   then begin
          				Canvas.Brush.Color := $007777FF;
          				Canvas.Font.Color  := clBlack;
          				Canvas.Font.Style  := [fsBold];
          				Canvas.Rectangle(Rect);
        			end; 
        {
        // se existir evento na data
        if Memo1.Lines.IndexOf(DateToStr(Data)) >= 0 then begin
          if gdSelected in State then begin
            Canvas.Brush.Color :=$000BAED7; //Cor de Fundo
            Canvas.Font.Color  :=clRed;     //Cor da Fonte
          end
          else begin
            Canvas.Brush.Color :=$006BDEFF; //Cor de Fundo
            Canvas.Font.Color  :=clRed;     //Cor da Fonte
          end;
          Canvas.Font.Style  :=[fsBold];  //Fonte em Negrito
          Canvas.Rectangle(Rect);         //Pintando em Forma de Retangulo
        end;}
      			end
      			else begin
        			//Deixando Cinza as Dia Que Não São do Mês Selecionado
        			Canvas.Brush.Color :=clWhite;
        			Canvas.Font.Color  :=clSilver;
      			end;
        	End;
       end
    	//Se for Cabeçalho dos Dias da Semana
    	else begin
      		Data := 0;
      		Canvas.Font.Color := clRed;
      		Canvas.Font.Style :=[fsBold];
    	end;
    	//Desenhando o Calendario e Colocando os Dias, Altura, Largura e Posição
    	AlturaGrid  := Canvas.TextHeight(DiaGrid);
    	LarguraGrid := Canvas.TextWidth(DiaGrid);
    	LeftGrid    := Rect.Left + (ColWidths[ACol]  - LarguraGrid) div 2;
    	TopGrid     := Rect.Top  + (RowHeights[ARow] - AlturaGrid) div 2;
    	Canvas.Rectangle(Classes.Rect(Rect.Left + 2, Rect.Top + 2, Rect.Right - 2, Rect.Bottom - 2));
    	Canvas.TextOut(LeftGrid, TopGrid, DiaGrid);
	end; 
end;

procedure TFExpedicao.Button1Click(Sender: TObject);
var
  i: Integer;
begin
  //Monstando o Cabeçalho da Semana ( Seg / Terc / Quart...)
  with Calendario do begin
    for i := 1 to 7 do begin
      Cells[i-1, 0] := ShortDayNames[i];
    end;
  end;
  //Pega o Primeiro dia do Mes do Date (Pega a Data se estiver 20/01/2009 ai Fica 01/01/2009) entao a variavel PrimeiroDiaMes :=1
  PrimeiroDiaMes := RecodeDay(Date, 1);
  DesenharCalendario;
end;
//Procedure Utilizada para desenhar o calendário
procedure TFExpedicao.DesenharCalendario;
var
  Linha, Coluna: Integer;
  DiaPrimeiroMes: TDateTime;
  i : Integer;
  RecCalendar: TGridRect;
begin
  LMesAtual.Caption := FormatDateTime('mmmm "de" yyyy', PrimeiroDiaMes);
  DiaPrimeiroMes := PrimeiroDiaMes - 1;
  while DayOfWeek(DiaPrimeiroMes) <> 1 do begin
    DiaPrimeiroMes := DiaPrimeiroMes - 1;
    i := 0;
    with Calendario do begin
      for Linha := 1 to Pred(RowCount) do begin
        for Coluna := 0 to Pred(ColCount) do begin
          Cells[Coluna, Linha]  := DateToStr(DiaPrimeiroMes + i);
          if DiaPrimeiroMes + i = Date then begin
            RecCalendar.Left    := Coluna;
            RecCalendar.Right   := Coluna;
            RecCalendar.Top     := Linha;
            RecCalendar.Bottom  := Linha;
            // Seleciona o dia corrente
            Selection := RecCalendar;
          end;
          Inc(i);
        end;
      end;
    end;
  end;
End;


procedure TFExpedicao.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  PrimeiroDiaMes := IncMonth(PrimeiroDiaMes, 1);
  DesenharCalendario;
end;

procedure TFExpedicao.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  PrimeiroDiaMes := IncMonth(PrimeiroDiaMes, -1);
  DesenharCalendario;
end;

procedure TFExpedicao.CalendarioDblClick(Sender: TObject);
var
diaSelecionado: string;
begin
  	inherited;
   with Calendario do
   begin
   	//Edmar - 02/01/2014 - Pega o dia escolhido
		diaSelecionado := Cells[Calendario.Col,Calendario.Row];

       //Edmar  - 02/01/2014 - Busca se há equipamentos para ser retirado no dia selecionado
       DMESTOQUE.Alx2.Close;
       DMESTOQUE.Alx2.sql.clear;
       DMESTOQUE.Alx2.SQL.Add('Select ordem.numero Ordem, pessoa.nome Cliente, subproduto.contrint NSerie, subproduto.descricao, itprodord.qtd, itprodord.vlrunit, itprodord.total ValorTotal from itprodord ');
       DMESTOQUE.Alx2.SQL.Add(' Left join estoque on itprodord.cod_estoque = estoque.cod_estoque ');
       DMESTOQUE.Alx2.SQL.Add(' Left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto ');
       DMESTOQUE.Alx2.SQL.Add(' left join ordem on itprodord.cod_ordem = ordem.cod_ordem ');
       DMESTOQUE.Alx2.SQL.Add(' left join cliente on ordem.cod_cliente = cliente.cod_cliente ');
       DMESTOQUE.Alx2.SQL.Add(' left join pessoa on cliente.cod_pessoa = pessoa.cod_pessoa ');
       DMESTOQUE.Alx2.SQL.Add(' Where (itprodord.dtretirada =:Data) and (itprodord.qtdret=-1000) ');

       DMESTOQUE.Alx2.ParamByName('data').AsString := diaSelecionado;
       DMESTOQUE.Alx2.Open;
       if not dmestoque.alx2.IsEmpty then
       	dbGridRetirada.DataSource := DMESTOQUE.DSAlx2;

       //Edmar  - 02/01/2014 - Busca se há equipamentos que irão retornar no dia selecionado
       DMESTOQUE.Alx3.Close;
       DMESTOQUE.Alx3.sql.clear;
       DMESTOQUE.Alx3.SQL.Add('Select ordem.numero Ordem, pessoa.nome Cliente, subproduto.contrint NSerie, subproduto.descricao, itprodord.qtd, itprodord.vlrunit, itprodord.total ValorTotal from itprodord ');
       DMESTOQUE.Alx3.SQL.Add(' Left join estoque on itprodord.cod_estoque = estoque.cod_estoque ');
       DMESTOQUE.Alx3.SQL.Add(' Left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto ');
       DMESTOQUE.Alx3.SQL.Add(' left join ordem on itprodord.cod_ordem = ordem.cod_ordem ');
       DMESTOQUE.Alx3.SQL.Add(' left join cliente on ordem.cod_cliente = cliente.cod_cliente ');
       DMESTOQUE.Alx3.SQL.Add(' left join pessoa on cliente.cod_pessoa = pessoa.cod_pessoa ');
       DMESTOQUE.Alx3.SQL.Add(' Where (itprodord.dtretorno=:Data) and (itprodord.qtdret=-2000) ');
       DMESTOQUE.Alx3.ParamByName('data').AsString := diaSelecionado;
       DMESTOQUE.Alx3.Open;
       if not dmestoque.Alx3.IsEmpty then
       	dbGridRetorno.DataSource := DMESTOQUE.DSAlx3;
           
       //Edmar - 02/01/2014 - Armazena o dia selecionado numa label(invisivel)
   	lbData.Caption := diaSelecionado;
       
       //Edmar - 06/01/2014 - Exibe o painel com os equipamentos
   	pequipamentos.BringToFront;
       pEquipamentos.Visible := true;
   end;
end;

procedure TFExpedicao.edClienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  	If key = vk_return Then
  	begin
  		if(rdBtnRetorno.Checked)then
  			PopulaGridEquipamentos('CLIENTE', edCliente.Text, 'RETORNO')
   	else
   	if(rdBtnRetirada.Checked) then
			PopulaGridEquipamentos('CLIENTE', edCliente.Text, 'RETIRADA')
   	else
			Mensagem('   A T E N Ç Ã O   ', 'Escolha entre retorno ou retirada', '', 1, 1, false, 'I');   
  	end;

  if key = vk_escape then
  begin
	edCliente.Text := '';
   CalendarioDblClick(sender);
  end;
end;

procedure TFExpedicao.edCodIntKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  	If key = vk_return Then
  	begin
  		if(rdBtnRetorno.Checked)then
  			PopulaGridEquipamentos('NUMSERIE', edCodInt.Text, 'RETORNO')
   	else
   	if(rdBtnRetirada.Checked) then
			PopulaGridEquipamentos('NUMSERIE', edCodInt.Text, 'RETIRADA')
   	else
			Mensagem('   A T E N Ç Ã O   ', 'Escolha entre retorno ou retirada', '', 1, 1, false, 'I');
  		end;

	if key = vk_escape then
	begin
		edCodInt.Text := '';
   	CalendarioDblClick(sender);
	end;
end;

procedure TFExpedicao.edDescricaoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;

  If key = vk_return Then
  begin
  	if(rdBtnRetorno.Checked)then
  		PopulaGridEquipamentos('DESCRICAO', edDescricao.Text, 'RETORNO')
   else
   if(rdBtnRetirada.Checked) then
		PopulaGridEquipamentos('DESCRICAO', edDescricao.Text, 'RETIRADA')
   else
		Mensagem('   A T E N Ç Ã O   ', 'Escolha entre retorno ou retirada', '', 1, 1, false, 'I');
  end;

  if key = vk_escape then
  begin
	edDescricao.Text := '';
   CalendarioDblClick(sender);
  end;
end;

procedure TFExpedicao.btnFechaPainelClick(Sender: TObject);
begin
  inherited;
  pEquipamentos.Visible := false;
  pEquipamentos.SendToBack;
end;

procedure TFExpedicao.edNumSerieBaixaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   inherited;
	If key = vk_return Then
   	PopulaGridBaixa('NUMSERIE', edNumSerieBaixa.Text);

   if key = vk_escape then
   begin
   	edNumSerieBaixa.Text := '';
   end;                                           
end;

procedure TFExpedicao.edDescBaixaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 inherited;
	If key = vk_return Then
   	PopulaGridBaixa('DESCRICAO', edDescBaixa.Text);

   if key = vk_escape then
   begin
   	edDescBaixa.Text := '';
   end;
end;

procedure TFExpedicao.edClienteBaixaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  	If key = vk_return Then
   	PopulaGridBaixa('CLIENTE', edClienteBaixa.Text);

   if key = vk_escape then
   begin
   	edClienteBaixa.Text := '';
   end;

end;

procedure TFExpedicao.btnRetiradoClick(Sender: TObject);
begin
  inherited;
  //Edmar - 06/01/2014 - Faz validação para saber se a operação é correta
  if DMESTOQUE.Alx4.FieldByName('qtdret').AsInteger <> -1000 then
  begin
		Mensagem('   A T E N Ç Ã O   ', 'Este produto já se encontra retirado.', '', 1, 1, false, 'I');
  		exit;
  end;
  
  try
       //Edmar - 03/01/2014 - Atualiza estoque dando baixa no estoque do produto
       MDO.Query.Close;
       MDO.Query.SQL.Clear;
		MDO.Query.SQL.Add('update estoque set estoque.estfisico = estoque.estfisico - :est where estoque.cod_subprod = :codsub');
		MDO.Query.ParamByName('est').AsInteger:=DMESTOQUE.Alx4.FieldByName('qtd').AsInteger;
		MDO.Query.ParamByName('codsub').AsInteger:=DMESTOQUE.Alx4.FieldByName('cod_subproduto').AsInteger;
		MDO.Query.ExecSQL;
		
       //Edmar - 03/01/2014 - Atualiza itprodord setando que o produto já foi retirado
		MDO.Query.Close;
		MDO.Query.SQL.Clear;
		MDO.Query.SQL.Add(' update itprodord set itprodord.qtdret=''-2000'' where itprodord.cod_itprodord=:codigo ');
		MDO.Query.ParamByName('codigo').AsInteger:=DMESTOQUE.Alx4.FieldByName('cod_itprodord').AsInteger;
		MDO.Query.ExecSQL;

       //Edmar - 03/01/2014 - Atualiza ordem setando que o produto já foi retirado
		MDO.Query.Close;
  		MDO.Query.SQL.Clear;
  		MDO.Query.SQL.Add(' update ordem Set ordem.status=''RETIRADO'' where ordem.cod_ordem=:Codigo ');
		MDO.Query.ParamByName('codigo').AsInteger:=DMESTOQUE.Alx4.FieldByName('ordem').AsInteger;
  		MDO.Query.ExecSQL;

  		MDO.Query.Transaction.CommitRetaining;

  		Mensagem('   A T E N Ç Ã O   ', 'Produto retirado com sucesso', '', 1, 1, false, 'I');
  except
      showMessage('Ocorreu um erro ao atualizar');
  end;
  AtualizaGridBaixa;  
end;

procedure TFExpedicao.btnRetornoClick(Sender: TObject);
begin
  inherited;
  //Edmar - 06/01/2014 - Faz validações para saber se o a operação é correta
  if DMESTOQUE.Alx4.FieldByName('qtdret').AsInteger = -5000 then
  begin
		Mensagem('   A T E N Ç Ã O   ', 'Este produto já se encontra no estoque. Ele já foi retornado.', '', 1, 1, false, 'I');
  		exit;
  end;

  if DMESTOQUE.Alx4.FieldByName('qtdret').AsInteger = -1000 then
  begin
		Mensagem('   A T E N Ç Ã O   ', 'Este produto ainda não foi retirado. Portanto não pode retornar.', '', 1, 1, false, 'I');
  		exit;
  end;
    
  try
      //Edmar - 03/01/2014 - Atualiza itprodord setando que o produto já foi retornado
      MDO.Query.Close;
      MDO.Query.sql.Clear;
      MDO.Query.SQL.Add(' update itprodord set itprodord.qtdret=''-5000'' where itprodord.cod_itprodord=:codigo ');
      MDO.Query.ParamByName('codigo').AsInteger:=DMESTOQUE.Alx4.FieldByName('cod_itprodord').AsInteger;
      MDO.Query.ExecSQL;

      //Edmar - 03/01/2014 - Atualiza ordem setando que o produto já foi retornado
      MDO.Query.Close;
      MDO.Query.sql.Clear;
      MDO.Query.SQL.Add(' update ordem Set ordem.status=''RETORNADO'' where ordem.cod_ordem=:Codigo ');
      MDO.Query.ParamByName('codigo').AsInteger:=DMESTOQUE.Alx4.FieldByName('ordem').AsInteger;
      MDO.Query.ExecSQL;

      //Edmar - 03/01/2014 - Atualiza estoque aumentando o estoque do produto
      MDO.Query.Close;
      MDO.Query.sql.Clear;
      MDO.Query.SQL.Add('update estoque set estoque.estfisico = estoque.estfisico + :est where estoque.cod_subprod = :codsub');
      MDO.Query.ParamByName('est').AsInteger:=DMESTOQUE.Alx4.FieldByName('qtd').AsInteger;
      MDO.Query.ParamByName('codsub').AsInteger:=DMESTOQUE.Alx4.FieldByName('cod_subproduto').AsInteger;
      MDO.Query.ExecSQL;

      MDO.Query.Transaction.CommitRetaining;
  EXCEPT
  		ShowMessage('Erro ao atualizar estoque');
  END;


  DMESTOQUE.Alx5.Close;
  DMESTOQUE.alx5.SQL.Clear;
  DMESTOQUE.Alx5.SQL.Add('select itprodord.cod_tabelafaixapreco, itprodord.dtretirada, itprodord.hrretirada, itprodord.dtretorno, itprodord.hrretorno, ');
  DMESTOQUE.Alx5.SQL.Add(' faixa_preco.qtddias, tabelafaixapreco.preco, itprodord.qtd from itprodord ');
  DMESTOQUE.Alx5.SQL.Add(' left join tabelafaixapreco  on tabelafaixapreco.cod_tabelafaixapreco = itprodord.cod_tabelafaixapreco ');
  DMESTOQUE.Alx5.SQL.Add(' left join faixa_preco on faixa_preco.cod_faixapreco = tabelafaixapreco.cod_faixapreco ');
  DMESTOQUE.Alx5.SQL.Add(' where (itprodord.cod_itprodord = :codit) and (tabelafaixapreco.cod_tabelafaixapreco = :codtabela)');
  DMESTOQUE.Alx5.ParamByName('codit').AsInteger := DMESTOQUE.Alx4.FieldByName('cod_itprodord').AsInteger;
  DMESTOQUE.Alx5.ParamByName('codtabela').AsInteger := DMESTOQUE.Alx4.FieldByName('faixa').AsInteger;
  DMESTOQUE.Alx5.Open;

  //Edmar - 06/01/2014 - Popula os edits do painel de retorno.
  edDtRetirada.Text := DMESTOQUE.Alx5.FieldByName('dtretirada').AsString;
  edHrRetirada.Text := DMESTOQUE.Alx5.FieldByName('hrretirada').AsString;
  edDtRetorno.Text := DMESTOQUE.Alx5.FieldByName('dtretorno').AsString;
  edHrRetorno.Text := DMESTOQUE.Alx5.FieldByName('hrretorno').AsString;

  if DMESTOQUE.Alx5.FieldByName('QTDDIAS').AsInteger > 0 then
  		xValorRetorno := DMESTOQUE.Alx5.FieldByName('PRECO').AsCurrency / DMESTOQUE.Alx5.FieldByName('QTDDIAS').AsInteger;
  
  xQtdProd := DMESTOQUE.Alx5.FieldByName('qtd').AsInteger;

  pHrRetorno.Visible := true;
  pHrRetorno.BringToFront;
  edDtRetirada.SetFocus;  
end;

procedure TFExpedicao.btnCancRetornoClick(Sender: TObject);
begin
  inherited;
  if DMESTOQUE.Alx4.FieldByName('qtdret').AsInteger <> -5000 then
  begin
	Mensagem('   A T E N Ç Ã O   ', 'Este produto ainda não foi retornado', '', 1, 1, false, 'I');
  	exit;
  end;


  If Mensagem('A T E N Ç Ã O', 'DESEJA EFETUAR O CANCELAMENTO DO RETORNO DO ITEM '#13+DMESTOQUE.Alx4.FieldByName('descricao').AsString+'?'  , '', 2, 3, False, 'c') = 2 then
  begin
      try
       MDO.Query.Close;
       MDO.Query.SQL.Clear;
       MDO.Query.SQL.Add('update estoque set estoque.estfisico = estoque.estfisico - :est where estoque.cod_subprod = :codsub');
       MDO.Query.ParamByName('est').AsInteger:=DMESTOQUE.Alx4.FieldByName('qtd').AsInteger;
       MDO.Query.ParamByName('codsub').AsInteger:=DMESTOQUE.Alx4.FieldByName('cod_subproduto').AsInteger;
       MDO.Query.ExecSQL;

       //Edmar - 03/01/2014 - Atualiza itprodord setando que o produto já foi retirado
       MDO.Query.Close;
       MDO.Query.SQL.Clear;
       MDO.Query.SQL.Add(' update itprodord set itprodord.qtdret=''-2000'' where itprodord.cod_itprodord=:codigo ');
       MDO.Query.ParamByName('codigo').AsInteger:=DMESTOQUE.Alx4.FieldByName('cod_itprodord').AsInteger;
       MDO.Query.ExecSQL;

       //Edmar - 03/01/2014 - Atualiza ordem setando que o produto já foi retirado
       MDO.Query.Close;
       MDO.Query.SQL.Clear;
       MDO.Query.SQL.Add(' update ordem Set ordem.status=''RETIRADO'' where ordem.cod_ordem=:Codigo ');
       MDO.Query.ParamByName('codigo').AsInteger:=DMESTOQUE.Alx4.FieldByName('ordem').AsInteger;
       MDO.Query.ExecSQL;

       MDO.Query.Transaction.CommitRetaining;

		Mensagem('   A T E N Ç Ã O   ', 'Retorno cancelado com sucesso.', '', 1, 1, false, 'I');       
      except
         showMessage('Ocorreu um erro ao cancelar fechamento');
      end;
	end;
   AtualizaGridBaixa;
end;

//Edmar - 03/01/2014 - Função usada para atualizar a grid de baixas depois de clicar nos botões
function TFExpedicao.AtualizaGridBaixa: boolean;
begin
result := true;
try
   DMESTOQUE.Alx4.Close;
   DMESTOQUE.Alx4.sql.clear;
  	DMESTOQUE.Alx4.SQL.Add('Select subproduto.contrint NumSerie, subproduto.descricao, ordem.numero Ordem, pessoa.nome Cliente, itprodord.qtd, itprodord.total ValorTotal, itprodord.cod_itprodord, ');
  	DMESTOQUE.Alx4.SQL.Add(' subproduto.cod_subproduto, itprodord.qtdret, itprodord.cod_tabelafaixapreco as Faixa from itprodord ');DMESTOQUE.Alx4.SQL.Add(' Left join estoque on itprodord.cod_estoque = estoque.cod_estoque ');
   DMESTOQUE.Alx4.SQL.Add(' Left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto ');
   DMESTOQUE.Alx4.SQL.Add(' left join ordem on itprodord.cod_ordem = ordem.cod_ordem ');
   DMESTOQUE.Alx4.SQL.Add(' left join cliente on ordem.cod_cliente = cliente.cod_cliente ');
	DMESTOQUE.Alx4.SQL.Add(' left join pessoa on cliente.cod_pessoa = pessoa.cod_pessoa ');

   //Edmar - 03/01/2014 - Controla o tipo da ultima consulta
   //(1 - controle interno; 2 - descricao; 3 - cliente)
   if xFlag = 1 then
      	DMESTOQUE.Alx4.SQL.Add(' Where (upper(subproduto.contrint) like upper(:tmp))');

   if xFlag = 2 then
		DMESTOQUE.Alx4.SQL.Add(' Where (upper(subproduto.descricao) like upper(:tmp))');

   if xFlag = 3 then
   	DMESTOQUE.Alx4.SQL.Add(' Where (upper(pessoa.nome) like upper(:tmp))');

   DMESTOQUE.Alx4.ParamByName('tmp').AsString := xUltimaPesquisa+'%';
	DMESTOQUE.Alx4.Open;

	if not dmestoque.Alx4.IsEmpty then
		dbGridBaixa.DataSource := DMESTOQUE.DSAlx4;

   result := true;
except
	result := false;
end;
end;

procedure TFExpedicao.edHrRetornoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	If key = vk_return Then
		btnConfirmaRetornoClick(sender);
end;

//Edmar - 06/01/2014 - Extratifica os horarios e calcula o valor de retorno.
function TFExpedicao.CalculaRetorno: boolean;
begin
	xNumeroDias := StrToInt(DifDias(StrToDate(edDtRetirada.Text), StrToDate(edDtRetorno.Text), 0));
   xHoraSaida := StrToInt(Copy(edHrRetirada.Text, 1, 2));
   xHoraRetorno := StrToInt(Copy(edHrRetorno.Text, 1, 2));

   if (xHoraSaida < xHoraRetorno) and (xHoraRetorno > 10) and (xHoraSaida < 10)
   	and (StrToDate(edDtRetorno.Text) > StrToDate(edDtRetirada.Text)) then
   begin
   	//Edmar - 06/01/2013 - Recalcular valor do produto caso ele tenha sido retirado de manhã e devolvido a tarde.
       xNumeroDias := xNumeroDias + 1;
       xNumeroDias := xNumeroDias - 0.5;
       xValorTotalRetorno := (xNumeroDias * xValorRetorno) * xQtdProd;
   end
   else
   	xValorTotalRetorno :=(xNumeroDias * xValorRetorno) * xQtdProd;
end;

procedure TFExpedicao.btnConfirmaRetornoClick(Sender: TObject);
var
	xSubTotal, xDesconto: double;
begin
	try
       CalculaRetorno;

       //Edmar - 06/01/2014 - Atualiza itprodord
     	DMESTOQUE.Alx5.Close;
     	DMESTOQUE.Alx5.SQL.Clear;
     	DMESTOQUE.Alx5.SQL.Add('update itprodord set itprodord.hrretorno = :hrRet, itprodord.dtretorno = :dtret , itprodord.total = :total where itprodord.cod_itprodord = :codit');
     	DMESTOQUE.Alx5.ParamByName('hrRet').AsString := edHrRetorno.Text;
     	DMESTOQUE.Alx5.ParamByName('dtret').AsString := edDtRetorno.Text;
     	DMESTOQUE.Alx5.ParamByName('total').AsCurrency := xValorTotalRetorno;
     	DMESTOQUE.Alx5.ParamByName('codit').AsInteger := DMESTOQUE.Alx4.fieldByName('cod_itprodord').AsInteger;       

     	DMESTOQUE.Alx5.ExecSQL;
     	DMESTOQUE.Alx5.Transaction.CommitRetaining;

       //Edmar - 06/01/2014 - Soma o total dos produtos e pega o desconto da ordem
     	DMESTOQUE.Alx5.Close;
     	DMESTOQUE.Alx5.SQL.Clear;
       DMESTOQUE.Alx5.SQL.Add('Select sum(itprodord.total), ordem.desconto ');
       DMESTOQUE.Alx5.SQL.Add(' From itprodord ');
       DMESTOQUE.Alx5.SQL.Add('left join ordem on ordem.cod_ordem = itprodord.cod_ordem ');
       DMESTOQUE.Alx5.SQL.Add('Where (itprodord.cod_ordem = :ordem) ');
       DMESTOQUE.Alx5.SQL.Add('group by (desconto) ');
       DMESTOQUE.Alx5.ParamByName('ordem').AsString := DMESTOQUE.Alx4.fieldByName('ordem').AsString;
		DMESTOQUE.Alx5.Open;

       xSubTotal := DMESTOQUE.Alx5.fieldByName('sum').AsCurrency;
       xDesconto := DMESTOQUE.Alx5.fieldByName('desconto').AsCurrency;

       //Edmar - 06/01/2014 - Atualiza Ordem com novo valor
       DMESTOQUE.Alx5.Close;
     	DMESTOQUE.Alx5.SQL.Clear;
     	DMESTOQUE.Alx5.SQL.Add('update ordem set ordem.totprod = :vlrNovo, ');
     	DMESTOQUE.Alx5.SQL.Add(' ordem.totord = :vlrNovo ');
     	DMESTOQUE.Alx5.SQL.Add(' where ordem.cod_ordem = :ord ');
     	DMESTOQUE.Alx5.ParamByName('vlrNovo').AsCurrency := xSubTotal-(xDesconto*xSubTotal)/100;
     	DMESTOQUE.Alx5.ParamByName('ord').AsInteger := DMESTOQUE.Alx4.fieldByName('ordem').AsInteger;

     	DMESTOQUE.Alx5.ExecSQL;
     	DMESTOQUE.Alx5.Transaction.CommitRetaining;

       pHrRetorno.Visible := false;
       pHrRetorno.SendToBack;

     	Mensagem('   I N F O R M A Ç Ã O   ', 'Produto retornado com sucesso', '', 1, 1, false, 'I');
       AtualizaGridBaixa;
   except
     	Mensagem('   A T E N Ç Ã O   ', 'Ocorreu um erro ao atualizar hora de retorno.', '', 1, 1, false, 'I');
   end;
end;

//Edmar - 06/01/2014 - Função usada para popular grid de equipamentos para baixa
function TFExpedicao.PopulaGridBaixa(xGerador, xValor: string): boolean;
begin
    xUltimaPesquisa := xValor;
    DMESTOQUE.Alx4.Close;
    DMESTOQUE.Alx4.sql.clear;
    DMESTOQUE.Alx4.SQL.Add('Select subproduto.contrint NumSerie, subproduto.descricao, ordem.numero Ordem, pessoa.nome Cliente, itprodord.qtd, itprodord.total ValorTotal, itprodord.cod_itprodord, ');
    DMESTOQUE.Alx4.SQL.Add(' subproduto.cod_subproduto, itprodord.qtdret, itprodord.cod_tabelafaixapreco as Faixa, ordem.totOrd ValorTotalOrdem from itprodord ');
    DMESTOQUE.Alx4.SQL.Add(' Left join estoque on itprodord.cod_estoque = estoque.cod_estoque ');
    DMESTOQUE.Alx4.SQL.Add(' Left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto ');
    DMESTOQUE.Alx4.SQL.Add(' left join ordem on itprodord.cod_ordem = ordem.cod_ordem ');
    DMESTOQUE.Alx4.SQL.Add(' left join cliente on ordem.cod_cliente = cliente.cod_cliente ');
    DMESTOQUE.Alx4.SQL.Add(' left join pessoa on cliente.cod_pessoa = pessoa.cod_pessoa ');

    if (xGerador = 'NUMSERIE') then
    begin
      	DMESTOQUE.Alx4.SQL.Add(' Where (upper(subproduto.contrint) like upper(:codint))');
     	DMESTOQUE.Alx4.ParamByName('codint').AsString := xValor+'%';
    	xFlag := 1;
    end;

    if (xGerador = 'DESCRICAO') then
    begin
      	DMESTOQUE.Alx4.SQL.Add(' Where (upper(subproduto.descricao) like upper(:desc))');    
    	DMESTOQUE.Alx4.ParamByName('desc').AsString := xValor+'%';
       xFlag := 2;
    end;

    if (xGerador = 'CLIENTE') then
    begin
       DMESTOQUE.Alx4.SQL.Add(' Where (upper(pessoa.nome) like upper(:clt))');    
    	DMESTOQUE.Alx4.ParamByName('clt').AsString := xValor+'%';
    	xFlag := 3;
    end;
    DMESTOQUE.Alx4.Open;

    if not dmestoque.Alx4.IsEmpty then
       dbGridBaixa.DataSource := DMESTOQUE.DSAlx4;
end;

//Edmar - 06/01/2014 - Função usada para popular grid de equipamentos
function TFExpedicao.PopulaGridEquipamentos(xGerador, xValor,
  xTipo: string): boolean;
begin
try
 	DMESTOQUE.Alx4.Close;
   DMESTOQUE.Alx4.sql.clear;
   DMESTOQUE.Alx4.SQL.Add('Select ordem.numero Ordem, pessoa.nome Cliente, subproduto.contrint NSerie, subproduto.descricao, itprodord.qtd, itprodord.vlrunit, itprodord.total ValorTotal from itprodord ');
   DMESTOQUE.Alx4.SQL.Add(' Left join estoque on itprodord.cod_estoque = estoque.cod_estoque ');
   DMESTOQUE.Alx4.SQL.Add(' Left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto ');
   DMESTOQUE.Alx4.SQL.Add(' left join ordem on itprodord.cod_ordem = ordem.cod_ordem ');
   DMESTOQUE.Alx4.SQL.Add(' left join cliente on ordem.cod_cliente = cliente.cod_cliente ');
   DMESTOQUE.Alx4.SQL.Add(' left join pessoa on cliente.cod_pessoa = pessoa.cod_pessoa ');
  	if(xTipo = 'RETIRADA')then
   	DMESTOQUE.Alx4.SQL.Add(' Where (itprodord.dtretirada =:Data) and (itprodord.qtdret=-1000)')
	else
   if(xTipo = 'RETORNO')then
		DMESTOQUE.Alx4.SQL.Add(' Where (itprodord.dtretorno =:Data) and (itprodord.qtdret=-2000) ');

	if xGerador = 'CLIENTE' then
	 	DMESTOQUE.Alx4.SQL.Add(' and (upper(pessoa.nome) like upper(:param))');

   if xGerador = 'NUMSERIE' then
    	DMESTOQUE.Alx4.SQL.Add(' and (upper(subproduto.contrint) like upper(:param))');
       
	if xGerador = 'DESCRICAO' then
 		DMESTOQUE.Alx4.SQL.Add(' and (upper(subproduto.descricao) like upper(:param))');
       
   DMESTOQUE.Alx4.ParamByName('data').AsString := lbData.Caption;
   DMESTOQUE.Alx4.ParamByName('param').AsString := xValor+'%';
   DMESTOQUE.Alx4.Open;
   
   if not dmestoque.Alx4.IsEmpty then
   begin
   	if(rdBtnRetirada.Checked)then
			dbGridRetirada.DataSource := DMESTOQUE.DSAlx4
       else
       	dbGridRetorno.DataSource := DMESTOQUE.DSAlx4;
   end;
except
	Mensagem('   A T E N Ç Ã O   ', 'Ocorreu um erro ao popular a grid de equipamentos.', '', 1, 1, false, 'I');
end;
end;

procedure TFExpedicao.btnLiberarClick(Sender: TObject);
begin
  inherited;
	Panel.Visible:=True;
   Panel.BringToFront;
   LTitulo.Caption:='Aguardando Liberação para Retirada';
   BtnRetirada.Enabled:=True;
   BtnRetornado.Enabled:=True;
   btnLiberar.Enabled:=False;
	FiltraGrid('ABERTO', '', '');
end;

procedure TFExpedicao.BtnRetiradaClick(Sender: TObject);
begin
  inherited;
	Panel.Visible:=True;
   Panel.BringToFront;
   LTitulo.Caption:='Aguardando Retirada e Despacho';
   BtnRetirada.Enabled:=False;
   BtnRetornado.Enabled:=True;
   btnLiberar.Enabled:=True;
	FiltraGrid('LIBERADO', '', '');
end;

procedure TFExpedicao.BtnRetornadoClick(Sender: TObject);
begin
  inherited;
	Panel.Visible:=True;
   Panel.BringToFront;
   LTitulo.Caption:='Aguardando conferência e Retorno';
   BtnRetirada.Enabled:=True;
   BtnRetornado.Enabled:=False;
   btnLiberar.Enabled:=True;
   FiltraGrid('RETIRADO', '', '');
end;

//Função para retornar dados de filtro Ordem de Serviços
Procedure TFExpedicao.FiltraOrdem(XSql: String);
Var
	XFiltro: String;
Begin
	Try
       If btnLiberar.Enabled=True
       Then Begin
       	XFiltro:=XFiltro+'  and (vwordem.status=''ABERTO'')';
       End;
       DMServ.WOrdemDesp.Close;
       DMServ.WOrdemDesp.SQL.Clear;
       DMServ.WOrdemDesp.SQL.Add('   select vwordem.cod_cliente, equipamento.descricao AS OBRA, vwordem.COD_VENDEDOR, formpag.descricao as FORMPAG, vwordem.status, vwordem.cod_ordem, ');
       DMServ.WOrdemDesp.SQL.Add('      vwordem.numero, vwordem.cliente, vwordem.dtabert, vwordem.dtfech, vwordem.total, ordem.localat ');
       DMServ.WOrdemDesp.SQL.Add('       from vwordem ');
       DMServ.WOrdemDesp.SQL.Add('       left join ordem on vwordem.cod_ordem = ordem.cod_ordem ');
       DMServ.WOrdemDesp.SQL.Add('       Left join vwcliente on vwordem.cod_cliente = vwcliente.cod_cliente ');
       DMServ.WOrdemDesp.SQL.Add('       left join cliente on vwordem.cod_vendedor = cliente.cod_cliente ');
       DMServ.WOrdemDesp.SQL.Add('       left join pessoa on cliente.cod_pessoa = pessoa.cod_pessoa ');
       DMServ.WOrdemDesp.SQL.Add('       left join formpag on ordem.cod_formpag = formpag.cod_formpag ');
       DMServ.WOrdemDesp.SQL.Add('       left join equipamento ON ordem.cod_equipamento = equipamento.cod_equipamento ');
       DMServ.WOrdemDesp.SQL.Add('       where (vwordem.cod_loja>-1) ');
       DMServ.WOrdemDesp.SQL.Add(XFiltro);
       DMServ.WOrdemDesp.SQL.text;
       DMServ.WOrdemDesp.Open; 
		DBGridPadrao.DataSource:=DMServ.DWOrdemDesp;
   Except
   End;
End;

//Alex - 13/01/2015 - Função para efetuar a liberação de retirada da OS selecionada
Function TFExpedicao.LiberaOS: Boolean;
Begin
	Try
   	Result := True;
       If DMServ.WOrdemDesp.FieldByName('STATUS').AsString='FECHADO'
       Then Begin
           MessageDlg('Esta Ordem já esta fechada!', mtInformation, [mbOK], 0);
           Exit;
       End;
       If DMServ.WOrdemDesp.FieldByName('STATUS').AsString<>'ABERTO'
       Then Begin
           if MessageDlg('Esta Ordem passou por um liberação de retirada. Deseja remarcar esta liberação?', mtConfirmation, [mbYes, MbNo], 0)=mrNo Then
               Exit;
       End;
       If MessageDlg('Deseja realmente marcar a OS como Retirada pelo Cliente?', mtWarning, [mbYes, mbNo], 0)=mryes
       Then Begin
           Try
           	//Alex - 13/01/2015 - O Código abaixo foi comentado pq estamos alterando a forma de marcar a OS e não iremos mais controlar por item e sim por OS
               {doQueryClear;
               MDO.Query.SQL.Add(' update itprodord set itprodord.qtdret=''-2000'' where itprodord.cod_ordem=:codigo ');
               MDO.Query.ParamByName('codigo').AsInteger:=DMServ.WOrdemDesp.FieldByName('cod_ordem').AsInteger;
               MDO.Query.ExecSQL;}
               mdo.Query.Close;
               Mdo.Query.sql.Clear;
               MDO.Query.SQL.Add(' update ordem Set ordem.status=''LIBERADO'' where ordem.cod_ordem=:Codigo ');
               MDO.Query.ParamByName('codigo').AsInteger:=DMServ.WOrdemDesp.FieldByName('cod_ordem').AsInteger;
               MDO.Query.ExecSQL;

               MDO.Query.Transaction.CommitRetaining;
               FiltraOrdem('');
           Except
           End;
       End;
   Except
   	Result := False;
   End;
End;

//Edmar - 14/01/2015 - Ao clicar na linha da grid, busca os itens
//aquela ordem de serviço para mostrar na grid ao lado
procedure TFExpedicao.DBGridPadraoCellClick(Column: TColumn);
begin
  inherited;
	DMESTOQUE.Alx.Close;
   DMESTOQUE.Alx.SQL.Clear;
	DMESTOQUE.Alx.SQL.Add(' SELECT VWSIMILAR.CONTRINT, VWSIMILAR.DESCRICAO, ITPRODORD.QTD, ITPRODORD.TOTAL FROM ITPRODORD ');
   DMESTOQUE.Alx.SQL.Add(' LEFT JOIN VWSIMILAR ON VWSIMILAR.COD_ESTOQUE = ITPRODORD.COD_ESTOQUE ');
   DMESTOQUE.Alx.SQL.Add(' WHERE ITPRODORD.COD_ORDEM = :ORDEM ');
   DMESTOQUE.Alx.ParamByName('ORDEM').AsInteger := DMServ.TAlx1.FieldByName('COD_ORDEM').AsInteger;
   DMESTOQUE.Alx.Open;
end;

//Edmar - 15/01/2015 - Procedimento auxiliar para buscar as ordem conforme o status passado como parametro
procedure TFExpedicao.FiltraGrid(xStatus, xTipoFiltro, xFiltro: String);
begin
	//Edmar - 14/01/2015 - Busca todas as ordens com o status correspondente e com base no filtro escolhido
   DMServ.TAlx1.Close;
   DMServ.TAlx1.SQL.Clear;
   DMServ.TAlx1.SQL.Add(' SELECT VWORDEM.COD_ORDEM, VWORDEM.STATUS, VWORDEM.NUMERO, VWORDEM.NUMERO, VWORDEM.DTABERT, VWORDEM.DTFECH, ');
   DMServ.TAlx1.SQL.Add(' VWORDEM.CLIENTE, VWORDEM.EQUIPAMENTO OBRA, ORDEM.LOCALAT FROM VWORDEM ');
   DMServ.TAlx1.SQL.Add(' LEFT JOIN ORDEM ON ORDEM.COD_ORDEM = VWORDEM.COD_ORDEM ');
   DMServ.TAlx1.SQL.Add(' WHERE (ORDEM.STATUS = :STATUS) ');
   DMServ.TAlx1.ParamByName('STATUS').AsString := xStatus;

   if xTipoFiltro = 'NUMERO' then
   begin
       DMServ.TAlx1.SQL.Add(' AND (ORDEM.NUMERO = :NUMERO) ');
       DMServ.TAlx1.ParamByName('NUMERO').AsString := xFiltro;
   end;

   if xTipoFiltro = 'CLIENTE' then
   begin
       DMServ.TAlx1.SQL.Add(' AND (UPPER(VWORDEM.CLIENTE) LIKE UPPER(:CLIENTE)) ');
       DMServ.TAlx1.ParamByName('CLIENTE').AsString := xFiltro+'%';
   end;

   DMServ.TAlx1.Open;

   DBGridPadrao.OnCellClick(nil);
end;
function TFExpedicao.AdicionaLogOperacao(xOperacao: String; XORDEM: String): Boolean;
begin
	Result := False;
	try
   	//Edmar - 15/01/2015 - Busca o ultimo código usado
       DMServ.TAlx2.Close;
       DMServ.TAlx2.SQL.Clear;
       DMServ.TAlx2.SQL.Add(' SELECT MAX(COD_CONTROLE) FROM CONTROLA_EXPEDICAO ');
       DMServ.TAlx2.Open;

       //Edmar - 15/01/2015 - Insere o registro com as informações da operação
       //para fins de auditoria
       MDO.QAlx1.Close;
       MDO.QAlx1.SQL.Clear;
       MDO.QAlx1.SQL.Add(' INSERT INTO CONTROLA_EXPEDICAO (COD_CONTROLE, COD_USUARIO, NUM_ORDEM, DATA_HORA, OPERACAO) VALUES (:PK, :USUARIO, :ORDEM, :DATAHORA, :OPERACAO) ');
       MDO.QAlx1.ParamByName('PK').AsInteger := DMServ.TAlx2.FieldByName('MAX').AsInteger + 1;
       MDO.QAlx1.ParamByName('USUARIO').AsString := FMenu.LCODUSUARIO.Caption;
       MDO.QAlx1.ParamByName('ORDEM').AsString := XORDEM;
       MDO.QAlx1.ParamByName('DATAHORA').AsDateTime := Now();
       MDO.QAlx1.ParamByName('OPERACAO').AsString := xOperacao;
       MDO.QAlx1.ExecSQL;

		Result := True;       
   except
   	Result := False;
   end;
end;

//Edmar - 15/01/2015 - função auxiliar para atualizar o status da ordem de serviço
function TFExpedicao.AtualizaOrdem(xCodOrdem: Integer; xStatus: String): Boolean;
begin
	Result := False;
	try
   	if xStatus = 'RETORNADO' then
       begin
       	MDO.QAlx2.Close;
           MDO.QAlx2.SQL.Clear;
           MDO.QAlx2.SQL.Add(' UPDATE ORDEM SET ORDEM.STATUS = :STATUS, ORDEM.DTFECH = :FECH WHERE ORDEM.COD_ORDEM = :COD_ORDEM ');
           MDO.QAlx2.ParamByName('STATUS').AsString := xStatus;
           MDO.QAlx2.ParamByName('FECH').AsDateTime := Date();
           MDO.QAlx2.ParamByName('COD_ORDEM').AsInteger := xCodOrdem;
           MDO.QAlx2.ExecSQL;
           
           //Quando a ordem for fechada, aumenta o estoque dando entrada para correção
           AtualizaEstoque(xCodOrdem, '+');
       end
       else begin
       	MDO.QAlx2.Close;
        	MDO.QAlx2.SQL.Clear;
        	MDO.QAlx2.SQL.Add(' UPDATE ORDEM SET ORDEM.STATUS = :STATUS WHERE ORDEM.COD_ORDEM = :COD_ORDEM ');
        	MDO.QAlx2.ParamByName('STATUS').AsString := xStatus;
        	MDO.QAlx2.ParamByName('COD_ORDEM').AsInteger := xCodOrdem;
        	MDO.QAlx2.ExecSQL;

     		//Quando a ordem for retirada, dá baixa no estoque sem dar saídas pra correção
       	if xStatus = 'RETIRADO' then
           	AtualizaEstoque(xCodOrdem, '-');
		end;
       
   	Result := True;
   except
   	Result := False;
   end;
end;

procedure TFExpedicao.LiberarOSparaRetirada1Click(Sender: TObject);
var
	xLibera: boolean;
begin
  	inherited;
   xLibera := False;
   //Edmar - 15/01/2015 - Se o status da ordem estiver liberado
   //lança a confirmação para o usuário informando do ocorrido
   //solicitando se ele deseja liberar a ordem de serviço novamente
   if DMServ.TAlx1.FieldByName('STATUS').AsString = 'LIBERADO' then
   begin
       if Mensagem(' I N F O R M A Ç Ã O ', 'A O.S selecionada já se encontra liberada. Deseja libera-la novamente?', '', 2, 3, False, 'I') <> 2 then
           Exit;
       xLibera := True;
   end;

   if (DMServ.TAlx1.FieldByName('STATUS').AsString <> 'RETIRADO') AND (DMServ.TAlx1.FieldByName('STATUS').AsString <> 'RETORNADO') then
   begin
   	AbrirForm(TFSENHA, FSENHA, 0);

       if XAlxResult then
       begin
           try
               if not AdicionaLogOperacao('LIBERADO', DMServ.TAlx1.FieldByName('NUMERO').AsString) then
               begin
                   Mensagem(' A T E N Ç Ã O ', 'Não foi possível inserir o log da expedição. Por favor, para fins de auditoria reinicie o sistema e tente novamente', '', 1, 1, False, 'A');
                   MDO.Transac.RollbackRetaining;
                   Exit;
               end;

               if not AtualizaOrdem(DMServ.TAlx1.FieldByName('COD_ORDEM').AsInteger, 'LIBERADO') then
               begin
                   Mensagem(' A T E N Ç Ã O ', 'Não foi possível atualizar o status da ordem de serviço. Por favor, reinicie o sistema e tente novamente', '', 1, 1, False, 'A');
                   MDO.Transac.RollbackRetaining;
                   Exit;
               end;

               MDO.Transac.CommitRetaining;

               //Edmar - 15/01/2015 - xLibera controla se a ordem foi liberada novamente
               //e filtra a grid de forma diferente conforme o caso
               if xLibera then
                   FiltraGrid('LIBERADO', '', '')
               else
                   FiltraGrid('ABERTO', '', '');
           except
               MDO.Transac.RollbackRetaining;
           end;
       end;
   end;
end;

procedure TFExpedicao.RetirarItens1Click(Sender: TObject);
begin
  inherited;
	if DMServ.TAlx1.FieldByName('STATUS').AsString = 'LIBERADO' then
   begin
   	try
       	xDespachandoOrdem := True;
			{AbrirForm(TFSENHA, FSENHA, 0);

			if XAlxResult then
           begin }
           	if not AdicionaLogOperacao('RETIRADO', DMServ.TAlx1.FieldByName('NUMERO').AsString) then
               begin
                   Mensagem(' A T E N Ç Ã O ', 'Não foi possível inserir o log da expedição. Por favor, para fins de auditoria reinicie o sistema e tente novamente', '', 1, 1, False, 'A');
                   MDO.Transac.RollbackRetaining;
                   Exit;
               end;

               if not AtualizaOrdem(DMServ.TAlx1.FieldByName('COD_ORDEM').AsInteger, 'RETIRADO') then
               begin
                   Mensagem(' A T E N Ç Ã O ', 'Não foi possível atualizar o status da ordem de serviço. Por favor, reinicie o sistema e tente novamente', '', 1, 1, False, 'A');
                   MDO.Transac.RollbackRetaining;
                   DMESTOQUE.TransacEstoque.RollbackRetaining;
                   Exit;
               end;

               MDO.Transac.CommitRetaining;
               DMESTOQUE.TransacEstoque.CommitRetaining;

               FiltraGrid('LIBERADO', '', '');
           //end;
			xDespachandoOrdem := False;           
       except
       	MDO.Transac.RollbackRetaining;
           DMESTOQUE.TransacEstoque.RollbackRetaining;
       end;
   end;
end;

procedure TFExpedicao.RetornarItens1Click(Sender: TObject);
begin
  inherited;
	if DMServ.TAlx1.FieldByName('STATUS').AsString = 'RETIRADO' then
   begin
   	try
			xDespachandoOrdem := True;       	
       	{AbrirForm(TFSENHA, FSENHA, 0);

           if XAlxResult then
       	begin}
           	if not AdicionaLogOperacao('RETORNADO', DMServ.TAlx1.FieldByName('NUMERO').AsString) then
               begin
                   Mensagem(' A T E N Ç Ã O ', 'Não foi possível inserir o log da expedição. Por favor, para fins de auditoria reinicie o sistema e tente novamente', '', 1, 1, False, 'A');
                   MDO.Transac.RollbackRetaining;

                  	Exit;
               end;

               if not AtualizaOrdem(DMServ.TAlx1.FieldByName('COD_ORDEM').AsInteger, 'RETORNADO') then
               begin
                   Mensagem(' A T E N Ç Ã O ', 'Não foi possível atualizar o status da ordem de serviço. Por favor, reinicie o sistema e tente novamente', '', 1, 1, False, 'A');
                   MDO.Transac.RollbackRetaining;
                   DMESTOQUE.TransacEstoque.RollbackRetaining;
					DMENTRADA.IBT.RollbackRetaining;

                   Exit;
               end;

               MDO.Transac.CommitRetaining;
               DMESTOQUE.TransacEstoque.CommitRetaining;
               DMENTRADA.IBT.CommitRetaining;

               FiltraGrid('RETIRADO', '', '');
           //end;
			xDespachandoOrdem := False;           
       except
           MDO.Transac.RollbackRetaining;
           DMESTOQUE.TransacEstoque.RollbackRetaining;
           DMENTRADA.IBT.RollbackRetaining;           
       end;
	end;
end;

//Edmar - 15/01/2015 - xTipo seria entrada ou saida
//Entrada = +
//Saída = -
function TFExpedicao.AtualizaEstoque(xCodOrdem: Integer; xTipo: String): Boolean;
begin
	//
   try
   	//Busca os itens da ordem de serviço
   	DMESTOQUE.Alx4.Close;
       DMESTOQUE.Alx4.SQL.Clear;
       DMESTOQUE.Alx4.SQL.Add(' SELECT ORDEM.NUMERO, ITPRODORD.COD_ESTOQUE, ITPRODORD.QTD FROM ITPRODORD ');
       DMESTOQUE.Alx4.SQL.Add(' LEFT JOIN ORDEM ON ORDEM.COD_ORDEM = ITPRODORD.COD_ORDEM ');
       DMESTOQUE.Alx4.SQL.Add(' WHERE ITPRODORD.COD_ORDEM = :ORDEM ');
       DMESTOQUE.Alx4.ParamByName('ORDEM').AsInteger := xCodOrdem;
       DMESTOQUE.Alx4.Open;
       DMESTOQUE.Alx4.First;

      	if xTipo = '-' then
       begin
       	//percorre os itens buscados atualizando seu estoque
           while not DMESTOQUE.Alx4.Eof do
           begin
               DMESTOQUE.Alx3.Close;
               DMESTOQUE.Alx3.SQL.Clear;
               DMESTOQUE.Alx3.SQL.Add(' UPDATE ESTOQUE SET ESTOQUE.ESTFISICO = ESTOQUE.ESTFISICO - :QUANTIDADE WHERE ESTOQUE.COD_ESTOQUE = :ESTOQUE ');
               DMESTOQUE.Alx3.ParamByName('QUANTIDADE').AsCurrency := DMESTOQUE.Alx4.FieldByName('QTD').AsCurrency;
               DMESTOQUE.Alx3.ParamByName('ESTOQUE').AsCurrency := DMESTOQUE.Alx4.FieldByName('COD_ESTOQUE').AsCurrency;
               DMESTOQUE.Alx3.ExecSQL;

               DMESTOQUE.Alx4.Next;
           end;
       end
       else begin
       	//percorre os itens buscados atualizando seu estoque
           while not DMESTOQUE.Alx4.Eof do
           begin
               DMESTOQUE.Alx3.Close;
               DMESTOQUE.Alx3.SQL.Clear;
               DMESTOQUE.Alx3.SQL.Add(' UPDATE ESTOQUE SET ESTOQUE.ESTFISICO = ESTOQUE.ESTFISICO + :QUANTIDADE WHERE ESTOQUE.COD_ESTOQUE = :ESTOQUE ');
               DMESTOQUE.Alx3.ParamByName('QUANTIDADE').AsCurrency := DMESTOQUE.Alx4.FieldByName('QTD').AsCurrency;
               DMESTOQUE.Alx3.ParamByName('ESTOQUE').AsCurrency := DMESTOQUE.Alx4.FieldByName('COD_ESTOQUE').AsCurrency;
               DMESTOQUE.Alx3.ExecSQL;

               //lança agora uma entrada de correção para cada item
               LancaEstoqueCorrecaoGeneric('E', DMESTOQUE.Alx4.FieldByName('QTD').AsCurrency,
               	DMESTOQUE.Alx4.FieldByName('COD_ESTOQUE').AsInteger, 'Retorno da Ordem de Serviço Número '+DMESTOQUE.Alx4.FieldByName('NUMERO').AsString);
               
               DMESTOQUE.Alx4.Next;
           end;
       end;
   except

   end;
end;

procedure TFExpedicao.edNumeroKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
	xOperacao: String;
begin
  inherited;
  	xOperacao := '';
   
  	if not btnLiberar.Enabled then
   	xOperacao := 'ABERTO';

  	if not BtnRetirada.Enabled then
   	xOperacao := 'LIBERADO';

  	if not BtnRetornado.Enabled then
   	xOperacao := 'RETIRADO';
              
	if Key = VK_RETURN then
   begin
       FiltraGrid(xOperacao, 'NUMERO', edNumero.Text);

       Exit;
   end;

	if Key = VK_ESCAPE then
   begin
       FiltraGrid(xOperacao, '', '');
       edNumero.Text := '';
       Exit;
   end;   
end;

procedure TFExpedicao.edNomeClienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
	xOperacao: String;
begin
  inherited;
  	xOperacao := '';
   
  	if not btnLiberar.Enabled then
   	xOperacao := 'ABERTO';

  	if not BtnRetirada.Enabled then
   	xOperacao := 'LIBERADO';

  	if not BtnRetornado.Enabled then
   	xOperacao := 'RETIRADO';
              
	if Key = VK_RETURN then
   begin
       FiltraGrid(xOperacao, 'CLIENTE', edNomeCliente.Text);

       Exit;
   end;

	if Key = VK_ESCAPE then
   begin
       FiltraGrid(xOperacao, '', '');
       edNomeCliente.Text := '';
       Exit;
   end; 
end;

procedure TFExpedicao.DBGridPadraoDblClick(Sender: TObject);
Var
	ContParc, Cod_Tmp, XCodOrdem: Integer;
   Xdesc1, Xdesc2, Xdesc3: String;
begin
  inherited;
  // FSDSRel.DataSet := DMESTOQUE.TSlave;
  // FSRel.Dataset := FSDSRel;

  //EFETUA CONTROLE DE ACESSO
   If ControlAccess('RELABERTORD', 'M')=False Then
  		Exit;

   //FILTRA EMPRESA PARA IMPRIMIR CABEÇALHO
   If FiltraTabela(DMMACS.TEmpresa, 'EMPRESA', 'COD_EMPRESA', FMenu.LCODEMPRESA.Caption, '')=False Then
   	Exit;

   //FILTRA DADOS PARA CABEÇALHO DA ORDEM
   DMServ.Alx.Close;
   DMServ.Alx.SQL.Clear;
   DMServ.Alx.SQL.Add(' Select ordem.cod_ordem, ordem.totajudante, pessoa.nome, pessoaj.razao_social, pessoa.cpfcnpj, vwcidade.nome as cidade, ordem.cod_formpag, ordem.cod_cliente, ');
   DMServ.Alx.SQL.Add(' ordem.cod_equipamento, vwcidade.uf AS UF_ESTADO, ordem.cod_vendedor, pessoa.CEP, pessoa.bairro, pessoa.telrel, pessoa.endereco, pessoa.endnumero ');
   DMServ.Alx.SQL.Add(' from ordem ');
   DMServ.Alx.SQL.Add(' Left Join cliente on ordem.cod_cliente = cliente.cod_cliente ');
   DMServ.Alx.SQL.Add(' left join pessoa on cliente.cod_pessoa = pessoa.cod_pessoa ');
   DMServ.Alx.SQL.Add(' left join pessoaj on pessoa.cod_pessoa = pessoaj.cod_pessoa ');
   DMServ.Alx.SQL.Add(' left join vwcidade on pessoa.cod_cidade = vwcidade.cod_cidade where ordem.cod_ordem=:codigo ');
   DMServ.Alx.ParamByName('codigo').AsInteger:=DMServ.TAlx1.FieldByName('COD_ORDEM').AsInteger;
   DMServ.Alx.Open;
   
   //FILTRA CLIENTE PARA ENCONTRAR PESSOA
   If FiltraTabela(DMPESSOA.TCliente, 'CLIENTE', 'COD_CLIENTE', DMSERV.Alx.FieldByNAme('COD_CLIENTE').AsString, '')=False
   Then Begin
   	MessageDlg('Verifique o cliente para a ordem', mtWarning, [mbOK], 0);
		Exit;
   End;

   //FILTRA PESSOA PARA IMPRESSÃO DE CLIENTE
   If FiltraTabela(DMPESSOA.TPessoa, 'PESSOA', 'COD_PESSOA', DMPESSOA.TCliente.FieldByNAme('COD_PESSOA').AsString, '')=False
   Then Begin
   	MessageDlg('Por favor, cadastre novamente o cliente', mtWarning, [mbOK], 0);
   	Exit;
   End;
   //FILTRA PESSOA JURIDICA CASO EXISTA UMA PARA IMPRESSÃO DE CLIENTE
   FiltraTabela(DMPESSOA.TPessoaj, 'PESSOAJ', 'COD_PESSOA', DMPESSOA.TPessoa.FieldByNAme('COD_PESSOA').AsString, '');


   //FILTRA CIDADE DA EMPRESA
   FiltraTabela(DMGEOGRAFIA.TCidade, 'CIDADE', 'COD_CIDADE', DMMACS.TEmpresa.FieldByNAme('COD_CIDADE').AsString, '');

   //FILTRA ESTADO DA EMPRESA
   FiltraTabela(DMGEOGRAFIA.TEstado, 'ESTADO', 'COD_ESTADO', DMGEOGRAFIA.TCidade.FieldByName('COD_ESTADO').AsString, '');

   //FILTRA TELEFONE PARA IMPRESSÃO DE CLIENTE
   FiltraTabela(DMPESSOA.TALX, 'TELEFONE', 'COD_PESSOA', DMPESSOA.TPessoa.FieldByNAme('COD_PESSOA').AsString, '');

   //FILTRA ORDEM PARA IMPRESSÃO
   If FiltraTabela(DMSERV.TOrd, 'ORDEM', 'COD_ORDEM', DMSERV.TAlx1.FieldByNAme('COD_ORDEM').AsString, '')=False Then
   	Exit;

   //FILTRA EQUIPAMENTO PARA IMPRESSÃO - obra
   If DMSERV.Alx.FieldByNAme('COD_EQUIPAMENTO').AsString<>'' Then
      FiltraTabela(DMPESSOA.TEquip, 'EQUIPAMENTO', 'COD_EQUIPAMENTO', DMSERV.Alx.FieldByNAme('COD_EQUIPAMENTO').AsString, '');


   //FILTRA FORMA DE PAGAMENTO
   FiltraTabela(DMFINANC.TFormPag , 'FORMPAG', 'COD_FORMPAG', DMSERV.Alx.FieldByNAme('COD_FORMPAG').AsString, '');

   //VENDEDOR
   FiltraTabela(DMPESSOA.VWFuncionario, 'VWFUNCIONARIO', 'COD_FUNC', IntToStr(DMServ.Alx.FieldByNAme('cod_vendedor').AsInteger) , '');

   XCodOrdem:=DMSERV.TAlx1.fieldbyname('COD_ORDEM').AsInteger;

   //FILTRA PRODUTOS, SERVIÇOS E DESPESAS
   //Paulo 24/01/2012: seleciona apenas os esquipamentos
   DMESTOQUE.TSlave.Close;
   DMESTOQUE.TSlave.SQL.Clear;
   DMESTOQUE.TSlave.SQL.Add('Select itprodord.cod_itprodord, itprodord.cod_ordem, itprodord.cod_estoque, itprodord.qtd, itprodord.total, ');
   DMESTOQUE.TSlave.SQL.Add('itprodord.vlrunit, subproduto.descricao, subproduto.marca, subproduto.contrint, subproduto.LOCALESTANTE, ');
   DMESTOQUE.TSlave.SQL.Add('itprodord.dtretirada, itprodord.hrretirada, itprodord.dtretorno, itprodord.hrretorno, itprodord.qtdret, itprodord.desgaste_saida, subproduto.ctrl_desgaste, ');
	DMESTOQUE.TSlave.SQL.Add('itprodord.ctrl_hora, itprodord.qtde_hora_saida ');
   DMESTOQUE.TSlave.SQL.Add('From itprodord left Join estoque on itprodord.cod_estoque = estoque.cod_estoque ');
   DMESTOQUE.TSlave.SQL.Add('Left Join subproduto on estoque.cod_subprod = subproduto.cod_subproduto ');
   DMESTOQUE.TSlave.SQL.Add(' Where (itprodord.cod_ordem = :CODORDEM) and (itprodord.operacao <> :OPERACAO) ');
   DMESTOQUE.TSlave.ParamByName('CODORDEM').AsInteger:=XCodOrdem;
   DMESTOQUE.TSlave.ParamByName('OPERACAO').AsString:='ACES';
   //DMESTOQUE.TSlave.SQL.Add('  order by itprodord.operacao  desc ');
   DMESTOQUE.TSlave.Open;
   If DMESTOQUE.TSlave.IsEmpty Then
   	MessageDlg('OS sem itens de locação', mtWarning, [mbOK], 0);

   //Paulo 24/01/2012: seleciona apenas os acessórios
   DMESTOQUE.TRel.Close;
   DMESTOQUE.TRel.SQL.Clear;
   DMESTOQUE.TRel.SQL.Add('Select itprodord.cod_itprodord, itprodord.cod_ordem, itprodord.cod_estoque, itprodord.qtd, itprodord.total, ');
   DMESTOQUE.TRel.SQL.Add('itprodord.vlrunit, subproduto.descricao,  itprodord.dtretirada,itprodord.hrretirada, itprodord.dtretorno, itprodord.hrretorno, itprodord.qtdret  ');
   DMESTOQUE.TRel.SQL.Add('From itprodord left Join estoque on itprodord.cod_estoque = estoque.cod_estoque ');
   DMESTOQUE.TRel.SQL.Add('Left Join subproduto on estoque.cod_subprod = subproduto.cod_subproduto ');
   DMESTOQUE.TRel.SQL.Add(' Where (itprodord.cod_ordem = :CODORDEM) and (itprodord.operacao = :OPERACAO)  ');
   DMESTOQUE.TRel.ParamByName('CODORDEM').AsInteger:=XCodOrdem;
   DMESTOQUE.TRel.ParamByName('OPERACAO').AsString:='ACES';
   //DMESTOQUE.TRel.SQL.Add('  order by itprodord.operacao  desc ');
   DMESTOQUE.TRel.Open;
   If DMESTOQUE.TRel.IsEmpty Then
   	MessageDlg('OS sem acessórios', mtWarning, [mbOK], 0);



   // se a atividade for EQUIPE, eh selecionado as despesas
   If (DMMACS.TLoja.FieldByName('ATIVIDADE').AsString = 'EQUIPE') and (DMMACS.TLoja.FieldByName('MODELOORDEM').AsString='6')
   Then Begin
       DMESTOQUE.Alx4.Close;
       DMESTOQUE.Alx4.SQL.Clear;
       DMESTOQUE.Alx4.SQL.Add('select despadic.cod_gerador, despadic.despesa, equipe.cod_equipe, equipe.descricao from despadic');
       DMESTOQUE.Alx4.SQL.Add('left join equipe on despadic.cod_equipe = equipe.cod_equipe');
       DMESTOQUE.Alx4.SQL.Add('where despadic.cod_gerador = :codigo');
       DMESTOQUE.Alx4.ParamByName('codigo').AsInteger := XCodOrdem;
       DMESTOQUE.Alx4.Open;
   End;


   //a situação financeira será gerado na tabela tmp para ser impressa
   DMMACS.TMP.Close;
   DMMACS.TMP.SQL.Clear;
   DMMACS.TMP.SQL.Add(' delete from tmp ');
   DMMACS.TMP.ExecSQL;
   DMMACS.Transaction.CommitRetaining;
   DMMACS.TMP.Close;
   DMMACS.TMP.SQL.Clear;
   DMMACS.TMP.SQL.Add(' SELECT * FROM TMP ');
   DMMACS.TMP.Open;

   Cod_Tmp:=1;
   If DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString='À VISTA'
   Then Begin
       DMMACS.TMP.Insert;
       DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=Cod_Tmp;
       DMMACS.TMP.FieldByName('DESC1').AsString:='À Vista';
       if DMMACS.TLoja.FieldByName('MODELOORDEM').AsInteger <> 10 then
       begin
           DMMACS.TMP.FieldByName('DESC2').AsString:=DMServ.TOrd.FieldByName('TIPOPAG').AsString;
           DMMACS.TMP.FieldByName('VLR1').AsCurrency:=DMServ.TOrd.FieldByName('totord').AsCurrency;
       end
       else begin
           DMMACS.TMP.FieldByName('OBS').AsString:=DMServ.TOrd.FieldByName('TIPOPAG').AsString;
           DMMACS.TMP.FieldByName('DESC3').AsString:=FormatFloat('#,###0.00', DMServ.TOrd.FieldByName('totord').AsCurrency);
       end;
       DMMACS.TMP.Post;
       Cod_Tmp:=Cod_Tmp+1;
	End
   Else Begin
       //insere sql necessária para filtrar parcelas da conta
       DMMacs.TALX.Close;
       DMMacs.TALX.sql.Clear;
       DMMacs.TALX.SQL.Add('SELECT parcelacr.dtvenc, parcelacr.cobranca, parcelacr.valor FROM parcelacr left join ctareceber on ctareceber.cod_ctareceber = parcelacr.cod_ctareceber ');
       DMMacs.TALX.SQL.Add(' Where (ctareceber.tipogerador='+#39+'ORD'+#39+') And (ctareceber.cod_gerador=:CODGERADOR) ');
       DMMacs.TALX.ParamByName('CODGERADOR').AsInteger:= XCodOrdem;
       DMMacs.TALX.Open;

       //Assume parcelas em campo blob de loja para após ser passado em relatóri
       Xdesc1:='';
       Xdesc2:='';
       Xdesc3:='';

       DMMACS.TALX.First;
       ContParc:=0;
       while not DMMACS.TALX.Eof do
       Begin
           //Paulo 28/06/2011: Para armazenar as parcelas somente p/ o modelo 10
           if DMMACS.TLoja.FieldByName('MODELOORDEM').AsInteger = 10 then
           begin
               Xdesc1:=Xdesc1+DMMacs.TALX.FieldByName('dtvenc').AsString+#13;
               Xdesc2:=Xdesc2+DMMacs.TALX.FieldByName('cobranca').AsString+#13;
               Xdesc3:=Xdesc3+FormatFloat('#,###0.00', DMMacs.TALX.FieldByName('valor').AsCurrency)+#13;
           end
           else begin
               DMMACS.TMP.Insert;
               DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=Cod_Tmp;
               DMMACS.TMP.FieldByName('DESC1').AsString:=DMMacs.TALX.FieldByName('dtvenc').AsString;
               DMMACS.TMP.FieldByName('DESC2').AsString:=DMMacs.TALX.FieldByName('cobranca').AsString;
               DMMACS.TMP.FieldByName('VLR1').AsCurrency:=DMMacs.TALX.FieldByName('valor').AsCurrency;
               DMMACS.TMP.Post;
               Cod_Tmp:=Cod_Tmp+1;
           end;
           DMMACS.TALX.Next;
           ContParc:=ContParc+1;
       End;
       //Paulo 28/06/2011: Para armazenar as parcelas somente p/ o modelo 10
       if DMMACS.TLoja.FieldByName('MODELOORDEM').AsInteger = 10 then
       begin
             DMMACS.TMP.Insert;
             DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=Cod_Tmp;
             DMMACS.TMP.FieldByName('DESC1').AsString:=Xdesc1;
             DMMACS.TMP.FieldByName('OBS').AsString:=Xdesc2;
             DMMACS.TMP.FieldByName('DESC3').AsString:=Xdesc3;
             DMMACS.TMP.Post;
       end;
   End;

   DMCONTA.TAlx.Close;
   DMCONTA.TAlx.SQL.Clear;
   DMCONTA.TAlx.SQL.Add('select parcelacr.dtvenc, parcelacr.valor, parcelacr.cobranca from ctareceber ');
   DMCONTA.TAlx.SQL.Add(' left join parcelacr on parcelacr.cod_ctareceber = ctareceber.cod_ctareceber ');
   DMCONTA.TAlx.SQL.Add(' where ctareceber.cod_gerador = :codigo ');
   DMCONTA.TAlx.ParamByName('CODIGO').AsInteger := XCodOrdem;
   DMCONTA.TAlx.Open;

   FSFORMPAG.DataSet := DMCONTA.TAlx;
   Fsrel.Dataset := FSFORMPAG;

   DMMACS.Transaction.CommitRetaining;
   DMMACS.TMP.Close;
   DMMACS.TMP.SQL.Clear;
   DMMACS.TMP.SQL.Add(' SELECT * FROM TMP ');
   DMMACS.TMP.Open;
   FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrFAbertLocacao.frf');
   FSRel.ShowReport; 
end;

procedure TFExpedicao.edIdPatrimonioKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  	//Edmar - 19/01/2015 - Limpa o campo e a grid com o metodo filtra itens
  	if Key = VK_ESCAPE then
   begin
   	edIdPatrimonio.Text := '';
		FiltraItens('', '');
   end;

   //Edmar - 19/01/2015 - Seleciona todo o texto do edit e busca pelo termo
   if Key = VK_RETURN then
   begin
		edIdPatrimonio.SelectAll;
   	FiltraItens(edIdPatrimonio.Text, 'ID');
   end;
end;

procedure TFExpedicao.edDescPatrimonioKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  	//Edmar - 19/01/2015 - Limpa o campo e a grid com o metodo filtra itens  
  	if Key = VK_ESCAPE then
   begin
   	edDescPatrimonio.Text := '';
		FiltraItens('', '');
   end;

   //Edmar - 19/01/2015 - Seleciona todo o texto do edit e busca pelo termo   
   if Key = VK_RETURN then
   begin
		edDescPatrimonio.SelectAll;
   	FiltraItens(edDescPatrimonio.Text+'%', 'DESCRICAO');
   end;
end;

procedure TFExpedicao.FiltraItens(XFiltro: String; xEntidade: String);
var
	xOperacao: String;
begin
  	if not btnLiberar.Enabled then
   	xOperacao := 'ABERTO';

  	if not BtnRetirada.Enabled then
   	xOperacao := 'LIBERADO';

  	if not BtnRetornado.Enabled then
   	xOperacao := 'RETIRADO';

   //Edmar - 20/01/2015 - Filtra a grid com base no que foi passado de parametro
	DMESTOQUE.Alx.Close;
   DMESTOQUE.Alx.SQL.Clear;
	DMESTOQUE.Alx.SQL.Add(' SELECT ITPRODORD.COD_ORDEM, VWSIMILAR.CONTRINT, VWSIMILAR.DESCRICAO, ITPRODORD.QTD, ITPRODORD.TOTAL FROM ITPRODORD ');
   DMESTOQUE.Alx.SQL.Add(' LEFT JOIN VWSIMILAR ON VWSIMILAR.COD_ESTOQUE = ITPRODORD.COD_ESTOQUE ');
   DMESTOQUE.Alx.SQL.Add(' LEFT JOIN ORDEM ON ORDEM.COD_ORDEM = ITPRODORD.COD_ORDEM ');

   //Edmar - 20/01/2015 - Buscar também as ordens que possuem os itens filtrados
   DMServ.TAlx1.Close;
   DMServ.TAlx1.SQL.Clear;
   DMServ.TAlx1.SQL.Add(' SELECT VWORDEM.COD_ORDEM, VWORDEM.STATUS, VWORDEM.NUMERO, VWORDEM.NUMERO, VWORDEM.DTABERT, VWORDEM.DTFECH, ');
   DMServ.TAlx1.SQL.Add(' VWORDEM.CLIENTE, VWORDEM.EQUIPAMENTO OBRA, ORDEM.LOCALAT FROM VWORDEM ');
   DMServ.TAlx1.SQL.Add(' LEFT JOIN ORDEM ON ORDEM.COD_ORDEM = VWORDEM.COD_ORDEM ');
   DMServ.TAlx1.SQL.Add(' LEFT JOIN ITPRODORD ON ITPRODORD.COD_ORDEM = ORDEM.COD_ORDEM ');
   DMServ.TAlx1.SQL.Add(' LEFT JOIN VWSIMILAR ON VWSIMILAR.COD_ESTOQUE = ITPRODORD.COD_ESTOQUE ');

	//Edmar - 19/01/2015 - Tratamento para buscar o item pelo seu Id (código do patrimonio/controle interno)
	if xEntidade = 'ID' then
   begin
   	DMESTOQUE.Alx.SQL.Add(' WHERE ( UPPER(CONTRINT) = UPPER(:FILTRO) ) ');//itens
   	DMServ.TAlx1.SQL.Add('  WHERE ( UPPER(CONTRINT) = UPPER(:FILTRO) ) ');//ordem
   end;

   //Edmar - 19/01/2015 - Tratamento para busca o item pela sua descrição
   if xEntidade = 'DESCRICAO' then
   begin
   	DMESTOQUE.Alx.SQL.Add(' WHERE (UPPER(DESCRICAO) LIKE UPPER(:FILTRO) ) ');//itens
   	DMServ.TAlx1.SQL.Add('  WHERE (UPPER(DESCRICAO) LIKE UPPER(:FILTRO) ) ');//ordem
   end;

   //Edmar - 19/01/2015 - Limpra a grid buscando pelo codigo de produto -1
   //Como não existe, vai deixar a grid limpa
   if xEntidade = '' then
   begin
       DMESTOQUE.Alx.SQL.Add(' WHERE (VWSIMILAR.COD_ESTOQUE = :FILTRO) ');//itens
       DMServ.TAlx1.SQL.Add('  WHERE (VWSIMILAR.COD_ESTOQUE = :FILTRO) ');//ordem
   end;

   DMESTOQUE.Alx.SQL.Add(' AND (ORDEM.STATUS = '+QuotedStr(xOperacao)+') ');//itens
   DMServ.TAlx1.SQL.Add('  AND (ORDEM.STATUS = '+QuotedStr(xOperacao)+') ');//ordem

   DMESTOQUE.Alx.ParamByName('FILTRO').AsString := XFiltro;//itens
   DMServ.TAlx1.ParamByName('FILTRO').AsString := XFiltro;//ordem
   
   DMESTOQUE.Alx.Open;//item
   DMServ.TAlx1.Open;//ordem
end;

procedure TFExpedicao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
	//Edmar - 16/02/2015 - Busca o usuario que está logado no sistema
   DMMACS.TALX.Close;
   DMMACS.TALX.SQL.Clear;
   DMMACS.TALX.SQL.Add(' SELECT EXIBE_EXPEDICAO FROM USUARIO WHERE USUARIO.CODUSUARIO = :USUARIO ');
   DMMACS.TALX.ParamByName('USUARIO').AsString := FMenu.LCODUSUARIO.Caption;
   DMMACS.TALX.Open;

   //se o usuario estiver marcado como exibe_expedicao, ao fechar a tela de expedição,
   //fechar também o sistema
   if DMMACS.TALX.FieldByName('EXIBE_EXPEDICAO').AsString = '1' then
   begin
   	try
           try
               DesconectBanco;
           except
           end;
           ExitProcess(0);//por último, pra finalizar.
           Close;
       except
       	Application.Terminate; 
       end;
   end;
end;

procedure TFExpedicao.btnAtualizaClick(Sender: TObject);
begin
  inherited;
	if not BtnRetirada.Enabled then
       FiltraGrid('LIBERADO', '', '')
   else
       if not BtnRetornado.Enabled then
           FiltraGrid('RETIRADO', '', '');
end;

end.
