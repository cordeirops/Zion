unit UCadEquipamento;

interface

uses                          
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UCadPadraoDesc, TFlatHintUnit, Grids, DBGrids, TFlatEditUnit, StdCtrls,
  Buttons, Mask, DBCtrls, DBColorEdit, jpeg, ExtCtrls, DBColorComboBox,
  DrLabel, UFrmBusca, ColorMaskEdit, Menus;

type
  TFCadEquipamento = class(TFCadPadraoDesc)
    Bevel1: TBevel;
    Bevel2: TBevel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    Label1: TLabel;
    Label13: TLabel;
    DBColorEdit1: TDBColorEdit;
    DBColorEdit2: TDBColorEdit;
    Label14: TLabel;
    DBColorEdit3: TDBColorEdit;
    Label15: TLabel;
    DBColorEdit4: TDBColorEdit;
    Label16: TLabel;
    Label17: TLabel;
    DBColorEdit6: TDBColorEdit;
    Label18: TLabel;
    DBColorEdit7: TDBColorEdit;
    Label19: TLabel;
    DBColorEdit8: TDBColorEdit;
    Label20: TLabel;
    DBColorEdit9: TDBColorEdit;
    Label2: TLabel;
    DBColorEdit10: TDBColorEdit;
    Label3: TLabel;
    DBColorEdit11: TDBColorEdit;
    DBColorComboBox1: TDBColorComboBox;
    Label4: TLabel;
    DBModelo: TDBColorEdit;
    LModelo: TLabel;
    DBAltura: TDBColorEdit;
    LAltura: TLabel;
    DBPeso: TDBColorEdit;
    LPeso: TLabel;
    FrmServico: TFrmBusca;
    DBGridLocacao: TDBGrid;
    DBColorEdit12: TDBColorEdit;
    Label5: TLabel;
    EDPlaca: TColorMaskEdit;
    EDFrota: TFlatEdit;
    FrmKM: TFrmBusca;
    FrmMotorista: TFrmBusca;
    FrmConta: TFrmBusca;
    MEPlaca: TFlatEdit;
    PopupMenu1: TPopupMenu;
    AtivarDesativar1: TMenuItem;
    DBGridAnimal: TDBGrid;
    DBGObra: TDBGrid;
    PAnimal: TPanel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label22: TLabel;
    DBColorEdit5: TDBColorEdit;
    DBColorEdit13: TDBColorEdit;
    DBColorEdit14: TDBColorEdit;
    DBColorEdit15: TDBColorEdit;
    DBColorEdit16: TDBColorEdit;
    DBMemo1: TDBMemo;
    PObra: TPanel;
    Label28: TLabel;
    Label29: TLabel;
    Label31: TLabel;
    DBColorEdit17: TDBColorEdit;
    DBColorEdit18: TDBColorEdit;
    DBColorEdit20: TDBColorEdit;
    procedure BtnGravarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DBColorComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure BtnConsultarClick(Sender: TObject);
    Function LiberaCampos(Libera: boolean): boolean;
    procedure BtnNovoClick(Sender: TObject);
    procedure FrmBusca1BTNOPENClick(Sender: TObject);
    procedure FrmServicoBTNMINUSClick(Sender: TObject);
    procedure EDPlacaExit(Sender: TObject);
    procedure EDFrotaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MEPlaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FrmKMBTNOPENClick(Sender: TObject);
    procedure FrmKMBTNMINUSClick(Sender: TObject);
    procedure FrmMotoristaBTNOPENClick(Sender: TObject);
    procedure FrmMotoristaBTNMINUSClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure FrmContaBTNOPENClick(Sender: TObject);
    procedure FrmContaBTNMINUSClick(Sender: TObject);
    procedure BtnSelecionarClick(Sender: TObject);
    procedure BtnApagarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EDFrotaEnter(Sender: TObject);
    procedure EDFrotaExit(Sender: TObject);
    procedure MEPlaEnter(Sender: TObject);
    procedure MEPlaExit(Sender: TObject);
    procedure EdNomeEnter(Sender: TObject);
    procedure EdNomeExit(Sender: TObject);
    procedure MEPlaKeyPress(Sender: TObject; var Key: Char);
    procedure EDPlacaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EDPlacaKeyPress(Sender: TObject; var Key: Char);
    procedure DBGridLocacaoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridLocacaoDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure DBGridCadastroPadraoDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure DBGridCadastroPadraoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridCadastroPadraoTitleClick(Column: TColumn);
    procedure DBGridLocacaoTitleClick(Column: TColumn);
    procedure AtivarDesativar1Click(Sender: TObject);
    procedure EdNomeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnFiltrarClick(Sender: TObject);

  private
    { Private declarations }
     XCOD_EQUIPAMENTO: Integer;
  public
    { Public declarations }
    function InfoAtivaUsuario(CodPlaca:String):String;

  end;

var
  FCadEquipamento: TFCadEquipamento;
  XVlrFormat : String;

implementation

uses UDMPessoa, AlxMessage, UDMMacs, UCadPadrao, UServico, UDmServ,
  Alxor32, UPadrao, UMenu, UFuncionario, UConsPlncta, UDMConta, DB,
  UOrdemPet, UCliente, UMDO;

{$R *.DFM}

procedure TFCadEquipamento.BtnGravarClick(Sender: TObject);
var
   Tmp:Boolean;
