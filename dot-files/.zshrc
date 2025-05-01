# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
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


# The Fuck
eval $(thefuck --alias)
source $ZSH/oh-my-zsh.sh


# Fuzzy Findi
source <(fzf --zsh)

# Zoxide

eval "$(zoxide init zsh)"

# User configuration

## OSX Specific - Toogle Show/Hide Hidden files in Finder
alias show="defaults write com.apple.finder AppleShowAllFiles YES; killall Finder"
alias hide="defaults write com.apple.finder AppleShowAllFiles NO; killall Finder"

# Quick Edits
alias editrc="vim ~/.zshrc"
alias makerc="source ~/.zshrc"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion


# Python Development
alias pip='pip3'
alias python='python3'

# Java
export PATH="/opt/homebrew/opt/openjdk@21/bin:$PATH"
export JAVA_HOME="/opt/homebrew/opt/openjdk@21/libexec/openjdk.jdk/Contents/Home"


# Docker
alias dockerk='docker stop $(docker ps -a -q); docker rm $(docker ps -a -q)'

# Kubeconfig
# export KUBECONFIG=~/.kube/config:~/.kube/russell:

# Terraform
alias tf='terraform'
alias tfyolo='terraform apply --auto-approve'

# Useful Stuff
alias myip="curl ifconfig.me/ip"
alias rmkh="rm -f ~/.ssh/known_hosts"
alias netshoot="kubectl run tmp-shell --rm -i --tty --image nicolaka/netshoot"

# Git
alias grmd='git rm $(git ls-files --deleted)'

# LSD
alias ls='lsd'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'

# Ghostty
alias ghost='ghostty'
alias ghost-themes='ghostty +list-themes'
alias ghost-fonts='ghostty +list-fonts'
alias ghost-edit='vim ~/.config/ghostty/config'
alias ghost-source='source ~/.config/ghostty/config'

### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH="/Users/russell/.rd/bin:$PATH"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)

# Zsh Syntax Highlighting & Autosuggestions
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# ZSH Auto Suggestions Fix
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#586e75"
