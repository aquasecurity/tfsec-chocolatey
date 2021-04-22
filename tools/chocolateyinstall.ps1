$ErrorActionPreference = 'Stop'

$packageName = 'tfsec'
$checksum = 'd7ec7fa2749a9476b1d57a821f75e1c0189544748d80a5ea790218eb76655305'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$version = 'v0.39.23'
$url = "https://github.com/tfsec/tfsec/releases/download/$version/tfsec-windows-amd64.exe"
$destination = "$toolsPath\tfsec.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
