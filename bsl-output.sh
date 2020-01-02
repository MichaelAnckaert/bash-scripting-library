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

GREEN="\033[0;32m"
LIGHT_GREEN="\033[0;92m"
GREEN_BG="\033[1;42m"

ORANGE="\033[0;33m"
ORANGE_BG="\033[1;43m"

YELLOW="\033[0;93m"

BLUE="\033[0;34m"
LIGHT_BLUE="\033[0;94m"
BLUE_BG="\033[1;44m"

PURPLE="\033[0;35m"
LIGHT_PURPLE="\033[0;95m"
PURPLE_BG="\033[1;45m"

CYAN="\033[0;36m"
LIGHT_CYAN="\033[0;96m"
CYAN_BG="\033[1;46m"

LIGHT_GRAY="\033[0;37m"
WHITE="\033[0;97m"
WHITE_BG="\033[1;47m"

DARK_GRAY="\033[1;30m"

# Use $NC to reset the color and style formatting
NC="\033[0m"

# Define message logging functions
function log_info {
	echo -e "${BLUE}${BOLD}[INFO]$NORMAL    $1${NC}"
}

function log_success {
	echo -e "${GREEN}${BOLD}[SUCCESS]$NORMAL $1${NC}"
}

function log_warning {
	echo -e "${ORANGE}${BOLD}[WARNING]$NORMAL $1${NC}"
}

function log_error {
	echo -e "${RED}${BOLD}[ERROR]$NORMAL   $1${NC}"
}

# Demo function
function bsl-output-demo {
    echo -e "${BLUE}${BOLD}BSL Output demo version ${VERSION}${NC}"
    echo -e "More information can be found at ${BLUE}${UNDERLINE}${URL}${NC}"
    echo "\n"
    echo -e "${BLUE}${BOLD}Color Output${NC}"
    echo "Let's have a look at outputting color in your scripts using scriptor."
    echo "To output color, use the Bash ${ITALIC}${UNDERLINE}echo${NC} function."
    echo "You can read the source of the scriptor library to view all available"
    echo "colors. All colors are named in all caps with regular, bold and italic variants."
    echo "Here are some demo lines and the command that generated them:\n"

    echo -e "${PURPLE}${ITALIC}Command:${NC} echo -e \"\${RED} This text is in regular red using the \$RED variable\${NC}\""
    echo -e "${PURPLE}${ITALIC}Output: ${NC} ${RED}This text is in regular red using the \$RED variable${NC}"

    echo -e "${PURPLE}${ITALIC}Command:${NC} echo -e \"\${GREEN}\${BOLD}This text is in bold green using the \$GREEN and \$BOLD variables\${NC}"
    echo -e "${PURPLE}${ITALIC}Output:${NC} ${GREEN}${BOLD} This text is in bold green using the \$GREEN and \$BOLD variables${NC}"
    
    echo -e "${PURPLE}${ITALIC}Command:${NC} echo -e \"\${CYAN}\${ITALIC}This text is in italic cyan using the \$CYAN and \$ITALIC variables\${NC}"
    echo -e "${PURPLE}${ITALIC}Command:${NC} ${CYAN}${ITALIC}This text is in italic cyan using the \$CYAN and \$ITALIC variables${NC}"

    echo "\n"
    echo "Colored backgrounds are also supported using the XXXX_BG variables, for example \$PURPLE_BG:"
    echo -e "${RED_BG} Red BG ${GREEN_BG} Green BG ${ORANGE_BG} Orange BG ${BLUE_BG} Blue BG ${PURPLE_BG} Purple BG ${CYAN_BG} Cyan BG ${WHITE_BG} White BG ${NC}"

    echo "\n"
    echo -e "${BLUE}${BOLD}Log message outputting${NC}"
    echo "Almost every script needs to log some output. There are a number of usefull"
    echo "functions included in scriptor that help you output pretty looking log"
    echo "messages:\n"

    log_info "An info message can be logged using the$BOLD log_info$NC function"
    log_success "A success message can be logged using the$BOLD log_success$NC function"
    log_warning "A warning message can be logged using the$BOLD log_warning$NC function"
    log_error "An error message can be logged using the$BOLD log_error$NC function"

    echo "\n\n"
}
