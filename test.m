clear all;
clc;
[y,Fs] = audioread('Apaga0.wav');
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
lni=ln;
lei=le;
lzi=lz;
fprintf('Para el inicio:\n');
fprintf('UmbSupEnrg=%d\tUmbInfEnrg=%d\tUmbCruCero=%d\n',UmbSupEnrg,UmbInfEnrg,UmbCruCero);
fprintf('le=%d\tln=%d\tlz=%d\n',le,ln,lz);
iniPalabra=lz;
ln = lnRab(Mn,UmbSupEnrg,2);
le = leRab(Mn,UmbInfEnrg,ln,2);
lz = lzRab(Zn,UmbCruCero,le,2);
lnf=ln;
lef=le;
lzf=lz;
finPalabra=lz;
fprintf('Para el Fin:\n');
fprintf('UmbSupEnrg=%d\tUmbInfEnrg=%d\tUmbCruCero=%d\n',UmbSupEnrg,UmbInfEnrg,UmbCruCero);
fprintf('le=%d\tln=%d\tlz=%d\n',le,ln,lz);

close all;

figure,subplot(3,1,1),plot(y),title('Audio')
hold on,line([lei*128,lei*128],[min(y),max(y)],'color',[1 0 0])
hold on,line([lni*128,lni*128],[min(y),max(y)],'color',[1 0 0])
hold on,line([lzi*128,lzi*128],[min(y),max(y)],'color',[1 0 0])
hold on,line([lef*128,lef*128],[min(y),max(y)],'color',[1 0 0])
hold on,line([lnf*128,lnf*128],[min(y),max(y)],'color',[1 0 0])
hold on,line([lzf*128,lzf*128],[min(y),max(y)],'color',[1 0 0])

subplot(3,1,2),plot(Mn)
hold on,line([lei,lei],[min(Mn),max(Mn)],'color',[1 0 0])
hold on,line([lni,lni],[min(Mn),max(Mn)],'color',[1 0 0])
hold on,line([lzi,lzi],[min(Mn),max(Mn)],'color',[1 0 0])
hold on,line([lef,lef],[min(Mn),max(Mn)],'color',[1 0 0])
hold on,line([lnf,lnf],[min(Mn),max(Mn)],'color',[1 0 0])
hold on,line([lzf,lzf],[min(Mn),max(Mn)],'color',[1 0 0])
hold on, line([1,length(Mn)],[UmbInfEnrg,UmbInfEnrg],'color',[0 1 0])
hold on, line([1,length(Mn)],[UmbSupEnrg,UmbSupEnrg],'color',[1 1 0])
title('Mn');

subplot(3,1,3),plot(Zn)
hold on,line([lei,lei],[min(Zn),max(Zn)],'color',[1 0 0])
hold on,line([lni,lni],[min(Zn),max(Zn)],'color',[1 0 0])
hold on,line([lzi,lzi],[min(Zn),max(Zn)],'color',[1 0 0])
hold on,line([lef,lef],[min(Zn),max(Zn)],'color',[1 0 0])
hold on,line([lnf,lnf],[min(Zn),max(Zn)],'color',[1 0 0])
hold on,line([lzf,lzf],[min(Zn),max(Zn)],'color',[1 0 0])
hold on, line([1,length(Zn)],[UmbCruCero,UmbCruCero],'color',[0 1 0])
title('Zn');

fprintf('Ventana de Inicio: %d\t',iniPalabra);
fprintf('Ventana de Fin: %d\n',finPalabra);

y2 = y(iniPalabra*128:1:finPalabra*128);
soundsc(y),pause(2),soundsc(y2)