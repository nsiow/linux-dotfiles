.DEFAULT_GOAL = setup

# ------------------------------------------------------------
#  Meta-targets
# ------------------------------------------------------------

.PHONY: setup
setup: files install

# ------------------------------------------------------------
#  Packages
# ------------------------------------------------------------

.PHONY: install
install: apt scripts go fonts postinstall

.PHONY: apt
apt: repos
	sudo apt update -y
	sudo apt install -y \
	  autorandr \
	  curl \
	  fd-find \
	  golang-go \
	  htop \
	  i3 \
	  jq \
	  maim \
	  neovim \
	  pasystray \
	  polybar \
	  ripgrep \
	  rofi \
	  tlp \
	  tree \
	  xclip \
	  xdotool \
	  zsh
	@echo '[✓] Installed apt packages'

.PHONY: repos
repos:
	sudo apt-get install software-properties-common
	sudo add-apt-repository -y ppa:longsleep/golang-backports
	sudo add-apt-repository -y ppa:neovim-ppa/unstable

.PHONY: scripts
scripts:
	./scripts/docker.sh
	./scripts/kitty.sh
	./scripts/nodejs.sh
	./scripts/omz.sh
	./scripts/pyenv.sh

.PHONY: go
go:
	go install github.com/junegunn/fzf@latest

.PHONY: py
py:
	python3 -m pip install \
	  cfn-flip \
	  kitti3

.PHONY: fonts
fonts:
	sudo apt install -y \
	  fonts-inconsolata

.PHONY: postinstall
postinstall:
	sudo ln -sf $$(which fdfind) /usr/local/bin/fd

# ------------------------------------------------------------
#  Files
# ------------------------------------------------------------

.PHONY: files
files:
	@# Set up some base directories
	@mkdir -p ~/src
	@mkdir -p ~/.config

	@# Set up X
	@ln -sf $$(pwd)/root/.xprofile ~/.xprofile
	
	@# Set up zshrc
	@ln -sf $$(pwd)/root/.zshrc ~/.zshrc
	
	@# Set up .config directories
	@ls root/.config | xargs -I{} bash -c 'rm -f ~/.config/{} && ln -s $$(pwd)/root/.config/{} ~/.config/{}'
	
	@echo '[✓] Bootstrapped filesystem'
