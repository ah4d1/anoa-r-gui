unit uc_pagecontrol;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, ComCtrls, Controls;

type
  tucPageControl = class(TPageControl)
    constructor Create (AOwner : TComponent); override;
  end;

implementation

constructor tucPageControl.Create (AOwner : TComponent);
begin
  inherited Create(AOwner);
  Self.Align := alClient;
  with Self.AddTabSheet do
  begin
    Caption := 'Text Output';
  end;
  with Self.AddTabSheet do
  begin
    Caption := 'Graph Output';
  end;
end;

end.

