

export EDITOR=vi

if [[ -d $HOME/.go ]]; then
    export GOPATH=$HOME/.go
    export PATH=$PATH:$GOPATH/bin
fi

if [[ -d $HOME/.cargo ]]; then
  export PATH=$PATH:$HOME/.cargo/bin
fi

if [[ -d /usr/local/opt/go ]]; then
    export GOROOT=/usr/local/opt/go/libexec
fi

if [[ -x '/usr/libexec/path_helper' ]]; then
  eval `/usr/libexec/path_helper -s`
fi


# TODO: Refactoring: move another location?

if [[ -d $HOME/opt/rust/current ]]; then
  export RUST_SRC_PATH=$HOME/opt/rust/current
fi
