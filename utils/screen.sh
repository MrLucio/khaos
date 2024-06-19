sanbox_alternate_screen() {
	enter_alternate_screen
	$1
	exit_alternate_screen
}

enter_alternate_screen() {
	printf "\e[?1049h"
}

exit_alternate_screen() {
	printf "\e[?1049l"
}
