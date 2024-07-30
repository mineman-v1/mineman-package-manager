#!/bin/bash

echo "Enter the path for the repository folder (e.g., /home/user/mineman-mod-repo):"
read -r REPO_PATH

if [ ! -d "$REPO_PATH" ]; then
  mkdir -p "$REPO_PATH"
  echo "Created directory: $REPO_PATH"
fi

cd "$REPO_PATH" || { echo "Failed to navigate to $REPO_PATH"; exit 1; }

mkdir -p packages/exampleauthor/exampleplugin

echo '{
  "repository": "Mineman Plugin Repository",
  "description": "This is the main repository for Mineman plugins."
}' > repo_manifest.json

echo '{
  "name": "exampleplugin",
  "author": "exampleauthor",
  "version": "1.0.0",
  "description": "An example plugin for demonstration purposes.",
  "minecraft_version": "1.16.5",
  "dependencies": {},
  "checksum": "sha256-checksum-value",
  "release_date": "2024-07-30"
}' > packages/exampleauthor/exampleplugin/plugin_manifest.json

echo "Repository structure created successfully at $REPO_PATH."
