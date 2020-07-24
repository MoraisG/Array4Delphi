unit Plus.ApiArray4D;

interface

uses
  System.Classes,
  System.Variants,
  System.Generics.Collections,
  Plus.ApiArray4D.Interfaces;

type
  TApiArray = class(TInterfacedObject, iApiArray4D)
  private
    FArrayString: TArray<String>;
    FArrayInteger: TArray<Integer>;
    FArrayCurrency: TArray<Currency>;
    FArrayDouble: TArray<double>;
    function Contains(const aValue: String; lArray: TArray<String>)
      : Boolean; overload;
    function Contains(const aValue: Integer; lArray: TArray<Integer>)
      : Boolean; overload;
    function Contains(const aValue: Currency; lArray: TArray<Currency>)
      : Boolean; overload;
    function Contains(const aValue: String; lArray: array of string)
      : Boolean; overload;
    function Contains(const aValue: Integer; lArray: array of Integer)
      : Boolean; overload;
    function Contains(const aValue: Currency; lArray: array of Currency)
      : Boolean; overload;
    function Contains(const aValue: double; lArray: array of double)
      : Boolean; overload;
  public
    constructor Create;
    Destructor Destroy; override;
    class function New: iApiArray4D;

    function ApiArray(const lArray: TArray<String>): iApiArray4D; overload;
    function ApiArray(const lArray: array of string): iApiArray4D; overload;
    function ApiArray(const lArray: TArray<Integer>): iApiArray4D; overload;
    function ApiArray(const lArray: array of Integer): iApiArray4D; overload;
    function ApiArray(const lArray: TArray<Currency>): iApiArray4D; overload;
    function ApiArray(const lArray: array of Currency): iApiArray4D; overload;
    function ApiArray(const lArray: TArray<double>): iApiArray4D; overload;
    function ApiArray(const lArray: array of double): iApiArray4D; overload;
    function Contains(const aValue: String): Boolean; overload;
    function Contains(const aValue: Integer): Boolean; overload;
    function Contains(const aValue: Currency): Boolean; overload;
    function Contains(const aValue: double): Boolean; overload;
  end;

implementation

uses
  System.TypInfo;

{ TApiArray }

function TApiArray.Contains(const aValue: String;
  lArray: TArray<String>): Boolean;
var
  I: Integer;
  lResult: Boolean;
begin
  lResult := false;
  for I := 0 to High(lArray) do
  begin
    if System.Pos(aValue, lArray[I]) > 0 then
    begin
      lResult := True;
      Break
    end;
  end;
  Result := lResult;
end;

function TApiArray.Contains(const aValue: String;
  lArray: array of string): Boolean;
var
  I: Integer;
  lResult: Boolean;
begin
  lResult := false;
  for I := 0 to High(lArray) do
  begin
    if System.Pos(aValue, lArray[I]) > 0 then
    begin
      lResult := True;
      Break
    end;
  end;
  Result := lResult;
end;

function TApiArray.Contains(const aValue: Integer;
  lArray: TArray<Integer>): Boolean;
var
  I: Integer;
  lResult: Boolean;
begin
  lResult := false;
  for I := 0 to High(lArray) do
  begin
    if aValue = lArray[I] then
    begin
      lResult := True;
      Break
    end;
  end;
  Result := lResult;
end;

function TApiArray.Contains(const aValue: Currency;
  lArray: TArray<Currency>): Boolean;
var
  I: Integer;
  lResult: Boolean;
begin
  lResult := false;
  for I := 0 to High(lArray) do
  begin
    if aValue = lArray[I] then
    begin
      lResult := True;
      Break
    end;
  end;
  Result := lResult;
end;

function TApiArray.Contains(const aValue: Integer;
  lArray: array of Integer): Boolean;
var
  I: Integer;
  lResult: Boolean;
begin
  lResult := false;
  for I := 0 to High(lArray) do
  begin
    if aValue = lArray[I] then
    begin
      lResult := True;
      Break
    end;
  end;
  Result := lResult;
end;

function TApiArray.Contains(const aValue: Currency;
  lArray: array of Currency): Boolean;
var
  I: Integer;
  lResult: Boolean;
