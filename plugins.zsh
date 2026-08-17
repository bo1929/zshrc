PATH_ANTIGEN="${HOME}/.config/zsh/antigen.zsh"
if [ ! -f ${PATH_ANTIGEN} ]; then
      curl -L git.io/antigen > ${PATH_ANTIGEN}
fi

ADOTDIR="${HOME}/.config/zsh/antigen"
source ${PATH_ANTIGEN}

typeset -ga ANTIGEN_CHECK_FILES
ANTIGEN_CHECK_FILES=()
if [[ -f "${ZDOTDIR:-$HOME/.config/zsh}/.zshrc" ]]; then
  ANTIGEN_CHECK_FILES+=("${ZDOTDIR:-$HOME/.config/zsh}/.zshrc")
fi
if [[ -f "${ZDOTDIR:-$HOME/.config/zsh}/plugins.zsh" ]]; then
  ANTIGEN_CHECK_FILES+=("${ZDOTDIR:-$HOME/.config/zsh}/plugins.zsh")
fi
if [[ -f "${HOME}/.zshrc" ]]; then
  ANTIGEN_CHECK_FILES+=("${HOME}/.zshrc")
fi

# == zsh-users Plugins ==
# Autosuggestions.
antigen bundle zsh-users/zsh-autosuggestions
# Extended completions.
antigen bundle zsh-users/zsh-completions
# ==  ==

# I'm done...
antigen apply
