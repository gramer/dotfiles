#!/bin/zsh
# rbenv - lazy-load: 첫 rbenv/ruby/gem/bundle 호출 시에만 초기화
if [[ -d "$HOME/.rbenv" ]]; then
  export PATH="$HOME/.rbenv/bin:$HOME/.rbenv/shims:$PATH"

  _rbenv_init() {
    unfunction rbenv ruby gem bundle 2>/dev/null
    eval "$(command rbenv init - zsh)"
    export RUBY_VERSION=$(rbenv version | cut -d ' ' -f 1)
    export PATH="$HOME/.local/share/gem/ruby/$RUBY_VERSION/bin:$PATH"
  }

  rbenv()  { _rbenv_init; rbenv  "$@" }
  ruby()   { _rbenv_init; ruby   "$@" }
  gem()    { _rbenv_init; gem    "$@" }
  bundle() { _rbenv_init; bundle "$@" }
fi
