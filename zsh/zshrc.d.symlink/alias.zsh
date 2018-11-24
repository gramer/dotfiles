#!/bin/zsh

# alias # {{{
alias .....='cd ../../../..'
alias ....='cd ../../..'
alias ...='cd ../..'
alias ..='cd ..'
alias bb='brew bundle'
alias bs='brew search'
alias c='clear'
alias cc='clipcopy'
alias cleanIdea="find . -name '*.iml' -exec rm {} \;; rm -rf .idea"
alias e='exa'
alias el='exa -lh'
alias ea='exa -labghHS'
alias grep='grep --color=auto'
alias h="history"
alias l='ls -alF'
alias la='ls -A'
alias lg="git log --graph --abbrev-commit --decorate --date=relative --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
alias ll='ls -lA'
alias ls='ls -G'
alias lt='ls -lt | head'
alias p='pwd'
alias pc='pwd | clipcopy'
alias s='storm'
alias sz="source ~/.zshrc"
alias t='tree'
alias tf='tail -f $LOGS_BASE/catalina_logs/catalina.out'
alias vi2='vi -O2 '
# }}}
