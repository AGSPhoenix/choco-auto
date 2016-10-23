$ErrorActionPreference = 'Stop';
$packageName= 'emsisoft-emergency-kit'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://download.emsisoft.com/EmsisoftEmergencyKit.exe' 

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'EXE' 
  silentArgs    = '/s' 
  url           = $url
  checksum 		= 'f10dcb3996947b7bfc0e3292f539f47866a4cf26540669b6992d7bd5ef96c38a'
  checksumType	= 'sha256'
}

Install-ChocolateyPackage @packageArgs