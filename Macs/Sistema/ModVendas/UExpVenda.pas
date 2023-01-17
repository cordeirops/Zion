{
   ANGELO - 01/07/2015
   CONTROLE DE EXPEDIÇÃO DE PEDIDOS DE VENDA

   DATASETS
   Alx - Pedidos liberados para expedição
   Alx1 - Itens dos pedidos liberados
   Alx2 - Volumes do Pedido
   Alx3 - Itens do volume
}

unit UExpVenda;

interface

uses
  Windows, Messages, UPadrao, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TFlatButtonUnit, StdCtrls, Grids, DBGrids, ExtCtrls, Buttons,
  FashionPanel, Menus, frxClass, frxDBSet, Mask, DBCtrls, DBColorEdit;

type

  TCastedDBGrid = class(TDBGrid); //Type casting para acessar algumas propriedades privadas da classe
  TFExpVenda = class(TFPadrao)
    PNovo: TPanel;
    Panel: TPanel;
    LTitulo: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    DBGridPedLiberados: TDBGrid;
    dbGridItensPedido: TDBGrid;
    edNumPedido: TEdit;
    edNomeCliente: TEdit;
    edNumSerie: TEdit;
    edContrint: TEdit;
    PanelItensVolume: TPanel;
    DBGridItensVolume: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    FPRemoverItem: TFashionPanel;
    EdQtdItensRemov: TEdit;
    BtnRemoveItens: TBitBtn;
    BitBtn4: TBitBtn;
    BtnRemoverItem: TBitBtn;
    BtnCancelar: TBitBtn;
    BtnRetirar: TBitBtn;
    PanelPedidosLib: TPanel;
    LabelHelpAddItem: TLabel;
    PanelVolumes: TPanel;
    DBGridVolumes: TDBGrid;
    FPQuantItens: TFashionPanel;
    EdQuantItensInseridos: TEdit;
    BtnInsereItemVolume: TBitBtn;
    BtnFechaFPQuantItens: TBitBtn;
    FPNovoVolume: TFashionPanel;
    EdNomeNovoVol: TEdit;
    BtnGravaNovoVolume: TBitBtn;
    BitBtn2: TBitBtn;
    BtnNovoVolume: TBitBtn;
    BtnExcluirVolume: TBitBtn;
    BtnFecharVol: TBitBtn;
    BtnAbrirVol: TBitBtn;
    frxRelEtiquetas: TfrxReport;
    frxDbEtiquetasExp: TfrxDBDataset;
    btnImpEtiquetas: TBitBtn;
    EdCodBarra: TEdit;
    Shape1: TShape;
    LProdutoEncontrado: TLabel;
    LQuantEncontrado: TLabel;
    btnhelp: TBitBtn;
    CbImpetiquetas: TCheckBox;
    procedure FormActivate(Sender: TObject);
    procedure DBGridPedLiberadosCellClick(Column: TColumn);
    procedure dbGridItensPedidoMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure dbGridItensPedidoStartDrag(Sender: TObject;
      var DragObject: TDragObject);
    procedure dbGridItensPedidoDragOver(Sender, Source: TObject; X,
      Y: Integer; State: TDragState; var Accept: Boolean);
    procedure DBGridVolumesDragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure DBGridVolumesDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure BtnNovoVolumeClick(Sender: TObject);
    procedure BtnFechaFPQuantItensClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BtnRemoverItemClick(Sender: TObject);
    procedure BtnGravaNovoVolumeClick(Sender: TObject);
    procedure DBGridVolumesCellClick(Column: TColumn);
    procedure BtnInsereItemVolumeClick(Sender: TObject);
    procedure BtnExcluirVolumeClick(Sender: TObject);
    procedure BtnRemoveItensClick(Sender: TObject);
    procedure dbGridItensPedidoDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure BtnCancelarClick(Sender: TObject);
    procedure EdQuantItensInseridosKeyPress(Sender: TObject;
      var Key: Char);
    procedure edNumPedidoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edNomeClienteKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edContrintKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edNumSerieKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdQtdItensRemovKeyPress(Sender: TObject; var Key: Char);
    procedure BtnRetirarClick(Sender: TObject);
    procedure DBGridVolumesDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure EdNomeNovoVolKeyPress(Sender: TObject; var Key: Char);
    procedure BtnFecharVolClick(Sender: TObject);
    procedure BtnAbrirVolClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnImpEtiquetasClick(Sender: TObject);
    procedure EdCodBarraKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodBarraKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edContrintExit(Sender: TObject);
    procedure edNumSerieExit(Sender: TObject);
    procedure EdCodBarraExit(Sender: TObject);
    procedure edContrintEnter(Sender: TObject);
    procedure edNumSerieEnter(Sender: TObject);
    procedure EdCodBarraEnter(Sender: TObject);
    procedure btnhelpClick(Sender: TObject);
  private
    { Private declarations }
       //Função utilizada para inserir uma determinada quantidade de itens no volume correspondente
       Function InsereItemVolume(xCodItem: Integer; xQtdInserida: Real): Boolean;
       //Função para verificar se existem volumes abertos
       Function VerificaVolumesAbertos: Integer;
       //Função utilizada para escrever o produto e a quantidade inserida
       Function EscreveItem(xCodItem: Integer; xQtdInserida: Real): Boolean;
       //Função utilizada para limpar o que foi escrito no produto e a quantidade inserida
       Function ApagaEscrito: Boolean;
       //Função para efetuar a remoção de uma determinada quantidade de itens
       Function RemoveQuantItem( xItem: Integer; xQuant: Real): Boolean;

  public
    { Public declarations }
    Procedure AtualizaGridPedidosLiberados;
    Procedure AtualizaGridVolumes;
    Procedure AtualizaGridItensVolume;
    Function GeraCodigo(Gerador,Tabela,Campo:String):Integer;
    procedure AtualizaQtdDisponivel(xCodItem :Integer; xQtdInsVol, xQtdRemVol : Real);
    procedure AtualizaGridItensPedido;
    procedure ControlActionButtonsVolume();
    procedure ImprimeEtiquetaUnica(cod_volume : Integer);
    procedure RecalculaNumeroVolumes;
    Procedure DesbloqueiaVolume;
    Procedure ImprimirEtiquetas;

  end;

var
  FExpVenda: TFExpVenda;

   xBookMark : Pointer;      
  
implementation

uses UDMEstoque, Math, AlxMessage, UMDO, DB, Alxor32, UDmServ, USenha, UMenu, UDMEntrada,
  UDMMacs, UDMPessoa, UDMGEOGRAFIA, UDMFinanc, UDMConta, UDMFAST;
  
{$R *.dfm}


//ANGELO - 01/07/2015 - Seleciona todos os pedidos liberados e coloca os itens em expedição
//Alx - Pedidos de venda
//QConsulta - itens do pedido de venda
//QAlx2 - Itens em expedição (itensexp)
Procedure TFExpVenda.AtualizaGridPedidosLiberados;
Begin
  DMESTOQUE.Alx.Close;
  DMESTOQUE.Alx.SQL.Clear;
  DMESTOQUE.Alx.SQL.Add('SELECT * FROM PEDVENDA WHERE PEDVENDA.SITUACAO=:SIT');
  DMESTOQUE.Alx.ParamByName('SIT').AsString := 'EXPEDICAO';
  DMESTOQUE.Alx.Open;
  //Para cada um dos pedidos verifica se já está em expedição (se os itens constam na tabela itensexp)
  DMESTOQUE.Alx.first;
  While Not (DMESTOQUE.Alx.Eof) Do
  Begin
    //Para cada um dos itens do pedido de venda
    MDO.QConsulta.Close;
    MDO.QConsulta.SQL.Clear;
    MDO.QConsulta.SQL.Add('SELECT ITENSPEDVEN.COD_PEDVEN,ITENSPEDVEN.COD_ESTOQUE, ITENSPEDVEN.cod_itenspedven, ITENSPEDVEN.qtdentregue, subproduto.descricao, ');
    MDO.QConsulta.SQL.Add('subproduto.codbarra, subproduto.contrint FROM ITENSPEDVEN  ');
    MDO.QConsulta.SQL.Add('LEFT JOIN ESTOQUE ON ESTOQUE.COD_ESTOQUE=ITENSPEDVEN.COD_ESTOQUE ');
    MDO.QConsulta.SQL.Add('LEFT JOIN SUBPRODUTO ON ESTOQUE.COD_SUBPROD=SUBPRODUTO.COD_SUBPRODUTO ');
    MDO.QConsulta.SQL.Add('WHERE ITENSPEDVEN.COD_PEDVEN=:PEDIDO');
    MDO.QConsulta.ParamByName('PEDIDO').AsInteger := DMESTOQUE.Alx.FieldByName('COD_PEDVENDA').AsInteger;
    MDO.QConsulta.Open;
    MDO.QConsulta.First;
    While Not (MDO.QConsulta.Eof) Do
    Begin
      //Verifique se o item está em expedição
      MDO.QAlx2.Close;
      MDO.QAlx2.SQL.Clear;
      MDO.QAlx2.SQL.Add('SELECT * FROM ITENSEXP WHERE ITENSEXP.COD_ITENSPEDVEN = :ITEM');
      MDO.QAlx2.ParamByName('ITEM').AsInteger := MDO.QConsulta.FieldByName('COD_ITENSPEDVEN').AsInteger;
      MDO.QAlx2.Open;
      MDO.QAlx2.First;
      //Se não estiver em expedição então insere o item em ITENSEXP
      If (MDO.QAlx2.Eof) Then
      Begin
        Try
          MDO.Query.Close;
          MDO.Query.SQL.Clear;
          MDO.Query.SQL.Add('INSERT INTO ITENSEXP (COD_ITENSEXP,COD_ITENSPEDVEN,QTDENTREGUE,QTDDISPONIVEL,CONTRINT, DESCRICAO,CODBARRA, COD_PEDVEN, COD_ESTOQUE) ');
          MDO.Query.SQL.Add('VALUES (:COD_ITENSEXP,:COD_ITENSPEDVEN,:QTDENTREGUE,:QTDDISPONIVEL,:CONTRINT, :DESCRICAO,:CODBARRA, :COD_PEDVEN, :COD_ESTOQUE) ');
          MDO.Query.ParamByName('COD_ITENSEXP').AsInteger := GeraCodigo('GEN_ITENSEXP_ID','ITENSEXP','COD_ITENSEXP');
          MDO.Query.ParamByName('COD_ITENSPEDVEN').AsInteger := MDO.QConsulta.FieldByName('COD_ITENSPEDVEN').AsInteger;
          MDO.Query.ParamByName('QTDENTREGUE').AsFloat := MDO.QConsulta.FieldByName('QTDENTREGUE').AsFloat;
          //Quantidade não pertencente a nenhum volume inicia como quantidade total
          MDO.Query.ParamByName('QTDDISPONIVEL').AsFloat := MDO.QConsulta.FieldByName('QTDENTREGUE').AsFloat;
          MDO.Query.ParamByName('CONTRINT').AsString :=  MDO.QConsulta.FieldByName('CONTRINT').AsString;
          MDO.Query.ParamByName('DESCRICAO').AsString :=  MDO.QConsulta.FieldByName('DESCRICAO').AsString;
          MDO.Query.ParamByName('CODBARRA').AsString := MDO.QConsulta.FieldByName('CODBARRA').AsString;
          MDO.Query.ParamByName('COD_PEDVEN').AsInteger := MDO.QConsulta.FieldByName('COD_PEDVEN').AsInteger;
          MDO.Query.ParamByName('COD_ESTOQUE').AsInteger := MDO.QConsulta.FieldByName('COD_ESTOQUE').AsInteger;
          MDO.Query.ExecSQL;
          MDO.Transac.CommitRetaining;
        Except
          MDO.Transac.RollbackRetaining;
        End;
      End;
      MDO.QConsulta.Next;
    End;
    //Próximo pedido liberado
    DMESTOQUE.Alx.Next;
  End;
  //Insere os pedidos liberados no grid
  DMESTOQUE.Alx.first;
  DBGridPedLiberados.DataSource := DMESTOQUE.DSAlx;
