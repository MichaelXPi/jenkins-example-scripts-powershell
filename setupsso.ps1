#!/usr/bin/pwsh -Command
param([String] $enterpriseId, [String] $partyCode, [string] $certString)
echo "Setting up SSO..."
echo $enterpriseId
echo $partyCode
$cert = [Text.Encoding]::Utf8.GetString([Convert]::FromBase64String($certString))
echo $cert
echo "SSO has been setup..."
