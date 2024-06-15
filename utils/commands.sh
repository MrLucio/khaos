source ./config/colors.sh

install() {
	local package=$1

	if [ -z "$package" ]; then
		echo "Package name is required."
		return 1
	fi
}

choose() {
	CHOOSE=$(
		gum choose --header.foreground="$CONTRAST_COLOR" --selected.foreground="$PRIMARY_COLOR" \
			--cursor.foreground="$CONTRAST_COLOR" --unselected-prefix="[ ] " --selected-prefix="[X] " \
			--height=10 --header "" "$@"
	)
	echo "$CHOOSE"
}

confirm() {
	return $(gum confirm --prompt.foreground="$CONTRAST_COLOR" --selected.background="$PRIMARY_COLOR" \
		--selected.foreground="$CONTRAST_COLOR" --unselected.foreground="$CONTRAST_COLOR" \
		"$@")
}
