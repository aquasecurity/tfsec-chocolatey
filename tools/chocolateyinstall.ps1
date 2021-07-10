$ErrorActionPreference = 'Stop'

$packageName = 'tfsec'
$checksum = '630f21a9da76a05aefec72358f61febe70cb25a2045eb80f0e3db0a4a9bde71b'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$version = 'v0.45.3'
$url = "https://github.com/tfsec/tfsec/releases/download/$version/tfsec-windows-amd64.exe"
$destination = "$toolsPath\tfsec.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
