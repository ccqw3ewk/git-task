begin
  var year := ReadInteger('Введите год');
  Assert(year >= 1);
  var flag := False;
  if ((year mod 4 = 0) and (year mod 100 <> 0) or (year mod 400 = 0)) then
  begin
    flag := True;
    Print($'Год високосный:{flag}');
  end
  else
    Print($'Год невисокосный:{flag}');
end.