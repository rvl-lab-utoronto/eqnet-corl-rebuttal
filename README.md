# "What Do You Need for Compositional Generalization in Diffusion Planning?" Rebuttal Material

This is a repository for experiments we ran comparing Eq-Net to other diffusion planning backbones (U-Net and DiT) on the standard D4RL MuJoCo environments. We did these for CoRL rebuttals and then later integrated them into the main text. 

This repository is essentially just a fork of [CleanDiffuser](https://github.com/CleanDiffuserTeam/CleanDiffuser), but with all code unrelated to running Diffuser on MuJoCo removed and with Eq-Net added as a diffusion planning backbone. Parts of this README (like installation instructions) are copied from their repo. 

## Installation

#### 1. Create and activate conda environment
```bash
$ conda create -n cleandiffuser python==3.9
$ conda activate cleandiffuser
```
#### 2. Install PyTorch
Install `torch>1.0.0,<2.3.0` that is compatible with your CUDA version. For example, `PyTorch 2.2.2` with `CUDA 12.1`:
```bash
$ conda install pytorch==2.2.2 torchvision==0.17.2 pytorch-cuda=12.1 -c pytorch -c nvidia
```
#### 3. Install CleanDiffuser from source
```bash
$ cd CleanDiffuser
$ pip install -e .
```
#### 4. Additional installations
For users who need to run `pipelines` and reproduce the results of the paper, they will need to install RL simulators.

First, install the dependencies related to the mujoco-py environment. For more details, see https://github.com/openai/mujoco-py#install-mujoco

```bash
$ sudo apt-get install libosmesa6-dev libgl1-mesa-glx libglfw3 libglew-dev patchelf
```
```bash
# Install D4RL from source (recommended)
$ cd <PATH_TO_D4RL_INSTALL_DIR>
$ git clone https://github.com/Farama-Foundation/D4RL.git
$ cd D4RL
$ pip install -e .
# Install Robomimic from source (recommended)
$ cd <PATH_TO_ROBOMIMIC_INSTALL_DIR>
$ git clone https://github.com/ARISE-Initiative/robomimic.git
$ cd robomimic
$ pip install -e .
$ cd <PATH_TO_ROBOSUITE_INSTALL_DIR>
$ git clone https://github.com/ARISE-Initiative/robosuite.git
$ cd robosuite
$ pip install -e .
```

## Reproducing Experiments

To reproduce the experiments running Eq-Net and DiT on the MuJoCo environments, we provide scripts `run_all_dit.sh` and `run_all_eqnet.sh`. We don't include scripts for running BC and U-Net as they are already included in the CleanDiffuser paper ([see table 1](https://github.com/CleanDiffuserTeam/CleanDiffuser/blob/main/assets/CleanDiffuser.pdf)). 

## Contact

For questions, contact qtcc@cs.toronto.edu.
