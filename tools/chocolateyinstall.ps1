$ErrorActionPreference = 'Stop'

$packageName = 'tfsec'
$checksum = '372df63f75fb96e51ad14a5c0b4388b8492551a9eef6588267919d8aab5ecfea'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$version = 'v0.39.21'
$url = "https://github.com/tfsec/tfsec/releases/download/$version/tfsec-windows-amd64.exe"
$destination = "$toolsPath\tfsec.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
