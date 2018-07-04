#! /bin/bash
if [ ! -d ~/vimfiles ]; then
    mkdir -p ~/vimfiles
fi

pushd vimfiles

if [ ! -d pack/plugins/start/YouCompleteMe ]; then
  mkdir -p pack/plugins/start

  git clone https://github.com/Valloric/YouCompleteMe.git YouCompleteMe

  #  https://github.com/Valloric/YouCompleteMe.git
  pushd pack/plugins/start
  python3 install.py --all
  popd
fi

popd
