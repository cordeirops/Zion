unit URelGeralMovimentacoesFinanceiras;

interface

uses     
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPadraoRelatorio, FR_DSet, FR_DBSet, FR_Class, StdCtrls,
  Buttons, ExtCtrls, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, RpDefine, RpBase, RpSystem;

type
  TFRelGeralMovimentacoesFinanceiras = class(TFPadraoRelatorio)
    PGeral: TPanel;
    Label2: TLabel;
    edData1: TcxDateEdit;
    Label3: TLabel;
    edData2: TcxDateEdit;
    Label1: TLabel;
    Shape4: TShape;
    CBOrdens: TCheckBox;
    RbSintetico: TRadioButton;
    RbAnalitico: TRadioButton;
    Label4: TLabel;
    Shape1: TShape;
    Label5: TLabel;
    CBRecebimentos: TCheckBox;
    Label6: TLabel;
    CbPedVenda: TCheckBox;
    Label7: TLabel;
    CBPedCompra: TCheckBox;
    Label8: TLabel;
    CBPagamentos: TCheckBox;
    Label9: TLabel;
    CBCaixa: TCheckBox;
    Label10: TLabel;
    CBEstoque: TCheckBox;
    Label11: TLabel;
    CBBanco: TCheckBox;
    Label12: TLabel;
    CBSeparar: TCheckBox;
    Label13: TLabel;
    Label14: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure BtnVisualizarClick(Sender: TObject);
    procedure rvPrintBeforePrint(Sender: TObject);
    procedure RbSinteticoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelGeralMovimentacoesFinanceiras: TFRelGeralMovimentacoesFinanceiras;

implementation

uses UMenu, UDMMacs, Alxor32;

{$R *.dfm}


procedure TFRelGeralMovimentacoesFinanceiras.FormActivate(Sender: TObject);
Var
	Year, Month, Day:word;
begin
  inherited;
	 Caption:='Rel. Geral de Movimentação Financeira ' ;  
	PGeral.Visible:=True;
   PGeral.BringToFront;
   RbSintetico.Checked:=True;
   //Informa intervalo de datas do mes
   DecodeDate(Date(), Year, Month, Day);
   eDData1.Text:='01/'+IntToStr(Month)+'/'+IntToStr(Year);
   //EdData1.Text:='01/01/2014';
   edData2.Text:=IntToStr(UltDiaMes(month, year))+'/'+IntToStr(Month)+'/'+IntToStr(Year);
   CBOrdens.Checked:=True;
   CBRecebimentos.Checked:=True;
   CbPedVenda.Checked:=True;
   CBPedCompra.Checked:=True;
   CBPagamentos.Checked:=True;
   CBEstoque.Checked:=True;
   CBCaixa.Checked:=True;
   CBBanco.Checked:=True;
   CBSeparar.Checked:=True;   
   edData1.SetFocus;
end;

procedure TFRelGeralMovimentacoesFinanceiras.BtnVisualizarClick(
  Sender: TObject);
begin
  inherited;
	FMenu.TIPOREL:='RELGMOVIMENTACOESFINANCEIRAS';

   //Variaveis para controle de filtro para impressão no relatórios
   If RbSintetico.Checked=True Then
      FMenu.XDecreto:='Período: '+edData1.Text+' - '+edData2.Text +' : Sintético'
   Else
      FMenu.XDecreto:='Período: '+edData1.Text+' - '+edData2.Text +' : Analítico';

   FMenu.XProtocolo:='Contendo dados de: ';
   FMenu.XVersaoNovidades:='';
   If CBPedCompra.Checked=True Then
      FMenu.XProtocolo:=FMenu.XProtocolo+' Compras,';
   If CBPagamentos.Checked=True Then
      FMenu.XProtocolo:=FMenu.XProtocolo+' Pagamentos,';
   If CbPedVenda.Checked=True Then
      FMenu.XProtocolo:=FMenu.XProtocolo+' Vendas,';
   If CBOrdens.Checked=True Then
      FMenu.XProtocolo:=FMenu.XProtocolo+' Ordens de Serviço,';
   If CBEstoque.Checked=True Then
      FMenu.XProtocolo:=FMenu.XProtocolo+' Estoque,';
   If CBRecebimentos.Checked=True Then
      FMenu.XVersaoNovidades:=FMenu.XVersaoNovidades+' Recebimentos,';
   If CBCaixa.Checked=True Then
      FMenu.XVersaoNovidades:=FMenu.XVersaoNovidades+' Caixas,';
   If CBBanco.Checked=True Then
      FMenu.XVersaoNovidades:=FMenu.XVersaoNovidades+' Bancos,';
   If CBSeparar.Checked=True Then
      FMenu.XVersaoNovidades:=FMenu.XVersaoNovidades+' Pagamentos Separados Compra e Outros,';


   FMenu.XDtFiltro01:=edData1.Date;
   FMenu.XDtFiltro02:=edData2.Date;

   FMenu.RvFaturas.SystemPreview.FormState := wsMaximized;
   FMenu.RvFaturas.DefaultDest := rdPreview;  //- 19/02/2009: visualizar o relatório direto
   FMenu.RvFaturas.SystemPrinter.Units := unMM; //- 19/02/2009: trabalha nos milimetros da página
   FMenu.RvFaturas.SystemPReview.RulerType := rtBothCm; //- 19/02/2009: mostra régua superior e lateral
   FMenu.RvFaturas.Execute;
   FMenu.XProtocolo:='';
   FMenu.XDecreto:='';
   FMenu.XVersaoNovidades:='';
end;

procedure TFRelGeralMovimentacoesFinanceiras.rvPrintBeforePrint(
  Sender: TObject);
begin
  inherited;
	with Sender as TBaseReport do
  	begin
   	SetPaperSize(DMPAPER_A4,0,0);
	END;
end;

procedure TFRelGeralMovimentacoesFinanceiras.RbSinteticoClick(
  Sender: TObject);
begin
  inherited;
  If RbSintetico.Checked=True Then
      RbAnalitico.Checked:=False
  Else
      RbSintetico.Checked:=False;
end;

end.
