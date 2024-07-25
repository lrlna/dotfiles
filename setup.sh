#!/bin/bash

dirname="$(dirname "$(readlink -f "$0")")"

_link () {
  echo "[link] $1 -> $2"
  mkdir -p "$(dirname $2)"
  [ -e "$2" ] && unlink "$2"
  ln -s "$1" "$2"
}

src="$dirname/vim/vimrc"
dst="$HOME/.vimrc"
_link "$src" "$dst"

src="$dirname/tmux/tmux.conf"
dst="$HOME/.tmux.conf"
_link "$src" "$dst"

src="$dirname/zsh/zshrc.symlink"
dst="$HOME/.zshrc"
_link "$src" "$dst"

src="$dirname/zsh/profile.symlink"
dst="$HOME/.profile"
_link "$src" "$dst"

src="$dirname/alacritty/themes/theme.toml"
dst="$HOME/.config/alacritty/themes/theme.toml"
_link "$src" "$dst"

src="$dirname/alacritty/alacritty.toml"
dst="$HOME/.config/alacritty/alacritty.toml"
_link "$src" "$dst"