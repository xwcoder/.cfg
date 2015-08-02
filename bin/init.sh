if [ ! -f "$HOME/.vimrc" ]; then
    ln -s "$HOME/.cfg/.vimrc" $HOME/.vimrc
    echo "ln .vimrc"
fi

if [ ! -f "$HOME/.zshrc" ]; then
    ln -s "$HOME/.cfg/.zshrc" $HOME/.zshrc
    echo "ln .zshrc"
fi
