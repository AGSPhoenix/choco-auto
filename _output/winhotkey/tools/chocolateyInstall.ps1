$packageName = 'winhotkey'
$fileType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART'
$url = 'http://directedge.us/files/whk/WinHotKey0.70.exe' 
Install-ChocolateyPackage $packageName $fileType $silentArgs $url -Checksum 0db56e24fbb0732cff06d7186d9a507cb026989d61d5a1e19c45497ba36b12fa -ChecksumType 'sha256'