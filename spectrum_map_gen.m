% Paper: Song, Siyang, Linlin Shen, and Michel Valstar. 
% Human behaviour-based automatic depression analysis using hand-crafted statistics and deep learned spectral features.
% Automatic Face & Gesture Recognition (FG 2018), 2018 13th IEEE International Conference on. IEEE, 2018.
% Email: siyang.song@nottingham.ac.uk
%--fs: sampling frequency
%--samp_num: the number of sampling point
%--data_channel: the number of channels

% This script is a demo for processing more than one data


clear all;clc

%define source file directory, here we used random multi-channel 1D data with different length. Users can also load their own data 

file_dir = '.\example data\';

%define the number of data, the number of data channels, the number of sampling frequency

data_num = 3;
data_channel = 30;
samp_num = 128;


for i = 1:data_num  
    data_name = load([file_dir,'data_',num2str(i),'.mat']);
    data = data_name.data;
    temp_data_channel = size(data,1);
    if temp_data_channel ~= data_channel
        i
    end
end

% prepare empty amplitude and phase spectrum maps

raw_data_amp = zeros(data_num,(samp_num/2+1)*data_channel);
raw_data_pha = zeros(data_num,(samp_num/2+1)*data_channel);

% Fourier transformation for each data

for i = 1:data_num
    
    data_name = load([file_dir,'data_',num2str(i),'.mat']);
    multi_channel_data = data_name.data;
    
    [ amp_map, pha_map ] = data_transform( multi_channel_data, samp_num, data_channel); % Fourier transformation for each channel
    
    raw_data_amp(i,:) = amp_map;
    raw_data_pha(i,:) = pha_map;
    
end

%normalization of data

data_amp = zeros(data_num,(samp_num/2+1)*data_channel);
data_pha = zeros(data_num,(samp_num/2+1)*data_channel);

for i = 1:(samp_num/2+1)*data_channel
    
    temp_data_amp = raw_data_amp(:,i);
    temp_data_pha = raw_data_pha(:,i);
    data_amp(:,i) = zscore(temp_data_amp);
    data_pha(:,i) = zscore(temp_data_pha);  
    
end

% produce heatmap

for i = 1:data_num
    
    final_amp = zeros(data_channel,(samp_num/2+1));
    final_pha = zeros(data_channel,(samp_num/2+1));
    for j = 1:data_channel
        final_amp(j,:) = data_amp(i,(j-1)*(samp_num/2+1) + 1:j*(samp_num/2+1));
        final_pha(j,:) = data_pha(i,(j-1)*(samp_num/2+1) + 1:j*(samp_num/2+1));
    end
    
    HeatMap(final_amp)
    HeatMap(final_pha)
    
end



