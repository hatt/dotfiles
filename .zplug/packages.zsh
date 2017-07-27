zplug 'zplug/zplug',		hook-build:'zplug --self-manage'

zplug "bhilburn/powerlevel9k",	use:powerlevel9k.zsh-theme

zplug "lib/clipboard",		from:oh-my-zsh,		if:"[[ $OSTYPE == *darwin* ]]"
zplug "lib/completion",		from:oh-my-zsh
zplug "lib/key-bindings",	from:oh-my-zsh
zplug "lib/history",		from:oh-my-zsh

zplug "supercrabtree/k"
zplug "zsh-users/zsh-autosuggestions"
zplug "dannyzen/cf-zsh-autocomplete-plugin"
zplug "arzzen/calc.plugin.zsh"

zplug "plugins/sublime",	from:oh-my-zsh
zplug "plugins/colorize",	from:oh-my-zsh
