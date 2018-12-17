% Paper: Song, Siyang, Linlin Shen, and Michel Valstar. 
% Human behaviour-based automatic depression analysis using hand-crafted statistics and deep learned spectral features.
% Automatic Face & Gesture Recognition (FG 2018), 2018 13th IEEE International Conference on. IEEE, 2018.
% Email: siyang.song@nottingham.ac.uk
%--fs: sampling frequency
%--samp_num: the number of sampling point
%--data_channel: the number of channels

% This script is a demo for processing a single data

clear all;clc

%define source file directory, here we used random multi-channel 1D data with different length. Users can also load their own data 

data_name = load('.\example data\data_1.mat');

%define the number of data, the number of channels, sample points

data_channel = 30;
samp_num = 128;
fs = 30;
multi_channel_data = data_name.data;

% Fourier transformation for each channel

[ amp_map, pha_map ] = data_transform2( multi_channel_data, samp_num, data_channel);

%normalization of data

final_amp = zeros(size(amp_map));
final_pha = zeros(size(amp_map));

for i = 1:(samp_num/2+1)
    
    temp_data_amp = amp_map(:,i);
    temp_data_pha = pha_map(:,i);
    final_amp(:,i) = zscore(temp_data_amp);
    final_pha(:,i) = zscore(temp_data_pha);  
    
end

% produce heatmap

HeatMap(final_amp)
HeatMap(final_pha)