$ErrorActionPreference = 'Stop'

$packageName = 'tfsec'
$checksum = 'fc1770482eefb16bb6804724e732373117bbd5a799d0e857e5f1c9d744c220dd'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$version = 'v0.51.0'
$url = "https://github.com/aquasecurity/tfsec/releases/download/$version/tfsec-windows-amd64.exe"
$destination = "$toolsPath\tfsec.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
