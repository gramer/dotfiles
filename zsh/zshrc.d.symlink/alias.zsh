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
alias calicoctl="kubectl exec -i -n kube-system calicoctl /calicoctl -- "
alias kops="kubectl exec -i -n openfaas \`kubectl get pod -n openfaas -l faas_function=create-instancegroup -o=jsonpath="{.items..metadata.name}"\` -- kops"
# alias aws="kubectl exec -i -n tools kops aws -- "
alias e='exa -lh'
alias ee='exa -labghHS'
alias eh='e | head'
alias grep='grep --color=auto'
alias h="history"
alias l='ls -alF'
alias la='ls -A'
alias lg="git lh"
alias ll='ls -lA'
alias ls='ls -G'
alias lt='ls -lht | head -n 15'
alias p='pwd'
alias pc='pwd | clipcopy'
alias s='storm'
alias sz="source ~/.zshrc"
alias t='tree'
alias tf='tail -f $LOGS_BASE/catalina_logs/catalina.out'
alias vi2='vi -O2 '
alias hl='helm ls --namespace `kubectl config view --minify --output jsonpath={..namespace}`'


export OH_MY_ZSH_PLUGIN_HOME='/Users/coupang/.oh-my-zsh/plugins'
alias load-rbenv='[ -f "$OH_MY_ZSH_PLUGIN_HOME/rbenv/rbenv.plugin.zsh" ] && source "$OH_MY_ZSH_PLUGIN_HOME/rbenv/rbenv.plugin.zsh"'
alias load-nvm='[ - /usr/local/opt/nvm/nvm.sh ] && source /usr/local/opt/nvm/nvm.sh'

alias load-minikube='eval "$(minikube completion zsh)"'
alias load-minishift='eval "$(minishift completion zsh)"'
alias load-pipenv='eval "$(pipenv --completion)"'
alias load-kops='eval "$(kops completion zsh)"'
alias load-helm='eval "$(helm completion zsh)"'

alias bfg='java -jar /zeno/program/bfg'

# }}}
