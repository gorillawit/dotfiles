# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="random"

# for converting sass to scss or vise versa $ sscv arg arg
function sscv() { sass-convert "$@" "$@" ;}

# sudo gem install  $gi arg
function gi() { sudo gem install "$@" ;}

# Example aliases
alias zcon="st ~/.zshrc"
alias omz="st ~/.oh-my-zsh"

alias ll='ls -la'
alias dt='cd ~/Desktop'
alias dn='cd ~/Downloads'
alias dp='cd ~/Dropbox'
alias wk='cd ~/Dropbox/Workbox'
alias gw='grunt watch'
alias stz='st ~/.zshrc'

# alias to st3 packages
# alias pack3='cd ~/Library/Application\ Support/Sublime\ Text\ 3/Packages'

# git commands
alias gs='git status'
alias ga='git add .'
alias gc='git commit'
alias gco='git checkout'
alias gl='git pull'
alias gp='git push'

# reload after changes
alias rl='source $ZSH/oh-my-zsh.sh'

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git _coffee git-extras git-flow git-hubflow git-remote-branch gitfast github heroku history history-substring-search lol node npm pow ruby sublime vagrant yum _theme)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=$PATH:$HOME/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/git/bin

# Add RVM to PATH for scripting
