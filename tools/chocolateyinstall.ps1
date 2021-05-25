$ErrorActionPreference = 'Stop'

$packageName = 'tfsec'
$checksum = '5ca5d81e414b2cd65919e301c4bd90660b325855c8d3b7f103d4a06a7fcc2f7e'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$version = 'v0.39.38'
$url = "https://github.com/tfsec/tfsec/releases/download/$version/tfsec-windows-amd64.exe"
$destination = "$toolsPath\tfsec.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
