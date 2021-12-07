$ErrorActionPreference = 'Stop'

$packageName = 'tfsec'
$checksum = '6883af198f73b345338bf293afe02142b92237f3d0e332fcde459aa35ec426ba'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$version = 'v0.63.0'
$url = "https://github.com/aquasecurity/tfsec/releases/download/$version/tfsec-windows-amd64.exe"
$destination = "$toolsPath\tfsec.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
