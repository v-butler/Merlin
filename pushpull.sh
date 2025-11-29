#!/bin/bash

# A simple Git pull/add/commit/push helper
# Run it from inside your repo (e.g. ~/Desktop/Merlin)

set -e

echo "Pulling latest changes..."
git pull origin main

echo "Adding all changes..."
git add -A

# Timestamped commit message
MESSAGE="Auto-update $(date '+%Y-%m-%d %H:%M:%S')"
echo "Committing with message: $MESSAGE"
git commit -m "$MESSAGE" || echo "Nothing to commit."

echo "Pushing to GitHub..."
git push origin main

echo "Done."
