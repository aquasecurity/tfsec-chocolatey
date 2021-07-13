$ErrorActionPreference = 'Stop'

$packageName = 'tfsec'
$checksum = 'e4267390ac506853636c831f568e599188f3943307411a060195f85309d1926a'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$version = 'v0.46.0'
$url = "https://github.com/aquasecurity/tfsec/releases/download/$version/tfsec-windows-amd64.exe"
$destination = "$toolsPath\tfsec.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
