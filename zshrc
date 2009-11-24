source ~/.bin/dotfiles/bash_profile
source ~/.bin/dotfiles/bashrc

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

REPORTTIME=10 #report length of time to do a command if it takes over 10 seconds

autoload compinit
compinit

#---PROMPT STUFF----------------------------------------------------------

# Prompt Color Table Z shell
# stolen from http://understudy.net/custom.html#Z_shell
fg_black=$'\e[0;30m'
fg_red=$'\e[0;31m'
fg_green=$'\e[0;32m'
fg_brown=$'\e[0;33m'
fg_blue=$'\e[0;34m'
fg_purple=$'\e[0;35m'
fg_cyan=$'\e[0;36m'
fg_lgray=$'\e[0;37m'
fg_dgray=$'\e[1;30m'
fg_lred=$'\e[1;31m'
fg_lgreen=$'\e[1;32m'
fg_yellow=$'\e[1;33m'
fg_lblue=$'\e[1;34m'
fg_pink=$'\e[1;35m'
fg_lcyan=$'\e[1;36m'
fg_white=$'\e[1;37m'
# Text Background Colors
bg_red=$'\e[0;41m'
bg_green=$'\e[0;42m'
bg_brown=$'\e[0;43m'
bg_blue=$'\e[0;44m'
bg_purple=$'\e[0;45m'
bg_cyan=$'\e[0;46m'
bg_gray=$'\e[0;47m'

# root check for prompt character and color
if [[ "$USER" == sudo ]]; then
   c_prompt="${fg_red}$udo"
else
   c_prompt="${fg_black}$"
fi

# some lovely escaping around colours to prevent tab completion indenting randomly
export PS1="${fg_green}%d
${c_prompt} "