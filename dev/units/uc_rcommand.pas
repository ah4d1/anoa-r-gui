unit uc_rcommand;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, aca_rcommand, Dialogs;

type
  tucRCommand = class
    vMainScript : WideString;
    constructor Create;
    procedure fcRun (ACommand : TAcaCommandType);
  end;

var
  vucRCommand : tucRCommand;

implementation

uses
  up_var;

constructor tucRCommand.Create;
begin

end;

procedure tucRCommand.fcRun (ACommand : TAcaCommandType);
begin
  ShowMessage(vacaRCommand.vMainCommand);
  {
  case ACommand of
    acaCmdStructure : vMainScript := 'str(' + vupVar.vDataframe + ')';
  end;
  }
end;

end.

