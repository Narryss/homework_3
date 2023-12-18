uses Crt;
var
    i,n,x1,x2:integer;
    x,h,s,s1,pog:real;
    ent:char;
    
    procedure
    enter();
    begin
      writeln('Нажмите Enter для продолжения...');
      repeat
        readln(ent);
      until ent = #13;
    end;
   
    procedure
    proc1();
    begin
      s:=(power(x2,4)/4+2*power(x2,3)/3+3*power(x2,2)/2+18*x2)-(power(x1,4)/4+2*power(x1,3)/3+3*power(x1,2)/2+18*x1);
      writeln('Площадь фигуры равна = ',s);
      enter();    
    end;
    
     procedure
     proc2();
     var
       i:integer;
     begin
     write('Введите количество трапеций ');
     readln(n);
     h:=(x2-x1)/n;
     x:=x1+h;
     writeln('Шаг равен = ',h);
     for i:=1 to n-1 do
     begin
     x:=x+h;
     s1:=(s+((x1*x1*x1+2*x1*x1+3*x1+18)+(x2*x2*x2+2*x2*x2+3*x2+18)/2)*h);
     end;
     writeln('Площадь фигуры с помощью метода трапеций = ',s1);
     enter();
     end;
     
     procedure
    proc3();
    begin
      pog:=s-s1;
      writeln('Погрешность ',abs(pog));
      enter();   
    end;

    procedure
    proc4();
    begin
      write('Введите новые пределы интегрирования');
      repeat
      readln(x1,x2);
      until x1 < x2;
      writeln('Пределы интегрирования теперь ',x1,' и ',x2);
      enter();   
    end;
      
begin
  repeat
  ClrScr;
  writeln('Площадь фигуры ограниченной кривой: 1.');
  writeln('Площадь фигуры с помощью метода трапеций: 2.');
  writeln('Погрешность: 3.');
  writeln('Введите пределы интегрирования: 4.');
  writeln('Выход: 0.');
  write('Выберите программу ');
  readln(i);
  case i of
  1: proc1;
  2: proc2;
  3: proc3;
  4: proc4;
  end;
  until i = 0;
end.