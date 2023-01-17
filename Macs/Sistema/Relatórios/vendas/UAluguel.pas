unit UAluguel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadPadrao, EditFloat, Mask, StdCtrls, Buttons, DrLabel, jpeg,
  ExtCtrls, Grids, DBGrids, TFlatEditUnit, Menus, FR_Class, FR_DSet,
  FR_DBSet;

type
  TFAluguel = class(TFCadPadrao)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    EdCodAluguel: TFlatEdit;
    EdCodCliente: TFlatEdit;
    EdNomeCliente: TFlatEdit;
    EdCodEquipamento: TFlatEdit;
    EdTemAluguel: TEdit;
    EdDataSaida: TMaskEdit;
    FloatEdit1: TFloatEdit;
    Label9: TLabel;
    EdDescEquipamento: TFlatEdit;
    EdDtEntrega: TMaskEdit;
    BitBtn1: TBitBtn;
    EdPedVendaTP: TFlatEdit;
    EdCodAluguelTP: TFlatEdit;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    BtnFechar: TSpeedButton;
    TAluguel: TfrDBDataSet;
    FSRel: TfrReport;
    PMRel: TPopupMenu;
    AlVencido: TMenuItem;
    AlaVencer: TMenuItem;
    AlDia: TMenuItem;
    procedure DBGridCadastroPadraoDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure BtnSelecionarClick(Sender: TObject);
    procedure DBGridCadastroPadraoDblClick(Sender: TObject);
    procedure EntregueClick(Sender: TObject);
    procedure BtnFechaClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BtnApagarClick(Sender: TObject);
    procedure EdPedVendaTPKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodAluguelTPKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdNomeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnRelatorioClick(Sender: TObject);
    procedure AlVencidoClick(Sender: TObject);
    procedure AlaVencerClick(Sender: TObject);
    procedure AlDiaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    //cria auxluguel
    procedure auxaluguel;
    //Samuel Fabricio Wink - 10/3/2009: gera relatório de aluguel
    Function ImpAluguel(tipo: String; dia: string): Boolean;
  end;

var
  FAluguel: TFAluguel;

implementation

uses UDMEstoque, UMensagem, UMessage, Alxor32, AlxMessage, UDMMacs, UMenu,
  DB;

{$R *.dfm}
//formula auxaluguel
procedure TFAluguel.auxaluguel;
begin
  DMESTOQUE.Alx5.Close;
  DMESTOQUE.Alx5.SQL.Clear;
  DMESTOQUE.Alx5.SQL.Add('select * from aluguel');
  DMESTOQUE.Alx5.SQL.Add('left join pedvenda on aluguel.cod_pedvenda = pedvenda.cod_pedvenda');
  DMESTOQUE.Alx5.SQL.Add('left join equipamento on aluguel.cod_equipamento = equipamento.cod_equipamento');
  DMESTOQUE.Alx5.Open;
end;

procedure TFAluguel.DBGridCadastroPadraoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
FiltraTabela(DMESTOQUE.TAluguel,'ALUGUEL','COD_ALUGUEL',DMESTOQUE.Alx5.FieldByName('COD_ALUGUEL').AsString,'');
  //se o aluguel estiver aberto e o container ainda naum foi entregue
	if (DMESTOQUE.TAluguel.FieldByName('STATUS').AsInteger = 1) and (DMESTOQUE.TAluguel.FieldByName('DTDEVOLUCAO').AsDateTime < Date()) then
   begin
   	DBGridCadastroPadrao.Canvas.brush.Color := clRed;
       //DBGridCadastroPadrao.Canvas.Font.Color := clRed;
		DBGridCadastroPadrao.DefaultDrawColumnCell(Rect, DataCol, Column, State);
   end;
   if (DMESTOQUE.TAluguel.FieldByName('STATUS').AsInteger = 1) and (DMESTOQUE.TAluguel.FieldByName('DTDEVOLUCAO').AsDateTime = Date()) then
   begin
   	DBGridCadastroPadrao.Canvas.brush.Color := clYellow;
       //DBGridCadastroPadrao.Canvas.Font.Color := clYellow;
		DBGridCadastroPadrao.DefaultDrawColumnCell(Rect, DataCol, Column, State);
   end;
   if (DMESTOQUE.TAluguel.FieldByName('STATUS').AsInteger = 1) and (DMESTOQUE.TAluguel.FieldByName('DTDEVOLUCAO').AsDateTime > Date()) then
   begin
   	DBGridCadastroPadrao.Canvas.brush.Color := clLime;
       //DBGridCadastroPadrao.Canvas.Font.Color := clGreen;
		DBGridCadastroPadrao.DefaultDrawColumnCell(Rect, DataCol, Column, State);
   end;

   //Samuel Fabricio Wink - 20/2/2009: serve para quando clicar deixar selecionada a linha na grid
   if gdSelected in State then
  begin
    DBGridCadastroPadrao.Canvas.Brush.Color:= clSkyBlue;
    DBGridCadastroPadrao.Canvas.Font.Color:= clBlack;
  end;
  DBGridCadastroPadrao.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

