{

Un local de ropa desea analizar las ventas realizadas en el último mes. 
Para ello se lee por cada día del mes, los montos de las ventas realizadas.
La lectura de montos para cada día finaliza cuando se lee el monto 0.
Se asume un mes de 31 días.
Informar la cantidad de ventas por cada día, y el monto total acumulado en ventas de todo el mes.

a) Modifique el ejercicio anterior para que además informe el día en el que se realizó la
mayor cantidad de ventas.


}

program practica1_parte1_ejercicio8; //INICIAL
var
monto,montoTotal:real;
num,i,cantV,MayorV:integer;
begin
cantV:=0;
montoTotal:=0;
    writeln('ingrese monto del dia');
    readln(monto);
    if(monto<>0)then
        cantV:=cantV+1;
for i:=1 to 31 do begin
    while (monto<>0) do begin
        writeln('ingrese monto del dia');
        cantV:=cantV+1;
        montoTotal:=montoTotal+monto;
        readln(monto);
    end;
    writeln('ingrese monto del dia');
    readln(monto);
end;
writeln('cantidad de ventas del mes ',cantV );
writeln('cantidad recaudado en el mes ',montoTotal:1:2);

end.


//a) Modifique el ejercicio anterior para que además informe el día en el que se realizó la mayor cantidad de ventas.

program practica1_parte1_ejercicio8; 
var
monto,montoTotal:real;
num,i,cantV,cantVmes,MayorV:integer;
dia:integer;
begin
cantVmes:=0;
MayorV:=-32767;
dia:=0;
montoTotal:=0;
for i:=1 to 5 do begin
cantV:=0;
 write('ingrese monto del dia: ',i,' ');
        readln(monto);
    while (monto<>0) do begin
        cantV:=cantV+1;
        cantVmes:=cantVmes+1;
        montoTotal:=montoTotal+monto;
        write('ingrese monto del dia: ',i,' ');
        readln(monto);
    end;
    
    if (cantV>MayorV)then begin
        MayorV:=cantV;
        dia:=i;
    end;

end;
writeln('cantidad de ventas del mes ',cantVmes );
writeln('cantidad recaudado en el mes ',montoTotal:1:2);
writeln('mayor cantidad de ventas en el dia ',dia);

end.






