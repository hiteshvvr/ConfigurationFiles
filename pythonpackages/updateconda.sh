# !/bin/bash

conda activate analysis
echo "*********analysis********* activated"
conda update --all --yes --quiet
echo "*********analysis********* updated"

conda activate polarimetery
echo "*********polarimetery********* activated"
conda update --all --yes --quiet
echo "*********polarimetery********* updated"

conda activate base
echo "*********base********* activated"
conda update --all --yes --quiet
echo "*********base********* updated"

conda activate nabonline
echo "*********nabonline********* activated"
conda update --all --yes --quiet
echo "*********nabonline********* updated"

conda activate geant4
echo "*********geant4********* activated"
conda update --all --yes --quiet
echo "*********geant4********* updated"

conda activate nabsimanalysis
echo "*********nabsimanalysis********* activated"
conda update --all --yes --quiet
echo "*********nabsimanalysis********* updated"

conda activate nlife
echo "*********nlife********* activated"
conda update --all --yes --quiet
echo "*********nlife********* updated"

conda activate penelope
echo "*********penelope********* activated"
conda update --all --yes --quiet
echo "*********penelope********* updated"
