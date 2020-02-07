# Human behaviour-based automatic depression analysis using hand-crafted statistics and deep learned spectral features

This is the spectral data transformation code used for two papers:

[1] Human behaviour-based automatic depression analysis using hand-crafted statistics and deep learned spectral features (oral presentation of FG 2018, link: https://ieeexplore.ieee.org/document/8373825/)

[2] Spectral Representation of Behaviour Primitives for Depression Analysis (IEEE Transactions on Affective Computing, link: https://ieeexplore.ieee.org/abstract/document/8976305)


# Get started

You only need to use MATLAB to open the following files

spectrum_map_gen.m:          demo for processing more than one data 

spectrum_map_gen_single.m:   demo for processing a single data 


# Comments

The code is the data transformation part of the above papers.

It convert long multi-channel time-sereis data to two small spectrum heatmaps without any distoration. The amplitude spectrum map contains amplitude information while phase spectrum map contains termporal dynamics information.

It also convert data of variable lengths to heatmaps of fixed size.

We haven't show the CNN training scripts because CNN strcutures always depend on the task and users may use different platforms. 


![alt text](https://github.com/SSYSteve/Human-behaviour-based-depression-analysis-using-hand-crafted-statistics-and-deep-learned/blob/master/Figure/Picture1.png)

![alt text](https://github.com/SSYSteve/Human-behaviour-based-depression-analysis-using-hand-crafted-statistics-and-deep-learned/blob/master/Figure/Picture2.png)



# If you decide to use the code or data here, please kindly cite our papers:

[1] Song, Siyang, Linlin Shen, and Michel Valstar. "Human behaviour-based automatic depression analysis using hand-crafted statistics and deep learned spectral features." Automatic Face & Gesture Recognition (FG 2018), 2018 13th IEEE International Conference on. IEEE, 2018.

@inproceedings{song2018human,
  title={Human behaviour-based automatic depression analysis using hand-crafted statistics and deep learned spectral features},
  author={Song, Siyang and Shen, Linlin and Valstar, Michel},
  booktitle={2018 13th IEEE International Conference on Automatic Face \& Gesture Recognition (FG 2018)},
  pages={158--165},
  year={2018},
  organization={IEEE}
}

[2] Song, Siyang, Shashank Jaiswal, Linlin Shen, and Michel Valstar. "Spectral Representation of Behaviour Primitives for Depression Analysis." IEEE Transactions on Affective Computing (2020). 

@article{song2020spectral,
  title={Spectral Representation of Behaviour Primitives for Depression Analysis},
  author={Song, Siyang and Jaiswal, Shashank and Shen, Linlin and Valstar, Michel},
  journal={IEEE Transactions on Affective Computing},
  year={2020},
  publisher={IEEE}
}

If you have any probelm, you are more than welcome to contact siyang.song@nottingham.ac.uk
