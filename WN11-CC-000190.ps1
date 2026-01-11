<#
.SYNOPSIS
    Autoplay must be disabled for all drives.

.NOTES
    Author          : Shahzeb Masroor
    LinkedIn        : linkedin.com/in/shahzebmasroor/
    GitHub          : github.com/shahm-1
    Date Created    : 2026-01-10
    Last Modified   : 2026-01-10
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN11-CC-000190

.TESTED ON
    Date(s) Tested  : 2026-01-10
    Tested By       : Shahzeb Masroor
    Systems Tested  : Stiggy-Situation
    PowerShell Ver. : 

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\__remediation_template(STIG-ID-WN11-CC-000190).ps1 
#>

Set-ItemProperty `
  -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" `
  -Name "NoDriveTypeAutoRun" `
  -Type DWord `
  -Value 255
