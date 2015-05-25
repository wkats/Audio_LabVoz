function [ le ] = leRab( Mn,umbInf,ln )
le=0;
for n=ln:-1:1
    if(Mn(n)<umbInf)
        le=n;
        break;
    end
end
end
