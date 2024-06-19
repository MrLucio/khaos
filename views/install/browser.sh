install_browser_menu() {
	while :; do
		MENU=$(choose "Thorium" "Firefox" "🔙 Back")

		case "$MENU" in
		"Thorium") install_thorium ;;
		"Firefox") install_firefox ;;
		"🔙 Back") break ;;
		*) break ;;
		esac
	done
}

install_thorium() {
	if [[ $# -eq 0 ]]; then
		confirm "Do you want to install Thorium?" || return 0
	fi

	install_packages thorium-browser-bin
}

install_firefox() {
	if [[ $# -eq 0 ]]; then
		confirm "Do you want to install Firefox?" || return 0
	fi

	install_packages firefox
}
