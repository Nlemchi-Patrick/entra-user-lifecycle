param (
    [string]$UserPrincipalName
)

Update-MgUser `
    -UserId $UserPrincipalName `
    -AccountEnabled:$false
