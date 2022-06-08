$ErrorActionPreference = 'Stop'

$packageName = 'tfsec'
$checksum = '8673d2c0e3d3ba849c5395b53bc74a2f63c0198df651071ea317112c204b2fa3'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$version = 'v1.22.1'
$url = "https://github.com/aquasecurity/tfsec/releases/download/$version/tfsec-windows-amd64.exe"
$destination = "$toolsPath\tfsec.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
