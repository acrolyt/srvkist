# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="gallois"
#ZSH_THEME="random"
#ZSH_THEME="norm"
ZSH_THEME="acrolyt"
#ZSH_THEME="sunrise"
#ZSH_THEME="gnzh"
#ZSH_THEME="duellj"
#ZSH_THEME="kphoen"
#ZSH_THEME="agnoster"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(themes debian git history npm rvm vagrant docker sublime common-aliases last-working-dir cp excract laravel composer zsh-syntax-highlighting zsh-history-substring-search zsh-autosuggestions)
# copydir copyfile ssh-agent

source $ZSH/oh-my-zsh.sh
# User configuration

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/home/maw/.composer/vendor/bin"
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -la'
alias H="cd ~/"
alias P="cd ~/projects/"
alias S="sudo"
alias damn="sudo !!"
alias ai="sudo apt-get install"
alias au="sudo apt-get update"
alias HS="cd ~/projects/hzm-server-laravel/"
alias HC="cd ~/projects/hzm-client/"
alias vu="vagrant up"
alias vd="vagrant destroy"
alias vh="vagrant halt"
alias vs="vagrant ssh"
alias lo="ls -lah | awk '{k=0;for(i=0;i<=8;i++)k+=((substr(\$1,i+2,1)~/[rwx]/)*2^(8-i));if(k)printf(\" %0o \",k);print}'"
alias lp="stat -c '%A %a %n' *"
alias tf="tail -f"
alias dockerc="docker-compose"
alias dc="docker-compose"
alias docker-composer="docker-compose"

if [ $SSH_AGENT_PID ]; then
    if [[ $(ssh-add -l) != *id_?sa* ]]; then
        ssh-add -t 2h  ## Haltbarkeit von 2 Std.
    fi
fi


autoload -U compinit
compinit

setopt completeinword
autoload select-word-style
select-word-style shell

if [[ -x "`whence -p dircolors`" ]]; then
  eval `dircolors`
  alias ls='ls -F --color=auto'
else
  alias ls='ls -F'
fi

HISTFILE=~/.zhistory
HISTSIZE=SAVEHIST=10000
setopt sharehistory
setopt extendedhistory

# superglobs
setopt extendedglob
unsetopt caseglob

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)

## AUTO SUGGESTION
#source ~/.oh-my-zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# Enable autosuggestions automatically
#zle-line-init() {
#    zle autosuggest-start
#}
zle -N zle-line-init

# use ctrl+t to toggle autosuggestions(hopefully this wont be needed as
# zsh-autosuggestions is designed to be unobtrusive)
bindkey '^T' autosuggest-toggle



# # SUBSTRING SEARCH
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
# # bind UP and DOWN arrow keys
# zmodload zsh/terminfo
# bindkey "$terminfo[kcuu1]" history-substring-search-up
# bindkey "$terminfo[kcud1]" history-substring-search-down

# # bind P and N for EMACS mode
# bindkey -M emacs '^P' history-substring-search-up
# bindkey -M emacs '^N' history-substring-search-down

# # bind k and j for VI mode
# bindkey -M vicmd 'k' history-substring-search-up
# bindkey -M vicmd 'j' history-substring-search-down


#-*-shell-script-*-
# autoload predict-on
# predict-on
# autoload predict-off

# # you may also wish to bind it to some keys...
# zle -N predict-on
# zle -N predict-off
# bindkey '^X1' predict-on
# bindkey '^X2' predict-off
# Setup zsh-autosuggestions

export IS24_VPNUSER=MWegner

#add identities
#ssh-add -K ~/.ssh/id_rsa_priv_acrolyt@gmail.ppk.openssh > /dev/null 2>&1
#ssh-add -K ~/.ssh/mawbytepark > /dev/null 2>&1
