$packageName = '7-taskbar-tweaker'
$fileType = 'exe'
$silentArgs = '/S'
$url = 'http://rammichael.com/downloads/7tt_setup.exe' 
Install-ChocolateyPackage $packageName $fileType $silentArgs $url -Checksum f69ffeccd89436106e806bb68b9c120396dc04795398e647467220d0ee308f4c -ChecksumType 'sha256'
