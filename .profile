# ENVIRONMENT SETUP
export BROWSER="firefox"
export EDITOR=nvim
export QT_QPA_PLATFORMTHEME=qt5ct
export TERM=screen-256color
export TERMINAL=st

# Clipmenu Environment Variables
export CM_LAUNCHER=rofi
export CM_DIR=/tmp/clipmenu

# Path
PATH="$PATH:$(ruby -e 'print Gem.user_dir')/bin"
export GEM_HOME=$HOME/.gem
export PATH="/home/nabil/.local/bin:$PATH"
export PATH="/home/nabil/.toys:$PATH"
# export PATH="/opt/lampp/bin:$PATH"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
