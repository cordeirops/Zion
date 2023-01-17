unit UCadLoja;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UCadPadraoDesc, TFlatHintUnit, Grids, DBGrids,
  TFlatEditUnit, StdCtrls, Buttons, Mask, DBCtrls, DBColorEdit, jpeg,
  ExtCtrls, EditFloat, ColorEditFloat,DB, DrLabel;

type
  TFCadLoja = class(TFCadPadraoDesc)
    Label9: TLabel;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    BitBtn2: TBitBtn;
    Label17: TLabel;
    Label16: TLabel;
    EDJuros: TColorEditFloat;
    EdMulta: TColorEditFloat;
    procedure FormActivate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BtnConsultarClick(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnApagarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadLoja: TFCadLoja;

implementation

uses UDMMacs, AlxMessage, Alxor32, UConfigLoja, UMenu, UDMCaixa, UPadrao;

{$R *.DFM}

procedure TFCadLoja.FormActivate(Sender: TObject);
begin
  inherited;
    Caption:='Loja' ;  
    XTabela:=DMMacs.TLoja;
    XCampo:='DESCRICAO';
    XPkTabela:='COD_LOJA';
    XTransaction:=DMMacs.Transaction;
    XTab:=True;
    XDescricao:='a Descrição';
    XSQLTABELA:='LOJA';
    DBGridCadastroPadrao.DataSource:=DMMACS.DSLoja;
    DBPRIMEIRO.DataSource:=DMMACS.DSLoja;
    DBDESC.DataSource:=DMMACS.DSLoja;
end;

procedure TFCadLoja.BitBtn1Click(Sender: TObject);
begin
  inherited;
   Panel4.Visible:=True;
   Panel4.BringToFront;
end;

procedure TFCadLoja.BtnGravarClick(Sender: TObject);
begin
	DMMacs.TLoja.Edit;  
   DMMacs.TLoja.FieldByName('COD_EMPRESA').AsInteger:=StrToInt(FMenu.LCODEMPRESA.Caption);
   DMMacs.TLoja.FieldByName('MULTA').AsFloat:=EdMulta.ValueNumeric;
   DMMacs.TLoja.FieldByName('JUROS').AsFloat:=EDJuros.ValueNumeric;
   DMMACS.TLoja.Post;
   DMMACS.Transaction.CommitRetaining;
  inherited;
	Try
{	    If Not FileExists(WindowsDir+'/Ncfp.CTR')
       Then Begin
           ExecRun('A G U A R D E . . . ');
       	If VerificaNet<>0
       	Then Begin//Se existir uma conexao de internet
           	Try
            		EnviaEmail;
           		PComunica.Visible:=False;
               Except
           		PComunica.Visible:=False;
               End;
       	End;
           PComunica.Visible:=False;
       End;}
   Except
   End;
end;

procedure TFCadLoja.BitBtn2Click(Sender: TObject);
begin
  inherited;
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('CONFIGLOJA', 'M')=False Then
  		Exit;
	//REGISTRA COMANDO DO USUARIO
   //Djonathan 16/11/2009 : NOVO PARAMETRO PASSADO DESCRICAO DA LOJA
   Registra('LOJA', 'CONFIGURAÇÃO', '', 'Loja: ' + DMMACS.TLoja.FieldByName('DESCRICAO').AsString, '');
   FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', DMMACS.TLoja.FieldByName('COD_LOJA').AsString, '');
   AbrirForm(TFConfigLoja, FConfigLoja, 0);
end;

procedure TFCadLoja.BtnConsultarClick(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('CADLOJA', 'M')=False Then
  		Exit;
  inherited;
   EdMulta.ValueNumeric:=DMMACS.TLoja.fieldByName('MULTA').AsCurrency;
   EDJuros.ValueNumeric:=DMMACS.TLoja.fieldByName('JUROS').AsCurrency;
end;

procedure TFCadLoja.BtnNovoClick(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('CADLOJA', 'M')=False Then
  		Exit;

  inherited;

end;

procedure TFCadLoja.BtnApagarClick(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('CADLOJA', 'M')=False Then
  		Exit;

  inherited;

end;

end.
