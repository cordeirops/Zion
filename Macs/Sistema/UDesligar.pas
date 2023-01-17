unit UDesligar;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UPadrao, TFlatHintUnit, Buttons, jpeg, ExtCtrls, StdCtrls,
  TFlatComboBoxUnit, DrLabel;

type
  TFDesliga = class(TFPadrao)
    Label6: TLabel;
    Image4: TImage;
    GroupBox1: TGroupBox;
    CBESCOLHA: TFlatComboBox;
    BTNOK: TBitBtn;
    BTNCANCELAR: TBitBtn;
    procedure BTNOKClick(Sender: TObject);
    procedure BTNCANCELARClick(Sender: TObject);
    procedure CBESCOLHAKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDesliga: TFDesliga;

implementation

uses ULogoff, Alxor32, ULogoff1;

{$R *.DFM}

procedure TFDesliga.BTNOKClick(Sender: TObject);
begin
  inherited;
    //Fechar sistema
    If CBEscolha.Text='Fechar o sistema'
    Then Begin
        Application.Terminate;
    end;

    //Reiniciar o Sistema
    If CBEscolha.Text='Reiniciar o sistema'
    Then Begin
        Close;
    End;

    //modo de proteção de usuario
    If CBEscolha.Text='Deixar em modo de proteção do usuário'
    Then Begin

    End;

    //troca de Usuario
    If CBEscolha.Text='Trocar de usuário'
    Then Begin
        AbrirForm(TFLogoff1, FLogoff1, 0);
    End;

    //desligar o windows
    If CBEscolha.Text='Desligar o windows'
    Then Begin
        Try
            ExitWindowsEx(EWX_SHUTDOWN , 0);
        Except
        End;
    End;

    If CBEscolha.Text='Reiniciar o windows'
    Then Begin
        Try
            ExitWindowsEx(EWX_REBOOT, 0);
        Except
        End;
    End;
    Close;

end;

procedure TFDesliga.BTNCANCELARClick(Sender: TObject);
begin
  inherited;
	Close;
end;

procedure TFDesliga.CBESCOLHAKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
	If Key=#13 Then
        BTNOK.Click;
    If Key=#27 Then
        BTNCANCELAR.Click;
    key:=#0;
end;

end.
