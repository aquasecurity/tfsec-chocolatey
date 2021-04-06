$ErrorActionPreference = 'Stop'

$packageName = 'tfsec'
$checksum = 'd7474e36cc1eddd669dc7ed31f131c9acdd770c40afab9ad724c93c40b0b114f'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$version = "v0.39.19"
$url = "https://github.com/tfsec/tfsec/releases/download/$version/tfsec-windows-amd64.exe"
$destination = "$toolsPath\tfsec.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
