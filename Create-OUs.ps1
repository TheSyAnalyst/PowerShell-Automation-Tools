Import-Module ActiveDirectory

$ous = @("IT", "HR", "Finance")
$groups = @("IT_Staff", "HR_Staff", "Finance_Staff")

foreach ($ou in $ous) {
    if (-not (Get-ADOrganizationalUnit -Filter "Name -eq '$ou'")) {
        New-ADOrganizationalUnit -Name $ou -Path "DC=corp,DC=local"
    }
}

foreach ($group in $groups) {
    if (-not (Get-ADGroup -Filter "Name -eq '$group'")) {
        New-ADGroup -Name $group -GroupScope Global -Path "DC=corp,DC=local"
    }
}
