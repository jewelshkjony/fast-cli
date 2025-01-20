#!/bin/bash

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
zipUrl=$(echo "$response" | grep -o '"browser_download_url": *"[^"]*fast.zip"' | sed 's/"browser_download_url": *"//;s/"$//')

# Check if the URL was found
if [ -z "$zipUrl" ]; then
    echo "fast.zip not found in the release assets."
    exit 1
fi

# Extract the tag_name value
tagName=$(echo "$response" | grep -o '"tag_name": *"[^"]*"' | sed 's/"tag_name": *"//;s/"$//')

# Check if tag_name was found
if [ -z "$tagName" ]; then
    echo "tag_name not found in the response."
    exit 1
fi

# Output the tag_name
echo "Tag Name: $tagName"

# Output the URL
echo "Fast Download URL: $zipUrl"
