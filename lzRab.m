function [lz] = lzRab(Zn,umbCru,le)
lz=le;
finCiclo=le-25;
if((le-25)<1 || finCiclo<11)    
    finCiclo=11;
end
for n=le:-1:finCiclo;
    if(Zn(n)<umbCru);
        lz=n;
        break;
    end
end
end