#!/usr/bin/env bash

# Copy the key
echo "$INPUT_KEY" > key
chmod 400 key

# Create remote dir if needed
remote_dir="$INPUT_REMOTE_DIR"
if [ "$remote_dir" = "~" ]; then
    remote_dir="/home/$INPUT_USERNAME/"
else
    ssh -i key -o "StrictHostKeyChecking no" -p $INPUT_PORT "$INPUT_USERNAME"@"$INPUT_HOST" "mkdir -p ${remote_dir}/"
fi

recursive=""
if [ "$INPUT_RECURSIVE" = "true" ]; then
    recursive="-r"
fi

# Copy the file
scp $recursive -i key -o "StrictHostKeyChecking no" -P $INPUT_PORT "$INPUT_SOURCE" "$INPUT_USERNAME"@"$INPUT_HOST":$remote_dir

# Clean
cat /dev/null > ~/.bash_history
rm key