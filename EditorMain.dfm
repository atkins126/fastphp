object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'ViaThinkSoft FastPHP 0.1'
  ClientHeight = 661
  ClientWidth = 1120
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 385
    Width = 1120
    Height = 3
    Cursor = crVSplit
    Align = alBottom
    ExplicitTop = 262
    ExplicitWidth = 399
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 388
    Width = 1120
    Height = 273
    ActivePage = PlaintextTabSheet
    Align = alBottom
    TabOrder = 0
    object PlaintextTabSheet: TTabSheet
      Caption = 'Plaintext'
      object Memo2: TMemo
        Left = 0
        Top = 0
        Width = 1112
        Height = 245
        Align = alClient
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        ScrollBars = ssBoth
        TabOrder = 0
        OnDblClick = Memo2DblClick
        OnKeyDown = Memo2KeyDown
      end
    end
    object HtmlTabSheet: TTabSheet
      Caption = 'HTML'
      ImageIndex = 1
      object WebBrowser1: TWebBrowser
        Left = 0
        Top = 0
        Width = 1112
        Height = 245
        Align = alClient
        TabOrder = 0
        OnBeforeNavigate2 = WebBrowser1BeforeNavigate2
        ExplicitWidth = 348
        ExplicitHeight = 150
        ControlData = {
          4C000000EE720000521900000000000000000000000000000000000000000000
          000000004C000000000000000000000001000000E0D057007335CF11AE690800
          2B2E126200000000000000004C0000000114020000000000C000000000000046
          8000000000000000000000000000000000000000000000000000000000000000
          00000000000000000100000000000000000000000000000000000000}
      end
    end
  end
  object PageControl2: TPageControl
    Left = 0
    Top = 36
    Width = 1120
    Height = 349
    ActivePage = CodeTabsheet
    Align = alClient
    TabOrder = 1
    OnChanging = PageControl2Changing
    object CodeTabsheet: TTabSheet
      Caption = 'Code'
      object Splitter2: TSplitter
        Left = 273
        Top = 0
        Height = 321
        ExplicitLeft = 328
        ExplicitTop = 32
        ExplicitHeight = 100
      end
      object SynEdit1: TSynEdit
        Left = 276
        Top = 0
        Width = 836
        Height = 321
        Align = alClient
        ActiveLineColor = 14680010
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        TabOrder = 0
        OnMouseWheelDown = SynEdit1MouseWheelDown
        OnMouseWheelUp = SynEdit1MouseWheelUp
        CodeFolding.CollapsedLineColor = clGrayText
        CodeFolding.FolderBarLinesColor = clGrayText
        CodeFolding.ShowCollapsedLine = True
        CodeFolding.IndentGuidesColor = clGray
        CodeFolding.IndentGuides = True
        UseCodeFolding = False
        Gutter.AutoSize = True
        Gutter.Font.Charset = DEFAULT_CHARSET
        Gutter.Font.Color = clWindowText
        Gutter.Font.Height = -11
        Gutter.Font.Name = 'Courier New'
        Gutter.Font.Style = []
        Gutter.ShowLineNumbers = True
        Gutter.Gradient = True
        Gutter.GradientStartColor = cl3DLight
        Highlighter = SynPHPSyn1
        Options = [eoAutoIndent, eoDragDropEditing, eoEnhanceHomeKey, eoEnhanceEndKey, eoGroupUndo, eoHideShowScrollbars, eoKeepCaretX, eoScrollByOneLess, eoShowScrollHint, eoSmartTabDelete, eoTabIndent, eoTrimTrailingSpaces]
        SearchEngine = SynEditSearch1
        WantTabs = True
        OnChange = SynEdit1Change
        OnGutterClick = SynEdit1GutterClick
        OnMouseCursor = SynEdit1MouseCursor
        OnPaintTransient = SynEdit1PaintTransient
        FontSmoothing = fsmNone
        RemovedKeystrokes = <
          item
            Command = ecUndo
            ShortCut = 32776
          end
          item
            Command = ecRedo
            ShortCut = 40968
          end
          item
            Command = ecDeleteWord
            ShortCut = 16468
          end
          item
            Command = ecDeleteLine
            ShortCut = 16473
          end
          item
            Command = ecRedo
            ShortCut = 24666
          end>
        AddedKeystrokes = <
          item
            Command = ecDeleteWord
            ShortCut = 16430
          end
          item
            Command = ecRedo
            ShortCut = 16473
          end>
      end
      object TreeView1: TTreeView
        Left = 0
        Top = 0
        Width = 273
        Height = 321
        Align = alLeft
        Images = ImageList1
        Indent = 19
        ReadOnly = True
        TabOrder = 1
        OnDblClick = TreeView1DblClick
      end
    end
    object HelpTabsheet: TTabSheet
      Caption = 'Help'
      ImageIndex = 1
      object WebBrowser2: TWebBrowser
        Left = 0
        Top = 0
        Width = 1112
        Height = 321
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 300
        ExplicitHeight = 150
        ControlData = {
          4C000000EE7200002D2100000000000000000000000000000000000000000000
          000000004C000000000000000000000001000000E0D057007335CF11AE690800
          2B2E126200000000000000004C0000000114020000000000C000000000000046
          8000000000000000000000000000000000000000000000000000000000000000
          00000000000000000100000000000000000000000000000000000000}
      end
    end
  end
  object Panel1: TPanel
    Left = 544
    Top = 112
    Width = 185
    Height = 41
    Caption = 'Generating help. Please wait...'
    TabOrder = 2
    Visible = False
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1120
    Height = 36
    Align = alTop
    TabOrder = 3
    object BtnSpecialChars: TImage
      Left = 896
      Top = 8
      Width = 24
      Height = 22
      Cursor = crHandPoint
      AutoSize = True
      Picture.Data = {
        07544269746D617066060000424D660600000000000036000000280000001800
        000016000000010018000000000030060000C30E0000C30E0000000000000000
        0000FFFFFFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD6D6D6D6D6D6D6D6D6DDDDDDDDDDDDDDDD
        DDDDDDDDDDDDDDFFFFFFD8D8D8FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFEFEFED8D8D8D2D2D2FFFFFFFFFFFFFDFDFDFDFD
        FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD
        FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFFD2D2D2CCCCCCFFFFFF
        F8F8F8F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7
        F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F8F8F8FFFFFFCC
        CCCCC6C6C6FFFFFFF3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3
        F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3
        F3F3F3F3FFFFFFC6C6C6C0C0C0FFFFFFEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE
        EEEEEEEEEEEEEEEEEEEEEE2E2E2EEEEEEEEEEEEE2E2E2EEEEEEEEEEEEEEEEEEE
        EEEEEEEEEEEEEEEEEEEEEEEEFFFFFFC0C0C0BABABAFFFFFFE9E9E9E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E82E2E2EE8E8E8E8E8E82E2E2EE8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E9E9E9FFFFFFBABABAB6B6B6FFFFFF
        E3E3E3E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E22E2E2EE2E2
        E2E2E2E22E2E2EE2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E3E3E3FFFFFFB6
        B6B6B3B3B3FCFCFCDEDEDEDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDDDD2E2E2EDDDDDDDDDDDD2E2E2EDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDEDEDEFCFCFCB3B3B3B0B0B0F9F9F9D9D9D9D8D8D8D8D8D8D8D8D8D8D8D8D8
        D8D8D8D8D8D8D8D8D8D8D82E2E2ED8D8D8D8D8D82E2E2ED8D8D8D8D8D8D8D8D8
        D8D8D8D8D8D8D8D8D8D9D9D9F9F9F9B0B0B0AFAFAFF7F7F7D5D5D5D4D4D4D4D4
        D4D4D4D4D4D4D4D4D4D49595955757573737372E2E2ED4D4D4D4D4D42E2E2ED4
        D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D5D5D5F7F7F7AFAFAFB0B0B0F5F5F5
        D2D2D2D2D2D2D2D2D2D2D2D2D2D2D29494942E2E2E2E2E2E2E2E2E2E2E2ED2D2
        D2D2D2D22E2E2ED2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2F5F5F5B0
        B0B0B2B2B2F5F5F5D2D2D2D1D1D1D1D1D1D1D1D1D1D1D15656562E2E2E2E2E2E
        2E2E2E2E2E2ED1D1D1D1D1D12E2E2ED1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1
        D1D2D2D2F5F5F5B2B2B2B6B6B6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF39
        39392E2E2E2E2E2E2E2E2E2E2E2EFFFFFFFFFFFF2E2E2EFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB6B6B6BBBBBBFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF6262622E2E2E2E2E2E2E2E2E2E2E2EFFFFFFFFFFFF2E2E2EFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBBBBBBC0C0C0FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB6B6B62E2E2E2E2E2E2E2E2E2E2E2EA8A8
        A8FFFFFF2E2E2EA8A8A8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0
        C0C0C7C7C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB9B9B9656565
        2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2EFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFC7C7C7CECECEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCECECED4D4D4FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD4D4D4D9D9D9FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD9
        D9D9DEDEDEF5F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFF5F5F5DEDEDEFFFFFFE2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2
        E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2DDDDDDDDDDDDDDDDDD
        E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2FFFFFF}
      OnClick = BtnSpecialCharsClick
    end
    object BtnSpecialCharsOff: TImage
      Left = 976
      Top = 8
      Width = 24
      Height = 22
      AutoSize = True
      Picture.Data = {
        07544269746D617066060000424D660600000000000036000000280000001800
        000016000000010018000000000030060000C30E0000C30E0000000000000000
        0000FFFFFFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD6D6D6D6D6D6D6D6D6DDDDDDDDDDDDDDDD
        DDDDDDDDDDDDDDFFFFFFD8D8D8FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFEFEFED8D8D8D2D2D2FFFFFFFFFFFFFDFDFDFDFD
        FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD
        FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFFD2D2D2CCCCCCFFFFFF
        F8F8F8F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7
        F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F8F8F8FFFFFFCC
        CCCCC6C6C6FFFFFFF3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3
        F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3
        F3F3F3F3FFFFFFC6C6C6C0C0C0FFFFFFEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE
        EEEEEEEEEEEEEEEEEEEEEE2E2E2EEEEEEEEEEEEE2E2E2EEEEEEEEEEEEEEEEEEE
        EEEEEEEEEEEEEEEEEEEEEEEEFFFFFFC0C0C0BABABAFFFFFFE9E9E9E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E82E2E2EE8E8E8E8E8E82E2E2EE8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E9E9E9FFFFFFBABABAB6B6B6FFFFFF
        E3E3E3E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E22E2E2EE2E2
        E2E2E2E22E2E2EE2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E3E3E3FFFFFFB6
        B6B6B3B3B3FCFCFCDEDEDEDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDDDD2E2E2EDDDDDDDDDDDD2E2E2EDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDEDEDEFCFCFCB3B3B3B0B0B0F9F9F9D9D9D9D8D8D8D8D8D8D8D8D8D8D8D8D8
        D8D8D8D8D8D8D8D8D8D8D82E2E2ED8D8D8D8D8D82E2E2ED8D8D8D8D8D8D8D8D8
        D8D8D8D8D8D8D8D8D8D9D9D9F9F9F9B0B0B0AFAFAFF7F7F7D5D5D5D4D4D4D4D4
        D4D4D4D4D4D4D4D4D4D49595955757573737372E2E2ED4D4D4D4D4D42E2E2ED4
        D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D5D5D5F7F7F7AFAFAFB0B0B0F5F5F5
        D2D2D2D2D2D2D2D2D2D2D2D2D2D2D29494942E2E2E2E2E2E2E2E2E2E2E2ED2D2
        D2D2D2D22E2E2ED2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2F5F5F5B0
        B0B0B2B2B2F5F5F5D2D2D2D1D1D1D1D1D1D1D1D1D1D1D15656562E2E2E2E2E2E
        2E2E2E2E2E2ED1D1D1D1D1D12E2E2ED1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1
        D1D2D2D2F5F5F5B2B2B2B6B6B6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF39
        39392E2E2E2E2E2E2E2E2E2E2E2EFFFFFFFFFFFF2E2E2EFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB6B6B6BBBBBBFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF6262622E2E2E2E2E2E2E2E2E2E2E2EFFFFFFFFFFFF2E2E2EFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBBBBBBC0C0C0FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB6B6B62E2E2E2E2E2E2E2E2E2E2E2EA8A8
        A8FFFFFF2E2E2EA8A8A8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0
        C0C0C7C7C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB9B9B9656565
        2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2EFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFC7C7C7CECECEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCECECED4D4D4FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD4D4D4D9D9D9FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD9
        D9D9DEDEDEF5F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFF5F5F5DEDEDEFFFFFFE2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2
        E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2DDDDDDDDDDDDDDDDDD
        E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2FFFFFF}
      Visible = False
    end
    object BtnSpecialCharsOn: TImage
      Left = 1006
      Top = 8
      Width = 24
      Height = 22
      AutoSize = True
      Picture.Data = {
        07544269746D617066060000424D660600000000000036000000280000001800
        000016000000010018000000000030060000C40E0000C40E0000000000000000
        0000F9E8DAD5A989D5A989D5A989D5A989D5A989D5A989D5A989D5A989D5A989
        D5A989D5A989D5A989D5A989D5A989D1A380D1A380D1A380D5A989D5A989D5A9
        89D5A989D5A989F9E8DAD1A583E8CDB9CCF9FFCCF9FFCCF9FFCCF9FFCCF9FFCC
        F9FFCCF9FFCCF9FFCCF9FFCCF9FFCCF9FFCCF9FFCCF9FFCCF9FFCCF9FFCCF9FF
        CCF9FFCCF9FFCCF9FFCCF9FFE8CDB9D1A583CBA07DC4EFFFC4EFFF9FE5FF9FE5
        FF9FE5FF9FE5FF9FE5FF9FE5FF9FE5FF9FE5FF9FE5FF9FE5FF9FE5FF9FE5FF9F
        E5FF9FE5FF9FE5FF9FE5FF9FE5FF9FE5FF9FE5FFC4EFFFCBA07DC69976BEEDFF
        95E1FF94E1FF94E1FF94E1FF94E1FF94E1FF94E1FF94E1FF94E1FF94E1FF94E1
        FF94E1FF94E1FF94E1FF94E1FF94E1FF94E1FF94E1FF94E1FF95E1FFBEEDFFC6
        9976C1936FB8EBFF8CDFFF8BDFFF8BDFFF8BDFFF8BDFFF8BDFFF8BDFFF8BDFFF
        8BDFFF8BDFFF8BDFFF8BDFFF8BDFFF8BDFFF8BDFFF8BDFFF8BDFFF8BDFFF8BDF
        FF8CDFFFB8EBFFC1936FBD8C68B2EAFF82DCFF81DCFF81DCFF81DCFF81DCFF81
        DCFF81DCFF81DCFF81DCFF00000081DCFF81DCFF00000081DCFF81DCFF81DCFF
        81DCFF81DCFF81DCFF82DCFFB2EAFFBD8C68B68762ABE8FF77DAFF76DAFF76DA
        FF76DAFF76DAFF76DAFF76DAFF76DAFF76DAFF00000076DAFF76DAFF00000076
        DAFF76DAFF76DAFF76DAFF76DAFF76DAFF77DAFFABE8FFB68762B4835DA4E7FF
        6BD7FF6AD7FF6AD7FF6AD7FF6AD7FF6AD7FF6AD7FF6AD7FF6AD7FF0000006AD7
        FF6AD7FF0000006AD7FF6AD7FF6AD7FF6AD7FF6AD7FF6AD7FF6BD7FFA4E7FFB4
        835DB07F5A9EE5FF61D5FF60D5FF60D5FF60D5FF60D5FF60D5FF60D5FF60D5FF
        60D5FF00000060D5FF60D5FF00000060D5FF60D5FF60D5FF60D5FF60D5FF60D5
        FF61D5FF9EE5FFB07F5AAF7D5698E4FF57D3FF56D3FF56D3FF56D3FF56D3FF56
        D3FF56D3FF56D3FF56D3FF00000056D3FF56D3FF00000056D3FF56D3FF56D3FF
        56D3FF56D3FF56D3FF57D3FF98E4FFAF7D56AE7C5593E3FF4FD1FF4ED1FF4ED1
        FF4ED1FF4ED1FF4ED1FF30829F13333F040C0F0000004ED1FF4ED1FF0000004E
        D1FF4ED1FF4ED1FF4ED1FF4ED1FF4ED1FF4FD1FF93E3FFAE7C55AF7D5590E2FF
        4AD0FF49D0FF49D0FF49D0FF49D0FF2D819F00000000000000000000000049D0
        FF49D0FF00000049D0FF49D0FF49D0FF49D0FF49D0FF49D0FF4AD0FF90E2FFAF
        7D55B07F598FE2FF49D0FF48D0FF48D0FF48D0FF48D0FF11333F000000000000
        00000000000048D0FF48D0FF00000048D0FF48D0FF48D0FF48D0FF48D0FF48D0
        FF49D0FF8FE2FFB07F59B5835CCAEFFCA9E5FAA8E5FAA8E5FAA8E5FAA8E5FA09
        0D0E000000000000000000000000A8E5FAA8E5FA000000A8E5FAA8E5FAA8E5FA
        A8E5FAA8E5FAA8E5FAA9E5FACAEFFCB5835CB88762D0F1FCB3E8FAB2E8FAB2E8
        FAB2E8FAB2E8FA2B393D000000000000000000000000B2E8FAB2E8FA000000B2
        E8FAB2E8FAB2E8FAB2E8FAB2E8FAB2E8FAB3E8FAD0F1FCB88762BD8C68D5F3FD
        BCECFBBBECFBBBECFBBBECFBBBECFB74939C0000000000000000000000006884
        8CBBECFB00000068848CBBECFBBBECFBBBECFBBBECFBBBECFBBCECFBD5F3FDBD
        8C68C4936EDAF5FDC3EFFCC3EFFCC3EFFCC3EFFCC3EFFCC3EFFC79959D303B3E
        000000000000000000000000000000000000000000C3EFFCC3EFFCC3EFFCC3EF
        FCC3EFFCDAF5FDC4936ECA9A77DFF7FECAF2FDCAF2FDCAF2FDCAF2FDCAF2FDCA
        F2FDCAF2FDCAF2FDCAF2FDCAF2FDCAF2FDCAF2FDCAF2FDCAF2FDCAF2FDCAF2FD
        CAF2FDCAF2FDCAF2FDCAF2FDDFF7FECA9A77CFA07DE2F9FED0F5FED0F5FED0F5
        FED0F5FED0F5FED0F5FED0F5FED0F5FED0F5FED0F5FED0F5FED0F5FED0F5FED0
        F5FED0F5FED0F5FED0F5FED0F5FED0F5FED0F5FEE2F9FECFA07DD3A683E5FAFE
        E5FAFED5F7FED5F7FED5F7FED5F7FED5F7FED5F7FED5F7FED5F7FED5F7FED5F7
        FED5F7FED5F7FED5F7FED5F7FED5F7FED5F7FED5F7FED5F7FED5F7FEE5FAFED3
        A683D9AA87E1C4AEE8FBFFE8FBFFE8FBFFE8FBFFE8FBFFE8FBFFE8FBFFE8FBFF
        E8FBFFE8FBFFE8FBFFE8FBFFE8FBFFE8FBFFE8FBFFE8FBFFE8FBFFE8FBFFE8FB
        FFE8FBFFE1C4AED9AA87FCF0E6DDAF8CDDAF8CDDAF8CDDAF8CDDAF8CDDAF8CDD
        AF8CDDAF8CDDAF8CDDAF8CDDAF8CDDAF8CDDAF8CDDAF8CDAA784DAA784DAA784
        DDAF8CDDAF8CDDAF8CDDAF8CDDAF8CFCF0E6}
      Visible = False
    end
    object Button1: TButton
      Left = 4
      Top = 0
      Width = 75
      Height = 35
      Action = ActionRun
      PopupMenu = RunPopup
      TabOrder = 0
    end
    object Button2: TButton
      Left = 247
      Top = 0
      Width = 75
      Height = 35
      Action = ActionHelp
      TabOrder = 3
    end
    object Button3: TButton
      Left = 328
      Top = 0
      Width = 75
      Height = 35
      Action = ActionGoto
      TabOrder = 4
    end
    object Button4: TButton
      Left = 409
      Top = 0
      Width = 75
      Height = 35
      Action = ActionFind
      TabOrder = 5
    end
    object Button5: TButton
      Left = 490
      Top = 0
      Width = 75
      Height = 35
      Action = ActionReplace
      TabOrder = 6
    end
    object Button6: TButton
      Left = 571
      Top = 0
      Width = 75
      Height = 35
      Action = ActionFindNext
      TabOrder = 7
    end
    object Button7: TButton
      Left = 166
      Top = 0
      Width = 75
      Height = 35
      Action = ActionSave
      PopupMenu = SavePopup
      TabOrder = 2
    end
    object Button8: TButton
      Left = 85
      Top = 0
      Width = 75
      Height = 35
      Action = ActionOpen
      TabOrder = 1
    end
    object Button9: TButton
      Left = 652
      Top = 0
      Width = 75
      Height = 35
      Action = ActionFindPrev
      TabOrder = 8
    end
    object Button11: TButton
      Left = 733
      Top = 0
      Width = 75
      Height = 35
      Action = ActionSpaceToTab
      TabOrder = 9
    end
    object btnLint: TButton
      Left = 814
      Top = 0
      Width = 75
      Height = 35
      Action = ActionLint
      TabOrder = 10
    end
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '.chm'
    FileName = 'php_manual_en.chm'
    Filter = 'Help files (*.chm)|*.chm'
    Options = [ofReadOnly, ofHideReadOnly, ofPathMustExist, ofFileMustExist, ofEnableSizing]
    Title = 'Please select your PHP Help file (CHM format)'
    Left = 504
    Top = 248
  end
  object OpenDialog3: TOpenDialog
    DefaultExt = '.php'
    FileName = 'scrap.php'
    Filter = 
      'All PHP files (*.php*;*.phtml;*.inc;*.xphp)|*.php*;*.phtml;*.inc' +
      ';*.xphp|PHP files (*.php*;*.phtml)|*.php*;*.phtml|Include files ' +
      '(*.inc)|*.inc|PHP source files (*.phps)|*.phps|Executable PHP fi' +
      'le (*.xphp)|*.xphp|All files (*.*)|*.*'
    Options = [ofHideReadOnly, ofPathMustExist, ofEnableSizing]
    Title = 'Please select (or create) a scrap file'
    Left = 608
    Top = 248
  end
  object SynPHPSyn1: TSynPHPSyn
    DefaultFilter = 
      'PHP Files (*.php;*.xphp;*.php3;*.phtml;*.inc)|*.php;*.xphp;*.php' +
      '3;*.phtml;*.inc'
    Options.AutoDetectEnabled = False
    Options.AutoDetectLineLimit = 0
    Options.Visible = False
    CommentAttri.Foreground = 33023
    IdentifierAttri.Foreground = 4194304
    KeyAttri.Foreground = 4227072
    NumberAttri.Foreground = 213
    StringAttri.Foreground = 13762560
    SymbolAttri.Foreground = 4227072
    VariableAttri.Foreground = 213
    Left = 72
    Top = 80
  end
  object SynEditFocusTimer: TTimer
    Enabled = False
    Interval = 500
    OnTimer = SynEditFocusTimerTimer
    Left = 692
    Top = 249
  end
  object ActionList: TActionList
    Left = 132
    Top = 252
    object ActionFind: TAction
      Caption = 'Find'
      ShortCut = 16454
      OnExecute = ActionFindExecute
    end
    object ActionReplace: TAction
      Caption = 'Replace'
      ShortCut = 16456
      OnExecute = ActionReplaceExecute
    end
    object ActionFindNext: TAction
      Caption = 'Find next'
      ShortCut = 114
      OnExecute = ActionFindNextExecute
    end
    object ActionFindPrev: TAction
      Caption = 'Find prev'
      ShortCut = 8306
      OnExecute = ActionFindPrevExecute
    end
    object ActionGoto: TAction
      Caption = 'Goto line'
      ShortCut = 16455
      OnExecute = ActionGotoExecute
    end
    object ActionSave: TAction
      Caption = 'Save'
      ShortCut = 16467
      OnExecute = ActionSaveExecute
    end
    object ActionHelp: TAction
      Caption = 'Help'
      ShortCut = 112
      OnExecute = ActionHelpExecute
    end
    object ActionRun: TAction
      Caption = 'Run'
      ShortCut = 120
      OnExecute = ActionRunExecute
    end
    object ActionRunConsole: TAction
      Caption = 'Run in console'
      ShortCut = 8312
      OnExecute = ActionRunConsoleExecute
    end
    object ActionESC: TAction
      Caption = 'Esc'
      ShortCut = 27
      OnExecute = ActionESCExecute
    end
    object ActionOpen: TAction
      Caption = 'Open'
      ShortCut = 16463
      OnExecute = ActionOpenExecute
    end
    object ActionSpaceToTab: TAction
      Caption = 'SpaceToTab'
      Hint = 'Converts leading spaces to tabs'
      OnExecute = ActionSpaceToTabExecute
    end
    object ActionLint: TAction
      Caption = 'Lint'
      OnExecute = ActionLintExecute
    end
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 776
    Top = 8
  end
  object SynEditSearch1: TSynEditSearch
    Left = 788
    Top = 252
  end
  object ImageList1: TImageList
    Left = 92
    Top = 180
  end
  object RunPopup: TPopupMenu
    Left = 60
    Top = 4
    object OpeninIDE1: TMenuItem
      Action = ActionRun
      Default = True
    end
    object Runinconsole1: TMenuItem
      Action = ActionRunConsole
    end
  end
  object SavePopup: TPopupMenu
    Left = 196
    Top = 28
    object Save1: TMenuItem
      Caption = 'Save'
      Default = True
      OnClick = Save1Click
    end
    object Saveas1: TMenuItem
      Caption = 'Save as...'
      OnClick = Saveas1Click
    end
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '.php'
    FileName = 'scrap.php'
    Filter = 
      'All PHP files (*.php*;*.phtml;*.inc;*.xphp)|*.php*;*.phtml;*.inc' +
      ';*.xphp|PHP files (*.php*;*.phtml)|*.php*;*.phtml|Include files ' +
      '(*.inc)|*.inc|PHP source files (*.phps)|*.phps|Executable PHP fi' +
      'le (*.xphp)|*.xphp|All files (*.*)|*.*'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Title = 'Save as...'
    Left = 608
    Top = 320
  end
end
