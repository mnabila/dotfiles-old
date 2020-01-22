#!/usr/bin/env sh

#
# ENVIRONMENT SETUP #
#
export EDITOR=nvim
# export BROWSER=qutebrowser
export FONTCONFIG_PATH=/etc/fonts

export QT_AUTO_SCREEN_SCALE_FACTOR=1
export QT_QPA_PLATFORMTHEME=qt5ct
export QT_SCALE_FACTOR=1
export QT_SCREEN_SCALE_FACTORS=1

export GEM_HOME=$HOME/.gem
export PYENV_ROOT="${HOME}/.pyenv"

export TERM=screen-256color
export TERMINAL=st

# Clipmenu Environment Variables
export CM_LAUNCHER=dmenu
export CM_DIR=/tmp/clipmenu

# default terminal ranger
export TERMCMD=st

# Path
export PATH="$PYENV_ROOT/bin:$PATH"
export PATH="${HOME}/.gem/ruby/2.7.0/bin:$PATH"
export PATH="${HOME}/.local/bin:$PATH"
export PATH="${HOME}/.config/scripts:$PATH"
export PATH="/usr/lib/ccache/bin/:$PATH"

# FZF with gruvbox colorscheme
export FZF_DEFAULT_OPTS='
 --color=fg:#ebdbb2,bg:#282828,hl:#d79921
 --color=fg+:#282828,bg+:#d79921,hl+:#282828
 --color=info:#ebdbb2,prompt:#d3869b,pointer:#282828
 --color=marker:#282828,spinner:#d3869b,header:#d79921
'
# Manpages
export MANPAGER="/bin/sh -c \"col -b | nvim -c 'set ft=man ts=8 nomod nolist nonu noma' -\""
