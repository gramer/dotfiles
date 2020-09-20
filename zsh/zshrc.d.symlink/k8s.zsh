funtion kubectl_template() {
  resource="$1"
  command="$2"
  option="$3"
  it=`kubectl get "$resource" -o wide | fzf --header-lines=1 | cut -d ' ' -f 1`
  if [ ! -z "$it" ]
  then
    it=`echo $it | cut -d " " -f1`
    echo "$command$it $option" | cc
    eval "$command$it $option"
  fi
}

function kn() {
    context=`kubectl config current-context`
    kubectl_template "namespaces" "kubectl config set-context $context --namespace="
}

function knd() {
  kubectl_template "node" "kubectl describe node "
}

function ks() {
  kubectl_template "pod" "kubectl exec -it " "-- bash -o vi"
}

function kl() {
  kubectl_template "pod" "kubectl logs --since 10m -f "
}

function kd() {
  kubectl_template "pod" "kubectl describe pod "
}

function kst() {
  kubectl_template "secret" "kubedecode " "`kubectl config view --minify --output 'jsonpath={..namespace}'`"
}

function kc() {
  context=`kubectl config view -o jsonpath='{.contexts[*].name}' | tr " " "\n" | fzf`
  if [ ! -z "$context" ]
  then
    echo "kubectl config use-context $context" | cc
    kubectl config use-context $context
  fi
}

function kcc() {
  config_file=`ls ~/.kube/config.* | fzf`
  if [ ! -z "$config_file" ]
  then
    echo "ln -sf $config_file $HOME/.kube/config" | cc
    ln -sf $config_file $HOME/.kube/config
  fi
}

function kk() {
  ingress=`kubectl get ingress --all-namespaces -o=jsonpath='{.items[*].spec.rules[*].host}' | tr " " "\n" | fzf`
  if [ ! -z "$ingress" ]
  then
    echo "open http://$ingress"
    open http://$ingress
  fi
}

function helm-toggle() {
    if [ -z "$1" ]; then
        echo "helm client and Tiller (server side) versions always must match. Simply toggle between different Helm versions installed by brew".
        echo
        echo "Usage: helm-toggle <Helm version>"
        echo
        echo "installed helm versions are:"
        brew info --json=v1  kubernetes-helm | jq .[].installed[].version
        echo "current helm version is:"
        brew info --json=v1  kubernetes-helm | jq .[].linked_keg
    else
        brew switch kubernetes-helm $1 > /dev/null # no appropriate error handling here if someone sets something silly
    fi
}
