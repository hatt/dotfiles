export LANG="en_AU.UTF-8"

# Suggestions
export ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20
#export ZSH_AUTOSUGGEST_USE_ASYNC=true

# Brew is stupid
export HOMEBREW_NO_AUTO_UPDATE=1
export HOMEBREW_NO_INSTALL_CLEANUP=1

# Functions
cdpath=(~ ~/work ~/code $cdpath)
fpath=(
  $HOME/.zfunc
  /usr/local/share/zsh/site-functions
  /usr/local/share/zsh-completions
  $fpath
)

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nano'
else
  export EDITOR='nano'
fi

# Tool environments
export PAGER='less -q --tabs=2'

export MANPATH="/usr/local/man:$MANPATH"
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"

if [[ $SHLVL == 1 && ! -o LOGIN ]]; then
  source ~/.zpath
fi

# crap for Java
export JAVA_HOME="$(/usr/libexec/java_home)"

# crap for Scala/SBT
export SBT_OPTS="-XX:+CMSClassUnloadingEnabled -XX:MaxPermSize=256M"

# crap for OCAML
source $HOME/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true

[ -f ~/.travis/travis.sh ] && source ~/.travis/travis.sh

# crap for kubectl
export USE_GKE_GCLOUD_AUTH_PLUGIN=True

# run this last
skip_global_compinit=1
