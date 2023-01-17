unit UConsProduto;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UPadrao, ExtCtrls, TFlatHintUnit, Buttons, StdCtrls, jpeg, Mask,
  ColorMaskEdit, DrLabel, Grids, DBGrids, DBCtrls;

type
  TFConsProduto = class(TFPadrao)
    Label1: TLabel;
    EdCodComposto: TColorMaskEdit;
    Label6: TLabel;
    EDCODBARRA: TColorMaskEdit;
    Label2: TLabel;
    EdCodFabricante: TColorMaskEdit;
    Label7: TLabel;
    EDCTRLINTERNO: TColorMaskEdit;
    Label3: TLabel;
    EDFABRICANTE: TColorMaskEdit;
    Label8: TLabel;
    EDCODINTERNO: TColorMaskEdit;
    Label4: TLabel;
    EDMARCA: TColorMaskEdit;
    Label9: TLabel;
    EDLOCALESTANTE: TColorMaskEdit;
    Label10: TLabel;
    EDPRODUTO: TColorMaskEdit;
    EDCLASSIFICACAO: TColorMaskEdit;
    Label5: TLabel;
    DBText13: TDBText;
    DRLabel1: TDRLabel;
    DBGridCadastroPadrao: TDBGrid;
    Label11: TLabel;
    DBText1: TDBText;
    Label16: TLabel;
    DBText6: TDBText;
    DBText7: TDBText;
    Label17: TLabel;
    Label12: TLabel;
    DBText2: TDBText;
    Label13: TLabel;
    DBText3: TDBText;
    Label18: TLabel;
    DBText8: TDBText;
    Label19: TLabel;
    Label21: TLabel;
    DBText9: TDBText;
    DBText10: TDBText;
    Label22: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    DBText5: TDBText;
    DBText4: TDBText;
    Label20: TLabel;
    DBText11: TDBText;
    DBText12: TDBText;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Panel6: TPanel;
    Label113: TLabel;
    DBText14: TDBText;
    Label26: TLabel;
    DBText15: TDBText;
    BitBtn1: TBitBtn;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EdCodCompostoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodCompostoKeyPress(Sender: TObject; var Key: Char);
    procedure EdCodFabricanteKeyPress(Sender: TObject; var Key: Char);
    procedure EDFABRICANTEKeyPress(Sender: TObject; var Key: Char);
    procedure EDMARCAKeyPress(Sender: TObject; var Key: Char);
    procedure EDCLASSIFICACAOKeyPress(Sender: TObject; var Key: Char);
    procedure EDCODBARRAKeyPress(Sender: TObject; var Key: Char);
    procedure EDCTRLINTERNOKeyPress(Sender: TObject; var Key: Char);
    procedure EDCODINTERNOKeyPress(Sender: TObject; var Key: Char);
    procedure EDLOCALESTANTEKeyPress(Sender: TObject; var Key: Char);
    procedure EDPRODUTOKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FConsProduto: TFConsProduto;

implementation

uses UDMEstoque, UMenu, UDMMacs, UProduto, Alxor32;

{$R *.DFM}

procedure TFConsProduto.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	If Key=VK_eSCAPE Then
       Close;
end;

