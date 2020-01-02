# bsl-input.sh
# Bash Script Library: Input functions
# version 0.1.0
# https://github.com/MichaelAnckaert/bash-script-library
# Author Michael Anckaert <michael.anckaert@sinax.be>
VERSION="0.1.0"
URL="https://github.com/MichaelAnckaert/bash-script-library"

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
