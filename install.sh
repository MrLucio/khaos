#!/usr/bin/env bash

source ./config/constants.sh
source ./utils/utils.sh
source ./log/log.sh
source ./views/views.sh

set -Eeuo pipefail
set -o posix

main() {
	header

	check_arch

	check_dependencies
	check_package_manager

	views_menu
}

check_arch() {
	if [ ! -f /etc/arch-release ]; then
		error "This script is only for Arch Linux."
		exit 1
	fi
}

header() {
	local header_version header_logo
	header_text=$(
		gum format -t template -- \
			"{{ Color \"$CONTRAST_COLOR\" \"Opinionated\" }} {{ Underline \"personal\" }} {{ Color \"$CONTRAST_COLOR\" \"Arch Linux utility installer\" }}"
	)
	header_version=$(gum format -t template -- "{{ Bold \"Version: \" }}{{ Color \"$CONTRAST_COLOR\" \"0\" \" $VERSION \" }}")
	header_logo="
██╗  ██╗██╗  ██╗ █████╗  ██████╗ ███████╗
██║ ██╔╝██║  ██║██╔══██╗██╔═══██╗██╔════╝
█████╔╝ ███████║███████║██║   ██║███████╗
██╔═██╗ ██╔══██║██╔══██║██║   ██║╚════██║
██║  ██╗██║  ██║██║  ██║╚██████╔╝███████║
╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝ ╚══════╝"

	gum style \
		--foreground $PRIMARY_COLOR --border-foreground $PRIMARY_COLOR --border double \
		--align center --width 80 --margin "1 0" --padding "1 2" \
		"
$header_logo

$header_text

$header_version"

}

main
