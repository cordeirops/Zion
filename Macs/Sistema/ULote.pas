unit ULote;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPadrao, Buttons, ExtCtrls, StdCtrls, DrLabel, jpeg, UCadPadrao,
  Grids, DBGrids, TFlatEditUnit, Mask, ColorMaskEdit;

type
  TFLote = class(TFCadPadrao)
    Label1: TLabel;
    EdDataAbertura: TColorMaskEdit;
    Label3: TLabel;
    EdDescricao: TEdit;
    Panel2: TPanel;
    BtnFechaLote: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    EdLote: TEdit;
    Label4: TLabel;
    Label2: TLabel;
    EdObservacao: TMemo;
    LbFech: TLabel;
    EdDataFechamento: TColorMaskEdit;
    procedure BtnRelatorioClick(Sender: TObject);
    procedure BtnFiltrarClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure BtnFechaLoteClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure EdNomeKeyPress(Sender: TObject; var Key: Char);
    procedure BtnConsultarClick(Sender: TObject);
  private
    { Private declarations }

    //Função Utilizada para selecionar os periodos fiscais
    Function FiltraPeriodos: Boolean;
  public
    { Public declarations }
  end;

var
  FLote: TFLote;
  XCodLote: Integer;  
  XFlagEdit:Boolean;
implementation

uses UDMMacs, UMenu, Alxor32, DB;

{$R *.dfm}

//Função Utilizada para selecionar os periodos fiscais
Function TFLote.FiltraPeriodos: Boolean;
Begin
   DMMACS.TLote.Close;
   DMMACS.TLote.SQL.Clear;
   DMMACS.TLote.SQL.Add(' Select * from Lote order by  Lote.Dtabetura ');
   DMMACS.TLote.Open;
End;


procedure TFLote.BtnRelatorioClick(Sender: TObject);
begin
//  inherited;

end;

procedure TFLote.BtnFiltrarClick(Sender: TObject);
begin
//  inherited;

end;

procedure TFLote.BtnGravarClick(Sender: TObject);
begin
  	Try
       StrToDate(EdDataAbertura.Text);

   Except
   	MessageDlg('Data inválida', mtWarning, [mbOK], 0);
       EdDataAbertura.SetFocus;
       Exit;
   End;
	If (EdDataAbertura.Text='  /  /    ')
   Then Begin
		MessageDlg('Por favor, informe a data', mtWarning, [mbOK], 0);
       EdDataAbertura.SetFocus;
       Exit;
   End;

   //PAulo 23/11/2010: PAra quando for atualização
   if XFlagEdit = true
   then begin
        //DMMACS.TLote.FieldByName('cod_lote').AsInteger:= XCodLote;
        DMMACS.TLote.Edit;
        DMMACS.TLote.FieldByName('DESCRICAO').AsString:=EdDescricao.Text;
        DMMACS.TLote.FieldByName('DTABERTURA').AsString:=EdDataAbertura.Text;
        DMMACS.TLote.FieldByName('DTFECHAMENTO').AsString:='';
        DMMACS.TLote.FieldByName('OBSERVACAO').AsString:=EdObservacao.Text;
        DMMACS.TLote.FieldByName('NUMERO').AsInteger:=StrToInt(EdLote.Text);
        DMMACS.TLote.FieldByName('STATUS').AsString:=DMMACS.TLote.FieldByName('status').AsString;
        DMMACS.TLote.Post;
        DMMACS.Transaction.CommitRetaining;

        XFlagEdit:=false;
   end;

   //PAulo 23/11/2010: PAra novo lote
   if XFlagEdit = false
   then begin
   	Try
       	DMMACS.TLote.Insert;
       	DMMACS.TLote.FieldByName('COD_LOTE').AsInteger:=InserReg(XTabela, XSQLTABELA, XPkTabela);
       	DMMACS.TLote.FieldByName('DESCRICAO').AsString:=EdDescricao.Text;
       	DMMACS.TLote.FieldByName('DTABERTURA').AsString:=EdDataAbertura.Text;
       	DMMACS.TLote.FieldByName('DTFECHAMENTO').AsString:='';
       	DMMACS.TLote.FieldByName('OBSERVACAO').AsString:=EdObservacao.Text;
       	DMMACS.TLote.FieldByName('NUMERO').AsInteger:=StrToInt(EdLote.Text);
       	DMMACS.TLote.FieldByName('STATUS').AsString:='N';
       	DMMACS.TLote.Post;
       	DMMACS.Transaction.CommitRetaining;
           MessageDlg('Lote Salvo com sucesso!', mtWarning, [mbOK], 0);
   	Except
   		MessageDlg('O Lote não foi salvo, tente reiniciar a aplicação', mtWarning, [mbOK], 0);
       	DMMACS.Transaction.RollbackRetaining;
   	End;
    end;   
   
  inherited;   
