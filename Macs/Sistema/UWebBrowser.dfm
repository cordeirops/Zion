inherited FWebBrowser: TFWebBrowser
  Left = 187
  Top = 84
  Caption = 'FWebBrowser'
  ClientHeight = 548
  ClientWidth = 801
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited LDescTitulo: TDRLabel
    Left = 273
    Width = 440
    Caption = 'Web Browser Orion!'
  end
  inherited PTitulo: TPanel
    Width = 806
    inherited ImgTitulo: TImage
      Width = 801
    end
  end
  inherited PBotoes: TPanel
    Left = 760
    TabOrder = 5
  end
  object PPrincipal: TPanel
    Left = 10
    Top = 31
    Width = 782
    Height = 454
    BevelOuter = bvNone
    Color = 16772332
    TabOrder = 2
    object WebBrowser1: TWebBrowser
      Left = 0
      Top = 0
      Width = 782
      Height = 454
      Align = alClient
      TabOrder = 0
      OnStatusTextChange = WebBrowser1StatusTextChange
      OnProgressChange = WebBrowser1ProgressChange
      OnCommandStateChange = WebBrowser1CommandStateChange
      OnTitleChange = WebBrowser1TitleChange
      OnBeforeNavigate2 = WebBrowser1BeforeNavigate2
      ControlData = {
        4C000000D2500000EC2E00000100000005000000000000000000000000000000
        000000004C000000000000000000000001000000E0D057007335CF11AE690800
        2B2E126208000000000000004C0000000114020000000000C000000000000046
        8000000000000000000000000000000000000000000000000000000000000000
        00000000000000000100000000000000000000000000000000000000}
    end
  end
  object Panel1: TPanel
    Left = 11
    Top = 487
    Width = 779
    Height = 40
    Cursor = crHandPoint
    BevelOuter = bvLowered
    Color = 16772332
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 3
    object ProgressBar1: TProgressBar
      Left = 51
      Top = 0
      Width = 539
      Height = 39
      TabOrder = 6
    end
    object btnPaginaInicial: TBitBtn
      Left = 730
      Top = 2
      Width = 46
      Height = 36
      Hint = 'P'#225'gina Inicial'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = btnPaginaInicialClick
      Glyph.Data = {
        C60A0000424DC60A00000000000036000000280000001A0000001A0000000100
        200000000000900A0000C40E0000C40E00000000000000000000000000000000
        0001000000050000000F0000001A00000026000000380000004C0000005F0000
        007112141D8A2727369A2525339D2525339E2525349C282937980D0F18850000
        006B00000059000000460000003300000021000000160000000B000000030000
        000000000000000000020000000E0000001F000000352A2A2A5B242424701E1E
        1E841A1A1A98191816A81B4D8AE01E67BFFD1F67BCFC2067BCFC2067BCFC1E67
        C0FD1B477ED91A1917A31D1D1D932020207D2828286A2D2D2D540000002D0000
        001A0000000A0000000100000000000000030000000E2121212EB2B2B2B4CCCC
        CCEAC8C8C8EEC8C8C8F0C7C7C7F3CDC9C6F580A0CBFD327FD9FF4691E3FF519E
        EBFF4C98E7FF3581DBFF8DA8CBFCCBC9C6F4C7C7C7F2C7C7C7EFC8C8C8EDCACA
        CAE8A6A6A69F1111111E0000000A000000010000000000000001000000018181
        813DCFCFCFF9E5E5E5FFE5E5E5FFE7E7E7FFE9E9E9FFF1EFECFFA0B1D5FF3A74
        CEFF528ADAFF5F99E4FF5B95E1FF427CD3FFAFBCD8FFEEEDEAFFE6E6E6FFE5E5
        E5FFE3E3E3FFE2E2E2FFC5C5C5E6525252250000000100000000000000000000
        000000000000AFAFAF33D2D2D2F4E0E0E0FFE1E1E1FFE3E3E3FFE4E4E4FFECEA
        E7FF9BB2D6FF2967C8FF427CD2FF4B86D8FF4C88D9FF3977CFFFACBDD8FFEAE8
        E5FFE2E2E2FFE1E1E1FFDEDEDEFFDDDDDDFFC8C8C8E29999991E000000000000
        0000000000000000000000000000C6C6C632D5D5D5F6E4E4E4FFE5E5E5FFE7E7
        E7FFE8E8E8FFF0EEEBFF9DB7D9FF3871C3FF4B82D3FF4984D7FF4B86D8FF3574
        CEFFAEC1DCFFEEECE9FFE6E6E6FFE4E4E4FFE2E2E2FFE0E0E0FFCDCDCDE3BFBF
        BF1C0000000000000000000000000000000000000000CBCBCB36D8D8D8F8E7E7
        E7FFE8E8E8FFEAEAEAFFECECECFFF4F2EFFF9DBADCFF6790C8FF5787D1FF417C
        D3FF447DD2FF3171CBFFAFC5DEFFF1EFECFFEAEAEAFFE7E7E7FFE5E5E5FFE2E2
        E2FFCFCFCFE7BFBFBF200000000000000000000000000000000000000000CBCB
        CB3BDBDBDBFCEAEAEAFFECECECFFEDEDEDFFEFEFEFFFF8F5F2FF9EBDDDFF4789
        D8FF5892DFFF5490DFFF508BDBFF3C7FD4FFB0C7E1FFF5F3F0FFECECECFFEAEA
        EAFFE8E8E8FFE6E6E6FFD1D1D1EBBFBFBF240000000000000000000000000000
        000000000000CECECE3FDEDEDEFEECECECFFEEEEEEFFF0F0F0FFF2F2F2FFFBF8
        F5FFA0C0E0FF4086DAFF5A95E2FF5994E1FF5690DEFF4085D7FFB1CAE2FFF8F5
        F2FFEFEFEFFFEDEDEDFFEBEBEBFFE8E8E8FFD3D3D3EFC5C5C528000000000000
        0000000000000000000000000000FAF5CC38E9E8E4FFF0F0F0FFF1F1F1FFF3F3
        F3FFF5F5F5FFFDFAF7FFA1C3E2FF357BD2FF4D86D9FF4982D6FF4881D5FF357B
        D1FFB3CDE5FFFAF7F5FFF1F1F1FFEFEFEFFFEDEDEDFFEBEBEBFFD9D9D8F2E3E3
        C02500000000000000000000000000000000485EEE2E7C8BE685CACDD6FFE9E8
        E3FFF3F3F4FFF5F5F6FFF7F7F7FFFFFDFAFFA0C6E4FF2770CDFF4179D1FF3972
        CEFF3972CEFF276FCBFFB2CFE6FFFCF9F6FFF3F3F3FFF1F1F1FFF0F0F0FFE7E7
        E4FFCDCDCBF7989FD4480000000000000000000000004651E95E4A58F1F74959
        F6FF5F6ADFFFB7B8CAFFE5E5DEFFF7F7F7FFF9F9F9FFFFFEFBFFA5C8E3FF3286
        D3FF428CD6FF3D87D4FF3C85D2FF2E81D0FFB6D1E6FFFDFAF8FFF4F4F4FFF4F4
        F4FFE5E5E0FFC3C3C6FF7178D3FF4957EDEC4754EDB33F47E72000000000484B
        EDAA4B4EF9FF4447E3FF3E42E6FF5A5DDFFFBABACFFFEAEBE3FFFBFBFBFFFDFC
        FCFFEBF0F4FFD2E4EEFFD2E4EFFFD1E4EEFFD1E3EDFFD1E2EDFFECF0F3FFF9F9
        F8FFF6F6F7FFE9EAE4FFC6C6CBFF6E70D8FF3D42E7FF4448EAFF4C52FDFF4956
        EB84000000004949F16F4C4AFBFF403ADEFF3F37DBFF3832DEFF5751DBFFBFBE
        D3FFEFF0E8FFFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFDFFFFFF
        FCFFFDFCFBFFF9F9FAFFEEEEE9FFCBCBD0FF6A64D6FF3831DEFF3E36DCFF4037
        DCFF4E5FFCFF4F6CF676000000004646F0244949F1F24845F1FF3C2BD8FF3A26
        D4FF3421D6FF5545D6FFC0BDD6FFF2F3EBFFFEFEFEFFFFFFFFFFFEFEFEFFFDFD
        FDFFFBFBFBFFFAFAFAFFFBFBFBFFF1F2ECFFD0D0D6FF695BD4FF3420D7FF3A25
        D5FF3B27D5FF4A55F0FF516FFAFF4C6EF53500000000000000004848EE5B4A4A
        F2FA4841F0FF391CD2FF3512CDFF2E0CCEFF4D31CFFFC1BBD9FFF5F7EEFFFFFF
        FFFFFEFEFEFFFCFCFCFFFBFBFBFFFBFBFBFFF3F4EEFFD0CED8FF654DD0FF2E0C
        CFFF3411CDFF3616CFFF484FEBFF5372FEFF4D6AF1730000FF01000000000000
        0000000000004646ED574A4AF1F7473EEEFF340BCEFF3000C8FF2A00C9FF4A23
        CCFFC4BDDBFFF7F9EFFFFDFDFDFFFCFCFCFFFBFBFBFFF4F5EFFFD3D1DBFF603E
        CEFF2900C9FF3000C9FF2C00CBFF3F43E9FF5170FBFF4D6AF373000000000000
        0000000000000000000000000000000000004545EC544A4BF2F7463DEFFF320C
        D1FF2D00CCFF2700CCFF4623CFFFC0BADDFFF6F8EEFFF9F9F9FFF6F7EFFFD6D4
        DEFF5E3FD1FF2600CCFF2D00CCFF2B02CFFF6963E0FF9AACF0F74E69F1720000
        0000000000000000000000000000000000000000000000000000000000004848
        EC544A4BF2F64741F2FF300FD5FF2A01D0FF2300D0FF401ED3FFBFB9DFFFF6F9
        E9FFD4D2E0FF593FD5FF2200D0FF2901D0FF2B07D3FF5855D4FFCED2DAFFFBF9
        F1CB000000000000000000000000000000000000000000000000000000000000
        000000000000000000004646EE4C4A4BF2F34742F2FF2D11D9FF2503D5FF2000
        D5FF3F22D7FFABA3DEFF5740D8FF1E00D5FF2602D5FF280AD7FF494EE7FF888D
        C9FFD6D5D2FFF1F1F1BD00000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000004743ED4B4A4BF2F24742
        F4FF2B15DDFF2105D8FF1F02D9FF2409D9FF1F03D9FF2306D9FF260DDAFF424E
        F1FF5972F4FF8687C6FCD4D3D3FFF0F0F0B00000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00004747EA4B4A4BF2EF5354F9FF3021E3FF1E07DDFF1F08DEFF1F08DEFF2411
        DFFF4452F3FF506FF6F8586BEB828887C3E7D5D5D6FFEDEDEDA3000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000004844EF436066F8EC6269FFFF261AE5FF1B0B
        E3FF200EE0FF3F46EFFF526FF6FB4E6AF65B8962C40D8989C3DFD6D6D7FFECEC
        EC95000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000666EF7436771
        FBEC3C3CF9FF1E0AE0FF3417DBFF4954E9F7506CF35C000000006D5BDA0E8989
        C3D7D5D5D7FFECECEC8700000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000005B62F7433737F1E4240CE7FF3514D1F14444DE56000000000000
        00004848DA078888CDCEDCDCF0FFE8E8E87A0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000001F17E720240DE6712A00C9300000
        000000000000000000000000FF028484D1A2C0C0E2DFD7D7D45B000000000000
        00000000000000000000}
    end
    object btnIr: TBitBtn
      Left = 592
      Top = 2
      Width = 46
      Height = 36
      Hint = 'Ir para p'#225'gina'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = btnIrClick
      Glyph.Data = {
        C60A0000424DC60A00000000000036000000280000001A0000001A0000000100
        200000000000900A0000C40E0000C40E00000000000000000000000000000000
        00000000000000000000000000020000000300000006000000090000000C0000
        000F00000012000000130000001300000013000000110000000E0000000B0000
        0008000000060000000300000001000000000000000000000000000000000000
        000000000001000000050000000D00000018000000230000002F0000003C0000
        004A000000560000005C00000060000000670000006800000066000000630000
        005D0000005200000045000000380000002B0000001F000000140000000A0000
        00030000000000000000000000020000000C0000001A0000002A0000003B0000
        004C0000005C0000006E00000077030B0583081C0C8E0000007E000000870000
        0085000000850000008100000078000000680000005700000047000000360000
        0025000000150000000800000001000000000000000000000003000000090000
        001000000019000000230000002D0000003300070046278A36C932A044E90F35
        18720000004B00000054000000500000004A00000041000000350000002A0000
        0020000000160000000D00000006000000020000000000000000000000000000
        00000000000000000000000000000000000000000000002A0006269B36A43BBA
        51FF40C159FF39AF4FD52787382D000000000000000600000005000000040000
        0002000000010000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000031F95
        2CA23BBA51FF42BE5BFF44BD5CFF47C661FF3BB251D22A9B3124000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0005158C1CA33AB950FF46C15FFF47BF60FF49C163FF4BC366FF4DCA69FF3AAF
        4FD4208F27270000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000020F8714A038B74DFF48C262FF48C163FF4BC367FF4EC56AFF50C7
        6DFF52C870FF53CE71FF38AE4CD413821A270000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000031086159937B74BFF48C363FF49C264FF4DC569FF51C7
        6EFF53C972FF55CB74FF57CC76FF58CD78FF57D177FF36AB49D3077807220000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000020E86139936B64AFF48C262FF49C264FF4EC5
        6AFF52C86FFF55CB74FF58CD78FF57CF7BFF54D17DFF54D17DFF56D27FFF56D4
        7AFF32A844CC0064002100000000000000000000000000000000000000000000
        0000000000000000000000000000000000030B810E9932B245FF46C15FFF47C0
        62FF4DC468FF51C86FFF55CB74FF58CE7AFF53D37EFF4CD580FF48D782FF47D8
        83FF48D782FF4DD783FF50D77DFF29A13ACD0054002100000000000000000000
        000000000000000000000000000000000000006A000C0B8512992EB23FFF42BE
        5AFF45BE5EFF4AC265FF4FC66CFF54CA73FF58CE7AFF54D783FF4BDD88FF41DB
        87FF3CDC87FF3ADD88FF3BDC87FF40DB85FF48D985FF4CD67BFF209B2FCD004F
        0020000000000000000000000000000000000000000000000000006E007129AB
        36FF4BC362FF43BC5AFF42BE5DFF47C263FF4CC66BFF54CC75FF58D784FF34B8
        59FF21AC47F737E48CFF30E48FFF2DE48EFF2FE38DFF35E08AFF3DDC86FF4AD9
        86FF4ED479FF219A2ECD00570020000000000000000000000000000000000000
        000000630012158B1BAA51C262FF7CD18DFF7AD18DFF72D088FF6CD185FF68D8
        89FF39BB5AFF06810C760065004615B049EC23EF95FF1EEC96FF20E891FF28E4
        8DFF32DF88FF3DDA83FF4BD681FF4FD173FF1A9627CD004F0020000000000000
        00000000000000000000000000000000000714891AAC6ECC7CFFAFE4BBFFC2EA
        CBFFD2F5DCFF68C478FF067F0A7A0000000000000000006C00420AB54CEC14F7
        9EFF20EF9CFF2FE996FF40E494FF51DF92FF63DB92FF79DB99FF7DDA92FF2A9A
        32CD004F0020000000000000000000000000000000000000000000000009168B
        1DB382D490FFCBF3D6FF78C783FF0A810C7A0000000000000000000000000000
        0000006C004209B852EC36F7A8FF56EFABFF6CE9ABFF82E7AFFF96E6B4FFA8E6
        BBFFB8E9C6FF9CE2AAFF299830CD003F00200000000000000000000000000000
        0000000000000027000D1F9126B454B75FFF06800A7B00000000000000000000
        0000000000000000000000000000006A004319B551EC59F1AAFF74EBAFFF85E7
        B0FF98E6B5FFA9E6BAFFB2E6BFFFC3ECCDFFA5E3B0FF28982FCE003F00200000
        00000000000000000000000000000000000000460012006C0055000000000000
        00000000000000000000000000000000000000000000000000000068004227B2
        4FEC77EDADFF8FE8B4FF9EE6B6FFADE6BCFFB5E7C1FFBDE8C7FFD0EFD6FFAFE9
        B8FF309A36CE0060002500000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000006C004233AF4FEC91EBB2FFA8E6BBFFAFE6BDFFB7E7C3FFC0E9
        C9FFC9EBD0FFEBF9EFFFA0E7A8FF097F0CA60000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000068004241AE52EDA5E9B8FFB5E7
        C2FFB9E7C3FFC2E9CBFFD5F0DBFFC1EFC9FF3EA344E0006F0037000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000006C
        004246AD52ECAFE9BCFFC0E9CAFFCDEED4FFBAEAC2FF35A03CDF004E00310000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000006A004345AC4FF0BCECC6FFB8E9C1FF38A03FDE0053
        0031000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000006E004A42A84AF53AA2
        42E0005D00310000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000006900440066003400000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000}
    end
    object btnVoltar: TBitBtn
      Left = 4
      Top = 2
      Width = 46
      Height = 36
      Hint = 'Volta p'#225'gina anterior'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = btnVoltarClick
      Glyph.Data = {
        C60A0000424DC60A00000000000036000000280000001A0000001A0000000100
        200000000000900A0000C40E0000C40E00000000000000000000000000000000
        0000000000000000000000000003000000050000000A0000000F000000160000
        001C000000210000002400000025000000270000002500000023000000200000
        001A000000140000000E00000009000000050000000200000000000000000000
        000000000000000000000000000300000008000000120000001F0000002D0000
        003C000000480000005A00020072001E038800290894002A0897002606920017
        01820000006A000000540000004500000038000000280000001A0000000F0000
        0006000000010000000000000000000000010000000A0000001A0000002D0000
        004200000052000000680024099901591ECE148037EE28994CFD37AC5DFF3AB0
        5FFF35A95AFF229247FA0F7631E7004A17C0001201890000005F0000004E0000
        003C000000270000001500000006000000000000000000000003000000110000
        00270000003E0000004C00130477015F21CC229946FD50C470FF72D98DFF81DD
        9AFF85DE9DFF85DE9DFF85DE9DFF81DF9BFF6FD88DFF47BE6AFF178A3DF50049
        19B4000000630000004900000037000000210000000C00000001000000000000
        00020000000E000000210000002D002E0E6D0D8032E541BC61FF70D487FF79D5
        8FFF6DD286FF63CF80FF60CF7FFF60D080FF63D082FF6AD287FF76D68FFF7EDA
        95FF6BD586FF33AE57FF036A27C9000D004D0000002B0000001B0000000A0000
        00010000000000000001000000050000000700441343108836E54BC367FF6ED0
        82FF62CB7AFF52C66EFF4FC76DFF4CC86CFF4DC569FF4EC76DFF53CB74FF54CB
        74FF53CA73FF5ACC77FF6CD085FF6ED386FF3CB95EFF08782DBF0011001E0000
        00070000000300000000000000000000000000000000005B120E0A8330CB46BF
        61FF65CA79FF51C46BFF48C264FF4CC468FF47C466FF6CC97DFFBEE2C0FFA5DA
        ABFF58CA73FF53C971FF52C870FF4FC76DFF4EC56BFF5ECA77FF65CE7CFF32B1
        55FF01772A8F0000000000000000000000000000000000000000000000000077
        2A7E31AD4FFF61C873FF4CC063FF44BE5EFF48C163FF42C160FF67C678FFE1F0
        E0FFFFFFFFFFFFFFFFFF7BD390FF4BC569FF4FC66CFF4FC56BFF4CC468FF48C2
        65FF58C670FF56C76DFF1D9841FB00681D3D0000000000000000000000000000
        0000005F1518118C37E759C46CFF4FBF64FF40BC58FF44BE5EFF3EBD59FF63C3
        73FFE0F0E0FFFFFFFFFFFFFFFFFFF4FBF6FF6ACE81FF49C366FF4CC468FF4BC3
        67FF4AC265FF47C162FF47BF60FF54C369FF3DBA58FF07802EAF000000000000
        00000000000000000000007124632FA94CFF60C570FF3DB855FF40BA57FF3ABA
        54FF5BBE6AFFDCEDDCFFFFFFFFFFFFFFFFFFF4FBF6FF7DD391FF44C261FF48C2
        64FF48C263FF47C163FF46C061FF46BF5FFF44BE5CFF47BE5EFF48BF5EFF1993
        3BF4005B1A27000000000000000000000000017E29A74BB960FF55C067FF38B6
        4EFF35B64EFF56BC65FFD9ECD8FFFFFFFFFFFFFEFFFFF1F8F2FF7FCF8EFF3BB8
        54FF44BB5BFF43BB5AFF41BA59FF3FB956FF3CB854FF3DBB56FF41BC59FF40BA
        57FF44BC59FF28AA48FF007127610000000000000000003300050A872FCB5DC2
        6DFF4ABB5CFF38B54DFF57BB64FFD8EAD7FFFFFFFFFFFEFEFEFFFFFFFFFFDFEE
        DFFFAED8B0FFB5DBB6FFB5DAB6FFB5DBB7FFBADEBBFFB8DDBAFFADD8AFFF65C0
        72FF3FBA57FF3BB752FF3CB852FF30B24BFF037C2D8D00000000000000000048
        120E0C8A2FD868C675FF5DC06CFF54BD64FFC5E5C7FFFFFFFFFFFEFEFEFFFEFE
        FEFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFD5ECD7FF5AC16BFF52BE66FF43BA57FF30B349FF07812FA00000
        0000000000000044110F0A8A2CD86FC87AFF75C880FF62C16FFFC7E9CCFFFFFF
        FFFFFEFEFEFFFEFEFEFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFC6E9CDFF66C475FF6AC578FF5FC16DFF30B2
        48FF06812DA10000000000000000002A000604852ACE67C373FF88CE90FF68C3
        75FF7ACA85FFDBF0DEFFFFFFFFFFFEFEFEFFFFFFFFFFE0EDDFFFAADBB0FFAEE0
        B6FFB0E0B7FFAADEB3FFA7DDB0FFA8DDB0FFA2DBABFF78CB85FF6EC77CFF70C6
        7DFF64C271FF2BAE44FF017D2C90000000000000000000000000007C25AC4DB8
        5EFF9DD6A3FF75C780FF6FC57BFF7FCC8AFFDDF1E0FFFFFFFFFFFEFEFEFFF6F9
        F6FFA7D3A8FF6CC377FF70C87DFF71C87EFF70C87EFF70C87DFF70C77DFF74C8
        80FF77C982FF77C983FF60C16DFF1EA43AFF0074286500000000000000000000
        00000072216B2BA543FF9DD6A3FF8FD097FF7AC883FF78C882FF87CE90FFDCF0
        DFFFFFFFFFFFFFFFFFFFFEFDFDFFB7D8B7FF7EC988FF7FCC8BFF80CC8BFF80CB
        8AFF7FCB89FF7FCB88FF7ECB87FF80CB89FF4FBB5CFF0E8F2FF70065272D0000
        000000000000000000000066221E09872BED72C77BFFB3DEB7FF86CC8EFF83CB
        8BFF81CA89FF8BCF94FFDCF0DFFFFFFFFFFFFFFFFFFFFFFDFFFFA6D8ABFF83CD
        8DFF86CE90FF86CE90FF86CD8FFF85CD8EFF87CD8FFF7DCA85FF30AE43FF027E
        29B900000002000000000000000000000000000000000078268C2BA741FFA6DA
        A9FFB2DEB7FF8ACE91FF8BCE92FF89CD8FFF93D299FFDFF1E1FFFFFFFFFFFFFF
        FFFFB1DEB6FF8ACF92FF8DD095FF8DD095FF8DCF94FF8CCF93FF92D199FF5ABE
        64FF10902FFF006C29490000000000000000000000000000000000000000006D
        2415018127D74AB857FFBBE2BDFFB9E0BDFF96D29CFF91D097FF90CF96FF9AD4
        A0FFC7E7CAFFBFE4C3FF96D29DFF94D29AFF94D29BFF93D19AFF94D19AFF9FD5
        A4FF7BCA81FF20A438FF00792A9D000000000000000000000000000000000000
        00000000000000000000006F2839058526EC50BA5CFFB9E1BBFFCAE7CDFFACDB
        B1FF9DD5A1FF97D29DFF93D199FF94D19AFF99D39FFF9AD4A0FF9BD4A1FFA3D7
        A8FFADDBB1FF83CD89FF27A93DFF017E28C2005A2D1100000000000000000000
        00000000000000000000000000000000000000000000006D2741018325E337AF
        49FF95D498FFCBE8CCFFCEE9D0FFC1E4C4FFB7DFBAFFB3DEB7FFB4DEB8FFB8E0
        BCFFBCE2BFFFACDCAEFF6CC674FF1CA034FF007D27BB005F2A18000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000682727007B23AE0F902AFF45B554FF80CE85FFA5DBA8FFB6E0B7FFB7E1
        B8FFADDEB0FF97D69AFF6AC572FF30AB43FF068826F10076258700452E0B0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000070254B007A1FA9008420E2108F
        2BFF1F9D36FF22A039FF1B9A33FF0B8B26F9008120D60078228E0069262E0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000652819006C213D006E2153006F1E55006F204E006E2333004E270D0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000}
    end
    object btnAtualizar: TBitBtn
      Left = 638
      Top = 2
      Width = 46
      Height = 36
      Hint = 'Atualizar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = btnAtualizarClick
      Glyph.Data = {
        C60A0000424DC60A00000000000036000000280000001A0000001A0000000100
        200000000000900A0000C40E0000C40E00000000000000000000000000000000
        000000000002000000050000000A0000001100000019000000210000002B0000
        00340000003D00000042000000460000004600000044000000400000003A0000
        0032000000280000001E000000160000000E0000000800000004000000010000
        00000000000000000002000000080000000D0000002100000035000000440000
        005400000064000000720000007600000075000000780000007A0000007A0000
        007700000070000000680000005E000000500000004000000030000000210000
        0012000000060000000100000000000000020000000A0D53113A0000002B0000
        00310000004900000059000000640000006B071C0988256332AF398C4CCB409B
        53D93C994FDA328A42D3206829BA032E07900000005E0000004A000000430000
        00330000002400000014000000080000000100000000000000002F9C3F6551C0
        67ED45AE59BA053F0B2C000000160000002000160043368C4AA54FC473EE59DE
        85FF5DE288FF62DD86FF62D882FF5ED57BFF58CE71FF49B75CF92D8F36C40246
        005700000012000000130000000C000000050000000100000000000000000000
        00003DA64BA25FD47AFF60D57DFF54BB69C7107B101F2C993C3F55CA77CD57E9
        8DFF44EA87FF3AE07CFF3EDA78FF49D478FF54CF78FF54CB73FF51C76EFF51C9
        6DFF58CC6EFF49B256EF208A2065000000000000000000000000000000000000
        000000000000000000003EA64A9B5ACE76FF54CC75FF64DB88FF5DC476E060D1
        84F24FF091FF2CE97EFF2DE77DFF38E580FF44E081FF4DDB81FF57D47FFF5ACE
        7AFF51C86FFF48C265FF43BF5DFF4FC565FF53B75FFE268D286A000000000000
        00000000000000000000000000000000000040A6489B5FD07BFF56CC76FF4CD3
        78FF5AE58DFF60EC99FF4BEA8FFF51F097FF57F19AFF5EEE9BFF68ED9EFF72EC
        A1FF7AE89FFF7EE19AFF73D98FFF60CD7AFF4AC163FF3AB953FF46BF5BFF52B2
        5CF91B7F1740000000000000000000000000000000000000000046A64D9B62D1
        7DFF52CB74FF59D681FF6CE397FF76EAA4FF72EFA7FF66F4A4FF5FF7A4FF6DFA
        AAFF67E894FF5ACC7BF45BC371E05DBE70DF60BE70EB67C778FF6FD484FF57C6
        6DFF36B44BFF48BE59FF47A54DCA002400070000000000000000000000000000
        00004BA9529B61D17CFF68D185FF90E1A9FF90E8AFFF83EBABFF79EEA9FF70F2
        A8FF6FEEA3FF50C46ED52A9D37660073002A0042001700450016006100221E8B
        214B42A249A663BC6EFC62C973FF32B145FF4BB757FF33923359000000000000
        000000000000000000004BA7509B78D78FFF9ADFACFFA0E3B4FF95E6B0FF8DE9
        AEFF84ECACFF89F4B4FF59BA6ADC001500180000000000000000000000000000
        00000000000000000000000000001D861D4E5CB463E45EC56CFF35B445FF3CA0
        41B80000000100000000000000000000000058AC5D9BA8E5B5FFA5E1B3FFA4E2
        B5FF9FE5B4FF97E8B2FF91E9B0FF90EEB3FF8FDDA3F638953B63000000000000
        00000000000000000000000000000000000000000000000000000E75093460B4
        65E55EC869FF3DA545E5004F00100000000000000000000000006FB6729EBAEC
        C4FFA3E0B1FFA4E1B4FFA4E3B5FF9FE5B4FF9AE6B3FF94E6AFFF9FEFBBFF84CD
        91F4298629370000000000000000000000000000000000000000000000000000
        0000000000001E811A4371BB73E352A854B40066000500000000000000000000
        00005BA95B7ABEEEC4FFCEF7D7FFCDF7D7FFCDF8D7FFCCF8D8FFCBF9D7FFC8F9
        D6FFC6F9D5FFD0FFDBFF56A85684000000000000000000000000000000000000
        000000000000000000000000000000000000004A0018005F0010000000000000
        000000000000000000000062000D62AA627F87C087A888C188A688C188A687C1
        88A688C188A688C188A689C389A779BA79A12E96343100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00005DC6784473D28BB176D08CB574CE8AB46FCB85B46AC77FB465C378B460BD
        71B45BB769B642A74D83007F000C000000000000000000000000000000000065
        00190064001C0000000000000000000000000000000000000000000000000000
        0000000000000000000073CC879889F0A7FF6AE18EFF6EE190FF70E090FF70DD
        8EFF6DDB89FF69D884FF64D47EFF6AD57EFF4EA6536B00000000000000000000
        0000003A000D45A549C750AD56E4157F113C0000000000000000000000000000
        0000000000000000000000000000000000005DBE6D3F73D68FF84DDE81FF42D6
        77FF48D578FF4FD178FF54CD77FF52CA71FF49C467FF6AD581FF5CAF618A0000
        000000000000000000000064001C41A948EE40BC4FFF46A94DE00F720A310000
        0000000000000000000000000000000000000000000000000000000000005ABC
        6D6B61DF8DF838E07AFF39DB77FF43D778FF4FD279FF56CD78FF51C870FF66D3
        7EFF4EA75186000000000000000000000000003F000440A345C532B342FF42BB
        53FF51AE5AE22187214D00000000000000000000000000000000000000000000
        0000000000000C790C2A65D085E745EC8CFF3CE381FF44DE7FFF4BD77CFF51D0
        78FF4FC970FF61D27BFF46A34C86000000000000000000000000000000003294
        32654DB958FF2BAF3FFF4DC262FF69BE74FB60AE63A73C953C50006F00270058
        001A0066001E2B9030355FB66B7B81D79AE48AF5B7FF7DF4AFFF86F0B1FF8BEC
        B0FF91E8B0FF94E3ACFF8BDCA0FF8CE19FFF4FA7538600000000000000000000
        000000000000005B000E4CA952D360C66FFF5CC16DFF77D189FF91E0A0FF8ED5
        9AFF8ECF99F093D19EE492D6A1E78EDAA3FC97F4B8FF8EFDBDFF7CF7B3FF85F6
        B6FF91F2B9FF9BF0BBFFA7EDC0FFB1EAC2FFB6E9C3FFC6F4CFFF64B066860000
        000000000000000000000000000000000000228826496EBE75FD7BD089FF73CB
        83FF7BD18CFF88D99CFF97E3ABFF9FE9B4FF9BEEB7FF91EFB4FF86EFB0FF82F1
        B0FF83F4B4FF88F4B6FF94F2BAFFB2F9CEFFB8F7CEFFAFEAC1FFB3E7C1FFC1F2
        CCFF61B064860000000000000000000000000000000000000000000000003291
        327072C47BFF85D895FF7ED18FFF84D596FF8BD99EFF92DDA6FF91E2AAFF8EE7
        ADFF8CEBB0FF8BEEB2FF8CF0B5FF9AF6C0FFADFBCAFF7FC98CE876BF7FDEBAF1
        C9FFB7E9C5FFBFF1CAFF5FAF6286000000000000000000000000000000000000
        000000000000000000002A922C6768BD70F08DDD9BFF90DEA2FF90DBA2FF94DD
        A7FF97E1ACFF96E5AFFF96EAB3FF9CF1BDFFA6FAC7FF96E6ACFF60B76BB90061
        002A005200226DB973CBBCF1C7FFCDFDD8FF59AD5C8C00000000000000000000
        00000000000000000000000000000000000000000000007500324CA952AA70C3
        7BF38BD79AFF9BE0ABFFA2E4B4FFA5E7B8FFA0E8B5FF8CDA9FFF69BF78D22C94
        3167000000050000000000000000004E001A63B368B488CE8FE43496344E0000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000004B00251F8C2381389D3DCC3FA144EA41A146DD349837A60373
        004D000000000000000000000000000000000000000000000000000000000000
        000D0000000000000000}
    end
    object edLinkWebBrownser: TcxTextEdit
      Left = 52
      Top = 8
      Width = 537
      Height = 24
      ParentFont = False
      Style.BorderStyle = ebsFlat
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      TabOrder = 4
      OnKeyPress = edLinkWebBrownserKeyPress
    end
    object btnPrint: TBitBtn
      Left = 684
      Top = 2
      Width = 46
      Height = 36
      Hint = 'Imprimir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = btnPrintClick
      Glyph.Data = {
        C60A0000424DC60A00000000000036000000280000001A0000001A0000000100
        200000000000900A0000C40E0000C40E00000000000000000000000000000000
        00000000000000000000000000010000000E747474517C7C7C7D737373827373
        7382737373827373738273737382737373827373738273737382737373827373
        73827C7C7C7D7C7C7C560000000F000000010000000000000000000000000000
        0000000000000000000000000000000000000000000100000017C5C5C5BBFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFD3D3D3CC0000001A00000001000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0014B1B1B1A7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC4C4C4B6000000150000
        0000000000000000000000000000000000000000000000000003000000080000
        000C0000000D0000001D92929299FFFFFFFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
        FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFFFFFFFFABAB
        ABA50000001B0000000D0000000D0000000A0000000400000001000000050000
        00200000004E000000650000006800000070565656B6FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF737373BC0000006E0000006800000067000000590000002E0000
        000A0000000C393939736C6C6CE0686868EE686868EE616161EE7B7B7BF5ECEC
        ECFFF3F3F3FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
        F2FFF2F2F2FFF3F3F3FFF1F1F1FF848484F65E5E5EEE686868EE686868EE6D6D
        6DEB5E5E5EAD0E0E0E2300000013858585C8B2B2B2FFA9A9A9FFABABABFF9494
        94FF858585FFB6B6B6FFC1C1C1FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
        C0FFC0C0C0FFC0C0C0FFC0C0C0FFC1C1C1FFBBBBBBFF868686FF8B8B8BFFABAB
        ABFFA9A9A9FFACACACFFA4A4A4FF626262530000001CACACACD9D6D6D6FFCBCB
        CBFFCFCFCFFF9C9C9CFF424242FF757575FF808080FF7F7F7FFF7F7F7FFF7F7F
        7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF808080FF787878FF4646
        46FF8D8D8DFFCFCFCFFFCBCBCBFFCDCDCDFFCDCDCDFF838383610000001BB5B5
        B5D8DFDFDFFFD4D4D4FFDADADAFFA0A0A0FF0A0A0AFF101010FF131313FF1313
        13FF131313FF131313FF131313FF131313FF131313FF131313FF131313FF1313
        13FF111111FF080808FF909090FFDADADAFFD4D4D4FFD8D8D8FFD5D5D5FF8A8A
        8A5C00000017BDBDBDD7EAEAEAFFDEDEDEFFDFDFDFFFD7D7D7FF8E8E8EFF6F6F
        6FFF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
        71FF717171FF717171FF6F6F6FFF888888FFD2D2D2FFDFDFDFFFDEDEDEFFE1E1
        E1FFE0E0E0FF9696965A00000014C8C8C8D6F4F4F4FFE8E8E8FFE7E7E7FFEAEA
        EAFFF7F7F7FFF8F8F8FFF4F4F4FFF4F4F4FFF4F4F4FFF5F5F5FFF7F7F7FFF7F7
        F7FFF5F5F5FFF4F4F4FFF4F4F4FFF4F4F4FFF9F9F9FFF7F7F7FFEAEAEAFFE7E7
        E7FFE8E8E8FFEBEBEBFFE9E9E9FFA2A2A25800000011D0D0D0D5FDFDFDFFF1F1
        F1FFF1F1F1FFF4F4F4FFDDDDDDFF949494FF848484FF858585FF858585FF8A8B
        8BFF989A9CFF999B9DFF8C8C8DFF858585FF858585FF848484FF979797FFE2E2
        E2FFF3F3F3FFF1F1F1FFF1F1F1FFF4F4F4FFF2F2F2FFABABAB550000000BD9D9
        D9D4FFFFFFFFFBFBFBFFFBFBFBFFFDFDFDFF9D9D9DFF484848FF121212FF1414
        14FF131414FF1E1B19FF3F332CFF3F332CFF1E1B19FF131414FF141414FF1212
        12FF464646FFA7A7A7FFFEFEFEFFFBFBFBFFFBFBFBFFFDFDFDFFFBFBFBFFB5B5
        B55300000003D8D8D8D0FFFFFFFFFEFEFEFFFFFFFFFFF9F9F9FF969696FF4D4D
        4DFF030303FF070707FF040505FF201913FF6C4C39FF6E4E3AFF1F1713FF0405
        05FF070707FF030303FF4A4A4AFF9C9C9CFFFFFFFFFFFEFEFEFFFEFEFEFFFFFF
        FFFFFBFBFBFFB2B2B24D00000000D5D5D5C0FFFFFFFFFFFFFFFFFFFFFFFFFAFA
        FAFF999999FF5B5B5BFF1B1B1BFF1E1E1EFF1E1E1EFF1C1D1DFF191B1BFF191B
        1BFF1D1D1DFF1E1E1EFF1E1E1EFF1A1A1AFF5B5B5BFFA0A0A0FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFF4F4F4FFAEAEAE3C00000000C7C7C7A2FFFFFDFFF9F8
        F3FFF8F7F9FFF4F3F5FF8A8A8AFF5D5D5DFF434343FF444444FF444444FF4444
        44FF434343FF434343FF434444FF444444FF444444FF434343FF5C5C5CFF9393
        93FFFAFAFAFFF6F6F6FFF6F6F6FFFDFDFDFFE2E2E2F29292922800000000B2B2
        AE7CDBDCE3FFC2C2DCFFCAD0C1FFD3D7CCFF777677FF3C3C3CFF434343FF4343
        43FF434343FF434343FF434343FF434343FF434343FF434343FF434343FF4444
        44FF3C3C3CFF7F7F7FFFD1D1D1FFCECECEFFCDCDCDFFD7D7D7FFC3C3C3E05B5B
        5B0E00000000A5A598399A9AAEE07677B6E98B9878E89CA48EEA686769F82A2A
        2AFF2E2E2EFF2E2E2EFF2E2E2EFF2E2E2EFF2E2E2EFF2E2E2EFF2E2E2EFF2E2E
        2EFF2E2E2EFF2E2E2EFF2B2B2BFF6B6B6BF7979797E8999999E8969696E89D9D
        9DE9A5A5A59400000000000000000000000079796E1797977720948B9C1F645E
        6A2B3C3C3CB5B6B6B6FFC5C5C5FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
        C3FFC3C3C3FFC3C3C3FFC3C3C3FFC4C4C4FFBCBCBCFF4E4E4EAD8B8B8B1F8B8B
        8B1F8B8B8B1F8787872033333305000000000000000000000000000000000000
        000000000000000000002F2F2FA0D9D9D9FFEEEEEEFFEBEBEBFFEBEBEBFFEBEB
        EBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEDEDEDFFE1E1E1FF4646
        469B000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000039393997DCDCDCFFF1F1F1FFEEEE
        EEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFF0F0
        F0FFE4E4E4FF4B4B4B9B00000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000003D3D3D90E5E5
        E5FFFBFBFBFFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8
        F8FFF8F8F8FFFAFAFAFFEDEDEDFF4F4F4F9A0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00003C3C3C90E8E8E8FFFFFFFFFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
        FEFFFEFEFEFFFEFEFEFFFEFEFEFFFFFFFFFFF1F1F1FF4D4D4D9B000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000078787844F1F1F1FDFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFF8585
        8552000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000FEFEFE17F4F4F4BEF8F8F8D2F7F7
        F7D1F7F7F7D1F7F7F7D1F7F7F7D1F7F7F7D1F7F7F7D1F7F7F7D1F7F7F7D1F7F7
        F7D2F1F1F1CAF0F0F02200000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000}
    end
  end
  object Panel2: TPanel
    Left = 6
    Top = 530
    Width = 792
    Height = 12
    BevelOuter = bvLowered
    Color = 16762809
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = 5395026
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 4
    object lbStatus: TLabel
      Left = 8
      Top = 0
      Width = 3
      Height = 13
    end
  end
end
