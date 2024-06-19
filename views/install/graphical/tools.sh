install_tools() {
	while :; do
		MENU=$(choose "Productivity" "Image & Documents" "Printer & Utilities" "Password manager" "🔙 Back")

		case "$MENU" in
		"Productivity") install_productivity ;;
		"Image & Documents") install_image_documents ;;
		"Printer & Utilities") install_printer_utilities ;;
		"Password manager") install_password_manager ;;
		"🔙 Back") break ;;
		*) break ;;
		esac
	done
}

install_image_documents() {
	if [[ $# -eq 0 ]]; then
		confirm "Do you want to install the image and document viewers?" || return 0
	fi

	install_packages loupe
}

install_printer_utilities() {
	if [[ $# -eq 0 ]]; then
		confirm "Do you want to install printer scanning utilities?" || return 0
	fi

	install_packages "${printer_utilities_packages[@]}"
}

install_password_manager() {
	if [[ $# -eq 0 ]]; then
		confirm "Do you want to install the password manager keepassxc?" || return 0
	fi

	install_packages keepassxc
}

install_productivity() {
	if [[ $# -eq 0 ]]; then
		confirm "Do you want to install the productivity applications?" || return 0
	fi

	install_packages "${productivity_packages[@]}"
}
