#!/bin/bash
## declare an array variable
declare -a tarr=("element1" "element2" "element3")
declare -a arr=("glob" "warnings" "os" "time" "multiprocessing" "plotly" "hvplot" "pprint" "peakutils" "pandas" "numpy" "lmfit" "pybroom" "uncertainties " "holoviews" "sty" "uproot" "abel" "colorlover" "pathlib " "opencv-python" "PyQt5" "pyqtgraph" "jupyter_contrib_nbextensions")

## now loop through the above array
for i in "${arr[@]}"
do
   echo " Installing ----> $i"
   pip install $i
   # or do whatever with individual element of the array
done

# pip install glob
# pip install warnings
# pip install os
# pip install time
# pip install multiprocessing
# pip install plotly
# pip install hvplot
# pip install pprint
# pip install peakutils
# pip install pandas
# pip install numpy
# pip install lmfit
# pip install pybroom
# pip install uncertainties 
# pip install holoviews
# pip install sty
# pip install uproot
# pip install abel
# pip install colorlover
# pip install pathlib 
# pip install opencv-python
# pip install PyQt5
# pip install pyqtgraph
# pip install jupyter_contrib_nbextensions