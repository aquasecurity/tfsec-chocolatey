$ErrorActionPreference = 'Stop'

$packageName = 'tfsec'
$checksum = '96b47d74f2b47f354f350df510e6314436c56181f1454d58cb60028212cca205'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$version = 'v0.39.20'
$url = "https://github.com/tfsec/tfsec/releases/download/$version/tfsec-windows-amd64.exe"
$destination = "$toolsPath\tfsec.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
