#!/bin/bash

# store provided input argumets
CODEDIR=$1
RESULTSDIR=$2

# go to codedir
cd $CODEDIR

# install aditional packages (you can add custom packages with pip)
export PYTHONUSERBASE=$SCRATCHDIR
export PATH=$PYTHONUSERBASE/bin:$PATH
export PYTHONPATH=$PYTHONUSERBASE/lib/python3.8/site-packages:$PYTHONPATH
pip install bayesian-optimization==1.1.0

# run python script with RESULTSDIR as input argument (which is then avalible in python)
python main.py $RESULTSDIR
