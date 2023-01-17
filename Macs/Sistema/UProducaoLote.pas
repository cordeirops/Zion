unit UProducaoLote;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, TFlatEditUnit, Buttons, ExtCtrls,
  Mask, ColorMaskEdit, EditFloat, ColorEditFloat, DBCtrls, FR_DSet,
  FR_DBSet, FR_Class, FR_Cross;

type
  TFProducaoLote = class(TForm)
    ShapeFundo: TShape;
    SpTitulo02: TShape;
    ImgTitulo: TImage;
    BtnFecha: TSpeedButton;
    SpTitulo01: TShape;
    LDescTitulo: TLabel;
    PCadastro: TPanel;
    Panel2: TPanel;
    BtnCancelar: TBitBtn;
    BtnGravar: TBitBtn;
    PMatPrima: TPanel;
    Shape1: TShape;
    Label2: TLabel;
    Label3: TLabel;
    lbQuant: TLabel;
    Label5: TLabel;
    BtnMatPrima: TBitBtn;
    EdDescMat: TEdit;
    BtnAbreLote: TBitBtn;
    EdQtdLoteMat: TColorEditFloat;
    EdQuantMat: TColorEditFloat;
    cbLoteMat: TDBLookupComboBox;
    Label1: TLabel;
    Panel1: TPanel;
    Shape2: TShape;
    Label6: TLabel;
    Label7: TLabel;
    lbQuant1: TLabel;
    Label9: TLabel;
    BitBtn1: TBitBtn;
    EdDescProd: TEdit;
    BtnAbreLote1: TBitBtn;
    EdQtdLoteProd: TColorEditFloat;
    EdQuantProd: TColorEditFloat;
    CbLoteProd: TComboBox;
    Label10: TLabel;
    PConsulta: TPanel;
    Panel4: TPanel;
    BtnNovo: TBitBtn;
    BtnConsultar: TBitBtn;
    DBGridCadastroPadrao: TDBGrid;
    GroupBox1: TGroupBox;
    BtnSelecionar: TBitBtn;
    EdData: TMaskEdit;
    Label11: TLabel;
    BtnApagar: TBitBtn;
    Button1: TButton;
    DBLote1: TfrDBDataSet;
    FSLoteCrusado: TfrReport;
    frCrossObject1: TfrCrossObject;
    DBLote2: TfrDBDataSet;
    procedure BtnMatPrimaClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure cbLoteMatExit(Sender: TObject);
    procedure CbLoteProdExit(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure LimpaLabels;
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnConsultarClick(Sender: TObject);
    procedure BtnApagarClick(Sender: TObject);
    procedure BtnSelecionarClick(Sender: TObject);
    procedure BtnAbreLoteClick(Sender: TObject);
    procedure BtnAbreLote1Click(Sender: TObject);
    procedure BtnFechaClick(Sender: TObject);
    procedure BtnFechaMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure BtnFechaMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure EdDataKeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FProducaoLote: TFProducaoLote;
  XCodLoteProd,XCodLoteMat:Integer;
  

implementation

uses UDMMacs, UDMEstoque, UProduto, Alxor32, DB, UMenu, AlxMessage,
  UDMEntrada, ULote, UDMSaida;

{$R *.dfm}



procedure TFProducaoLote.BtnMatPrimaClick(Sender: TObject);
begin
	//Paulo 26/11/2010: abre formulario de produto para seleção
	If AbrirForm(TFProduto, FProduto, 1)='Selected'
   Then Begin
      EdDescMat.Text := DMESTOQUE.WSimilar.FieldByName('DESCRICAO').AsString;
   End;

   FiltraTabela(DMESTOQUE.Alx,'ESTOQUELOTE','COD_ESTOQUE',IntToStr(DMESTOQUE.WSimilar.FieldByName('COD_ESTOQUE').AsInteger),'');
   //Paulo 26/11/2010: Consulta o lote do produto
   DMMACS.TLote.Close;
   DMMACS.TLote.SQL.Clear;
   DMMACS.TLote.SQL.Add('select * from lote');
   DMMACS.TLote.SQL.Add('where cod_lote = :CODLOTE and lote.status = ''N'' order by lote.dtabertura');
   DMMACS.TLote.ParamByName('CODLOTE').AsInteger:= DMESTOQUE.Alx.FieldByName('COD_LOTE').AsInteger;
   DMMACS.TLote.Open;

end;


procedure TFProducaoLote.BitBtn1Click(Sender: TObject);
begin
      //Paulo 26/11/2010: abre formulario de produto para seleção
	If AbrirForm(TFProduto, FProduto, 1)='Selected'
   Then Begin
      EdDescProd.Text := DMESTOQUE.WSimilar.FieldByName('DESCRICAO').AsString;
   End;
   FiltraTabela(DMESTOQUE.Alx3,'ESTOQUELOTE','COD_ESTOQUE',IntToStr(DMESTOQUE.WSimilar.FieldByName('COD_ESTOQUE').AsInteger),'');
   //Paulo 26/11/2010: Consulta o lote do produto
   DMMACS.TALX.Close;
   DMMACS.TALX.SQL.Clear;
   DMMACS.TALX.SQL.Add('select * from lote');
   DMMACS.TALX.SQL.Add('where cod_lote = :CODLOTE and lote.status = ''N'' order by lote.dtabertura');
   DMMACS.TALX.ParamByName('CODLOTE').AsInteger:= DMESTOQUE.Alx3.FieldByName('COD_LOTE').AsInteger;
   DMMACS.TALX.Open;

   while not DMMACS.TALX.Eof do
   begin
   	CbLoteProd.Items.Add(IntToStr(DMMACS.TALX.FieldByName('NUMERO').AsInteger));
       DMMACS.TALX.Next;
   end;

end;

procedure TFProducaoLote.cbLoteMatExit(Sender: TObject);
begin
	 
    DMESTOQUE.Alx1.Close;
    DMESTOQUE.Alx1.SQL.Clear;
    DMESTOQUE.Alx1.SQL.Add('SELECT * FROM ESTOQUELOTE E');
    DMESTOQUE.Alx1.SQL.Add('WHERE E.COD_ESTOQUE = :CODEST AND E.COD_LOTE = :LOTE');
    DMESTOQUE.Alx1.ParamByName('CODEST').AsInteger:=DMESTOQUE.WSimilar.FieldByName('COD_ESTOQUE').AsInteger;
    DMESTOQUE.Alx1.ParamByName('LOTE').AsInteger:= DMMACS.TLote.FieldByName('COD_LOTE').AsInteger;
    DMESTOQUE.Alx1.Open;

    EdQtdLoteMat.ValueNumeric:= DMESTOQUE.Alx1.FieldByName('QUANTIDADE').AsFloat;
    XCodLoteMat:= DMESTOQUE.Alx1.FieldByName('COD_ESTOQUELOTE').AsInteger;
end;

procedure TFProducaoLote.CbLoteProdExit(Sender: TObject);
begin
    FiltraTabela(DMESTOQUE.Alx4,'LOTE','NUMERO',CbLoteProd.Text,'');

    DMESTOQUE.Alx2.Close;
    DMESTOQUE.Alx2.SQL.Clear;
    DMESTOQUE.Alx2.SQL.Add('SELECT * FROM ESTOQUELOTE E');
    DMESTOQUE.Alx2.SQL.Add('WHERE E.COD_ESTOQUE = :CODEST AND E.COD_LOTE = :LOTE');
    DMESTOQUE.Alx2.ParamByName('CODEST').AsInteger:=DMESTOQUE.WSimilar.FieldByName('COD_ESTOQUE').AsInteger;
    DMESTOQUE.Alx2.ParamByName('LOTE').AsInteger:= DMESTOQUE.Alx4.FieldByName('COD_LOTE').AsInteger;
    DMESTOQUE.Alx2.Open;
    
    EdQtdLoteProd.ValueNumeric:= DMESTOQUE.Alx2.FieldByName('QUANTIDADE').AsFloat;
    XCodLoteProd:= DMESTOQUE.Alx2.FieldByName('COD_ESTOQUELOTE').AsInteger;
end;

procedure TFProducaoLote.BtnGravarClick(Sender: TObject);
VAR
	XCOD_LOTE:Integer;
begin
	//Paulo 26/11/2010: valido se a quantidade é maior que o lote
   if EdQuantMat.ValueNumeric > EdQtdLoteMat.ValueNumeric
   then begin
   	Mensagem('LOTE', 'Não há estoque de matéria prima suficiente para essa produção', '', 1, 1, false, 'c');
       EdQuantMat.SetFocus;
   end;
   if EdQuantProd.ValueNumeric > EdQtdLoteProd.ValueNumeric
   then begin
   	Mensagem('LOTE', 'Não há estoque de produto acabado suficiente para essa produção', '', 1, 1, false, 'c');
       EdQuantProd.SetFocus;
   end;

   try
   	//Paulo 26/11/2010: Gravo os dados
   	XCOD_LOTE:=InserReg(DMESTOQUE.TProducaoLote, 'PRODUCAOLOTE', 'COD_PRODUCAOLOTE');
   	DMESTOQUE.TProducaoLote.FieldByName('COD_PRODUCAOLOTE').AsInteger:=XCOD_LOTE;
   	DMESTOQUE.TProducaoLote.FieldByName('QUANTSAIDA').AsFloat:=EdQuantMat.ValueNumeric;
   	DMESTOQUE.TProducaoLote.FieldByName('QUANTENT').AsFloat:=EdQuantProd.ValueNumeric;
   	DMESTOQUE.TProducaoLote.FieldByName('COD_LOTE_ENT').AsInteger:= XCodLoteProd;
   	DMESTOQUE.TProducaoLote.FieldByName('COD_LOTE_SAIDA').AsInteger:= XCodLoteMat;
   	DMESTOQUE.TProducaoLote.FieldByName('DATA').AsDateTime:= Date();
   	DMESTOQUE.TProducaoLote.FieldByName('CODUSUARIO').AsInteger:= StrToInt(FMenu.LCODUSUARIO.Caption);
   	DMESTOQUE.TProducaoLote.Post;
   	DMESTOQUE.TransacEstoque.CommitRetaining;

   	//Paulo 29/11/2010: subtraio a quantidade da tabela estoque lote para o item de matéria prima
   	FiltraTabela(DMESTOQUE.Alx1,'ESTOQUELOTE','COD_ESTOQUELOTE',IntToStr(XCodLoteMat),'');
  		DMENTRADA.TAlx.Close;
   	DMENTRADA.TAlx.SQL.Clear;
   	DMENTRADA.TAlx.SQL.Add('UPDATE ESTOQUELOTE EL SET EL.QUANTIDADE = :QTD');
   	DMENTRADA.TAlx.SQL.Add('WHERE EL.COD_ESTOQUELOTE = :CODEST');
   	DMENTRADA.TAlx.ParamByName('QTD').AsFloat:=DMESTOQUE.Alx1.FieldByName('QUANTIDADE').AsFloat - EdQuantMat.ValueNumeric;
   	DMENTRADA.TAlx.ParamByName('CODEST').AsInteger:= DMESTOQUE.Alx1.FieldByName('COD_ESTOQUELOTE').AsInteger;
   	DMENTRADA.TAlx.ExecSQL;
   	DMENTRADA.TAlx.Open;

       //Paulo 29/11/2010: Atualizo a tabela estoque subtraindo a quantidade matéria prima
       FiltraTabela(DMESTOQUE.Alx2,'ESTOQUE','COD_ESTOQUE',IntToStr(DMESTOQUE.Alx1.FieldByName('COD_ESTOQUE').AsInteger),'');
       DMENTRADA.TAlx.Close;
   	DMENTRADA.TAlx.SQL.Clear;
   	DMENTRADA.TAlx.SQL.Add('UPDATE ESTOQUE E SET E.ESTFISICO = :QTD');
   	DMENTRADA.TAlx.SQL.Add('WHERE E.COD_ESTOQUE = :CODEST');
   	DMENTRADA.TAlx.ParamByName('QTD').AsFloat:=DMESTOQUE.Alx2.FieldByName('ESTFISICO').AsFloat - EdQuantMat.ValueNumeric;
   	DMENTRADA.TAlx.ParamByName('CODEST').AsInteger:= DMESTOQUE.Alx2.FieldByName('COD_ESTOQUE').AsInteger;
   	DMENTRADA.TAlx.ExecSQL;
   	DMENTRADA.TAlx.Open;

   	//Paulo 29/11/2010: soma a quantidade da tabela estoque lote para o item de produto acabado
   	FiltraTabela(DMESTOQUE.Alx1,'ESTOQUELOTE','COD_ESTOQUELOTE',IntToStr(XCodLoteProd),'');
   	DMENTRADA.TAlx.Close;
   	DMENTRADA.TAlx.SQL.Clear;
   	DMENTRADA.TAlx.SQL.Add('UPDATE ESTOQUELOTE EL SET EL.QUANTIDADE = :QTD');
   	DMENTRADA.TAlx.SQL.Add('WHERE EL.COD_ESTOQUELOTE = :CODEST');
   	DMENTRADA.TAlx.ParamByName('QTD').AsFloat:=DMESTOQUE.Alx1.FieldByName('QUANTIDADE').AsFloat + EdQuantProd.ValueNumeric;
   	DMENTRADA.TAlx.ParamByName('CODEST').AsInteger:=DMESTOQUE.Alx1.FieldByName('COD_ESTOQUELOTE').AsInteger;
   	DMENTRADA.TAlx.ExecSQL;
   	DMENTRADA.TAlx.Open;

       //Paulo 29/11/2010: Atualizo a tabela estoque subtraindo a quantidade produto acabado
       FiltraTabela(DMESTOQUE.Alx2,'ESTOQUE','COD_ESTOQUE',IntToStr(DMESTOQUE.Alx1.FieldByName('COD_ESTOQUE').AsInteger),'');
       DMENTRADA.TAlx.Close;
   	DMENTRADA.TAlx.SQL.Clear;
   	DMENTRADA.TAlx.SQL.Add('UPDATE ESTOQUE E SET E.ESTFISICO = :QTD');
   	DMENTRADA.TAlx.SQL.Add('WHERE E.COD_ESTOQUE = :CODEST');
   	DMENTRADA.TAlx.ParamByName('QTD').AsFloat:=DMESTOQUE.Alx2.FieldByName('ESTFISICO').AsFloat + EdQuantProd.ValueNumeric;
   	DMENTRADA.TAlx.ParamByName('CODEST').AsInteger:= DMESTOQUE.Alx2.FieldByName('COD_ESTOQUE').AsInteger;
   	DMENTRADA.TAlx.ExecSQL;
       DMENTRADA.TAlx.Open;

       DMENTRADA.IBT.CommitRetaining;
       Mensagem('Produção Lote', 'Produção efetuada com sucesso!', '', 1, 1, false, 'c');
       FormActivate(Sender);
   except
      Mensagem('Produção Lote', 'Produção não pode ser salva, reinicie o sistema.', '', 1, 1, false, 'E');
      //Paulo 29/11/2010: Caso haja algum erro acima ele cancela todas as transações
      DMENTRADA.IBT.RollbackRetaining;
      DMESTOQUE.TransacEstoque.RollbackRetaining;
   end;
end;

procedure TFProducaoLote.FormActivate(Sender: TObject);
begin
	DMSAIDA.TAlx.Close;
   DMSAIDA.TAlx.SQL.Clear;
   DMSAIDA.TAlx.SQL.Add('select lote.numero, vwsimilar.descricao, producaolote.*');
   DMSAIDA.TAlx.SQL.Add('from producaolote');
   DMSAIDA.TAlx.SQL.Add('left join estoquelote on estoquelote.cod_estoquelote = producaolote.cod_lote_ent');
   DMSAIDA.TAlx.SQL.Add('left join lote on lote.cod_lote = estoquelote.cod_lote');
   DMSAIDA.TAlx.SQL.Add('left join vwsimilar on vwsimilar.cod_estoque = estoquelote.cod_estoque');
   DMSAIDA.TAlx.Open;

   PConsulta.BringToFront;
   PConsulta.Visible := True;
   
   PCadastro.SendToBack;
   PCadastro.Visible := False;;
   BtnFecha.Transparent:=True;

   //FiltraTabela(DMESTOQUE.TProducaoLote,'PRODUCAOLOTE','','','');
end;

procedure TFProducaoLote.BtnNovoClick(Sender: TObject);
begin
	   PCadastro.BringToFront;
      PCadastro.Visible := True;

      PConsulta.SendToBack;
      PConsulta.Visible := False;

      EdQtdLoteMat.Visible:=True;
      lbQuant.Visible:=True;
      BtnAbreLote.Enabled:=True;
      EdQtdLoteProd.Visible:=True;
      lbQuant1.Visible:=True;
      EdDescProd.ReadOnly:= False;
      EdQuantProd.ReadOnly:= False;
  	   BtnAbreLote1.Enabled:=True;
      EdDescMat.ReadOnly:= False;
      EdQuantMat.ReadOnly:= False;
      BtnAbreLote.Enabled:=True;
      BtnGravar.Enabled:=True;
      BtnMatPrima.Enabled:=True;
      BitBtn1.Enabled:=True;

      LimpaLabels;
end;

procedure TFProducaoLote.LimpaLabels;
begin
   //Paulo 29/11/2010: Para limpar as labels do cadastro
   EdDescMat.Text:='';
   EdDescProd.Text:='';
   EdQtdLoteMat.ValueNumeric:=0.00;
   EdQtdLoteProd.ValueNumeric:=0.00;
   EdQuantMat.ValueNumeric:=0.00;
   EdQuantProd.ValueNumeric:=0.00;
   cbLoteMat.Repaint;
   CbLoteProd.Clear;
end;

procedure TFProducaoLote.BtnCancelarClick(Sender: TObject);
begin
	LimpaLabels;
   FormActivate(Sender);


end;

procedure TFProducaoLote.BtnConsultarClick(Sender: TObject);
begin
  	PCadastro.BringToFront;
  	PCadastro.Visible := True;

  	PConsulta.SendToBack;
  	PConsulta.Visible := False;

	//PAulo 29/11/2010: Filtra tabelas para mostrar os dados de matéria prima
   FiltraTabela(DMESTOQUE.Alx2,'ESTOQUELOTE','COD_ESTOQUELOTE',IntToStr(DMSAIDA.TAlx.FieldByName('COD_LOTE_SAIDA').AsInteger),'');
   FiltraTabela(DMESTOQUE.WSimilar,'VWSIMILAR','COD_ESTOQUE',IntToStr(DMESTOQUE.Alx2.FieldByName('COD_ESTOQUE').AsInteger),'');

   EdDescMat.Text:= DMESTOQUE.WSimilar.FieldByName('DESCRICAO').AsString;
   EdQtdLoteMat.Visible:=False;
   lbQuant.Visible:=False;
   EdQuantMat.ValueNumeric:= DMSAIDA.TAlx.FieldByName('QUANTSAIDA').AsFloat;
   FiltraTabela(DMMACS.TLote,'LOTE','COD_LOTE',IntToStr(DMESTOQUE.Alx2.FieldByName('COD_LOTE').AsInteger),'');


   //PAulo 29/11/2010: Filtra tabelas para mostrar os dados do produto acabado
   FiltraTabela(DMESTOQUE.Alx2,'ESTOQUELOTE','COD_ESTOQUELOTE',IntToStr(DMSAIDA.TAlx.FieldByName('COD_LOTE_ENT').AsInteger),'');
   FiltraTabela(DMESTOQUE.WSimilar,'VWSIMILAR','COD_ESTOQUE',IntToStr(DMESTOQUE.Alx2.FieldByName('COD_ESTOQUE').AsInteger),'');

   EdDescProd.Text:= DMESTOQUE.WSimilar.FieldByName('DESCRICAO').AsString;
   EdQtdLoteProd.Visible:=False;
   lbQuant1.Visible:=False;
   EdQuantProd.ValueNumeric:= DMSAIDA.TAlx.FieldByName('QUANTENT').AsFloat;
   FiltraTabela(DMMACS.TALX,'LOTE','COD_LOTE',IntToStr(DMESTOQUE.Alx2.FieldByName('COD_LOTE').AsInteger),'');
   CbLoteProd.Text:= IntToStr(DMMACS.TALX.FieldByName('NUMERO').AsInteger);

   //Paulo 29/11/2010: Os edits ficam em read only, o usuário não pode editar os dados
   EdDescMat.ReadOnly:= True;
   EdQuantMat.ReadOnly:= True;
   BtnAbreLote.Enabled:=False;
   EdDescProd.ReadOnly:= True;
   EdQuantProd.ReadOnly:= True;
   BtnAbreLote1.Enabled:=False;
   BtnMatPrima.Enabled:=False;
   BitBtn1.Enabled:=False;

   BtnGravar.Enabled:=False;

end;

procedure TFProducaoLote.BtnApagarClick(Sender: TObject);
begin
	 if DMESTOQUE.TProducaoLote.IsEmpty then
    	exit;
    if Mensagem('ATENÇÃO', 'Deseja realmente apagar a produção selecionada?', '', 2, 3, False, 'C')= 2 then
    begin
    	TRY
        	//PAulo 29/11/2010: Filtra tabelas para mostrar os dados de matéria prima e prod acabado
   		FiltraTabela(DMESTOQUE.Alx2,'ESTOQUELOTE','COD_ESTOQUELOTE',IntToStr(DMSAIDA.TAlx.FieldByName('COD_LOTE_SAIDA').AsInteger),'');
       	FiltraTabela(DMESTOQUE.Alx1,'ESTOQUELOTE','COD_ESTOQUELOTE',IntToStr(DMSAIDA.TAlx.FieldByName('COD_LOTE_ENT').AsInteger),'');

       	//Paulo 29/11/2010: Apaga os dados da tabela producaoLote
       	DMENTRADA.TAlx.Close;
   		DMENTRADA.TAlx.SQL.Clear;
   		DMENTRADA.TAlx.SQL.Add('DELETE  FROM PRODUCAOLOTE');
   		DMENTRADA.TAlx.SQL.Add('WHERE COD_PRODUCAOLOTE = :CODLOT');
   		DMENTRADA.TAlx.ParamByName('CODLOT').AsInteger:=DMSAIDA.TAlx.FieldByName('COD_PRODUCAOLOTE').AsInteger;
   		DMENTRADA.TAlx.ExecSQL;
   		DMENTRADA.TAlx.Open;

           //Atualiza os Dados da tabela EstoqueLote referente a matéria prima
           DMENTRADA.TAlx.Close;
           DMENTRADA.TAlx.SQL.Clear;
           DMENTRADA.TAlx.SQL.Add('UPDATE ESTOQUELOTE EL SET EL.QUANTIDADE = :QTD');
           DMENTRADA.TAlx.SQL.Add('WHERE EL.COD_ESTOQUELOTE = :CODEST');
           DMENTRADA.TAlx.ParamByName('QTD').AsFloat:=DMESTOQUE.Alx2.FieldByName('QUANTIDADE').AsFloat + DMSAIDA.TAlx.FieldByName('QUANTSAIDA').AsFloat;
           DMENTRADA.TAlx.ParamByName('CODEST').AsInteger:=DMESTOQUE.Alx2.FieldByName('COD_ESTOQUELOTE').AsInteger;
           DMENTRADA.TAlx.ExecSQL;
           DMENTRADA.TAlx.Open;

           //Paulo 29/11/2010: Atualizo a tabela estoque REFERENTE A MATÉRIA PRIMA
           FiltraTabela(DMESTOQUE.Alx3,'ESTOQUE','COD_ESTOQUE',IntToStr(DMESTOQUE.Alx2.FieldByName('COD_ESTOQUE').AsInteger),'');
           DMENTRADA.TAlx.Close;
           DMENTRADA.TAlx.SQL.Clear;
           DMENTRADA.TAlx.SQL.Add('UPDATE ESTOQUE E SET E.ESTFISICO = :QTD');
           DMENTRADA.TAlx.SQL.Add('WHERE E.COD_ESTOQUE = :CODEST');
           DMENTRADA.TAlx.ParamByName('QTD').AsFloat:=DMESTOQUE.Alx3.FieldByName('ESTFISICO').AsFloat + DMSAIDA.TAlx.FieldByName('QUANTSAIDA').AsFloat;
           DMENTRADA.TAlx.ParamByName('CODEST').AsInteger:= DMESTOQUE.Alx3.FieldByName('COD_ESTOQUE').AsInteger;
           DMENTRADA.TAlx.ExecSQL;
           DMENTRADA.TAlx.Open;

           //Atualiza os Dados da tabela EstoqueLote referente aO PRODUTO ACABADO
           DMENTRADA.TAlx.Close;
           DMENTRADA.TAlx.SQL.Clear;
           DMENTRADA.TAlx.SQL.Add('UPDATE ESTOQUELOTE EL SET EL.QUANTIDADE = :QTD');
           DMENTRADA.TAlx.SQL.Add('WHERE EL.COD_ESTOQUELOTE = :CODEST');
           DMENTRADA.TAlx.ParamByName('QTD').AsFloat:=DMESTOQUE.Alx1.FieldByName('QUANTIDADE').AsFloat - DMSAIDA.TAlx.FieldByName('QUANTENT').AsFloat;
           DMENTRADA.TAlx.ParamByName('CODEST').AsInteger:=DMESTOQUE.Alx1.FieldByName('COD_ESTOQUELOTE').AsInteger;
           DMENTRADA.TAlx.ExecSQL;
           DMENTRADA.TAlx.Open;

           //Paulo 29/11/2010: Atualizo a tabela estoque REFERENTE A MATÉRIA PRIMA
           FiltraTabela(DMESTOQUE.Alx3,'ESTOQUE','COD_ESTOQUE',IntToStr(DMESTOQUE.Alx1.FieldByName('COD_ESTOQUE').AsInteger),'');
           DMENTRADA.TAlx.Close;
           DMENTRADA.TAlx.SQL.Clear;
           DMENTRADA.TAlx.SQL.Add('UPDATE ESTOQUE E SET E.ESTFISICO = :QTD');
           DMENTRADA.TAlx.SQL.Add('WHERE E.COD_ESTOQUE = :CODEST');
           DMENTRADA.TAlx.ParamByName('QTD').AsFloat:=DMESTOQUE.Alx3.FieldByName('ESTFISICO').AsFloat - DMSAIDA.TAlx.FieldByName('QUANTENT').AsFloat;
           DMENTRADA.TAlx.ParamByName('CODEST').AsInteger:= DMESTOQUE.Alx3.FieldByName('COD_ESTOQUE').AsInteger;
           DMENTRADA.TAlx.ExecSQL;
           DMENTRADA.TAlx.Open;

           DMENTRADA.IBT.CommitRetaining;

           Mensagem('Produção Lote', 'Produção excluida com sucesso!', '', 1, 1, false, 'C');

           FormActivate(Sender);
       EXCEPT
           Mensagem('Produção Lote', 'Ocorreu um erro ao apagar a produção selecionada!', '', 1, 1, false, 'E');
           //Paulo 29/11/2010: Caso haja algum erro acima ele cancela todas as transações
           DMENTRADA.IBT.RollbackRetaining;
           Exit;
       END;


    end;
end;

procedure TFProducaoLote.BtnSelecionarClick(Sender: TObject);
begin
     DMSAIDA.TAlx.Close;
     DMSAIDA.TAlx.SQL.Clear;
     DMSAIDA.TAlx.SQL.Add('select lote.numero, vwsimilar.descricao, producaolote.*');
     DMSAIDA.TAlx.SQL.Add('from producaolote');
     DMSAIDA.TAlx.SQL.Add('left join estoquelote on estoquelote.cod_estoquelote = producaolote.cod_lote_ent');
     DMSAIDA.TAlx.SQL.Add('left join lote on lote.cod_lote = estoquelote.cod_lote');
     DMSAIDA.TAlx.SQL.Add('left join vwsimilar on vwsimilar.cod_estoque = estoquelote.cod_estoque');
     DMSAIDA.TAlx.SQL.Add('where producaolote.data = :DATA');
     DMSAIDA.TAlx.ParamByName('DATA').AsDate:= StrToDate(EdData.Text);
     DMSAIDA.TAlx.Open;

     DBGridCadastroPadrao.Repaint;
end;

procedure TFProducaoLote.BtnAbreLoteClick(Sender: TObject);
begin
	AbrirForm(TFLote,FLote,0);
end;

procedure TFProducaoLote.BtnAbreLote1Click(Sender: TObject);
begin
	AbrirForm(TFLote,FLote,0);
end;

procedure TFProducaoLote.BtnFechaClick(Sender: TObject);
begin
	Close;
end;

procedure TFProducaoLote.BtnFechaMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
    BtnFecha.Transparent:=True;
end;

procedure TFProducaoLote.BtnFechaMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
	BtnFecha.Transparent:=False;
end;

procedure TFProducaoLote.EdDataKeyPress(Sender: TObject; var Key: Char);
begin
	If Key = #27 then
     FormActivate(Sender);

   if Key = #13 then
   	BtnSelecionarClick(Sender);


end;

procedure TFProducaoLote.Button1Click(Sender: TObject);
begin
	//Teste para selecionar os dados para o relatório
   //Para o titulo dos produtos

   {
   DMESTOQUE.Alx5.Close;
   DMESTOQUE.Alx5.SQL.Clear;
   DMESTOQUE.Alx5.SQL.Add('select  lote.numero,vwsimilar.descricao AS DESCRICAO,');
   DMESTOQUE.Alx5.SQL.Add('producaolote.quantent from producaolote');
   DMESTOQUE.Alx5.SQL.Add('left join estoquelote on producaolote.cod_lote_ent =estoquelote.cod_estoquelote');
   DMESTOQUE.Alx5.SQL.Add('left join lote on lote.cod_lote = estoquelote.cod_lote');
   DMESTOQUE.Alx5.SQL.Add('left join vwsimilar on vwsimilar.cod_estoque = estoquelote.cod_estoque');
   DMESTOQUE.Alx5.Open;
   }
   DMESTOQUE.Alx5.Close;
   DMESTOQUE.Alx5.SQL.Clear;
   DMESTOQUE.Alx5.SQL.Add('select vwsimilar.descricao AS DESCRICAO, estoquelote.quantidade, lote.numero');
   DMESTOQUE.Alx5.SQL.Add('from estoquelote');
   DMESTOQUE.Alx5.SQL.Add('left join lote on lote.cod_lote = estoquelote.cod_lote');
   DMESTOQUE.Alx5.SQL.Add('left join vwsimilar on vwsimilar.cod_estoque = estoquelote.cod_estoque');
   DMESTOQUE.Alx5.SQL.Add('order by lote.numero');
   DMESTOQUE.Alx5.Open;

   DMESTOQUE.Alx4.Close;
   DMESTOQUE.Alx4.SQL.Clear;
   DMESTOQUE.Alx4.SQL.Add('select lote.numero');
   DMESTOQUE.Alx4.SQL.Add('from lote');
   DMESTOQUE.Alx4.SQL.Add('left join estoquelote on lote.cod_lote = estoquelote.cod_lote');
   DMESTOQUE.Alx4.SQL.Add('group by lote.numero');
   DMESTOQUE.Alx4.SQL.Add('order by lote.numero');
   DMESTOQUE.Alx4.Open;



   FSLoteCrusado.LoadFromFile('C:\MZR\MACS\Rel\FrfProducaoLote.frf');
   FSLoteCrusado.ShowReport;


end;

procedure TFProducaoLote.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
	if PCadastro.Visible then
   	BtnCancelar.Click
   else
   	BtnFecha.Click;
end;

end.
