unit URelOrdemLocaMensal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPadrao, Buttons, ExtCtrls, StdCtrls, Grids, DBGrids, ComCtrls,
  UFrmBusca, Mask, ColorMaskEdit, FashionPanel, FR_DSet, FR_DBSet, FR_Class,
  Menus, cxControls, cxContainer, cxEdit, cxGroupBox, TFlatEditUnit;

type
  TFOrdemLocaMensal = class(TFPadrao)
    DBGridCadastroPadrao: TDBGrid;
    Panel2: TPanel;
    Shape8: TShape;
    Label17: TLabel;
    Label18: TLabel;
    Label20: TLabel;
    EdDtInicial: TDateTimePicker;
    EdDtFinal: TDateTimePicker;
    btnAFaturar: TButton;
    btnFaturar: TButton;
    PFinanceiro: TPanel;
    FPFinanceiro: TFashionPanel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    BtnMoedaOK: TBitBtn;
    BtnMoedaCancelar: TBitBtn;
    CBPagamento: TComboBox;
    FrmFormPag: TFrmBusca;
    DBDATAENTREGA: TColorMaskEdit;
    DBHORAENTREGA: TColorMaskEdit;
    FrmContaServ: TFrmBusca;
    Panel7: TPanel;
    Label29: TLabel;
    EdDtFat: TColorMaskEdit;
    CBImpBoleto: TCheckBox;
    PBanco: TPanel;
    Label115: TLabel;
    DBGCTA: TDBGrid;
    Shape10: TShape;
    Shape13: TShape;
    Label31: TLabel;
    Label1: TLabel;
    btnFaturados: TButton;
    FSRel: TfrReport;
    FSDSRel: TfrDBDataSet;
    PMRelatorios: TPopupMenu;
    ExtratoOS1: TMenuItem;
    ExtratoCliente1: TMenuItem;
    Geral1: TMenuItem;
    GBPLACA: TcxGroupBox;
    btnExtratoGeral: TButton;
    btnExtratoOS: TButton;
    btnExtratoCliente: TButton;
    Panel1: TPanel;
    Shape1: TShape;
    edNumeroOS: TFlatEdit;
    Label2: TLabel;
    edNomeCliente: TFlatEdit;
    Label3: TLabel;
    pumDesmarcar: TPopupMenu;
    DesmarcarOrdensdeServio1: TMenuItem;
    
    procedure FormActivate(Sender: TObject);
    procedure btnAFaturarClick(Sender: TObject);
    procedure DBGridCadastroPadraoDblClick(Sender: TObject);
    procedure DBGridCadastroPadraoDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure FrmFormaPagamentoBTNOPENClick(Sender: TObject);
    procedure btnFaturarClick(Sender: TObject);
    procedure BtnMoedaOKClick(Sender: TObject);
    procedure FrmFormPagBTNOPENClick(Sender: TObject);
    procedure BtnMoedaCancelarClick(Sender: TObject);
    procedure FrmFormPagBTNMINUSClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridCadastroPadraoKeyPress(Sender: TObject; var Key: Char);
    procedure btnFaturadosClick(Sender: TObject);
    procedure ExtratoOS1Click(Sender: TObject);
    procedure ExtratoCliente1Click(Sender: TObject);
    procedure btnExtratoGeralClick(Sender: TObject);
    procedure btnExtratoOSClick(Sender: TObject);
    procedure btnExtratoClienteClick(Sender: TObject);
    procedure edNumeroOSKeyPress(Sender: TObject; var Key: Char);
    procedure edNomeClienteKeyPress(Sender: TObject; var Key: Char);
    procedure DesmarcarOrdensdeServio1Click(Sender: TObject);
    

  private
    { Private declarations }
  public
    { Public declarations }

    //Função de consulta e retorno na grid
    Function ConsultaOrdemLocalMensal: Boolean;
    //Função para filtrar a ordem de locação por periodo
    Function FiltraDataMensal(DtInicial: String; DtFinal: String) : Boolean;
    //Função para controlar a data, do mês, e dia
    Function ControlaData(DataInicial : TDate) : String;
    //Função para filtrar as Ordems selecionadas para faturamento
    Function ConsultaOrdemFaturar : String;
    //Função para lança faturamento no contas a receber
    Function LancFaturamento(codOrdemMensal: Integer; codCliente: Integer; codConta: Integer; CodFormPag: Integer; DtFat : String) : Boolean;// DTFECH: String) : Boolean;
    //
    Function FiltraOrdemMensal(xTermoPesquisa, xGerador: String):Boolean;
  end;

var
  FOrdemLocaMensal: TFOrdemLocaMensal;
  xCodFaixaPreco : Integer;
  xDataInicial : String;
  xDataFinal : String;
  xCodOrdemMensal : Integer;
  xCodFormPag : Integer;
  xFormPag : String;
  xCodConta : Integer;
  xFormaConta : String;
  xFatOrdMensal : Boolean;
  xDataAtual : String;
  xDataFat : String;
  xFiltrado : Boolean;
  xFiltroFaturar : Boolean;
  xFiltroFaturados : Boolean;
  Lancar : Boolean;
  Dias : Integer;
  xSqlConsulta: String;
  xBuscaCliente, xBuscaOS, xBuscaData: Boolean; 

implementation

uses UDmServ, UMDO, UDMMacs, UDMEstoque, Alxor32, UOrdemLoca, DateUtils,
  Math, DB, UFormPag, UDMFinanc, UCtaReceber, UMenu, UDMPessoa, UDmBanco,
  UDMConta, UDMCaixa, AlxMessage, UDMGEOGRAFIA;

{$R *.dfm}

procedure TFOrdemLocaMensal.FormActivate(Sender: TObject);
begin
  inherited;
	 Caption:='Ordem de Serviço';  
		xSqlConsulta := '';
       xBuscaCliente := False;
       xBuscaOS := False;
       Caption := '   Ordem de Serviços - Locações Mensais';
       EdDtInicial.Date:=Now;
       EdDtFinal.Date:=Now;
       xCodFormPag:=-1;

       DBGridCadastroPadrao.DataSource:=DMMACS.DSExiste;
       ConsultaOrdemLocalMensal();
