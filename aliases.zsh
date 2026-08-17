# Colorize the ls output.
if (( $+commands[gls] )); then
  alias ls='gls --color=auto'
  alias ll='gls -alF --color=auto'
  alias la='gls -A --color=auto'
  alias lh='gls -d .* --color=auto'
  alias l='gls -CF --color=auto'
else
  alias ls='ls --color=auto'
  alias ll='ls -alF --color=auto'
  alias la='ls -A --color=auto'
  alias lh='ls -d .* --color=auto'
  alias l='ls -CF --color=auto'
fi

if (( $+commands[gdir] )); then
  alias dir='gdir --color=auto'
  alias vdir='gvdir --color=auto'
else
  alias dir='dir --color=auto'
  alias vdir='vdir --color=auto'
fi

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# =====================

mvdir() {
  mkdir -p "${@: -1}" && mv "$@"
}
