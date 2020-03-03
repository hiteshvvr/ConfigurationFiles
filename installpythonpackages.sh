#!/bin/bash
## declare an array variable
declare -a tarr=("element1" "element2" "element3")
declare -a arr=("glob" "warnings" "os" "time" "multiprocessing" "plotly" "hvplot" "pprint" "peakutils" "pandas" "numpy" "lmfit" "pybroom" "uncertainties " "holoviews" "sty" "uproot" "abel" "colorlover" "pathlib ")

## now loop through the above array
for i in "${arr[@]}"
do
   echo " Installing ----> $i"
   pip install $i
   # or do whatever with individual element of the array
done




