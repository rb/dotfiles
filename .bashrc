# Set locale
LANG="en_US.UTF-8"
LANGUAGE="en"
LC_ALL="en_US.UTF-8"
LC_CTYPE="en_US.UTF-8"
export LANG LANGUAGE LC_ALL LC_CTYPE


# Set editor and pager
EDITOR="vim"
LESSHISTFILE="-"
PAGER="less -R"
VISUAL="vim"
export EDITOR LESSHISTFILE PAGER VISUAL


# Configure shell history
HISTCONTROL="ignoreboth"
HISTFILE="$HOME/.history"
HISTFILESIZE=10000
HISTSIZE=10000
SAVEHIST=10000
export HISTCONTROL HISTFILE HISTFILESIZE HISTSIZE SAVEHIST


# Keep Homebrew Cask in /usr/local
export HOMEBREW_CASK_OPTS="--caskroom=/usr/local/Caskroom"


# Initialize chruby, enable auto-switching
if [ -e "/usr/local/opt/chruby/share/chruby/chruby.sh" ]; then
  source /usr/local/opt/chruby/share/chruby/chruby.sh
fi

if [ -e "/usr/local/opt/chruby/share/chruby/auto.sh" ]; then
  source /usr/local/opt/chruby/share/chruby/auto.sh
fi


# Set Git autocompletion, prompt
if [ -e "/usr/local/etc/bash_completion.d/git-completion.bash" ]; then
  source /usr/local/etc/bash_completion.d/git-completion.bash
fi

if [ -e "/usr/local/etc/bash_completion.d/git-prompt.sh" ]; then
  source /usr/local/etc/bash_completion.d/git-prompt.sh
fi

GIT_PS1_SHOWDIRTYSTATE=*
PS1='${PWD##*/}$(__git_ps1 "@%s") ¶ '
export GIT_PS1_SHOWDIRTYSTATE PS1
