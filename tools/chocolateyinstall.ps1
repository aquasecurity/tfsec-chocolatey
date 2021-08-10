$ErrorActionPreference = 'Stop'

$packageName = 'tfsec'
$checksum = 'b14a7abf0981498a75bed196826df0486bb01966aa6623fe6c2cd5987bbf1fff'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$version = 'v0.57.1'
$url = "https://github.com/aquasecurity/tfsec/releases/download/$version/tfsec-windows-amd64.exe"
$destination = "$toolsPath\tfsec.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
