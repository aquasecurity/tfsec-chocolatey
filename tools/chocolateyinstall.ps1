$ErrorActionPreference = 'Stop'

$packageName = 'tfsec'
$checksum = '56efc6f9de666b9f8b87e1af44308b9b9674559a60ec8f6a4ca12abe7b8d284c'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$version = "v0.36.0"
$url = 'https://github.com/tfsec/tfsec/releases/download/$version/tfsec-windows-amd64.exe'
$destination = "$toolsPath\tfsec.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
