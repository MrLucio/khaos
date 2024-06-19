install_preset_menu() {
	while :; do
		MENU=$(choose "Gnome minimal" "🔙 Back")

		case "$MENU" in
		"Gnome minimal") install_gnome_minimal_preset ;;
		"🔙 Back") break ;;
		*) break ;;
		esac
	done
}

install_gnome_minimal_preset() {
	confirm "Do you want to install the Gnome minimal preset?" || return 0

	# Gnome
	install_gnome_minimal --no-confirm

	# Gnome extra
	install_gnome_extensions --no-confirm
	install_gnome_theme --no-confirm

	# Fonts
	install_fira_code --no-confirm
	install_meslo --no-confirm
	install_noto --no-confirm

	# Tools
	install_image_documents --no-confirm
	install_printer_utilities --no-confirm
	install_password_manager --no-confirm
	install_productivity --no-confirm

	# Development
	install_base --no-confirm
	install_vscodium --no-confirm
	install_terminal --no-confirm
	install_node --no-confirm
	install_python --no-confirm

	# Browser
	install_thorium --no-confirm
}
