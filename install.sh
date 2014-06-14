#!/bin/bash -ex

link_file() {
  ln -vs ~/.dotfiles/$1 ~/$1 || (rm ~/$1 && ln -vs ~/.dotfiles/$1 ~/$1)
}

link_file ".vimrc"
