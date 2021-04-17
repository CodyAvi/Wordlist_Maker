#!/bin/bash
echo -e "\e[34m Installing core files.....\e[0m"
cd $PREFIX/bin >/dev/null 2>&1
rm -rf chr >/dev/null 2>&1
rm -rf rchr >/dev/null 2>&1
cd $HOME >/dev/null 2>&1
rm -rf r.sh >/dev/null 2>&1
mkdir tempbin >/dev/null 2>&1
wget https://raw.githubusercontent.com/avistnm/test/master/chr >/dev/null 2>&1
wget https://raw.githubusercontent.com/avistnm/test/master/rchr >/dev/null 2>&1
mv * $PREFIX/bin >/dev/null 2>&1
wget https://raw.githubusercontent.com/avistnm/test/master/r.sh >/dev/null 2>&1
chmod 777 r.sh >/dev/null 2>&1
mv r.sh $HOME >/dev/null 2>&1
cd .. >/dev/null 2>&1
rm -rf tempbin >/dev/null 2>&1
echo -e "\e[34m Installation Successful!!\e[0m"
echo -e "\e[34m Run Script by executing \e[1;32bash r.sh\e[0m"
