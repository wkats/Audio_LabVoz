function [ le ] = leRab( Mn,umbInf,ln,sentido)
if(sentido==1)    
    ini=ln;
    paso=-1;
    fin=1;
elseif(sentido==2)    
    ini=ln;
    paso=1;
    fin=length(Mn);
end
le=ln;
for i=ini:paso:fin
    if(Mn(i)<umbInf)
        le=i;
        break;
    end
end
end