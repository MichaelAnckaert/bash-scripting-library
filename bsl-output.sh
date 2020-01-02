# bsl-output.sh
# Bash Script Library: Output functions
# version 0.1.0
# https://github.com/MichaelAnckaert/bash-script-library
# Author Michael Anckaert <michael.anckaert@sinax.be>
VERSION="0.1.0"

# Define styles
NORMAL="\033[0m"
BOLD="\033[1m"
ITALIC="\033[3m"
UNDERLINE="\033[4m"

# Define colors
RED="\033[0;31m"
RED_BOLD="\033[1;31m"
RED="\033[0;31m"
LIGHT_RED="\033[1;31m"

GREEN="\033[0;32m"
LIGHT_GREEN="\033[1;32m"

ORANGE="\033[0;33m"

YELLOW="\033[1;33m"

BLUE="\033[0;34m"
BLUE_BOLD="\033[1;34m"
BLUE_UNDERLINE="\033[4;34m"
LIGHT_BLUE="\033[1;34m"

PURPLE="\033[0;35m"
LIGHT_PURPLE="\033[1;35m"

CYAN="\033[0;36m"
LIGHT_CYAN="\033[1;36m"
CYAN_ITALIC="\033[3;36m"

LIGHT_GRAY="\033[0;37m"
WHITE="\033[1;37m"
DARK_GRAY="\033[1;30m"
NC="\033[0m"

# Define message logging functions
function log_info {
	echo -e $BLUE$BOLD"[INFO]$NORMAL    $1 $NC"
}

function log_success {
	echo -e $GREEN$BOLD"[SUCCESS]$NORMAL $1 $NC"
}

function log_warning {
	echo -e $ORANGE$BOLD"[WARNING]$NORMAL $1 $NC"
}

function log_error {
	echo -e $RED$BOLD"[ERROR]$NORMAL   $1 $NC"
}

# Demo function
function bsl-output-demo {
  echo -e "$BLUE_BOLD BSL Output demo version $VERSION$NC"
  echo "\n"
  echo -e $BLUE_BOLD"Color Output$NC"
  echo "Let's have a look at outputting color in your scripts using scriptor."
  echo "To output color, use the bash" $ITALIC $UNDERLINE"echo$NC function."
  echo "You can read the source of the scriptor library to view all available"
  echo "colors. All colors are named in all caps with regular, bold and italic variants."
  echo "Here are some demo lines:\n"
  echo -e "$RED   This text is in regular red using the \$RED variable$NC"
  echo -e "$RED_BOLD   This text is in bold red using the \$RED_BOLD variable$NC"
  echo -e "$CYAN_ITALIC   This text is in italic cyan using the \$CYAN_ITALIC variable$NC"

  echo "\n"
  echo -e $BLUE_BOLD"Log message outputting$NC"
  echo "Almost every script needs to log some output. There are a number of usefull"
  echo "functions included in scriptor that help you output pretty looking log"
  echo "messages:\n"

  log_info "An info message can be logged using the$BOLD log_info$NC function"
  log_success "A success message can be logged using the$BOLD log_success$NC function"
  log_warning "A warning message can be logged using the$BOLD log_warning$NC function"
  log_error "An error message can be logged using the$BOLD log_error$NC function"


  echo "\n\n"
}
