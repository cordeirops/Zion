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
    BtnRelatorio: TBitBtn;
    DBTextoPersonalizado: TDBColorEdit;
    Label33: TLabel;
    DBColorEdit1: TDBColorEdit;
    Label34: TLabel;
    Label35: TLabel;
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
    procedure BtnRelatorioClick(Sender: TObject);
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

uses UDMMacs, AlxMessage, Alxor32, UDMEstoque, Alxorprn, UMenu;

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
	Caption:='Config. de Etiquetas de Produtos';  
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

procedure TFConfigEtq02.BtnRelatorioClick(Sender: TObject);
Var
   XQtdEtq: String;
begin
  inherited;
   BtnGravar.Click;
   If InputQuery('ATENÇÃO','Informe a Qtd. de etiquetas:', XQtdEtq)
   Then Begin
   	Try
           //FILTRA SIMILAR DE ACORDO COM O PRODUTO
           DMESTOQUE.WSimilar.Close;
           DMESTOQUE.WSimilar.SQL.Clear;
           DMESTOQUE.WSimilar.SQL.Add('SELECT * FROM VWSIMILAR WHERE (COD_LOJA=:CODLOJA)  and ((ATIVO = ''S'') or (ATIVO is null)) Order By DESCRICAO');
           DMESTOQUE.WSimilar.ParamByName('CODLOJA').Asstring:=FMenu.LCODLOJA.Caption;
           DMESTOQUE.WSimilar.Open;

       	If StrToInt(XQtdEtq)>0
           Then Begin
				//INFORMA SQL ADEQUADA A IMPRESSAO DE ETIQUETAS
       		DMESTOQUE.TRel.CLOSE;
       		DMESTOQUE.TRel.SQL.Clear;
       		DMESTOQUE.TRel.SQL.Add(' SELECT subproduto.codprodfabr AS CODFAB, produto.descricao AS GRADE, subproduto.CONTRINT,  SUBPRODUTO.especificacao, subproduto.descricao AS DESCR,  subproduto.FABRICANTE,  ');
       		DMESTOQUE.TRel.SQL.Add(' estoque.vendvarv as PRECO,  SubProduto.Marca as MARCA, subproduto.localestante AS CODCOMPOSTO,subproduto.cor, ESTOQUE.ESTFISICO As QTD, ');
       		DMESTOQUE.TRel.SQL.Add(' estoque.vendvarp as PRECOPRAZO, estoque.ultcompra as DTCAD, subproduto.altura AS ALTURA, subproduto.LARGURA AS LARGURA, subproduto.composicao AS COMPOSICAO, subproduto.CLASSIFICACAO, ');
  				DMESTOQUE.TRel.SQL.Add(' subproduto.cor, subproduto.CODBARRA AS CODBARRA');
       		DMESTOQUE.TRel.SQL.Add(' from Subproduto ');
       		DMESTOQUE.TRel.SQL.Add(' left join Produto ON Produto.cod_Produto = subproduto.cod_Produto ');
       		DMESTOQUE.TRel.SQL.Add(' left join estoque ON ESTOQUE.cod_SubProd = SUBPRODUTO.cod_SubprodUTO ');
       		DMESTOQUE.TRel.SQL.Add(' WHERE (ESTOQUE.COD_LOJA='+FMenu.LCODLOJA.Caption+') ');
  				DMESTOQUE.TRel.SQL.Add(' AND(SUBproduto.COD_SUBPRODUTO=:CODSUBPROD) ');
 	   			DMESTOQUE.TRel.ParamByName('CODSUBPROD').AsString:=DMESTOQUE.WSimilar.FieldByName('COD_SUBPRODUTO').AsString;
      			DMESTOQUE.TRel.SQL.Text;
      			DMESTOQUE.TRel.Open;
   			If DMMACS.TLoja.FieldByName('ETPERSONAL').AsString='1'
   			Then Begin
					PrnEtiqPerson(True, 0, StrToInt(XQtdEtq));
   			End;
   			If DMMACS.TLoja.FieldByName('ETPERSONAL').AsString='2'
   			Then Begin
					PrnEtiqPerson02(True, 0, StrToInt(XQtdEtq));
   			End;
           	//Paulo 13/12/2010: Para impressão de etiquetas de ótica
               If DMMACS.TLoja.FieldByName('ETPERSONAL').AsString='3'
   			Then Begin
					PrnEtiqPersonalOtica(True, 0, StrToInt(XQtdEtq));
   			End;
   			If DMMACS.TLoja.FieldByName('ETPERSONAL').AsString='0'
   			Then Begin
               	If DMMACS.TLoja.FieldByName('TIPOETPROD').AsString='2X12' Then
						PrnEtiq2X12(True, 0, StrToInt(XQtdEtq));
               	If DMMACS.TLoja.FieldByName('TIPOETPROD').AsString='T3C' Then
                       PrnEtiqT3C(True, 0, StrToInt(XQtdEtq));
               	If DMMACS.TLoja.FieldByName('TIPOETPROD').AsString='Z2C' Then
                       PrnEtiqZ2C(True, 0, StrToInt(XQtdEtq));
               	If DMMACS.TLoja.FieldByName('TIPOETPROD').AsString='A1C' Then
                       PrnEtiqA1C(True, 0, StrToInt(XQtdEtq));
   			End;
           End;
       Except
       End;
   End;


end;
end.

