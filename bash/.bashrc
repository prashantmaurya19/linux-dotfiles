# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples
# eval "$(ssh-agent -s)"
# ssh-add ~/.ssh/id_ed25519

eval "$(starship init bash)"


# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

alias git-push-main='git push origin main'
alias git-commit='git add . && git commit -m'
alias git-dev='git add . && git commit -m "dev : some changes"'
alias git-add='git add . && git commit -m "add : some addition"'
alias git-fix='git add . && git commit -m "add : some fixes"'
alias git-dev-push='git add . && git commit -m "dev : some changes" && git push origin main'
alias git-add-push='git add . && git commit -m "add : some addition" && git push origin main'
alias git-fix-push='git add . && git commit -m "add : some fixes" && git push origin main'
alias fcd='cd "$(find ~/.local/ ~/Documents/ ~/Downloads/ \( -name "snap" -o -name ".cache" -o -name ".yarn" -o -name ".m2" -o -name ".fonts" -o -name ".npm" -o -name "AppData" -o -name "mason" -o -name ".git" -o -name "fnm" -o -name "target" -o -name "node_modules" \) -prune -o -type d -print | fzf)"'
alias fcdv='. ~/Documents/linux-dotfiles/scripts/cd_and_open_dir_in_nvim.sh'
alias fv='nvim "$(find ~ \( -name "snap" -o -name ".cache" -o -name ".yarn" -o -name ".m2" -o -name ".fonts" -o -name ".npm" -o -name "AppData" -o -name "mason" -o -name ".git" -o -name "fnm" -o -name "target" -o -name "node_modules" \) -prune -o -type f -print | fzf)"'
alias dir='lsd -a -1'
alias chrome='google-chrome'
alias v='nvim'
alias vs='nvim -S s.vim'
alias y='yazi'

# bind -x '"\e,":"cd \"$(find ~/wellpapers/ ~/.config/ ~/Documents/ ~/Downloads/ -type d -print | fzf)\""'
bind -x '"\e,":"fcd"'
bind -x '"\e.":"fv"'

export EDITOR="nvim"
export PATH=$PATH:/usr/bin/zig/
export PATH=$PATH:~/nvim/bin/
export XDG_DATA_DIRS=$XDG_DATA_DIRS:/var/lib/flatpak/exports/share
export XDG_DATA_DIRS=$XDG_DATA_DIRS:/home/prashant/.local/share/flatpak/exports/share
export XAUTHORITY=$HOME/.Xauthority


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
# __conda_setup="$('/home/prashant/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
# if [ $? -eq 0 ]; then
#     eval "$__conda_setup"
# else
#     if [ -f "/home/prashant/miniconda3/etc/profile.d/conda.sh" ]; then
#         . "/home/prashant/miniconda3/etc/profile.d/conda.sh"
#     else
#         export PATH="/home/prashant/miniconda3/bin:$PATH"
#     fi
# fi
# unset __conda_setup
# <<< conda initialize <<<

# conda activate

# fnm
FNM_PATH="/home/prashant/.local/share/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="$FNM_PATH:$PATH"
  eval "`fnm env`"
fi
