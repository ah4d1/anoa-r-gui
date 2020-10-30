unit uc_outputtext;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Controls, StdCtrls;

type
  tucOutputText = class (TMemo)
    constructor Create (AOwner : TComponent); override;
  end;

implementation

constructor tucOutputText.Create (AOwner : TComponent);
begin
  inherited Create(AOwner);
  Self.Align := alClient;
end;

end.

