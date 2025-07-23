#!/usr/bin/env bash

SCRIPT_DIR=$(perl -MCwd=realpath -le 'print realpath shift' "$0/..")

function symlink_dir() {
    src=$1
    dst=$2
    [[ -L "$dst" ]] && rm -fr "$dst"
    ln -sf "$src" "$dst"
}

symlink_dir $SCRIPT_DIR/../.config $HOME/.config

ln -sf $SCRIPT_DIR/../.zshrc $HOME/.zshrc
ln -sf $SCRIPT_DIR/../.zprofile $HOME/.zprofile
ln -sf $SCRIPT_DIR/../.p10k.zsh $HOME/.p10k.zsh

git clone https://github.com/kq5y/tmux-battery.git $SCRIPT_DIR/../.config/tmux/plugins/tmux-plugins/tmux-battery
git clone https://github.com/catppuccin/tmux.git $SCRIPT_DIR/../.config/tmux/plugins/catppuccin

