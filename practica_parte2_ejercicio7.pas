{

Realizar un programa que lea desde teclado información de autos de carrera. Para cada uno de los
autos se lee el nombre del piloto y el tiempo total que le tomó finalizar la carrera. En la carrera
participaron 100 autos. Informar en pantalla:
- Los nombres de los dos pilotos que finalizaron en los dos primeros puestos.
- Los nombres de los dos pilotos que finalizaron en los dos últimos puestos.
}
program practica_parte2_ejercicio7;
type
    nombre=string[20];
var
tiempo:integer;
nombres:nombre;
min1,min2,max1,max2:integer;
primero,segundo,anteultimo,ultimo:nombre;
i:integer;
begin
primero:='';
segundo:='';
anteultimo:='';
ultimo:='';
min1:=101;min2:=101;
max1:=-1;max2:=-1;

for i:=1 to 100 do begin
    writeln('ingrese nombre del piloto');
    readln(nombres);
    writeln('ingrese tiempo total');
    readln(tiempo);
    
{Los nombres de los dos pilotos que finalizaron en los dos primeros puestos.
}
                if (tiempo<min1)then begin 
                    min2:=min1;
                    min1:=tiempo;
                    segundo:=primero;
                    primero:=nombres;
                end else if (tiempo<min2) then begin 
                    min2:=tiempo;
                    segundo:=nombres;
                end;
{Los nombres de los dos pilotos que finalizaron en los dos últimos puestos.}
                if (tiempo>max1)then begin
                    max2:=max1;
                    max1:=tiempo;
                    anteultimo:=ultimo;
                    ultimo:=nombres;
                end else if (tiempo>max2)then begin 
                    max2:=tiempo;
                    ultimo:=nombres;
                end
end;

writeln('los nombres de los primeros puestos ',primero, ' y ',segundo);
writeln('los nombres de los ultimos puestos ',anteultimo, ' y ',ultimo);
end.