//FECHA ALUGUEL
procedure TFAluguel.BtnSelecionarClick(Sender: TObject);
var
	xcodupdate : String;
begin
xcodupdate := DMESTOQUE.Alx5.FieldByName('COD_ALUGUEL').AsString;
IF FiltraTabela(DMESTOQUE.TAluguel,'ALUGUEL','.', '',' ALUGUEL.COD_ALUGUEL = ' + xcodupdate + ' AND ALUGUEL.STATUS = 0') = FALSE THEN
	BEGIN
      If Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Deseja Realmente fechar o aluguel '+DMESTOQUE.TAluguel.FieldByName('COD_PEDVENDA').AsString, '', 2, 3, False, 'C')=2 then
        begin
          DMESTOQUE.TAluguel.Close;
          DMESTOQUE.TAluguel.SQL.Clear;
          DMESTOQUE.TAluguel.SQL.Add('update aluguel set');
          DMESTOQUE.TAluguel.SQL.Add('status = :STATUS');
          DMESTOQUE.TAluguel.SQL.Add('where aluguel.cod_aluguel = ' + xcodupdate);
          DMESTOQUE.TAluguel.ParamByName('STATUS').AsString := '0';
          DMESTOQUE.TAluguel.ExecSQL;
          DMESTOQUE.TransacEstoque.CommitRetaining;
        end;
   END
ELSE
	BEGIN
   	Mensagem('ATENÇÃO', 'O campo selecionado já se encontra fechado!!!', '', 1, 1, False, 'A');
   END;
   DBGridCadastroPadrao.Refresh;
end;
//duplo click na grid para fechar aluguel
procedure TFAluguel.DBGridCadastroPadraoDblClick(Sender: TObject);
begin
  BtnSelecionarClick(Sender);
end;
//botao entregue
procedure TFAluguel.EntregueClick(Sender: TObject);
begin
  BtnSelecionarClick(Sender);
end;
//botao fechar form
procedure TFAluguel.BtnFechaClick(Sender: TObject);
begin
  close;
end;
//procedimentos do form activate
procedure TFAluguel.FormActivate(Sender: TObject);
begin
	auxaluguel;
   BtnFechar.Visible := true;
end;
//botao que executa a reabertura do aluguel
procedure TFAluguel.BtnApagarClick(Sender: TObject);
var
	xcodupdate : String;
begin
//Samuel Fabricio Wink - 11/3/2009: armazena o cod pra update
xcodupdate := DMESTOQUE.Alx5.FieldByName('cod_aluguel').AsString;

