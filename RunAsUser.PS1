param (
    [string]$username,
    [string]$password,
    [string]$command
)

$passwordSecure = ConvertTo-SecureString $password -AsPlainText -Force
$credential = New-Object System.Management.Automation.PSCredential($username, $passwordSecure)

Start-Process -FilePath "cmd.exe" -ArgumentList "/c $command" -Credential $credential
#.\RunAsUser.ps1 -username "AdminUser" -password "YourPassword" -command "notepad.exe"
