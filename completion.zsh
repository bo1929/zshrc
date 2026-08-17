# Initialize completion once, after plugins have added their fpath entries.
# Antigen otherwise defers a second compinit to precmd (and used to prompt
# about insecure dirs / dummy out compdef until the first prompt).
autoload -Uz add-zsh-hook compinit
add-zsh-hook -D precmd _antigen_compinit
compinit -i -d "${HOME}/.config/zsh/.zcompdump"

# GNU coreutils names on macOS should use the same completers as ls/dir.
(( $+commands[gls] )) && compdef gls=ls 2>/dev/null
(( $+commands[gdir] )) && compdef gdir=dir 2>/dev/null
(( $+commands[gvdir] )) && compdef gvdir=vdir 2>/dev/null
