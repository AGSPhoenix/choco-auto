$packageName = '{{PackageName}}'
$fileType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = '{{DownloadUrl}}'
$scriptPath = Split-Path -parent $MyInvocation.MyCommand.Definition
$ahkFile = "$scriptPath\viper4windowsinstall.ahk"

new-item "${env:temp}\viper4windows" -itemtype directory
$unpackfile = "${env:temp}\viper4windows\viper4windows.zip"
$unpackdir = "${env:temp}\viper4windows"
Get-ChocolateyWebFile $packageName $unpackfile $url -Checksum {{checksum}} -ChecksumType 'sha256'
Get-ChocolateyUnzip $unpackfile $unpackdir
$file = "${env:temp}\viper4windows\V4W_Setup_x86.exe"
$osBitness = Get-ProcessorBits
if ($osBitness -eq 64) {
  $file = "${env:temp}\viper4windows\V4W_Setup_x64.exe"
}
Start-Process 'AutoHotkey' $ahkFile	
Install-ChocolateyInstallPackage $packageName $fileType $silentArgs $file

Remove-Item $unpackdir -Recurse -Force

