unit UAtualizaValores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPadrao, Buttons, StdCtrls, DrLabel, jpeg, ExtCtrls, UFrmBusca,
  Mask, FR_Class, FR_DSet, FR_DBSet;

type
  TFAtualizaValores = class(TFPadrao)
    FrmGrupo1: TFrmBusca;
    FrmGrupo2: TFrmBusca;
    FrmSubGrupo2: TFrmBusca;
    FrmSubGrupo1: TFrmBusca;
    Shape5: TShape;
    FrmProduto1: TFrmBusca;
    FrmProduto2: TFrmBusca;
    LTextoBusca1: TLabel;
    CBMARCAINI: TComboBox;
    LTextoBusca2: TLabel;
    CBMARCAFIM: TComboBox;
    FrmSubProduto1: TFrmBusca;
    FrmSubProduto2: TFrmBusca;
    Shape1: TShape;
    Shape2: TShape;
    RGCampo: TRadioGroup;
    EVlrAltera: TEdit;
    LAltera: TLabel;
    BitBtn1: TBitBtn;
    BtnCancelar: TBitBtn;
    PComissao: TPanel;
    Shape3: TShape;
    GroupBox5: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    CBMARCAINIC: TComboBox;
    Label6: TLabel;
    CBMARCAFINAL: TComboBox;
    GroupBox3: TGroupBox;
    GroupBox1: TGroupBox;
    BtVisualizar: TBitBtn;
    GroupBox4: TGroupBox;
    BitBtn2: TBitBtn;
    FsRelAtu: TfrReport;
    FDSCaixa: TfrDBDataSet;
    EdDataFim: TMaskEdit;
    EdDataIni: TMaskEdit;
    FrmVendIni: TFrmBusca;
    FrmVendFim: TFrmBusca;
    CBDVL: TCheckBox;
    procedure BtnCancelarClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FrmGrupo1BTNOPENClick(Sender: TObject);
    procedure FrmGrupo1BTNMINUSClick(Sender: TObject);
    procedure FrmGrupo2BTNOPENClick(Sender: TObject);
    procedure FrmGrupo2BTNMINUSClick(Sender: TObject);
    procedure FrmSubGrupo1BTNOPENClick(Sender: TObject);
    procedure FrmSubGrupo1BTNMINUSClick(Sender: TObject);
    procedure FrmSubGrupo2BTNOPENClick(Sender: TObject);
    procedure FrmSubGrupo2BTNMINUSClick(Sender: TObject);
    procedure FrmProduto1BTNOPENClick(Sender: TObject);
    procedure FrmProduto1BTNMINUSClick(Sender: TObject);
    procedure FrmProduto2BTNOPENClick(Sender: TObject);
    procedure FrmProduto2BTNMINUSClick(Sender: TObject);
    procedure FrmSubProduto1BTNOPENClick(Sender: TObject);
    procedure FrmSubProduto1BTNMINUSClick(Sender: TObject);
    procedure FrmSubProduto2BTNOPENClick(Sender: TObject);
    procedure FrmSubProduto2BTNMINUSClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BtVisualizarClick(Sender: TObject);
    procedure FrmVendIniBTNOPENClick(Sender: TObject);
    procedure FrmVendFimBTNOPENClick(Sender: TObject);
    procedure FrmGrupo1EDCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure FrmGrupo2EDCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure FrmSubGrupo1EDCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure FrmSubGrupo2EDCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure FrmProduto1EDCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure FrmProduto2EDCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure FrmVendIniEDCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FrmVendFimEDCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FrmVendIniBTNMINUSClick(Sender: TObject);
    procedure FrmVendFimBTNMINUSClick(Sender: TObject);

  private
    { Private declarations }

   //Filtro por Subgrupo
   Procedure FiltroSubGrupo;
	//Filtro por Grupo
 	Procedure FiltroGrupo;
  	//filtro por marca
  	Procedure FiltroMarca;
  	//Filtro por produto
  	Procedure FiltroProduto;
  	//Filtro por Subproduto
  	Procedure FiltroSubProduto;
   //fecha a mensagem
   procedure BtnOkClick(Sender: TObject);
   //busca campos no banco para calcular
   procedure VlrVarejoVista;
   //busca campos no banco para calcular
   procedure Lucrat;
   //busca campos no banco para calcular
   procedure VlrCompra;
   //filtra por marca para impressão de relatório
   procedure FiltroMarcaRel;
   //filtra por data para impressão de relatório
   procedure FiltroData;
   //filtra por vendedor
   procedure FiltroVend;



  public
    { Public declarations }
  end;

var
  FAtualizaValores: TFAtualizaValores;
  DescVistaVar: Real;
  AcrecPrazoVar: Real;
  DescVistaAtac: Real;
  AcrecPrazoAtac: Real;
  ComVistaVar: Real;
  ComPrazoVar: Real;
  ComVistaAtac: Real;
  ComPrazoAtac: Real;
  AlxLUCMOE, AlxLUCPER, AlxIMPFED, AlxIMPEST : REAL;
  AlxCOMISS, AlxOUTROS, AlxDESCIMP, AlxDESCVALREP : REAL;
  AlxLUCBRUTO, ALXLUCREAL, ALXLUCBONIFIC : REAL;
  BtnOk: TBitBtn;
  BtnSim: TBitBtn;
  BtnNao: TBitBtn;
  BtnCancelar: TBitBtn;
  XGRUPO1, XGRUPO2, XSUBGRUPO1, XSUBGRUPO2, XPRODUTO1, XPRODUTO2, XSUBPROD1, XSUBPROD2: String;
  XVENDINI, XVENDFIM : String;
   //Função utilizada para verificar se o usuário em questão pode acessar o formulario passado
   function VerifAcessForm(Formu: String): Boolean;
   //calculo de lucros
   Procedure CalcLuc(XVALVEND: REAL; XDESC: REAL; QTD: REAL);
   // faz todos os calculos de valores
   procedure CalculoVenda(DescVistaVar, AcrecPrazoVar, DescVistaAtac,
                          AcrecPrazoAtac, ComVistaVar, ComPrazoVar, ComVistaAtac,
                          ComPrazoAtac: Real; XRET, XCALCLUC: INTEGER);




   //abre formulario para seleção
   Function AbrirForm(Tipo:TComponentClass; Formulario:TForm; TypeForm: Integer):String; {Função Utilizada p/ Abrir o Formulario}

implementation

uses UMenu, UDMEstoque, UDMMacs, Math, UMensagem, UMessage, UCadGrupo,
  UCadSubgrupo, UProduto, Alxor32, UPadraoRelatorio, UDMPessoa,
  UFuncionario;

{$R *.dfm}

Function Mensagem(Titulo, Menssage, Detalhes: String; Botao, Focu: Integer; Detal:Boolean; Icon: Char): Integer;
Begin
	Try
    Application.CreateForm(TFMessage, FMessage);

    FMessage.LComunic.Caption:=Titulo;

    FMessage.MMenssagem.Lines.Text:=menssage;

    //LimpaIcones;

    If (Botao=1) Then
            FMessage.BtnOk.Visible:=True;
    If (Botao=2)
    Then Begin
            FMessage.BtnSim.Visible:=True;
            FMessage.Btnnao.Visible:=True;
    End;
    If (Botao=3)
    Then Begin
            FMessage.BtnSim.Visible:=True;
            FMessage.Btnnao.Visible:=True;
            FMessage.BtnCancelar.Visible:=True;
    End;

    Case Focu of
        1: fMessage.Tag:=1;
        2: fMessage.Tag:=2;
        3: fMessage.Tag:=3;
        4: FMessage.Tag:=4;
    end;

    If UpCase(Icon)='C'
    Then Begin
            FMessage.IconConfirmacao.Visible:=True;
            FMessage.IconConfirmacao.BringToFront;
    End;

    If UpCase(Icon)='I'
    Then Begin
            FMessage.IconInformacao.Visible:=True;
            FMessage.IconInformacao.BringToFront;
    End;

    If UpCase(Icon)='A'
    Then Begin
            FMessage.IconAtencao.Visible:=True;
            FMessage.IconAtencao.BringToFront;
    End;

    If UpCase(Icon)='E'
    Then Begin
            FMessage.IconErro.Visible:=True;
			 FMessage.IconErro.BringToFront;
    End;

    FMessage.ShowModal;

    If FMessage.BtnOk.Tag=1 Then
        Mensagem:=1;
    If FMessage.BtnSim.Tag=1 Then
        Mensagem:=2;
    If FMessage.BtnNao.Tag=1 Then
        Mensagem:=3;
    If FMessage.BtnCancelar.Tag=1 Then
        Mensagem:=4;

    FMessage.Action:=nil;
    FMessage.Free;
   Except
   End;
End;

//fecha o formulario
procedure TFAtualizaValores.BtnCancelarClick(Sender: TObject);
begin
  //inherited;
    Close;
    XCOMISSAO:= 0;
end;

//fecha a mensagem
procedure TFAtualizaValores.BtnOkClick(Sender: TObject);
begin
    btnok.tag:=1;
    close;
end;


procedure FormClose(Sender: TObject; var Action: TCloseAction);
begin
    BtnOk.Visible:=False;
    BtnSIM.Visible:=False;
    BtnNAO.Visible:=False;
    BtnCANCELAR.Visible:=False;
    FMessage.Tag:=0;
end;


//calcula valores dos produtos
procedure TFAtualizaValores.BitBtn1Click(Sender: TObject);
begin
  inherited;

   if EVlrAltera.Text = ''
   then begin
       Mensagem('A T E N Ç Ã O ', 'Preencha o campo de porcentagem de alteração para que sejam feitos os cálculos', '', 1,1, false, 'A');
   end
      else begin
      //painel que fica visivel enquanto são feitos os cálculos
      PComunica.Visible:=True;
      PComunica.BringToFront;

           //seleciona todos os valores da tabela estoque para calcular os novos valores
           DMESTOQUE.TRel.Close;
           DMESTOQUE.TRel.SQL.Clear;
           DMESTOQUE.TRel.SQL.Add('select * from estoque');
           DMESTOQUE.TRel.SQL.Add('left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto');
           DMESTOQUE.TRel.SQL.Add('left join produto on subproduto.cod_produto = produto.cod_produto');
           DMESTOQUE.TRel.SQL.Add('left join subgrupoprod on produto.cod_subgrupoprod = subgrupoprod.cod_subgrupoprod');
           DMESTOQUE.TRel.SQL.Add('left join grupoprod on produto.cod_grupoprod = grupoprod.cod_grupoprod');
           DMESTOQUE.TRel.SQL.Add(' WHERE (ESTOQUE.COD_LOJA='+FMenu.LCODLOJA.Caption+') ');

          //filtros
          FiltroGrupo;
          FiltroSubGrupo;
          FiltroProduto;
          FiltroSubProduto;
          FiltroMarca;

          //ordena TRel
          DMESTOQUE.TRel.SQL.Add('order by estoque.cod_estoque');
          DMESTOQUE.TRel.Open;
          DMESTOQUE.TRel.First;



       //compara que item do radiogroup foi selecionado para chamar as funções
       //se for selecionado o campo de lucratividade para alteração
       if RGCampo.ItemIndex = 0 then
           Lucrat;
       //se for selecionado o valor de compra para alteração
       if RGCampo.ItemIndex = 1 then
           VlrCompra;
       //se for selecionado o valor de venda para alteração
       If RGCampo.ItemIndex = 2 then
           VlrVarejoVista;

      //confirma a alteração dos produtos
      DMESTOQUE.TransacEstoque.CommitRetaining;

      //torna invisivel o painel de comunicação
      PComunica.Visible:=False;
      PComunica.SendToBack;

      //exibe a mensagem de que os cálculos foram efetivados
      Mensagem('C A L C U L A D O ', 'A alteração de valores dos produtos foi concluída.', '', 1,1, false, 'I');

    end;

