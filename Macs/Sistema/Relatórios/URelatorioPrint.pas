unit URelatorioPrint;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls,
  cxLookAndFeelPainters, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxSpinEdit, cxButtons, cxRadioGroup, RpDefine, RpRender,
  RpRenderCanvas, RpRenderPrinter, cxGroupBox;

type
  TFrmPrint = class(TForm)
    Image6: TImage;
    GroupBox1: TGroupBox;
    btnGravar: TcxButton;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    edtCopias: TcxSpinEdit;
    Label1: TLabel;
    LblImpressora: TLabel;
    RvRenderPrinter1: TRvRenderPrinter;
    rgPaginas: TcxRadioGroup;
    edtSelecao: TcxTextEdit;
    pnlPaginas: TPanel;
    edtDe: TcxTextEdit;
    edtAte: TcxTextEdit;
    Label2: TLabel;
    Label3: TLabel;
    procedure btnCloseClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure rgPaginasClick(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrint: TFrmPrint;

implementation

uses URelatorioPreview{, UFuncoes};

{$R *.dfm}

procedure TFrmPrint.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmPrint.FormShow(Sender: TObject);
begin
  { Se não houver impressora instalada }
  if FrmPreview.RvNDRWriter1.Printers.Count = 0 then
     lblImpressora.Caption := 'Não há impressora instalada!'
  else
     lblImpressora.Caption := FrmPreview.RvNDRWriter1.DeviceName;

  RvRenderPrinter1.FirstPage := 1;
  RvRenderPrinter1.LastPage := 9999;
  RvRenderPrinter1.Selection := '';

  edtSelecao.Visible := False;
  pnlPaginas.Visible := false;

end;

procedure TFrmPrint.cxButton1Click(Sender: TObject);
begin
    { Atribui o nome da impressora selecionada }
   if FrmPreview.RvNDRWriter1.ShowPrinterSetupDialog then
      lblImpressora.Caption := FrmPreview.RvNDRWriter1.DeviceName;
end;

procedure TFrmPrint.btnGravarClick(Sender: TObject);
begin
  


  RvRenderPrinter1.Copies := edtCopias.Value;

  case rgPaginas.ItemIndex of
    1: RvRenderPrinter1.Selection := edtSelecao.Text;
    2: begin
          RvRenderPrinter1.FirstPage := StrToInt(edtDe.Text);
          RvRenderPrinter1.LastPage  := StrToInt(edtAte.Text);
       end;
  end;
  { Envia relatório para a impressora }
  RvRenderPrinter1.Render(FrmPreview.RvNDRWriter1.Stream);
end;

procedure TFrmPrint.rgPaginasClick(Sender: TObject);
begin
   case rgPaginas.ItemIndex of
     0: begin
           edtSelecao.Visible := False;
           pnlPaginas.Visible := false;
       end;
     1: begin
           edtSelecao.Visible := True;
           pnlPaginas.Visible := False;
       end;
     2: begin
           edtSelecao.Visible := False;
           pnlPaginas.Visible := True;
       end;
  end;
end;

procedure TFrmPrint.cxButton2Click(Sender: TObject);
begin
  Close;
end;

end.
