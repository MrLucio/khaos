extensions=(
	https://extensions.gnome.org/extension/3843/just-perfection/
	https://extensions.gnome.org/extension/3088/extension-list/
	https://extensions.gnome.org/extension/1040/random-wallpaper/
)

function install_gnome() {

	while :; do
		MENU=$(choose --no-limit "Extensions" "Theme")

		hex="$(printf '%s' "$MENU" | xxd -p -u)"
		case "$MENU" in
		"Extensions") install_gnome_extensions ;;
		"Theme") install_gnome_theme ;;
		$'Extensions\nTheme') install_gnome_theme && install_gnome_extensions ;;
		*) break ;;
		esac
	done
}

install_gnome_extensions() {
	confirm "Do you want to install the GNOME extensions?" || return 0

	# https://unix.stackexchange.com/a/707840
	for i in "${extensions[@]}"; do
		REQ=$(curl -s "$i")
		EXTENSION_ID=$(echo "$REQ" | grep -oP 'data-uuid="\K[^"]+')
		# EXTENSION_PK=$(echo "$REQ" | grep -oP 'data-epk="\K[^"]+')
		# VERSION_TAG=$(curl -Lfs "https://extensions.gnome.org/extension-query/?sort=relevance&page=1&search=$EXTENSION_ID" | jq ".extensions[] | select(.pk == $EXTENSION_PK) | .shell_version_map | map(.pk) | max")
		# wget -q -O ${EXTENSION_ID}.zip "https://extensions.gnome.org/download-extension/${EXTENSION_ID}.shell-extension.zip?version_tag=$VERSION_TAG"
		# gnome-extensions install --force ${EXTENSION_ID}.zip

		busctl --user call org.gnome.Shell.Extensions /org/gnome/Shell/Extensions org.gnome.Shell.Extensions InstallRemoteExtension s ${EXTENSION_ID} >/dev/null

		if gnome-extensions list | grep --quiet ${EXTENSION_ID}; then
			gnome-extensions enable ${EXTENSION_ID}
		fi

		# rm ${EXTENSION_ID}.zip
	done

	confirm "Do you want to load the extensions configuration?" || return 0
	dconf load /org/gnome/shell/extensions/ <./resources/gnome/extensions/config.conf
}

install_gnome_theme() {
	confirm "Do you want to install the GNOME theme?" || return 0

	mkdir -p ~/.themes/khaos && cp -r ./resources/gnome/themes/khaos ~/.themes
}
