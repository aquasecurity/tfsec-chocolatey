$ErrorActionPreference = 'Stop'

$packageName = 'tfsec'
$checksum = '1b7552dc0917c2ff9ce015216a2d931e3318eb9c91fd9647984c732bfd9deac9'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$version = 'v0.39.28'
$url = "https://github.com/tfsec/tfsec/releases/download/$version/tfsec-windows-amd64.exe"
$destination = "$toolsPath\tfsec.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
