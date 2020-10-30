unit uc_tabsheet;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, ComCtrls, uc_outputtext, uc_outputgraph;

type
  tucTabSheet = class (TTabSheet)
  private
    FOutputText : tucOutputText;
    FOutputGraph : tucOutputGraph;
  public
    property vOutputText : tucOutputText read FOutputText write FOutputText;
    property vOutputGraph : tucOutputGraph read FOutputGraph write FOutputGraph;
    constructor Create (AOwner : TComponent); override;
    procedure fcInit (AType : string);
  end;

implementation

constructor tucTabSheet.Create (AOwner : TComponent);
begin
  inherited Create(AOwner);
end;

procedure tucTabSheet.fcInit (AType : string);
begin
  if AType = 'Text' then
  begin
    vOutputText := tucOutputText.Create(Self);
    vOutputText.Parent := Self;
  end
  else if AType = 'Graph' then
  begin
    vOutputGraph := tucOutputGraph.Create(Self);
    vOutputGraph.Parent := Self;
  end;
end;

end.

