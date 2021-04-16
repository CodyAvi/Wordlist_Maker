#!/bin/bash
cd $PREFIX/bin
rm -rf chr
rm -rf rchr
cd $HOME
rm -rf r.sh
mkdir tempbin
curl -LO https://github.com/avistnm/test/blob/master/chr
curl -LO https://github.com/avistnm/test/blob/master/rchr
mv * $PREFIX/bin
curl -LO https://github.com/avistnm/test/blob/master/r.sh
chmod 777 r.sh
mv r.sh $HOME
cd ..
rm -rf tempbin
