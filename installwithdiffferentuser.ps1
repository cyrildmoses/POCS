# Define user credentials
$username = "YourDomain\YourUsername"
$password = ConvertTo-SecureString "YourPassword" -AsPlainText -Force
$credential = New-Object System.Management.Automation.PSCredential($username, $password)

# Define the path to the executable
$exePath = "C:\path\to\your\installer.exe"

# Run the executable with specified credentials
Start-Process -FilePath $exePath -Credential $credential -ArgumentList "/silent", "/install" -Wait
