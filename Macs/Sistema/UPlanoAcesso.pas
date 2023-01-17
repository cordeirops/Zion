unit UPlanoAcesso;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UPadrao, TFlatHintUnit, Buttons, StdCtrls, jpeg, ExtCtrls,
  DBCtrls, TFlatListBoxUnit, ComCtrls, ImgList, TFlatTabControlUnit,
  DrLabel;

type
  TFPlanoAcesso = class(TFPadrao)
    ImageList1: TImageList;
    Panel1: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    GBLOJAS: TGroupBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    LWLOJA: TListView;
    DBLOJAS: TComboBox;
    GroupBox1: TGroupBox;
    LCODUSUARIO: TLabel;
    GroupBox3: TGroupBox;
    Shape3: TShape;
    TCPLANO: TFlatTabControl;
    PCADASTRO: TPanel;
    Shape8: TShape;
    Shape9: TShape;
    Shape10: TShape;
    CAD5: TCheckBox;
    DBCBCADASTRO: TCheckBox;
    CAD1: TCheckBox;
    CAD2: TCheckBox;
    CAD3: TCheckBox;
    CAD4: TCheckBox;
    CAD6: TCheckBox;
    CAD7: TCheckBox;
    CAD8: TCheckBox;
    CAD9: TCheckBox;
    CAD10: TCheckBox;
    CAD11: TCheckBox;
    CAD12: TCheckBox;
    CAD13: TCheckBox;
    CAD14: TCheckBox;
    CAD15: TCheckBox;
    CAD16: TCheckBox;
    CBCONFIGLOJA: TCheckBox;
    CBCADBENSCLI: TCheckBox;
    PSERVICO: TPanel;
    Shape19: TShape;
    Shape20: TShape;
    Shape21: TShape;
    CBDBSERVICOS: TCheckBox;
    CBABRIRORD: TCheckBox;
    CBFECHORD: TCheckBox;
    CBEXCORD: TCheckBox;
    CBCADSERV: TCheckBox;
    PENTRADAS: TPanel;
    Shape12: TShape;
    Shape13: TShape;
    Shape15: TShape;
    DBCBENTRADAS: TCheckBox;
    ENT1: TCheckBox;
    ENT6: TCheckBox;
    ENT7: TCheckBox;
    ENT3: TCheckBox;
    ENT8: TCheckBox;
    ENT2: TCheckBox;
    ENT4: TCheckBox;
    ENT5: TCheckBox;
    ENT10: TCheckBox;
    ENT9: TCheckBox;
    ENT12: TCheckBox;
    ENT13: TCheckBox;
    ENT14: TCheckBox;
    ENT15: TCheckBox;
    CBTROCPED: TCheckBox;
    CBPEDVENDA: TCheckBox;
    CBALTVLRPED: TCheckBox;
    CBDESMAIORPROD: TCheckBox;
    CBGarantia: TCheckBox;
    CBCancelPed: TCheckBox;
    CBALTBCCOMIS: TCheckBox;
    CBALTPERCOMIS: TCheckBox;
    CBECF: TCheckBox;
    CBALTVLRUNIT: TCheckBox;
    PProducao: TPanel;
    Shape22: TShape;
    Shape23: TShape;
    Shape24: TShape;
    CBPRODUCAO: TCheckBox;
    CBAcessProducao: TCheckBox;
    CBACEPRODUC: TCheckBox;
    PREL: TPanel;
    Shape16: TShape;
    Shape17: TShape;
    Shape18: TShape;
    CBRBANCO: TCheckBox;
    CBRCTARECEBER: TCheckBox;
    DBCBREL: TCheckBox;
    CBRFINEST: TCheckBox;
    CBRPEDVEN: TCheckBox;
    CBRPEDCOMP: TCheckBox;
    CBRCAIXA: TCheckBox;
    CBRCTAPAGAR: TCheckBox;
    ENT11: TCheckBox;
    CBRELABERTORD: TCheckBox;
    CBRELFECHORD: TCheckBox;
    CBRELINVENTEST: TCheckBox;
    PFINANCEIRO: TPanel;
    Shape5: TShape;
    Shape6: TShape;
    Shape7: TShape;
    DBCBFINANCEIRO: TCheckBox;
    FIN1: TCheckBox;
    FIN2: TCheckBox;
    FIN3: TCheckBox;
    FIN4: TCheckBox;
    FIN5: TCheckBox;
    FIN6: TCheckBox;
    FIN7: TCheckBox;
    FIN8: TCheckBox;
    FIN9: TCheckBox;
    FIN13: TCheckBox;
    FIN14: TCheckBox;
    FIN15: TCheckBox;
    FIN16: TCheckBox;
    FIN17: TCheckBox;
    FIN18: TCheckBox;
    CBALTLANCAIXA: TCheckBox;
    CBREIMPDUP: TCheckBox;
    CBBaixaCtaBanco: TCheckBox;
    CBMargemSeg: TCheckBox;
    LUSUARIO: TLabel;
    CBTelaComis: TCheckBox;
    CBAbreGaveta: TCheckBox;
    CBGeraFinanc: TCheckBox;
    CBFechaAuto: TCheckBox;
    CbGerarBonif: TCheckBox;
    CbGerarCanc: TCheckBox;
    CbEditaVendedorOs: TCheckBox;
    CBCadastraAlteraCidadePessoa: TCheckBox;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure TCPLANOTabChanged(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure DBCBCADASTROClick(Sender: TObject);
    procedure DBCBFINANCEIROClick(Sender: TObject);
    procedure DBCBENTRADASClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBLOJASKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure DBCBRELClick(Sender: TObject);
    procedure CBDBSERVICOSClick(Sender: TObject);
    procedure CBPRODUCAOClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPlanoAcesso: TFPlanoAcesso;

implementation

uses UDMMacs, AlxMessage, UMenu, Alxor32, UCadUsuario, Math;

{$R *.DFM}

procedure TFPlanoAcesso.BitBtn1Click(Sender: TObject);
Var
    I: Integer;
    Flag:Integer;
begin
  inherited;
    Flag:=0;
    For I:=0 to LWLoja.Items.Count-1 do
    Begin
        If LWLOJA.Items[I].Caption=DMMacs.Talx.FieldByName('COD_LOJA').ASSTRING+' - '+DMMacs.Talx.FieldByName('DESCRICAO').ASSTRING Then
            Flag:=1;
    End;
    If Flag=0
    Then Begin
        LWLoja.Items.Add;
        LWLoja.Items[LWLoja.Items.Count-1].Caption:=DBLOJAS.Text;// DMMacs.Talx.FieldByName('COD_LOJA').ASSTRING+' - '+DMMacs.Talx.FieldByName('DESCRICAO').ASSTRING;
        DBLOJAS.SetFocus;
    End;
end;

procedure TFPlanoAcesso.BitBtn2Click(Sender: TObject);
begin
  inherited;
    If LWLoja.Selected=nil
    Then Begin
        Mensagem('Informação ao Usuário', 'Por favor, selecione a loja que deseja retirar, depois sim, clique em retirar.', '', 1, 1, false, 'i');
        LWLoja.SetFocus;
        Exit;
    End
    Else Begin
        LWLoja.Items[LWLoja.Selected.Index].Delete;
    End;
end;

procedure TFPlanoAcesso.TCPLANOTabChanged(Sender: TObject);
begin
  inherited;
    Case TCPLANO.ActiveTab of
        0: Begin
            PCADASTRO.Visible:=True;
            PCADASTRO.BringToFront;
            DBCBCADASTRO.SetFocus;
           End;
        1: Begin
            PFINANCEIRO.Visible:=True;
            PFINANCEIRO.BringToFront;
            DBCBFINANCEIRO.SetFocus;
           End;
        2: Begin
            PENTRADAS.Visible:=True;
            PENTRADAS.BringToFront;
            DBCBENTRADAS.SetFocus;
           End;
        3: Begin
            PREL.Visible:=True;
            PREL.BringToFront;
            DBCBREL.SetFocus;
           End;
        4: Begin
            PSERVICO.Visible:=True;
            PSERVICO.BringToFront;
            CBDBSERVICOS.SetFocus;
           End;
        5: Begin
            PProducao.Visible:=True;
            PProducao.BringToFront;
            CBPRODUCAO.SetFocus;
           End;

    End;
end;

procedure TFPlanoAcesso.BitBtn4Click(Sender: TObject);
begin
  inherited;
    If Mensagem('Confirmação do Usuário', 'Deseja realmente cancelar o esquema de configuração e sair?', '', 2, 3, false, 'c')=2
    Then Begin
        DMMacs.TLojaUsu.CancelUpdates;
        DMMacs.Transaction.RollbackRetaining;
        Close;
    End;
end;

procedure TFPlanoAcesso.DBCBCADASTROClick(Sender: TObject);
begin
  inherited;
    If DBCBCADASTRO.Checked=True
    Then Begin
        CAD1.Checked:=True;
        CAD2.Checked:=True;
        CAD3.Checked:=True;
        CAD4.Checked:=True;
        CAD5.Checked:=True;
        CAD6.Checked:=True;
        CAD7.Checked:=True;
        CAD8.Checked:=True;
        CAD9.Checked:=True;
        CAD10.Checked:=True;
        CAD11.Checked:=True;
        CAD12.Checked:=True;
        CAD13.Checked:=True;
        CAD14.Checked:=True;
        CAD15.Checked:=True;
        CAD16.Checked:=True;
        CBCONFIGLOJA.Checked:=True;
        CBCADBENSCLI.Checked:=True;
    End
    Else Begin
        CAD1.Checked:=False;
        CAD2.Checked:=False;
        CAD3.Checked:=False;
        CAD4.Checked:=False;
        CAD5.Checked:=False;
        CAD6.Checked:=False;
        CAD7.Checked:=False;
        CAD8.Checked:=False;
        CAD9.Checked:=False;
        CAD10.Checked:=False;
        CAD11.Checked:=False;
        CAD12.Checked:=False;
        CAD13.Checked:=False;
        CAD14.Checked:=False;
        CAD15.Checked:=False;
        CAD16.Checked:=False;
        CBCONFIGLOJA.Checked:=False;
        CBCADBENSCLI.Checked:=False;
    End;
end;

procedure TFPlanoAcesso.DBCBFINANCEIROClick(Sender: TObject);
begin
  inherited;
    If DBCBFINANCEIRO.Checked=True
    Then Begin
        FIN1.Checked:=true;
        FIN2.Checked:=true;
        FIN3.Checked:=true;
        FIN4.Checked:=true;
        FIN5.Checked:=true;
        FIN6.Checked:=true;
        FIN7.Checked:=true;
        FIN8.Checked:=true;
        FIN9.Checked:=true;
        FIN13.Checked:=true;
        FIN14.Checked:=true;
        FIN15.Checked:=true;
        FIN16.Checked:=true;
        FIN17.Checked:=true;
        FIN18.Checked:=true;
    End
    Else Begin
        FIN1.Checked:=False;
        FIN2.Checked:=False;
        FIN3.Checked:=False;
        FIN4.Checked:=False;
        FIN5.Checked:=False;
        FIN6.Checked:=False;
        FIN7.Checked:=False;
        FIN8.Checked:=False;
        FIN9.Checked:=False;
        FIN13.Checked:=False;
        FIN14.Checked:=False;
        FIN15.Checked:=False;
        FIN16.Checked:=False;
        FIN17.Checked:=False;
        FIN18.Checked:=False;
    End;

end;

procedure TFPlanoAcesso.DBCBENTRADASClick(Sender: TObject);
begin
  inherited;
    If DBCBENTRADAS.Checked=True
    Then Begin
        ENT1.Checked:=True;
        ENT2.Checked:=True;
        ENT3.Checked:=True;
        ENT4.Checked:=True;
        ENT5.Checked:=True;
        ENT6.Checked:=True;
        ENT7.Checked:=True;
        ENT8.Checked:=True;
        ENT9.Checked:=True;
        ENT10.Checked:=True;
        CBPEDVENDA.Checked:=True;
        ENT12.Checked:=True;
        ENT13.Checked:=True;
        ENT14.Checked:=True;
        ENT15.Checked:=True;
        CBTROCPED.Checked:=True;

    End
    Else Begin
        ENT1.Checked:=False;
        ENT2.Checked:=False;
        ENT3.Checked:=False;
        ENT4.Checked:=False;
        ENT5.Checked:=False;
        ENT6.Checked:=False;
        ENT7.Checked:=False;
        ENT8.Checked:=False;
        ENT9.Checked:=False;
        ENT10.Checked:=False;
        CBPEDVENDA.Checked:=False;
        ENT12.Checked:=False;
        ENT13.Checked:=False;
        ENT14.Checked:=False;
        ENT15.Checked:=False;
        CBTROCPED.Checked:=False;

    End;
end;

procedure TFPlanoAcesso.BitBtn3Click(Sender: TObject);
Var
    I, CODPK: Integer;
begin
    inherited;
    //tenta fazer o bloco
    Try
        //Salva configurações do usuário para cada loja selecionada
        For I:=0 to LWLOJA.Items.Count-1 do
        Begin
            If GBLOJAS.Enabled=True
            Then Begin//se estiver inserindo novos acessos
            	CODPK:=InserReg(DMMacs.TLojaUsu, 'LOJACESSO', 'COD_LOJAACES');
            	DMMACS.TLojaUsu.FieldByName('COD_LOJAACES').AsInteger:=CODPK;
            End
            Else Begin
                FiltraTabela(DMMACS.TLojausu, 'LOJACESSO', 'COD_LOJAACES', IntToStr(FMenu.XCOD_PLANO), '');
                DMMacs.TLojaUsu.Edit;
            End;

            DMMacs.TLojaUsu.FieldByName('COD_USUARIO').AsInteger:=FMenu.XCOD_USUARIO;
            DMMacs.TLojaUsu.FieldByName('COD_LOJA').Value:=StrToFloat(Copy(LWLoja.Items[I].Caption,1, Pos(' - ', LWLoja.Items[I].Caption)-1));
            DMMacs.TLojaUsu.FieldByName('USUPERMI').Value:=StrToFloat(FMenu.LCODUSUARIO.Caption);
            //restrições para cadastros
            If CBAbreGaveta.Checked = True Then
            	DMMacs.TLojaUsu.FieldByName('ABREGAVETA').AsInteger:=1
            Else
               DMMacs.TLojaUsu.FieldByName('ABREGAVETA').AsInteger:=0;

            //restrições para cadastrar alterar cidade em pessoa
            If CBCadastraAlteraCidadePessoa.Checked = True Then
            	DMMacs.TLojaUsu.FieldByName('ALTERACIDADEPESSOA').AsInteger:=1
            Else
               DMMacs.TLojaUsu.FieldByName('ALTERACIDADEPESSOA').AsInteger:=0;

            If CAD1.Checked = True Then
            	DMMacs.TLojaUsu.FieldByName('CADCLI').AsInteger:=1
            Else
               DMMacs.TLojaUsu.FieldByName('CADCLI').AsInteger:=0;
            If CAD2.Checked = True Then
            	DMMacs.TLojaUsu.FieldByName('EXCLCLI').AsInteger:=1
            Else
               DMMacs.TLojaUsu.FieldByName('EXCLCLI').AsInteger:=0;
            If CAD3.Checked = True Then
            	DMMacs.TLojaUsu.FieldByName('CAD_USUARIO').AsInteger:=1
            Else
            	DMMacs.TLojaUsu.FieldByName('CAD_USUARIO').AsInteger:=0;
            If CAD4.Checked = True Then
            	DMMacs.TLojaUsu.FieldByName('CADVEN').AsInteger:=1
            Else
            	DMMacs.TLojaUsu.FieldByName('CADVEN').AsInteger:=0;
            If CAD5.Checked = True Then
               DMMacs.TLojaUsu.FieldByName('EXCVENDEDOR').AsInteger:=1
            Else
               DMMacs.TLojaUsu.FieldByName('EXCVENDEDOR').AsInteger:=0;
            If CAD6.Checked = True Then
               DMMacs.TLojaUsu.FieldByName('CADCTACORRENTE').AsInteger:=1
            Else
               DMMacs.TLojaUsu.FieldByName('CADCTACORRENTE').AsInteger:=0;
            If CAD7.Checked = True Then
               DMMacs.TLojaUsu.FieldByName('CADFORNEC').AsInteger:=1
            Else
               DMMacs.TLojaUsu.FieldByName('CADFORNEC').AsInteger:=0;
            If CAD8.Checked = True Then
               DMMacs.TLojaUsu.FieldByName('EXCLFORNEC').AsInteger:=1
            Else
               DMMacs.TLojaUsu.FieldByName('EXCLFORNEC').AsInteger:=0;
            If CAD9.Checked = True Then
               DMMacs.TLojaUsu.FieldByName('CADPLANOCTA').AsInteger:=1
            Else
               DMMacs.TLojaUsu.FieldByName('CADPLANOCTA').AsInteger:=0;
            If CAD10.Checked = True Then
               DMMacs.TLojaUsu.FieldByName('CADFUNC').AsInteger:=1
            Else
               DMMacs.TLojaUsu.FieldByName('CADFUNC').AsInteger:=0;
            If CAD11.Checked = True Then
               DMMacs.TLojaUsu.FieldByName('CADFORMPAG').AsInteger:=1
            Else
               DMMacs.TLojaUsu.FieldByName('CADFORMPAG').AsInteger:=0;
            If CAD12.Checked = True Then
               DMMacs.TLojaUsu.FieldByName('CADEMPRESA').AsInteger:=1
            Else
               DMMacs.TLojaUsu.FieldByName('CADEMPRESA').AsInteger:=0;
            If CAD13.Checked = True Then
               DMMacs.TLojaUsu.FieldByName('CADLOJA').AsInteger:=1
            Else
               DMMacs.TLojaUsu.FieldByName('CADLOJA').AsInteger:=0;
            If CAD14.Checked = True Then
               DMMacs.TLojaUsu.FieldByName('PRODUTOS').AsInteger:=1
            Else
               DMMacs.TLojaUsu.FieldByName('PRODUTOS').AsInteger:=0;
            If CAD15.Checked = True Then
               DMMacs.TLojaUsu.FieldByName('CADCX').AsInteger:=1
            Else
               DMMacs.TLojaUsu.FieldByName('CADCX').AsInteger:=0;
            If CAD16.Checked = True Then
               DMMacs.TLojaUsu.FieldByName('CADMOEDA').AsInteger:=1
            Else
               DMMacs.TLojaUsu.FieldByName('CADMOEDA').AsInteger:=0;
            If CBTROCPED.Checked = True Then
               DMMacs.TLojaUsu.FieldByName('TROCVEND').AsInteger:=1
            Else
               DMMacs.TLojaUsu.FieldByName('TROCVEND').AsInteger:=0;
            If CBCADBENSCLI.Checked = True Then
               DMMacs.TLojaUsu.FieldByName('CADBENSCLI').AsInteger:=1
            Else
               DMMacs.TLojaUsu.FieldByName('CADBENSCLI').AsInteger:=0;
            If CBECF.Checked = True Then
               DMMacs.TLojaUsu.FieldByName('ECF').AsInteger:=1
            Else
               DMMacs.TLojaUsu.FieldByName('ECF').AsInteger:=0;

            //restrições para financeiro
            If CBGeraFinanc.Checked = True Then
	            DMMacs.TLojaUsu.FieldByName('GERAFINANC').AsInteger:=1
            Else
                DMMacs.TLojaUsu.FieldByName('GERAFINANC').AsInteger:=0;
            If FIN1.Checked = True Then
	            DMMacs.TLojaUsu.FieldByName('LIBERACRED').AsInteger:=1
            Else
                DMMacs.TLojaUsu.FieldByName('LIBERACRED').AsInteger:=0;
            If FIN2.Checked = True Then
                DMMacs.TLojaUsu.FieldByName('CAD_CR').AsInteger:=1
            Else
                DMMacs.TLojaUsu.FieldByName('CAD_CR').AsInteger:=0;
            If FIN3.Checked = True Then
                DMMacs.TLojaUsu.FieldByName('ALTEXC_CR').AsInteger:=1
            Else
                DMMacs.TLojaUsu.FieldByName('ALTEXC_CR').AsInteger:=0;
            If FIN4.Checked = True Then
                DMMacs.TLojaUsu.FieldByName('BAIXAR_CR').AsInteger:=1
            Else
                DMMacs.TLojaUsu.FieldByName('BAIXAR_CR').AsInteger:=0;
            If FIN5.Checked = True Then
                DMMacs.TLojaUsu.FieldByName('CANCELBAIXA_CR').AsInteger:=1
            Else
                DMMacs.TLojaUsu.FieldByName('CANCELBAIXA_CR').AsInteger:=0;
            If FIN6.Checked = True Then
                DMMacs.TLojaUsu.FieldByName('CAD_CP').AsInteger:=1
            Else
                DMMacs.TLojaUsu.FieldByName('CAD_CP').AsInteger:=0;
            If FIN7.Checked = True Then
                DMMacs.TLojaUsu.FieldByName('ALTEXC_CP').AsInteger:=1
            Else
                DMMacs.TLojaUsu.FieldByName('ALTEXC_CP').AsInteger:=0;
            If FIN8.Checked = True Then
                DMMacs.TLojaUsu.FieldByName('BAIXA_CP').AsInteger:=1
            Else
                DMMacs.TLojaUsu.FieldByName('BAIXA_CP').AsInteger:=0;
            If FIN9.Checked = True Then
                DMMacs.TLojaUsu.FieldByName('CANCELBAIXA_CP').AsInteger:=1
            Else
                DMMacs.TLojaUsu.FieldByName('CANCELBAIXA_CP').AsInteger:=0;
            If FIN13.Checked = True Then
                DMMacs.TLojaUsu.FieldByName('ABRIRCX').AsInteger:=1
            Else
                DMMacs.TLojaUsu.FieldByName('ABRIRCX').AsInteger:=0;
            If FIN14.Checked = True Then
                DMMacs.TLojaUsu.FieldByName('LANCX').AsInteger:=1
            Else
                DMMacs.TLojaUsu.FieldByName('LANCX').AsInteger:=0;
            If FIN15.Checked = True Then
                DMMacs.TLojaUsu.FieldByName('FECHCX').AsInteger:=1
            Else
                DMMacs.TLojaUsu.FieldByName('FECHCX').AsInteger:=0;
            If FIN16.Checked = True Then
                DMMacs.TLojaUsu.FieldByName('CADCOTA').AsInteger:=1
            Else
                DMMacs.TLojaUsu.FieldByName('CADCOTA').AsInteger:=0;
            If FIN17.Checked = True Then
                DMMacs.TLojaUsu.FieldByName('MOVBANCO').AsInteger:=1
            Else
                DMMacs.TLojaUsu.FieldByName('MOVBANCO').AsInteger:=0;
            If FIN18.Checked = True Then
                DMMacs.TLojaUsu.FieldByName('ALTSALFUNC').AsInteger:=1
            Else
                DMMacs.TLojaUsu.FieldByName('ALTSALFUNC').AsInteger:=0;
            If CBALTLANCAIXA.Checked = True Then
                DMMacs.TLojaUsu.FieldByName('ALTLANCX').AsInteger:=1
            Else
                DMMacs.TLojaUsu.FieldByName('ALTLANCX').AsInteger:=0;
            If CBREIMPDUP.Checked = True Then
                DMMacs.TLojaUsu.FieldByName('REIMPDUP').AsInteger:=1
            Else
                DMMacs.TLojaUsu.FieldByName('REIMPDUP').AsInteger:=0;
            If CBBaixaCtaBanco.Checked = True Then
                DMMacs.TLojaUsu.FieldByName('BAIXACTABANCO').AsInteger:=1
            Else
                DMMacs.TLojaUsu.FieldByName('BAIXACTABANCO').AsInteger:=0;


            //restrições para Entradas
            If ENT1.Checked = True Then
	            DMMacs.TLojaUsu.FieldByName('DESCPROD').AsInteger:=1
            Else
               DMMacs.TLojaUsu.FieldByName('DESCPROD').AsInteger:=0;
            If ENT2.Checked = True Then
               DMMacs.TLojaUsu.FieldByName('ACERTESTOQUE').AsInteger:=1
            Else
               DMMacs.TLojaUsu.FieldByName('ACERTESTOQUE').AsInteger:=0;
            If ENT3.Checked = True Then
               DMMacs.TLojaUsu.FieldByName('ORCAMENTO').AsInteger:=1
            Else
               DMMacs.TLojaUsu.FieldByName('ORCAMENTO').AsInteger:=0;
            If ENT4.Checked = True Then
               DMMacs.TLojaUsu.FieldByName('VENDATACADO').AsInteger:=1
            Else
               DMMacs.TLojaUsu.FieldByName('VENDATACADO').AsInteger:=0;
            If ENT5.Checked = True Then
               DMMacs.TLojaUsu.FieldByName('VENDAVAREJO').AsInteger:=1
            Else
               DMMacs.TLojaUsu.FieldByName('VENDAVAREJO').AsInteger:=0;
            If ENT6.Checked = True Then
               DMMacs.TLojaUsu.FieldByName('PDV').AsInteger:=1
            Else
               DMMacs.TLojaUsu.FieldByName('PDV').AsInteger:=0;
            If ENT7.Checked = True Then
               DMMacs.TLojaUsu.FieldByName('PEDVEN').AsInteger:=1
            Else
               DMMacs.TLojaUsu.FieldByName('PEDVEN').AsInteger:=0;
            If ENT8.Checked = True Then
               DMMacs.TLojaUsu.FieldByName('ALTPED').AsInteger:=1
            Else
               DMMacs.TLojaUsu.FieldByName('ALTPED').AsInteger:=0;
            If ENT9.Checked = True Then
               DMMacs.TLojaUsu.FieldByName('EMITDOCFISC').AsInteger:=1
            Else
               DMMacs.TLojaUsu.FieldByName('EMITDOCFISC').AsInteger:=0;
            If ENT10.Checked = True Then
               DMMacs.TLojaUsu.FieldByName('CANCVEND').AsInteger:=1
            Else
               DMMacs.TLojaUsu.FieldByName('CANCVEND').AsInteger:=0;
            If ENT11.Checked = True Then
               DMMacs.TLojaUsu.FieldByName('RELVENDCOM').AsInteger:=1
            Else
               DMMacs.TLojaUsu.FieldByName('RELVENDCOM').AsInteger:=0;
            If ENT12.Checked = True Then
               DMMacs.TLojaUsu.FieldByName('CADPEDCOMP').AsInteger:=1
            Else
               DMMacs.TLojaUsu.FieldByName('CADPEDCOMP').AsInteger:=0;
            If ENT13.Checked = True Then
               DMMacs.TLojaUsu.FieldByName('ALTPEDCOMP').AsInteger:=1
            Else
               DMMacs.TLojaUsu.FieldByName('ALTPEDCOMP').AsInteger:=0;
            If ENT14.Checked = True Then
               DMMacs.TLojaUsu.FieldByName('EFETUARCOMPRA').AsInteger:=1
            Else
               DMMacs.TLojaUsu.FieldByName('EFETUARCOMPRA').AsInteger:=0;
            If ENT15.Checked = True Then
               DMMacs.TLojaUsu.FieldByName('CANCCOMPRA').AsInteger:=1
            Else
               DMMacs.TLojaUsu.FieldByName('CANCCOMPRA').AsInteger:=0;
            If CBALTVLRPED.Checked = True Then
               DMMacs.TLojaUsu.FieldByName('DESCPED').AsInteger:=1
            Else
               DMMacs.TLojaUsu.FieldByName('DESCPED').AsInteger:=0;

            If CBDESMAIORPROD.Checked = True Then
               DMMacs.TLojaUsu.FieldByName('DESCPMAIOR').AsInteger:=1
            Else
               DMMacs.TLojaUsu.FieldByName('DESCPMAIOR').AsInteger:=0;

            If CBGarantia.Checked = True Then
               DMMacs.TLojaUsu.FieldByName('USAGARANT').AsInteger:=1
            Else
               DMMacs.TLojaUsu.FieldByName('USAGARANT').AsInteger:=0;

            If CBCancelPed.Checked = True Then
               DMMacs.TLojaUsu.FieldByName('CANCPEDFECH').AsInteger:=1
            Else
               DMMacs.TLojaUsu.FieldByName('CANCPEDFECH').AsInteger:=0;

            If CBTelaComis.Checked = True Then
               DMMacs.TLojaUsu.FieldByName('TELACOMIS').AsInteger:=1
            Else
               DMMacs.TLojaUsu.FieldByName('TELACOMIS').AsInteger:=0;

            If CBALTBCCOMIS.Checked = True Then
               DMMacs.TLojaUsu.FieldByName('ALTBCCOMIS').AsInteger:=1
            Else
               DMMacs.TLojaUsu.FieldByName('ALTBCCOMIS').AsInteger:=0;

            If CBALTPERCOMIS.Checked = True Then
               DMMacs.TLojaUsu.FieldByName('ALTCOMIS').AsInteger:=1
            Else
               DMMacs.TLojaUsu.FieldByName('ALTCOMIS').AsInteger:=0;

            If CBALTVLRUNIT.Checked = True Then
               DMMacs.TLojaUsu.FieldByName('ALTVLRUNIPED').AsInteger:=1
            Else
               DMMacs.TLojaUsu.FieldByName('ALTVLRUNIPED').AsInteger:=0;

            If CBMargemSeg.Checked = True Then
               DMMacs.TLojaUsu.FieldByName('MARGEMSEG').AsInteger:=1
            Else
               DMMacs.TLojaUsu.FieldByName('MARGEMSEG').AsInteger:=0;

            If CBFechaAuto.Checked = True Then
               DMMacs.TLojaUsu.FieldByName('FECHAAUTOPED').AsInteger:=1
            Else
               DMMacs.TLojaUsu.FieldByName('FECHAAUTOPED').AsInteger:=0;


            //restrições de relatórios
            If CBRFINEST.Checked = True Then
               DMMacs.TLojaUsu.FieldByName('RFINEST').AsInteger:=1
            Else
               DMMacs.TLojaUsu.FieldByName('RFINEST').AsInteger:=0;
            If CBRPEDVEN.Checked = True Then
               DMMacs.TLojaUsu.FieldByName('RPEDVEN').AsInteger:=1
            Else
               DMMacs.TLojaUsu.FieldByName('RPEDVEN').AsInteger:=0;
            If CBRPEDCOMP.Checked = True Then
               DMMacs.TLojaUsu.FieldByName('RPEDCOMP').AsInteger:=1
            Else
               DMMacs.TLojaUsu.FieldByName('RPEDCOMP').AsInteger:=0;
            If CBRCAIXA.Checked = True Then
               DMMacs.TLojaUsu.FieldByName('RCAIXA').AsInteger:=1
            Else
               DMMacs.TLojaUsu.FieldByName('RCAIXA').AsInteger:=0;
            If CBRBANCO.Checked = True Then
               DMMacs.TLojaUsu.FieldByName('RBANCO').AsInteger:=1
            Else
               DMMacs.TLojaUsu.FieldByName('RBANCO').AsInteger:=0;
            If CBRCTAPAGAR.Checked = True Then
               DMMacs.TLojaUsu.FieldByName('RCTAPAGAR').AsInteger:=1
            Else
               DMMacs.TLojaUsu.FieldByName('RCTAPAGAR').AsInteger:=0;
            If CBRCTARECEBER.Checked = True Then
               DMMacs.TLojaUsu.FieldByName('RCTARECEBER').AsInteger:=1
            Else
               DMMacs.TLojaUsu.FieldByName('RCTARECEBER').AsInteger:=0;
            If CBCONFIGLOJA.Checked = True Then
               DMMacs.TLojaUsu.FieldByName('CONFIGLOJA').AsInteger:=1
            Else
               DMMacs.TLojaUsu.FieldByName('CONFIGLOJA').AsInteger:=0;
            If CBPEDVENDA.Checked = True Then
               DMMacs.TLojaUsu.FieldByName('PEDVENDA').AsInteger:=1
            Else
               DMMacs.TLojaUsu.FieldByName('PEDVENDA').AsInteger:=0;
            If CBRELABERTORD.Checked = True Then
               DMMacs.TLojaUsu.FieldByName('RELABERTORD').AsInteger:=1
            Else
               DMMacs.TLojaUsu.FieldByName('RELABERTORD').AsInteger:=0;
            If CBRELFECHORD.Checked = True Then
               DMMacs.TLojaUsu.FieldByName('RELFECHORD').AsInteger:=1
            Else
               DMMacs.TLojaUsu.FieldByName('RELFECHORD').AsInteger:=0;
            If CBRELINVENTEST.Checked = True Then
               DMMacs.TLojaUsu.FieldByName('RELINVENTEST').AsInteger:=1
            Else
               DMMacs.TLojaUsu.FieldByName('RELINVENTEST').AsInteger:=0;

            //CONTROLE DE ORDENS E SEVICOS
            If CBABRIRORD.Checked = True Then
               DMMacs.TLojaUsu.FieldByName('ABRIRORD').AsInteger:=1
            Else
               DMMacs.TLojaUsu.FieldByName('ABRIRORD').AsInteger:=0;
            If CBFECHORD.Checked = True Then
               DMMacs.TLojaUsu.FieldByName('FECHORD').AsInteger:=1
            Else
               DMMacs.TLojaUsu.FieldByName('FECHORD').AsInteger:=0;
            If CBEXCORD.Checked = True Then
               DMMacs.TLojaUsu.FieldByName('EXCORD').AsInteger:=1
            Else
               DMMacs.TLojaUsu.FieldByName('EXCORD').AsInteger:=0;
            If CBCADSERV.Checked = True Then
               DMMacs.TLojaUsu.FieldByName('CADSERV').AsInteger:=1
            Else
               DMMacs.TLojaUsu.FieldByName('CADSERV').AsInteger:=0;
            If CbEditaVendedorOs.Checked = True Then
               DMMacs.TLojaUsu.FieldByName('EDITAVENDEDOROS').AsInteger:=1
            Else
               DMMacs.TLojaUsu.FieldByName('EDITAVENDEDOROS').AsInteger:=0;

            //CONTROLE DE PRODUÇÃO
            If CBAcessProducao.Checked = True Then
               DMMacs.TLojaUsu.FieldByName('ACEFCHTECPROD').AsInteger:=1
            Else
               DMMacs.TLojaUsu.FieldByName('ACEFCHTECPROD').AsInteger:=0;
            If CBACEPRODUC.Checked = True Then
               DMMacs.TLojaUsu.FieldByName('ACEPRODUCAO').AsInteger:=1
            Else
               DMMacs.TLojaUsu.FieldByName('ACEPRODUCAO').AsInteger:=0;

            If CbGerarBonif.Checked = True Then
               DMMacs.TLojaUsu.FieldByName('GERABONIF').AsInteger:=1
            Else
               DMMacs.TLojaUsu.FieldByName('GERABONIF').AsInteger:=0;

            If CbGerarCanc.Checked = True Then
               DMMacs.TLojaUsu.FieldByName('GERACANC').AsInteger:=1
            Else
               DMMacs.TLojaUsu.FieldByName('GERACANC').AsInteger:=0;


            //Salva informações
            DMMacs.TLojaUsu.Post;
            DMMacs.TLojaUsu.ApplyUpdates;
        End;
        //confirma transação
        DMMacs.Transaction.CommitRetaining;
    Except
        //retorna informações
        DMMacs.Transaction.RollbackRetaining;
    End;
    Close;
end;

procedure TFPlanoAcesso.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
    DMMacs.SelectLojaUsu(DMMacs.TUsuario.FieldByName('CODUSUARIO').AsInteger);
end;

procedure TFPlanoAcesso.DBLOJASKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
	Key:=#0;
end;

procedure TFPlanoAcesso.FormShow(Sender: TObject);
begin
  inherited;
    TCPLANO.ActiveTab:=0;
    LCODUSUARIO.Caption:=DMMacs.TUsuario.fieldbyname('CODUSUARIO').AsString;
    LUSUARIO.Caption:=DMMacs.TUsuario.fieldbyname('LOGIN').AsString;

    //SELECIONA LOJAS QUE AINDA NÃO POSSUEM CONFIGURAÇÃO COM O USUÁRIO
    DMMacs.TALX.Close;
    DMMacs.TALX.SQL.Clear;
    //DMMacs.TALX.SQL.Add('SELECT Loja.Cod_loja, Loja.Descricao FROM loja Where not exists(Select * from lojacesso Where (loja.cod_loja = lojacesso.cod_loja) and (lojacesso.cod_usuario='+#39+Fmenu.LCODUSUARIO.Caption+#39+'))');
    //Edmar - 24/02/2015 - Busca todas as lojas independente de qual loja o usuario que está logado tem acesso
	 DMMacs.TALX.SQL.Add(' SELECT LOJA.COD_LOJA, LOJA.DESCRICAO FROM LOJA ');
    DMMacs.TALX.Open;

    //coloca todas as loja selecionadas em talx dentro da combo
    DBLOJAS.Items.Clear;
    DMMacs.TALX.first;
	 While not DMMacs.TALX.Eof do
    Begin
	 	DBLOJAS.Items.Add(DMMacs.TALX.FieldByName('COD_LOJA').AsString+' - '+DMMacs.TALX.FieldByName('Descricao').AsString);
		DMMacs.TALX.Next;
    End;
end;

procedure TFPlanoAcesso.DBCBRELClick(Sender: TObject);
begin
  inherited;
   If DBCBREL.Checked=True
   Then Begin//coloca todos de relatórios como true
       CBRFINEST.Checked:=True;
       CBRPEDVEN.Checked:=True;
       CBRPEDCOMP.Checked:=True;
       CBRCAIXA.Checked:=True;
       CBRBANCO.Checked:=True;
       CBRCTAPAGAR.Checked:=True;
       CBRCTARECEBER.Checked:=True;
       ENT11.Checked:=True;
       CBRELABERTORD.Checked:=True;
       CBRELFECHORD.Checked:=True;
       CBRELINVENTEST.Checked:=True;
   End
   Else Begin
       CBRFINEST.Checked:=False;
       CBRPEDVEN.Checked:=False;
       CBRPEDCOMP.Checked:=False;
       CBRCAIXA.Checked:=False;
       CBRBANCO.Checked:=False;
       CBRCTAPAGAR.Checked:=False;
       CBRCTARECEBER.Checked:=False;
       ENT11.Checked:=False;
       CBRELABERTORD.Checked:=False;
       CBRELFECHORD.Checked:=False;
       CBRELINVENTEST.Checked:=False;
   End;
end;

procedure TFPlanoAcesso.CBDBSERVICOSClick(Sender: TObject);
begin
  inherited;
   If CBDBSERVICOS.Checked=True
   Then Begin//coloca todos de Servico como true
       CBCADSERV.Checked:=True;
       CBABRIRORD.Checked:=True;
       CBFECHORD.Checked:=True;
       CBEXCORD.Checked:=True;
       CBGERARBONIF.Checked := True;
       CBGERARCANC.Checked := True;
   End
   else Begin
       CBCADSERV.Checked:=False;
       CBABRIRORD.Checked:=False;
       CBFECHORD.Checked:=False;
       CBEXCORD.Checked:=False;
       CBGERARBONIF.Checked := False;
       CBGERARCANC.Checked := False;
	End;
end;

procedure TFPlanoAcesso.CBPRODUCAOClick(Sender: TObject);
begin
  inherited;
	If CBPRODUCAO.Checked=True
   Then Begin
       CBAcessProducao.Checked:=True;
   End
   Else Begin
       CBAcessProducao.Checked:=False;
   End;
end;

procedure TFPlanoAcesso.FormActivate(Sender: TObject);
begin
  inherited;
	 Caption:='Plano de Acesso';
end;

end.
