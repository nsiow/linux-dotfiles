# general stuff
export CLICOLOR=1
zstyle ':completion:*' menu select

# go stuff
export PATH="$PATH:$(go env GOPATH)/bin:${GOROOT}/bin"

# fzf
eval "$(fzf --zsh)"
export FZF_DEFAULT_COMMAND='fd --type file --hidden'

# shared history
setopt SHARE_HISTORY
setopt INC_APPEND_HISTORY 
setopt HIST_IGNORE_ALL_DUPS
export HISTFILE=~/.zsh_history
export HISTSIZE=999999999
export SAVEHIST=$HISTSIZE

# make stuff
alias make='make -s'

# aws stuff
export AWS_REGION=us-west-2
export AWS_DEFAULT_REGION=us-west-2
export AWS_PAGER=
autoload bashcompinit && bashcompinit
autoload -Uz compinit && compinit
complete -C '/usr/local/bin/aws_completer' aws

# jq stuff
alias urlencode='jq -Sr @uri'

# kitty stuff
kitty-reload() {
  kill -SIGUSR1 $(pidof kitty)
}
export PATH="~/.local/kitty.app/bin:$PATH"
export TERMINAL=kitty
