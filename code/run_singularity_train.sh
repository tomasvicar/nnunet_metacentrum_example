#!/bin/bash

# store provided input argumets
CODEDIR=$1
RESULTSDIR=$2
DATADIR=$3
PREPROCESSDIR_ORIG=$4
PREPROCESSDIR=$5

# go to codedir
cd $CODEDIR

# install aditional packages (you can add custom packages with pip)
export PYTHONUSERBASE=$SCRATCHDIR
export PATH=$PYTHONUSERBASE/bin:$PATH
export PYTHONPATH=$PYTHONUSERBASE/lib/python3.10/site-packages:$PYTHONPATH
pip install -e $CODEDIR/nnUNet

# run python script with RESULTSDIR as input argument (which is then avalible in python)

# set nnUNet paths
export nnUNet_raw=$DATADIR
export nnUNet_preprocessed=$PREPROCESSDIR
export nnUNet_results=$RESULTSDIR

# run nnUNet training
# Dataset ID (001)
# 2d or 3d_fullres
# FOLD number 0, 1, 2, 3, 4, 5, all
# -c continue training from last epoch
nnUNetv2_train 001 2d 0
