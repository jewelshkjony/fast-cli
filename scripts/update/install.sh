#!/bin/bash

# Update scripts for Linux, MacOS and Android Termux
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

# Define the API URL
apiUrl="https://api.github.com/repos/jewelshkjony/fast-cli/releases/latest"

# Fetch the JSON response from the API
response=$(curl -s "$apiUrl")

# Check if the API call was successful
if [ $? -ne 0 ] || [ -z "$response" ]; then
    echo "Failed to fetch data from the GitHub API. Check your internet connection."
    exit 1
fi

# Extract the URL using grep and sed
zipUrl=$(echo "$response" | grep -o '"browser_download_url": *"[^"]*update.zip"' | sed 's/"browser_download_url": *"//;s/"$//')

# Check if the URL was found
if [ -z "$zipUrl" ]; then
    echo "update.zip not found in the release assets."
    exit 1
fi

# Extract the tag_name value
tagName=$(echo "$response" | grep -o '"tag_name": *"[^"]*"' | sed 's/"tag_name": *"//;s/"$//')

# Check if tag_name was found
if [ -z "$tagName" ]; then
    echo "tag_name not found in the response."
    exit 1
fi

# Download the new ZIP file to the specified location
echo "Downloading update for Fast $tagName"
curl -L "$zipUrl" -o "$zipLocation" -#

# Check if the ZIP file was downloaded successfully
if [ ! -f "$zipLocation" ]; then
    echo "Error: Failed to download the update!"
    exit 1
fi

# Unzip the downloaded file, replacing the existing files
echo "Extracting the update..."
unzip -o "$zipLocation" -d "$destinationDir"

# Remove the downloaded ZIP file
rm "$zipLocation"

echo "Fast has been successfully updated to $tagName"
