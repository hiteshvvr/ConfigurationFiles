# # !/bin/bash
__conda_setup="$('/opt/homebrew/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/homebrew/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/homebrew/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/homebrew/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
source ~/.bashps1.sh
envlist="analysis polarimetery base nabonline geant4 nlife nabsimanalysis penelope "
for item in $envlist; do
    conda create -y --name $item
    echo "********* $item ********* created"
    conda activate $item 
    echo "********* $item ********* activated"
    conda update --all --yes --quiet
    echo "********* $item ********* updated"
    ./installwithconda.sh normal 
    echo "*********normal packages installed********* "
done

rootlist="geant4 penelope "
for item in $rootlist; do
    conda activate $item 
    echo "********* $item ********* activated"
    conda update --all --yes --quiet
    echo "********* $item ********* updated"
    ./installwithconda.sh root 
    echo "*********root packages installed********* "
done

qtlist="nabsimanalysis"
for item in $qtlist; do
    conda activate $item 
    echo "********* $item ********* activated"
    conda update --all --yes --quiet
    echo "********* $item ********* updated"
    ./installwithconda.sh forpyqt 
    echo "*********pyqt packages installed********* "
done

# echo "*********analysis********* updated"
# ./installwithconda.sh normal 
# echo "*********normal packages installed********* "

# conda create -y --name polarimetery 
# echo "*********polarimetery********* created"
# conda activate polarimetery
# echo "*********polarimetery********* activated"
# conda update --all --yes --quiet
# echo "*********polarimetery********* updated"
# ./installwithconda.sh normal 

# conda create -y --name base 
# echo "*********base********* created"
# conda activate base
# echo "*********base********* activated"
# conda update --all --yes --quiet
# echo "*********base********* updated"
# ./installwithconda.sh normal 
# echo "*********normal packages installed********* "

# conda create -y --name nabonline 
# echo "*********nabonline********* created"
# conda activate nabonline
# echo "*********nabonline********* activated"
# conda update --all --yes --quiet
# echo "*********nabonline********* updated"
# ./installwithconda.sh normal 
# echo "*********normal packages installed********* "
# ./installwithconda.sh forpyqt 
# echo "*********pyqt packages installed********* "

# conda create -y --name geant4 
# echo "*********geant4********* created"
# conda activate geant4
# echo "*********geant4********* activated"
# conda update --all --yes --quiet
# echo "*********geant4********* updated"
# ./installwithconda.sh normal 

# conda create -y --name analysis
# conda activate nabsimanalysis
# echo "*********nabsimanalysis********* activated"
# conda update --all --yes --quiet
# echo "*********nabsimanalysis********* updated"

# conda create -y --name analysis
# conda activate nlife
# echo "*********nlife********* activated"
# conda update --all --yes --quiet
# echo "*********nlife********* updated"

# conda create -y --name analysis
# conda activate penelope
# echo "*********penelope********* activated"
# conda update --all --yes --quiet
# echo "*********penelope********* updated"
