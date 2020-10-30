unit uf_main;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Menus, ComCtrls,
  ExtCtrls, Grids, StdCtrls;

type

  { TFormMain }

  TFormMain = class(TForm)
    MainMenuMain: TMainMenu;
    MenuItemFileOpenData: TMenuItem;
    MenuItemFile: TMenuItem;
    OpenDialogMain: TOpenDialog;
    PanelTop: TPanel;
    PanelBottom: TPanel;
    SplitterBottom: TSplitter;
    StatusBar1: TStatusBar;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    procedure FormCreate(Sender: TObject);
    procedure MenuItemFileOpenDataClick(Sender: TObject);
  private

  public

  end;

var
  FormMain: TFormMain;

implementation

{$R *.lfm}

{ TFormMain }

uses
  uc_main;

procedure TFormMain.MenuItemFileOpenDataClick(Sender: TObject);
begin
  if Self.OpenDialogMain.Execute then
  begin
    // Self.StringGridMain.LoadFromCSVFile(Self.OpenDialogMain.FileName);
  end;
end;

procedure TFormMain.FormCreate(Sender: TObject);
begin
  vucMain := tucMain.Create(Self,Self.PanelTop,Self.PanelBottom);
end;

end.