end;
// CONSULTA E RETORNA NA GRID A RELAÇÃO DE ORDENS NA FAIXA MENSAL
Function TFOrdemLocaMensal.ConsultaOrdemLocalMensal: Boolean;
Begin

          //CONSULTA A OPÇÃO MENSAL
      {DMMACS.TExiste.Close;
      DMMACS.TExiste.SQL.Clear;
      DMMACS.TExiste.SQL.Add('select vwordem.cod_ordem, vwordem.cod_cliente, vwordem.cod_equipamento,');
      DMMACS.TExiste.SQL.Add('vwordem.numero, vwordem.status, vwordem.total, vwordem.cliente, faixa_preco.descricao,');
      DMMACS.TExiste.SQL.Add('vwordem.dtabert, itprodord.data_garantia, faixa_preco.qtddias, vwordem.mark,');
      DMMACS.TExiste.SQL.Add('subproduto.descricao AS Equip, subproduto.cod_subproduto');
      DMMACS.TExiste.SQL.Add('from vwordem');
      DMMACS.TExiste.SQL.Add('left join itprodord  on vwordem.cod_ordem = itprodord.cod_ordem ');
      DMMACS.TExiste.SQL.Add('left join faixa_preco on itprodord.cod_tabelafaixapreco = faixa_preco.cod_faixapreco ');
      DMMACS.TExiste.SQL.Add('left join estoque on itprodord.cod_estoque = estoque.cod_estoque ');
      DMMACS.TExiste.SQL.Add('left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto ');
      DMMACS.TExiste.SQL.Add('where (vwordem.status <> ''FECHADO'') AND (faixa_preco.descricao = ''MENSAL'')');
      DMMACS.TExiste.SQL.Add('order by vwordem.cod_ordem');
      DMMACS.TExiste.Open;}
      if xSqlConsulta = '' then
      begin
          //Edmar - 07/07/2014 - Novo SQL adiciona joins da tabela tabelafaixapreco e faixa_preco para corrigir
          //problema de não aparecer ordem mensal na tela de mensais
          DMMACS.TExiste.Close;
          DMMACS.TExiste.SQL.Clear;
          DMMACS.TExiste.SQL.Add('select vwordem.cod_ordem, vwordem.cod_cliente, vwordem.cod_equipamento, ');
          DMMACS.TExiste.SQL.Add('vwordem.numero, vwordem.status, vwordem.total, vwordem.cliente, faixa_preco.descricao, ');
          DMMACS.TExiste.SQL.Add('vwordem.dtabert, itprodord.data_garantia, faixa_preco.qtddias, vwordem.mark, ');
          DMMACS.TExiste.SQL.Add('subproduto.descricao AS Equip, subproduto.cod_subproduto ');
          DMMACS.TExiste.SQL.Add('from vwordem ');
          DMMACS.TExiste.SQL.Add(' left join itprodord  on vwordem.cod_ordem = itprodord.cod_ordem ');
          DMMACS.TExiste.SQL.Add(' left join tabelafaixapreco on tabelafaixapreco.cod_tabelafaixapreco = itprodord.cod_tabelafaixapreco ');
          DMMACS.TExiste.SQL.Add(' left join faixa_preco on tabelafaixapreco.cod_faixapreco = faixa_preco.cod_faixapreco ');
          DMMACS.TExiste.SQL.Add(' left join estoque on itprodord.cod_estoque = estoque.cod_estoque ');
          DMMACS.TExiste.SQL.Add(' left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto ');
          DMMACS.TExiste.SQL.Add(' where (vwordem.status <> ''FECHADO'') AND (faixa_preco.descricao = ''MENSAL'') ');
          DMMACS.TExiste.SQL.Add(' order by vwordem.cod_ordem');
          DMMACS.TExiste.Open;
      end
      else begin
          DMMACS.TExiste.Close;
          DMMACS.TExiste.SQL.Clear;
          DMMACS.TExiste.SQL.Add(xSqlConsulta);
          
          if xBuscaCliente then
          		DMMACS.TExiste.ParamByName('NOME').AsString := edNomeCliente.Text+'%';
               
          if xBuscaOS then
				DMMACS.TExiste.ParamByName('NUMERO').AsString := edNumeroOS.Text;

          if xBuscaData then
          begin
          		DMMACS.TExiste.ParamByName('DATA1').AsDate := EdDtInicial.Date;
               DMMACS.TExiste.ParamByName('DATA2').AsDate := EdDtFinal.Date;
          end;
          
          DMMACS.TExiste.Open;
      end;

end;

Function TFOrdemLocaMensal.FiltraDataMensal (DtInicial: String; DtFinal: String) :Boolean;
Begin
      if xFiltroFaturar = true
      then begin
          DMMACS.TExiste.Close;
          DMMACS.TExiste.SQL.Clear;
          DMMACS.TExiste.SQL.Add('select vwordem.cod_ordem, vwordem.cod_cliente, vwordem.cod_equipamento,');
          DMMACS.TExiste.SQL.Add('vwordem.numero, vwordem.status, vwordem.total, vwordem.cliente, faixa_preco.descricao,');
          DMMACS.TExiste.SQL.Add('vwordem.dtabert, itprodord.data_garantia, faixa_preco.qtddias, vwordem.mark,');
          DMMACS.TExiste.SQL.Add('subproduto.descricao AS Equip, subproduto.cod_subproduto');
          DMMACS.TExiste.SQL.Add('from vwordem');
          DMMACS.TExiste.SQL.Add(' left join itprodord  on vwordem.cod_ordem = itprodord.cod_ordem ');
          DMMACS.TExiste.SQL.Add(' left join tabelafaixapreco on tabelafaixapreco.cod_tabelafaixapreco = itprodord.cod_tabelafaixapreco ');
          DMMACS.TExiste.SQL.Add(' left join faixa_preco on tabelafaixapreco.cod_faixapreco = faixa_preco.cod_faixapreco ');
          DMMACS.TExiste.SQL.Add(' left join estoque on itprodord.cod_estoque = estoque.cod_estoque ');
          DMMACS.TExiste.SQL.Add(' left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto ');
          DMMACS.TExiste.SQL.Add(' where (vwordem.status <> ''FECHADO'') AND (faixa_preco.descricao = ''MENSAL'') AND (vwordem.mark <> ''F'') AND (vwordem.dtabert between :DATA1 and :DATA2)');
          DMMACS.TExiste.ParamByName('DATA1').AsDate:=StrToDate(DtInicial);
          DMMACS.TExiste.ParamByName('DATA2').AsDate:=StrToDate(DtFinal);
          DMMACS.TExiste.SQL.Add('order by vwordem.cod_ordem');
          DMMACS.TExiste.Open;

          Exit;
      end;

      if xFiltroFaturados = true
      then begin
          DMMACS.TExiste.Close;
          DMMACS.TExiste.SQL.Clear;
          DMMACS.TExiste.SQL.Add('select vwordem.cod_ordem, vwordem.cod_cliente, vwordem.cod_equipamento,');
          DMMACS.TExiste.SQL.Add('vwordem.numero, vwordem.status, vwordem.total, vwordem.cliente, faixa_preco.descricao,');
          DMMACS.TExiste.SQL.Add('vwordem.dtabert, itprodord.data_garantia, faixa_preco.qtddias, vwordem.mark,');
          DMMACS.TExiste.SQL.Add('subproduto.descricao AS Equip, subproduto.cod_subproduto');
          DMMACS.TExiste.SQL.Add('from vwordem ');
          DMMACS.TExiste.SQL.Add(' left join itprodord  on vwordem.cod_ordem = itprodord.cod_ordem ');
      	   DMMACS.TExiste.SQL.Add(' left join tabelafaixapreco on tabelafaixapreco.cod_tabelafaixapreco = itprodord.cod_tabelafaixapreco ');
      	   DMMACS.TExiste.SQL.Add(' left join faixa_preco on tabelafaixapreco.cod_faixapreco = faixa_preco.cod_faixapreco ');
          DMMACS.TExiste.SQL.Add(' left join estoque on itprodord.cod_estoque = estoque.cod_estoque ');
          DMMACS.TExiste.SQL.Add(' left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto ');
          DMMACS.TExiste.SQL.Add('where (vwordem.status <> ''FECHADO'') AND (faixa_preco.descricao = ''MENSAL'') AND (vwordem.mark = ''F'') AND (vwordem.dtabert between :DATA1 and :DATA2)');
          DMMACS.TExiste.ParamByName('DATA1').AsDate:=StrToDate(DtInicial);
          DMMACS.TExiste.ParamByName('DATA2').AsDate:=StrToDate(DtFinal);
          DMMACS.TExiste.SQL.Add('order by vwordem.cod_ordem');
          DMMACS.TExiste.Open;

          Exit;
      end;

end;

Function TFOrdemLocaMensal.ConsultaOrdemFaturar :String;
Begin

      //CONSULTA A ORDEM SELECIONADA PARA FATURAR
      DMMACS.TExiste.Close;
      DMMACS.TExiste.SQL.Clear;
      DMMACS.TExiste.SQL.Add('select vwordem.cod_ordem, vwordem.cod_cliente, vwordem.cod_equipamento,');
      DMMACS.TExiste.SQL.Add('vwordem.numero, vwordem.status, vwordem.total, vwordem.cliente, faixa_preco.descricao, faixa_preco.qtddias,');
      DMMACS.TExiste.SQL.Add('vwordem.dtabert, itprodord.data_garantia, faixa_preco.qtddias, vwordem.mark,');
      DMMACS.TExiste.SQL.Add('subproduto.descricao AS Equip, subproduto.cod_subproduto');
      DMMACS.TExiste.SQL.Add('from vwordem ');
      DMMACS.TExiste.SQL.Add('left join itprodord  on vwordem.cod_ordem = itprodord.cod_ordem ');
      DMMACS.TExiste.SQL.Add('left join faixa_preco on itprodord.cod_tabelafaixapreco = faixa_preco.cod_faixapreco ');
      DMMACS.TExiste.SQL.Add('left join estoque on itprodord.cod_estoque = estoque.cod_estoque ');
      DMMACS.TExiste.SQL.Add('left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto ');
      DMMACS.TExiste.SQL.Add('where (vwordem.status <> ''FECHADO'') AND (faixa_preco.descricao = ''MENSAL'') AND (vwordem.mark = ''X'')');
      //DMMACS.TExiste.SQL.Add('order by vwordem.cod_ordem');

      DMMACS.TExiste.Open;

