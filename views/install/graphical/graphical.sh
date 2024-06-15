source ./views/install/graphical/gnome/gnome.sh

install_graphical_menu() {

	while :; do
		MENU=$(choose "GNOME" "🔙 Back")

		case "$MENU" in
		"GNOME") install_gnome ;;
		"🔙 Back") break ;;
		esac
	done
}
