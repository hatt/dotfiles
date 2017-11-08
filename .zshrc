source ~/.zplug/init.zsh

zplug check || zplug install
zplug load

alias bb="brew bundle --global"
alias cot='colorize'
alias date='gdate'
alias df='gdf'
alias dm='docker-machine'
alias du='gdu'
alias git='hub'
alias ls='gls --color=auto'
alias ll="ls -lah"
alias sed='gsed'
alias tree='tree -C'
alias updatedb='/usr/libexec/locate.updatedb'

alias dex='docker exec -i -t'
alias drma='docker rm $(docker ps -aq)'
alias drmi='docker rmi $(docker images -q -f "dangling=true")'
alias dmls='docker-machine ls'

function dbash() {
  docker exec -it $(docker ps -aqf "name=$1") bash
}

function drme() {
  eval $(docker-machine env $@)
}

compdef __docker-machine_hosts_running drme

bindkey -e  ## emacs key bindings

bindkey '^[[A' up-line-or-search
bindkey '^[[B' down-line-or-search
bindkey '^[^[[C' emacs-forward-word
bindkey '^[^[[D' emacs-backward-word

function zsh_docker_machine_active() {
  local docker_machine="$DOCKER_MACHINE_NAME"

  if [[ -n "$docker_machine" ]]; then
    echo -n "\uF21A $docker_machine%{%f%}"
  fi
}

function zsh_terraform_env_active() {
  local terraform_env=$(cat .terraform/environment 2> /dev/null)
  if [[ -n $terraform_env ]]; then
    echo -n "\uF0EE $terraform_env%{%f%}"
  fi
}
