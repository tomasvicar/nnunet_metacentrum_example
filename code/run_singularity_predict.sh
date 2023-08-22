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

# run nnUNet predict
# -i input folder path ($DATADIR/nnUNet_raw/Task502_ALD_Singularity_test/imagesTs)
# -o output folder path ($RESULTSDIR/predict/Task502_ALD_Singularity_test)
# -c 2d or 3d_fullres
# -d Dataset ID (001)
# -f exact fold (0,1,2,3,4, all)
nnUNetv2_predict -i $DATADIR/nnUNet_raw/Dataset001_GrayMatter/imagesTs -o $RESULTSDIR/predict/Dataset001_GrayMatter/fold_4 -d 001 -c 2d -f 4
