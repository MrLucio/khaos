VERSION="0.0.2"

# Graphical > Gnome > Minimal
gnome_minimal_packages=(
	gnome-shell
	gnome-browser-connector
	gnome-calculator
	gnome-font-viewer
	gnome-shell-extensions
	gnome-tweaks
	gnome-keyring
	extension-manager
	xdg-desktop-portal-gnome
	nautilus
	sushi
)

# Graphical > Gnome > Core
gnome_core_packages=(
	gnome
	gnome-tweaks
	extension-manager
)

# Graphical > Gnome Extra
gnome_extensions=(
	https://extensions.gnome.org/extension/3843/just-perfection/
	https://extensions.gnome.org/extension/3088/extension-list/
	https://extensions.gnome.org/extension/1040/random-wallpaper/
)

# Graphical > Fonts
fira_code_packages=(
	ttf-fira-code
	ttf-firacode-nerd
)

noto_packages=(
	noto-fonts
	noto-fonts-emoji
)

# Graphical > Tools
productivity_packages=(
	obsidian
	zoom
	slack-desktop
	telegram-desktop
	webcord
	thunderbird
)

image_viewer_packages=(
	loupe
	evince
)

printer_utilities_packages=(
	cups
	hplip
	simple-scan
)

# Development
base_packages=(
	base
	base-devel
	man-db
	git
	curl
)

terminal_packages=(
	kitty
	neovim
	zsh
	zsh-theme-powerlevel10k-git
)

node_packages=(
	nvm
	yarn
)

python_packages=(
	python
	python-pip
)
