unit UAcessBase;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, ExtCtrls;

type
  TFAcessBase = class(TForm)
    PAcessBase: TPanel;
    Shape3: TShape;
    DBGBASES: TDBGrid;
    procedure DBGBASESKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAcessBase: TFAcessBase;

implementation

uses UDMMacs, UMenu, Alxor32, AlxMessage;

{$R *.DFM}

procedure TFAcessBase.DBGBASESKeyPress(Sender: TObject; var Key: Char);
begin
	If key = #13
   Then Begin
    	FMenu.XSERVER:=DMMACS.BASE.FieldByName('SERVER').AsString;
    	FMenu.XTRILL:=DMMACS.BASE.FieldByName('RUMOR').AsString;
   	If FMenu.XSERVER<>'' Then
           FMenu.XTRILL:=FMenu.XSERVER+':'+FMenu.XTRILL;
       ConectBd(DMMACS);

       try
           //Edmar - 27/11/2015 - Atualiza o campo SHOW para 5 quando selecionado
           DMMACS.BASE.Edit;
           DMMACS.BASE.FieldByName('SHOW').AsString := '5';
           DMMACS.BASE.Post;
           DMMACS.BASE.ApplyUpdates;
           DMMACS.IBTTRILL.CommitRetaining;
       except
       end;
        
		Close;
   End;
end;

procedure TFAcessBase.FormActivate(Sender: TObject);
begin
	DBGBASES.DataSource:=DMMACS.DSBase;
end;

procedure TFAcessBase.FormClose(Sender: TObject; var Action: TCloseAction);
begin
	Try
    Action := caFree;
    FAcessBase:=nil;
	Except
   End;
end;

procedure TFAcessBase.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	If Key=Vk_down Then
       DMMACS.BASE.Next;
   If key=Vk_up Then
       DMMACS.BASE.Prior;

end;

end.
