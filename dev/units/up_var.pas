unit up_var;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

type
  tupVar = class
    vDataframe : string;
    constructor Create;
  end;

var
  vupVar : tupVar;

implementation

constructor tupVar.Create;
begin
  Self.vDataframe := 'df';
end;

end.

