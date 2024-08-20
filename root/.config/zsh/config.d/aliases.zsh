# general stuff
alias ls='ls -G'

# editing/sourcing configuration
alias conf-edit-aliases='vim ~/.config/zsh/config.d/aliases.zsh'
alias conf-edit-dunst='vim ~/.config/dunst/dunstrc'
alias conf-edit-i3='vim ~/.config/i3/config'
alias conf-edit-kitty='vim ~/.config/kitty/kitty.conf'
alias conf-edit-omz='vim ~/.config/zsh/config.d/omz.zsh'
alias conf-edit-polybar='vim ~/.config/polybar/config.ini'
alias conf-edit-vimrc='vim ~/.config/nvim/init.vim'
alias conf-edit-work='vim ~/.config/zsh/config.d/work.zsh'
alias conf-edit-zshrc='vim ~/.config/zsh/config.d/custom.zsh'
alias conf-reload='source ~/.zshrc'

# Directory stuff
alias src='cd ~/src'

# Copy/paste
# TODO(nsiow) move these to linux equivalents
alias c='pbcopy'
alias p='pbpaste'

# vim stuff
alias vim='nvim'
alias v='nvim'
alias wiki='nvim ~/vimwiki/index.wiki'
alias todo='nvim ~/vimwiki/TODO.wiki'

# functions
alias py2js='python3 -c "import ast, json, sys; print(json.dumps(ast.literal_eval(sys.stdin.read())))"'
