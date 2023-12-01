unit uOrdemMecanica;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, Mask, EditFloat,
  ImgList, ComCtrls;

type
  TfrmOrdemMecanica = class(TForm)
    pConsulta: TPanel;
    PBotoesConsulta: TPanel;
    BtnNovo: TBitBtn;
    btnOrcamento: TBitBtn;
    btnRelatorio: TBitBtn;
    BtnFechaPed: TBitBtn;
    BtnConsultar: TBitBtn;
    pFiltro: TPanel;
    DBGridConsulta: TDBGrid;
    pRodaPe: TPanel;
    cbFiltroAndamento: TComboBox;
    cbFiltroStatus: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    edFiltroNumeroOrdem: TEdit;
    edFiltroNumeroNfe: TEdit;
    edFiltroNumeroNfse: TEdit;
    edFiltroPlaca: TEdit;
    Label7: TLabel;
    edFiltroCliente: TEdit;
    edFiltroDataIni: TMaskEdit;
    edFiltroDataFim: TMaskEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label9: TLabel;
    PCadastro: TPanel;
    Panel2: TPanel;
    Panel1: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn6: TBitBtn;
    Label8: TLabel;
    FloatEdit1: TFloatEdit;
    Label10: TLabel;
    FloatEdit2: TFloatEdit;
    Label11: TLabel;
    FloatEdit3: TFloatEdit;
    Label12: TLabel;
    FloatEdit4: TFloatEdit;
    Label13: TLabel;
    FloatEdit5: TFloatEdit;
    Label14: TLabel;
    FloatEdit6: TFloatEdit;
    Label15: TLabel;
    Label16: TLabel;
    FloatEdit7: TFloatEdit;
    FloatEdit8: TFloatEdit;
    FloatEdit9: TFloatEdit;
    Label17: TLabel;
    pCamposPlaca: TPanel;
    Label18: TLabel;
    Edit1: TEdit;
    BitBtn5: TBitBtn;
    Edit2: TEdit;
    BitBtn7: TBitBtn;
    pCamposPlacasAdicionais: TPanel;
    Edit4: TEdit;
    Edit3: TEdit;
    Label19: TLabel;
    pCamposData: TPanel;
    Label22: TLabel;
    MaskEdit1: TMaskEdit;
    pCampoCliente: TPanel;
    Label23: TLabel;
    Edit5: TEdit;
    BitBtn9: TBitBtn;
    Edit8: TEdit;
    Panel3: TPanel;
    Label24: TLabel;
    Edit6: TEdit;
    BitBtn8: TBitBtn;
    Edit7: TEdit;
    Edit9: TEdit;
    FloatEdit10: TFloatEdit;
    Label21: TLabel;
    FloatEdit11: TFloatEdit;
    Label20: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    ImgList: TImageList;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbFiltroStatusKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnConsultarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
       Function FiltraOrdem: Boolean;
       Function LimpaFiltros: Boolean;
       Function AtivaPainelConsulta(xParam: Boolean): Boolean;
  public
    { Public declarations }
  end;

var
  frmOrdemMecanica: TfrmOrdemMecanica;

implementation

uses
  UDmServ, UMenu;

{$R *.dfm}

Function TfrmOrdemMecanica.AtivaPainelConsulta(xParam: Boolean): Boolean;
Begin
   Try
       If xParam = True
       Then Begin
           pConsulta.Visible := True;
           PCadastro.Visible := False;
           pConsulta.BringToFront;
       End
       Else Begin
           pConsulta.Visible := false;
           PCadastro.Visible := True;
           PCadastro.BringToFront;
       End;
   Except

   End;
End;

Function TfrmOrdemMecanica.LimpaFiltros: Boolean;
Begin
   Try
       Result := true;
       edFiltroNumeroOrdem.Clear;
       edFiltroNumeroNfe.Clear;
       edFiltroNumeroNfse.Clear;
       edFiltroPlaca.Clear;
       edFiltroCliente.Clear;
       edFiltroDataIni.Clear;
       edFiltroDataFim.Clear;
       edFiltroDataIni.Text := '01/01/1900';
       edFiltroDataFim.Text := '01/01/9999';
   Except
       Result := false;
   End;
