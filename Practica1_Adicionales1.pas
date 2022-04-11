{

Actividad 1: Revisando Inversiones
Realizar un programa que analice las inversiones de las empresas más grandes del país. Para cada
empresa se lee su código (un número entero), la cantidad de inversiones que tiene, y el monto
dedicado a cada una de las inversiones. La lectura finaliza al ingresar la empresa con código 100,
que debe procesarse.
El programa deberá informar:
● Para cada empresa, el monto promedio de sus inversiones
● Código de la empresa con mayor monto total invertido
● Cantidad de empresas con inversiones de más de $50000

}
program Practica1_Adicionales1;

var 
codigo,codE,i,Cinversiones,C50:integer;
Monto,Totalmonto,promedio,max:Real;

begin
codE:=0;
Totalmonto:=0;
promedio:=0;
max:=-1;
C50:=0;
repeat 
writeln('ingrese codigo de empresa');
readln(codigo);
writeln('ingrese cantidad de inversiones');
readln(Cinversiones);
writeln('ingrese los montos de cada inversion');
 
        for i:=1 to Cinversiones do begin 
             readln(monto);
              Totalmonto:=monto+Totalmonto;
         end;
         
promedio:=Totalmonto/Cinversiones;
  
   // cantidad de empresas con inversiones mayores a 50k
   
    if (Totalmonto>=50000)then
        C50:=C50+1;
    
   //Código de la empresa con mayor monto total invertido
   
    if (Totalmonto>max)and(codigo<=100)then begin 
        max:=Totalmonto;
        codE:=codigo;
    end;
    
writeln('Resultado del análisis: codigo : ',codigo,', monto promedio: ',promedio:2:1);
Cinversiones:=0;
Totalmonto:=0;
writeln('');
until(codigo=100);
writeln('la empresa : ',codE,' es la que mayor dinero posee invertido : ',max:2:1);
writeln('cantidad de empresas con inversiones de mas de 50k : ',C50);
end.
