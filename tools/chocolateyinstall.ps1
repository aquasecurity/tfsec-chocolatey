$ErrorActionPreference = 'Stop'

$packageName = 'tfsec'
$checksum = 'd2c4ea85b1037bd12e5b2a6697f502cadde56601ab29ba730e41ac4f80b743b3'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$version = 'v0.39.33'
$url = "https://github.com/tfsec/tfsec/releases/download/$version/tfsec-windows-amd64.exe"
$destination = "$toolsPath\tfsec.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
