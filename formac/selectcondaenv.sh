# !/bin/bash

if [ $1 == "analysis" ]; then

    conda activate analysis
    echo "*********analysis********* activated"

elif [ $1 == "daq60hz" ]; then
    conda activate daq60hz
    echo "*********daq60hz********* activated"

elif [ $1 == "nabonline" ]; then
    conda activate nabonline
    echo "*********nabonline********* activated"

fi

source ~/.bashps1.sh