end;

//MAURO - Função para controlar a data, em mes e dia
Function TFOrdemLocaMensal.ControlaData(DataInicial: TDate) : String;
Var Data: TDateTime;
  Mes, Dia : Integer;
  Year, Month, Day: Word;
Begin


      Data := DataInicial;

      DecodeDate(Data, Year, Month, Day);
      try
        if Month = 1
        then begin
            Data := IncDay(Data, -31);
            Result:= DateToStr(Data);
            Exit;
        End;
        if Month = 3 //fevereiro
        then begin
          if Day = 29
          then begin
            Data := IncDay(Data, -29);
            Result:= DateToStr(Data);
            Exit;
          end
          else
            Data := IncDay(Data, -28);
            Result:= DateToStr(Data);
            Exit;
        End

        else if Month=2
        then begin
            Data := IncDay(Data, -31);
            Result:= DateToStr(Data);
            Exit;
           end
           else if Month=4
           then begin
            Data := IncDay(Data, -31);
            Result:= DateToStr(Data);
            Exit;
           end
           else if Month=6
           then begin
            Data := IncDay(Data, -31);
            Result:= DateToStr(Data);
            Exit;
           end
           else if Month=9
           then begin
            Data := IncDay(Data, -31);
            Result:= DateToStr(Data);
            Exit;
           end
           else if Month=11
           then begin
            Data := IncDay(Data, -31);
            Result:= DateToStr(Data);
            Exit;
           end

           else
             if Day = 31
             then begin
             Data := IncDay(Data, -31);
             Result:= DateToStr(Data);
             Exit;
            end
            else
             Data := IncDay(Data, -30);
             Result:= DateToStr(Data);
             Exit;
      Except

      End;

End;

procedure TFOrdemLocaMensal.btnAFaturarClick(Sender: TObject);

begin
  inherited;
      xBuscaData := True;
      xBuscaCliente := False;
      xBuscaOS := False;

      xFiltroFaturados := False;
      xFiltroFaturar := True;
      xFiltrado := true;
      xDataAtual := DateToStr(Date());
      xDataInicial:= DateToStr(EdDtInicial.Date);
      xDataFinal:= DateToStr(EdDtFinal.Date);
      FiltraDataMensal(xDataInicial, xDataFinal);
end;

procedure TFOrdemLocaMensal.DBGridCadastroPadraoDblClick(Sender: TObject);
Var
    Dias : Integer;
    xDataAbert : String;
    xDataFatura : String;
    xSelecionado : String;

begin
  inherited;
 	   xSqlConsulta := DMMACS.TExiste.SQL.Text;
      xCodOrdemMensal := DMMACS.TExiste.FieldByName('cod_ordem').AsInteger;
      xSelecionado := DMMACS.TExiste.FieldByName('mark').AsString;
      xDataAbert := DMMACS.TExiste.FieldByName('dtabert').AsString;
      xDataFatura := DMMACS.TExiste.FieldByName('data_garantia').AsString;
      xDataAtual := DateToStr(Date());

      if xSelecionado = 'F' then
      begin
         Dias := StrToInt(DifDias(StrToDate(xDataFatura), StrToDate(xDataAtual), 0));
         if Dias > 30
         then begin

            DMMACS.TExiste.Close;
            DMMACS.TExiste.SQL.Clear;
            DMMACS.TExiste.SQL.Add('update ordem set ordem.mark = ''X''');
            DMMACS.TExiste.SQL.Add('Where ordem.cod_ordem=:codigo');
            DMMACS.TExiste.ParamByName('codigo'). AsInteger := xCodOrdemMensal;
            DMMACS.TExiste.ExecSQL;
            DMMACS.Transaction.CommitRetaining;

            ConsultaOrdemLocalMensal();
         end
         else
              Mensagem('    A T E N Ç Ã O   ','A ORDEM SELECIONADA JÁ SE ENCONTRA FATURADA NO MÊS.','',1,1,false,'I');

         Exit;
      end;

      if xSelecionado = 'X'
      then begin
           Dias := StrToInt(DifDias(StrToDate(xDataAbert), StrToDate(xDataFatura), 0));
           if Dias <> 0
           then begin
              DMMACS.TExiste.Close;
              DMMACS.TExiste.SQL.Clear;
              DMMACS.TExiste.SQL.Add('update ordem set ordem.mark = ''F''');
              DMMACS.TExiste.SQL.Add('Where ordem.cod_ordem=:codigo');
              DMMACS.TExiste.ParamByName('codigo'). AsInteger := xCodOrdemMensal;
              DMMACS.TExiste.ExecSQL;
              DMMACS.Transaction.CommitRetaining;

           end;

           if Dias = 0 then
           begin
              DMMACS.TExiste.Close;
              DMMACS.TExiste.SQL.Clear;
              DMMACS.TExiste.SQL.Add('update ordem set ordem.mark = ''''');
              DMMACS.TExiste.SQL.Add('Where ordem.cod_ordem=:codigo');
              DMMACS.TExiste.ParamByName('codigo'). AsInteger := xCodOrdemMensal;
              DMMACS.TExiste.ExecSQL;
              DMMACS.Transaction.CommitRetaining;
           end;

         	ConsultaOrdemLocalMensal();

			Exit;
      end else
      begin
      		DMMACS.TALX.Close;
           DMMACS.TALX.SQL.Clear;
           DMMACS.TALX.SQL.Add('SELECT VWORDEM.numero FROM VWORDEM WHERE (VWORDEM.MARK = ''X'') AND (VWORDEM.status <> ''FECHADO'')');
           DMMACS.TALX.Open;

           if DMMACS.TALX.IsEmpty then
           begin
               DMMACS.TExiste.Close;
               DMMACS.TExiste.SQL.Clear;
               DMMACS.TExiste.SQL.Add('update ordem set ordem.mark = ''X''');
               DMMACS.TExiste.SQL.Add('Where ordem.cod_ordem=:codigo');
               DMMACS.TExiste.ParamByName('codigo'). AsInteger := xCodOrdemMensal;
               DMMACS.TExiste.ExecSQL;
               DMMACS.Transaction.CommitRetaining;
           end
           else
              Mensagem('    A T E N Ç Ã O   ','NÃO É POSSÍVEL MARCAR DUAS ORDENS DE SERVIÇO AO MESMO TEMPO.','',1,1,false,'I');

           ConsultaOrdemLocalMensal();              
      end;
end;



procedure TFOrdemLocaMensal.DBGridCadastroPadraoDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
      if (DMMACS.TExiste.FieldByName('MARK').AsString='X')
      Then Begin
          DBGridCadastroPadrao.Canvas.Font.Color := clGreen;
          DBGridCadastroPadrao.DefaultDrawColumnCell(Rect, DataCol, Column, State);
      end;
      if (DMMACS.TExiste.FieldByName('MARK').AsString=' ')
      Then Begin
          DBGridCadastroPadrao.Canvas.Font.Color := clBlack;
          DBGridCadastroPadrao.DefaultDrawColumnCell(Rect, DataCol, Column, State);
      end;
      if (DMMACS.TExiste.FieldByName('MARK').AsString='F')
      Then Begin
          DBGridCadastroPadrao.Canvas.Font.Color := clRed;
          DBGridCadastroPadrao.DefaultDrawColumnCell(Rect, DataCol, Column, State);
      end;
end;

