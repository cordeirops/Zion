unit URelEquipe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPadraoRelatorio, FR_DSet, FR_DBSet, FR_Class, StdCtrls,
  Buttons, DrLabel, jpeg, ExtCtrls, Mask, UFrmBusca, ColorMaskEdit;

type
  TFRelEquipe = class(TFPadraoRelatorio)
    GroupBox5: TGroupBox;
    Label1: TLabel;
    Label4: TLabel;
    EdDataIni: TMaskEdit;
    EdDataFim: TMaskEdit;
    RGESCOLHA: TRadioGroup;
    FrmEquipeIni: TFrmBusca;
    FrmEquipeFim: TFrmBusca;
    FrmPessoaIni: TFrmBusca;
    FrmPessoaFim: TFrmBusca;
    EDPlaca: TColorMaskEdit;
    Label2: TLabel;
    LUZMINUS: TShape;
    BTNMINUS: TBitBtn;
    RGTipoData: TRadioGroup;
    procedure FrmEquipeIniBTNOPENClick(Sender: TObject);
    procedure FrmEquipeFimBTNOPENClick(Sender: TObject);
    procedure FrmEquipeIniBTNMINUSClick(Sender: TObject);
    procedure FrmEquipeFimBTNMINUSClick(Sender: TObject);
    procedure FrmEquipeIniEDCodigoExit(Sender: TObject);
    procedure FrmEquipeIniEDCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FrmPessoaIniBTNOPENClick(Sender: TObject);
    procedure FrmPessoaFimBTNOPENClick(Sender: TObject);
    procedure FrmPessoaIniBTNMINUSClick(Sender: TObject);
    procedure FrmPessoaFimBTNMINUSClick(Sender: TObject);
    procedure FrmPessoaIniEDCodigoExit(Sender: TObject);
    procedure FrmPessoaIniEDCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FrmEquipeFimEDCodigoExit(Sender: TObject);
    procedure FrmEquipeFimEDCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FrmPessoaFimEDCodigoExit(Sender: TObject);
    procedure FrmPessoaFimEDCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnVisualizarClick(Sender: TObject);
    procedure EDPlacaExit(Sender: TObject);
    procedure BTNMINUSClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
   // busca dados de equipe
    Procedure BuscaEquipe;
    // seleciona dado de cliente
    Procedure BuscsCliente;
    // GERA RELATORIO DE EQUIPE
    Procedure RelatorioEquipe;

  end;

var
  FRelEquipe: TFRelEquipe;

implementation

uses Alxor32, UCadEquipe, UDMPessoa, UMenu, UCliente, UDMEstoque, UDMMacs,
  AlxMessage;

{$R *.dfm}

procedure TFRelEquipe.FrmEquipeIniBTNOPENClick(Sender: TObject);
begin
  inherited;
   // abre formulario de equipe
   If AbrirForm(TFCadEquipe,FCadEquipe,1)='Selected'
   Then Begin
       FrmEquipeIni.EDCodigo.Text := DMPESSOA.TALX1.FieldByName('cod_equipe').AsString;
       FrmEquipeIni.EdDescricao.Text := DMPESSOA.TALX1.FieldByname('descricao').AsString;
       FrmEquipeFim.EDCodigo.Text := DMPESSOA.TALX1.FieldByName('cod_equipe').AsString;
       FrmEquipeFim.EdDescricao.Text := DMPESSOA.TALX1.FieldByname('descricao').AsString;
   End;
end;

procedure TFRelEquipe.FrmEquipeFimBTNOPENClick(Sender: TObject);
begin
  inherited;
   // abre formulario de equipe
   If AbrirForm(TFCadEquipe,FCadEquipe,1)='Selected'
   Then Begin
       FrmEquipeFim.EDCodigo.Text := DMPESSOA.TALX1.FieldByName('cod_equipe').AsString;
       FrmEquipeFim.EdDescricao.Text := DMPESSOA.TALX1.FieldByname('descricao').AsString;
   End;

end;

procedure TFRelEquipe.FrmEquipeIniBTNMINUSClick(Sender: TObject);
begin
  inherited;
   // limpa os dados da equipe inicial
   FrmEquipeIni.EdDescricao.Text := '';               
   FrmEquipeIni.EDCodigo.Text := '';

end;

