source ./views/install/graphical/gnome/gnome.sh
source ./views/install/graphical/gnome/gnome_extra.sh
source ./views/install/graphical/fonts.sh
source ./views/install/graphical/tools.sh

install_graphical_menu() {
	while :; do
		MENU=$(choose "GNOME" "GNOME Extra" "Fonts" "Tools" "🔙 Back")

		case "$MENU" in
		"GNOME") install_gnome ;;
		"GNOME Extra") install_gnome_extra ;;
		"Fonts") install_fonts ;;
		"Tools") install_tools ;;
		"🔙 Back") break ;;
		esac
	done
}
