function [lz] = lzRab(Zn,umbCru,le,sentido)
 
if(sentido==1)    
    ini=le;
    paso=-1;
    fin=le-25;
    if(fin<1 || fin<11)    
        fin=11;
    end   
elseif(sentido==2)    
    ini=le;
    paso=1;
    fin=le+25;
    if(fin>(length(Zn)) || fin>(length(Zn)-11))    
        fin=length(Zn)-11;
    end 
end
lz=le;

for i=ini:paso:fin;
    if(Zn(i)<umbCru);
        lz=i;
        break;
    end
end
end