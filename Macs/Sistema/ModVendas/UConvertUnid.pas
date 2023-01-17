unit UConvertUnid;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UCadPadrao, ExtCtrls, TFlatHintUnit, Grids, DBGrids, StdCtrls,
  TFlatEditUnit, Buttons, jpeg, UFrmBusca, Mask, DBCtrls, DBColorEdit,
  EditFloat, DrLabel;

type
  TFConvertUnid = class(TFCadPadrao)
    FrmUnidEnt: TFrmBusca;
    FrmUnidSai: TFrmBusca;
    LTextoBusca: TLabel;
    EdQtd: TFloatEdit;
    procedure FrfUnidEntBTNMINUSClick(Sender: TObject);
    procedure FrmUnidEntBTNOPENClick(Sender: TObject);
    procedure FrmUnidEntEDCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure FrmUnidSaiBTNMINUSClick(Sender: TObject);
    procedure FrmUnidSaiBTNOPENClick(Sender: TObject);
    procedure FrmUnidSaiEDCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure BtnConsultarClick(Sender: TObject);
    procedure BtnApagarClick(Sender: TObject);
    procedure dadosconvert;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FConvertUnid: TFConvertUnid;
  XCOD_UNIDENT, XCOD_UNIDSAI, XCODPKMESTRE: Integer;
  XSTATE: String;

implementation

uses UDMEstoque, Alxor32, UCadUnidade, AlxMessage, UPadrao, UDMGEOGRAFIA,
  UDMMacs;

{$R *.DFM}

procedure TFConvertUnid.FrfUnidEntBTNMINUSClick(Sender: TObject);
begin
  inherited;
	XCOD_UNIDENT:=-1;
   FrmUnidEnt.EDCodigo.TEXT:='';
   FrmUnidEnt.EdDescricao.TEXT:='';
   FrmUnidEnt.Refresh;   
end;

procedure TFConvertUnid.FrmUnidEntBTNOPENClick(Sender: TObject);
begin
  inherited;
	filtraTabela(DMESTOQUE.TUnidade, 'UNIDADE', '', '', ' ORDER BY UNIDADE');
   If AbrirForm(TFCADUNIDADE, FCADUNIDADE, 1)='Selected'
   Then Begin
	   XCOD_UNIDENT:=DMESTOQUE.TUNIDADE.FieldByName('cod_unidade').AsInteger;
      FrmUnidEnt.EdDescricao.Text:=DMESTOQUE.TUNIDADE.FieldByName('DESC_UNID').AsString;
      FrmUnidEnt.EDCodigo.text:=DMESTOQUE.TUNIDADE.FieldByName('cod_unidade').AsString;
   End;
   FrmUnidEnt.Refresh;   
end;

procedure TFConvertUnid.FrmUnidEntEDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	If Key = #13
   Then Begin
   	If FrmUnidEnt.EDCodigo.Text<>''
       Then Begin
	 	   If FiltraTabela(DMESTOQUE.TUNIDADE, 'UNIDADE', 'COD_UNIDADE', FrmUnidEnt.EDCodigo.Text, '')=True
	       Then Begin //Slecionou o registro procurado
	       		XCOD_UNIDENT:=DMESTOQUE.TUnidade.FieldByName('COD_UNIDADE').AsInteger;
           	FrmUnidEnt.EDCodigo.text:=DMESTOQUE.TUnidade.FieldByName('COD_UNIDADE').AsString;
           	FrmUnidEnt.EdDescricao.Text:=DMESTOQUE.TUNIDADE.FieldByName('DESC_UNID').AsString;
          End
          Else Begin
               XCOD_UNIDENT:=-1;
           	FrmUnidEnt.EDCodigo.Text:='';
           	FrmUnidEnt.EdDescricao.Text:='';
          End;
       End
       Else Begin
          XCOD_UNIDENT:=-1;
          FrmUnidEnt.EDCodigo.Text:='';
          FrmUnidEnt.EdDescricao.Text:='';
       End;
       FrmUnidEnt.Refresh;
   End;
end;

procedure TFConvertUnid.FrmUnidSaiBTNMINUSClick(Sender: TObject);
begin
  inherited;
	XCOD_UNIDSAI:=-1;
   FrmUnidSai.EDCodigo.TEXT:='';
   FrmUnidSai.EdDescricao.TEXT:='';
	FrmUnidSai.Refresh;   
end;

