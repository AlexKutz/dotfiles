#
# ~/.bashrc
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# ls aliaces
alias ls='ls --color=auto -Fh --group-directories-first --no-group'
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

alias feh="feh"

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
