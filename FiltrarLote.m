function [] = FiltrarLote(fileIn,iIni,iEnd)
%% Nos limpia los archivos que le demos, primero mandamos el orden y
% los �ndices inicial y final que queremos trabajar en el formato
% NombreIndice.wav (sin la extensi�n)
% Ejemplo: FiltrarLote('Audios/orden',0,24);
% Limpiar�a todos los audios orden0, orden1 ... y los grabar�a como un
% archivo orden0_f, orden1_f, orden2_f..... todo con extensi�n .wav
%%
for i=iIni:1:iEnd
    fileInF = strcat(fileIn,num2str(i));    
    Filtro(fileInF,4000);
end