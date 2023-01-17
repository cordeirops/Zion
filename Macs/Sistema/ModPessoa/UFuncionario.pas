unit UFuncionario;

interface
                                                                    
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UCadPadraoPes, TFlatHintUnit, FashionPanel, StdCtrls,
  ComCtrls, Mask, DBCtrls, DBColorEdit, ExtCtrls, TFlatTabControlUnit,
  Grids, DBGrids, Buttons, TFlatEditUnit, jpeg, EditFloat, ColorEditFloat,
  Menus, UFrmBusca, DBColorComboBox, DrLabel, xmldom, XMLIntf, msxmldom,
  XMLDoc, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdHTTP, FR_DSet, FR_DBSet, FR_Class;

type
  TFFuncionario = class(TFCadPadraoPes)
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    GroupBox8: TGroupBox;
    DBEdit3: TDBEdit;
    Label38: TLabel;
    DBEdit4: TDBEdit;
    Label39: TLabel;
    DBEdit5: TDBEdit;
    GroupBox4: TGroupBox;
    DBLookupComboBox1: TDBLookupComboBox;
    Label44: TLabel;
    Label40: TLabel;
    EDCPVV: TColorEditFloat;
    Label41: TLabel;
    EDCPVP: TColorEditFloat;
    Label42: TLabel;
    EDCSVV: TColorEditFloat;
    Label43: TLabel;
    EDCSVP: TColorEditFloat;
    BTNADICIONAR: TBitBtn;
    BTNALTERAR: TBitBtn;
    BTNAPAGARCARGO: TBitBtn;
    GroupBox9: TGroupBox;
    DBGrid3: TDBGrid;
    Label46: TLabel;
    EDSALARIO: TColorEditFloat;
    Label47: TLabel;
    Label1: TLabel;
    CBPalm: TCheckBox;
    DBNumPalm: TDBEdit;
    FrmServico: TFrmBusca;
    CBDemitido: TCheckBox;
    GroupBox10: TGroupBox;
    MObs: TMemo;
    FSRelFunc: TfrReport;
    FSDSFUNC: TfrDBDataSet;
    GroupBox11: TGroupBox;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    Label18: TLabel;
    Label19: TLabel;
    MIntervalo: TMemo;
    lbin: TLabel;
    Label16: TLabel;
    DBEdit6: TDBEdit;
    RelFuncionrio1: TMenuItem;
    CBMostraDemitidos: TCheckBox;
    procedure FormActivate(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnConsultarClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure DBLookupComboBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BTNADICIONARClick(Sender: TObject);
    procedure BTNAPAGARCARGOClick(Sender: TObject);
    procedure BTNALTERARClick(Sender: TObject);
    procedure BtnApagarClick(Sender: TObject);
    procedure TCPessoaTabChanged(Sender: TObject);
    procedure RGORDEMClick(Sender: TObject);
    procedure CBPalmClick(Sender: TObject);
    procedure DBGridCadastroPadraoDblClick(Sender: TObject);
    procedure FrmServicoBTNMINUSClick(Sender: TObject);
    procedure FrmServicoBTNOPENClick(Sender: TObject);
    procedure EdCodigoEnter(Sender: TObject);
    procedure EdCodigoExit(Sender: TObject);
    procedure EdNomeEnter(Sender: TObject);
    procedure EdNomeExit(Sender: TObject);
    procedure EdCpfEnter(Sender: TObject);
    procedure EdCpfExit(Sender: TObject);
    procedure EdCodigoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdNomeKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCpfKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridCadastroPadraoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridCadastroPadraoDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure RelFuncionrio1Click(Sender: TObject);
    procedure Sinttico1Click(Sender: TObject);
    procedure CBMostraDemitidosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FFuncionario: TFFuncionario;

implementation

uses AlxMessage, UDMPessoa, UMessage, UcadCargo,
  UDMMacs, UMenu, UDMFinanc, Alxor32, DB, UCadPadrao, UPadrao, UOrdem,
  UServico, UDmServ;

{$R *.DFM}

procedure TFFuncionario.FormActivate(Sender: TObject);
begin
  inherited;
  Caption:='Funcionario';  
  XTabela:=DMPESSOA.TFuncionario;    
  XCampo:='NOME';
  XTransaction:=DMPESSOA.TransacPessoa;
  XPkTabela:='COD_FUNC';
  XTab:=False;
  XView:=DMPESSOA.VWFuncionario;
  XDescricao:= 'O Funcionario';
  XSQLTABELA:='FUNCIONARIO';
  XSQLVIEW:='VWFUNCIONARIO';

  If FMenu.TIPOAUX='TERCEIROS'
  Then Begin
  		XLiberaDados:=' where (vwfuncionario.terceiro= '+ #39 + '1' + #39 +') order by vwfuncionario.nome ';
       Caption:='Terceiros';
  End
  Else Begin
  		XLiberaDados:='  where ((vwfuncionario.terceiro<>'+ #39 + '1' + #39 +') or (vwfuncionario.terceiro is null))  AND (ATIVO <> ''1'') ';
       Caption:='Funcionários';
  End;
  If FMenu.TIPOAUX='VENDEDOR'
  Then Begin
  		XLiberaDados:='  where ((vwfuncionario.terceiro<>'+ #39 + '1' + #39 +') or (vwfuncionario.terceiro is null)) ';
       Caption:='Vendedores';
  		XLiberaDados:=' left join funcargo on vwfuncionario.cod_func = funcargo.cod_funcionario ';
       XLiberaDados:=XLiberaDados+' left join cargo on funcargo.cod_cargo = cargo.cod_cargo ';
       XLiberaDados:=XLiberaDados+' Where upper(cargo.descricao) Like '+#39+'VENDEDOR%'+#39;
  End;
  //seleciona cargos do funcionario
  DBGrid3.DataSource:=DMPESSOA.DSelectFC;

   // se nao for para guinchomaq o primeiro campo (MARK) eh removido. Esse campo serve para add funcionarios na OS como ajudantes para servicos
   // se o campo for TRUE o campo MARK eh liberado na grid do funcionario
   If (DMMACS.TLoja.FieldByName('ORDEMLOCA_GUINDASTE').AsString <> '1') and (XLIBERA_MARK = false)
   Then Begin
       DBGridCadastroPadrao.Columns.Items[0].Visible := false;
       XLIBERA_MARK := false;
   End;

  SelectFunCargo;
  XSQLREL:='VWFUNCIONARIO';
  RGORDEM.ItemIndex:=0;
  LiberaDados;

  // o formulario de servico fica ativo
  If DMMACS.TLoja.FieldByName('ORDEMLOCA_GUINDASTE').AsString = '1'
  Then Begin
       FrmServico.Visible := true;
       FrmServico.BringToFront;
  End;

  // - 16/02/2009: se houver funcionario pre-selecionado fazer busca
  if FMenu.XPreSel
  then begin
    DMPESSOA.VWFuncionario.Locate(FMenu.XFieldPesqPreSel,FMenu.XCodPesqPresSel, []);
  end;
  FMenu.LimpaPreSelecao;

  // - 20/04/2009: verificar se arquivo de layout foi salvo anteriormente
   If FileExists('C:\MZR\Arquivos\LayoutGrid\funcionario.lgm')
   Then
       DBGridCadastroPadrao.Columns.LoadFromFile('C:\MZR\Arquivos\LayoutGrid\funcionario.lgm');


   //Paulo 14/06/2011:filtra os cargos
   FiltraTabela(DMPESSOA.TCargo,'CARGO','','','');

end;

procedure TFFuncionario.DBGridCadastroPadraoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
	if DMPESSOA.VWFuncionario.FieldByName('ATIVO').AsString='1' then
   begin
  		DBGridCadastroPadrao.Canvas.Font.Color := clRed;
		DBGridCadastroPadrao.DefaultDrawColumnCell(Rect, DataCol, Column, State);
   end;
end;


procedure TFFuncionario.BtnNovoClick(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('CADFUNC', 'M')=False Then
  		Exit;

     inherited;
     GBLOCALTRABALHO.Enabled:=False;
     RGTIPO.ItemIndex:=0;
     BTNOHTIPOPESSOA.Click;
end;

procedure TFFuncionario.BtnConsultarClick(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('CADFUNC', 'M')=False Then
  		Exit;

  inherited;
       If XTabela.FieldByName('PALM').AsString='1'
       Then Begin
           CBPalm.Checked:=True;
           DBNumPalm.Visible:=True;
       End
       Else Begin
           CBPalm.Checked:=False;
           DBNumPalm.Visible:=False;
       End;

     GBLOCALTRABALHO.Enabled:=False;
     //Seleciona funcargos para o funcionario
     SelectFunCargo;

     // se for para guinchomaq busca o servico
     If DMMACS.TLoja.FieldByName('ORDEMLOCA_GUINDASTE').AsString = '1'
     Then Begin
           DMServ.TAlx1.Close;
           DMServ.TAlx1.SQL.Clear;
           DMServ.TAlx1.SQL.Add('select * from subservico where subservico.cod_subservico = :codigo');
           DMServ.TAlx1.ParamByName('codigo').AsInteger := DMPESSOA.TFuncionario.FieldByName('cod_servico').AsInteger;
           DMServ.TAlx1.Open;

           If not DMServ.TAlx1.IsEmpty
           Then Begin
               FrmServico.EdDescricao.Text := DMServ.TAlx1.FieldByname('descricao').AsString;
               FrmServico.EDCodigo.Text := DMServ.TAlx1.FieldByname('cod_servico').AsString;
           End
           Else Begin
               FrmServico.EdDescricao.Text := '';
               FrmServico.EDCodigo.Text := '';
           End;
     End;

       If XTabela.FieldByName('ATIVO').AsString='1'
       Then
           CBDemitido.Checked:=True
       Else
           CBDemitido.Checked:=False;

       MObs.Lines.Text:=XTabela.FieldByName('OBSERVACAO').AsString;
       MIntervalo.Lines.Text:=XTabela.FieldByName('INTERVALO').AsString;



end;

procedure TFFuncionario.BtnGravarClick(Sender: TObject);
begin
	If FMenu.TIPOAUX='TERCEIROS'
   Then Begin
   	XTabela.Edit;
   	XTabela.FieldByName('TERCEIRO').AsString:='1';
       XTabela.Post;
   End;
   If CBPalm.Checked=True
   Then Begin
       XTabela.Edit;
       XTabela.FieldByName('PALM').AsInteger:=1;
       XTabela.Post;
   End
	Else Begin
       XTabela.Edit;
       XTabela.FieldByName('PALM').AsInteger:=0;
       XTabela.Post;
   End;

   If CBDemitido.Checked=True
   Then Begin
       XTabela.Edit;
       XTabela.FieldByName('ATIVO').AsInteger:=1;
       XTabela.Post;
   End
	Else Begin
       XTabela.Edit;
       XTabela.FieldByName('ATIVO').AsInteger:=0;
       XTabela.Post;
   End;
   XTabela.Edit;
   XTabela.FieldByName('OBSERVACAO').AsString:= MObs.Lines.Text;
   XTabela.FieldByName('INTERVALO').AsString:= MIntervalo.Lines.Text;
   XTabela.Post;


  inherited;
   LiberaDados;

   // - 16/02/2009: se houver funcionario pre-selecionado fazer busca
  if FMenu.XPreSel
  then begin
    DMPESSOA.VWFuncionario.Locate(FMenu.XFieldPesqPreSel,FMenu.XCodPesqPresSel, []);
  end;
  FMenu.LimpaPreSelecao;

end;

procedure TFFuncionario.DBLookupComboBox1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     inherited;
     If Key=vk_Insert Then
         AbrirForm(TFCADCARGO, FCADCARGO, 0);
     If Key=vk_Escape Then
         SelectFunCargo;
end;

procedure TFFuncionario.BTNADICIONARClick(Sender: TObject);
Var
   CodFuncargo, XCODSLAVE: Integer;
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('ALTSALFUNC', 'M')=False Then
  		Exit;

     inherited;
     //ADICIONA FUNCARGO
     xCODSLAVE:=InserReg(DMPESSOA.TFunCargo, 'FUNCARGO', 'COD_CARGO');
     DMPESSOA.TFunCargo.FieldByName('COD_FUNCARGO').AsInteger:=XCODSLAVE;
     CodFuncargo:=DMPESSOA.TFunCargo.FieldByName('COD_FUNCARGO').AsInteger;
     DMPESSOA.TFunCargo.FieldByName('COD_CARGO').AsCurrency := DMPESSOA.TCargo.FieldByName('COD_CARGO').AsCurrency;
     DMPESSOA.TFunCargo.FieldByName('COD_FUNCIONARIO').AsCurrency := DMPESSOA.TFuncionario.FieldByName('COD_FUNC').AsCurrency;
     DMPESSOA.TFunCargo.FieldByName('COMISSAO_VVPRO').AsCurrency := EDCPVV.ValueNumeric;
     DMPESSOA.TFunCargo.FieldByName('COMISSAO_VPPRO').AsCurrency := EDCPVP.ValueNumeric;
     DMPESSOA.TFunCargo.FieldByName('COMISSAO_VVSER').AsCurrency := EDCSVV.ValueNumeric;
     DMPESSOA.TFunCargo.FieldByName('COMISSAO_VPSER').AsCurrency := EDCSVP.ValueNumeric;
     Try
        DMPESSOA.TFunCargo.Post;
        //REGISTRA COMANDO DO USUARIO
        Registra('FUNCIONÁRIO/ESPECIFICO', 'ADICIONAR',  DateToStr(Date()), 'FUNCIONÁRIO: '+DMPESSOA.TPessoa.FieldByName('NOME').AsString, 'COMISS '+DMPESSOA.TFunCargo.FieldByName('COMISSAO_VVPRO').AsString+'/'+DMPESSOA.TFunCargo.FieldByName('COMISSAO_VPPRO').AsString+'/'+DMPESSOA.TFunCargo.FieldByName('COMISSAO_VVSER').AsString+'/'+DMPESSOA.TFunCargo.FieldByName('COMISSAO_VPSER').AsString);

        //efetua transações;
        DMPESSOA.TransacPessoa.CommitRetaining;

        //ADICIONA SALÁRIO
        XCODSLAVE:=InserReg(DMPESSOA.TSalario, 'SALARIO', 'COD_SALARIO');
        DMPESSOA.TSalario.FieldByName('COD_SALARIO').AsInteger:=XCODSLAVE;
        DMPESSOA.TSalario.FieldByName('COD_FUNCARGO').Value:=CodFuncargo;
        DMPESSOA.TSalario.FieldByName('DATA').AsDateTime:=Date();
        DMPESSOA.TSalario.FieldByName('SALARIO').Value:=EDSALARIO.ValueNumeric;
        //seleciona empresa de acesso
        DMMacs.TEmpresa.Close;
        DMMacs.TEmpresa.SQL.Clear;
        DMMacs.TEmpresa.SQL.Add('SELECT * FROM EMPRESA WHERE COD_EMPRESA=:CodigoEmpresa');
        DMMacs.TEmpresa.ParamByName('CodigoEmpresa').AsString:=FMenu.LCODEMPRESA.Caption;
        DMMacs.TEmpresa.open;

        DMPESSOA.TSalario.Post;

        //efetua transações;
        DMPESSOA.TSalario.ApplyUpdates;

        DMPESSOA.TransacPessoa.CommitRetaining;
     Except
        Mensagem('INFORMAÇÃO AO USUÁRIO', 'Esta tela será fechada para que as informações do funcionário sejam preservadas. O cargo que você tentou adicionar foi cancelado, você pode editar os dados do funcionario e repetir os procedimentos.', '', 1, 1, False, 'i');
        DMPESSOA.TFunCargo.Cancel;
        DMPESSOA.TFunCargo.CancelUpdates;
        BtnGravar.Click;
     End;

     //Atualiza informações
     SelectFunCargo;   
end;

procedure TFFuncionario.BTNAPAGARCARGOClick(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('ALTSALFUNC', 'M')=False Then
  		Exit;

     inherited;
     If Mensagem('Confirmação do Usuário', 'Deseja realmente apagar a passagem de cargo do funcionário selecionado?', '', 2, 2, False, 'c')=2
     Then Begin
          //Seleciona salários a serem apagados
          DMPESSOA.TSalario.Close;
          DMPESSOA.TSalario.SQL.Clear;
          DMPESSOA.TSalario.SQL.add('Select * from salario Where Cod_FunCargo=:CodFunCargo');
          DMPESSOA.TSalario.ParamByName('CodFunCargo').AsString:=DMPESSOA.TSelectFC.FieldByName('Cod_Funcargo').AsString;
          DMPESSOA.TSalario.Open;

          //Seleciona FunCargos a serem apagados
          DMPESSOA.TFunCargo.Close;
          DMPESSOA.TFunCargo.SQL.Clear;
          DMPESSOA.TFunCargo.SQL.add('Select * from Funcargo Where Cod_FunCargo=:CodFunCargo');
          DMPESSOA.TFunCargo.ParamByName('CodFunCargo').AsString:=DMPESSOA.TSelectFC.FieldByName('Cod_Funcargo').AsString;
          DMPESSOA.TFunCargo.Open;

          //REGISTRA COMANDO DO USUARIO
          Registra('FUNCIONÁRIO/ESPECIFICO', 'APAGAR',  DateToStr(Date()), 'FUNCIONÁRIO: '+DMPESSOA.TPessoa.FieldByName('NOME').AsString, 'COMISS '+DMPESSOA.TSelectFC.FieldByName('COMISSAO_VVPRO').AsString+'/'+DMPESSOA.TSelectFC.FieldByName('COMISSAO_VPPRO').AsString+'/'+DMPESSOA.TSelectFC.FieldByName('COMISSAO_VVSER').AsString+'/'+DMPESSOA.TSelectFC.FieldByName('COMISSAO_VPSER').AsString);

          //Apaga Salários para o cargo
          DMPESSOA.TSalario.First;
          WHILE NOT DMPESSOA.TSalario.Eof Do
          Begin
               DMPESSOA.TSalario.Delete;
          End;

          //Apaga FunCargo
          DMPESSOA.TFunCargo.Delete;

          DMPESSOA.TransacPessoa.CommitRetaining;

          //Atualiza
          SelectFunCargo;
     End;

end;

procedure TFFuncionario.BTNALTERARClick(Sender: TObject);
Var
   CodFuncargo: Integer;
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('ALTSALFUNC', 'M')=False Then
  		Exit;

  inherited;
     //SELECIONA FUNCARGO
     DMPESSOA.TFunCargo.Close;
     DMPESSOA.TFunCargo.Sql.Clear;
     DMPESSOA.TFunCargo.Sql.Add('Select * From Funcargo Where Cod_funcargo = :codFuncargo');
     DMPESSOA.TFunCargo.ParamByName('Codfuncargo').Asstring:=DMPESSOA.TSelectFC.FieldByName('Cod_FunCargo').AsString;
     DMPESSOA.TFunCargo.Open;

     //SELECIONA Salario
     DMPESSOA.TSalario.Close;
     DMPESSOA.TSalario.Sql.Clear;
     DMPESSOA.TSalario.Sql.Add('Select * From Salario Where Cod_Salario = :cod_Salario');
     DMPESSOA.TSalario.ParamByName('Cod_Salario').Asstring:=DMPESSOA.TSelectFC.FieldByName('Cod_Salario').AsString;
     DMPESSOA.TSalario.Open;


     //ADICIONA FUNCARGO
     DMPESSOA.TFunCargo.Edit;
     CodFuncargo:=DMPESSOA.TFunCargo.FieldByName('COD_FUNCARGO').AsInteger;
     DMPESSOA.TFunCargo.FieldByName('COD_CARGO').AsCurrency := DMPESSOA.TCargo.FieldByName('COD_CARGO').AsCurrency;
     DMPESSOA.TFunCargo.FieldByName('COD_FUNCIONARIO').AsCurrency := DMPESSOA.TFuncionario.FieldByName('COD_FUNC').AsCurrency;
     DMPESSOA.TFunCargo.FieldByName('COMISSAO_VVPRO').AsCurrency := EDCPVV.ValueNumeric;
     DMPESSOA.TFunCargo.FieldByName('COMISSAO_VPPRO').AsCurrency := EDCPVP.ValueNumeric;
     DMPESSOA.TFunCargo.FieldByName('COMISSAO_VVSER').AsCurrency := EDCSVV.ValueNumeric;
     DMPESSOA.TFunCargo.FieldByName('COMISSAO_VPSER').AsCurrency := EDCSVP.ValueNumeric;
     Try
        //REGISTRA COMANDO DO USUARIO
        Registra('FUNCIONÁRIO/ESPECIFICO', 'ALTERAR',  DateToStr(Date()), 'FUNCIONÁRIO: '+DMPESSOA.TPessoa.FieldByName('NOME').AsString, 'COMISS '+DMPESSOA.TSelectFC.FieldByName('COMISSAO_VVPRO').AsString+'/'+DMPESSOA.TSelectFC.FieldByName('COMISSAO_VPPRO').AsString+'/'+DMPESSOA.TSelectFC.FieldByName('COMISSAO_VVSER').AsString+'/'+DMPESSOA.TSelectFC.FieldByName('COMISSAO_VPSER').AsString);
    
        DMPESSOA.TFunCargo.Post;

     Except
        BtnGravar.Click;
     End;

     //efetua transações;
     DMPESSOA.TFunCargo.ApplyUpdates;

     DMPESSOA.TransacPessoa.CommitRetaining;

     //ADICIONA SALÁRIO
     DMPESSOA.TSalario.Edit;
     DMPESSOA.TSalario.FieldByName('COD_FUNCARGO').Value:=CodFuncargo;
     DMPESSOA.TSalario.FieldByName('DATA').AsDateTime:=Date();
     DMPESSOA.TSalario.FieldByName('SALARIO').Value:=EDSALARIO.ValueNumeric;

     //AS OPÇÕES DE TRABALHO COM MOEDA ESTÃO DESATIVADOS PARA ESTA VERSÃO
{     //SELECIONA COTAÇÃO PARA MOEDA PADRAO DA EMPRESA
     DMFinanc.VWMoedaCota.Close;
     DMFinanc.VWMoedaCota.sql.Clear;}
     //seleciona empresa de acesso
     DMMacs.TEmpresa.Close;
     DMMacs.TEmpresa.SQL.Clear;
     DMMacs.TEmpresa.SQL.Add('SELECT * FROM EMPRESA WHERE COD_EMPRESA=:CodigoEmpresa');
     DMMacs.TEmpresa.ParamByName('CodigoEmpresa').AsString:=FMenu.LCODEMPRESA.Caption;
     DMMacs.TEmpresa.open;

{     DMFinanc.VWMoedaCota.SQL.Add('Select * from VWMOEDACOTA Where Cod_Moeda=:CodigoMoeda');
     DMFinanc.VWMoedaCota.ParamByName('CodigoMoeda').AsString:=DMMacs.TEmpresa.FieldByName('COD_MOEDA').AsString;
     DMFinanc.VWMoedaCota.Open;
//     SelectMoeda;
     DMPESSOA.TSalario.FieldByName('COD_COTAMOEDA').Value:=DMFinanc.TAlxMoeda.FieldByName('cod_cota').Value;
     DMPESSOA.TSalario.Post;
 }
     //efetua transações;
     DMPESSOA.TSalario.ApplyUpdates;

     DMPESSOA.TransacPessoa.CommitRetaining;

     //Atualiza informações
     SelectFunCargo;

     EDCPVP.Text := '0,00';
     EDCPVV.Text := '0,00';
     EDCSVP.Text := '0,00';
     EDCSVV.Text := '0,00';
     EDSALARIO.Text := '0,00';

end;

procedure TFFuncionario.BtnApagarClick(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('EXCVENDEDOR', 'M')=False Then
  		Exit;

    //CHECA RELAÇÃO ENTRE TABELAS
    If CheckRelation('COD_FUNCIONARIO', DMPESSOA.TFuncionario.FieldByName(XPkTabela).AsString, ['Usuario'], 1)=False Then
        inherited
    Else
        Mensagem('INFORMAÇÃO AO USUÁRIO', 'Este Funcionário possui referências pendentes e não pode ser apagado!' , '', 1, 1, False, 'i');
end;

procedure TFFuncionario.TCPessoaTabChanged(Sender: TObject);
begin
  inherited;
	If TCPessoa.ActiveTab=2
   Then Begin
		 //EFETUA CONTROLE DE ACESSO
        PEspecifico.Visible:=True;
        PEspecifico.BringToFront;
//		 TCPessoa.ActiveTab:=1;
   End;
   SelectFunCargo;
end;

procedure TFFuncionario.RGORDEMClick(Sender: TObject);
begin
//  inherited;
	//Controla a ordenação da view de amostragem
   XView.Close;
   XView.SQL.Clear;
   If FMenu.TIPOAUX='TERCEIROS'
   Then Begin
   	Case RGORDEM.ItemIndex of
   		0: Begin//controla ordenação por código interno
       		XView.SQL.Add('Select * From VWFUNCIONARIO where (vwfuncionario.terceiro= '+ #39 + '1' + #39 +') Order By COD_INTERNO');
       	End;
   		1: Begin//controla ordenação por nome
	    		XView.SQL.Add('Select * From VWFUNCIONARIO where (vwfuncionario.terceiro='+ #39 + '1' + #39 +') Order By NOME');
       	End;
   		2: Begin//controla ordenação por CPF/CNPJ
	        	XView.SQL.Add('Select * From VWFUNCIONARIO where (vwfuncionario.terceiro='+ #39 + '1' + #39 +') Order By CPFCNPJ');
       	End;
       End;
   End
   Else Begin
   	Case RGORDEM.ItemIndex of
   		0: Begin//controla ordenação por código interno
       		XView.SQL.Add('Select * From VWFUNCIONARIO where ((vwfuncionario.terceiro<>'+ #39 + '1' + #39 +') or (vwfuncionario.terceiro is null)) Order By COD_INTERNO');
       	End;
   		1: Begin//controla ordenação por nome
	    		XView.SQL.Add('Select * From VWFUNCIONARIO where ((vwfuncionario.terceiro<>'+ #39 + '1' + #39 +') or (vwfuncionario.terceiro is null)) Order By NOME');
       	End;
   		2: Begin//controla ordenação por CPF/CNPJ
	        	XView.SQL.Add('Select * From VWFUNCIONARIO where ((vwfuncionario.terceiro<>'+ #39 + '1' + #39 +') or (vwfuncionario.terceiro is null)) Order By CPFCNPJ');
       	End;
       End;
   End;
   If FMenu.TIPOAUX='VENDEDOR'
   Then Begin
   	XView.Close;
	    XView.SQL.Clear;
   	Case RGORDEM.ItemIndex of
   		0: Begin//controla ordenação por código interno
       		XView.SQL.Add(' Select * From VWFUNCIONARIO ');
       		XView.SQL.Add(' left join funcargo on vwfuncionario.cod_func = funcargo.cod_funcionario ');
       		XView.SQL.Add(' left join cargo on funcargo.cod_cargo = cargo.cod_cargo ');
       		XView.SQL.Add(' Where upper(cargo.descricao) Like '+#39+'VENDEDOR%'+#39+' AND ((vwfuncionario.terceiro<>1) or (vwfuncionario.terceiro is null)) Order By COD_INTERNO');
       	End;
   		1: Begin//controla ordenação por nome
       		XView.SQL.Add(' Select * From VWFUNCIONARIO ');
       		XView.SQL.Add(' left join funcargo on vwfuncionario.cod_func = funcargo.cod_funcionario ');
       		XView.SQL.Add(' left join cargo on funcargo.cod_cargo = cargo.cod_cargo ');
       		XView.SQL.Add(' Where upper(cargo.descricao) Like '+#39+'VENDEDOR%'+#39+' AND ((vwfuncionario.terceiro<>1) or (vwfuncionario.terceiro is null))  Order By NOME');
       	End;
   		2: Begin//controla ordenação por CPF/CNPJ
       		XView.SQL.Add(' Select * From VWFUNCIONARIO  ');
       		XView.SQL.Add(' left join funcargo on vwfuncionario.cod_func = funcargo.cod_funcionario ');
       		XView.SQL.Add(' left join cargo on funcargo.cod_cargo = cargo.cod_cargo ');
       		XView.SQL.Add(' Where upper(cargo.descricao) Like '+#39+'VENDEDOR%'+#39+' AND ((vwfuncionario.terceiro<>1) or (vwfuncionario.terceiro is null))  Order By CPFCNPJ');
       	End;
       End;
   End;
   XView.Open;   
end;

procedure TFFuncionario.CBPalmClick(Sender: TObject);
begin
  inherited;
	If CBPalm.Checked= True Then
       DBNumPalm.Visible:=True
   Else
       DBNumPalm.Visible:=False;
end;

procedure TFFuncionario.DBGridCadastroPadraoDblClick(Sender: TObject);
begin
  //inherited;
   // se for para guinchomaq e estiver vindo da OS para selecionar os ajudantes satisfaz a condição
   If (DMMACS.TLoja.FieldByName('ORDEMLOCA_GUINDASTE').AsInteger = 1) AND (XLIBERA_MARK = TRUE)
   Then Begin
       DMPESSOA.TFuncionario.Close;
       DMPESSOA.TFuncionario.SQL.Clear;
       DMPESSOA.TFuncionario.SQL.Add('select * from funcionario ');
       DMPESSOA.TFuncionario.SQL.Add(' where funcionario.cod_func = :codigo');
       DMPESSOA.TFuncionario.ParamByName('codigo').AsInteger := DMPESSOA.VWFuncionario.FieldByname('cod_func').AsInteger;
       DMPESSOA.TFuncionario.Open;

       DMPESSOA.TFuncionario.Edit;

       If DMPESSOA.TFuncionario.FieldByName('mark').AsString = 'X'
       Then Begin
           // tabela funcionario
           DMPESSOA.TFuncionario.FieldByName('mark').AsString := '';
       End
       Else Begin
           DMPESSOA.TFuncionario.FieldByName('mark').AsString := 'X';
       End;

       DMPESSOA.TFuncionario.Post;
       DMPESSOA.TransacPessoa.CommitRetaining;

       DMPESSOA.VWFuncionario.Close;
       DMPESSOA.VWFuncionario.SQL.Clear;
       DMPESSOA.VWFuncionario.SQL.Add('select * from vwfuncionario');
       DMPESSOA.VWFuncionario.SQL.Add('where ((vwfuncionario.terceiro<>1) or (vwfuncionario.terceiro is null)) ');
       DMPESSOA.VWFuncionario.Open;

       Caption:='Funcionários';

   End;
end;

procedure TFFuncionario.FrmServicoBTNMINUSClick(Sender: TObject);
begin
  inherited;
   FrmServico.EDCodigo.Text := '';
   FrmServico.EdDescricao.Text := '';

end;

procedure TFFuncionario.FrmServicoBTNOPENClick(Sender: TObject);
begin
  inherited;
   If AbrirForm(TFServico,FServico,1)='Selected'
   Then Begin
       FrmServico.EDCodigo.Text := DMSERV.WSubServ.FieldByName('COD_SUBSERVICO').AsString;
       FrmServico.EdDescricao.Text := DMSERV.WSubServ.FieldByName('DESCRICAO').AsString;
   End;

   FrmServico.Repaint;

end;

procedure TFFuncionario.EdCodigoEnter(Sender: TObject);
begin
	if EdCodigo.Text = 'Código' then
        EdCodigo.Text := ''
   else
    	EdCodigo.SelectAll;

   EdCodigo.Font.Color := clBlack;
end;

procedure TFFuncionario.EdCodigoExit(Sender: TObject);
begin

    if Trim(EdCodigo.Text) = ''
    then begin
        EdCodigo.Text := 'Código';
        EdCodigo.Font.Color := clGray;
    end;
end;

procedure TFFuncionario.EdNomeEnter(Sender: TObject);
begin

    if EdNome.Text = 'Nome' then
        EdNome.Text := ''
   else
    EdNome.SelectAll;

   EdNome.Font.Color := clBlack;
end;

procedure TFFuncionario.EdNomeExit(Sender: TObject);
begin

    if Trim(EdNome.Text) = ''
    then begin
        EdNome.Text := 'Nome';
        EdNome.Font.Color := clGray;
    end;
end;

procedure TFFuncionario.EdCpfEnter(Sender: TObject);
begin
 
    if EdCpf.Text = 'CPF/CNPJ' then
        EdCpf.Text := ''
   else
    EdCpf.SelectAll;

   EdCpf.Font.Color := clBlack;
end;

procedure TFFuncionario.EdCpfExit(Sender: TObject);
begin

    if Trim(EdCpf.Text) = ''
    then begin
        EdCpf.Text := 'CPF/CNPJ';
        EdCpf.Font.Color := clGray;
    end;
end;

procedure TFFuncionario.EdCodigoKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If  FMenu.XCONSULTARAPIDA
   Then Begin
    DMPESSOA.VWFuncionario.Locate('COD_INTERNO',EdCodigo.Text, [loCaseInsensitive]);
   End;
end;

procedure TFFuncionario.EdNomeKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   If  FMenu.XCONSULTARAPIDA
   Then Begin
    DMPESSOA.VWFuncionario.Locate('NOME',EdNome.Text, [loPartialKey,loCaseInsensitive]);
   End;
end;

procedure TFFuncionario.EdCpfKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If  FMenu.XCONSULTARAPIDA
   Then Begin
    DMPESSOA.VWFuncionario.Locate('CPFCNPJ',EdCpf.Text, [loPartialKey,loCaseInsensitive]);
  End;
end;

procedure TFFuncionario.DBGridCadastroPadraoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  If (shift=[ssCtrl]) and (key = 83)
   Then Begin
     Try
       if not DirectoryExists('C:\MZR\Arquivos\LayoutGrid\') then begin
           ForceDirectories('C:\MZR\Arquivos\LayoutGrid\');
       end;
       DBGridCadastroPadrao.Columns.SaveToFile('C:\MZR\Arquivos\LayoutGrid\funcionario.lgm');
       Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Layout da Grid foi salvo com sucesso!', '', 1, 1, false, 'i');
     Except
           Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Falha na tentativa de salvar o layout da grid!', '', 1, 1, false, 'i');
     End;
   End;
end;

procedure TFFuncionario.RelFuncionrio1Click(Sender: TObject);
begin
  inherited;
       //Paulo 05/12/2011: Gera a ficha de funcionário
       DMPESSOA.TRel.Close;
       DMPESSOA.TRel.SQL.Clear;
       DMPESSOA.TRel.SQL.Add('select vwfuncionario.nome, pessoa.dtnasc, pessoaf.sexo, vwcidade.nome AS NATURARIDADE, vwcidade.uf,');
       DMPESSOA.TRel.SQL.Add('pessoa.endereco, pessoa.bairro, pessoaf.nome_pai, pessoaf.nome_mae, pessoaf.estado_civil,');
       DMPESSOA.TRel.SQL.Add('pessoaf.rg, pessoaf.orgao_exped, pessoaf.data_exped, funcionario.num_pis, funcionario.num_ctps, funcionario.ser_ctps,');
       DMPESSOA.TRel.SQL.Add('pessoaf.titulo, pessoa.cpfcnpj, funcionario.data_admis, salario.salario, funcionario.intervalo,');
       DMPESSOA.TRel.SQL.Add('funcionario.observacao, funcionario.setor, funcionario.horaent,  funcionario.horasaida, pessoa.endnumero from funcionario');
       DMPESSOA.TRel.SQL.Add('left join vwfuncionario on funcionario.cod_func = vwfuncionario.cod_func');
       DMPESSOA.TRel.SQL.Add('left join pessoa on funcionario.cod_pessoa = pessoa.cod_pessoa');
       DMPESSOA.TRel.SQL.Add('left join pessoaf on pessoa.cod_pessoa = pessoaf.cod_pessoa');
       DMPESSOA.TRel.SQL.Add('left join funcargo on funcionario.cod_func = funcargo.cod_funcionario');
       DMPESSOA.TRel.SQL.Add('left join salario on funcargo.cod_funcargo = salario.cod_funcargo');
       DMPESSOA.TRel.SQL.Add('left join vwcidade on pessoa.cod_natural = vwcidade.cod_cidade');
       DMPESSOA.TRel.SQL.Add('where funcionario.cod_func = :COD');
       DMPESSOA.TRel.ParamByName('COD').AsInteger:=DMPESSOA.VWFuncionario.FieldByName('COD_FUNC').AsInteger;
       DMPESSOA.TRel.Open;

       //Paulo 05/12/2011: seleciona o cargo
       SelectFunCargo;

       FSRelFunc.LoadFromFile('C:\MZR\MACS\Rel\FrfFuncionario.frf');
       FSRelFunc.ShowReport;
END;       

procedure TFFuncionario.Sinttico1Click(Sender: TObject);
begin
    FMenu.TIPOREL:='RELFUNCGERAL';
  inherited;

end;

procedure TFFuncionario.CBMostraDemitidosClick(Sender: TObject);
begin
	if CBMostraDemitidos.Checked then
  		XLiberaDados:= ' where ((vwfuncionario.terceiro<>'+ #39 + '1' + #39 +') or (vwfuncionario.terceiro is null)) '
   else
  		XLiberaDados:= ' where ((vwfuncionario.terceiro<>'+ #39 + '1' + #39 +') or (vwfuncionario.terceiro is null)) AND (ATIVO <> ''1'') ';

   LiberaDados;
end;

end.
