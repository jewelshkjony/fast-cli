#!/bin/bash

# Installation scripts for Linux, MacOS and Android Termux
# Base64-encoded URL for the ZIP file
zipBase="aHR0cHM6Ly9naXRodWIuY29tL2pld2Vsc2hram9ueS9mYXN0LWNsaS9yZWxlYXNlcy9kb3dubG9hZC92MS4xLjMvdXBkYXRlLnppcA=="
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
curl -L "$zipUrl" -o "$zipLocation" -#

# Extract the ZIP file
unzip "$zipLocation" -d "$destinationDir"

# Remove the downloaded ZIP file
rm "$zipLocation"

# Remove the bat file
if [ -f "$HOME/.local/share/Fast/fast.bat" ]; then
    rm "$HOME/.local/share/Fast/fast.bat"
fi

# Add the fast() function to .bashrc and .zshrc for global usage
fastFunction='
fast() {
    java -jar "$HOME/.local/share/Fast/fast.jar" "$@"
}
'

# Set FAST_HOME environment variable
fastHomeExport="export FAST_HOME=$destinationDir"

# Check if .bashrc exists and the function is not already added
if [ -f "$HOME/.bashrc" ]; then
    if ! grep -q "fast()" "$HOME/.bashrc"; then
        echo "$fastFunction" >> "$HOME/.bashrc"
        echo "Fast command added to .bashrc"
        echo "$fastHomeExport" >> "$HOME/.bashrc"
        echo "FAST_HOME environment variable added to .bashrc"
    fi
fi

# Check if .zshrc exists and the function is not already added
if [ -f "$HOME/.zshrc" ]; then
    if ! grep -q "fast()" "$HOME/.zshrc"; then
        echo "$fastFunction" >> "$HOME/.zshrc"
        echo "Fast command added to .zshrc"
        echo "$fastHomeExport" >> "$HOME/.zshrc"
        echo "FAST_HOME environment variable added to .zshrc"
    fi
fi

# Reload the appropriate shell configuration
# First check if the shell config file exists
if [ -f "$HOME/.bashrc" ]; then
    source "$HOME/.bashrc"
fi

# Reload the appropriate shell configuration
# First check if the shell config file exists
if [ -f "$HOME/.zshrc" ]; then
    source "$HOME/.zshrc"
fi

echo "Fast-1.1.3 has been successfully installed."