End;

//ANGELO - 01/07/2015 - Refresh no grid de volumes
Procedure TFExpVenda.AtualizaGridVolumes;
Begin
  DMESTOQUE.Alx2.Close;
  DMESTOQUE.Alx2.SQL.Clear;
  DMESTOQUE.Alx2.SQL.Add('SELECT * FROM VOLUMES WHERE VOLUMES.COD_PEDIDO=:PEDIDO order by volumes.status ');
  DMESTOQUE.Alx2.ParamByName('PEDIDO').AsInteger := DMESTOQUE.Alx.FieldByName('COD_PEDVENDA').AsInteger;
  DMESTOQUE.Alx2.Open;
  DBGridVolumes.DataSource := DMESTOQUE.DSAlx2;
End;

//ANGELO - 01/07/2015 - Refresh no grid de itens do volume de acordo com o volume selecionado
Procedure TFExpVenda.AtualizaGridItensVolume;
Begin
  DMESTOQUE.Alx3.Close;
  DMESTOQUE.Alx3.SQL.Clear;
  DMESTOQUE.Alx3.SQL.Add('SELECT ITENSVOLUME.COD_ITENSVOLUME, ITENSVOLUME.COD_ITEM, ITENSVOLUME.QUANTIDADE,ITENSVOLUME.COD_VOL, ');
  DMESTOQUE.Alx3.SQL.Add('ITENSPEDVEN.COD_PEDVEN, ITENSPEDVEN.COD_ITENSPEDVEN,ITENSPEDVEN.QTDENTREGUE, SUBPRODUTO.DESCRICAO, ');
  DMESTOQUE.Alx3.SQL.Add('SUBPRODUTO.CODBARRA, SUBPRODUTO.CONTRINT FROM itensvolume ');
  DMESTOQUE.Alx3.SQL.Add('LEFT JOIN ITENSPEDVEN ON (ITENSPEDVEN.COD_ITENSPEDVEN = ITENSVOLUME.COD_ITEM) ');
  DMESTOQUE.Alx3.SQL.Add('LEFT JOIN ESTOQUE on ITENSPEDVEN.COD_ESTOQUE=ESTOQUE.COD_ESTOQUE ');
  DMESTOQUE.Alx3.SQL.Add('LEFT JOIN SUBPRODUTO on ESTOQUE.COD_SUBPROD = SUBPRODUTO.COD_SUBPRODUTO ');
  DMESTOQUE.Alx3.SQL.Add('WHERE ITENSVOLUME.COD_VOL=:VOLUME ');
  DMESTOQUE.Alx3.ParamByName('VOLUME').AsInteger := DMESTOQUE.Alx2.FieldByName('COD_VOLUME').AsInteger;
  DMESTOQUE.Alx3.Open;
  DBGridItensVolume.DataSource := DMESTOQUE.DSAlx3;
  DBGridItensVolume.Refresh;
End;

procedure TFExpVenda.FormActivate(Sender: TObject);
begin
  inherited;
  CbImpetiquetas.Checked:=False;
  FPQuantItens.Visible := False;
  FPNovoVolume.Visible := False;
  FPRemoverItem.Visible := False;
  AtualizaGridPedidosLiberados;
  DMESTOQUE.Alx.First;
  AtualizaGridItensPedido;
  AtualizaGridVolumes;
  ApagaEscrito;
  ControlActionButtonsVolume;
//  FExpVenda.KeyPreview := True;

end;

//ANGELO - 30/06/2015 - Atualiza a lista de itens
procedure TFExpVenda.AtualizaGridItensPedido;
Begin
  Try
    //Selecione todos os itens do pedido
    DMESTOQUE.Alx1.Close;
    DMESTOQUE.Alx1.SQL.Clear;
    DMESTOQUE.Alx1.SQL.Add('SELECT ITENSEXP.cod_itensexp,ITENSEXP.COD_ITENSPEDVEN, ITENSEXP.qtdentregue,ITENSEXP.QTDDISPONIVEL, SUBPRODUTO.descricao, ');
    DMESTOQUE.Alx1.SQL.Add('SUBPRODUTO.codbarra, SUBPRODUTO.contrint FROM ITENSEXP  ');
    DMESTOQUE.Alx1.SQL.Add('LEFT JOIN ESTOQUE ON ESTOQUE.COD_ESTOQUE=ITENSEXP.COD_ESTOQUE ');
    DMESTOQUE.Alx1.SQL.Add('LEFT JOIN SUBPRODUTO ON ESTOQUE.COD_SUBPROD=SUBPRODUTO.COD_SUBPRODUTO ');
    DMESTOQUE.Alx1.SQL.Add('WHERE ITENSEXP.COD_PEDVEN=:PEDIDO Order By ITENSEXP.QTDDISPONIVEL desc ');
    DMESTOQUE.Alx1.ParamByName('PEDIDO').AsInteger :=  DMESTOQUE.Alx.FieldByName('COD_PEDVENDA').AsInteger;
    DMESTOQUE.Alx1.Open;
    DMESTOQUE.Alx1.First;
    DBGridItensPedido.DataSource := DMESTOQUE.DSAlx1;
    
    AtualizaGridVolumes;
    AtualizaGridItensVolume;
    //Habilita todas as ações
    BtnNovoVolume.Enabled := False;
    BtnAbrirVol.Enabled := False;
    BtnFecharVol.Enabled := False;
    BtnExcluirVolume.Enabled := False;
  Except
    
  End;
End;



//ANGELO - 30/06/2015 - Atualiza a lista de itens ao clicar sobre um pedido
procedure TFExpVenda.DBGridPedLiberadosCellClick(Column: TColumn);
begin
  inherited;
  AtualizaGridItensPedido;
  ControlActionButtonsVolume;
end;

procedure TFExpVenda.dbGridItensPedidoMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Try
    inherited;
	   dbGridItensPedido.BeginDrag(True);
  Except
  End;
end;


//ANGELO - 30/06/2015 - Posiciona o cursor no registro selecionado durante arrastar
procedure TFExpVenda.dbGridItensPedidoStartDrag(Sender: TObject;
  var DragObject: TDragObject);
var P  : TPoint;
    R  : integer;
    GC : TGridCoord;
begin
  inherited;

	 P := TDBGrid( Sender ).ScreenToClient( Mouse.CursorPos );
  GC:= TDBGrid( Sender ).MouseCoord( P.X, P.Y );
	 if (GC.X > 0) and (GC.Y > 0) then
  begin
    R:= TStringGrid( Sender ).Row;
    TDBGrid( Sender ).DataSource.DataSet.MoveBy( GC.Y-R );
  end;
end;



//ANGELO - 30/06/2015 - Ao soltar um item sobre o grid
procedure TFExpVenda.DBGridVolumesDragDrop(Sender, Source: TObject; X,
  Y: Integer);
 Var
  gc : TGridCoord;
begin
  inherited;
	 If (DMESTOQUE.Alx1.FieldByName('QTDDISPONIVEL').AsFloat=0) Then
    Exit;
  Try
    MDO.QConsulta.Close;
    MDO.QConsulta.SQL.Clear;
    MDO.QConsulta.SQL.Add('SELECT * FROM VOLUMES WHERE VOLUMES.COD_PEDIDO=:PED');
    MDO.QConsulta.ParamByName('PED').AsInteger := DMESTOQUE.Alx.FieldByName('COD_PEDVENDA').AsInteger;
    MDO.QConsulta.Open;
    MDO.QConsulta.First;
    if (MDO.QConsulta.Eof) Then
    Begin
      Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'Não existem volumes cadastrados!', '', 1, 1, False, 'a');
      Exit;
    End;
    //Calculando as coordenadas onde o item foi solto na grid e deslocando o dataset
    gc := TCastedDBGrid(DBGridVolumes).MouseCoord(X,Y);
    DMESTOQUE.Alx2.MoveBy (gc.Y - TCastedDBGrid(DBGridVolumes).Row);
    //O volume encontra-se aberto?
    if (DMESTOQUE.Alx2.FieldByName('STATUS').AsString='FECHADO') Then
    Begin
      Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'Não é possível adicionar itens em um volume fechado!', '', 1, 1, False, 'a');
      Exit;
    End Else if (DMESTOQUE.Alx2.FieldByName('STATUS').AsString='BLOQUEADO') Then
    Begin
      Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'Não é possível adicionar itens em um volume bloqueado!', '', 1, 1, False, 'a');
      Exit;
    End;
    FPQuantItens.Visible := True;
    EdQuantItensInseridos.SetFocus;
  Except

  End;
end;



//ANGELO - 30/06/2015 - Não permite que um item seja arrastado sobre si mesmo
procedure TFExpVenda.dbGridItensPedidoDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  inherited;
   Accept := False;
end;



//ANGELO - 30/06/2015 - Aceita que itens sejam arrastados sobre si
procedure TFExpVenda.DBGridVolumesDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  inherited;
	Accept := Source is TDBGrid;
end;



