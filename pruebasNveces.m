nVeces=0;
iAnt=0;
cosa=0;
vector = [0,1,0,1,1,1,0,0,0,0,1,1,0,1,1,1];
ini=1;
paso=1;
fin=length(vector);
for i=ini:paso:fin
    if(vector(i)>0)
        nVeces=nVeces+1;
        if(iAnt~=(i-1))            
            nVeces=1;
        end
        iAnt=i;
        if(nVeces==3)
            cosa=i;
            break;
        end
    end
end
disp(cosa);