procedure TFConsProduto.FormActivate(Sender: TObject);
begin
  inherited;
   DMESTOQUE.Alx.Close;
   DMESTOQUE.Alx.SQL.Clear;
   DMESTOQUE.Alx.SQL.Add(' SELECT  subproduto.codcomposto, subproduto.localestante AS LOCAL, subproduto.especificacao, subproduto.codbarra, subproduto.descricao,');
   DMESTOQUE.Alx.SQL.Add('         subproduto.codprodfabr, subproduto.fabricante, subproduto.marca,');
   DMESTOQUE.Alx.SQL.Add('         subproduto.localestante, subproduto.cod_interno, subproduto.contrint,');
   DMESTOQUE.Alx.SQL.Add('         subproduto.classificacao, estoque.cod_loja, estoque.ultcompra, estoque.ultvenda,');
   DMESTOQUE.Alx.SQL.Add('         estoque.estfisico, estoque.vendvarp, estoque.vendatap, estoque.vendatav,');
   DMESTOQUE.Alx.SQL.Add('         estoque.vendvarv, estoque.VLRBONIFIC');
   DMESTOQUE.Alx.SQL.Add('         from subproduto join estoque ON subproduto.cod_subproduto = estoque.cod_subprod');
   DMESTOQUE.Alx.SQL.Add('         WHERE ESTOQUE.COD_LOJA=:CODLOJA');
   DMESTOQUE.Alx.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
   DMESTOQUE.Alx.Open;

   DBGridCadastroPadrao.DataSource:=DMESTOQUE.DSAlx;
   DBText1.DataSource:=DMESTOQUE.DSAlx;
   DBText2.DataSource:=DMESTOQUE.DSAlx;
   DBText3.DataSource:=DMESTOQUE.DSAlx;
   DBText4.DataSource:=DMESTOQUE.DSAlx;
   DBText5.DataSource:=DMESTOQUE.DSAlx;
   DBText6.DataSource:=DMESTOQUE.DSAlx;
   DBText7.DataSource:=DMESTOQUE.DSAlx;
   DBText8.DataSource:=DMESTOQUE.DSAlx;
   DBText9.DataSource:=DMESTOQUE.DSAlx;
   DBText10.DataSource:=DMESTOQUE.DSAlx;
   DBText11.DataSource:=DMESTOQUE.DSAlx;
   DBText12.DataSource:=DMESTOQUE.DSAlx;
   DBText14.DataSource:=DMESTOQUE.DSAlx;
   DBText15.DataSource:=DMESTOQUE.DSAlx;

   //VERIFICA QUAL COMPONENETE DEVE RECEBER O FOCUS
   IF DMMacs.Tloja.FieldByName('FOCUITEMPED').AsString = 'BP' THEN
       EdCodComposto.SetFocus;
   IF DMMacs.Tloja.FieldByName('FOCUITEMPED').AsString = 'CB' THEN
   	EDCODBARRA.SetFocus;
   IF DMMacs.Tloja.FieldByName('FOCUITEMPED').AsString = 'CA'
   Then Begin//Caso o focus deve cair sobre um código auxiliar. verificar qual o código em Questão
   	IF DMMacs.Tloja.FieldByName('CAMPOPESQITEMPED').AsString = 'CI' THEN
           EDCTRLINTERNO.SetFocus;
       IF DMMacs.Tloja.FieldByName('CAMPOPESQITEMPED').AsString = 'CC' THEN
           EdCodComposto.SetFocus;
       IF DMMacs.Tloja.FieldByName('CAMPOPESQITEMPED').AsString = 'CF' THEN
           EdCodFabricante.SetFocus;
   End;
end;

procedure TFConsProduto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
   DBText1.DataSource:=DBText13.DataSource;
   DBText2.DataSource:=DBText13.DataSource;
   DBText3.DataSource:=DBText13.DataSource;
   DBText4.DataSource:=DBText13.DataSource;
   DBText5.DataSource:=DBText13.DataSource;
   DBText6.DataSource:=DBText13.DataSource;
   DBText7.DataSource:=DBText13.DataSource;
   DBText8.DataSource:=DBText13.DataSource;
   DBText9.DataSource:=DBText13.DataSource;
   DBText10.DataSource:=DBText13.DataSource;
   DBText11.DataSource:=DBText13.DataSource;
   DBText12.DataSource:=DBText13.DataSource;
   DBText15.DataSource:=DBText13.DataSource;
end;

procedure TFConsProduto.EdCodCompostoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
	If Key=VK_DOWN Then
       DMESTOQUE.Alx.Next;
	If Key=VK_UP Then
       DMESTOQUE.Alx.Prior;
end;

