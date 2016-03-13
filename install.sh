#!/bin/bash
rm *.tar.gz
wget http://spinroot.com/spin/Src/spin645.tar.gz
tar xvzf spin645.tar.gz
pushd Spin/Src*
make clean
make
cp spin ../..
popd
