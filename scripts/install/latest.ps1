# Define the API URL
$apiUrl = "https://api.github.com/repos/jewelshkjony/fast-cli/releases/latest"

# Fetch the JSON response from the API
$response = Invoke-RestMethod -Uri $apiUrl -UseBasicParsing

# Loop through the assets array to find the desired asset
foreach ($asset in $response.assets) {
    if ($asset.name -eq "fast.zip") {
        # Print the browser_download_url of the matching asset
        Write-Output "Download URL for fast.zip: $($asset.browser_download_url)"
        break
    }
}