//ANGELO - 30/06/2015 - Gera uma sugestão de nome de novo volume
procedure TFExpVenda.BtnNovoVolumeClick(Sender: TObject);
begin
  inherited;
  if Not (DMESTOQUE.Alx.FieldByName('COD_PEDVENDA').AsInteger > 0) Then
    Exit;
	 //Permite no máximo um pedido aberto e um bloqueado ao mesmo tempo 
    MDO.QConsulta.Close;
    MDO.QConsulta.SQL.Clear;
    MDO.QConsulta.SQL.Add('SELECT VOLUMES.COD_VOLUME, count(VOLUMES.COD_VOLUME) AS TOTAL FROM VOLUMES WHERE VOLUMES.STATUS=:STATUS AND VOLUMES.COD_PEDIDO=:PEDIDO GROUP BY COD_VOLUME');
    MDO.QConsulta.ParamByName('STATUS').ASstring := 'BLOQUEADO';
    MDO.QConsulta.ParamByName('PEDIDO').AsInteger := DMESTOQUE.Alx.FieldByName('COD_PEDVENDA').AsInteger;
    MDO.QConsulta.Open;
    MDO.QConsulta.First;

    if Not(MDO.QConsulta.Eof) Then
    Begin
      if (MDO.QConsulta.FieldByName('TOTAL').AsInteger > 0) Then
      Begin
        if (MDO.QConsulta.FieldByName('COD_VOLUME').AsInteger<>DMESTOQUE.Alx2.FieldByName('COD_VOLUME').asInteger) Then
        Begin
          Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'Antes de abrir um novo volume verifique os volumes bloqueados pelo sistema.', '', 1, 1, False, 'a');
          Exit;
        End;
      End;
    End;
        
  //Permite apenas um único volume aberto ao mesmo tempo
  MDO.QConsulta.Close;
  MDO.QConsulta.SQL.Clear;
  MDO.QConsulta.SQL.Add('SELECT COD_VOLUME FROM VOLUMES WHERE VOLUMES.COD_PEDIDO=:PEDIDO AND VOLUMES.STATUS=:STATUS');
  MDO.QConsulta.ParamByName('PEDIDO').AsInteger := DMESTOQUE.Alx.FieldByName('COD_PEDVENDA').AsInteger;
  MDO.QConsulta.ParamByName('STATUS').AsString := 'ABERTO';
  MDO.QConsulta.Open;
  MDO.QConsulta.First;
  if Not(MDO.QConsulta.Eof) Then
  Begin
    Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'É necessário fechar o volume antes de abrir um novo!', '', 1, 1, False, 'a');
    Exit;
  End;

  FPNovoVolume.Visible := True;
  MDO.QConsulta.Close;
  MDO.QConsulta.SQL.Clear;
  MDO.QConsulta.SQL.Add('SELECT COUNT(COD_VOLUME)+1 AS CODIGO FROM VOLUMES WHERE VOLUMES.COD_PEDIDO=:PEDIDO');
  MDO.QConsulta.ParamByName('PEDIDO').AsInteger := DMESTOQUE.Alx.FieldByName('COD_PEDVENDA').AsInteger;
  MDO.QConsulta.Open;
  EdNomeNovoVol.Text := 'VOL. '+MDO.QConsulta.FieldByName('CODIGO').AsString;
  EdNomeNovoVol.SetFocus;
end;

procedure TFExpVenda.BtnFechaFPQuantItensClick(Sender: TObject);
begin
  inherited;
  FPQuantItens.Visible := False;
end;

procedure TFExpVenda.BitBtn2Click(Sender: TObject);
begin
  inherited;
  FPNovoVolume.Visible := False;
end;

procedure TFExpVenda.BitBtn4Click(Sender: TObject);
begin
  inherited;
  FPRemoverItem.Visible := False;
end;

procedure TFExpVenda.BtnRemoverItemClick(Sender: TObject);
begin
  inherited;
  if Not(DMESTOQUE.Alx3.FieldByName('COD_ITENSVOLUME').AsInteger > 0) Then
    Exit;
  if (DMESTOQUE.Alx2.FieldByName('STATUS').AsString='BLOQUEADO') Then
  Begin
    Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'Não é possível remover um item de um volume bloqueado!', '', 1, 1, False, 'a');
    Exit;
  End Else if (DMESTOQUE.Alx2.FieldByName('STATUS').AsString='FECHADO') Then
  Begin
    Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'Não é possível remover um item de um volume fechado!', '', 1, 1, False, 'a');
    Exit;
  End;
  FPRemoverItem.Visible := True;
  EdQtdItensRemov.SetFocus;
end;


//ANGELO - 01/06/2015 - Gera nova chave primária para a tabela e atualiza o gerador
Function TFExpVenda.GeraCodigo(Gerador,Tabela,Campo:String):Integer;
var xCodGerado, xCodUltInserido : Integer;

Begin
  MDO.QAlx1.Close;
  MDO.QAlx1.SQL.Clear;
  MDO.QAlx1.SQL.Add(' SELECT GEN_ID('+Gerador+', 0) AS CODIGO FROM RDB$DATABASE ');
  MDO.QAlx1.Open;
  xCodGerado := MDO.QAlx1.FieldByName('CODIGO').AsInteger;
  MDO.Transac.CommitRetaining;
  //SE JÁ EXISTIR ALGUM REGISTRO COM O CÓDIGO GERADO, ATUALIZAMOS O GERADOR
  MDO.QAlx1.Close;
  MDO.QAlx1.SQL.Clear;
  MDO.QAlx1.SQL.Add(' SELECT '+Tabela+'.'+Campo+' FROM '+Tabela+' WHERE '+Tabela+'.'+Campo+' = :CODIGO ');
  MDO.QAlx1.ParamByName('CODIGO').AsInteger := xCodGerado;
  MDO.QAlx1.Open;
  if not MDO.QAlx1.IsEmpty then
  begin
    MDO.QAlx1.Close;
    MDO.QAlx1.SQL.Clear;
    MDO.QAlx1.SQL.Add(' SELECT MAX('+Tabela+'.'+Campo+') AS CODIGO FROM '+Tabela);
    MDO.QAlx1.Open;
    xCodUltInserido := MDO.QAlx1.FieldByName('CODIGO').AsInteger;
    MDO.QAlx1.Close;
    MDO.QAlx1.SQL.Clear;
    MDO.QAlx1.SQL.Add(' SET GENERATOR '+Gerador+'  TO ' + IntToStr(xCodUltInserido+1));
    MDO.QAlx1.ExecSQL;
    MDO.Transac.CommitRetaining;
    GeraCodigo := GeraCodigo(Gerador,Tabela,Campo);
  End Else
  Begin
    GeraCodigo := xCodGerado;
  End;
End;


//ANGELO - 01/07/2015 - Permite a criação de um novo volume
procedure TFExpVenda.BtnGravaNovoVolumeClick(Sender: TObject);
begin
  inherited;
  Try
    MDO.Query.Close;
    MDO.Query.SQL.Clear;
    MDO.Query.SQL.Add('INSERT INTO VOLUMES (COD_VOLUME,COD_PEDIDO,DESCRICAO,STATUS) VALUES(:COD_VOLUME,:COD_PEDIDO, :DESCRICAO,:STATUS)');
    MDO.Query.ParamByName('COD_VOLUME').AsInteger := GeraCodigo('GEN_VOLUMES_ID','VOLUMES','COD_VOLUME');
    MDO.Query.ParamByName('COD_PEDIDO').AsInteger := DMESTOQUE.Alx.FieldByName('COD_PEDVENDA').AsInteger;
    MDO.Query.ParamByName('DESCRICAO').ASstring := EdNomeNovoVol.Text;
    MDO.Query.ParamByName('STATUS').ASstring := 'ABERTO';
    MDO.Query.ExecSQL;
    MDO.Transac.CommitRetaining;
    FPNovoVolume.Visible := False;
    RecalculaNumeroVolumes;
    AtualizaGridVolumes;
    //Posiciona no volume criado
    DMESTOQUE.Alx2.Last;
    ControlActionButtonsVolume;
  Except
    MDO.Transac.RollbackRetaining;
  End;  
end;

procedure TFExpVenda.DBGridVolumesCellClick(Column: TColumn);
begin
  inherited;
  AtualizaGridItensVolume;
  ControlActionButtonsVolume;
end;


//Angelo - 19/08/2015 - Recalcula o numvolume dos volumes
procedure TFExpVenda.RecalculaNumeroVolumes;
var xNumVolume : Integer;
Begin
  MDO.QConsulta.Close;
  MDO.QConsulta.SQL.Clear;
  MDO.QConsulta.SQL.Add('SELECT * FROM VOLUMES WHERE VOLUMES.COD_PEDIDO=:PEDIDO ');
  MDO.QConsulta.SQL.Add('ORDER BY VOLUMES.COD_VOLUME');
  MDO.QConsulta.ParamByName('PEDIDO').AsInteger := DMESTOQUE.Alx.FieldByName('COD_PEDVENDA').AsInteger;
  MDO.QConsulta.Open;
  xNumVolume := 1;
  While not (MDO.QConsulta.Eof) Do
  Begin
    Try
      MDO.Query.Close;
      MDO.Query.SQL.Clear;
      MDO.Query.SQL.Add('UPDATE VOLUMES SET NUMVOLUME=:NUMERO WHERE VOLUMES.COD_VOLUME=:COD_VOLUME');
      MDO.Query.ParamByName('NUMERO').AsInteger := xNumVolume;
      MDO.Query.ParamByName('COD_VOLUME').AsInteger := MDO.QConsulta.fieldByName('COD_VOLUME').AsInteger;
      MDO.Query.ExecSQL;
      xNumVolume := xNumVolume+1;
      MDO.Transac.CommitRetaining;
    Except
      MDO.Transac.RollbackRetaining;
    End;
    MDO.QConsulta.Next;
  End;
End;


procedure TFExpVenda.ControlActionButtonsVolume();
Begin
   //Habilita todas as ações
   BtnNovoVolume.Enabled := True;
   BtnAbrirVol.Enabled := True;
   BtnFecharVol.Enabled := True;
   BtnExcluirVolume.Enabled := True;

   if Not(DMESTOQUE.Alx2.FieldByName('COD_PEDIDO').AsInteger > 0) Then
   Begin
     BtnAbrirVol.Enabled := False;
     BtnFecharVol.Enabled := False;
     BtnExcluirVolume.Enabled := False;
     Exit;
   End;
   //Desabilita as ações inválidas
   MDO.QConsulta.Close;
   MDO.QConsulta.SQL.Clear;
   MDO.QConsulta.SQL.Add('SELECT * FROM VOLUMES WHERE VOLUMES.COD_PEDIDO=:PEDIDO');
   MDO.QConsulta.ParamByName('PEDIDO').AsInteger := DMESTOQUE.Alx.FieldByName('COD_PEDVENDA').AsInteger;
   MDO.QConsulta.Open;
   MDO.QConsulta.First;
   //Se existir um volume aberto, desabilite o botão "NOVO"
   While Not (MDO.QConsulta.Eof) Do
   Begin
     if (MDO.QConsulta.FieldByName('STATUS').AsString='ABERTO') Then
     Begin
       BtnNovoVolume.Enabled := False;
     End;
     MDO.QConsulta.Next;
   End;

   If ((DMESTOQUE.Alx2.FieldByName('STATUS').AsString='FECHADO')) Then
     BtnFecharVol.Enabled := False;

   If (DMESTOQUE.Alx2.FieldByName('STATUS').AsString='ABERTO') Then
     BtnAbrirVol.Enabled := False;

   If (DMESTOQUE.Alx2.FieldByName('STATUS').AsString='BLOQUEADO') Then
   Begin
     BtnNovoVolume.Enabled := False;
     BtnAbrirVol.Enabled := False;
     BtnFecharVol.Enabled := False;
     BtnExcluirVolume.Enabled := False;
   End;
   If (DMESTOQUE.Alx2.FieldByName('STATUS').AsString<>'ABERTO') Then
     BtnExcluirVolume.Enabled := False;