end;



//filtra por grupo
procedure TFAtualizaValores.FiltroGrupo;
begin
	If (FRMGrupo1.EdDescricao.Text<>'') And (FrmGrupo2.EdDescricao.Text<>'')
   Then Begin//haverá seleção por grupo
       DMESTOQUE.TRel.SQL.Add(' AND (upper(grupoprod.descricao) between upper(:GRUPO1) AND upper(:GRUPO2)) ');
       DMESTOQUE.TRel.ParamByName('GRUPO1').AsString:=FrmGrupo1.EdDescricao.Text;
       DMESTOQUE.TRel.ParamByName('GRUPO2').AsString:=FrmGrupo2.EdDescricao.Text;
   End;
end;

//filtra por marca
procedure TFAtualizaValores.FiltroMarca;
begin
	If (CBMARCAINI.Text<>'') And (CBMARCAFIM.Text<>'')
	Then Begin//haverá seleção por grupo
   	DMESTOQUE.TRel.SQL.Add(' AND ((subproduto.marca between :MARCA1 AND :MARCA2)) ');
       DMESTOQUE.TRel.ParamByName('MARCA1').AsString:=CBMARCAINI.Text;
   	DMESTOQUE.TRel.ParamByName('MARCA2').AsString:=CBMARCAFIM.Text;
       DMESTOQUE.TRel.SQL.Text;
  End;
end;

//filtra por marca para relatório
procedure TFAtualizaValores.FiltroMarcaRel;
begin
	If (CBMARCAINIC.Text<>'') And (CBMARCAFINAL.Text<>'')
	Then Begin//haverá seleção por grupo
   	DMESTOQUE.TRel.SQL.Add(' AND ((subproduto.marca between :MARCA1 AND :MARCA2)) ');
       DMESTOQUE.TRel.ParamByName('MARCA1').AsString:=CBMARCAINIC.Text;
   	DMESTOQUE.TRel.ParamByName('MARCA2').AsString:=CBMARCAFINAL.Text;
       DMESTOQUE.TRel.SQL.Text;
  End;
end;

//filtra por produto
procedure TFAtualizaValores.FiltroProduto;
begin
	If (FrmProduto1.EdDescricao.Text<>'') And (FrmProduto2.EdDescricao.Text<>'')
   Then Begin//haverá seleção por grupo
   	DMESTOQUE.TRel.SQL.Add(' AND (upper(Produto.descricao) between upper(:PRODUTO1) AND upper(:PRODUTO2)) ');
 	   	DMESTOQUE.TRel.ParamByName('PRODUTO1').AsString:=FrmProduto1.EdDescricao.Text;
	   	DMESTOQUE.TRel.ParamByName('PRODUTO2').AsString:=FrmProduto2.EdDescricao.Text;
   End;
end;

//filtra por subgrupo
procedure TFAtualizaValores.FiltroSubGrupo;
begin
	If (FrmSubGrupo1.EdDescricao.Text<>'') And (FrmSubGrupo2.EdDescricao.Text<>'')
   Then Begin//haverá seleção por grupo
       DMESTOQUE.TRel.SQL.Add(' AND (upper(subgrupoprod.descricao) between upper(:SUBGRUPO1) AND upper(:SUBGRUPO2)) ');
       DMESTOQUE.TRel.ParamByName('SUBGRUPO1').AsString:=FrmSubGrupo1.EdDescricao.Text;
       DMESTOQUE.TRel.ParamByName('SUBGRUPO2').AsString:=FrmSubGrupo2.EdDescricao.Text;
   End;
end;

//filtro por subproduto
procedure TFAtualizaValores.FiltroSubProduto;
begin
	If (FrmSubProduto1.EdDescricao.Text<>'') And (FrmSubProduto2.EdDescricao.Text<>'')
   Then Begin//haverá seleção por grupo
   	DMESTOQUE.TRel.SQL.Add(' AND (upper(SubProduto.descricao) between upper(:SUBPROD1) AND upper(:SUBPROD2)) ');
       DMESTOQUE.TRel.ParamByName('SUBPROD1').AsString:=FrmSubProduto1.EdDescricao.Text;
       DMESTOQUE.TRel.ParamByName('SUBPROD2').AsString:=FrmSubProduto2.EdDescricao.Text;
   End;
end;

