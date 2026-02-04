Connect-MgGraph -Scopes "User.ReadWrite.All","Group.ReadWrite.All"

$users = Import-Csv "..\data\users.csv"

foreach ($user in $users) {

    $passwordProfile = @{
        Password = "P@ssword123!"
        ForceChangePasswordNextSignIn = $true
    }

    New-MgUser `
        -AccountEnabled:$true `
        -DisplayName $user.DisplayName `
        -UserPrincipalName $user.UserPrincipalName `
        -MailNickname ($user.DisplayName -replace " ","") `
        -Department $user.Department `
        -JobTitle $user.JobTitle `
        -PasswordProfile $passwordProfile

    Write-Host "Created user $($user.DisplayName)" -ForegroundColor Green
}