procedure TFOrdemLocaMensal.FrmFormaPagamentoBTNOPENClick(Sender: TObject);
begin
  inherited;
      If AbrirForm(TFFormPag, FFormPag, 1)='Selected'
      Then Begin
          xCodFormPag:=DMFINANC.TFormPag.FieldByName('COD_FORMPAG').AsInteger;
          xFormPag := DMFinanc.TFormPag.FieldByName('DESCRICAO').AsString;
          FrmFormPag.EDCodigo.Text:=DMFinanc.TFormPag.FieldByName('COD_INTERNO').AsString;
          FrmFormPag.EdDescricao.Text:=DMFinanc.TFormPag.FieldByName('DESCRICAO').AsString;
          FrmFormPag.Repaint;
      End
      Else Begin
          xCodFormPag:=-1;
          FrmFormPag.EDCodigo.Text:='';
          FrmFormPag.EdDescricao.Text:='';
      End;
end;
//MAURO 18/10/2012 - FUNÇÃO PARA LANCAR OS FATURAMENTOS DAS ORDENS MENSAIS
Function TFOrdemLocaMensal.LancFaturamento (codOrdemMensal: Integer; codCliente: Integer; codConta: Integer; CodFormPag: Integer; dtFat: String ) : Boolean;
Var
	 ATUFINANC: Boolean; //controle financeiro foram efetivados
   XVLRDESP:Real;//O VLR DAS DESPESAS É DIV POR DOIS ENTRE PROD E SERV.

