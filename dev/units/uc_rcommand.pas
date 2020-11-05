unit uc_rcommand;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, aca_rcommand, Dialogs, up_var;

type
  tucRCommand = class
    vMainScript : WideString;
    constructor Create;
    procedure fcRun (ACommand : TAcaCommandType);
  end;

var
  vucRCommand : tucRCommand;

implementation

constructor tucRCommand.Create;
begin

end;

procedure tucRCommand.fcRun (ACommand : TAcaCommandType);
begin
  vupVar.vAcaRCommand.vCommandType := ACommand;
  ShowMessage(vupVar.vAcaRCommand.vMainCommand);
end;

end.

