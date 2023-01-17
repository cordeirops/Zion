unit URelatorioPreview;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Spin, ExtCtrls, ComCtrls, ToolWin, RpRenderRTF,
  RpRenderText, RpRenderHTML, RpRenderPDF, RpBase, RpFiler, RpDefine,
  RpRender, RpRenderCanvas, RpRenderPreview, Menus, XP_PopUpMenu, ImgList,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxSpinEdit;

type
  TFrmPreview = class(TForm)
    ImageList2: TImageList;
    tfXPPopUpMenu2: TtfXPPopUpMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    ImageList1: TImageList;
    RvRenderPreview2: TRvRenderPreview;
    SaveDialog1: TSaveDialog;
    RvNDRWriter1: TRvNDRWriter;
    RvRenderPreview1: TRvRenderPreview;
    RvRenderPDF1: TRvRenderPDF;
    RvRenderHTML1: TRvRenderHTML;
    RvRenderText1: TRvRenderText;
    RvRenderRTF1: TRvRenderRTF;
    StatusBar1: TStatusBar;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton6: TToolButton;
    btnPrimeiro: TToolButton;
    btnAnterior: TToolButton;
    btnProximo: TToolButton;
    btnUltimo: TToolButton;
    ToolButton7: TToolButton;
    btnZoomMais: TToolButton;
    btnZoomMenos: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    ToolButton14: TToolButton;
    btnDivisao: TToolButton;
    ToolButton15: TToolButton;
    ToolButton16: TToolButton;
    Panel1: TPanel;
    Label3: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label1: TLabel;
    ScrollBox2: TScrollBox;
    ScrollBox1: TScrollBox;
    Splitter1: TSplitter;
    CbZoom: TcxComboBox;
    SpinEdit1: TcxSpinEdit;
    procedure btnZoomMaisClick(Sender: TObject);
    procedure btnZoomMenosClick(Sender: TObject);
    procedure btnPrimeiroClick(Sender: TObject);
    procedure btnAnteriorClick(Sender: TObject);
    procedure btnProximoClick(Sender: TObject);
    procedure btnUltimoClick(Sender: TObject);
    procedure btnDivisaoClick(Sender: TObject);
    procedure ToolButton16Click(Sender: TObject);
    procedure ToolButton11Click(Sender: TObject);
    procedure ToolButton12Click(Sender: TObject);
    procedure cxComboBox1PropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtPaginasPropertiesChange(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure ToolButton15Click(Sender: TObject);
  private
     Pressionado: Boolean;
  public
     constructor Create(AOWner: TComponent;
       Relatorio: TMemoryStream;
       Titulo: string); reintroduce;
     procedure SalvarComo(const Index: SmallInt);
  end;

var
  FrmPreview: TFrmPreview;

implementation

uses URelatorioPrint;

{$R *.dfm}

constructor TFrmPreview.Create(AOWner: TComponent;
  Relatorio: TMemoryStream; Titulo: string);
begin
inherited Create(AOWner);
  { Título do Relatório no Caption do Formulário}
  Caption := Titulo; 
  { Atribui o stream do relatório ao RvNDRWriter }
  RvNDRWriter1.Stream := Relatorio;
  { Passagem do Stream ao RvRenderPreview 1 }
  RvRenderPreview1.Render(RvNDRWriter1.Stream);
   { Passagem do Stream ao RvRenderPreview 2 }
  RvRenderPreview2.Render(RvRenderPreview1.NDRStream);
  { Atribui o Nº total de páginas ao SpinEdit }
  SpinEdit1.Properties.MaxValue := RvRenderPreview1.Pages;
  { Atualiza o label de total de páginas }
  Label1.Caption := 'de ' +
    IntToStr(RvRenderPreview1.Pages);
end;

procedure TFrmPreview.btnZoomMaisClick(Sender: TObject);
begin
  if RvRenderPreview1.ZoomFactor < 200 then
     RvRenderPreview1.ZoomIn;

  if RvRenderPreview2.ZoomFactor < 200 then
     RvRenderPreview2.ZoomIn;
end;

procedure TFrmPreview.btnZoomMenosClick(Sender: TObject);
begin
   if RvRenderPreview1.ZoomFactor > 25 then 
      RvRenderPreview1.ZoomOut;

   if RvRenderPreview2.ZoomFactor > 25 then
      RvRenderPreview2.ZoomOut;
end;

procedure TFrmPreview.btnPrimeiroClick(Sender: TObject);
begin
  { Primeira Página }
  RvRenderPreview1.RenderPage(1);

  if RvRenderPreview1.Pages > 1 then
     RvRenderPreview2.RenderPage(2)
  else
     RvRenderPreview2.RenderPage(1);
end;

procedure TFrmPreview.btnAnteriorClick(Sender: TObject);
begin
  { Página Anterior }
  if RvRenderPreview1.CurrentPage > 1 then
  begin
     RvRenderPreview1.PrevPage;
     RvRenderPreview2.RenderPage(RvRenderPreview1.CurrentPage + 1);
  end;
end;

procedure TFrmPreview.btnProximoClick(Sender: TObject);
begin
   if RvRenderPreview1.CurrentPage < RvRenderPreview1.Pages then
   begin
      RvRenderPreview1.NextPage;
      RvRenderPreview2.RenderPage(RvRenderPreview1.CurrentPage + 1);
   end;
end;

procedure TFrmPreview.btnUltimoClick(Sender: TObject);
begin
  {Última Página }
  RvRenderPreview1.RenderPage(RvRenderPreview1.Pages);
  RvRenderPreview2.RenderPage(RvRenderPreview2.Pages);
end;

procedure TFrmPreview.btnDivisaoClick(Sender: TObject);
begin
  if not Pressionado then
  begin
     btnDivisao.Down := True;
     { Caso o relatório tenha mais de uma página }
     if RvRenderPreview1.Pages > 1 then
        RvRenderPreview2.RenderPage(2)
     else
        RvRenderPreview2.RenderPage(1);

     ScrollBox2.Visible := True;
     Splitter1.Visible := True;
     Pressionado := True;
  end
  else
  begin
     btnDivisao.Down := False;
     ScrollBox2.Visible := False;
     //btnDivisao.Visible := False;
     Pressionado := False;
  end;
end;

procedure TFrmPreview.SalvarComo(const Index: SmallInt);
begin
  SaveDialog1.FilterIndex := index;

  if (SaveDialog1.Execute) and
     (SaveDialog1.FileName <> '') then
    case Index of
      1: RvRenderPDF1.PrintRender(
           RvNDRWriter1.Stream, SaveDialog1.FileName);
      2: RvRenderRTF1.PrintRender(
           RvNDRWriter1.Stream, SaveDialog1.FileName);
      3: RvRenderHTML1.PrintRender(
           RvNDRWriter1.Stream, SaveDialog1.FileName);
      4: RvRenderText1.PrintRender(
           RvNDRWriter1.Stream, SaveDialog1.FileName);
    end;
end;


procedure TFrmPreview.ToolButton16Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmPreview.ToolButton11Click(Sender: TObject);
begin
  RvRenderPreview1.ZoomFactor := RvRenderPreview1.ZoomPageWidthFactor;
end;

procedure TFrmPreview.ToolButton12Click(Sender: TObject);
begin
   RvRenderPreview1.ZoomFactor :=  RvRenderPreview1.ZoomPageFactor;
end;

procedure TFrmPreview.cxComboBox1PropertiesChange(Sender: TObject);
begin
  RvRenderPreview1.ZoomFactor := StrToInt(CbZoom.Text);
  RvRenderPreview2.ZoomFactor := StrToInt(CbZoom.Text);
end;

procedure TFrmPreview.FormShow(Sender: TObject);
begin
  RvRenderPreview1.ZoomFactor := 100;
end;

procedure TFrmPreview.edtPaginasPropertiesChange(Sender: TObject);
begin
  RvRenderPreview1.RenderPage(SpinEdit1.Value);

  if RvRenderPreview1.CurrentPage = 1 then
  begin
     if RvRenderPreview1.Pages > 1 then
        RvRenderPreview2.RenderPage(2)
     else
        RvRenderPreview2.RenderPage(1);
  end
  else if (RvRenderPreview1.CurrentPage > 1) and
          (RvRenderPreview1.CurrentPage < RvRenderPreview1.Pages) then
       RvRenderPreview2.RenderPage(RvRenderPreview1.CurrentPage + 1)
  else if (RvRenderPreview1.Pages = RvRenderPreview1.Pages) then
       RvRenderPreview2.RenderPage(RvRenderPreview1.Pages);
       
end;

procedure TFrmPreview.MenuItem1Click(Sender: TObject);
begin
  SaveDialog1.Filter:= 'Arquivos PDF (*.PDF)|*.PDF|';
  SalvarComo(1);
end;

procedure TFrmPreview.MenuItem2Click(Sender: TObject);
begin
   SaveDialog1.Filter:= 'Arquivos RTF (*.RTF)|*.RTF|';
   SalvarComo(2);
end;

procedure TFrmPreview.MenuItem3Click(Sender: TObject);
begin
  SaveDialog1.Filter:= 'Arquivos HTML (*.HTML)|*.HTML|';
  SalvarComo(3);
end;

procedure TFrmPreview.MenuItem4Click(Sender: TObject);
begin
  SaveDialog1.Filter:= 'Arquivos TXT (*.TXT)|*.TXT|';
  SalvarComo(4);
end;

procedure TFrmPreview.ToolButton15Click(Sender: TObject);
begin
   FrmPrint := TFrmPrint.Create(Self);
  try
    FrmPrint.ShowModal;
  finally
    FrmPrint.Release;
    FrmPrint := nil;
  end;
end;

end.
