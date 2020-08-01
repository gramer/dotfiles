function kn() {
  namespace=`kubectl get namespaces -o=jsonpath='{range .items[*].metadata.name}{@}{"\n"}{end}' | fzf --height 50% --layout=reverse`
  if [ ! -z "$namespace" ]
  then
    context=`kubectl config current-context`
    echo "kubectl config set-context $context --namespace=$namespace" | cc
    kubectl config set-context $context --namespace=$namespace
  fi
}

function knd() {
  # node=`kubectl get node -L beta.kubernetes.io/instance-type -L kops.k8s.io/instancegroup -L failure-domain.beta.kubernetes.io/zone | fzf --height 50% --layout=reverse`
  node=`kubectl get node -o wide | fzf --height 50% --layout=reverse`
  if [ ! -z "$node" ]
  then
    node=`echo $node | cut -d " " -f1`
    echo "kubectl describe node $node" | cc
    kubectl describe node $node
  fi
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

function ks() {
  pod=`kubectl get pods -o=jsonpath='{.items[*].metadata.name}' | tr " " "\n" | fzf`
  sh=bash
  if [ ! -z "$1" ]
  then
    sh=$1
  fi
  if [ ! -z "$pod" ]
  then
    echo "kubectl exec -it $pod $sh" | cc
    kubectl exec -it $pod -- $sh -o vi
  fi
}

function kl() {
  pod=`kubectl get pod --no-headers | fzf`
  if [ ! -z "$pod" ]
  then
    pod=`echo $pod | cut -d " " -f1`
    echo "kubectl logs --since 10m -f $pod" | cc
    kubectl logs -f --since 10m $pod
  fi
}

function kd() {
  pod=`kubectl get pods -o wide | fzf`
  if [ ! -z "$pod" ]
  then
    pod=`echo $pod | cut -d " " -f1`
    echo "kubectl describe pod $pod" | cc
    kubectl describe pod $pod
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
