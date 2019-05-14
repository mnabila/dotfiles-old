#
# User configuration sourced by interactive shells
#

# Define Zim location
ZIM_HOME=${ZDOTDIR:-${HOME}}/.zim

# Start Zim
[[ -s ${ZIM_HOME}/zimfw.zsh ]] && source ${ZIM_HOME}/zimfw.zsh

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# aliases
[ -f ~/.aliases ] && source ~/.aliases
#
# heroku autocomplete setup
HEROKU_AC_ZSH_SETUP_PATH=/home/nabil/.cache/heroku/autocomplete/zsh_setup && test -f $HEROKU_AC_ZSH_SETUP_PATH && source $HEROKU_AC_ZSH_SETUP_PATH;

## Path
PATH="$PATH:$(ruby -e 'print Gem.user_dir')/bin"
export GEM_HOME=$HOME/.gem
export PATH="/home/nabil/.local/bin:$PATH"
export PATH="/home/nabil/.toys:$PATH"
# export PATH="/opt/lampp/bin:$PATH"
# export PYENV_ROOT="$HOME/.pyenv"
# export PATH="$PYENV_ROOT/bin:$PATH"
