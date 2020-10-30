unit uc_stringgrid;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Grids, Dialogs, Controls;

type
  tucStringGrid = class(TStringGrid)
    constructor Create (AOwner : TComponent); override;
  end;

implementation

constructor tucStringGrid.Create (AOwner : TComponent);
begin
  inherited Create(AOwner);
  Self.Align := alClient;
  Self.ColCount := 2;
  Self.RowCount := 2;
  Self.FixedCols := 1;
end;

end.

