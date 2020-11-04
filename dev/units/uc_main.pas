unit uc_main;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Controls, ExtCtrls, uc_stringgrid, uc_pagecontrol, uc_rcommand,
  Dialogs, Menus, aca_rcommand;

type
  tucMain = class(TComponent)
  private
    FStringGrid : tucStringGrid;
    FPageControl : tucPageControl;
    FRCommand : tucRCommand;
  public
    property vStringGrid : tucStringGrid read FStringGrid write FStringGrid;
    property vPageControl : tucPageControl read FPageControl write FPageControl;
    property vRCommand : tucRCommand read FRCommand write FRCommand;
    constructor Create (AOwner : TWinControl; APanelLeft,APanelBottom : TPanel;
      APopupMenu : TPopupMenu);
    procedure fcOpenData (AFileName : TFileName);
    procedure fcRun (ACommand : TAcaCommandType);
  end;

var
  vucMain : tucMain;

implementation

constructor tucMain.Create (AOwner : TWinControl; APanelLeft,APanelBottom : TPanel;
  APopupMenu : TPopupMenu);
begin
  inherited Create(AOwner);
  Self.vStringGrid := tucStringGrid.Create(AOwner);
  Self.vStringGrid.Parent := APanelLeft;
  Self.vStringGrid.fcInit(APopupMenu);
  Self.vPageControl := tucPageControl.Create(AOwner);
  Self.vPageControl.Parent := APanelBottom;
  Self.vRCommand := tucRCommand.Create;
end;

procedure tucMain.fcOpenData (AFileName : TFileName);
begin
  Self.vStringGrid.fcOpenData(AFileName);
end;

procedure tucMain.fcRun (ACommand : TAcaCommandType);
begin
  vucRCommand.fcRun(ACommand);
end;

end.

