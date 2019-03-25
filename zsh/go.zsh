export GOPATH=$HOME/Code/go
export PATH="$PATH:$GOPATH/bin"
alias gosrc="cd $GOPATH/src/github.com/$(git config --includes --get user.name)"

antigen bundle 1995parham/buffalo.zsh
