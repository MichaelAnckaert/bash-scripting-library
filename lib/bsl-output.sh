# bsl-output.sh
# Bash Script Library: Output functions
# version 0.1.0
# https://github.com/MichaelAnckaert/bash-script-library
# Author Michael Anckaert <michael.anckaert@sinax.be>
VERSION="0.1.0"
URL="https://github.com/MichaelAnckaert/bash-script-library"

# Define styles
NORMAL="\033[0m"
BOLD="\033[1m"
ITALIC="\033[3m"
UNDERLINE="\033[4m"
BLINK="\033[5m"          # NOTE: Blinking is supported by very few terminals
BLINKSLOW="\033[5m"      # NOTE: Blinking is supported by very few terminals
BLINKSLOW="\033[6m"      # NOTE: Blinking is supported by very few terminals
CROSSOUT="\033[9m"

# Define colors
RED="\033[0;31m"
LIGHT_RED="\033[0;91m"
RED_BG="\033[1;41m"
LIGHT_RED_BG="\033[1;101m"

GREEN="\033[0;32m"
LIGHT_GREEN="\033[0;92m"
GREEN_BG="\033[1;42m"
LIGHT_GREEN_BG="\033[1;102m"

ORANGE="\033[0;33m"
ORANGE_BG="\033[1;43m"
BROWN="\033[0;33m"
BROWN_BG="\033[1;43m"

YELLOW="\033[0;93m"
YELLOW_BG="\033[0;103m"

BLUE="\033[0;34m"
LIGHT_BLUE="\033[0;94m"
BLUE_BG="\033[1;44m"
LIGHT_BLUE_BG="\033[1;104m"

PURPLE="\033[0;35m"
LIGHT_PURPLE="\033[0;95m"
PURPLE_BG="\033[1;45m"
LIGHT_PURPLE_BG="033[1;105m"

CYAN="\033[0;36m"
LIGHT_CYAN="\033[0;96m"
CYAN_BG="\033[1;46m"
LIGHT_CYAN_BG="\033[1;106m"

LIGHT_GRAY="\033[0;37m"
WHITE="\033[0;97m"
WHITE_BG="\033[1;47m"

DARK_GRAY="\033[1;30m"
BLACK_BG="\033[1;100m"

# Use $NC to reset the color and style formatting
RESET="\033[0m"

# Logging styles
#  1 = Square brackets, for example [SUCCESS]
#  2 = Emoji symbol, for example ✔
BSL_LOG_STYLE=1

# Define message logging functions
function bsl_log_info {
    case $BSL_LOG_STYLE in
	1)
	    prefix="[INFO]   ";;
	2)
	    prefix="i";;
	*)
	    prefix="";;
    esac

    echo -e "${BLUE}${BOLD}$prefix$NORMAL $1${RESET}"
}

function bsl_log_success {
        case $BSL_LOG_STYLE in
	1)
	    prefix="[SUCCESS]";;
	2)
	    prefix="✔";;
	*)
	    prefix="";;
    esac


    echo -e "${GREEN}${BOLD}$prefix$NORMAL $1${RESET}"
}

function bsl_log_warning {
        case $BSL_LOG_STYLE in
	1)
	    prefix="[WARNING]";;
	2)
	    prefix="!";;
	*)
	    prefix="";;
    esac


    echo -e "${ORANGE}${BOLD}$prefix$NORMAL $1${RESET}"
}

function bsl_log_error {
    case $BSL_LOG_STYLE in
	1)
	    prefix="[ERROR]  ";;
	2)
	    prefix="✖";;
	*)
	    prefix="";;
    esac


    echo -e "${RED}${BOLD}$prefix$NORMAL $1${RESET}"
}

# Define output printing functions
function bsl_header() {
    printf "\n${BOLD}${BLUE}==========  %s  ==========${RESET}\n" "$@" 
}