$ErrorActionPreference = 'Stop'

$packageName = 'tfsec'
$checksum = '390362D23ABFDB489DC33F5C2CBC5FA8832771009AEA58B95E610AA9E296B455'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$version = "v0.36.0"
$url = "https://github.com/tfsec/tfsec/releases/download/$version/tfsec-windows-amd64.exe"
$destination = "$toolsPath\tfsec.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
