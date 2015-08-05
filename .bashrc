# Set editor
export EDITOR=vi

# Configure shell history
export HISTCONTROL=erasedups
export HISTSIZE=10000
export HISTFILE=$HOME/.history
export SAVEHIST=$HISTSIZE

# Place `less` history in ~/tmp
export LESSHISTFILE=$HOME/tmp/.lesshst

# Keep Homebrew Cask in /usr/local
export HOMEBREW_CASK_OPTS="--caskroom=/usr/local/Caskroom"

function lack() {
  ack --group --color $* | less -r +k
}

# chruby setup, auto-switching
if [ -e "/usr/local/opt/chruby/share/chruby/chruby.sh" ]; then
  source /usr/local/opt/chruby/share/chruby/chruby.sh
fi
if [ -e "/usr/local/opt/chruby/share/chruby/auto.sh" ]; then
  source /usr/local/opt/chruby/share/chruby/auto.sh
fi

# git autocompletion, prompt
if [ -e "/usr/local/etc/bash_completion.d/git-completion.bash" ]; then
  source /usr/local/etc/bash_completion.d/git-completion.bash
fi
if [ -e "/usr/local/etc/bash_completion.d/git-prompt.sh" ]; then
  source /usr/local/etc/bash_completion.d/git-prompt.sh
fi

PS1='${PWD##*/}$(__git_ps1 "@%s") ¶ '
GIT_PS1_SHOWDIRTYSTATE=*