Begin
      LancFaturamento:=True;
      ATUFINANC:=True;

      if FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', DMMACS.TExiste.FieldByName('COD_ORDEM').AsString, '') = True
      then begin
          XVLRDESP:=0;
          //Filtra loja
          FiltraTabela(DMMacs.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');

        //Filtra Equipamento
        //FiltraTabela(DMESTOQUE.vws, '')

        //Filtra cliente
       FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_CLIENTE', DMMACS.TExiste.FieldByName('COD_CLIENTE').AsString, '');

       If FiltraTabela(DMFinanc.TFormPag, 'FORMPAG', 'COD_FORMPAG', IntToStr(CodFormPag), '') = True
        Then Begin
         If DMFinanc.TFormPag.FieldByName('DESCRICAO').AsString='À VISTA'
          Then Begin // caso o pedido tenha sido feito à vista deve-se lançar o valor direto no caixa
            If CBPagamento.Text='Cheque'
              Then Begin//LANÇAMENTO EM CONTROLE DE CHEQUE
                If LancChEnt(codConta, -1, 'Fat. OS '+DMServ.TOrd.FieldByName('NUMERO').AsString+' - '+DMPESSOA.WCliente.FieldByName('NOME').AsString +' - '+ DMMACS.TExiste.FieldByName('EQUIP').AsString, Date(), '', DMServ.TOrd.FieldByName('TOTPROD').AsCurrency-DMServ.TOrd.FieldByName('VLRADIANTAMENTO').AsCurrency, DMServ.TOrd.FieldByName('TOTSERV').AsCurrency+XVLRDESP, '', '', 0, '', '', 'ORDEMLOCA', IntToStr(codOrdemMensal))=True
                  Then  ////informa que a atualização do financeiro foi efetivada
                       ATUFINANC:=True
                  Else//informa que a finalização do financeiro falhou
                       ATUFINANC:=False;
                End;
                If CBPagamento.Text = 'Cartão'
                  Then Begin
                    If LanBanco(DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger,codConta,'Fat. OS ' + DMServ.TOrd.FieldByName('NUMERO').AsString + ' - '+DMPESSOA.WCliente.FieldByName('NOME').AsString +' - '+ DMMACS.TExiste.FieldByName('EQUIP').AsString, DMServ.TOrd.FieldByName('TOTPROD').AsCurrency-DMServ.TOrd.FieldByName('VLRADIANTAMENTO').AsCurrency, 'TOTPROD',codOrdemMensal, 'ORDSERV',StrToInt(FMenu.LCODUSUARIO.Caption), 'DEP. AUTO.', 'S',DateToStr(Date()),'',DateToStr(Date()),'1',DateToStr(Date())) = TRUE
                      Then  Begin////informa que a atualização do financeiro foi efetivada
                          ATUFINANC:=True
                      End
                      Else Begin//informa que a finalização do financeiro falhou
                          ATUFINANC:=False;
                          exit;
                    End;
                    If LanBanco(DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger,codConta,'Fat. OS ' + DMServ.TOrd.FieldByName('NUMERO').AsString + ' - '+DMPESSOA.WCliente.FieldByName('NOME').AsString +' - '+ DMMACS.TExiste.FieldByName('EQUIP').AsString, DMServ.TOrd.FieldByName('TOTSERV').AsCurrency+XVLRDESP, 'TOTSERV',codOrdemMensal, 'ORDSERV',StrToInt(FMenu.LCODUSUARIO.Caption), 'DEP. AUTO.', 'S',DateToStr(Date()),'',DateToStr(Date()),'1',DateToStr(Date())) = TRUE
                      Then  Begin////informa que a atualização do financeiro foi efetivada
                          ATUFINANC:=True
                      End
                      Else Begin//informa que a finalização do financeiro falhou
                                   ATUFINANC:=False;
                    End;
                End;
                If (CBPagamento.Text <> 'Cheque') and (CBPagamento.Text <> 'Cartão')
                Then Begin
                               //REALIZA LANÇAMENTOS EM CAIXA REFERENTE A PRODUTOS
                    If LanCaixa(-1, DateToStr(Date()), codConta, 'Fat. OS '+DMServ.TOrd.FieldByName('NUMERO').AsString+' - '+DMPESSOA.WCliente.FieldByName('NOME').AsString +' - '+ DMMACS.TExiste.FieldByName('EQUIP').AsString,  DMServ.TOrd.FieldByName('TOTPROD').AsCurrency-DMServ.TOrd.FieldByName('VLRADIANTAMENTO').AsCurrency, 'ORDSERV', codOrdemMensal, CBPagamento.Text, 'E', DMServ.TOrd.FieldByName('NUMERO').AsString, StrToDate(EdDtFat.Text), '1')=True
                       Then Begin//informa que a atualização do financeiro foi efetivada
                           ATUFINANC:=True;
                       End
                       Else Begin//informa que a finalização do financeiro falhou
                           ATUFINANC:=False;
                    End;
                               //REALIZA LANÇAMENTOS EM CAIXA REFERENTE A SERVIÇOS
                    //If LanCaixa(-1, DateToStr(Date()), codConta, 'Fech. OS '+DMServ.TOrd.FieldByName('NUMERO').AsString+' - '+DMPESSOA.WCliente.FieldByName('NOME').AsString,  DMServ.TOrd.FieldByName('TOTSERV').AsCurrency+XVLRDESP, 'ORDSERV', codOrdemMensal, CBPagamento.Text, 'E', DMServ.TOrd.FieldByName('NUMERO').AsString, StrToDate(EdDtFat.Text), '1')=True
                      // Then Begin//informa que a atualização do financeiro foi efetivada
                                  // ATUFINANC:=True;
                       //End
                      // Else Begin//informa que a finalização do financeiro falhou
                                 //  ATUFINANC:=False;
                    //End;
                End;
         End
         Else Begin//Não é à vista
            If LancConta('ORDEM', codOrdemMensal, DMServ.TOrd.FieldByName('COD_CLIENTE').AsInteger, CBPagamento.Text, DMServ.TOrd.FieldByName('TOTPROD').AsCurrency-DMServ.TOrd.FieldByName('VLRADIANTAMENTO').AsCurrency, DMServ.TOrd.FieldByName('TOTSERV').AsCurrency+XVLRDESP, codConta, -1, -1, 'Fat. OS. '+DMServ.TOrd.FieldByName('NUMERO').AsString + ' - '+DMPESSOA.WCliente.FieldByName('NOME').AsString +' - '+ DMMACS.TExiste.FieldByName('EQUIP').AsString, CodFormPag, DMServ.TOrd.FieldByName('NUMERO').AsString, 'O', Date(), 0, EdDtFat.Text, DMServ.TOrd.FieldByName('numfiscal').AsString)=True
              Then Begin
                    ATUFINANC:=True;
              End
              Else Begin
                    ATUFINANC:=False;
              End;
            End;
         end
         Else Begin //não esncontrou forma de pagamento, processo inválido retornar informações
                   ATUFINANC:=False;
         End;
      End
    //if filtra ordem
      Else Begin
         ATUFINANC:=True;
      End;
       //Verifica se todas as atualizações foram possíveis
       if ATUFINANC=True
       Then Begin //então tenta-se confirmar operação
       	Try
   			//calcula comissão
   			//CalcComisTotVend;
           	//FECHA PEDIDO
               DMServ.TOrd. Edit;

               DMServ.TOrd.FieldByName('COD_FORMPAG').AsInteger:=XCodFormPag;
               DMServ.TOrd.FieldByName('DTENTREGA').AsString:=DBDATAENTREGA.Text;
               DMServ.TOrd.FieldByName('TIPOPAG').AsString:=CBPagamento.Text;
               DMServ.TOrd.FieldByName('TIPOPAG').AsString:=CBPagamento.Text;
               DMServ.TOrd.FieldByName('HRENTREGA').AsString:=DBHORAENTREGA.Text;
               DMServ.TOrd.FieldByName('COMISSAO').AsCurrency:=0;
               DMServ.TOrd.FieldByName('MARK').AsString := 'F';
               DMServ.TOrd.Post;
               DMServ.TOrd.ApplyUpdates;

               DMMACS.TALX.Close;
               DMMACS.TALX.SQL.Clear;
               DMMACS.TALX.SQL.Add('update itprodord set itprodord.data_garantia=:data');
               DMMACS.TALX.SQL.Add('Where itprodord.cod_ordem=:codigo');
               DMMACS.TALX.ParamByName('codigo').AsInteger := xCodOrdemMensal;
               DMMACS.TALX.ParamByName('data').AsDate := StrToDate(EdDtFat.Text);
               DMMACS.TALX.ExecSQL;
               DMMACS.Transaction.CommitRetaining;

               //EFETUA TRANSAÇÕES
               DMServ.IBT.CommitRetaining;
               DMBANCO.IBT.CommitRetaining;
               DMCAIXA.IBT.CommitRetaining;
               MDO.Transac.CommitRetaining;

               Try
                   MdoQueryClear;
                   MDO.Query.SQL.Add(' Update itprodord set itprodord.qtdret=-5000 where (itprodord.cod_ordem=:codigo) ');
                   MDO.Query.ParamByName('codigo').AsString:=IntToStr(codOrdemMensal);
                   MDO.Query.ExecSQL;
                   MDO.Transac.CommitRetaining;
               Except

               End;
				           
               
           Except
				      Mensagem('OPÇÃO BLOQUEADA', 'Ocorreram problemas ao fechar a ordem de serviço, os dados serão mantidos e a ordem aberto.', 'Ocorreram problemas ao gerar informações financeiras, por motivos de segurança serão mantidas as informações antigas. Feche e reinicie o sistema, se o problema persistir informe e peça auxílio ao suporte técnico. ', 1, 1, true, 'a');
				      DMCAIXA.IBT.RollbackRetaining;
				      DMServ.IBT.RollbackRetaining;
              DMBANCO.IBT.RollbackRetaining;
               //MDO.Transac.RollbackRetaining;
           End;
       End
       Else Begin
			     Mensagem('OPÇÃO BLOQUEADA', 'Ocorreram problemas ao fechar a ordem de serviço, os dados serão mantidos e a ordem aberto.', 'Ocorreram problemas ao gerar informações financeiras, por motivos de segurança serão mantidas as informações antigas. Feche e reinicie o sistema, se o problema persistir informe e peça auxílio ao suporte técnico. ', 1, 1, true, 'a');
           DMCAIXA.IBT.RollbackRetaining;
			     DMServ.IBT.RollbackRetaining;
           DMMACS.Transaction.RollbackRetaining;
       End;
End;

procedure TFOrdemLocaMensal.btnFaturarClick(Sender: TObject);
Var
  ATUFINANC: Boolean; //controle financeiro foram efetivados
  XVLRDESP:Real;//O VLR DAS DESPESAS É DIV POR DOIS ENTRE PROD E SERV.
  aux : String;
begin
  inherited;

      //verificar as os que estão com F mas que passou um mês


      DMMACS.TExiste.Close;
      DMMACS.TExiste.SQL.Clear;
      DMMACS.TExiste.SQL.Add('select vwordem.cod_ordem, vwordem.cod_cliente, vwordem.cod_equipamento,');
      DMMACS.TExiste.SQL.Add('vwordem.numero, vwordem.status, vwordem.total, vwordem.cliente, faixa_preco.descricao, faixa_preco.qtddias,');
      DMMACS.TExiste.SQL.Add('vwordem.dtabert, itprodord.data_garantia, faixa_preco.qtddias, vwordem.mark,');
      DMMACS.TExiste.SQL.Add('subproduto.descricao AS Equip, subproduto.cod_subproduto, vwordem.formapag, ordem.cod_formpag');
      DMMACS.TExiste.SQL.Add('from vwordem');
      DMMACS.TExiste.SQL.Add('left join itprodord  on vwordem.cod_ordem = itprodord.cod_ordem ');
      DMMACS.TExiste.SQL.Add(' left join tabelafaixapreco on tabelafaixapreco.cod_tabelafaixapreco = itprodord.cod_tabelafaixapreco ');
      DMMACS.TExiste.SQL.Add(' left join faixa_preco on tabelafaixapreco.cod_faixapreco = faixa_preco.cod_faixapreco ');
      DMMACS.TExiste.SQL.Add('left join estoque on itprodord.cod_estoque = estoque.cod_estoque ');
      DMMACS.TExiste.SQL.Add('left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto ');
      DMMACS.TExiste.SQL.Add('left join ordem on vwordem.cod_ordem = ordem.cod_ordem ');
      DMMACS.TExiste.SQL.Add('where (vwordem.status <> ''FECHADO'') AND (faixa_preco.descricao = ''MENSAL'') AND (vwordem.mark = ''X'')');
      DMMACS.TExiste.SQL.Add('order by vwordem.cod_ordem');
      DMMACS.TExiste.Open;
      DMMACS.TExiste.First;

        if DMMACS.TExiste.isEmpty
        then begin
             Mensagem('    A T E N Ç Ã O   ','NO MOMENTO NÃO EXISTE ORDEM MARCADA PARA FATURAMENTO.','',1,1,false,'I');
             if xFiltrado = true then
                FiltraDataMensal(xDataInicial, xDataFinal)
             else
                ConsultaOrdemLocalMensal();
                
             Exit;
        end;

        If Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'DESEJA REALMENTE FATURAR AS ORDENS MARCADAS? ', '', 2, 3, False, 'C')=2
        Then Begin

            //FORMA DE PAGAMENTO
            if FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'COD_FORMPAG', DMMACS.TExiste.FieldByName('COD_FORMPAG').AsString, '')=True
      		  Then Begin
				       XCodFormPag:=DMFINANC.TFormPag.FieldByName('COD_FORMPAG').AsInteger;
  		    	   FrmFormPag.EDCodigo.Text:=DMFINANC.TFormPag.FieldByName('COD_INTERNO').AsString;
               FrmFormPag.EdDescricao.Text:=DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString;
      		  End
      		  Else Begin
				       XCodFormPag:=-1;
               FrmFormPag.EDCodigo.Text:='';
               FrmFormPag.EdDescricao.Text:='';
      		  End;

            //CONTA
            if FrmFormPag.EdDescricao.Text = 'À VISTA' then
           	  //CBImpRecibo.Visible:=true
            else
              //CBImpRecibo.Visible:=false;

            xCodConta:=-1;
            FrmContaServ.EdDescricao.Text:='';
            FrmContaServ.EDCodigo.Text:='';
            DBDATAENTREGA.Clear;
            DBDATAENTREGA.Text:=DateTostr(Date());
            DBHORAENTREGA.Text:=TimeTostr(Time());
            EdDtFat.Text := DateToStr(Date());

           //FrmContaServ.Visible:=False;

            If DMServ.WOrdemDesp.FieldByName('STATUS').AsString='FORMAPAG'
			      Then Begin//Busca contas para À VISTA
   			    //PRODUTO
               If DMMACS.TLoja.FieldByName('PLNCTA_VENDVISTA').AsString<>''
               Then Begin//se existir uma conta padrao configurada
                   xCodConta:=DMMACS.TLoja.FieldByName('PLNCTA_VENDVISTA').AsInteger;
                   FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_PLNCTA', IntToStr(xCodConta), '');
                   FrmContaServ.EDCodigo.Text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
                   FrmContaServ.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
               End
               Else Begin
                   xCodConta:=-1;
                   FrmContaServ.EDCodigo.Text:='';
                   FrmContaServ.EdDescricao.Text:='';
               End;
            End
            Else Begin//Busca conta para À Prazo
               //PRODUTO
               If DMMACS.TLoja.FieldByName('PLNCTA_VENDPRAZO').AsString<>''
               Then Begin//se existir uma conta padrao configurada
                   xCodConta:=DMMACS.TLoja.FieldByName('PLNCTA_VENDPRAZO').AsInteger;
                   FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_PLNCTA', IntToStr(xCodConta), '');
                   FrmContaServ.EDCodigo.Text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
                   FrmContaServ.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
               End
               Else Begin
                   xCodConta:=-1;
                   FrmContaServ.EDCodigo.Text:='';
                   FrmContaServ.EdDescricao.Text:='';
               End;
            End;

            PFinanceiro.Visible:=True;
            PFinanceiro.Enabled:=True;
            PFinanceiro.BringToFront;
            exit;
        end;
        ConsultaOrdemLocalMensal();

