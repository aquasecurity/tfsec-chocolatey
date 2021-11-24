$ErrorActionPreference = 'Stop'

$packageName = 'tfsec'
$checksum = '9326764d08d88c4034c1b269c433f40e1e14dc51d1b3525abdf94beacfc00170'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$version = 'v0.60.1'
$url = "https://github.com/aquasecurity/tfsec/releases/download/$version/tfsec-windows-amd64.exe"
$destination = "$toolsPath\tfsec.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
