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
#alias brew="http_proxy=http://127.0.0.1:3128 brew"

bindkey -e  ## emacs key bindings

bindkey '^[[A' up-line-or-search
bindkey '^[[B' down-line-or-search
bindkey '^[^[[C' emacs-forward-word
bindkey '^[^[[D' emacs-backward-word

function zsh_docker_machine_active() {
  local docker_machine="$DOCKER_MACHINE_NAME"

  if [[ -n "$docker_machine" ]]; then
#    echo -n "\uE7B0 $docker_machine%{%f%}"
    echo -n "\uF21A $docker_machine%{%f%}"
  fi
}
