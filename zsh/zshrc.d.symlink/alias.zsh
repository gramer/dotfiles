#!/bin/zsh

# alias # {{{
alias p='pwd'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias vi2='vi -O2 '
alias h="history"
alias ls='ls -G'
alias l='ls -alF'
alias ll='ls -lA'
alias lt='ls -lt | head'
alias la='ls -A'
alias c='clear'
alias sz="source ~/.zshrc"
alias grep='grep --color=auto'
alias tf='tail -f $LOGS_BASE/catalina_logs/catalina.out'
alias t='tree'
alias lg="git log --graph --abbrev-commit --decorate --date=relative --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
alias cleanIdea="find . -name '*.iml' -exec rm {} \;; rm -rf .idea"
alias s='storm'
alias pc='pwd | clipcopy'
alias bs='brew search'
alias cc='clipcopy'
# }}}
