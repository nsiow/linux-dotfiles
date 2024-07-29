.DEFAULT_GOAL = setup

# ------------------------------------------------------------
#  Meta-targets
# ------------------------------------------------------------

.PHONY: setup
setup: files apt

# ------------------------------------------------------------
#  Packages
# ------------------------------------------------------------

.PHONY: install
install: apt scripts go fonts postinstall

.PHONY: apt
apt: repos
	sudo apt update -y
	sudo apt install -y \
	  curl \
		fd-find \
	  golang-go \
	  i3 \
	  jq \
	  neofetch \
	  neovim \
	  polybar \
	  ripgrep \
	  rofi \
	  tree \
	  xclip \
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

.PHONY: go
go:
	go install github.com/junegunn/fzf@latest

.PHONY: fonts
fonts:
	sudo apt install -y fonts-go

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
