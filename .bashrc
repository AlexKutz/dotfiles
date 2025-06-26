#
# ~/.bashrc
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# ls aliaces
alias ls='ls --color=auto -Fh --group-directories-first'
alias lsa="ls -A"
alias ll="ls -l"
alias lla="ll -A"
alias l.='ls -d .*'

alias grep='grep --color=auto'

PS1='\[\033[1;32m\][\u \w]\[\033[0m\]\$ '

alias vim=nvim

alias dotfiles='git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'

alias poweroff="sudo poweroff"
alias reboot="sudo reboot"

alias cat='bat --paging=never'
export MANPAGER="sh -c 'sed -u -e \"s/\\x1B\[[0-9;]*m//g; s/.\\x08//g\" | bat -p -lman'"

alias bathelp='bat --plain --language=help'
help() {
  "$@" --help 2>&1 | bathelp
}
batdiff() {
  git diff --name-only --relative --diff-filter=d | xargs bat --diff
}

# Отображать битые сылки красным в ls
export LS_COLORS="$LS_COLORS:or=31"

# Culr weather
# https://github.com/chubin/wttr.in
alias wttr='curl -s "wttr.in/Stara+Syniava?lang=ru" \
   | grep -v "New feature" \
   | grep -v Follow'

alias wttr2='curl -s "v2d.wttr.in/Stara+Syniava" \
   | grep -v "New feature" \
   | grep -v Follow'

# https://github.com/nvbn/thefuck
eval $(thefuck --alias)
