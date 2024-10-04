begin
  var year := ReadInteger('Введите год');
  Assert(year >= 1);
  var flag := False;
  if ((year mod 4 = 0) and (year mod 100 <> 0) or (year mod 400 = 0)) then
  begin
    flag := True;
    Print($'Год високосный:{flag},в нём 366 дней');
  end
  else
    Print($'Год невисокосный:{flag},в нём 365 дней');
  Println('----------------------------------------------------');
  var (year1,year2):=ReadInteger2('Введите 2 года для нахождения суммы дней годов между ними включительно');
  Assert((year1>0)and(year2>0)and(year1<year2));
  var k:=0;
  for var i:=year1 to year2 do
    begin
    if ((i mod 4 = 0) and (i mod 100 <> 0) or (i mod 400 = 0)) then
      k+=366
    else
      k+=365;
    end;
  Print($'Сумма дней:{k}');
  Println('----------------------------------------------------');
  var (day1,mes1):=ReadInteger2('Введите day1 и mes1');
  var (day2,mes2):=ReadInteger2('Введите day2 и mes2');
  Assert((day1<32) and (day2<32));
  Assert((mes1<13) and (mes2<13));
  Assert((day1<>day2)and(mes1<>mes2));
  if mes2<mes1 then 
    Print(1);
  if mes1=mes2 then
  begin
    if day1<day2 then
      Print(2)
    else
      Print(1);
  end
  else
    Print(2);
  Println('--------------------------------------------------');
end.