# Scripts to install Fast CLI for Windows
$zipBase = "aHR0cHM6Ly9naXRodWIuY29tL2pld2Vsc2hram9ueS9mYXN0LWNsaS9yZWxlYXNlcy9kb3dubG9hZC92MS4yLjEvZmFzdC56aXA="
$zipBytes = [System.Convert]::FromBase64String($zipBase)
$zipUrl = [System.Text.Encoding]::UTF8.GetString($zipBytes)

# Check if FAST_HOME environment variable exists and use it, otherwise fallback to LOCALAPPDATA\Fast
if ($env:FAST_HOME) {
    $destinationDir = $env:FAST_HOME
} else {
    $destinationDir = "$env:LOCALAPPDATA\Fast"
}

# Define the path for the downloaded zip file
$zipLocation = "$destinationDir\Fast.zip"

# Delete the destination directory if it already exists
if (Test-Path -Path $destinationDir) {
    Remove-Item -Path $destinationDir -Recurse -Force
}

# Create the directory if it doesn't exist
if (-not (Test-Path -Path $destinationDir)) {
    New-Item -ItemType Directory -Path $destinationDir -Force
}

# GitHub requires TLS 1.2
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

# Download zip to path location
Invoke-WebRequest -Uri $zipUrl -OutFile $zipLocation -UseBasicParsing

# Extract it
if (Get-Command Expand-Archive -ErrorAction SilentlyContinue) {
  Expand-Archive $zipLocation -DestinationPath "$destinationDir" -Force
}
else {
  Add-Type -AssemblyName System.IO.Compression.FileSystem
  [IO.Compression.ZipFile]::ExtractToDirectory($ZipLocation, $destinationDir)
}
Remove-Item $zipLocation

# User environment
$User = [EnvironmentVariableTarget]::User

# Set FAST_HOME environment variable for the user
[Environment]::SetEnvironmentVariable('FAST_HOME', $destinationDir, $User)

# Update PATH for the user
$Path = [Environment]::GetEnvironmentVariable('Path', $User)
if (!(";$Path;".ToLower() -like "*;$destinationDir;*".ToLower())) {
    [Environment]::SetEnvironmentVariable('Path', "$Path;$destinationDir", $User)
    $Env:Path += ";$destinationDir"
}

Write-Output "Fast-v1.2.1 30.10.24.23.43 has been successfully installed."
