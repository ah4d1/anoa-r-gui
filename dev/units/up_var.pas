unit up_var;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, aca_rcommand;

type
  tupVar = class (TComponent)
  public
    vAcaRCommand : TAcaRCommand;
    vDataframe : string;
    constructor Create (AOwner : TComponent);
  end;

var
  vupVar : tupVar;

implementation

constructor tupVar.Create (AOwner : TComponent);
begin
  inherited Create(AOwner);
  Self.vDataframe := 'df';
  vAcaRCommand := TAcaRCommand.Create(Self);
end;

end.

