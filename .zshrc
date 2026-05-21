# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/ox1cc4/.oh-my-zsh"

# ZSH_THEME="robbyrussell"
#ZSH_THEME="ducula"

# alias
alias lz="lazygit"
alias code="code ./"
alias vim="nvim"
alias vi="nvim"
alias python="python3"
alias ..="cd .."
alias open="open ./"

#git
alias gs="git status"
alias gp="git pull"
alias ga="git add ."

#tmux

alias hd="HBuilderX ."

alias zz="nvm use v14.17.6"

alias aa="tmux a -t other"

alias ws="webstorm ."
alias bbb="node z-jenkins.js"

export WEBSTORM=/Applications/WebStorm.app/Contents/MacOS
export PATH=$WEBSTORM:$PATH


#server

#proxy
alias proxy="export https_proxy=http://127.0.0.1:7897 http_proxy=http://127.0.0.1:7897 all_proxy=socks5://127.0.0.1:7897; echo 'Set proxy successfully'"

alias disproxy="unset http_proxy;unset https_proxy;unset all_proxy; echo 'Unset proxy successfully'"
# privoxy

#pluginx
plugins=(
    git
    zsh-syntax-highlighting
    python
    node
    sublime
    bower
    zsh-autosuggestions
    tmux
)


source $ZSH/oh-my-zsh.sh

export PATH="/opt/homebrew/bin:$PATH"

# nvm start
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
# nvm end


export HX_HOME=/Applications/HBuilderX.app/Contents/MacOS/
export PATH=$HX_HOME:$PATH

export NODE_OPTIONS="--max-old-space-size=8192"


# pnpm
export PNPM_HOME="/Users/0x1cc4/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end

export GEM_HOME=$HOME/gemInstallPath

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh



# electron 证书
# export CSC_LINK=""
# export CSC_KEY_PASSWORD=""
export PATH="/usr/local/sbin:$PATH"
___MY_VMOPTIONS_SHELL_FILE="${HOME}/.jetbrains.vmoptions.sh"; if [ -f "${___MY_VMOPTIONS_SHELL_FILE}" ]; then . "${___MY_VMOPTIONS_SHELL_FILE}"; fi
source ~/powerlevel10k/powerlevel10k.zsh-theme
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
eval "$(/opt/homebrew/bin/brew shellenv)"









