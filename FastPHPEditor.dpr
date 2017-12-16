program FastPHPEditor;

uses
  Forms,
  EditorMain in 'EditorMain.pas' {Form1},
  Functions in 'Functions.pas',
  WebBrowserUtils in 'WebBrowserUtils.pas',
  FastPHPUtils in 'FastPHPUtils.pas',
  FindReplace in 'FindReplace.pas',
  RunPHP in 'RunPHP.pas',
  FastPHPTreeView in 'FastPHPTreeView.pas',
  CRC32 in 'CRC32.pas',
  ImageListEx in 'ImageListEx.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  // Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
