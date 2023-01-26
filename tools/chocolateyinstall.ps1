$ErrorActionPreference = 'Stop'

$packageName = 'tfsec'
$checksum = '4fd5e7beec2a5edebcd687217cce1b7df0d52d0ab9283f19e04454dd6fe9a551'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$version = 'v1.28.1'
$url = "https://github.com/aquasecurity/tfsec/releases/download/$version/tfsec-windows-amd64.exe"
$destination = "$toolsPath\tfsec.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
