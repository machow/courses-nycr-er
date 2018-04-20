# Use this file to install Linux software packages into the course image.
# R packages should be installed from requirements.R
# There is a list of available Linux packages at 
# https://packages.debian.org/testing/allpackages
# This file needs to run without interaction. You may need to use some of these args to apt-get:
# --assume-yes --assume-no --trivial-only --allow-downgrades --allow-remove-essential --allow-change-held-packages

# e.g., XML and Cairo graphics
apt-get update && apt-get --yes install libxml2-dev libcairo2-dev

curl https://assets.datacamp.com/production/repositories/2799/datasets/30e11661e2452c14f473ecf84fcf03a8eaa77006/kaggle-survey-2017.zip \
       -O

unzip kaggle-survey-2017.zip
