unit Ubanco;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UCadPadraoDesc, TFlatHintUnit, Grids, DBGrids, TFlatEditUnit, StdCtrls,
  Buttons, Mask, DBCtrls, DBColorEdit, jpeg, ExtCtrls,ExtDlgs,DB, DrLabel;

type
  TFCadBanco = class(TFCadPadraoDesc)
    Label2: TLabel;
    DBNUMBANCO: TDBColorEdit;
    DBColorEdit3: TDBColorEdit;
    Label3: TLabel;
    Button1: TButton;
    ImLogo: TImage;
    procedure FormActivate(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure BtnApagarClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadBanco: TFCadBanco;
  XLogoDialog: TOpenPictureDialog;//Paulo 24/01/2011 - Para importa��o da logo do banco(usado no carn�)

implementation

uses AlxMessage, Alxor32, UDmBanco;

{$R *.DFM}

procedure TFCadBanco.FormActivate(Sender: TObject);
begin
  inherited;
	Caption:='Banco' ;  
  XTabela:=DMBANCO.TBanco;
  XCampo:='DESCBANCO';
  XSQLTABELA:='BANCO';
  XTransaction:=DMBANCO.IBT;
  XPkTabela:='COD_BANC';
  XTab:=True;
  XDescricao:= 'O Banco';
  XLiberaDados:='';
  XSQLVIEW:='BANCO';
  DBGridCadastroPadrao.DataSource:=DMBANCO.DBAnco;
end;

procedure TFCadBanco.BtnNovoClick(Sender: TObject);
begin
  inherited;
    DBNUMBANCO.SetFocus;
end;

procedure TFCadBanco.BtnGravarClick(Sender: TObject);
begin

    If DBNUMBANCO.Text=''
    Then Begin
        Mensagem('INFORMA��O AO USU�RIO', 'Por Favor Informe N�mero do banco!', '', 1, 1, False, 'a');
        DBNUMBANCO.SetFocus;
        Exit;
    End;

    If DBDESC.Text=''
    Then Begin
        Mensagem('INFORMA��O AO USU�RIO', 'Por Favor Informe a descri��o do banco!', '', 1, 1, False, 'a');
        DBDESC.SetFocus;
        Exit;
    End;

    {Edmar - 26/08/2015 - Verifica��o removida para permitir cadastro de dois banco com o mesmo numero
    If VerifExitVal('BANCO', 'COD_BANC', DBPRIMEIRO.TEXT, 'NUMBANCO', DBNUMBANCO.TEXT) = TRUE
    THEN BEGIN
        Mensagem('INFORMA��O AO USU�RIO', 'J� existe um banco cadastrado com este N�mero!', '', 1, 1, False, 'a');
        DBNUMBANCO.SetFocus;
        exit;
    End
    Else Begin}
        inherited;
    //End;
end;

procedure TFCadBanco.BtnApagarClick(Sender: TObject);
begin
    //Se houver rela��o entre banco e as tabelas citadas
    If CheckRelation('COD_BANCO', XTabela.FieldByName('COD_BANC').ASSTRING, ['AGENCIA'], 1)=True
    Then Begin
        Mensagem('INFORMA��O AO USU�RIO', 'Este Banco n�o pode ser apagado, por que possui rela��es em outras movimenta��es ou cadastros!', '', 1, 1, False, 'a');
        Exit;
    End;
    inherited;
end;

procedure TFCadBanco.Button1Click(Sender: TObject);
var
   XLogo: TBitmap;
begin
  inherited;
       //Paulo 24/01/2011 : Importa logo do banco para inserir nos carn�s
       XLogoDialog:=TOpenPictureDialog.Create(Self);

       //Paulo 24/01/2011:Importa a logo
       XLogoDialog.InitialDir:= Application.GetNamePath;
       XLogoDialog.Title:='Selecione a logo do banco';
       XLogoDialog.Execute;

       if (XLogoDialog.FileName = '')then exit;

       //Paulo 21/10/2010 - 145: Grava a logo do banco  para ser utilizado em carn�s
       DMBANCO.TBanco.Edit;
       TBlobField(DMBANCO.TBanco.FieldByName('LOGOBANCO')).LoadFromFile(XLogoDialog.FileName);
       DMBANCO.TBanco.Post;
       DMBANCO.IBT.CommitRetaining;
end;

end.
