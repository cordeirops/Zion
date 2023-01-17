unit UConfigDup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPadrao, StdCtrls, TFlatEditUnit, Mask, DBCtrls, DBColorEdit,
  Buttons, Grids, DBGrids, DrLabel, jpeg, ExtCtrls, EditFloat;

type
  TFConfigDup = class(TFPadrao)
    DBGridCadastroPadrao: TDBGrid;
    GroupBox2: TGroupBox;
    BtnNovo: TBitBtn;
    BtnApagar: TBitBtn;
    BtnGravar: TBitBtn;
    BtnCancelar: TBitBtn;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Shape1: TShape;
    Label2: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    Shape2: TShape;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Shape3: TShape;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Shape4: TShape;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Shape5: TShape;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    DBDesc: TDBColorEdit;
    EdAltPag: TFlatEdit;
    EdLargPag: TFlatEdit;
    EdQtdEtqPag: TFlatEdit;
    EdQtdColPag: TFlatEdit;
    EdIntervLin: TFlatEdit;
    EdIntervColuna: TFlatEdit;
    EdLargCB: TFlatEdit;
    EdCompCB: TFlatEdit;
    EdIniImpLin: TFlatEdit;
    EdIniImpCol: TFlatEdit;
    cbalinhar: TComboBox;
    DBGrid1: TDBGrid;
    Label32: TLabel;
    Label25: TLabel;
    CBCampo: TComboBox;
    DBGrid2: TDBGrid;
    Label26: TLabel;
    EdLinha: TFloatEdit;
    Label27: TLabel;
    edcoluna: TFloatEdit;
    Label31: TLabel;
    DbFonte: TComboBox;
    Label29: TLabel;
    Label28: TLabel;
    EdFonte: TFloatEdit;
    Label30: TLabel;
    Edcampo: TFloatEdit;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnApagarClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure EdAltPagEnter(Sender: TObject);
  private
    { Private declarations }
	Procedure AtivBtn;
	Procedure FiltraCampos;
	//Informa as edits os valores da tabela
	Procedure GetFieldsEdits;
  public
    { Public declarations }
  end;

var
  FConfigDup: TFConfigDup;

implementation

uses UDMMacs, Alxor32, AlxMessage;

{$R *.dfm}

//Informa as edits os valores da tabela
Procedure TFConfigDup.GetFieldsEdits;
Begin
	EdAltPag.Text:=DMMACS.TConfigDup.FieldByName('ALTPAG').AsString;
	EdLargPag.Text:=DMMACS.TConfigDup.FieldByName('LARGPAG').AsString;
	EdQtdEtqPag.Text:=DMMACS.TConfigDup.FieldByName('QTDETQPAG').AsString;
	EdQtdColPag.Text:=DMMACS.TConfigDup.FieldByName('QTDCOLPAG').AsString;
	EdIntervLin.Text:=DMMACS.TConfigDup.FieldByName('INTERVLINHA').AsString;
	EdIntervColuna.Text:=DMMACS.TConfigDup.FieldByName('INTERVCOL').AsString;
	EdLargCB.Text:=DMMACS.TConfigDup.FieldByName('LARGCODBARRA').AsString;
	EdCompCB.Text:=DMMACS.TConfigDup.FieldByName('COMPCODBARRA').AsString;
	EdIniImpLin.Text:=DMMACS.TConfigDup.FieldByName('LINHAINI').AsString;
	EdIniImpCol.Text:=DMMACS.TConfigDup.FieldByName('COLUNAINI').AsString;
End;

Procedure TFConfigDup.FiltraCampos;
Begin
	DMMACS.TItensDupPerson.Close;
	DMMACS.TItensDupPerson.SQL.Clear;
	DMMACS.TItensDupPerson.SQL.Add(' select * from itensdupperson Where itensdupperson.cod_dupperson=:CODETIQUETA ');
	DMMACS.TItensDupPerson.ParamByName('CODETIQUETA').AsString:=DMMACS.TConfigDup.FieldByName('cod_configdup').AsString;
	DMMACS.TItensDupPerson.Open;
End;

Procedure TFConfigDup.AtivBtn;//Procedure responsável por controlar a ativação dos botões
Begin
	If BtnNovo.Enabled=True
   Then Begin
       BtnNovo.Enabled:=False;
       BtnApagar.Enabled:=False;
       BtnGravar.Enabled:=True;
       BtnCancelar.Enabled:=True;
   End
   Else Begin
       BtnNovo.Enabled:=True;
       BtnApagar.Enabled:=True;
       BtnGravar.Enabled:=False;
       BtnCancelar.Enabled:=False;
   End;
End;

procedure TFConfigDup.BtnNovoClick(Sender: TObject);
begin
  inherited;
   AtivBtn;
   DMMACS.TEtqProd.Insert;
   InserReg(DMMACS.TConfigDup, 'CONFIGDUP', 'COD_CONFIGDUP');
   DBDesc.SetFocus;
end;

