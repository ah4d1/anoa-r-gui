unit uf_main;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Menus, ComCtrls,
  ExtCtrls, Grids, StdCtrls, ActnList, aca_rcommand;

type

  { TFormMain }

  TFormMain = class(TForm)
    ActionDfStructure: TAction;
    ActionDataOpen: TAction;
    ActionListMain: TActionList;
    MainMenuMain: TMainMenu;
    MenuItemPopupDfDescStr: TMenuItem;
    MenuItemPopupDfDesc: TMenuItem;
    MenuItemPopupDf: TMenuItem;
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
    procedure ActionDfStructureExecute(Sender: TObject);
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
  uc_main, up_var;

procedure TFormMain.FormCreate(Sender: TObject);
begin
  vacaRCommand := TAcaRCommand.Create(Self);
  vupVar := tupVar.Create;
  vucMain := tucMain.Create(Self,Self.PanelTop,Self.PanelBottom,Self.PopupMenuData);
end;

procedure TFormMain.ActionDataOpenExecute(Sender: TObject);
begin
  if Self.OpenDialogMain.Execute then
  begin
    vucMain.fcOpenData(Self.OpenDialogMain.FileName);
  end;
end;

procedure TFormMain.ActionDfStructureExecute(Sender: TObject);
begin
  vucMain.fcRun(acaCmdStructure);
end;

end.

