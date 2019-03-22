# Load Ruby RVM
if [[ -s "$HOME/.rvm/scripts/rvm" ]]; then
    source "$HOME/.rvm/scripts/rvm"
elif [[ -s "/usr/local/rvm/src/rvm/scripts/rvm" ]]; then
    source "/usr/local/rvm/src/rvm/scripts/rvm"
elif [[ -s "/usr/share/rvm/scripts/rvm" ]]; then
    source "/usr/share/rvm/scripts/rvm"
fi

# Add RVM to PATH for scripting
if [[ -d "$HOME/.rvm/bin" ]]; then
    PATH=$PATH:$HOME/.rvm/bin
elif [[ -d "/usr/local/rvm/bin" ]]; then
    PATH=$PATH:/usr/local/rvm/bin
elif [[ -d "/usr/share/rvm/bin" ]]; then
    PATH=$PATH:/usr/share/rvm/bin
fi
