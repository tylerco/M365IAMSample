Param(
    [Parameter(Mandatory = $true)]
    [String]
    $UserPrincipalName
)
Write-Verbose "Reset-UserPassword Running"
$Cred = Get-AutomationPSCredential -Name 'M365Admin'
Connect-AzureAD -Credential $Cred

$UserAccountInfo = Get-AzureADUser -Searchstring $UserPrincipalName
Write-Output $UserAccountInfo.ObjectId

$NewPassword = ([char[]]([char]33..[char]95) + ([char[]]([char]97..[char]126)) + 0..9 | sort {Get-Random})[0..8] -join ''
Write-Output $NewPassword

$SecurePW = $NewPassword | ConvertTo-SecureString -AsPlainText -Force
Set-AzureADUserPassword -ObjectId $UserAccountInfo.ObjectId -Password $SecurePW
Write-Verbose "Password Change Complete"