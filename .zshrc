# Source misc.
ZSH_MISC_PATH="${HOME}/.config/zsh/misc.sh" 
if [[ -e ${ZSH_MISC_PATH} ]]; then
  source ${ZSH_MISC_PATH}
fi

# Source dir_colors.
ZSH_DIRCOLORS_PATH="${HOME}/.config/zsh/.dircolors"
if [[ -r "${ZSH_DIRCOLORS_PATH}" ]]; then
  if (( $+commands[gdircolors] )); then
    eval "$(gdircolors -b "${ZSH_DIRCOLORS_PATH}")"
  elif (( $+commands[dircolors] )); then
    eval "$(dircolors -b "${ZSH_DIRCOLORS_PATH}")"
  fi
fi

# Source aliases:
ZSH_ALIASES_PATH="${HOME}/.config/zsh/aliases.zsh" 
if [[ -e ${ZSH_ALIASES_PATH} ]]; then
  source ${ZSH_ALIASES_PATH}
fi

# Source main configuration.
ZSH_MAIN_PATH="${HOME}/.config/zsh/main.zsh" 
if [[ -e ${ZSH_MAIN_PATH} ]]; then
  source ${ZSH_MAIN_PATH}
fi

# Source plugins.
ZSH_PLUGINS_PATH="${HOME}/.config/zsh/plugins.zsh" 
if [[ -e ${ZSH_PLUGINS_PATH} ]]; then
  source ${ZSH_PLUGINS_PATH}
fi

# Completion; one compinit only.
ZSH_COMPLETION_PATH="${HOME}/.config/zsh/completion.zsh"
if [[ -e ${ZSH_COMPLETION_PATH} ]]; then
  source ${ZSH_COMPLETION_PATH}
fi

# Source local config.
ZSH_CFG_PATH="${HOME}/.zshrc" 
if [[ -e ${ZSH_CFG_PATH} ]]; then
  source ${ZSH_CFG_PATH}
fi

# Zsh-Syntax-Highlighting, clone if missing; this must be sourced last.
ZSH_SYNTAX_HIGHLIGHTING_DIR="${HOME}/.config/zsh/zsh-syntax-highlighting"
if [ ! -d ${ZSH_SYNTAX_HIGHLIGHTING_DIR} ]; then
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git \
  ${ZSH_SYNTAX_HIGHLIGHTING_DIR}
fi
ZSH_SYNTAX_HIGHLIGHTING_PATH="${ZSH_SYNTAX_HIGHLIGHTING_DIR}/zsh-syntax-highlighting.zsh"
if [[ -e ${ZSH_SYNTAX_HIGHLIGHTING_PATH} ]]; then
  source ${ZSH_SYNTAX_HIGHLIGHTING_PATH}
fi
