# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

#Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="miloshadzic"
ZSH_THEME="pure"

export EDITOR='vim'
export SHELL='/usr/local/Cellar/zsh/5.0.7/bin/zsh'


#Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git brew ruby marked2)

source $ZSH/oh-my-zsh.sh
#source my alias file
source $HOME/.alias

#source functions
source $HOME/.functions

# Customize to your needs...
export PATH=/Users/natedickson/tmux:/opt/local/bin:/opt/local/sbin:/Users/natedickson/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/opt/local/bin:/usr/local/git/bin:/usr/local/share/npm/bin

# Java stuff. Ugh.
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_45.jdk/Contents/Home

source ~/.rvm/scripts/rvm
rvm use default


### Added by the Heroku Toolbelt
#export PATH="/usr/local/heroku/bin:$PATH"
