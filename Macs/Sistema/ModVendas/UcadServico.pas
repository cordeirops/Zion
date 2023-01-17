unit UcadServico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadPadrao, Buttons, Grids, DBGrids, StdCtrls, TFlatEditUnit,
  ExtCtrls, EditFloat, ColorEditFloat, Mask, DBCtrls, DBColorEdit,
  UFrmBusca;

type
  TFCadServico = class(TFCadPadrao)
    Label6: TLabel;
    DBPRIMEIRO: TDBColorEdit;
    Label2: TLabel;
    DBCODINT: TDBColorEdit;
    Label7: TLabel;
    DBDESC: TDBColorEdit;
    EDCODGRUPO: TColorEditFloat;
    DBGRUPO: TColorEditFloat;
    BtnAddGrupo: TBitBtn;
    Label1: TLabel;
    EDCODSUBGRUPO: TColorEditFloat;
    DBSUBGRUPO: TColorEditFloat;
    BtnAddSubGrupo: TBitBtn;
    Label3: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnConsultarClick(Sender: TObject);
    procedure BtnAddGrupoClick(Sender: TObject);
    procedure BtnAddSubGrupoClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadServico: TFCadServico;
  XCOD_GRUPO, XCOD_SUBGRUPO:Integer;

implementation

uses UDmServ, Alxor32, UMenu, UDMEstoque, UCadGrupo, UCadSubgrupo, DB;

{$R *.dfm}

procedure TFCadServico.FormActivate(Sender: TObject);
begin
  inherited;
	Caption:='Grade de Serviços' ;
    XTabela:=DMServ.TServ;
    XTab:=True;
    DBGridCadastroPadrao.DataSource := DMServ.DServ;
end;

procedure TFCadServico.BtnNovoClick(Sender: TObject);
begin
  inherited;
		XCODPKMESTRE:=InserReg(DMServ.TServ, 'SERVICO', 'COD_SERVICO');
       DBPRIMEIRO.SetFocus;
       DMServ.TServ.FieldByName('COD_INTERNO').AsInteger:=XCODPKMESTRE;
    	DBCODINT.SetFocus;

end;

procedure TFCadServico.BtnConsultarClick(Sender: TObject);
begin
  inherited;
   //filtra grupo
   If FiltraTabela(DMESTOQUE.TGrupo, 'GRUPOPROD', 'COD_GRUPOPROD', DMSERV.TServ.FieldByName('COD_GRUPOSERV').AsString, '')
   Then Begin
       XCOD_GRUPO:=DMSERV.TServ.FieldByName('COD_GRUPOSERV').AsInteger;
       EDCODGRUPO.Text:=DMESTOQUE.TGRUPO.FieldByName('COD_INTERNO').AsString;
       DBGRUPO.Text:=DMESTOQUE.TGRUPO.FieldByName('DESCRICAO').AsString;
   End
   Else begin
      XCOD_GRUPO:=-1;
      EDCODGRUPO.Text:='';
      DBGRUPO.Text:='';
   End;


   //filtra subgrupo
   If FiltraTabela(DMESTOQUE.TSubgru, 'SUBGRUPOPROD', 'COD_SUBGRUPOPROD', DMSERV.TServ.FieldByName('COD_SUBGRUPOSERV').AsString, '')
   Then Begin
      XCOD_SUBGRUPO:=DMSERV.TServ.FieldByName('COD_SUBGRUPOSERV').AsInteger;
      EDCODSUBGRUPO.Text:=DMESTOQUE.TSubGRU.FieldByName('COD_INTERNO').AsString;
      DBSUBGRUPO.Text:=DMESTOQUE.TSubGRU.FieldByName('DESCRICAO').AsString;
   End
   Else begin
      XCOD_SUBGRUPO:=-1; 
      EDCODSUBGRUPO.Text:='';
      DBSUBGRUPO.Text:='';
   End;

end;

procedure TFCadServico.BtnAddGrupoClick(Sender: TObject);
begin
  inherited;
    FMENU.TIPOAUX:='SERVICO';
    FiltraTabela(DMESTOQUE.TGRUPO, 'GRUPOPROD', '', '', ' WHERE TIPO='+#39+'S'+#39);
    If AbrirForm(TFCadGrupo, FCadGrupo, 1)='Selected'
    Then Begin
        XCOD_GRUPO:=DMESTOQUE.TGrupo.FieldByName('COD_GRUPOPROD').AsInteger;
        EDCODGRUPO.TEXT:=DMESTOQUE.TGrupo.FieldByName('COD_INTERNO').AsString;
        DBGRUPO.Text:=DMESTOQUE.TGrupo.FieldByName('DESCRICAO').AsString;
    End;
end;

procedure TFCadServico.BtnAddSubGrupoClick(Sender: TObject);
begin
  inherited;
    FMENU.TIPOAUX:='SERVICO';
    FiltraTabela(DMESTOQUE.TSubgru, 'SUBGRUPOPROD', '', '', ' WHERE TIPO='+#39+'S'+#39);
    If AbrirForm(TFCadSUBGrupo, FCadSUBGrupo, 1)='Selected'
    Then Begin
        XCOD_SUBGRUPO:=DMESTOQUE.TSubgru.FieldByName('COD_SUBGRUPOPROD').AsInteger;
        DBSUBGRUPO.TEXT:=DMESTOQUE.TSubgru.FieldByName('DESCRICAO').AsString;
        EDCODSUBGRUPO.Text:=DMESTOQUE.TSubgru.FieldByName('COD_INTERNO').AsString;
    End;
end;

procedure TFCadServico.BtnGravarClick(Sender: TObject);
begin
 // inherited;
  	Try
       PCadastro.Visible:=False;
   Except
   End;
   PConsulta.Visible:=true;
   PConsulta.BringToFront;
   Try
       DMServ.TServ.Edit;
       DMServ.TServ.FieldByName('cod_gruposerv').AsInteger:=XCOD_GRUPO;
       DMServ.TServ.FieldByName('cod_subgruposerv').AsInteger:=XCOD_SUBGRUPO;
       DMServ.TServ.Post;
       DMServ.IBT.CommitRetaining;
   Except
       MessageDlg('Erro: Verifique o item gravado', mtWarning, [mbOK], 0);
   End;
end;

end.
