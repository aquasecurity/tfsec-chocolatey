$ErrorActionPreference = 'Stop'

$packageName = 'tfsec'
$checksum = 'b12399b349fadee3c257a1d5727afe3000763be69d0b3a529a7f4973172b9772'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$version = 'v0.39.30'
$url = "https://github.com/tfsec/tfsec/releases/download/$version/tfsec-windows-amd64.exe"
$destination = "$toolsPath\tfsec.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