//calcula valores para produtos
Procedure CalculoVenda(DescVistaVar: Real; AcrecPrazoVar: Real; DescVistaAtac: Real; AcrecPrazoAtac: Real; ComVistaVar: Real; ComPrazoVar: Real; ComVistaAtac: Real; ComPrazoAtac: Real; XRET: INTEGER; XCALCLUC: INTEGER);
var
X,Y,Z,B,C,F,I :Real;
VlrVenda: Real;
XBaseCalc: Real;
XCredICMSFrete: Real;
XCredICMS: Real;
begin
	//CALCULA BASE DE CALCULO P/ LUCRO REAL/PRESUMIDO
	XBaseCalc:=Dmestoque.Testoque.Fieldbyname('VLRUNITCOMP').ascurrency-((Dmestoque.Testoque.Fieldbyname('VLRUNITCOMP').ascurrency*Dmestoque.Testoque.Fieldbyname('DESCONTO').ascurrency)/100)+((Dmestoque.Testoque.Fieldbyname('VLRUNITCOMP').ascurrency*Dmestoque.Testoque.Fieldbyname('ACRECIMO').ascurrency)/100);

	//CALCULANDO CUSTOS ADICIONAIS PARA (VALREP)
   If DMMACS.TEmpresa.FieldByName('TIPOEMPRESA').AsString='SIMPLES'
   Then Begin
		X:= (Dmestoque.Testoque.Fieldbyname('VLRUNITCOMP').ascurrency * (Dmestoque.TSubprod.Fieldbyname('IPIPROD').ascurrency) /100);
		Y:= (Dmestoque.Testoque.Fieldbyname('VLRUNITCOMP').ascurrency * (Dmestoque.TEstoque.Fieldbyname('FRETE').ascurrency) /100);
		Z:= (Dmestoque.Testoque.Fieldbyname('VLRUNITCOMP').ascurrency * (Dmestoque.TSubprod.Fieldbyname('EMBPROD').ascurrency) /100);
   End
   Else Begin
		X:= (XBaseCalc*(Dmestoque.TSubprod.Fieldbyname('IPIPROD').ascurrency)/100);
		Y:= (XBaseCalc*(Dmestoque.TEstoque.Fieldbyname('FRETE').ascurrency)/100);
		Z:= (XBaseCalc*(Dmestoque.TSubprod.Fieldbyname('EMBPROD').ascurrency)/100);
   End;
   //CALCULA CREDITO DE ICMS P/ FRETE
   XCredICMSFrete:=((Y*Dmestoque.TEstoque.Fieldbyname('ICMS').ascurrency)/100);

   //CALCULA CREDITO DE ICMS
   XCredICMS:=((XBaseCalc*Dmestoque.TEstoque.Fieldbyname('ICMS').ascurrency)/100);

   //CALCULO CUSTO LIQUIDO NOMMINAL CORRIGIDO (CLNC)
   DMESTOQUE.TEstoque.Edit;
	Dmestoque.TEstoque.Fieldbyname('CLNC').ascurrency:=XBaseCalc+X+Z+Y-XCredICMSFrete-XCredICMS;
   DMESTOQUE.TEstoque.Post;

	//CALCULANDO VALOR DE REPOSIÇÃO (VALREP)
   If DMMACS.TEmpresa.FieldByName('TIPOEMPRESA').AsString='SIMPLES'
   Then Begin
   	DMESTOQUE.TEstoque.Edit;
		Dmestoque.Testoque.Fieldbyname('VALREP').ascurrency:= (Dmestoque.Testoque.Fieldbyname('VLRUNITCOMP').ascurrency + X + Y + Z);
       DMESTOQUE.TEstoque.Post;
   End
   Else Begin
       If DMMACS.TEmpresa.FieldByName('CREDITAIPI').AsString='1'
       Then Begin
			//Empresa possui credito IPI
           DMESTOQUE.TEstoque.Edit;
			Dmestoque.Testoque.Fieldbyname('VALREP').ascurrency:=XBaseCalc+Y-XCredICMSFrete;
           DMESTOQUE.TEstoque.Post;
       End
       Else Begin
			//Empresa nao possui credito IPI
           DMESTOQUE.TEstoque.Edit;
			Dmestoque.Testoque.Fieldbyname('VALREP').ascurrency:=XBaseCalc+Y+X-XCredICMSFrete;
           DMESTOQUE.TEstoque.Post;
       End;
   End;

   //COEFICIENTE DE DIVISAO
   If DMMACS.TEmpresa.FieldByName('TIPOEMPRESA').AsString='SIMPLES'
   Then Begin
		//COEFICIENTE P/ EMPRESA SIMPLES
       DMESTOQUE.TEstoque.Edit;
		   Dmestoque.Testoque.Fieldbyname('COEFDIV').ascurrency := (100 - (DMMacs.Tempresa.Fieldbyname('IMPEST').ascurrency + DMMacs.Tempresa.Fieldbyname('IMPFED').ascurrency + COMVISTAVAR + DESCVISTAVAR + DMESTOQUE.TEstoque.FieldByname('OUTROS').ascurrency))/100;
       DMESTOQUE.TEstoque.Post;
   End
   Else Begin
		//COEFICIENTE P/ EMPRESA LUCRO REAL E PRESUMIDO
       If DMMACS.TEmpresa.FieldByName('CALCULAIPI').AsString='1'
       Then Begin
       	// DESTACA IPI
           DMESTOQUE.TEstoque.Edit;
           Dmestoque.Testoque.Fieldbyname('COEFDIV').ascurrency := (100 - (Dmestoque.Testoque.Fieldbyname('ICMS').ascurrency + Dmestoque.TSubProd.Fieldbyname('IPIPROD').ascurrency +COMVISTAVAR + DESCVISTAVAR+DMESTOQUE.TEstoque.FieldByname('IMPEXP').ascurrency+DMESTOQUE.TEstoque.FieldByname('IMPREND').ascurrency+DMESTOQUE.TEstoque.FieldByname('COFINS').ascurrency+DMESTOQUE.TEstoque.FieldByname('PIS').ascurrency+DMESTOQUE.TEstoque.FieldByname('CONTSOC').ascurrency))/100;
           DMESTOQUE.TEstoque.Post;
       End
       Else Begin
       	// NAO DESTACA IPI
           DMESTOQUE.TEstoque.Edit;
			     Dmestoque.Testoque.Fieldbyname('COEFDIV').ascurrency := (100 - (Dmestoque.Testoque.Fieldbyname('ICMS').ascurrency+COMVISTAVAR + DESCVISTAVAR+DMESTOQUE.TEstoque.FieldByname('IMPEXP').ascurrency+DMESTOQUE.TEstoque.FieldByname('IMPREND').ascurrency+DMESTOQUE.TEstoque.FieldByname('COFINS').ascurrency+DMESTOQUE.TEstoque.FieldByname('PIS').ascurrency+DMESTOQUE.TEstoque.FieldByname('CONTSOC').ascurrency))/100;
           DMESTOQUE.TEstoque.Post;
       End;
   End;
	//Valor do Produto com Valor de Reposição + os Impostos
	B:=(Dmestoque.Testoque.Fieldbyname('VALREP').ascurrency / Dmestoque.Testoque.Fieldbyname('COEFDIV').ascurrency);
	DMESTOQUE.TEstoque.Edit;
   DMESTOQUE.TEstoque.FieldByName('VLRBONIFIC').AsCurrency:=DMESTOQUE.TEstoque.FieldByName('VENDVARV').AsCurrency-(DMESTOQUE.TEstoque.FieldByName('VENDVARV').AsCurrency*DMESTOQUE.TEstoque.FieldByName('BONIFICACAO').AsCurrency)/100;
   DMESTOQUE.TEstoque.FieldByName('VALOREST').AsCurrency:=(DMESTOQUE.TEstoque.Fieldbyname('VALREP').AsCurrency/DMESTOQUE.TEstoque.Fieldbyname('COEFDIV').AsCurrency)*DMESTOQUE.TEstoque.Fieldbyname('ESTFISICO').AsCurrency;
	DMESTOQUE.TEstoque.Post;
	//CALCULANDO VALOR DE VENDA VAREJO A VISTA  (VENDAVARV)
	//Achando o Segundo Coeficiente.
	C := (Dmestoque.Testoque.Fieldbyname('LUCRATIVIDADE').ascurrency / 100) + 1;
   If XCALCLUC=0
   Then Begin//parametro que determina que o sistyema deve calcular os valores de venda do produto
		//Valor do Produto com Valor de Reposição + os Impostos + Lucratividade
   	If DMMACS.TEmpresa.FieldByName('TIPOEMPRESA').AsString='SIMPLES'
   	Then Begin
       	DMESTOQUE.TEstoque.Edit;
			Dmestoque.Testoque.Fieldbyname('VENDVARV').Ascurrency := (B * C);
			Dmestoque.Testoque.Fieldbyname('MARGEMSEG').Ascurrency := (B * ((Dmestoque.Testoque.Fieldbyname('PERCMARGSEG').ascurrency / 100) + 1));
           DMESTOQUE.TEstoque.Post;
       End
       Else Begin
      DMESTOQUE.TEstoque.Edit;
			Dmestoque.Testoque.Fieldbyname('VENDVARV').Ascurrency:=(Dmestoque.Testoque.Fieldbyname('VALREP').Ascurrency+((Dmestoque.Testoque.Fieldbyname('VALREP').Ascurrency*Dmestoque.Testoque.Fieldbyname('OUTROS').Ascurrency)/100)+((Dmestoque.Testoque.Fieldbyname('VALREP').Ascurrency*Dmestoque.Testoque.Fieldbyname('MOD').Ascurrency)/100))/Dmestoque.Testoque.Fieldbyname('COEFDIV').Ascurrency;
			Dmestoque.Testoque.Fieldbyname('MARGEMSEG').Ascurrency :=Dmestoque.Testoque.Fieldbyname('VENDVARV').Ascurrency;
			Dmestoque.Testoque.Fieldbyname('VENDVARV').Ascurrency:=Dmestoque.Testoque.Fieldbyname('VENDVARV').Ascurrency+((Dmestoque.Testoque.Fieldbyname('VENDVARV').Ascurrency*Dmestoque.Testoque.Fieldbyname('LUCRATIVIDADE').Ascurrency))/100;
			Dmestoque.Testoque.Fieldbyname('MARGEMSEG').Ascurrency:=Dmestoque.Testoque.Fieldbyname('MARGEMSEG').Ascurrency+((Dmestoque.Testoque.Fieldbyname('MARGEMSEG').Ascurrency*Dmestoque.Testoque.Fieldbyname('PERCMARGSEG').Ascurrency))/100;
           DMESTOQUE.TEstoque.Post;
       End;

		//CALCULANDO VALOR DE VENDA VAREJO A PRAZO  (VENDAVARP)
       DMESTOQUE.TEstoque.Edit;
		Dmestoque.Testoque.Fieldbyname('VENDVARP'). Ascurrency := (Dmestoque.Testoque.Fieldbyname('VENDVARV'). Ascurrency *  ((100 + AcrecPrazoVar) / 100));
		DMESTOQUE.TEstoque.Post;
		//CALCULANDO VALOR DE VENDA ATACADO A VISTA  (VENDATAV)
		F:= Dmestoque.Testoque.Fieldbyname('VENDVARV'). Ascurrency;
       DMESTOQUE.TEstoque.edit;
		Dmestoque.Testoque.Fieldbyname('VENDATAV'). Ascurrency := (F / ((100 + DESCVISTAATAC) / 100));
       DMESTOQUE.TEstoque.post;

		//CALCULANDO VALOR DE VENDA ATACADO A PRAZO  (VENDATAP)
		I := Dmestoque.Testoque.Fieldbyname('VENDATAV'). Ascurrency;
       DMESTOQUE.TEstoque.edit;
		Dmestoque.Testoque.Fieldbyname('VENDATAP'). Ascurrency := (I * ((100 + ACRECPRAZOATAC) / 100));
       DMESTOQUE.TEstoque.post;
	End
   Else Begin
		//CALCULANDO VALOR DE VENDA VAREJO A PRAZO  (VENDAVARP)
       DMESTOQUE.TEstoque.Edit;
		Dmestoque.Testoque.Fieldbyname('VENDVARP'). Ascurrency := (Dmestoque.Testoque.Fieldbyname('VENDVARV'). Ascurrency *  ((100 + AcrecPrazoVar) / 100));
       DMESTOQUE.TEstoque.post;
		//CALCULANDO VALOR DE VENDA ATACADO A VISTA  (VENDATAV)
		F:= Dmestoque.Testoque.Fieldbyname('VENDVARV'). Ascurrency;
       DMESTOQUE.TEstoque.Edit;
		Dmestoque.Testoque.Fieldbyname('VENDATAV'). Ascurrency := (F / ((100 + DESCVISTAATAC) / 100));
       DMESTOQUE.TEstoque.post;
		//CALCULANDO VALOR DE VENDA ATACADO A PRAZO  (VENDATAP)
		I := Dmestoque.Testoque.Fieldbyname('VENDATAV'). Ascurrency;
       DMESTOQUE.TEstoque.Edit;
		Dmestoque.Testoque.Fieldbyname('VENDATAP'). Ascurrency := (I * ((100 + ACRECPRAZOATAC) / 100));
       DMESTOQUE.TEstoque.post;
   	//Como o sistema não deve calcular o valor de venda ele deve informar qual a lucratividade alcançada pelo valor de venda informado pelo usuário
		If XRET=1
       Then Begin//verifica se foi informado um valor de venda para calcular a lucratividade
           try
               DMESTOQUE.TEstoque.Edit;
               DMESTOQUE.TEstoque.FieldByName('LUCRATIVIDADE').AsString:=FormatFloat('###,##0,00',((Dmestoque.Testoque.Fieldbyname('VENDVARV').Ascurrency/B)-1)*100);
               //Dmestoque.Testoque.Fieldbyname('LUCRATIVIDADE').Ascurrency:=((Dmestoque.Testoque.Fieldbyname('VENDVARV').Ascurrency/B)-1)*100;
               DMESTOQUE.TEstoque.post;
           except

           end;
		End
       Else Begin
			FMenu.TIPOAUX:=FormatFloat('###,##0,00',((Dmestoque.Testoque.Fieldbyname('VENDVARV').Ascurrency/B)-1)*100);
       End;
   End;
   If XRET=1
   Then Begin
      //se estiver no form de produtos
	   //CALCULA VALORES EM MOEDA
	   If Dmestoque.Testoque.Fieldbyname('AVVPROVAR').Ascurrency<>0 Then
	   		CalcLuc(Dmestoque.Testoque.Fieldbyname('VENDVARV').AsCurrency, Dmestoque.Testoque.Fieldbyname('AVVPROVAR').AsCurrency, 1)
	   Else
		   	CalcLuc(Dmestoque.Testoque.Fieldbyname('VENDVARV').AsCurrency, DMMACS.TEmpresa.Fieldbyname('AVVPROVAR').AsCurrency, 1);

      //REPETE CALCULO SEM ALIQUOTA
	   If Dmestoque.Testoque.Fieldbyname('AVVPROVAR').Ascurrency<>0 Then
	   		CalcLuc(Dmestoque.Testoque.Fieldbyname('VENDVARV').AsCurrency-((Dmestoque.Testoque.Fieldbyname('VENDVARV').AsCurrency)*Dmestoque.Testoque.Fieldbyname('AVVPROVAR').AsCurrency)/100, 0, 1)
	   Else
		   	CalcLuc(Dmestoque.Testoque.Fieldbyname('VENDVARV').AsCurrency-((Dmestoque.Testoque.Fieldbyname('VENDVARV').AsCurrency)*DMMACS.TEmpresa.Fieldbyname('AVVPROVAR').AsCurrency)/100, 0, 1);
   End;
