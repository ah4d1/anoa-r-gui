unit uc_rcommand;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

type
  targCommand = (argCommandStructure);
  tucRCommand = class
    vMainScript : WideString;
    constructor Create;
    procedure fcRun (ACommand : targCommand);
  end;

var
  vucRCommand : tucRCommand;

implementation

uses
  up_var;

constructor tucRCommand.Create;
begin

end;

procedure tucRCommand.fcRun (ACommand : targCommand);
begin
  case ACommand of
    argCommandStructure : vMainScript := 'str(' + vupVar.vDataframe + ')';
  end;
end;

end.