if FiltraTabela(DMESTOQUE.TAluguel,'ALUGUEL','.', '', 'ALUGUEL.COD_ALUGUEL = ' + xcodupdate + ' and status = 1') = false then
	begin
      If Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Deseja Realmente abrir o aluguel '+DMESTOQUE.TAluguel.FieldByName('COD_PEDVENDA').AsString, '', 2, 3, False, 'C')=2 then
       begin
       	DMESTOQUE.TAluguel.Close;
           DMESTOQUE.TAluguel.SQL.Clear;
           DMESTOQUE.TAluguel.SQL.Add('update aluguel set');
           DMESTOQUE.TAluguel.SQL.Add('status = :STATUS');
           DMESTOQUE.TAluguel.SQL.Add('where aluguel.cod_aluguel = ' + xcodupdate);
           DMESTOQUE.TAluguel.ParamByName('STATUS').AsString := '1';
           DMESTOQUE.TAluguel.ExecSQL;
           DMESTOQUE.TransacEstoque.CommitRetaining;
       end;
   end
else
	begin
   	Mensagem('ATENÇÃO', 'O campo selecionado já se encontra aberto!!!', '', 1, 1, False, 'A');
   end;
   DBGridCadastroPadrao.Refresh;
end;

procedure TFAluguel.EdPedVendaTPKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If ((Key = VK_return) or (Key = VK_f2)) then
  	begin
   	DMESTOQUE.Alx.Close;
  		DMESTOQUE.Alx.SQL.Clear;
  		DMESTOQUE.Alx.SQL.Add('select * from aluguel');
		DMESTOQUE.Alx.SQL.Add('left join pedvenda on aluguel.cod_pedvenda = pedvenda.cod_pedvenda');
		DMESTOQUE.Alx.SQL.Add('left join equipamento on aluguel.cod_equipamento = equipamento.cod_equipamento');
       DMESTOQUE.Alx.SQL.Add('where pedvenda.numped ='+ EdPedVendaTP.Text);
       DMESTOQUE.Alx.Open;
   end;
end;

procedure TFAluguel.EdCodAluguelTPKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If ((Key = VK_return) or (Key = VK_f2)) then
  	begin
   	DMESTOQUE.Alx.Close;
  		DMESTOQUE.Alx.SQL.Clear;
  		DMESTOQUE.Alx.SQL.Add('select * from aluguel');
		DMESTOQUE.Alx.SQL.Add('left join pedvenda on aluguel.cod_pedvenda = pedvenda.cod_pedvenda');
		DMESTOQUE.Alx.SQL.Add('left join equipamento on aluguel.cod_equipamento = equipamento.cod_equipamento');
       DMESTOQUE.Alx.SQL.Add('where equipamento.num_frota ='+ EdCodAluguelTP.Text);
       DMESTOQUE.Alx.Open;
   end;
end;

