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

check_gum() {
	if [ -z "$(command -v gum)" ]; then
		error "This script requires gum to be installed"
		confirm "Install gum?" || exit 1

		install_packages gum
	fi
}

check_dependencies() {
	check_package_manager
	check_gnome_shell
	check_gum
}
