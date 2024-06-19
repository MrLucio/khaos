install_gnome() {
	while :; do
		MENU=$(choose "Minimal" "Core" "🔙 Back")

		case "$MENU" in
		"Minimal") install_gnome_minimal ;;
		"Core") install_gnome_core ;;
		"🔙 Back") break ;;
		*) break ;;
		esac
	done
}

install_gnome_minimal() {
	if [[ $# -eq 0 ]]; then
		confirm "Do you want to install the GNOME minimal?" || return 0
	fi

	install_packages "${gnome_minimal_packages[@]}"
	systemctl enable gdm.service >/dev/null 2>&1
}

install_gnome_core() {
	if [[ $# -eq 0 ]]; then
		confirm "Do you want to install the GNOME core?" || return 0
	fi

	install_packages "${gnome_core_packages[@]}"
	systemctl enable gdm.service >/dev/null 2>&1
}
