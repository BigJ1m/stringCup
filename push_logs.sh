#!/bin/bash

cd /Users/Shared/system532/stringCup

# Ensure the 'liquid' directory exists
mkdir -p /Users/Shared/system532/stringCup/liquid

# Set Git user info (customize these)
git config --local user.email "Test_account@example.com"
git config --local user.name "Tester"

# Remove the existing 'liquid' directory from the repo (ignore error if missing)
git rm -r liquid || true

# Copy the local 'liquid' folder into the repo (replace with your source path if different)
cp -r /Users/Shared/system532/stringCup/liquid /Users/Shared/system532/stringCup/

# Stage all changes (additions and deletions)
git add .

# Commit and push (ignore error if nothing to commit)
git commit -m "Replace liquid directory with latest version from device" || true
git push https://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@github.com/BigJ1m/stringCup.git main
