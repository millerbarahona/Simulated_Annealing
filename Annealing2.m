clear clc;
Viaje=[1
    2
    3
    4
    5
    6
    7
    8
    9
    10
    11
    12
    13
    14
    15
    16
    17
    18
    19
    20
    21
    22
    23
    24
    25
    26
    27
    28
    29];
suma=0;
T=input('Digite la temperatura inicial: ');
n1=input('Digite el numero de iteraciones con diferente temperatura: ');
n2=input('Digite el numero de iteraciones con igual temperatura: ');
    
Viaje1=0;
n=0;
for i=1:n1
    for j=1:n2
        n=n+1;
        ran1=randperm(29,2);  
        Viaje1=Viaje;
        aux=Viaje1;
        Viaje1(ran1(1))=aux(ran1(2));
        Viaje1(ran1(2))=aux(ran1(1));
        total1= recorrido(Viaje1);        
        total=recorrido(Viaje);
        delta= total1-total;
        if(delta<0)
            Viaje= Viaje1;
        else
            aleat=rand;
            if(aleat < exp(-delta/T))
                Viaje=Viaje1;
            end
        end
    end
    T=T*0.95;
    graf(i)=recorrido(Viaje);
end
points=puntos(Viaje);
subplot(2,1,1);
plot(points(1:30,1),points(1:30,2), "-o")
subplot(2,1,2)
plot(graf())
disp(recorrido(Viaje));
disp(Viaje);