
         //CALCULAR DOS MINIMOS

         //primer paso: declarar dos variable
         min1: integer;
         min2: integer;

         //segundo paso: inicializar variable (numero muy grande)
         min1:=999;
         min2:=999;

         read(numero);
         while(numero<>0)do begin

           //tercer paso: comparar con el min1
           if(numero < min1)then begin
               //cuarto paso: actualizar los minimos
               min2:=min1;
               min1:=numero;
           end
           else
              if(numero < min2)then
                  min2:=numero

           read(numero);
         end;
