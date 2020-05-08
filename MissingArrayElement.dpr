program MissingArrayElement;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

const
  MAX_NUM = 10;

var
  arr1, arr2: Array of Integer;

function FindMissingNumber(arr: array of integer): Integer;
var
  total, sum: Integer;
  I: Integer;
begin
  total := Round((1 + MAX_NUM) * MAX_NUM / 2);
  Result := 0;
  for I in arr do
    Result := Result + I;
  Result := total - Result;
end;

begin
  arr1 := [1,3,5,2,4,6,8,9,10]; //missing 7
  arr2 := [3,2,4,1,9,5,6,7,8]; //missing 10
  WriteLn(FindMissingNumber(arr1));
  WriteLn(FindMissingNumber(arr2));
  ReadLn;
end.