End;

//ANGELO - 01/07/2015 - Insere a quantidade de itens informada no volume selecionado
procedure TFExpVenda.BtnInsereItemVolumeClick(Sender: TObject);
Var xQtdDisp, xQtdInserida : Integer;
begin
  Try
    xQtdDisp := DMESTOQUE.Alx1.FieldByName('QTDDISPONIVEL').AsInteger;
    //Seleciona a quantidade que deve ser baixada
    xQtdInserida := StrToInt(EdQuantItensInseridos.Text);
    //Validações da quantidade informada
    If(xQtdDisp < xQtdInserida) Then
    Begin
     	Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'A quantidade disponível é menor do que a inserida!', '', 1, 1, False, 'a');
    	Exit;
    End Else
    If (xQtdInserida < 1) Then
    Begin
     	Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'A quantidade inserida deve ser maior que zero!', '', 1, 1, False, 'a');
    	Exit;
    End;

    //Consulta se o item já consta na lista de itens do volume
    MDO.QConsulta.Close;
    MDO.QConsulta.SQL.Clear;
    MDO.QConsulta.SQL.Add('SELECT COD_ITENSVOLUME, QUANTIDADE FROM ITENSVOLUME WHERE COD_VOL=:COD_VOLUME AND COD_ITEM=:COD_ITEM');
    MDO.QConsulta.ParamByName('COD_VOLUME').AsInteger:= DMESTOQUE.Alx2.FieldByName('COD_VOLUME').AsInteger;
    MDO.QConsulta.ParamByName('COD_ITEM').AsInteger := DMESTOQUE.Alx1.FieldByName('COD_ITENSPEDVEN').AsInteger;
    MDO.QConsulta.Open;
    If not MDO.QConsulta.IsEmpty then
    //Se encontrou então atualiza a quantidade
    Begin
      MDO.Query.Close;
      MDO.Query.SQL.Clear;
      MDO.Query.SQL.Add('UPDATE ITENSVOLUME SET QUANTIDADE = :QUANTIDADE WHERE COD_VOL=:COD_VOLUME AND COD_ITEM=:COD_ITEM');
      MDO.Query.ParamByName('COD_ITEM').AsInteger := DMESTOQUE.Alx1.FieldByName('COD_ITENSPEDVEN').AsInteger;
      MDO.Query.ParamByName('QUANTIDADE').AsInteger:= MDO.QConsulta.FieldByName('QUANTIDADE').AsInteger + xQtdInserida;
      MDO.Query.ParamByName('COD_VOLUME').AsInteger:= DMESTOQUE.Alx2.FieldByName('COD_VOLUME').AsInteger;
      MDO.Query.ExecSQL;
    End Else
    //Se não encontrou então insere um novo
    Begin
      MDO.Query.Close;
      MDO.Query.SQL.Clear;
      MDO.Query.SQL.Add('INSERT INTO ITENSVOLUME (COD_ITENSVOLUME,COD_ITEM,QUANTIDADE,COD_VOL) VALUES(:COD_ITENSVOLUME,:COD_ITEM,:QUANTIDADE,:COD_VOLUME)');
      MDO.Query.ParamByName('COD_ITENSVOLUME').AsInteger := GeraCodigo('GEN_ITENSVOLUME_ID','ITENSVOLUME','COD_ITENSVOLUME');
      MDO.Query.ParamByName('COD_ITEM').AsInteger := DMESTOQUE.Alx1.FieldByName('COD_ITENSPEDVEN').AsInteger;
      MDO.Query.ParamByName('QUANTIDADE').AsInteger:= xQtdInserida;
      MDO.Query.ParamByName('COD_VOLUME').AsInteger:= DMESTOQUE.Alx2.FieldByName('COD_VOLUME').AsInteger;
      MDO.Query.ExecSQL;
    End;

      FPQuantItens.Visible := False;
      AtualizaQtdDisponivel(DMESTOQUE.Alx1.FieldByName('COD_ITENSPEDVEN').AsInteger,xQtdInserida,0);
      MDO.Transac.CommitRetaining;
      xBookMark := DMESTOQUE.Alx2.GetBookmark;
      AtualizaGridItensPedido;
      AtualizaGridVolumes;
      AtualizaGridItensVolume;
      DMESTOQUE.Alx2.GotoBookmark(xBookMark);
      DMESTOQUE.Alx2.FreeBookmark(xBookMark);
      ControlActionButtonsVolume;    
  Except
    MDO.Transac.RollbackRetaining;
  End;
end;


//ANGELO - Remove o volume selecionado e seus itens
procedure TFExpVenda.BtnExcluirVolumeClick(Sender: TObject);
Var xCodVolume : Integer;
    xQtdRemVol : Real;
begin
  inherited;
	 Try
    xCodVolume := DMESTOQUE.Alx2.FieldByName('COD_VOLUME').AsInteger;
    If Not( xCodVolume>0 ) Then
      Exit;
    //If Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Todos os itens serão removidos do volume. Confirmar?', '', 2, 3, False, 'c') = 2 Then
    //Begin
      //Atualiza a quantidade disponível de cada item removido
       MDO.QAlx1.Close;
       MDO.QAlx1.SQL.Clear;
       MDO.QAlx1.SQL.Add('SELECT * FROM ITENSVOLUME WHERE ITENSVOLUME.COD_VOL=:VOLUME');
       MDO.QAlx1.ParamByName('VOLUME').AsInteger := xCodVolume;
       MDO.QAlx1.Open;
       MDO.QAlx1.First;
       if Not(MDO.QAlx1.Eof) Then
       Begin
         If (Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Todos os itens serão removidos do volume. Confirmar?', '', 2, 3, False, 'c') <> 2) Then
           Exit;
       End;
       While Not (MDO.QAlx1.Eof) Do
       Begin
         xQtdRemVol := MDO.QAlx1.FieldByName('QUANTIDADE').AsFloat;
         AtualizaQtdDisponivel(MDO.QAlx1.FieldByName('COD_ITEM').AsInteger,0,xQtdRemVol);
         MDO.QAlx1.Next;
       End;
      //Remove os itens
      MDO.Query.Close;
      MDO.Query.SQL.Clear;
      MDO.Query.SQL.Add('DELETE FROM ITENSVOLUME WHERE ITENSVOLUME.COD_VOL=:VOLUME');
      MDO.Query.ParamByName('VOLUME').AsInteger := xCodVolume;
      MDO.Query.ExecSQL;
      //Remove o volume
      MDO.Query.Close;
      MDO.Query.SQL.Clear;
      MDO.Query.SQL.Add('DELETE FROM VOLUMES WHERE VOLUMES.COD_VOLUME=:VOLUME');
      MDO.Query.ParamByName('VOLUME').AsInteger := xCodVolume;
      MDO.Query.ExecSQL;
      MDO.Transac.CommitRetaining;
      AtualizaGridItensPedido;
      RecalculaNumeroVolumes;
      DesbloqueiaVolume;
      AtualizaGridVolumes;
      AtualizaGridItensVolume;
      ControlActionButtonsVolume;
    //End;
  Except
    MDO.Transac.RollbackRetaining;
  End;
end;

//Função para efetuar a remoção de uma determinada quantidade de itens
Function TFExpVenda.RemoveQuantItem( xItem: Integer; xQuant: Real): Boolean;
var
   xQtdIem: Real;
Begin
  Try
      xQtdIem := DMESTOQUE.Alx3.FieldByName('QUANTIDADE').AsCurrency;
      //Atualiza a tabela com a quantidade a ser removida
      If ((xQuant > 0 ) And (xQuant < xQtdIem)) Then
      Begin
        MDO.Query.Close;
        MDO.Query.SQL.Clear;
        MDO.Query.SQL.Add('UPDATE ITENSVOLUME SET QUANTIDADE = :QTD WHERE ITENSVOLUME.COD_ITENSVOLUME=:CODIGO');
        MDO.Query.ParamByName('CODIGO').AsInteger := xItem;
        MDO.Query.ParamByName('QTD').AsCurrency := xQtdIem - xQuant;
        MDO.Query.ExecSQL;
      End Else
      //Remove o item da tabela
      If ((xQuant > 0 ) And (xQuant = xQtdIem)) Then
      Begin
        MDO.Query.Close;
        MDO.Query.SQL.Clear;
        MDO.Query.SQL.Add('DELETE FROM ITENSVOLUME WHERE ITENSVOLUME.COD_ITENSVOLUME=:CODIGO');
        MDO.Query.ParamByName('CODIGO').AsInteger := xItem;
        MDO.Query.ExecSQL;
      End Else
      Begin
        Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'Não é possível remover a quantidade informada!', '', 1, 1, False, 'a');
        FPRemoverItem.setFocus;
        Exit;
      End;
      AtualizaQtdDisponivel( DMESTOQUE.Alx3.FieldByName('COD_ITEM').AsInteger,0,xQuant);

      FPRemoverItem.Visible := False;
  	   MDO.Transac.CommitRetaining;
      AtualizaGridItensPedido;
      AtualizaGridVolumes;
      AtualizaGridItensVolume;
  Except
      MDO.Transac.RollbackRetaining;
  End;
End;
//ANGELO - 01/07/2015 - Permite a remoção de itens do volume selecionado
procedure TFExpVenda.BtnRemoveItensClick(Sender: TObject);
begin
  inherited;
   Try
       StrToFloat(EdQtdItensRemov.Text);
       RemoveQuantItem(DMESTOQUE.Alx3.FieldByName('COD_ITENSVOLUME').AsInteger, StrToFloat(EdQtdItensRemov.Text));
   Except
       MessageDlg('Informe uma quantidade válida!', mtWarning, [mbOK], 0);
       EdQtdItensRemov.SetFocus;
   End;
end;

procedure TFExpVenda.dbGridItensPedidoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
   If (DMESTOQUE.Alx1.FieldByName('QTDDISPONIVEL').AsInteger <= 0)
   Then Begin
       dbGridItensPedido.Canvas.Font.Color := clRed;
   End
   Else Begin
       dbGridItensPedido.Canvas.Font.Color := clBlack;
   End;
   dbGridItensPedido.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFExpVenda.AtualizaQtdDisponivel(xCodItem :Integer; xQtdInsVol, xQtdRemVol : Real);
Begin
  //Atualiza a quantidade disponível do item
  Try
    MDO.QConsulta.Close;
    MDO.QConsulta.SQL.Clear;
    MDO.QConsulta.SQL.Add('SELECT ITENSEXP.QTDDISPONIVEL FROM ITENSEXP WHERE ITENSEXP.COD_ITENSPEDVEN=:COD');
    MDO.QConsulta.ParamByName('COD').AsInteger := xCodItem;
    MDO.QConsulta.Open;

    MDO.Query.Close;
    MDO.Query.SQL.Clear;
    MDO.Query.SQL.Add('UPDATE ITENSEXP SET ITENSEXP.QTDDISPONIVEL=:QTD WHERE ITENSEXP.COD_ITENSPEDVEN=:COD_ITENSPEDVEN');
    MDO.Query.ParamByName('COD_ITENSPEDVEN').AsInteger := xCodItem;
    MDO.Query.ParamByName('QTD').AsFloat := MDO.QConsulta.FieldByName('QTDDISPONIVEL').AsFloat - xQtdInsVol + xQtdRemVol;
    MDO.Query.ExecSQL;
    MDO.Transac.CommitRetaining;
  Except
    MDO.Transac.RollbackRetaining;
  End;
