#!/usr/bin/env bash
set -u 

if ! [ -f "$(which curl)" ]; then 
    echo "Error: curl is not installed, please install it first"
    exit
fi

if ! [ -f "$(which zsh)" ]; then
    echo "Error: zsh is not installed, please install it first"
    exit
fi 

if ! [ -f ~/.oh-my-zsh/oh-my-zsh.sh ]; then
    echo "Error: oh-my-zsh is not installed, please install it first"
    echo 'Tip: oh-my-zsh could be installed by: sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"'
fi 

echo ""
echo -n "Preinstall check is done, start to install? [y/N]: "
read -r input
if [[ $input != "y" ]]; then
    echo "exit"
    exit 0
fi

echo "set up vim"
cp vim/.vimrc ~/.vimrc
cp -R vim/.vim ~/

echo "set up oh-my-zsh custom theme and plugin"
cp -R ohmyzsh-custom/custom ~/.oh-my-zsh/

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

echo "add custom settings to .zshrc"
cat zsh/zshrc >> ~/.zshrc

echo "done"