end;

procedure TFLote.BtnFechaLoteClick(Sender: TObject);
begin
  inherited;
   If DMMACS.TLote.FieldByName('STATUS').AsString='S'
   Then Begin
		MessageDlg('Este Lote se encontra fechado', mtWarning, [mbOK], 0);
       Exit;
   End;
   try
      //XCodLote:=DMMACS.TLote.FieldByName('COD_LOTE').AsInteger;
      DMMACS.TLote.Edit;
      DMMACS.TLote.FieldByName('DTFECHAMENTO').AsString:= DateToStr(Date());
      DMMACS.TLote.FieldByName('STATUS').AsString:='S';
      DMMACS.TLote.Post;
      DMMACS.Transaction.CommitRetaining;
      MessageDlg('O Lote fechado com sucesso!', mtWarning, [mbOK], 0);
   Except
   	MessageDlg('O Lote não fechado, tente reiniciar a aplicação', mtWarning, [mbOK], 0);
      	DMMACS.Transaction.RollbackRetaining;
   End;


end;

procedure TFLote.FormActivate(Sender: TObject);
begin
  inherited;
    XTabela:=DMMACS.TLote;
    XCampo:='DESCRICAO';
    XPkTabela:='COD_LOTE';
    XTransaction:=DMMACS.Transaction;
    XTab:=True;
    XDescricao:='o Lote';
    XSQLTABELA:='LOTE';
  	 XLiberaDados:=' order by lote.dtabertura ';
	 LiberaDados;
	 FMenu.XTIPOBOLTO:='';
    XFlagEdit:=false;  
end;

procedure TFLote.BtnNovoClick(Sender: TObject);
Var
	Year, Month, Day:word;
begin
   LbFech.Visible:=False;
   EdDataFechamento.Visible:=False;
   //Paulo 22/11/2010: Verifica o ultimo numero de lote
   DMMACS.TALX.Close;
   DMMACS.TALX.SQL.Clear;
   DMMACS.TALX.SQL.Add(' Select max(numero)from lote ');
   DMMACS.TALX.Open;
   if(DMMACS.TALX.IsEmpty)then
      EdLote.Text:='1'
   else
   	EdLote.Text:= IntToStr(DMMACS.TALX.FieldByName('max').AsInteger + 1);


       EdDataAbertura.Text:= DateToStr(Date());


  inherited;

end;

procedure TFLote.EdNomeKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
	If Key = #27 Then
       LiberaDados;
end;

procedure TFLote.BtnConsultarClick(Sender: TObject);
begin

  inherited;
   If DMMACS.TLote.FieldByName('STATUS').AsString='N'
   Then Begin
        LbFech.Visible:=False;
        EdDataFechamento.Visible:=False;
   End;
   If DMMACS.TLote.FieldByName('STATUS').AsString='S'
   Then Begin
        LbFech.Visible:=True;
        EdDataFechamento.Visible:=True;
        EdDataFechamento.Text:= DateToStr(DMMACS.TLote.FieldByName('DTFECHAMENTO').AsDateTime);
   End;
   EdLote.Text:=IntToStr(DMMACS.TLote.FieldByName('numero').AsInteger);
   EdDescricao.Text:=DMMACS.TLote.FieldByName('descricao').AsString;
   EdObservacao.Text:=DMMACS.TLote.FieldByName('observacao').AsString;
   EdDataAbertura.Text:=DateToStr(DMMACS.TLote.FieldByName('dtabertura').AsDateTime);
   XFlagEdit:=true;
   XCodLote:= DMMACS.TLote.FieldByName('cod_lote').AsInteger;
      

end;

end.

