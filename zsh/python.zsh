# Virtualenv/VirtualenvWrapper
# Borrowed from https://github.com/auser/yadr
export WORKON_HOME=$HOME/.virtualenvs
export PYTHONSTARTUP=~/.pythonrc
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PATH:$PYENV_ROOT/bin:$PYENV_ROOT/plugins/pyenv-virtualenv/bin"
export PYTHONDONTWRITEBYTECODE=1


if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi

if [[ $YADR_PLATFORM == "Darwin" ]]; then
  # Default brew location for virtualenvwrapper script.
  source /usr/local/bin/virtualenvwrapper.sh
else
  # Default package manager location for virtualenvwrapper script
  source /usr/bin/virtualenvwrapper.sh
fi

# virtualenv aliases
# http://blog.doughellmann.com/2010/01/virtualenvwrapper-tips-and-tricks.html
alias v='workon'
alias v.deactivate='deactivate'
alias v.mk='mkvirtualenv --no-site-packages -p `which python`'
alias v.mk3='mkvirtualenv --no-site-packages -p `which python3`'
alias v.mk_withsitepackages='mkvirtualenv -p `which python`'
alias v.mk3_withsitepackages='mkvirtualenv -p `which python3`'
alias v.rm='rmvirtualenv'
alias v.switch='workon'
alias v.add2virtualenv='add2virtualenv'
alias v.cdsitepackages='cdsitepackages'
alias v.cd='cdvirtualenv'
alias v.lssitepackages='lssitepackages'

export PYTHONPATH=$HOME/Code/Python/