procedure TFRelEquipe.FrmEquipeFimBTNMINUSClick(Sender: TObject);
begin
  inherited;
   // limpa os dados da equipe final
   FrmEquipeFim.EdDescricao.Text :='';
   FrmEquipeFim.EDCodigo.Text := '';
end;

// busca as equipes
procedure TFRelEquipe.BuscaEquipe;
begin
   // soh entra na condição se foi informado um valor
   If FrmEquipeIni.EDCodigo.Text <> ''
   Then Begin

       // busca na tabel equipe todos os dados que tenham o codigo igual ao informado no formulario
       DMPESSOA.TEquipe.Close;
       DMPESSOA.TEquipe.SQL.Clear;
       DMPESSOA.TEquipe.SQL.Add('select * from equipe where equipe.cod_equipe = :codigo');
       DMPESSOA.TEquipe.ParamByName('codigo').AsString := FrmEquipeIni.EDCodigo.Text;
       DMPESSOA.TEquipe.Open;

       // se possui equipe com mesmo codigo, os dois formularios de equipes vao receber valor
       If Not DMPESSOA.TEquipe.IsEmpty
       Then Begin
           FrmEquipeIni.EDCodigo.Text := DMPESSOA.TEquipe.FieldByName('cod_equipe').AsString;
           FrmEquipeIni.EdDescricao.Text := DMPESSOA.TEquipe.FieldByname('descricao').AsString;
           FrmEquipeFim.EDCodigo.Text := DMPESSOA.TEquipe.FieldByName('cod_equipe').AsString;
           FrmEquipeFim.EdDescricao.Text := DMPESSOA.TEquipe.FieldByname('descricao').AsString;

           FrmPessoaIni.BTNOPEN.SetFocus;
       End
       Else Begin
           FrmEquipeIni.EDCodigo.SetFocus;
       End;
   End;


end;

procedure TFRelEquipe.FrmEquipeIniEDCodigoExit(Sender: TObject);
begin
  inherited;
   // busca as equipes
   BuscaEquipe;

end;

procedure TFRelEquipe.FrmEquipeIniEDCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
   // se foi pressionado ENTER entra na condição
   If Key = 13
   Then Begin
       // busca as equipes
       BuscaEquipe;
   End;
end;

procedure TFRelEquipe.FrmPessoaIniBTNOPENClick(Sender: TObject);
begin
  inherited;
  	//LIBERA TODOS OS CLIENTES PARA CONSUTA
  	filtraTabela(DMPESSOA.WCliente, 'VWCLIENTE', '', '', '');
  	If AbrirForm(TFCliente, FCliente, 1)='Selected'
	Then Begin
       FrmPessoaIni.EdDescricao.Text:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
       FrmPessoaIni.EDCodigo.text:=DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString;
       FrmPessoaIni.Repaint;
       FrmPessoaFim.EdDescricao.Text:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
       FrmPessoaFim.EDCodigo.text:=DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString;
       FrmPessoaFim.Repaint;
	End;

end;

procedure TFRelEquipe.FrmPessoaFimBTNOPENClick(Sender: TObject);
begin
  inherited;
  	//LIBERA TODOS OS CLIENTES PARA CONSUTA
  	filtraTabela(DMPESSOA.WCliente, 'VWCLIENTE', '', '', '');
  	If AbrirForm(TFCliente, FCliente, 1)='Selected'
	Then Begin
       FrmPessoaFim.EdDescricao.Text:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
       FrmPessoaFim.EDCodigo.text:=DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString;
       FrmPessoaFim.Repaint;
	End;

end;

procedure TFRelEquipe.FrmPessoaIniBTNMINUSClick(Sender: TObject);
begin
  inherited;
   // limpa as edits
   FrmPessoaIni.EdDescricao.Text :='';
   FrmPessoaIni.EDCodigo.Text := '';
end;

procedure TFRelEquipe.FrmPessoaFimBTNMINUSClick(Sender: TObject);
begin
  inherited;
   // limpa as edts
   FrmPessoaFim.EdDescricao.Text :='';
   FrmPessoaFim.EDCodigo.Text := '';