End;


//calcula valores se a alteração for no valor de compra ou na lucratividade do produto
procedure TFAtualizaValores.Lucrat;
Var
       DescVistaVar, DescVistaAtac, AcrecPrazoVar, AcrecPrazoAtac, ComVistaVar, ComVistaAtac, ComPrazoVar, ComPrazoAtac: Real;
       XVlrAltera : String;
begin
  //inherited;
    //passa valor da edit para uma variavel auxiliar
    XVlrAltera:= EVlrAltera.Text;

    //enquanto não for o final dos produtos a serem alterados
    while not DMESTOQUE.TRel.Eof do
    begin
       FiltraTabela(DMESTOQUE.TEstoque, 'ESTOQUE', 'COD_ESTOQUE', DMESTOQUE.TRel.fieldByName('COD_ESTOQUE').AsString, '');
       //se for igual os valores de codigo da tabela estoque e da relaçao a ser alterada
       DMESTOQUE.TEstoque.Edit;
       DMESTOQUE.TEstoque.FieldByName('LUCRATIVIDADE').AsCurrency:=DMESTOQUE.TRel.FieldByName('LUCRATIVIDADE').AsCurrency+(StrToCurr(XVlrAltera));

       //DMESTOQUE.TRel.Post;
   { If XVlrCompra <> StrToFloat(dbvalorunitario.Text)
    Then Begin
        // valor a vista varejo
        EdVlrAntVistaVarejo.ValueNumeric := EdVlrVarejoVista.ValueNumeric;
        // valor a prazo varejo
        EdVlrAntPrazoVarejo.ValueNumeric := EdVlrVarejoPrazo.ValueNumeric;
        // valor a vista atacado
        EdVlrAntVistaAtac.ValueNumeric := EdVlrAtacadoVista.ValueNumeric;
        // valor a prazo atacado
        EdVlrAntPrazoAtac.ValueNumeric := EdVlrAtacadoPrazo.ValueNumeric;
    End; }

	    //DMESTOQUE.TEstoque.Edit;
	    DMESTOQUE.TEstoque.FieldByName('VALUNIT').AsCurrency:=DMESTOQUE.TEstoque.FieldByName('VLRCOMPSD').AsCurrency+((DMESTOQUE.TEstoque.FieldByName('VLRCOMPSD').AsCurrency*DMESTOQUE.TEstoque.FieldByName('ACRECIMO').AsCurrency)/100);
	    DMESTOQUE.TEstoque.FieldByName('VALUNIT').AsCurrency:=DMESTOQUE.TEstoque.FieldByName('VALUNIT').AsCurrency-((DMESTOQUE.TEstoque.FieldByName('VALUNIT').AsCurrency*DMESTOQUE.TEstoque.FieldByName('DESCONTO').AsCurrency)/100);
  	 If DMMACS.TLoja.FieldByName('CONVERTUNID').AsString<>'1'
  	 Then Begin
       DMESTOQUE.TEstoque.FieldByName('VLRUNITCOMP').AsCurrency:=DMESTOQUE.TEstoque.FieldByName('VALUNIT').AsCurrency;
    End;
        DMESTOQUE.TEstoque.Post;

        DescVistaVar:=DMMacs.TEmpresa.FieldByName('AVVPROVAR').AsCurrency;

        AcrecPrazoVar:=DMMacs.TEmpresa.FieldByName('AVPPROVAR').AsCurrency;

        DescVistaAtac:=DMMacs.TEmpresa.FieldByName('AVVPROAT').AsCurrency;

        AcrecPrazoAtac:=DMMacs.TEmpresa.FieldByName('AVPPROAT').AsCurrency;

        ComVistaVar:=DMMacs.TEmpresa.FieldByName('CVVPROVAR').AsCurrency;

        ComPrazoVar:=DMMacs.TEmpresa.FieldByName('CVPPROVAR').AsCurrency;

        ComVistaAtac:=DMMacs.TEmpresa.FieldByName('CVVPROAT').AsCurrency;

        ComPrazoAtac:=DMMacs.TEmpresa.FieldByName('CVPPROAT').AsCurrency;

    CalculoVenda(DescVistaVar, AcrecPrazoVar, DescVistaAtac, AcrecPrazoAtac, ComVistaVar, ComPrazoVar, ComVistaAtac, ComPrazoAtac, 1, 0);

       //próximo registro
       DMESTOQUE.TRel.Next;
     //DMESTOQUE.TEstoque.Next;
      end;
end;

procedure TFAtualizaValores.VlrCompra;
Var
       DescVistaVar, DescVistaAtac, AcrecPrazoVar, AcrecPrazoAtac, ComVistaVar, ComVistaAtac, ComPrazoVar, ComPrazoAtac: Real;
       XVlrAlteraC : String;
begin
  //inherited;
  //passa o valor da edit para uma variavel auxiliar para efetuar os cálculos
    XVlrAlteraC:= EVlrAltera.Text;

    //enquanto não for o final dos registros dos produtos a serem alterados
    while not DMESTOQUE.TRel.Eof do
    begin
           FiltraTabela(DMESTOQUE.TEstoque, 'ESTOQUE', 'COD_ESTOQUE', DMESTOQUE.TRel.fieldByName('COD_ESTOQUE').AsString, '');
           //se for igual o codigo da tabela estoque com o codigo da relação a ser alterada, efetua os cálculos
           DMESTOQUE.TEstoque.Edit;
           DMESTOQUE.TEstoque.FieldByName('VALUNIT').AsCurrency:=DMESTOQUE.TRel.FieldByName('VALUNIT').AsCurrency+(DMESTOQUE.TRel.FieldByName('VALUNIT').AsCurrency*(StrToCurr(XVlrAlteraC))/100);
           DMESTOQUE.TEstoque.FieldByName('VLRUNITCOMP').AsCurrency:=DMESTOQUE.TRel.FieldByName('VLRUNITCOMP').AsCurrency+(DMESTOQUE.TRel.FieldByName('VLRUNITCOMP').AsCurrency*(StrToCurr(XVlrAlteraC))/100);
           DMESTOQUE.TEstoque.FieldByName('VLRCOMPSD').AsCurrency:=DMESTOQUE.TRel.FieldByName('VLRCOMPSD').AsCurrency+(DMESTOQUE.TRel.FieldByName('VLRCOMPSD').AsCurrency*(StrToCurr(XVlrAlteraC))/100);

//      end;
    //end;
       //DMESTOQUE.TRel.Post;
   { If XVlrCompra <> StrToFloat(dbvalorunitario.Text)
    Then Begin
        // valor a vista varejo
        EdVlrAntVistaVarejo.ValueNumeric := EdVlrVarejoVista.ValueNumeric;
        // valor a prazo varejo
        EdVlrAntPrazoVarejo.ValueNumeric := EdVlrVarejoPrazo.ValueNumeric;
        // valor a vista atacado
        EdVlrAntVistaAtac.ValueNumeric := EdVlrAtacadoVista.ValueNumeric;
        // valor a prazo atacado
        EdVlrAntPrazoAtac.ValueNumeric := EdVlrAtacadoPrazo.ValueNumeric;
    End; }

	// DMESTOQUE.TEstoque.Edit;
	 DMESTOQUE.TEstoque.FieldByName('VALUNIT').AsCurrency:=DMESTOQUE.TEstoque.FieldByName('VLRCOMPSD').AsCurrency+((DMESTOQUE.TEstoque.FieldByName('VLRCOMPSD').AsCurrency*DMESTOQUE.TEstoque.FieldByName('ACRECIMO').AsCurrency)/100);
	 DMESTOQUE.TEstoque.FieldByName('VALUNIT').AsCurrency:=DMESTOQUE.TEstoque.FieldByName('VALUNIT').AsCurrency-((DMESTOQUE.TEstoque.FieldByName('VALUNIT').AsCurrency*DMESTOQUE.TEstoque.FieldByName('DESCONTO').AsCurrency)/100);
	// DMESTOQUE.TEstoque.Post;
  	 If DMMACS.TLoja.FieldByName('CONVERTUNID').AsString<>'1'
  	 Then Begin
  		 //DMESTOQUE.TEstoque.Edit;
       DMESTOQUE.TEstoque.FieldByName('VLRUNITCOMP').AsCurrency:=DMESTOQUE.TEstoque.FieldByName('VALUNIT').AsCurrency;

    End;
       DMESTOQUE.TEstoque.Post;

        DescVistaVar:=DMMacs.TEmpresa.FieldByName('AVVPROVAR').AsCurrency;

        AcrecPrazoVar:=DMMacs.TEmpresa.FieldByName('AVPPROVAR').AsCurrency;

        DescVistaAtac:=DMMacs.TEmpresa.FieldByName('AVVPROAT').AsCurrency;

        AcrecPrazoAtac:=DMMacs.TEmpresa.FieldByName('AVPPROAT').AsCurrency;

        ComVistaVar:=DMMacs.TEmpresa.FieldByName('CVVPROVAR').AsCurrency;

        ComPrazoVar:=DMMacs.TEmpresa.FieldByName('CVPPROVAR').AsCurrency;

        ComVistaAtac:=DMMacs.TEmpresa.FieldByName('CVVPROAT').AsCurrency;

        ComPrazoAtac:=DMMacs.TEmpresa.FieldByName('CVPPROAT').AsCurrency;


    CalculoVenda(DescVistaVar, AcrecPrazoVar, DescVistaAtac, AcrecPrazoAtac, ComVistaVar, ComPrazoVar, ComVistaAtac, ComPrazoAtac, 1, 0);

       //próximo registro
       DMESTOQUE.TRel.Next;
      end;
end;

//calculo de lucros do produto
Procedure CalcLuc(XVALVEND: REAL; XDESC: REAL; QTD: REAL);
Var
	H, N, O: Real;
