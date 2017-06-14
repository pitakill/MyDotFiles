#!/usr/bin/env sh

echo "Installing oh-my-zsh"

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "Linking oh-my-zsh files"

rm -f $HOME/.zshrc
ln -s $HOME/Projects/personal/MyDotFiles/_zshrc $HOME/.zshrc

echo "Liking screen files"

rm -f $HOME/.screenrc
rm -f $HOME/.screenrc-projects
ln -s $HOME/Projects/personal/MyDotFiles/_screenrc $HOME/.screenrc
ln -s $HOME/Projects/personal/MyDotFiles/_screenrc-projects $HOME/.screenrc-projects

echo "Liking git files"

rm -f $HOME/.gitconfig
rm -f $HOME/.gitignore_global
ln -s $HOME/Projects/personal/MyDotFiles/_gitconfig $HOME/.gitconfig
ln -s $HOME/Projects/personal/MyDotFiles/_gitignore_global $HOME/.gitignore_global

echo "Linking vim files"

rm -f $HOME/.vimrc.bundles.local
rm -f $HOME/.vimrc.local
rm -f $HOME/.gvimrc
ln -s $HOME/Projects/personal/MyDotFiles/_vimrc.bundles.local $HOME/.vimrc.bundles.local
ln -s $HOME/Projects/personal/MyDotFiles/_vimrc.local $HOME/.vimrc.local
ln -s $HOME/Projects/personal/MyDotFiles/_gvimrc $HOME/.gvimrc


echo "Linking scripts"

mkdir -p $HOME/.bin
rm -f $HOME/.bin/get_brightness
rm -f $HOME/.bin/set_brightness
rm -f $HOME/.bin/kb_backlight
rm -f $HOME/.bin/touchpad
rm -f $HOME/.bin/synaptic_setup
ln -s $HOME/Projects/personal/MyDotFiles/scripts/set_brightness $HOME/.bin/set_brightness
ln -s $HOME/Projects/personal/MyDotFiles/scripts/kb_backlight $HOME/.bin/kb_backlight
ln -s $HOME/Projects/personal/MyDotFiles/scripts/get_brightness $HOME/.bin/get_brightness
ln -s $HOME/Projects/personal/MyDotFiles/scripts/touchpad $HOME/.bin/touchpad
ln -s $HOME/Projects/personal/MyDotFiles/scripts/synaptic_setup $HOME/.bin/synaptic_setup

echo "Linking Xmodmap file"

rm -f $HOME/.Xmodmap
ln -s $HOME/Projects/personal/MyDotFiles/_Xmodmap $HOME/.Xmodmap

echo "Installing spf13-vim"

curl http://j.mp/spf13-vim3 -L -o - | sh
