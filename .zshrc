# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

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
plugins=(git nvm tmux tmuxinator)

# User configuration

export PATH=$HOME/bin:/usr/local/bin:$PATH
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=en_US.UTF-8

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

alias cdcode='cd ~/code'
alias cdtv='cd ~/code/tv'
alias cdsohu='cd ~/code/sohu/upload'
alias cdp='cd ~/code/player'
alias cdd='cd ~/Dropbox'
alias nconfig='mvim /usr/local/nginx/conf/nginx.conf'
alias shadow='nohup ~/shadow/shadowsocks &'

# alias m173='mount -t smbfs //webs:sohu.hd@10.10.78.10/173 ~/173/'
# alias webs='mount -t smbfs //webs:sohu.hd@10.10.78.10/webs ~/webs/'

alias m173='mount -t smbfs //webs:sohu.hd@10.10.78.10/173 ~/173/'
alias webs='mount -t smbfs //webs:sohu.hd@10.10.78.10/webs ~/webs/'
alias www='mount -t smbfs //webs:sohu.hd@10.10.78.10/www ~/www/'

#alias rproxy='sudo forever start ~/code/node-proxy/app.js ~/code/node-proxy/config/config.js'
#alias rproxy='sudo forever start ~/code/node-proxy/app.js ~/.cfg/rproxy.conf.js'
alias rproxy='sudo pm2 start ~/code/node-proxy/app.js -- ~/.cfg/rproxy.conf.js'
alias dns='sudo forever start ~/code/node-dnsproxy/dns.js'

alias min='grunt pulses:min'
alias dist='grunt pulses:ftp-dist'
alias ftpt='grunt pulses:ftp-test'

alias -s js=mvim
alias -s html=mvim
alias -s css=mvim
alias -s scss=mvim

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

#if [[ ! $TERM =~ screen ]]; then
#    exec tmux new -s work
#    #exec mux start work
#fi
