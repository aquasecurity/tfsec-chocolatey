$ErrorActionPreference = 'Stop'

$packageName = 'tfsec'
$checksum = '4aca249c738186b1f5970e71a4aac8ceb9d8fad7cad1a587eed49e2f392c2e2a'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$version = 'v0.39.22'
$url = "https://github.com/tfsec/tfsec/releases/download/$version/tfsec-windows-amd64.exe"
$destination = "$toolsPath\tfsec.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
