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
HEROKU_AC_ZSH_SETUP_PATH=${HOME}/.cache/heroku/autocomplete/zsh_setup && test -f $HEROKU_AC_ZSH_SETUP_PATH && source $HEROKU_AC_ZSH_SETUP_PATH;

# Environment
# export GEM_HOME=$HOME/.gem
# export PYENV_ROOT="${HOME}/.pyenv"

## Path
# export PATH="$PATH:$(ruby -e 'print Gem.user_dir')/bin"
# export PATH="$PYENV_ROOT/bin:$PATH"
# export PATH="${HOME}/.gem/ruby/2.6.0/bin:$PATH"
# export PATH="${HOME}/.local/bin:$PATH"
# export PATH="${HOME}/.toys:$PATH"
