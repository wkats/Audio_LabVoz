function [Zer] = Zn(x,Fs,T)
tamTrama = 128;
nTramas= Fs*T/tamTrama;
Zer = zeros(1,nTramas);

for n=0:1:nTramas-1    
    for m=n*tamTrama+1:1:(n+1)*tamTrama-1        
        Zer(n+1) = Zer(n+1) + abs(sign(x(m))-sign(x(m+1)));
    end
end
Zer = Zer/(2*nTramas);
Min=min(Zer);
end