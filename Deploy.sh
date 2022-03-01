#!/usr/bin/env/sh

# Abort if an error occurs
set -e

# Navigate into the build output directory
cd <build_dir>

# Initialize a new Git repository
git init

# Add all files in the output directory to the repo
git add -A

# Commit the changes with a message
git commit -m "<commit_message>"

# Push the commit to the remote repo
git push -f git@github.com:<username>/<repository>.git master:<branch_to_deploy>

# Confirm the deployment has been successful
echo "<comfirmation_message>"

# Show the message for 3 seconds before closing
sleep 3