procedure TFConfigDup.BtnApagarClick(Sender: TObject);
begin
  inherited;
   DMMACS.TConfigDup.Delete;
   DMMACS.Transaction.CommitRetaining;
end;

procedure TFConfigDup.BtnGravarClick(Sender: TObject);
begin
  inherited;
	DMMACS.TConfigDup.Edit;
   DMMACS.TConfigDup.FieldByName('ALTPAG').AsString:=EdAltPag.Text;
   DMMACS.TConfigDup.FieldByName('LARGPAG').AsString:=EdLargPag.Text;
   DMMACS.TConfigDup.FieldByName('QTDETQPAG').AsString:=EdQtdEtqPag.Text;
   DMMACS.TConfigDup.FieldByName('QTDCOLPAG').AsString:=EdQtdColPag.Text;
   DMMACS.TConfigDup.FieldByName('INTERVLINHA').AsString:=EdIntervLin.Text;
   DMMACS.TConfigDup.FieldByName('INTERVCOL').AsString:=EdIntervColuna.Text;
   DMMACS.TConfigDup.FieldByName('LARGCODBARRA').AsString:=EdLargCB.Text;
   DMMACS.TConfigDup.FieldByName('COMPCODBARRA').AsString:=EdCompCB.Text;
   DMMACS.TConfigDup.FieldByName('LINHAINI').AsString:=EdIniImpLin.Text;
   DMMACS.TConfigDup.FieldByName('COLUNAINI').AsString:=EdIniImpCol.Text;
   DMMACS.TConfigDup.Post;
   AtivBtn;
end;

procedure TFConfigDup.BtnCancelarClick(Sender: TObject);
begin
  inherited;
   AtivBtn;
   DMMACS.TEtqProd.Cancel;
end;

procedure TFConfigDup.FormActivate(Sender: TObject);
Var
	I:Integer;
begin
  inherited;
	Caption:='Config de Duplicatas';  
  	//Passa fontes do windows para componente
   DbFonte.Items.Clear;
   For I := 0 to Screen.Fonts.Count - 1 do
  	begin
   	DbFonte.Items.Add(Screen.Fonts[I]);
   End;
   DbFonte.Text:='Arial';

   FiltraTabela(DMMACS.TConfigDup, 'CONFIGDUP', '', '', '');
   BtnNovo.Enabled:=False;
   AtivBtn;
   FiltraCampos;
   GetFieldsEdits;     
   DBGridCadastroPadrao.SetFocus;
end;

procedure TFConfigDup.BitBtn3Click(Sender: TObject);
Var
	XCod_Item:Integer;
begin
  inherited;
	If CBCampo.Text=''
   Then Begin
		Mensagem('Atenção', 'Por favor, informe o campo a ser impressoa na Duplicata', '', 1, 1, False, 'a');
		CBCampo.SetFocus;
       Exit;
	End;
   XCod_Item:=InserReg(DMMACS.TItensDupPerson, 'itensdupperson', 'cod_itensdupperson');
   DMMACS.TItensDupPerson.FieldByName('cod_DUPPERSON').AsInteger:=DMMACS.TConfigDup.FieldByName('cod_configdup').AsInteger;
   DMMACS.TItensDupPerson.FieldByName('CAMPO').AsString:=CBCampo.Text;
   DMMACS.TItensDupPerson.FieldByName('COLUNA').AsInteger:=EdColuna.ValueInteger;
   DMMACS.TItensDupPerson.FieldByName('LINHA').AsInteger:=EdLinha.ValueInteger;
   DMMACS.TItensDupPerson.FieldByName('FONTE').AsInteger:=EdFonte.ValueInteger;
   DMMACS.TItensDupPerson.FieldByName('NOMEFONTE').AsString:=DbFonte.Text;
   DMMACS.TItensDupPerson.FieldByName('TAMANHO').AsInteger:=edcampo.ValueInteger;
   DMMACS.TItensDupPerson.Post;
   DMMACS.Transaction.CommitRetaining;
   CBCampo.SetFocus;
   FiltraCampos;
end;

procedure TFConfigDup.BitBtn4Click(Sender: TObject);
begin
  inherited;
   CBCampo.Text:=DMMACS.TItensDupPerson.FieldByName('CAMPO').AsString;
   EdColuna.ValueInteger:=DMMACS.TItensDupPerson.FieldByName('COLUNA').AsInteger;
   EdLinha.ValueInteger:=DMMACS.TItensDupPerson.FieldByName('LINHA').AsInteger;
   EdFonte.ValueInteger:=DMMACS.TItensDupPerson.FieldByName('FONTE').AsInteger;
   DbFonte.Text:=DMMACS.TItensDupPerson.FieldByName('NOMEFONTE').AsString;
   edcampo.ValueInteger:=DMMACS.TItensDupPerson.FieldByName('TAMANHO').AsInteger;
	DMMACS.TItensDupPerson.Delete;
   DMMACS.Transaction.CommitRetaining;
   FiltraCampos;
end;

procedure TFConfigDup.EdAltPagEnter(Sender: TObject);
begin
  inherited;
   AtivBtn;
end;

end.
