# Include my bin folder on path
if [ -d $HOME/bin ]; then
    export PATH="$HOME/bin:$PATH"
fi

# Include local bin folder on path
if [ -d $HOME/.local/bin ]; then
    export PATH="$HOME/.local/bin:$PATH"
fi
