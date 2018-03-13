zplug 'zplug/zplug',		hook-build:'zplug --self-manage'

zplug "bhilburn/powerlevel9k",	use:powerlevel9k.zsh-theme

zplug "lib/clipboard",		from:oh-my-zsh,		if:"[[ $OSTYPE == *darwin* ]]"
zplug "lib/completion",		from:oh-my-zsh
zplug "lib/key-bindings",	from:oh-my-zsh
zplug "lib/history",		  from:oh-my-zsh

zplug "b4b4r07/enhancd",  use:init.sh

zplug "supercrabtree/k"
zplug "k4rthik/git-cal",  as:command

zplug "zsh-users/zsh-autosuggestions"
zplug "dannyzen/cf-zsh-autocomplete-plugin"
zplug "zchee/go-zsh-completions"

zplug "arzzen/calc.plugin.zsh"

zplug "plugins/sublime",	from:oh-my-zsh
zplug "plugins/colorize",	from:oh-my-zsh

zplug "wuotr/zsh-plugin-vscode"
zplug "Tarrasch/zsh-autoenv"

zplug "Vifon/deer",       use:deer
