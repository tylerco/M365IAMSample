Param(
    [Parameter(Mandatory = $true)]
    [String]
    $UserPrincipalName,
        
    [Parameter(Mandatory = $false)]
    [String]
    $NewDepartment
)

$Cred = Get-AutomationPSCredential -Name 'M365Admin'
Connect-AzureAD -Credential $Cred
Write-Output "Set-Department Running"
$UserInfo = Get-AzureADUser -Searchstring $UserPrincipalName
Write-Output $UserInfo.ObjectId
if ($UserInfo.Department -eq $NewDpartment) 
{write-output "NO CHANGE: User Already in Requested Department"}
else {
    Set-AzureADUser -ObjectId $UserInfo.ObjectId -Department $NewDepartment
    write-output $UserPrincipalName "department is now " $NewDepartment 
}
