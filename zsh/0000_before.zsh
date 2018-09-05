# Load any user customizations prior to load
#

# Get the operating system to be used for specific instances where conditions/commands may differ
set YADR_PLATFORM='unknown'
unamestr=$(uname)
if [[ $unamestr == 'Linux' ]]; then
  YADR_PLATFORM='linux'
elif [[ $unamestr == 'Darwin' ]]; then
  YADR_PLATFORM='darwin'
fi

if [ -d $HOME/.zsh.before/ ]; then
  if [ "$(ls -A $HOME/.zsh.before/)" ]; then
    for config_file ($HOME/.zsh.before/*.zsh) source $config_file
  fi
fi
