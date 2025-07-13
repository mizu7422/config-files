# ~/.bashrc

# Exit if not running interactively
[[ $- != *i* ]] && return

# Colorful aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'

# Git branch function
parse_git_branch() {
  git branch --show-current 2>/dev/null
}

# Colors for light background
RESET="\[\e[0m\]"
FG_BLACK="\[\e[30m\]"
FG_BLUE="\[\e[34m\]"
FG_GREEN="\[\e[32m\]"
FG_MAGENTA="\[\e[35m\]"
FG_DARKGRAY="\[\e[90m\]"

# Prompt
export PS1="${FG_DARKGRAY}[${FG_BLUE}\w${FG_DARKGRAY}] ${FG_MAGENTA}➤ ${RESET}"

