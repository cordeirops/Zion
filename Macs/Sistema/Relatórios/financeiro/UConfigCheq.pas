unit UConfigCheq;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPadrao, Buttons, StdCtrls, DrLabel, jpeg, ExtCtrls, Grids,
  DBGrids, Mask, DBCtrls, DBColorEdit, TFlatEditUnit, EditFloat;

type
  TFConfCheque = class(TFPadrao)
    DBGrid1: TDBGrid;
    Label1: TLabel;
    GroupBox1: TGroupBox;
    BtnNovo: TBitBtn;
    BtnApagar: TBitBtn;
    BtnCancelar: TBitBtn;
    BtnGravar: TBitBtn;
    Label2: TLabel;
    BBEditar: TBitBtn;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    DBDesc: TDBColorEdit;
    GroupBox3: TGroupBox;
    EdAltPag: TFlatEdit;
    EdLarPag: TFlatEdit;
    Label4: TLabel;
    Label5: TLabel;
    GroupBox4: TGroupBox;
    EdQtdChequePag: TFlatEdit;
    Label6: TLabel;
    GroupBox5: TGroupBox;
    Label7: TLabel;
    EdEnt_linha: TFlatEdit;
    GroupBox6: TGroupBox;
    Label9: TLabel;
    EdLinha_ini: TFlatEdit;
    Label10: TLabel;
    Label11: TLabel;
    CBCampo: TComboBox;
    EdLinha: TFloatEdit;
    Edcoluna: TFloatEdit;
    CBNome_Fonte: TComboBox;
    EdFonte: TFloatEdit;
    Edcampo: TFloatEdit;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    DBGrid2: TDBGrid;
    BBExcluir: TBitBtn;
    BBInserir: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure BtnApagarClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure BBEditarClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure BBInserirClick(Sender: TObject);
    procedure BBExcluirClick(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    // seleciona dados das configurações da impressora
    procedure Filtra_Dados;
    // seleciona dados dos itens da impressora
    procedure Seleciona_configuracao;
    // distribui os dados nos flat's
    procedure Distribui_dados;
    // desativa campos ate clicar em EDITAR
    procedure Desativa_Campos;
    // ativa todos os campos que estavam desativados
    procedure Ativa_Campos;
    // qdo clica em NOVO limpa todos os campos
    procedure Limpa_Campos;

  end;

var
  FConfCheque: TFConfCheque;

implementation

uses UDMMacs, UDMFinanc, DB, UMensagem, UMessage, Alxor32, AlxMessage;


{$R *.dfm}

// desativa campos
procedure TFConfCheque.Desativa_Campos;
begin
   BBEditar.Enabled := false;
   EdAltPag.Enabled := false;
   EdLarPag.Enabled := false;
   EdQtdChequePag.Enabled := false;
   EdEnt_linha.Enabled := false;
   EdLinha_ini.Enabled := false;
   BtnGravar.Enabled := FALSE;
   BtnCancelar.Enabled := FALSE;
   BBInserir.Enabled := false;
   BBExcluir.Enabled := false;
   DBDesc.Enabled := false;
end;

// qdo clica em NOVO limpa todos os campos
procedure TFConfCheque.Limpa_Campos;
begin
   DBDesc.Text := '';
   EdAltPag.Text := '';
   EdLarPag.Text := '';
   EdQtdChequePag.Text := '';
   EdEnt_linha.Text := '';
   EdEnt_linha.Text := '';
   EdLinha_ini.Text := '';;
   CBCampo.Text := '';
   EdLinha.Text := '';
   edcoluna.Text := '';
   CBNome_Fonte.Text := '';
   EdFonte.Text := '';
   Edcampo.Text := '';

end;

// ativa todos os campos que estavam desativados
procedure TFConfCheque.Ativa_Campos;
begin
   BBEditar.Enabled := true;
   EdAltPag.Enabled := true;
   EdLarPag.Enabled := true;
   EdQtdChequePag.Enabled := true;
   EdEnt_linha.Enabled := true;
   EdLinha_ini.Enabled := true;
   BtnGravar.Enabled := true;
   BtnCancelar.Enabled := true;
   BBInserir.Enabled := true;
   BBExcluir.Enabled := true;
   DBDesc.Enabled := true;
end;

// seleciona dados das configurações da impressora
procedure TFConfCheque.Filtra_Dados;
begin
   DMMACS.TConfigCheque.Close;
   DMMACS.TConfigCheque.SQL.Clear;
   DMMACS.TConfigCheque.SQL.Add('select * from configcheque');
   DMMACS.TConfigCheque.Open;
end;

// seleciona dados dos itens da impressora
procedure TFConfCheque.Seleciona_configuracao;
begin
   DMMACS.TItensCheque.Close;
   DMMACS.TItensCheque.SQL.Clear;
   DMMACS.TItensCheque.SQL.Add('select * from ITENSCONFIG_CHEQUE where ITENSCONFIG_CHEQUE.cod_configcheque = :codigo');
   DMMACS.TItensCheque.ParamByName('codigo').AsString := DMMACS.TConfigCheque.FieldByName('cod_configcheque').AsString;
   DMMACS.TItensCheque.Open;
end;

// distribui dados nos flatEdit's
procedure TFConfCheque.Distribui_dados;
begin
   EdAltPag.Text := DMMACS.TConfigCheque.FieldByName('altpag').AsString;
   EdLarPag.Text := DMMACS.TConfigCheque.FieldByName('largpag').AsString;
   EdQtdChequePag.Text := DMMACS.TConfigCheque.FieldByName('qtdchequepag').AsString;
   EdEnt_linha.Text := DMMACS.TConfigCheque.FieldByName('ent_linha').AsString;
   EdLinha_ini.Text := DMMACS.TConfigCheque.FieldByName('linha_ini').AsString;
end;

procedure TFConfCheque.FormActivate(Sender: TObject);
var
I : integer;
begin
  inherited;
	Caption:='Config. de Cheques';  
   //Passa fontes do windows para componente
   CBNome_Fonte.Items.Clear;
   For I := 0 to Screen.Fonts.Count - 1 do
  	begin
   	CBNome_Fonte.Items.Add(Screen.Fonts[I]);
   End;

   // seleciona Configuração
   Filtra_Dados;
   // seleciona itens da configuração
   Seleciona_configuracao;
   // distribui os dados nos flatEdit's
   Distribui_dados;
   // desativa campos para não serem alterados ate clicar em EDITAR
   Desativa_Campos;
   BtnNovo.SetFocus;
end;

procedure TFConfCheque.BtnApagarClick(Sender: TObject);
begin
  inherited;
   If Mensagem('   ATENÇÃO   ', 'Tem certeza que deseja remover a configuração '+DMMACS.TConfigCheque.fieldbyname('descricao').AsString + ' ?' , '', 2, 3, False, 'E') = 3
   Then Begin
       Exit;
   End
   Else Begin
       DMMACS.TItensCheque.Close;
       DMMACS.TItensCheque.SQL.Clear;
       DMMACS.TItensCheque.SQL.Add('delete from ITENSCONFIG_CHEQUE where ITENSCONFIG_CHEQUE.cod_configcheque = :codigo');
       DMMACS.TItensCheque.ParamByName('codigo').AsString := DMMACS.TConfigCheque.FieldByName('cod_configcheque').AsString;
       DMMACS.TItensCheque.ExecSQL;
       DMMACS.TConfigCheque.Delete;
       DMMACS.Transaction.CommitRetaining;
       // procedure para desativar botões e campos
       Desativa_Campos;
       // LIMPA TODOS OS CAMPOS
       Limpa_Campos;
   End;
end;

procedure TFConfCheque.DBGrid1CellClick(Column: TColumn);
begin
  inherited;
   // seleciona itens da configuração
   Seleciona_configuracao;
   // distribui os dados nos flatEdit's
   Distribui_dados;

   BBEditar.Enabled := true;


end;

procedure TFConfCheque.BBEditarClick(Sender: TObject);
begin
  inherited;
   // ativa todos os campos que estavam desativados
   Ativa_Campos;
end;

procedure TFConfCheque.BtnGravarClick(Sender: TObject);
begin
  inherited;

   If (DBDesc.Text = '')
   Then Begin
       Mensagem('   A T E N Ç Ã O   ', 'Informe o nome da configuração.', '', 1, 1, False, 'i');
       DBDesc.SetFocus;
       Exit;
   End;

   DMMACS.TConfigCheque.Edit;
   DMMACS.TConfigCheque.FieldByName('altpag').AsString := EdAltPag.Text;
   DMMACS.TConfigCheque.FieldByName('largpag').AsString := EdLarPag.Text;
   DMMACS.TConfigCheque.FieldByName('qtdchequepag').AsString := EdQtdChequePag.Text;
   DMMACS.TConfigCheque.FieldByName('ent_linha').AsString := EdEnt_linha.Text;
   DMMACS.TConfigCheque.FieldByName('linha_ini').AsString := EdLinha_ini.Text;
   DMMACS.TConfigCheque.Post;
   // procedure para desativar todos os botões e campos
   Desativa_Campos;

   CBCampo.Text := '';
   EdLinha.Text := '';
   edcoluna.Text := '';
   CBNome_Fonte.Text := '';
   EdFonte.Text := '';
   Edcampo.Text := ''; 
end;

// insere os itens
procedure TFConfCheque.BBInserirClick(Sender: TObject);
begin
  inherited;

   If (CBCampo.Text = '')
   Then Begin
       Mensagem('   A T E N Ç Ã O   ', 'Informe o nome do campo.', '', 1, 1, False, 'i');
       CBCampo.SetFocus;
       Exit;
   End;

   If (CBNome_Fonte.Text = '')
   Then Begin
       Mensagem('   A T E N Ç Ã O   ', 'Informe o nome da fonte.', '', 1, 1, False, 'i');
       CBNome_Fonte.SetFocus;
       Exit;
   End;

   // procura nos itens da configuração se jah existe algum igual
   If FiltraTabela(DMMACS.TALX,'itensconfig_cheque','campo',CBCampo.Text,'') = true
   Then Begin
       Mensagem(' A T E N Ç Ã O ', 'O campo "'+ CBCampo.Text + '" já existe. Por favor, informe outro.', '', 1, 1, False, 'E');
       Exit;
   End;

   InserReg(DMMACS.TItensCheque , 'itensconfig_cheque', 'cod_itensconfig_cheque');
   DMMACS.TItensCheque.FieldByName('campo').AsString := CBCampo.Text;
   DMMACS.TItensCheque.FieldByName('linha').AsString := EdLinha.Text;
   DMMACS.TItensCheque.FieldByName('coluna').AsString := edcoluna.Text;
   DMMACS.TItensCheque.FieldByName('nome_fonte').AsString := CBNome_Fonte.Text;
   DMMACS.TItensCheque.FieldByName('tamanho_fonte').AsString := EdFonte.Text;
   DMMACS.TItensCheque.FieldByName('tamanho_campo').AsString := Edcampo.Text;
   DMMACS.TItensCheque.FieldByName('cod_configcheque').AsString := DMMACS.TConfigCheque.FieldByName('cod_configcheque').AsString;
   DMMACS.TItensCheque.Post;
   DMMACS.Transaction.CommitRetaining;

   CBCampo.Text := '';
   EdLinha.Text := '';
   edcoluna.Text := '';
   CBNome_Fonte.Text := '';
   EdFonte.Text := '';
   Edcampo.Text := '';

end;

procedure TFConfCheque.BBExcluirClick(Sender: TObject);
begin
  inherited;
   CBCampo.Text := DMMACS.TItensCheque.FieldByName('campo').AsString;
   EdLinha.Text := DMMACS.TItensCheque.FieldByName('linha').AsString;
   edcoluna.Text := DMMACS.TItensCheque.FieldByName('coluna').AsString;
   CBNome_Fonte.Text := DMMACS.TItensCheque.FieldByName('nome_fonte').AsString;
   EdFonte.Text := DMMACS.TItensCheque.FieldByName('tamanho_fonte').AsString;
   Edcampo.Text := DMMACS.TItensCheque.FieldByName('tamanho_campo').AsString;
   DMMACS.TItensCheque.Delete;
   DMMACS.Transaction.CommitRetaining;
end;

procedure TFConfCheque.BtnNovoClick(Sender: TObject);
begin
  inherited;
  // ativa todos os campos
   Ativa_Campos;

   DMMACS.TConfigCheque.Insert;
   InserReg(DMMACS.TConfigCheque, 'CONFIGCHEQUE', 'COD_CONFIGCHEQUE');

   // seleciona itens da configuração
   Seleciona_configuracao;
   
   // qdo clica em NOVO limpa todos os campos
   Limpa_Campos;
   DBDesc.SetFocus;
end;

procedure TFConfCheque.BtnCancelarClick(Sender: TObject);
begin
  inherited;
  If Mensagem('   A T E N Ç Ã O   ', 'Deseja salvar as alterações ?' , '', 2, 3, False, 'A') = 3
  Then Begin
      Close; 
  End
  Else Begin
      BtnGravar.Click();
  End;

end;

end.
