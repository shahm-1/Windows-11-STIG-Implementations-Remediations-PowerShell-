<#
.SYNOPSIS
    Remote Desktop Services must be configured with the client connection encryption set to the required level

.NOTES
    Author          : Shahzeb Masroor
    LinkedIn        : linkedin.com/in/shahzebmasroor/
    GitHub          : github.com/shahm-1
    Date Created    : 2026-01-10
    Last Modified   : 2026-01-10
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN11-CC-000290

.TESTED ON
    Date(s) Tested  : 2026-01-10
    Tested By       : Shahzeb Masroor
    Systems Tested  : Stiggy-Situation
    PowerShell Ver. : 

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\__remediation_template(STIG-ID-WN11-CC-000290).ps1 
#>

New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services" -Force | Out-Null
Set-ItemProperty `
  -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services" `
  -Name "MinEncryptionLevel" `
  -Type DWord `
  -Value 3
