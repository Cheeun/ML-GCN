# ML-GCN.pytorch
PyTorch implementation of [Multi-Label Image Recognition with Graph Convolutional Networks](https://arxiv.org/abs/1904.03582), CVPR 2019.



### Requirements
1. Install conda environment with environment.yml (Recommended!)
```sh
conda env create -f environment.yml --name MLGCN
conda activate MLGCN
```
2. OR manually install the following packages
- numpy
- torch-0.3.1
- torchnet
- torchvision-0.2.0
- tqdm

### Download Data
save COCO2014 dataset from http://cocodataset.org/ in directory data/coco/data
```bash
ML-GCN
|-- README.md
|-- environment.yml
`-- data
    |-- coco
    |   |-- data
    |   |   |-- annotations
    |   |   |-- train2014
    |   |   |-- val2014
    |   |   |-- ...
    |   |   `-- train.json
    |   |
    |   |-- tmp
    |   |-- ...
    |-- voc
```
### Download pretrain models
checkpoint/coco ([GoogleDrive](https://drive.google.com/open?id=1ivLi1Rc-dCUmN1ProcMk76zxF1DSvlIk))

checkpoint/voc ([GoogleDrive](https://drive.google.com/open?id=1lhbmW5g-Mo9KgI07nmc1kwSbEnb6t-YA))

or

[Baidu](https://pan.baidu.com/s/17j3lTjMRmXvWHT86zhaaVA)

### Options
- `lr`: learning rate
- `lrp`: factor for learning rate of pretrained layers. The learning rate of the pretrained layers is `lr * lrp`
- `batch-size`: number of images per batch
- `image-size`: size of the image
- `epochs`: number of training epochs
- `evaluate`: evaluate model on validation set
- `resume`: path to checkpoint

### Demo COCO 2014
```sh
bash demo.sh
```
OR
```sh
python3 demo_coco_gcn.py data/coco --image-size 448 --batch-size 8 -e --resume checkpoint/coco/coco_checkpoint.pth.tar
```

## Original Repository
```
@inproceedings{ML-GCN_CVPR_2019,
author = {Zhao-Min Chen and Xiu-Shen Wei and Peng Wang and Yanwen Guo},
title = {{Multi-Label Image Recognition with Graph Convolutional Networks}},
booktitle = {The IEEE Conference on Computer Vision and Pattern Recognition (CVPR)},
year = {2019}
}
```
## Reference
This project is based on https://github.com/durandtibo/wildcat.pytorch
This code is based on https://github.com/Megvii-Nanjing/ML-GCN
