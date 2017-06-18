# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd extendedglob nomatch
unsetopt beep notify
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/wolke/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall


# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
ZSH_THEME="nanotech"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

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
plugins=(git cp screen z)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH=$HOME/bin:/usr/local/bin:$PATH
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


##################
##-- My Stuff --##
##################

##-- man in vim --##
vman() {
    #run command SuperMan and add opend manual to arglist 
    #this is nessasary to prevent NERDTree from pop-up
    vim -c "SuperMan $*" -c "argadd %" 

    if [ "$?" != "0" ]; then
        echo "No manual entry for $*"
    fi
}

setopt interactivecomments #activate the bash-syle comments, you can run a command with a comment

##-- latex bib path --##
export BIBINPUTS=/bib/:./

##-- vim color support --##
export TERM=xterm-256color

##-- generic open cmd --##
alias o='gnome-open'

##-- git shortcuts --##
alias gs='git status'
#alias gp='git push' #added by default
alias gpull='git pull'
alias gc='git commit'
alias ga='git add'
alias gl='git log'
alias gd='git diff'

##-- vim shortcuts --##
alias v="execute_me 'nvr --remote-send \"<C-\\><C-n>:call DoLcdToCurrentPath()<CR>:edit \$2<CR>\"'"
alias vs="execute_me 'nvr --remote-send \"<C-\\><C-n>:call DoLcdToCurrentPath()<CR>:split \$2<CR>\"'"
alias vv="execute_me 'nvr --remote-send \"<C-\\><C-n>:call DoLcdToCurrentPath()<CR>:vsplit \$2<CR>\"'"
alias vt="execute_me 'nvr --remote-send \"<C-\\><C-n>:call DoLcdToCurrentPath()<CR>:tabe \$2<CR>\"'"
alias vg='nvim-qt'

##-- other stuff --##
alias logout='gnome-session-quit'
alias rm='trash'

##-- Keyboard --##
numlockx on # actrivate the nummber block 

##-- Makefile --##
#run make with flag -j<number of processors>
export MAKEFLAGS="-j$(cat /proc/cpuinfo | grep processor | wc | awk '{ print $1 }')"

##-- python auto environement --##
source ~/.autoenv/activate.sh

##-- folder for go scripts --##
export GOPATH=~/gocode #needed by the go compiler e.g. go get github.com/svent/sift
