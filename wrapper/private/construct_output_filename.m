%% outputFileList = construct_output_filename(outputDir, ouputPrefix, outputSufffix)
%
% Input
% --------------
% outputDir     : output directory
% ouputPrefix   : output filename prefix
%
% Output
% --------------
% outputFileList: structure contains all output filenames
%
% Kwok-shing Chan @ DCCN
% kwokshing.chan@donders.ru.nl
% Date created: 11 August 2021 (v1.0)
% Date modified:
%
%
function outputFileList = construct_output_filename(outputDir, ouputPrefix, outputSuffix)

% phase related
outputFileList.phaseRadian      = fullfile(outputDir, [ouputPrefix 'part-phase_rad' outputSuffix]);
outputFileList.phaseReversed    = fullfile(outputDir, [ouputPrefix 'part-phase_reverse' outputSuffix]);
outputFileList.phaseEddyCorr    = fullfile(outputDir, [ouputPrefix 'part-phase_bipolarcorr' outputSuffix]);
outputFileList.unwrappedPhase   = fullfile(outputDir, [ouputPrefix 'part-phase_unwrapped' outputSuffix]);

% standard output
outputFileList.totalField       = fullfile(outputDir, [ouputPrefix 'fieldmap' outputSuffix]);
outputFileList.localField       = fullfile(outputDir, [ouputPrefix 'localfield' outputSuffix]);
outputFileList.QSM              = fullfile(outputDir, [ouputPrefix 'Chimap' outputSuffix]);

% use for regularisation
outputFileList.weights          = fullfile(outputDir, [ouputPrefix 'weights' outputSuffix]);
outputFileList.fieldmapSD       = fullfile(outputDir, [ouputPrefix 'noisesd' outputSuffix]);
outputFileList.relativeResidual	= fullfile(outputDir, [ouputPrefix 'relativeresidual' outputSuffix]);
outputFileList.relativeResidualWeights	= fullfile(outputDir, [ouputPrefix 'relativeresidualweights' outputSuffix]);

% derived masks
outputFileList.maskBrain        = fullfile(outputDir, [ouputPrefix 'mask_brain' outputSuffix]);
outputFileList.maskReliable     = fullfile(outputDir, [ouputPrefix 'mask_reliable' outputSuffix]);
outputFileList.maskLocalField 	= fullfile(outputDir, [ouputPrefix 'mask_localfield' outputSuffix]);
outputFileList.maskQSM          = fullfile(outputDir, [ouputPrefix 'mask_QSM' outputSuffix]);
outputFileList.maskRef      	= fullfile(outputDir, [ouputPrefix 'mask_referenceregion' outputSuffix]);
outputFileList.maskRefine       = fullfile(outputDir, [ouputPrefix 'mask_refine' outputSuffix]);

% R2*
outputFileList.r2s              = fullfile(outputDir, [ouputPrefix 'R2starmap' outputSuffix]);
outputFileList.t2s              = fullfile(outputDir, [ouputPrefix 'T2starmap' outputSuffix]);
outputFileList.s0               = fullfile(outputDir, [ouputPrefix 'S0map' outputSuffix]);

% misc
outputFileList.phase_bipolar    = fullfile(outputDir, [ouputPrefix 'bipolar_phase' outputSuffix]);
outputFileList.optimalCombinedMagnitude = fullfile(outputDir, [ouputPrefix 'mag_optimal' outputSuffix]);

end