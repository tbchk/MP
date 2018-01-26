% Función para graficar el espectro reconstruido mediante el algoritmo
% Match Pursuit
% Juan Fernando Hernández <jfernando.hernandez@udea.edu.co>
% Universidad de Antioquia


function [hTF] = MPSpectrumPlot(RecEnergy, Fs)
    [nf, nt] = size(RecEnergy);
    Ts = 1/Fs;
    timeVals = 0:Ts:(nt-1)*Ts;
    frequencyVals = 0:Fs/nt:(nf-1)*(Fs/nt);    
    
    hTF=subplot(1, 1, 1);
    
    imagesc(timeVals,frequencyVals,RecEnergy, 'Parent',hTF);
    set(hTF,'YDir','normal');
    
    colormap(jet);
    colorbar('location','northoutside');
    
    xlabel('Tiempo [s]', 'FontSize',13);
    ylabel('Frecuencia [Hz]', 'FontSize',13);
    
    caxis(hTF,[-1 1]);
    ylim([3 max(frequencyVals)])
    
    box(hTF, 'on');
end