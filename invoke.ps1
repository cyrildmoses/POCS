param (
    [string]$exePath,
    [string]$username,
    [string]$password
)

# Convert the password to a secure string
$secpasswd = ConvertTo-SecureString $password -AsPlainText -Force
$credential = New-Object System.Management.Automation.PSCredential($username, $secpasswd)

# Run the executable with specified credentials
Start-Process -FilePath $exePath -Credential $credential -ArgumentList "/silent", "/install" -Wait

###############################################################

param (
    [string]$scriptPath,
    [string]$exePath,
    [string]$username,
    [string]$password
)

# Prepare the arguments for the script
$arguments = "-File `"$scriptPath`" -exePath `"$exePath`" -username `"$username`" -password `"$password`""

# Execute the script with elevated privileges
Start-Process -FilePath "powershell.exe" -ArgumentList $arguments -Verb RunAs

###############################################################

# Define paths and credentials
$scriptPath = "C:\path\to\Install-Executable.ps1"
$exePath = "C:\path\to\your\installer.exe"
$username = "YourDomain\YourUsername"
$password = "YourPassword"

# Execute the secondary script
& "C:\path\to\Start-ElevatedScript.ps1" -scriptPath $scriptPath -exePath $exePath -username $username -password $password
