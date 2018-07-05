# Human behaviour-based automatic depression analysis using hand-crafted statistics and deep learned spectral features

This is the data transformation matlab code used for oral presentation of FG 2018

The paper link is available in 

https://ieeexplore.ieee.org/document/8373825/ 

or 

http://eprints.nottingham.ac.uk/51476/1/human-behaviour-based%20camera%20ready.pdf

# Get started

spectrum_map_gen.m: demo for processing more than one data 

spectrum_map_gen_single.m: demo for processing a single data 

# Comments

The code is the data transformation part of the paper.

It convert long multi-channel time-sereis data to two small spectrum heatmaps without any distoration. The amplitude spectrum map contains amplitude information while phase spectrum map contains termporal dynamics information.

It also convert a series of data that have various lengths to heat maps that have the same and fixed size.

We haven't show the CNN training scripts because CNN strcutures always depend on the task and users may use different platforms. 

# If you use this code, please kindly cite our paper:

Song, Siyang, Linlin Shen, and Michel Valstar. "Human behaviour-based automatic depression analysis using hand-crafted statistics and deep learned spectral features." Automatic Face & Gesture Recognition (FG 2018), 2018 13th IEEE International Conference on. IEEE, 2018.

If you have any probelm, please contact siyang.song@nottingham.ac.uk
