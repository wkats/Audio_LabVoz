function [ ln ] = lnRab( M,umbSup )
ln = 11;
for i=11:1:length(M)
    if(M(i)>umbSup)
        ln=i;        
        break;
    end
end
end

