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

# ========== 【产物清理】最常用 ==========
alias clean-dist='rm -rf dist build .next .nuxt .turbo .cache out .parcel-cache'
# 彻底清：删掉 node_modules + lock（谨慎）
alias clean-all='rm -rf node_modules && rm -f package-lock.json pnpm-lock.yaml yarn.lock'
# 只清 vite 的缓存
alias clean-vite='rm -rf node_modules/.vite'

# ========== 【端口/进程】前端跑服务经常端口占用 ==========
# 用法 killport 3000
alias killport='f() { lsof -i :$1 -sTCP:LISTEN -t | xargs -r kill -9; };f'
# 快速查谁占用端口
alias findport='f() { lsof -i :$1; };f'

# ========== 【打包产物预览 & 体积分析】 ==========
# 预览 dist，8080端口
alias preview-dist='cd dist && python3 -m http.server 8080'
# 查找dist里大于 500k 的 js/css，找大包
alias big-bundle='find ./dist -type f \( -name "*.js" -o -name "*.css" \) -size +500k -ls | sort -nrk7'
# 统计dist总大小
alias size-dist='du -sh dist'

# ========== 【接口调试 curl + json美化（依赖jq）】 ==========
alias cj='curl -s | jq .'
alias cjpost='f() { curl -s -X POST -H "Content-Type:application/json" -d "$2" $1 | jq .; };f'
# 示例：cjpost https://xxx/api/login '{"user":"a"}'

# ========== 【Git 前端规范提交，非常省事】 ==========
alias gfeat='git add . && git commit -m "feat: "'
alias gfix='git add . && git commit -m "fix: "'
alias gdocs='git add . && git commit -m "docs: "'
alias gref='git add . && git commit -m "refactor: "'
alias gstyle='git add . && git commit -m "style: "'
alias gchore='git add . && git commit -m "chore: "'
# 使用方式： gfeat "新增登录页"

# ========== 【包管理器快捷（pnpm优先，现在前端主流）】 ==========
alias pi='pnpm install'
alias pr='pnpm run'
alias pd='pnpm dev'
alias pb='pnpm build'
alias ps='pnpm serve'
alias pu='pnpm update'
# npm 备用，如果你混用
alias ni='npm install'
alias nr='npm run'
alias nd='npm run dev'
alias nb='npm run build'

# ========== 【图片资源处理（需要 pngquant jpegoptim）】 ==========
# 压缩当前目录所有图片
alias img-min='find . -maxdepth 3 -name "*.png" -exec pngquant --quality=70-85 --force --ext .png {} \; && find . -maxdepth 3 -name "*.jpg" -exec jpegoptim --max=85 {} \;'

# ========== 【monorepo 辅助，turborepo 常用】 ==========
# 递归查找所有 node_modules
alias scan-nm='find . -name "node_modules" -type d -prune'
# 一键删除所有子包 node_modules（monorepo 大扫除，慎重！）
alias clean-monorepo='find . -name "node_modules" -type d -prune -exec rm -rf {} \;'

# ========== 【其他小工具】 ==========
# 打开当前目录
alias op='open .'
# 格式化当前目录所有json（依赖jq）
alias fmt-json='find . -name "*.json" -exec sh -c "jq . {} > {}.tmp && mv {}.tmp {}" \;'
# 查看文件编码
alias enca='file -I'


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