end;

procedure TFOrdemLocaMensal.BtnMoedaOKClick(Sender: TObject);
var
   xDataAtual : String;
   Dias : Integer;
   Lancar : Boolean;
   xMarcado : String;
   aux : String;
   XCodPedidoGerador :Integer; // - 16/03/2009: guarda codigo do pedido
   XFlag : Boolean; // - 13/03/2009: verifica se deve imprimir NF depois do cupom conforme configurado em caixa
   XNumAuxECF:String; // - 16/03/2009: armazena numero auxiliar cupom
begin
  inherited;
       PFinanceiro.Visible:=false;
     //valida quanto a forma de pagamento
    If CBPagamento.Text=''
    Then Begin
		   Mensagem('OPÇÃO BLOQUEADA', 'Por favor informe se o pagamento será feito em carteira ou cheque!', '', 1, 1, False, 'i');
       CBPagamento.SetFocus;
       Exit;
    End;

    //valida quanto a data de entrega
	  If DBDataEntrega.Text='  /  /    '
    Then Begin
		   Mensagem('OPÇÃO BLOQUEADA', 'Por favor informe a data de entrega do equipamento!', '', 1, 1, False, 'i');
       DBDataEntrega.SetFocus;
       Exit;
    End;

    //valida quanto a hora de entrega
	  If DBHoraEntrega.Text=''
    Then Begin
		   Mensagem('OPÇÃO BLOQUEADA', 'Por favor informe a hora de entrega do equipamento!', '', 1, 1, False, 'i');
       DBHoraEntrega.SetFocus;
       Exit;
    End;

    //valida quanto a forma de pagamento
    If XCodFormPag=-1
    Then Begin
	     Mensagem('OPÇÃO BLOQUEADA', 'Por favor informe uma forma de pagamento para lançamento no financeiro!', '', 1, 1, False, 'i');
       FrmFormPag.EDCodigo.SetFocus;
       Exit;
    End;

    //Mauro 25/10/2012: Verifica se gera boleto ao ser faturado
    if CBImpBoleto.Checked = True then
    begin
       //xFatOrdMensal:=True;
    end
    else begin
       //xFatOrdMensal:=true;
    end;

    aux := DMMACS.TExiste.FieldByName('Cliente').AsString;

    xCodOrdemMensal := DMMACS.TExiste.FieldByName('cod_ordem').AsInteger;
    xCodCliente := DMMACS.TExiste.FieldByName('cod_cliente').AsInteger;
    xDataFat := EdDtFat.Text;
    //xDataFat := DMMACS.TExiste.FieldByName('data_garantia').AsString;

    LancFaturamento(xCodOrdemMensal, xCodCliente, xCodConta, xCodFormPag, xDataFat);

    PFinanceiro.Visible:=false;
    Mensagem('INFORMAÇÃO AO USUÁRIO', 'ORDEM DE SERVIÇO FATURADA COM SUCESSO!', '', 1, 1, false, 'a');
    ConsultaOrdemLocalMensal();


end;

procedure TFOrdemLocaMensal.FrmFormPagBTNOPENClick(Sender: TObject);
begin
  inherited;
    If AbrirForm(TFFormPag, FFormPag, 1)='Selected'
    Then Begin
       xCodFormPag:=DMFinanc.TFormPag.FieldByName('COD_FORMPAG').AsInteger;
       FrmFormPag.EDCodigo.Text:=DMFinanc.TFormPag.FieldByName('COD_INTERNO').AsString;
       FrmFormPag.EdDescricao.Text:=DMFinanc.TFormPag.FieldByName('DESCRICAO').AsString;
    end;
end;

procedure TFOrdemLocaMensal.BtnMoedaCancelarClick(Sender: TObject);
begin
  inherited;
      PFinanceiro.Visible:=false;
      ConsultaOrdemLocalMensal();
end;

procedure TFOrdemLocaMensal.FrmFormPagBTNMINUSClick(Sender: TObject);
begin
  inherited;

     xCodConta:=-1;
     FrmContaServ.EDCodigo.Text:='';
     FrmContaServ.EdDescricao.Text:='';
end;

