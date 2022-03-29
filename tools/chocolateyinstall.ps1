$ErrorActionPreference = 'Stop'

$packageName = 'tfsec'
$checksum = '33be534d04317a9b3610ea336e0e513c1d5ed4ad9f290f2055b875626f1d1a3b'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$version = 'v1.15.0'
$url = "https://github.com/aquasecurity/tfsec/releases/download/$version/tfsec-windows-amd64.exe"
$destination = "$toolsPath\tfsec.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
