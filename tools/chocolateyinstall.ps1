$ErrorActionPreference = 'Stop'

$packageName = 'tfsec'
$checksum = '4d4a18d6c33a7d0c30fc414dba23f857f4530f6be0641506ad5b1f27598d61eb'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$version = 'v0.39.32'
$url = "https://github.com/tfsec/tfsec/releases/download/$version/tfsec-windows-amd64.exe"
$destination = "$toolsPath\tfsec.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