procedure TFConvertUnid.FrmUnidSaiBTNOPENClick(Sender: TObject);
begin
  inherited;
	filtraTabela(DMESTOQUE.TUnidade, 'UNIDADE', '', '', ' ORDER BY UNIDADE');
   If AbrirForm(TFCADUNIDADE, FCADUNIDADE, 1)='Selected'
   Then Begin
	   XCOD_UNIDSAI:=DMESTOQUE.TUNIDADE.FieldByName('cod_unidade').AsInteger;
      FrmUnidSai.EdDescricao.Text:=DMESTOQUE.TUNIDADE.FieldByName('DESC_UNID').AsString;
      FrmUnidSai.EDCodigo.text:=DMESTOQUE.TUNIDADE.FieldByName('cod_unidade').AsString;
   End;
	FrmUnidSai.Refresh;   
end;

procedure TFConvertUnid.FrmUnidSaiEDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	If Key = #13
   Then Begin
   	If FrmUnidSai.EDCodigo.Text<>''
       Then Begin
	 	   If FiltraTabela(DMESTOQUE.TUNIDADE, 'UNIDADE', 'COD_UNIDADE', FrmUnidSai.EDCodigo.Text, '')=True
	       Then Begin //Slecionou o registro procurado
	       		XCOD_UNIDSAI:=DMESTOQUE.TUnidade.FieldByName('COD_UNIDADE').AsInteger;
           	FrmUnidSai.EDCodigo.text:=DMESTOQUE.TUnidade.FieldByName('COD_UNIDADE').AsString;
           	FrmUnidSai.EdDescricao.Text:=DMESTOQUE.TUNIDADE.FieldByName('DESC_UNID').AsString;
          End
          Else Begin
               XCOD_UNIDSAI:=-1;
           	FrmUnidSAI.EDCodigo.Text:='';
           	FrmUnidSAI.EdDescricao.Text:='';
          End;
       End
       Else Begin
          XCOD_UNIDSAI:=-1;
          FrmUnidSAI.EDCodigo.Text:='';
          FrmUnidSAI.EdDescricao.Text:='';
       End;
		FrmUnidSai.Refresh;       
   End;
end;

procedure TFConvertUnid.FormActivate(Sender: TObject);
begin
  inherited;
	Caption:='Conversão unitária' ;
    FrmUnidEnt.Refresh;
    FrmUnidSai.Refresh;
    XTabela:=DMEstoque.TConvert;
    XCampo:='COD_CONVUNID';
    XPkTabela:='COD_CONVUNID';
    XView:=DMESTOQUE.Alx;
    XTransaction:=DMEstoque.TransacEstoque;
    XTab:=False;
    XDescricao:='A Conversão';
    XSQLTABELA:='CONVUNID';
    XLiberaDados:='';
    {DMESTOQUE.Alx.Close;
    DMESTOQUE.Alx.SQL.Clear;
    DMESTOQUE.Alx.SQL.Add('select * FROM convunid ');
    DMESTOQUE.Alx.SQL.Add('left join unidade ON convunid.cod_unident = unidade.cod_unidade ');
    DMESTOQUE.Alx.SQL.Add('left join unidade ON convunid.cod_unidsai = unidade.cod_unidade');
    DMESTOQUE.Alx.Open;
    DBGridCadastroPadrao.DataSource:=DMESTOQUE.DSAlx; }
    dadosconvert;
    XSTATE:='';
end;

procedure TFConvertUnid.dadosconvert;
var
    x :Integer;