End;
Function TfrmOrdemMecanica.FiltraOrdem: Boolean;
Begin
   Try
       Result := true;

       DMServ.IBT.CommitRetaining;

       DMServ.WOrdem.Close;
       DMServ.WOrdem.SQL.Clear;
       DMServ.WOrdem.SQL.Add(' select * from vwordem ');
       DMServ.WOrdem.SQL.Add(' where (vwordem.cod_loja = :CodigoLoja) ');
       DMServ.WOrdem.ParamByName('CodigoLoja').AsString := Fmenu.LCODLOJA.Caption;
       If (edFiltroDataIni.Text<>'  /  /    ') and (edFiltroDataFim.Text<>'  /  /    ')
       Then Begin
           DMServ.WOrdem.SQL.Add(' And (vwordem.dtabert BETWEEN :data_ini AND :data_fim)  ');
           DMServ.WOrdem.ParamByName('data_ini').AsDate := StrToDate(edFiltroDataIni.Text);
           DMServ.WOrdem.ParamByName('data_fim').AsDate := StrToDate(edFiltroDataFim.Text);
       end; 

       If (cbFiltroStatus.Text <> 'TODOS') and (cbFiltroStatus.Text <> '')
       Then Begin
           DMServ.WOrdem.SQL.Add(' And (vwordem.status = :Status) ');
           DMServ.WOrdem.ParamByName('Status').AsString := cbFiltroStatus.Text;
       End;
       If (cbFiltroAndamento.Text <> 'TODOS') and (cbFiltroAndamento.Text <> '')
       Then Begin
           DMServ.WOrdem.SQL.Add(' And (vwordem.monitor = :Monitor) ');
           DMServ.WOrdem.ParamByName('Monitor').AsString := cbFiltroAndamento.Text;
       End;
       If Trim(edFiltroNumeroOrdem.Text) <> ''
       Then Begin
           DMServ.WOrdem.SQL.Add(' And (vwordem.Numero like ' +#39+ '%' + edFiltroNumeroOrdem.Text + '%' + #39 + ')');
       End;
       If Trim(edFiltroNumeroNfe.Text) <> ''
       Then Begin
           DMServ.WOrdem.SQL.Add(' And (vwordem.numfiscal like ' +#39+'%' + edFiltroNumeroNfe.Text +'%' + #39+ ')');
       End;
       If Trim(edFiltroNumeroNfse.Text) <> ''
       Then Begin
           DMServ.WOrdem.SQL.Add(' And (vwordem.numfiscalnfse like ' +#39+'%' + edFiltroNumeroNfse.Text + '%'+#39+ ')');
       End;
       If Trim(edFiltroPlaca.Text) <> ''
       Then Begin
           DMServ.WOrdem.SQL.Add(' And (upper(vwordem.Placa) like ' + #39+ '%' + UpperCase(edFiltroPlaca.Text) + '%' + #39+ ')');
       End;
       If Trim(edFiltroCliente.Text) <> ''
       Then Begin
           DMServ.WOrdem.SQL.Add(' And (upper(vwordem.Cliente) like ' +#39+'%' + UpperCase(edFiltroCliente.Text) + '%' +#39+ ')');
       End; 
       DMServ.WOrdem.SQL.Add('  order by vwordem.cod_ordem desc ');
       DMServ.WOrdem.SQL.Text;
       DMServ.WOrdem.Open;

   Except
       Result := false;
   end;
End;

procedure TfrmOrdemMecanica.FormShow(Sender: TObject);
begin
   LimpaFiltros;
   FiltraOrdem;
   if FileExists('C:\MZR\Arquivos\LayoutGrid\Ordemmecanica.lgm') then
    DBGridConsulta.Columns.LoadFromFile('C:\MZR\Arquivos\LayoutGrid\Ordemmecanica.lgm');

end;

procedure TfrmOrdemMecanica.BitBtn1Click(Sender: TObject);
begin
   FiltraOrdem;
end;

procedure TfrmOrdemMecanica.BitBtn2Click(Sender: TObject);
begin
   LimpaFiltros;
end;

procedure TfrmOrdemMecanica.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Try
       If not DirectoryExists('C:\MZR\Arquivos\LayoutGrid\')
       Then Begin
           ForceDirectories('C:\MZR\Arquivos\LayoutGrid\');
       End;
       DBGridConsulta.Columns.SaveToFile('C:\MZR\Arquivos\LayoutGrid\Ordemmecanica.lgm');
   Except
       MessageDlg('Falha na tentativa de salvar o layout da grid', mtWarning, [mbOK], 0);
   end;
end;

procedure TfrmOrdemMecanica.cbFiltroStatusKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   If Key = vk_return Then
       FiltraOrdem;
   If Key = 27
   Then Begin
       LimpaFiltros;
       FiltraOrdem;       
   End;
end;

procedure TfrmOrdemMecanica.BitBtn6Click(Sender: TObject);
begin
   AtivaPainelConsulta(True);
end;

procedure TfrmOrdemMecanica.BitBtn3Click(Sender: TObject);
begin
   AtivaPainelConsulta(True);
end;

procedure TfrmOrdemMecanica.BtnNovoClick(Sender: TObject);
begin
   AtivaPainelConsulta(false);
end;

procedure TfrmOrdemMecanica.BtnConsultarClick(Sender: TObject);
begin
   AtivaPainelConsulta(false);
end;

procedure TfrmOrdemMecanica.FormActivate(Sender: TObject);
begin
   AtivaPainelConsulta(True);
end;

end.
