unit UCadRegiao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UCadPadraoDesc, TFlatHintUnit, Grids, DBGrids,
  TFlatEditUnit, StdCtrls, Mask, DBCtrls, DBColorEdit, Buttons, jpeg,
  ExtCtrls, DrLabel, DB;

type
  TFCadRegiao = class(TFCadPadraoDesc)
    procedure FormActivate(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure DBGridCadastroPadraoTitleClick(Column: TColumn);
    procedure DBGridCadastroPadraoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridCadastroPadraoDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure EdNomeKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadRegiao: TFCadRegiao;

implementation

uses UCadPadrao, AlxMessage, UDMGEOGRAFIA, UDMMacs, UMenu, Alxor32;

{$R *.DFM}

procedure TFCadRegiao.FormActivate(Sender: TObject);
begin
  inherited;
  XTabela:=DMGEOGRAFIA.TRegiao;
  XCampo:='DESCRICAO';
  XTransaction:=DMGEOGRAFIA.IBT;
  XPkTabela:='COD_REGIAO';
  XTab:=True;
  XDescricao:= 'a região';
  XSQLTABELA:='REGIAO';

  FiltraTabela(DMGEOGRAFIA.TRegiao,'REGIAO','','','');
  DBGridCadastroPadrao.DataSource := DMGEOGRAFIA.DRegiao;
  // - 16/02/2009: se houver regiao pre-selecionado fazer busca
  if FMenu.XPreSel
  then begin
    DMGEOGRAFIA.TRegiao.Locate(FMenu.XFieldPesqPreSel,FMenu.XCodPesqPresSel, []);
  end;

  FMenu.LimpaPreSelecao;

  // - 20/04/2009: verificar se arquivo de layout foi salvo anteriormente
   If FileExists('C:\MZR\Arquivos\LayoutGrid\regiao.lgm')
   Then
       DBGridCadastroPadrao.Columns.LoadFromFile('C:\MZR\Arquivos\LayoutGrid\regiao.lgm');

end;

procedure TFCadRegiao.BtnNovoClick(Sender: TObject);
begin
  inherited;
   
    DBDESC.SetFocus;
end;

procedure TFCadRegiao.DBGridCadastroPadraoTitleClick(Column: TColumn);
begin
  inherited;
  If Column.FieldName <> '' Then
     XLiberaDados:=' Order by ' + Column.FieldName;

  LiberaDados;
end;

procedure TFCadRegiao.DBGridCadastroPadraoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  If (shift=[ssCtrl]) and (key = 83)
   Then Begin
     Try
       if not DirectoryExists('C:\MZR\Arquivos\LayoutGrid\') then begin
           ForceDirectories('C:\MZR\Arquivos\LayoutGrid\');
       end;
       DBGridCadastroPadrao.Columns.SaveToFile('C:\MZR\Arquivos\LayoutGrid\regiao.lgm');
       Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Layout da Grid foi salvo com sucesso!', '', 1, 1, false, 'i');
     Except
           Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Falha na tentativa de salvar o layout da grid!', '', 1, 1, false, 'i');
     End;
   End;
end;

procedure TFCadRegiao.DBGridCadastroPadraoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  // - 28/04/2009: grid zebrada
  {If  FMenu.XGRIDZEBRADA
   Then Begin
      if State = [] then
      begin
        if XView.Recno mod 2 = 1 then
          DBGridCadastroPadrao.Canvas.Brush.Color := $00EEEEEE
       else
          DBGridCadastroPadrao.Canvas.Brush.Color := clWhite;
      end;
      DBGridCadastroPadrao.DefaultDrawColumnCell(Rect, DataCol, Column, State);
   End; }
end;

procedure TFCadRegiao.EdNomeKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  If  FMenu.XCONSULTARAPIDA
   Then Begin
     // - 16/02/2009: pesquisa
    XView.Locate('DESCRICAO',EdNome.Text, [loCaseInsensitive, loPartialKey]);
  End;
end;

end.
