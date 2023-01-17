unit UCotaMoeda;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UPadrao, TFlatHintUnit, Buttons, StdCtrls, jpeg, ExtCtrls,
  Grids, DBGrids, EditFloat, ColorEditFloat, DBCtrls, FashionPanel, Mask,
  DBColorEdit;

type
  TFCotaMoeda = class(TFPadrao)
    GroupBox1: TGroupBox;
    DBGMOEDA: TDBGrid;
    GBCota: TGroupBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Label9: TLabel;
    Label8: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBCOTACAO: TDBGrid;
    PCotacao: TPanel;
    FashionPanel1: TFashionPanel;
    GroupBox3: TGroupBox;
    LMoeda: TLabel;
    GroupBox4: TGroupBox;
    DBMoedaRef: TDBLookupComboBox;
    GroupBox5: TGroupBox;
    EDCotacao: TColorEditFloat;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    PCadMoeda: TPanel;
    FashionPanel2: TFashionPanel;
    GroupBox6: TGroupBox;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    DBMOEDA: TDBColorEdit;
    GroupBox7: TGroupBox;
    DBSIMBOLO: TDBColorEdit;
    GroupBox8: TGroupBox;
    DBORIGEM: TDBColorEdit;
    GroupBox9: TGroupBox;
    DBPLURALMOEDA: TDBColorEdit;
    Label4: TLabel;
    Label5: TLabel;
    DBFRACAO: TDBColorEdit;
    Label6: TLabel;
    DBPLURALFRACAO: TDBColorEdit;
    procedure PCotacaoExit(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
    procedure PCadMoedaExit(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure DBGMOEDACellClick(Column: TColumn);
    procedure DBGMOEDAKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGMOEDAEnter(Sender: TObject);
    procedure DBCOTACAOEnter(Sender: TObject);
    procedure DBCOTACAOExit(Sender: TObject);
    procedure DBGMOEDAExit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure EDCotacaoExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCotaMoeda: TFCotaMoeda;
  COD_MOEDA: INTEGER; //ARMAZENA O CÓDIGO DA MOEDA QUANDO DADO UM [INSERT]

implementation

uses AlxMessage, Alxor32, UDMFinanc;

{$R *.DFM}

procedure TFCotaMoeda.PCotacaoExit(Sender: TObject);
begin
  inherited;
    If PCotacao.Visible=True Then
        EDCotacao.SetFocus;
end;

procedure TFCotaMoeda.BitBtn5Click(Sender: TObject);
begin
  inherited;
    PCotacao.Visible:=False;
end;

procedure TFCotaMoeda.BitBtn4Click(Sender: TObject);
begin
  inherited;
    If EDCotacao.ValueNumeric=0
    Then Begin
        Mensagem('INFORMAÇÃO AO USUÁRIO', 'A moeda não pode possuir cotação de valor 0! ', '', 1, 1, False, 'i');
        EDCotacao.SetFocus;
        Exit;
    end;
    If COD_MOEDA=DMFinanc.TAlxMoeda.FieldByName('COD_MOEDA').AsInteger
    Then Begin
        Mensagem('INFORMAÇÃO AO USUÁRIO', 'A moeda para cotação e a moeda para referência não podem ser a mesma!', '', 1, 1, False, 'i');
        DBMoedaRef.SetFocus;
        Exit;
    end;
    DMFinanc.TCotaMoeda.Insert;
    DMFinanc.TCotaMoeda.FieldByName('COD_MOEDA').Value:=COD_MOEDA;
    DMFinanc.TCotaMoeda.FieldByName('COD_MOEDAREF').Value:=DMFinanc.TAlxMoeda.FieldByName('COD_MOEDA').Value;
    DMFinanc.TCotaMoeda.FieldByName('DATA').AsString:=DateToStr(Date());
    DMFinanc.TCotaMoeda.FieldByName('Valor').Value:=EDCotacao.ValueNumeric;
    DMFinanc.TCotaMoeda.Post;
    DMFinanc.TCotaMoeda.ApplyUpdates;
    DMFinanc.Transaction.CommitRetaining;
    DMFinanc.VWCotaMoeda.Close;
    DMFinanc.VWCotaMoeda.Open;
    PCotacao.Visible:=False;
    
end;

procedure TFCotaMoeda.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);

begin
  inherited;
   If key=VK_Insert
    Then Begin
        PCotacao.Visible:=true;
        PCotacao.BringToFront;
        COD_MOEDA:=DMFinanc.TMoeda.FieldByNAme('COD_MOEDA').AsInteger;
        LMoeda.Caption:=DMFinanc.TMoeda.FieldByNAme('MOEDA').AsString+' - '+DMFinanc.TMoeda.FieldByNAme('ORIGEM').AsString;
        EDCotacao.SetFocus;
    End;
    If Key=vk_delete
    Then Begin
        If (PCadMoeda.Visible=False) and (PCotacao.Visible=False)
        Then Begin//Realiza as operações somente quando não estiver nenhum panel visivel  para evitar de chamar os código quando estiver apagando um edit
             { TODO 1 -oADMINISTRADOR -cATUALIZAÇÕES : [NEW TABLE]: Acrecentar novas tabelas com referência a cotações ao ventor de verificação }
            //Verifica se existe referencia entre cota moeda e outras tabelas
            If (CheckRelation ('COD_COTA', DMFinanc.VWCotaMoeda.FieldByName('COD_COTA').AsString, [DMFINANC.TPARCELACP, DMFINANC.TParcelaCR], 2)=True) Or (CheckRelation ('COD_COTAMOEDA', DMFinanc.VWCotaMoeda.FieldByName('COD_COTA').AsString, [DMFinanc.TLancCaixa, DMFINANC.TCTAPAGAR, DMFINANC.TCTARECEBER], 3)=True)//Verivica a existencia de referencias da tabela mestre nas outras tabelas através da chave
            Then Begin
                Mensagem('A  T  E  N  Ç  Ã  O', 'Você esta prestes a apagar uma cotação que pode estar atrelada a outras movimentações!', '', 1, 1, False, 'a');
                If Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Deseja realmente apagar esta cotação?', '', 2, 3, False, 'c')=2
                Then Begin
                     if DMFinanc.TCotaMoeda.Locate('COD_COTA', DMFinanc.VWCotaMoeda.FIELDBYNAME('COD_COTA').AsString, [])
                     Then Begin
                        TransReg(DMFinanc.TCotaMoeda, DMFinanc.Transaction, 'A');
                     End;
                End;
            End
            Else Begin
                //pede confirmação para apagar
                If Mensagem('C  O  N  F  I  R  M  A  Ç  Ã  O', 'Deseja realmente apagar a cotação para:'+#13+'Moeda: '+DMFinanc.VWCotaMoeda.FieldByName('Moeda').AsString+#13+'Valor: '+DMFinanc.VWCotaMoeda.FieldByName('valor').AsString, '', 2, 3, False, 'c')=2
                Then Begin
                    //tenta localizar a tabela cota moeda através da view que serviu de referência
                    If DMFinanc.TCotaMoeda.Locate('COD_COTA', DMFinanc.VWCotaMoeda.FieldByName('COD_COTA').AsString, [])
                    Then Begin
                        //função para apagar o registro da tabela
                        TransReg(DMFinanc.TCotaMoeda, DMFinanc.Transaction, 'A');
                    End;
                End;
            End;
        End;
    End;
end;

procedure TFCotaMoeda.BitBtn1Click(Sender: TObject);
begin
  inherited;
        PCadMoeda.Visible:=true;
        PCadMoeda.BringToFront;
        DBMoeda.SetFocus;
        DMFinanc.TMoeda.Insert;
end;

procedure TFCotaMoeda.PCadMoedaExit(Sender: TObject);
begin
  inherited;
    if PCadMoeda.Visible=True Then
        DBMoeda.SetFocus;
end;

procedure TFCotaMoeda.BitBtn7Click(Sender: TObject);
begin
  inherited;
    PCadMoeda.Visible:=False;
end;

procedure TFCotaMoeda.BitBtn6Click(Sender: TObject);
begin
  inherited;
    If DBMoeda.Text=''
    Then Begin
        Mensagem('INFORMAÇÃO AO USUÁRIO', 'Todos os campos deste quadro, menos origem devem estar devidamente cadastrados!', '', 1, 1, False, 'i');
        DBMoeda.SetFocus;
        Exit;
    End;

    If DBPLURALMOEDA.Text=''
    Then Begin
        Mensagem('INFORMAÇÃO AO USUÁRIO', 'Todos os campos deste quadro, menos origem devem estar devidamente cadastrados!', '', 1, 1, False, 'i');
        DBPLURALMOEDA.SetFocus;
        Exit;
    End;

    If DBPLURALFRACAO.Text=''
    Then Begin
        Mensagem('INFORMAÇÃO AO USUÁRIO', 'Todos os campos deste quadro, menos origem devem estar devidamente cadastrados!', '', 1, 1, False, 'i');
        DBPLURALFRACAO.SetFocus;
        Exit;
    End;

    If DBFRACAO.Text=''
    Then Begin
        Mensagem('INFORMAÇÃO AO USUÁRIO', 'Todos os campos deste quadro, menos origem devem estar devidamente cadastrados!', '', 1, 1, False, 'i');
        DBFRACAO.SetFocus;
        Exit;
    End;

    If DBSIMBOLO.Text=''
    Then Begin
        Mensagem('INFORMAÇÃO AO USUÁRIO', 'Todos os campos deste quadro, menos origem devem estar devidamente cadastrados!', '', 1, 1, False, 'i');
        DBSIMBOLO.SetFocus;
        Exit;
    End;

    TransReg(DMFinanc.TMoeda, DMFinanc.Transaction, 'g');
    PCadMoeda.Visible:=False;
end;

procedure TFCotaMoeda.BitBtn2Click(Sender: TObject);
begin
  inherited;
    //Se houver relação entre MOEDA e as tabelas citadas
    //CheckRelation (Chave:String; ValorChave:String; Tabelas: array of TIBQuery; NumTabs: Integer):Boolean;    
    If CheckRelation('COD_MOEDA', DMFinanc.TMOEDA.FieldByName('COD_MOEDA').ASSTRING, [DMFinanc.TCOTAMOEDA], 1)=True
    Then Begin
        Mensagem('INFORMAÇÃO AO USUÁRIO', 'Esta moeda não pode ser apagada, por que possui relações em outras movimentações ou cadastros!', '', 1, 1, False, 'a');
        Exit;
    End;
    If CheckRelation('COD_MOEDAREF', DMFinanc.TMOEDA.FieldByName('COD_MOEDA').ASSTRING, [DMFinanc.TCOTAMOEDA], 1)=True
    Then Begin
       Mensagem('INFORMAÇÃO AO USUÁRIO', 'Esta moeda não pode ser apagada, por que possui relações em outras movimentações ou cadastros!', '', 1, 1, False, 'a');
       Exit;
    End;
    TransReg(DMFinanc.TMOEDA, DMFinanc.Transaction, 'a');
end;

procedure TFCotaMoeda.BitBtn3Click(Sender: TObject);
begin
  inherited;
        PCadMoeda.Visible:=true;
        PCadMoeda.BringToFront;
        DBMoeda.SetFocus;
        DMFinanc.TMoeda.Edit;
end;

procedure TFCotaMoeda.DBGMOEDACellClick(Column: TColumn);
begin
  inherited;
    SelectCota;
end;

procedure TFCotaMoeda.DBGMOEDAKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
    If (Key=VK_Down) Or (Key=VK_UP) Then
        SelectCota;
end;

procedure TFCotaMoeda.DBGMOEDAEnter(Sender: TObject);
begin
  inherited;
    DBGMOEDA.Color:=$00F0FFFF;
end;

procedure TFCotaMoeda.DBCOTACAOEnter(Sender: TObject);
begin
  inherited;
    DBCOTACAO.Color:=$00F0FFFF;
end;

procedure TFCotaMoeda.DBCOTACAOExit(Sender: TObject);
begin
  inherited;
    DBCOTACAO.Color:=$00F5F5F5;
end;

procedure TFCotaMoeda.DBGMOEDAExit(Sender: TObject);
begin
  inherited;
    DBGMOEDA.Color:=$00F0F0E3;
end;

procedure TFCotaMoeda.FormActivate(Sender: TObject);
begin
  inherited;
    SelectCota;
end;

procedure TFCotaMoeda.EDCotacaoExit(Sender: TObject);
begin
  inherited;
    If EDCotacao.ValueNumeric<=0
    Then Begin
        Mensagem('INFORMAÇÃO AO USUÁRIO', 'Por favor insira uma valor superior a 0!', '', 1, 1, False, 'i');
        EDCotacao.SetFocus;
    End;
end;

end.
