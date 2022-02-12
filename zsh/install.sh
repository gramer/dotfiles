#!/usr/bin/env bash

echo "Install zsh by https:c//raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Install zplug by https://github.com/zplug/zplug#the-best-way"

if [ ! -d ~/.zplug ]; then
  curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
fi

