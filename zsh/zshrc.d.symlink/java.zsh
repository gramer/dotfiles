#!/bin/zsh
# maven and gradle # {{{
export MAVEN_OPTS='-Xmx512m -XX:MaxPermSize=128m'
export GRADLE_OPTS='-Xmx1024m -XX:MaxPermSize=256m'
# }}}

# jenv # {{{
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"
# }}}