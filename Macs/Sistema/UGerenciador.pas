UNIT UGerenciador;
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UPadraoRodaPe, TFlatHintUnit, Buttons, jpeg, ExtCtrls,
  StdCtrls, ComCtrls, IBSQLMonitor, TFlatMemoUnit, Grids, DBGrids,
  EditFloat, ColorEditFloat, OleCtrls, DrLabel,
  FR_DSet, FR_DBSet, FR_Class, XMLDoc, abfControls, QRCtrls, QuickRpt,
  DBCtrls;

type
  TFGerenciador = class(TFPadraoRodaPe)
    Timer1: TTimer;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel4: TPanel;
    GroupBox1: TGroupBox;
    LWForms: TListView;
    BitBtn1: TBitBtn;
    GroupBox2: TGroupBox;
    msql: TMemo;
    GroupBox5: TGroupBox;
    LWModulos: TListView;
    BitBtn2: TBitBtn;
    TabSheet2: TTabSheet;
    Panel7: TPanel;
    GroupBox4: TGroupBox;
    DBGrid1: TDBGrid;
    GroupBox3: TGroupBox;
    MCOMAND: TFlatMemo;
    RGCOMMAND: TRadioGroup;
    BtnOpen: TBitBtn;
    BtnClear: TBitBtn;
    FSRel: TfrReport;
    FDSCaixa: TfrDBDataSet;
    OpenDialog1: TOpenDialog;
    QrAjustaCst: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRShape1: TQRShape;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRBand3: TQRBand;
    QRShape2: TQRShape;
    QRLabel5: TQRLabel;
    QRDBText5: TQRDBText;
    LValorTributadoAnterior: TQRLabel;
    LValorTributadoAtual: TQRLabel;
    pChaveNfe: TPanel;
    Label19: TLabel;
    BtnAjustar: TButton;
    BtnCancelaAjuste: TButton;
    cbPeriodoFiscal: TDBLookupComboBox;
    BitBtn3: TBitBtn;
    procedure Timer1Timer(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnClearClick(Sender: TObject);
    procedure BtnOpenClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BtnCancelaAjusteClick(Sender: TObject);
    procedure BtnAjustarClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);


  private
    { Private declarations }
    Procedure MostraForms;

    procedure FiltraLotes; // - 13/02/2009: filtra lotes
    procedure FiltraSubproduto; // - 13/02/2009: filtra subproduto

  public
    { Public declarations }
    //Jônatas 08/10/2013 - Função para fazer a chamada da geração de chave de NFe
    Function GeraChaveXML(CodFiscal:Integer):String;
    //Função para gerar chave de acesso
    Function XmlChaveAcesso(cUF, ano, mes, CNPJ, modelo, serie, numero, codigoSeguranca:WideString; out cNF, cDV, chaveNFe:Widestring):Boolean;
  end;

var
  FGerenciador: TFGerenciador;
  COD_ESTOQUE: Integer;
  XVlrTributadoAnt, XVlrTributadoAtual: Real;

implementation

uses UMenu, UDMMacs, Alxor32, AlxMessage, UDMPessoa, UDMGEOGRAFIA, UDmBanco,
  UDMFinanc, UDMCaixa, UDMConta, UDMEstoque, UDMEntrada, UDMSaida, DB, NFe_Util_2G_TLB,
  JLLabel, TDadosNFe, UMzrNfe, UValidacaoNFe, Variants, UMDO, UPadrao;

{$R *.DFM}

Procedure TFGerenciador.MostraForms;
Var
   I: Integer;
Begin
     Try
        //Adicione os formularios ativos
        LWForms.Items.Clear;
        LWModulos.items.Clear;
        For I:=0 to screen.FormCount-1 do
        Begin
             LWForms.Items.Add;
             LWForms.Items[LWForms.Items.Count-1].Caption:=Screen.Forms[I].Name;
        End;
        For I:=0 to screen.DataModuleCount-1 do
        Begin
             LWModulos.Items.Add;
             LWModulos.Items[LWModulos.Items.Count-1].Caption:=Screen.DataModules[I].Name;
        End;

     Except
     End;
End;

procedure TFGerenciador.Timer1Timer(Sender: TObject);
begin
  inherited;
  MostraForms;
end;