begin
  lResult := false;
  for I := 0 to High(lArray) do
  begin
    if aValue = lArray[I] then
    begin
      lResult := True;
      Break
    end;
  end;
  Result := lResult;
end;

function TApiArray.Contains(const aValue: double;
  lArray: array of double): Boolean;
var
  I: Integer;
  lResult: Boolean;
begin
  lResult := false;
  for I := 0 to High(lArray) do
  begin
    if aValue = lArray[I] then
    begin
      lResult := True;
      Break
    end;
  end;
  Result := lResult;
end;

constructor TApiArray.Create;
begin
  FArrayString := TArray<String>.Create('');
  FArrayInteger := TArray<Integer>.Create(0);
  FArrayCurrency := TArray<Currency>.Create(0);
  FArrayDouble := TArray<double>.Create(0);
end;

destructor TApiArray.Destroy;
begin
  Finalize(FArrayString);
  Finalize(FArrayInteger);
  Finalize(FArrayCurrency);
  Finalize(FArrayDouble);
  inherited;
end;

class function TApiArray.New: iApiArray4D;
begin
  Result := Self.Create;
end;

function TApiArray.ApiArray(const lArray: array of Integer): iApiArray4D;
var
  I: Integer;
begin
  Result := Self;
  SetLength(FArrayInteger, High(lArray) + 1);
  for I := 0 to High(lArray) do
  begin
    FArrayInteger[I] := lArray[I];
  end;
end;

function TApiArray.ApiArray(const lArray: TArray<Currency>): iApiArray4D;
var
  I: Integer;
begin
  Result := Self;
  SetLength(FArrayCurrency, High(lArray) + 1);
  for I := 0 to High(lArray) do
  begin
    FArrayCurrency[I] := lArray[I];
  end;
end;

function TApiArray.ApiArray(const lArray: array of Currency): iApiArray4D;
var
  I: Integer;
begin
  Result := Self;
  SetLength(FArrayCurrency, High(lArray) + 1);
  for I := 0 to High(lArray) do
  begin
    FArrayCurrency[I] := lArray[I];
  end;
end;

function TApiArray.ApiArray(const lArray: TArray<String>): iApiArray4D;
var
  I: Integer;
begin
  Result := Self;
  SetLength(FArrayString, High(lArray) + 1);
  for I := 0 to High(lArray) do
  begin
    FArrayString[I] := lArray[I];
  end;
end;

function TApiArray.ApiArray(const lArray: array of string): iApiArray4D;
var
  I: Integer;
begin
  Result := Self;
  SetLength(FArrayString, High(lArray) + 1);
  for I := 0 to High(lArray) do
  begin
    FArrayString[I] := lArray[I];
  end;
end;

function TApiArray.ApiArray(const lArray: TArray<Integer>): iApiArray4D;
var
  I: Integer;
begin
  Result := Self;
  SetLength(FArrayInteger, High(lArray) + 1);
  for I := 0 to High(lArray) do
  begin
    FArrayInteger[I] := lArray[I];
  end;
end;

function TApiArray.ApiArray(const lArray: array of double): iApiArray4D;
var
  I: Integer;
begin
  Result := Self;
  SetLength(FArrayDouble, High(lArray) + 1);
  for I := 0 to High(lArray) do
  begin
    FArrayDouble[I] := lArray[I];
  end;
end;

function TApiArray.ApiArray(const lArray: TArray<double>): iApiArray4D;
var
  I: Integer;
begin
  Result := Self;
  SetLength(FArrayDouble, High(lArray) + 1);
  for I := 0 to High(lArray) do
  begin
    FArrayDouble[I] := lArray[I];
  end;
end;

function TApiArray.Contains(const aValue: Currency): Boolean;
begin
  Result := Self.Contains(aValue, Self.FArrayCurrency);
end;

function TApiArray.Contains(const aValue: double): Boolean;
begin
  Result := Self.Contains(aValue, Self.FArrayDouble);
end;

function TApiArray.Contains(const aValue: Integer): Boolean;
begin
  Result := Self.Contains(aValue, Self.FArrayInteger);
end;

function TApiArray.Contains(const aValue: String): Boolean;
begin
  Result := Self.Contains(aValue, Self.FArrayString);
end;

end.