begin

  Try

       //verifica se foi informado um equipamento
       If XTabela.FieldByName('DESCRICAO').AsString=''
       Then Begin
          Mensagem('OPÇÃO BLOQUEADA', 'Por favor informe o equipamento!', '', 1, 1, False, 'a');
          DBPRIMEIRO.SetFocus;
          Exit;
       End;

       XTabela.Edit;
       XTabela.FieldByName('COD_CLIENTE').AsString:=DMPESSOA.WCliente.FieldByNAme('COD_CLIENTE').AsString;
       XTabela.Post;

       If DMMACS.TLoja.FieldByName('ORDEMLOCA_GUINDASTE').AsString = '1'
       then begin
           XTabela.Edit;
           XTabela.FieldByName('COD_SERVICO').AsString:= FrmServico.EDCodigo.Text;
           XTabela.FieldByName('COD_KMSERVICO').AsString:= FrmKM.EDCodigo.Text;
           XTabela.FieldByName('COD_MOTORISTA').AsString := FrmMotorista.EDCodigo.Text;
           XTabela.FieldByName('COD_PLNCTA').AsString := FrmConta.EDCodigo.Text;
           XTabela.Post;


       end;

        // - 05/02/2009:  se for equipe verificar placa
       if (DMMACS.TLoja.FieldByName('ATIVIDADE').AsString = 'EQUIPE')
       then begin
            if (Trim(EDPlaca.Text) = '' ) or (Length(EDPlaca.Text) < 7)
            then begin
                Mensagem('OPÇÃO BLOQUEADA', 'Por favor informe uma placa corretamente!', '', 1, 1, False, 'a');
                EDPlaca.SetFocus;
                Exit;
            end;


            DMPESSOA.TALX.close;
            DMPESSOA.TALX.SQL.Clear;
            DMPESSOA.TALX.SQL.Add('select * from equipamento');
            DMPESSOA.TALX.SQL.Add('where (upper(equipamento.placa) = upper ('+#39+Trim(EDPlaca.Text)+#39+')) and (equipamento.ativo=1) and (equipamento.cod_cliente<>:cliente)');
            DMPESSOA.TALX.ParamByName('cliente').AsInteger:=DMPESSOA.WCliente.FieldByName('cod_cliente').AsInteger;
            DMPESSOA.TALX.Open;

           if not DMPESSOA.TALX.IsEmpty
           then begin

             FiltraTabela(DMPESSOA.WCliente,'VWCLIENTE','COD_CLIENTE',DMPESSOA.tAlx.FieldByname('cod_cliente').AsString,'');

             If Mensagem('   A T E N Ç Ã O   ','Já há uma placa cadastrada para '+DMPESSOA.WCliente.FieldByname('nome').AsString+'. Deseja Continuar?','',2,3,false,'A')=3
             Then Begin
                EDPlaca.SetFocus;

                Exit;
             end
             Else Begin

             End;
           end
           else begin
                XTabela.Edit;
                XTabela.FieldByName('ATIVO').AsString := '1';
                XTabela.Post;
           end;
            XTabela.Edit;
            XTabela.FieldByName('DTATIVO').AsDateTime := Date();
            XTabela.FieldByName('COD_USUARIOATIVOU').AsInteger := StrToInt(FMenu.LCODUSUARIO.Caption);
            XTabela.Post;
       end;
       //Paulo 17/06/2011: Para grid de petshop
       If DMMACS.TLoja.FieldByName('atividade').AsString = 'PETSHOP' Then
       begin
           XTabela.edit;
           XTabela.FieldByName('PLACA').AsString:= DBColorEdit5.Text;
           XTabela.Post;
       end
       else begin
           If DMMACS.TLoja.FieldByName('atividade').AsString <> 'LOCAÇÃO'
           Then begin
               XTabela.edit;
               XTabela.FieldByName('PLACA').AsString:= EDPlaca.Text;
               XTabela.Post;
           End;
       end;

      inherited;

  Except

        Mensagem('OPÇÃO BLOQUEADA', 'Falha na tentativa de gravação. Se o problema persistir reinicie o sistema.', '', 1, 1, False, 'a');
        // - 28/04/2009: fechar possiveis transações abertas
        DMMACS.Transaction.RollbackRetaining;
        DMMACS.IBTCodigo.RollbackRetaining;
        DMPESSOA.TransacPessoa.RollbackRetaining;
        DMCONTA.IBT.RollbackRetaining;
        DMServ.IBT.RollbackRetaining;

  End;

  LiberaDados;
  //Paulo 28/06/2011: Para add novo animal
  If DMMACS.TLoja.FieldByName('atividade').AsString = 'PETSHOP' Then
  begin
     if XNovoAnimal=True then
         DMPESSOA.TAux1.Close;
         DMPESSOA.TAux1.SQL.Clear;
         DMPESSOA.TAux1.SQL.Add('select equipamento.cod_equipamento, equipamento.cod_cliente,equipamento.descricao,');
         DMPESSOA.TAux1.SQL.Add('equipamento.marca, equipamento.modelo, equipamento.cor, equipamento.placa,');
         DMPESSOA.TAux1.SQL.Add('equipamento.ano, equipamento.modelo_guincho, vwcliente.nome from equipamento');
         DMPESSOA.TAux1.SQL.Add('left join vwcliente on equipamento.cod_cliente = vwcliente.cod_cliente');
         DMPESSOA.TAux1.SQL.Add('where equipamento.cod_cliente = :CODCLIENTE');
         DMPESSOA.TAux1.ParamByName('CODCLIENTE').AsInteger:=DMPESSOA.WCliente.FieldByName('cod_cliente').AsInteger;
         DMPESSOA.TAux1.Open;
         //FiltraTabela(DMPESSOA.TEquip, 'equipamento', 'cod_cliente', IntToStr(DMPESSOA.WCliente.FieldByName('cod_cliente').AsInteger), '');
     XNovoAnimal:=False;    
  end;

  // limpando edits
  FrmServico.EDCodigo.Clear;
  FrmServico.EdDescricao.Clear;
  FrmMotorista.EDCodigo.Clear;
  FrmMotorista.EdDescricao.Clear;
  FrmKM.EDCodigo.Clear;
  FrmKM.EdDescricao.Clear;
  FrmConta.EdDescricao.Clear;
  FrmConta.EDCodigo.Clear;
end;

procedure TFCadEquipamento.FormActivate(Sender: TObject);
begin
  inherited;
    XTabela:=DMPESSOA.TEquip;
    XCampo:='DESCRICAO';
    XPkTabela:='COD_EQUIPAMENTO';
    XTransaction:=DMPESSOA.TransacPessoa;
    XTab:=True;
    XDescricao:='o Equipamento';
    XSQLTABELA:='EQUIPAMENTO';
    LDescTitulo.Caption:='Equipamentos';

    FiltraTabela(DMMACS.TLoja, 'loja', 'cod_loja', FMenu.LCODLOJA.Caption, '' );

    If DMMACS.TLoja.FieldByName('atividade').AsString = 'DESPACHANTE'
    Then Begin
       Label5.Caption:='Núm. Renavam:';
       EDFrota.Text:='Renavam';
       DBGridCadastroPadrao.Columns[1].Title.Caption:='Renavam';
    End
    Else Begin
       Label5.Caption:='Núm. Frota:';
       EDFrota.Text:='Frota';
       DBGridCadastroPadrao.Columns[1].Title.Caption:='Nº Da Frota';       
    End;

    If (DMMACS.TLoja.FieldByName('ORDEMLOCA_GUINDASTE').AsString <> '1' )and(DMMACS.TLoja.FieldByName('atividade').AsString <> 'PETSHOP')
    Then Begin
       XLiberaDados:=' Where (COD_CLIENTE='+DMPESSOA.WCliente.FieldByNAme('COD_CLIENTE').AsString+')  ORDER BY DESCRICAO';
       DBGridLocacao.Visible := false;
       DBGridLocacao.SendToBack;
    End
    Else Begin
       XLiberaDados := ' ORDER BY DESCRICAO';
       DBGridLocacao.Visible := true;
       DBGridLocacao.BringToFront;
    End;

    //Paulo 17/06/2011: Para grid de petshop
    If DMMACS.TLoja.FieldByName('atividade').AsString = 'PETSHOP' Then
    begin
    	 DMPESSOA.TAux1.Close;
        DMPESSOA.TAux1.SQL.Clear;
        DMPESSOA.TAux1.SQL.Add('select equipamento.cod_equipamento, equipamento.cod_cliente,equipamento.descricao,');
        DMPESSOA.TAux1.SQL.Add('equipamento.marca, equipamento.modelo, equipamento.cor, equipamento.placa,');
        DMPESSOA.TAux1.SQL.Add('equipamento.ano, equipamento.modelo_guincho, vwcliente.nome from equipamento');
        DMPESSOA.TAux1.SQL.Add('left join vwcliente on equipamento.cod_cliente = vwcliente.cod_cliente');
        DMPESSOA.TAux1.SQL.Add('where (equipamento.cod_cliente=:cliente) AND (EQUIPAMEnTO.ATIVO='+#39+'1'+#39+')');
		 DMPESSOA.TAux1.ParamByName('cliente').AsInteger:=DMPESSOA.WCliente.FieldByName('cod_cliente').AsInteger;		                 
        dMPESSOA.TAux1.Open;

        DBGridAnimal.BringToFront;
        LDescTitulo.Caption:='Animais';
        EDFrota.Text:='Nº Animal';
        MEPlaca.Text:='Raça';
        DBGridAnimal.DataSource:=DMPESSOA.DSAux1;
        MEPlaca.MaxLength:=20;
    end;
    LiberaDados;

    //reinforma source e field a campos padroes caso estes se perderam
    DBPRIMEIRO.DataSource:=DMPESSOA.DEquip;
    DBPRIMEIRO.DataField:='DESCRICAO';
    DBDESC.DataSource:=DMPESSOA.DEquip;
    DBDESC.DataField:='MARCA';
    DBGridCadastroPadrao.DataSource:=DMPESSOA.DEquip;

    // - 20/04/2009: verificar se arquivo de layout foi salvo anteriormente
   If FileExists('C:\MZR\Arquivos\LayoutGrid\equipamento.lgm')
   Then
       DBGridCadastroPadrao.Columns.LoadFromFile('C:\MZR\Arquivos\LayoutGrid\equipamento.lgm');
   // - 20/04/2009: verificar se arquivo de layout foi salvo anteriormente
   If FileExists('C:\MZR\Arquivos\LayoutGrid\locacao.lgm')
   Then
       DBGridLocacao.Columns.LoadFromFile('C:\MZR\Arquivos\LayoutGrid\locacao.lgm');

   //Paulo 24/08/2011: verificar se arquivo de layout foi salvo anteriormente
   If FileExists('C:\MZR\Arquivos\LayoutGrid\petshop.lgm')
   Then
       DBGridAnimal.Columns.LoadFromFile('C:\MZR\Arquivos\LayoutGrid\petshop.lgm');


   //Paulo 28/06/2011: Para add novo animal
    If DMMACS.TLoja.FieldByName('atividade').AsString = 'PETSHOP' Then
    begin
       if XNovoAnimal=True then
           BtnNovoClick(Sender);
    end;
    If DMMACS.TLoja.FieldByName('atividade').AsString = 'LOCAÇÃO'
    Then Begin
        DBGObra.Visible:=True;
        DBGObra.BringToFront;
        LDescTitulo.Caption:='Obras';
        EDFrota.Text:='';
        EDFrota.Visible:=False;
        MEPlaca.Text:='Código';
        DBGridAnimal.DataSource:=DMPESSOA.DSAux1;
        MEPlaca.MaxLength:=20;
    End
    Else Begin
       DBGObra.Visible:=False;
    End;
end;

// função para liberar campos utilizados no guindaste
Function TFCadEquipamento.LiberaCampos(Libera: boolean):boolean;
begin
   If Libera = false
   Then Begin
       // os campos não estarão visiveis para  usuario
       LModelo.Visible := false;
       DBModelo.Visible := false;
       LAltura.Visible := false;
       DBAltura.Visible := false;
       LPeso.Visible := false;
       DBPeso.Visible := false;
       FrmServico.Visible := false;
       FrmKM.Visible := false;
       FrmMotorista.Visible := false;
       FrmConta.Visible := false;
   End
   Else Begin
       LModelo.Enabled := true;
       DBModelo.Enabled := true;
       LAltura.Enabled := true;
       DBAltura.Enabled := true;
       LPeso.Enabled := true;
       DBPeso.Enabled := true;
       FrmServico.Visible := true;
       FrmKM.Visible := true;
       FrmMotorista.Visible := true;
       FrmConta.Visible := true;
   End;
end;


procedure TFCadEquipamento.DBColorComboBox1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	Key:=#0;
end;

procedure TFCadEquipamento.BtnConsultarClick(Sender: TObject);
begin

  Try
     if DMMACS.TLoja.FieldByName('ATIVIDADE').AsString <>'PETSHOP' then
     begin
      if not XTabela.IsEmpty
      Then Begin
          inherited;

           XCOD_EQUIPAMENTO := DMPESSOA.TEquip.FieldByname('cod_equipamento').AsInteger;

           DMPESSOA.TALX.Close;
           DMPESSOA.TALX.SQL.Clear;
           DMPESSOA.TALX.SQL.Add('SELECT * FROM EQUIPAMENTO WHERE EQUIPAMENTO.COD_EQUIPAMENTO = :CODIGO');
           if DMMACS.TLoja.FieldByName('ATIVIDADE').AsString ='PETSHOP' then
               DMPESSOA.TALX.ParamByName('CODIGO').AsInteger := XCOD_ANIMAL
           else
               DMPESSOA.TALX.ParamByName('CODIGO').AsInteger := DMPESSOA.TEquip.FieldByname('cod_equipamento').AsInteger;
           DMPESSOA.TALX.Open;

           EDPlaca.Text := DMPESSOA.TALX.FieldByname('placa').AsString;

          // se estiver valendo 1, eh exibido os campos para guindaste
           If DMMACS.TLoja.FieldByName('ORDEMLOCA_GUINDASTE').AsString = '1'
           Then Begin
               LiberaCampos(True);

               If DMPESSOA.TALX.FieldByname('cod_motorista').AsString <> ''
               Then Begin
                   DMPESSOA.TAux1.Close;
                   DMPESSOA.TAux1.SQL.Clear;
                   DMPESSOA.TAux1.SQL.Add('select * from vwfuncionario where vwfuncionario.cod_func = :codigo');
                   DMPESSOA.TAux1.ParamByName('codigo').AsInteger := DMPESSOA.TALX.FieldByname('cod_motorista').AsInteger;
                   DMPESSOA.TAux1.Open;

                   If Not DMPESSOA.TAux1.IsEmpty
                   Then Begin
                       FrmMotorista.EDCodigo.Text := DMPESSOA.TAux1.FieldByname('cod_func').AsString;
                       FrmMotorista.EdDescricao.Text := DMPESSOA.TAux1.FieldByname('nome').AsString;
                   End;
               End
               Else Begin
                   FrmMotorista.EDCodigo.Text := '';
                   FrmMotorista.EdDescricao.Text := '';
               End;

               FrmServico.EDCodigo.Text := '';
               FrmServico.EdDescricao.Text := '';
               FrmKM.EDCodigo.Text := '';
               FrmKM.EdDescricao.Text := '';
               FrmConta.EdDescricao.Text := '';
               FrmConta.EDCodigo.Text := '';

               //se ja tiver um plano de contas mestre selecionado para o equipamento
               If DMPESSOA.TALX.FieldByname('cod_plncta').AsString <> ''
               Then Begin
                   DMPESSOA.TAux1.Close;
                   DMPESSOA.TAux1.SQL.Clear;
                   DMPESSOA.TAux1.SQL.Add('select * from plncta where plncta.cod_plncta = :codigo');
                   DMPESSOA.TAux1.ParamByName('codigo').AsInteger := DMPESSOA.TALX.FieldByname('cod_plncta').AsInteger;
                   DMPESSOA.TAux1.Open;

                   If Not DMPESSOA.TAux1.IsEmpty
                   Then Begin
                       FrmConta.EDCodigo.Text := DMPESSOA.TAux1.FieldByname('cod_plncta').AsString;
                       FrmConta.EdDescricao.Text := DMPESSOA.TAux1.FieldByname('descricao').AsString;
                   End;
               End
               Else Begin
                   FrmConta.EDCodigo.Text := '';
                   FrmConta.EdDescricao.Text := '';
               End;

               // seleciona servico para inserir nos Edits
               DMPESSOA.TALX.Close;
               DMPESSOA.TALX.SQL.Clear;
               DMPESSOA.TALX.SQL.Add('select * from subservico where subservico.cod_subservico = :codigo');
               DMPESSOA.TALX.ParamByName('codigo').AsInteger := DMPESSOA.TEquip.FieldByname('cod_servico').AsInteger;
               DMPESSOA.TALX.Open;

               // se encontrou algum valor os Edits recebem seus valores
               If Not DMPESSOA.TALX.IsEmpty
               Then Begin
                   FrmServico.EDCodigo.Text := DMPESSOA.TALX.FieldByName('cod_subservico').AsString;
                   FrmServico.EdDescricao.Text := DMPESSOA.TALX.FieldByName('descricao').AsString;
               End;

               // DADOS DO KM
               FiltraTabela(DMPESSOA.TALX1,'SUBSERVICO','COD_SUBSERVICO',DMPESSOA.TEquip.FieldByname('cod_KMservico').AsString,'');

               If Not DMPESSOA.TALX1.IsEmpty
               Then Begin
                   FrmKM.EDCodigo.Text := DMPESSOA.TEquip.FieldByname('cod_KMservico').AsString;
                   FrmKM.EdDescricao.Text := DMPESSOA.TALX1.FieldByName('descricao').AsString;
               End;



               FrmServico.Repaint;
               FrmKM.Repaint;
               FrmMotorista.Repaint;
               FrmConta.Repaint;

           End
           Else Begin
               LiberaCampos(False);
           End;
       End;
     end
     else begin
         DMPESSOA.TALX1.Close;
         DMPESSOA.TALX1.SQL.Clear;
         DMPESSOA.TALX1.SQL.Add('SELECT * FROM EQUIPAMENTO WHERE EQUIPAMENTO.COD_EQUIPAMENTO = :CODIGO');
         DMPESSOA.TALX1.ParamByName('CODIGO').AsInteger := XCOD_ANIMAL;
         DMPESSOA.TALX1.Open;

         PConsulta.Visible:=False;
         PCadastro.Visible:=TRUE;
         PCadastro.BringToFront;
         BtnFecha.Visible:=False;
     end;
    Except

        Mensagem('OPÇÃO BLOQUEADA', 'Falha na tentativa de realizar consulta. Se o problema persistir reinicie o sistema.', '', 1, 1, False, 'a');
        // - 28/04/2009: fechar possiveis transações abertas
        DMMACS.Transaction.RollbackRetaining;
        DMMACS.IBTCodigo.RollbackRetaining;
        DMPESSOA.TransacPessoa.RollbackRetaining;
        DMCONTA.IBT.RollbackRetaining;
        DMServ.IBT.RollbackRetaining;

        Try
          PCadastro.Visible:=False;
          PConsulta.Visible:=true;
          PConsulta.BringToFront;
          BtnFecha.Visible:=True;
        Except
        End;
        LiberaDados;
  End;
  Try
     //Paulo 17/06/2011: Para mostrar os dados de petshop
     if DMMACS.TLoja.FieldByName('ATIVIDADE').AsString ='PETSHOP' then
     begin
         PAnimal.BringToFront;
         PAnimal.Visible:=true;
         //XCOD_ANIMAL:=DMPESSOA.TAux1.FieldByName('COD_EQUIPAMENTO').AsInteger
         FiltraTabela(DMPESSOA.TEquip, 'EQUIPAMENTO', 'COD_EQUIPAMENTO', IntToStr(DMPESSOA.TAux1.FieldByName('COD_EQUIPAMENTO').AsInteger), '');
     end
     else begin
         If DMMACS.TLoja.FieldByName('ATIVIDADE').AsString ='LOCAÇÃO'
         then begin
             PAnimal.SendToBack;
             PAnimal.Visible:=False;
             PObra.Visible:=True;
             PObra.BringToFront;
         End
         Else Begin
             PAnimal.SendToBack;
             PAnimal.Visible:=False;
             PObra.Visible:=False;
             PObra.BringToFront;
         End;
     end;
  Except

  End;
end;

procedure TFCadEquipamento.BtnNovoClick(Sender: TObject);
begin
	 Try
       // busca a maior pk
       MDO.QConsulta.Close;
       MDO.QConsulta.SQL.Clear;
       MDO.QConsulta.SQL.Add('select max(equipamento.cod_equipamento) as maximo from equipamento');
       MDO.QConsulta.Open;

       //Atualiza a tabela código
       MDO.Query.Close;
       MDO.Query.SQL.Clear;
       MDO.Query.SQL.Add(' update codigo set codigo.cod_equipamento=:CodigoEquipamento ');
       MDO.Query.ParamByName('CodigoEquipamento').AsInteger:=MDO.QConsulta.FieldByName('maximo').AsInteger+1;
       MDO.Query.ExecSQL;
       MDO.Transac.CommitRetaining;


     	XCOD_EQUIPAMENTO := MDO.QConsulta.FieldByName('maximo').AsInteger+1;

       MDO.Query.Close;
       MDO.Query.SQL.Clear;
       MDO.Query.SQL.Add('insert into EQUIPAMENTO');
       MDO.Query.SQL.Add('(COD_EQUIPAMENTO, ATIVO)');
       MDO.Query.SQL.Add('values');
       MDO.Query.SQL.Add('(:COD_EQUIPAMENTO, 1)');
       MDO.Query.ParamByName('COD_EQUIPAMENTO').AsInteger := XCOD_EQUIPAMENTO;
       MDO.Query.ExecSQL;

       MDO.Transac.CommitRetaining;
       //DMPESSOA.TransacPessoa.CommitRetaining;

     	FiltraTabela(DMPESSOA.TEquip, 'EQUIPAMENTO', 'COD_EQUIPAMENTO', IntToStr(XCOD_EQUIPAMENTO), '');

     	//DMPESSOA.TEquip.First;
     	//DMPESSOA.TEquip.Edit;
    Except
        Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Falha na tentativa de inserção de novo equipamento. Se o problema persistir reinicie o sistema.', '', 1, 1, false, 'i');
         // - 28/04/2009: fechar possiveis transações abertas
        MDO.Transac.RollbackRetaining;
        Exit;
    End;


    PConsulta.Visible:=False;
    PCadastro.Visible:=TRUE;
    PCadastro.BringToFront;
    BtnFecha.Visible:=False;
    EDPlaca.SetFocus;
    //Paulo 17/06/2011: Para mostrar os dados de petshop/mecanica ou locação
    if DMMACS.TLoja.FieldByName('ATIVIDADE').AsString ='PETSHOP' then
    begin
       PAnimal.BringToFront;
       PAnimal.Visible:=true;
    end
    else begin
       If DMMACS.TLoja.FieldByName('ATIVIDADE').AsString ='LOCAÇÃO'
       then begin
           PAnimal.SendToBack;
           PAnimal.Visible:=False;
           PObra.Visible:=True;
           PObra.BringToFront;
       End
       Else Begin
           PAnimal.SendToBack;
           PAnimal.Visible:=False;
           PObra.Visible:=False;
           PObra.BringToFront;
       End;
    end;

   //  inherited;
   // se estiver valendo 1, eh exibido os campos para guindaste
   If DMMACS.TLoja.FieldByName('ORDEMLOCA_GUINDASTE').AsString = '1'
   Then Begin
       LiberaCampos(True);
       FrmServico.EDCodigo.Text := '';
       FrmServico.EdDescricao.Text := '';
       FrmKM.EDCodigo.Text := '';
       FrmKM.EdDescricao.Text := '';
       FrmConta.EDCodigo.text:= '';
       FrmConta.EdDescricao.Text:= '';
       FrmConta.Repaint;
       FrmServico.Repaint;
       FrmKM.Repaint;

   End
   Else Begin
       LiberaCampos(False);
   End;
   EDPlaca.Text := '';
	If DMMACS.TLoja.FieldByName('ATIVIDADE').AsString ='LOCAÇÃO' then
       DBColorEdit17.SetFocus;
end;

procedure TFCadEquipamento.FrmBusca1BTNOPENClick(Sender: TObject);
begin
  inherited;
  	//abre formulario de serviço para selecionar servico
	If AbrirForm(TFSERVICO, FSERVICO, 1)='Selected'
	Then Begin
       FrmServico.EDCodigo.Text := DMSERV.WSubServ.FieldByName('COD_SUBSERVICO').AsString;
       FrmServico.EdDescricao.Text := DMSERV.WSubServ.FieldByName('DESCRICAO').AsString;
   End;

end;

procedure TFCadEquipamento.FrmServicoBTNMINUSClick(Sender: TObject);
begin
  inherited;
  FrmServico.EDCodigo.Text := '';
  FrmServico.EdDescricao.Text := '';

end;

procedure TFCadEquipamento.EDPlacaExit(Sender: TObject);
begin
  inherited;
  	Try
       XVlrFormat := UpperCase(EDPlaca.Text);
       EDPlaca.Text := XVlrFormat;

       //verifica se a mesma placa já não se encontra cadastrada para o mesmo cliente
       DMMACS.TALX.Close;
       DMMACS.TALX.SQL.Clear;
       DMMACS.TALX.SQL.Add(' select * from equipamento ');
       DMMACS.TALX.SQL.Add(' Left join vwcliente on equipamento.cod_cliente = vwcliente.cod_cliente ');
       DMMACS.TALX.SQL.Add(' where (equipamento.placa=:placa) and (equipamento.ativo=1) and (equipamento.cod_cliente=:cliente) and (equipamento.cod_equipamento<>:codigo) order by equipamento.cod_equipamento');
       DMMACS.TALX.ParamByName('codigo').AsInteger:=DMPESSOA.TEquip.FieldByname('cod_equipamento').AsInteger;
       DMMACS.TALX.ParamByName('placa').AsString:=EDPlaca.Text;
       DMMACS.TALX.ParamByName('cliente').AsInteger:=DMPESSOA.WCliente.FieldByNAme('COD_CLIENTE').AsInteger;
       DMMACS.TALX.Open;
       If not DMMACS.TALX.IsEmpty
       Then Begin
           MessageDlg('Esta placa já esta cadastrada para este cliente.', mtWarning, [mbOK], 0);
           BtnCancelar.Click;
       End;
       //verifica se já existe uma placa cadastrada
       DMMACS.TALX.Close;
       DMMACS.TALX.SQL.Clear;
       DMMACS.TALX.SQL.Add(' select * from equipamento ');
       DMMACS.TALX.SQL.Add(' Left join vwcliente on equipamento.cod_cliente = vwcliente.cod_cliente ');
       DMMACS.TALX.SQL.Add(' where (equipamento.placa=:placa) and (equipamento.ativo=1) and (equipamento.cod_cliente<>:cliente) order by equipamento.cod_equipamento');
       DMMACS.TALX.ParamByName('placa').AsString:=EDPlaca.Text;
       DMMACS.TALX.ParamByName('cliente').AsInteger:=DMPESSOA.WCliente.FieldByNAme('COD_CLIENTE').AsInteger;
       DMMACS.TALX.Open;
       If not DMMACS.TALX.IsEmpty
       Then Begin
           If MessageDlg('Esta placa esta cadastrada para outro cliente, deseja ativar a placa : '+DMMACS.TALX.FieldbyName('placa').AsString+' para o cliente atual?', mtWarning, [mbyes, mbno], 0)=mryes
           Then Begin
               DMMACS.TALX.Last;
               //desativa placa
               DMPESSOA.TALX.Close;
               DMPESSOA.TALX.SQL.Clear;
               DMPESSOA.TALX.SQL.Add(' UPDATE equipamento SET EQUIPAMENTO.ATIVO=0');
               DMPESSOA.TALX.SQL.Add(' where equipamento.placa=:placa ');
               DMPESSOA.TALX.ParamByName('placa').AsString:=EDPlaca.Text;
               DMPESSOA.TALX.ExecSQL;

               //insere novo equipamento
               // busca a maior pk
               MDO.QConsulta.Close;
               MDO.QConsulta.SQL.Clear;
               MDO.QConsulta.SQL.Add('select max(equipamento.cod_equipamento) as maximo from equipamento');
               MDO.QConsulta.Open;

               //Atualiza a tabela código
               MDO.Query.Close;
               MDO.Query.SQL.Clear;
               MDO.Query.SQL.Add(' update codigo set codigo.cod_equipamento=:CodigoEquipamento ');
               MDO.Query.ParamByName('CodigoEquipamento').AsInteger:=MDO.QConsulta.FieldByName('maximo').AsInteger+1;
               MDO.Query.ExecSQL;
               MDO.Transac.CommitRetaining;


               XCOD_EQUIPAMENTO := MDO.QConsulta.FieldByName('maximo').AsInteger+1;

               DMPESSOA.TEquip.Close;
               DMPESSOA.TEquip.SQL.Clear;
               DMPESSOA.TEquip.SQL.Add(' insert into EQUIPAMENTO ');
               DMPESSOA.TEquip.SQL.Add(' (COD_EQUIPAMENTO, COD_CLIENTE, DESCRICAO, MARCA, MODELO, ANO, COR, CHASSI, PLACA, DTAQUISICAO, KMATUAL, ATIVO, DTATIVO) ');
               DMPESSOA.TEquip.SQL.Add(' values ');
               DMPESSOA.TEquip.SQL.Add(' (:COD_EQUIPAMENTO, :COD_CLIENTE, :DESCRICAO, :MARCA, :MODELO, :ANO, :COR, :CHASSI, :PLACA, :DTAQUISICAO, :KMATUAL, 1, :DTATIVO) ');
               DMPESSOA.TEquip.ParamByName('COD_EQUIPAMENTO').AsInteger:=XCOD_EQUIPAMENTO;
               DMPESSOA.TEquip.ParamByName('COD_CLIENTE').AsInteger:=DMPESSOA.WCliente.FieldByNAme('COD_CLIENTE').AsInteger;
               DMPESSOA.TEquip.ParamByName('DESCRICAO').AsString:=DMMACS.TALX.FieldByNAme('DESCRICAO').AsString;
               DMPESSOA.TEquip.ParamByName('MARCA').AsString:=DMMACS.TALX.FieldByNAme('MARCA').AsString;
               DMPESSOA.TEquip.ParamByName('MODELO').AsString:=DMMACS.TALX.FieldByNAme('MODELO').AsString;
               DMPESSOA.TEquip.ParamByName('ANO').AsString:=DMMACS.TALX.FieldByNAme('ANO').AsString;
               DMPESSOA.TEquip.ParamByName('COR').AsString:=DMMACS.TALX.FieldByNAme('COR').AsString;
               DMPESSOA.TEquip.ParamByName('CHASSI').AsString:=DMMACS.TALX.FieldByNAme('CHASSI').AsString;
               DMPESSOA.TEquip.ParamByName('PLACA').AsString:=DMMACS.TALX.FieldByNAme('PLACA').AsString;
               DMPESSOA.TEquip.ParamByName('DTAQUISICAO').AsString:=DMMACS.TALX.FieldByNAme('DTAQUISICAO').AsString;
               DMPESSOA.TEquip.ParamByName('KMATUAL').AsString:=DMMACS.TALX.FieldByNAme('KMATUAL').AsString;
               DMPESSOA.TEquip.ParamByName('DTATIVO').AsString:=DMMACS.TALX.FieldByNAme('DTATIVO').AsString;
               DMPESSOA.TEquip.ExecSQL;
               DMMACS.TCodigo.Edit;
               DMMACS.TCodigo.FieldByName('COD_EQUIPAMENTO').AsInteger:=DMMACS.TCodigo.FieldByName('COD_EQUIPAMENTO').AsInteger+1;
               DMMACS.TCodigo.Post;
               DMMACS.IBTCodigo.CommitRetaining;
               DMMACS.Transaction.CommitRetaining;
               DMPESSOA.TransacPessoa.CommitRetaining;
               DMPESSOA.TEquip.Close;
               DMPESSOA.TEquip.SQL.Clear;
               DMPESSOA.TEquip.SQL.Add(' Select * from EQUIPAMENTO where equipamento.cod_equipamento=:codigo');
               DMPESSOA.TEquip.ParamByName('codigo').AsInteger:=XCOD_EQUIPAMENTO;
               DMPESSOA.TEquip.Open;
           End
           Else Begin
              BtnCancelar.Click;
           End
       End;
   Except
   End;
end;

//busca equipamento pelo numero da frota do veículo
procedure TFCadEquipamento.EDFrotaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  //inherited;
   if key = 13
   then begin
       if DMMACS.TLoja.FieldByName('atividade').AsString <> 'PETSHOP' Then
       begin
           DMPESSOA.TEquip.Close;
           DMPESSOA.TEquip.SQL.Clear;
           DMPESSOA.TEquip.SQL.Add('select * from equipamento');
           DMPESSOA.TEquip.SQL.Add('where (upper (equipamento.num_frota)) like (upper ('+#39+EDFrota.Text+'%'+#39+'))  AND (EQUIPAMENTO.ATIVO='+#39+'1'+#39+')');
           DMPESSOA.TEquip.Open;
       end
       else begin
           DMPESSOA.TAux1.Close;
           DMPESSOA.TAux1.SQL.Clear;
           DMPESSOA.TAux1.SQL.Add('select equipamento.cod_equipamento, equipamento.cod_cliente,equipamento.descricao,');
           DMPESSOA.TAux1.SQL.Add('equipamento.marca, equipamento.modelo, equipamento.cor, equipamento.placa,');
           DMPESSOA.TAux1.SQL.Add('equipamento.ano, equipamento.modelo_guincho, vwcliente.nome from equipamento');
           DMPESSOA.TAux1.SQL.Add('left join vwcliente on equipamento.cod_cliente = vwcliente.cod_cliente');
           DMPESSOA.TAux1.SQL.Add('where (upper (equipamento.placa)) like (upper ('+#39+EDFrota.Text+'%'+#39+'))  AND (EQUIPAMENTO.ATIVO='+#39+'1'+#39+')');
           DMPESSOA.TAux1.Open;
       end;
   end;
end;

{//busca equipamento pela placa do veículo
procedure TFCadEquipamento.EDNPlacaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  //inherited;
   if key = 13
   then begin
       DMPESSOA.TEquip.Close;
       DMPESSOA.TEquip.SQL.Clear;
       DMPESSOA.TEquip.SQL.Add('select * from equipamento');
       DMPESSOA.TEquip.SQL.Add('where (upper (equipamento.placa)) like (upper ('+#39+EDNPlaca.Text+'%'+#39+'))');
       DMPESSOA.TEquip.Open;
   end;
end;}


//busca equipamento pelo numero da placa
procedure TFCadEquipamento.MEPlaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  //inherited;
  If (DMMACS.TLoja.FieldByName('atividade').AsString <> 'PETSHOP') and (DMMACS.TLoja.FieldByName('atividade').AsString <> 'LOCAÇÃO') Then
  begin
       if (MEPLACA.SelLength > 0) And NOT (KEY = 8) and not (KEY = 13) and not (KEY = 27) then
       begin
           MEPLACA.Text := '';
       end;

       if (Length(MEPLACA.Text)= 3) AND NOT (KEY = 8) then BEGIN
           MEPLACA.Text := MEPLACA.Text+'-';
           MEPLACA.SelStart := 4;
       END;
   end;

   if key = 13
   then begin
         If DMMACS.TLoja.FieldByName('atividade').AsString = 'PETSHOP' Then
         begin
             DMPESSOA.TAux1.Close;
             DMPESSOA.TAux1.SQL.Clear;
             DMPESSOA.TAux1.SQL.Add('select equipamento.cod_equipamento, equipamento.cod_cliente,equipamento.descricao,');
             DMPESSOA.TAux1.SQL.Add('equipamento.marca, equipamento.modelo, equipamento.cor, equipamento.placa,');
             DMPESSOA.TAux1.SQL.Add('equipamento.ano, equipamento.modelo_guincho, vwcliente.nome from equipamento');
             DMPESSOA.TAux1.SQL.Add('left join vwcliente on equipamento.cod_cliente = vwcliente.cod_cliente');
             DMPESSOA.TAux1.SQL.Add('where ((upper (equipamento.modelo)) like (upper ('+#39+MEPlaca.Text+'%'+#39+'))) AND (EQUIPAMEnTO.ATIVO='+#39+'1'+#39+')');
             DMPESSOA.TAux1.Open;
         end else
         begin
             DMPESSOA.TEquip.Close;
             DMPESSOA.TEquip.SQL.Clear;
             DMPESSOA.TEquip.SQL.Add('select * from equipamento');
             DMPESSOA.TEquip.SQL.Add('where ((upper (equipamento.placa)) like (upper ('+#39+MEPlaca.Text+'%'+#39+'))) AND (EQUIPAMEnTO.ATIVO='+#39+'1'+#39+')');
             DMPESSOA.TEquip.Open;
         end;     


   end;
end;

procedure TFCadEquipamento.FrmKMBTNOPENClick(Sender: TObject);
begin
  inherited;
	If AbrirForm(TFSERVICO, FSERVICO, 1)='Selected'
	Then Begin
       FrmKM.EDCodigo.Text := DMSERV.WSubServ.FieldByName('COD_SUBSERVICO').AsString;
       FrmKM.EdDescricao.Text := DMSERV.WSubServ.FieldByName('DESCRICAO').AsString;
   End;

end;

procedure TFCadEquipamento.FrmKMBTNMINUSClick(Sender: TObject);
begin
  inherited;
   FrmKM.EdDescricao.Text := '';
   FrmKM.EDCodigo.Text := '';  
end;

procedure TFCadEquipamento.FrmMotoristaBTNOPENClick(Sender: TObject);
begin
  inherited;
   If AbrirForm(TFFuncionario,FFuncionario,1)= 'Selected'
   Then Begin
       FrmMotorista.EDCodigo.Text := DMPESSOA.VWFuncionario.FieldByname('cod_func').AsString;
       FrmMotorista.EdDescricao.Text := DMPESSOA.VWFuncionario.FieldByname('nome').AsString;
   End;

   FrmMotorista.Repaint;

end;

procedure TFCadEquipamento.FrmMotoristaBTNMINUSClick(Sender: TObject);
begin
  inherited;
   FrmMotorista.EdDescricao.Text := '';
   FrmMotorista.EDCodigo.Text := '';

end;

procedure TFCadEquipamento.BtnCancelarClick(Sender: TObject);
begin

   Try

      inherited;

      // - 28/04/2009: verifica se possui cliente
      FiltraTabela(DMPESSOA.TEquip, 'EQUIPAMENTO', 'COD_EQUIPAMENTO', IntToStr(XCOD_EQUIPAMENTO), '');
      If (DMPESSOA.TEquip.FieldByName('COD_CLIENTE').AsInteger <= 0)   // se nao tiver cliente deletar
      Then Begin

           Try
             DMPESSOA.TALX.Close;
             DMPESSOA.TALX.SQL.Clear;
             DMPESSOA.TALX.SQL.Add('delete from equipamento where equipamento.cod_equipamento = :COD_EQUIPAMENTO');
             DMPESSOA.TALX.ParamByName('COD_EQUIPAMENTO').AsInteger := XCOD_EQUIPAMENTO;
             DMPESSOA.TALX.ExecSQL;
             DMPESSOA.TransacPessoa.CommitRetaining;
           Except
               DMPESSOA.TransacPessoa.RollbackRetaining;
           End;

      End;
  Except

        Mensagem('OPÇÃO BLOQUEADA', 'Ocorreu uma falha na tentativa de cancelamento. Se o problema persistir reinicie o sistema.', '', 1, 1, False, 'a');
        // - 28/04/2009: fechar possiveis transações abertas
        DMMACS.Transaction.RollbackRetaining;
        DMMACS.IBTCodigo.RollbackRetaining;
        DMPESSOA.TransacPessoa.RollbackRetaining;
        DMCONTA.IBT.RollbackRetaining;
        DMServ.IBT.RollbackRetaining;

  End;

  LiberaDados;

  // limpando edits
  FrmServico.EDCodigo.Clear;
  FrmServico.EdDescricao.Clear;
  FrmMotorista.EDCodigo.Clear;
  FrmMotorista.EdDescricao.Clear;
  FrmKM.EDCodigo.Clear;
  FrmKM.EdDescricao.Clear;
  FrmConta.EDCodigo.Clear;
  FrmConta.EdDescricao.Clear;
end;

procedure TFCadEquipamento.FrmContaBTNOPENClick(Sender: TObject);
begin
  inherited;
//  FrmConta.BTNOPENClick(Sender);
    FMenu.XEstadoOrigem := 'EQUIPAMENTO'; // - 05/03/2009: controla para poder selecionar conta totalizadora para gerar relatório de despesas de equipamento em empresa com locação de veículo
    filtraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_FILIAL', '', ' (COD_FILIAL = '+FMenu.LCODEMPRESA.Caption+') AND (TIPO='+#39+'N'+#39+') ORDER BY CLASSIFICACAO');
    If AbrirForm(TFConsPlnCta,FConsPlnCta,1)= 'Selected'
    Then Begin
         FrmConta.EDCodigo.Text := DMCONTA.TPlnCta.FieldByname('cod_plncta').AsString;
         FrmConta.EdDescricao.Text := DMCONTA.TPlnCta.FieldByname('descricao').AsString;
    End;
    FMenu.XEstadoOrigem := '';
    FrmConta.Repaint;
end;

procedure TFCadEquipamento.FrmContaBTNMINUSClick(Sender: TObject);
begin
  inherited;
//  FrmConta.BTNMINUSClick(Sender);
    FrmConta.EdDescricao.Text:= '';
    FrmConta.EDCodigo.Text:='';
end;

procedure TFCadEquipamento.BtnSelecionarClick(Sender: TObject);
begin
    // - 14/04/2009: código abaixo comentado por atrapalhar o funcionamento da empresa mercescan
  // - 04/02/2009: se for de equipe verificar se equipamento esta ativo
  { if (DMMACS.TLoja.FieldByName('ATIVIDADE').AsString = 'EQUIPE') and (DMPESSOA.TEquip.FieldByname('ATIVO').AsString <> '1')
   then begin
        Mensagem('Mzr Sistemas - INFORMAÇÃO', 'O Equipamento não está Ativo para este cliente!', '', 1, 1, false, 'i');
        Exit;
   end;}    
  inherited;

end;

procedure TFCadEquipamento.BtnApagarClick(Sender: TObject);
begin
    // - 14/04/2009: código abaixo comentado por atrapalhar o funcionamento da empresa mercescan
  // - 04/02/2009: se for de equipe verificar se equipamento esta ativo
   {if (DMMACS.TLoja.FieldByName('ATIVIDADE').AsString = 'EQUIPE') and (DMPESSOA.TEquip.FieldByname('ATIVO').AsString = '1')
   then begin
        Mensagem('Orion Software - INFORMAÇÃO', 'Equipamento Ativo!'+#13+'Selecione o Equipamento desejado e pressione <ctrl+A> para Ativa-lo ou <ctrl+D> para Desativar.', '', 1, 1, false, 'i');
        Exit;
   end;  }

	//Verifica se o equipamento esta sendo usado
   DMMACS.TALX.close;
   DMMACS.TALX.SQL.Clear;
   DMMACS.TALX.SQL.Add('SELECT * FROM ORDEM WHERE ORDEM.COD_EQUIPAMENTO=:EQUIPAMENTO');
   if DMMACS.TLoja.FieldByName('ATIVIDADE').AsString ='PETSHOP' then
      DMMACS.TALX.ParamByName('EQUIPAMENTO').AsInteger:=DMPESSOA.TAux1.FieldByName('COD_EQUIPAMENTO').AsInteger
   else
       DMMACS.TALX.ParamByName('EQUIPAMENTO').AsInteger:=DMPESSOA.TEquip.FieldByName('COD_EQUIPAMENTO').AsInteger;
   DMMACS.TALX.Open;
   If not DMMACS.TALX.IsEmpty
   Then Begin
   	If MessageDlg('Inativar Equipamento?', mtConfirmation, [mbYes, mbNo], 0)=mrYes
       Then Begin
           if DMMACS.TLoja.FieldByName('ATIVIDADE').AsString ='PETSHOP' then
           begin
               DMPESSOA.TALX.Close;
               DMPESSOA.TALX.SQL.Clear;
               DMPESSOA.TALX.SQL.Add('update equipamento set equipamento.ativo = ''0''');
               DMPESSOA.TALX.SQL.Add('where equipamento.cod_equipamento = :CODEQUIP');
               DMPESSOA.TALX.ParamByName('CODEQUIP').AsInteger:=DMPESSOA.TAux1.FieldByName('COD_EQUIPAMENTO').AsInteger;
               DMPESSOA.TALX.ExecSQL;
               DMPESSOA.TALX.Open;
           end
           else begin
               DMPESSOA.TEquip.Edit;
               DMPESSOA.TEquip.FieldByName('ATIVO').AsString:='0';
               DMPESSOA.TEquip.Post;
           end;
           DMPESSOA.TransacPessoa.CommitRetaining;

           if DMMACS.TLoja.FieldByName('ATIVIDADE').AsString ='PETSHOP' then
           begin
               DMPESSOA.TAux1.Close;
               DMPESSOA.TAux1.SQL.Clear;
               DMPESSOA.TAux1.SQL.Add('select equipamento.cod_equipamento, equipamento.cod_cliente,equipamento.descricao,');
               DMPESSOA.TAux1.SQL.Add('equipamento.marca, equipamento.modelo, equipamento.cor, equipamento.placa,');
               DMPESSOA.TAux1.SQL.Add('equipamento.ano, equipamento.modelo_guincho, vwcliente.nome from equipamento');
               DMPESSOA.TAux1.SQL.Add('left join vwcliente on equipamento.cod_cliente = vwcliente.cod_cliente');
               DMPESSOA.TAux1.SQL.Add('where EQUIPAMEnTO.ATIVO='+#39+'1'+#39+'');
               DMPESSOA.TAux1.SQL.Add('ORDER BY EQUIPAMENTO.DESCRICAO');
               DMPESSOA.TAux1.Open;
           end;    

       End;
   End
   Else Begin
       if DMMACS.TLoja.FieldByName('ATIVIDADE').AsString <>'PETSHOP' then
       begin
   	    //Djonathan	17/11/2009:	REGISTRA NO BANCO O USUARIO APAGADO
           Registra('EQUIPAMENTOS','APAGAR',DateToStr(DMPESSOA.TEquip.FieldByName('DTAQUISICAO').AsDateTime),'Descricao: ' + DMPESSOA.TEquip.FieldByName('DESCRICAO').AsString, 'Marca: ' + DMPESSOA.TEquip.FieldByName('MARCA').AsString);
       end
       else begin
           FiltraTabela(XTabela,XSQLTABELA,'COD_EQUIPAMENTO',IntToStr(DMPESSOA.TAux1.FieldByName('COD_EQUIPAMENTO').AsInteger),'');
           Registra('EQUIPAMENTOS','APAGAR','','Descricao: ' + DMPESSOA.TEquip.FieldByName('DESCRICAO').AsString, 'Raça: ' + DMPESSOA.TEquip.FieldByName('MODELO').AsString);
       end;
  		inherited;
        if DMMACS.TLoja.FieldByName('ATIVIDADE').AsString ='PETSHOP' then
        begin
            DMPESSOA.TAux1.Close;
               DMPESSOA.TAux1.SQL.Clear;
               DMPESSOA.TAux1.SQL.Add('select equipamento.cod_equipamento, equipamento.cod_cliente,equipamento.descricao,');
               DMPESSOA.TAux1.SQL.Add('equipamento.marca, equipamento.modelo, equipamento.cor, equipamento.placa,');
               DMPESSOA.TAux1.SQL.Add('equipamento.ano, equipamento.modelo_guincho, vwcliente.nome from equipamento');
               DMPESSOA.TAux1.SQL.Add('left join vwcliente on equipamento.cod_cliente = vwcliente.cod_cliente');
               DMPESSOA.TAux1.SQL.Add('where EQUIPAMEnTO.ATIVO='+#39+'1'+#39+'');
               DMPESSOA.TAux1.SQL.Add('ORDER BY EQUIPAMENTO.DESCRICAO');
               DMPESSOA.TAux1.Open;
        end;
   End;

end;

procedure TFCadEquipamento.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
    cont:integer;
begin
  inherited;
  // - 14/04/2009: código abaixo comentado por atrapalhar o funcionamento da empresa mercescan
 { If (shift=[ssCtrl]) and (key = 65)
   Then Begin

    IF DMPESSOA.TEquip.FieldByname('ATIVO').AsString = '1'
    THEN BEGIN
        Mensagem('Orion Software - INFORMAÇÃO', 'O Equipamento já está Ativo!'+#13+InfoAtivaUsuario(DMPESSOA.TEquip.FieldByname('COD_EQUIPAMENTO').AsString), '', 1, 1, false, 'i');
        Exit;
    END;

    // - 04/02/2009:  ver se já há mais de um equipamento e se ja está ativo
    cont := 0;

     DMPESSOA.TALX.Close;
     DMPESSOA.TALX.SQL.Clear;
     DMPESSOA.TALX.SQL.Add('SELECT * FROM EQUIPAMENTO WHERE UPPER(EQUIPAMENTO.PLACA) like UPPER(:PLACA)');
     DMPESSOA.TALX.ParamByName('PLACA').AsString := DMPESSOA.TEquip.FieldByname('PLACA').AsString;
     DMPESSOA.TALX.Open;

     if DMPESSOA.TALX.IsEmpty
     then begin
        Mensagem('Orion Software - INFORMAÇÃO', 'Não foi possível encontrar a placa selecionada!', '', 1, 1, false, 'i');
        Exit;
     end;

    while not DMPESSOA.TALX.Eof
    do begin
        if DMPESSOA.TALX.FieldByname('ATIVO').AsString = '1'
        then begin
            If Mensagem('   A T E N Ç Ã O   ','Já há um outro equipamento Ativo. Deseja desativa-lo e ativar este?','',2,3,false,'A')=2
           Then Begin

                // - 04/02/2009:  desativa placa   ativa encontrada
               DMPESSOA.TALX1.Close;
               DMPESSOA.TALX1.SQL.Clear;
               DMPESSOA.TALX1.SQL.Add('UPDATE EQUIPAMENTO SET EQUIPAMENTO.ATIVO = :ATIVO, EQUIPAMENTO.DTATIVO =:DTATIVO, EQUIPAMENTO.COD_USUARIOATIVOU =:COD_USUARIOATIVOU');
               DMPESSOA.TALX1.SQL.Add('WHERE EQUIPAMENTO.COD_EQUIPAMENTO = :CODIGO');
               DMPESSOA.TALX1.ParamByName('ATIVO').AsString := '0';
               DMPESSOA.TALX1.ParamByName('DTATIVO').AsDateTime := Date();
               DMPESSOA.TALX1.ParamByName('COD_USUARIOATIVOU').AsInteger := StrToInt(FMenu.LCODUSUARIO.Caption);
               DMPESSOA.TALX1.ParamByName('CODIGO').AsInteger := DMPESSOA.TALX.FieldByname('COD_EQUIPAMENTO').AsInteger;
               DMPESSOA.TALX1.ExecSQL;
               // - 04/02/2009:  ativa placa selecionada
               DMPESSOA.TALX1.Close;
               DMPESSOA.TALX1.SQL.Clear;
               DMPESSOA.TALX1.SQL.Add('UPDATE EQUIPAMENTO SET EQUIPAMENTO.ATIVO = :ATIVO, EQUIPAMENTO.DTATIVO =:DTATIVO, EQUIPAMENTO.COD_USUARIOATIVOU =:COD_USUARIOATIVOU');
               DMPESSOA.TALX1.SQL.Add('WHERE EQUIPAMENTO.COD_EQUIPAMENTO = :CODIGO');
               DMPESSOA.TALX1.ParamByName('ATIVO').AsString := '1';
               DMPESSOA.TALX1.ParamByName('DTATIVO').AsDateTime := Date();
               DMPESSOA.TALX1.ParamByName('COD_USUARIOATIVOU').AsInteger := StrToInt(FMenu.LCODUSUARIO.Caption);
               DMPESSOA.TALX1.ParamByName('CODIGO').AsInteger := DMPESSOA.TEquip.FieldByname('COD_EQUIPAMENTO').AsInteger;
               DMPESSOA.TALX1.ExecSQL;
               cont := 1;
           end
           else begin
               cont := 1;
               Exit;
           end;
        end;
        DMPESSOA.TALX.Next;
    end;

    if cont = 0
    then begin
        // - 04/02/2009:  ativa placa selecionada
       DMPESSOA.TALX1.Close;
       DMPESSOA.TALX1.SQL.Clear;
       DMPESSOA.TALX1.SQL.Add('UPDATE EQUIPAMENTO SET EQUIPAMENTO.ATIVO = :ATIVO, EQUIPAMENTO.DTATIVO =:DTATIVO, EQUIPAMENTO.COD_USUARIOATIVOU =:COD_USUARIOATIVOU');
       DMPESSOA.TALX1.SQL.Add('WHERE EQUIPAMENTO.COD_EQUIPAMENTO = :CODIGO');
       DMPESSOA.TALX1.ParamByName('DTATIVO').AsDateTime := Date();
       DMPESSOA.TALX1.ParamByName('COD_USUARIOATIVOU').AsInteger := StrToInt(FMenu.LCODUSUARIO.Caption);
       DMPESSOA.TALX1.ParamByName('ATIVO').AsString := '1';
       DMPESSOA.TALX1.ParamByName('CODIGO').AsInteger := DMPESSOA.TEquip.FieldByname('COD_EQUIPAMENTO').AsInteger;
       DMPESSOA.TALX1.ExecSQL;
    end;

    try
        Mensagem('Orion Software - INFORMAÇÃO', 'Equipamento Ativado por '+FMenu.LUSUARIO.Caption+' dia '+FormatDateTime('dd/mm/yyyy',Date()), '', 1, 1, false, 'i');
        DMPESSOA.TransacPessoa.CommitRetaining;
    except
        Mensagem('Orion Software - INFORMAÇÃO', 'Falha na tentativa de Ativar Equipamento. Tente novamente!'+#13+'Se o problema persistir contate o Suporte.', '', 1, 1, false, 'i');
        DMPESSOA.TransacPessoa.RollbackRetaining;
    end;

    LiberaDados;

   end;

   If (shift=[ssCtrl]) and (key = 68)
   Then Begin

    IF DMPESSOA.TEquip.FieldByname('ATIVO').AsString = '0'
    THEN BEGIN
        Mensagem('Orion Software - INFORMAÇÃO', 'O Equipamento já está Desativado!'+#13+InfoAtivaUsuario(DMPESSOA.TEquip.FieldByname('COD_EQUIPAMENTO').AsString), '', 1, 1, false, 'i');
        Exit;
    END;

        // - 04/02/2009:  desativa placa selecionada
       DMPESSOA.TALX1.Close;
       DMPESSOA.TALX1.SQL.Clear;
       DMPESSOA.TALX1.SQL.Add('UPDATE EQUIPAMENTO SET EQUIPAMENTO.ATIVO = :ATIVO WHERE EQUIPAMENTO.COD_EQUIPAMENTO = :CODIGO');
       DMPESSOA.TALX1.ParamByName('ATIVO').AsString := '0';
       DMPESSOA.TALX1.ParamByName('CODIGO').AsInteger := DMPESSOA.TEquip.FieldByname('COD_EQUIPAMENTO').AsInteger;
       DMPESSOA.TALX1.ExecSQL;
       try
          Mensagem('Orion Software - INFORMAÇÃO', 'Equipamento Desativado por !'+FMenu.LUSUARIO.Caption+' dia '+FormatDateTime('dd/mm/yyyy',Date()), '', 1, 1, false, 'i');
          DMPESSOA.TransacPessoa.CommitRetaining;
      except
          Mensagem('Orion Software - INFORMAÇÃO', 'Falha na tentativa de Desativar Equipamento. Tente novamente!'+#13+'Se o problema persistir contate o Suporte.', '', 1, 1, false, 'i');
          DMPESSOA.TransacPessoa.RollbackRetaining;
      end;
       LiberaDados;
   end; }

end;

procedure TFCadEquipamento.EDFrotaEnter(Sender: TObject);
begin
  inherited;
    if (EDFrota.Text = 'Frota') or (EDFrota.Text = 'Renavam') or (EDFrota.Text = 'Nº Animal') then
        EDFrota.Text := ''
   else
    EDFrota.SelectAll;

   EDFrota.Font.Color := clBlack;
end;

procedure TFCadEquipamento.EDFrotaExit(Sender: TObject);
begin
  inherited;
    if Trim(EDFrota.Text) = ''
    then begin
    	If DMMACS.TLoja.FieldByName('atividade').AsString = 'DESPACHANTE' Then
       	EDFrota.Text:='Renavam';
       If DMMACS.TLoja.FieldByName('atividade').AsString = 'PETSHOP' Then
       	EDFrota.Text:='Nº Animal'
       Else
        	EDFrota.Text := 'Frota';
   	 EDFrota.Font.Color := clGray;
  end;
end;

procedure TFCadEquipamento.MEPlaEnter(Sender: TObject);
begin
  inherited;
  if (MEPLACA.Text = 'Placa') or (MEPLACA.Text = 'Raça')  or (MEPLACA.Text = 'Código') then
        MEPLACA.Text := '';

   MEPLACA.Font.Color := clBlack;
end;

procedure TFCadEquipamento.MEPlaExit(Sender: TObject);
begin
  inherited;
  if Trim(MEPLACA.Text) = '' then begin
        If DMMACS.TLoja.FieldByName('atividade').AsString = 'PETSHOP' Then
           MEPLACA.Text := 'Raça'
        else
            If DMMACS.TLoja.FieldByName('atividade').AsString = 'LOCAÇÃO' Then
               MEPLACA.Text := 'Código'
            else
           	MEPLACA.Text := 'Placa';
        MEPLACA.Font.Color := clGray;
  end;
end;

procedure TFCadEquipamento.EdNomeEnter(Sender: TObject);
begin
  inherited;
  if EdNome.Text = 'Nome/Descrição' then
        EdNome.Text := ''
   else
    EdNome.SelectAll;

   EdNome.Font.Color := clBlack;
end;

procedure TFCadEquipamento.EdNomeExit(Sender: TObject);
begin
  inherited;
  if Trim(EdNome.Text) = '' then begin
        EdNome.Text := 'Nome/Descrição';
     EdNome.Font.Color := clGray;
  end;
end;

procedure TFCadEquipamento.MEPlaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  If (DMMACS.TLoja.FieldByName('atividade').AsString <> 'PETSHOP') and (DMMACS.TLoja.FieldByName('atividade').AsString <> 'LOCAÇÃO') Then
  begin
        if not (key in ['a'..'z','A'..'Z', '0'..'9', #8, #13,#27])
       then
           Key := #0
       else begin    // ['A'..'Z','a'..'z'
           if  Length(MEPLACA.Text) < 4 then
               if not (key in ['a'..'z','A'..'Z', #8, #13,#27]) then
                   Key := #0;

           if ( Length(MEPLACA.Text) > 3 ) then
               if not (key in ['0'..'9', #8, #13,#27]) then
                   Key := #0
       end;
  end;     


end;
function TFCadEquipamento.InfoAtivaUsuario(CodPlaca:String):String;
var
   tmp:String;
begin
    Result := '';

    DMPESSOA.TAux2.close;
   DMPESSOA.TAux2.SQL.Clear;
   DMPESSOA.TAux2.SQL.Add('select * from equipamento');
   DMPESSOA.TAux2.SQL.Add('where (equipamento.cod_equipamento = '+CodPlaca+')  AND (EQUIPAMENTO.ATIVO='+#39+'1'+#39+')');
   DMPESSOA.TAux2.Open;

   if not DMPESSOA.TAux2.IsEmpty
   then begin


      if (FiltraTabela(DMMACS.TUsuario, 'USUARIO', 'CODUSUARIO', DMPESSOA.TAux2.FieldByname('COD_USUARIOATIVOU').AsString, '')) and (DMPESSOA.TAux2.FieldByname('DTATIVO').AsString <> '')
      then begin
          if (DMPESSOA.TAux2.FieldByname('COD_USUARIOATIVOU').AsString = '') or (DMPESSOA.TAux2.FieldByname('COD_USUARIOATIVOU').AsString = '111522')  then
              Exit;

          if DMPESSOA.TAux2.FieldByname('ATIVO').AsString = '1' then
              tmp := 'Ativado'
          else
              tmp := 'Desativado';

         // FiltraTabela(DMPESSOA.VWFuncionario, 'VWFUNCIONARIO', 'COD_FUNC', DMMACS.TUsuario.FieldByName('COD_FUNCIONARIO').AsString, '');
        //DMPESSOA.VWFuncionario.FieldByNAme('NOME').AsString
          Result := tmp+' por '+DMMACS.TUsuario.FieldByName('LOGIN').AsString+' dia '+FormatDateTime('dd/mm/yyyy',DMPESSOA.TAux2.FieldByname('DTATIVO').AsDateTime)+'.';

      end;

   end;

end;
procedure TFCadEquipamento.EDPlacaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
    if (EDPlaca.SelLength > 0) And NOT (KEY = 8) and not (KEY = 13) and not (KEY = 27) then
   begin
       EDPlaca.Text := '';
   end;

   if (Length(EDPlaca.Text)= 3) AND NOT (KEY = 8) then BEGIN
       EDPlaca.Text := EDPlaca.Text+'-';
       EDPlaca.SelStart := 4;
   END;
end;

procedure TFCadEquipamento.EDPlacaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
    if not (key in ['a'..'z','A'..'Z', '0'..'9', #8, #13,#27])
   then
       Key := #0
   else begin    // ['A'..'Z','a'..'z'
       if  Length(EDPlaca.Text) < 4 then
           if not (key in ['a'..'z','A'..'Z', #8, #13,#27]) then
               Key := #0;

       if ( Length(EDPlaca.Text) > 3 ) then
           if not (key in ['0'..'9', #8, #13,#27]) then
               Key := #0
   end;

end;

procedure TFCadEquipamento.DBGridLocacaoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  If (shift=[ssCtrl]) and (key = 83)
   Then Begin
     Try
       if not DirectoryExists('C:\MZR\Arquivos\LayoutGrid\') then begin
           ForceDirectories('C:\MZR\Arquivos\LayoutGrid\');
       end;
       DBGridLocacao.Columns.SaveToFile('C:\MZR\Arquivos\LayoutGrid\locacao.lgm');
       Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Layout da Grid foi salvo com sucesso!', '', 1, 1, false, 'i');
     Except
           Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Falha na tentativa de salvar o layout da grid!', '', 1, 1, false, 'i');
     End;
   End;
end;

procedure TFCadEquipamento.DBGridLocacaoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
	//MessageDlg('foi', mtWarning, [mbOK], 0);
   if DMPESSOA.TEquip.FieldByName('ATIVO').AsString<>'1'
   Then Begin
       DBGridLocacao.Canvas.Font.Color := clRed;
       DBGridLocacao.DefaultDrawColumnCell(Rect, DataCol, Column, State);
   End
   Else Begin
       DBGridLocacao.Canvas.Font.Color := clBlack;
       DBGridLocacao.DefaultDrawColumnCell(Rect, DataCol, Column, State);
   end;

  // - 28/04/2009: grid zebrada
  If  FMenu.XGRIDZEBRADA
   Then Begin
      if State = [] then
      begin
        if DMPESSOA.TEquip.RecNo mod 2 = 1 then
          DBGridLocacao.Canvas.Brush.Color := $00EEEEEE
       else
          DBGridLocacao.Canvas.Brush.Color := clWhite;
      end;
      DBGridLocacao.DefaultDrawColumnCell(Rect, DataCol, Column, State);
   End;
end;

procedure TFCadEquipamento.DBGridCadastroPadraoDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  // - 28/04/2009: grid zebrada
  If  FMenu.XGRIDZEBRADA
   Then Begin
      if State = [] then
      begin
        if DMPESSOA.TEquip.RecNo mod 2 = 1 then
          DBGridCadastroPadrao.Canvas.Brush.Color := $00EEEEEE
       else
          DBGridCadastroPadrao.Canvas.Brush.Color := clWhite;
      end;
      DBGridCadastroPadrao.DefaultDrawColumnCell(Rect, DataCol, Column, State);
   End;
   If (DMPESSOA.TEquip.FieldByName('ATIVO').AsString='1')
   Then Begin
       DBGridCadastroPadrao.Canvas.Font.Color := clBlack;
       DBGridCadastroPadrao.DefaultDrawColumnCell(Rect, DataCol, Column, State);
   End
   Else Begin
       DBGridCadastroPadrao.Canvas.Font.Color := clRed;
       DBGridCadastroPadrao.DefaultDrawColumnCell(Rect, DataCol, Column, State);
   End;
end;

procedure TFCadEquipamento.DBGridCadastroPadraoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  If (shift=[ssCtrl]) and (key = 83)
   Then Begin
     Try
       if not DirectoryExists('C:\MZR\Arquivos\LayoutGrid\') then begin
           ForceDirectories('C:\MZR\Arquivos\LayoutGrid\');
       end;
       DBGridCadastroPadrao.Columns.SaveToFile('C:\MZR\Arquivos\LayoutGrid\equipamento.lgm');
       //Paulo 24/08/2011: salva o layout para petshop
       If DMMACS.TLoja.FieldByName('atividade').AsString = 'PETSHOP' Then
           DBGridAnimal.Columns.SaveToFile('C:\MZR\Arquivos\LayoutGrid\petshop.lgm');
       Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Layout da Grid foi salvo com sucesso!', '', 1, 1, false, 'i');
     Except
           Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Falha na tentativa de salvar o layout da grid!', '', 1, 1, false, 'i');
     End;
   End;
end;

procedure TFCadEquipamento.DBGridCadastroPadraoTitleClick(Column: TColumn);
begin
  inherited;
  If Column.FieldName <> '' Then
     XLiberaDados:=' Order by ' + Column.FieldName;

  LiberaDados;
end;

procedure TFCadEquipamento.DBGridLocacaoTitleClick(Column: TColumn);
begin
  inherited;
  If Column.FieldName <> '' Then
     XLiberaDados:=' Order by ' + Column.FieldName;

  LiberaDados;
end;
procedure TFCadEquipamento.AtivarDesativar1Click(Sender: TObject);
begin
  inherited;
  	If MessageDlg('Ativar/Desativar a placa selecionada?', mtWarning, [mbyes, mbno], 0)=mryes
   Then Begin
   	If DMPESSOA.TEquip.FieldByName('Ativo').AsString='0'
       Then Begin
          DMMACS.TALX.Close;
          DMMACS.TALX.SQL.Clear;
          DMMACS.TALX.SQL.Add(' select * from equipamento WHERE (equipamento.placa=:PLACA) AND (equipamento.ativo='+#39+'1'+#39+')');
          DMMACS.TALX.ParamByName('PLACA').AsString:=DMPESSOA.TEquip.FieldByName('PLACA').AsString;
          DMMACS.TALX.Open;
          iF DMMACS.TALX.IsEmpty
          tHEN bEGIN
             DMPESSOA.TEquip.Edit;
             DMPESSOA.TEquip.FieldByName('ATIVO').AsString:='1';
             DMPESSOA.TEquip.Post;
             DMPESSOA.TransacPessoa.CommitRetaining;
          End
          Else Begin
             MessageDlg('Já existe a mesma placa ativa', mtWarning, [mbOK], 0);
          End;
       End
       Else Begin
             DMPESSOA.TEquip.Edit;
             DMPESSOA.TEquip.FieldByName('ATIVO').AsString:='0';
             DMPESSOA.TEquip.Post;
             DMPESSOA.TransacPessoa.CommitRetaining;
             MessageDlg('Placa Desativada', mtWarning, [mbOK], 0);
       End;
   End;
end;

procedure TFCadEquipamento.EdNomeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
       If DMMACS.TLoja.FieldByName('atividade').AsString = 'PETSHOP' Then
       begin
           DMPESSOA.TAux1.Close;
           DMPESSOA.TAux1.SQL.Clear;
           DMPESSOA.TAux1.SQL.Add('select equipamento.cod_equipamento, equipamento.cod_cliente,equipamento.descricao,');
           DMPESSOA.TAux1.SQL.Add('equipamento.marca, equipamento.modelo, equipamento.cor, equipamento.placa,');
           DMPESSOA.TAux1.SQL.Add('equipamento.ano, equipamento.modelo_guincho, vwcliente.nome from equipamento');
           DMPESSOA.TAux1.SQL.Add('left join vwcliente on equipamento.cod_cliente = vwcliente.cod_cliente');
           DMPESSOA.TAux1.SQL.Add('where ((upper (equipamento.descricao)) like (upper ('+#39+EdNome.Text+'%'+#39+'))) AND (EQUIPAMEnTO.ATIVO='+#39+'1'+#39+')');
           DMPESSOA.TAux1.Open;
       end;
       
end;

procedure TFCadEquipamento.BtnFiltrarClick(Sender: TObject);
Var
XNomeAnimal: string;
xcod_equipamento: integer;
begin
  inherited;
  //Paulo 04/04/2012: Para petShop é utilizado ou DataSource
  If DMMACS.TLoja.FieldByName('atividade').AsString = 'PETSHOP' Then
  begin
      XNomeAnimal:=DMPESSOA.TAux1.FieldByName('descricao').AsString;
      xcod_equipamento:=DMPESSOA.TAux1.FieldByName('cod_equipamento').AsInteger;
  end else
  begin
      XNomeAnimal:=DMPESSOA.TEquip.FieldByName('descricao').AsString;
      xcod_equipamento:=DMPESSOA.TEquip.FieldByName('cod_equipamento').AsInteger;
  end;

	If Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Alterar Proprietário para ' + XNomeAnimal + '?' , '', 2, 3, False, 'c')=2
   Then Begin
   	If AbrirForm(TFCliente, FCliente, 1)='Selected'
       Then Begin
			If Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Alterar Proprietário do ' + XNomeAnimal + '. Para '+DMPESSOA.WCliente.FieldByName('nome').AsString+ '?' , '', 2, 3, False, 'c')=2
   		Then Begin
           	Try
               	DMPESSOA.TALX.Close;
               	DMPESSOA.TALX.SQL.Clear;
               	DMPESSOA.TALX.SQL.Add(' update equipamento set equipamento.cod_cliente=:codcliente where equipamento.cod_equipamento=:codigo ');
               	DMPESSOA.TALX.ParamByName('codcliente').AsInteger:=DMPESSOA.WCliente.FieldByName('cod_cliente').AsInteger;
               	DMPESSOA.TALX.ParamByName('codigo').AsInteger:=xcod_equipamento;
               	DMPESSOA.TALX.ExecSQL;
               	DMPESSOA.TransacPessoa.CommitRetaining;

                   //Paulo 04/04/2012: Para petShop é utilizado ou DataSource
  					If DMMACS.TLoja.FieldByName('atividade').AsString = 'PETSHOP' Then
                   begin
                       DMPESSOA.TAux1.Close;
                       DMPESSOA.TAux1.SQL.Clear;
                       DMPESSOA.TAux1.SQL.Add('select equipamento.cod_equipamento, equipamento.cod_cliente,equipamento.descricao,');
                       DMPESSOA.TAux1.SQL.Add('equipamento.marca, equipamento.modelo, equipamento.cor, equipamento.placa,');
                       DMPESSOA.TAux1.SQL.Add('equipamento.ano, equipamento.modelo_guincho, vwcliente.nome from equipamento');
                       DMPESSOA.TAux1.SQL.Add('left join vwcliente on equipamento.cod_cliente = vwcliente.cod_cliente');
                       DMPESSOA.TAux1.SQL.Add('where (equipamento.cod_cliente=:cliente) AND (EQUIPAMEnTO.ATIVO='+#39+'1'+#39+')');
                       DMPESSOA.TAux1.ParamByName('cliente').AsInteger:=DMPESSOA.WCliente.FieldByName('cod_cliente').AsInteger;
                       DMPESSOA.TAux1.Open;
                   end else
                   begin
                   	LiberaDados;
                   end;    

               Except
                   DMPESSOA.TransacPessoa.RollbackRetaining;
               End;
           End;
      End; 
   End;
end;

end.