End;

//ANGELO - 02/07/2015 - Permite que o pedido saia da expedição, voltando a tela de pedidos de venda
procedure TFExpVenda.BtnCancelarClick(Sender: TObject);
Var xCodPedido : Integer;
begin
  inherited;
  xCodPedido := DMESTOQUE.Alx.FieldByName('COD_PEDVENDA').AsInteger;
  if Not(xCodPedido > 0) Then
    Exit;
  If Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Todos os volumes e seus itens serão removidos e o pedido sairá da expedição. Confirmar?', '', 2, 3, False, 'c') = 2 Then
	 Begin
    Try
      //Busque todos os volumes do pedido
      MDO.QConsulta.Close;
      MDO.QConsulta.SQL.Clear;
      MDO.QConsulta.SQL.Add('SELECT * FROM VOLUMES WHERE VOLUMES.COD_PEDIDO=:PEDIDO');
      MDO.QConsulta.ParamByName('PEDIDO').asInteger := xCodPedido;
      MDO.QConsulta.Open;
      While Not(MDO.QConsulta.Eof) Do
      Begin
        //Para cada volume remova os itens pertencentes
        MDO.Query.Close;
        MDO.Query.SQL.Clear;
        MDO.Query.SQL.Add('DELETE FROM ITENSVOLUME WHERE ITENSVOLUME.COD_VOL=:VOLUME');
        MDO.Query.ParamByName('VOLUME').AsInteger := MDO.QConsulta.FieldByName('COD_VOLUME').AsInteger;
        MDO.Query.ExecSQL;
        //MDO.QConsulta.Next;
        //E depois remova o volume
        MDO.Query.Close;
        MDO.Query.SQL.Clear;
        MDO.Query.SQL.Add('DELETE FROM VOLUMES WHERE VOLUMES.COD_VOLUME=:VOLUME');
        MDO.Query.ParamByName('VOLUME').AsInteger := MDO.QConsulta.FieldByName('COD_VOLUME').AsInteger;
        MDO.Query.ExecSQL;
        MDO.QConsulta.Next;
      End;
      //Remova a tabela de itens do pedido (itensexp)
      MDO.Query.Close;
      MDO.Query.SQL.Clear;
      MDO.Query.SQL.Add('DELETE FROM ITENSEXP WHERE ITENSEXP.COD_PEDVEN=:PEDIDO');
      MDO.Query.ParamByName('PEDIDO').AsInteger := xCodPedido;
      MDO.Query.ExecSQL;
      //Finalmente atualize a situação do pedido
      MDO.Query.Close;
      MDO.Query.SQL.Clear;
      MDO.Query.SQL.Add('UPDATE PEDVENDA SET SITUACAO=:SITUACAO WHERE COD_PEDVENDA =:PEDIDO');
      MDO.Query.ParamByName('PEDIDO').AsInteger := xCodPedido;
      MDO.Query.ParamByName('SITUACAO').AsString := 'ABERTO';
      MDO.Query.ExecSQL;
      MDO.Transac.CommitRetaining;
      AtualizaGridPedidosLiberados;
    Except
      MDO.Transac.RollbackRetaining;
    End;
  End;
end;

procedure TFExpVenda.EdQuantItensInseridosKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	 If (Ord(Key)=VK_RETURN) Then
    BtnInsereItemVolumeClick(Sender);
end;

//ANGELO - 03/07/2015 - Permite a busca de pedidos pelo número
procedure TFExpVenda.edNumPedidoKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var content, newContent : string;
  i : integer;
begin
  inherited;
  If ( Ord(Key)=VK_ESCAPE) Then
    AtualizaGridPedidosLiberados
  Else If (Length(Trim(EdNumPedido.Text)) > 0) Then
  Begin
    newContent := '';
	 content :=	Trim(edNumPedido.Text);
	 For i:=1 to Length(content) do
    Begin
      if (content[i] in ['0'..'9']) Then
        newContent := NewContent + content[i];
    End;
    edNumPedido.Text := newContent;
    if (Length(NewContent) > 0) Then
    Begin
      DMESTOQUE.Alx.Close;
      DMESTOQUE.Alx.SQL.Clear;
      DMESTOQUE.Alx.SQL.Add('SELECT * FROM PEDVENDA WHERE PEDVENDA.SITUACAO=:SIT AND NUMPED=:NUMPED');
      DMESTOQUE.Alx.ParamByName('SIT').AsString := 'EXPEDICAO';
      DMESTOQUE.Alx.ParamByName('NUMPED').AsInteger := StrToInt(EdNumPedido.Text);
      DMESTOQUE.Alx.Open;
    End;
  End;
end;

//ANGELO - 03/07/2015 - Permite a busca de pedidos pelo cliente
procedure TFExpVenda.edNomeClienteKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  If (Ord(Key)=VK_ESCAPE) Then
    AtualizaGridPedidosLiberados
  Else If (Length(Trim(EdNomeCliente.Text)) > 0) Then
  Begin
    DMESTOQUE.Alx.Close;
    DMESTOQUE.Alx.SQL.Clear;
    DMESTOQUE.Alx.SQL.Add('SELECT * FROM PEDVENDA WHERE PEDVENDA.SITUACAO=:SIT AND UPPER(NOMECLI) LIKE UPPER(' +#39 + '%'+Trim(EdNomeCliente.Text)+'%'+#39+')');
    DMESTOQUE.Alx.ParamByName('SIT').AsString := 'EXPEDICAO';
    DMESTOQUE.Alx.Open;
  End;
end;


//ANGELO - 03/07/2015 - Permite a busca de pedidos pelo contrint
procedure TFExpVenda.edContrintKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Var
   xCdVolume: Integer;
begin
  inherited;
     if (Ord(Key)=VK_RETURN)
     Then Begin
         xCdVolume:=VerificaVolumesAbertos;
         If xCdVolume>0
         Then Begin
             DMESTOQUE.Alx1.Close;
             DMESTOQUE.Alx1.SQL.Clear;
             DMESTOQUE.Alx1.SQL.Add('select itensexp.*, subproduto.cod_subproduto, subproduto.codprodfabr from itensexp ');
             DMESTOQUE.Alx1.SQL.Add('left join estoque on (itensexp.cod_estoque=estoque.cod_estoque) ');
             DMESTOQUE.Alx1.SQL.Add('left join subproduto on (estoque.cod_subprod=subproduto.cod_subproduto) ');
             DMESTOQUE.Alx1.SQL.Add('where itensexp.cod_pedven=:pedido and subproduto.contrint=:contrint ');
             DMESTOQUE.Alx1.ParamByName('contrint').AsString := Trim(edContrint.Text);
             DMESTOQUE.Alx1.ParamByName('PEDIDO').AsInteger := DMESTOQUE.Alx.FieldByName('COD_PEDVENDA').AsInteger;
             DMESTOQUE.Alx1.Open;
             If Not(DMESTOQUE.Alx1.IsEmpty)
             Then Begin
                 //Se encontrar o item já pela primeira tentativa, significa que encontrou o código de barras em subproduto e inserimoe o item pela função abaixo
                 edContrint.Text := '';
                 InsereItemVolume(DMESTOQUE.Alx1.FieldByName('COD_ITENSPEDVEN').AsInteger, 1);
                 AtualizaGridItensPedido;
                 edContrint.SetFocus;
             End
             Else Begin
                 ApagaEscrito;
             End;
         End
         Else Begin
           edContrint.Text := '';
           edContrint.SetFocus;
           Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'Não existem volumes cadastrados!', '', 1, 1, False, 'a');
         End;
     End;
end;

//ANGELO - 03/07/2015 - Permite a busca de pedidos pelo número de série
procedure TFExpVenda.edNumSerieKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Var
   xCdVolume: Integer;
begin
  inherited;

     if (Ord(Key)=VK_RETURN)
     Then Begin
         xCdVolume:=VerificaVolumesAbertos;
         If xCdVolume>0
         Then Begin
             DMESTOQUE.Alx1.Close;
             DMESTOQUE.Alx1.SQL.Clear;
             DMESTOQUE.Alx1.SQL.Add('select itensexp.*, subproduto.cod_subproduto, subproduto.codprodfabr from itensexp ');
             DMESTOQUE.Alx1.SQL.Add('left join estoque on (itensexp.cod_estoque=estoque.cod_estoque) ');
             DMESTOQUE.Alx1.SQL.Add('left join subproduto on (estoque.cod_subprod=subproduto.cod_subproduto) ');
             DMESTOQUE.Alx1.SQL.Add('where itensexp.cod_pedven=:pedido and subproduto.codprodfabr=:codprodfabr ');
             DMESTOQUE.Alx1.ParamByName('CODPRODFABR').AsString := Trim(EdNumSerie.Text);
             DMESTOQUE.Alx1.ParamByName('PEDIDO').AsInteger := DMESTOQUE.Alx.FieldByName('COD_PEDVENDA').AsInteger;
             DMESTOQUE.Alx1.Open;
             If Not(DMESTOQUE.Alx1.IsEmpty)
             Then Begin
                 //Se encontrar o item já pela primeira tentativa, significa que encontrou o código de barras em subproduto e inserimoe o item pela função abaixo
                 EdNumSerie.Text := '';
                 InsereItemVolume(DMESTOQUE.Alx1.FieldByName('COD_ITENSPEDVEN').AsInteger, 1);
                 AtualizaGridItensPedido;
                 EdNumSerie.SetFocus;
             End
             Else Begin
                 ApagaEscrito;
             End;
         End
         Else Begin
           EdNumSerie.Text := '';
           EdNumSerie.SetFocus;
           Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'Não existem volumes cadastrados!', '', 1, 1, False, 'a');
         End;
     End;
end;

