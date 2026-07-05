#!/bin/zsh
# maven and gradle {{{
export MAVEN_OPTS='-Xmx512m'
export GRADLE_OPTS='-Xmx1024m'
# }}}

# jenv {{{
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"
# }}}

# ibm heap analyzer {{{
export PATH="$PROGRAM_BASE/ibm-heap-analyzer/bin:$PATH"
# }}}

# ibm thread analyzer {{{
export PATH="$PROGRAM_BASE/ibm-thread-analyzer/bin:$PATH"
# }}}
