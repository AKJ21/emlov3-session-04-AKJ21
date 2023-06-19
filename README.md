# Pytorch Lightning + Hydra : CIFAR10 dataset

## Setup Name: 'dice'

## Installations Required:
- VS Code
- Dev Container extension
- Docker

## Added Files:
- New datamodule script created for CIFAR10 dataset :`/dice/data/cifar10_datamodule.py`
- Hugging face's TIMM model added to train CIFAR10 dataset : `/dice/model/hf_module.py`
- Data config file : `/configs/data/cifar10.yaml`
- Model config file : `/configs/model/hf.yaml`
- Training-Testing config files:
    - `train.yaml`: Config file for train.py to train and test on dataset.
    - `eval.yaml`: Config file for eval.py to evaluate the model (last checkpoint) on unseen eval data. 
- `Dockerfile`: Uses Python:3.9-slim as the base image and install required libraries on the top of it.

## Run Inside DevContainer
- Open your project in Visual Studio Code.
- Install the Dev Containers extension.
- Open the Command Palette (Ctrl+Shift+P) and type "Dev Container: Rebuild and Reopen in Container".
- Visual Studio Code will reopen your project in a Docker container.

```
> List all files inside DevContainer using `ls` command .

> For model training : `dice_train data.num_workers=16`

> For model evaluation : `dice_eval data.num_workers=16`
```

To run container from different terminal, run "`docker exec -it <container_id_of_devcontainer> sh`", then use above two codes of model training and model evaluation to train and evaluate the model on CIFAR10 dataset.

## Get default parameters list
dice_train --help

## Docker Hub Image
Pull docker image : `docker pull amanjaipuria/emlo_cifar10_pytorch:latest`.


Group Members: Aman Jaipuria, Anurag Mittal

