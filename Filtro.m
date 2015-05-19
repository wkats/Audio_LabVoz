function [ ] = Filtro(fileIn,fCut,varargin)
%%Filtro Butter pasa Bajas. 3 Argumentos.
%Primer Argumento, archivo de entrada '*.wav'
%Segundo Argumento, Frecuencia de corte (4000 para voz, por ejemplo)
%Tercer Argumento, opcional, si es = 1, hace un ploteo de las 2 señales
%y si es = 2, hace
%Ejemplo: Filtro('comando',4000); -> crea comando_f.wav ya filtrado
%Ejemplo: Filtro('comando',4000,1,1); -> crea comando_f.wav ya filtrado,
%plotea y reproduce los 2 archivos
%Ejemplo: Filtro('comando',4000,2); Lo mismo que el anterior
%Ejemplo: Filtro('comando',4000,1,0); -> Crea comando_f.wav ya filtrado y
%plotea los audios
%Ejemplo: Filtro('comando',4000,0,1); -> Crea comando_f.wav ya filtrado y
%reproduce ambos audios
%%
fileOut = [fileIn '_f.wav'];
fileIn = [fileIn,'.wav'];
[y,Fs] = audioread(fileIn);
fNorm = fCut/Fs;
[b,a]=butter(20,fNorm,'low');
y2 = filter(b,a,y);
audiowrite(fileOut,y2,Fs);
if(nargin>2)
    switch nargin
        case 3
            if(varargin{1}==1)
                subplot(2,1,1),plot(y), grid on, title(strcat('Archivo Original: ',fileIn))      
                subplot(2,1,2),plot(y), grid on, title(strcat('Archivo Filtrado: ',fileOut));                 
            elseif(varargin{1}==2)
                subplot(2,1,1),plot(y), grid on, title(strcat('Archivo Original: ',fileIn))      
                subplot(2,1,2),plot(y), grid on, title(strcat('Archivo Filtrado: ',fileOut));
                sound(y,Fs);
                pause(2);
                sound(y2,Fs);
            end            
        case 4
            if(varargin{1}==1)
                subplot(2,1,1),plot(y), grid on, title(strcat('Archivo Original: ',fileIn))      
                subplot(2,1,2),plot(y), grid on, title(strcat('Archivo Filtrado: ',fileOut));   
            end
            if(varargin{2}==1)
                sound(y,Fs);
                pause(2);
                sound(y2,Fs);
            end            
        otherwise            
    end        
end