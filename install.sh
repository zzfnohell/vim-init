#! /bin/bash
if [ ! -d ~/vimfiles ]; then
    mkdir -p ~/vimfiles
fi

pushd ~/vimfiles
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

git clone https://github.com/rust-lang/rust.vim ~/.vim/pack/plugins/start/rust.vim

if [ ! -d pack/plugins/start/YouCompleteMe ]; then
  mkdir -p pack/plugins/start

  

  #  https://github.com/Valloric/YouCompleteMe.git
  pushd pack/plugins/start
  
  git clone https://github.com/Valloric/YouCompleteMe.git YouCompleteMe
  
  pushd YouCompleteMe
  git submodule update --init --recursive
  python3 install.py --all
  popd 
  
  popd
fi

popd
