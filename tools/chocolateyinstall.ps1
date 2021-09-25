$ErrorActionPreference = 'Stop'

$packageName = 'tfsec'
$checksum = 'ebef4850c651d4051f0bfad7a96c8b1c5e01b700e063c13eaa658f7cdb910b3e'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$version = 'v0.58.10'
$url = "https://github.com/aquasecurity/tfsec/releases/download/$version/tfsec-windows-amd64.exe"
$destination = "$toolsPath\tfsec.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
