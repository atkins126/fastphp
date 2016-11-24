unit Unit1;

// TODO: localize

// TODO: wieso geht copy paste im twebbrowser nicht???
// Wieso dauert webbrowser1 erste kompilierung so lange???

// Future ideas
// - ToDo list
// - Open/Save real files
// - configurable scraps dir. multiple scraps?
// - verschiedene php versionen?
// - webbrowser1 nur laden, wenn man den tab anw�hlt?
// - doppelklick auf tab soll diesen schlie�en

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, OleCtrls, SHDocVw, ComCtrls, ExtCtrls, ToolWin, IniFiles;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    PlaintextTabSheet: TTabSheet;
    HtmlTabSheet: TTabSheet;
    Memo2: TMemo;
    WebBrowser1: TWebBrowser;
    Splitter1: TSplitter;
    PageControl2: TPageControl;
    TabSheet3: TTabSheet;
    HelpTabsheet: TTabSheet;
    WebBrowser2: TWebBrowser;
    Memo1: TMemo;
    OpenDialog1: TOpenDialog;
    Panel1: TPanel;
    OpenDialog2: TOpenDialog;
    OpenDialog3: TOpenDialog;
    procedure Run(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Memo1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PageControl2Changing(Sender: TObject; var AllowChange: Boolean);
  private
    CurSearchTerm: string;
    HlpPrevPageIndex: integer;
    procedure Help;
    procedure ApplicationOnMessage(var Msg: tagMSG; var Handled: Boolean);
  protected
    FastPHPConfig: TMemIniFile;
    ChmIndex: TMemIniFile;
    function GetScrapFile: string;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses
  Functions;

procedure TForm1.ApplicationOnMessage(var Msg: tagMSG; var Handled: Boolean);
begin                     
  case Msg.message of
    WM_KEYUP:
    begin
      case Msg.wParam of
        VK_ESCAPE:
        begin
          // It is necessary to use Application.OnMessage, because Form1.KeyPreview does not work when TWebBrowser has the focus
          if (HlpPrevPageIndex <> -1) and (PageControl2.ActivePage = HelpTabSheet) and
             (HelpTabsheet.TabVisible) then
          begin
            PageControl2.ActivePageIndex := HlpPrevPageIndex;
            HelpTabsheet.TabVisible := false;
          end;
          Handled := true;
        end;
      end;
    end;
  end;
end;

procedure TForm1.Run(Sender: TObject);
var
  phpExe: string;
begin
  if not FileExists(phpExe) then
  begin
    phpExe := FastPHPConfig.ReadString('Paths', 'PHPInterpreter', '');
    if not FileExists(phpExe) then
    begin
      if not OpenDialog2.Execute then exit;
      if not FileExists(OpenDialog2.FileName) then exit;
      phpExe := OpenDialog2.FileName;

      if not IsValidPHPExe(phpExe) then
      begin
        ShowMessage('This is not a valid PHP executable.');
        exit;
      end;

      FastPHPConfig.WriteString('Paths', 'PHPInterpreter', phpExe);
      FastPHPConfig.UpdateFile;
    end;
  end;

  memo1.Lines.SaveToFile(GetScrapFile);

  memo2.Lines.Text := GetDosOutput('"'+phpExe+'" "'+GetScrapFile+'"', ExtractFileDir(Application.ExeName));

  BrowseContent(Webbrowser1, memo2.Lines.Text);

  if IsTextHTML(memo2.lines.text) then
    PageControl1.ActivePage := HtmlTabSheet
  else
    PageControl1.ActivePage := PlaintextTabSheet;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Memo1.Lines.SaveToFile(GetScrapFile);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  HlpPrevPageIndex := -1;
  CurSearchTerm := '';
  Application.OnMessage := ApplicationOnMessage;

  FastPHPConfig := TMemIniFile.Create(ChangeFileExt(Application.ExeName, '.ini'));
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  if Assigned(ChmIndex) then
  begin
    FreeAndNil(ChmIndex);
  end;

  FastPHPConfig.UpdateFile;
  FreeAndNil(FastPHPConfig);
end;

procedure TForm1.FormShow(Sender: TObject);
var
  ScrapFile: string;
begin
  ScrapFile := GetScrapFile;
  if ScrapFile = '' then
  begin
    Close;
    exit;
  end;
  Memo1.Lines.LoadFromFile(ScrapFile);

  PageControl1.ActivePage := PlaintextTabSheet;

  PageControl2.ActivePageIndex := 0; // Scraps
  HelpTabsheet.TabVisible := false;
end;

function TForm1.GetScrapFile: string;
begin
  result := FastPHPConfig.ReadString('Paths', 'ScrapFile', '');
  if not FileExists(result) then
  begin
    if not OpenDialog3.Execute then
    begin
      result := '';
      exit;
    end;

    result := OpenDialog3.FileName;

    if not DirectoryExists(ExtractFilePath(result)) then
    begin
      ShowMessage('Path does not exist!');
      result := '';
      exit;
    end;

    Memo1.Lines.Clear;
    Memo1.Lines.SaveToFile(result);

    FastPHPConfig.WriteString('Paths', 'ScrapFile', result);
  end;
end;

procedure TForm1.Help;
var
  IndexFile, chmFile, w, url: string;
  internalHtmlFile: string;
begin
  if not Assigned(ChmIndex) then
  begin
    IndexFile := FastPHPConfig.ReadString('Paths', 'HelpIndex', '');
    IndexFile := ChangeFileExt(IndexFile, '.ini'); // Just to be sure. Maybe someone wrote manually the ".chm" file in there
    if FileExists(IndexFile) then
    begin
      ChmIndex := TMemIniFile.Create(IndexFile);
    end;
  end;

  if Assigned(ChmIndex) then
  begin
    IndexFile := FastPHPConfig.ReadString('Paths', 'HelpIndex', '');
    // We don't check if IndexFile still exists. It is not important since we have ChmIndex pre-loaded in memory

    chmFile := ChangeFileExt(IndexFile, '.chm');
    if not FileExists(chmFile) then
    begin
      FreeAndNil(ChmIndex);
    end;
  end;

  if not Assigned(ChmIndex) then
  begin
    if not OpenDialog1.Execute then exit;

    chmFile := OpenDialog1.FileName;
    if not FileExists(chmFile) then exit;

    IndexFile := ChangeFileExt(chmFile, '.ini');

    if not FileExists(IndexFile) then
    begin
      Panel1.Align := alClient;
      Panel1.Visible := true;
      Panel1.BringToFront;
      Screen.Cursor := crHourGlass;
      Application.ProcessMessages;
      try
        if not ParseCHM(chmFile) then
        begin
          ShowMessage('The CHM file is not a valid PHP documentation. Cannot use help.');
          exit;
        end;
      finally
        Screen.Cursor := crDefault;
        Panel1.Visible := false;
      end;

      if not FileExists(IndexFile) then
      begin
        ShowMessage('Unknown error. Cannot use help.');
        exit;
      end;
    end;

    FastPHPConfig.WriteString('Paths', 'HelpIndex', IndexFile);
    FastPHPConfig.UpdateFile;

    ChmIndex := TMemIniFile.Create(IndexFile);
  end;

  w := GetWordUnderCaret(Memo1);
  if w = '' then exit;
  if w[1] in ['0'..'9'] then exit;  
  w := StringReplace(w, '_', '-', [rfReplaceAll]);
  w := LowerCase(w);
  CurSearchTerm := w;

  internalHtmlFile := ChmIndex.ReadString('_HelpWords_', CurSearchTerm, '');
  if internalHtmlFile = '' then
  begin
    HelpTabsheet.TabVisible := false;
    HlpPrevPageIndex := -1;
    ShowMessage('No help for "'+CurSearchTerm+'" available');
    Exit;
  end;

  url := 'mk:@MSITStore:'+ChmFile+'::'+internalHtmlFile;

  HlpPrevPageIndex := PageControl2.ActivePageIndex; // Return by pressing ESC
  HelpTabsheet.TabVisible := true;
  PageControl2.ActivePage := HelpTabsheet;
  BrowseURL(WebBrowser2, url);
end;

procedure TForm1.Memo1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_F9) or (Key = VK_F5) then
    Run(Sender)
  else if Key = VK_F1 then
    Help;
end;

procedure TForm1.PageControl2Changing(Sender: TObject;
  var AllowChange: Boolean);
begin
  if PageControl2.ActivePage = HelpTabsheet then
    HlpPrevPageIndex := -1
  else
    HlpPrevPageIndex := PageControl2.ActivePageIndex;

  AllowChange := true;
end;

end.
