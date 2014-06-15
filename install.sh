#!/bin/bash -ex

link_file() {
  ln -vs $PWD/$1 ~/$1 || (rm -rf ~/$1 && ln -vs $PWD/$1 ~/$1)
}

link_file ".vimrc"
link_file ".slate"
cp -r $PWD/.vim ~/.
