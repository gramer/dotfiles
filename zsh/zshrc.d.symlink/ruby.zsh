#!/bin/zsh
# rbenv
eval "$(rbenv init -)"

# shellcheck disable=SC2155
export RUBY_VERSION=$(rbenv version | cut -d ' ' -f 1)
export PATH="$HOME/.rbenv/shims:$HOME/.local/share/gem/ruby/$RUBY_VERSION/bin:$HOME/.rbenv/bin:$PATH"
