function [ ln ] = lnRab( Mn,umbSup,sentido)
if(sentido==1)    
    ini=11;
    paso=1;
    fin=length(Mn);
elseif(sentido==2)    
    ini=length(Mn)-11;
    paso=-1;
    fin=1;
end
ln = ini;
for i=ini:paso:fin
    if(Mn(i)>umbSup)
        ln=i;        
        break;
    end
end
end

