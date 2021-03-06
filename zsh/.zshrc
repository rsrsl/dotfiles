# Path to your oh-my-zsh configuration.
ZSH=/opt/oh-my-zsh
ZSH_CUSTOM=$HOME/dotfiles

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="rsrsl"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias pms=/opt/pms/mps

# Google Search function
function search {
w3m "www.google.com/search?q=$(echo $@ | sed 's/ /+/g')"}

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment following line if you want to  shown in the command execution time stamp 
# in the history command output. The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|
# yyyy-mm-dd
# HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# plugins=(git)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration
setopt vi

# Default Programs
export EDITOR="vim"
export PAGER="less"
export BROWSER="firefox"
export MOVPLAY="vlc"
export PICVIEW="feh"
export SNDPLAY="mplayer"
export TERMINAL="xterm"

# File Extesions
for ext in html org php com net no; do alias -s $ext=$BROWSER; done
for ext in txt tex py; do alias -s $ext=$EDITOR; done
for exit in png jpg gif; do alias -s $ext=$PICVIEW; done
for ext in mpg wmv avi mkv; do alias -s $ext=$MOVPLAY; done
for ext in wav mp3 ogg; do alias -s $ext=$SNDPLAY; done

export PATH="/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
# export MANPATH="/usr/local/man:$MANPATH"

# # Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"


PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
