#!/usr/bin/env sh

echo "Installing oh-my-zsh"

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "Linking oh-my-zsh files"

rm -f $HOME/.zshrc
ln -s $HOME/Projects/personal/MyDotFiles/_zshrc $HOME/.zshrc

echo "Liking git files"

ln -s $HOME/Projects/personal/MyDotFiles/_gitconfig $HOME/.gitconfig
ln -s $HOME/Projects/personal/MyDotFiles/_gitignore_global $HOME/.gitignore_global

echo "Linking vim files"

ln -s $HOME/Projects/personal/MyDotFiles/_vimrc.bundles.local $HOME/.vimrc.bundles.local
ln -s $HOME/Projects/personal/MyDotFiles/_vimrc.local $HOME/.vimrc.local
ln -s $HOME/Projects/personal/MyDotFiles/_gvimrc $HOME/.gvimrc

echo "Installing spf13-vim"

curl http://j.mp/spf13-vim3 -L -o - | sh