BEGIN
   //Recebe o valor de venda com descontos
   If DMESTOQUE.TEstoque.FieldByName('BONIFICACAO').AsCurrency<>0 Then
   	H:=((DMESTOQUE.TEstoque.fieldByName('VLRBONIFIC').AsCurrency*QTD)-((DMESTOQUE.TEstoque.fieldByName('VLRBONIFIC').AsCurrency*XDESC)/100))
   Else
   	H:=((DMESTOQUE.TEstoque.fieldByName('VENDVARV').AsCurrency*QTD)-((DMESTOQUE.TEstoque.fieldByName('VENDVARV').AsCurrency*XDESC)/100));
   //Retirar os valores de custo da venda
   AlxIMPFED:=(H*DMMACS.TEmpresa.FieldByName('IMPFED').AsCurrency)/100;
   AlxIMPEST:=(H*DMMACS.TEmpresa.FieldByName('IMPEST').AsCurrency)/100;
   AlxOUTROS:=(H*DMESTOQUE.TEstoque.FieldByName('OUTROS').AsCurrency)/100;
   If DMESTOQUE.TEstoque.FieldByName('CVVPROVAR').AsString='' Then
	   AlxCOMISS:=(H*DMMACS.TEmpresa.FieldByName('CVVPROVAR').AsCurrency)/100
   Else
	   AlxCOMISS:=(H*DMESTOQUE.TEstoque.FieldByName('CVVPROVAR').AsCurrency)/100;

//   ALXLUCREAL:=(H-(H-((H*DMMACS.TEmpresa.FieldByName('IMPFED').AsCurrency)/100)))+(H-(H-((H*DMMACS.TEmpresa.FieldByName('IMPEST').AsCurrency)/100)))+(H-(H-((H*DMESTOQUE.TEstoque.FieldByName('OUTROS').AsCurrency)/100)))+AlxCOMISS;
   If DMESTOQUE.TEstoque.FieldByName('BONIFICACAO').AsCurrency<>0
   Then Begin
		ALXLUCREAL:=(H*DMESTOQUE.TEstoque.FieldByName('BONIFICACAO').AsCurrency)/100;
		ALXLUCBONIFIC:=(H*DMESTOQUE.TEstoque.FieldByName('BONIFICACAO').AsCurrency)/100;
   End
   Else Begin
		ALXLUCREAL:=(H-(AlxIMPEST+AlxIMPFED+AlxOUTROS+AlxCOMISS))-DMESTOQUE.TEstoque.fieldbyname('VALREP').AsCurrency;
		ALXLUCBONIFIC:=ALXLUCREAL-((ALXLUCREAL*DMESTOQUE.TEstoque.fieldbyname('BONIFICACAO').AsCurrency)/100);
   End;
   //CALCULANDO TOTAL DE DESCONTOS + IMPOSTOS
   AlxDESCIMP:=(AlxIMPFED+AlxIMPEST+AlxCOMISS+AlxOUTROS+((H*QTD)-H));

   //CALCULANDO O LUCRO BRUTO
   AlxLUCBRUTO:=H-(AlxIMPFED+AlxIMPEST+AlxCOMISS+AlxOUTROS);

   //CALCULANDO OS DESCONTOS DOS VALORES DE REPOSIÇÃO
   N:=(H-(AlxIMPFED+AlxIMPEST+AlxCOMISS+AlxOUTROS)-((Dmestoque.Testoque.Fieldbyname('VALUNIT').ascurrency*QTD) * (Dmestoque.TSubprod.Fieldbyname('IPIPROD').ascurrency) /100));
	O:=N-((Dmestoque.Testoque.Fieldbyname('VALUNIT').ascurrency*QTD) * (Dmestoque.TEstoque.Fieldbyname('FRETE').ascurrency) /100);
	AlxDESCVALREP:=O-((Dmestoque.Testoque.Fieldbyname('VALUNIT').ascurrency*QTD) * (Dmestoque.TSubprod.Fieldbyname('EMBPROD').ascurrency) /100);

   //CALCULANDO A LUCRATIVIDADE DO PRODUTO
//   AlxLUCMOE:=(AlxDESCVALREP-(Dmestoque.Testoque.Fieldbyname('VALUNIT').ascurrency*QTD));
//   AlxLUCPER:=(AlxLUCMOE*100)/AlxDESCVALREP;
	try
   If DMESTOQUE.TEstoque.FieldByName('BONIFICACAO').AsCurrency<>0
   Then Begin
	   AlxLUCMOE:= (XVALVEND*DMESTOQUE.TEstoque.FieldByName('BONIFICACAO').AsCurrency)/100;
	   AlxLUCPER:=(AlxLUCMOE*100)/((QTD*(DMESTOQUE.TEstoque.fieldbyname('VALREP').AsCurrency/DMESTOQUE.TEstoque.fieldbyname('COEFDIV').AsCurrency))-((QTD*(DMESTOQUE.TEstoque.fieldbyname('VALREP').AsCurrency/DMESTOQUE.TEstoque.fieldbyname('COEFDIV').AsCurrency))*DMESTOQUE.TEstoque.fieldbyname('AVVPROVAR').AsCurrency)/100);
   End
   Else Begin
	   AlxLUCMOE:= XVALVEND-((QTD*(DMESTOQUE.TEstoque.fieldbyname('VALREP').AsCurrency/DMESTOQUE.TEstoque.fieldbyname('COEFDIV').AsCurrency))-((QTD*(DMESTOQUE.TEstoque.fieldbyname('VALREP').AsCurrency/DMESTOQUE.TEstoque.fieldbyname('COEFDIV').AsCurrency))*DMESTOQUE.TEstoque.fieldbyname('AVVPROVAR').AsCurrency)/100);
	   AlxLUCPER:=(AlxLUCMOE*100)/((QTD*(DMESTOQUE.TEstoque.fieldbyname('VALREP').AsCurrency/DMESTOQUE.TEstoque.fieldbyname('COEFDIV').AsCurrency))-((QTD*(DMESTOQUE.TEstoque.fieldbyname('VALREP').AsCurrency/DMESTOQUE.TEstoque.fieldbyname('COEFDIV').AsCurrency))*DMESTOQUE.TEstoque.fieldbyname('AVVPROVAR').AsCurrency)/100);
   End;
   Except
	   AlxLUCMOE:=0;
	   AlxLUCPER:=0;
   End;
//   AlxLUCPER:= (XVALVEND /(((QTD*(DMESTOQUE.TEstoque.fieldbyname('VALREP').AsCurrency/DMESTOQUE.TEstoque.fieldbyname('COEFDIV').AsCurrency))-((QTD*(DMESTOQUE.TEstoque.fieldbyname('VALREP').AsCurrency/DMESTOQUE.TEstoque.fieldbyname('COEFDIV').AsCurrency))*DMESTOQUE.TEstoque.fieldbyname('AVVPROVAR').AsCurrency)/100)-1)*100);

END;



//atualiza valores considerando o valor de venda 
procedure TFAtualizaValores.VlrVarejoVista;

Var
    DescVistaVar, DescVistaAtac, AcrecPrazoVar, AcrecPrazoAtac, ComVistaVar, ComVistaAtac, ComPrazoVar, ComPrazoAtac: Real;

    XVlrAlteraV : String;
begin
 // inherited;
    while not DMESTOQUE.TRel.Eof do
    begin
    //passa o valor da edit para a variavel auxiliar para efetuar os calculos
    XVlrAlteraV:= EVlrAltera.Text;

    //enquanto não for o final dos produtos a serem alterados
    while not DMESTOQUE.TRel.Eof do
    begin
               FiltraTabela(DMESTOQUE.TEstoque, 'ESTOQUE', 'COD_ESTOQUE', DMESTOQUE.TRel.fieldByName('COD_ESTOQUE').AsString, '');
               //se o codigo da tabela estoque for igual o codigo do registro relação a ser alterada
               DMESTOQUE.TEstoque.Edit;
               DMESTOQUE.TEstoque.FieldByName('VENDVARV').AsCurrency:=DMESTOQUE.TRel.FieldByName('VENDVARV').AsCurrency+(DMESTOQUE.TRel.FieldByName('VENDVARV').AsCurrency*(StrToCurr(XVlrAlteraV))/100);
               DMESTOQUE.TEstoque.Post;

        DescVistaVar:=DMMacs.TEmpresa.FieldByName('AVVPROVAR').AsCurrency;

        AcrecPrazoVar:=DMMacs.TEmpresa.FieldByName('AVPPROVAR').AsCurrency;

        DescVistaAtac:=DMMacs.TEmpresa.FieldByName('AVVPROAT').AsCurrency;

        AcrecPrazoAtac:=DMMacs.TEmpresa.FieldByName('AVPPROAT').AsCurrency;

        ComVistaVar:=DMMacs.TEmpresa.FieldByName('CVVPROVAR').AsCurrency;

        ComPrazoVar:=DMMacs.TEmpresa.FieldByName('CVPPROVAR').AsCurrency;

        ComVistaAtac:=DMMacs.TEmpresa.FieldByName('CVVPROAT').AsCurrency;

        ComPrazoAtac:=DMMacs.TEmpresa.FieldByName('CVPPROAT').AsCurrency;

        CalculoVenda(DescVistaVar, AcrecPrazoVar, DescVistaAtac, AcrecPrazoAtac, ComVistaVar, ComPrazoVar, ComVistaAtac, ComPrazoAtac, 1, 1);


    // se o valor que existia antes e o valor que tem agora for diferente entao todos os edits sao atualizados
	{ If XAuxValor <> EdVlrVarejoVista.ValueNumeric
    Then Begin
       EdVlrVarejoPrazo.ValueNumeric  := (EdVlrVarejoVista.ValueNumeric *  ((100 + DMESTOQUE.TEstoque.FieldByName('AVPPROVAR').AsCurrency) / 100));
       EdVlrAtacadoVista.ValueNumeric := EdVlrVarejoVista.ValueNumeric -  ((DMESTOQUE.TEstoque.FieldByName('AVVPROAT').AsCurrency*EdVlrVarejoVista.ValueNumeric) / 100);
       EdVlrAtacadoPrazo.ValueNumeric := EdVlrAtacadoVista.ValueNumeric +  ((DMESTOQUE.TEstoque.FieldByName('AVPPROAT').AsCurrency*EdVlrAtacadoVista.ValueNumeric) / 100);
    End; }
       DMESTOQUE.TRel.Next;
       DMESTOQUE.TEstoque.Next;
    end;
end;
end;


