check_package_manager() {
	if [ -z "$(command -v yay)" ]; then
		error "This script requires yay to be installed"
		exit 1
	fi
}

check_gnome_shell() {
	if [ -z "$(command -v gnome-shell)" ]; then
		error "This script requires gnome-shell to be installed"
		exit 1
	fi
}

install_package() {
	local package=$1

	if [ -z "$package" ]; then
		error "No package specified"
		exit 1
	fi

	gum spin --title="Downloading $package" -- yay -S --noconfirm "$package" &>/dev/null
}
