function kn() {
  namespace=`kubectl get namespaces -o=jsonpath='{range .items[*].metadata.name}{@}{"\n"}{end}' | fzf --height 50% --layout=reverse`
  if [ ! -z "$namespace" ]
  then
    context=`kubectl config current-context`
    echo "kubectl config set-context $context --namespace=$namespace"
    kubectl config set-context $context --namespace=$namespace
  fi
}

function knd() {
  node=`kubectl get node -L beta.kubernetes.io/instance-type -L kops.k8s.io/instancegroup | fzf --height 50% --layout=reverse`
  if [ ! -z "$node" ]
  then
    node=`echo $node | cut -d " " -f1`
    kubectl describe node $node
  fi
}

function kc() {
  context=`kubectl config view -o jsonpath='{.contexts[*].name}' | tr " " "\n" | fzf`
  if [ ! -z "$context" ]
  then
    echo "kubectl config use-context $context"
    kubectl config use-context $context
  fi
}

function kk() {
  ingress=`kubectl get ingress --all-namespaces -o=jsonpath='{.items[*].spec.rules[].host}' | tr " " "\n" | fzf`
  if [ ! -z "$ingress" ]
  then
    echo "open http://$ingress"
    open http://$ingress
  fi
}

function ks() {
  pod=`kubectl get pods -o=jsonpath='{.items[*].metadata.name}' | tr " " "\n" | fzf`
  sh=sh
  if [ ! -z "$1" ]
  then
    sh=$1
  fi
  if [ ! -z "$pod" ]
  then
    echo "kubectl exec -it $pod $sh"
    kubectl exec -it $pod $sh
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
