$ErrorActionPreference = 'Stop'

$packageName = 'tfsec'
$checksum = '44dd1b952702f4fbdd950b659103609061b485194572fdebad2dd9f5b6ae7ec5'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$version = 'v1.28.0'
$url = "https://github.com/aquasecurity/tfsec/releases/download/$version/tfsec-windows-amd64.exe"
$destination = "$toolsPath\tfsec.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
