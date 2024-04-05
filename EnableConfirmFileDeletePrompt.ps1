$regPath = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer"
$keyName = "ConfirmFileDelete"
Set-Location HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies
# Set the value to 1 (enabled) or 0 (disabled)
$value = 1

if (Test-Path .\Explorer){
    Write-Host "The Key Exists"
    Set-ItemProperty -Path .\Explorer -Name $keyName -Value $value -Force
    Write-Host "The registry key '$keyName' has been set to $value."
    }
    else
    {
     Write-Host "The DOES NOT Key Exists"
     New-Item -Path .\ -Name Explorer
     Set-ItemProperty -Path .\Explorer -Name $keyName -Value $value -Force
     Write-Host "The registry key '$keyName' has been set to $value."
    }
