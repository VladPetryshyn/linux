# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.

# Path to your oh-my-zsh installation.
export ZSH="/home/vlad/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="amuse"
# Add wisely, as too many plugins slow down shell startup.
plugins=(git archlinux docker  fzf man  sudo zsh-completions zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration

# export ANDROID_SDK_ROOT=$HOME/Android/Sdk
# export PATH=$PATH:$ANDROID_SDK_ROOT/emulator
# export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools

# alias tmuxcheatsheet="chromium https://tmuxcheatsheet.com/"
alias mux='pgrep -vx tmux > /dev/null && \
		tmux new -d -s delete-me && \
		tmux run-shell ~/.tmux/plugins/tmux-resurrect/scripts/restore.sh && \
		tmux kill-session -t delete-me && \
		tmux attach || tmux attach'
# alias yad = "yarn add"
# alias yadd = 'yarn add -D'
# alias nps = 'npm run start'
# alias npi = 'npm install'
# alias npid = 'npm install -D'
# alias pns = 'pnpm run start'
# alias pna = 'pnpm add'
# alias pnad = 'pnpm add -D'
# alias pac = "pacman"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Completion for kitty
kitty + complete setup zsh | source /dev/stdin

export GO111MODULE=on
export GOPATH="/home/vlad/Documents/projects/go"
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH

# workman

if type rg &> /dev/null; then
  export FZF_DEFAULT_COMMAND='rg --files'
  export FZF_DEFAULT_OPTS='-m --height 50% --border'
fi

alias ls="lsd"
alias cleanclip="touch /tmp/blank; xclip -selection clipboard /tmp/blank; rm /tmp/blank"
eval "$(zoxide init zsh)"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export EDITOR='vim'
export PASSWORD_STORE_DIR=/home/vlad/.config/passwords
# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export NODE_OPTIONS="--max-old-space-size=8192 --experimental-vm-modules"
export DOCKER_CLIENT_TIMEOUT=120
export COMPOSE_HTTP_TIMEOUT=120
export PASSWORD_STORE_DIR=/home/vlad/.syncing/Pass
alias c="__zoxide_z"
# alias wpm="python -m wpm"

# golang
export PATH=$PATH:/usr/local/go/bin

# kotlin
export PATH=$PATH:/home/vlad/Downloads/kotlin-native-linux-x86_64-1.9.0/bin
export PATH=$PATH:/home/vlad/Downloads/idea/bin
# Created by `pipx` on 2024-01-18 11:55:59
export PATH="$PATH:/home/vlad/.local/bin"
