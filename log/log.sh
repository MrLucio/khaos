log() {
	local type message

	gum log --level $1 --level.background $2 --level.foreground $3 $4
}

debug() {
	log "debug" $DEBUG_COLOR $CONTRAST_COLOR "$1"
}

info() {
	log "info" $INFO_COLOR $CONTRAST_COLOR "$1"
}

warn() {
	log "warn" $WARN_COLOR $CONTRAST_COLOR "$1"
}

error() {
	log "error" $ERROR_COLOR $CONTRAST_COLOR "$1"
}

fatal() {
	log "fatal" $FATAL_COLOR $CONTRAST_COLOR "$1"
}