procedure TFGerenciador.BitBtn1Click(Sender: TObject);
begin
     inherited;
     Try
        Screen.Forms[LWForms.Selected.Index].Close;
        Screen.Forms[LWForms.Selected.Index].Free;
        MostraForms;
     Except
     End;
end;

procedure TFGerenciador.FormActivate(Sender: TObject);
begin
     inherited;
     MostraForms;
     FiltraTabela(DMMACS.BASE, 'BASE', '', '', '');
end;

procedure TFGerenciador.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//  inherited;
	Try
    Action := caFree;
    FGerenciador:=nil;
	Except
   End;
end;

procedure TFGerenciador.BtnClearClick(Sender: TObject);
begin
  inherited;
    MCOMAND.Clear;
end;

procedure TFGerenciador.BtnOpenClick(Sender: TObject);
begin
  inherited;
    Case RGCOMMAND.ItemIndex OF
         0: Begin
                 DMGEOGRAFIA.TAlx.Close;
                 DMGEOGRAFIA.TAlx.SQL.Clear;
                 DMGEOGRAFIA.TAlx.SQL.Add(MCOMAND.Lines.Text);
                 DMGEOGRAFIA.TAlx.Open;
                 DBGrid1.DataSource:=DMGEOGRAFIA.DAlx;
             End;
         1: Begin
		      If Mensagem('Confirmar Comando', 'Tem certeza que deseja executar o comando selecionado? ', '', 2, 3, false, 'c')=2
             Then Begin
                 MDO.Query.Close;
                 MDO.Query.SQL.Clear;
                 MDO.Query.SQL.Add(MCOMAND.Lines.Text);
                 MDO.Query.ExecSQL;
                 MDO.Transac.CommitRetaining;
                 DMGEOGRAFIA.IBT.CommitRetaining;
             End;
         End;

    End;
end;

procedure TFGerenciador.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     inherited;
     If Key=VK_F9 Then
        BtnOpen.Click;
end;

procedure TFGerenciador.BitBtn2Click(Sender: TObject);
begin
  inherited;
     Try
        Screen.DataModules[LWModulos.Selected.Index].Destroy;
        MostraForms;
     Except
     End;
end;

procedure TFGerenciador.BitBtn4Click(Sender: TObject);
begin
  inherited;
	If Mensagem('Confirmação do usuário', 'Deseja realmente apagar a base'+ DMMACS.BASE.FieldByName('TRILL').AsString+'?', '', 2, 3, False, 'c')=2
   Then Begin
       DMMACS.BASE.Delete;
       DMMACS.BASE.ApplyUpdates;
       DMMACS.IBTTRILL.CommitRetaining;
   End;
end;

procedure TFGerenciador.FiltraLotes;
begin
      // - 13/02/2009: filtra lote com vencimento mais distante
      DMESTOQUE.Alx.Close;
      DMESTOQUE.Alx.SQL.Clear;
      DMESTOQUE.Alx.SQL.Add('select * from estoquelote where estoquelote.cod_estoque= :CODESTOQUE');
      DMESTOQUE.Alx.ParamByName('CODESTOQUE').AsInteger:=COD_ESTOQUE;
      DMESTOQUE.Alx.Open;
      DMESTOQUE.Alx.First;
end;

procedure TFGerenciador.FiltraSubproduto;
begin
      // - 13/02/2009: filtra subproduto
      DMESTOQUE.Alx.Close;
      DMESTOQUE.Alx.SQL.Clear;
      DMESTOQUE.Alx.SQL.Add('select subproduto.descricao, subproduto.contrint from subproduto');
      DMESTOQUE.Alx.SQL.Add('Left join estoque on subproduto.cod_subproduto = estoque.cod_subprod');
      DMESTOQUE.Alx.SQL.Add('where estoque.cod_estoque = :CODESTOQUE');
      DMESTOQUE.Alx.ParamByName('CODESTOQUE').AsInteger:=COD_ESTOQUE;
      DMESTOQUE.Alx.Open;
end;

