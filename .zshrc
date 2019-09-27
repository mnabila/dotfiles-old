#
# User configuration sourced by interactive shells
#

# Define Zim location
ZIM_HOME=${ZDOTDIR:-${HOME}}/.zim

# Start Zim
[[ -s ${ZIM_HOME}/zimfw.zsh ]] && source ${ZIM_HOME}/zimfw.zsh

# fzf
[ -f ~/.zsh/fzf.zsh ] && source ~/.zsh/fzf.zsh

# aliases
[ -f ~/.aliases ] && source ~/.aliases

# completion
fpath=(~/.zsh/completion $fpath)

# heroku autocomplete setup
HEROKU_AC_ZSH_SETUP_PATH=${HOME}/.cache/heroku/autocomplete/zsh_setup && test -f $HEROKU_AC_ZSH_SETUP_PATH && source $HEROKU_AC_ZSH_SETUP_PATH;

# Untuk merubah titlebar dari st terminal
# Sumber: http://www.faqs.org/docs/Linux-mini/Xterm-Title.html#s5
# case $TERM in
#   st*)
#   precmd () {
#     # menampilkan direktori aktif (kondisi default)
#     print -Pn "\e]0;st:%~\a"
#   }
#   preexec () {
#     # menampilkan program yang sedang berjalan
#     print -Pn "\e]0;st:$1\a"
#   }
# ;;
# esac
