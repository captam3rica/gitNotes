Get-ADUser -Filter {UserPrincipalName -like "*@nuggetlab.com"} -SearchBase "DC=nuggetlab,DC=com" |
ForEach-Object {
$UPN =
$_.UserPrincipalName.Replace("nuggetlab.com","nuggetlab.onmicrosoft.com")
Set-ADUser $_ -UserPrincipalName $UPN
}