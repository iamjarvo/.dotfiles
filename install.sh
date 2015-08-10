#!/bin/bash -ex

link_file() {
  ln -vs $PWD/$1 ~/$1 || (rm -rf ~/$1 && ln -vs $PWD/$1 ~/$1)
}

link_file ".vimrc"
link_file ".slate"
link_file ".gemrc"
link_file ".tmux.conf"
cp -r $PWD/.vim ~/.

git config --global user.email "j.dharrie@gmail.com"
git config --global user.name "Jearvon Dharrie"
