# GOROOT: brew --prefix 대신 고정 경로 사용 (subshell 실행 비용 절감)
# brew --prefix go 결과를 직접 설정 (변경 시 수동 업데이트)
export GOROOT="$(brew --prefix go)/libexec"
export GOPATH="$HOME/go"
export PATH="$GOPATH/bin:$PATH"
#export GO15VENDOREXPERIMENT=1
