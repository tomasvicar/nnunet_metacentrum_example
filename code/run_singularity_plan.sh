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
export PYTHONPATH=$PYTHONUSERBASE/lib/python3.8/site-packages:$PYTHONPATH
pip install -e $CODEDIR/nnUNet

# run python script with RESULTSDIR as input argument (which is then avalible in python)

# set nnUNet paths
export nnUNet_raw_data_base=$DATADIR
export nnUNet_preprocessed=$PREPROCESSDIR
export RESULTS_FOLDER=$RESULTSDIR

# run planning and preprocessing -t TASK ID (502)
nnUNet_plan_and_preprocess -t 502 --verify_dataset_integrity
cp -R $PREPROCESSDIR $PREPROCESSDIR_ORIG/..
