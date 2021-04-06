#!/usr/bin/env bash

VERSION=$1

if [[ -z "${VERSION}" ]]; then
    echo "you need to provide a version"
    exit 1
fi

wget -O /tmp/tfsec-windows-amd64.exe https://github.com/tfsec/tfsec/releases/download/v$VERSION/tfsec-windows-amd64.exe 

SHA=`shasum -a 256 /tmp/tfsec-windows-amd64.exe | awk '{print $1}'`

sed  "s/{PLACEHOLDER_VERSION}/${VERSION}/g; s/{PLACEHOLDER_SHA}/${SHA}/g;" templates/chocolateyinstall.ps1.template > tools/chocolateyinstall.ps1
sed "s/{PLACEHOLDER_VERSION}/${VERSION}/g" templates/tfsec.nuspec.template > tfsec.nuspec