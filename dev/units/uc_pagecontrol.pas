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

uses
  uc_tabsheet;

constructor tucPageControl.Create (AOwner : TComponent);
begin
  inherited Create(AOwner);
  Self.Align := alClient;

  with tucTabSheet.Create(Self) do
  begin
    Parent := Self;
    Caption := 'Text';
    fcInit(Caption);
    // ImageIndex := AImageIndex;
  end;

  with tucTabSheet.Create(Self) do
  begin
    Parent := Self;
    Caption := 'Graph';
    fcInit(Caption);
    // ImageIndex := AImageIndex;
  end;
end;

end.

