# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="$HOME/.npm-packages/bin:$PATH"
export PATH="$HOME/.node/bin:$PATH"
export PATH="$HOME/usr/local/bin:$PATH"
# Path to your oh-my-zsh installation.
export ZSH="/Users/acolclough/.oh-my-zsh"

ZSH_DISABLE_COMPFIX="true"


# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="cobalt2"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git extract osx node npm brew sudo yarn cloudapp fzf)

source $ZSH/oh-my-zsh.sh
# include Z yay
. ~/z.sh

# User configuration

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
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zconf="code ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Alias for only doing git commands in the .dotfiles dir
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# Aliases up in ur base
# top
alias cpu='top -o cpu'
alias mem='top -o rsize' # memory

# Get your current public IP
alias ip="curl icanhazip.com"

# Parenting changing perms on / #
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'

alias ll='ls -FGlAhpi'
alias flush='rm -rf node_modules/ && yarn'
alias lnpds='cd node_modules/ && rm -rf powerschool-design-system/ && ln -s ../../powerschool-design-system && ..'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
# -> Prevents accidentally clobbering files.
alias mkdir='mkdir -p'

alias ports='netstat -tulanp'

alias ben='echo "Daddy loves Ben!!!"'
alias daddy='echo "Ben loves Daddy!!!"'
alias mommy='echo "Daddy loves Mommy!!!"'
alias elliott='echo "Ben loves Elliott!!!"'
alias h='history'
alias j='jobs -l'
alias which='type -a'
# alias ..='cd ..'
# alias ...='cd ../..'
# alias ....='cd ../../..'
# alias .....='cd ../../../..'
alias src='cd ~/src'
alias yup='echo "Fo real, son. Fo real."'


alias pm2go='cd ~/src/cp/ && pm2 start ecosystem.json && pm2 monit'
alias pm2stop='pm2 stop all'

alias gs='git status'
alias gaa='git add .'
alias gp='git push'
alias gl='git pull'
alias ghp='git subtree push --prefix public origin gh-pages'
alias gg='git log --oneline --abbrev-commit --all --graph --decorate --color'
alias gcd='git checkout dist/ && git checkout develop'


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Put this in your .zshrc or .bashrc file
# Install `tree` first — brew install tree
function t() {
  # Defaults to 3 levels deep, do more with `t 5` or `t 1`
  # pass additional args after
  tree -I '.git|node_modules|bower_components|.DS_Store' --dirsfirst --filelimit 15 -L ${1:-3} -aC $2
}

alias t=t
