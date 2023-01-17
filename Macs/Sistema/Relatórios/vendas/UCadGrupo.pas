unit UCadGrupo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UCadPadraoDesc, TFlatHintUnit, Mask, DBCtrls, DBColorEdit,
  Grids, DBGrids, StdCtrls, Buttons, TFlatEditUnit, jpeg, DB, ExtCtrls,
  FR_Class, FR_DSet, FR_DBSet, DrLabel;

type
  TFCadGrupo = class(TFCadPadraoDesc)
    Label2: TLabel;
    DBCODINT: TDBColorEdit;
    FRGrupo: TfrReport;
    FRDSGrupo: TfrDBDataSet;
    procedure FormActivate(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure BtnApagarClick(Sender: TObject);
    procedure BtnRelatorioClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Xnovo:Boolean;
  end;

var
  FCadGrupo: TFCadGrupo;

implementation

uses AlxMessage, Alxor32, UDMEstoque, UMenu, UDMMacs;

{$R *.DFM}

procedure TFCadGrupo.FormActivate(Sender: TObject);
begin
  inherited;
    XTabela:=DMEstoque.TGrupo;
    XCampo:='Descricao';
    XPkTabela:='COD_GRUPOPROD';
    XTransaction:=DMEstoque.TransacEstoque;
    XTab:=True;
    XDescricao:='a Descrição';
    XSQLTABELA:='GRUPOPROD';
    If FMenu.TIPOAUX='SERVICO' Then
    	XLiberaDados:=' Where (TIPO='+#39+'S'+#39+') ORDER BY DESCRICAO'
    Else
    	XLiberaDados:=' Where (TIPO='+#39+'P'+#39+') ORDER BY DESCRICAO';
    DBPRIMEIRO.DataSource:=DMESTOQUE.DSGrupo;
    DBPRIMEIRO.DataField:='COD_GRUPOPROD';
	 LiberaDados;
end;

procedure TFCadGrupo.BtnNovoClick(Sender: TObject);
begin
  inherited;
    XTabela.FieldByName('COD_INTERNO').AsString:=UltCodInt('GRUPOPROD', 'GRUPO');
    DBCODINT.SetFocus;
end;

procedure TFCadGrupo.BtnGravarClick(Sender: TObject);
begin

   	If FMenu.TIPOAUX='SERVICO' Then
           DMESTOQUE.TGrupo.FieldByName('TIPO').AsString:='S'
       Else
           DMESTOQUE.TGrupo.FieldByName('TIPO').AsString:='P';
      inherited;
end;

procedure TFCadGrupo.BtnApagarClick(Sender: TObject);
begin
	If FiltraTabela(DMMACS.TALX, 'PRODUTO', 'cod_grupoprod', DMEstoque.TGrupo.FieldByName('COD_GRUPOPROD').AsString, '') = False
   Then Begin
		If FiltraTabela(DMMACS.TALX, 'servico', 'cod_gruposerv', DMEstoque.TGrupo.FieldByName('COD_GRUPOPROD').AsString, '') = False
       Then Begin
           Registra('APAGA GRUPO', 'Cód: '+DMEstoque.TGrupo.FieldByName('COD_GRUPOPROD').AsString, DateToStr(Date()), Copy('Grupo: '+DMEstoque.TGrupo.FieldByName('DESCRICAO').AsString,0, 30), '');
       	inherited
       End
     	Else Begin
       	Mensagem('INFORMAÇÃO AO USUÁRIO', 'Este Grupo já se encontra vinculado a um produto e não pode mais ser apagado!', '', 1, 1, True, 'i');
		End;
	End
   Else Begin
     	Mensagem('INFORMAÇÃO AO USUÁRIO', 'Este Grupo já se encontra vinculado a um produto e não pode mais ser apagado!', '', 1, 1, True, 'i');
   End;

end;

procedure TFCadGrupo.BtnRelatorioClick(Sender: TObject);
begin
  inherited;
   LiberaDados;
   FRGrupo.LoadFromFile('C:\MZR\MACS\REL\FrfGRUPO.frf');
   FRGrupo.ShowReport;
end;

end.
