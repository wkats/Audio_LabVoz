clear;
msjNombre = 'Ingrese el nombre del archivo para la grabaci�n: ';
msjIteraciones = 'Ingrese el n�mero de ensayos: ';
Fs=8000;
bits=16;
nChannels=1;
T = 2;
recorder = audiorecorder(Fs,bits,nChannels);
fileName = input(msjNombre, 's');
itNum = input(msjIteraciones);
for itActual = 1:1:itNum
  input(strcat('Presione Enter para comenzar a grabar, iteraci�n: ',num2str(itActual)));    
  disp('Proceso de grabaci�n iniciado');
  recordblocking(recorder, 2);
  disp('Grabaci�n Concluida :P');
  play(recorder);
  audioData = getaudiodata(recorder,'double');  
  exitName = strcat(fileName,num2str(itActual),'.wav'); 
  audiowrite(exitName,audioData,Fs);
  plot(audioData);
end


