#!/bin/zsh

# colors & theme # {{{
#export TERM="xterm-color"
#export CLICOLOR=1
#export LSCOLORS=GxFxCxDxBxegedabagaced
export TERM=xterm-256color
#POWERLEVEL9K_MODE='awesome-fontconfig'
POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(ssh dir vcs newline status)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
# }}}

# oh-my-zsh theme # {{{
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
#ZSH_THEME="agnoster"
#ZSH_THEME="amuse"
#ZSH_THEME="powerline"
#ZSH_THEME="af-magic"
#ZSH_THEME="bira"
#ZSH_THEME="jonathan"
#ZSH_THEME="nanotech"
#ZSH_THEME="rkj"
ZSH_THEME="powerlevel9k/powerlevel9k"
# }}}

# powerline # {{{
#if [[ -r /usr/local/Cellar/python/2.7.9/Frameworks/Python.framework/Versions/2.7/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh ]]; then
#    . /usr/local/Cellar/python/2.7.9/Frameworks/Python.framework/Versions/2.7/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh
#fi
# }}}

