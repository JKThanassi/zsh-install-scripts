#!/bin/sh
echo "This script will install zsh, oh-my-zsh, and some zsh plugins that I use."

if test ! $(which brew); then
    echo "Installing homebrew..."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew install zsh 
echo "now changing shell to zsh"
sudo chsh -s $(which zsh)

echo "installing oh my zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
echo "installing powerline fonts"
# clone
env -i git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts
echo "make sure to set iterm font to hack"

echo "now installing zsh-autosuggestions"
env -i git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
echo "zsh-autosuggestions installed"

echo "installing zsh-syntax-highlighting"
brew install zsh-syntax-highlighting
echo "installed zsh-syntax-highlighting"

echo "copying .zshrc to ~/.zshrc" 
cp ./.zshrc ~/
echo "done"
echo "restart your terminal to see changes"