install_development_menu() {
	while :; do
		MENU=$(choose "Base" "VSCodium" "Terminal" "Node" "Python" "🔙 Back")

		case "$MENU" in
		"Base") install_base ;;
		"VSCodium") install_vscodium ;;
		"Terminal") install_terminal ;;
		"Node") install_node ;;
		"Python") install_python ;;
		"🔙 Back") break ;;
		esac
	done
}

install_base() {
	if [[ $# -eq 0 ]]; then
		confirm "Do you want to install base packages?" || return 0
	fi

	install_packages "${base_packages[@]}"
}

install_vscodium() {
	if [[ $# -eq 0 ]]; then
		confirm "Do you want to install VSCodium?" || return 0
	fi

	install_packages vscodium
}

install_terminal() {
	if [[ $# -eq 0 ]]; then
		confirm "Do you want to install kitty and vim?" || return 0
	fi

	install_packages "${terminal_packages[@]}"
	echo 'source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
}

install_node() {
	if [[ $# -eq 0 ]]; then
		confirm "Do you want to install node and yarn?" || return 0
	fi

	install_packages "${node_packages[@]}"
}

install_python() {
	if [[ $# -eq 0 ]]; then
		confirm "Do you want to install python?" || return 0
	fi

	install_packages "${python_packages[@]}"
}
