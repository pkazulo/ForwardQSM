function [table,phantoms, noises, qsmalg]= eval_qsmrecon()

phantoms = {'new_spherical', 'new_spherical_nocalc'};
noises = {'10dB', '20dB', '30dB', '40dB'};
qsmalg = {'FANSI', 'MEDI', 'StarQSM', 'NDI'};

tablesupp = zeros(length(noises),length(qsmalg));
table = cell(1,length(phantoms));

for i = 1:length(phantoms)
    load(['C:\Studia\Magisterka\Symulator\phantoms\',phantoms{i},'\Phantom.mat'],'Phantom');
    for j = 1:length(noises)
        dir = ['C:\Studia\Magisterka\Symulator\phantoms\',phantoms{i},'\SimMR\SimMR_7T_Noise_',noises{j}];
        for k = 1:length(qsmalg)
            qsm = load_nii([dir,'\',qsmalg{k},'\Sepia_QSM.nii.gz']);
            nrmse = nrmse_chi(Phantom.Chi, qsm.img, Phantom.Mask);
            %2D table with noises as rows and qsm algorithms as columns
            tablesupp(j,k) = nrmse;
            clear qsm
        end
        clear dir
    end
    table{i} = tablesupp;
    clear tablesupp
    clear Phantom
end

return