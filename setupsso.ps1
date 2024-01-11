#!/usr/bin/pwsh -Command
param([String] $enterpriseId, [String] $partyCode, [string] $certString)

echo "Setting up SSO for Enterprise $enterpriseId with PartyCode $partyCode..."
$cert = [Text.Encoding]::Utf8.GetString([Convert]::FromBase64String($certString))
$cert.Trim()
echo $cert
echo "SSO for Enterprise $enterpriseId has been setup..."
