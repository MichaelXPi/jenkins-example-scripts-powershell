#!/usr/bin/pwsh -Command
param([String] $enterpriseId, [String] $partyCode, [string] $certString)
echo "Hello World!"
echo $enterpriseId
echo $partyCode
$cert = [Text.Encoding]::Utf8.GetString([Convert]::FromBase64String($certString))
echo $cert
