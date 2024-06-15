source "./views/install/graphical/graphical.sh"
source "./views/install/development.sh"
source "./views/install/browser.sh"
source "./views/install/preset.sh"

install_menu() {
	while :; do
		MENU=$(choose "🖌️ Graphical" "💻 Development" "🌎 Browser" "📦 Preset" "🔙 Back")

		case "$MENU" in
		"🖌️ Graphical") install_graphical_menu ;;
		"💻 Development") install_development_menu ;;
		"🌎 Browser") install_browser_menu ;;
		"📦 Preset") install_preset_menu ;;
		"🔙 Back") break ;;
		esac
	done

}
