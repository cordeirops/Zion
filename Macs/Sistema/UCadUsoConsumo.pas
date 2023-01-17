unit UCadUsoConsumo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FR_DSet, FR_DBSet, FR_Class, Buttons, TFlatEditUnit, StdCtrls,
  Grids, DBGrids, Mask, DBCtrls, DBColorEdit, ExtCtrls;

type
  TFCadUsoConsumo = class(TForm)
    ShapeFundo: TShape;
    ImgTitulo: TImage;
    SpTitulo01: TShape;
    SpTitulo02: TShape;
    LDescTitulo: TLabel;
    PCadastro: TPanel;
    Panel4: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    Label2: TLabel;
    DBPRIMEIRO: TDBColorEdit;
    DBDESC: TDBColorEdit;
    DBCODINT: TDBColorEdit;
    Panel1: TPanel;
    BtnGravar: TBitBtn;
    BtnCancelar: TBitBtn;
    PConsulta: TPanel;
    DBGridCadastroPadrao: TDBGrid;
    GroupBox1: TGroupBox;
    EdNome: TFlatEdit;
    BtnSelecionar: TBitBtn;
    Painel: TPanel;
    BtnNovo: TBitBtn;
    BtnApagar: TBitBtn;
    BtnConsultar: TBitBtn;
    BtnRelatorio: TBitBtn;
    BtnFiltrar: TBitBtn;
    FRGrupo: TfrReport;
    FRDSGrupo: TfrDBDataSet;
    rbFrete: TRadioButton;
    rbConsumo: TRadioButton;
    BtnFecha: TSpeedButton;
    procedure FormActivate(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnApagarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnConsultarClick(Sender: TObject);
    procedure EdNomeEnter(Sender: TObject);
    procedure EdNomeExit(Sender: TObject);
    procedure EdNomeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnFechaClick(Sender: TObject);
    procedure BtnFechaMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure BtnSelecionarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PConsultaExit(Sender: TObject);
    procedure PCadastroExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    XCOD_ESTOQUE,XCODPKMESTRE:Integer;
     Xnovo:Boolean;
  end;

var
  FCadUsoConsumo: TFCadUsoConsumo;

implementation

uses Alxor32, UDMEstoque, UCadPadraoDesc, AlxMessage, UDMMacs, UMenu, DB;

{$R *.dfm}

procedure TFCadUsoConsumo.FormActivate(Sender: TObject);
begin
     //Paulo 14/09/2011: Filtra os produtos de uso e consumo
     DMEstoque.TSubProd.Close;
     DMEstoque.TSubProd.SQL.Clear;
     DMEstoque.TSubProd.SQL.Add('Select * from SUBPRODUTO');
     DMEstoque.TSubProd.SQL.Add('where(SUBPRODUTO.USOCONSUMO = '+#39+'1'+#39+') or (SUBPRODUTO.USOCONSUMO = '+#39+'2'+#39+') ORDER BY DESCRICAO');
     DMEstoque.TSubProd.Open;
     Xnovo:=false;

end;

procedure TFCadUsoConsumo.BtnGravarClick(Sender: TObject);
begin
       If (rbConsumo.Checked = False)  and  (rbFrete.Checked = False) Then
       begin
           Mensagem('INFORMAÇÃO AO USUÁRIO', 'Selecione o tipo de produto se frete ou de uso consumo!', '', 1, 1, False, 'i');
           exit;
       end;
       DMESTOQUE.Alx.Close;
       DMESTOQUE.Alx.SQL.Clear;
       DMESTOQUE.Alx.SQL.Add('SELECT * FROM SUBPRODUTO WHERE (SUBPRODUTO.CONTRINT=:FAB) AND (SUBPRODUTO.COD_SUBPRODUTO<>:COD)');
       DMESTOQUE.Alx.ParamByName('FAB').AsString:=DBCODINT.Text;
       DMESTOQUE.Alx.ParamByName('COD').AsString:=IntToStr(XCODPKMESTRE);
       DMESTOQUE.Alx.SQL.Text;
       DMESTOQUE.Alx.Open;

	    If Not DMESTOQUE.Alx.IsEmpty
	    Then Begin
		    Mensagem('INFORMAÇÃO AO USUÁRIO', 'Já existe um produto com o mesmo controle interno!'+#13+'Caso o código de barras para este produto tenha sido gerado pelo sistema, talvez haja necessidade de alteração.', '', 1, 1, False, 'I');
           DBCODINT.SetFocus;
	        exit;
	    end;
       if Xnovo = true then
       begin
           DmEstoque.TSubProd.FieldByName('DTCAD').AsString:=DateToStr(Date());
           DMESTOQUE.TEstoque.FieldByName('COD_LOJA').AsInteger:= DMMACS.TLoja.fieldByName('COD_LOJA').AsInteger;
           DMESTOQUE.TEstoque.FieldByName('COD_SUBPROD').AsInteger:=XCODPKMESTRE;
           DMESTOQUE.TEstoque.FieldByName('DTCAD').AsString:=DateToStr(Date());
           DMESTOQUE.TSubProd.FieldByName('NCM').AsString:='84824000';
           DMESTOQUE.Alx.Close;
           DMESTOQUE.Alx.SQL.Clear;
           DMESTOQUE.Alx.SQL.Add('select * from unidade where unidade.sigla_unid = :UNIDADE');
           DMESTOQUE.Alx.ParamByName('UNIDADE').AsString:='UN';
           DMESTOQUE.Alx.Open;
           DMESTOQUE.TSubProd.FieldByName('COD_UNIDCOMPRA').AsInteger:=DMESTOQUE.Alx.FieldByName('COD_UNIDADE').AsInteger;
           DMESTOQUE.TSubProd.FieldByName('COD_UNIDVENDA').AsInteger:=DMESTOQUE.Alx.FieldByName('COD_UNIDADE').AsInteger;

       end;
       DMESTOQUE.TEstoque.FieldByName('DATAATU').AsString:=DateToStr(Date());
       DMESTOQUE.TEstoque.FieldByName('HORAATU').AsString:=TimeToStr(Time());

       If rbConsumo.Checked = True Then
           DMESTOQUE.TSubProd.FieldByName('USOCONSUMO').AsString:='1'
       else
           DMESTOQUE.TSubProd.FieldByName('USOCONSUMO').AsString:='2';

       DMESTOQUE.TSubProd.Post;
       DMESTOQUE.TEstoque.Post;
       DMEstoque.TransacEstoque.CommitRetaining;


       PCadastro.Visible:=False;
       PConsulta.Visible:=true;
       PConsulta.BringToFront;
       BtnFecha.Visible:=True;
end;

procedure TFCadUsoConsumo.BtnNovoClick(Sender: TObject);
begin
    PConsulta.Visible:=False;
    PCadastro.Visible:=TRUE;
    PCadastro.BringToFront;
    BtnFecha.Visible:=False;
    Xnovo:=true;

    //Insere REGISTROS NA TABELA DE SUBPRODUTO E ESTOQUE E LOCALIZA PRODUTO
    XCOD_ESTOQUE:=InserReg(DMESTOQUE.TEstoque, 'ESTOQUE', 'COD_ESTOQUE');
    DMESTOQUE.TEstoque.FieldByName('COD_ESTOQUE').AsInteger:=XCOD_ESTOQUE;

    XCODPKMESTRE:=InserReg(DMESTOQUE.TSubProd, 'SUBPRODUTO', 'COD_SUBPRODUTO');
    DBPRIMEIRO.SetFocus;
    DMESTOQUE.TSubProd.FieldByName('COD_INTERNO').AsString:=UltCodInt('SUBPRODUTO', 'SUBPROD');
    FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
     DMESTOQUE.TSubProd.FieldByName('CONTRINT').AsString:=DMMACS.TLoja.FieldByName('PROXCTRINT').AsString;
     DMMACS.TLoja.Edit;
     DMMACS.TLoja.FieldByName('PROXCTRINT').AsString:=INCSTRNUM(1, DMMACS.TLoja.FieldByName('PROXCTRINT').AsString);
     DMMACS.TLoja.Post;
     DMMACS.Transaction.CommitRetaining;
    DBCODINT.SetFocus;
end;

procedure TFCadUsoConsumo.BtnApagarClick(Sender: TObject);
begin
      If Mensagem('Confirmação do usuário', 'Deseja realmente apagar '+ 'a Descrição'+#13+DMEstoque.TSubProd.FieldByName('DESCRICAO').AsString+'?', '', 2, 3, False, 'c')=2
      Then Begin
         TransReg(DMESTOQUE.TSubProd, DMEstoque.TransacEstoque, 'a')
      End;
     


end;

procedure TFCadUsoConsumo.BtnCancelarClick(Sender: TObject);
begin
       TransReg(DMESTOQUE.TSubProd, DMEstoque.TransacEstoque, 'c');
       PCadastro.Visible:=False;
       PConsulta.Visible:=true;
       PConsulta.BringToFront;
       BtnFecha.Visible:=True;
end;

procedure TFCadUsoConsumo.BtnConsultarClick(Sender: TObject);
begin
     If DMESTOQUE.TSubProd.FieldByName('USOCONSUMO').AsString ='1' then
     begin
         rbConsumo.Checked:=true;
         rbFrete.Checked:=false;
     end;
     if DMESTOQUE.TSubProd.FieldByName('USOCONSUMO').AsString ='2' then
     begin
         rbFrete.Checked:=true;
         rbConsumo.Checked:=false;
     end;

     PConsulta.Visible:=False;
    PCadastro.Visible:=TRUE;
    PCadastro.BringToFront;
    BtnFecha.Visible:=False;
    Xnovo:=false;

           
    { if not DMESTOQUE.TSubProd.IsEmpty
      Then Begin
            If FiltraTabela(DMESTOQUE.TSubProd, 'SUBPRODUTO', 'COD_SUBPRODUTO', DMESTOQUE.TSubProd.FieldByName(COD_SUBPRODUTO).AsString, '')=True
            Then Begin
                DMESTOQUE.TSubProd.Edit;
                DBPRIMEIRO.SetFocus;
            End
            Else Begin
                Mensagem('Comunicado', 'a Descrição Seleção para ser apagada, não foi encontrada na tabela', '', 1, 1, False, 'I');
            End;

            
      End; }
end;

procedure TFCadUsoConsumo.EdNomeEnter(Sender: TObject);
begin
       if EdNome.Text = 'Digite o Nome ou Descrição' then
           EdNome.Text := ''
       else
           EdNome.SelectAll;

       EdNome.Font.Color := clBlack;
end;

procedure TFCadUsoConsumo.EdNomeExit(Sender: TObject);
begin
       if Trim(EdNome.Text) = ''
       then begin
           EdNome.Text := 'Digite o Nome ou Descrição';
           EdNome.Font.Color := clGray;
       end;
end;

procedure TFCadUsoConsumo.EdNomeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
       If Key=VK_RETURN                                                                                                                    
   	Then Begin//pressionado enter, consultar
            FiltraTabela(DMEstoque.TSubProd,'SUBPRODUTO','DESCRICAO','','(upper(SUBPRODUTO.DESCRICAO) like upper('+#39+EdNome.Text+'%'+#39+')) and ((SUBPRODUTO.USOCONSUMO = '+#39+'1'+#39+') or (SUBPRODUTO.USOCONSUMO = '+#39+'2'+#39+')) ORDER BY DESCRICAO' );


       end;
       If Key=VK_ESCAPE
       Then Begin //pressionado esc, liberar
			FormActivate(Sender);
       End;
end;

procedure TFCadUsoConsumo.BtnFechaClick(Sender: TObject);
begin
   Close;
end;

procedure TFCadUsoConsumo.BtnFechaMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
       BtnFecha.Transparent:=false;
end;

procedure TFCadUsoConsumo.BtnSelecionarClick(Sender: TObject);
begin
    FMenu.SelectedForm:=True;
    Close;
end;

procedure TFCadUsoConsumo.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If PConsulta.Visible=true
  Then Begin
  	 //controle para pular de registro next e prior
    case key of
        Vk_down: DMEstoque.TSubProd.Next;
        Vk_UP: DMEstoque.TSubProd.Prior;
    End;
    //controle de botões
    //botão novo
    If Key=vk_f4 Then
    	 BtnNovo.Click;
    //botão apagar
    If Key=vk_f8 Then
    	 BtnApagar.Click;
    //botão consultar
    If Key=vk_f6 Then
    	 BtnConsultar.Click;
    //botão selecionar
    If Key=vk_f9 Then
	    If BtnSelecionar.Visible=True Then//verifica se o botão esta visivel
   	 	 BtnSelecionar.Click;
    //FOCUS EM LOCALIZAR
    If Key=vk_f2 Then
    	 EdNome.SetFocus;

  End
  Else Begin
    //controle de botões
    //botão gravar
    If Key=vk_f5
    Then Begin
        BtnGravar.SetFocus;
    	 BtnGravar.Click;
    End;
    //botão cancelar
    If Key=vk_f7 Then
    	 BtnCancelar.Click;
  End;  
end;

procedure TFCadUsoConsumo.PConsultaExit(Sender: TObject);
begin
     If PConsulta.Visible=True Then
      PConsulta.SetFocus;
end;

procedure TFCadUsoConsumo.PCadastroExit(Sender: TObject);
begin
   If PCadastro.Visible=True Then
        PCadastro.SetFocus;
end;

end.
