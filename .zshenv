export LANG="en_AU.UTF-8"

# Visual
export POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs)
export POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status rbenv root_indicator background_jobs history time)

export POWERLEVEL9K_STATUS_VERBOSE=true
export POWERLEVEL9K_STATUS_OK_IN_NON_VERBOSE=false

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nano'
else
  export EDITOR='nano'
fi

# CLI tools
export PAGER='less -q --tabs=2'

export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"

export MANPATH="/usr/local/man:$MANPATH"
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"

cdpath=(~ ~/code $cdpath)
fpath=(
  /usr/local/share/zsh/site-functions
  /usr/local/share/zsh-completions
  $fpath
)

# crap for Go
export PATH="$(brew --prefix go)/libexec/bin:$PATH"
export GOPATH="$HOME/code/go"

# crap for Java
export JAVA_HOME="$(/usr/libexec/java_home)"

# crap for Scala/SBT
export SBT_OPTS="-XX:+CMSClassUnloadingEnabled -XX:MaxPermSize=256M"

# crap for OCAML
source $HOME/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true

# script envs
export RBENV_ROOT=~/.rbenv
if which plenv > /dev/null; then eval "$(plenv init -)"; fi
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
if which nodenv > /dev/null; then eval "$(nodenv init -)"; fi

eval "$(thefuck --alias)"

skip_global_compinit=1
