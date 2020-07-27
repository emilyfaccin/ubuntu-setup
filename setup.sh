#!/usr/bin/env bash
#script: setup.sh

sudo apt-get update

sudo apt install curl git zsh vim xclip -y

export alias pbcopy='xclip -selection clipboard'
export alias pbpaste='xclip -selection clipboard -o'

# configura o username no GIT
echo 'What name do you want to use in GIT user.name?'
read git_config_user_name
git config --global user.name "$git_config_user_name"
clear

# configura o email no GIT
echo 'What email do you want to use in GIT user.mail?'
read git_config_user_email
git config --global user.email "$git_config_user_email"
clear

# configura o cim como editor padrão do GIT
git config --global core.editor vim

# dependencias do oh-my-zsh
sudo apt install powerline fonts-powerline
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
chsh -s $(which zsh)

# Instalar tema Spaceship Promp 
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"

ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

# Criar sed para alterar valor ZSH_THEME="spaceship" em ~/.zshrc
# Config adicional do tema λ

# Instalar ZPlugin
sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zplugin/master/doc/install.sh)"
