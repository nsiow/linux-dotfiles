# general stuff
export CLICOLOR=1
zstyle ':completion:*' menu select

# go stuff
export PATH="$PATH:/usr/local/go/bin"
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

# aws stuff
export AWS_REGION=us-east-1
export AWS_DEFAULT_REGION=us-east-1
export AWS_PAGER=
autoload bashcompinit && bashcompinit
autoload -Uz compinit && compinit
complete -C /snap/aws-cli/current/bin/aws_completer aws

# kitty stuff
kitty-reload() {
  kill -SIGUSR1 $(pidof kitty)
}
export PATH="$PATH:~/.local/kitty.app/bin"
export TERMINAL=kitty

# python stuff
export PATH="$PATH:/home/nsiow/.local/bin"
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# k8s stuff
export KUBE_EDITOR='nvim'
