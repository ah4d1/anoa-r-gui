unit uc_main;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Controls, ExtCtrls, uc_stringgrid, uc_pagecontrol, Dialogs;

type
  tucMain = class(TComponent)
  private
    FStringGrid : tucStringGrid;
    FPageControl : tucPageControl;
  public
    property vStringGrid : tucStringGrid read FStringGrid write FStringGrid;
    property vPageControl : tucPageControl read FPageControl write FPageControl;
    constructor Create (AOwner : TWinControl; APanelLeft,APanelBottom : TPanel);
  end;

var
  vucMain : tucMain;

implementation

constructor tucMain.Create (AOwner : TWinControl; APanelLeft,APanelBottom : TPanel);
begin
  inherited Create(AOwner);
  vStringGrid := tucStringGrid.Create(AOwner);
  vStringGrid.Parent := APanelLeft;
  vPageControl := tucPageControl.Create(AOwner);
  vPageControl.Parent := APanelBottom;
end;

end.

