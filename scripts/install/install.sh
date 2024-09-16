#!/bin/bash

# Base64-encoded URL for the ZIP file
zipBase="aHR0cHM6Ly9naXRodWIuY29tL2pld2Vsc2hram9ueS9mYXN0LWNsaS9yZWxlYXNlcy9kb3dubG9hZC8xLjAuMC9mYXN0LnppcA=="
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

# Check if .bashrc exists and the function is not already added
if [ -f "$HOME/.bashrc" ]; then
    if ! grep -q "fast()" "$HOME/.bashrc"; then
        echo "$fastFunction" >> "$HOME/.bashrc"
        echo "Fast command added to .bashrc"
    fi
fi

# Check if .zshrc exists and the function is not already added
if [ -f "$HOME/.zshrc" ]; then
    if ! grep -q "fast()" "$HOME/.zshrc"; then
        echo "$fastFunction" >> "$HOME/.zshrc"
        echo "Fast command added to .zshrc"
    fi
fi

# Reload the appropriate shell configuration
# First check if the shell config file exists, then check if the shell variable is non-empty
if [ -f "$HOME/.bashrc" ] && [ -n "$BASH_VERSION" ]; then
    source "$HOME/.bashrc"
elif [ -f "$HOME/.zshrc" ] && [ -n "$ZSH_VERSION" ]; then
    source "$HOME/.zshrc"
fi

echo "Fast-1.0.1 has been successfully installed. You can now use the 'fast' command globally."
