function  QSM_set_path(  )
%MEDI_SET_PATH Summary of this function goes here
%   Detailed explanation goes here
[STR NAM EXT] = fileparts(mfilename('fullpath'));
addpath(fullfile(STR),...
    fullfile(STR,'functions'));
end