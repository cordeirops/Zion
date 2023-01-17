unit UConfigNF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPadrao, Buttons, StdCtrls, DrLabel, jpeg, ExtCtrls, DBCtrls,
  Mask, Grids, DBGrids, EditFloat, Printers, QuickRpt, QRCtrls, Menus;

type
  TFConfigNF = class(TFPadrao)
    Label1: TLabel;
    Panel8: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label2: TLabel;
    DBCBImpressoras: TDBComboBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    DBGridCadastroPadrao: TDBGrid;
    CBCampo: TComboBox;
    EdLinha: TFloatEdit;
    EdColuna: TFloatEdit;
    EdFonte: TFloatEdit;
    Label7: TLabel;
    Label8: TLabel;
    EDEntreLinhasProduto: TFloatEdit;
    Label9: TLabel;
    Label10: TLabel;
    EDEntreLinhasServicos: TFloatEdit;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    EdPapelLinha: TFloatEdit;
    EdPapelColuna: TFloatEdit;
    Label14: TLabel;
    Label15: TLabel;
    EdItensMaxProd: TFloatEdit;
    Label16: TLabel;
    EdItensMaxServ: TFloatEdit;
    BtnFiltrar: TBitBtn;
    Label17: TLabel;
    Label18: TLabel;
    EDEntreLinhasRecibo: TFloatEdit;
    Label19: TLabel;
    edcampo: TFloatEdit;
    Label20: TLabel;
    cbalinhar: TComboBox;
    Label21: TLabel;
    PopupMenu1: TPopupMenu;
    BitBtn5: TBitBtn;
    QRNF: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRBand2: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRBand3: TQRBand;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRShape1: TQRShape;
    Label22: TLabel;
    Label23: TLabel;
    EDEntreLinhasDespesas: TFloatEdit;
    Label24: TLabel;
    EdItensMaxDesp: TFloatEdit;
    cbpv: TCheckBox;
    CbImpDadosVeiculo: TCheckBox;
    CbImpObsNf: TCheckBox;
    CBImpNumOrd: TCheckBox;
    procedure BitBtn3Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BtnFiltrarClick(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    //Procedure utilizada para filtrar os campos de impressao
    Procedure FiltraCampos;
  end;

var
  FConfigNF: TFConfigNF;

implementation

uses AlxMessage, UDMMacs, Alxor32, UDMSaida, Alxorprn, UDmServ;

{$R *.dfm}

Procedure TFConfigNF.FiltraCampos;
Begin
   DMMACS.TNF.Close;
   DMMACS.TNF.SQL.Clear;
   DMMACS.TNF.SQL.Add('SELECT * FROM NF');
   DMMACS.TNF.Open;
End;

procedure TFConfigNF.BitBtn3Click(Sender: TObject);
begin
  inherited;
	If CBCampo.Text=''
   Then Begin
		Mensagem('Atenção', 'Por favor, informe o campo a ser impressoa na Nota fiscal', '', 1, 1, False, 'a');
		CBCampo.SetFocus;
       Exit;       
	End;
   XCODPKMESTRE:=InserReg(DMMACS.TNF, 'NF', 'COD_NF');
   DMMACS.TNF.FieldByName('COD_NF').AsInteger:=XCODPKMESTRE;
   DMMACS.TNF.FieldByName('CAMPO').AsString:=CBCampo.Text;
   DMMACS.TNF.FieldByName('ALINHAR').AsString:=cbalinhar.Text;
   DMMACS.TNF.FieldByName('COLUNA').AsInteger:=EdColuna.ValueInteger;
   DMMACS.TNF.FieldByName('LINHA').AsInteger:=EdLinha.ValueInteger;
   DMMACS.TNF.FieldByName('FONTE').AsInteger:=EdFonte.ValueInteger;
   DMMACS.TNF.FieldByName('TAMANHO').AsInteger:=edcampo.ValueInteger;   
   DMMACS.TNF.Post;
   DMMACS.Transaction.CommitRetaining;
   CBCampo.SetFocus;
   FiltraCampos;
end;

procedure TFConfigNF.FormActivate(Sender: TObject);
begin
  inherited;
	Caption:='Config. de Nota Fiscais';
   DBCBImpressoras.Items.Clear;
   DBCBImpressoras.Items:=Printer.Printers;
   EDEntreLinhasProduto.ValueInteger:=DMMACS.TLoja.FieldByName('NFENTLINPROD').AsInteger;
   EDEntreLinhasDespesas.ValueInteger:=DMMACS.TLoja.FieldByName('NFENTLINDESP').AsInteger;
   EDEntreLinhasServicos.ValueInteger:=DMMACS.TLoja.FieldByName('NFENTLINSERV').AsInteger;
   EDEntreLinhasRecibo.ValueInteger:=DMMACS.TLoja.FieldByName('NFENTLINRECIBO').AsInteger;
   EdPapelLinha.ValueInteger:=DMMACS.TLoja.FieldByName('NFTAMPAPLIN').AsInteger;
   EdPapelColuna.ValueInteger:=DMMACS.TLoja.FieldByName('NFTAMPAPCOL').AsInteger;
   EdItensMaxProd.ValueInteger:=DMMACS.TLoja.FieldByName('NFITMAXPROD').AsInteger;
   EdItensMaxServ.ValueInteger:=DMMACS.TLoja.FieldByName('NFITMAXSERV').AsInteger;
   EdItensMaxDesp.ValueInteger := DMMACS.TLoja.FieldByName('NFITMAXDESP').AsInteger;
   If DMMACS.TLoja.FieldByName('NFIMPDADOSVEICULO').AsString='1' Then
       CbImpDadosVeiculo.Checked:=True
   Else
       CbImpDadosVeiculo.Checked:=False;

   If DMMACS.TLoja.FieldByName('NFIMPOBS').AsString='1' Then
       CbImpObsNf.Checked:=True
   Else
       CbImpObsNf.Checked:=False;

   If DMMACS.TLoja.FieldByName('NFIMPNUMORD').AsString='1' Then
       CBImpNumOrd.Checked:=True
   Else
       CBImpNumOrd.Checked:=False;

   FiltraCampos;
end;

procedure TFConfigNF.BitBtn1Click(Sender: TObject);
begin
  inherited;
   DMMACS.TLoja.Edit;
   DMMACS.TLoja.FieldByName('NFENTLINPROD').AsInteger:=EDEntreLinhasProduto.ValueInteger;
   DMMACS.TLoja.FieldByName('NFENTLINSERV').AsInteger:=EDEntreLinhasServicos.ValueInteger;
   DMMACS.TLoja.FieldByName('NFENTLINRECIBO').AsInteger:=EDEntreLinhasRecibo.ValueInteger;
   DMMACS.TLoja.FieldByName('NFTAMPAPLIN').AsInteger:=EdPapelLinha.ValueInteger;
   DMMACS.TLoja.FieldByName('NFTAMPAPCOL').AsInteger:=EdPapelColuna.ValueInteger;
   DMMACS.TLoja.FieldByName('NFITMAXPROD').AsInteger:=EdItensMaxProd.ValueInteger;
   DMMACS.TLoja.FieldByName('NFITMAXSERV').AsInteger:=EdItensMaxServ.ValueInteger;
   DMMACS.TLoja.FieldByName('NFITMAXDESP').AsInteger:=EdItensMaxDesp.ValueInteger;
   DMMACS.TLoja.FieldByName('NFENTLINDESP').AsInteger:=EDEntreLinhasDespesas.ValueInteger;
  	If CbImpDadosVeiculo.Checked=True Then
   	DMMACS.TLoja.FieldByName('NFIMPDADOSVEICULO').AsString:='1'
   Else
   	DMMACS.TLoja.FieldByName('NFIMPDADOSVEICULO').AsString:='0';
       
  	If CbImpObsNf.Checked=True Then
   	DMMACS.TLoja.FieldByName('NFIMPOBS').AsString:='1'
   Else
   	DMMACS.TLoja.FieldByName('NFIMPOBS').AsString:='0';

  	If CBImpNumOrd.Checked=True Then
   	DMMACS.TLoja.FieldByName('NFIMPNUMORD').AsString:='1'
   Else
   	DMMACS.TLoja.FieldByName('NFIMPNUMORD').AsString:='0';

   DMMACS.TLoja.Post;
   DMMACS.Transaction.CommitRetaining;
   Close;
end;

procedure TFConfigNF.BitBtn2Click(Sender: TObject);
begin
  inherited;
   Close;
end;

procedure TFConfigNF.BitBtn4Click(Sender: TObject);
begin
  inherited;
   EdLinha.ValueNumeric:=DMMACS.TNF.FieldByName('LINHA').AsInteger;
   EdColuna.ValueNumeric:=DMMACS.TNF.FieldByName('COLUNA').AsInteger;
   EdFonte.ValueNumeric:=DMMACS.TNF.FieldByName('FONTE').AsInteger;
	CBCampo.Text:=DMMACS.TNF.FieldByName('CAMPO').AsString;   
   DMMACS.TNF.Delete;
   DMMACS.Transaction.CommitRetaining;
end;

procedure TFConfigNF.BtnFiltrarClick(Sender: TObject);
begin
  inherited;
    If cbpv.Checked=True
    Then Begin
         FiltraTabela(DMSAIDA.TFiscPV, 'docfissaida', '', '', '');
         If FiltraTabela(DMSAIDA.WPedV, 'vwpedv', 'cod_pedvenda', DMSAIDA.TFiscPV.FieldByName('cod_pedido').AsString, '')=True
         Then Begin
             Printer.PrinterIndex:=-1;
          NF( DMSAIDA.WPedV.Fieldbyname('COD_PEDVENDA').AsInteger , 'PV', False);
         End
         Else Begin
          Mensagem('INFORMAÇÃO', 'Para que o teste ocorra, é necessario que uma nota fiscal já esteja lançada no sistema!', '', 1, 1, False, 'a');
         End;
         FiltraCampos;
    End
    Else begin
         DMServ.Alx.Close;
         DMServ.Alx.SQL.Clear;
         DMServ.Alx.SQL.Add(' SELECT * FROM ordem ');
         DMServ.Alx.SQL.Add(' JOIN docfisord ON ordem.cod_ordem = docfisord.cod_ordem  order by docfisord.cod_docfiscord desc ');
         DMServ.Alx.Open;
         If not DMServ.Alx.IsEmpty
         Then Begin
              Printer.PrinterIndex:=-1;
              NFOS(DMServ.Alx.Fieldbyname('COD_ORDEM').AsInteger);
         End
         Else Begin
              Mensagem('INFORMAÇÃO', 'Para que o teste ocorra, é necessario que uma nota fiscal já esteja lançada no sistema!', '', 1, 1, False, 'a');
         End;
         FiltraCampos;
    End;
end;

procedure TFConfigNF.BitBtn5Click(Sender: TObject);
begin
  inherited;
   QRNF.Preview;
end;

end.
