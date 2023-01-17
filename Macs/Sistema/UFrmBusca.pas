unit UFrmBusca;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, TFlatEditUnit, Buttons, ExtCtrls;

type
  TFrmBusca = class(TFrame)
    EdDescricao: TFlatEdit;
    BTNOPEN: TBitBtn;
    BTNMINUS: TBitBtn;
    EDCodigo: TFlatEdit;
    LTextoBusca: TLabel;
    LUZOPEN: TShape;
    LUZMINUS: TShape;
    procedure BTNOPENClick(Sender: TObject);
    procedure BTNMINUSClick(Sender: TObject);
    procedure EDCodigoKeyPress(Sender: TObject; var Key: Char);
    Function FrameBusca(XChave: String; XCAMPO:String; XTabela: String; XValor: String):String;
    procedure BTNOPENEnter(Sender: TObject);
    procedure BTNMINUSEnter(Sender: TObject);
    procedure BTNOPENExit(Sender: TObject);
    procedure BTNMINUSExit(Sender: TObject);
    procedure FrameExit(Sender: TObject);//preenche as edits da frame e retorna a chave necessárias
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses UDMMacs, Alxor32;

{$R *.DFM}

//preenche as edits da frame e retorna a chave necessárias
Function TFrmBusca.FrameBusca(XChave: String; XCAMPO:String; XTabela: String; XValor: String):String;
Begin
	If SelectRegistro(XTabela, XChave, XValor) = True
   Then Begin //Slecionou o registro procurado
		Result:=DMMACS.TSelect.FieldByName(XCHAVE).AsString;
       EDCodigo.Text:=DMMACS.TSelect.FieldByName(XCHAVE).AsString;
       EdDescricao.Text:=DMMACS.TSelect.FieldByName(XCAMPO).AsString;
   End
   Else Begin
   	Result:='';
      	EDCodigo.Text:='';
       EdDescricao.Text:='';
   End;
End;
procedure TFrmBusca.BTNOPENClick(Sender: TObject);
begin
{	//LIBERA TODAS OS ESTADOS PARA CONSUTA
	filtraTabela(DMGEOGRAFIA.WEstado, 'VWESTADO', '', '', '');

    If AbrirForm(TFCadEstado, FCadEstado, 1)='Selected'
    Then Begin
        DMGEOGRAFIA.TCidade.FieldByName('COD_ESTADO').AsInteger:=DMGEOGRAFIA.WEstado.FieldByName('COD_ESTADO').AsInteger;
        FrmbuscaEstado.EdDescricao.Text:=DMGEOGRAFIA.WEstado.FieldByName('DESCRICAO').AsString;
        FrmbuscaEstado.EDCodigo.text:=DMGEOGRAFIA.WEstado.FieldByName('COD_ESTADO').AsString;
    End;}
end;

procedure TFrmBusca.BTNMINUSClick(Sender: TObject);
begin
{   //Codigo da tabela local =0
   XTabela.Edit;
   XTabela.FieldByName('COD_ESTADO').AsString:='';

   FrmbuscaEstado.EDCodigo.Text:='';
   FrmbuscaEstado.EdDescricao.Text:='';}
end;

procedure TFrmBusca.EDCodigoKeyPress(Sender: TObject; var Key: Char);
begin
{	If Key = #13
   Then Begin
   	If FrmbuscaEstado.EDCodigo.Text<>''
       Then Begin
	       If SelectRegistro('ESTADO', 'COD_ESTADO', FrmbuscaEstado.EDCodigo.Text) = True
	       Then Begin //Slecionou o registro procurado
          		Xtabela.Edit;          
	       		XTabela.FieldByName('COD_ESTADO').AsInteger:=DMMACS.TSelect.FieldByName('COD_ESTADO').AsInteger;
           	FrmbuscaEstado.EDCodigo.text:=DMMACS.TSelect.FieldByName('COD_ESTADO').AsString;
           	FrmbuscaEstado.EdDescricao.Text:=DMMACS.TSelect.FieldByName('DESCRICAO').AsString;
          End
          Else Begin
           	XTabela.Edit;
       		XTabela.FieldByName('COD_REGIAO').AsString:='';
           	FrmbuscaEstado.EDCodigo.Text:='';
           	FrmbuscaEstado.EdDescricao.Text:='';
          End;
       End
       Else Begin
          	XTabela.Edit;
      		XTabela.FieldByName('COD_ESTADO').AsString:='';
          	FrmbuscaEstado.EDCodigo.Text:='';
          	FrmbuscaEstado.EdDescricao.Text:='';
       End;
   End;
}
end;

procedure TFrmBusca.BTNOPENEnter(Sender: TObject);
begin
   LUZMINUS.Visible:=FALSE;
   LUZOPEN.Visible:=TRUE;
end;

procedure TFrmBusca.BTNMINUSEnter(Sender: TObject);
begin
   LUZMINUS.Visible:=TRUE;
   LUZOPEN.Visible:=FALSE;
end;

procedure TFrmBusca.BTNOPENExit(Sender: TObject);
begin
   LUZOPEN.Visible:=FALSE;
   LUZMINUS.Visible:=False;
end;

procedure TFrmBusca.BTNMINUSExit(Sender: TObject);
begin
   LUZOPEN.Visible:=FALSE;
   LUZMINUS.Visible:=False;
end;

procedure TFrmBusca.FrameExit(Sender: TObject);
begin
   LUZOPEN.Visible:=FALSE;
   LUZMINUS.Visible:=False;
end;

end.
