#! /bin/bash

pushd vimfiles

pushd pack/plugins/start/YouCompleteMe
python3 install.py --all
popd


popd
