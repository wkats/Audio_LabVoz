function [Mag] = Mn(x,Fs,T)
%Funci�n que nos regresa el Vector de Magnitudes (Mag) y el M�ximo del
%mismo en base a los argumentos. x = datos de nuestro archivo, Fs =
%Frecuencia de Sampling, T = Duraci�n de nuestro archivo. 
tamTrama = 128;
nTramas= Fs*T/tamTrama;
Mag = zeros(1,nTramas);
for n=0:1:nTramas-1
    for m=n*tamTrama+1:1:(n+1)*tamTrama
    Mag(n+1)=Mag(n+1)+abs(x(m));    
    end    
end
end