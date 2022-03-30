{

6. Realizar un programa que lea información de 200 productos de un supermercado. De cada producto
se lee código y precio (cada código es un número entre 1 y 200). Informar en pantalla:
- Los códigos de los dos productos más baratos.
- La cantidad de productos de más de 16 pesos con código par.



}
program practica1_parte2_ejercicio6;
type 
    codigo=1..200;
var
codigos:codigo;
precio:real;
min1,min2:real;
i,cant:integer;
begin
min1:=9999;
min2:=9999;
cant:=0;
for i:=1 to 5 do begin
        writeln ('ingrese codigo de producto');
        readln(codigos);
        writeln ('ingrese precio de producto');
        readln(precio);
        if (precio>16)and((codigos mod 2)=0) then
            cant:=cant+1;
        if (precio<min1)then
            min1:=codigos
            else if (precio<min2)then
                min2:=codigos;
end;
writeln('los dos productos mas baratos fueron ',min2:2:1,' y ',min1:2:1);
writeln('la cantidad de productos con precio mayor a $16 y codigo par fueron ',cant);
    


end.