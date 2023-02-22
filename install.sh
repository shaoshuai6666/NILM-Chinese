#!/bin/bash

# Clone nilmtk and nilm_metadata
git clone https://github.com/shaoshuai6666/nilmtk.git 
git clone https://github.com/nilmtk/nilm_metadata/

# Install nilm_metadata
cd nilm_metadata
python setup.py develop
cd ..

# Install nilmtk
cd nilmtk
python setup.py develop
cd ..

# Clone nilmtk-contrib
git clone https://github.com/shaoshuai6666/nilmtk-contrib.git

# Install nilmtk-contrib
cd nilmtk-contrib
python setup.py develop
cd ..