procedure TFExpVenda.edCodBarraKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  If (Ord(Key)=VK_ESCAPE) Then
  Begin
    AtualizaGridItensPedido;
  End
  Else If (Length(Trim(EdNumSerie.Text)) > 0) Then
  Begin
    DMESTOQUE.Alx1.Close;
    DMESTOQUE.Alx1.SQL.Clear;
    DMESTOQUE.Alx1.SQL.Add('SELECT ITENSEXP.*,COUNT(ITENSEXP.COD_ITENSEXP) as TOTAL FROM ITENSEXP WHERE ITENSEXP.COD_PEDVEN =:PEDIDO AND UPPER(CODBARRA) LIKE UPPER(' +#39 + '%'+Trim(EdCodBarra.Text)+'%'+#39+')');
    DMESTOQUE.Alx1.ParamByName('PEDIDO').AsInteger := DMESTOQUE.Alx.FieldByName('COD_PEDVENDA').AsInteger;
    DMESTOQUE.Alx1.Open;
  End;
end;

procedure TFExpVenda.EdQtdItensRemovKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	 If (Ord(Key)=VK_RETURN) Then
    BtnRemoveItensClick(Sender);
end;

procedure TFExpVenda.BtnRetirarClick(Sender: TObject);
Var xItensNaoExp : Boolean;
begin
  inherited;
  //Verifique se há itens não inseridos em volumes
  MDO.QConsulta.Close;
  MDO.QConsulta.SQL.Clear;
  MDO.QConsulta.SQL.Add('SELECT * FROM ITENSEXP  WHERE ITENSEXP.COD_PEDVEN = :PEDIDO AND ITENSEXP.QTDDISPONIVEL > 0');
  MDO.QConsulta.ParamByName('PEDIDO').AsInteger := DMESTOQUE.Alx.FieldByName('COD_PEDVENDA').AsInteger;
  MDO.QConsulta.Open;
  MDO.QConsulta.First;
  If Not (MDO.QConsulta.Eof) Then
  Begin
    Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'Há itens que não foram distribuídos em volumes! Por favor, verifique!', '', 1, 1, False, 'a');
    Exit;
  End;
  //Verifique se há volumes vazios
  MDO.QAlx1.Close;
  MDO.QAlx1.SQL.Clear;
  MDO.QAlx1.SQL.Add('SELECT * FROM VOLUMES  WHERE VOLUMES.COD_PEDIDO = :PEDIDO');
  MDO.QAlx1.ParamByName('PEDIDO').AsInteger := DMESTOQUE.Alx.FieldByName('COD_PEDVENDA').AsInteger;
  MDO.QAlx1.Open;
  MDO.QAlx1.First;
  While Not(MDO.QAlx1.Eof) Do
  Begin
    MDO.QAlx2.Close;
    MDO.QAlx2.SQL.Clear;
    MDO.QAlx2.SQL.Add('SELECT * FROM ITENSVOLUME  WHERE ITENSVOLUME.COD_VOL = :VOLUME');
    MDO.QAlx2.ParamByName('VOLUME').AsInteger := MDO.QAlx1.FieldByName('COD_VOLUME').AsInteger;
    MDO.QAlx2.Open;
    MDO.QAlx2.First;
    if (MDO.QAlx2.Eof) Then
    Begin
      Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'Há volumes sem itens! Por favor, verifique!', '', 1, 1, False, 'a');
      Exit;
    End;
    MDO.QAlx1.Next;
  End;
  //Verifique se há algum volume bloqueado
  MDO.QAlx1.First;
  While Not(MDO.QAlx1.Eof) Do
  Begin
    if (MDO.QAlx1.FieldByName('STATUS').AsString='BLOQUEADO') Then
    Begin
      Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'Há um volume bloqueado pelo sistema! Por favor, verifique!', '', 1, 1, False, 'a');
      Exit;
    End;
    MDO.QAlx1.Next;
  End;

  Try
    //Mude a situação do pedido
    MDO.Query.Close;
    MDO.Query.SQL.Clear;
    MDO.Query.SQL.Add('UPDATE PEDVENDA SET PEDVENDA.SITUACAO=:SIT WHERE PEDVENDA.COD_PEDVENDA=:PEDIDO');
    MDO.Query.ParamByName('PEDIDO').AsInteger := DMESTOQUE.Alx.FieldByName('COD_PEDVENDA').AsInteger;
    MDO.Query.ParamByName('SIT').AsString := 'FATURAMENT';
    MDO.Query.ExecSQL;
    MDO.Transac.CommitRetaining;
    AtualizaGridPedidosLiberados;
  Except
    MDO.Transac.RollbackRetaining;
  End;
end;

//Função utilizada para limpar o que foi escrito no produto e a quantidade inserida
Function TFExpVenda.ApagaEscrito: Boolean;
Begin
   Try
       LProdutoEncontrado.Caption:='';
       LQuantEncontrado.Caption:='';
   Except
       Result:=False;
   End;
End;
//Função utilizada para escrever o produto e a quantidade inserida
Function TFExpVenda.EscreveItem(xCodItem: Integer; xQtdInserida: Real): Boolean;
Begin
   Try
       MDO.QConsulta.Close;
       MDO.QConsulta.SQL.Clear;
       MDO.QConsulta.SQL.Add(' select vwsimilar.contrint, vwsimilar.descricao from itensexp ');
       MDO.QConsulta.SQL.Add(' left join vwsimilar on itensexp.cod_estoque = vwsimilar.cod_estoque ');
       MDO.QConsulta.SQL.Add(' where itensexp.cod_itenspedven=:codigo ');
       MDO.QConsulta.ParamByName('codigo').AsInteger:=xCodItem;
       MDO.QConsulta.Open;
       If not MDO.QConsulta.IsEmpty
       Then Begin
           LProdutoEncontrado.Caption:='['+MDO.QConsulta.FieldByName('contrint').AsString+'] '+MDO.QConsulta.FieldByName('descricao').AsString;
           LQuantEncontrado.Caption:=FloatToStr(xQtdInserida);
       End;
   Except

   End;
End;
//Função utilizada para inserir uma determinada quantidade de itens no volume correspondente
Function TFExpVenda.InsereItemVolume(xCodItem: Integer; xQtdInserida: Real): Boolean;
Begin
   Try
       //Verifica se temos quantidade suficiente disponível
       If xQtdInserida>DMESTOQUE.Alx1.FieldByName('qtddisponivel').AsCurrency
       Then Begin
           ApagaEscrito;
           Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'O Item não possui quantidade disponível!', '', 1, 1, False, 'a');
           Result:=False;
           Exit;
       End;
       DMESTOQUE.Alx1.Close;
       DMESTOQUE.Alx1.SQL.Clear;
       DMESTOQUE.Alx1.SQL.Add(' Select * from volumes ');
       DMESTOQUE.Alx1.SQL.Add(' Where (volumes.cod_pedido=:Pedido) and (volumes.status=''ABERTO'') ');
       DMESTOQUE.Alx1.ParamByName('Pedido').AsInteger:=DMESTOQUE.Alx.FieldByName('COD_PEDVENDA').AsInteger;
       DMESTOQUE.Alx1.Open;
       If not DMESTOQUE.Alx1.IsEmpty
       Then Begin
           //Função para escrever o item inserido
           EscreveItem(xCodItem, xQtdInserida);
           //Consulta se o item já consta na lista de itens do volume
           MDO.QConsulta.Close;
           MDO.QConsulta.SQL.Clear;
           MDO.QConsulta.SQL.Add('SELECT COD_ITENSVOLUME, QUANTIDADE FROM ITENSVOLUME WHERE (COD_VOL=:COD_VOLUME) AND (COD_ITEM=:COD_ITEM)');
           MDO.QConsulta.ParamByName('COD_VOLUME').AsInteger:= DMESTOQUE.Alx1.FieldByName('COD_VOLUME').AsInteger;
           MDO.QConsulta.ParamByName('COD_ITEM').AsInteger := xCodItem;
           MDO.QConsulta.Open;
           If not MDO.QConsulta.IsEmpty
           then  Begin
               //Se encontrou então atualiza a quantidade
               MDO.Query.Close;
               MDO.Query.SQL.Clear;
               MDO.Query.SQL.Add('UPDATE ITENSVOLUME SET QUANTIDADE = :QUANTIDADE WHERE COD_VOL=:COD_VOLUME AND COD_ITEM=:COD_ITEM');
               MDO.Query.ParamByName('COD_ITEM').AsInteger := xCodItem;
               MDO.Query.ParamByName('QUANTIDADE').AsCurrency:= MDO.QConsulta.FieldByName('QUANTIDADE').AsInteger + xQtdInserida;
               MDO.Query.ParamByName('COD_VOLUME').AsInteger:= DMESTOQUE.Alx1.FieldByName('COD_VOLUME').AsInteger;
               MDO.Query.ExecSQL;
           End
           Else Begin
               MDO.Query.Close;
               MDO.Query.SQL.Clear;
               MDO.Query.SQL.Add('INSERT INTO ITENSVOLUME (COD_ITENSVOLUME,COD_ITEM,QUANTIDADE,COD_VOL) VALUES(:COD_ITENSVOLUME,:COD_ITEM,:QUANTIDADE,:COD_VOLUME)');
               MDO.Query.ParamByName('COD_ITENSVOLUME').AsInteger := GeraCodigo('GEN_ITENSVOLUME_ID','ITENSVOLUME','COD_ITENSVOLUME');
               MDO.Query.ParamByName('COD_ITEM').AsInteger := xCodItem;
               MDO.Query.ParamByName('QUANTIDADE').AsCurrency:= xQtdInserida;
               MDO.Query.ParamByName('COD_VOLUME').AsInteger:= DMESTOQUE.Alx1.FieldByName('COD_VOLUME').AsInteger;
               MDO.Query.ExecSQL;
           End;
           FPQuantItens.Visible := False;
           MDO.Transac.CommitRetaining;
           AtualizaQtdDisponivel( xCodItem, xQtdInserida,0);
           xBookMark := DMESTOQUE.Alx2.GetBookmark;
           AtualizaGridItensPedido;
           AtualizaGridVolumes;
           AtualizaGridItensVolume;
           DBGridItensVolume.Refresh;
           DMESTOQUE.Alx2.GotoBookmark(xBookMark);
           DMESTOQUE.Alx2.FreeBookmark(xBookMark);
           ControlActionButtonsVolume;
       End
       Else Begin
           ApagaEscrito;
           Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'Por favor, crie um volume antes de inserir o item!', '', 1, 1, False, 'a');
       End;
   Except
       ApagaEscrito;
   End;
End;
//Função para verificar se existem volumes abertos
Function TFExpVenda.VerificaVolumesAbertos: Integer;
Begin
   Try
       Result:=-1;
       MDO.QConsulta.Close;
       MDO.QConsulta.SQL.Clear;
       MDO.QConsulta.SQL.Add('SELECT * FROM VOLUMES WHERE VOLUMES.COD_PEDIDO=:PED');
       MDO.QConsulta.ParamByName('PED').AsInteger := DMESTOQUE.Alx.FieldByName('COD_PEDVENDA').AsInteger;
       MDO.QConsulta.Open;
       MDO.QConsulta.First;
       if Not (MDO.QConsulta.IsEmpty) Then
           Result:=MDO.QConsulta.FieldByName('COD_VOLUME').AsInteger;
   Except;
       Result:=-1;
   End;
End;
procedure TFExpVenda.edCodBarraKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Var
   xCdVolume: Integer;