procedure TFConsProduto.EdCodCompostoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	If key=#13
   Then Begin
   	DMESTOQUE.Alx.Close;
   	DMESTOQUE.Alx.SQL.Clear;
   	DMESTOQUE.Alx.SQL.Add(' SELECT  subproduto.codcomposto, subproduto.localestante AS LOCAL, subproduto.especificacao, subproduto.codbarra, subproduto.descricao,');
   	DMESTOQUE.Alx.SQL.Add('         subproduto.codprodfabr, subproduto.fabricante, subproduto.marca,');
   	DMESTOQUE.Alx.SQL.Add('         subproduto.localestante, subproduto.cod_interno, subproduto.contrint,');
   	DMESTOQUE.Alx.SQL.Add('         subproduto.classificacao, estoque.cod_loja, estoque.ultcompra, estoque.ultvenda,');
   	DMESTOQUE.Alx.SQL.Add('         estoque.estfisico, estoque.vendvarp, estoque.vendatap, estoque.vendatav,');
   	DMESTOQUE.Alx.SQL.Add('         estoque.vendvarv, estoque.VLRBONIFIC');
   	DMESTOQUE.Alx.SQL.Add('         from subproduto join estoque ON subproduto.cod_subproduto = estoque.cod_subprod');
   	DMESTOQUE.Alx.SQL.Add('         WHERE (ESTOQUE.COD_LOJA=:CODLOJA) AND (UPPER(subproduto.codcomposto)='+#39+UpperCase(EdCodComposto.Text)+#39+')');
   	DMESTOQUE.Alx.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
   	DMESTOQUE.Alx.Open;
   End;
end;

procedure TFConsProduto.EdCodFabricanteKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	If key=#13
   Then Begin
   	DMESTOQUE.Alx.Close;
   	DMESTOQUE.Alx.SQL.Clear;
   	DMESTOQUE.Alx.SQL.Add(' SELECT  subproduto.codcomposto, subproduto.localestante AS LOCAL, subproduto.especificacao, subproduto.codbarra, subproduto.descricao,');
   	DMESTOQUE.Alx.SQL.Add('         subproduto.codprodfabr, subproduto.fabricante, subproduto.marca,');
   	DMESTOQUE.Alx.SQL.Add('         subproduto.localestante, subproduto.cod_interno, subproduto.contrint,');
   	DMESTOQUE.Alx.SQL.Add('         subproduto.classificacao, estoque.cod_loja, estoque.ultcompra, estoque.ultvenda,');
   	DMESTOQUE.Alx.SQL.Add('         estoque.estfisico, estoque.vendvarp, estoque.vendatap, estoque.vendatav,');
   	DMESTOQUE.Alx.SQL.Add('         estoque.vendvarv,  estoque.VLRBONIFIC');
   	DMESTOQUE.Alx.SQL.Add('         from subproduto join estoque ON subproduto.cod_subproduto = estoque.cod_subprod');
   	DMESTOQUE.Alx.SQL.Add('         WHERE (ESTOQUE.COD_LOJA=:CODLOJA) AND (UPPER(subproduto.codprodfabr) LIKE '+#39+UpperCase(EdCodFabricante.Text)+'%'+#39+')');
   	DMESTOQUE.Alx.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
   	DMESTOQUE.Alx.Open;
   End;
end;

procedure TFConsProduto.EDFABRICANTEKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	If key=#13
   Then Begin
   	DMESTOQUE.Alx.Close;
   	DMESTOQUE.Alx.SQL.Clear;
   	DMESTOQUE.Alx.SQL.Add(' SELECT  subproduto.codcomposto, subproduto.localestante AS LOCAL, subproduto.especificacao, subproduto.codbarra, subproduto.descricao,');
   	DMESTOQUE.Alx.SQL.Add('         subproduto.codprodfabr, subproduto.fabricante, subproduto.marca,');
   	DMESTOQUE.Alx.SQL.Add('         subproduto.localestante, subproduto.cod_interno, subproduto.contrint,');
   	DMESTOQUE.Alx.SQL.Add('         subproduto.classificacao, estoque.cod_loja, estoque.ultcompra, estoque.ultvenda,');
   	DMESTOQUE.Alx.SQL.Add('         estoque.estfisico, estoque.vendvarp, estoque.vendatap, estoque.vendatav,');
   	DMESTOQUE.Alx.SQL.Add('         estoque.vendvarv,  estoque.VLRBONIFIC');
   	DMESTOQUE.Alx.SQL.Add('         from subproduto join estoque ON subproduto.cod_subproduto = estoque.cod_subprod');
   	DMESTOQUE.Alx.SQL.Add('         WHERE (ESTOQUE.COD_LOJA=:CODLOJA) AND (UPPER(subproduto.FABRICANTE) LIKE '+#39+UpperCase(EdFabricante.Text)+'%'+#39+')');
   	DMESTOQUE.Alx.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
   	DMESTOQUE.Alx.Open;
   End;
end;

procedure TFConsProduto.EDMARCAKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
	If key=#13
   Then Begin
   	DMESTOQUE.Alx.Close;
   	DMESTOQUE.Alx.SQL.Clear;
   	DMESTOQUE.Alx.SQL.Add(' SELECT  subproduto.codcomposto, subproduto.localestante AS LOCAL, subproduto.especificacao, subproduto.especificacao, subproduto.codbarra, subproduto.descricao,');
   	DMESTOQUE.Alx.SQL.Add('         subproduto.codprodfabr, subproduto.fabricante, subproduto.marca,');
   	DMESTOQUE.Alx.SQL.Add('         subproduto.localestante, subproduto.cod_interno, subproduto.contrint,');
   	DMESTOQUE.Alx.SQL.Add('         subproduto.classificacao, estoque.cod_loja, estoque.ultcompra, estoque.ultvenda,');
   	DMESTOQUE.Alx.SQL.Add('         estoque.estfisico, estoque.vendvarp, estoque.vendatap, estoque.vendatav,');
   	DMESTOQUE.Alx.SQL.Add('         estoque.vendvarv,  estoque.VLRBONIFIC');
   	DMESTOQUE.Alx.SQL.Add('         from subproduto join estoque ON subproduto.cod_subproduto = estoque.cod_subprod');
   	DMESTOQUE.Alx.SQL.Add('         WHERE (ESTOQUE.COD_LOJA=:CODLOJA) AND (UPPER(subproduto.MARCA) LIKE '+#39+UpperCase(EDMARCA.Text)+'%'+#39+')');
   	DMESTOQUE.Alx.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
   	DMESTOQUE.Alx.Open;
   End;

end;

procedure TFConsProduto.EDCLASSIFICACAOKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	If key=#13
   Then Begin
   	DMESTOQUE.Alx.Close;
   	DMESTOQUE.Alx.SQL.Clear;
   	DMESTOQUE.Alx.SQL.Add(' SELECT  subproduto.codcomposto, subproduto.localestante AS LOCAL, subproduto.especificacao, subproduto.codbarra, subproduto.descricao,');
   	DMESTOQUE.Alx.SQL.Add('         subproduto.codprodfabr, subproduto.fabricante, subproduto.marca,');
   	DMESTOQUE.Alx.SQL.Add('         subproduto.localestante, subproduto.cod_interno, subproduto.contrint,');
   	DMESTOQUE.Alx.SQL.Add('         subproduto.classificacao, estoque.cod_loja, estoque.ultcompra, estoque.ultvenda,');
   	DMESTOQUE.Alx.SQL.Add('         estoque.estfisico, estoque.vendvarp, estoque.vendatap, estoque.vendatav,');
   	DMESTOQUE.Alx.SQL.Add('         estoque.vendvarv,  estoque.VLRBONIFIC');
   	DMESTOQUE.Alx.SQL.Add('         from subproduto join estoque ON subproduto.cod_subproduto = estoque.cod_subprod');
   	DMESTOQUE.Alx.SQL.Add('         WHERE (ESTOQUE.COD_LOJA=:CODLOJA) AND (UPPER(subproduto.CLASSIFICACAO) LIKE '+#39+UpperCase(EDCLASSIFICACAO.Text)+'%'+#39+')');
   	DMESTOQUE.Alx.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
   	DMESTOQUE.Alx.Open;
   End;
end;

procedure TFConsProduto.EDCODBARRAKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
	If key=#13
   Then Begin
   	DMESTOQUE.Alx.Close;
   	DMESTOQUE.Alx.SQL.Clear;
   	DMESTOQUE.Alx.SQL.Add(' SELECT  subproduto.codcomposto, subproduto.localestante AS LOCAL, subproduto.especificacao, subproduto.codbarra, subproduto.descricao,');
   	DMESTOQUE.Alx.SQL.Add('         subproduto.codprodfabr, subproduto.fabricante, subproduto.marca,');
   	DMESTOQUE.Alx.SQL.Add('         subproduto.localestante, subproduto.cod_interno, subproduto.contrint,');
   	DMESTOQUE.Alx.SQL.Add('         subproduto.classificacao, estoque.cod_loja, estoque.ultcompra, estoque.ultvenda,');
   	DMESTOQUE.Alx.SQL.Add('         estoque.estfisico, estoque.vendvarp, estoque.vendatap, estoque.vendatav,');
   	DMESTOQUE.Alx.SQL.Add('         estoque.vendvarv,  estoque.VLRBONIFIC');
   	DMESTOQUE.Alx.SQL.Add('         from subproduto join estoque ON subproduto.cod_subproduto = estoque.cod_subprod');
   	DMESTOQUE.Alx.SQL.Add('         WHERE (ESTOQUE.COD_LOJA=:CODLOJA) AND (UPPER(subproduto.CODBARRA) LIKE '+#39+UpperCase(EDCODBARRA.Text)+'%'+#39+')');
   	DMESTOQUE.Alx.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
   	DMESTOQUE.Alx.Open;
   End;
end;

procedure TFConsProduto.EDCTRLINTERNOKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	If key=#13
   Then Begin
   	DMESTOQUE.Alx.Close;
   	DMESTOQUE.Alx.SQL.Clear;
   	DMESTOQUE.Alx.SQL.Add(' SELECT  subproduto.codcomposto, subproduto.localestante AS LOCAL, subproduto.especificacao, subproduto.codbarra, subproduto.descricao,');
   	DMESTOQUE.Alx.SQL.Add('         subproduto.codprodfabr, subproduto.fabricante, subproduto.marca,');
   	DMESTOQUE.Alx.SQL.Add('         subproduto.localestante, subproduto.cod_interno, subproduto.contrint,');
   	DMESTOQUE.Alx.SQL.Add('         subproduto.classificacao, estoque.cod_loja, estoque.ultcompra, estoque.ultvenda,');
   	DMESTOQUE.Alx.SQL.Add('         estoque.estfisico, estoque.vendvarp, estoque.vendatap, estoque.vendatav,');
   	DMESTOQUE.Alx.SQL.Add('         estoque.vendvarv,  estoque.VLRBONIFIC');
   	DMESTOQUE.Alx.SQL.Add('         from subproduto join estoque ON subproduto.cod_subproduto = estoque.cod_subprod');
   	DMESTOQUE.Alx.SQL.Add('         WHERE (ESTOQUE.COD_LOJA=:CODLOJA) AND (UPPER(subproduto.CONTRINT) LIKE '+#39+UpperCase(EDCTRLINTERNO.Text)+'%'+#39+')');
   	DMESTOQUE.Alx.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
   	DMESTOQUE.Alx.Open;
   End;
end;

procedure TFConsProduto.EDCODINTERNOKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	If key=#13
   Then Begin
   	DMESTOQUE.Alx.Close;
   	DMESTOQUE.Alx.SQL.Clear;
   	DMESTOQUE.Alx.SQL.Add(' SELECT  subproduto.codcomposto, subproduto.localestante AS LOCAL, subproduto.especificacao, subproduto.codbarra, subproduto.descricao,');
   	DMESTOQUE.Alx.SQL.Add('         subproduto.codprodfabr, subproduto.fabricante, subproduto.marca,');
   	DMESTOQUE.Alx.SQL.Add('         subproduto.localestante, subproduto.cod_interno, subproduto.contrint,');
   	DMESTOQUE.Alx.SQL.Add('         subproduto.classificacao, estoque.cod_loja, estoque.ultcompra, estoque.ultvenda,');
   	DMESTOQUE.Alx.SQL.Add('         estoque.estfisico, estoque.vendvarp, estoque.vendatap, estoque.vendatav,');
   	DMESTOQUE.Alx.SQL.Add('         estoque.vendvarv,  estoque.VLRBONIFIC');
   	DMESTOQUE.Alx.SQL.Add('         from subproduto join estoque ON subproduto.cod_subproduto = estoque.cod_subprod');
   	DMESTOQUE.Alx.SQL.Add('         WHERE (ESTOQUE.COD_LOJA=:CODLOJA) AND (UPPER(subproduto.COD_INTERNO) LIKE '+#39+UpperCase(EDCODINTERNO.Text)+'%'+#39+')');
   	DMESTOQUE.Alx.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
   	DMESTOQUE.Alx.Open;
   End;
end;

procedure TFConsProduto.EDLOCALESTANTEKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	If key=#13
   Then Begin
   	DMESTOQUE.Alx.Close;
   	DMESTOQUE.Alx.SQL.Clear;
   	DMESTOQUE.Alx.SQL.Add(' SELECT  subproduto.codcomposto, subproduto.localestante AS LOCAL, subproduto.especificacao, subproduto.codbarra, subproduto.descricao,');
   	DMESTOQUE.Alx.SQL.Add('         subproduto.codprodfabr, subproduto.fabricante, subproduto.marca,');
   	DMESTOQUE.Alx.SQL.Add('         subproduto.localestante, subproduto.cod_interno, subproduto.contrint,');
   	DMESTOQUE.Alx.SQL.Add('         subproduto.classificacao, estoque.cod_loja, estoque.ultcompra, estoque.ultvenda,');
   	DMESTOQUE.Alx.SQL.Add('         estoque.estfisico, estoque.vendvarp, estoque.vendatap, estoque.vendatav,');
   	DMESTOQUE.Alx.SQL.Add('         estoque.vendvarv,  estoque.VLRBONIFIC');
   	DMESTOQUE.Alx.SQL.Add('         from subproduto join estoque ON subproduto.cod_subproduto = estoque.cod_subprod');
   	DMESTOQUE.Alx.SQL.Add('         WHERE (ESTOQUE.COD_LOJA=:CODLOJA) AND (UPPER(subproduto.LOCALESTANTE) LIKE '+#39+UpperCase(EDLOCALESTANTE.Text)+'%'+#39+')');
   	DMESTOQUE.Alx.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
   	DMESTOQUE.Alx.Open;
   End;
end;

procedure TFConsProduto.EDPRODUTOKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
	If key=#13
   Then Begin
   	DMESTOQUE.Alx.Close;
   	DMESTOQUE.Alx.SQL.Clear;
   	DMESTOQUE.Alx.SQL.Add(' SELECT  subproduto.codcomposto, subproduto.localestante AS LOCAL, subproduto.especificacao, subproduto.codbarra, subproduto.descricao,');
   	DMESTOQUE.Alx.SQL.Add('         subproduto.codprodfabr, subproduto.fabricante, subproduto.marca,');
   	DMESTOQUE.Alx.SQL.Add('         subproduto.localestante, subproduto.cod_interno, subproduto.contrint,');
   	DMESTOQUE.Alx.SQL.Add('         subproduto.classificacao, estoque.cod_loja, estoque.ultcompra, estoque.ultvenda,');
   	DMESTOQUE.Alx.SQL.Add('         estoque.estfisico, estoque.vendvarp, estoque.vendatap, estoque.vendatav,');
   	DMESTOQUE.Alx.SQL.Add('         estoque.vendvarv, estoque.VLRBONIFIC');
   	DMESTOQUE.Alx.SQL.Add('         from subproduto join estoque ON subproduto.cod_subproduto = estoque.cod_subprod');
   	DMESTOQUE.Alx.SQL.Add('         WHERE (ESTOQUE.COD_LOJA=:CODLOJA) AND (UPPER(subproduto.DESCRICAO) LIKE '+#39+UpperCase(EDPRODUTO.Text)+'%'+#39+') order by subproduto.descricao');
   	DMESTOQUE.Alx.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
   	DMESTOQUE.Alx.Open;
   End;
end;
procedure TFConsProduto.BitBtn1Click(Sender: TObject);
begin
  inherited;
    AbrirForm(TFPRODUTO, FPRODUTO, 0);
end;

end.
