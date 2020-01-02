#!/bin/bash

source lib/bsl-output.sh
source lib/bsl-input.sh

function welcome  {
    echo -e "${BLUE}${BOLD}BSL Version ${VERSION} Demo Script${RESET}"
    echo -e "More information can be found at ${BLUE}${UNDERLINE}${URL}${RESET}"
    echo ""
}

# Demo function
function bsl-output-demo { 
    echo -e "${BLUE}${BOLD}Styling Output${RESET}"
    echo "You can add extra emphasis to your script output using the variables \$BOLD, \$ITALIC, \$UNDERLINE and \$BLINK:"
    echo -e "So output some text ${BOLD}in a bold font weight${RESET}, or ${ITALIC}add emphasis using italics${RESET} or ${UNDERLINE}by underlining words${RESET} and ${BLINK}go nuts using the blink variable${RESET}"
    echo ""
    
    echo -e "${BLUE}${BOLD}Color Output${RESET}"
    echo "Let's have a look at outputting color in your scripts using scriptor."
    echo -e "To output color, use the Bash ${ITALIC}${UNDERLINE}echo${RESET} function."
    echo "You can read the source of the scriptor library to view all available"
    echo "colors. All colors are named in all caps with regular, bold and italic variants."
    echo "Here are some demo lines and the command that generated them:\n"

    echo -e "${PURPLE}${ITALIC}Command:${RESET} echo -e \"\${RED} This text is in regular red using the \$RED variable\${RESET}\""
    echo -e "${PURPLE}${ITALIC}Output: ${RESET} ${RED}This text is in regular red using the \$RED variable${RESET}"

    echo -e "${PURPLE}${ITALIC}Command:${RESET} echo -e \"\${GREEN}\${BOLD}This text is in bold green using the \$GREEN and \$BOLD variables\${RESET}"
    echo -e "${PURPLE}${ITALIC}Output:${RESET} ${GREEN}${BOLD} This text is in bold green using the \$GREEN and \$BOLD variables${RESET}"
    
    echo -e "${PURPLE}${ITALIC}Command:${RESET} echo -e \"\${CYAN}\${ITALIC}This text is in italic cyan using the \$CYAN and \$ITALIC variables\${RESET}"
    echo -e "${PURPLE}${ITALIC}Command:${RESET} ${CYAN}${ITALIC}This text is in italic cyan using the \$CYAN and \$ITALIC variables${RESET}"

    echo ""
    echo "Colored backgrounds are also supported using the XXXX_BG variables, for example \$PURPLE_BG:"
    echo -e "${RED_BG} Red BG ${GREEN_BG} Green BG ${YELLOW_BG} Yellow BG ${BLUE_BG} Blue BG ${PURPLE_BG} Purple BG ${CYAN_BG} Cyan BG ${WHITE_BG} White BG ${RESET}"

    echo ""
    echo -e "${BLUE}${BOLD}Log message outputting${RESET}"
    echo "Almost every script needs to log some output. There are a number of usefull"
    echo "functions included in scriptor that help you output pretty looking log"
    echo -e "messages:\n"

    bsl_log_info "An info message can be logged using the ${BOLD}bsl_log_info${RESET} function"
    bsl_log_success "A success message can be logged using the ${BOLD}bsl_log_success${RESET} function"
    bsl_log_warning "A warning message can be logged using the ${BOLD}bsl_log_warning${RESET} function"
    bsl_log_error "An error message can be logged using the ${BOLD}bsl_log_error${RESET} function"

    echo ""
    echo -e "You can controle the output style of the ${BOLD}bsl_log_*${RESET} functions by setting the ${BOLD}BSL_LOG_STYLE${RESET} variable to ${GREEN}1${RESET} (default, see above) or ${GREEN}2${RESET}:"
    
    BSL_LOG_STYLE=2
    bsl_log_info "An info message can be logged using the ${BOLD}bsl_log_info${RESET} function"
    bsl_log_success "A success message can be logged using the ${BOLD}bsl_log_success${RESET} function"
    bsl_log_warning "A warning message can be logged using the ${BOLD}bsl_log_warning${RESET} function"
    bsl_log_error "An error message can be logged using the ${BOLD}bsl_log_error${RESET} function"

    echo ""
}

welcome

bsl_yes_no "Do you want to view the bsl-output demo?"
if [ "$?" -gt "0" ]; then
    bsl-output-demo
fi
