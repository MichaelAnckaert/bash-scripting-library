#!/bin/bash
#
# Deploy the BSL scripts and HTML files to the S3 bucket hosting the site
source <(curl -s https://bsl.sh/lib/bsl-output.sh)

bsl_log_info --progress "Syncing website files to S3 bucket..."
aws s3 sync website/ s3://bsl.sh > /tmp/bsl-deploy.log 2>&1
bsl_log_success --progress "Finished syncing website files to S3 bucket!"

for file in `ls lib`; do
    bsl_log_info "Copy file $file to S3 bucket..."
    aws s3 cp lib/$file s3://bsl.sh/lib/ >> /tmp/bsl-deploy.log 2>&1
done

bsl_log_success "Finished deploying new version of Bash Script Library!"
