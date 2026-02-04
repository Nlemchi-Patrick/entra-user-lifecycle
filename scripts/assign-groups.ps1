$users = Import-Csv "..\data\users.csv"

foreach ($user in $users) {

    $userId = (Get-MgUser -UserId $user.UserPrincipalName).Id
    $groupId = (Get-MgGroup -Filter "displayName eq '$($user.Group)'").Id

    New-MgGroupMember `
        -GroupId $groupId `
        -DirectoryObjectId $userId
}
