{Realizar un programa que lea un carácter, que puede ser “+” (suma) o “-” (resta); si se ingresa otro
carácter, debe informar un error y finalizar. Una vez leído el carácter de suma o resta, deberá leerse
una secuencia de números enteros que finaliza con 0. El programa deberá aplicar la operación leída
con la secuencia de números, e imprimir el resultado final.
Por ejemplo:
○ Si se lee el carácter “-” y la secuencia 4 3 5 -6 0 , deberá imprimir: 2 (4 – 3 – 5 - (-6) )
○ Si se lee el carácter “+” y la secuencia -10 5 6 -1 0, deberá imprimir 0 ( -10 + 5 + 6 + (-1) )}


program practica2_ejercio9;
var
signo:char;
num,num1:integer;
suma,resta:integer;
begin
suma:=0;
resta:=0;
writeln('ingrese operacion + o - ');
readln(signo);
if (signo='+') then begin 
    writeln('ingrese una secuencia de digitos, termina al leer el numero 0');
    readln(num);
    while (num<>0) do begin
    suma:=suma+num;
    readln(num);
    end;
writeln('el resultado de la suma es ',suma);
end
else 
if (signo='-') then begin 
    writeln('ingrese una secuencia de digitos, termina al leer el numero 0');
    readln(num1);
    while (num1<>0) do begin
    resta:=resta-num1;
    readln(num1);
    end;
writeln('el resultado de la resta es ',resta);
end
else writeln('se ingreso un caracter incorrecto');





end.
