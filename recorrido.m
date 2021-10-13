function [z] = recorrido(Viaje)
suma=0;
load('distancia.mat','distancias');
for i=1:length(Viaje)
    if(i==29)        
        suma=suma+distancias(Viaje(i), Viaje(1));
    else
        suma=suma+distancias(Viaje(i), Viaje(i+1));
    end
    
end
z=suma;
end