procedure TFGerenciador.BitBtn7Click(Sender: TObject);
begin
  inherited;
	If MessageDlg('Efetuar a inserção/alteração de vendedores no ctas a receber de acordo com o pedido de venda?', mtWarning, [mbYes, mbNo], 0)=mryes
   Then Begin
       DMCONTA.TCtaR.Close;
       DMCONTA.TCtaR.SQL.Clear;
       DMCONTA.TCtaR.SQL.Add(' select * from ctareceber ');
       DMCONTA.TCtaR.SQL.Add(' where ctareceber.tipogerador='+#39+'PEDVENDA'+#39);
       DMCONTA.TCtaR.Open;
       DMCONTA.TCtaR.First;
       While not DMCONTA.TCtaR.Eof do
       Begin
           DMSAIDA.TAlx.Close;
           DMSAIDA.TAlx.SQL.Clear;
           DMSAIDA.TAlx.SQL.Add(' select pedvenda.cod_vendedor from pedvenda where pedvenda.cod_pedvenda=:Codigo ');
           DMSAIDA.TAlx.ParamByName('codigo').AsInteger:=DMCONTA.TCtaR.FieldByName('cod_gerador').AsInteger;
           DMSAIDA.TAlx.Open;
           If Not DMSAIDA.TAlx.IsEmpty
           Then Begin
               DMCONTA.TCtaR.Edit;
               DMCONTA.TCtaR.FieldByName('cod_vendedor').AsInteger:=DMSAIDA.TAlx.FieldByName('cod_vendedor').AsInteger;
               DMCONTA.TCtaR.Post;
           End;  
           DMCONTA.TCtaR.Next;
       End;
       DMCONTA.IBT.CommitRetaining;
   End;
end;

procedure TFGerenciador.BitBtn9Click(Sender: TObject);
begin
  inherited;
	Try
       DMMACS.TALX.Close;
       DMMACS.TALX.SQL.Clear;
       DMMACS.TALX.SQL.Add('update pessoa set pessoa.TEL01 = pessoa.telrel');
       DMMACS.TALX.ExecSQL;
       DMMACS.Transaction.CommitRetaining;
       DMMACS.TALX.Close;
       DMMACS.TALX.SQL.Clear;
       DMMACS.TALX.SQL.Add('update pessoa set pessoa.telrel='+#39+#39);
       DMMACS.TALX.ExecSQL;
       DMMACS.Transaction.CommitRetaining;
       DMPESSOA.TPessoa.Close;
       DMPESSOA.TPessoa.SQL.Clear;
       DMPESSOA.TPessoa.SQL.Add(' select * from pessoa ');
       DMPESSOA.TPessoa.Open;
       DMPESSOA.TPessoa.First;
       While not DMPESSOA.TPessoa.Eof do
       Begin
           DMPESSOA.TALX.Close;
           DMPESSOA.TALX.SQL.Clear;
           DMPESSOA.TALX.SQL.Add('select pessoa.tel01 from pessoa where pessoa.cod_pessoa=:codigo');
           DMPESSOA.TALX.ParamByName('codigo').AsInteger:=DMPESSOA.TPessoa.FieldByName('cod_pessoa').AsInteger;
           DMPESSOA.TALX.Open;
           If not DMPESSOA.TALX.IsEmpty
           Then Begin
           	DMPESSOA.TPessoa.Edit;
           	DMPESSOA.TPessoa.FieldByName('TELREL').AsString:=trim(copy(DMPESSOA.TALX.FieldByName('tel01').AsString, 1, 50));
               DMPESSOA.TPessoa.Post;
           End;
           DMPESSOA.TPessoa.Next;
       End;
       DMPESSOA.TransacPessoa.CommitRetaining;
   Except
   End;
   MessageDlg('processo concluido', mtWarning, [mbOK], 0);
end;

procedure TFGerenciador.BtnCancelaAjusteClick(Sender: TObject);
begin
    inherited;
end;
//Jônatas 08/01/2013 - Preenche as chaves das NFe de entrada que não tenham chave
procedure TFGerenciador.BtnAjustarClick(Sender: TObject);
begin
    inherited;
end;
//Jônatas 08/10/2013 - Função para fazer a chamada da geração de chave de NFe
function TFGerenciador.GeraChaveXML(CodFiscal: Integer): String;
begin
end;

function TFGerenciador.XmlChaveAcesso(cUF, ano, mes, CNPJ, modelo, serie, numero, codigoSeguranca: WideString; out cNF, cDV, chaveNFe: Widestring): Boolean;
begin
end;

procedure TFGerenciador.BitBtn3Click(Sender: TObject);
begin
  inherited;
   MDO.Transac.RollbackRetaining;
   DMGEOGRAFIA.IBT.RollbackRetaining;
end;

End.
