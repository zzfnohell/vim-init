#! /bin/bash


pushd ~

pushd viminit
git submodule update --init --recursive
popd


pushd .vim

ln -s viminit/vim/pack

pushd pack/plugins/start/YouCompleteMe
python3 install.py --all
popd

popd

popd
