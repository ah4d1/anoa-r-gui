unit uc_outputgraph;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Controls, ExtCtrls;

type
  tucOutputGraph = class (TImage)
    constructor Create (AOwner : TComponent); override;
  end;

implementation

constructor tucOutputGraph.Create (AOwner : TComponent);
begin
  inherited Create(AOwner);
  Self.Align := alClient;
end;

end.

