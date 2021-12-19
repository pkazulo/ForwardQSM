phasenoisy101 = add_noise(phase1.img, 40, 1, Phantom.Mask);
phasenoisy102 = add_noise(phase2.img, 40, 1, Phantom.Mask);
phasenoisy103 = add_noise(phase3.img, 40, 1, Phantom.Mask);
phasenoisy104 = add_noise(phase4.img, 40, 1, Phantom.Mask);
phasenoisy105 = add_noise(phase5.img, 40, 1, Phantom.Mask);
phasenoisy10 = zeros(256,256,256,5);
phasenoisy10(:,:,:,1) = phasenoisy101;
phasenoisy10(:,:,:,2) = phasenoisy102;
phasenoisy10(:,:,:,3) = phasenoisy103;
phasenoisy10(:,:,:,4) = phasenoisy104;
phasenoisy10(:,:,:,5) = phasenoisy105;
PhaseNoisy40 = make_nii(phasenoisy10);
save_nii(PhaseNoisy40,'PhaseNoisy40.nii.gz');
clear PhaseNoisy40
clear phasenoisy10
clear phasenoisy101
clear phasenoisy102
clear phasenoisy103
clear phasenoisy104
clear phasenoisy105