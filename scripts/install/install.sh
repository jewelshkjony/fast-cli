#!/bin/bash

# Installation script for Linux, MacOS, and Android Termux
zipUrl="https://github.com/jewelshkjony/fast-cli/releases/download/v2.1.0/fast.zip"

# Check if FAST_HOME environment variable exists and use it, otherwise fallback to $HOME/.local/share/Fast
if [ -n "$FAST_HOME" ]; then
    destinationDir="$FAST_HOME"
else
    destinationDir="$HOME/.local/share/Fast"
fi

# Define the location to store the ZIP file
zipLocation="$destinationDir/Fast.zip"

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

# Remove the .bat file if it exists
if [ -f "$destinationDir/fast.bat" ]; then
    rm "$destinationDir/fast.bat"
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
        if [ -z "$FAST_HOME" ]; then
            echo "$fastFunction" >> "$HOME/.bashrc"
            echo "Fast command added to .bashrc"
            echo "$fastHomeExport" >> "$HOME/.bashrc"
            echo "FAST_HOME environment variable added to .bashrc"
        fi
    fi
fi

# Check if .zshrc exists and the function is not already added
if [ -f "$HOME/.zshrc" ]; then
    if ! grep -q "fast()" "$HOME/.zshrc"; then
        if [ -z "$FAST_HOME" ]; then
            echo "$fastFunction" >> "$HOME/.zshrc"
            echo "Fast command added to .zshrc"
            echo "$fastHomeExport" >> "$HOME/.zshrc"
            echo "FAST_HOME environment variable added to .zshrc"
        fi
    fi
fi

# Reload the appropriate shell configuration
if [ -f "$HOME/.bashrc" ]; then
    source "$HOME/.bashrc"
fi

if [ -f "$HOME/.zshrc" ]; then
    source "$HOME/.zshrc"
fi

echo "Fast-v2.0.9 24.12.24.10.35 has been successfully installed."
