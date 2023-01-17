unit UCadMoeda;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UCadPadraoDesc, TFlatHintUnit, Mask, DBCtrls, DBColorEdit,
  Grids, DBGrids, StdCtrls, Buttons, TFlatEditUnit, jpeg, ExtCtrls, DrLabel;

type
  TFCadMoeda = class(TFCadPadraoDesc)
    Label2: TLabel;
    DBColorEdit1: TDBColorEdit;
    Label3: TLabel;
    DBColorEdit2: TDBColorEdit;
    Label4: TLabel;
    DBColorEdit3: TDBColorEdit;
    Label5: TLabel;
    DBColorEdit4: TDBColorEdit;
    Label8: TLabel;
    DBColorEdit5: TDBColorEdit;
    procedure FormActivate(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnApagarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadMoeda: TFCadMoeda;

implementation

uses UDMFinanc, Alxor32, AlxMessage;

{$R *.DFM}

procedure TFCadMoeda.FormActivate(Sender: TObject);
begin
  inherited;
    XTabela:=DMFinanc.TMoeda;
    XCampo:= 'MOEDA';
    XTransaction:=DMFinanc.Transaction;
    XPkTabela:='COD_MOEDA';
    XTab:=True;
    XDescricao:= 'A Moeda';
    XSQLTABELA:='MOEDA';
    XLiberaDados:='';
end;

procedure TFCadMoeda.BtnNovoClick(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('CADMOEDA', 'M')=False Then
  		Exit;

  inherited;
    DBDESC.SetFocus;
end;

procedure TFCadMoeda.BtnApagarClick(Sender: TObject);
begin
    //Se houver relação entre MOEDA e as tabelas citadas
    //CheckRelation (Chave:String; ValorChave:String; Tabelas: array of TIBQuery; NumTabs: Integer):Boolean;    
    If CheckRelation('COD_MOEDA', XTabela.FieldByName('COD_MOEDA').ASSTRING, ['COTAMOEDA'], 1)=True
    Then Begin
        Mensagem('INFORMAÇÃO AO USUÁRIO', 'Esta moeda não pode ser apagada, por que possui relações em outras movimentações ou cadastros!', '', 1, 1, False, 'a');
        Exit;
    End;
    If CheckRelation('COD_MOEDAREF', XTabela.FieldByName('COD_MOEDA').ASSTRING, ['COTAMOEDA'], 1)=True
    Then Begin
       Mensagem('INFORMAÇÃO AO USUÁRIO', 'Esta moeda não pode ser apagada, por que possui relações em outras movimentações ou cadastros!', '', 1, 1, False, 'a');
       Exit;
    End;

    inherited;
end;

end.