begin
  inherited;
   //Permite a inserção do item buscado via código de barras
   if (Ord(Key)=VK_RETURN)
   Then Begin
       xCdVolume:=VerificaVolumesAbertos;
       If xCdVolume>0
       Then Begin
           DMESTOQUE.Alx1.Close;
           DMESTOQUE.Alx1.SQL.Clear;
           DMESTOQUE.Alx1.SQL.Add(' SELECT  itensexp.cod_estoque, itensexp.COD_ITENSPEDVEN, itensexp.qtddisponivel FROM ITENSEXP ');
           DMESTOQUE.Alx1.SQL.Add(' LEFT JOIN vwsimilar ON itensexp.cod_estoque = vwsimilar.cod_estoque ');
           DMESTOQUE.Alx1.SQL.Add('  Where (vwsimilar.codbarra = :CodBarra) and (itensexp.cod_pedven=:Pedido) ');
           DMESTOQUE.Alx1.ParamByName('PEDIDO').AsInteger := DMESTOQUE.Alx.FieldByName('cod_pedvenda').AsInteger;
           DMESTOQUE.Alx1.ParamByName('CodBarra').AsString := EdCodBarra.Text;
           DMESTOQUE.Alx1.Open;
           If Not(DMESTOQUE.Alx1.IsEmpty)
           Then Begin
               //Se encontrar o item já pela primeira tentativa, significa que encontrou o código de barras em subproduto e inserimoe o item pela função abaixo
               InsereItemVolume(DMESTOQUE.Alx1.FieldByName('COD_ITENSPEDVEN').AsInteger, 1);
               AtualizaGridItensPedido;
           End
           Else Begin
               //Se não foi encontrado o subproduto pelo código de barras do produtos, tentaremos encontrar o mesmo pela tabela codbarras
               DMESTOQUE.Alx1.Close;
               DMESTOQUE.Alx1.SQL.Clear;
               DMESTOQUE.Alx1.SQL.Add('  SELECT itensexp.cod_estoque, codigobarra.qtdemb, itensexp.COD_ITENSPEDVEN, itensexp.qtddisponivel  FROM ITENSEXP ');
               DMESTOQUE.Alx1.SQL.Add('  left join codigobarra on itensexp.cod_estoque = codigobarra.cod_estoque ');
               DMESTOQUE.Alx1.SQL.Add('  Where (codigobarra.codbarra = :CODBARRA)  and (itensexp.cod_pedven=:Pedido) ');
               DMESTOQUE.Alx1.ParamByName('PEDIDO').AsInteger := DMESTOQUE.Alx.FieldByName('cod_pedvenda').AsInteger;
               DMESTOQUE.Alx1.ParamByName('CODBARRA').AsString := EdCodBarra.Text;
               DMESTOQUE.Alx1.Open;
               If Not(DMESTOQUE.Alx1.IsEmpty)
               Then Begin
                   InsereItemVolume(DMESTOQUE.Alx1.FieldByName('COD_ITENSPEDVEN').AsInteger, DMESTOQUE.Alx1.FieldByName('qtdemb').AsCurrency)
               End
               Else
                   ApagaEscrito;
           End;
       End
       Else Begin
           Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'Não existem volumes cadastrados!', '', 1, 1, False, 'a');
           AtualizaGridItensPedido;
       End;
       edCodBarra.Text := '';       
   End;

end;

procedure TFExpVenda.DBGridVolumesDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  {
  If (DMESTOQUE.Alx2.FieldByName('STATUS').AsString = 'FECHADO') Then
  Begin
    DBGridVolumes.Canvas.Brush.Color := $00BFBEC2;//clInactiveBorder;//$00EEEEEE;
  End Else If (DMESTOQUE.Alx2.FieldByName('STATUS').AsString = 'ABERTO') Then
  Begin
    DBGridVolumes.Canvas.Brush.Color := $00D6A867;
  End;

  DBGridVolumes.DefaultDrawColumnCell(Rect, DataCol, Column, State); }
end;

procedure TFExpVenda.EdNomeNovoVolKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
	If (Ord(Key)=VK_RETURN) Then
     BtnGravaNovoVolumeClick(Sender);
end;


//Angelo - 20/08/2015 - Desbloqueia o volume bloqueado pelo sistema caso não haja nenhum aberto
Procedure TFExpVenda.DesbloqueiaVolume;
Var xBookMark : Pointer;
Begin
    //Verifica se há algum volume bloqueado e desbloqueia
    MDO.QAlx2.Close;
    MDO.QAlx2.SQL.Clear;
    MDO.QAlx2.SQL.Add('SELECT * FROM VOLUMES  WHERE VOLUMES.STATUS =:STATUS');
    MDO.QAlx2.ParamByName('STATUS').AsString := 'ABERTO';
    MDO.QAlx2.Open;
    MDO.QAlx2.First;
    if (MDO.QAlx2.Eof) Then
    Begin
      Try
        xBookMark := DMESTOQUE.Alx2.GetBookmark;
        MDO.Query.Close;
        MDO.Query.SQL.Clear;
        MDO.Query.SQL.Add('UPDATE VOLUMES SET VOLUMES.STATUS=:NOVO_STATUS WHERE VOLUMES.COD_PEDIDO=:PEDIDO AND VOLUMES.STATUS=:STATUS');
        MDO.Query.ParamByName('PEDIDO').AsInteger := DMESTOQUE.Alx.FieldByName('COD_PEDVENDA').AsInteger;
        MDO.Query.ParamByName('STATUS').AsString := 'BLOQUEADO';
        MDO.Query.ParamByName('NOVO_STATUS').AsString := 'ABERTO';
        MDO.Query.ExecSQL;
        MDO.Transac.CommitRetaining;
        DMESTOQUE.Alx2.GotoBookmark(xBookMark);
        DMESTOQUE.Alx2.FreeBookmark(xBookMark);
      Except
        MDO.Transac.RollbackRetaining;
      End;
    End;

End;



//Angelo - 14/08/2015 - Permite o fechamento do volume selecionado e impressão de etiqueta
procedure TFExpVenda.BtnFecharVolClick(Sender: TObject);
Var xCodVolume:Integer;
  xBookMark : Pointer;
begin
  inherited;
  xCodVolume := DMESTOQUE.Alx2.FieldByName('COD_VOLUME').AsInteger;
  if Not(xCodVolume>0) Then
    Exit;
  //O volume possui itens?
  MDO.QAlx2.Close;
  MDO.QAlx2.SQL.Clear;
  MDO.QAlx2.SQL.Add('SELECT * FROM ITENSVOLUME  WHERE ITENSVOLUME.COD_VOL =:VOLUME');
  MDO.QAlx2.ParamByName('VOLUME').AsInteger := xCodVolume;
  MDO.QAlx2.Open;
  MDO.QAlx2.First;
  if (MDO.QAlx2.Eof) Then
  Begin
    Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'O volume selecionado não contém itens! Por favor, verifique!', '', 1, 1, False, 'a');
    Exit;
  End;

  Try
    //Fecha o volume
    MDO.Query.Close;
    MDO.Query.SQL.Clear;
    MDO.Query.SQL.Add('UPDATE VOLUMES SET STATUS=:STATUS WHERE VOLUMES.COD_VOLUME=:COD_VOLUME');
    MDO.Query.ParamByName('COD_VOLUME').AsInteger := xCodVolume;
    MDO.Query.ParamByName('STATUS').ASstring := 'FECHADO';
    MDO.Query.ExecSQL;
    MDO.Transac.CommitRetaining;
    //Verifica se há algum volume bloqueado e desbloqueia
	 DesbloqueiaVolume;
    RecalculaNumeroVolumes;
    If CbImpetiquetas.Checked=True Then
       ImprimeEtiquetaUnica(xCodVolume);
    AtualizaGridVolumes;
    ControlActionButtonsVolume;
  Except
    MDO.Transac.RollbackRetaining;
  End;


end;

procedure TFExpVenda.ImprimeEtiquetaUnica(cod_volume : Integer);
Begin
	//Angelo - 19/08 - Imprime etiqueta única
   DMFAST.QAlx.Close;
   DMFAST.QAlx.SQL.Clear;
   DMFAST.QAlx.SQL.Add(' select volumes.numvolume,pessoa.nome as nomecliente, PESSOAJ.RAZAO_SOCIAL, cidade.nome as cidade,estado.uf_estado,pedvenda.numped,pedvenda.numfiscal from volumes ');
   DMFAST.QAlx.SQL.Add(' left join pedvenda on (pedvenda.cod_pedvenda=volumes.cod_pedido) ');
   DMFAST.QAlx.SQL.Add(' left join cliente on (cliente.cod_cliente=pedvenda.cod_cliente) ');
   DMFAST.QAlx.SQL.Add(' left join pessoa on (pessoa.cod_pessoa=cliente.cod_pessoa) ');
   DMFAST.QAlx.SQL.Add(' LEFT JOIN PESSOAJ  ON (PESSOAJ.COD_PESSOA = PESSOA.COD_PESSOA) ');   
   DMFAST.QAlx.SQL.Add(' left join cidade on (cidade.cod_cidade=pessoa.cod_cidade) ');
   DMFAST.QAlx.SQL.Add(' left join estado on (estado.cod_estado=cidade.cod_estado) ');
   DMFAST.QAlx.SQL.Add(' where volumes.cod_volume=:volume ');
   DMFAST.QAlx.ParamByName('volume').AsInteger := cod_volume;
   DMFAST.QAlx.Open;
   
   frxDbEtiquetasExp.DataSet := DMFAST.QAlx;
   frxRelEtiquetas.LoadFromFile('C:\MZR\Macs\Rel\FrfEtiquetasExp.fr3');
   frxRelEtiquetas.Variables['XTOTAL'] := 1;
   frxRelEtiquetas.ShowReport();
End;

//Angelo - 19/08 - Imprime as etiquetas do volume selecionado
Procedure TFExpVenda.ImprimirEtiquetas;
var
   xTotalVolumes: Integer;
Begin
   DMFAST.QAlx.Close;
   DMFAST.QAlx.SQL.Clear;
   DMFAST.QAlx.SQL.Add(' SELECT VOLUMES.NUMVOLUME, PESSOA.NOME AS NOMECLIENTE, PESSOAJ.RAZAO_SOCIAL, CIDADE.NOME AS CIDADE, ESTADO.UF_ESTADO, ');
   DMFAST.QAlx.SQL.Add(' PEDVENDA.NUMPED, PEDVENDA.NUMFISCAL FROM VOLUMES ');
   DMFAST.QAlx.SQL.Add(' LEFT JOIN PEDVENDA ON (PEDVENDA.COD_PEDVENDA=VOLUMES.COD_PEDIDO) ');
   DMFAST.QAlx.SQL.Add(' LEFT JOIN CLIENTE  ON (CLIENTE.COD_CLIENTE=PEDVENDA.COD_CLIENTE) ');
   DMFAST.QAlx.SQL.Add(' LEFT JOIN PESSOA   ON (PESSOA.COD_PESSOA=CLIENTE.COD_PESSOA) ');
   DMFAST.QAlx.SQL.Add(' LEFT JOIN CIDADE   ON (CIDADE.COD_CIDADE=PESSOA.COD_CIDADE) ');
   DMFAST.QAlx.SQL.Add(' LEFT JOIN ESTADO   ON (ESTADO.COD_ESTADO=CIDADE.COD_ESTADO) ');
   DMFAST.QAlx.SQL.Add(' LEFT JOIN PESSOAJ  ON (PESSOAJ.COD_PESSOA = PESSOA.COD_PESSOA) ');
   DMFAST.QAlx.SQL.Add(' WHERE VOLUMES.COD_PEDIDO = :PEDIDO order by VOLUMES.NUMVOLUME ');
   DMFAST.QAlx.ParamByName('PEDIDO').AsInteger := DMESTOQUE.Alx.fieldByName('COD_PEDVENDA').AsInteger;
   DMFAST.QAlx.Open;

   //Edmar - 24/11/2015 - Vai até o ultimo registro pra pegar a posição com RecordCount
   DMFAST.QAlx.Last;
   xTotalVolumes := DMFAST.QAlx.RecordCount;
   DMFAST.QAlx.First;

   frxDbEtiquetasExp.DataSet := DMFAST.QAlx;
   frxRelEtiquetas.LoadFromFile('C:\MZR\Macs\Rel\FrfEtiquetasExp.fr3');
   frxRelEtiquetas.Variables['XTOTAL'] := xTotalVolumes;
   frxRelEtiquetas.ShowReport();
