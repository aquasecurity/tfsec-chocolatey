$ErrorActionPreference = 'Stop'

$packageName = 'tfsec'
$checksum = '0987a53f9455346182833d570c9dcdcb9380eb037336714e255a05ac38c5b16a'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$version = 'v0.39.27'
$url = "https://github.com/tfsec/tfsec/releases/download/$version/tfsec-windows-amd64.exe"
$destination = "$toolsPath\tfsec.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
