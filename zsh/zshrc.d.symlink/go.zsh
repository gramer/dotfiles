# Too slow command
# GOVERSION=$(brew list go | head -n 1 | cut -d '/' -f 6) 2>/dev/null 
export GOROOT=$(brew --prefix)/Cellar/go/1.14.6/libexec 
export GOPATH="$HOME/go"
export PATH="$GOPATH/bin:$PATH"
#export GO15VENDOREXPERIMENT=1
