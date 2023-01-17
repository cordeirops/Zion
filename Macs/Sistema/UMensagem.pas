unit UMensagem;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UCadPadraoDesc, ExtCtrls, TFlatHintUnit, Grids, DBGrids, TFlatEditUnit,
  StdCtrls, Buttons, Mask, DBCtrls, DBColorEdit, jpeg, TFlatButtonUnit,
  UFrmBusca, DrLabel;

type
  TFMensagem = class(TFCadPadraoDesc)
    BtnRecebidos: TFlatButton;
    Shape3: TShape;
    BtnEnviados: TFlatButton;
    GEnviados: TDBGrid;
    FrmBusca1: TFrmBusca;
    DBColorEdit1: TDBColorEdit;
    Label1: TLabel;
    DBColorEdit2: TDBColorEdit;
    DBColorEdit3: TDBColorEdit;
    procedure BtnRecebidosClick(Sender: TObject);
    procedure BtnEnviadosClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FrmBusca1EDCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FrmBusca1BTNOPENClick(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure BtnApagarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    //procedure utilizada para controlar o show dos grids
    Procedure AtivaGrid(Status: Integer);
  public
    { Public declarations }
  end;

var
  FMensagem: TFMensagem;

implementation

uses UDMMacs, UCadUsuario, Alxor32, UMenu;

{$R *.DFM}

//procedure utilizada para controlar o show dos grids
Procedure TFMensagem.AtivaGrid(Status: Integer);
Begin
   DBGridCadastroPadrao.DataSource:=DMMACS.DAlxMens;
   GEnviados.DataSource:=DMMACS.DAlxMens;

   BtnRecebidos.Color:=$00D1D1D1;
   BtnRecebidos.Font.Color:=clWindowText;
   BtnEnviados.Color:=$00D1D1D1;
   BtnEnviados.Font.Color:=clWindowText;

	If Status=0
   Then Begin
		//ATIVAR RECEBIDOS
       DBGridCadastroPadrao.Visible:=True;
       DBGridCadastroPadrao.BringToFront;
       BtnRecebidos.Color:=$00996633;
       BtnRecebidos.Font.Color:=clWhite;
       DMMACS.TALXMENS.Close;
       DMMACS.TALXMENS.SQL.Clear;
       DMMACS.TALXMENS.SQL.Add(' Select * from mensagem ');
       DMMACS.TALXMENS.SQL.Add(' Left join usuario on mensagem.cod_de = usuario.codusuario ');
       DMMACS.TALXMENS.SQL.Add(' Where mensagem.cod_para=:CODUSUARIO ');
       DMMACS.TALXMENS.ParamByName('CODUSUARIO').AsString:=FMenu.LCODUSUARIO.Caption;
       DMMACS.TALXMENS.Open;
   End
   Else Begin
   	//ATIVIAR ENVIADOS
       GEnviados.Visible:=True;
       GEnviados.BringToFront;
       BtnEnviados.Color:=$00996633;
       BtnEnviados.Font.Color:=clWhite;
       DMMACS.TALXMENS.Close;
       DMMACS.TALXMENS.SQL.Clear;
       DMMACS.TALXMENS.SQL.Add(' Select * from mensagem ');
       DMMACS.TALXMENS.SQL.Add(' Left join usuario on mensagem.cod_para = usuario.codusuario ');
       DMMACS.TALXMENS.SQL.Add(' Where mensagem.cod_DE=:CODUSUARIO ');
       DMMACS.TALXMENS.ParamByName('CODUSUARIO').AsString:=FMenu.LCODUSUARIO.Caption;

       DMMACS.TALXMENS.Open;
   End;
End;

procedure TFMensagem.BtnRecebidosClick(Sender: TObject);
begin
  inherited;
   AtivaGrid(0);
end;

procedure TFMensagem.BtnEnviadosClick(Sender: TObject);
begin
  inherited;
	AtivaGrid(1);
end;

procedure TFMensagem.FormActivate(Sender: TObject);
begin
  inherited;
    XFMENS:=1;
    XTabela:=DMMACS.TMens;
    XCampo:='Mensagem';
    XPkTabela:='COD_MENSAGEM';
    XTransaction:=DMMACS.Transaction;
    XTab:=True;
    XDescricao:='a mensagem';
    XSQLTABELA:='MENSAGEM';
    AtivaGrid(0);

end;

procedure TFMensagem.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	If Key=VK_F6 Then
   	Key:=0;
       
  inherited;
end;

procedure TFMensagem.FrmBusca1EDCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
	If Key = VK_return
   Then Begin//se enter
   	If FrmBusca1.EDCodigo.Text<>''
       Then Begin
	        If FiltraTabela(DMMACS.TUsuario, 'USUARIO', 'CODUSUARIO', FrmBusca1.EDCodigo.Text, '')=True
           Then Begin
               FrmBusca1.EDCodigo.Text:=DMMACS.TUsuario.FieldByName('CODUSUARIO').AsString;
               FrmBusca1.EdDescricao.Text:=DMMACS.TUsuario.FieldByName('LOGIN').AsString;
           End
           Else Begin
               FrmBusca1.EDCodigo.Text:='';
               FrmBusca1.EdDescricao.Text:='';
           End;
       End;
   End;
end;

procedure TFMensagem.FrmBusca1BTNOPENClick(Sender: TObject);
begin
  inherited;
  	FiltraTabela(DMMACS.TUsuario, 'USUARIO', '', '', '');//LIBERA TODOS OS REGISTROS PARA CONSULTA
	If AbrirForm(TFCADUSUARIO, FCADUSUARIO, 1)='Selected'
	Then Begin
   	FrmBusca1.EDCodigo.Text:=DMMACS.TUsuario.FieldByName('CODUSUARIO').AsString;
       FrmBusca1.EdDescricao.Text:=DMMACS.TUsuario.FieldByName('LOGIN').AsString;
   End;
end;

procedure TFMensagem.BtnNovoClick(Sender: TObject);
begin
  inherited;
   FrmBusca1.EDCodigo.SetFocus;
   DMMACS.TMens.FieldByName('DT_ENVIO').AsDateTime:=Date();
   DMMACS.TMens.FieldByName('DT_SHOW').AsDateTime:=Date();
   DMMACS.TMens.FieldByName('HR_SHOW').AsDateTime:=Time();
   DMMACS.TMens.FieldByName('HR_ENVIO').AsDateTime:=Time();      
end;

procedure TFMensagem.BtnGravarClick(Sender: TObject);
begin
   DMMACS.TMENS.FieldByName('COD_PARA').AsString:=FrmBusca1.EDCodigo.Text;
   DMMACS.TMENS.FieldByName('COD_DE').AsString:=FMenu.LCODUSUARIO.Caption;
  inherited;
   AtivaGrid(0);
end;

procedure TFMensagem.BtnApagarClick(Sender: TObject);
begin
//  inherited;
	If FiltraTabela(DMMACS.TMens, 'MENSAGEM', 'COD_MENSAGEM', DMMACS.TALXMENS.FieldByNAme('COD_MENSAGEM').AsString, '')=True
   Then Begin
       DMMACS.TMens.Delete;
       DMMACS.Transaction.CommitRetaining;
   End;                                   
   AtivaGrid(0);
end;

procedure TFMensagem.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
	XFMENS:=0;
end;

end.
