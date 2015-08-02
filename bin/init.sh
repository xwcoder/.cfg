if [ ! -f "$HOME/.vimrc" ]; then
    ln -s "$HOME/.cfg/.vimrc" $HOME/.vimrc
    echo "ln .vimrc"
fi

if [ ! -f "$HOME/.zshrc" ]; then
    ln -s "$HOME/.cfg/.zshrc" $HOME/.zshrc
    echo "ln .zshrc"
fi

ln -s "$HOME/.cfg/.tmuxinator" $HOME/.tmuxinator

ln -s "$HOME/.cfg/.tmux/.tmux.conf" $HOME/.tmux.conf
ln -s "$HOME/.cfg/.tmux/.tmux.conf.local" $HOME/.tmux.conf.local

ln -s "$HOME/.cfg/.gitconfig" $HOME/.gitconfig
ln -s "$HOME/.cfg/bin" $HOME/bin
