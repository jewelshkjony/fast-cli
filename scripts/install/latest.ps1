# Scripts to install Fast CLI for Windows
# Check if FAST_HOME environment variable exists and use it, otherwise fallback to LOCALAPPDATA\Fast
if ($env:FAST_HOME) {
    $destinationDir = $env:FAST_HOME
} else {
    $destinationDir = "$env:LOCALAPPDATA\Fast"
}

# Define the path for the downloaded zip file
$zipLocation = "$destinationDir\Fast.zip"

# GitHub requires TLS 1.2
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

# Initialize the download URL
$zipUrl = "https://github.com/jewelshkjony/fast-cli/releases/download/v2.8.4/fast.zip"

# Delete the destination directory if it already exists
if (Test-Path -Path $destinationDir) {
    Write-Output "Removing the previous installation of FAST"
    Remove-Item -Path $destinationDir -Recurse -Force
}

# Create the directory if it doesn't exist
if (-not (Test-Path -Path $destinationDir)) {
    New-Item -ItemType Directory -Path $destinationDir -Force
}

Write-Output "Downloading FAST v2.8.4"
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

Write-Output "Fast v2.8.4 has been successfully installed."
