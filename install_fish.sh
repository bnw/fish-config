#!/bin/bash

set -x
set -e

sudo apt-get install fish git
curl -L https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install > install
fish ./install --noninteractive
rm install
fish -c "
omf install bobthefish
set -g theme_nerd_fonts yes
cd ~/.config/fish
git init
git remote add origin https://github.com/bnw/fish-config.git
git fetch
git reset origin/master
git ls-files -d | sed -e \"s/\(.*\)/'\1'/\" | xargs git checkout -- "
