unit UConfigEtqProd02;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPadrao, Buttons, StdCtrls, DrLabel, jpeg, ExtCtrls, Grids,
  DBGrids, Mask, DBCtrls, DBColorEdit, TFlatEditUnit, EditFloat;

type
  TFConfigEtq02 = class(TFPadrao)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    DBDesc: TDBColorEdit;
    DBGridCadastroPadrao: TDBGrid;
    GroupBox2: TGroupBox;
    BtnNovo: TBitBtn;
    BtnApagar: TBitBtn;
    BtnGravar: TBitBtn;
    BtnCancelar: TBitBtn;
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
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    cbalinhar: TComboBox;
    Label24: TLabel;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Label25: TLabel;
    CBCampo: TComboBox;
    Label26: TLabel;
    EdLinha: TFloatEdit;
    edcoluna: TFloatEdit;
    Label27: TLabel;
    EdFonte: TFloatEdit;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Edcampo: TFloatEdit;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    DBGrid2: TDBGrid;
    Label32: TLabel;
    Label31: TLabel;
    DbFonte: TComboBox;
    procedure BtnGravarClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure GroupBox1Enter(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BtnApagarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure DBGridCadastroPadraoCellClick(Column: TColumn);
    procedure DBGridCadastroPadraoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Panel1Enter(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure EdAltPagEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
	 Procedure AtivBtn;//Procedure responsável por controlar a ativação dos botões
	 Procedure FiltraCampos;
	 Procedure GetFieldsEdits;//Informa as edits os valores da tabela

  end;

var
  FConfigEtq02: TFConfigEtq02;

implementation

uses UDMMacs, AlxMessage, Alxor32;

{$R *.dfm}

//Informa as edits os valores da tabela
Procedure TFConfigEtq02.GetFieldsEdits;
Begin
	EdAltPag.Text:=DMMACS.TEtqProd.FieldByName('ALTPAG').AsString;
	EdLargPag.Text:=   DMMACS.TEtqProd.FieldByName('LARGPAG').AsString;
	EdQtdEtqPag.Text:=DMMACS.TEtqProd.FieldByName('QTDETQPAG').AsString;
	EdQtdColPag.Text:=DMMACS.TEtqProd.FieldByName('QTDCOLPAG').AsString;
	EdIntervLin.Text:=DMMACS.TEtqProd.FieldByName('INTERVLINHA').AsString;
	EdIntervColuna.Text:=DMMACS.TEtqProd.FieldByName('INTERVCOL').AsString;
	EdLargCB.Text:=DMMACS.TEtqProd.FieldByName('LARGCODBARRA').AsString;
	EdCompCB.Text:=DMMACS.TEtqProd.FieldByName('COMPCODBARRA').AsString;
	EdIniImpLin.Text:=DMMACS.TEtqProd.FieldByName('LINHAINI').AsString;
	EdIniImpCol.Text:=DMMACS.TEtqProd.FieldByName('COLUNAINI').AsString;
End;

procedure TFConfigEtq02.BtnGravarClick(Sender: TObject);
begin
  inherited;
	DMMACS.TEtqProd.Edit;
   DMMACS.TEtqProd.FieldByName('ALTPAG').AsString:=EdAltPag.Text;
   DMMACS.TEtqProd.FieldByName('LARGPAG').AsString:=EdLargPag.Text;
   DMMACS.TEtqProd.FieldByName('QTDETQPAG').AsString:=EdQtdEtqPag.Text;
   DMMACS.TEtqProd.FieldByName('QTDCOLPAG').AsString:=EdQtdColPag.Text;
   DMMACS.TEtqProd.FieldByName('INTERVLINHA').AsString:=EdIntervLin.Text;
   DMMACS.TEtqProd.FieldByName('INTERVCOL').AsString:=EdIntervColuna.Text;
   DMMACS.TEtqProd.FieldByName('LARGCODBARRA').AsString:=EdLargCB.Text;
   DMMACS.TEtqProd.FieldByName('COMPCODBARRA').AsString:=EdCompCB.Text;
   DMMACS.TEtqProd.FieldByName('LINHAINI').AsString:=EdIniImpLin.Text;
   DMMACS.TEtqProd.FieldByName('COLUNAINI').AsString:=EdIniImpCol.Text;
   DMMACS.TEtqProd.Post;
   AtivBtn;
end;

Procedure TFConfigEtq02.FiltraCampos;
Begin
	DMMACS.TItemEtqProd.Close;
	DMMACS.TItemEtqProd.SQL.Clear;
	DMMACS.TItemEtqProd.SQL.Add(' select * from itensetqprod Where itensetqprod.cod_etqprod=:CODETIQUETA ');
	DMMACS.TItemEtqProd.ParamByName('CODETIQUETA').AsString:=DMMACS.TEtqProd.FieldByName('cod_etqprod').AsString;
	DMMACS.TItemEtqProd.Open;   
End;
procedure TFConfigEtq02.BitBtn3Click(Sender: TObject);
Var
	XCod_Item:Integer;
begin
  inherited;
	If CBCampo.Text=''
   Then Begin
		Mensagem('Atenção', 'Por favor, informe o campo a ser impressoa na Nota fiscal', '', 1, 1, False, 'a');
		CBCampo.SetFocus;
       Exit;
	End;
   XCod_Item:=InserReg(DMMACS.TItemEtqProd, 'itensetqprod', 'cod_itensetqprod');
   DMMACS.TItemEtqProd.FieldByName('COD_ETQPROD').AsInteger:=DMMACS.TEtqProd.FieldByName('COD_ETQPROD').AsInteger;
   DMMACS.TItemEtqProd.FieldByName('CAMPO').AsString:=CBCampo.Text;
   DMMACS.TItemEtqProd.FieldByName('COLUNA').AsInteger:=EdColuna.ValueInteger;
   DMMACS.TItemEtqProd.FieldByName('LINHA').AsInteger:=EdLinha.ValueInteger;
   DMMACS.TItemEtqProd.FieldByName('FONTE').AsInteger:=EdFonte.ValueInteger;
   DMMACS.TItemEtqProd.FieldByName('NOMEFONTE').AsString:=DbFonte.Text;   
   DMMACS.TItemEtqProd.FieldByName('TAMANHO').AsInteger:=edcampo.ValueInteger;
   DMMACS.TItemEtqProd.Post;
   DMMACS.Transaction.CommitRetaining;
   CBCampo.SetFocus;
   FiltraCampos;
end;
Procedure TFConfigEtq02.AtivBtn;//Procedure responsável por controlar a ativação dos botões
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
procedure TFConfigEtq02.GroupBox1Enter(Sender: TObject);
begin
  inherited;
   BtnNovo.Enabled:=True;
   FiltraCampos;
   AtivBtn;
end;

procedure TFConfigEtq02.FormActivate(Sender: TObject);
Var
	I:Integer;
begin
  inherited;
  	//Passa fontes do windows para componente
   DbFonte.Items.Clear;
   For I := 0 to Screen.Fonts.Count - 1 do
  	begin
   	DbFonte.Items.Add(Screen.Fonts[I]);
   End;
   DbFonte.Text:='Arial';

   FiltraTabela(DMMACS.TEtqProd, 'ETQPROD', '', '', '');
   BtnNovo.Enabled:=False;
   AtivBtn;
   FiltraCampos;
   GetFieldsEdits;     
   DBGridCadastroPadrao.SetFocus;
end;

procedure TFConfigEtq02.BtnApagarClick(Sender: TObject);
begin
  inherited;
   DMMACS.TEtqProd.Delete;
   DMMACS.Transaction.CommitRetaining;
end;

procedure TFConfigEtq02.BtnCancelarClick(Sender: TObject);
begin
  inherited;
   AtivBtn;
   DMMACS.TEtqProd.Cancel;
end;

procedure TFConfigEtq02.DBGridCadastroPadraoCellClick(Column: TColumn);
begin
  inherited;
   FiltraCampos;
   GetFieldsEdits;   
end;

procedure TFConfigEtq02.DBGridCadastroPadraoKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
   FiltraCampos;
   GetFieldsEdits;
end;

procedure TFConfigEtq02.Panel1Enter(Sender: TObject);
begin
  inherited;
   BtnNovo.Enabled:=True;
   FiltraCampos;
   AtivBtn;
end;

procedure TFConfigEtq02.BtnNovoClick(Sender: TObject);
begin
  inherited;
   AtivBtn;
   DMMACS.TEtqProd.Insert;
   InserReg(DMMACS.TEtqProd, 'ETQPROD', 'COD_ETQPROD');
   DBDesc.SetFocus;
end;

procedure TFConfigEtq02.BitBtn4Click(Sender: TObject);
begin
  inherited;
   CBCampo.Text:=DMMACS.TItemEtqProd.FieldByName('CAMPO').AsString;
   EdColuna.ValueInteger:=DMMACS.TItemEtqProd.FieldByName('COLUNA').AsInteger;
   EdLinha.ValueInteger:=DMMACS.TItemEtqProd.FieldByName('LINHA').AsInteger;
   EdFonte.ValueInteger:=DMMACS.TItemEtqProd.FieldByName('FONTE').AsInteger;
   DbFonte.Text:=DMMACS.TItemEtqProd.FieldByName('NOMEFONTE').AsString;
   edcampo.ValueInteger:=DMMACS.TItemEtqProd.FieldByName('TAMANHO').AsInteger;
   DMMACS.TItemEtqProd.Delete;
   DMMACS.Transaction.CommitRetaining;
   FiltraCampos;
end;

procedure TFConfigEtq02.EdAltPagEnter(Sender: TObject);
begin
  inherited;
	AtivBtn;
end;

end.
