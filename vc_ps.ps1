# Imports
Import-Module -Name ".\lib\compress.psm1" -Verbose -ErrorAction Stop

### Constants ###
$AllowedExtensions = @('.mp4', '.mkv')


### Functions ###

$items = get-childitem -path "C:\xxxxxxxxxxxx\vc\Videos"
foreach ($item in $Items) {
If ($AllowedExtensions -contains (Split-Path $item -Extension)) {
Write-Host "Starting compression job for ${item}" -ForegroundColor Yellow
Compress-VideoClip  $item
}
else {write-host "Skipping ${item}" -ForegroundColor Yellow}
}











