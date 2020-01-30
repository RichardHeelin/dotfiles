# Include my bin folder on path
if [ -d "$HOME/bin" ]; then
    export PATH="$HOME/bin:$PATH"
fi

# Include local bin folder on path
if [ -d "$HOME/.local/bin" ]; then
    export PATH="$HOME/.local/bin:$PATH"
fi

# Include go bin folder on path
if [ ! -z "$GOPATH" ] && [ -d "$GOPATH/bin" ]; then
    export PATH="$GOPATH/bin:$PATH"
fi
