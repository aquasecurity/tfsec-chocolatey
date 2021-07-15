$ErrorActionPreference = 'Stop'

$packageName = 'tfsec'
$checksum = '8c980bc08515a86c71c11c28b4f8137c10e6d1b367dfbcbbe70fa0e843d00973'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$version = 'v0.48.6'
$url = "https://github.com/aquasecurity/tfsec/releases/download/$version/tfsec-windows-amd64.exe"
$destination = "$toolsPath\tfsec.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