{Procedure Utilizada p/ Abrir o Formulario}
Function AbrirForm(Tipo:TComponentClass; Formulario:TForm; TypeForm: Integer):String;
	Begin
       // quando nao passa por essa condição eh pq o formulario esta aberto. Pra isso vah em Project - Options - e remover o formulario do lado esquerdo
	    If not Assigned(Formulario)
	    Then Begin
             Application.CreateForm(Tipo, Formulario);
             If VerifAcessForm(Formulario.Name)=True
             Then Begin
                  Try
                     Case TypeForm Of
                          0: Begin
                             Formulario.Tag:=10;//'CADASTRO';
                             Formulario.ShowModal;
                             End;

                          1: Begin
                             Formulario.Tag:=20;//'SELECIONAR';
                             Formulario.ShowModal;
                             End;
                     End;
                     If FMenu.SelectedForm=True Then //Se o formulario ativo levou o evento click do botão selecionar
                        AbrirForm:='Selected'
                     Else
                         AbrirForm:='NotSelected';
                  Finally
                  		If TypeForm<>3
                       Then Begin
                         Formulario.Free;
	                      Formulario:=nil;
                       End;
                  End;
             End
             Else Begin
                  Mensagem('Acesso ao Formulário Bloqueado', 'O usuário informado no momento do acesso ao sistema, não possui permissão para acessar esta tela!', '', 1, 1, False, 'a');
             End;
	    end
	    else Begin
             If VerifAcessForm(Formulario.Name)=True
             Then Begin
             	 Try
	                Formulario.ShowModal;
				 Except
		            Application.CreateForm(Tipo, Formulario);
	                Formulario.ShowModal;
                End;
             End
             Else Begin
                Mensagem('Acesso ao Formulário Bloqueado', 'O usuário informado no momento do acesso ao sistema, não possui permissão para acessar esta tela!', '', 1, 1, False, 'a');
			  End;
        End;
End;

    //Função utilizada para verificar se o usuário em questão pode acessar o formulario passado
    function VerifAcessForm(Formu: String): Boolean;
    Begin
        Result:=True;
    End;



//abre form de busca de grupo de produto inicial
procedure TFAtualizaValores.FrmGrupo1BTNOPENClick(Sender: TObject);
begin
  inherited;
  //FrmGrupo1.BTNOPENClick(Sender);
  //FiltraTabela(DMESTOQUE.TGrupo, 'GRUPOPROD', '', '', '');

    If AbrirForm(TFCadGrupo, FCadGrupo, 1)='Selected'
    Then Begin
   	FrmGrupo1.Repaint;
       XGRUPO1:=DMESTOQUE.TGrupo.FieldByName('COD_INTERNO').AsString;
       FrmGrupo1.EdDescricao.Text:=DMESTOQUE.TGrupo.FieldByName('DESCRICAO').AsString;
       FrmGrupo1.EDCodigo.text:=DMESTOQUE.TGrupo.FieldByName('COD_INTERNO').AsString;
    End;
end;

//limpa campo de grupo de produto inicial
procedure TFAtualizaValores.FrmGrupo1BTNMINUSClick(Sender: TObject);
begin
  inherited;
	XGRUPO1:='0';
   FrmGrupo1.Repaint;
   FrmGrupo1.EDCodigo.TEXT:='';
   FrmGrupo1.EdDescricao.TEXT:='';
end;

//abre form de busca de produto final
procedure TFAtualizaValores.FrmGrupo2BTNOPENClick(Sender: TObject);
begin
   inherited;
	//FiltraTabela(DMESTOQUE.TGrupo, 'GRUPOPROD', '', '', '');

    If AbrirForm(TFCadGrupo, FCadGrupo, 1)='Selected'
    Then Begin
   	FrmGrupo2.Repaint;    
       XGRUPO2:=DMESTOQUE.TGrupo.FieldByName('COD_INTERNO').AsString;
       FrmGrupo2.EdDescricao.Text:=DMESTOQUE.TGrupo.FieldByName('DESCRICAO').AsString;
       FrmGrupo2.EDCodigo.text:=DMESTOQUE.TGrupo.FieldByName('COD_INTERNO').AsString;
    End;
end;

//limpa campo de grupo de produto final
procedure TFAtualizaValores.FrmGrupo2BTNMINUSClick(Sender: TObject);
begin
  inherited;
	XGRUPO2:='0';
   FrmGrupo2.EDCodigo.TEXT:='';
   FrmGrupo2.EdDescricao.TEXT:='';
   FrmGrupo2.Repaint;
end;

//abre form de subgrupo de produto inicial
procedure TFAtualizaValores.FrmSubGrupo1BTNOPENClick(Sender: TObject);
begin
  inherited;
  //	filtraTabela(DMESTOQUE.TSubgru, 'SUBGRUPOPROD', '', '', '');

    If AbrirForm(TFCadSUBGrupo, FCADSUBGrupo, 1)='Selected'
    Then Begin
   	FrmSubGrupo1.Repaint;    
       XSUBGRUPO1:=DMESTOQUE.TSUBGru.FieldByName('COD_INTERNO').AsString;
       FrmSubGrupo1.EdDescricao.Text:=DMESTOQUE.TSUBGru.FieldByName('DESCRICAO').AsString;
       FrmSubGrupo1.EDCodigo.text:=DMESTOQUE.TSUBGru.FieldByName('COD_INTERNO').AsString;
    End;

end;

//limpa campos de subproduto inicial
procedure TFAtualizaValores.FrmSubGrupo1BTNMINUSClick(Sender: TObject);
begin
  inherited;
	XSUBGRUPO1:='0';
   FrmSubGrupo1.EDCodigo.TEXT:='';
   FrmSubGrupo1.EdDescricao.TEXT:='';
   FrmSubGrupo1.Repaint;
end;

//abre form de subproduto final
procedure TFAtualizaValores.FrmSubGrupo2BTNOPENClick(Sender: TObject);
begin
  inherited;
	//FiltraTabela(DMESTOQUE.TSubgru, 'SUBGRUPOPROD', '', '', '');

    If AbrirForm(TFCadSUBGrupo, FCadSUBGruPO, 1)='Selected'
    Then Begin
   	FrmSubGrupo2.Repaint;    
       XSUBGRUPO2:=DMESTOQUE.TSUBGru.FieldByName('COD_INTERNO').AsString;
       FrmSubGrupo2.EdDescricao.Text:=DMESTOQUE.TSUBGru.FieldByName('DESCRICAO').AsString;
       FrmSubGrupo2.EDCodigo.text:=DMESTOQUE.TSUBGru.FieldByName('COD_INTERNO').AsString;
    End;

end;

//limpa campo de subproduto final
procedure TFAtualizaValores.FrmSubGrupo2BTNMINUSClick(Sender: TObject);
begin
  inherited;
	XSUBGRUPO2:='0';
   FrmSubGrupo2.EDCodigo.TEXT:='';
   FrmSubGrupo2.EdDescricao.TEXT:='';
   FrmSubGrupo2.Repaint;
end;

//abre form de produto inicial
procedure TFAtualizaValores.FrmProduto1BTNOPENClick(Sender: TObject);
begin
  inherited;
	//filtraTabela(DMESTOQUE.WProduto, 'VWPRODUTO', '', '', ' WHERE COD_LOJA='+FMenu.LCODLOJA.Caption+' ORDER BY COD_INTERNO');

   If AbrirForm(TFProduto, FProduto, 1)='Selected'
   Then Begin
      FrmProduto1.Repaint;   
	   XPRODUTO1:=DMESTOQUE.WProduto.FieldByName('COD_INTERNO').AsString;
      FrmProduto1.EdDescricao.Text:=DMESTOQUE.WProduto.FieldByName('PRODUTO').AsString;
      FrmProduto1.EDCodigo.text:=DMESTOQUE.WProduto.FieldByName('COD_INTERNO').AsString;
   End;

end;

//limpa campos de produto inicial
procedure TFAtualizaValores.FrmProduto1BTNMINUSClick(Sender: TObject);
begin
  inherited;
	XPRODUTO1:='0';
   FrmProduto1.EDCodigo.TEXT:='';
   FrmProduto1.EdDescricao.TEXT:='';
   FrmProduto1.Repaint;
end;

//abre form de busca de produto final
procedure TFAtualizaValores.FrmProduto2BTNOPENClick(Sender: TObject);
begin
  inherited;
	//filtraTabela(DMESTOQUE.WProduto, 'VWPRODUTO', '', '', ' WHERE COD_LOJA='+FMenu.LCODLOJA.Caption+' ORDER BY COD_INTERNO');

   If AbrirForm(TFProduto, FProduto,1)='Selected'
   Then Begin
	   XPRODUTO2:=DMESTOQUE.WProduto.FieldByName('COD_INTERNO').AsString;
      FrmProduto2.EdDescricao.Text:=DMESTOQUE.WProduto.FieldByName('PRODUTO').AsString;
      FrmProduto2.EDCodigo.text:=DMESTOQUE.WProduto.FieldByName('COD_INTERNO').AsString;
      FrmProduto2.Repaint;      
   End;
end;

//limpa campos de produto final
procedure TFAtualizaValores.FrmProduto2BTNMINUSClick(Sender: TObject);
begin
  inherited;
 // FrmProduto2.BTNMINUSClick(Sender);
 	XPRODUTO2:='0';
   FrmProduto2.EDCodigo.TEXT:='';
   FrmProduto2.EdDescricao.TEXT:='';
   FrmProduto2.Repaint;
end;

//abre form de subproduto inicial
procedure TFAtualizaValores.FrmSubProduto1BTNOPENClick(Sender: TObject);
begin
  inherited;
//  FrmSubProduto1.BTNOPENClick(Sender);
	//filtraTabela(DMESTOQUE.WSimilar, 'VWSIMILAR', '', '', ' WHERE COD_LOJA='+FMenu.LCODLOJA.Caption+' ORDER BY COD_INTERNO');

   If AbrirForm(TFProduto, FProduto, 1)='Selected'
   Then Begin
	   XSUBPROD1:=DMESTOQUE.WSIMILAR.FieldByName('DESCRICAO').AsString;
      FrmSubProduto1.EdDescricao.Text:=DMESTOQUE.WSimilar.FieldByName('DESCRICAO').AsString;
      FrmSubProduto1.EDCodigo.text:=DMESTOQUE.WSimilar.FieldByName('COD_INTERNO').AsString;
      FrmSubProduto1.Repaint;      
   End;
end;

//limpa campos de subproduto inicial
procedure TFAtualizaValores.FrmSubProduto1BTNMINUSClick(Sender: TObject);
begin
  inherited;
	XSUBPROD1:='0';
   FrmSubProduto1.EDCodigo.TEXT:='';
   FrmSubProduto1.EdDescricao.TEXT:='';
   FrmSubProduto1.Repaint;
end;

//abre form de busca de subproduto final
procedure TFAtualizaValores.FrmSubProduto2BTNOPENClick(Sender: TObject);
begin
  inherited;
	//filtraTabela(DMESTOQUE.WSimilar, 'VWSIMILAR', '', '', ' WHERE COD_LOJA='+FMenu.LCODLOJA.Caption+' ORDER BY COD_INTERNO');

   If AbrirForm(TFProduto, FProduto, 1)='Selected'
   Then Begin
	   XSUBPROD2:=DMESTOQUE.WSIMILAR.FieldByName('DESCRICAO').AsString;
      FrmSubProduto2.EdDescricao.Text:=DMESTOQUE.WSimilar.FieldByName('DESCRICAO').AsString;
      FrmSubProduto2.EDCodigo.text:=DMESTOQUE.WSimilar.FieldByName('COD_INTERNO').AsString;
      FrmSubProduto2.Repaint;
   End;

