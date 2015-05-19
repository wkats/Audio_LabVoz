function [] = FiltrarLote(fileIn,iIni,iEnd)
%% Nos limpia los archivos que le demos, primero mandamos el orden y
% los índices inicial y final que queremos trabajar en el formato
% NombreIndice.wav (sin la extensión)
% Ejemplo: FiltrarLote('Audios/orden',0,24);
% Limpiaría todos los audios orden0, orden1 ... y los grabaría como un
% archivo orden0_f, orden1_f, orden2_f..... todo con extensión .wav
%%
for i=iIni:1:iEnd
    fileInF = strcat(fileIn,num2str(i));    
    Filtro(fileInF,4000);
end