<#
.SYNOPSIS
    This STIG requires enabling the Group Policy setting “Remote host allows delegation of non-exportable credentials.”
When enabled, Windows supports Restricted Admin mode and Remote Credential Guard, which allow credentials to be delegated to remote systems without exposing reusable (exportable) credential material.

.NOTES
    Author          : Shahzeb Masroor
    LinkedIn        : linkedin.com/in/shahzebmasroor/
    GitHub          : github.com/shahm-1
    Date Created    : 2026-01-10
    Last Modified   : 2026-01-10
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN11-CC-000068

.TESTED ON
    Date(s) Tested  : 2026-01-10
    Tested By       : Shahzeb Masroor
    Systems Tested  : Stiggy-Situation
    PowerShell Ver. : 

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\__remediation_template(STIG-ID-WN11-CC-000068).ps1 
#>

New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\CredentialsDelegation" -Force | Out-Null
Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\CredentialsDelegation" `
  -Name "AllowProtectedCreds" -Type DWord -Value 1
