object DMRel: TDMRel
  OldCreateOrder = False
  Left = 374
  Top = 301
  Height = 351
  Width = 446
  object RvDsEspelhoPonto: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    Left = 24
    Top = 56
  end
  object RvSystem1: TRvSystem
    TitleSetup = 'Configura'#231#245'es'
    TitleStatus = 'Mensagens'
    TitlePreview = 'Relat'#243'rios'
    SystemSetups = [ssAllowCopies, ssAllowCollate, ssAllowDuplex, ssAllowDestPreview, ssAllowDestPrinter, ssAllowDestFile, ssAllowPrinterSetup, ssAllowPreviewSetup]
    SystemOptions = [soShowStatus, soAllowPrintFromPreview]
    DefaultDest = rdPrinter
    SystemFiler.StatusFormat = 'Generating page %p'
    SystemPreview.FormState = wsMaximized
    SystemPreview.ZoomFactor = 100.000000000000000000
    SystemPrinter.ScaleX = 100.000000000000000000
    SystemPrinter.ScaleY = 100.000000000000000000
    SystemPrinter.StatusFormat = 'Printing page %p'
    SystemPrinter.Title = 'ReportPrinter Report'
    SystemPrinter.UnitsFactor = 1.000000000000000000
    Left = 95
    Top = 8
  end
  object RvNDRWriter1: TRvNDRWriter
    StatusFormat = 'Printing page %p'
    LineHeightMethod = lhmLinesPerInch
    UnitsFactor = 1.000000000000000000
    Title = 'Relat'#243'rios'
    Orientation = poPortrait
    ScaleX = 100.000000000000000000
    ScaleY = 100.000000000000000000
    StreamMode = smUser
    Left = 160
    Top = 8
  end
  object RVProjeto: TRvProject
    Engine = RvNDRWriter1
    ProjectFile = 'C:\SCP\Relat'#243'rios\Relatorios001.rav'
    Left = 22
    Top = 4
  end
  object RvDsTotalizador: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    Left = 120
    Top = 56
  end
end