end;
// seleciona dado de cliente
procedure TFRelEquipe.BuscsCliente;
begin
   If FrmPessoaIni.EDCodigo.Text <> ''
   Then Begin
       // seleciona dados de cliente q tenha o mesmo codigo
       FiltraTabela(DMPESSOA.WCliente,'VWCLIENTE','COD_INTERNO',FrmPessoaIni.EDCodigo.Text,'');

       If Not DMPESSOA.WCliente.IsEmpty
       Then Begin
           FrmPessoaIni.EdDescricao.Text := DMPESSOA.WCliente.FieldByName('nome').AsString;
           FrmPessoaFim.EdDescricao.Text := DMPESSOA.WCliente.FieldByName('nome').AsString;
           FrmPessoaFim.EDCodigo.Text := FrmPessoaIni.EDCodigo.Text;

           BtnVisualizar.SetFocus;
       End;

   End;

end;

procedure TFRelEquipe.FrmPessoaIniEDCodigoExit(Sender: TObject);
begin
  inherited;
   // seleciona dado de cliente
   BuscsCliente;
end;

procedure TFRelEquipe.FrmPessoaIniEDCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
   // se pressionado ENTER entra na condição
   If Key = 13
   Then Begin
       // seleciona dado de cliente
       BuscsCliente;
   End;
end;

procedure TFRelEquipe.FrmEquipeFimEDCodigoExit(Sender: TObject);
begin
  inherited;
   // soh entra na condição se foi informado um valor
   If FrmEquipeFim.EDCodigo.Text <> ''
   Then Begin

       // busca na tabel equipe todos os dados que tenham o codigo igual ao informado no formulario
       DMPESSOA.TEquipe.Close;
       DMPESSOA.TEquipe.SQL.Clear;
       DMPESSOA.TEquipe.SQL.Add('select * from equipe where equipe.cod_equipe = :codigo');
       DMPESSOA.TEquipe.ParamByName('codigo').AsString := FrmEquipeFim.EDCodigo.Text;
       DMPESSOA.TEquipe.Open;

       // se possui equipe com mesmo codigo, os dois formularios de equipes vao receber valor
       If Not DMPESSOA.TEquipe.IsEmpty
       Then Begin
           FrmEquipeFim.EDCodigo.Text := DMPESSOA.TEquipe.FieldByName('cod_equipe').AsString;
           FrmEquipeFim.EdDescricao.Text := DMPESSOA.TEquipe.FieldByname('descricao').AsString;

           FrmPessoaIni.BTNOPEN.SetFocus;
       End;
   End;

end;

procedure TFRelEquipe.FrmEquipeFimEDCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
   // pressionado ENTER
   If key = 13
   Then Begin
       // soh entra na condição se foi informado um valor
       If FrmEquipeFim.EDCodigo.Text <> ''
       Then Begin

           // busca na tabel equipe todos os dados que tenham o codigo igual ao informado no formulario
           DMPESSOA.TEquipe.Close;
           DMPESSOA.TEquipe.SQL.Clear;
           DMPESSOA.TEquipe.SQL.Add('select * from equipe where equipe.cod_equipe = :codigo');
           DMPESSOA.TEquipe.ParamByName('codigo').AsString := FrmEquipeFim.EDCodigo.Text;
           DMPESSOA.TEquipe.Open;

           // se possui equipe com mesmo codigo, os dois formularios de equipes vao receber valor
           If Not DMPESSOA.TEquipe.IsEmpty
           Then Begin
               FrmEquipeFim.EDCodigo.Text := DMPESSOA.TEquipe.FieldByName('cod_equipe').AsString;
               FrmEquipeFim.EdDescricao.Text := DMPESSOA.TEquipe.FieldByname('descricao').AsString;

               FrmPessoaIni.BTNOPEN.SetFocus;
           End;
       End;

   End;

end;

procedure TFRelEquipe.FrmPessoaFimEDCodigoExit(Sender: TObject);
begin
  inherited;
   // o codigo do formulario do cliente final deve possuir um valor
   If FrmPessoaFim.EDCodigo.Text <> ''
   Then Begin
       // seleciona dados de cliente q tenha o mesmo codigo
       FiltraTabela(DMPESSOA.WCliente,'VWCLIENTE','COD_INTERNO',FrmPessoaFim.EDCodigo.Text,'');

       If Not DMPESSOA.WCliente.IsEmpty
       Then Begin
           FrmPessoaFim.EdDescricao.Text := DMPESSOA.WCliente.FieldByName('nome').AsString;
           FrmPessoaFim.EDCodigo.Text := DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString;

           BtnVisualizar.SetFocus;
       End;

   End;

end;

