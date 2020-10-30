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
    procedure fcOpenData (AFileName : TFileName);
  end;

var
  vucMain : tucMain;

implementation

constructor tucMain.Create (AOwner : TWinControl; APanelLeft,APanelBottom : TPanel);
begin
  inherited Create(AOwner);
  Self.vStringGrid := tucStringGrid.Create(AOwner);
  Self.vStringGrid.Parent := APanelLeft;
  Self.vPageControl := tucPageControl.Create(AOwner);
  Self.vPageControl.Parent := APanelBottom;
end;

procedure tucMain.fcOpenData (AFileName : TFileName);
begin
  Self.vStringGrid.fcOpenData(AFileName);
end;

end.

