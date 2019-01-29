zplug 'zplug/zplug',       hook-build:'zplug --self-manage'

zplug "bhilburn/powerlevel9k", use:powerlevel9k.zsh-theme

zplug "lib/clipboard",     from:oh-my-zsh,		if:"[[ $OSTYPE == *darwin* ]]"
zplug "lib/completion",    from:oh-my-zsh
zplug "lib/key-bindings",  from:oh-my-zsh
zplug "lib/history",       from:oh-my-zsh

# Navigation
zplug "b4b4r07/enhancd",   use:init.sh
zplug "aperezdc/zsh-fzy"
zplug "Tarrasch/zsh-bd"

# Git
zplug "supercrabtree/k"

# Completion
zplug "zsh-users/zsh-autosuggestions"
zplug "dannyzen/cf-zsh-autocomplete-plugin"
zplug "zchee/go-zsh-completions"

# Utilities
zplug "arzzen/calc.plugin.zsh"

zplug "plugins/terraform", from:oh-my-zsh

zplug "zpm-zsh/colors"

zplug "Tarrasch/zsh-autoenv"
zplug "hlissner/zsh-autopair",								defer:2
zplug "Cloudstek/zsh-plugin-appup"
zplug "wuotr/zsh-plugin-vscode"
