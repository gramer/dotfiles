#!/bin/zsh
export PYTHONDONTWRITEBYTECOD
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

alias load-pyenv="eval $(pyenv init -) && eval $(pyenv virtualenv-init -)"