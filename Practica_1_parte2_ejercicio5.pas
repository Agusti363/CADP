{

5. Realizar un programa que lea números enteros desde teclado. La lectura debe finalizar cuando se
ingrese el número 100, el cual debe procesarse. Informar en pantalla:
◦ El número máximo leído.
◦ El número mínimo leído.
◦ La suma total de los números leídos.


}
program Practica_1_parte2_ejercicio5;
var
num,max,suma,min:integer;
begin
max:=-9999;
min:=9999;
suma:=0;
repeat
writeln('ingrese un numero');
readln(num);
suma:=suma+num;
if (num>max)then
    max:=num;
if (num<min)then
    min:=num;
until(num=100);
writeln('el numero maximo leido fue ',max);
writeln('el numero minimo leido fue ',min);
writeln('la suma de todos los numeros leido fue ',suma);
end.
