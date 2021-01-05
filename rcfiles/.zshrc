#If you come from bash you might have to change your $PATH.
export PATH=$HOME/.config/shfiles:$HOME/bin:/usr/local/bin:$PATH
#export PATH=/usr/local/bin:$PATH

#clangd path
    #If you need to have llvm first in your PATH run:
    #export PATH="/usr/local/opt/llvm/bin:$PATH"
    #To use the bundled libc++ please add the following LDFLAGS:
      #LDFLAGS="-L/usr/local/opt/llvm/lib -Wl,-rpath,/usr/local/opt/llvm/lib"
    #For compilers to find libffi you may need to set:
      #export LDFLAGS="-L/usr/local/opt/libffi/lib"
    #For compilers to find llvm you may need to set:
      #export LDFLAGS="-L/usr/local/opt/llvm/lib"
      #export CPPFLAGS="-I/usr/local/opt/llvm/include"
    
#ccls path
    #/usr/local/Cellar/ccls/

#Path to your oh-my-zsh installation.
export ZSH="/Users/yt/.oh-my-zsh"

#$HOME/.oh-my-zsh/themes/
ZSH_THEME="funkygnzh"


#display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"
KEYTIMEOUT=1

source $ZSH/oh-my-zsh.sh

# manually set language environment
export LANG=en_US.UTF-8

#export TERM=screen-256color

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

alias vim="nvim"
alias ogvim="vim"

#export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/noghde_modules/.bin:$PATH"

# Case-sensitive completion must be off. _ and - will be interchangeable.
    # CASE_SENSITIVE="true"
    # HYPHEN_INSENSITIVE="true"

# bi-weekly auto-update checks.
    # DISABLE_AUTO_UPDATE="true"
    # DISABLE_UPDATE_PROMPT="true"
    # export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

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

# User configuration
# export MANPATH="/usr/local/man:$MANPATH"

# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# plugins=(git)

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

#sun's aliase
alias icloud="cd  ~/Library/Mobile\ Documents/com~apple~CloudDocs/"
alias zshrc="nvim ~/.zshrc"
alias bashrc="nvim ~/.bashrc"

export CONFIG="$HOME/.config"
alias cdconfig="cd ~/.config"
alias nvimrc="nvim ~/.config/nvim/init.vim"
alias cdnvim="cd ~/.config/nvim"
#alias cdvim="cd ~/.vim"
#alias vimrc="vim ~/.vimrc"
nvim="~/.config/nvim"


alias ll='ls -lF'
alias la='ls -laF'
alias l='ls -CF'

alias rm='rm -iv'
alias cp='cp -iv'
alias mv='mv -iv'

alias gitls='git ls-files'
alias rmswp='rm ~/.backup/*.swp'

alias gcloudplt='gcloud compute ssh syk2145@plt-b'
alias cuitvnc='ssh -C -L 5910:localhost:5903 syk2145@cadpc34.ee.columbia.edu'

alias diary='diary.sh'

function mkcd() { mkdir $1; cd $1 ;}

#Haskell path
[ -f "/Users/yt/.ghcup/env" ] && source "/Users/yt/.ghcup/env" # ghcup-env

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/yt/google-cloud-sdk/path.zsh.inc' ]; then 
    . '/Users/yt/google-cloud-sdk/path.zsh.inc'; 
fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/yt/google-cloud-sdk/completion.zsh.inc' ]; then 
    . '/Users/yt/google-cloud-sdk/completion.zsh.inc'; 
fi

#pyenv path setting
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

export PYENV_ROOT=/Users/yt/.pyenv/shims/python
