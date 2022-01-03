# bsl-trycatch.sh
# Bash Script Library: Try-Catch functionality
# version 0.1.1
# https://github.com/MichaelAnckaert/bash-script-library
# Author Michael Anckaert <michael.anckaert@sinax.be>

BLS_VERSION="0.1.1"
BSL_URL="https://github.com/MichaelAnckaert/bash-script-library"

shopt -s expand_aliases
alias try="( set -e; "
alias catch=" ); Catcher \$? || "

function Catcher {
    if [[ $1 -ne 0 ]]; then
	return 1
    fi
}

