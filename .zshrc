# Setup zplug
if [[ ! -d ~/.zplug ]]; then
  git clone https://github.com/zplug/zplug ~/.zplug
  source ~/.zplug/init.zsh && zplug update --self
fi

source ~/.zplug/init.zsh

zplug check || zplug install
zplug load

# Load aliases
alias bb="brew bundle --global"
alias cot='colorize_via_pygmentize'
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

# Functions
function dbash() {
  docker exec -it $(docker ps -aqf "name=$1") bash
}

function drme() {
  eval $(docker-machine env $@)
}

compdef __docker-machine_hosts_running drme

function zsh_docker_machine_active() {
  local docker_machine="$DOCKER_MACHINE_NAME"

  if [[ -n "$docker_machine" ]]; then
    echo -n "\uF21A $docker_machine%{%f%}"
  fi
}

function zsh_terraform_env_active() {
  local terraform_env=$(terraform workspace show 2> /dev/null)
  if [[ -n $terraform_env ]] && [[ $terraform_env != 'default' ]]; then
    echo -n "\uF0EE $terraform_env%{%f%}"
  fi
}

# Setup key bindings
bindkey -e  ## emacs key bindings

bindkey '^[[A' up-line-or-search
bindkey '^[[B' down-line-or-search
bindkey '^[^[[C' emacs-forward-word
bindkey '^[^[[D' emacs-backward-word

# Setup tool links
source ~/.iterm2_shell_integration.zsh

eval "$(thefuck --alias)"

if zplug check Vifon/deer; then
  autoload -U deer
  zle -N deer
  bindkey '\ek' deer
fi

# Bash completion (for govc)
autoload -U bashcompinit && bashcompinit

if zplug check b4b4r07/enhancd; then
  # setting if enhancd is available
  export ENHANCD_FILTER=fzy
fi
