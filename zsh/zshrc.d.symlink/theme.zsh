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
#POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=$'\uE0B3'
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true

POWERLEVEL9K_CUSTOM_COMMAND_TIME="zsh_command_time"
POWERLEVEL9K_CUSTOM_COMMAND_TIME_BACKGROUND="253" # white
POWERLEVEL9K_CUSTOM_COMMAND_TIME_FOREGROUND="000" # blackA
# 
#POWERLEVEL9K_KUBECONTEXT_BACKGROUND='032'
#POWERLEVEL9K_KUBECONTEXT_FOREROUND='white'

# If command execution time above min. time, plugins will not output time.
ZSH_COMMAND_TIME_MIN_SECONDS=3

# Message to display (set to "" for disable).
ZSH_COMMAND_TIME_MSG="Execution time: %s sec"

# Message color.
# ZSH_COMMAND_TIME_COLOR="cyan"
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

