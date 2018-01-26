% Reconstrucción de la energía de la señal desde los átomos
function ENERGY = reconstruct(gaborInfo, numTrials, Fs, L)
    % Reconstruct energy
    wrap=1;
    atomList=[];                          % all atoms
    frequency = 0:Fs/L:Fs/2;              % frequency axis
    ENERGY=zeros(length(frequency),L, numTrials);  % initialising energy matrix

    %Reconstrucción sobre cada época de la señal
    for i=1:numTrials
        disp(['trial ' num2str(i) ' of ' num2str(numTrials)]);
        ENERGY(:,:,i)=reconstructEnergyFromAtomsMPP(gaborInfo{i}.gaborData,L,wrap,atomList);
    end
    
end