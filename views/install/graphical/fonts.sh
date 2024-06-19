install_fonts() {
	while :; do
		MENU=$(choose "Fira Code" "Meslo" "Noto" "🔙 Back")

		case "$MENU" in
		"Fira Code") install_fira_code ;;
		"Meslo") install_meslo ;;
		"Noto") install_noto ;;
		"🔙 Back") break ;;
		*) break ;;
		esac
	done
}

install_fira_code() {
	if [[ $# -eq 0 ]]; then
		confirm "Do you want to install Fira Code?" || return 0
	fi

	install_packages "${fira_code_packages[@]}"
}

install_meslo() {
	if [[ $# -eq 0 ]]; then
		confirm "Do you want to install Meslo?" || return 0
	fi

	install_packages ttf-meslo-nerd
}

install_noto() {
	if [[ $# -eq 0 ]]; then
		confirm "Do you want to install Noto?" || return 0
	fi

	install_packages "${noto_packages[@]}"
}
