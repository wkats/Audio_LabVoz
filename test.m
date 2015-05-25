clear all;
clc;
[y,Fs] = audioread('Apaga0_f.wav');
Mn = Mn(y,Fs,2);
Zn = Zn(y,Fs,2);
Ms = Mn(1:10);
Zs = Zn(1:10);
[mediaMs,sigmaMs] = dispersion(Ms);
[mediaZs,sigmaZs] = dispersion(Zs);
UmbSupEnrg = 0.5*max(Mn);
UmbInfEnrg = mediaMs+2*sigmaMs;
UmbCruCero = mediaZs+2*sigmaZs;
ln = lnRab(Mn,UmbSupEnrg,1);
le = leRab(Mn,UmbInfEnrg,ln,1);
lz = lzRab(Zn,UmbCruCero,le,1);
fprintf('UmbSupEnrg=%d\nUmbInfEnrg=%d\nUmbCruCero=%d\n',UmbSupEnrg,UmbInfEnrg,UmbCruCero);
fprintf('le=%d\nln=%d\nlz=%d\nValores=%d,%d\n',le,ln,lz,Mn(le),Mn(ln));
iniPalabra=lz;
ln = lnRab(Mn,UmbSupEnrg,2);
le = leRab(Mn,UmbInfEnrg,ln,2);
lz = lzRab(Zn,UmbCruCero,le,2);
finPalabra=lz;
fprintf('UmbSupEnrg=%d\nUmbInfEnrg=%d\nUmbCruCero=%d\n',UmbSupEnrg,UmbInfEnrg,UmbCruCero);
fprintf('le=%d\nln=%d\nlz=%d\n',le,ln,lz);

close all;
figure,subplot(2,1,1),plot(y),title('Audio')
hold on, line([iniPalabra*128,iniPalabra*128],[min(y),max(y)],'color',[1 0 0])
hold on, line([finPalabra*128,finPalabra*128],[min(y),max(y)],'color',[1 0 0])
subplot(2,1,2),plot(Mn)
hold on,line([iniPalabra,iniPalabra],[min(Mn),max(Mn)],'color',[1 0 0])
hold on,line([finPalabra,finPalabra],[min(Mn),max(Mn)],'color',[1 0 0])
title('Mn (Amplitudes promedio)');

figure,subplot(2,1,1),plot(y),title('Audio')
hold on, line([iniPalabra*128,iniPalabra*128],[min(y),max(y)],'color',[1 0 0])
hold on, line([finPalabra*128,finPalabra*128],[min(y),max(y)],'color',[1 0 0])
subplot(2,1,2),plot(Zn)
hold on,line([iniPalabra,iniPalabra],[min(Zn),max(Zn)],'color',[1 0 0])
hold on,line([finPalabra,finPalabra],[min(Zn),max(Zn)],'color',[1 0 0])
title('Zn (Cruces por 0 Promedio)');

fprintf('Inicio de Palabra en ventana: %d\n',iniPalabra);
fprintf('Final de Palabra en ventana: %d\n',finPalabra);
%nuevo = y(iniPalabra*128:1:finPalabra*128);
%figure,plot(nuevo);