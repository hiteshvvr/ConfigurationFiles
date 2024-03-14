#!/bin/bash

if [$1 == 'normal']; then
    conda install -c conda-forge numpy pandas scipy lmfit holoviews hvplot

elif [$1 == 'forpyqt']; then
    conda install -c conda-forge pyqt pyqtgraph

elif [$1 == 'all']; then
    conda install -c conda-forge hvplot plotly peakutils pandas numpy lmfit pybroom uncertainties holoviews uproot pyabel sty colorlover opencv pyqt pyqtgraph root
    conda install -c conda-forge jupyter_contrib_nbextensions uproot

# pip install opencv-python
# pip install uproot

# conda install -c conda-forge hvplot
# conda install -c conda-forge plotly 
# conda install -c conda-forge peakutils
# conda install -c conda-forge pandas
# conda install -c conda-forge numpy
# conda install -c conda-forge lmfit
# conda install -c conda-forge pybroom
# conda install -c conda-forge uncertainties 
# conda install -c conda-forge holoviews
# conda install -c conda-forge uproot
# conda install -c conda-forge pyabel
# conda install -c conda-forge sty
# conda install -c conda-forge colorlover
# conda install -c conda-forge opencv
# conda install -c conda-forge pyqt
# conda install -c conda-forge pyqtgraph
# conda install -c conda-forge jupyter_contrib_nbextensions

# conda install -c conda-forge root



