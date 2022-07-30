#!/usr/bin/env bash
set -eu 

echo "Please install curl, zsh, and oh-my-zsh first"
echo 'Note: oh-my-zsh could be installed by: sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"'
echo ""
echo -n "continue? [y/N]: "
read -r input
if [[ $input != "y" ]]; then
    echo "exit"
    exit 0
fi

cp vim/.vimrc ~/.vimrc
cp -R vim/.vim ~/

cp -R ohmyzsh-custom/custom ~/.oh-my-zsh/

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

cat zsh/zshrc >> ~/.zshrc