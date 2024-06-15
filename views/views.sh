source ./views/install/install.sh

views_menu() {
	while :; do
		MENU=$(choose "Install" "Quit")

		case "$MENU" in
		"Install") install_menu ;;
		"Quit") exit 0 ;;
		esac
	done

}
