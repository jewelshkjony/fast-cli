#!/bin/bash

# Zip
zipBase="aHR0cHM6Ly9naXRodWIuY29tL2pld2Vsc2hram9ueS9mYXN0LWNsaS9yZWxlYXNlcy9kb3dubG9hZC8xLjAuMC9saW51eG1hYy56aXA="
zipUrl=$(echo "$zipBase" | base64 --decode)

# Define the destination path dynamically using the current user's home directory
zipLocation="$HOME/.local/share/Fast/Fast.zip"
destinationDir="$HOME/.local/share/Fast"

# Delete the destination directory if it already exists
if [ -d "$destinationDir" ]; then
    rm -rf "$destinationDir"
fi

# Create the directory if it doesn't exist
mkdir -p "$destinationDir"

# Download ZIP file to the specified location
curl -L "$zipUrl" -o "$zipLocation"

# Extract the ZIP file
unzip "$zipLocation" -d "$destinationDir"

# Remove the downloaded ZIP file
rm "$zipLocation"

# Update PATH for the user
if [[ ":$PATH:" != *":$destinationDir:"* ]]; then
    export PATH="$PATH:$destinationDir"
    echo "export PATH=\"\$PATH:$destinationDir\"" >> "$HOME/.bashrc" # For bash
    echo "export PATH=\"\$PATH:$destinationDir\"" >> "$HOME/.zshrc"  # For zsh
fi

echo "Fast-1.0.0 has been successfully installed."
