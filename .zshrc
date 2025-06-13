# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

HISTFILE=$HOME/.zsh-history
HISTSIZE=1000000
SAVEHIST=1000000
setopt share_history

export PATH=$PATH:$HOME/.local/bin

eval "$(sheldon source)"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export PATH="$PATH:/opt/nvim"
alias vim="nvim"

alias "ls"="lsd"
alias "l"="lsd"
alias "ll"="lsd -l"
alias "la"="lsd -a"
alias "lla"="lsd -la"
alias "lt"="lsd --tree"

alias "cat"="batcat"

alias "sage"="docker run -it sagemath/sagemath:latest"

export GPG_TTY=$(tty)

