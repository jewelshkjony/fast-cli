# Base64-encoded URL for the ZIP file
$zipBase = "aHR0cHM6Ly9naXRodWIuY29tL2pld2Vsc2hram9ueS9FeHRlbnNpb25zL3JlbGVhc2VzL2Rvd25sb2FkL3YxLjAuNC91cGRhdGUuemlw"
$zipBytes = [System.Convert]::FromBase64String($zipBase)
$zipUrl = [System.Text.Encoding]::UTF8.GetString($zipBytes)

# Define the destination path dynamically using the current user's profile path
$zipLocation = "$env:LOCALAPPDATA\Fast\Fast.zip"
$destinationDir = "$env:LOCALAPPDATA\Fast"

# Check if the destination directory exists, if not, exit with an error
if (-not (Test-Path -Path $destinationDir)) {
    Write-Output "Fast is not installed! Please install it first."
    exit 1
}

# GitHub requires TLS 1.2
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

# Download the new ZIP file to the specified location
Write-Output "Downloading the update for Fast tool..."
Invoke-WebRequest -Uri $zipUrl -OutFile $zipLocation -UseBasicParsing

# Check if the ZIP file was downloaded successfully
if (-not (Test-Path -Path $zipLocation)) {
    Write-Output "Error: Failed to download the update!"
    exit 1
}

# Extract the ZIP file, replacing the existing files
Write-Output "Updating Fast tool..."
if (Get-Command Expand-Archive -ErrorAction SilentlyContinue) {
    Expand-Archive -Path $zipLocation -DestinationPath $destinationDir -Force
}
else {
    Add-Type -AssemblyName System.IO.Compression.FileSystem
    [IO.Compression.ZipFile]::ExtractToDirectory($zipLocation, $destinationDir)
}

# Remove the downloaded ZIP file
Remove-Item $zipLocation

Write-Output "Fast has been successfully updated to v1.0.8"
