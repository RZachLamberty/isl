#!/usr/bin/bash

# This script will download the data files from the ISL book website into a
# local data directory

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

mkdir -p $DIR/data
cd $DIR/data

wget http://www-bcf.usc.edu/~gareth/ISL/Adverising.csv
wget http://www-bcf.usc.edu/~gareth/ISL/Auto.data
wget http://www-bcf.usc.edu/~gareth/ISL/Auto.csv
wget http://www-bcf.usc.edu/~gareth/ISL/College.csv
wget http://www-bcf.usc.edu/~gareth/ISL/Ch10Ex11.csv
wget http://www-bcf.usc.edu/~gareth/ISL/Credit.csv
wget http://www-bcf.usc.edu/~gareth/ISL/Income1.csv
wget http://www-bcf.usc.edu/~gareth/ISL/Income2.csv
wget http://www-bcf.usc.edu/~gareth/ISL/Heart.csv
