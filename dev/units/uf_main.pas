unit uf_main;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Menus, ComCtrls,
  ExtCtrls, Grids, StdCtrls, ActnList;

type

  { TFormMain }

  TFormMain = class(TForm)
    ActionDataOpen: TAction;
    ActionListMain: TActionList;
    MainMenuMain: TMainMenu;
    MenuItemPopupOpenData: TMenuItem;
    MenuItemFileOpenData: TMenuItem;
    MenuItemFile: TMenuItem;
    OpenDialogMain: TOpenDialog;
    PanelTop: TPanel;
    PanelBottom: TPanel;
    PopupMenuData: TPopupMenu;
    SplitterBottom: TSplitter;
    StatusBar1: TStatusBar;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    procedure ActionDataOpenExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
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

procedure TFormMain.FormCreate(Sender: TObject);
begin
  vucMain := tucMain.Create(Self,Self.PanelTop,Self.PanelBottom);
end;

procedure TFormMain.ActionDataOpenExecute(Sender: TObject);
begin
  if Self.OpenDialogMain.Execute then
  begin
    vucMain.fcOpenData(Self.OpenDialogMain.FileName);
  end;
end;

end.

