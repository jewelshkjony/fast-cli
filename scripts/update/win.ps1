# Update scripts for Windows
# Download URL for the latest version of FAST
$zipUrl = ""

# Define the API URL
$apiUrl = "https://api.github.com/repos/jewelshkjony/fast-cli/releases/latest"

# GitHub requires TLS 1.2
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

# Fetch the JSON response from the API
$response = Invoke-RestMethod -Uri $apiUrl -UseBasicParsing

# Loop through the assets array to find the desired asset
foreach ($asset in $response.assets) {
    if ($asset.name -eq "update.zip") {
        # Store the browser_download_url in the variable
        $zipUrl = $asset.browser_download_url
        break
    }
}

# Check if the URL was found
if (-not $zipUrl) {
    Write-Output "update.zip not found in the release assets."
    exit 1
}

# Check if FAST_HOME environment variable exists and use it, otherwise fallback to LOCALAPPDATA\Fast
if ($env:FAST_HOME) {
    $destinationDir = $env:FAST_HOME
} else {
    $destinationDir = "$env:LOCALAPPDATA\Fast"
}

# Define the path for the downloaded zip file
$zipLocation = "$destinationDir\Fast.zip"

# Check if the destination directory exists, if not, exit with an error
if (-not (Test-Path -Path $destinationDir)) {
    Write-Output "Fast is not installed! Please install it first."
    exit 1
}

# Download the new ZIP file to the specified location
Write-Output "Updating FAST to the latest $($response.tag_name)"
Invoke-WebRequest -Uri $zipUrl -OutFile $zipLocation -UseBasicParsing

# Check if the ZIP file was downloaded successfully
if (-not (Test-Path -Path $zipLocation)) {
    Write-Output "Error: Failed to download the update!"
    exit 1
}

# Extract the ZIP file, replacing the existing files
Write-Output "Extracting files..."
if (Get-Command Expand-Archive -ErrorAction SilentlyContinue) {
    Expand-Archive -Path $zipLocation -DestinationPath $destinationDir -Force
}
else {
    Add-Type -AssemblyName System.IO.Compression.FileSystem
    [IO.Compression.ZipFile]::ExtractToDirectory($zipLocation, $destinationDir)
}

# Remove the downloaded ZIP file
Remove-Item $zipLocation

Write-Output "Fast has been successfully updated to $($response.tag_name)"