procedure TFOrdemLocaMensal.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
     if (key = #27)
     then begin
       ConsultaOrdemLocalMensal();
       xFiltrado := false;
     end;
end;

procedure TFOrdemLocaMensal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
      xFiltrado := false;
end;

procedure TFOrdemLocaMensal.DBGridCadastroPadraoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
      if (key = #27)
     then begin
       ConsultaOrdemLocalMensal();
       xFiltrado := false;
     end;
end;

procedure TFOrdemLocaMensal.btnFaturadosClick(Sender: TObject);
begin
  inherited;
      xBuscaData := True;
      xBuscaCliente := False;
      xBuscaOS := False;
            
      xFiltroFaturados := True;
      xFiltroFaturar := False;
      xFiltrado := true;
      xDataAtual := DateToStr(Date());
      xDataInicial:= DateToStr(EdDtInicial.Date);
      xDataFinal:= DateToStr(EdDtFinal.Date);
      FiltraDataMensal(xDataInicial, xDataFinal);
      
end;

procedure TFOrdemLocaMensal.ExtratoOS1Click(Sender: TObject);
begin
  inherited;
    //extrato OS


end;

procedure TFOrdemLocaMensal.ExtratoCliente1Click(Sender: TObject);
begin
  inherited;
    //extrato cliente
end;

procedure TFOrdemLocaMensal.btnExtratoGeralClick(Sender: TObject);
begin
  inherited;

      if xFiltrado = false
      then begin
        	Mensagem('INFORMAÇÃO AO USUÁRIO', 'FILTRE AS INFORMAÇÕES ANTES DE TIRAR O EXTRATO!', '', 1, 1, false, 'a');
        	Exit;
      end;

      //FILTRA EMPRESA PARA IMPRIMIR CABEÇALHO
      If FiltraTabela(DMMACS.TEmpresa, 'EMPRESA', 'COD_EMPRESA', FMenu.LCODEMPRESA.Caption, '')=False Then
      		Exit;
      
      DMMACS.TRel.Close;
      DMMACS.TRel.SQL.Clear;
      DMMACS.TRel.SQL.Add('select vwordem.cod_ordem, vwordem.cod_cliente, vwordem.cod_equipamento,');
      DMMACS.TRel.SQL.Add('vwordem.numero, vwordem.status, vwordem.total, vwordem.cliente, vwordem.mark,');
      DMMACS.TRel.SQL.Add('faixa_preco.descricao, vwordem.dtabert, itprodord.data_garantia, faixa_preco.qtddias,');
      DMMACS.TRel.SQL.Add('subproduto.descricao AS Equip, subproduto.cod_subproduto,');
      DMMACS.TRel.SQL.Add('vwparcr.cod_parcelacr, vwparcr.cod_ctareceber, ctareceber.tipogerador ,vwparcr.cobranca, vwparcr.dtvenc, vwparcr.dtdebito,');
      DMMACS.TRel.SQL.Add('vwparcr.dtlanc ,vwparcr.numparc, vwparcr.valor, vwparcr.valorpg,vwparcr.formpag, vwparcr.fech');
      DMMACS.TRel.SQL.Add('from vwparcr');
      DMMACS.TRel.SQL.Add('left join ctareceber on vwparcr.cod_ctareceber = ctareceber.cod_ctareceber');
      DMMACS.TRel.SQL.Add('left join vwordem on ctareceber.cod_gerador = vwordem.cod_ordem');
      DMMACS.TRel.SQL.Add('left join itprodord  on vwordem.cod_ordem = itprodord.cod_ordem');
      DMMACS.TRel.SQL.Add(' left join tabelafaixapreco on tabelafaixapreco.cod_tabelafaixapreco = itprodord.cod_tabelafaixapreco ');
      DMMACS.TRel.SQL.Add(' left join faixa_preco on tabelafaixapreco.cod_faixapreco = faixa_preco.cod_faixapreco ');
      DMMACS.TRel.SQL.Add('left join estoque on itprodord.cod_estoque = estoque.cod_estoque');
      DMMACS.TRel.SQL.Add('left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto');
      DMMACS.TRel.SQL.Add('where (ctareceber.tipogerador = ''ORD'') And (faixa_preco.descricao = ''MENSAL'') AND (vwordem.status <> ''FECHADO'') AND (vwordem.dtabert between :data1 and :data2)');
      DMMACS.TRel.ParamByName('DATA1').AsDate:=StrToDate(xDataInicial);
      DMMACS.TRel.ParamByName('DATA2').AsDate:=StrToDate(xDataFinal);
      DMMACS.TRel.SQL.Add('order by vwordem.cod_ordem');
      DMMACS.TRel.Open;

      if DMMACS.TRel.IsEmpty then
      begin
      		Mensagem('INFORMAÇÃO AO USUÁRIO', 'O RELATÓRIO RETORNOU SEM INFORMAÇÕES!', '', 1, 1, false, 'A');

           Exit;
      end;
             
      FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrFOrdemLocaExtratoGeral.frf');
      FSRel.ShowReport;      
end;

procedure TFOrdemLocaMensal.btnExtratoOSClick(Sender: TObject);
begin
  inherited;

   if xFiltrado = false
   then begin
        Mensagem('INFORMAÇÃO AO USUÁRIO', 'FILTRE AS INFORMAÇÕES ANTES DE TIRAR O EXTRATO!', '', 1, 1, false, 'a');
        exit;
   end;
      //FILTRA EMPRESA PARA IMPRIMIR CABEÇALHO
   If FiltraTabela(DMMACS.TEmpresa, 'EMPRESA', 'COD_EMPRESA', FMenu.LCODEMPRESA.Caption, '')=False Then
   	  Exit;

      DMMACS.TRel.Close;
      DMMACS.TRel.SQL.Clear;
      DMMACS.TRel.SQL.Add('select vwordem.cod_ordem, vwordem.cod_cliente, vwordem.cod_equipamento,');
      DMMACS.TRel.SQL.Add('vwordem.numero, vwordem.status, vwordem.total, vwordem.cliente, vwordem.mark,');
      DMMACS.TRel.SQL.Add('faixa_preco.descricao, vwordem.dtabert, itprodord.data_garantia, faixa_preco.qtddias,');
      DMMACS.TRel.SQL.Add('subproduto.descricao AS Equip, subproduto.cod_subproduto,');
      DMMACS.TRel.SQL.Add('vwparcr.cod_parcelacr, vwparcr.cod_ctareceber, ctareceber.tipogerador ,vwparcr.cobranca, vwparcr.dtvenc, vwparcr.dtdebito,');
      DMMACS.TRel.SQL.Add('vwparcr.dtlanc ,vwparcr.numparc, vwparcr.valor, vwparcr.valorpg,vwparcr.formpag, vwparcr.fech');
      DMMACS.TRel.SQL.Add('from vwparcr');
      DMMACS.TRel.SQL.Add('left join ctareceber on vwparcr.cod_ctareceber = ctareceber.cod_ctareceber');
      DMMACS.TRel.SQL.Add('left join vwordem on ctareceber.cod_gerador = vwordem.cod_ordem');
      DMMACS.TRel.SQL.Add('left join itprodord  on vwordem.cod_ordem = itprodord.cod_ordem');
      DMMACS.TRel.SQL.Add(' left join tabelafaixapreco on tabelafaixapreco.cod_tabelafaixapreco = itprodord.cod_tabelafaixapreco ');
      DMMACS.TRel.SQL.Add(' left join faixa_preco on tabelafaixapreco.cod_faixapreco = faixa_preco.cod_faixapreco ');
      DMMACS.TRel.SQL.Add('left join estoque on itprodord.cod_estoque = estoque.cod_estoque');
      DMMACS.TRel.SQL.Add('left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto');
      DMMACS.TRel.SQL.Add('where vwordem.cod_ordem =:codigo');
      DMMACS.TRel.ParamByName('codigo').AsInteger:= DMMACS.TExiste.FieldByName('COD_ORDEM').AsInteger;
      DMMACS.TRel.SQL.Add('order by vwordem.cod_ordem');
      DMMACS.TRel.Open;

      if DMMACS.TRel.IsEmpty then
      begin
      		Mensagem('INFORMAÇÃO AO USUÁRIO', 'O RELATÓRIO RETORNOU SEM INFORMAÇÕES!', '', 1, 1, false, 'A');

           Exit;
      end;
      
      FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrFOrdemLocaExtratoOS.frf');
      FSRel.ShowReport;
end;

procedure TFOrdemLocaMensal.btnExtratoClienteClick(Sender: TObject);
begin
  inherited;
   if xFiltrado = false
   then begin
        Mensagem('INFORMAÇÃO AO USUÁRIO', 'FILTRE AS INFORMAÇÕES ANTES DE TIRAR O EXTRATO!', '', 1, 1, false, 'a');
        exit;
   end;
         //FILTRA EMPRESA PARA IMPRIMIR CABEÇALHO
   If FiltraTabela(DMMACS.TEmpresa, 'EMPRESA', 'COD_EMPRESA', FMenu.LCODEMPRESA.Caption, '')=False Then
   	  Exit;

      DMMACS.TRel.Close;
      DMMACS.TRel.SQL.Clear;
      DMMACS.TRel.SQL.Add('select vwordem.cod_ordem, vwordem.cod_cliente, vwordem.cod_equipamento,');
      DMMACS.TRel.SQL.Add('vwordem.numero, vwordem.status, vwordem.total, vwordem.cliente, vwordem.mark,');
      DMMACS.TRel.SQL.Add('faixa_preco.descricao, vwordem.dtabert, itprodord.data_garantia, faixa_preco.qtddias,');
      DMMACS.TRel.SQL.Add('subproduto.descricao AS Equip, subproduto.cod_subproduto,');
      DMMACS.TRel.SQL.Add('vwparcr.cod_parcelacr, vwparcr.cod_ctareceber, ctareceber.tipogerador ,vwparcr.cobranca, vwparcr.dtvenc, vwparcr.dtdebito,');
      DMMACS.TRel.SQL.Add('vwparcr.dtlanc ,vwparcr.numparc, vwparcr.valor, vwparcr.valorpg,vwparcr.formpag, vwparcr.fech');
      DMMACS.TRel.SQL.Add('from vwparcr');
      DMMACS.TRel.SQL.Add('left join ctareceber on vwparcr.cod_ctareceber = ctareceber.cod_ctareceber');
      DMMACS.TRel.SQL.Add('left join vwordem on ctareceber.cod_gerador = vwordem.cod_ordem');
      DMMACS.TRel.SQL.Add('left join itprodord  on vwordem.cod_ordem = itprodord.cod_ordem');
      DMMACS.TRel.SQL.Add(' left join tabelafaixapreco on tabelafaixapreco.cod_tabelafaixapreco = itprodord.cod_tabelafaixapreco ');
      DMMACS.TRel.SQL.Add(' left join faixa_preco on tabelafaixapreco.cod_faixapreco = faixa_preco.cod_faixapreco ');
      DMMACS.TRel.SQL.Add('left join estoque on itprodord.cod_estoque = estoque.cod_estoque');
      DMMACS.TRel.SQL.Add('left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto');
      DMMACS.TRel.SQL.Add('where (vwordem.cod_cliente =:codigo) AND (faixa_preco.descricao = ''MENSAL'') AND (vwordem.status <> ''FECHADO'')');
      DMMACS.TRel.ParamByName('codigo').AsInteger:= DMMACS.TExiste.FieldByName('cod_cliente').AsInteger;
      DMMACS.TRel.SQL.Add('order by vwordem.cod_ordem');
      DMMACS.TRel.Open;

      if DMMACS.TRel.IsEmpty then
      begin
      		Mensagem('INFORMAÇÃO AO USUÁRIO', 'O RELATÓRIO RETORNOU SEM INFORMAÇÕES!', '', 1, 1, false, 'A');

           Exit;
      end;

      FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrFOrdemLocaExtratoCliente.frf');
      FSRel.ShowReport;

end;
function TFOrdemLocaMensal.FiltraOrdemMensal(xTermoPesquisa,
  xGerador: String): Boolean;
begin
	if xGerador = 'NUMOS' then
   begin
      DMMACS.TExiste.Close;
      DMMACS.TExiste.SQL.Clear;
      DMMACS.TExiste.SQL.Add('select vwordem.cod_ordem, vwordem.cod_cliente, vwordem.cod_equipamento,');
      DMMACS.TExiste.SQL.Add('vwordem.numero, vwordem.status, vwordem.total, vwordem.cliente, faixa_preco.descricao,');
      DMMACS.TExiste.SQL.Add('vwordem.dtabert, itprodord.data_garantia, faixa_preco.qtddias, vwordem.mark,');
      DMMACS.TExiste.SQL.Add('subproduto.descricao AS Equip, subproduto.cod_subproduto');
      DMMACS.TExiste.SQL.Add('from vwordem');
      DMMACS.TExiste.SQL.Add('left join itprodord  on vwordem.cod_ordem = itprodord.cod_ordem ');
      DMMACS.TExiste.SQL.Add(' left join tabelafaixapreco on tabelafaixapreco.cod_tabelafaixapreco = itprodord.cod_tabelafaixapreco ');
      DMMACS.TExiste.SQL.Add(' left join faixa_preco on tabelafaixapreco.cod_faixapreco = faixa_preco.cod_faixapreco ');
      DMMACS.TExiste.SQL.Add('left join estoque on itprodord.cod_estoque = estoque.cod_estoque ');
      DMMACS.TExiste.SQL.Add('left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto ');
      DMMACS.TExiste.SQL.Add('where (vwordem.status <> ''FECHADO'') AND (faixa_preco.descricao = ''MENSAL'') AND (vwordem.numero = :numero)');
      DMMACS.TExiste.ParamByName('NUMERO').AsString := xTermoPesquisa;
      DMMACS.TExiste.Open;

      Exit;
   end
   else
   if xGerador = 'NOMECLIENTE' then
   begin
      DMMACS.TExiste.Close;
      DMMACS.TExiste.SQL.Clear;
      DMMACS.TExiste.SQL.Add('select vwordem.cod_ordem, vwordem.cod_cliente, vwordem.cod_equipamento,');
      DMMACS.TExiste.SQL.Add('vwordem.numero, vwordem.status, vwordem.total, vwordem.cliente, faixa_preco.descricao,');
      DMMACS.TExiste.SQL.Add('vwordem.dtabert, itprodord.data_garantia, faixa_preco.qtddias, vwordem.mark,');
      DMMACS.TExiste.SQL.Add('subproduto.descricao AS Equip, subproduto.cod_subproduto');
      DMMACS.TExiste.SQL.Add('from vwordem');
      DMMACS.TExiste.SQL.Add(' left join itprodord  on vwordem.cod_ordem = itprodord.cod_ordem ');
      DMMACS.TExiste.SQL.Add(' left join tabelafaixapreco on tabelafaixapreco.cod_tabelafaixapreco = itprodord.cod_tabelafaixapreco ');
      DMMACS.TExiste.SQL.Add(' left join faixa_preco on tabelafaixapreco.cod_faixapreco = faixa_preco.cod_faixapreco ');
      DMMACS.TExiste.SQL.Add(' left join estoque on itprodord.cod_estoque = estoque.cod_estoque ');
      DMMACS.TExiste.SQL.Add(' left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto ');
      DMMACS.TExiste.SQL.Add(' where (vwordem.status <> ''FECHADO'') AND (faixa_preco.descricao = ''MENSAL'') AND (upper(vwordem.cliente) like upper(:NOME))');
      DMMACS.TExiste.ParamByName('NOME').AsString := xTermoPesquisa+'%';
      DMMACS.TExiste.Open;

      Exit;
   end;
end;

procedure TFOrdemLocaMensal.edNumeroOSKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  	//Edmar - 13/06/2014 - Busca se enter foi clicado e foi informado alguma coisa
	If (key = #13) and (edNumeroOS.Text <> '') then
   begin
       edNumeroOS.SelectAll;
       xBuscaOS := True;
       xBuscaCliente := False;
       xBuscaData := False;

		FiltraOrdemMensal(edNumeroOS.Text, 'NUMOS');
   end;

   //Edmar - 13/06/2014 - ESC atualiza grid
   if (key = #27) then
   begin
   	xSqlConsulta := '';
       xBuscaCliente := False;
       xBuscaOS := False;
       xBuscaData := False;
       xFiltroFaturar := False;
       xFiltroFaturados := False;
		xFiltrado := False;             
              
		ConsultaOrdemLocalMensal();
   end;
end;

procedure TFOrdemLocaMensal.edNomeClienteKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  	//Edmar - 13/06/2014 - Busca se enter foi clicado e foi informado alguma coisa
	If (key = #13) and (edNomeCliente.Text <> '') then
   begin
       edNomeCliente.SelectAll;
       xBuscaCliente := True;
       xBuscaOS := False;
       xBuscaData := False;
       
		FiltraOrdemMensal(edNomeCliente.Text, 'NOMECLIENTE');
   end;

   //Edmar - 13/06/2014 - ESC atualiza grid
   if (key = #27) then
   begin
   	xSqlConsulta := '';
       xBuscaCliente := False;
       xBuscaOS := False;
       xBuscaData := False;
       xFiltroFaturar := False;
       xFiltroFaturados := False;
		xFiltrado := False;       
       
		ConsultaOrdemLocalMensal();
   end;
end;

procedure TFOrdemLocaMensal.DesmarcarOrdensdeServio1Click(Sender: TObject);
begin
  inherited;
  	//Edmar - 08/07/2014 - Atualiza ordens de serviço desmarcandos todas as marcadas
	DMMACS.TExiste.Close;
   DMMACS.TExiste.SQL.Clear;
   DMMACS.TExiste.SQL.Add('UPDATE ORDEM SET ORDEM.mark = '''' WHERE (ORDEM.status <> ''FECHADO'') AND (ORDEM.MARK <> ''F'')');
   DMMACS.TExiste.ExecSQL;
   DMMACS.TExiste.Transaction.CommitRetaining;

   ConsultaOrdemLocalMensal;
end;

end.