begin
    // - 05/03/2009: limpa TMP
    DMGEOGRAFIA.TAlx.Close;
    DMGEOGRAFIA.TAlx.SQL.Clear;
    DMGEOGRAFIA.TAlx.SQL.Add('delete from TMP');
    DMGEOGRAFIA.TAlx.ExecSQL;
    DMGEOGRAFIA.IBT.CommitRetaining;
    FiltraTabela(DMMACS.TMP, 'TMP', '', '', '');

    FiltraTabela(DMESTOQUE.TSubProd, 'SUBPRODUTO', 'COD_SUBPRODUTO', DMESTOQUE.TEstoque.FieldByName('COD_SUBPROD').AsString, '');

    DMESTOQUE.Alx.Close;
    DMESTOQUE.Alx.SQL.Clear;
    DMESTOQUE.Alx.SQL.Add('select * from convunid');
    DMESTOQUE.Alx.SQL.Add('left join unidade ON convunid.cod_unident = unidade.cod_unidade');
    DMESTOQUE.Alx.Open;
    DMESTOQUE.Alx.First;

    x:=1;
    while not DMESTOQUE.Alx.Eof do
    begin
        DMMACS.TMP.Insert;
        DMMACS.TMP.FieldByName('DESC1').AsString:=DMESTOQUE.Alx.fieldByName('DESC_UNID').AsString;
        DMMACS.TMP.FieldByName('DESC3').AsString:=DMESTOQUE.Alx.fieldByName('COD_CONVUNID').AsString;
        DMMACS.TMP.FieldByName('VLR1').AsString:=DMESTOQUE.Alx.fieldByName('QTDCONVERT').AsString;
        DMMACS.TMP.FieldByName('VLR2').AsString:=DMESTOQUE.Alx.fieldByName('COD_UNIDSAI').AsString;
        DMMACS.TMP.FieldByName('VLR3').AsString:=DMESTOQUE.Alx.fieldByName('COD_UNIDADE').AsString;
        DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=x;
        x:=x+1;
        DMMACS.TMP.Post;
        DMESTOQUE.Alx.Next;
    end;

    DMMACS.Transaction.CommitRetaining;

    DMESTOQUE.Alx.Close;
    DMESTOQUE.Alx.SQL.Clear;
    DMESTOQUE.Alx.SQL.Add('select * from convunid');
    DMESTOQUE.Alx.SQL.Add('left join unidade ON convunid.cod_unidsai = unidade.cod_unidade');
    DMESTOQUE.Alx.Open;
    DMESTOQUE.Alx.First;

    FiltraTabela(DMMACS.TMP, 'TMP', '', '', '');
           
    while not DMESTOQUE.Alx.Eof do
    begin
        if FiltraTabela(DMMACS.TMP, 'TMP', 'DESC3', DMESTOQUE.Alx.FieldByName('COD_CONVUNID').AsString,'') = true
        then begin
            DMMACS.TMP.Edit;
            DMMACS.TMP.FieldByName('DESC2').AsString := DMESTOQUE.Alx.fieldByName('DESC_UNID').AsString;
            DMMACS.TMP.Post;
        end;
        DMESTOQUE.Alx.Next;
    end;

    DMMACS.Transaction.CommitRetaining;
    DMMACS.IBTCodigo.CommitRetaining;

    DMESTOQUE.Alx.Close;
    DMESTOQUE.Alx.SQL.Clear;
    DMESTOQUE.Alx.SQL.Add('select tmp.desc1 AS DESC_UNID, tmp.desc2 AS DESC_UNID1, tmp.desc3 AS COD_CONVUNID, ');
    DMESTOQUE.Alx.SQL.Add('tmp.vlr1 AS QTDCONVERT, tmp.vlr2 AS COD_UNIDSAI, tmp.vlr3 AS COD_UNIDADE from tmp');
    DMESTOQUE.Alx.SQL.Add('where tmp.desc2 <> :DESC');
    DMESTOQUE.Alx.ParamByName('DESC').AsString:= '';
    DMESTOQUE.Alx.Open;

    DBGridCadastroPadrao.DataSource:=DMESTOQUE.DSAlx;
end;

procedure TFConvertUnid.BtnNovoClick(Sender: TObject);
begin
  inherited;
   XCODPKMESTRE:=InserReg(XTabela, XSQLTABELA, XPkTabela);
   FrmUnidEnt.EDCodigo.Text:='';
   FrmUnidSai.EDCodigo.Text:='';
   FrmUnidEnt.EdDescricao.Text:='';
   FrmUnidSai.EdDescricao.Text:='';
   EdQtd.ValueNumeric:=0; 
   FrmUnidEnt.EDCodigo.SetFocus;
   XSTATE:='INSERT';
end;

