function [lz] = lzRab(Zn,umbCru,le,sentido)
 nVeces=0;
 iAnt=1;
 ini=le;
if(sentido==1)        
    paso=-1;
    fin=le-25;
    if(fin<1 || fin<11)    
        fin=11;
    end   
elseif(sentido==2)        
    paso=1;
    fin=le+25;
    if(fin>(length(Zn)) || fin>(length(Zn)-11))    
        fin=length(Zn)-11;
    end 
end
lz=le;


for i=ini:paso:fin
    if(Zn(i)>umbCru)
        nVeces=nVeces+1;
        if(iAnt~=(i-1))            
            nVeces=1;
        end
        iAnt=i;
        if(nVeces==3)
            lz=i;
            break;
        end
    end
end

if(lz~=le)
    ini=lz;    
    if(sentido==1)        
        paso=-1;
        fin=11;
    elseif(sentido==2)        
        paso=1;
        fin=length(Zn)-11;
    end
end
    for i=ini:paso:fin
        if(Zn(i)>umbCru)
            lz=i;
        end
    end

end