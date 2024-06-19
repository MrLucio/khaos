install_packages() {
	for package in "$@"; do
		if [ -z "$package" ]; then
			error "No package specified"
			exit 1
		fi
	done

	enter_alternate_screen

	yay -S --noconfirm "$@"
	gum style --bold --underline $'\nAll packages have been installed\n'
	confirm --affirmative "< Back" --negative '' ''

	exit_alternate_screen
}
