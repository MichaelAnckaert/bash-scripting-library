# trycatch-demo.sh
#
# Demo the try-catch functionality of the Bash Script Libraray (https://bsl.sh)
# Author: Michael Anckaert <michael.anckaert@sinax.be>

BASE_DIR=$(dirname $0)
source $BASE_DIR/../lib/bsl-output.sh
source $BASE_DIR/../lib/bsl-trycatch.sh

bsl_header "BSL Try-Catch demo"

try {
    bsl_log_info --progress "Trying to run a command that will fail"
    sleep 2
    apt fake-command-that-will-not-trigger > /dev/null 2>&1
    echo "This won't trigger"
} catch {
    bsl_log_error --progress "We caught an error and are unable to continue!"
}

