unit URelFinanc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls;

type
  TFRelFinanc = class(TForm)
    QRFLUXO: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    LOBS: TQRLabel;
    QRShape1: TQRShape;
    QRBand2: TQRBand;
    QRLabel2: TQRLabel;
    QRShape2: TQRShape;
    LCODEMPRESA: TQRDBText;
    LEMPRESA: TQRDBText;
    DBCIDADEEMP: TQRDBText;
    DBENDERECO: TQRDBText;
    QRBand3: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRBand4: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRShape3: TQRShape;
    QRBand5: TQRBand;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLEntradas: TQRLabel;
    QRLSaidas: TQRLabel;
    QRLSALDO: TQRLabel;
    QRLabel14: TQRLabel;
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand3AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand5BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRFLUXOBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelFinanc: TFRelFinanc;
  TotEntradas, TotSaidas: Real;

implementation

uses UDMMacs, UDMPessoa, UDMFinanc;

{$R *.DFM}

procedure TFRelFinanc.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    DBENDERECO.Left:=DBCIDADEEMP.Width+11;
end;

procedure TFRelFinanc.QRBand3AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
    If DMFinanc.TAlx.FieldByName('TIPCAI').AsString='E'
    THEN Begin
        If DMFinanc.TAlx.FieldByName('VALOR').AsString<>'' Then
            TotEntradas:=TotEntradas+DMFinanc.TAlx.FieldByName('VALOR').Value;
    End
    Else Begin
        If DMFinanc.TAlx.FieldByName('VALOR').AsString<>'' Then
            TotSaidas:=TotSaidas+DMFinanc.TAlx.FieldByName('VALOR').Value;
    End;
end;

procedure TFRelFinanc.QRBand5BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    QRLEntradas.Caption:=FormatFloat('##########,##0.00', TotEntradas);
    QRLSaidas.Caption:=FormatFloat('##########,##0.00', TotSaidas);
    QRLSALDO.Caption:=FormatFloat('##########,##0.00', (TotEntradas-TotSaidas));    
end;

procedure TFRelFinanc.QRFLUXOBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
    TotEntradas:=0;
    TotSaidas:=0;
end;

end.