procedure TFAluguel.EdNomeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If ((Key = VK_return) or (Key = VK_f2)) then
  	begin
   	DMESTOQUE.Alx.Close;
  		DMESTOQUE.Alx.SQL.Clear;
  		DMESTOQUE.Alx.SQL.Add('select * from aluguel');
		DMESTOQUE.Alx.SQL.Add('left join pedvenda on aluguel.cod_pedvenda = pedvenda.cod_pedvenda');
		DMESTOQUE.Alx.SQL.Add('left join equipamento on aluguel.cod_equipamento = equipamento.cod_equipamento');
       DMESTOQUE.Alx.SQL.Add('where upper(pedvenda.nomecli) like upper('+#39+ EdNome.Text +'%'+#39+')');
       DMESTOQUE.Alx.Open;
   end;
end;

//Samuel Fabricio Wink - 10/3/2009: gera relatório de aluguel
Function TFAluguel.ImpAluguel(tipo: String; dia: string): Boolean;
var
	recebe : String;
begin
	//Samuel Fabricio Wink - 10/3/2009: FILTRA LOJA PARA PEGAR AS INFORMAÇOES
   If FiltraTabela(DMMacs.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '')=True then
   	begin
         DMMACS.TLOJA.Edit;
         DMMACS.TLoja.FieldByName('TMP2').AsString:='';
         DMMACS.TLoja.Post;
         DMMACS.Transaction.CommitRetaining;
         FiltraTabela(DMMacs.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');

         //Samuel Fabricio Wink - 10/3/2009: faz junção das tabelas
         DMESTOQUE.Alx.Close;
         DMESTOQUE.Alx.SQL.Clear;
         DMESTOQUE.Alx.SQL.Add('select  aluguel.cod_aluguel, aluguel.cod_equipamento, aluguel.cod_pedvenda, aluguel.dtsaida, aluguel.tempoaluguel, aluguel.dtdevolucao, aluguel.valor, aluguel.status,');
         DMESTOQUE.Alx.SQL.Add('equipamento.cod_equipamento, equipamento.descricao, equipamento.num_frota,');
         DMESTOQUE.Alx.SQL.Add('pedvenda.cod_pedvenda, pedvenda.nomecli');
         DMESTOQUE.Alx.SQL.Add('from aluguel');
         DMESTOQUE.Alx.SQL.add('left join pedvenda on aluguel.cod_pedvenda = pedvenda.cod_pedvenda');
         DMESTOQUE.Alx.SQL.add('left join equipamento on aluguel.cod_equipamento = equipamento.cod_equipamento');

         //Samuel Fabricio Wink - 10/3/2009: verifica qual é o tipo do relatório
         if tipo = 'vencidos' then
             begin
                 //Samuel Fabricio Wink - 10/3/2009: segundo tipo realiza o where
                 DMESTOQUE.Alx.SQL.add('where aluguel.dtdevolucao < ' + #39 + dia + #39 + ' and aluguel.status <> 0');
                 DMESTOQUE.Alx.Open;

                 recebe := 'Alugueis vencidos.';
             end
         else
             begin
                 if tipo = 'avencer' then
                     begin
                         //Samuel Fabricio Wink - 10/3/2009: segundo tipo realiza o where
                         DMESTOQUE.Alx.SQL.add('where aluguel.dtdevolucao > ' + #39 + dia + #39 + ' and aluguel.status <> 0');
                         DMESTOQUE.Alx.Open;

                         recebe := 'Alugueis à vencer.';
                     end
                 else
                     begin
                         //Samuel Fabricio Wink - 10/3/2009: segundo tipo realiza o where
                         DMESTOQUE.Alx.SQL.add('where aluguel.dtdevolucao = ' + #39 + dia + #39 + ' and aluguel.status <> 0');
                         DMESTOQUE.Alx.Open;

                         recebe := 'Alugueis que vencem hoje.';
                     end;
             end;

         //Samuel Fabricio Wink - 10/3/2009: grava o tipo de filtro
         DMMACS.TMP.Close;
         DMMACS.TMP.SQL.Clear;
         DMMACS.TMP.SQL.Add('delete from tmp');
         DMMACS.TMP.ExecSQL;
         DMMACS.Transaction.CommitRetaining;

         FiltraTabela(DMMACS.TMP, 'tmp', '', '', '');
         DMMACS.TMP.Edit;
         DMMACS.TMP.FieldByName('desc3').AsString := recebe;
         DMMACS.TMP.Post;
         DMMACS.Transaction.CommitRetaining;
         FiltraTabela(DMMACS.TMP, 'tmp', '', '', '');

         //Samuel Fabricio Wink - 10/3/2009: gera o relatório
         FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfAluguelConstrutora.frf');

         //Samuel Fabricio Wink - 10/3/2009: abre o relatorio
         FSRel.ShowReport;
       end;
end;

procedure TFAluguel.BtnRelatorioClick(Sender: TObject);
begin
  PMRel.Popup(Left+PConsulta.left+Painel.left+ BtnRelatorio.Left, top+PConsulta.Top+Painel.top+BtnRelatorio.Top+BtnRelatorio.Height);
end;

procedure TFAluguel.AlVencidoClick(Sender: TObject);
begin
	ImpAluguel('vencidos', FormatDateTime('mm/dd/yyyy',Date()));
end;

procedure TFAluguel.AlaVencerClick(Sender: TObject);
begin
	ImpAluguel('avencer', FormatDateTime('mm/dd/yyyy',Date()));
end;

procedure TFAluguel.AlDiaClick(Sender: TObject);
begin
	ImpAluguel('nvencidos', FormatDateTime('mm/dd/yyyy',Date()));
end;

end.
