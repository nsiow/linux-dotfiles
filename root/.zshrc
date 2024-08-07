# ~/.zshrc

# load omz first
source ~/.config/zsh/config.d/omz.zsh

# then load everything other than omz
for conf in $(ls "$HOME/.config/zsh/config.d/" | grep -E '\.zsh$'| grep -v omz); do
  source "$HOME/.config/zsh/config.d/${conf}"
done
unset conf
