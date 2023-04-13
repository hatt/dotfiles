# Setup zplug
if [[ ! -d ~/.zplug ]]; then
  git clone https://github.com/zplug/zplug ~/.zplug
  source ~/.zplug/init.zsh && zplug update --self
fi

source ~/.zplug/init.zsh

zplug check || zplug install
zplug load

# Define this first so `ls` can use it
export TIME_STYLE="+%a %b %e %H:%M"

# Load aliases
alias bb="brew bundle --global"
alias cot='colorize_via_pygmentize'
alias date='gdate'
alias df='gdf'
alias dm='docker-machine'
alias du='gdu'
alias git='hub'
alias ldd='otool -L'
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

compdef __gitcomp yadm
compdef __docker-machine_hosts_running drme

function zsh_docker_machine_active() {
  local docker_machine="$DOCKER_MACHINE_NAME"

  if [[ -n "$docker_machine" ]]; then
    echo -n "\uF21A $docker_machine%{%f%}"
  fi
}

# Setup key bindings
bindkey -e  ## emacs key bindings

bindkey '^[[A' up-line-or-search
bindkey '^[[B' down-line-or-search
bindkey '^[^[[C' emacs-forward-word
bindkey '^[^[[D' emacs-backward-word

# Mac specifics
if [[ "$OSTYPE" = darwin* ]]; then
  if type brew &> /dev/null; then
    # Export CFLAGS and LDFLAGS
    export CGO_CFLAGS="-I/usr/local/include"
    export CGO_CPPFLAGS="${CGO_CFLAGS}"
    export CGO_CXXFLAGS="${CGO_CFLAGS}"
    export CGO_LDFLAGS="-L/usr/local/lib"
  fi

  if [[ -r "${HOME}/.iterm2_shell_integration.zsh" ]]; then
    source ~/.iterm2_shell_integration.zsh
  fi
fi

# Lazy loading
if type thefuck &> /dev/null; then
  lazy_load_thefuck () {
    unalias fuck
    unfunction lazy_load_thefuck
    eval "$(thefuck --alias)"
  }

  alias fuck=lazy_load_thefuck
fi

if [[ -d "${HOME}/.rbenv" ]]; then
  lazy_load_rbenv () {
    unalias rbenv
    unfunction lazy_load_rbenv
    eval "$(rbenv init -)";
  }

  alias rbenv=lazy_load_rbenv
fi

if [[ -d "${HOME}/.plenv" ]]; then
  lazy_load_plenv () {
    unalias plenv
    unfunction lazy_load_plenv
    eval "$(plenv init -)";
  }

  alias plenv=lazy_load_plenv
fi

if [[ -d "${HOME}/.pyenv" ]]; then
  lazy_load_pyenv () {
    unalias pyenv
    unfunction lazy_load_pyenv
    eval "$(pyenv init -)";
  }

  alias pyenv=lazy_load_pyenv
fi

if [[ -d "${HOME}/.nodenv" ]]; then
  lazy_load_nodenv () {
    unalias nodenv
    unfunction lazy_load_nodenv
    eval "$(nodenv init -)";
  }

  alias nodenv=lazy_load_nodenv
fi

# Bash completion (for govc)
autoload -U bashcompinit && bashcompinit

if zplug check b4b4r07/enhancd; then
  # setting if enhancd is available
  export ENHANCD_FILTER=fzy
fi
