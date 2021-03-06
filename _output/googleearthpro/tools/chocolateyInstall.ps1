$packageName= 'googleearthpro'
$url = 'https://dl.google.com/earth/client/advanced/current/GoogleEarthProWin.exe' 
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$ahkFile = "$toolsDir\button.ahk"

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'EXE'
  silentArgs    = ''
  url           = $url
  checksum 		= '96752320bcdcb1dee4a41a61b7e81f74cf2f6cad1fb54e789770b507c88b96fc'
  ChecksumType 	= 'sha256'
}

Start-Process 'AutoHotkey' $ahkFile
Install-ChocolateyPackage @packageArgs