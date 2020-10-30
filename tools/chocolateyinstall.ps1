$ErrorActionPreference = 'Stop'

$packageName = 'tfsec'
$checksum = 'bdead65edcc66e17edf7e1213eadc3cf8d3f6631a40cec57bcafee194c2dfbf7'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$version = "v0.36.0"
$url = "https://github.com/tfsec/tfsec/releases/download/$version/tfsec-windows-amd64.exe"
$destination = "$toolsPath\tfsec.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
