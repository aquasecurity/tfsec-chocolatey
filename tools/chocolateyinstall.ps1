$ErrorActionPreference = 'Stop'

$packageName = 'tfsec'
$checksum = '2cc7c0b3d8eef11a851a3bb0bfc246d3f87f5e03c61129efc824b4f070d08fa7'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$version = 'v0.39.42'
$url = "https://github.com/tfsec/tfsec/releases/download/$version/tfsec-windows-amd64.exe"
$destination = "$toolsPath\tfsec.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
