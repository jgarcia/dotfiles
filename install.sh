#!/bin/bash

# Make bin dir if it does not exist
if [ ! -f ~/bin ]; then
  mkdir ~/bin
fi

if [ ! -f ~/.vim ]; then
  mkdir ~/.vim
fi

if [ ! -f ~/.vim/autoload ]; then
  mkdir ~/.vim/autoload
fi

if [ ! -f ~/.vim/bundle ]; then
  mkdir ~/.vim/bundle
fi

# Setup pathogen
curl -Sso ~/.vim/autoload/pathogen.vim https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim

# Pull plugins from github
git clone git://github.com/tpope/vim-vividchalk.git ~/.vim/bundle/vim-vividchalk
git clone http://github.com/tpope/vim-rails.git ~/.vim/bundle/vim-rails
git clone http://github.com/tpope/vim-fugitive.git ~/.vim/bundle/vim-fugitive
git clone http://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
git clone http://github.com/scrooloose/nerdcommenter.git ~/.vim/bundle/nerdcommenter
git clone https://github.com/kchmck/vim-coffee-script.git ~/.vim/bundle/vim-coffee-script
git clone https://github.com/benmills/vimux.git ~/.vim/bundle/vimux
git clone https://github.com/christoomey/vim-tmux-navigator.git ~/.vim/bundle/vim-tmux-navigator
git clone https://github.com/skalnik/vim-vroom.git ~/.vim/bundle/vim-vroom
git clone https://github.com/edsono/vim-matchit.git ~/.vim/bundle/vim-matchit
git clone https://github.com/nono/vim-handlebars.git ~/.vim/bundle/vim-handlebars
git clone https://github.com/anyakichi/vim-autoclose.git ~/.vim/bundle/vim-autoclose
git clone https://github.com/scrooloose/syntastic.git ~/.vim/bundle/syntastic
git clone https://github.com/majutsushi/tagbar.git ~/.vim/bundle/tagbar
git clone https://github.com/ervandew/supertab.git ~/.vim/bundle/supertab.git
git clone https://github.com/jeetsukumaran/vim-buffergator.git ~/.vim/bundle/vim-buffergator

# Link Files
ln -s vimrc ~/.vimrc
ln -s tmux.conf ~/.tmux.conf

