unit UCadUsuario;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UCadPadraoDesc, TFlatHintUnit, Mask, DBCtrls, DBColorEdit,
  Grids, DBGrids, StdCtrls, Buttons, TFlatEditUnit, jpeg, ExtCtrls,
  ColorMaskEdit, FashionPanel, DrLabel, printers, Menus, FR_DSet, FR_DBSet,
  FR_Class, UFrmBusca;

type
  TFCadUsuario = class(TFCadPadraoDesc)
    Label2: TLabel;
    DBCODFUNC: TDBColorEdit;
    DBDATA: TDBColorEdit;
    Label3: TLabel;
    DBLOGIN: TDBColorEdit;
    Label4: TLabel;
    Label5: TLabel;
    BTNOPEN: TBitBtn;
    BTNMINUS: TBitBtn;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    BTNADICIONAR: TBitBtn;
    Panel3: TPanel;
    BitBtn2: TBitBtn;
    Panel5: TPanel;
    BitBtn3: TBitBtn;
    EDSenha: TColorMaskEdit;
    Label8: TLabel;
    EDConfirme: TColorMaskEdit;
    PADM: TPanel;
    DBCBADM: TCheckBox;
    DBText1: TDBText;
    GroupBox3: TGroupBox;
    DBGrid2: TDBGrid;
    Panel6: TPanel;
    BitBtn1: TBitBtn;
    Panel7: TPanel;
    BitBtn4: TBitBtn;
    Panel8: TPanel;
    BitBtn5: TBitBtn;
    PCaixa: TPanel;
    FPTitulo: TFashionPanel;
    Label9: TLabel;
    GroupBox4: TGroupBox;
    DBCBCaixa: TDBLookupComboBox;
    DBCBDia1: TDBComboBox;
    DBCBDia2: TDBComboBox;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    DBEDHora1: TDBColorEdit;
    DBEDHora2: TDBColorEdit;
    DBCBREVMOV: TCheckBox;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    PConfigEt: TPanel;
    Label1: TLabel;
    Label14: TLabel;
    ELargura: TEdit;
    EComp: TEdit;
    BtnFechar: TBitBtn;
    MenuRelatUsuario: TPopupMenu;
    HistoricoUsuario: TMenuItem;
    fsHistUsuario: TfrReport;
    PainelModoRel: TPanel;
    FSDSHistUsuario: TfrDBDataSet;
    GroupBox5: TGroupBox;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    EDtInicial: TColorMaskEdit;
    EDtFinal: TColorMaskEdit;
    Panel9: TPanel;
    Button1: TButton;
    Button2: TButton;
    FrmBusca1: TFrmBusca;
    ApagarHistrico1: TMenuItem;
    cbExpedicao: TCheckBox;
    dbModulos: TComboBox;
    EdTextoFiltro: TEdit;
    procedure FormActivate(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure BTNOPENClick(Sender: TObject);
    procedure BTNMINUSClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure BtnConsultarClick(Sender: TObject);
    procedure BTNADICIONARClick(Sender: TObject);
    procedure BtnApagarClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure PCaixaExit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure EDSenhaExit(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BtnFecharClick(Sender: TObject);
    procedure ELarguraExit(Sender: TObject);
    procedure ECompExit(Sender: TObject);
    procedure BtnRelatorioClick(Sender: TObject);
    procedure HistoricoUsuarioClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FrmBusca1BTNOPENClick(Sender: TObject);
    procedure FrmBusca1BTNMINUSClick(Sender: TObject);
    procedure ApagarHistrico1Click(Sender: TObject);
  private
    { Private declarations }
    Procedure LeadCombos;
    //Procedeure que verifica e ativa o painel com check para dizer se o usuário será administrador ou não
    Procedure Visupaneladm;//Procedeure que verifica e ativa o painel com check para dizer se o usuário será administrador ou não
    //Procedure utilizada para selecionar os caixas do usuario
    Procedure SelectCaixaUsu;
    //procedure pra impressao de codigo de barras de acesso a deletar produtos no pdv
    procedure ImpCodAcesso; 
  public
    { Public declarations }
	 XCOD_USUARIO, XCOD_PLANO: INTEGER;     
  end;


var
  FCadUsuario: TFCadUsuario;
  XSenha: String;
  XCont: Integer;
  XLargura: String;
  XComp: String;

implementation

uses Alxor32, AlxMessage, UMessage, UDMPessoa, UDMMacs, UMenu, UFuncionario,
  UPlanoAcesso, UDMFinanc, UDMEstoque, UDMCaixa, Cripto, Math, UCadPadrao;

{$R *.DFM}

//Procedure utilizada para selecionar os caixas do usuario
Procedure TFCadUsuario.SelectCaixaUsu;
Begin
   DMCAIXA.TAlx.Close;
   DMCAIXA.TAlx.SQL.clear;
   DMCAIXA.TAlx.sql.Add('Select caixausu.cod_caixausu, caixausu.dtcad, caixausu.hora1, caixausu.hora2, caixausu.primdia, Loja.Descricao, ');
	DMCAIXA.TAlx.sql.Add('caixausu.ultdia, caixa.cod_caixa, caixa.descricao from caixa join caixaUSU on caixausu.cod_caixa = caixa.cod_caixa Join LOJA on Caixa.Cod_loja = Loja.Cod_Loja ');
	DMCAIXA.TAlx.sql.Add('where caixausu.cod_usuario=:CODUSUARIO ');
   DMCAIXA.TAlx.ParamByName('CODUSUARIO').AsString:=DMMACS.TUsuario.FieldByName('CODUSUARIO').AsString;
	DMCAIXA.TAlx.Open;
End;
//Procedeure que verifica e ativa o painel com check para dizer se o usuário será administrador ou não
Procedure TFCADUSUARIO.Visupaneladm;//Procedeure que verifica e ativa o painel com check para dizer se o usuário será administrador ou não
Begin
     DMMacs.TALX.Close;
     DMMacs.TALX.sql.Clear;
     DMMacs.TALX.sql.Add('SELECT * FROM USUARIO WHERE CODUSUARIO=:CODIGOUSER');
     DMMacs.TALX.ParamByName('CODIGOUSER').AsString:=FMenu.LCODUSUARIO.Caption;
     DMMacs.TALX.OPEN;

     If (DMMacs.TALX.FieldByName('ADM').AsString='1') Or (FMenu.LCODUSUARIO.Caption='111522')
     Then Begin
          PADM.Visible:=True;
          PADM.BringToFront;
          DBCBADM.Visible:=True;
     End
     Else Begin
          PADM.Visible:=False;
     End;
End;


//Utilizada para marcar as combos em planoacesso de acordo com o BD
Procedure TFCadUsuario.LeadCombos;
Begin
     //SELECIONA LOJACESSO EM QUESTÃO
     DMMacs.TLojaAc.Close;
     DMMacs.TLojaAc.SQL.Clear;
     DMMacs.TLojaAc.SQL.Add('SELECT * FROM LOJACESSO WHERE COD_LOJAACES=:codigo');
     DMMacs.TLojaAc.ParamByName('codigo').AsString:=DMMacs.TALX.FieldByName('COD_LOJAACES').AsString;
     DMMacs.TLojaAc.Open;

                If DMMacs.TLojaUsu.FieldByName('ABREGAVETA').AsString='1' Then
					FPlanoAcesso.CBAbreGaveta.Checked := True
                Else
					FPlanoAcesso.CBAbreGaveta.Checked := False;
                //restrições para cadastros
                If DMMacs.TLojaAc.FieldByName('CADCLI').AsString='1' Then
                   FPlanoAcesso.CAD1.Checked := True
                Else
                   FPlanoAcesso.CAD1.Checked := False;

                If DMMacs.TLojaAc.FieldByName('EXCLCLI').AsString='1' Then
                   FPlanoAcesso.CAD2.Checked := True
                Else
                   FPlanoAcesso.CAD2.Checked := False;

                If DMMacs.TLojaAc.FieldByName('CAD_USUARIO').AsString='1' Then
                   FPlanoAcesso.CAD3.Checked := True
                Else
                   FPlanoAcesso.CAD3.Checked := False;

                If DMMacs.TLojaAc.FieldByName('CADVEN').AsString='1' Then
                   FPlanoAcesso.CAD4.Checked := True
                Else
                   FPlanoAcesso.CAD4.Checked := False;

                If DMMacs.TLojaAc.FieldByName('EXCVENDEDOR').AsString='1' Then
                   FPlanoAcesso.CAD5.Checked := True
                Else
                   FPlanoAcesso.CAD5.Checked := False;

                If DMMacs.TLojaAc.FieldByName('CADCTACORRENTE').AsString='1' Then
                   FPlanoAcesso.CAD6.Checked := True
                Else
                   FPlanoAcesso.CAD6.Checked := False;

                If DMMacs.TLojaAc.FieldByName('CADFORNEC').AsString='1' Then
                   FPlanoAcesso.CAD7.Checked := True
                Else
                   FPlanoAcesso.CAD7.Checked := False;

                If DMMacs.TLojaAc.FieldByName('EXCLFORNEC').AsString='1' Then
                   FPlanoAcesso.CAD8.Checked := True
                Else
                   FPlanoAcesso.CAD8.Checked := False;

                If DMMacs.TLojaAc.FieldByName('CADPLANOCTA').AsString='1' Then
                   FPlanoAcesso.CAD9.Checked := True
                Else
                   FPlanoAcesso.CAD9.Checked := False;

                If DMMacs.TLojaAc.FieldByName('CADFUNC').AsString='1' Then
                   FPlanoAcesso.CAD10.Checked := True
                Else
                   FPlanoAcesso.CAD10.Checked := False;

                If DMMacs.TLojaAc.FieldByName('CADFORMPAG').AsString='1' Then
                   FPlanoAcesso.CAD11.Checked := True
                Else
                   FPlanoAcesso.CAD11.Checked := False;

                If DMMacs.TLojaAc.FieldByName('CADEMPRESA').AsString='1' Then
                   FPlanoAcesso.CAD12.Checked := True
                Else
                   FPlanoAcesso.CAD12.Checked := False;

                If DMMacs.TLojaAc.FieldByName('CADLOJA').AsString='1' Then
                   FPlanoAcesso.CAD13.Checked := True
                Else
                   FPlanoAcesso.CAD13.Checked := False;

                If DMMacs.TLojaAc.FieldByName('PRODUTOS').AsString='1' Then
                   FPlanoAcesso.CAD14.Checked := True
                Else
                   FPlanoAcesso.CAD14.Checked := False;

                If DMMacs.TLojaAc.FieldByName('CADCX').AsString='1' Then
                   FPlanoAcesso.CAD15.Checked := True
                Else
                   FPlanoAcesso.CAD15.Checked := False;

                If DMMacs.TLojaAc.FieldByName('CADMOEDA').AsString='1' Then
                   FPlanoAcesso.CAD16.Checked := True
                Else
                   FPlanoAcesso.CAD16.Checked := False;

                If DMMacs.TLojaAc.FieldByName('TROCVEND').AsString='1' Then
                   FPlanoAcesso.CBTROCPED.Checked := True
                Else
                   FPlanoAcesso.CBTROCPED.Checked := False;

                If DMMacs.TLojaAc.FieldByName('CADBENSCLI').AsString='1' Then
                   FPlanoAcesso.CBCADBENSCLI.Checked := True
                Else
                   FPlanoAcesso.CBCADBENSCLI.Checked := False;

                If DMMacs.TLojaAc.FieldByName('ECF').AsString='1' Then
                   FPlanoAcesso.CBECF.Checked := True
                Else
                   FPlanoAcesso.CBECF.Checked := False;

                //restrições para financeiro
                If DMMacs.TLojaAc.FieldByName('GERAFINANC').AsString='1' Then
                   FPlanoAcesso.CBGeraFinanc.Checked := True
                Else
                   FPlanoAcesso.CBGeraFinanc.Checked := False;


                If DMMacs.TLojaAc.FieldByName('LIBERACRED').AsString='1' Then
                   FPlanoAcesso.FIN1.Checked := True
                Else
                   FPlanoAcesso.FIN1.Checked := False;

                If DMMacs.TLojaAc.FieldByName('CAD_CR').AsString='1' Then
                   FPlanoAcesso.FIN2.Checked := True
                Else
                   FPlanoAcesso.FIN2.Checked := False;

                If DMMacs.TLojaAc.FieldByName('ALTEXC_CR').AsString='1' Then
                   FPlanoAcesso.FIN3.Checked := True
                Else
                   FPlanoAcesso.FIN3.Checked := False;

                If DMMacs.TLojaAc.FieldByName('BAIXAR_CR').AsString='1' Then
                   FPlanoAcesso.FIN4.Checked := True
                Else
                   FPlanoAcesso.FIN4.Checked := False;


                If DMMacs.TLojaAc.FieldByName('CANCELBAIXA_CR').AsString='1' Then
                   FPlanoAcesso.FIN5.Checked := True
                Else
                   FPlanoAcesso.FIN5.Checked := False;


                If DMMacs.TLojaAc.FieldByName('CAD_CP').AsString='1' Then
                   FPlanoAcesso.FIN6.Checked := True
                Else
                   FPlanoAcesso.FIN6.Checked := False;


                If DMMacs.TLojaAc.FieldByName('ALTEXC_CP').AsString='1' Then
                   FPlanoAcesso.FIN7.Checked := True
                Else
                   FPlanoAcesso.FIN7.Checked := False;


                If DMMacs.TLojaAc.FieldByName('BAIXA_CP').AsString='1' Then
                   FPlanoAcesso.FIN8.Checked := True
                Else
                   FPlanoAcesso.FIN8.Checked := False;


                If DMMacs.TLojaAc.FieldByName('CANCELBAIXA_CP').AsString='1' Then
                   FPlanoAcesso.FIN9.Checked := True
                Else
                   FPlanoAcesso.FIN9.Checked := False;


                If DMMacs.TLojaAc.FieldByName('ABRIRCX').AsString='1' Then
                   FPlanoAcesso.FIN13.Checked := True
                Else
                   FPlanoAcesso.FIN13.Checked := False;


                If DMMacs.TLojaAc.FieldByName('LANCX').AsString='1' Then
                   FPlanoAcesso.FIN14.Checked := True
                Else
                   FPlanoAcesso.FIN14.Checked := False;


                If DMMacs.TLojaAc.FieldByName('FECHCX').AsString='1' Then
                   FPlanoAcesso.FIN15.Checked := True
                Else
                   FPlanoAcesso.FIN15.Checked := False;


                If DMMacs.TLojaAc.FieldByName('CADCOTA').AsString='1' Then
                   FPlanoAcesso.FIN16.Checked := True
                Else
                   FPlanoAcesso.FIN16.Checked := False;


                If DMMacs.TLojaAc.FieldByName('MOVBANCO').AsString='1' Then
                   FPlanoAcesso.FIN17.Checked := True
                Else
                   FPlanoAcesso.FIN17.Checked := False;


                If DMMacs.TLojaAc.FieldByName('ALTSALFUNC').AsString='1' Then
                   FPlanoAcesso.FIN18.Checked := True
                Else
                   FPlanoAcesso.FIN18.Checked := False;

                If DMMacs.TLojaAc.FieldByName('ALTLANCX').AsString='1' Then
                   FPlanoAcesso.CBALTLANCAIXA.Checked := True
                Else
                   FPlanoAcesso.CBALTLANCAIXA.Checked := False;

                If DMMacs.TLojaAc.FieldByName('REIMPDUP').AsString='1' Then
                   FPlanoAcesso.CBREIMPDUP.Checked := True
                Else
                   FPlanoAcesso.CBREIMPDUP.Checked := False;

                If DMMacs.TLojaAc.FieldByName('BAIXACTABANCO').AsString='1' Then
                   FPlanoAcesso.CBBaixaCtaBanco.Checked := True
                Else
                   FPlanoAcesso.CBBaixaCtaBanco.Checked := False;

                //restrições para Entradas
                If DMMacs.TLojaAc.FieldByName('DESCPED').AsString='1' Then
                   FPlanoAcesso.CBALTVLRPED.Checked := True
                Else
                   FPlanoAcesso.CBALTVLRPED.Checked := False;

                If DMMacs.TLojaAc.FieldByName('DESCPMAIOR').AsString='1' Then
                   FPlanoAcesso.CBDESMAIORPROD.Checked := True
                Else
                   FPlanoAcesso.CBDESMAIORPROD.Checked := False;

                If DMMacs.TLojaAc.FieldByName('DESCPROD').AsString='1' Then
                   FPlanoAcesso.ENT1.Checked := True
                Else
                   FPlanoAcesso.ENT1.Checked := False;

                If DMMacs.TLojaAc.FieldByName('ACERTESTOQUE').AsString='1' Then
                   FPlanoAcesso.ENT2.Checked := True
                Else
                   FPlanoAcesso.ENT2.Checked := False;

                If DMMacs.TLojaAc.FieldByName('ORCAMENTO').AsString='1' Then
                   FPlanoAcesso.ENT3.Checked := True
                Else
                   FPlanoAcesso.ENT3.Checked := False;


                If DMMacs.TLojaAc.FieldByName('VENDATACADO').AsString='1' Then
                   FPlanoAcesso.ENT4.Checked := True
                Else
                   FPlanoAcesso.ENT4.Checked := False;


                If DMMacs.TLojaAc.FieldByName('VENDAVAREJO').AsString='1' Then
                   FPlanoAcesso.ENT5.Checked := True
                Else
                   FPlanoAcesso.ENT5.Checked := False;


                If DMMacs.TLojaAc.FieldByName('PDV').AsString='1' Then
                   FPlanoAcesso.ENT6.Checked := True
                Else
                   FPlanoAcesso.ENT6.Checked := False;


                If DMMacs.TLojaAc.FieldByName('PEDVEN').AsString='1' Then
                   FPlanoAcesso.ENT7.Checked := True
                Else
                   FPlanoAcesso.ENT7.Checked := False;

                If DMMacs.TLojaAc.FieldByName('ALTPED').AsString='1' Then
                   FPlanoAcesso.ENT8.Checked := True
                Else
                   FPlanoAcesso.ENT8.Checked := False;


                If DMMacs.TLojaAc.FieldByName('EMITDOCFISC').AsString='1' Then
                   FPlanoAcesso.ENT9.Checked := True
                Else
                   FPlanoAcesso.ENT9.Checked := False;


                If DMMacs.TLojaAc.FieldByName('CANCVEND').AsString='1' Then
                   FPlanoAcesso.ENT10.Checked := True
                Else
                   FPlanoAcesso.ENT10.Checked := False;


                If DMMacs.TLojaAc.FieldByName('RELVENDCOM').AsString='1' Then
                   FPlanoAcesso.ENT11.Checked := True
                Else
                   FPlanoAcesso.ENT11.Checked := False;


                If DMMacs.TLojaAc.FieldByName('CADPEDCOMP').AsString='1' Then
                   FPlanoAcesso.ENT12.Checked := True
                Else
                   FPlanoAcesso.ENT12.Checked := False;


                If DMMacs.TLojaAc.FieldByName('ALTPEDCOMP').AsString='1' Then
                   FPlanoAcesso.ENT13.Checked := True
                Else
                   FPlanoAcesso.ENT13.Checked := False;


                If DMMacs.TLojaAc.FieldByName('EFETUARCOMPRA').AsString='1' Then
                   FPlanoAcesso.ENT14.Checked := True
                Else
                   FPlanoAcesso.ENT14.Checked := False;

                If DMMacs.TLojaAc.FieldByName('CANCCOMPRA').AsString='1' Then
                    FPlanoAcesso.ENT15.Checked := True
                Else
                    FPlanoAcesso.ENT15.Checked := False;

                If DMMacs.TLojaAc.FieldByName('USAGARANT').AsString='1' Then
                    FPlanoAcesso.CBGarantia.Checked := True
                Else
                    FPlanoAcesso.CBGarantia.Checked := False;

                If DMMacs.TLojaAc.FieldByName('CANCPEDFECH').AsString='1' Then
                    FPlanoAcesso.CBCancelPed.Checked := True
                Else
                    FPlanoAcesso.CBCancelPed.Checked := False;

                If DMMacs.TLojaAc.FieldByName('TELACOMIS').AsString='1' Then
                    FPlanoAcesso.CBTelaComis.Checked := True
                Else
                    FPlanoAcesso.CBTelaComis.Checked := False;

                If DMMacs.TLojaAc.FieldByName('ALTBCCOMIS').AsString='1' Then
                    FPlanoAcesso.CBALTBCCOMIS.Checked := True
                Else
                    FPlanoAcesso.CBALTBCCOMIS.Checked := False;

                If DMMacs.TLojaAc.FieldByName('ALTCOMIS').AsString='1' Then
                    FPlanoAcesso.CBALTPERCOMIS.Checked := True
                Else
                    FPlanoAcesso.CBALTPERCOMIS.Checked := False;

                If DMMacs.TLojaAc.FieldByName('ALTVLRUNIPED').AsString='1' Then
                    FPlanoAcesso.CBALTVLRUNIT.Checked := True
                Else
                    FPlanoAcesso.CBALTVLRUNIT.Checked := False;

                If DMMacs.TLojaAc.FieldByName('MARGEMSEG').AsString='1' Then
                    FPlanoAcesso.CBMargemSeg.Checked := True
                Else
                    FPlanoAcesso.CBMargemSeg.Checked := False;

                If DMMacs.TLojaAc.FieldByName('FECHAAUTOPED').AsString='1' Then
                    FPlanoAcesso.CBFechaAuto.Checked := True
                Else
                    FPlanoAcesso.CBFechaAuto.Checked := False;

                //Restrições para relatórios
                If DMMacs.TLojaAc.FieldByName('RFINEST').AsString='1' Then
                    FPlanoAcesso.CBRFINEST.Checked := True
                Else
                    FPlanoAcesso.CBRFINEST.Checked := False;

                If DMMacs.TLojaAc.FieldByName('RPEDVEN').AsString='1' Then
                    FPlanoAcesso.CBRPEDVEN.Checked := True
                Else
                    FPlanoAcesso.CBRPEDVEN.Checked := False;

                If DMMacs.TLojaAc.FieldByName('RPEDCOMP').AsString='1' Then
                    FPlanoAcesso.CBRPEDCOMP.Checked := True
                Else
                    FPlanoAcesso.CBRPEDCOMP.Checked := False;

                If DMMacs.TLojaAc.FieldByName('RCAIXA').AsString='1' Then
                    FPlanoAcesso.CBRCAIXA.Checked := True
                Else
                    FPlanoAcesso.CBRCAIXA.Checked := False;

                If DMMacs.TLojaAc.FieldByName('RBANCO').AsString='1' Then
                    FPlanoAcesso.CBRBANCO.Checked := True
                Else
                    FPlanoAcesso.CBRBANCO.Checked := False;

                If DMMacs.TLojaAc.FieldByName('RCTAPAGAR').AsString='1' Then
                    FPlanoAcesso.CBRCTAPAGAR.Checked := True
                Else
                    FPlanoAcesso.CBRCTAPAGAR.Checked := False;

                If DMMacs.TLojaAc.FieldByName('RCTARECEBER').AsString='1' Then
                    FPlanoAcesso.CBRCTARECEBER.Checked := True
                Else
                    FPlanoAcesso.CBRCTARECEBER.Checked := False;

                If DMMacs.TLojaAc.FieldByName('CONFIGLOJA').AsString='1' Then
                    FPlanoAcesso.CBCONFIGLOJA.Checked := True
                Else
                    FPlanoAcesso.CBCONFIGLOJA.Checked := False;

                If DMMacs.TLojaAc.FieldByName('PEDVENDA').AsString='1' Then
                    FPlanoAcesso.CBPEDVENDA.Checked := True
                Else
                    FPlanoAcesso.CBPEDVENDA.Checked := False;

                If DMMacs.TLojaAc.FieldByName('RELABERTORD').AsString='1' Then
                    FPlanoAcesso.CBRELABERTORD.Checked := True
                Else
                    FPlanoAcesso.CBRELABERTORD.Checked := False;

                If DMMacs.TLojaAc.FieldByName('RELFECHORD').AsString='1' Then
                    FPlanoAcesso.CBRELFECHORD.Checked := True
                Else
                    FPlanoAcesso.CBRELFECHORD.Checked := False;

                If DMMacs.TLojaAc.FieldByName('RELINVENTEST').AsString='1' Then
                    FPlanoAcesso.CBRELINVENTEST.Checked := True
                Else
                    FPlanoAcesso.CBRELINVENTEST.Checked := False;

                //Restrições para Ordem de servico e servico
                If DMMacs.TLojaAc.FieldByName('CADSERV').AsString='1' Then
                   FPlanoAcesso.CBCADSERV.Checked := True
                Else
                   FPlanoAcesso.CBCADSERV.Checked := False;
                If DMMacs.TLojaAc.FieldByName('ABRIRORD').AsString='1' Then
                   FPlanoAcesso.CBABRIRORD.Checked := True
                Else
                   FPlanoAcesso.CBABRIRORD.Checked := False;
                If DMMacs.TLojaAc.FieldByName('FECHORD').AsString='1' Then
                   FPlanoAcesso.CBFECHORD.Checked := True
                Else
                   FPlanoAcesso.CBFECHORD.Checked := False;
                If DMMacs.TLojaAc.FieldByName('EXCORD').AsString='1' Then
                   FPlanoAcesso.CBEXCORD.Checked := True
                Else
                   FPlanoAcesso.CBEXCORD.Checked := False;
                If DMMacs.TLojaAc.FieldByName('EDITAVENDEDOROS').AsString='1' Then
                   FPlanoAcesso.CbEditaVendedorOs.Checked := True
                Else
                   FPlanoAcesso.CbEditaVendedorOs.Checked := False;
                //Restrições para Produção
                If DMMacs.TLojaAc.FieldByName('ACEFCHTECPROD').AsString='1' Then
                   FPlanoAcesso.CBAcessProducao.Checked := True
                Else
                   FPlanoAcesso.CBAcessProducao.Checked := False;
                If DMMacs.TLojaAc.FieldByName('ACEPRODUCAO').AsString='1' Then
                   FPlanoAcesso.CBAceProduc.Checked := True
                Else
                   FPlanoAcesso.CBAceProduc.Checked := False;

End;
procedure TFCadUsuario.FormActivate(Sender: TObject);
begin
  inherited;
	Caption:='Cadastro de Usuários' ;  
    XTabela:=DMMacs.TUsuario;
    XCampo:='LOGIN';
    XPkTabela:='CODUSUARIO';
    XTransaction:=DMMacs.Transaction;
    XTab:=True;
    XDescricao:='O Usuário';
    XSQLTABELA:='USUARIO';
    XLiberaDados:='';
    XLargura:= '6';
    XComp:= '34';
    LiberaDados;
    DBGridCadastroPadrao.DataSource := DMMACS.DSUsuario;
end;

procedure TFCadUsuario.BtnNovoClick(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('CAD_USUARIO', 'M')=False Then
  		Exit;

  inherited;
    DBDATA.Text:=DateToStr(Date());
    BTNOPEN.SetFocus;
    EDSenha.Height:=24;
    EDConfirme.Height:=24;    
    EDSenha.Text:='';
    EDConfirme.Text:='';
    //verifica se o usuario pode cadastrar um administrados
    DBCBADM.Checked:=False;
    Visupaneladm;
    DBCBADM.Checked:=False;
    //SELECIONA LOJAS DE ACESSO DO USUÁRIO
    DMMacs.SelectLojaUsu(DMMacs.TUsuario.fieldbyname('CODUSUARIO').AsInteger);
    //Selecionado caixas do usuario
    SelectCaixaUsu;
    FMenu.XCOD_USUARIO:=DMMACS.TUsuario.FieldByName('CODUSUARIO').AsInteger;    
end;

procedure TFCadUsuario.BTNOPENClick(Sender: TObject);
begin
  inherited;
    If AbrirForm(TFFuncionario, FFuncionario, 1)='Selected'
    Then Begin
        DMMacs.TUSUARIO.Edit;

        DMMacs.TUSUARIO.FieldByName('COD_FUNCIONARIO').AsString:=DMPESSOA.VWFuncionario.FieldByName('COD_FUNC').AsString;
        DBCODFUNC.DataField:='COD_INTERNO';
        DBCODFUNC.DataSource:=DMPESSOA.DSVWFuncionario;
        DBDESC.DataField:='NOME';
        DBDESC.DataSource:=DMPESSOA.DSVWFuncionario;
    End;
end;

procedure TFCadUsuario.BTNMINUSClick(Sender: TObject);
begin
  inherited;
        DMMacs.TUSUARIO.Edit;

        DMMacs.TUSUARIO.FieldByName('COD_FUNCIONARIO').AsString:='';
        DBCODFUNC.DataField:='';
        DBDESC.DataField:='';
end;

procedure TFCadUsuario.BtnGravarClick(Sender: TObject);
Var
   Senha: String;
begin
    //validações necessárias
    If EDSenha.Text<>EDConfirme.Text
    Then Begin
        Mensagem('OPÇÃO BLOQUEADA', 'A senha informada não corresponde a confirmação', '', 1, 1, false, 'i');
        EDSenha.SetFocus;
        Exit;
    End;
    If DBCODFUNC.Text=''
    Then Begin
        Mensagem('OPÇÃO BLOQUEADA', 'Por favor informe o funcionário atrelado ao usuário', '', 1, 1, false, 'i');
        BTNOPEN.SetFocus;
        Exit;
    End;
    If DBLOGIN.Text=''
    Then Begin
        Mensagem('OPÇÃO BLOQUEADA', 'Por favor informe o login do usuário', '', 1, 1, false, 'i');
        DBLOGIN.SetFocus;
        Exit;
    End;
    If EDSenha.Text=''
    Then Begin
        Mensagem('OPÇÃO BLOQUEADA', 'Por favor informe uma senha de segurança para o usuário', '', 1, 1, false, 'i');
        EDSenha.SetFocus;
        Exit;
    End;
    If DBCBADM.Checked=False
    Then Begin//se não for ou não for mais um amd
         If VerifExitVal('USUARIO', 'CODUSUARIO', DMMacs.TUsuario.FieldByName('CODUSUARIO').AsString, 'ADM', '1')=False
         Then Begin//Se for o único adm
              Mensagem('OPÇÃO BLOQUEADA', 'Não foram encontrados outros administradores do Sistema. Este usuário precisa ser o administrados!', '', 1, 1, false, 'i');
              PADM.Visible:=True;
              PADM.BringToFront;
              DBCBADM.Checked:=True;
              Exit;
         End;
    End;
    //GRAVA ADM
    If DBCBADM.Checked=True Then
       DMMacs.TUsuario.FieldByName('ADM').AsInteger:=1
    Else
       DMMacs.TUsuario.FieldByName('ADM').AsInteger:=0;
    //GRAVA SE DEVE REVELAR RESUMO DE MOVIMENTAÇÃO AO ENTRAR
    If DBCBREVMOV.Checked=True Then
       DMMacs.TUsuario.FieldByName('REVRESMOV').AsInteger:=1
    Else
       DMMacs.TUsuario.FieldByName('REVRESMOV').AsInteger:=0;

    //Edmar - 16/02/2015 - Grava se para o usuario mostrará apenas a tela de expedição
    if cbExpedicao.Checked then
    	DMMACS.TUsuario.FieldByName('EXIBE_EXPEDICAO').AsInteger := 1
    else
    	DMMACS.TUsuario.FieldByName('EXIBE_EXPEDICAO').AsInteger := 0;
       
    //GravaSenha
    //criptografa senha de acordo com o componente cripto
    Senha:=FMenu.Cripto.TextToCriptoHex(EDSenha.Text);

    //Verifica se a tabela usuaario esta em edição
    DMMacs.TUSUARIO.Edit;

    //Atribui senha a tabela
    DMMacs.TUSUARIO.FieldByName('SENHA').AsString:=Senha;

//    DMMacs.TUsuario.Post;
//    DMMacs.TUsuario.ApplyUpdates;
//    DMMacs.Transaction.CommitRetaining;

  inherited;

    //Seleciona todos os usuarios
    DMMacs.TUsuario.Close;
    DMMacs.TUsuario.SQL.Clear;
    DMMacs.TUsuario.SQL.Add('SELECT * FROM USUARIO');
    DMMacs.TUsuario.Open;

end;

procedure TFCadUsuario.BtnConsultarClick(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('CAD_USUARIO', 'M')=False Then
  		Exit;

  inherited;
    BTNOPEN.SetFocus;
    EDSenha.Height:=24;
    EDConfirme.Height:=24;
    EDSenha.Text:=FMenu.Cripto.CriptoHexToText(DMMacs.TUsuario.FieldByName('SENHA').AsString);
    EDConfirme.Text:=FMenu.Cripto.CriptoHexToText(DMMacs.TUsuario.FieldByName('SENHA').AsString);
    //verifica se o usuario pode cadastrar um administrados
    Visupaneladm;
    FMenu.XCOD_USUARIO:=DMMACS.TUsuario.FieldByName('CODUSUARIO').AsInteger;
    //se deve exibir apenas tela de expedição para o usuario
    if DMMacs.TUsuario.FieldByName('EXIBE_EXPEDICAO').AsString = '1' then
    	cbExpedicao.Checked := True
    else
    	cbExpedicao.Checked := False;
       
    If DMMacs.TUsuario.FieldByName('ADM').AsString='1'
    Then Begin
       DBCBADM.Checked:=True;
		//segundo este bloco if somente o proprio usuario pode tirar sua condição de administrador outro adm não pode
       If DMMacs.TUsuario.FieldByName('CODUSUARIO').AsString=FMenu.LCODUSUARIO.Caption
       Then Begin
           PADM.Visible:=True;
           PADM.BringToFront;
           DBCBADM.Visible:=True
       End
       Else Begin
           PADM.Visible:=False;
           DBCBADM.Visible:=False;
       End;
    End
    Else Begin
       DBCBADM.Checked:=False;
    End;

    //SELECIONA LOJAS DE ACESSO DO USUÁRIO
    DMMacs.SelectLojaUsu(DMMacs.TUsuario.fieldbyname('CODUSUARIO').AsInteger);
    //Selecionado caixas do usuario
    SelectCaixaUsu;
    //seleciona funcionario atrelado

    //Edmar - 24/02/2015 - O locate apenas busca o registro e deixa pré-selecionado (isso funciona mais em grid)
    //neste caso, deveria buscar apenas um funcionário, então foi necessário realizar um FiltraTabela pra isso
    //DMPESSOA.VWFuncionario.Locate('COD_FUNC', DMMacs.TUsuario.FIELDBYNAME('COD_FUNCIONARIO').AsString, []);
    FiltraTabela(DMPESSOA.VWFuncionario, 'VWFUNCIONARIO', 'COD_FUNC', DMMACS.TUsuario.FieldByName('COD_FUNCIONARIO').AsString, '');
    DBCODFUNC.DataField:='COD_INTERNO';
    DBDESC.DataField:='NOME';
    DBCODFUNC.DataSource:=DMPESSOA.DSVWFuncionario;
    DBDESC.DataSource:=DMPESSOA.DSVWFuncionario;


end;

procedure TFCadUsuario.BTNADICIONARClick(Sender: TObject);
Var
   CodUsu: String;
begin
  inherited;
    CodUsu:=DMMacs.TUsuario.fieldbyname('CODUSUARIO').AsString;
    DMMacs.TUsuario.Post;
    DMMacs.TUsuario.ApplyUpdates;
    DMMacs.Transaction.CommitRetaining;

    //SELECIONA NOVAMENTE O USUARIO
    DMMacs.TUsuario.Close;
    DMMacs.TUsuario.SQL.Clear;    
    DMMacs.TUsuario.SQL.Add('SELECT * FROM USUARIO WHERE CODUSUARIO=:CODIGO');
    DMMacs.TUsuario.ParamByName('CODIGO').AsString:=CodUsu;
    DMMacs.TUsuario.Open;
    DMMacs.TUsuario.Edit;

    AbrirForm(TFPLANOACESSO, FPLANOACESSO, 0);
end;

procedure TFCadUsuario.BtnApagarClick(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('CAD_USUARIO', 'M')=False Then
  		Exit;

     If DMMacs.TUsuario.RecordCount=1
     Then Begin
         Mensagem('OPÇÃO BLOQUEADA', 'Este é o último usuário cadastrado, se você o apagar, não terá mais como acessar o sistema. Por isso esta operação não é permitida!', '', 1, 1, false, 'i');
         Exit;
     End;
     If CheckRelation('COD_USUARIO', DMMacs.TUsuario.FieldByName('CODUSUARIO').AsString, ['Caixa',  'CTAPAGAR', 'CtaReceber', 'PedCompra', 'PedVenda'], 5)=True
     Then Begin
         Mensagem('OPÇÃO BLOQUEADA', 'Este usuário não pode ser apagado por que possui movimentos relacionados a ele!', '', 1, 1, false, 'i');
         Exit;
     End;
     inherited;

end;

procedure TFCadUsuario.BitBtn3Click(Sender: TObject);
begin
  inherited;
    If DMMacs.TALX.IsEmpty
    Then Begin
        Mensagem('OPÇÃO BLOQUEADA', 'Não existe plano de acesso a Consultar ou Alterar!', '', 1, 1, false, 'i');
        BTNADICIONAR.SetFocus;
    End
    Else Begin
	    If not Assigned(FPlanoAcesso)
	    Then Begin
	         Application.CreateForm(TFPlanoAcesso, FPlanoAcesso);
            FMenu.XCOD_PLANO:=DMMACS.TALX.FieldByName('COD_LOJAACES').AsInteger;
            FPlanoAcesso.GBLOJAS.Enabled:=False;
            FPlanoAcesso.LWLoja.Items.Add;
            FPlanoAcesso.LWLoja.Items[FPlanoAcesso.LWLoja.Items.Count-1].Caption:=DMMacs.Talx.FieldByName('COD_LOJA').ASSTRING+' - '+DMMacs.Talx.FieldByName('DESCRICAO').ASSTRING;
            LeadCombos;//atribui checagem dos combos de acordo com o banco
	        Try
               	FPlanoAcesso.ShowModal;
	        Finally
	            FPlanoAcesso.Free;
	            FPlanoAcesso:=nil;
	        End;
	    end
	    else
	        FPlanoAcesso.ShowModal;
    End;
end;

procedure TFCadUsuario.BitBtn2Click(Sender: TObject);
begin
     inherited;
     If DMMacs.TALX.IsEmpty
     Then Begin//caso tabela vazia
          Mensagem('Opção bloqueada!', 'Não existe configuração de acesso a ser apagada!' , '', 1, 1, false, 'i');
          Exit;
     End;

     If Mensagem('Confirmação do Usuário', 'Deseja realmente apagar as configurações de acesso da loja '+DMMacs.TALX.FieldByName('descricao').AsString+'?' , '', 2, 3, false, 'c')=2
     Then Begin//confirmação para apagar
     		If FiltraTabela(DMMACS.TLojaUsu, 'LOJACESSO', 'COD_LOJAACES', DMMACS.TALX.FieldByName('COD_LOJAACES').AsString, '')=True
           Then Begin
           	DMMacs.TLojaUsu.Delete;
          		DMMacs.TLojaUsu.ApplyUpdates;
          		DMMacs.Transaction.CommitRetaining;
           End;
     End;
    //SELECIONA LOJAS DE ACESSO DO USUÁRIO
    DMMacs.SelectLojaUsu(DMMacs.TUsuario.fieldbyname('CODUSUARIO').AsInteger);
end;

procedure TFCadUsuario.BtnCancelarClick(Sender: TObject);
begin
  inherited;
    //Seleciona todos os usuarios
    DMMacs.TUsuario.Close;
    DMMacs.TUsuario.SQL.Clear;
    DMMacs.TUsuario.SQL.Add('SELECT * FROM USUARIO');
    DMMacs.TUsuario.Open;

end;

procedure TFCadUsuario.PCaixaExit(Sender: TObject);
begin
  inherited;
	If PCaixa.Visible=True Then
       DBCBCaixa.SetFocus;
end;

procedure TFCadUsuario.BitBtn1Click(Sender: TObject);
Var
   CODCAIXAUSU: Integer;
begin
  inherited;
	PCaixa.Visible:=True;
   PCaixa.BringToFront;
   DBCBCaixa.SetFocus;
   CODCAIXAUSU:=InserReg(DMCAIXA.TCaixaUsu, 'CAIXAUSU', 'COD_CAIXAUSU');
   DMCAIXA.TCaixaUsu.FieldByName('COD_CAIXAUSU').AsInteger:=CODCAIXAUSU;
end;

procedure TFCadUsuario.BitBtn7Click(Sender: TObject);
begin
  inherited;
   DMCAIXA.TCaixaUsu.CancelUpdates;
   DMCAIXA.TCaixaUsu.ApplyUpdates;
	PCaixa.Visible:=False;      
end;

procedure TFCadUsuario.BitBtn6Click(Sender: TObject);
begin
  inherited;
   //controla a inserção de caixa
   If (DBCBCaixa.Text='')
   Then Begin
   	Mensagem('OPÇÃO BLOQUEADA', 'Por favor informe o caixa para acesso do usuário', '', 1, 1, False, 'I');
       DBCBCaixa.SetFocus;
       Exit;
   End;

   //controla a inserção de dias
   If (DBCBDia1.Text='') Or (DBCBDia2.Text='')
   Then Begin
   	Mensagem('OPÇÃO BLOQUEADA', 'Por favor informe os dias do controle de turno', '', 1, 1, False, 'I');
       DBCBDia1.SetFocus;
       Exit;
   End;

   //controla a inserção de horas
   If (DBEDHora1.Text='') Or (DBEDHora2.Text='')
   Then Begin
   	Mensagem('OPÇÃO BLOQUEADA', 'Por favor informe o horário de controle de turno', '', 1, 1, False, 'I');
       DBEDHora1.SetFocus;
       Exit;
   End;

   //PASSA VALORES RESTANTES E CONFIRMA TRANSAÇÃO
   DMCAIXA.TCaixaUsu.FieldByName('DTCAD').AsString:=DateToStr(Date());
   DMCAIXA.TCaixaUsu.FieldByName('COD_USUARIO').AsString:=DMMACS.TUsuario.FieldByName('CODUSUARIO').AsString;
   DMCAIXA.TCaixaUsu.FieldByName('COD_USERMESTRE').AsString:=FMenu.LCODUSUARIO.Caption;
   DMCAIXA.TCaixaUsu.Post;
   DMCAIXA.TCaixaUsu.ApplyUpdates;
   DMCAIXA.IBT.CommitRetaining;

   //seleciona todos os caixas de acesso do usuario
   SelectCaixaUsu;
   PCaixa.Visible:=False;
   BitBtn1.SetFocus;
end;

procedure TFCadUsuario.BitBtn4Click(Sender: TObject);
begin
  inherited;
   If FiltraTabela(DMCAIXA.TCaixaUsu, 'CAIXAUSU', 'COD_CAIXAUSU', DMCAIXA.TAlx.FieldByName('COD_CAIXAUSU').AsString, '')=True
   Then Begin
       DMCAIXA.TCaixaUsu.Delete;
       DMCAIXA.TCaixaUsu.ApplyUpdates;
       DMCAIXA.IBT.CommitRetaining;
       SelectCaixaUsu;
   End;


end;

procedure TFCadUsuario.BitBtn5Click(Sender: TObject);
begin
  inherited;
	PCaixa.Visible:=True;
   PCaixa.BringToFront;
   DBCBCaixa.SetFocus;
   If FiltraTabela(DMCAIXA.TCaixaUsu, 'CAIXAUSU', 'COD_CAIXAUSU', DMCAIXA.TAlx.FieldByName('COD_CAIXAUSU').ASSTRING, '')=True Then
	   DMCAIXA.TCaixaUsu.Edit
   Else
       BitBtn7.Click;
end;

//gera e imprime o codigo de barras de acesso de usuário para deletar produto no pdv
procedure TFCadUsuario.BitBtn8Click(Sender: TObject);
begin
  inherited;
           XSenha:='000'+XSenha;
       If length (XSenha) = 12 then begin
           ImpCodAcesso;
           XSenha:=FMenu.Cripto.TextToCriptoHex(EDSenha.Text);
           EDSenha.Text:=XSenha;
           EDConfirme.Text:=XSenha;
       end
       else
           Mensagem(' A T E N Ç Ã O ', 'A senha deve conter nove dígitos.', '', 1,1, false, 'I');
end;

procedure TFCadUsuario.ImpCodAcesso;
begin

   Printer.BeginDoc;
   Printer.canvas.pen.width:=5;

   FMenu.PrnEan13.Codigo        := xsenha;
   FMenu.PrnEan13.CorBarra      := clBlack;
   FMenu.PrnEan13.CorEspaco     := clWhite;
   FMenu.PrnEan13.Largura	:= StrToInt(XLargura);
   FMenu.PrnEan13.Comprimento	:=  StrToInt(XComp);
   FMenu.PrnEan13.LinhaPrinter	:= 40;
   FMenu.PrnEan13.ColunaPrinter := 10;
   FMenu.PrnEan13.Execute;
   Printer.enddoc;
end;

//recebe a senha para ser transformada em cod de barras
procedure TFCadUsuario.EDSenhaExit(Sender: TObject);
begin
  inherited;
       XSenha:='';
       XSenha:=EDSenha.Text;
end;

//torna o painel visivel
procedure TFCadUsuario.BitBtn9Click(Sender: TObject);
begin
  inherited;
   PConfigEt.BringToFront;
   PConfigEt.Visible:=True;
end;

//fecha o painel de configuração
procedure TFCadUsuario.BtnFecharClick(Sender: TObject);
begin
  inherited;
       PConfigEt.SendToBack;
       PConfigEt.Visible:=false;
end;

//passa o valor da edit para a variável de controle de largura do codigo de barra
procedure TFCadUsuario.ELarguraExit(Sender: TObject);
begin
  inherited;
   XLargura:=ELargura.Text;
end;

//passa o valor da edit para a variável de controle de comprimento do codigo de barra
procedure TFCadUsuario.ECompExit(Sender: TObject);
begin
  inherited;
   XComp:= EComp.Text;
end;

procedure TFCadUsuario.BtnRelatorioClick(Sender: TObject);
begin
  inherited;
   //Djonathan 18/11/2009: ATIVA O MENU RELATUSUARIO NO ON-CLICK DO BOTAO
   MenuRelatUsuario.Popup(Left+355, top+64);
end;

procedure TFCadUsuario.HistoricoUsuarioClick(Sender: TObject);
begin
  inherited;
	//Djonathan 18/11/2009: CONTROLA O ACESSO AO RELATORIO
   if (ControlAccess('','M') = false) then
   Exit;

   //Djonathan 19/11/2009: MOSTRA O PAINEL PARA FILTRAR O RESULTADO DO REGISTRO E ZERA CAMPOS DE DATA
   PainelModoRel.Visible := true;
   EDtInicial.Text := '  /  /    ';
   EDtFinal.Text := '  /  /    ';
end;

procedure TFCadUsuario.Button2Click(Sender: TObject);
begin
  inherited;
  	//Djonathan	19/11/2009:	CANCELA O RELATORIO DOS REGISTROS
	PainelModoRel.Visible := false;
end;

procedure TFCadUsuario.Button1Click(Sender: TObject);
begin
  inherited;
   //Djonathan 19/11/2009: SQL QUE IRA IMPORTAR OS DADOS DO REGISTRO DE ACORDO COM O USUARIO
   DMMACS.TRel.Close;
   DMMACS.TRel.SQL.Clear;
   DMMACS.TRel.SQL.Add('select registro.cod_registro,registro.data,registro.hora,registro.dt_modulo,registro.modulo,registro.comando,registro.field1,registro.texto,registro.cod_usuario,registro.usuario');
	DMMACS.TRel.SQL.Add(' from registro left join usuario on registro.cod_usuario = usuario.codusuario');
	DMMACS.TRel.SQL.Add(' left join funcionario on usuario.cod_funcionario = funcionario.cod_func');
	DMMACS.TRel.SQL.Add(' left  join  pessoa on pessoa.cod_pessoa = funcionario.cod_pessoa');
 	DMMACS.TRel.SQL.Add(' where (registro.cod_registro > 0) ');
   //Djonathan	19/11/2009: SE IGUAL A TRUE ENTAO MOSTRA TODOS OS USUARIOS
   if(FrmBusca1.EDCodigo.Text <> '')
   then begin
   	 DMMACS.TRel.SQL.Add(' and (usuario.codusuario = :codusuario) ');
        DMMACS.TRel.ParamByName('codusuario').AsString := FrmBusca1.EDCodigo.Text;
   end;

   //Djonathan 19/11/2009: SE IGUAL A TRUE FILTRA TABELA POR DATA
   if((not(EDtInicial.Text = '  /  /    ')) and (not(EDtFinal.Text = '  /  /    ')))then
   begin
   	DMMACS.TRel.SQL.Add(' AND (registro.data between :data and :data2) ');
       DMMACS.TRel.ParamByName('data').AsString := EDtInicial.Text;
       DMMACS.TRel.ParamByName('data2').AsString := EDtFinal.Text;
   end;
   //Alex 17/07/2019: Inserimos a possibilidade de o usuario filtras por módulos adicionais
   If EdTextoFiltro.Text<>''
   Then Begin
   	DMMACS.TRel.SQL.Add(' AND (registro.' + dbModulos.Text + ' LIKE '+#39+'%'+EdTextoFiltro.Text+'%'+#39+ ')' );
   End;

 	DMMACS.TRel.SQL.Add('     order by registro.cod_usuario, registro.data');
   DMMACS.TRel.SQL.Text;
   DMMACS.TRel.Open;
   //Djonathan	20/11/2009: TESTA SE A SQL NAO ESTA VAZIA
   if(DMMACS.TRel.IsEmpty)then
   begin
   	MessageBox(0, 'Nenhum registro foi encontrado!', 'RELATORIO VAZIO', MB_ICONWARNING or MB_OK)
   end
   else
   begin
   //Djonathan	20/11/2009: COMANDOS PARA A IMPRESSAO
   fsHistUsuario.LoadFromFile('C:\MZR\Macs\Rel\FrfHistoricoUsuario.frf');
   fsHistUsuario.ShowReport;
   end;

end;

procedure TFCadUsuario.FrmBusca1BTNOPENClick(Sender: TObject);
begin
  inherited;
  	 //Djonathan 19/11/2009: SELECIONA UM CADASTRO DE USUARIO PARA OS CAMPO DO FBUSCA1	
	 If AbrirForm(TFCadUsuario, FCadUsuario, 1)= 'Selected'
    Then Begin
        FrmBusca1.EdDescricao.Text := DMMACS.TUsuario.FieldByName('LOGIN').AsString;
        FrmBusca1.EDCodigo.Text := IntToStr(DMMACS.TUsuario.FieldByName('CODUSUARIO').AsInteger);
    End
    Else Begin
        Frmbusca1.EdDescricao.Text:='';
        Frmbusca1.EDCodigo.text:='';
    End;
end;

procedure TFCadUsuario.FrmBusca1BTNMINUSClick(Sender: TObject);
begin
  inherited;
	//Djonathan 19/11/2009: LIMPA AS EDITS DO FRMBUSCA1
   FrmBusca1.EdDescricao.Text := '';
   FrmBusca1.EDCodigo.Text := '';
end;

procedure TFCadUsuario.ApagarHistrico1Click(Sender: TObject);
begin
  inherited;
	If FMenu.EdUsuario.Text='SYSTEM LORD'
   Then Begin
		If MessageDlg('Deseja realmente apagar todos os registros?', mtConfirmation, [mbYes, mbNo], 0)=mryes
       Then Begin
           DMMACS.TALX.Close;
           DMMACS.TALX.SQL.Clear;
           DMMACS.TALX.SQL.Add(' delete from registro ');
           DMMACS.TALX.ExecSQL;
           DMMACS.Transaction.CommitRetaining;
       End;
   End;
end;

end.
