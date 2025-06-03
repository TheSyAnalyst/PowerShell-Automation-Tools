# Import users from CSV and create them in Active Directory
Import-Module ActiveDirectory

$users = Import-Csv "../CSV/users.csv"

foreach ($user in $users) {
    $ouPath = "OU=$($user.OU),DC=corp,DC=local"
    
    # Check if OU exists, if not create
    if (-not (Get-ADOrganizationalUnit -Filter "Name -eq '$($user.OU)'")) {
        New-ADOrganizationalUnit -Name $user.OU -Path "DC=corp,DC=local"
    }

    $name = "$($user.FirstName) $($user.LastName)"
    $samAccount = "$($user.FirstName.Substring(0,1))$($user.LastName)"
    
    New-ADUser `
        -Name $name `
        -GivenName $user.FirstName `
        -Surname $user.LastName `
        -SamAccountName $samAccount `
        -UserPrincipalName "$samAccount@corp.local" `
        -AccountPassword (ConvertTo-SecureString $user.Password -AsPlainText -Force) `
        -Enabled $true `
        -Path $ouPath

    Add-ADGroupMember -Identity $user.Group -Members $samAccount
}
