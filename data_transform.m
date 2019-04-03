function [ amp_map, pha_map ] = data_transform( multi_channel_data, samp_num, data_channel)
% multi_channel_data: the input multi-channel 1D data
% samp_num: sampling number of frequency
% data_channel: the number of data channels
% amp_map: amplitude outputs
% pha_map: phase outputs

amp_map = zeros(1,(samp_num/2+1)*data_channel);
pha_map = zeros(1,(samp_num/2+1)*data_channel);
spectrum = zeros(data_channel,samp_num);
data_length = size(multi_channel_data,2);

for k = 1:data_channel
    
    temp_data = multi_channel_data(k,:);
    all_frequency = fft(temp_data, data_length);
    spectrum(k,:) = all_frequency(:,1:samp_num);
    
    for i = 1:samp_num/2+1
        
        amp_map(1,(k-1)*(samp_num/2+1)+i) = abs(spectrum(k,i));
        pha_map(1,(k-1)*(samp_num/2+1)+i) = phase(spectrum(k,i));
        
    end
    
end

end