procedure TFConvertUnid.BtnGravarClick(Sender: TObject);
begin
  	If FrmUnidEnt.EdDescricao.Text=''
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Por favor, informe a Unidade a Converter!', '', 1, 1, True, 'i');
       FrmUnidEnt.EDCodigo.SetFocus;
   	Exit;
   End;
  	If FrmUnidsai.EdDescricao.Text=''
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Por favor, informe a Unidade Convertida!', '', 1, 1, True, 'i');
       FrmUnidSai.EDCodigo.SetFocus;
   	Exit;
   End;
   If EdQtd.ValueNumeric<0
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Por favor, informe uma Qtde. Convertida!', '', 1, 1, True, 'i');
      	EdQtd.SetFocus;
  		Exit;
   End;
   If XSTATE='INSERT'
   Then Begin
   	XTabela.Edit;
   	XTabela.FieldByName('cod_unident').AsInteger:=XCOD_UNIDENT;
   	XTabela.FieldByName('cod_unidsai').AsInteger:=XCOD_UNIDSAI;
   	XTabela.FieldByName('QTDCONVERT').AsString:=EdQtd.Text;
   	XTabela.Post;
   End
   Else Begin
       If FiltraTabela(XTabela, 'convunid', 'cod_convunid', IntToStr(XCODPKMESTRE), '')=True
       Then Begin
   		XTabela.Edit;
   		XTabela.FieldByName('cod_unident').AsInteger:=XCOD_UNIDENT;
   		XTabela.FieldByName('cod_unidsai').AsInteger:=XCOD_UNIDSAI;
   		XTabela.FieldByName('QTDCONVERT').AsString:=EdQtd.Text;
   		XTabela.Post;
       End
       Else Begin
       	Mensagem('Informação', 'As alterações não foram efetuadas ', '', 1, 1, False, 'I');
       End;
   End;
   XTransaction.CommitRetaining;
{   DMESTOQUE.Alx.Close;
   DMESTOQUE.Alx.SQL.Clear;
   DMESTOQUE.Alx.SQL.Add('select * FROM convunid ');
   DMESTOQUE.Alx.SQL.Add('left join unidade ON convunid.cod_unident = unidade.cod_unidade ');
   DMESTOQUE.Alx.SQL.Add('left join unidade ON convunid.cod_unidsai = unidade.cod_unidade');
   DMESTOQUE.Alx.Open;
   DBGridCadastroPadrao.DataSource:=DMESTOQUE.DSAlx;}
   dadosconvert;
  inherited;   
end;

procedure TFConvertUnid.BtnConsultarClick(Sender: TObject);
begin
  inherited;
    XCODPKMESTRE:=DMESTOQUE.Alx.FieldByName('COD_CONVUNID').AsInteger;
    //filtra unidade de Entrada
    FiltraTabela(DMEstoque.TUnidade, 'UNIDADE', 'COD_UNIDADE', DMEstoque.Alx.FieldByName('COD_UNIDENT').AsString, '');
    FrmUnidEnt.EDCodigo.Text:=DMEstoque.TUNIDADE.FieldByName('COD_UNIDADE').AsString;
    FrmUnidEnt.EdDescricao.Text:=DMEstoque.TUNIDADE.FieldByName('DESC_UNID').AsString;
    XCOD_UNIDENT:=DMEstoque.TUNIDADE.FieldByName('COD_UNIDADE').AsInteger;
    //filtra unidade de Saída
    FiltraTabela(DMEstoque.TUnidade, 'UNIDADE', 'COD_UNIDADE', DMEstoque.Alx.FieldByName('COD_UNIDSAI').AsString, '');
    FrmUnidSai.EDCodigo.Text:=DMEstoque.TUNIDADE.FieldByName('COD_UNIDADE').AsString;
    FrmUnidSai.EdDescricao.Text:=DMEstoque.TUNIDADE.FieldByName('DESC_UNID').AsString;
    XCOD_UNIDSAI:=DMEstoque.TUNIDADE.FieldByName('COD_UNIDADE').AsInteger;
    EdQtd.Text:=DMESTOQUE.Alx.FieldByName('QTDCONVERT').AsString; 
end;

procedure TFConvertUnid.BtnApagarClick(Sender: TObject);
begin
  inherited;
	 If FiltraTabela(DMESTOQUE.TConvert, XSQLTABELA, 'COD_CONVUNID', DMESTOQUE.Alx.FieldByName('COD_CONVUNID').AsString, '')=True
	 Then Begin
	   If Mensagem('Confirmação do usuário', 'Deseja realmente apagar a conversão '+ #13+DMESTOQUE.Alx.FieldByName('DESC_UNID').AsString+'/'+DMESTOQUE.Alx.FieldByName('DESC_UNID1').AsString+'?', '', 2, 3, False, 'c')=2
      Then Begin
      		TransReg(Xtabela, XTransaction, 'a')
      End;
    End;
    DMESTOQUE.Alx.Close;
    DMESTOQUE.Alx.SQL.Clear;
    DMESTOQUE.Alx.SQL.Add('select * FROM convunid ');
    DMESTOQUE.Alx.SQL.Add('left join unidade ON convunid.cod_unident = unidade.cod_unidade ');
    DMESTOQUE.Alx.SQL.Add('left join unidade ON convunid.cod_unidsai = unidade.cod_unidade');
    DMESTOQUE.Alx.Open;
end;

end.
