# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"


# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  kubectl
  git
  fzf
  thefuck
  helm
  aws
)

eval $(thefuck --alias)
source $ZSH/oh-my-zsh.sh
source <(fzf --zsh)

## OSX Specific - Toogle Show/Hide Hidden files in Finder
alias show="defaults write com.apple.finder AppleShowAllFiles YES; killall Finder"
alias hide="defaults write com.apple.finder AppleShowAllFiles NO; killall Finder"


# Quick Edits
alias editrc="vim ~/.zshrc"
alias makerc="source ~/.zshrc"

# Java Development
# Deprecated
# export JAVA_8_HOME=/Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home/
# export JAVA_11_HOME=/Library/Java/JavaVirtualMachines/adoptopenjdk-11.jdk/Contents/Home/
# export JAVA_13_HOME=/Library/Java/JavaVirtualMachines/adoptopenjdk-13.jdk/Contents/Home/
# export JAVA_HOME=$JAVA_11_HOME
# alias java8='export JAVA_HOME=$JAVA_8_HOME; java -version'
# alias java11='export JAVA_HOME=$JAVA_11_HOME; java -version'
# alias java13='export JAVA_HOME=$JAVA_13_HOME; java -version'

export PATH="/opt/homebrew/opt/openjdk@21/bin:$PATH"
export JAVA_HOME="/opt/homebrew/opt/openjdk@21/libexec/openjdk.jdk/Contents/Home"

# Node
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && . "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && . "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion


# Python Development
alias pip='pip3'
alias python='python3'

# Docker
alias dockerk='docker stop $(docker ps -a -q); docker rm $(docker ps -a -q)'

# Kubeconfig
# export KUBECONFIG=~/.kube/config:~/.kube/russell:

# Terraform
alias tf='terraform'
alias tfyolo='terraform apply --auto-approve'
# Terraform Log Path
# export TF_LOG=DEBUG
# export TF_LOG_PATH="~/Documents/logs.txt"

# LSD
alias ls='lsd'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'

# Useful Stuff
alias myip="curl ifconfig.me/ip"
alias rmkh="rm -f ~/.ssh/known_hosts"

# Git
alias grmd='git rm $(git ls-files --deleted)'

[[ -s "/Users/russell/.gvm/scripts/gvm" ]] && source "/Users/russell/.gvm/scripts/gvm"

### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH="/Users/russell/.rd/bin:$PATH"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)

# Zsh Syntax Highlighting & Autosuggestions
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh