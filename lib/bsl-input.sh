# bsl-input.sh
# Bash Script Library: Input functions
# version 0.1.1
# https://github.com/MichaelAnckaert/bash-script-library
# Author Michael Anckaert <michael.anckaert@sinax.be>

BSL_VERSION="0.1.1"
BSL_URL="https://github.com/MichaelAnckaert/bash-script-library"

function bsl_yes_no {
    while true; do
	read -p "$1 " yn
	case $yn in
            [Yy]* ) return 1;break;;
            [Nn]* ) return 0;;
            * ) echo "Please answer yes or no.";;
	esac
    done
}
