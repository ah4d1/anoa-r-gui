unit uc_stringgrid;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Grids, Dialogs, Controls;

type
  tucStringGrid = class(TStringGrid)
  public
    constructor Create (AOwner : TComponent); override;
    procedure fcOpenData (AFileName : TFileName);
  end;

implementation

constructor tucStringGrid.Create (AOwner : TComponent);
begin
  inherited Create(AOwner);
  Self.Align := alClient;
  Self.ColCount := 2;
  Self.RowCount := 2;
  Self.FixedCols := 0;
end;

procedure tucStringGrid.fcOpenData (AFileName : TFileName);
begin
  Self.LoadFromCSVFile(AFileName);
  Self.AutoSizeColumns;
end;

end.

