# bsl-serve.sh
# Serve the current directory
# https://bsl.sh - Bash Script Library
# Author: Michael Anckaert <michael.anckaert@sinax.be>

BASE_DIR=$(dirname $0)
source $BASE_DIR/../lib/bsl-output.sh

function bsl_serve {
    if [ -n "$1" ]; then
	PORT=$1
    else
	PORT="8080"
    fi

    bsl_log_info "Serving current directory from port $PORT..."
    python3 -m http.server $PORT
}