End;

procedure TFExpVenda.BtnAbrirVolClick(Sender: TObject);
var xCodVolume : integer;
    xBookMark : Pointer;
begin
  inherited;
  xCodVolume := DMESTOQUE.Alx2.FieldByName('COD_VOLUME').AsInteger;
  xBookMark := DMESTOQUE.Alx2.GetBookmark;
  Try
    //Não permite manter mais de um volume bloqueado
    MDO.QConsulta.Close;
    MDO.QConsulta.SQL.Clear;
	 MDO.QConsulta.SQL.Add('SELECT * FROM VOLUMES WHERE VOLUMES.STATUS=:STATUS');
    MDO.QConsulta.ParamByName('STATUS').AsString := 'BLOQUEADO';
    MDO.QConsulta.Open;
    MDO.QConsulta.First;
    if Not(MDO.QConsulta.eof) Then
    Begin
     	Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'Não é possível reabrir o volume. Feche o volume aberto e tente novamente', '', 1, 1, False, 'a');
    	Exit;
    End;
    //Bloqueia os volumes abertos
    MDO.Query.Close;
    MDO.Query.SQL.Clear;
    MDO.Query.SQL.Add('UPDATE VOLUMES SET STATUS=:NOVO_STATUS WHERE VOLUMES.STATUS=:STATUS AND VOLUMES.COD_PEDIDO=:PEDIDO');
    MDO.Query.ParamByName('STATUS').ASstring := 'ABERTO';
    MDO.Query.ParamByName('NOVO_STATUS').ASstring := 'BLOQUEADO';
    MDO.Query.ParamByName('PEDIDO').AsInteger := DMESTOQUE.Alx.FieldByName('COD_PEDVENDA').AsInteger;
    MDO.Query.ExecSQL;
    MDO.Transac.CommitRetaining;

    //Abre o volume selecionado para edição
    MDO.Query.Close;
    MDO.Query.SQL.Clear;
    MDO.Query.SQL.Add('UPDATE VOLUMES SET STATUS=:STATUS WHERE VOLUMES.COD_VOLUME=:COD_VOLUME');
    MDO.Query.ParamByName('STATUS').ASstring := 'ABERTO';
    MDO.Query.ParamByName('COD_VOLUME').AsInteger := xCodVolume;
    MDO.Query.ExecSQL;
    MDO.Transac.CommitRetaining;
    RecalculaNumeroVolumes;
    AtualizaGridVolumes;
	 DMESTOQUE.Alx2.GotoBookmark(xBookMark);
    DMESTOQUE.Alx2.FreeBookmark(xBookMark);
    ControlActionButtonsVolume;
  Except
    MDO.Transac.RollbackRetaining;
  End;
end;
{
procedure TFExpVenda.BtnInsItemViaCodBarrasClick(Sender: TObject);
Var xQtdDisp, xQtdInserida : Integer;
		 xBookMark : Pointer;
begin
  Try
    xQtdDisp := DMESTOQUE.Alx1.FieldByName('QTDDISPONIVEL').AsInteger;
    xQtdInserida := StrToInt(EdQtdItensInsViaCodBarras.Text);
    //Validações da quantidade informada
    If(xQtdDisp < xQtdInserida) Then
    Begin
     	Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'A quantidade disponível é menor do que a inserida!', '', 1, 1, False, 'a');
    	Exit;
    End Else
    If (xQtdInserida < 1) Then
    Begin
     	Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'A quantidade inserida deve ser maior que zero!', '', 1, 1, False, 'a');
    	Exit;
    End;

    //Consulta se o item já consta na lista de itens do volume
    MDO.QConsulta.Close;
    MDO.QConsulta.SQL.Clear;
    MDO.QConsulta.SQL.Add('SELECT COD_ITENSVOLUME, QUANTIDADE FROM ITENSVOLUME WHERE COD_VOL=:COD_VOLUME AND COD_ITEM=:COD_ITEM');
    MDO.QConsulta.ParamByName('COD_VOLUME').AsInteger:= DMESTOQUE.Alx2.FieldByName('COD_VOLUME').AsInteger;
    MDO.QConsulta.ParamByName('COD_ITEM').AsInteger := DMESTOQUE.Alx1.FieldByName('COD_ITENSPEDVEN').AsInteger;
    MDO.QConsulta.Open;
    If not MDO.QConsulta.IsEmpty then
    //Se encontrou então atualiza a quantidade
    Begin
      MDO.Query.Close;
      MDO.Query.SQL.Clear;
      MDO.Query.SQL.Add('UPDATE ITENSVOLUME SET QUANTIDADE = :QUANTIDADE WHERE COD_VOL=:COD_VOLUME AND COD_ITEM=:COD_ITEM');
      MDO.Query.ParamByName('COD_ITEM').AsInteger := DMESTOQUE.Alx1.FieldByName('COD_ITENSPEDVEN').AsInteger;
      MDO.Query.ParamByName('QUANTIDADE').AsInteger:= MDO.QConsulta.FieldByName('QUANTIDADE').AsInteger + xQtdInserida;
      MDO.Query.ParamByName('COD_VOLUME').AsInteger:= DMESTOQUE.Alx2.FieldByName('COD_VOLUME').AsInteger;
      MDO.Query.ExecSQL;
    End Else
    //Se não encontrou então insere um novo
    Begin
      MDO.Query.Close;
      MDO.Query.SQL.Clear;
      MDO.Query.SQL.Add('INSERT INTO ITENSVOLUME (COD_ITENSVOLUME,COD_ITEM,QUANTIDADE,COD_VOL) VALUES(:COD_ITENSVOLUME,:COD_ITEM,:QUANTIDADE,:COD_VOLUME)');
      MDO.Query.ParamByName('COD_ITENSVOLUME').AsInteger := GeraCodigo('GEN_ITENSVOLUME_ID','ITENSVOLUME','COD_ITENSVOLUME');
      MDO.Query.ParamByName('COD_ITEM').AsInteger := DMESTOQUE.Alx1.FieldByName('COD_ITENSPEDVEN').AsInteger;
      MDO.Query.ParamByName('QUANTIDADE').AsInteger:= xQtdInserida;
      MDO.Query.ParamByName('COD_VOLUME').AsInteger:= DMESTOQUE.Alx2.FieldByName('COD_VOLUME').AsInteger;
      MDO.Query.ExecSQL;
    End;
      MDO.Transac.CommitRetaining;
		   AtualizaQtdDisponivel(DMESTOQUE.Alx1.FieldByName('COD_ITENSPEDVEN').AsInteger,xQtdInserida,0);
      FPQtdViaCodBarras.Visible := False;
      xBookMark := DMESTOQUE.Alx2.GetBookmark;
      AtualizaGridItensPedido;
      AtualizaGridVolumes;
      AtualizaGridItensVolume;
      DMESTOQUE.Alx2.GotoBookmark(xBookMark);
      DMESTOQUE.Alx2.FreeBookmark(xBookMark);
      ControlActionButtonsVolume;
  Except
    MDO.Transac.RollbackRetaining;
  End;

end;}

procedure TFExpVenda.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  //Atalhos para botões de ação
  if ( (Ord(Key)=VK_F2) and (BtnNovoVolume.Enabled=True) ) Then
    BtnNovoVolumeClick(Sender)
  else if ( (Ord(Key)=VK_F3) and (BtnAbrirVol.Enabled=True) ) Then
    BtnAbrirVolClick(Sender)
  else if ( (Ord(Key)=VK_F4) and (BtnFecharVol.Enabled=True) ) Then
    BtnFecharVolClick(Sender)
  else if ( (Ord(Key)=VK_F5) and (BtnExcluirVolume.Enabled=True) ) Then
    BtnExcluirVolumeClick(Sender)
  else if ( (Ord(Key)=VK_F6) and (btnImpEtiquetas.Enabled=True) ) Then
    btnImpEtiquetasClick(Sender)
  else if ((Ord(Key)=VK_F7) and (BtnRemoverItem.Enabled=True) ) Then
    BtnRemoverItemClick(Sender)
  else if ((Ord(Key)=VK_F9)) Then
    BtnCancelarClick(Sender)
  else if ((Ord(Key)=VK_F10)) Then
    BtnRetirarClick(Sender);
  //Navegação entre volumes
  if ((Ord(Key)=VK_DOWN)) Then
  Begin
	DMESTOQUE.Alx2.MoveBy(1);
   ControlActionButtonsVolume;
   AtualizaGridItensVolume;
  End
  else if ((Ord(Key)=VK_UP)) Then
  Begin
    DMESTOQUE.Alx2.MoveBy(-1);
    ControlActionButtonsVolume;
    AtualizaGridItensVolume;
  End;
end;

procedure TFExpVenda.btnImpEtiquetasClick(Sender: TObject);
begin
  inherited;
  ImprimirEtiquetas;
end;

procedure TFExpVenda.edContrintExit(Sender: TObject);
begin
  inherited;
   edContrint.Color:=clWindow;
end;

procedure TFExpVenda.edNumSerieExit(Sender: TObject);
begin
  inherited;
   edNumSerie.Color:=clWindow;
end;

procedure TFExpVenda.EdCodBarraExit(Sender: TObject);
begin
  inherited;
   EdCodBarra.Color:=clWindow;
end;

procedure TFExpVenda.edContrintEnter(Sender: TObject);
begin
  inherited;
   edContrint.Color:=clYellow;
end;

procedure TFExpVenda.edNumSerieEnter(Sender: TObject);
begin
  inherited;
   edNumSerie.Color := clYellow;
end;

procedure TFExpVenda.EdCodBarraEnter(Sender: TObject);
begin
  inherited;
   EdCodBarra.Color := clYellow;
end;

procedure TFExpVenda.btnhelpClick(Sender: TObject);
begin
  inherited;
   AbrirHelp(expedicao);
end;

end.
