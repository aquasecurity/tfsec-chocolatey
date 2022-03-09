$ErrorActionPreference = 'Stop'

$packageName = 'tfsec'
$checksum = 'a26be39ae1dcd8700907b05de1613c6e20f4757bc91c2603a09522ae16182c22'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$version = 'v1.8.0'
$url = "https://github.com/aquasecurity/tfsec/releases/download/$version/tfsec-windows-amd64.exe"
$destination = "$toolsPath\tfsec.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
