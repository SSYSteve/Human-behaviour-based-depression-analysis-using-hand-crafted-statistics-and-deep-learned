# Human behaviour-based automatic depression analysis using hand-crafted statistics and deep learned spectral features

This is the data transformation matlab code used for oral presentation of FG 2018

The paper link is available in 

https://ieeexplore.ieee.org/document/8373825/ 

or 

http://eprints.nottingham.ac.uk/51476/1/human-behaviour-based%20camera%20ready.pdf

# Get started

You only need to use MATLAB to open the following files

spectrum_map_gen.m:          demo for processing more than one data 

spectrum_map_gen_single.m:   demo for processing a single data 


# Comments

The code is the data transformation part of the paper.

It convert long multi-channel time-sereis data to two small spectrum heatmaps without any distoration. The amplitude spectrum map contains amplitude information while phase spectrum map contains termporal dynamics information.

It also convert data of variable lengths to heatmaps of fixed size.

We haven't show the CNN training scripts because CNN strcutures always depend on the task and users may use different platforms. 


![alt text](https://github.com/SSYSteve/Human-behaviour-based-depression-analysis-using-hand-crafted-statistics-and-deep-learned/blob/master/Figure/Picture1.png)




# If you decide to use this code, please kindly cite our paper:

Song, Siyang, Linlin Shen, and Michel Valstar. "Human behaviour-based automatic depression analysis using hand-crafted statistics and deep learned spectral features." Automatic Face & Gesture Recognition (FG 2018), 2018 13th IEEE International Conference on. IEEE, 2018.

@inproceedings{song2018human,
  title={Human behaviour-based automatic depression analysis using hand-crafted statistics and deep learned spectral features},
  author={Song, Siyang and Shen, Linlin and Valstar, Michel},
  booktitle={2018 13th IEEE International Conference on Automatic Face \& Gesture Recognition (FG 2018)},
  pages={158--165},
  year={2018},
  organization={IEEE}
}

If you have any probelm, you are more than welcome to contact siyang.song@nottingham.ac.uk
