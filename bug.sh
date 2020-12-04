#!/bin/bash
echo "Downloading miniconda"
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-MacOSX-x86_64.sh
echo "Installing miniconda"
./Miniconda3-latest-MacOSX-x86_64.sh -p python -b -f
echo "Creating venv"
yes | python/bin/conda create -n test_venv python=3.6
echo "Sourcing venv"
source python/etc/profile.d/conda.sh
echo "Activating venv"
conda activate test_venv
echo "Checking venv"
python --version
echo "Done"