procedure TFRelEquipe.FrmPessoaFimEDCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
   // tecla ENTER
   If Key = 13
   Then Begin
       // o codigo do formulario do cliente final deve possuir um valor
       If FrmPessoaFim.EDCodigo.Text <> ''
       Then Begin
           // seleciona dados de cliente q tenha o mesmo codigo
           FiltraTabela(DMPESSOA.WCliente,'VWCLIENTE','COD_INTERNO',FrmPessoaFim.EDCodigo.Text,'');

           If Not DMPESSOA.WCliente.IsEmpty
           Then Begin
               FrmPessoaFim.EdDescricao.Text := DMPESSOA.WCliente.FieldByName('nome').AsString;
               FrmPessoaFim.EDCodigo.Text := DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString;

               BtnVisualizar.SetFocus;
           End;
       End;    
   End;
end;

procedure TFRelEquipe.BtnVisualizarClick(Sender: TObject);
begin
  inherited;
   // GERA RELATORIO DE EQUIPE
   RelatorioEquipe;
end;

// GERA RELATORIO DE EQUIPE
procedure TFRelEquipe.RelatorioEquipe;
begin

   FiltraTabela(DMMACS.TLoja,'LOJA','COD_LOJA',FMenu.LCODLOJA.Caption,'');

   FiltraTabela(DMMACS.TEmpresa,'EMPRESA','COD_EMPRESA',DMMACS.TLoja.FieldByname('cod_empresa').AsString,'');

   DMESTOQUE.TRel.Close;
   DMESTOQUE.TRel.SQL.Clear;
   DMESTOQUE.TRel.SQL.Add('select despadic.cod_despadic, despadic.cod_gerador, despadic.despesa, despadic.qtd,');
   DMESTOQUE.TRel.SQL.Add('despadic.vlrfinal, despadic.vlrreal, despadic.cod_equipe, despadic.vlrtotfin, ordem.cod_ordem, ordem.numero, ordem.dtabert, ordem.dtfech, equipe.cod_equipe,');
   DMESTOQUE.TRel.SQL.Add('equipe.descricao AS EQUIPE, equipamento.cod_equipamento, equipamento.descricao as EQUIPAMENTO, equipamento.placa,');
   DMESTOQUE.TRel.SQL.Add('equipamento.num_frota, pessoa.cod_pessoa, pessoa.nome, cliente.cod_cliente, cliente.cod_pessoa ');
   DMESTOQUE.TRel.SQL.Add('from despadic');
   DMESTOQUE.TRel.SQL.Add('left join ordem on despadic.cod_gerador = ordem.cod_ordem');
   DMESTOQUE.TRel.SQL.Add('left join equipamento on ordem.cod_equipamento = equipamento.cod_equipamento');
   DMESTOQUE.TRel.SQL.Add('left join equipe on despadic.cod_equipe = equipe.cod_equipe');
   DMESTOQUE.TRel.SQL.Add('left join cliente on ordem.cod_cliente = cliente.cod_cliente');
   DMESTOQUE.TRel.SQL.Add('left join pessoa on cliente.cod_pessoa = pessoa.cod_pessoa');
   DMESTOQUE.TRel.SQL.Add('where (despadic.gerador = ' + #39 + 'ORDEM' + #39 + ')');

   DMMACS.TLoja.Edit;

   // caso a equipe final e inicial sejam diferentes
   If (FrmEquipeIni.EDCodigo.Text <> '') or (FrmEquipeFim.EDCodigo.Text <> '')
   Then Begin
       If FrmEquipeIni.EDCodigo.Text <> FrmEquipeFim.EDCodigo.Text
       Then Begin
           DMESTOQUE.TRel.SQL.Add('AND (equipe.descricao between :EQUIPE1 AND :EQUIPE2)');
           DMESTOQUE.TRel.ParamByName('equipe1').AsString := FrmEquipeIni.EdDescricao.Text;
           DMESTOQUE.TRel.ParamByName('equipe2').AsString := FrmEquipefim.EDDescricao.Text;
       End
       Else Begin
           DMESTOQUE.TRel.SQL.Add('AND (EQUIPE.COD_EQUIPE = :CODIGO)');
           DMESTOQUE.TRel.ParamByName('CODIGO').AsString := FrmEquipeIni.EDCodigo.Text;
       End;
   End;


   // verifica se o cliente inicial e final foi informado
   If (FrmPessoaIni.EdDescricao.Text <> '') and (FrmPessoaFim.EdDescricao.Text <> '')
   Then Begin
       // verifica se ~foi buscado o mesmo cliente
       If (FrmPessoaIni.EdDescricao.Text = FrmPessoaFim.EdDescricao.Text)
       Then Begin
           DMESTOQUE.TRel.SQL.Add('AND (pessoa.nome = :nome)');
           DMESTOQUE.TRel.ParamByName('nome').AsString := FrmPessoaIni.EdDescricao.Text;
           DMMACS.TLoja.FieldByName('TMP2').AsString := 'Pessoa: ' + FrmPessoaIni.EdDescricao.Text;
       End
       Else Begin
           DMESTOQUE.TRel.SQL.Add('AND (pessoa.nome Between :Nome1 and :Nome2)');
           DMESTOQUE.TRel.ParamByName('nome1').AsString := FrmPessoaIni.EdDescricao.Text;
           DMESTOQUE.TRel.ParamByName('nome2').AsString := FrmPessoaFim.EdDescricao.Text;
           DMMACS.TLoja.FieldByName('TMP2').AsString := 'Pessoa Ini.: ' + FrmPessoaIni.EdDescricao.Text + ' - Pessoa Fin.:' + FrmPessoaFim.EdDescricao.Text;
       End;
   End;

   // verifica se foi selecionado relatorio com ordem aberta ou fechada
   If RGESCOLHA.ItemIndex = 0
   Then Begin
       DMESTOQUE.TRel.SQL.Add('AND (ordem.STATUS = ' + #39 + 'ABERTO' + #39 + ')');
       DMMACS.TLoja.FieldByName('TMP1').AsString := 'Tipo: [Abertas]'
   End
   Else Begin
       DMESTOQUE.TRel.SQL.Add('AND (ordem.STATUS = ' + #39 + 'FECHADO' + #39 + ')');
       DMMACS.TLoja.FieldByName('TMP1').AsString := 'Tipo: [Fechadas]';
   End;

   // verifica se a data dos dois campos foram informadas
   If (EdDataIni.Text <> '  /  /    ') and (EdDataFim.Text <> '  /  /    ')
   Then Begin
       If RGTipoData.ItemIndex= 0 Then
           DMESTOQUE.TRel.SQL.Add('AND ( ORDEM.DTABERT Between :Data1 and :Data2 )')
       Else
           DMESTOQUE.TRel.SQL.Add('AND ( ORDEM.dtfech Between :Data1 and :Data2 )');       
       DMESTOQUE.TRel.ParamByName('data1').AsString := EdDataIni.Text;
       DMESTOQUE.TRel.ParamByName('data2').AsString := EdDataFim.Text;
       DMMACS.TLoja.FieldByName('TMP1').AsString := DMMACS.TLoja.FieldByName('TMP1').AsString + ' / Data Ini.:' + EdDataIni.Text + ' - Data Fin.:' + EdDataFim.Text;
   End;

   // caso o usuario tenha informado uma placa
   If EDPlaca.Text <> '   -    '
   Then Begin
       DMESTOQUE.TRel.SQL.Add('AND(equipamento.placa = :placa )');
       DMESTOQUE.TRel.ParamByName('placa').AsString := EDPlaca.Text;
   End;

   DMESTOQUE.TRel.SQL.Add('order by equipe.descricao,ordem.cod_ordem');

   DMESTOQUE.TRel.Open;

   If DMESTOQUE.TRel.IsEmpty
   Then Begin
       Mensagem('   A T E N Ç Ã O   ', 'O relatório retornou vazio','',1,1,false,'I');
       Exit;
   End;

   FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfRelEquipe.frf');
   FSRel.ShowReport;

end;

procedure TFRelEquipe.EDPlacaExit(Sender: TObject);
begin
  inherited;
   // FORMATANDO PARA LETRAS MAIUSCULAS
   If EDPlaca.Text <> '   -    '
   Then begin
       EDPlaca.Text := UpperCase(EDPlaca.Text);
   End;    

end;

procedure TFRelEquipe.BTNMINUSClick(Sender: TObject);
begin
  inherited;
   // limpda os dados da placa
   EDPlaca.Text := '';
end;

procedure TFRelEquipe.FormActivate(Sender: TObject);
begin
  inherited;
	 Caption:='Relatório de Equipe' ;
end;

end.


