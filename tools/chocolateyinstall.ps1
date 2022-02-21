$ErrorActionPreference = 'Stop'

$packageName = 'tfsec'
$checksum = 'cf9dd6321da7b36da9ab474e5b475f1ed03b9fed2ebbe534368235c74505066e'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$version = 'v1.4.2'
$url = "https://github.com/aquasecurity/tfsec/releases/download/$version/tfsec-windows-amd64.exe"
$destination = "$toolsPath\tfsec.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
