#!/bin/zsh

# alias # {{{
# alias aws="kubectl exec -i -n tools kops aws -- "
alias .....='cd ../../../..'
alias ....='cd ../../..'
alias ...='cd ../..'
alias ..='cd ..'
alias aaf='alias| fzf'
alias ad='ansible-doc'
alias bat='bat -p'
alias bb='brew bundle'
alias bi='brew info `brew list -1 | fzf`'
alias bu='brew upgrade `brew list -1 | fzf`'
alias bl='brew list'
alias blf='brew list | fzf'
alias bs='brew search'
alias c='clear'
alias calicoctl="kubectl exec -i -n kube-system calicoctl /calicoctl -- "
alias cat='bat -p'
alias cc='clipcopy'
alias cleanIdea="find . -name '*.iml' -exec rm {} \;; rm -rf .idea"
alias e='eza -lh'
alias ea='eza -hla'
alias ee='env | fzf'
alias eh='e | head'
alias grep='grep --color=auto'
alias h="history"
alias hl='helm ls --namespace `kubectl config view --minify --output jsonpath={..namespace}`'
alias hw='hwatch'
alias kops="kubectl exec -i -n openfaas \`kubectl get pod -n openfaas -l faas_function=create-instancegroup -o=jsonpath="{.items..metadata.name}"\` -- kops"
alias l='ls -alF'
alias la='ls -A'
alias lg="git lh"
alias ll='eza -labghHS'
alias ls='eza'
alias lt='ls -lrh -snew | head -n 15'
alias na="navi"
alias nt='navi --tldr $(tldr --list |  tr  "," "\n" | tr -d " " | fzf)'
alias p='pwd'
alias pc='pwd | clipcopy'
alias s='storm'
alias sz="source ~/.zshrc"
alias t='tree'
alias t1='tree -L 1'
alias t2='tree -L 2'
alias tt='tree -L 2'
alias t3='tree -L 3'
alias vi2='vi -O2 '

export OH_MY_ZSH_PLUGIN_HOME="$HOME/.oh-my-zsh/plugins"
alias load-rbenv='[ -f "$OH_MY_ZSH_PLUGIN_HOME/rbenv/rbenv.plugin.zsh" ] && source "$OH_MY_ZSH_PLUGIN_HOME/rbenv/rbenv.plugin.zsh"'
alias load-nvm='[ - /usr/local/opt/nvm/nvm.sh ] && source /usr/local/opt/nvm/nvm.sh'

#alias load-minikube='eval "$(minikube completion zsh)"'
#alias load-minishift='eval "$(minishift completion zsh)"'
alias load-pipenv='eval "$(pipenv --completion)"'
#alias load-kops='eval "$(kops completion zsh)"'
#alias load-helm='eval "$(helm completion zsh)"'
# }}}

alias vimupdate='vim +PluUpdate +qall'

