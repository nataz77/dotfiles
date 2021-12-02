if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="/home/simone/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="dd.mm.yyyy"
plugins=(git bundler dotenv command-not-found dotnet lxd chucknorris tmux ubuntu ufw kubetail chucknorris zsh-better-npm-completion)
source $ZSH/oh-my-zsh.sh
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
export GOPATH=/home/simone/gocode
export PATH="${PATH}:${HOME}/.krew/bin:${HOME}/.local/bin:${HOME}/bin"
source ~/az.completion

source ~/youtubedl.sh
eval "$(starship init zsh)"
source ~/opensslext.sh
source $HOME/.cargo/env
source ~/tarext.sh
if [[ ! -f ~/.zpm/zpm.zsh ]]; then
  git clone --recursive https://github.com/zpm-zsh/zpm ~/.zpm
fi
source ~/.zpm/zpm.zsh
