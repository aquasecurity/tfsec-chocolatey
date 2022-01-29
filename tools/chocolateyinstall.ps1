$ErrorActionPreference = 'Stop'

$packageName = 'tfsec'
$checksum = 'a50c023af94683bef7e25e75d50f12df4a1b3947bfc834608acfe8d8cf034e79'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$version = 'v1.0.0'
$url = "https://github.com/aquasecurity/tfsec/releases/download/$version/tfsec-windows-amd64.exe"
$destination = "$toolsPath\tfsec.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
