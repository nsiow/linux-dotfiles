# general stuff
alias c='xclip -selection clipboard'
alias p='xclip -selection clipboard -o'
alias g='git'
alias ls='ls -G --color=auto'

# editing/sourcing configuration
alias conf-edit-aliases='vim ~/.config/zsh/config.d/aliases.zsh'
alias conf-edit-dunst='vim ~/.config/dunst/dunstrc'
alias conf-edit-i3='vim ~/.config/i3/config'
alias conf-edit-kitty='vim ~/.config/kitty/kitty.conf'
alias conf-edit-omz='vim ~/.config/zsh/config.d/omz.zsh'
alias conf-edit-polybar='vim ~/.config/polybar/config.ini'
alias conf-edit-vimrc='vim ~/.config/nvim/init.vim'
alias conf-edit-work='vim ~/.config/zsh/config.d/work.zsh'
alias conf-edit-xrandr='vim ~/.config/zsh/config.d/xrandr.zsh'
alias conf-edit-zshrc='vim ~/.config/zsh/config.d/custom.zsh'
alias conf-reload='source ~/.zshrc'

# directoy stuff
alias src='cd ~/src'

# vim stuff
alias vim='nvim'
alias v='nvim'
alias wiki='nvim ~/vimwiki/index.wiki'
alias todo='nvim ~/vimwiki/TODO.wiki'

# functions
alias py2js='python3 -c "import ast, json, sys; print(json.dumps(ast.literal_eval(sys.stdin.read())))"'
alias urlencode='python3 -c "import sys; from urllib.parse import quote as f;   print(f(sys.stdin.read()).strip())"'
alias urldecode='python3 -c "import sys; from urllib.parse import unquote as f; print(f(sys.stdin.read()).strip())"'

# notifications
alias ns-pause-notifications='dunstctl set-paused true'
alias ns-resume-notifications='dunstctl set-paused false'

# aws stuff
alias gci='aws sts get-caller-identity'

# laptop stuff
alias bat='upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep percentage'
