#!/bin/zsh

echo "                                                           "
echo "Dependency processing when installing pandas with Miniconda"
echo "-----------------------------------------------------------"
echo "pip"
echo "-----------------------------------------------------------"
conda install pip
echo "-----------------------------------------------------------"
echo "pandas=0.18 for pandas.io.data"
echo "-----------------------------------------------------------"
conda install pandas
echo "setuptools, Numpy, python-dateutil, pytz"
echo "-----------------------------------------------------------"
pip install setuptools numpy python-dateutil pytz
echo "-----------------------------------------------------------"
echo "Recommended Dependencies"
echo "-----------------------------------------------------------"
pip install numexpr bottleneck
echo "--------------------------"
echo "                           "
echo "Optional Dependenties"
echo "-----------------------------------------------------------"
pip install Cython scipy xarray 
echo "pytables"
echo "----------"
pip install tables
echo "-----------------------------------"
echo "                                   "
echo "For Excel I/O"
echo "-----------------------------------------------------------"
pip install xlrd xlwt openpyxl XlsxWriter
echo "------------------------------------"
echo "                                    "
echo "Necessary to use read_clipboard(): xclip, xsel"
echo "-----------------------------------------------------------"
apt-get install xclip
apt-get install xsel
echo "-------------------------------------"
echo "                                     "
echo "For Google BigQuery I/O"
echo "-----------------------------------------------------------"
conda install pandas-gbq --channel conda-forge
echo "-------------------------------------------------"
echo "                                                 "
echo "to use the top-level read_html() function"
echo "-----------------------------------------------------------"
pip install html5lib
sudo apt-get build-dep python-lxml
sudo apt-get install python3-bs4
echo "-------------------------------------------------"
echo "                                                 "
echo "complete~!"
echo "-----------------------------------------------------------"

 

