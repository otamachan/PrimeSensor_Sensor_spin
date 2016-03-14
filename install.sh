#!/bin/bash
which yacc > /dev/null
if [ $? -eq 1 ]; then
    echo "Install bison(sudo apt-get instal bison)"
    exit 0
fi
rm *.tar.gz
wget http://spinroot.com/spin/Src/spin645.tar.gz
tar xvzf spin645.tar.gz
pushd Spin/Src*
make clean
make
cp spin ../..
popd