end;

//limpa campos de subproduto final
procedure TFAtualizaValores.FrmSubProduto2BTNMINUSClick(Sender: TObject);
begin
  inherited;
	XSUBPROD2:='0';
   FrmSubProduto2.EDCodigo.TEXT:='';
   FrmSubProduto2.EdDescricao.TEXT:='';
   FrmSubProduto2.Repaint;
end;

procedure TFAtualizaValores.FormActivate(Sender: TObject);
begin
  inherited;
   Caption:='Atualizar Valores';  
  	//PASSA TODAS AS MARCAS EXISTENTES EM CADASTRO PARA AS COMBOBOX
   DMESTOQUE.Alx.Close;
   DMESTOQUE.Alx.SQL.Clear;
   DMESTOQUE.Alx.SQL.Add('SELECT Distinct(subproduto.marca) FROM subproduto ORDER BY subproduto.marca');
   DMESTOQUE.Alx.Open;
	DMESTOQUE.Alx.First;

   If XCOMISSAO = 1
   Then Begin
       LTextoBusca1.Visible:=false;
       LTextoBusca2.Visible:=False;
       EVlrAltera.Visible:=False;
       LAltera.Visible:=False;
       CBMARCAINI.Visible:=False;
       CBMARCAFIM.Visible:=False;
       RGCampo.Visible:=False;
       Shape2.Visible:=False;
       CBMARCAINIC.Items.Clear;
       CBMARCAFINAL.Items.Clear;
       While not DMESTOQUE.Alx.Eof do
       Begin
           CBMARCAINIC.Items.Add(DMESTOQUE.Alx.FieldByName('MARCA').AsString);
           CBMARCAFINAL.Items.Add(DMESTOQUE.Alx.FieldByName('MARCA').AsString);
           DMESTOQUE.Alx.Next;
       End;
       
       PComissao.Visible:=True;
       PComissao.BringToFront;
       PComissao.Repaint;
   end
   else begin

     CBMARCAINI.Items.Clear;
     CBMARCAFIM.Items.Clear;

     While not DMESTOQUE.Alx.Eof do
     Begin
         CBMARCAINI.Items.Add(DMESTOQUE.Alx.FieldByName('MARCA').AsString);
         CBMARCAFIM.Items.Add(DMESTOQUE.Alx.FieldByName('MARCA').AsString);
         DMESTOQUE.Alx.Next;
     End;

       //marca lucratividade no radiogroup
       RGCampo.ItemIndex:= 0;
   end;
end;

procedure TFAtualizaValores.BtVisualizarClick(Sender: TObject);
begin
  inherited;

        IF CBDVL.Checked = true
        then begin
            DMMACS.TLoja.Edit;
            DMMACS.TLoja.FieldByName('TMP1').AsString:='Saídas/Relatórios/Comissão/Comissão por Produtos';
            DMMACS.TLoja.FieldByName('TMP2').AsString:='Comissão de Produtos por Vendedor';
            DMMACS.TLoja.Post;
            DMMACS.Transaction.CommitRetaining;
        end
        else begin
            DMMACS.TLoja.Edit;
            DMMACS.TLoja.FieldByName('TMP1').AsString:='Saídas/Relatórios/Comissão/Comissão por Produtos';
            DMMACS.TLoja.FieldByName('TMP2').AsString:='Comissão paga de Itens Devolvidos';
            DMMACS.TLoja.Post;
            DMMACS.Transaction.CommitRetaining;
        end;

        DMESTOQUE.TRel.Close;
        DMESTOQUE.TRel.SQL.Clear;
        DMESTOQUE.TRel.SQL.Add('select itenspedven.cod_pedven, itenspedven.cod_estoque, itenspedven.cod_funcionario,');
        DMESTOQUE.TRel.SQL.Add('itenspedven.qtdeprod, itenspedven.valortotal, itenspedven.valunit, itenspedven.data,');
        DMESTOQUE.TRel.SQL.Add('itenspedven.comissao AS VALORCOMISSAO, funcionario.cod_func AS CODIGOFUNC, pedvenda.numped,');
        DMESTOQUE.TRel.SQL.Add('funcionario.cod_pessoa AS FUNCPESSOA, pessoa.cod_pessoa, pessoa.nome, subproduto.marca,');
        DMESTOQUE.TRel.SQL.Add('estoque.cod_estoque AS CODIGOPROD, estoque.cod_subprod, subproduto.cod_subproduto, pedvenda.desconto,');
        DMESTOQUE.TRel.SQL.Add('subproduto.descricao, subproduto.contrint, subproduto.cod_produto, estoque.cod_loja,');
        DMESTOQUE.TRel.SQL.Add('produto.cod_produto as CODIGOPRODUTO, produto.cod_subgrupoprod, produto.cod_grupoprod,');
        DMESTOQUE.TRel.SQL.Add('grupoprod.cod_grupoprod as PRODUTOGRUPO, subgrupoprod.cod_subgrupoprod as SUBGRUPOPRODUTO');
        DMESTOQUE.TRel.SQL.Add('from itenspedven');
        DMESTOQUE.TRel.SQL.Add('left join funcionario on itenspedven.cod_funcionario = funcionario.cod_func');
        DMESTOQUE.TRel.SQL.Add('left join pessoa on funcionario.cod_pessoa = pessoa.cod_pessoa');
        DMESTOQUE.TRel.SQL.Add('left join estoque on itenspedven.cod_estoque = estoque.cod_estoque');
        DMESTOQUE.TRel.SQL.Add('left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto');
        DMESTOQUE.TRel.SQL.Add('left join produto on subproduto.cod_produto = produto.cod_produto');
        DMESTOQUE.TRel.SQL.Add('left join grupoprod on produto.cod_grupoprod = grupoprod.cod_grupoprod');
        DMESTOQUE.TRel.SQL.Add('left join subgrupoprod on produto.cod_subgrupoprod = subgrupoprod.cod_subgrupoprod');
        DMESTOQUE.TRel.SQL.Add('left join pedvenda on itenspedven.cod_pedven = pedvenda.cod_pedvenda');
        DMESTOQUE.TRel.SQL.Add('Where (ESTOQUE.COD_LOJA=:CODLOJA)');
        if CBDVL.Checked = false
        then begin
            DMESTOQUE.TRel.SQL.Add('AND itenspedven.operacao = :TIPO1');
            DMESTOQUE.TRel.SQL.Add('AND itenspedven.operacao = :TIPO2');
            DMESTOQUE.TRel.ParamByName('TIPO1').AsString:='VND';
            DMESTOQUE.TRel.ParamByName('TIPO2').AsString:='TRC';
        end
        else begin
           DMESTOQUE.TRel.SQL.Add('AND itenspedven.operacao = :TIPO1');
           DMESTOQUE.TRel.ParamByName('TIPO1').AsString:='DVL';
        end;
        DMESTOQUE.TRel.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;

        FiltroGrupo;
        FiltroSubGrupo;
        FiltroProduto;
        FiltroSubProduto;
        FiltroMarcaRel;
        FiltroData;
        FiltroVend;

        DMESTOQUE.TRel.SQL.Add('order by pessoa.nome, pedvenda.numped');
        DMESTOQUE.TRel.Open;

        if not DMESTOQUE.TRel.IsEmpty
        then begin
           FsRelAtu.LoadFromFile('C:\MZR\MACS\Rel\FrfComisItensPedVenda.frf');
           FsRelAtu.ShowReport;
        end
        else begin
           Mensagem('INFORMAÇÃO', 'O relatório retornou vazio!', '', 1, 1, false, 'I');
        end;
    
end;

Procedure TFAtualizaValores.FiltroData;
Begin
   if CBDVL.Checked = False
   then begin
       If (EdDataIni.Text<>'  /  /    ') AND (EdDataFim.Text<>'  /  /    ')
       Then Begin
           DMESTOQUE.TRel.SQL.Add(' AND ((itenspedven.data>=:DATA1) And (itenspedven.data<=:DATA2))');
           DMESTOQUE.TRel.SQL.Text;
           DMESTOQUE.TRel.ParamByName('DATA1').AsDate:=StrToDAte(EdDataIni.Text);
           DMESTOQUE.TRel.ParamByName('DATA2').AsDate:=StrToDAte(EdDataFim.Text);
        End;
    end
    else begin
       If (EdDataIni.Text<>'  /  /    ') AND (EdDataFim.Text<>'  /  /    ')
       Then Begin
           DMESTOQUE.TRel.SQL.Add(' AND ((itenspedven.dttroca>=:DATA1) And (itenspedven.dttroca<=:DATA2))');
           DMESTOQUE.TRel.SQL.Text;
           DMESTOQUE.TRel.ParamByName('DATA1').AsDate:=StrToDAte(EdDataIni.Text);
           DMESTOQUE.TRel.ParamByName('DATA2').AsDate:=StrToDAte(EdDataFim.Text);
        End;
    end;
end;

Procedure TFAtualizaValores.FiltroVend;
Begin
	IF (XVENDINI<>'') and (XVENDFIM<>'')
   Then Begin//se forem informados as duas pessoas a sql deve ser feita entre elas
   	DMESTOQUE.TRel.SQL.Add(' AND (PESSOA.NOME Between :PES1 And :PES2)');
      	DMESTOQUE.TRel.ParamByName('PES1').AsString:=XVENDINI;
      	DMESTOQUE.TRel.ParamByName('PES2').AsString:=XVENDFIM;
   End;
End;






procedure TFAtualizaValores.FrmVendIniBTNOPENClick(Sender: TObject);
begin
  inherited;
  FrmVendIni.BTNOPENClick(Sender);
  	filtraTabela(DMPESSOA.VWFuncionario, 'VWFUNCIONARIO', '', '', '');
   If AbrirForm(TFFuncionario, FFuncionario, 1)='Selected'
   Then Begin
   	XVENDINI:=DMPESSOA.VWFuncionario.FieldByName('NOME').AsString;
      	FrmVendIni.EdDescricao.Text:=DMPESSOA.VWFuncionario.FieldByName('NOME').AsString;
      	FrmVendIni.EDCodigo.text:=DMPESSOA.VWFuncionario.FieldByName('COD_INTERNO').AsString;
   End;


end;

