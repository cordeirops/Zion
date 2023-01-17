unit UCadObra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadPadrao, Buttons, StdCtrls, DrLabel, jpeg, ExtCtrls, Grids,
  DBGrids, TFlatEditUnit;

type
  TFCadObra = class(TFCadPadrao)
    EdControleInterno: TFlatEdit;
    EdCodObra: TFlatEdit;
    EddescricaoObra: TFlatEdit;
    Label9: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    EdPesqDescricao: TFlatEdit;
    DBGObras: TDBGrid;
    procedure FormActivate(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure EdNomeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdPesqDescricaoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnConsultarClick(Sender: TObject);
    procedure BtnApagarClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    xcodobra : Integer; //Samuel Fabricio Wink - 10/2/2009: armazena o codigo da obra


    //Samuel Fabricio Wink - 11/2/2009: DECLARACAO DE PROCEDURES E FUNCOES
    //Samuel Fabricio Wink - 11/2/2009: atualiza DBGridCadastroPadrao
    procedure atualizaDBGObras;
  end;

var
  FCadObra: TFCadObra;

implementation

uses Alxor32, AlxMessage, UMensagem, UMessage, UDMSaida, Alxorprn, DB,
  Math;

{$R *.dfm}

//Samuel Fabricio Wink - 11/2/2009: atualiza grid principal
procedure TFCadObra.atualizaDBGObras;
begin
	FiltraTabela(DMSAIDA.TObra, 'obra', '', '', '');
end;

procedure TFCadObra.FormActivate(Sender: TObject);
begin
  inherited;
  //DBGObras.DataSource := DMSAIDA.DObra;
  atualizaDBGObras;
  XTabela := DMSAIDA.TObra;
  XSQLTABELA := 'OBRA';
  XPkTabela := 'COD_OBRA';
end;

procedure TFCadObra.BtnNovoClick(Sender: TObject);
begin
  inherited;
  	//Samuel Fabricio Wink - 10/2/2009: limpa campos e seta o focus
	EdControleInterno.Text := '';
   EdCodObra.Text := '';
   EddescricaoObra.Text := '';
   EdControleInterno.SetFocus;

   //Samuel Fabricio Wink - 10/2/2009: gera cod do novo registro
   xcodobra := InserReg(XTabela, XSQLTABELA, XPkTabela);

   //Samuel Fabricio Wink - 11/2/2009: insere pk da obra e mesmo numero em controle interno
   EdControleInterno.Text := IntToStr(xcodobra);
   EdCodObra.Text := IntToStr(xcodobra);
end;

procedure TFCadObra.EdNomeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If ((Key = VK_return) or (Key = VK_f2)) then
  	begin
   	Trim(EdNome.Text);
   	if(EdNome.Text <> '')then
       	begin
           	FiltraTabela(XTabela, 'obra', 'cod_interno', EdNome.Text, '');
           end
       else
       	atualizaDBGObras;
   end;
end;

procedure TFCadObra.EdPesqDescricaoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	If ((Key = VK_return) or (Key = VK_f2)) then
  	begin
   	Trim(EdPesqDescricao.Text);
   	if(EdPesqDescricao.Text <> '')then
       	begin
           	FiltraTabela(XTabela, 'obra', 'descricao', EdPesqDescricao.Text, '');
           end
       else
       	atualizaDBGObras;
   end;
end;

procedure TFCadObra.BtnConsultarClick(Sender: TObject);
begin
	Xtab := true;
	inherited;
	//Samuel Fabricio Wink - 11/2/2009: insere valores para update
   EdControleInterno.Text := DMSAIDA.TObra.FieldByName('cod_interno').AsString;
   EdCodObra.Text := DMSAIDA.TObra.FieldByName('cod_obra').AsString;
   EddescricaoObra.Text := DMSAIDA.TObra.FieldByName('descricao').AsString;
   EdControleInterno.SetFocus;
end;

procedure TFCadObra.BtnApagarClick(Sender: TObject);
begin
  inherited;
	If FiltraTabela(DMSAIDA.TPedV, 'pedvenda', 'cod_obra', DMSAIDA.TObra.FieldByName('cod_obra').AsString, '') = false then
   	begin
       	DMSAIDA.TObra.Close;
           DMSAIDA.TObra.SQL.Clear;
           DMSAIDA.TObra.SQL.Add('delete from obra where obra.cod_obra =' + DMSAIDA.TObra.FieldByName('cod_obra').AsString);
           DMSAIDA.TObra.ExecSQL;
           DMSAIDA.IBT.CommitRetaining;
       end
   else
   	Mensagem('ATENÇÃO', 'Não é possível deletar a obra selecionado pois esta ligada a um pedido de venda!', '', 1, 1, False, 'a');

   atualizaDBGObras;
end;

procedure TFCadObra.BtnGravarClick(Sender: TObject);
begin
  Trim(EdControleInterno.Text);
  if EdControleInterno.Text = '' then
  	begin
   	Mensagem('ATENÇÃO', 'Controle Interno vazio, favor insira um número válido para controle interno!', '', 1, 1, False, 'a');
       EdControleInterno.Text := '';
       EdControleInterno.SetFocus;
   end
  else
  	begin
     //Samuel Fabricio Wink - 11/2/2009: verifica se naum existe outra obra com o mesmo cod_interno
     if FiltraTabela(DMSAIDA.TAlx, 'obra', 'cod_interno', EdControleInterno.Text, '') = false then
         begin
             //Samuel Fabricio Wink - 11/2/2009: inica processo de gracação
             DMSAIDA.TObra.FieldByName('cod_interno').AsString := EdControleInterno.Text;
   		  DMSAIDA.TObra.FieldByName('cod_obra').AsString := EdCodObra.Text;
   		  DMSAIDA.TObra.FieldByName('descricao').AsString := EddescricaoObra.Text;
             DMSAIDA.TObra.Post;
             DMSAIDA.IBT.CommitRetaining;

			  //Samuel Fabricio Wink - 11/2/2009: traz o outro form para frente
             inherited;
         end
     else
         begin
             Mensagem('ATENÇÃO', 'Existe obra com mesmo número de controle interno, favor insira outro número de controle interno!', '', 1, 1, False, 'a');
             EdControleInterno.Text := '';
             EdControleInterno.SetFocus;
         end;
   end;
end;

end.
