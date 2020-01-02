# bsl-trycatch.sh
# Bash Script Library: Try-Catch functionality
# version 0.1.0
# https://github.com/MichaelAnckaert/bash-script-library
# Author Michael Anckaert <michael.anckaert@sinax.be>

shopt -s expand_aliases
alias try="( set -e; "
alias catch=" ); Catcher \$? || "

function Catcher {
    if [[ $1 -ne 0 ]]; then
	return 1
    fi
}

