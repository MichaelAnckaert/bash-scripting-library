#!/bin/bash
#
# Demo the bsl_log_* functions from bsl-output.sh

BASE_DIR=$(dirname $0)
source $BASE_DIR/../lib/bsl-output.sh

bsl_header "Demo of the BSL log functions"

echo "Some basic logging demonstration:"

bsl_log_info "This is a simple log message"
bsl_log_info "Another log message"


echo ""
echo "Now some log messages that will overwrite with the next log messag sent by bsl_log_* functions"

bsl_log_info --progress "Running task that takes a while..."
sleep 3
bsl_log_info --progress "Still running the task.."
sleep 2
bsl_log_success --progress "Finished the task!"

bsl_log_info --progress "This long running task will generate a warning"
sleep 2
bsl_log_warning --progress "Some warning happened!"

bsl_log_info --progress "This task will error after 3 seconds"
sleep 3
bsl_log_error --progress "An unspeakable error occurred!"
