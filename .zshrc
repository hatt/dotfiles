zmodload zsh/zprof

source ~/.zplug/init.zsh

zplug check || zplug install
zplug load

alias ls="gls --color=auto"
alias du="gdu"
alias df="gdf"
alias sed="gsed"
alias date="gdate"
alias tree="tree -C"
alias updatedb="/usr/libexec/locate.updatedb"
alias git="hub"

bindkey -e  ## emacs key bindings

bindkey '^[[A' up-line-or-search
bindkey '^[[B' down-line-or-search
bindkey '^[^[[C' emacs-forward-word
bindkey '^[^[[D' emacs-backward-word