procedure TFAtualizaValores.FrmVendFimBTNOPENClick(Sender: TObject);
begin
  inherited;
  FrmVendFim.BTNOPENClick(Sender);
	filtraTabela(DMPESSOA.VWFuncionario, 'VWFUNCIONARIO', '', '', '');
   If AbrirForm(TFFuncionario, FFuncionario, 1)='Selected'
   Then Begin
  		XVENDFIM:=DMPESSOA.VWFuncionario.FieldByName('NOME').AsString;
      	FrmVendFim.EdDescricao.Text:=DMPESSOA.VWFuncionario.FieldByName('NOME').AsString;
      	FrmVendFim.EDCodigo.text:=DMPESSOA.VWFuncionario.FieldByName('COD_INTERNO').AsString;
   End;

end;

// jonathan - Dia 30/04/2009 - adicionando comando de enter nos campos da tela.

procedure TFAtualizaValores.FrmGrupo1EDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
   FrmGrupo1.Repaint;
	If Key = #13
   Then Begin
   	If FrmGrupo1.EDCodigo.Text<>''
       Then Begin
	 	   If FiltraTabela(DMESTOQUE.TGrupo, 'GRUPOPROD', 'COD_INTERNO', FrmGrupo1.EDCodigo.Text, '')=True
	       Then Begin //Slecionou o registro procurado
	       		XGRUPO1:=DMESTOQUE.TGrupo.FieldByName('COD_INTERNO').AsString;
           	FrmGrupo1.EDCodigo.text:=DMESTOQUE.TGrupo.FieldByName('COD_INTERNO').AsString;
           	FrmGrupo1.EdDescricao.Text:=DMESTOQUE.TGrupo.FieldByName('DESCRICAO').AsString;
          End
          Else Begin
               XGRUPO1:='0';
           	FrmGrupo1.EDCodigo.Text:='';
           	FrmGrupo1.EdDescricao.Text:='';
          End;
       End
       Else Begin
          XGRUPO1:='0';
          FrmGrupo1.EDCodigo.Text:='';
          FrmGrupo1.EdDescricao.Text:='';
       End;
   End;

end;

procedure TFAtualizaValores.FrmGrupo2EDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
 FrmGrupo2.Repaint;
	If Key = #13
   Then Begin
   	If FrmGrupo2.EDCodigo.Text<>''
       Then Begin
	 	   If FiltraTabela(DMESTOQUE.TGrupo, 'GRUPOPROD', 'COD_INTERNO', FrmGrupo2.EDCodigo.Text, '')=True
	       Then Begin //Slecionou o registro procurado
	       		XGRUPO2:=DMESTOQUE.TGrupo.FieldByName('COD_INTERNO').AsString;
           	FrmGrupo2.EDCodigo.text:=DMESTOQUE.TGrupo.FieldByName('COD_INTERNO').AsString;
           	FrmGrupo2.EdDescricao.Text:=DMESTOQUE.TGrupo.FieldByName('DESCRICAO').AsString;
          End
          Else Begin
               XGRUPO2:='0';
           	FrmGrupo2.EDCodigo.Text:='';
           	FrmGrupo2.EdDescricao.Text:='';
          End;
       End
       Else Begin
          XGRUPO2:='0';
          FrmGrupo2.EDCodigo.Text:='';
          FrmGrupo2.EdDescricao.Text:='';
       End;
   End;
end;

procedure TFAtualizaValores.FrmSubGrupo1EDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  FrmSubGrupo1.Repaint;
	If Key = #13
   Then Begin
   	If FrmSubGrupo1.EDCodigo.Text<>''
       Then Begin
	 	   If FiltraTabela(DMESTOQUE.TSubGru, 'SUBGRUPOPROD', 'COD_INTERNO', FrmSubGrupo1.EDCodigo.Text, '')=True
	       Then Begin //Slecionou o registro procurado
	       		XSUBGRUPO1:=DMESTOQUE.TSUBGru.FieldByName('COD_INTERNO').AsString;
           	FrmSubGrupo1.EDCodigo.text:=DMESTOQUE.TSUBGru.FieldByName('COD_INTERNO').AsString;
           	FrmSubGrupo1.EdDescricao.Text:=DMESTOQUE.TSUBGru.FieldByName('DESCRICAO').AsString;
          End
          Else Begin
               XSUBGRUPO1:='0';
           	FrmSubGrupo1.EDCodigo.Text:='';
           	FrmSubGrupo1.EdDescricao.Text:='';
          End;
       End
       Else Begin
          XSUBGRUPO1:='0';
          FrmSubGrupo1.EDCodigo.Text:='';
          FrmSubGrupo1.EdDescricao.Text:='';
       End;
   End;
end;

procedure TFAtualizaValores.FrmSubGrupo2EDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  FrmSubGrupo2.Repaint;   
	If Key = #13
   Then Begin
   	If FrmSubGrupo2.EDCodigo.Text<>''
       Then Begin
	 	   If FiltraTabela(DMESTOQUE.TSubGru, 'SUBGRUPOPROD', 'COD_INTERNO', FrmSubGrupo2.EDCodigo.Text, '')=True
	       Then Begin //Slecionou o registro procurado
	       		XSUBGRUPO2:=DMESTOQUE.TSUBGru.FieldByName('COD_INTERNO').AsString;
           	FrmSubGrupo2.EDCodigo.text:=DMESTOQUE.TSUBGru.FieldByName('COD_INTERNO').AsString;
           	FrmSubGrupo2.EdDescricao.Text:=DMESTOQUE.TSUBGru.FieldByName('DESCRICAO').AsString;
          End
          Else Begin
               XSUBGRUPO2:='0';
           	FrmSubGrupo2.EDCodigo.Text:='';
           	FrmSubGrupo2.EdDescricao.Text:='';
          End;
       End
       Else Begin
          XSUBGRUPO2:='0';
          FrmSubGrupo2.EDCodigo.Text:='';
          FrmSubGrupo2.EdDescricao.Text:='';
       End;
   End;
end;

procedure TFAtualizaValores.FrmProduto1EDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  FrmProduto1.Repaint;
	If Key = #13
   Then Begin
   	If FrmProduto1.EDCodigo.Text<>''
       Then Begin
	 	   If FiltraTabela(DMESTOQUE.WProduto, 'VWPRODUTO', 'COD_INTERNO', FrmProduto1.EDCodigo.Text, '')=True
	       Then Begin //Slecionou o registro procurado
	       		XPRODUTO1:=DMESTOQUE.WProduto.FieldByName('COD_INTERNO').AsString;
           	FrmProduto1.EDCodigo.text:=DMESTOQUE.WProduto.FieldByName('COD_INTERNO').AsString;
           	FrmProduto1.EdDescricao.Text:=DMESTOQUE.WProduto.FieldByName('PRODUTO').AsString;
          End
          Else Begin
               XPRODUTO1:='0';
           	FrmProduto1.EDCodigo.Text:='';
           	FrmProduto1.EdDescricao.Text:='';
          End;
       End
       Else Begin
          XPRODUTO1:='0';
          FrmProduto1.EDCodigo.Text:='';
          FrmProduto1.EdDescricao.Text:='';
       End;
   End;

end;

procedure TFAtualizaValores.FrmProduto2EDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  If Key = #13
   Then Begin
   	If FrmProduto2.EDCodigo.Text<>''
       Then Begin
	 	   If FiltraTabela(DMESTOQUE.WProduto, 'VWPRODUTO', 'COD_INTERNO', FrmProduto2.EDCodigo.Text, '')=True
	       Then Begin //Slecionou o registro procurado
	       		XPRODUTO2:=DMESTOQUE.WProduto.FieldByName('COD_INTERNO').AsString;
           	FrmProduto2.EDCodigo.text:=DMESTOQUE.WProduto.FieldByName('COD_INTERNO').AsString;
           	FrmProduto2.EdDescricao.Text:=DMESTOQUE.WProduto.FieldByName('PRODUTO').AsString;
          End
          Else Begin
               XPRODUTO2:='0';
           	FrmProduto2.EDCodigo.Text:='';
           	FrmProduto2.EdDescricao.Text:='';
          End;
       End
       Else Begin
          XPRODUTO2:='0';
          FrmProduto2.EDCodigo.Text:='';
          FrmProduto2.EdDescricao.Text:='';
       End;
   End;
   FrmProduto2.Repaint;
end;

procedure TFAtualizaValores.FrmVendIniEDCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
   If Key = VK_return
   Then Begin
      	If FiltraTabela(DMPESSOA.VWFUNCIONARIO, 'VWFUNCIONARIO', 'COD_INTERNO', '', ' COD_INTERNO='+#39+FrmVendIni.EDCodigo.Text+#39)=True
       Then Begin//CASO CONSEGUIU SELECIONAR CLIENTE
         	XVENDINI:=DMPESSOA.VWFUNCIONARIO.FieldByName('NOME').AsString;
           FrmVendIni.EdDescricao.Text:=DMPESSOA.VWFUNCIONARIO.FieldByName('NOME').AsString;
       End
       Else Begin//CASO NÃO CONSEGUIU SELECIONAR CLIENTE
           XVENDINI:='';
           FrmVendIni.EdDescricao.Text:='';
           FrmVendIni.EDCodigo.Text:='';
       End;
   End;
end;

procedure TFAtualizaValores.FrmVendFimEDCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  If Key = VK_return
   Then Begin
      	If FiltraTabela(DMPESSOA.VWFUNCIONARIO, 'VWFUNCIONARIO', 'COD_INTERNO', '', ' COD_INTERNO='+#39+FrmVendFim.EDCodigo.Text+#39)=True
       Then Begin//CASO CONSEGUIU SELECIONAR CLIENTE
         	XVENDFIM:=DMPESSOA.VWFUNCIONARIO.FieldByName('NOME').AsString;
           FrmVendFim.EdDescricao.Text:=DMPESSOA.VWFUNCIONARIO.FieldByName('NOME').AsString;
       End
       Else Begin//CASO NÃO CONSEGUIU SELECIONAR CLIENTE
           XVENDFIM:='';
           FrmVendFim.EdDescricao.Text:='';
           FrmVendFim.EDCodigo.Text:='';
       End;
   End;
end;

procedure TFAtualizaValores.FrmVendIniBTNMINUSClick(Sender: TObject);
begin
  inherited;
   //limpa VENDEDOR inicial
   XVENDINI:='';
   FrmVendIni.EDCodigo.Text:='';
   FrmVendIni.EdDescricao.Text:='';
end;

procedure TFAtualizaValores.FrmVendFimBTNMINUSClick(Sender: TObject);
begin
  inherited;
   //limpa VENDEDOR inicial
   XVENDFIM:='';
   FrmVendFim.EDCodigo.Text:='';
   FrmVendFim.EdDescricao.Text:='';

end;

end.

