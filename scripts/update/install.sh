#!/bin/bash

# Update scripts for Linux, MacOS and Android Termux
zipUrl= "https://github.com/jewelshkjony/fast-cli/releases/download/v2.3.0/update.zip"

# Check if FAST_HOME environment variable exists and use it, otherwise fallback to $HOME/.local/share/Fast
if [ -n "$FAST_HOME" ]; then
    destinationDir="$FAST_HOME"
else
    destinationDir="$HOME/.local/share/Fast"
fi

# Define the location to store the ZIP file
zipLocation="$destinationDir/Fast.zip"

# Check if the destination directory exists, if not, exit with an error
if [ ! -d "$destinationDir" ]; then
    echo "Fast is not installed! Please install it first."
    exit 1
fi

# Download the new ZIP file to the specified location
echo "Downloading the update for Fast tool..."
curl -L "$zipUrl" -o "$zipLocation" -#

# Check if the ZIP file was downloaded successfully
if [ ! -f "$zipLocation" ]; then
    echo "Error: Failed to download the update!"
    exit 1
fi

# Unzip the downloaded file, replacing the existing files
echo "Updating Fast tool..."
unzip -o "$zipLocation" -d "$destinationDir"

# Remove the downloaded ZIP file
rm "$zipLocation"

echo "Fast has been successfully updated to v2.3.0 13.01.25.19.56"
