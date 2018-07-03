#! /bin/bash

pushd vimfiles

#  https://github.com/Valloric/YouCompleteMe.git
pushd pack/plugins/start/YouCompleteMe
python3 install.py --all
popd


popd
